import jwt, { JwtPayload } from "jsonwebtoken";

export async function auth(req: any, res: any, next: any) {
  const token = req.headers.authorization?.split(' ')[1];

  if (!token) {
    return res.status(401).json({ error: 'Unauthorized' });
  }

  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET!) as JwtPayload;
    if (!decoded) {
      return res.status(401).json({ error: 'Unauthorized' });
    }
    if (!decoded.email || decoded.email.split('@')[1] != 'kgpian.iitkgp.ac.in') {
        return res.status(401).json({ error: 'Unauthorized' });
    }
    req.user = decoded;
    next();
  } catch (error) {
    console.log(error);
    return res.status(401).json({ error: 'Unauthorized' });
  }
}