import express from "express";
import morgan from "morgan";
//*Rutas
import notasRoutes from "./routes/notas.routes";
const app=express();

//*Configuraciónes
app.set("port",4000);

//*Middlewares
app.use(morgan("dev"));
app.use(express.json());
//*Rutas
app.use("/api/notas",notasRoutes);

export default app;