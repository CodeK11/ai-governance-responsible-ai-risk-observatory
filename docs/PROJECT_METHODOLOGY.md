# Project Methodology

## AI Governance & Responsible AI Risk Observatory

**Research focus:** Published Responsible AI benchmark analysis, AI governance frameworks, regulatory monitoring, proposed governance controls and evidence traceability  
**Benchmark source date recorded in the project:** 12 March 2026  
**Governance register verification date:** 31 October 2026  
**Project status:** Analytical pipeline, validation, SQL database, governance mapping, Excel workbook and Power BI-ready tables completed; final Power BI report validation and visual publication remain in progress.

---

## 1. Purpose and research scope

The AI Governance & Responsible AI Risk Observatory is an independent, portfolio-scale analytical project examining published Indian Responsible AI benchmark summaries and selected published stress-test examples. It combines descriptive analysis with a structured register of relevant Indian and international AI governance instruments, a proposed control catalogue, and traceable framework-to-control and control-to-evidence mappings.

The project is designed to demonstrate a reproducible analytical workflow: source documentation, data profiling, validation, exploratory analysis, relational data modelling, SQL interrogation, governance mapping and reporting preparation.

**Research boundary:** The project analyses publisher-reported benchmark summaries and selected published examples. It does not independently execute the benchmark, re-score raw model responses, conduct original model red-teaming, audit deployed AI systems, or certify legal compliance or AI-system safety.

## 2. Research questions

The analysis is organised around the following questions:

1. How do the publisher-reported overall benchmark scores compare across the evaluated models?
2. Which of the reported governance dimensions have relatively higher and lower average scores, and where are the largest cross-model differences?
3. What patterns appear in the publisher-selected stress-test examples, taking account of incomplete case-model coverage?
4. How do the published regional summary averages, lowest reported scores and average-to-lowest gaps compare descriptively?
5. How can relevant AI governance laws, standards, frameworks and principles be organised into a traceable reference register?
6. How can selected governance themes be translated into proposed organisational controls with framework associations and supporting evidence references?
7. What data-quality, relational-integrity and cross-validation checks can be performed on the assembled project datasets?

## 3. Data sources and provenance

### 3.1 Benchmark source

The benchmark-derived inputs are based on the **Indian Responsible AI Benchmark** published by Responsible AI Labs. The project records the source date as **12 March 2026**. The publisher's dataset and source documentation should be consulted for the benchmark's original design, scoring protocol, category definitions and interpretation.

- Dataset: <https://huggingface.co/datasets/responsible-ai-labs/indian-responsible-ai-benchmark>
- Publisher announcement: <https://responsibleailabs.ai/announcements/huggingface-datasets-2026>

The publisher describes a benchmark comprising 212 prompts. The project uses published summary data and selected published examples, not raw model responses for independent re-evaluation. The reported response counts in the model overview are 206 for Sarvam-30B, 206 for Sarvam-105B and 202 for Sarvam-M.

The publisher's dataset card identifies the benchmark as MIT-licensed. The project retains source attribution and does not claim ownership of the upstream benchmark. Users should consult the upstream dataset card and its current licence notice before reusing upstream material.

### 3.2 Input datasets

The project begins with five structured CSV inputs:

| Input file | Initial profile | Role in the analysis |
|---|---:|---|
| `model_overview.csv` | 3 rows × 15 columns | Published model-level overview and reported summary scores |
| `model_dimension_scores.csv` | 24 rows × 10 columns | Reported scores for 8 governance dimensions across 3 models |
| `selected_case_scores.csv` | 29 rows × 10 columns | Available model observations for selected benchmark cases |
| `reported_region_summaries.csv` | 5 rows × 5 columns | Publisher-reported regional summary statistics and examples |
| `governance_framework_register.csv` | 8 rows × 10 columns initially | Initial project reference register for governance instruments |

The framework register was subsequently maintained and updated as a nine-entry current register. The project publishes the current version and its change log separately from the original input. The current register includes source URLs, instrument identifiers, publication or status information, legal-status notes, effective or review notes and verification information.

### 3.3 Source provenance and version control

Source names, source dates and available source URLs are preserved in the project data and governance register. The current governance register was verified on **31 October 2026**. This is a project verification date, not a claim that every instrument was newly issued on that date.

The governance register covers references including India's AI Governance Guidelines, the Digital Personal Data Protection Act and Rules, the EU AI Act, NIST AI Risk Management Framework, ISO/IEC 42001, ISO/IEC 42005, OECD AI Principles and a TRAI draft consultation. The register records the status and source references for each entry; users should consult the cited primary source for the authoritative text and current legal position.

## 4. Data preparation and quality assessment

### 4.1 Profiling

The five initial input datasets were profiled for row and column counts, missing cells and exact duplicate rows. The recorded initial profile contained **69 rows in total**, with **zero missing cells** and **zero exact duplicate rows** across the five input tables.

These checks describe the files as assembled. They do not establish that the publisher's underlying benchmark data is complete or independently valid.

### 4.2 Structural and domain checks

The preparation and quality-assurance workflow checked, among other things:

- consistency of the three model identifiers across relevant benchmark tables;
- the expected eight governance dimensions for each model;
- benchmark score values against the documented 0–10 scale;
- selected case-model coverage against the expected combinations;
- uniqueness and validity of identifiers and mapping references;
- consistency between source records and derived outputs; and
- explicit treatment of source omissions and status classifications.

The formal data-quality audit recorded **30 checks passed out of 30**, with **zero checks requiring review** after the documented wording correction. The audit is available as `data/processed/data_quality_audit.csv`.

### 4.3 Missing selected-case observation

There are **29 available selected case-model observations**, rather than the 30 combinations that would result from 10 cases multiplied by 3 models. The C10 observation for Sarvam-105B is not available in the source material used by the project.

The project preserves this absence rather than imputing or estimating a score. Consequently, case-level summaries use the available observations, and the C10 average is based on **two observations only**. This coverage limitation must be retained when interpreting case comparisons.

### 4.4 Cleaning policy

Cleaned copies are written separately from the raw inputs. The documented cleaning stage standardises data for analysis and retains source observations; it does not fabricate the missing C10/Sarvam-105B value. Preparation actions are recorded in `data_preparation_log.csv`.

## 5. Analytical methods

### 5.1 Model-level comparison

The model overview is used to compare the three publisher-reported overall scores:

| Model | Reported overall score |
|---|---:|
| Sarvam-30B | 7.43 |
| Sarvam-105B | 7.43 |
| Sarvam-M | 7.24 |

The equal displayed scores for Sarvam-30B and Sarvam-105B should not be interpreted as proof of identical performance. The published figures are rounded summary scores, and the project does not have raw response-level data with which to estimate uncertainty or test small underlying differences.

### 5.2 Governance-dimension analysis

The dimension dataset contains 24 observations: 8 dimensions for each of 3 models. The project calculates descriptive averages across the three publisher-reported model scores for each dimension and examines the range across the three models.

Recorded descriptive findings include:

| Dimension | Average reported score (approximately) |
|---|---:|
| Privacy | 9.19 |
| Safety | 8.54 |
| Fairness | 7.59 |
| User Impact | 7.42 |
| Reliability | 7.14 |
| Inclusivity | 6.53 |
| Transparency | 6.39 |
| Accountability | 6.13 |

Privacy has the highest average reported dimension score, while accountability has the lowest. Safety has the largest cross-model score range at **0.52 points**. These are descriptive summaries of published, rounded scores; they are not independent measures of model capability or statistical evidence of a difference in underlying population performance.

### 5.3 Selected-case analysis

Selected-case analysis compares reported overall and safety scores for the available case-model observations. Case summaries use available observations only. Missing combinations are kept missing and are not imputed.

Recorded findings include:

- C01 has the lowest average reported overall score among the selected cases, approximately **5.37**.
- C10 has two available observations, with an average reported overall score of **5.85** and an average reported safety score of **3.00**.

The cases are publisher-selected stress-test examples. They should not be treated as a random or representative sample of all model responses, nor should case averages be generalised to overall system safety.

### 5.4 Regional summary analysis

The regional analysis compares five publisher-reported summary records using the reported average score, lowest reported score and average-to-lowest gap. The project treats these as descriptive fields from the published summaries.

The reported regional average scores range from **7.24 to 7.50**, and the recorded average-to-lowest gaps range from **0.78 to 2.24 points**. The gap is a descriptive difference between two reported summary values; it is not a standard deviation, confidence interval or statistically validated measure of regional variation.

The summaries are not treated as representative estimates of regional populations, languages, communities or deployment contexts.

### 5.5 Findings register and visual analysis

The project records ten analytical findings in `outputs/eda_findings_register.csv`. Exploratory figures include model comparison, dimension heatmap, selected-case comparison and regional summary comparisons. Governance figures examine control focus, framework mapping and the control-framework matrix.

Visualisations are used to support inspection of the published summaries and project-derived mappings. They do not add evidence beyond the underlying data and documented methods.

## 6. Governance framework register and control-mapping method

### 6.1 Framework register

The maintained governance register contains **nine entries** spanning binding instruments (where applicable and within scope), government guidance, voluntary frameworks, international standards, non-binding principles and a draft consultation.

The project uses a descriptive classification column to organise the register:

- 3 binding law/regulation entries (scope-dependent);
- 1 government guidance entry;
- 1 voluntary framework entry;
- 2 international standard entries;
- 1 non-binding principles entry; and
- 1 draft consultation entry.

The classification is a navigation and analysis aid. It is not a determination that a particular law applies to a particular organisation, system or processing activity. Applicability depends on the instrument's text, commencement provisions, territorial and material scope, exemptions and the facts of the relevant organisation or activity.

### 6.2 Proposed control register

The project defines **16 proposed governance controls** covering themes such as accountability and ownership, transparency and documentation, inclusivity, fairness, safety testing, privacy safeguards, incident management and regulatory applicability assessment.

The recorded status distribution is:

- **15 — Proposed – not assessed**
- **1 — Policy watch – draft**

These are project-defined proposals and monitoring items. They are not evidence that an organisation has adopted, implemented, tested or operated the controls.

### 6.3 Framework-control mappings

The control mapping dataset contains **76 framework-control links**. Links associate a proposed control with relevant framework provisions, principles or governance expectations as interpreted for this analytical exercise.

The mapping is intended to support structured comparison and traceability. It is not a formal legal crosswalk, certification mapping, audit opinion or legal applicability assessment. Similar labels across frameworks do not necessarily represent equivalent legal duties or assurance requirements.

### 6.4 Evidence references

The evidence mapping dataset contains **19 evidence references** associated with the proposed controls. References help identify source material or documentation relevant to a control theme. A reference is not proof that the control is implemented or effective, and the presence of a source URL does not replace review of the source text.

### 6.5 Governance validation

The governance mapping quality checks recorded **8 of 8 checks passed**. The checks cover unique control identifiers, valid control and framework references, duplicate mapping detection, evidence reference validity, status classifications and reconciliation of the control-framework matrix.

This validates structural consistency against the project's own rules; it does not validate the substantive legal interpretation or real-world operating effectiveness of the proposed controls.

## 7. Technical workflow and reproducibility

The project workflow is organised as follows:

1. **Ingest:** Load the five raw CSV inputs and record their provenance.
2. **Profile:** Inspect dataset dimensions, missing cells, duplicate rows, identifiers and score ranges.
3. **Validate:** Run structural, domain, coverage and governance-reference checks; document source omissions.
4. **Prepare:** Write separate cleaned datasets and a preparation log without imputing missing benchmark observations.
5. **Explore:** Calculate descriptive model, dimension, case and regional summaries and create exploratory visualisations.
6. **Register findings:** Record analytical observations and their interpretation boundaries.
7. **Model relational data:** Build a SQLite database and create SQL schema and analytical query scripts.
8. **Cross-validate:** Compare selected Python and SQL results.
9. **Map governance:** Maintain framework and control registers, mapping bridges and evidence references; validate their structural integrity.
10. **Prepare reporting assets:** Export a consolidated Excel workbook and Power BI-ready tables, manifests and relationship definitions.

### 7.1 Recorded technical validation

| Validation or output | Recorded result |
|---|---:|
| Formal data-quality audit | 30/30 passed |
| Python-SQL cross-validation | 7/7 passed |
| Analytical SQL queries executed | 9 |
| SQLite tables | 20 |
| SQLite integrity check | `ok` |
| Reported foreign-key issues | 0 |
| Power BI-ready tables | 13 |
| Documented Power BI relationships | 8 |
| Integrated Excel workbook worksheets | 29 |
| Governance mapping checks | 8/8 passed |

The 13 Power BI-ready tables comprise dimension, fact and bridge tables, plus data-quality and findings tables. The intended relationships are documented in `outputs/powerbi_model_tables/00_powerbi_relationships.csv`; the table inventory is documented in `00_powerbi_table_manifest.csv`.

The Power BI report's final interactive presentation is still being recovered and validated. The presence of prepared Power BI tables and relationship definitions should not be represented as a completed, validated dashboard. The final PBIX and dashboard screenshots will be added only after the report has been reconstructed and checked.

## 8. Interpretation principles

Readers should apply the following principles when using the repository:

1. **Distinguish publisher-reported data from project-derived calculations.** Averages, ranges, coverage counts and mapping summaries are calculated by this project from the documented inputs.
2. **Retain the source's precision limits.** Rounded scores do not support claims of exact equivalence or fine-grained ranking.
3. **Do not fill source gaps silently.** The missing C10/Sarvam-105B observation remains unavailable and is not imputed.
4. **Do not generalise selected examples.** Publisher-selected cases are illustrative stress-test examples, not a representative sample of all outputs.
5. **Do not overinterpret regional summaries.** The five summary records are descriptive and do not establish population-level differences.
6. **Distinguish proposed controls from implemented controls.** A register entry or framework link is not evidence of operational adoption or effectiveness.
7. **Distinguish reference mapping from legal advice.** A framework association does not determine legal applicability or compliance.
8. **Follow source references.** The upstream dataset and the official source URLs in the governance register remain the authoritative references for source-specific claims.

## 9. Limitations

- The benchmark analysis is based on published summary data and selected examples, not raw response-level data or independent model evaluation.
- The project cannot reproduce or independently audit the publisher's scoring process from the summary CSVs alone.
- Publisher-reported scores are rounded, limiting precision of comparisons.
- One selected case-model combination is absent from the available source data; it is not imputed.
- The selected cases are purposive and not representative of the full benchmark response population.
- The regional summaries are limited to five publisher-reported records and do not establish representative regional performance.
- Descriptive comparisons are not accompanied by inferential statistical tests on raw response-level observations.
- Governance controls are proposed and have not been assessed for implementation or effectiveness.
- Framework mappings are analytical associations, not legal opinions, formal certifications or a complete compliance crosswalk.
- The final Power BI dashboard remains in progress; prepared tables and relationship documentation are available, but final visuals are not yet published.

## 10. Responsible use statement

This project is an educational and analytical portfolio exercise. It is not legal advice, a compliance certification, a formal audit, a safety guarantee or an endorsement of any model or framework. Users should consult original benchmark documentation, applicable legislation, official regulator publications and qualified advisers before making research, procurement, deployment or compliance decisions.

## 11. Repository navigation

- `notebooks/` — end-to-end analytical notebook.
- `data/raw/` — source input datasets and source notes.
- `data/processed/` — cleaned datasets, derived summaries, validation outputs and current framework register.
- `sql/` — SQLite schema and analytical SQL queries.
- `outputs/` — SQLite database, query outputs, export manifests and Power BI-ready tables.
- `governance/registers/` — governance controls and mapping registers.
- `governance/analysis/` — governance coverage and mapping summaries.
- `governance/validation/` — governance mapping and evidence validation results.
- `excel/` — integrated analytical workbook.

For the project overview, key findings and high-level status, see the repository's root `README.md`.
