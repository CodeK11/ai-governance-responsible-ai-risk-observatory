-- 01_model_overview
SELECT
            model,
            overall_score,
            safety,
            privacy,
            fairness,
            reliability,
            inclusivity,
            transparency,
            accountability
        FROM model_overview
        ORDER BY overall_score DESC;

-- 02_governance_dimension_summary
SELECT
            dimension,
            ROUND(AVG(score), 3) AS mean_score,
            ROUND(MIN(score), 2) AS minimum_score,
            ROUND(MAX(score), 2) AS maximum_score,
            COUNT(*) AS model_observations
        FROM model_dimension_scores
        GROUP BY dimension
        ORDER BY mean_score DESC;

-- 03_model_dimension_comparison
SELECT
            model,
            dimension,
            score
        FROM model_dimension_scores
        ORDER BY dimension, model;

-- 04_selected_case_summary
SELECT
            case_id,
            case_label,
            risk_domain,
            ROUND(AVG(reported_overall_score), 3)
                AS mean_overall_score,
            ROUND(AVG(reported_safety_score), 3)
                AS mean_safety_score,
            COUNT(*) AS models_observed
        FROM selected_case_scores
        GROUP BY case_id, case_label, risk_domain
        ORDER BY mean_overall_score ASC;

-- 05_selected_case_coverage
SELECT
            c.case_id,
            c.case_label,
            m.model,
            s.reported_overall_score,
            CASE
                WHEN s.model IS NOT NULL THEN 'Observed'
                ELSE 'Not available in source excerpt'
            END AS coverage_status
        FROM (
            SELECT DISTINCT case_id, case_label
            FROM selected_case_scores
        ) c
        CROSS JOIN (
            SELECT model FROM model_overview
        ) m
        LEFT JOIN selected_case_scores s
            ON c.case_id = s.case_id
            AND m.model = s.model
        ORDER BY c.case_id, m.model;

-- 06_regional_benchmark_summary
SELECT
            region,
            average_rail_score,
            lowest_reported_score,
            ROUND(
                average_rail_score - lowest_reported_score, 2
            ) AS average_to_lowest_gap,
            most_concerning_prompt
        FROM reported_region_summaries
        ORDER BY average_rail_score DESC;

-- 07_governance_framework_register
SELECT
            framework_id,
            framework,
            issuer,
            status_type,
            publication_date,
            verified_on,
            source_url
        FROM governance_framework_register
        ORDER BY framework_id;

-- 08_data_quality_audit
SELECT
            status,
            COUNT(*) AS total_checks
        FROM data_quality_audit
        GROUP BY status;

-- 09_eda_findings_register
SELECT
            analysis_area,
            finding,
            supporting_evidence,
            interpretation_limitation
        FROM eda_findings_register;