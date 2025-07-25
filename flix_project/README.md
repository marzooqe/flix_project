Case Study: Strategic Data Transformation in Finance Operations
📌 Business Context
Flix operates in 30+ countries, each with its own finance ledger, reporting routines, and reconciliation practices. The Finance Transformation team aims to reduce manual effort, improve consistency, and ensure audit readiness across tools and systems. With fragmented tools and decentralized ownership, data-driven visibility into inefficiencies has become critical.
🎯 Objective
Your objective is to build a clean, query-able data model from the provided datasets, derive insights, and identify areas for financial process improvement. The goal is to create a business case for transformation based on potential EUR impact, focusing on structured thinking and actionable recommendations.
💡 What We're Evaluating
We are primarily looking at your ability to handle complex data structures, derive business-relevant insights, and propose meaningful process improvements. We want to see your structured thinking, transformation mindset, and how you build a compelling case for change.
📦 Datasets Provided


tool_mapping.csv — Links tools to their departments, categorizing their maturity and suitability for automation across the Finance ecosystem.
reconciliation_log.csv — Ledger reconciliation records including account-level details, statuses, and timestamps for open/closed items across entities and currencies.
process_hierarchy_map.csv — Shows parent-child relationships between finance processes and sub-processes, used to map operational structures and dependencies.
manual_report_registry.csv — Captures manually prepared reports including purpose, tools used, time taken for preparation, and frequency of reporting, segmented by country and department.
journal_entries.csv — Contains general ledger entries from various booking tools and preparation sources, with transaction-level financial data, dates, and booking systems.
closing_calendar.csv — Month-end closing schedule for each entity, including planned vs. actual close dates, and stated reasons for delay where applicable.
audit_findings.csv — Contains audit-related findings including area, severity, and remediation status. Useful for evaluating control issues and unresolved compliance gaps across entities.
💱 Exchange Rate Data
Use the provided `fx_rates_ecb.csv` dataset to convert local currency costs into EUR where relevant. If you identify missing or incomplete exchange rate entries, feel free to complement the dataset using the ECB’s open-source API or your own logic to fill the gaps.
  Snowflake DWH Credentials
Feel free to load the data from the csv files into Snowflake using below credentials to build your model. While not mandatory, any creative approaches keeping scalability in mind may be viewed favorably.
Server URL:  https://va82732.eu-central-1.snowflakecomputing.com/

The user credentials are provided separately per candidate!
🧠 Key Task: Develop a Clean, Reusable Data Model
We expect you to clean and transform the provided datasets and model them in a way that allows downstream use by BI tools and strategic Finance users. Your data model should act as a foundation for KPI tracking, reconciliation summaries, and effort-based prioritization of financial processes. While your queries may be complex, the structure and outcome should be clear and explainable.
🔍 Sub-Tasks (Strategic Questions to Explore, backed by Data)
Which countries show irregular or high manual effort in journal entries or reporting?
Where are reconciliation statuses consistently delayed or left unresolved?
What reporting requests frequently occur across departments?
How is the usage of tools (especially legacy ones) across different departments?
Use the process hierarchy map to identify gaps in process coverage or overlapping sub-processes.
What processes appear to have the highest effort with potentially low impact, and vice versa?
Where do currency conversion discrepancies impact visibility into global cost and effort in EUR?
📊 Power BI Visuals & Insights
You are not required to build a polished dashboard. Instead, use Power BI (or any BI tool) to visualize your key findings based on the data model you’ve built. Focus on extracting meaningful insights at multiple levels of granularity that could be useful for building a transformation roadmap.
🧾 Slide Deck Expectations (Max 6-7 Slides)
The goal of the slide deck is to communicate your thought process and recommendations clearly. The contents could be:
Overview of your approach (data model design, assumptions, methodology).
Process and tool inefficiencies identified from the analysis.
Outline of top 3-5 potential transformations with rationale based on EUR impact, etc.
Suggested next steps in the form of a Project Plan with one top-most high-impact areas to prioritize.

🧾 Extra on-the-spot tasks during the interview

SQL test (short one, 10 questions)
Excel exercise
(No further preparation is required)
