import { Router } from "express";
import { methods as notasController} from "../controllers/notas.controller";
const router=Router();
router.get("/:id",notasController.getNotas);
router.post("/",notasController.addEstudiante);
router.post("/ingresarNota/",notasController.addNota);
export default router;