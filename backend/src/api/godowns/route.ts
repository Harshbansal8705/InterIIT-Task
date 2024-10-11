import { prisma } from "../../utils";

export async function GET(req: any, res: any) {
    try {
        const godowns = await prisma.godown.findMany({
            where: {
                parentId: null,
            }
        });
        return res.json({
            success: true,
            data: godowns,
        });
    } catch (error) {
        return res.status(500).json({
            success: false,
            error: "Internal Server Error",
        });
    }
}