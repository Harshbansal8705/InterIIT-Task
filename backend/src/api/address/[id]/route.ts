import { prisma } from "../../../utils";

export async function GET(req: any, res: any) {
  let { id } = req.params;
  if (!id) {
    return res.status(400).json({
      success: false,
      error: "Item ID is required",
    });
  }
  try {
    const arr = [];
    while (id) {
      let godown = await prisma.godown.findUnique({
        where: {
          id
        }
      })
      console.log(godown);
      arr.push(godown?.name);
      id = godown?.parentId;
    }
    arr.reverse();
    console.log(arr);
    return res.json({
      success: true,
      data: arr,
    });
  } catch (error) {
    return res.status(500).json({
      success: false,
      error: "Internal Server Error",
    });
  }
}