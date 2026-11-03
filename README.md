# AI Governance & Responsible AI Risk Observatory

**An India-first analytical study of published Responsible AI benchmark results, AI governance frameworks, regulatory developments and proposed governance controls.**

[![Python](https://img.shields.io/badge/Python-Analysis-blue)]()
[![SQL](https://img.shields.io/badge/SQL-SQLite-lightgrey)]()
[![Excel](https://img.shields.io/badge/Excel-Reporting-green)]()
[![Power%20BI](https://img.shields.io/badge/Power%20BI-Data%20Modelling-yellow)]()

## Project Overview

The rapid adoption of AI systems creates important questions around safety, fairness, privacy, accountability, transparency and regulatory oversight.

This project develops an analytical observatory to examine published Indian Responsible AI benchmark results and selected stress-test examples, compare reported governance dimensions, organise relevant regulatory and voluntary frameworks, and translate these into a structured set of proposed governance controls.

The project combines Python-based data preparation and validation, exploratory analysis, SQL-based data interrogation, an integrated Excel workbook and Power BI-ready data modelling.

**Research boundary:** This project analyses publisher-reported benchmark summaries and selected published examples. It does not independently re-score model responses, conduct original model red-teaming or certify the safety or regulatory compliance of any AI system.

## Research Questions

1. How do the published overall Responsible AI scores compare across the evaluated models?
2. Which governance dimensions show relatively stronger and weaker reported performance?
3. What patterns appear in the publisher-selected stress-test examples?
4. How do the published regional summaries compare, and where are the reported average-to-lowest score gaps larger?
5. How can relevant AI governance frameworks be translated into traceable, proposed organisational controls?
6. What data-quality and evidence-traceability checks are needed to make the analysis reproducible?

## Data and Scope

The benchmark dataset includes:

- 3 evaluated models.
- 8 governance dimensions.
- 212 benchmark prompts.
- Publisher-reported response counts of 206, 206 and 202 across the three models.
- 29 available selected case-model observations against 30 possible combinations.
- 5 reported regional summary records.
- 9 entries in the updated governance framework register.

The benchmark source date recorded in the project data is **12 March 2026**. Framework source references and verification dates are maintained in the governance register.

## Selected Findings

### Benchmark results

- The reported overall scores are 7.43 for Sarvam-30B, 7.43 for Sarvam-105B and 7.24 for Sarvam-M.
- The two 7.43 scores should not be interpreted as proof of identical performance. The published scores are rounded.
- Privacy has the highest average reported dimension score at approximately 9.19/10.
- Accountability has the lowest average reported dimension score at approximately 6.13/10.
- Safety shows the largest cross-model score range among the eight dimensions at 0.52 points.

### Selected stress-test examples

- C01 has the lowest average reported overall score among the selected cases at approximately 5.37.
- C10 has only two available model observations. Its average reported overall score is 5.85 and average reported safety score is 3.00.
- The missing C10 observation is retained as missing rather than imputed.

These cases are publisher-selected examples, not a representative sample of all model responses.

### Regional summaries

The five reported regional average scores range from 7.24 to 7.50. The reported average-to-lowest score gaps range from 0.78 to 2.24 points.

These are descriptive comparisons of the published summaries. They should not be interpreted as statistically representative regional population estimates.

## AI Governance Framework and Control Register

The governance work includes:

- 9 framework and regulatory register entries.
- 16 proposed governance controls.
- 76 framework-to-control mappings.
- 19 evidence references.

Control status is deliberately distinguished from implementation or compliance status:

- 15 controls: **Proposed – not assessed**
- 1 control: **Policy watch – draft**

The mapping is an analytical reference for governance discussion, not a legal applicability determination or compliance assessment.

## Methodology and Technical Workflow

1. **Data ingestion:** Load published benchmark summaries, selected case examples, regional summaries and governance framework records.
2. **Data profiling:** Examine dataset dimensions, missing values, duplicate records, identifiers and score ranges.
3. **Data validation:** Run structured quality checks and document source-specific exceptions.
4. **Exploratory analysis:** Calculate descriptive dimension, model, case and regional summaries.
5. **Governance mapping:** Build a framework register, control register, framework-control bridge and evidence-reference map.
6. **SQL analysis:** Create a relational SQLite database and execute analytical queries.
7. **Cross-validation:** Compare selected Python and SQL results.
8. **Reporting preparation:** Export analytical datasets and Power BI model tables and create an integrated Excel workbook.

## Validation Results

| Validation area | Result |
|---|---:|
| Data-quality checks passed | 30/30 |
| Python-SQL cross-validation checks passed | 7/7 |
| SQL analytical queries executed | 9 |
| SQLite tables | 20 |
| Power BI-ready tables exported | 13 |
| Power BI relationships documented | 8 |
| Integrated Excel workbook worksheets | 29 |

The project also includes a data dictionary, table and relationship manifests, validation reports and SQL query outputs.

## Technology Stack

- **Python:** Data processing, validation, exploratory analysis and reporting preparation.
- **Pandas / NumPy:** Structured data manipulation and descriptive calculations.
- **Matplotlib / Seaborn:** Exploratory visualisation.
- **SQL / SQLite:** Relational modelling and analytical queries.
- **Microsoft Excel:** Integrated analytical workbook and reporting.
- **Power BI Desktop:** Semantic-model preparation and interactive dashboard development.
- **Jupyter Notebook:** Reproducible analytical workflow.

## Repository Structure

```text
ai-governance-responsible-ai-risk-observatory/
│
├── README.md
├── notebooks/
│   └── End-to-end project notebook(s)
│
├── data/
│   ├── raw/
│   └── processed/
│
├── sql/
│   ├── 01_database_schema.sql
│   └── 02_analytical_queries.sql
│
├── outputs/
│   ├── ai_governance_observatory.db
│   ├── sql_query_results/
│   ├── excel_powerbi_exports/
│   └── powerbi_model_tables/
│
├── excel/
│   └── AI_Governance_Observatory_Integrated_Workbook.xlsx
│
├── docs/
│
└── .gitignore
```

## Current Project Status

**Completed:** Data preparation, exploratory analysis, data-quality validation, SQL database and queries, Python-SQL cross-validation, governance framework register, proposed control mapping, Power BI source-table exports and integrated Excel workbook.

**In progress:** Final Power BI report validation and dashboard visual publication. The prepared Power BI tables and relationship manifest are included; dashboard screenshots and the final validated PBIX will be added separately.

## Limitations and Responsible Use

- Published aggregate scores are not independently verified through raw model response testing.
- Rounded publisher-reported scores limit the precision of comparisons.
- Selected stress-test examples are not representative of the complete response population.
- Missing case-model observations are not imputed.
- Regional summaries are descriptive and are not treated as representative population estimates.
- Proposed governance controls have not been assessed for implementation effectiveness.
- Framework mapping does not establish that a particular law applies to a particular organisation.
- This project is educational research and is not legal advice, a compliance certification or a guarantee of AI-system safety.

## Data Provenance

Original source names, source dates, source URLs and verification information are retained in the project datasets and governance framework register.

Third-party data and source materials remain subject to their respective original terms and attribution requirements. No ownership of third-party benchmark data or regulatory material is claimed.

---

**Project focus:** Responsible AI benchmarking, AI governance, safety evaluation, data quality, regulatory monitoring and evidence traceability.
