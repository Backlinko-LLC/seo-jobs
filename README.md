# SEO Jobs Analysis

by Cédric Scherer & Daniel Kupka (FrontPage Data) & Brian Dean (backlinko.com)

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

## Priorities
!!! I put the more advanced research questions in parentheses. Let´s focus on the basic questions for now. I want to get the basics right. In our last project, we (you) put a lot of effort into the large vs other domains and at the end he did not use them.

--> Argh, in my versio nthis was not included yet so I did all plots with regard to company info beside specialized tasks which is a bit difficult anyway (more detailed comments below for each section). Going to ingore questions in parentheses from now on.

## Salary + education

I have the feeling there is some overlap between section 5.3 and 6 with section 1 where we already look into salary and education. So I would suggest to somehow merge them or reorder them. Assuming you have a simple bar chart or sth similar for simply the three degrees and a histogram of salaries in mind, those shown in section one are way more detailed by looing at the company's size and rating.

## Job Tasks

I've added word clouds for both words and consecutive sequences of terms found in the job description (removed "seo" and terms which occurred less than 10 times). Do you provide any list out of these? If you want to have a look at the list, I have first generated the data frame and then plotted it so we can also have a look into the list and filter it manually etc.

## "Deep Dive" into Tasks

I am not sure what exactly you have in mind here. Since I already decided to show the subset of technical versus non-technical jobs this feels a bit repetitive. But I might be wrong - here we look into the description,  in section 1 I used the job title. Let's see once we have the list of tasks.

## Programming Languages + Tools

In section 5.1 U have used the programming languages listed in the yearly survey of StackOverflow and added Julia (because I know it and wondered why it's missing - not included anyway).

I assume for tools (section 5.2) you mean non-programming tools to be included (as well or only those?). Can you come up with a list here? I might run out of tools used in this context very soon (I would include tools such as Power BI and Tableau?!).

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

#### Where do companies hire SEOs?

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

#### How large are companies that hire?

![](./plots/png/3_1_size_histo_1.png)

#### (Do larger companies require more specialized tasks?)

--> ??? What do we define as "more specialized tasks"?


#### (Do larger companies require a formal education?)

We extracted from the job descriptiosn the required/desired degree:

* Bachelors ~ `B.Ba.|B.Sc.|BBa|BSc|BBA|BSC|Bachelors`
* Masters ~ `M.Ba.|M.Sc.|MBa|MSc|MBA|MSC|Masters`
* Doctorates ~ `Ph.D.|PhD|Doctorate`

![](./plots/png/3_1_size_edu_1.png)

In total we found 39 posisition mentioning Bachelors, 10 Masters and only one with Doctorate.


## 3.2	Revenue

#### Which education level is required by high-revenue companies?

-> I've added this since it's a low hanging fruit after the last section ;)
-> 3 different versiomn to deal with poverplotting of the x-axis labels

![](./plots/png/3_2_revenue_edu_small_1.png)

![](./plots/png/3_2_revenue_edu_dodge_1.png)

![](./plots/png/3_2_revenue_edu_angle_1.png)


#### (What type of skill sets are required by high-revenue companies?)

--> ??? Can you come up with a list or should I try to extract common words? Don't know yet how to determine those terms between skills and... yeah, what does mark the end of the skill section?

--> So I tokenized the description and removed stop words and numbers as well as manually non-sense/non-skill-related words. There might be more but if we keep it we can have a closer look I would say. Only later realized it has less priority. However, these wordclouds can be used in another context for sure anyway.


![](./plots/png/3_2_revenue_words_vertical_1.png)

![](./plots/png/3_2_revenue_words_horizontal_1.png)


## 3.3	Sector/Industry

#### Which sectors do mainly hire SEOs?

![](./plots/png/3_3_sector_counts_1.png)


#### Which industries are interested in filling SEO positions?

![](./plots/png/3_3_industry_counts_1.png)


## 3.4	Company Rating

#### (Do lower rated companies pay less (salary)?)

![](./plots/png/3_4_rating_salary_1.png)

#### (Which companies have the highest ratings?)


# 4	Job Responsibilities

!!! For section 4. and 5.: To get the words we are looking for, it would be useful to see a simple wordcloud or a df which the tokenized words (single words and bigrams). That way, we can scan through the list and select those that fit to job tasks, programming language, knowledge of popular tools, etc. What do you think? Open to other appraoches.   

Words in the job desciptions with a frequency of 10 or more:

![](./plots/png/4_cloud_word_1.png)

Consecutive sequences of words (*ngrams*) in the job desciptions with a frequency of 10 or more:

![](./plots/png/4_cloud_sequ_1.png)


## 4.1	Job related tasks

#### What job tasks are most often mentioned?


## 4.2	Deep dive into job tasks (PPC, content management, technical, etc.)

#### What technical SEO tasks are most often required?

--> How will this differ to 1.1 where we look at technical vs non-technical positions? Since I already showed the most common terms here i think it is (almost?) the same plot.


# 5	Job Requirements

## 5.1	Programming Languages

#### What programming languages are most often required?

I for now use the programming languages listed by the SO yearly survey:
JavaScript, HTML/CSS, SQL, Python, Java, Bash/Shell/PowerShell, C#, PHP, C++, TypeScript, C, Ruby, Go, Assembly, Swift, Kotlin, R, VBA, Objective-C, Scala, Rust, Dart, Elixir, Clojure, WebAssembly + Julia

![](./plots/png/5_1_require_prog_1.png)


#### What languages are most often required in combination (e.g. Html, CSS)

![](./plots/png/5_1_require_prog_comb_1.png)



## 5.2	Knowledge of Popular Tools

#### What tools are most often required?

--> What's the difference to 5.1, including i.e. Power BI? Do you provide a list of common tools?

!!! strings to look for (plz apply "all to lower": 

Bing Webmaster Tools
Botify
Bright Local
Browseo
Clusteric
ContentKing App
DareBoost
DeepCrawl
EasyRedir
Forecheck
Google Analytics
Google Mobile-Friendly Test
Google PageSpeed Insights
Google Search Console
Google XML Sitemaps
GTmetrix
HeadMasterSEO
LinkPatrol
Lipperhey
OnCrawl
Panguin Tool
Raven Tools
Screaming Frog
Seobility
Seomator
SERPmetrics
Siteliner
Topvisor
Varvy SEO Tool
Whitespark
Woorank
Yoast
Zadroweb
Answer The Public
ClearScope
Exploding Topics
FAQfox
Google Keyword Planner
Google Location 
Google Trends
Gookey
GrepWords
HitTail
Imforsmb
iSpionage
Jaaxy
Keyword Eye
Keyword Revealer
Keyword Snatcher
Keyworddit
KeywordIn
Keywords Everywhere
KeywordSpy
KeywordTool.io
Kombinator
kwfinder
Long Tail Pro
Power Suggest Pro
QuestionDB
SanityCheck
SECockpit
Seed Keywords
SEMrush
SERPStat
SimilarWeb
Soovle
SpyFu
StoryBase
TermExplorer
TwinWord
UberSuggest
Webtexttool
Wondersearch
Wordstream
WordTracker
Wordtracker Scout
Advanced Web Ranking
Agency Analytics
AMZ Tracker
Authority Labs
GeoRanker
Microsite Masters
NightWatch
Pro Rank Tracker
Rank Ranger
Rival IQ
SE Ranking
Search Latte
Serpfox
SERPs.com
SERPWoo
Sistrix
WebCEO
WordTail
Animalz Revive
BuzzSumo
Can I Rank
ClickFlow
Google SERP Preview Tool
Keys4Up
LSIGraph
MarketMuse
MetaTags.io
nTopic
Positionly
Ryte
SEOptimer
TrendSpottr
Upcity
WordLift
Ahrefs
cognitiveSEO
Kerboo
Majestic 
Moz
MozBar
SEO PowerSuite
SEOGadget 
ShareMetric
URL Profiler
WebMeUp Backlink Tool
Morningfame
Social Blade
TubeBuddy
VidIQ
YTCockpit
AuthoritySpy
Buzzstream
DIBZ
disavow.it
Domain Hunter Plus
GroupHigh
HARO 
JustReachOut
Linkbird
Linkody
Linkstant
MailShake
Muck Rack
Ninja
Ontolo
Pitchbox
Rmoov
ScrapeBox
tableau
qlik
power bi



## 5.3	Years of Experience

#### What type of SEO jobs require +5 years experience?

--> Simply filter by "5+ years"? Or search for years and extract number? How to evaluate if they use different ways to say the same?


## 5.4	Degree Requirements

#### What type of degrees are most often required (BS vs MS vs None)?

--> Did this already for company info - any other relationship of interest here? Or a simple bar plot showing the three educaiton levels summarized and not for each company size/salary?


# 6	Salaries

## 6.1	Salary Ranges

#### What are the typical salary ranges for SEO jobs?



## 6.2	Salaries per Location

#### Where do companies pay the most/least?


## 6.3	Salaries for different positions

#### What are the highest/lowest paying SEO positions?


## 6.4	Salaries per job requirements

#### Do positions with programming languages pay significantly more?
