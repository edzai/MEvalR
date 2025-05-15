# 📊 MEvalR: Monitoring & Evaluation Toolkit for R

**MEvalR** is an open-source R package designed to support **Monitoring & Evaluation (M&E)** professionals working on development programs, social impact initiatives, and policy interventions. The package streamlines the end-to-end M&E workflow—from defining a Theory of Change (ToC) to conducting causal analysis and generating stakeholder-ready impact reports.

## 🔍 Overview

**MEvalR** allows users to:
- Define their **Theory of Change (ToC)** or **Logic Model**
- Upload initiative/program data
- Automatically evaluate alignment between plans and results
- Conduct **causal inference** (e.g., DiD, PSM, DAGs)
- Generate rich, interactive **impact reports** in PDF, Word, or HTML

## ✨ Key Features

| Module                 | Description                                                                 |
|------------------------|-----------------------------------------------------------------------------|
| `define_toc()`         | Create a structured Theory of Change from templates or data frames          |
| `load_data()`          | Import and validate M&E datasets (CSV, Excel)                               |
| `evaluate_alignment()` | Analyze alignment between planned indicators and observed data              |
| `run_causal_analysis()`| Apply causal inference techniques (e.g., DiD, matching, DAGs)               |
| `generate_report()`    | Produce professional M&E reports with charts, tables, and summaries         |

## 💻 Optional UI (Shiny App)

A companion **Shiny app** (coming soon!) will allow users to:
- Upload ToC and datasets interactively
- Visually design DAGs
- Perform causal tests with intuitive controls
- View and download reports from a dashboard

## 📥 Installation

```r
# Install from GitHub (coming soon)
# install.packages("devtools")
devtools::install_github("edzai/MEvalR")
```
