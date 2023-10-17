import { Request, Response } from "express";
import { prisma } from "../../app";
import { hazards } from "../../constants";

type ClimateRiskData = {
  [key: string]: any
}

const getCountyClimateRisks = async (req:Request,res:Response) => {
  const { countyName } = req.params;
  const climateRiskDataFromDb = await prisma.county.findFirst({
    where: {
      county: countyName,
    }
  })

  // const climateRiskDataFromDb = await prisma.county.groupBy({
  //   by: {
      
  //   },
  //   where: {
  //     county: countyName
  //   }
  // });

  // const climateRiskData = climateRiskDataFromDb;
  const climateRiskData: ClimateRiskData = {};
  
  for(let key in climateRiskDataFromDb) {
    const [prefix, riskValueType] = key.split("_");
    if(hazards[prefix]) {
      const newKey = hazards[prefix];
      if(!climateRiskData[newKey]) {
        climateRiskData[newKey] = {};
      }
      if(riskValueType === "risks") { 
        const riskScore = climateRiskDataFromDb[key as keyof typeof climateRiskDataFromDb];
        climateRiskData[newKey]["riskScore"] = parseFloat(Number(riskScore).toFixed(2));
      } else {
        climateRiskData[newKey]["riskRating"] = climateRiskDataFromDb[key as keyof typeof climateRiskDataFromDb];
      }
    } else {
      climateRiskData[key] = climateRiskDataFromDb[key as keyof typeof climateRiskDataFromDb];
    }
  } 

  res.status(200).json({
    success: true, 
    data: climateRiskData
  });
}

export default getCountyClimateRisks;