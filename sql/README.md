# SQL and Relational Database

This directory contains the SQLite database schema and analytical SQL queries developed for the AI Governance & Responsible AI Risk Observatory.

## Database

The project uses SQLite to organise the benchmark, governance and derived analytical datasets into a queryable relational structure.

Database file:

`outputs/ai_governance_observatory.db`

The database contains 20 tables, including core source tables and analytical support tables.

## SQL scripts

| File | Purpose |
|---|---|
| `01_database_schema.sql` | Defines the relational database schema |
| `02_analytical_queries.sql` | Contains nine analytical SQL queries |

## Analytical queries

The queries cover model-level benchmark summaries, governance dimension comparisons, selected benchmark cases, regional summaries, governance mappings, data-quality results and documented analytical findings.

All nine analytical queries executed successfully during project validation.

## Integrity and cross-validation

The SQLite database passed its integrity check (`ok`) and had no reported foreign-key issues at the validation stage.

Seven selected analytical results were cross-validated against Python outputs. All seven checks passed.

## Reproducibility

The database can be reconstructed using the published source and processed datasets with the schema and SQL scripts in this repository.

Query outputs are provided separately under `outputs/sql_query_results/`.
