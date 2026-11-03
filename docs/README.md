Project Documentation
This directory contains the research-methodology and supporting documentation for the AI Governance & Responsible AI Risk Observatory.
Main document
[Project Methodology](PROJECT_METHODOLOGY.md)
The methodology document describes:
- Research purpose, scope and research questions.
- Benchmark and governance source provenance.
- Data preparation, profiling and quality-assurance procedures.
- Model-level, dimension-level, selected-case and regional descriptive analyses.
- Missing-observation treatment and interpretation boundaries.
- Governance framework classification and proposed control-mapping approach.
- SQL database design, analytical queries and Python-SQL cross-validation.
- Power BI semantic-model preparation and reporting workflow.
- Limitations, responsible-use notes and reproducibility considerations.
Related repository materials
- The executable analysis notebook is in [`notebooks/`](../notebooks/).
- Python package requirements are listed in [`requirements.txt`](../requirements.txt).
- Source data and provenance notes are in [`data/raw/`](../data/raw/).
- Cleaned datasets and validation evidence are in [`data/processed/`](../data/processed/).
- SQL schema and analytical queries are in [`sql/`](../sql/).
- Governance registers, mappings and validation outputs are in [`governance/`](../governance/).
Scope note
The project analyses publisher-reported benchmark summaries and selected published examples. It does not independently re-score model responses, conduct original model red-teaming, audit deployed systems or certify legal compliance or AI-system safety. See the methodology document for details.
