import { Router } from "express";
import { GET as godownsGET } from "./api/godowns/route";
import { GET as itemsGET } from "./api/item/[id]/route";
import { GET as subgodownsGET } from "./api/subgodowns/[godown]/route";
import { GET as addressGET } from "./api/address/[id]/route";
import { GET as userGET } from "./api/user/route";

const router = Router();

router.get('/godowns', godownsGET);
router.get('/item/:id', itemsGET);
router.get('/subgodowns/:godown', subgodownsGET);
router.get('/address/:id', addressGET);
router.get('/user', userGET)

export default router;