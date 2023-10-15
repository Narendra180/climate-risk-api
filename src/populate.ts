import { PrismaClient, Prisma } from "@prisma/client";

const prisma = new PrismaClient();

import * as fs from 'fs';
import path from 'path';
import { parse } from 'fast-csv';

const populateData = async (csvFileName: string, tableName: string) => {
  fs.createReadStream(path.resolve(__dirname, csvFileName))
    .pipe(parse({headers: true}))
    .on('error', error => console.error(error))
    .on('data', async (row) => {

      const newCounty = {
        nriId: row.NRI_ID,
        state: row.STATE,
        state_abb: row.STATEABBRV,
        state_fips: Number(row.STATEFIPS),
        county: row.COUNTY,
        county_type: row.COUNTYTYPE,
        county_fips: Number(row.COUNTYFIPS),
        stco_fips: Number(row.STCOFIPS),
        risk_score: new Prisma.Decimal(Number(row.RISK_SCORE)),
        risk_rating: row.RISK_RATNG,
        avln_risks: new Prisma.Decimal(Number(row.AVLN_RISKS)),
        avln_riskr: row.AVLN_RISKR,
        cfld_risks: new Prisma.Decimal(Number(row.CFLD_RISKS)),
        cfld_riskr: row.CFLD_RISKR,
        cwav_risks: new Prisma.Decimal(Number(row.CWAV_RISKS)),
        cwav_riskr: row.CWAV_RISKR,
        drgt_risks: new Prisma.Decimal(Number(row.DRGT_RISKS)),
        drgt_riskr: row.DRGT_RISKR,
        erqk_risks: new Prisma.Decimal(Number(row.ERQK_RISKS)),
        erqk_riskr: row.ERQK_RISKR,
        hail_risks: new Prisma.Decimal(Number(row.HAIL_RISKS)),
        hail_riskr: row.HAIL_RISKR,
        hwav_risks: new Prisma.Decimal(Number(row.HWAV_RISKS)),
        hwav_riskr: row.HWAV_RISKR,
        hrcn_risks: new Prisma.Decimal(Number(row.HRCN_RISKS)),
        hrcn_riskr: row.HRCN_RISKR,
        istm_risks: new Prisma.Decimal(Number(row.ISTM_RISKS)),
        istm_riskr: row.ISTM_RISKR,
        lnds_risks: new Prisma.Decimal(Number(row.LNDS_RISKS)),
        lnds_riskr: row.LNDS_RISKR,
        ltng_risks: new Prisma.Decimal(Number(row.LTNG_RISKS)),
        ltng_riskr: row.LTNG_RISKR,
        rfld_risks: new Prisma.Decimal(Number(row.RFLD_RISKS)),
        rfld_riskr: row.RFLD_RISKR,
        swnd_risks: new Prisma.Decimal(Number(row.SWND_RISKS)),
        swnd_riskr: row.SWND_RISKR,
        trnd_risks: new Prisma.Decimal(Number(row.TRND_RISKS)),
        trnd_riskr: row.TRND_RISKR,
        tsun_risks: new Prisma.Decimal(Number(row.TSUN_RISKS)),
        tsun_riskr: row.TSUN_RISKR,
        vlcn_risks: new Prisma.Decimal(Number(row.VLCN_RISKS)),
        vlcn_riskr: row.VLCN_RISKR,
        wfir_risks: new Prisma.Decimal(Number(row.WFIR_RISKS)),
        wfir_riskr: row.WFIR_RISKR,
        wntw_risks: new Prisma.Decimal(Number(row.WNTW_RISKS)),
        wntw_riskr: row.WNTW_RISKR,
      }

      // const newHazard = {
      //   hazard: row.Hazard,
      //   prefix: row.Prefix,
      //   service: row.Service,
      //   start: row.Start,
      //   end:  row.End_,
      //   total_years: row.TotalYears,
      // }
      await prisma.county.create({
        data: {
          ...newCounty
        }        
      });
    })
    .on('end', (rowCount: number) => console.log(`Parsed ${rowCount} rows`));
  
}


// populateData("NRI_Table_Counties.csv", "county")
//             .catch((e) => console.error(e))
//             .finally(async () => await prisma.$disconnect())

// populateData("NRI_HazardInfo.csv", "county")
//       .catch((e) => console.error(e))
//       .finally(async () => await prisma.$disconnect())