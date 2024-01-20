-- CreateTable
CREATE TABLE "RuleSet" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    "appliedDisjunctively" BOOLEAN NOT NULL DEFAULT false
);

-- CreateTable
CREATE TABLE "Rule" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    "ruleSetId" TEXT NOT NULL,
    "column" TEXT NOT NULL,
    "relation" TEXT NOT NULL,
    "value" TEXT NOT NULL,
    CONSTRAINT "Rule_ruleSetId_fkey" FOREIGN KEY ("ruleSetId") REFERENCES "RuleSet" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE INDEX "Rule_ruleSetId_idx" ON "Rule"("ruleSetId");
