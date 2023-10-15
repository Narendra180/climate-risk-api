-- CreateTable
CREATE TABLE "Hazard" (
    "id" SERIAL NOT NULL,
    "hazard" TEXT NOT NULL,
    "prefix" TEXT NOT NULL,
    "service" TEXT NOT NULL,
    "start" TEXT NOT NULL,
    "end" TEXT NOT NULL,
    "total_years" TEXT NOT NULL,

    CONSTRAINT "Hazard_pkey" PRIMARY KEY ("id")
);
