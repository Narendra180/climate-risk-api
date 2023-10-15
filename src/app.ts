import { PrismaClient } from "@prisma/client";
import express from "express";
import climateRiskRouter from "./routes/climate-risks/climate-risks-routes";

export const prisma = new PrismaClient();
export const app = express();

app.use(express.json());

app.use("/api/v1/climate-risks", climateRiskRouter);

app.get("/", (req,res) => res.send("Server is ready."))

app.all("*", (req,res) => res.status(404).json({
  success: "fail",
  message: "No resource available at this route"
}))

app.use(climateRiskRouter);