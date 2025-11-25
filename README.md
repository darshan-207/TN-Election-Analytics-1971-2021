# TN-Election-Analytics-1971-2021
TN Election Analytics (1971–2021) A Power BI dashboard analyzing 50 years of Tamil Nadu elections. Key visuals include Turnout Trends, Party Vote Share Volatility, and Top Winning Margins. Features dynamic slicers for Year, District, and Party, leveraging PostgreSQL (window functions) and Python (Pandas) for robust data modeling and analysis.
# 🗳️ Tamil Nadu Election Analytics Dashboard (1971–2021)

## 📊 Decoding 50 Years of Political Cycles

![Project Status](https://img.shields.io/badge/Status-Complete-brightgreen)
[![Years Covered](https://img.shields.io/badge/Years-1971%E2%80%932021-blue)]()
[![Core Tools](https://img.shields.io/badge/Tech-Python%20|%20PostgreSQL%20|%20PowerBI-red)]()

This repository contains a complete, full-cycle data analytics study of **Tamil Nadu Assembly Elections spanning fifty years (1971–2021)**. The objective was to move beyond single-election analysis and uncover **long-term electoral patterns**, **voter engagement behavior**, and **constituency-level competitiveness** using a robust analytical pipeline.

---

## 1. 💡 Project Objectives & Analytical Questions

The project utilized multi-decade election outcomes to answer critical analytical questions about the state's political landscape:

* How has **voter turnout** changed over the five decades, indicating long-term engagement?
* How have major parties (**DMK, ADMK, BJP**) performed across elections in terms of stability and volatility?
* Which constituencies display **consistent competitiveness** vs. being safe seats?
* What are the **highest winning margins** (landslides) and where did they occur?
* How does vote share distribution evolve over time across all participating parties?

The final deliverable is an **interactive Power BI dashboard** 

[Image of a Power BI Dashboard with Charts and Slicers]
 enabling deep exploratory analysis across districts, parties, constituencies, and years.

---

## 2. 🛠️ Tools and Technologies

The project leveraged a professional data stack, showcasing proficiency across the entire analytics lifecycle:

| Component | Tools Used | Key Application / Skill Highlight |
| :--- | :--- | :--- |
| **Data Cleaning** | **Python (Pandas, NumPy)** | Preprocessing, type casting, and standardization of constituency records. |
| **Exploratory Analysis** | **Seaborn, Matplotlib** | Visualizing initial trends and verifying data quality. |
| **Database Layer** | **PostgreSQL** | Storing structured data and executing complex analytical queries using **CTEs** and **window functions**. |
| **Visualization** | **Power BI** | Designing the interactive dashboard and calculating metrics using **DAX measures**, slicers, and KPIs. |

---

## 3. 📈 Key Dashboard Features

The Power BI dashboard is structured for maximum user interactivity and insightful exploration:

* **KPI Indicators:** Turnout, Vote Share, Total Seats Won, NOTA, and a calculated **Competitiveness Index**.
* **Time Series:** **Turnout Trend Line (1971–2021)** and Party-wise **Vote Share Trend** over time.
* **Distribution:** **Turnout Distribution Curve** and **Top-10 winning margins** (bar visual).
* **Filters:** Dynamic slicers for **Year, Party, District, and Constituency** to enable granular drill-down analysis.
* **Volatility:** Dedicated visuals tracking **Vote Share Volatility** and gender-based charts (where applicable).

---

## 4. 📚 Data Source & Acknowledgement

The foundation of this study is built upon publicly available election datasets.

**Primary Dataset Source:**
**Trivedi Centre for Political Data (TCPD), Ashoka University**

* **Reference Dataset Link:** [https://github.com/tcpd/IndianElectionsDataset_1951-to-1962/blob/main/TCPD_IED_1951-62.csv](https://github.com/tcpd/IndianElectionsDataset_1951-to-1962/blob/main/TCPD_IED_1951-62.csv)
* **TCPD GitHub Repository:** [https://github.com/tcpd/](https://github.com/tcpd/)

**TCPD is fully acknowledged as the source and owner of the cleaned electoral data used in this project.** Their work in standardizing Indian electoral data is deeply appreciated.

---

## 5. 📂 Repository Structure

The repository is organized to clearly map the analytical pipeline:
TN-Election-Analysis/ │ ├── dashboard/ # Screenshot of the Dashboard 
                      ├── python/ # Python EDA notebooks and data cleaning scripts 
                      ├── sql/ # PostgreSQL query files used for advanced aggregations and trend extraction 
                      ├── powerbi/ # PBIX dashboard files and supporting assets 
                      └── README.md # Project documentation

---

## 6. 👋 Contact

For collaboration, code review, or further discussion regarding the **DAX measures** or **PostgreSQL window functions** used in this project:

Connect with me via [Your LinkedIn Profile Link] or open an issue/discussion here on GitHub.
