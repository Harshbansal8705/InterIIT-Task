import { prisma } from "../../../utils";

export async function GET(req: any, res: any) {
    const { id } = req.params;
    if (!id) {
        return res.status(400).json({
            success: false,
            error: "Item ID is required",
        });
    }
    try {
        const item = await prisma.item.findUnique({
            where: {
                id: id,
            }
        });
        return res.json({
            success: true,
            data: item,
        });
    } catch (error) {
        return res.status(500).json({
            success: false,
            error: "Internal Server Error",
        });
    }
}