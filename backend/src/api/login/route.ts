import jwt from 'jsonwebtoken';
import dotenv from 'dotenv';

dotenv.config();

export function googleAuth(req: any, res: any) {
  const googleAuthURL = `https://accounts.google.com/o/oauth2/v2/auth?client_id=${process.env.CLIENT_ID}&redirect_uri=${process.env.REDIRECT_URI}&response_type=code&scope=openid%20email%20profile&hd=kgpian.iitkgp.ac.in`;
  return res.redirect(googleAuthURL);
}

export async function googleAuthCallback(req: any, res: any) {
  const { code } = req.query;

  if (!code) {
    return res.redirect('http://localhost:3000/auth?error=No%20code%20provided');
  }

  try {
    const response = await fetch('https://oauth2.googleapis.com/token', {
      method: 'POST',
      headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
      body: new URLSearchParams({
        code: code as string,
        client_id: process.env.CLIENT_ID!,
        client_secret: process.env.CLIENT_SECRET!,
        redirect_uri: process.env.REDIRECT_URI!,
        grant_type: 'authorization_code',
      }),
    });

    const tokenData = await response.json();
    const { id_token } = tokenData;

    const googleUser = jwt.decode(id_token) as any;

    if (!googleUser) {
      return res.redirect('http://localhost:3000/auth?error=Failed%20to%20decode%20Google%20token');
    }

    if (googleUser.email.split('@')[1] !== 'kgpian.iitkgp.ac.in') {
      return res.redirect('http://localhost:3000/auth?error=Only%20IIT%20Kharagpur%20students%20are%20allowed');
    }

    const appToken = jwt.sign(
      { email: googleUser.email, name: googleUser.name, picture: googleUser.picture },
      process.env.JWT_SECRET!,
      { expiresIn: '30d' }
    );

    res.redirect(`http://localhost:3000/auth?token=${appToken}`);
  } catch (error) {
    console.error(error);
    return res.redirect('http://localhost:3000/auth?error=Failed%20to%20authenticate%20with%20Google');
  }
}