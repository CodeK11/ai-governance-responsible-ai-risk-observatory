
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS selected_case_scores;
DROP TABLE IF EXISTS model_dimension_scores;
DROP TABLE IF EXISTS reported_region_summaries;
DROP TABLE IF EXISTS governance_framework_register;
DROP TABLE IF EXISTS model_overview;

CREATE TABLE model_overview (
    model TEXT PRIMARY KEY,
    reported_responses_scored INTEGER NOT NULL,
    prompts_in_benchmark INTEGER NOT NULL,
    overall_score REAL NOT NULL CHECK(overall_score BETWEEN 0 AND 10),
    safety REAL CHECK(safety BETWEEN 0 AND 10),
    privacy REAL CHECK(privacy BETWEEN 0 AND 10),
    fairness REAL CHECK(fairness BETWEEN 0 AND 10),
    reliability REAL CHECK(reliability BETWEEN 0 AND 10),
    user_impact REAL CHECK(user_impact BETWEEN 0 AND 10),
    inclusivity REAL CHECK(inclusivity BETWEEN 0 AND 10),
    transparency REAL CHECK(transparency BETWEEN 0 AND 10),
    accountability REAL CHECK(accountability BETWEEN 0 AND 10),
    source_url TEXT NOT NULL,
    source_date TEXT NOT NULL,
    data_basis TEXT
);

CREATE TABLE model_dimension_scores (
    model TEXT NOT NULL,
    dimension TEXT NOT NULL,
    dimension_key TEXT NOT NULL,
    score REAL NOT NULL CHECK(score BETWEEN 0 AND 10),
    score_scale_min INTEGER NOT NULL,
    score_scale_max INTEGER NOT NULL,
    reported_model_responses_scored INTEGER,
    source_url TEXT NOT NULL,
    source_date TEXT NOT NULL,
    data_basis TEXT,
    PRIMARY KEY (model, dimension),
    FOREIGN KEY (model) REFERENCES model_overview(model)
);

CREATE TABLE selected_case_scores (
    case_id TEXT NOT NULL,
    model TEXT NOT NULL,
    case_label TEXT NOT NULL,
    risk_domain TEXT,
    reported_overall_score REAL NOT NULL
        CHECK(reported_overall_score BETWEEN 0 AND 10),
    reported_safety_score REAL NOT NULL
        CHECK(reported_safety_score BETWEEN 0 AND 10),
    source_observation TEXT,
    sampling_note TEXT,
    source_url TEXT NOT NULL,
    source_date TEXT NOT NULL,
    PRIMARY KEY (case_id, model),
    FOREIGN KEY (model) REFERENCES model_overview(model)
);

CREATE TABLE reported_region_summaries (
    region TEXT PRIMARY KEY,
    average_rail_score REAL NOT NULL
        CHECK(average_rail_score BETWEEN 0 AND 10),
    lowest_reported_score REAL NOT NULL
        CHECK(lowest_reported_score BETWEEN 0 AND 10),
    most_concerning_prompt TEXT,
    source_url TEXT NOT NULL
);

CREATE TABLE governance_framework_register (
    framework_id TEXT PRIMARY KEY,
    framework TEXT NOT NULL,
    issuer TEXT,
    publication_date TEXT,
    status_type TEXT,
    legal_status_note TEXT,
    project_use TEXT,
    effective_or_review_note TEXT,
    source_url TEXT,
    verified_on TEXT
);

CREATE INDEX idx_dimension_model
ON model_dimension_scores(model);

CREATE INDEX idx_case_model
ON selected_case_scores(model);

CREATE INDEX idx_case_domain
ON selected_case_scores(risk_domain);
