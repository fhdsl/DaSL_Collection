---
title: '**DaSL Collection**'
date: "January, 2024"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib]
biblio-style: apalike
link-citations: yes
description: "Description about Course/Book."
favicon: assets/dasl_favicon.ico
always_allow_html: true
output:
    bookdown::html_document2:
      toc: true
---

# About this Collection


```{=html}
<div class="datatables html-widget html-fill-item" id="htmlwidget-1d7fd32f96866008b7be" style="width:100%;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-1d7fd32f96866008b7be">{"x":{"filter":"none","vertical":false,"data":[["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150"],[5.1,4.9,4.7,4.6,5,5.4,4.6,5,4.4,4.9,5.4,4.8,4.8,4.3,5.8,5.7,5.4,5.1,5.7,5.1,5.4,5.1,4.6,5.1,4.8,5,5,5.2,5.2,4.7,4.8,5.4,5.2,5.5,4.9,5,5.5,4.9,4.4,5.1,5,4.5,4.4,5,5.1,4.8,5.1,4.6,5.3,5,7,6.4,6.9,5.5,6.5,5.7,6.3,4.9,6.6,5.2,5,5.9,6,6.1,5.6,6.7,5.6,5.8,6.2,5.6,5.9,6.1,6.3,6.1,6.4,6.6,6.8,6.7,6,5.7,5.5,5.5,5.8,6,5.4,6,6.7,6.3,5.6,5.5,5.5,6.1,5.8,5,5.6,5.7,5.7,6.2,5.1,5.7,6.3,5.8,7.1,6.3,6.5,7.6,4.9,7.3,6.7,7.2,6.5,6.4,6.8,5.7,5.8,6.4,6.5,7.7,7.7,6,6.9,5.6,7.7,6.3,6.7,7.2,6.2,6.1,6.4,7.2,7.4,7.9,6.4,6.3,6.1,7.7,6.3,6.4,6,6.9,6.7,6.9,5.8,6.8,6.7,6.7,6.3,6.5,6.2,5.9],[3.5,3,3.2,3.1,3.6,3.9,3.4,3.4,2.9,3.1,3.7,3.4,3,3,4,4.4,3.9,3.5,3.8,3.8,3.4,3.7,3.6,3.3,3.4,3,3.4,3.5,3.4,3.2,3.1,3.4,4.1,4.2,3.1,3.2,3.5,3.6,3,3.4,3.5,2.3,3.2,3.5,3.8,3,3.8,3.2,3.7,3.3,3.2,3.2,3.1,2.3,2.8,2.8,3.3,2.4,2.9,2.7,2,3,2.2,2.9,2.9,3.1,3,2.7,2.2,2.5,3.2,2.8,2.5,2.8,2.9,3,2.8,3,2.9,2.6,2.4,2.4,2.7,2.7,3,3.4,3.1,2.3,3,2.5,2.6,3,2.6,2.3,2.7,3,2.9,2.9,2.5,2.8,3.3,2.7,3,2.9,3,3,2.5,2.9,2.5,3.6,3.2,2.7,3,2.5,2.8,3.2,3,3.8,2.6,2.2,3.2,2.8,2.8,2.7,3.3,3.2,2.8,3,2.8,3,2.8,3.8,2.8,2.8,2.6,3,3.4,3.1,3,3.1,3.1,3.1,2.7,3.2,3.3,3,2.5,3,3.4,3],[1.4,1.4,1.3,1.5,1.4,1.7,1.4,1.5,1.4,1.5,1.5,1.6,1.4,1.1,1.2,1.5,1.3,1.4,1.7,1.5,1.7,1.5,1,1.7,1.9,1.6,1.6,1.5,1.4,1.6,1.6,1.5,1.5,1.4,1.5,1.2,1.3,1.4,1.3,1.5,1.3,1.3,1.3,1.6,1.9,1.4,1.6,1.4,1.5,1.4,4.7,4.5,4.9,4,4.6,4.5,4.7,3.3,4.6,3.9,3.5,4.2,4,4.7,3.6,4.4,4.5,4.1,4.5,3.9,4.8,4,4.9,4.7,4.3,4.4,4.8,5,4.5,3.5,3.8,3.7,3.9,5.1,4.5,4.5,4.7,4.4,4.1,4,4.4,4.6,4,3.3,4.2,4.2,4.2,4.3,3,4.1,6,5.1,5.9,5.6,5.8,6.6,4.5,6.3,5.8,6.1,5.1,5.3,5.5,5,5.1,5.3,5.5,6.7,6.9,5,5.7,4.9,6.7,4.9,5.7,6,4.8,4.9,5.6,5.8,6.1,6.4,5.6,5.1,5.6,6.1,5.6,5.5,4.8,5.4,5.6,5.1,5.1,5.9,5.7,5.2,5,5.2,5.4,5.1],[0.2,0.2,0.2,0.2,0.2,0.4,0.3,0.2,0.2,0.1,0.2,0.2,0.1,0.1,0.2,0.4,0.4,0.3,0.3,0.3,0.2,0.4,0.2,0.5,0.2,0.2,0.4,0.2,0.2,0.2,0.2,0.4,0.1,0.2,0.2,0.2,0.2,0.1,0.2,0.2,0.3,0.3,0.2,0.6,0.4,0.3,0.2,0.2,0.2,0.2,1.4,1.5,1.5,1.3,1.5,1.3,1.6,1,1.3,1.4,1,1.5,1,1.4,1.3,1.4,1.5,1,1.5,1.1,1.8,1.3,1.5,1.2,1.3,1.4,1.4,1.7,1.5,1,1.1,1,1.2,1.6,1.5,1.6,1.5,1.3,1.3,1.3,1.2,1.4,1.2,1,1.3,1.2,1.3,1.3,1.1,1.3,2.5,1.9,2.1,1.8,2.2,2.1,1.7,1.8,1.8,2.5,2,1.9,2.1,2,2.4,2.3,1.8,2.2,2.3,1.5,2.3,2,2,1.8,2.1,1.8,1.8,1.8,2.1,1.6,1.9,2,2.2,1.5,1.4,2.3,2.4,1.8,1.8,2.1,2.4,2.3,1.9,2.3,2.5,2.3,1.9,2,2.3,1.8],["setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","versicolor","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica","virginica"]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th> <\/th>\n      <th>Sepal.Length<\/th>\n      <th>Sepal.Width<\/th>\n      <th>Petal.Length<\/th>\n      <th>Petal.Width<\/th>\n      <th>Species<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"columnDefs":[{"className":"dt-right","targets":[1,2,3,4]},{"orderable":false,"targets":0},{"name":" ","targets":0},{"name":"Sepal.Length","targets":1},{"name":"Sepal.Width","targets":2},{"name":"Petal.Length","targets":3},{"name":"Petal.Width","targets":4},{"name":"Species","targets":5}],"order":[],"autoWidth":false,"orderClasses":false}},"evals":[],"jsHooks":[]}</script>
```

```{=html}
<div class="datatables html-widget html-fill-item" id="htmlwidget-7a66c8fcf97fac23ef17" style="width:100%;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-7a66c8fcf97fac23ef17">{"x":{"filter":"none","vertical":false,"data":[["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"],[5.1,4.9,4.7,4.6,5,5.4,4.6,5,4.4,4.9,5.4,4.8,4.8,4.3,5.8,5.7,5.4,5.1,5.7,5.1],[3.5,3,3.2,3.1,3.6,3.9,3.4,3.4,2.9,3.1,3.7,3.4,3,3,4,4.4,3.9,3.5,3.8,3.8],[1.4,1.4,1.3,1.5,1.4,1.7,1.4,1.5,1.4,1.5,1.5,1.6,1.4,1.1,1.2,1.5,1.3,1.4,1.7,1.5],[0.2,0.2,0.2,0.2,0.2,0.4,0.3,0.2,0.2,0.1,0.2,0.2,0.1,0.1,0.2,0.4,0.4,0.3,0.3,0.3],["setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa","setosa"]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th> <\/th>\n      <th>Sepal.Length<\/th>\n      <th>Sepal.Width<\/th>\n      <th>Petal.Length<\/th>\n      <th>Petal.Width<\/th>\n      <th>Species<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"initComplete":"function(settings, json) {\n$(this.api().table().header()).css({\n      'background-color': '#000',\n      'color': '#fff'\n     });\n}","columnDefs":[{"className":"dt-right","targets":[1,2,3,4]},{"orderable":false,"targets":0},{"name":" ","targets":0},{"name":"Sepal.Length","targets":1},{"name":"Sepal.Width","targets":2},{"name":"Petal.Length","targets":3},{"name":"Petal.Width","targets":4},{"name":"Species","targets":5}],"order":[],"autoWidth":false,"orderClasses":false}},"evals":["options.initComplete"],"jsHooks":[]}</script>
```

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> Book Name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Topics </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> [AI for Decision Makers](https://hutchdatascience.org/AI_for_Decision_Makers/) ([github](https://github.com/fhdsl/AI_for_Decision_Makers)) </td>
   <td style="text-align:left;"> This is the series of courses in Fred Hutch DaSL's &quot;&quot;AI for Decision Makers&quot;&quot; specialization on Coursera. </td>
   <td style="text-align:left;"> course, hutch-course </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [AI for Efficient Programming](https://hutchdatascience.org/AI_for_Efficient_Programming/) ([github](https://github.com/fhdsl/AI_for_Efficient_Programming)) </td>
   <td style="text-align:left;"> DaSL's course on AI skills for efficient programming </td>
   <td style="text-align:left;"> artificial-intelligence, chatbot, course, hutch-course, learn-ai, llm, llms, software-learning </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [Adv Reproducibility in Cancer Informatics](https://jhudatascience.org/Adv_Reproducibility_in_Cancer_Informatics) ([github](https://github.com/jhudsl/Adv_Reproducibility_in_Cancer_Informatics)) </td>
   <td style="text-align:left;"> This course the second course in a two part series that discusses reproducibility in the context of cancer informatics. </td>
   <td style="text-align:left;"> python, r, reproducibility, version-control </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [AnVIL: Epigenetics Intro](https://hutchdatascience.org/AnVIL_Book_Epigenetics_Intro/) ([github](https://github.com/fhdsl/AnVIL_Book_Epigenetics_Intro)) </td>
   <td style="text-align:left;"> An introductory activity for epigenetics, or the idea of &quot;&quot;nature versus nurture&quot;&quot; in genetics. Learners use the UCSC Genome Browser. </td>
   <td style="text-align:left;"> anvil, course, epigenetics, human-genomes, module, ucsc-browser </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [AnVIL: Getting Started](https://jhudatascience.org/AnVIL_Book_Getting_Started) ([github](https://github.com/jhudsl/AnVIL_Book_Getting_Started)) </td>
   <td style="text-align:left;"> A guide for getting started using AnVIL </td>
   <td style="text-align:left;"> anvil, cloud-computing </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [AnVIL: Instructor Guide](https://jhudatascience.org/AnVIL_Book_Instructor_Guide) ([github](https://github.com/jhudsl/AnVIL_Book_Instructor_Guide)) </td>
   <td style="text-align:left;"> A guide for instructors using AnVIL for workshops, lessons, or courses. </td>
   <td style="text-align:left;"> anvil, education </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [AnVIL Collection](https://hutchdatascience.org/AnVIL_Collection/) ([github](https://github.com/fhdsl/AnVIL_Collection)) </td>
   <td style="text-align:left;"> 📚 An auto-generating collection of all materials related to the AnVIL and GDSCN projects </td>
   <td style="text-align:left;"> content-library, website </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [AnVIL Data Subsetting](https://hutchdatascience.org/AnVIL_Data_Subsetting/) ([github](https://github.com/fhdsl/AnVIL_Data_Subsetting)) </td>
   <td style="text-align:left;"> Tutorial for running the fastq_subsample WDL workflow on AnVIL! </td>
   <td style="text-align:left;"> anvil, genomics, wdl, wdl-workflow, workflow </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [AnVIL Demos](https://hutchdatascience.org/AnVIL_Demos/) ([github](https://github.com/fhdsl/AnVIL_Demos)) </td>
   <td style="text-align:left;"> ⏱ 30-minute demos and tutorials from our live AnVIL series </td>
   <td style="text-align:left;"> anvil, cloud, cloud-computing, genomics, research </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [AnVIL Phylogenetic-Techniques](https://jhudatascience.org/AnVIL_Phylogenetic-Techniques/) ([github](https://github.com/jhudsl/AnVIL_Phylogenetic-Techniques)) </td>
   <td style="text-align:left;"> A semester-long course on the basics of molecular phylogenetic techniques </td>
   <td style="text-align:left;"> anvil, r-programming </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [AnVIL SRA Data](https://hutchdatascience.org/AnVIL_SRA_Data/) ([github](https://github.com/fhdsl/AnVIL_SRA_Data)) </td>
   <td style="text-align:left;"> Pull Sequence Read Archive (SRA) data into AnVIL </td>
   <td style="text-align:left;"> anvil, genomics, ncbi-database, sequence-read-archive </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [AnVIL Template](https://jhudatascience.org/AnVIL_Template/) ([github](https://github.com/jhudsl/AnVIL_Template)) </td>
   <td style="text-align:left;"> An OTTR spinoff template for creating AnVIL content </td>
   <td style="text-align:left;"> anvil, template </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [AnVIL Urban Genomics PCA](https://hutchdatascience.org/AnVIL_Urban_Genomics_PCA/) ([github](https://github.com/fhdsl/AnVIL_Urban_Genomics_PCA)) </td>
   <td style="text-align:left;"> Lab module and lectures for exploring PCA using feral pigeon populations </td>
   <td style="text-align:left;"> anvil, genomics, pca, urban-data-science </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [AnVIL WDLs](https://github.com/fhdsl/AnVIL_WDLs/tree/main) ([github](https://github.com/fhdsl/AnVIL_WDLs)) </td>
   <td style="text-align:left;"> Raw WDL workflow files for use on AnVIL and other platforms </td>
   <td style="text-align:left;"> anvil, genomics, wdl, workflows </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [Baltimore Community Course](https://jhudatascience.org/Baltimore_Community_Course) ([github](https://github.com/jhudsl/Baltimore_Community_Course)) </td>
   <td style="text-align:left;"> Baltimore Community Data Science Course at JHSPH through partnership with SOURCE </td>
   <td style="text-align:left;"> community-outreach, course, data-science </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [Choosing Genomics Tools](http://hutchdatascience.org/Choosing_Genomics_Tools/) ([github](https://github.com/fhdsl/Choosing_Genomics_Tools)) </td>
   <td style="text-align:left;"> A course to help learners find resources and tools to help them process and interpret their genomic data </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [Computing for Cancer Informatics](https://jhudatascience.org/Computing_for_Cancer_Informatics) ([github](https://github.com/jhudsl/Computing_for_Cancer_Informatics)) </td>
   <td style="text-align:left;"> The course covers the key underlying principles and concepts in computing. It covers concrete discussions of the differences between cloud and local computing. The course highlights a number of computing options and etiquette for using shared resources. </td>
   <td style="text-align:left;"> computing, informatics </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [DaSL Collection](https://hutchdatascience.org/DaSL_Collection) ([github](https://github.com/fhdsl/DaSL_Collection)) </td>
   <td style="text-align:left;"> 📚 An auto-generating library of all Data Science Lab Github-based content </td>
   <td style="text-align:left;"> content-library, website </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [Data-Wrangling](https://hutchdatascience.org/Data-Wrangling/) ([github](https://github.com/fhdsl/Data-Wrangling)) </td>
   <td style="text-align:left;"> UW Summer Institute in Statistics: Data Wrangling in R </td>
   <td style="text-align:left;"> data-science, data-wrangling, r-programming, r-stats, tidyverse </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [DataTrail: 12 package](https://datatrail-jhu.github.io/12_package/) ([github](https://github.com/datatrail-jhu/12_package)) </td>
   <td style="text-align:left;"> How to Create an R package Course </td>
   <td style="text-align:left;"> data-science, package-development, r-package </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [DataTrail: DataTrail](https://datatrail-jhu.github.io/DataTrail/) ([github](https://github.com/datatrail-jhu/DataTrail)) </td>
   <td style="text-align:left;"> The re-organized DataTrail curriculum https://www.datatrail.org/ </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [DataTrail: DataTrail Guides](https://datatrail-jhu.github.io/DataTrail_Guides/) ([github](https://github.com/datatrail-jhu/DataTrail_Guides)) </td>
   <td style="text-align:left;"> Guides for how to launch a DataTrail program </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [DataTrail: rgoogleclassroom](https://datatrail-jhu.github.io/rgoogleclassroom/) ([github](https://github.com/datatrail-jhu/rgoogleclassroom)) </td>
   <td style="text-align:left;"> API wrapper for Google Classroom and a bit of Google Forms API too </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [DataTrail: scn](http://swirlstats.com/scn/) ([github](https://github.com/datatrail-jhu/scn)) </td>
   <td style="text-align:left;"> :school_satchel: The swirl Course Network - A Repository for swirl Courses </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [Documentation and Usability](https://jhudatascience.org/Documentation_and_Usability/) ([github](https://github.com/jhudsl/Documentation_and_Usability)) </td>
   <td style="text-align:left;"> A course to cover the basics of creating documentation and tutorials to maximize the usability of informatics tools </td>
   <td style="text-align:left;"> documentation, software-development </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [Ethical Data Handling for Cancer Research](https://hutchdatascience.org/Ethical_Data_Handling_for_Cancer_Research/) ([github](https://github.com/fhdsl/Ethical_Data_Handling_for_Cancer_Research)) </td>
   <td style="text-align:left;"> This course is designed to help researchers and investigators understand the key principles of data management from an ethics, privacy, security, usability and discoverability perspective. </td>
   <td style="text-align:left;"> data, ethics, privacy, research, security </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [FH Cluster201](https://hutchdatascience.org/FH_Cluster201/) ([github](https://github.com/fhdsl/FH_Cluster201)) </td>
   <td style="text-align:left;"> An emerging course for effective use of FH Computing. </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [FH Cluster 101](https://leanpub.com/courses/fredhutch/fredhutchcluster101) ([github](https://github.com/fhdsl/FH_Cluster_101)) </td>
   <td style="text-align:left;"> This course introduces users to the Fred Hutch Cluster. It will lead users through account creation, using the terminal, connecting to the cluster, submitting jobs, and transferring files. Available in both web and Leanpub formats. </td>
   <td style="text-align:left;"> command-line, computing-cluster, course, hpcc, hutch-course </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [FH WDL101 Cromwell](https://hutchdatascience.org/FH_WDL101_Cromwell/) ([github](https://github.com/fhdsl/FH_WDL101_Cromwell)) </td>
   <td style="text-align:left;"> An introduction to using Cromwell and WDL at the Fred Hutch </td>
   <td style="text-align:left;"> course, fredhutch, hutch-course, wdl </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [FH WDL102 Workflows](https://hutchdatascience.org/FH_WDL102_Workflows/) ([github](https://github.com/fhdsl/FH_WDL102_Workflows)) </td>
   <td style="text-align:left;"> Info about designing, optimizing and deploying your own WDL workflows </td>
   <td style="text-align:left;"> course, fredhutch, openwdl, wdl, workflows </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [FH letterhead](https://github.com/fhdsl/FH_letterhead) ([github](https://github.com/fhdsl/FH_letterhead)) </td>
   <td style="text-align:left;"> A LaTeX template for Fred Hutch letterhead </td>
   <td style="text-align:left;"> latex, letterhead, template </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [GDSCN: SARS Galaxy on AnVIL](https://jhudatascience.org/GDSCN_Book_SARS_Galaxy_on_AnVIL/) ([github](https://github.com/jhudsl/GDSCN_Book_SARS_Galaxy_on_AnVIL)) </td>
   <td style="text-align:left;"> Lab module and lectures for variant detection in SARS-CoV-2 using Galaxy </td>
   <td style="text-align:left;"> anvil, gdscn, genomics, module, sars-cov-2, variant-detection </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [GDSCN: Statistics for Genomics Differential Expression](https://jhudatascience.org/GDSCN_Book_Statistics_for_Genomics_Differential_Expression/) ([github](https://github.com/jhudsl/GDSCN_Book_Statistics_for_Genomics_Differential_Expression)) </td>
   <td style="text-align:left;"> A set of lab modules for an introduction to differential gene expression </td>
   <td style="text-align:left;"> anvil, cloud-computing, gdscn, gene-expression </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [GDSCN: Statistics for Genomics PCA](https://jhudatascience.org/GDSCN_Book_Statistics_for_Genomics_PCA/) ([github](https://github.com/jhudsl/GDSCN_Book_Statistics_for_Genomics_PCA)) </td>
   <td style="text-align:left;"> A set of lab modules for PCA analysis </td>
   <td style="text-align:left;"> anvil, gdscn, genomics </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [GDSCN: Statistics for Genomics RNA-seq](https://jhudatascience.org/GDSCN_Book_Statistics_for_Genomics_RNA-seq/) ([github](https://github.com/jhudsl/GDSCN_Book_Statistics_for_Genomics_RNA-seq)) </td>
   <td style="text-align:left;"> [WORK IN PROGRESS] A set of lab modules for RNA-seq analysis </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [GDSCN: Statistics for Genomics scRNA-seq](http://jhudatascience.org/GDSCN_Book_Statistics_for_Genomics_scRNA-seq/) ([github](https://github.com/jhudsl/GDSCN_Book_Statistics_for_Genomics_scRNA-seq)) </td>
   <td style="text-align:left;"> A set of lab modules for single cell RNA-seq analysis </td>
   <td style="text-align:left;"> anvil, gdscn, rna-seq, scrna-seq </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [GDSCN: swirl](https://jhudatascience.org/GDSCN_Book_swirl/) ([github](https://github.com/jhudsl/GDSCN_Book_swirl)) </td>
   <td style="text-align:left;"> Lab exercise: learn basic R programming through interactive swirl lessons </td>
   <td style="text-align:left;"> gdscn, swirl </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [GDSCN SARS RStudio on AnVIL](https://hutchdatascience.org/GDSCN_SARS_RStudio_on_AnVIL/) ([github](https://github.com/fhdsl/GDSCN_SARS_RStudio_on_AnVIL)) </td>
   <td style="text-align:left;"> Lab module and lectures for identifying phylogenetic history of SARS variants using R </td>
   <td style="text-align:left;"> anvil, gdscn, phylogenetic-analysis, sars-cov-2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [GitHub Automation for Scientists](http://hutchdatascience.org/GitHub_Automation_for_Scientists/) ([github](https://github.com/fhdsl/GitHub_Automation_for_Scientists)) </td>
   <td style="text-align:left;"> A course that introduces Github actions to developers of scientific worklflows and software </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [Informatics Research Leadership](https://jhudatascience.org/Informatics_Research_Leadership/) ([github](https://github.com/jhudsl/Informatics_Research_Leadership)) </td>
   <td style="text-align:left;"> Guidance on supporting multidisciplinary teams in cancer informatics. </td>
   <td style="text-align:left;"> diversity, informatics, leadership </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [NIH Data Sharing](https://hutchdatascience.org/NIH_Data_Sharing/) ([github](https://github.com/fhdsl/NIH_Data_Sharing)) </td>
   <td style="text-align:left;"> Learn about the new NIH data sharing policy, places where you might want to share your particular kind of data, and how to deal with possible challenges associated with the policy. </td>
   <td style="text-align:left;"> data-management, data-sharing, grant-proposals, hutch-course, nih </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [OTTR Template](https://www.ottrproject.org/) ([github](https://github.com/jhudsl/OTTR_Template)) </td>
   <td style="text-align:left;"> OTTR: Open-source Tools for Training Resources. This is template repository for creating online courses to be published on multiple platforms. See here: https://jhudatascience.org/OTTR_Template/ for a rendered version. </td>
   <td style="text-align:left;"> edtech-software, education, online-learning, open-source </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [OTTR Template Website](https://jhudatascience.org/OTTR_Template_Website/) ([github](https://github.com/jhudsl/OTTR_Template_Website)) </td>
   <td style="text-align:left;"> Template to create websites with checks for broken urls and spelling, as well as automated rendering. This is an offshoot of the OTTR_Template (https://github.com/jhudsl/OTTR_Template). </td>
   <td style="text-align:left;"> edtech-software </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [Overleaf and LaTeX for Scientific Articles](https://hutchdatascience.org/Overleaf_and_LaTeX_for_Scientific_Articles/) ([github](https://github.com/fhdsl/Overleaf_and_LaTeX_for_Scientific_Articles)) </td>
   <td style="text-align:left;"> The course covers basic information about why LaTeX can be useful, how to get started in Overleaf using LaTeX with a template, how to work with a team on Overleaf, and what to do when you encounter problems. </td>
   <td style="text-align:left;"> latex, overleaf, scientific-publications </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [Reproducibility in Cancer Informatics](https://jhudatascience.org/Reproducibility_in_Cancer_Informatics/) ([github](https://github.com/jhudsl/Reproducibility_in_Cancer_Informatics)) </td>
   <td style="text-align:left;"> This course discusses reproducibility and replicability in the context of cancer informatics. </td>
   <td style="text-align:left;"> data-science, informatics, python, r, reproducibility </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [SeattleStatSummer R](https://hutchdatascience.org/SeattleStatSummer_R/) ([github](https://github.com/fhdsl/SeattleStatSummer_R)) </td>
   <td style="text-align:left;"> A 4-day introduction to R programming, focused on Fred Hutch Research Interns </td>
   <td style="text-align:left;"> beginner, beginner-friendly, data-analysis, data-science, introduction-to-programming, r-programming, tidyverse </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [Using Leanpub](https://hutchdatascience.org/Using_Leanpub/) ([github](https://github.com/fhdsl/Using_Leanpub)) </td>
   <td style="text-align:left;"> A gentle introduction to Leanpub </td>
   <td style="text-align:left;"> course, education, leanpub </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [ari](https://jhudatascience.org/ari/) ([github](https://github.com/jhudsl/ari)) </td>
   <td style="text-align:left;"> :dancers: The Automated R Instructor </td>
   <td style="text-align:left;"> edtech-software </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [code review](https://hutchdatascience.org/code_review/) ([github](https://github.com/fhdsl/code_review)) </td>
   <td style="text-align:left;"> A repository with tips about code review and implementing it in a lab </td>
   <td style="text-align:left;"> codereview, fhdasl, hutch-course, training </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [conrad](http://hutchdatascience.org/conrad/) ([github](https://github.com/fhdsl/conrad)) </td>
   <td style="text-align:left;"> Client for the Microsoft Cognitive Services Text to Speech REST API (reboot of the mscstts package) </td>
   <td style="text-align:left;"> azure, r, text-to-speech, tts </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [dasl-snack-github](http://hutchdatascience.org/dasl-snack-github/) ([github](https://github.com/fhdsl/dasl-snack-github)) </td>
   <td style="text-align:left;"> A DaSL training &quot;&quot;snack&quot;&quot; covering the benefits and basics of using Git and GitHub to support your biomedical data science work. </td>
   <td style="text-align:left;"> hutch-course </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [intro to r](https://jhudatascience.org/intro_to_r/) ([github](https://github.com/jhudsl/intro_to_r)) </td>
   <td style="text-align:left;"> A 2-week introduction to R programming course, with a focus on public health datasets </td>
   <td style="text-align:left;"> beginner, beginner-friendly, beginner-programming, course, public-health, r-programming, tidyverse </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [itn-metric](http://hutchdatascience.org/itn-metric/) ([github](https://github.com/fhdsl/itn-metric)) </td>
   <td style="text-align:left;"> Analyze ITCR metrics using {metricminer} </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [jhudsl.github.io](https://jhudatascience.org) ([github](https://github.com/jhudsl/jhudsl.github.io)) </td>
   <td style="text-align:left;"> source code for the JHU Data Science Lab website </td>
   <td style="text-align:left;"> website </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [metricminer](https://hutchdatascience.org/metricminer/) ([github](https://github.com/fhdsl/metricminer)) </td>
   <td style="text-align:left;"> R package that digs up data that matters from APIs, making it dashboard-ready </td>
   <td style="text-align:left;"> edtech-software </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [metricminer.org](http://www.metricminer.org/) ([github](https://github.com/fhdsl/metricminer.org)) </td>
   <td style="text-align:left;"> A website for metricminer </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [ottrpal](https://jhudatascience.org/ottrpal/) ([github](https://github.com/jhudsl/ottrpal)) </td>
   <td style="text-align:left;"> Tools for converting OTTR courses into Leanpub or Coursera courses :otter: </td>
   <td style="text-align:left;"> edtech-software </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [ottrproject.org](https://www.ottrproject.org/) ([github](https://github.com/jhudsl/ottrproject.org)) </td>
   <td style="text-align:left;"> This repo publishes ottrproject.org </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [personas](http://hutchdatascience.org/personas) ([github](https://github.com/fhdsl/personas)) </td>
   <td style="text-align:left;"> Where RDI curates the DaSL Data Science Personas </td>
   <td style="text-align:left;"> data-science, personas, training </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [text2speech](http://jhudatascience.org/text2speech/) ([github](https://github.com/jhudsl/text2speech)) </td>
   <td style="text-align:left;"> Text to Speech </td>
   <td style="text-align:left;"> edtech-software, speech-synthesis, text-to-speech, tts, voice </td>
  </tr>
  <tr>
   <td style="text-align:left;"> [tidyversecourse](http://jhudatascience.org/tidyversecourse/) ([github](https://github.com/jhudsl/tidyversecourse)) </td>
   <td style="text-align:left;"> Tidyverse Skills for Data Science in R </td>
   <td style="text-align:left;"> r, tidyverse </td>
  </tr>
</tbody>
</table>

```
## R version 4.3.2 (2023-10-31)
## Platform: x86_64-pc-linux-gnu (64-bit)
## Running under: Ubuntu 22.04.3 LTS
## 
## Matrix products: default
## BLAS:   /usr/lib/x86_64-linux-gnu/openblas-pthread/libblas.so.3 
## LAPACK: /usr/lib/x86_64-linux-gnu/openblas-pthread/libopenblasp-r0.3.20.so;  LAPACK version 3.10.0
## 
## locale:
##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
## 
## time zone: Etc/UTC
## tzcode source: system (glibc)
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] stringr_1.5.1 dplyr_1.1.4   DT_0.31.4    
## 
## loaded via a namespace (and not attached):
##  [1] bit_4.0.5         jsonlite_1.8.8    highr_0.10        crayon_1.5.2     
##  [5] compiler_4.3.2    tidyselect_1.2.0  parallel_4.3.2    jquerylib_0.1.4  
##  [9] yaml_2.3.8        fastmap_1.1.1     readr_2.1.5       R6_2.5.1         
## [13] generics_0.1.3    knitr_1.45.10     htmlwidgets_1.6.4 tibble_3.2.1     
## [17] bookdown_0.37.1   bslib_0.6.1       pillar_1.9.0      tzdb_0.4.0       
## [21] rlang_1.1.3       utf8_1.2.4        cachem_1.0.8      stringi_1.8.3    
## [25] xfun_0.41.7       sass_0.4.8        bit64_4.0.5       cli_3.6.2        
## [29] withr_3.0.0       magrittr_2.0.3    crosstalk_1.2.1   digest_0.6.34    
## [33] vroom_1.6.5       hms_1.1.3         lifecycle_1.0.4   vctrs_0.6.5      
## [37] evaluate_0.23     glue_1.7.0        fansi_1.0.6       rmarkdown_2.25.3 
## [41] tools_4.3.2       pkgconfig_2.0.3   ellipsis_0.3.2    htmltools_0.5.7
```

<br><br><br>
This page was last updated on 2024-01-31 04:02:40.524687

