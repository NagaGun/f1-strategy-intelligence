# f1-strategy-intelligence
RAG-powered F1 race strategy agent built on Oracle Database 26ai · AI Vector Search · OCI · APEX

# 🏎️ F1 Race Strategy Intelligence Platform

> A RAG-powered Formula 1 strategy agent and live race dashboard built 
> on Oracle Database 26ai, OCI, and Oracle APEX — mirroring the AI 
> architecture Oracle deployed for Red Bull Racing's pit wall.

## Architecture

| Layer | Tool | Purpose |
|-------|------|---------|
| Ingest | Python + OCI Linux | Pull live data from OpenF1 API |
| Store | Oracle Database 26ai | Race telemetry + regulation vector store |
| Reason | Groq/LLaMA + AI Vector Search | RAG-powered regulation query agent |
| Present | Oracle APEX | Live dashboard + strategy explorer |

## Project Structure
```
f1-strategy-intelligence/
├── db/
│   ├── migrations/     # CREATE TABLE, tablespace DDL (run in order)
│   ├── seeds/          # Sample data inserts
│   └── views/          # Analytical views, window function queries
├── ingest/             # Python scripts: OpenF1 API → Oracle 26ai
├── rag/
│   ├── embeddings/     # PDF chunking + embedding pipeline
│   └── query/          # RAG query agent
├── apex/               # Oracle APEX app export
├── scripts/            # Cron jobs, OCI Linux utilities
├── docs/               # Architecture diagrams
└── tests/              # Connection tests, pipeline tests
```

## Tech Stack
- **Oracle Database 26ai** — AI Vector Search, JSON Relational Duality
- **OCI Compute** — Always Free ARM instance (Oracle Linux)
- **Oracle APEX** — Front-end dashboard
- **Python** — Data ingest pipeline, RAG orchestration  
- **OpenF1 API** — Free live F1 telemetry data
- **Groq / LLaMA** — LLM for regulation query agent

## Status
- [x] Project structure
- [ ] Week 1: Database schema + ingest pipeline
- [ ] Week 2: Vector store + RAG agent  
- [ ] Week 3: APEX dashboard
- [ ] Week 4: Strategy engine + blog post
