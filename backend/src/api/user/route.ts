export async function GET(req: any, res: any) {
  const user = req.user;
  return res.json({
    success: true,
    data: user
  });
}