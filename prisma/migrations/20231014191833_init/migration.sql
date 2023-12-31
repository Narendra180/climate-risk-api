-- CreateTable
CREATE TABLE "County" (
    "id" SERIAL NOT NULL,
    "nriId" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "state_abb" TEXT NOT NULL,
    "state_fips" INTEGER NOT NULL,
    "county" TEXT NOT NULL,
    "county_type" TEXT NOT NULL,
    "county_fips" INTEGER NOT NULL,
    "stco_fips" INTEGER NOT NULL,
    "risk_score" DECIMAL(65,30) NOT NULL,
    "risk_rating" TEXT NOT NULL,
    "avln_risks" DECIMAL(65,30) NOT NULL,
    "avln_riskr" TEXT NOT NULL,
    "cfld_risks" DECIMAL(65,30) NOT NULL,
    "cfld_riskr" TEXT NOT NULL,
    "cwav_risks" DECIMAL(65,30) NOT NULL,
    "cwav_riskr" TEXT NOT NULL,
    "drgt_risks" DECIMAL(65,30) NOT NULL,
    "drgt_riskr" TEXT NOT NULL,
    "erqk_risks" DECIMAL(65,30) NOT NULL,
    "erqk_riskr" TEXT NOT NULL,
    "hail_risks" DECIMAL(65,30) NOT NULL,
    "hail_riskr" TEXT NOT NULL,
    "hwav_risks" DECIMAL(65,30) NOT NULL,
    "hwav_riskr" TEXT NOT NULL,
    "hrcn_risks" DECIMAL(65,30) NOT NULL,
    "hrcn_riskr" TEXT NOT NULL,
    "istm_risks" DECIMAL(65,30) NOT NULL,
    "istm_riskr" TEXT NOT NULL,
    "lnds_risks" DECIMAL(65,30) NOT NULL,
    "lnds_riskr" TEXT NOT NULL,
    "ltng_risks" DECIMAL(65,30) NOT NULL,
    "ltng_riskr" TEXT NOT NULL,
    "rfld_risks" DECIMAL(65,30) NOT NULL,
    "rfld_riskr" TEXT NOT NULL,
    "swnd_risks" DECIMAL(65,30) NOT NULL,
    "swnd_riskr" TEXT NOT NULL,
    "trnd_risks" DECIMAL(65,30) NOT NULL,
    "trnd_riskr" TEXT NOT NULL,
    "tsun_risks" DECIMAL(65,30) NOT NULL,
    "tsun_riskr" TEXT NOT NULL,
    "vlcn_risks" DECIMAL(65,30) NOT NULL,
    "vlcn_riskr" TEXT NOT NULL,
    "wfir_risks" DECIMAL(65,30) NOT NULL,
    "wfir_riskr" TEXT NOT NULL,
    "wntw_risks" DECIMAL(65,30) NOT NULL,
    "wntw_riskr" TEXT NOT NULL,

    CONSTRAINT "County_pkey" PRIMARY KEY ("id")
);
