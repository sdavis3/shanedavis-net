---
date: 2016-12-14
title: "Using Microsoft Flow to Monitor Failed Builds in VSTS"
tags:
- devops
- vsts
---
[Microsoft Flow](http://flow.microsoft.com) is a wonderful productivity tool growing in popularity. It's very similar to IFTTT, but not (yet) quite as polished. If you're familiar with IFTTT's recipe concept, then you already understand 80% of Microsoft Flow. Nevertheless, there are some great productivity improvements gained from using Flow by connecting it to services you are already using. 

In this post, I'll create a Flow to send a push notification for a failed build in Visual Studio Team Services (VSTS). This is useful for when the build breaks and you're not at your desktop to notice.

NOTE: This post does not go into detail about how to sign up (free) for [Microsoft Flow](http://flow.microsoft.com), nor is it an introduction to all the capabilities of the product. You can find a comprehensive guided learning path [here](https://flow.microsoft.com/en-us/guided-learning/). It also assumes you have already installed the Microsoft Flow app from your respective mobile app store. If you have not already done so, this would be the time to install the mobile app as the Flow we are creating will send a push notification when it's run.

After you login, and assuming you don't yet have any existing flows, you'll be greeted with the following screen:

![flow1.png](/images/flow1.png)
<br><br>
Click the "Create from blank" button and you'll be presented with the a search field. Type in "Visual Studio Team Services" and a short list of available triggers will be displayed. Select the first item "Visual Studio Team Services - When a build completes". 

![flow2.png](/images/flow2.png)
<br><br>
If you haven't previously configured a connection to VSTS, you'll be asked to authenticate at this point.

![flow3.png](/images/flow3.png)
<br><br>
Once you've been authenticated, you'll need to select the Account name (the part that comes before the .visualstudio.com in your tenant). Then, select the specific "Project name" that contains the builds you want to track. In the "Filter by result" field, select "failed" since we want to be alerted of any failed builds.

![flow4.png](/images/flow4.png)
<br><br>
Now that the first step is complete, it's time to add the second and final step. Click the "New step" button and then select "Add an action".

![flow5.png](/images/flow5.png)
<br><br>
Since we want a push alert, type "Push" into the search box and then select "Push notification - Send a push notification" from the list of options presented.

![flow6.png](/images/flow6.png)
<br><br>
Next, we'll fill in the details of what we want the push notification to contain. In the "Text" field type in the text you will see in the notification. I've entered "Team 1: Failed Build ". Note the extra space at the end. Then, from the dynamic content panel to the right, select the "Build number" field. The field will be appendee to the "Text" you entered and should be similar to the screenshot below. Then clock on the "Link" field and select "HTML link" from the panel on the right. Finally, in the "Link label" field, enter a name for the label that will take you to the HTML link in the previous field. I typically enter "Link" in this field.

This is where I remind you to give the Flow a name. At the top of the page is a field "Flow name". It's easy to forget this field when you're initially creating your flow as your eyes aren't naturally drawn to the top of the screen. In this instance, I have entered "VSTS Team 1 Failed Build". Then, click the "Create flow" button.

![flow7.png](/images/flow7.png)
<br><br>
If you've done all the previous steps correctly, you'll receive the following message:

![flow8.png](/images/flow8.png)
<br><br>
Now, the next time a build fails for your configured project, you'll receive a push alert on your device. Happy Flow-ing!