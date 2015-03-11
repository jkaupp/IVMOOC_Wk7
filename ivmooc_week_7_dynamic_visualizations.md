Oh my god it's full of stars: IVMOOC Week 7 Dynamic Visualizations
===

So the past few weeks have been busy. Boston for training, then the unfortunate 24-hour trip home, punctuated by spurts of good and bad fortune. Landed right back into the thick of things, with project work, papers and other deadlines always looming.

Cue the #IVMOOC final.

I was upset about the scheduling issues with the midterm, so I made sure I double checked when the final was due. Then after reading tweets about the final (and being less than impressed), I took my shot at it. As a professor and an educational researcher, I'm well aware of the limitations of a MOOC. Fair and prompt assessment is incredibly difficult for classes of that size. So assessments tend to lead to those that are easily and quickly marked, and thats fine.

Whats not fine, even in a free MOOC, is questions of considerable ambiguity and being asked questions about the data that can't be answered by the sample data provided. It raises serious concerns about the validity, reliability and general purpose of your assessment. I'm unsure if this gets read by the people planning the course, and I typically don't attend the 'office hours' hangout, since I'm otherwise occupied (Dad). But in some way I hope it does, simply to improve the conditions by which the course is offered. I'm also uncertain if this version parallels the 'paid for' and 'in class' course, but if I was paying for this or was a tuition-paying student, I'd be quite upset.

I got a 70%, which is fine with me for the amount of time I devoted to it. I completely botched 5-7 questions, and gave up on the strong/weak components of networks because I still haven't figured it out (and tried in vain during the self assessment). I still can't believe the massive punting I did on the DPI/resolution questions (DPI*Inches = Resoultion). Derp.

I hope for change in the future versions of this course. Hopefully, some visualizations resulting from content analysis of tweets and forums will provide more unified evidence for change.

I've said my piece. Moving on.

I found the Dynamic Visualization chapter in the book a little dry, but informative. I did learn some great things about deployment of visualizations, but wanted to know more about web-based deployments and techniques rather than installations and static pieces.

I've used Seadragon before, so I was pretty up to speed on how to make a static image of a network available to pan, zoom and explore. Instread, I took the time to figure out how to use R packages igraph, networkD3 and shiny to make a dynamic depiction of the Carl Wieman Co-occurence Network I made for week 6.

In the current state of these packages, and due to my own limited knowledge of javascript, I can only provide the base interactivity of d3.js. What I would like to do is be able to highlight the labels of the groups (by grant title), drawing focus to that part of the network and dimming the rest.  The particulars of each grant would be displayed in a table below using a ShinyTable.  I'd also like to be able to implement zooming.  This is what I'm going to be doing as future work, building on this example to make myself more familiar and learn the available tools.

Below is my submission for week 7. I'm still figuring out how to display or make a legend.  So in the meantime, the colors of the nodes indicate the groupings of authors that worked together on a specific NSF award and the width of the links is indicative of the number of co-authored awards.

Next up, the comic book project!
