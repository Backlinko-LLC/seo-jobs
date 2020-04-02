# SEO Job Analysis

# Internal Comments & Questions

**Section with comments and questions on the analysis and workflow - let's mostly discuss here**

### Job Position Types

We need to agree on names of positions in general and which fall into technical/non-technical groups.

I did some text mining and defined for now technical and non-technical positions manually looking at the resulting list without stop words. I decided to clasify as follows:

* technical ~  `analy|special|engine|develop|technic|optimi`
* non-technical ~  `manage|direct|writ|consult|coordinat|edito|market|sale|social|strateg|supervis`

I am not sure if all of them are correct (but hopefully most) but e.g. "specialist" is a term I would have another look at. I searched descriptions of specialists and they read as if SEO specialist is a common term for a technical position. Correct?


### Chart Type Job Type

I thought I make a doughnut chart (as we also discussed on the phone). However, the doughnot looked not that good and a bit too fance - but on a caertesian coordinated these stacked bars looked very nice! So it's a bit more fancy graph but I think that's good for a bit of variety and atteention-drawing - I hope you and Brian like it!


### A Nicer html

With my new css/html skills it was an easy thing to change the boring colors and fonts to match backlinkos and our plot design ;)


# 1. Job Title

## 1.1 Most Popular SEO Jobs

We analysed the data on job titles using text mining techniques. In a first step, we tokenize the job titles into single words and visualize their frequency. Stop words and words that appeared less than 7 times were removed to make the graph easier to grasp.

![](./plots/png/1_1_jobs_word_1.png)


In a second step, we analysed sequences of words in the job title. The sorted bar plot shows the most popular consecutive sequences of words (5 or more occurences), colored by category.

![](./plots/png/1_1_jobs_cat_1.png)


We  manually classified in technical and non-technical positions, removing all words that are no specific to any of the both categories: 

* technical ~  `analy|special|engine|develop|technic|optimi`
* non-technical ~  `manage|direct|writ|consult|coordinat|edito|market|sale|social|strateg|supervis`

The modified stacked bar plot shows the number of words found per job category and, additionally as another stacked bar next to it, the most common words per category (with labels for words that occured at least 20 times). The height of the stacks indicates as well the number, the width is arbitrary.

![](./plots/png/1_1_jobs_tech_1.png)

(Not sure if specialist is technical only. I looked it up and it sounds as "SEO specialist" is a very technical position in general.)

![](./plots/png/1_1_jobs_tech_no_spec_1.png)


# 2. Location

* Where do companies hire SEOs? (beautiful US Map)


## 2.1 Hot Spots (Cities)


## 2.2 Hot Spots (States)


# 3. Company Info

## 3.1	Size

* How large are companies that hire? 

* Do larger companies require more specialized tasks? 

* Do larger companies require a formal education?


## 3.2	Revenue 

* What type of skill sets are required by high-revenue companies?


## 3.3	Sector/Industry

* What type of companies hire SEOs? 


## 3.4	Company Rating

* Do lower rated companies pay less (salary)? Which companies have the highest ratings? 


# 4	Job Responsibilities

## 4.1	Job related tasks

* What job tasks are most often mentioned? 


## 4.2	Deep dive into job tasks (PPC, content management, technical, etc.)

* What technical SEO tasks are most often required?


# 5	Job Requirements

## 5.1	Programming Languages

* What programming languages are most often required? 

* What languages are most often required in combination (e.g. Html, CSS)


## 5.2	Knowledge of Popular Tools

* What tools are most often required?


## 5.3	Years of Experience

* What type of SEO jobs require +5 years experience? 


## 5.4	Degree Requirements

* What type of degrees are most often required (BS vs MS vs None)? 


# 6	Salaries

## 6.1	Salary Ranges

* What are the typcial salary ranges for SEO jobs?


## 6.2	Salaries per Location

* Where do companies pay the most/least?


## 6.3	Salaries for different positions

* What are the highest/lowest paying SEO positions?


## 6.4	Salaries per job requirements

* Do positions with programming languages pay significantly more?



