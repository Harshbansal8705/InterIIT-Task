import express, { Request, Response } from 'express';
import router from './router';
import cors from 'cors';
import { googleAuth, googleAuthCallback } from './api/login/route';
import dotenv from 'dotenv';
import { auth } from './middlewares/auth';

dotenv.config();

const app = express();
const port = 8000;

console.log(process.env.JWT_SECRET, process.env.DATABASE_URL);
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.get('/', async (req: Request, res: Response) => {
  res.send('Hello, World!');
});

app.use('/api', auth, router);
app.get('/auth/google', googleAuth);
app.get('/auth/google/callback', googleAuthCallback);

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
