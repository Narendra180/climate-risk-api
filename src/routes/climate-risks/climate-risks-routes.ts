import express from "express";
import getCountyClimateRisks from "../../controllers/climate-risks/climate-risks-controller";

const router = express.Router();

router.get("/:countyName", getCountyClimateRisks)

export default router;