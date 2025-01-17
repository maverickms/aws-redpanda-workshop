CREATE EXTENSION IF NOT EXISTS vector;
CREATE TABLE IF NOT EXISTS whisperingrealm (
    key varchar(128) PRIMARY KEY,
    doc text NOT NULL,
    embedding vector(768) NOT NULL
);
CREATE INDEX IF NOT EXISTS text_hnsw_index ON whisperingrealm USING hnsw (embedding vector_l2_ops);