import { prisma } from "../../../utils";

export async function GET(req: any, res: any) {
    const { godown } = req.params;
    if (!godown) {
        return res.status(400).json({
            success: false,
            error: "Godown ID is required",
        });
    }
    try {
        const subgodowns = await prisma.godown.findMany({
            where: {
                parentId: godown,
            }
        });
        const items = await prisma.item.findMany({
            where: {
                godownId: godown,
            }
        });
        return res.json({
            success: true,
            data: {subgodowns, items},
        });
    } catch (error) {
        return res.status(500).json({
            success: false,
            error: "Internal Server Error",
        });
    }
}