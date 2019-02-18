---
date: 2016-01-20
title: "Performance and Scalability often get confused"
tags:
- architecture
---
During some recent (geek) conversations, I noted how easy it was to confuse the term "performance" with "scalability".  In the technology world, it's important to know the difference, because they are not the same.

Simply put, performance is what an individual user experiences and scalability is how many users get to experience it.

Performance relates to the experience a single visitor or user has on your website, for example.  A single request might include some data access, a web page, and some images that need to be delivered to your browser.  The time that it takes to complete this delivery and to render the page limits overall performance and affects response time.  After all, response time is the most important performance measurement for web apps.

Scalability relates to the number of visitors who have a good experience on your website.  As your visitors increase in volume, if the web app can consistently perform, it is scaling.  

For example, if the average response time of a web page is 1 second with 10 concurrent visitors, but the average response time grows to 3 seconds with 50 concurrent visitors, then the web app is not scaling.  A web app may perform well up to 50 concurrent visitors, and then degrade as as the number of visitors increases.  This is an indication that the web app does not scale beyond 50 concurrent visitors.

While these terms are easily confused, I hope that helps to clear the air on the differences between performance and scalability.