---
title: "SEO Jobs Analysis"
author: "Cédric Scherer & Daniel Kupka (FrontPage Data) & Brian Dean (backlinko.com)"
date: "`r Sys.Date()`"
output:
  html_document:
    theme: paper
    highlight: kate
    code_folding: hide
    toc: true
    toc_depth: 3
    toc_float: true
editor_options:
  chunk_output_type: console
---

<style>
.list-group-item.active, .list-group-item.active:hover, .list-group-item.active:focus {
  background-color: #00d188;
  border-color: #00d188;
}

body {
  font-family: montserrat;
  color: #444444;
  font-size: 14px;
}

h1 {
  font-weight: bold;
  font-size: 28px;
}

h1.title {
  font-size: 30px;
  color: #00d188;
}

h2 {
  font-size: 24px;
}

h3 {
  font-size: 18px;
}
</style>


```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE, warning = FALSE, message = FALSE, fig.showtext = TRUE)

knitr::knit_hooks$set(inline = function(x) {
  prettyNum(x, big.mark = ",", small.mark = ",", scientific = F)
})
```


# Internal Comments & Questions

**Section with comments and questions on the analysis and workflow - let's mostly discuss here**

### Job Position Types

We need to agree on names of positions in general and which fall into technical/non-technical groups.

I did some text mining and defined for now technical and non-technical positions manually looking at the resulting list without stop words. I decided to clasify as follows:

* technical ~  `analy|special|engine|develop|technic|optimi`
* non-technical ~  `manage|direct|writ|consult|coordinat|edito|market|sale|social|strateg|supervis`

!!!This is already a very good selection. I would remove engin and optimi as they are part of "Search Engine Optimization". They can be part of both worlds, for example an "Search Engine Optimization Content Writer". Note: May change in the future. Therefore, for now there is now need to report on key takeaways.

I am not sure if all of them are correct (but hopefully most) but e.g. "specialist" is a term I would have another look at. I searched descriptions of specialists and they read as if SEO specialist is a common term for a technical position. Correct?

--> Okay, I have included an adjusted version, keeping the first as well so Brian can decide (or we can go back to it later or simply remove it if it's bs anyway).

### Chart Type Job Type

I thought I make a doughnut chart (as we also discussed on the phone). However, the doughnut looked not that good and a bit too fancy - but on a cartesian coordinated these stacked bars looked very nice! So it's a bit more fancy graph but I think that's good for a bit of variety and attention-drawing - I hope you and Brian like it!

!!! Love the stacked bars - looks more professional and business-like. :)


### A Nicer html

With my new css/html skills it was an easy thing to change the boring colors and fonts to match backlinkos and our plot design ;)

!!! Great...


## Priorities

!!! I put the more advanced research questions in parentheses. Let´s focus on the basic questions for now. I want to get the basics right. In our last project, we (you) put a lot of effort into the large vs other domains and at the end he did not use them.

--> Argh, in my versio nthis was not included yet so I did all plots with regard to company info beside specialized tasks which is a bit difficult anyway (more detailed comments below for each section). Going to ingore questions in parentheses from now on.

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

(Not sure if specialist is technical only. I looked it up and it sounds as "SEO specialist" is a very technical position in general.)

![](./plots/png/1_1_jobs_tech_adj_1.png)


# 2. Location

* Where do companies hire SEOs?

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

![](./plots/png/3_1_size_histo_1.png)

* (Do larger companies require more specialized tasks?)

--> ??? What do we define as "more specialized tasks"?


* (Do larger companies require a formal education?)

We extracted from the job descriptiosn the required/desired degree:

* Bachelors ~ `B.Ba.|B.Sc.|BBa|BSc|BBA|BSC|Bachelors`
* Masters ~ `M.Ba.|M.Sc.|MBa|MSc|MBA|MSC|Masters`
* Doctorates ~ `Ph.D.|PhD|Doctorate`

![](./plots/png/3_1_size_edu_1.png)

In total we found 39 posisition mentioning Bachelors, 10 Masters and only one with Doctorate.


## 3.2	Revenue

* Which education level is required by high-revenue companies?

-> I've added this since it's a low hanging fruit after the last section ;)
-> 3 different versiomn to deal with poverplotting of the x-axis labels

![](./plots/png/3_2_revenue_edu_small_1.png)

![](./plots/png/3_2_revenue_edu_dodge_1.png)

![](./plots/png/3_2_revenue_edu_angle_1.png)


* (What type of skill sets are required by high-revenue companies?)

--> ??? Can you come up with a list or should I try to extract common words? Don't know yet how to determine those terms between skills and... yeah, what does mark the end of the skill section?

--> So I tokenized the description and removed stop words and numbers as well as manually non-sense/non-skill-related words. There might be more but if we keep it we can have a closer look I would say. Only later realized it has less priority. However, these wordclouds can be used in another context for sure anyway.


![](./plots/png/3_2_revenue_words_vertical_1.png)

![](./plots/png/3_2_revenue_words_horizontal_1.png)


## 3.3	Sector/Industry

* Which sectors do mainly hire SEOs?

![](./plots/png/3_3_sector_counts_1.png)


* Which industries are interested in filling SEO positions?

![](./plots/png/3_3_industry_counts_1.png)


## 3.4	Company Rating

* (Do lower rated companies pay less (salary)?)

![](./plots/png/3_4_rating_salary_1.png)

* (Which companies have the highest ratings?)


# 4	Job Responsibilities

!!! For section 4. and 5.: To get the words we are looking for, it would be useful to see a simple wordcloud or a df which the tokenized words (single words and bigrams). That way, we can scann through the list and select htose that fit to job tasks, programming language, knowledge of popular tools, etc. What do you think? Open to other appraoches.   


## 4.1	Job related tasks

* What job tasks are most often mentioned?

## 4.2	Deep dive into job tasks (PPC, content management, technical, etc.)

* (What technical SEO tasks are most often required?)


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

* (What are the highest/lowest paying SEO positions?)


## 6.4	Salaries per job requirements

* (Do positions with programming languages pay significantly more?)
