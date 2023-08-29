-- Desabilitar restrições de chaves estrangeiras temporariamente
SET CONSTRAINTS ALL DEFERRED;

-- Criar nova tabela "new_Image"
CREATE TABLE "new_Image" (
    "id" SERIAL PRIMARY KEY,
    "title" TEXT NOT NULL,
    "url" TEXT NOT NULL,
    "createdAt" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP NOT NULL
);

-- Inserir dados da tabela antiga na nova tabela
INSERT INTO "new_Image" ("id", "title", "url")
SELECT "id", "title", "url"
FROM "Image";

-- Remover a tabela antiga
DROP TABLE "Image";

-- Renomear a nova tabela para o nome original
ALTER TABLE "new_Image" RENAME TO "Image";

-- Habilitar novamente as restrições de chaves estrangeiras
SET CONSTRAINTS ALL IMMEDIATE;
