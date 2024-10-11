-- CreateTable
CREATE TABLE "Godown" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "parentId" TEXT,

    CONSTRAINT "Godown_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Item" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "quantity" INTEGER NOT NULL DEFAULT 0,
    "price" DOUBLE PRECISION NOT NULL,
    "category" TEXT NOT NULL,
    "inStock" BOOLEAN NOT NULL,
    "godownId" TEXT NOT NULL,
    "brand" TEXT NOT NULL,
    "attributes" JSONB,
    "imageUrl" TEXT NOT NULL,

    CONSTRAINT "Item_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Godown" ADD CONSTRAINT "Godown_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES "Godown"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Item" ADD CONSTRAINT "Item_godownId_fkey" FOREIGN KEY ("godownId") REFERENCES "Godown"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
