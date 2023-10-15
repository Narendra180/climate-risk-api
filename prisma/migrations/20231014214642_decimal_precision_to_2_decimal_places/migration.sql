/*
  Warnings:

  - You are about to alter the column `risk_score` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `avln_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `cfld_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `cwav_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `drgt_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `erqk_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `hail_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `hwav_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `hrcn_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `istm_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `lnds_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `ltng_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `rfld_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `swnd_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `trnd_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `tsun_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `vlcn_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `wfir_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.
  - You are about to alter the column `wntw_risks` on the `County` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.

*/
-- AlterTable
ALTER TABLE "County" ALTER COLUMN "risk_score" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "avln_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "cfld_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "cwav_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "drgt_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "erqk_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "hail_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "hwav_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "hrcn_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "istm_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "lnds_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "ltng_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "rfld_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "swnd_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "trnd_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "tsun_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "vlcn_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "wfir_risks" SET DATA TYPE DECIMAL(3,2),
ALTER COLUMN "wntw_risks" SET DATA TYPE DECIMAL(3,2);
