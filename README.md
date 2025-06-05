# 📊 Claim Cost Analysis for a Digital Insurance Company

This project presents a data-driven analysis of claim costs using SQL and Power BI, based on a publicly available insurance dataset. The goal is to extract actionable insights that can inform pricing, risk assessment, and customer segmentation for a digital insurance company.

---

## 📁 Dataset

- Source: [Kaggle - Medical Cost Personal Dataset](https://www.kaggle.com/datasets/mirichoi0218/insurance)
- Records: 1,338
- Fields:  
  `age`, `sex`, `bmi`, `children`, `smoker`, `region`, `charges`

---

## 🧰 Tools Used

- **SQL (MySQL 8.0)**: Data wrangling, aggregation, filtering
- **Power BI**: Interactive dashboard and visualization

---

## 🧠 Key Insights

### 1. 🔥 Claim Cost by Smoking Status
- **Smokers** have an average claim cost of **~$32050.23**
- **Non-smokers** average just **~$8434.30**
> Smoking is a strong indicator of high medical cost risk.

---

### 2. 📈 Age and BMI vs. Claim Cost
- **Claim cost increases significantly with age**.
- **Higher BMI correlates with larger claims**, especially above 30.
> Older and overweight individuals tend to incur higher medical costs.

---

### 3. 🗺️ Region-wise Insights
- The **Southeast** region has the **highest average claim cost**.
- **Northeast** and **Northwest** have similar, lower averages.
> This may reflect regional lifestyle or healthcare pricing differences.

---

### 4. 🧍 Age Group Distribution
Custom `age_group` column created:
- `<18` ➝ Minor  
- `18–35` ➝ Young Adult  
- `36–60` ➝ Adult  
- `60+` ➝ Senior Citizen  

- **Adults (36–60)** file the **most claims** in number and value.
> Target group for policy adjustments or incentives.

---

### 5. ⚡ Top 5 High Claim Records
- Highest individual claims all come from **smokers** with **high BMI (35+)**
> Supports underwriting restrictions or adjusted premiums.

---

### Tables

**1)** Male and Female customers count

![male-female-count](images/image.png)

**2)** Average charges by Sex

![avg-charge-by-sex](images/image-1.png)

**3)** Region-wise customer distribution

![region-wise-population](images/image-2.png)

**4)** Region-wise average age and BMI

![avg-age-bmi-by-region](images/image-3.png)

**5)** Average charges per region

![avg-charge-by-region](images/image-4.png)

**6)** Smoker count

![smoker-count](images/image-5.png)

**7)** Average age and BMI for smokers and non-smokers

![avg-age-bmi-smoker](images/image-6.png)

**8)** Average charges for smokers and non-smokers

![avg-charge-smoker](images/image-7.png)

**9)** Count of person per age group

![person-age-group](images/image-8.png)

**10)** Average BMI per age group

![avg-bmi-age-group](images/image-9.png)

**11)** Average charges per age group

![avg-charge-age-group](images/image-10.png)

**12)** Count of people in each BMI category

![count-bmi-category](images/image-11.png)

**13)** Average charges per BMI category

![avg-charge-bmi-group](images/image-12.png)

**14)** Summary

![summary](images/image-13.png)

---
