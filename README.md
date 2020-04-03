# SEO Job Analysis

# Internal Comments & Questions

**Section with comments and questions on the analysis and workflow - let's mostly discuss here**

### Job Position Types

We need to agree on names of positions in general and which fall into technical/non-technical groups.

I did some text mining and defined for now technical and non-technical positions manually looking at the resulting list without stop words. I decided to classify as follows:

!!!This is already a very good selection. I would remove engin and optimi as they are part of "Search Engine Optimization". They can be part of both worlds,  for example an "Search Engine Optimization Content Writer". Note: May change in the future. Therefore, for now there is now need to report on key takeaways.

I am not sure if all of them are correct (but hopefully most) but e.g. "specialist" is a term I would have another look at. I searched descriptions of specialists and they read as if SEO specialist is a common term for a technical position. !!! Not really, there are also "Marketing Specialist" positions. I think it would make sense to remove that from the technical-jobs category.

* technical ~  `analy|develop|technic|data`
* non-technical ~  `manage|direct|writ|consult|coordinat|edito|market|sale|social|strateg|supervis|content|editor|`

--> Okay, I have included an adjusted version, keeping the first as well so Brian can decide (or we can go back to it later or simply remove it if it's bs anyway).

### Chart Type Job Type

I thought I make a doughnut chart (as we also discussed on the phone). However, the doughnut looked not that good and a bit too fancy - but on a cartesian coordinated these stacked bars looked very nice! So it's a bit more fancy graph but I think that's good for a bit of variety and attention-drawing - I hope you and Brian like it!


### A Nicer html

With my new css/html skills it was an easy thing to change the boring colors and fonts to match backlinko's and our plot design ;)


# 1. Job Title

## 1.1 Most Popular SEO Jobs

We analyzed the data on job titles using text mining techniques. In a first step, we tokenize the job titles into single words and visualize their frequency. Stop words and words that appeared less than 7 times were removed to make the graph easier to grasp.

![](./plots/png/1_1_jobs_word_1.png)


In a second step, we analyzed sequences of words in the job title. The sorted bar plot shows the most popular consecutive sequences of words (5 or more occurrences), colored by category.

![](./plots/png/1_1_jobs_cat_1.png)


We  manually classified in technical and non-technical positions, removing all words that are no specific to any of the both categories:

* technical ~  `analy|special|engine|develop|technic|optimi`
* non-technical ~  `manage|direct|writ|consult|coordinat|edito|market|sale|social|strateg|supervis`

The modified stacked bar plot shows the number of words found per job category and, additionally as another stacked bar next to it, the most common words per category (with labels for words that occured at least 20 times). The height of the stacks indicates as well the number, the width is arbitrary.

![](./plots/png/1_1_jobs_tech_1.png)

Another, more specified version using a classification scheme:

* technical ~  `analy|special|develop|technic|data`
* non-technical ~  `manage|direct|writ|consult|coordinat|edito|market|sale|social|strateg|supervis`

![](./plots/png/1_1_jobs_tech_adj_1.png)


# 2. Location

Where do companies hire SEOs?

## 2.1 Hot Spots (Cities)

A bubble map showing company locations by city (excluding "states", "worldwide" and "remote").

![](./plots/png/2_1_map_cities_1.png)

Version with the Backlinko cyan as outline:

![](./plots/png/2_1_map_cities_bl_1.png)

## 2.2 Hot Spots (States)

A chloropleth hexagonal map showing company locations by state (excluding "states", "worldwide" and "remote"). Hexagonal tile maps are useful to remove the effect of area (i.e. our variable "job offers" is not realted to a state's area).

![](./plots/png/2_2_map_hex_states_1.png)

Version with the Backlinko cyan as outline:

![](./plots/png/2_2_map_hex_states_bl_1.png)


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
