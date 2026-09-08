https://www.youtube.com/watch?v=fUVoV8LpwTE








Next.js 16 + AI Agents: Building a SaaS MVP in 21 Hours | Part 1/2
FullStack SaaS Architect
FullStack SaaS Architect
891 subscribers

Subscribe

206


Share

Ask

Save

4,227 views  10 Jul 2026  #Nextjs #AI #SaaS
See how an AI app builder creates functional software from a single sentence prompt. Watch live as an agent generates real files.

If you want to speed up your workflow, this AI coding agent demonstrates how to move from an idea to a live preview without writing manual code. We explore the capability of modern AI programming tools to construct apps that are ready for publishing, rather than just generating static mock-ups or templates.

This demonstration is for developers and creators curious about the current limits of automated software development. By using a simple prompt, the system handles the heavy lifting, proving that no code app development is evolving rapidly. Whether you are building prototypes or testing concepts, seeing how to build apps with AI can significantly change your production speed.

Subscribe for weekly AI tool breakdowns, and comment below if you want to see a specific app idea tested next.

🚀 Get the source code: https://github.com/aalleejustadev/Rep...
👾 Join my discord community at:   / discord  

Timestamps:-
0:00:00 - Intro
0:02:57 - App Tour
0:30:30 - Scaffold
0:32:10 - Design tokens
0:40:49 - Shared UI helpers
0:47:40 - Button + Container primitives
1:07:10 - Input, Textarea, Badge
1:22:30 - Toast provider + root layout
1:44:00 - Replit logo + chevron icon
1:49:28 - Types + Navbar shell
2:56:40 - Footer shell
3:10:40 - Hero section
3:39:17 - Hero prompt area
4:23:35 - Category carousel
5:03:35 - Agent bento section
5:48:00 - Platform section
6:39:35 - Testimonials section
7:40:00 - Pricing section
8:20:00 - CTA section
8:23:38 - /app route shell
8:43:25 - App shell + sidebar
9:32:00 - App home prompt shell

✅ What I focus on:
Next.js 16 (App Router) & React 19
TypeScript & Server Actions
Tailwind CSS v4 & Modern UI/UX | Shadcn
Advanced AI Agents & LLM Integration
Database Architecture (Prisma, Neon, PostgreSQL)

💡 Support my channel as it takes a lot of effort, sweat and time to build projects.
👍 Like this video if it helped you
🔔 Subscribe and turn on notifications to never miss a build.
💬 Drop a comment below if you have any questions or build requests.

🔗 Connect with me:
🚀 LinkedIn:   / iamalimurtaza  
📸 Instagram:   / fullstack_saas_architect  
📱 TikTok:   / fullstack_saas_architect  
👥 Facebook:    / aalleejustadev  
💻 GitHub https://github.com/aalleejustadev
👾 Discord:   / discord  

Music: Cinema by Alex-Productions   / alexproductionsmusic  
License: Creative Commons — Attribution 3.0 Unported — CC BY 3.0
Free Download / Stream: https://audiolibrary.com.co/alex-prod...
Music promoted by Audio Library:    • Top Free Background Music This Week #35 🎵 ...  

#Nextjs #SaaS #Fullstack #WebDevelopment #AI #TypeScript #CodingMasterclass
Ask
Get answers, explore topics and more




---------------------------------------------------------------------------------------------------

In this video


Chapters

Transcript
Search transcript
Search transcript

Chapter 1: Intro
0:055 secondsWhat if you could describe an entire app in one sentence and watch an agent build it in front of you? Not a mockup, not a
0:1414 secondstemplate, real files, a live preview, something you could actually publish.
0:2222 secondsYou have tried the fragmented way. a landing page here or somewhere else.
0:2727 secondsBilling bolted on the last. What if the whole loop lived in one workspace?
0:3535 secondsPrompt, edit, preview, publish.
0:3939 secondsImagine signing in once. Your idea becomes a project. The agent writes the
0:4545 secondscode. The I frame updates. You stay in flow.
0:5151 secondsAnd when it's ready, you publish a real URL. Anyone can open it. No login required.
0:5959 secondsWhat would it feel like to own that entire stack from marketing page to
1:061 minute, 6 secondsStripe subscriptions in one codebase you control?
1:141 minute, 14 secondsThat's the idea behind a full AI builder built end to end. This is the rapid
1:201 minute, 20 secondsclone, a rapid style AI builder for developers who want to describe apps in
1:271 minute, 27 secondsnatural language, workspaces, projects, a live agent editor, preview, and publish all in one product.
1:381 minute, 38 secondsUnder the hood, Replet Clone uses Nex.js JS 16, React 19 and TypeScript. Tailwind
1:451 minute, 45 secondsCSS version 4 for styling. Prisma 7 on Neon Postgress SQL. Better o for oath
1:541 minute, 54 secondsand protected routes. The anthropic SDK drives the agent. Stripe gates free and pro tiers. Zod validates server actions.
2:052 minutes, 5 secondsES build bundles user code into the live preview iframe. That's not a tutorial
2:122 minutes, 12 secondsstack. That's what chips. I have spent 10 years shipping SAS for clients. This
2:182 minutes, 18 secondsbuild uses the same architecture I rely on when O billing and deploy have to work on day one.
2:292 minutes, 29 secondsNote demo apps that never leave local host. By the end, you'll have a marketing landing page, O sign in, a
2:392 minutes, 39 secondsfull editor with streaming AI, sandboxed preview, published to a public URL, and
2:452 minutes, 45 secondsserver side entitlements deployed to Versel from fresh install.
2:532 minutes, 53 secondsLet me show you every piece live.
Chapter 2: App Tour
2:572 minutes, 57 secondsLet me give you a walk through of the Replet clone that we're going to build in this release. This is the exact copy of the replet website that you're going
3:053 minutes, 5 secondsto build. If you can by the way open the replet original website on the another tab and you can compare the both and you
3:153 minutes, 15 secondswill not find any major differences between the both. I've
3:213 minutes, 21 secondstried my best to make it as clone as possible. So here we have this hero image I mean hero section where we have
3:303 minutes, 30 secondsthis heading text and the main part of the landing page this text area. So we
3:393 minutes, 39 secondscan activate plan mode. We can disable that. We can make sure that we are working on the website or mobile or
3:463 minutes, 46 secondsdesign or slides or animation. And of course we have a bunch of other options as well. And of course, we can select
3:553 minutes, 55 secondssomething from the pre-existing example prompts. Like here, you can always request new and you can go for that.
4:034 minutes, 3 secondsThat's going to change everything from here to something like that.
4:084 minutes, 8 secondsAnd then of course you can always pick attach one from the computer. So I'm going to choose from computer. I'm going
4:154 minutes, 15 secondsto go to my desktop replet and sample.txt.
4:204 minutes, 20 secondsIt's just a sample file for the YouTube demo. There's nothing else in it. If you open that that's attached and you add one file. There you go. You have your
4:294 minutes, 29 secondsattachments there as well. And of course, when you write something, you get to see this start button that's gets enabled. And there's one more magic
4:384 minutes, 38 secondsthing that let me show you. So, we have this audio the vibe coding option here
4:454 minutes, 45 secondsas well. So, I'm going to click on that and go from there.
4:514 minutes, 51 secondsI'm going to allow while visiting the site.
4:544 minutes, 54 secondsHelp me build a wedding planning agency website.
4:594 minutes, 59 secondsThere you go. So, whatever you write that's going to whatever you say that's going to write accordingly perfectly.
5:055 minutes, 5 secondsIt's going to follow whatever you're going to say. And of course, you can click on the start button, but it's going to require for you to log in or
5:155 minutes, 15 secondssign up first. You have this nice looking. Well, there are a few things that I have improved and I think that
5:235 minutes, 23 secondsthey are I believe actually that that they are better than what Replet has.
5:295 minutes, 29 secondsFor example, this model box for the line for this login and sign up functionality for the sign up you have this continue
5:385 minutes, 38 secondswith login and continue with GitHub as well. these fields. So you have these three options credentials or GitHub or
5:455 minutes, 45 secondsGoogle and the model is designed perfectly but I don't like the one that original website has it now so that's
5:535 minutes, 53 secondswhy I improved it. Then we have the login of course both on the same model and everything changes depending on what
6:006 minutestype you are in. I'm going to close this for now and I'm going to scroll down there. get to see this whole and it pauses when you hover and it scrolls.
6:106 minutes, 10 secondsThen you have this meet agent 4 the exactly the same section as on the replet site. Of course, there are some
6:186 minutes, 18 secondsanimations and I did not put those animations there because that's going to
6:256 minutes, 25 secondsincrease the length of the project a lot more than what it what it already is. So there you go. And then after that we
6:336 minutes, 33 secondshave this four column section. I'm going to keep moving. I tried my best to
6:406 minutes, 40 secondsreplicate the exact design, UI, and functionality from the Replet for this slider. So next testimonial. There you
6:496 minutes, 49 secondsgo. This is everything has been taken from the Replate original website. And
6:566 minutes, 56 secondsthen after that here we have this pricing table where we have starter core pro and enterprise. Of course we have
7:057 minutes, 5 secondsyearly and monthly switcher as well. And if I keep going there you have our CDS
7:127 minutes, 12 secondssection and finally the footer. Now let me just make sure that it is responsive.
7:207 minutes, 20 secondsLet me show you that. So, here we are on the let's say iPhone 14 Pro Max. I'm going to click refresh. There you go.
7:307 minutes, 30 secondsAnd everything has been adjusted. Now, this is slidable. The arrows are gone from here. And if I click on this one,
7:397 minutes, 39 secondsthere you go. The first item is already opened. I made it that way. And then rest of the items can be opened, of
7:477 minutes, 47 secondscourse. And everything is completely scrollable. And you have the sticky buttons on the bottom when the menu is open. There you go.
7:587 minutes, 58 secondsLet's keep going. There you go. Everything looks nice.
8:038 minutes, 3 secondsI'm going to keep scrolling. And there you go. This has been changed to a slider there. This was a four column grid on desktop.
8:138 minutes, 13 secondsAnd this also has been changed to the single column slider. This was a completely custom layout on the desktop.
8:218 minutes, 21 secondsAnd there you go.
8:238 minutes, 23 secondsThis is not a slider. This has been changed to one column uh stack
8:308 minutes, 30 secondslayout. So every column is stacking on top of each other. And then
8:378 minutes, 37 secondsthere you go. That's our footer. So I'm going to close this one here. Bring it
8:428 minutes, 42 secondsdown. And now let me do the login. I'm going to continue with Google.
8:518 minutes, 51 secondsAnd we are loading. And there you go. It's taking us to the app page now.
9:009 minutesThere you go. So we have this dashboard which is completely restricted and only available. And by the way if you notice
9:099 minutes, 9 secondsone thing that we did write this on the landing page but when we logged in it
9:169 minutes, 16 secondsdid preserve that and it gave us that back on the app page. So that's another thing that we are implementing in here
9:249 minutes, 24 secondsand everything else is same here except in the dark mode we have this add attachments plan mode uh I mean the mic
9:349 minutes, 34 secondsthe voice controls these already predefined prompts and everything and then here is the magic I'm going to show
9:439 minutes, 43 secondsyou the projects that I already have done for this project I and using this
9:519 minutes, 51 secondsproject only the AI that I have configured in this one that basically it works like replete. So first of all let
10:0010 minutesme show you this this help me build let me show you the very uh easy one. Yeah help me make a calculator that looks
10:0910 minutes, 9 secondslike an iOS or Samsung. It was. Let me open that up in the new tab.
10:1710 minutes, 17 secondsLoading only you. And there you go. So this is
10:2410 minutes, 24 secondsthe calculator that it designed. I'm going to go 5x5.
10:2910 minutes, 29 secondsAnd there you go. 25 completely functional calculator. Let me go to the next one. So here we have let's create
10:3610 minutes, 36 secondsan exact clone of LinkedIn home. So here I'm going to open that up.
10:4410 minutes, 44 secondsAnd there you go. So I did not write a single line of code for this project.
10:5210 minutes, 52 secondsThis was all written by our rapid clone.
10:5410 minutes, 54 secondsOur rapid clone did everything for this project. And now I'm going to click on join now button. I'm going to give it my name here,
11:0311 minutes, 3 secondsmy email, let's say, and password 1 2 3 for now.
11:1111 minutes, 11 secondsand click agree and join. And there you go. It redirected us to the homepage which of course is just there without
11:2111 minutes, 21 secondsany sort of authentication. That was just uh like a fake authentication there. And we have all these tabs, a
11:3011 minutes, 30 secondsnicely designed UI, the I mean look at that. Everything just looks like the real LinkedIn,
11:3811 minutes, 38 secondsdoesn't it? We have all of these options here, comments, and number of these posts. I mean, it's it's amazing. All
11:4711 minutes, 47 secondsright, I'm going to show you the next one. Make a landing page for the safety courses. So, I'm going to open this up.
11:5811 minutes, 58 secondsAnd there you go. Look at the website that our replicate clone designed for
12:0512 minutes, 5 secondsus. So we have all of these uh nice looking navigation there section this
12:1312 minutes, 13 secondsloading uh in numbers there and then we have all these courses and roll now and
12:2012 minutes, 20 secondsall that and I mean look at that it has designed a very very elegant and very
12:2712 minutes, 27 secondsvery professional landing page by using just a simple line of prompt that I'm going to show you in a minute. It's
12:3512 minutes, 35 secondsamazing. So, here we have these accordians and awesome. Everything is
12:4212 minutes, 42 secondscompletely responsive as well, by the way. And I'm going to show you that in a minute. Then we have a professional. What is that? Let me open that.
12:5412 minutes, 54 secondsThere you go. It is basically a habit uh a daily tracker, something like a day tracker. So I'm going to if we're going
13:0213 minutes, 2 secondsto go for the today I can add events like event type start of that start time of that event end time it I'm going to
13:1113 minutes, 11 secondscategorize that and I can put the priority I can change its color and depending on that this color and this
13:1713 minutes, 17 secondscolor changes as well and then it shows me that event here for example on this 25 when I was adding that gets added to
13:2713 minutes, 27 secondsthe calendar and you can click on that that gives you all of the details of that event. And of course, you can
13:3413 minutes, 34 secondsdelete that. And if you go to the tasks, you can add new tasks like task one for
13:4113 minutes, 41 secondsexample. There you go. Task two, task three, task four. And if I can click on
13:4913 minutes, 49 secondsone, that's going to complete my completeness. I mean improve that. And there you go. I mean it it's amazing.
13:5713 minutes, 57 secondsThen we have habits. Whatever habits you want to add, add new habit. Write the name of that and put some emoji and I give it a color and that like morning workout, drink eight glasses of water.
14:0814 minutes, 8 secondsThen we have notes as well. So I'm going to here for example put let's say heading.
14:1714 minutes, 17 secondsThere you go. If I preview that I get to see this heading. If I remove one hash from there I get a bigger one. It's like markdown compatible. It's amazing guys.
14:2814 minutes, 28 secondsLet me show you the next one which is a chatbot support that I created using this. I mean I have invested a lot of
14:3714 minutes, 37 secondstime into this replicate clone that I have been working on. This is a nice looking uh landing page that it designed
14:4414 minutes, 44 secondsfor us. Everything it did on its own. I just gave it a small little line of prompt for this one which I'm going to
14:5214 minutes, 52 secondsshow you. Just be with me. So, if I click on this one, there you go. There's Arya or AI support agent. So, if I track
15:0115 minutes, 1 secondmy order, it's going to give me something back. I can't find my order ID, for example, then it's going to give
15:0815 minutes, 8 secondsme something back. Let's say I have the ID. And there you go. If I go for the contact support, I track a code, track,
15:1615 minutes, 16 secondsI mean track an order, give a get a refund. Let's say uh get a refund.
15:2315 minutes, 23 secondsThere you go. We have things like that.
15:2615 minutes, 26 secondsTalk to an agent. So it replies according to that and that I mean it's
15:3315 minutes, 33 secondspowerful very very powerful the thing that we have done here guys. And next one is help me build a cool and interactive game.
15:4315 minutes, 43 secondsThis was a snake game. So I didn't I didn't tell it to build a snake game. I just told this one to uh hey build a
15:5215 minutes, 52 secondsgame for me and a very short prompt and it presented this neon snake game. I can play that. There you go with the
16:0016 minuteskeyboard uh buttons that I have. So we have all the scores and everything. So I'm going to let's see if There you go.
16:1116 minutes, 11 secondsOkay, I'm going to close. Well, no need for the close. Let's let it open. And then we have a landing page for a photo studio.
16:2216 minutes, 22 secondsSo there you go. Look at the quality that it provided. It did it it did f find all
16:3116 minutes, 31 secondsof the images, the typography, the styling, this little effect on scroll, this mouse
16:3916 minutes, 39 secondswheel effect for the scrolling hint and everything. these animations. It literally did every single thing just
16:4816 minutes, 48 secondsafter one prompt. There are a couple of projects that I needed to adjust a little bit by you um sending a couple of
16:5616 minutes, 56 secondsextra messages to the agent, but most of these were done by just one message. And there you go. We have these ones as well. Awesome. Let's scroll down.
17:0917 minutes, 9 secondsYeah, there you go. We have this nice looking yeah the testimonials and there you go
17:1817 minutes, 18 secondsyou have your book book your session phenomenal and I guess there is one left and that is for the freelancer or the
17:2717 minutes, 27 secondsweb developer agency or something like that I guess. Yes. So this is for the freelancer. I asked it and there you go.
17:3717 minutes, 37 secondsWe have a dark mode which of course you can change to light mode. I did tell list that I want to have the option to
17:4617 minutes, 46 secondsenable and disable dark light mode. And there you go. If you scroll down, it's amazing, guys. It's literally
17:5517 minutes, 55 secondsamazing. You have all these filters that really work.
18:0018 minutesYou have all these portfolios, testimonials, a CDA and links to the social media. I
18:1018 minutes, 10 secondsmean this is a very very upto-date and modern landing page for a freelancer.
18:1618 minutes, 16 secondsRight? So now let me open one of the projects for you like maybe two or three
18:2418 minutes, 24 secondsbecause I I want to give you this overview that this project is really really good. the the kind of stuff that
18:3118 minutes, 31 secondsI'm bringing to the YouTube that I want to contribute into this community to teach you guys the level of stuff that I
18:3918 minutes, 39 secondsam that I'm spending time on. I'm burning myself to find these projects and fine-tune those projects and then
18:4918 minutes, 49 secondsI mean it takes a lot of time to build the project once but we have to build it twice one initially and second time for
18:5718 minutes, 57 secondsthe recording it takes a lot of time and effort I really really appreciate guys if you guys can please subscribe like
19:0519 minutes, 5 secondsand comment on this video and share it with your friends and family to the like-minded people it would really really help me. It means a lot. All
19:1419 minutes, 14 secondsright, I'm going to open for example this one and click on the edit button here and it's going to open the agent for us.
19:2619 minutes, 26 secondsLook at that. There you go. And the overview is not done yet. The prompt that I gave it is this one. Then
19:3519 minutes, 35 secondsit started writing all of these files literally and everything was starting to build here. Here you guys. And now let
19:4519 minutes, 45 secondsme show you this thing that you can actually change the viewport size. Amazing guys.
19:5319 minutes, 53 secondsiPhone 17 Pro. There you go. Click on that. This is how it looks on mobile.
20:0020 minutesIt It's phenomenal. the I mean I can I I cannot find the words to to explain how
20:0820 minutes, 8 secondsmuch effort I have put into this project and the level of uh great things that you're going to learn from this project.
20:1720 minutes, 17 secondsAnd now I'm going to change this to iPhone uh Samsung Galaxy S25 Plus. There you go. That changes. And now this looks like a real screen, real mobile device.
20:3020 minutes, 30 secondsAll right, let me open up some other.
20:3420 minutes, 34 secondsSo if I go back to the apps or by the way, let me show you this as well that you can click on this one and you can
20:4220 minutes, 42 secondsliterally download the entire project. I don't think that replet gives you that feature, but you can download
20:5120 minutes, 51 secondsindex.html, app.tcs, app.t JSX and all these files and you can run them locally
20:5820 minutes, 58 secondsas well which is amazing. Awesome. I'm going to go to the go back to the projects
21:0621 minutes, 6 secondsand now I'm going to click on anything. For
21:1421 minutes, 14 secondsexample, let's say this one. If I click on this one, open this up.
21:2321 minutes, 23 secondsBuilding preview. There you go. We have the preview here. And now there is one thing that I want to show you.
21:2921 minutes, 29 secondsFor this one, I used the plan mode. In the plan mode, it did ask me these questions. The what's the name brand for
21:3721 minutes, 37 secondsyour safety training platform. It gave me these options. I picked one because I I didn't want to put too much time into
21:4421 minutes, 44 secondsjust picking the brand name just for the demo. And here there were some issues.
21:5021 minutes, 50 secondsIt did give me a result that this is what the design is. This is what the functionality is each and everything.
21:5521 minutes, 55 secondsAnd then after that there was something that I needed to change. Two things are needed. And there
22:0222 minutes, 2 secondswas this and there was this. So this was a little bit different. I didn't like that. I asked it to redo that again both
22:1022 minutes, 10 secondsand it did fix them and told that those both are fixed and gave me a complete detail of what was fixed and everything.
22:2122 minutes, 21 secondsAll right. And now let me get back to the projects again. I I would like to create another project but before that
22:3022 minutes, 30 secondslet me show you the rest of the app. So you can click here. You can go to the account.
22:3822 minutes, 38 secondsThere you go. You can change this stuff here. Alert one here. That's saving. And display name saved. There you go. Now I
22:4622 minutes, 46 secondscan change that back to what it was before. Click outside. It's saving. Awesome. Everything is changing in line.
22:5322 minutes, 53 secondsYou can change the profile photo. And I am logged in through Google. That's what it says. It's connected and active. It's
23:0223 minutes, 2 secondsmy user ID and everything. I can go to the settings and in the settings there's this nice looking uh loading. Then we have a
23:1123 minutes, 11 secondsworkspace URL that I can change and I can set a default start page either home
23:1723 minutes, 17 secondsor projects what I whatever is my um liking and of course we can enable and disable keyboard shortcuts.
23:2623 minutes, 26 secondsI can go to the billing and guys we have Stripe in this project.
23:3623 minutes, 36 secondsYou can make payments.
23:4023 minutes, 40 secondsRight now this is set to cancelling just for the demonstration. I'm going to click on manage or reactivate.
23:4823 minutes, 48 secondsThere you go. Opening. It's going to open that up in the Stripe dashboard.
23:5723 minutes, 57 secondsAnd there you go. We have full stack sand s uh sandbox. That's my account for the sandbox here. And then we have this
24:0524 minutes, 5 secondsinvoice history, the the test card and everything. And now if I don't cancel subscription.
24:1324 minutes, 13 secondsSo renew subscription. Repit pro monthly which is $25 a month.
24:2224 minutes, 22 secondscurrent subscription it's enabled. Now if I go back to our app
24:3424 minutes, 34 secondslook at that guys it does show us now that the subscription is active. So basically
24:4224 minutes, 42 secondswe have a complete working Stripe solution. We can we have a starter and we have a pro which is $25 a month.
24:5324 minutes, 53 secondsThese two products free and paid. And of course you're going to learn that in this course in this video in this series as well. Let's go to the trash.
25:0825 minutes, 8 secondsSo these are the things that are available in the trash. helped me build a local storage driven react app and
25:1725 minutes, 17 secondssome of these like uh calculator like iOS when I was testing this when I was fine-tuning it so basically when you
25:2425 minutes, 24 secondsdelete something from the project it doesn't get deleted matter of fact it moves to the trash and then in the trash
25:3325 minutes, 33 secondsyou have this ability to to either restore it or delete that permanently which is amazing I guess that's
25:4125 minutes, 41 secondssomething that you should have and you and access all of these pages through here as well. And now let's click on
25:4825 minutes, 48 secondsthat button and help me build a wedding planning agency website. Let's do that. I'm going to click on this creating your project.
26:0226 minutes, 2 secondsIt's going to create a project for me.
26:0826 minutes, 8 secondsAnd there you go. It's working working here as well.
26:1226 minutes, 12 secondsAnd it's going to show the working here as well. And this is going to show the preview from time to time. It's going to keep updating stuff until there you go.
26:2126 minutes, 21 secondsIt's writing index.html f file.
26:2826 minutes, 28 secondsThere you go. Our index.html page is ready. And now it's displaying that on the screen of course. But everything is
26:3726 minutes, 37 secondspure static HTML code and nothing is designed and that's what it is writing
26:4426 minutes, 44 secondsright now. Writing style CSS. Once that's done, it's going to apply that and make sure the build is complete and going to update the preview on its own.
27:0027 minutesAnd the style CSS is done as well. And look at that.
27:0727 minutes, 7 secondsI mean, it it's just a proof to you guys that I literally gave it just this prompt that helped me build a wedding planning agency website. Nothing else.
27:1927 minutes, 19 secondsIt's deciding everything on its own. And I mean, look at the landing page. Of course, this is not going to work yet
27:2727 minutes, 27 secondsbecause it's working on the Well, that's done. Script.js is also done. It's working. And there you go. It's loading.
27:3627 minutes, 36 secondsAnd eventually, it's going to make sure that everything is done. It's still writing. And I mean, it's it's amazing, guys.
27:4627 minutes, 46 secondsWe have this nice little shadows on hover. This here, of course, the image is broken here. That's normal.
27:5627 minutes, 56 secondsTestimonials.
27:5827 minutes, 58 secondsThere's steps. And it also says the build is complete. And of course, we have the CDA and the footer. And now, if
28:0728 minutes, 7 secondsI look at that in the iPhone 17 Pro, there you go. We have a working
28:1428 minutes, 14 secondsmenu for the mobile screen as well. And of course, yes, we have this issue that the menu here. Let's fix that actually.
28:2428 minutes, 24 secondsSo, I'm going to say when the mobile menu is opened,
28:3228 minutes, 32 secondsI can't see the menu icon.
28:4028 minutes, 40 secondsI guess that's white on
28:4628 minutes, 46 secondswhite background. Let's change that color when the menu is open. Also, make
28:5628 minutes, 56 secondssure the menu items stays stay
29:0429 minutes, 4 secondsblack when you hover over them. And it's not going to rewrite the entire project.
29:1229 minutes, 12 secondsIt's just going to find that little code into the project and then it's going to
29:1929 minutes, 19 secondsupdate that only code. So, it's going to save the tokens as well.
29:3129 minutes, 31 secondsAll right, it's done. And for making sure that it gets done when I told it this
29:4029 minutes, 40 secondslet's click on that. There you go. It becomes red and this has been fixed as well guys. It's like that you are
29:4829 minutes, 48 secondsspeaking to the chat or something. So it understand your every single thing very clearly. Well chat doesn't always do
29:5629 minutes, 56 secondsthat. So here everything looks great on the mobile as well.
30:0530 minutes, 5 secondsI mean I'm impressed guys. I don't know about you guys but I'm impressed.
30:1230 minutes, 12 secondsSo this is it guys. This is the demo of our project and uh I'm going to get
30:2030 minutes, 20 secondsstarted on a new project for the next JS16 and let's get started with the
30:2930 minutes, 29 secondsinstallation. All right, everyone. Right now, I'm going to go for npx create-
Chapter 3: Scaffold
30:3530 minutes, 35 secondsnext dash app at latest and let's go for replet.
30:4430 minutes, 44 secondsI'm going to install that.
30:4630 minutes, 46 secondsAnd here I'm going to say typescript eslint node react router tinss no source directory app router and agents.md file.
30:5730 minutes, 57 secondsAgent MD file does not matter for us for now. So I'm going to go for the default settings there. Let's install. Let's wait for it.
31:1231 minutes, 12 secondsAll right, it's done. I'm going to go to cd replet clone and I'm going to code
31:2031 minutes, 20 secondsdot. It's going to open that project in my visual studio code here.
31:2931 minutes, 29 secondsAll right. And I guess there is no need for this. Now I'm going to close this
31:3531 minutes, 35 secondsone and open Visual Studio Code terminal. And I'm going to say npm run
31:4431 minutes, 44 secondstab just to make sure that everything is running. I'm going to go here and we have localhost 3000.
31:5631 minutes, 56 secondsAll right, everything is working. Let's go back to our code editor. I'm going to close this one here as that's running in
32:0332 minutes, 3 secondsthe background. And very first thing that I'm going to do is I'm going to go to the globalscs
Chapter 4: Design tokens
32:1232 minutes, 12 secondsfile and I'm going to get rid of everything from here to there. Save. And
32:1932 minutes, 19 secondsthis is what we have. Things are not looking good but that is what exactly we need as we need to write on our own
32:2832 minutes, 28 secondscode. All right. Now here I'm going to write some landing page break points. So I'm going to write add
32:3632 minutes, 36 secondscustom variant mobile and this is going to be add media.
32:4432 minutes, 44 secondsThen we have max dash width 767 pixel.
32:5332 minutes, 53 secondsI'm going to duplicate it a few times. So this changes to tablet.
33:0033 minutesThen we have here I'm going to say min width 768 pixel
33:0933 minutes, 9 secondsand max width 11 9 pixels.
33:1733 minutes, 17 secondsAnd then we have next which is below dash desktop.
33:2233 minutes, 22 secondsAnd max width for this one is going to be 11 99 pixels.
33:3133 minutes, 31 secondsThen we have tablet dash up and I'm going to say
33:4033 minutes, 40 secondsmin dash width for this one is going to be 768 pixels.
33:4633 minutes, 46 secondsNext, I'm going to change this to desktop. And it becomes
33:5433 minutes, 54 secondsmin dash width 1200 pixels. I'm going to duplicate it.
34:0134 minutes, 1 secondAnd this changes to desktop dash wide.
34:0634 minutes, 6 secondsI'm going to say minimum width for this one 1280 pixels. All right. And then I'm
34:1334 minutes, 13 secondsgoing to come down here. Let's write root. And in there I'm going to say dash
34:2034 minutes, 20 secondsbackground. That's going to be hash f af 6 f1. Then we have dash
34:3034 minutes, 30 secondsheader-p. It's going to be the same number f a f6 f1.
34:3934 minutes, 39 secondsThen we have dashrelet dash orange # ff 3 c.
34:4934 minutes, 49 secondsThen we have dash dash replet dash orange
34:5634 minutes, 56 secondsdash mid. It's going to be # ff 76
35:0535 minutes, 5 seconds4 c. Then we have dash dash text dash
35:1135 minutes, 11 secondsprimary. I'm going to say hashtag0 e 0 e0f
35:1935 minutes, 19 secondsdash text dash secondary hashtag and it's going to be
35:2835 minutes, 28 seconds3637 3B x1 dash text dash heading I'm going to
35:3835 minutes, 38 secondssay hashtag T 3 6 37 3B. Same number basically.
35:5035 minutes, 50 secondsD-text text dash agent dash heading. And it's going to be hashtag
36:0036 minutes31 2 e2 e
36:0536 minutes, 5 secondsd- text dash cda dash adding I'm going to say #1 91818
36:1636 minutes, 16 secondsd- text dash dim I'm going to say hash 949494 four
36:2436 minutes, 24 secondstext dash muted. It's going to be # 6 9 6 C and 74.
36:3636 minutes, 36 secondsAnd now here instead of writing all that CSS code, I'm just going to paste this here. These are all of the variables
36:4536 minutes, 45 secondsthat needs to be created. I'm going to get down here now. And now in here I'm going to say add team inline. And this
36:5436 minutes, 54 secondsis going to be another code that I'm going to paste just here.
37:0037 minutesThis is just those variables being used here under inside add theme inline.
37:0637 minutes, 6 secondsNothing fancy here. Just don't want to write all of them here. You can find all that code in the GitHub repo attached in the video description. And of course
37:1537 minutes, 15 secondshere I'm going to paste the rest of the globals.css CSS code. There you go. Just
37:2237 minutes, 22 secondsjust like before. Nothing fancy. Just some CSS classes. You're learning how to work with the NextJS. And of course, I
37:3137 minutes, 31 secondssuppose that you already know how to write CSS code. This is all that nothing extra in there. Just CSS code. That's
37:3937 minutes, 39 secondspretty much it. Yes. Nothing else. All right. And of course there are few things like font sands and font display.
37:4937 minutes, 49 secondsWe're going to need to still create those in a minute and we will get to that. So for now I'm going to put that
37:5637 minutes, 56 secondscomment here and uh I guess we're pretty good here. All right. I'm
38:0538 minutes, 5 secondsgoing to format everything and save everything. Awesome. The next up thing is that we need to work on the custom
38:1338 minutes, 13 secondsfonts that we have used in this project and that's going to go under here in the
38:2138 minutes, 21 secondspublic. So I'm going to reveal in Finder and then I'm going to make sure that
38:2838 minutes, 28 secondseverything from here is gone. And then I'm going to go to my new tab desktop
38:3638 minutes, 36 secondsreplet. And then I have these fonts. I'm going to copy them, paste them here under the public folder. Of course, you
38:4338 minutes, 43 secondshave all of that in the GitHub repo that you can find in the video description.
38:4838 minutes, 48 secondsAnd again, please, I am working very very hard. Uh I'm spending a lot of time on this project. So, I would really,
38:5638 minutes, 56 secondsreally appreciate if you could please subscribe to this channel, like this video, hit the thumbs up, comment on this
39:0539 minutes, 5 secondsvideo, and share it with your friends and family or like-minded people. That is going to help me a lot. All right, back to the code. Now, here we have the
39:1439 minutes, 14 secondsfonts here in the public folder, and I'm going to paste those fonts here. There
39:2039 minutes, 20 secondsyou go. So we have tailwind CSS import all the custom variants that we need.
39:2739 minutes, 27 secondsThen we need have all the font faces and of course these are directing to
39:3639 minutes, 36 secondsthis public fonts folder. And then of course now we need to make sure that
39:4439 minutes, 44 secondsthat these fonts are being used there properly and not commented.
39:5139 minutes, 51 secondsSo I'm going to uncomment this. There you go. Let me format everything. Save everything. Let me check what issues do
39:5939 minutes, 59 secondswe have. So unknown role custom variable. Well, no problem. That's something to do with the with the tailwind CSS. All good here. Fantastic.
40:0840 minutes, 8 secondsAs our globals docs file is done. But if you go to the browser, you will not
40:1540 minutes, 15 secondsnotice anything as that's coming from the app.jsx file. So that eventually
40:2240 minutes, 22 secondswill change. But of course, since we just started this project, we need to lay the foundation
40:3040 minutes, 30 secondsfor a few components and for a few functions and utilities that are going to be used for a lot of other components
40:3940 minutes, 39 secondsthat are going to make that are going to build the UI of the homepage and the rest of the app. So I'm going to close
40:4640 minutes, 46 secondsthis file and I'm going to create a new folder here that is going to be a lib
Chapter 5: Shared UI helpers
40:5440 minutes, 54 secondsfolder and in there I'm going to create a new file which is going to be utils.ts
41:0441 minutes, 4 secondsts and in here I'm going to say export function CN and I'm going to say dot dot dot classes.
41:1541 minutes, 15 secondsThere you go. Then we have array and I'm going to say it's going to be either string
41:2441 minutes, 24 secondsor false or it's going to be null or undefined.
41:3341 minutes, 33 secondsand it's going to return a string. So for that return
41:3941 minutes, 39 secondsclasses dot filter and I'm going to say boolean
41:4641 minutes, 46 secondsdot join and there you go. We have our string here. So I'm I'm formatting everything and saving everything. And
41:5441 minutes, 54 secondsthat's pretty much it. There is one thing that we need to make sure that we have that if we go to the globals.css
41:5941 minutes, 59 secondsCSS file and uh here yes under the app action blue we need to make sure that we
42:0942 minutes, 9 secondshave this font brand font sense and font display are
42:1642 minutes, 16 secondsmentioned here as well as these are the ones that are being used
42:2342 minutes, 23 secondsunder everywhere in the app. So here that's it. I'm going to close this file and this file as well. And now we need
42:3142 minutes, 31 secondsto write a new file for the theme UI of our app. So I'm going to say UI-
42:3842 minutes, 38 secondstheme.ts and I'm going to say export type UI
42:4642 minutes, 46 secondstheme is equal to either light or it's going to be the app. There you go. app is always going to be dark by the way.
42:5642 minutes, 56 secondsSo here we have export const. I'm going to say focus ring styles. It's going to
43:0443 minutes, 4 secondsreturn it's going to be a type of record and I'm going to say UI theme
43:1243 minutes, 12 secondsand string. It's going to be type of here we have light. The light is
43:2043 minutes, 20 secondsgoing to be focus border dashrelet dash orange.
43:2943 minutes, 29 secondsOn focus it's going to be outline dashnone.
43:3343 minutes, 33 secondsThen on focus it's going to be ring dash two. Let me copy this part. Yes. Then we
43:4043 minutes, 40 secondshave on focus. It's going to be ring dashrelet- orange_/20.
43:5043 minutes, 50 secondsAnd I'm going to put a comma here. I'm going to actually bring it down here.
43:5643 minutes, 56 secondsAnd then I'm going to say app. The app is going to be focus border dash app
44:0544 minutes, 5 secondsdash text dashmuted focus outline dashnone
44:1244 minutes, 12 secondsfocus ring-2 and focus ring- app-border /60. There you go. Now after that here
44:2144 minutes, 21 secondsI'm going to say export con input styles
44:3044 minutes, 30 secondsrecord and this is going to be UI theme and string and so basically it's going
44:3844 minutes, 38 secondsto take a UI theme and second value for that is going to be a string which is going to be always light or app of course. So, I'm going to open that here.
44:4944 minutes, 49 secondsThat's going to be light. And I'm going to say border dash
44:5644 minutes, 56 secondsborder dash light. Then we have bg dash
45:0145 minutes, 1 secondsurface dash white text dash text dash
45:0845 minutes, 8 secondsprimary. Then we have on placeholder placeholder. Yes, all spellings are
45:1545 minutes, 15 secondsgood. text dash text dash muted. All right. Then after that we have app and
45:2245 minutes, 22 secondswhen the app is there that's going to be border dash app-border
45:2945 minutes, 29 secondsand we have bg- app dashinput-bg and text dash app dash text. And on
45:3945 minutes, 39 secondsplaceholder, this is going to be text- app-ext-muted.
45:4645 minutes, 46 secondsAnd I'm going to say scheme is going to be dark. Let me format everything. And
45:5345 minutes, 53 secondsnow since this all code like focus ring styles and input styles, this all looks pretty much same all tailwind CSS
46:0146 minutes, 1 secondclasses with just light and app differentiation. So, what I'm going to do is I'm going to put the rest of the
46:1046 minutes, 10 secondsstyles here. We have empty state styles, empty state title styles, empty state description styles, and a few others.
46:2046 minutes, 20 secondsAnd that's pretty much it. Only a few lines of code that is just tailwind CSS
46:2746 minutes, 27 secondsclasses. Nothing fancy here, guys. So I'm going to format everything. Save everything. And then after everything
46:3446 minutes, 34 secondshere I'm going to say export const one more avatar fallback styles. It's going
46:4446 minutes, 44 secondsto be record UI theme and string just like what I
46:5146 minutes, 51 secondshave pasted above and just like what I have written here. So here I'm going to say
46:5946 minutes, 59 secondslight is going to be bg- pricing dash surface text dash text dash
47:0847 minutes, 8 secondssecondary and then we have app. We have bg- app-surface dash active and text- app-extary.
47:2247 minutes, 22 secondsThere you go. And that's it. All right.
47:2547 minutes, 25 secondsNow when we have our shared helpers for the UI, of course we cannot notice anything here on the screen because
47:3347 minutes, 33 secondsthere is nothing UI this. There were only helpers. It is time for us to create a component that actually renders
Chapter 6: Button + Container primitives
47:4147 minutes, 41 secondson the screen. So let's do that. I'm going to create a new folder. I'm going to say
47:4947 minutes, 49 secondscomponents. And in there there's going to be a new file. actually new folder.
47:5547 minutes, 55 secondsLet me organize that in a better way. We have a UI and in the UI I'm going to say
48:0148 minutes, 1 secondbutton.tsx and in the button.tsx file I'm going to import a link from next link. Also I'm
48:1048 minutes, 10 secondsgoing to import type UI theme. There you go. Also, I'm going to
48:2048 minutes, 20 secondsneed import focus visible ring styles. There you go.
48:2748 minutes, 27 secondsAnd then I'm also going to need import
48:3448 minutes, 34 secondsCN from there. And by the way, you can get rid of everything here and you can put this there. That's going to work the
48:4248 minutes, 42 secondssame way. I'm just sticking with whatever it's giving me by default in the import. That's going to save me some time and the video is only going to be
48:5148 minutes, 51 secondslong what it needs to be. All right. So here I'm going to say type
48:5848 minutes, 58 secondsbutton variant is going to be equal to either primary
49:0549 minutes, 5 secondsor outline or coast or
49:1349 minutes, 13 secondssecondary. There you go. Then we have a type button size which is going to be either small
49:2249 minutes, 22 secondsor medium or large. Then we have type
49:2849 minutes, 28 secondsbutton props is equal to this type where we have children which is going to be react dot
49:3849 minutes, 38 secondsreact node. Then we have variant which is optional and it's going to be a
49:4549 minutes, 45 secondsbutton variant type. Then we have a size which is optional. It's going to be a button size type.
49:5449 minutes, 54 secondsWe have also href optional and it's going to be a string.
50:0250 minutes, 2 secondsLet me put this there as well.
50:0650 minutes, 6 secondsThere you go. Then we have class name which is going to be a string.
50:1350 minutes, 13 secondsDisabled string actually no disabled that should be a boolean. Yeah. Then we have type
50:2250 minutes, 22 secondsthat's going to be either button or submit.
50:3050 minutes, 30 secondsThen I'm going to say on click which is going to be optional and a call back function
50:3850 minutes, 38 secondsvoid. Then we have area dash label and that's going to be a string here.
50:4950 minutes, 49 secondsThen we have theme and that's going to be UI theme. There you go. Awesome. Now
50:5850 minutes, 58 secondshere I'm going to say const variant styles and just like the UI theme we're going
51:0651 minutes, 6 secondsto need a few different types here with a different till CSS classes. So I'm just going to write the name here for
51:1551 minutes, 15 secondsnow. Let's say record in there we have button variant
51:2251 minutes, 22 secondsand the second value is going to be a bracket as well which is going to be a
51:3051 minutes, 30 secondsUI theme and second value of the second is going to be a string. Then eventually here here we go.
51:4051 minutes, 40 secondsNow in here I'm just going to paste these values here. Nothing fancy here.
51:4551 minutes, 45 secondsLet me explain. So basically we have this primary, outline, coast and
51:5251 minutes, 52 secondssecondary. So we have primary here. In case of primary this is going to be basically
52:0052 minutesfirst we have button variant which is primary outline coast or secondary. Then
52:0652 minutes, 6 secondsfor each button variant we have another record where we have two values. Either we have UI theme. The first one we have
52:1452 minutes, 14 secondsUI theme and the second that needs to be string. So UI theme if we go to there that needs to be only light or app
52:2452 minutes, 24 secondsremember. So here we have under primary we have light and app under outline we have light and app. And then it's just
52:3352 minutes, 33 secondsthose classes that come from tailwind CSS. Nothing fancy just like I told you.
52:4052 minutes, 40 secondsNow here I'm going to say const size size styles is type of record and here I'm
52:5052 minutes, 50 secondsgoing to say button size and second value is going to be a string open that
52:5752 minutes, 57 secondsand I can write that it's just short CSS classes. So, I'm going to say hash 9, px-4,
53:0553 minutes, 5 secondstext- small, and font dash medium. Then I'm going to go for medium, which is
53:1353 minutes, 13 secondsgoing to be height-11, px dash sex, and then we have text dash
53:2053 minutes, 20 secondssmall, and font dash medium. There you go. Let me duplicate that actually. And
53:2853 minutes, 28 secondsthis one changes to height 14 for large text dash base here. And then we have
53:3753 minutes, 37 secondsfont medium here. The same here. All right. Now I'm going to come down here and this is the time for exporting the
53:4553 minutes, 45 secondsreal component. So we have export function button and in there I need few
53:5353 minutes, 53 secondsprops, few arguments. So we have children basically all of these that are here. So I'm going to write them here.
54:0254 minutes, 2 secondsWe have children. Then we have variant which is going to be primary by default.
54:0954 minutes, 9 secondsSize which is going to be empty by default. Href.
54:1454 minutes, 14 secondsClass name disabled.
54:1854 minutes, 18 secondsWe have type which is going to be button by default. And we have on click. Now
54:2554 minutes, 25 secondshere I'm going to say area dash label and that is going to be area label.
54:3254 minutes, 32 secondsThat's going to be used as area label here. Then we have theme which is going to be default light. There you go. And
54:4154 minutes, 41 secondsnow this all becomes a type of button props. Hold on. Button props. There you go. Come on.
54:5354 minutes, 53 secondsbutton props. There you go. And let me open that function now. Awesome. So
54:5954 minutes, 59 secondshere, first of all, I'm going to return this button here. There you go. And I'm
55:0755 minutes, 7 secondsgoing to say type for this one is going to be type. And I'm going to say disabled.
55:1855 minutes, 18 secondsDisabled here. Then we have on click.
55:2255 minutes, 22 secondsI'm going to say on click. Then we have area label which is going to be area
55:2955 minutes, 29 secondslabel that we have. And of course eventually we display our children in that button. Let me format
55:3855 minutes, 38 secondseverything. And now let's go to app/page.tsx file. So I am going to get rid of
55:4855 minutes, 48 secondseverything within this. And now here I'm going to say
55:5455 minutes, 54 secondsbutton the component that we just created. And of course that component
56:0156 minutes, 1 secondneeds children. So I'm going to say here I'm going to say click here. For example, let me format. There you go.
56:1456 minutes, 14 secondsAnd now if we go here, we only see click here and there are no styles.
56:2256 minutes, 22 secondsWell, those styles are going to come here right now because if we actually
56:2856 minutes, 28 secondsdo, you know what? Let me bring it to this side. Not this side, but this side
56:3556 minutes, 35 secondsand this one to this side. And that way probably you guys get to see more of the stuff.
56:4656 minutes, 46 secondsSo yeah. All right. I'm going to get back to the button.tsx file here. And in
56:5556 minutes, 55 secondsthere inside this function I'm going to say const styles is equal to CN.
57:0557 minutes, 5 secondsAnd in there I have inline dash flex items
57:1257 minutes, 12 secondsitems dash center justify dash center rounded dash full and then I also have
57:2357 minutes, 23 secondstransition dash colors and duration- 200. After that, I'm going to need focus dash visible.
57:3557 minutes, 35 secondsAnd that's going to be outline dashnone focus dash visible. It's going to be
57:4257 minutes, 42 secondsring dash2. Awesome. After that, here I'm going to say focus visible ring styles and I'm going to use theme here.
57:5457 minutes, 54 secondsThen after that I'm going to say disabled
58:0058 minutescursor dash cursor dash dot dash allowed and on disabled this is going to be
58:0958 minutes, 9 secondsopacity dash 50 and let me put these there. So class name here is going to be styles. Let me save everything.
58:2358 minutes, 23 secondsAnd we still don't see anything here yet. So do not worry. Hold on. So here
58:3358 minutes, 33 secondsI'm going to say variant styles. That's going to be here. Variant. And then
58:4258 minutes, 42 secondstheme here. There you go. I've just saved. And we have some styling here. Of course, it doesn't look that good.
58:4958 minutes, 49 secondsGoing to come down here. We have size styles and I'm going to say size. I'm going to save. There you go. It changes
58:5858 minutes, 58 secondsto medium now. And then we have class name here as well. Hold on. There you
59:0659 minutes, 6 secondsgo. Awesome. And now the next thing that we need is here I'm going to say
59:1259 minutes, 12 secondsif href exists on a button then we're going to return this. We're going to
59:2059 minutes, 20 secondsreturn link. There you go. And we do href which is going to be href. Here we
59:2859 minutes, 28 secondsgo for class name which is going to be styles. And then we have area label where here we have area label.
59:4159 minutes, 41 secondsAnd in there we have our children.
59:4659 minutes, 46 secondsAwesome. Let me format everything and save everything. And in here I can notice that it justify this needs to be
59:5459 minutes, 54 secondscorrect. There you go. That's in the center now. Rounded full transition dash colors duration 200 and focus visible.
1:00:051 hour, 5 secondsAll right. Ring two and outline none here. Focus. There you go. Disabled cursor.
1:00:121 hour, 12 secondsCursor not allowed. And yeah, right. Everything seems good here.
1:00:211 hour, 21 secondsAnd our button of course looks good here as well. And of course there is going to be sizing for the button that we are
1:00:301 hour, 30 secondsgoing to manage. There you go. We have our on our state as well. The sizing which is going to be managed when this
1:00:381 hour, 38 secondsbutton is going to be used inside any other component as this is just a single piece of the puzzle. All right.
1:00:461 hour, 46 secondsSo now I'm going to close this button from here and I am going to open this panel and in here I'm going to inside
1:00:551 hour, 55 secondsthis components and inside this UI folder there's going to be new file I'm going to say container.tsx.
1:01:061 hour, 1 minute, 6 secondsLet me bring close this one. So here I'm going to say import cn from our oodles.
1:01:131 hour, 1 minute, 13 secondsThen I'm going to say type container props is equal to this where we have children.
1:01:221 hour, 1 minute, 22 secondsThat's going to be react dot react node.
1:01:281 hour, 1 minute, 28 secondsThen we have class name which is going to be a string
1:01:351 hour, 1 minute, 35 secondsas that's going to be a div or section or footer
1:01:441 hour, 1 minute, 44 secondsor header or finally nav. Then we have ID which is also optional and it's going to be a string.
1:01:551 hour, 1 minute, 55 secondsAll right. Then here we have export function header container
1:02:031 hour, 2 minutes, 3 secondsand this is going to be children. Then we have class name. Then we have as tag
1:02:121 hour, 2 minutes, 12 secondsis equal to div by default here id
1:02:181 hour, 2 minutes, 18 secondsand this is going to be type of container props. Let me open that
1:02:251 hour, 2 minutes, 25 secondsfunction here. And now here we have return this where we have a
1:02:341 hour, 2 minutes, 34 secondsdiv. I'm going to give it a class name of MX dash auto max-
1:02:421 hour, 2 minutes, 42 secondswidth-page- header.
1:02:451 hour, 2 minutes, 45 secondsThen on desktop, this is going to be grid. Remember this desktop is coming from our custom variants that we created
1:02:541 hour, 2 minutes, 54 secondsin the globals.css file. Then after that we have on desktop it's going to be grid dash calls.
1:03:051 hour, 3 minutes, 5 secondsI'm going to go for one here and I'm going to change that to custom value which is going to be repeat
1:03:111 hour, 3 minutes, 11 seconds14 comma min max parenthesis zero and one fraction here. And we are officially
1:03:191 hour, 3 minutes, 19 secondsdone with this one. Now here we have that tag.
1:03:251 hour, 3 minutes, 25 secondsAnd I'm going to open that tag. This one as which is eventually going to be div by default. And in this tag I'm going to
1:03:331 hour, 3 minutes, 33 secondssay id which is going to be ID. Then we have class name. And I'm going to use CN for that. I'm going to open that here.
1:03:441 hour, 3 minutes, 44 secondsAnd we have width dash full px4 tablet up. And for that I'm going to say px8.
1:03:541 hour, 3 minutes, 54 secondsOn desktop I'm going to say call span 12. And then on desktop again I'm going
1:04:021 hour, 4 minutes, 2 secondsto say call start 2. Then we have on desktop I'm going to say px-0.
1:04:111 hour, 4 minutes, 11 secondsAwesome. Then we have class name. And
1:04:171 hour, 4 minutes, 17 secondshere under this tag I'm going to use children. There you go. And now I'm
1:04:251 hour, 4 minutes, 25 secondsgoing to go under here export function. I'm going to say container.
1:04:341 hour, 4 minutes, 34 secondsOpen that. Here we have class name children
1:04:421 hour, 4 minutes, 42 secondsas tag is going to be div by default id and this whole thing is going to be
1:04:501 hour, 4 minutes, 50 secondstype of container props. Open that function and we return and here we have that tag.
1:05:011 hour, 5 minutes, 1 secondThat tag is going to have an ID which is going to be ID. Then it's going to have
1:05:071 hour, 5 minutes, 7 secondsa class name. I'm going to use CN for that. And here we have MX dash auto.
1:05:181 hour, 5 minutes, 18 secondsThere you go. Width-full max-width page-content then px4
1:05:271 hour, 5 minutes, 27 secondsthen tablet dash up. And for that I'm going to say px8.
1:05:331 hour, 5 minutes, 33 secondsThen desktop is going to be px0.
1:05:371 hour, 5 minutes, 37 secondsThere you go. Also I'm going to attach class name to that. And finally in there we have our children.
1:05:471 hour, 5 minutes, 47 secondsAwesome. So with that this component is done as well. So I'm going to give you an overview. I'm going to close this
1:05:551 hour, 5 minutes, 55 secondscontainer. Actually let's leave it open and let's go to here.
1:06:001 hour, 6 minutesAnd under return here, I'm going to grab this button from here. And in there, I'm going to say container.
1:06:111 hour, 6 minutes, 11 secondsI'm going to open that. I'm going to put that button there. And let's leave it like that for now. So,
1:06:181 hour, 6 minutes, 18 secondsI'm going to save it. There you go. Our container is there. And the button looks way good now. So now if I give it class
1:06:281 hour, 6 minutes, 28 secondsname, let's say margin top dash 4. Let's say I'm going to save it. There
1:06:351 hour, 6 minutes, 35 secondsyou go. The button looks the way it's supposed to look. And by the way, if I give it an href, so right now it does
1:06:441 hour, 6 minutes, 44 secondsnothing. So if I give it a href, that's going to change to the link. So here I'm
1:06:521 hour, 6 minutes, 52 secondsgoing to say slash uh app. Let's see. And if I go here, there you go. You can see the little link here when I hover over. Amazing.
1:07:021 hour, 7 minutes, 2 secondsAwesome. Very good stuff. All right. Things are starting to look better now.
1:07:071 hour, 7 minutes, 7 secondsAnd now we need to create the next component. And let me show you that. So
Chapter 7: Input, Textarea, Badge
1:07:141 hour, 7 minutes, 14 secondsI'm going to go to this UI. And here we have this input.tsx.
1:07:221 hour, 7 minutes, 22 secondsAnd I'm going to import type.
1:07:291 hour, 7 minutes, 29 secondsThis is going to be import type
1:07:341 hour, 7 minutes, 34 secondsUI theme. Then I'm going to need focus ring styles. Also, I'm going to need
1:07:441 hour, 7 minutes, 44 secondsinput styles. And then I'm going to need CN. There you go. Here we have type
1:07:521 hour, 7 minutes, 52 secondsinput props is equal to react dot input
1:07:591 hour, 7 minutes, 59 secondsHTML attributes and here I'm going to say HTML input element and I'm going to
1:08:071 hour, 8 minutes, 7 secondssay emperson and open that. Now here we have theme and I'm going to say UI theme. There you
1:08:171 hour, 8 minutes, 17 secondsgo. Actually that UI theme is already there. Yeah. Awesome. Now if you're wondering about this amperand operator
1:08:261 hour, 8 minutes, 26 secondshere that we have. Well this amperand operator is well when you are building reusable components in React with
1:08:351 hour, 8 minutes, 35 secondsTypeScript you often want to keep all the standard HTML functionality while adding your own custom props. That's
1:08:441 hour, 8 minutes, 44 secondswhere the this intersection operator that's what this is called basically that's where this intersection operator
1:08:531 hour, 8 minutes, 53 secondsor the amperand becomes incredibly powerful by using amperand or the intersection operator you can join
1:09:011 hour, 9 minutes, 1 secondreact.input html attributes with your own custom type which we have here
1:09:091 hour, 9 minutes, 9 secondsyou are essentially telling Typescript to merge them together. This gives your component the best of both worlds. It
1:09:181 hour, 9 minutes, 18 secondsautomatically inherits every native attribute like value, placeholder or on change or on click something like that
1:09:271 hour, 9 minutes, 27 secondswhile simultaneously requiring or allowing the custom properties you have defined. It's a
1:09:361 hour, 9 minutes, 36 secondsclean, efficient way to extend standard elements without ever having to manually redefine the basics.
1:09:451 hour, 9 minutes, 45 secondsLet's come down here and I'm going to say export function input and here we have
1:09:541 hour, 9 minutes, 54 secondsclass name type which is going to be equal to text by default. Let's actually come down as that's going to be very easier.
1:10:051 hour, 10 minutes, 5 secondsThen we have here theme which is going to be equal to light by default. And then here finally I'm going to say dot
1:10:141 hour, 10 minutes, 14 secondsdot dot props basically the rest operator. And let's make sure that it is a type of input props. There you go.
1:10:221 hour, 10 minutes, 22 secondsLet's open that up. And here we have this return.
1:10:301 hour, 10 minutes, 30 secondsAnd here I have this input. And in that I'm going to say type that's going to be this type that we have.
1:10:411 hour, 10 minutes, 41 secondsAnd also then we have class name. I'm going to use CN for that.
1:10:481 hour, 10 minutes, 48 secondsThat's going to be H-10.
1:10:511 hour, 10 minutes, 51 secondsThere you go. And we have width dash full rounded XL. Then we have border
1:10:591 hour, 10 minutes, 59 secondspx 3.5 text small transition and I'm going to say custom
1:11:081 hour, 11 minutes, 8 secondsvalue which is going to be border dash color then box dash shadow. All right.
1:11:151 hour, 11 minutes, 15 secondsI'm going to come down and here I have input styles and I'm going to say theme.
1:11:221 hour, 11 minutes, 22 secondsThen I'm going to say focus ring styles and I'm going to select theme here as well. And then I'm going to say on
1:11:311 hour, 11 minutes, 31 secondsdisabled this is going to be cursor dash not allowed. There you go. And on disabled opacity is going to be 50.
1:11:411 hour, 11 minutes, 41 secondsAwesome. And then finally I'm going to attach that prop here as well. Awesome.
1:11:471 hour, 11 minutes, 47 secondsSo then after that here I'm going to make sure that I'm using this spread
1:11:541 hour, 11 minutes, 54 secondsoperator dot dot dot props the one that we used here as the rest operator. So
1:12:011 hour, 12 minutes, 1 secondhere that is done and now let me make sure that we can display that. So under
1:12:081 hour, 12 minutes, 8 secondsthe button, let's actually display that above the button. So and let's remove this image from here as that is no
1:12:161 hour, 12 minutes, 16 secondslonger being used. So here we have input and for the input I'm going to say type
1:12:231 hour, 12 minutes, 23 secondsfor this one is going to be let's say let's say text that is by default by the way. Save it. And there you go. This is
1:12:321 hour, 12 minutes, 32 secondsthe text input that we have. And of course
1:12:401 hour, 12 minutes, 40 secondsif I use placeholder I say type in save it. There you go. And that
1:12:491 hour, 12 minutes, 49 secondstype in is going there into this input component that we have already by using this intersection operator.
1:12:581 hour, 12 minutes, 58 secondsAwesome. So that's for this one. Actually, let me give it a class name.
1:13:041 hour, 13 minutes, 4 secondsThat's going to be margin bottom dash two. Save it. And there you go. Awesome.
1:13:101 hour, 13 minutes, 10 secondsAnd right now, just like we have done our input.tsx, we are going to create a new file.
1:13:181 hour, 13 minutes, 18 secondsThat's going to be text area.tsx.
1:13:231 hour, 13 minutes, 23 secondsThere you go. Now, here we have UI theme.
1:13:291 hour, 13 minutes, 29 secondsThere you go. And let me make sure that I use this add operator here. Here we have import.
1:13:371 hour, 13 minutes, 37 secondsI'm going to say focus ring styles. Then I'm going to import input styles as well. And I'm going to need CN as well.
1:13:471 hour, 13 minutes, 47 secondsAnd yeah, now here we have type. I'm going to say text area.
1:13:551 hour, 13 minutes, 55 secondsNow text area props is equal to react dot text area
1:14:031 hour, 14 minutes, 3 secondsHTML attributes. And now here I'm going to say HTML text area element.
1:14:101 hour, 14 minutes, 10 secondsAnd I'm going to use this intersection operator here as well. And then it's going to be theme and UI theme. There
1:14:181 hour, 14 minutes, 18 secondsyou go. Here we have export function text
1:14:251 hour, 14 minutes, 25 secondsarea and I'm going to open that. Here we have class name. We also have theme
1:14:321 hour, 14 minutes, 32 secondswhich is going to be equal to light by default. And then we have this rest operator dot dot dot props. We're making
1:14:411 hour, 14 minutes, 41 secondssure that all of the props are there and we do not get any sort of uh error or issue from the TypeScript. This is going
1:14:491 hour, 14 minutes, 49 secondsto be a type of text area props. And I'm going to open that up. Here we have text area.
1:15:001 hour, 15 minutesThere you go. And I'm going to say class name first of all. And in this one, this is going to be a CN. I'm going to open
1:15:071 hour, 15 minutes, 7 secondsthat up. Here we have min- height-z, which I'm going to change to 88 pixels.
1:15:131 hour, 15 minutes, 13 secondsThen we have width dash full. I'm going to say resize y. And I'm going to say
1:15:191 hour, 15 minutes, 19 secondsrounded XL we have border. Then we have px 3.5 px 3.5 py3.
1:15:311 hour, 15 minutes, 31 secondsAnd then we have text small. We have transition. I'm going to change that to
1:15:381 hour, 15 minutes, 38 secondsborder dash color, box dash shadow. And we have second
1:15:461 hour, 15 minutes, 46 secondsvalue as input styles. That's going to be theme in there. Then we have focus ring styles.
1:15:541 hour, 15 minutes, 54 secondsThat's going to be theme in there as well. And then we have on disabled. This is going to be cursor not allowed. There
1:16:021 hour, 16 minutes, 2 secondswe go. And we have disabled opacity 50.
1:16:071 hour, 16 minutes, 7 secondsAnd finally we have this class name. And we are making sure that the spread operator is here as well.
1:16:191 hour, 16 minutes, 19 secondsAll right. And with that this text area is done. And let me show you that here.
1:16:271 hour, 16 minutes, 27 secondsLet's say this is for actually let's say full name.
1:16:351 hour, 16 minutes, 35 secondsAnd then here I'm going to say we have text area.
1:16:411 hour, 16 minutes, 41 secondsSo here I'm going to say placeholder and that's going to be let's say
1:16:471 hour, 16 minutes, 47 secondsuh bio I'm just going to use that and we have some issue that is text area cannot
1:16:531 hour, 16 minutes, 53 secondsbe used as a JSX component where are we using that
1:17:011 hour, 17 minutes, 1 secondcontainer then we have input which is ending here okay
1:17:091 hour, 17 minutes, 9 secondshold on. Oh, I got it. Because we did not use the return here. That's why.
1:17:181 hour, 17 minutes, 18 secondsThere you go. Let me save that. And whatever the issue is, there you go.
1:17:261 hour, 17 minutes, 26 secondsThat's been resolved. Save it. Save everything here. And we do have the bio here. Awesome. So, Ali Mortza and
1:17:371 hour, 17 minutes, 37 secondsweb developer. Awesome. So this is perfect. So the text area is done. And
1:17:431 hour, 17 minutes, 43 secondsnow the next component that we need to make that is going to be a badge. All
1:17:501 hour, 17 minutes, 50 secondsright. I'm going to close input also text area. I'm going to go here and under UI new file. This is going to be batch.tsx.
1:18:031 hour, 18 minutes, 3 secondsAnd here I'm going to need U import type
1:18:111 hour, 18 minutes, 11 secondsUI theme. There you go. And let me put that there. And then next thing we need is badge variant styles.
1:18:221 hour, 18 minutes, 22 secondsAlso I'm going to need CN. Awesome. Now here we have type
1:18:291 hour, 18 minutes, 29 secondsbadge variant is equal to default or orange
1:18:381 hour, 18 minutes, 38 secondsor we have muted or we have success
1:18:451 hour, 18 minutes, 45 secondsor it's going to be info. Awesome. Now here type badge props is equal to this
1:18:551 hour, 18 minutes, 55 secondswhere we have children which is going to be react dot react node. Then we have
1:19:031 hour, 19 minutes, 3 secondsvariant which is optional and it's going to be badge variant. There you go. We
1:19:101 hour, 19 minutes, 10 secondsalso have class name optional and string theme optional and UI theme. Awesome.
1:19:201 hour, 19 minutes, 20 secondsLet's export function badge. And in this one, we're going to
1:19:271 hour, 19 minutes, 27 secondssay children. We next need is variant which is going to be default by default.
1:19:371 hour, 19 minutes, 37 secondsThen we have class name. We also have theme which is going to be light by
1:19:441 hour, 19 minutes, 44 secondsdefault. And it's all as type of batch props. Run that. Now here we have
1:19:511 hour, 19 minutes, 51 secondsreturn first of all. Let's write that so we don't forget that for this one. And then we have a span tag. In the span I'm
1:19:591 hour, 19 minutes, 59 secondsgoing to give it a class name which is going to be CN. Let's open that. And here we have inline dash flex items dash
1:20:081 hour, 20 minutes, 8 secondscenter rounded full and px 2.5 py0.5
1:20:151 hour, 20 minutes, 15 secondsand then we have text xs then we have font dash medium and then after that I'm
1:20:231 hour, 20 minutes, 23 secondsgoing to say batch variant styles I'm going to use actually hold on that I'm
1:20:291 hour, 20 minutes, 29 secondsgoing to use variant and then we have theme. Awesome. Then we have class name
1:20:371 hour, 20 minutes, 37 secondshere. Fantastic. And in this span here, I'm going to say
1:20:461 hour, 20 minutes, 46 secondschildren. Let's save everything. Let's go back here and right after this text
1:20:531 hour, 20 minutes, 53 secondsarea, let's try that. So we have batch and that's going to be let's say uh I
1:21:021 hour, 21 minutes, 2 secondswrite like I don't know like react maybe save that we have this
1:21:091 hour, 21 minutes, 9 secondslittle batch and what if we yeah let's actually do a div
1:21:171 hour, 21 minutes, 17 secondsinside that div we have a batch and I'm going to say
1:21:231 hour, 21 minutes, 23 secondsreact js s save everything that's there and I'm going to give it a class name
1:21:311 hour, 21 minutes, 31 secondsmargin uh margin yaxis 2. So okay and then here we have on the batch I can
1:21:401 hour, 21 minutes, 40 secondsdefine the variant and I'm going to say info there you go a little bit text changed
1:21:491 hour, 21 minutes, 49 secondsor I can say what options do we have default orange muted success if I say
1:21:571 hour, 21 minutes, 57 secondssuccess save it and there you go the the color has been changed perfect right now the next component that we need to work
1:22:051 hour, 22 minutes, 5 secondson is the toast here. You know, you see like like a notice, a notification or something on the bottom. Some websites
1:22:131 hour, 22 minutes, 13 secondsshow it here like on this area. Some websites show it here on this area. Some even show it here on
1:22:201 hour, 22 minutes, 20 secondsthis top right corner as well. So that is exactly what we're going to do now.
1:22:261 hour, 22 minutes, 26 secondsSo I'm going to go to this our explorer and I'm going to go to UI. In the UI, create a new file that's going to be toast.tsx.
Chapter 8: Toast provider + root layout
1:22:401 hour, 22 minutes, 40 secondsAnd here we have first of all make sure it is a client component. Then I'm going
1:22:451 hour, 22 minutes, 45 secondsto import let's say create context from react. Then I'm going to need
1:22:561 hour, 22 minutes, 56 secondsuse call back. Then I'm going to need use context. And then I need use effect.
1:23:061 hour, 23 minutes, 6 secondsAnd then I'm going to need use ref and use state. There you go. Awesome. Let me
1:23:131 hour, 23 minutes, 13 secondsformat that. Now here I'm going to need CN as well.
1:23:191 hour, 23 minutes, 19 secondsAnd I'm going to say type toast type is equal to
1:23:271 hour, 23 minutes, 27 secondseither success or it's going to be error. Awesome.
1:23:331 hour, 23 minutes, 33 secondsType toast item is equal to this where we have ID which is going to be a
1:23:401 hour, 23 minutes, 40 secondsnumber. Then we have message as a string and type as a toast type. Awesome. Here
1:23:491 hour, 23 minutes, 49 secondswe have type toast options is equal to
1:23:551 hour, 23 minutes, 55 secondsthis where we have message as a string and type is going to be a toast type.
1:24:041 hour, 24 minutes, 4 secondsThere you go.
1:24:061 hour, 24 minutes, 6 secondstype toss context value is going to be equal to this where we have toss first of all
1:24:161 hour, 24 minutes, 16 secondswhich is going to be a function which is going to take options and that is going to be tossed options there you go and
1:24:251 hour, 24 minutes, 25 secondsit's not going to return anything as it's a void then we have
1:24:321 hour, 24 minutes, 32 secondssuccess which is going to be message and it's going to be string.
1:24:401 hour, 24 minutes, 40 secondsIt's a void as well. We also have error.
1:24:441 hour, 24 minutes, 44 secondsWe have message string and void. Now here, let me pull that up.
1:24:531 hour, 24 minutes, 53 secondsAnd here we have const toast context is equal to create context.
1:25:021 hour, 25 minutes, 2 secondsAnd here I'm going to say toast context value or null simply. And by default initially it's going to be null. There you go.
1:25:141 hour, 25 minutes, 14 secondsSaving everything. Here we have const.
1:25:181 hour, 25 minutes, 18 secondsI'm going to say toast duration_ms is equal to 2800.
1:25:281 hour, 25 minutes, 28 secondsThere you go.
1:25:301 hour, 25 minutes, 30 secondsAnd here we have export function toast
1:25:371 hour, 25 minutes, 37 secondsprovider and we have children and I'm going to say here
1:25:451 hour, 25 minutes, 45 secondschildren is going to be a type of react dot
1:25:521 hour, 25 minutes, 52 secondsreact node. Awesome. Let's open that function. Let me format everything.
1:25:581 hour, 25 minutes, 58 secondsThere you go. And here we have const item and set item is equal to use state.
1:26:091 hour, 26 minutes, 9 secondsThis is going to be toast item or null and gets initiated by null of course.
1:26:181 hour, 26 minutes, 18 secondsAnd then we have const time timer reference
1:26:251 hour, 26 minutes, 25 secondsequal to use ref. This is going to be a number or null and of course gets
1:26:341 hour, 26 minutes, 34 secondsinitiated by null as well. Then we have here const I'm going to say
1:26:401 hour, 26 minutes, 40 secondsdismiss is equal to use call back and in that is going to be call back
1:26:481 hour, 26 minutes, 48 secondsfunction in there itself. Open that. And we have set item null. And then we have
1:26:561 hour, 26 minutes, 56 secondsif timer reference dot current is true then
1:27:031 hour, 27 minutes, 3 secondswindow dot clear time out and we go for timer reference dot current and timer
1:27:131 hour, 27 minutes, 13 secondsreference dot current. We set that to null once our uh purpose is met. And
1:27:201 hour, 27 minutes, 20 secondsthen of course we need to give it the second parameter which is empty array here. Awesome. Now here after that we're
1:27:281 hour, 27 minutes, 28 secondsgoing for const toast is equal to use call back
1:27:351 hour, 27 minutes, 35 secondsand I'm going to go for another function in there.
1:27:411 hour, 27 minutes, 41 secondsI'm going to pull that up. And here we have a few things. So first of all we have a message. Then we have a type
1:27:511 hour, 27 minutes, 51 secondswhich is going to be success by default.
1:27:561 hour, 27 minutes, 56 secondsAnd this whole thing is going to be a type of toss options. There you go. And
1:28:031 hour, 28 minutes, 3 secondswe are in this function. Awesome. So now here I'm going to say if
1:28:101 hour, 28 minutes, 10 secondstimer reference dot current exists then we're going to say window dot clear time out.
1:28:201 hour, 28 minutes, 20 secondsThere you go. And this is going to be timer reference dot current. Awesome. a
1:28:271 hour, 28 minutes, 27 secondsformat get down here and I'm going to say set
1:28:341 hour, 28 minutes, 34 secondsitem and then this is going to be ID is going to be date dot now then we
1:28:441 hour, 28 minutes, 44 secondshave message then we have type there you go I'm going to say timer reference dot
1:28:531 hour, 28 minutes, 53 secondscurrent is equal to window dot set time out.
1:29:001 hour, 29 minutesOpen that. And here we have dismiss and also toss duration ms. Awesome. And now
1:29:081 hour, 29 minutes, 8 secondshere under that I'm going to say as a second value I'm going to say dismiss.
1:29:161 hour, 29 minutes, 16 secondsFantastic.
1:29:191 hour, 29 minutes, 19 secondsLet me format everything and save everything. Now let me get under this toast function.
1:29:261 hour, 29 minutes, 26 secondsAnd now here I'm going to say const success is equal to use call back. And here we have this option uh function.
1:29:391 hour, 29 minutes, 39 secondsOpen that. And this call back is going to have message which is going to be a string.
1:29:471 hour, 29 minutes, 47 secondsThere you go. And we're going to say in this let me actually get rid of this thing
1:29:551 hour, 29 minutes, 55 secondshere as we can go directly. So I'm going to bring it down here and we can say
1:30:021 hour, 30 minutes, 2 secondstoast and message also type is going to be success and
1:30:111 hour, 30 minutes, 11 secondsthen second value here it goes toast. Awesome. Let me format that. So
1:30:191 hour, 30 minutes, 19 secondsbasically we are omitting curly braces as we are returning directly. And now under this success here I'm going to say
1:30:271 hour, 30 minutes, 27 secondsconst error is equal to use call back and that's going to take a message which
1:30:341 hour, 30 minutes, 34 secondsis going to be a string. Hold on hold on hold on. There you go. Something like that. Now this is going to hold a message which is going to be a string.
1:30:471 hour, 30 minutes, 47 secondsAnd then this is going to do toast as well. So we have toast and this is going to be
1:30:551 hour, 30 minutes, 55 secondsmessage and type for this one is going to be error. There you go. And as a second value
1:31:031 hour, 31 minutes, 3 secondswe have toast. Awesome.
1:31:091 hour, 31 minutes, 9 secondsLet me format everything and save everything. Fantastic. And now after that here I'm going to make sure that we
1:31:171 hour, 31 minutes, 17 secondshave use effect and for that we are doing dismiss and as
1:31:251 hour, 31 minutes, 25 secondsa second value we have dismiss here as well. That's pretty much it. I'm going
1:31:311 hour, 31 minutes, 31 secondsto save it. And now under that here we have return.
1:31:371 hour, 31 minutes, 37 secondsIn the return, I'm going to say toast context dot provider.
1:31:471 hour, 31 minutes, 47 secondsThere you go. Open that. And in there, we need a value. And that value here is going to be toast,
1:31:561 hour, 31 minutes, 56 secondsthen success, and then error. Fantastic.
1:32:011 hour, 32 minutes, 1 secondPull that up. And here first of all, we have children. Then after the children, I'm going to make sure if we have an
1:32:091 hour, 32 minutes, 9 secondsitem, then we're doing this. Otherwise, we're doing this. And in the case of true, I'm going to create a div. I'm
1:32:171 hour, 32 minutes, 17 secondsgoing to give it a class name, which is going to be pointer dashvents-
1:32:241 hour, 32 minutes, 24 secondsnone. There you go. Then we have fixed bottom is going to be six. Left one /
1:32:311 hour, 32 minutes, 31 secondstwo in the bottom center basically. Then we have Z dash 100. Hold on. 100. Just
1:32:401 hour, 32 minutes, 40 secondslike that. And just just want to make sure that it's on top of everything.
1:32:441 hour, 32 minutes, 44 secondsThen we have minus translate x1 /2. Just want to make sure that it is really in the center. px4.
1:32:531 hour, 32 minutes, 53 secondsAwesome. Now open that div. And before we do anything with that div, we going to make sure that its role is status.
1:33:031 hour, 33 minutes, 3 secondsThen we have area live which is going to be polite. And then actually yeah let me
1:33:111 hour, 33 minutes, 11 secondsformat everything. And now in here we need another div. So that div
1:33:191 hour, 33 minutes, 19 secondsactually do you know what? Let me create a p tag here something. There you go.
1:33:261 hour, 33 minutes, 26 secondsNow that printed error is gone. And now in that div I'm going to open that up here. And we have a class name. I'm
1:33:341 hour, 33 minutes, 34 secondsgoing to use CN for this one. Open that up. Here we have toast dash enter.
1:33:431 hour, 33 minutes, 43 secondsThere you go. Then we have flex items dash center. We have gap 2.5
1:33:511 hour, 33 minutes, 51 secondsrounded full. And then we have border px4.
1:33:571 hour, 33 minutes, 57 secondsThen we have py 2.5. And then we have shadow.
1:34:031 hour, 34 minutes, 3 secondsAnd I'm going to use a custom value for that which is going to be 0 12px
1:34:111 hour, 34 minutes, 11 seconds40px underscore rgba. We have 0 comma 0 comma 0 comma 0.35.
1:34:221 hour, 34 minutes, 22 secondsThere you go. Then here we have back blur small. Awesome. Comma. get down
1:34:301 hour, 34 minutes, 30 secondshere and we have we're going to say if item dot type is equal to success
1:34:391 hour, 34 minutes, 39 secondsonly then we are displaying border dash app dash
1:34:471 hour, 34 minutes, 47 secondsdash border there you go and we have bg-app dash surface and then we have
1:34:541 hour, 34 minutes, 54 secondstext- app-ext awesome And in case of false, this is going to be
1:35:021 hour, 35 minutes, 2 secondsborder replet orange slash hold on dash replet orange slash30.
1:35:121 hour, 35 minutes, 12 secondsThere you go. And then we have bg-ab- surface
1:35:181 hour, 35 minutes, 18 secondstext- dash text. Fantastic. Let me format everything and save everything.
1:35:251 hour, 35 minutes, 25 secondsAnd then under here inside that div here I'm going to create a span I'm going to
1:35:321 hour, 35 minutes, 32 secondssay class name CN and that CN is going to be height-
1:35:391 hour, 35 minutes, 39 seconds1.5 1.5 and then we have width
1:35:461 hour, 35 minutes, 46 seconds1.5 and we have shrink zero and rounded dash full awesome comma get down item
1:35:561 hour, 35 minutes, 56 secondsdot type is equal to success.
1:36:011 hour, 36 minutes, 1 secondThen we have bg dash emerald it's going to be bg dash emerald it's going to be 400.
1:36:141 hour, 36 minutes, 14 secondsThen in case of false this is going to be bg-re.
1:36:211 hour, 36 minutes, 21 secondsThere you go. Let me format. Awesome.
1:36:241 hour, 36 minutes, 24 secondsThere is one more thing that I'm going to give this and that is going to be area dash hidden is going to be
1:36:341 hour, 36 minutes, 34 secondstrue. And now in that span actually actually since uh that is going to be
1:36:411 hour, 36 minutes, 41 secondsused as a dot. Yeah. So there's no need for the closing span. We can make it self-closing. And then under that we
1:36:491 hour, 36 minutes, 49 secondsneed a p tag. I'm going to give it a class name text dash small. And then this is going to be item dot message.
1:36:591 hour, 36 minutes, 59 secondsAll right. I think that's pretty much it. And then in the case of this in the case of false like when the item does
1:37:071 hour, 37 minutes, 7 secondsnot exist in that case this is going to say simply
1:37:151 hour, 37 minutes, 15 secondsnull. There you go. And now here under I'm going to say export function use toast.
1:37:251 hour, 37 minutes, 25 secondsAnd we are going to make sure that we have const context is equal to use
1:37:331 hour, 37 minutes, 33 secondscontext. And I'm going to use toast context in there. There you go. So if
1:37:411 hour, 37 minutes, 41 secondscontext is not true then we have throw new error which is
1:37:491 hour, 37 minutes, 49 secondsgoing to be use toast must be used within
1:37:551 hour, 37 minutes, 55 secondstoast provider and then under there here we have return
1:38:031 hour, 38 minutes, 3 secondscontext. Awesome. And now it is time for us to make sure that we display the toast and test it out on this web page.
1:38:131 hour, 38 minutes, 13 secondsI'm going to close this file and also the badge and I'm going to open the explorer. And in here under components
1:38:221 hour, 38 minutes, 22 secondsI'm going to create a new folder that's going to be root sorry not folder but file root dash providers.tsx.
1:38:341 hour, 38 minutes, 34 secondsSimple.
1:38:351 hour, 38 minutes, 35 secondsAnd let's create that. Make sure it's a client component.
1:38:401 hour, 38 minutes, 40 secondsAnd then we have toast provider. Let's import that.
1:38:471 hour, 38 minutes, 47 secondsAnd then we have export function root providers.
1:38:551 hour, 38 minutes, 55 secondsAnd here we have children.
1:38:591 hour, 38 minutes, 59 secondsAnd that's going to be a type of children
1:39:071 hour, 39 minutes, 7 secondswhich is going to be react dot react node. And let's open that. And here we have
1:39:151 hour, 39 minutes, 15 secondsreturn toast provider and we have a children in there. Awesome. That's pretty much it.
1:39:261 hour, 39 minutes, 26 secondsNow I'm going to close this one and let's go to our layout.tsx file and it is time for us to test the toast. So
1:39:361 hour, 39 minutes, 36 secondsfirst of all we do not need this these two font families. Let's get rid of that.
1:39:421 hour, 39 minutes, 42 secondsBoth of these from here as well and also from here
1:39:491 hour, 39 minutes, 49 secondsas well. Let me make sure that it's gone.
1:39:561 hour, 39 minutes, 56 secondsheight dash full. Let's actually make sure the entire class name is gone. Let me format.
1:40:051 hour, 40 minutes, 5 secondsAwesome. And now let's actually yeah let's actually bring that host first and then we can later
1:40:121 hour, 40 minutes, 12 secondsupdate the metadata. So here we have root providers. There you go. And now we need
1:40:211 hour, 40 minutes, 21 secondsto use this root providers in there. So in the body, I'm going to bring it down here and here. And here we have root providers.
1:40:321 hour, 40 minutes, 32 secondsAnd there you go. Let me format that and save that. And now make sure that the title
1:40:401 hour, 40 minutes, 40 secondschanges to replet dash build apps
1:40:471 hour, 40 minutes, 47 secondsand sites with AI. Awesome. Then the description here changes to
1:40:561 hour, 40 minutes, 56 secondsturn ideas into apps in minutes.
1:41:021 hour, 41 minutes, 2 secondsReplet agent writes production ready code
1:41:101 hour, 41 minutes, 10 secondsevolves it and stays out of your way. There you go.
1:41:191 hour, 41 minutes, 19 secondsThen here under there I'm going to say open graph and that's going to be
1:41:271 hour, 41 minutes, 27 secondstitle and we go for let's copy that
1:41:341 hour, 41 minutes, 34 secondsthere. Then we have next description. I'm going to say turn ideas
1:41:411 hour, 41 minutes, 41 secondsinto apps in minutes. No coding
1:41:471 hour, 41 minutes, 47 secondsneeded. Awesome. And then under that we have a type. This is going to be a
1:41:541 hour, 41 minutes, 54 secondswebsite. Awesome. So the open graph is done. And this thing is done as well.
1:42:011 hour, 42 minutes, 1 secondI'm going to make sure that we have this class name height dash full and niest
1:42:081 hour, 42 minutes, 8 secondshere as well. Let me format and save everything.
1:42:131 hour, 42 minutes, 13 secondsAll right, let's test that out. And let's go to the page.tsx file. In here, I'm going to first of all bring our use
1:42:211 hour, 42 minutes, 21 secondstoast hook that we just created. And then I'm going to go to this button just to test it out. I'm going to get rid of
1:42:291 hour, 42 minutes, 29 secondsthis href from here. And here actually I'm going to need to use const. I'm
1:42:361 hour, 42 minutes, 36 secondsgoing to need to extract those. So I'm going to need success also
1:42:431 hour, 42 minutes, 43 secondserror and also toast is equal to use toast. There you go. And
1:42:511 hour, 42 minutes, 51 secondsthen I'm going to need that success. So for that I'm going to go here button on
1:42:571 hour, 42 minutes, 57 secondsclick and this is going to go for the success here. And I'm going to say well
1:43:051 hour, 43 minutes, 5 secondsfor this one I'm going to say uh testing.
1:43:131 hour, 43 minutes, 13 secondsAll right.
1:43:141 hour, 43 minutes, 14 secondsAnd of course we have an issue. Okay. So of course we are basically trying to use a client component on the server one.
1:43:261 hour, 43 minutes, 26 secondsThat's what it says. So first of all, just for the sake of testing, I'm going to get here and I'm going to say use client.
1:43:351 hour, 43 minutes, 35 secondsThere you go. That error is gone. And now if I click on click here, testing, it's a success. Fantastic. And if I say error here, testing, click on that.
1:43:481 hour, 43 minutes, 48 secondsThat's red dot. Testing error. Awesome.
1:43:511 hour, 43 minutes, 51 secondsSo this thing is working. Fantastic. All right. I'm going to close this file and I'm going to open this one. And here
Chapter 9: Replit logo + chevron icon
1:44:001 hour, 44 minutesunder components UI create a new file that is going to be replet.tsx.
1:44:091 hour, 44 minutes, 9 secondsThere you go. And here we have CN.
1:44:131 hour, 44 minutes, 13 secondsThat's what we're going to import. Type is going to be replet logo props.
1:44:221 hour, 44 minutes, 22 secondsAnd I'm going to open that. Here we have a class name. This is going to be string. Then we have size optional.
1:44:341 hour, 44 minutes, 34 secondsAnd this is either going to be default or it's going to be compact. Awesome.
1:44:411 hour, 44 minutes, 41 secondsHere we have const size styles is equal to this where we have
1:44:511 hour, 44 minutes, 51 secondsdefault and for that we have h dash 35 pixel
1:44:591 hour, 44 minutes, 59 secondsand we have width dash auto and then we have compact and
1:45:071 hour, 45 minutes, 7 secondsthat's going to be height dash X and width dash auto. Awesome.
1:45:161 hour, 45 minutes, 16 secondsNow here we have export function replete logo and this is going to be
1:45:251 hour, 45 minutes, 25 secondsclass name. Then we have size which is going to be default by default and this
1:45:321 hour, 45 minutes, 32 secondsall is going to be a type of replet logo props. Let's open that function. And here we have return. Let me make sure
1:45:411 hour, 45 minutes, 41 secondsthat everything is formatted. And then in here, I'm going to paste that SVG that you can find in the description
1:45:501 hour, 45 minutes, 50 secondswhere I have rep link basically. So I'm going to paste that here. Awesome. So let me format everything. Save
1:45:581 hour, 45 minutes, 58 secondseverything. And that replet logo is done. Let me get back here. And here I'm going to say replet logo.
1:46:081 hour, 46 minutes, 8 secondsSave that. And there you go. We have our replete logo. Fantastic. I'm going to go to the file explorer here once again.
1:46:161 hour, 46 minutes, 16 secondsI'm going to create a new component.
1:46:201 hour, 46 minutes, 20 secondsVery small one. So, it's going to be a chevron dash icon. TSX.
1:46:271 hour, 46 minutes, 27 secondsThere you go. And here we have type chevron
1:46:341 hour, 46 minutes, 34 secondsicon props is equal to this. Here we have direction left.
1:46:421 hour, 46 minutes, 42 secondsThen we have right, we have down
1:46:501 hour, 46 minutes, 50 secondsand we have up. Awesome. Then we have size which is optional and going to be a
1:46:571 hour, 46 minutes, 57 secondsnumber. Then we have a class name optional and it's going to be a string.
1:47:031 hour, 47 minutes, 3 secondsHere we have export function chevron icon. I'm going to open that.
1:47:101 hour, 47 minutes, 10 secondsHere we have direction. Then we have size which is going to be 16 by default and class name
1:47:201 hour, 47 minutes, 20 secondshere. And this is going to be a type of chevron icon props. Open that function.
1:47:251 hour, 47 minutes, 25 secondsI'm going to return and I'm going to paste that SVG that of course you have in the repo.
1:47:331 hour, 47 minutes, 33 secondsAnd of course link to that is available in the description. So I'm going to paste that here.
1:47:411 hour, 47 minutes, 41 secondsAnd in there basically we have this direction. And in the SVG itself once this SVJ is done and for doing the path
1:47:501 hour, 47 minutes, 50 secondsI have basically uh this condition that when the direction is right then it's going to do
1:47:571 hour, 47 minutes, 57 secondsthis but if the direction is down it's going to use this path and of course this D is basically is the drawing of
1:48:061 hour, 48 minutes, 6 secondsthat SVG it's uh going to be a different uh sort of icon on I mean it's going to
1:48:151 hour, 48 minutes, 15 secondsface down and then face up here and of course um this changes and of course
1:48:211 hour, 48 minutes, 21 secondsthis one is the default. So here, let me format everything and save everything
1:48:271 hour, 48 minutes, 27 secondshere just to test it out. Here under this input,
1:48:351 hour, 48 minutes, 35 secondsI'm going to say chevron icon and I can say direction up here for example. Let's save that. There you go.
1:48:471 hour, 48 minutes, 47 secondsAnd if I say down, there you go. And if I say left, you can see that. And for
1:48:541 hour, 48 minutes, 54 secondsthe right that changes. So this is just this simple component this icon that we have created a component for. All right.
1:49:051 hour, 49 minutes, 5 secondsSo now we have been working on so far we have been working on the smaller icons.
1:49:111 hour, 49 minutes, 11 secondsSo we could because these are kind of components that are going to be used throughout the application in a lot of
1:49:181 hour, 49 minutes, 18 secondsdifferent places. So we had to build this. But now we need to get started working on the header of our app. And for the header, we need the types first.
Chapter 10: Types + Navbar shell
1:49:311 hour, 49 minutes, 31 secondsSo what I would like to do now is I would like to get started on the type.
1:49:351 hour, 49 minutes, 35 secondsSo let's do that. So under the lip folder, I'm going to create a new file. I'm going to name it types.ts.
1:49:451 hour, 49 minutes, 45 secondsAwesome. Now here basically this is going to be a shared typescript file for all of the types that we're going to use for the replete landing page.
1:49:571 hour, 49 minutes, 57 secondsSo here we have export type nav link which is going to be equal to
1:50:041 hour, 50 minutes, 4 secondswe have a label which is going to be a string and we have href that's also
1:50:091 hour, 50 minutes, 9 secondsgoing to be a string then we have accent which is going to be optional and
1:50:181 hour, 50 minutes, 18 secondsboolean and then we have description optional and string.
1:50:261 hour, 50 minutes, 26 secondsFantastic. After that here we have type nav subsection.
1:50:321 hour, 50 minutes, 32 secondsThat's basically that nested links under the mobile accordion section. So nav
1:50:381 hour, 50 minutes, 38 secondssubsection is going to be equal to this where we have title it's going to be a
1:50:451 hour, 50 minutes, 45 secondsstring and links it's going to be a nav link. Awesome. This nav link basically array of that.
1:50:541 hour, 50 minutes, 54 secondsThen we have export type is going to be
1:51:011 hour, 51 minutes, 1 secondnav group is equal to this where we have title string
1:51:081 hour, 51 minutes, 8 secondslinks optional is going to be nav link array then we have sub
1:51:171 hour, 51 minutes, 17 secondssubsections and this is going to be nav subsections array. Awesome. Under that
1:51:251 hour, 51 minutes, 25 secondswe need export type project category and this is going to be a ID which is
1:51:341 hour, 51 minutes, 34 secondsgoing to be string label string. Then we have icon which is going to be either
1:51:431 hour, 51 minutes, 43 secondswebsite or mobile or we have design
1:51:521 hour, 51 minutes, 52 secondsor we have slides animation
1:52:011 hour, 52 minutes, 1 seconddata game document
1:52:081 hour, 52 minutes, 8 secondsfor spreadsheet.
1:52:121 hour, 52 minutes, 12 secondsThere you go. Now here I'm going to say export type agent feature is equal to ID string.
1:52:251 hour, 52 minutes, 25 secondsI pro is also going to be string.
1:52:291 hour, 52 minutes, 29 secondsThen we have title string.
1:52:341 hour, 52 minutes, 34 secondsdescription, string, and then we have variant. And that's going to be a canvas
1:52:441 hour, 52 minutes, 44 secondsor parallel or
1:52:531 hour, 52 minutes, 53 secondsor it's going to be RT effects or it's going to be teams. There you go.
1:53:031 hour, 53 minutes, 3 secondsThen under that here, let me pull that up. And here it's going to be export type
1:53:111 hour, 53 minutes, 11 secondsplatform feature is equal to this where we have ID string.
1:53:201 hour, 53 minutes, 20 secondsI bro is going to be also string. Title is going to be string as well.
1:53:291 hour, 53 minutes, 29 secondsDescription string. And we have variant which is going to be agent
1:53:381 hour, 53 minutes, 38 secondsor infrastructure or integrations
1:53:461 hour, 53 minutes, 46 secondsor enterprise. Let me format get down here.
1:53:531 hour, 53 minutes, 53 secondsAnd here we have export type testimonial is equal to this where we
1:54:001 hour, 54 minuteshave ID string code is also string then we have author
1:54:081 hour, 54 minutes, 8 secondsthat's going to be string ro string company
1:54:151 hour, 54 minutes, 15 secondsstring and avatar URL is going to be string as well. Awesome. Then here we
1:54:231 hour, 54 minutes, 23 secondshave export type pricing
1:54:301 hour, 54 minutes, 30 secondsplan is equal to this ID string name also string
1:54:401 hour, 54 minutes, 40 secondsdescription is going to be string and then we have monthly price is going to be either number or null.
1:54:511 hour, 54 minutes, 51 secondsYearly price I'm going to say number or null. And then we have original price.
1:54:591 hour, 54 minutes, 59 secondsIt's going to be well that's optional and that's going to be a number.
1:55:061 hour, 55 minutes, 6 secondsOriginal price. Yeah. Okay. Then we have CDA label string.
1:55:141 hour, 55 minutes, 14 secondsCDA href string. We have features array of strings. Awesome. Then after
1:55:231 hour, 55 minutes, 23 secondsthat here we have export type billing period is going to be equal to either
1:55:311 hour, 55 minutes, 31 secondsmonthly or yearly. Awesome. I'm going to pull that
1:55:391 hour, 55 minutes, 39 secondsup. And here we have export type example
1:55:461 hour, 55 minutes, 46 secondsprompt is equal to this where we have label string and text is going to be string as
1:55:561 hour, 55 minutes, 56 secondswell. Awesome. So with that our complete to types are done for the landing page
1:56:031 hour, 56 minutes, 3 secondsand we can close that file and that file and now we can get started on the next
1:56:101 hour, 56 minutes, 10 secondsone which is the data basically that is going to be used to pull on the homepage
1:56:181 hour, 56 minutes, 18 secondsbasically. So what I'm I'm going to give you that data file because that's just some static data that's been put there
1:56:271 hour, 56 minutes, 27 secondsand that can be used. So what I'm going to do is in the lip folder I'm going to create a new file that is going to be
1:56:371 hour, 56 minutes, 37 secondslanding dash data.ts and I'm going to paste that code here.
1:56:451 hour, 56 minutes, 45 secondsSo, as you guys can see here, we have a few issues. Let me check. Let me pull
1:56:531 hour, 56 minutes, 53 secondsthat up. Type artifacts is not assignable. Okay. Variant artifacts.
1:57:031 hour, 57 minutes, 3 secondsSeems like we have an issue with here. So, I'm going to search for R.
1:57:141 hour, 57 minutes, 14 secondsYes, RT facts. Awesome. That's been resolved and that's been resolved as well. So, basically this is just some data.
1:57:251 hour, 57 minutes, 25 secondsLet me make it full screen here. This is just some data some uh we are pulling all of the types that we just created in
1:57:341 hour, 57 minutes, 34 secondsthe types file. And then here we have our nav links, our nav group where we have title then links for that and then
1:57:431 hour, 57 minutes, 43 secondswe have subsections then title and links for each each and then here we have project categories. Basically this is
1:57:501 hour, 57 minutes, 50 secondsthe data example prompt sets. There you go. And uh avatar base image here it is.
1:57:591 hour, 57 minutes, 59 secondsAnd if I keep going down platform features and basically the entire copy that you
1:58:071 hour, 58 minutes, 7 secondssee on the landing page of um that replet website that's been put there and
1:58:141 hour, 58 minutes, 14 secondsuh this is going to be used as we're going to pull our data from this file in order to display that on our landing
1:58:211 hour, 58 minutes, 21 secondspage. So, the next file that I'm going to need to work on is, let me make it to the side here. The next file that we're going to need to work on is the navbar.
1:58:331 hour, 58 minutes, 33 secondsSo, let's get started and let's get rid of this everything and make sure we have a nice looking navbar.
1:58:401 hour, 58 minutes, 40 secondsLet's get started. So, I'm going to go components, create a new folder here. We have layout and I'm going to create a
1:58:501 hour, 58 minutes, 50 secondsnavbar.tsx. tsx file there and here we have first of all it's a
1:58:561 hour, 58 minutes, 56 secondsclient component make sure of that then we have use effect from react and use
1:59:051 hour, 59 minutes, 5 secondsstate from react then we have header container from our container and we also
1:59:141 hour, 59 minutes, 14 secondshave replet logo our our component that we created and of course We have nav
1:59:221 hour, 59 minutes, 22 secondsgroups from our landing data and also top nav links from our landing data.
1:59:291 hour, 59 minutes, 29 secondsThen here we have import type and we're going to need to make sure that we have nav group also nav link. There you go.
1:59:421 hour, 59 minutes, 42 secondsAnd we have CN as well of course. All right. Now here I'm going to go for export function navbar and open that.
1:59:521 hour, 59 minutes, 52 secondsHere we have first of all I'm going to say initial user is equal to null. I'm
2:00:002 hoursjust going to get started by that and this is all thing is going to be
2:00:082 hours, 8 secondsactually you know what let's open that function here now. So initial user is by default null but that is going to be equal to the oav user once we have that.
2:00:202 hours, 20 secondsSo that is not available there yet. So here we have const
2:00:272 hours, 27 secondsopen menu and set open menu is equal to use state and that is going to be either
2:00:362 hours, 36 secondsa string or null. There you go.
2:00:412 hours, 41 secondsstring or null and that gets initiated by null. Awesome. Let me format that.
2:00:492 hours, 49 secondsLet's get down const and this is going to be mobile open and set mobile open is
2:00:572 hours, 57 secondsequal to use state which is going to be false. Awesome. Here we have return
2:01:042 hours, 1 minute, 4 secondsand in there I have a header first of all. So in the header I'm going to give it a class name of sticky top zero and
2:01:152 hours, 1 minute, 15 secondsZ50 and then BG header BG header. There you go. Now let me use
2:01:242 hours, 1 minute, 24 secondsthis here. So I'm going to get rid of everything.
2:01:312 hours, 1 minute, 31 secondsAnd in here we have a nav bar. There you go. Awesome.
2:01:392 hours, 1 minute, 39 secondsthat can go. Don't need that here. That and basically everything can go because
2:01:462 hours, 1 minute, 46 secondsthat testing is done. And then we have navbar here. That is exactly what we're going to display here now. So in the
2:01:552 hours, 1 minute, 55 secondsheader this here first of all here we have a header container.
2:02:022 hours, 2 minutes, 2 secondsI'm going to give it a class name flex height dash is going to be 67 pixels.
2:02:092 hours, 2 minutes, 9 secondsWe have items dash center and then after that we have justify dash between
2:02:172 hours, 2 minutes, 17 secondsand on desktop it's going to be height dash 81 pixels. Awesome.
2:02:252 hours, 2 minutes, 25 secondsInside here I have a div. I'm going to give it a class name flex items dash center and we have gap
2:02:342 hours, 2 minutes, 34 secondsof one. Inside the div here we have link and that link basically gets imported
2:02:442 hours, 2 minutes, 44 secondsfrom the next link. There you go. And I'm going to give it a href. So it's going to be a root. Then we have class name margin right dash 2 shrink zero.
2:02:572 hours, 2 minutes, 57 secondsThen we have text secondary. Hold on. Text dash text dash secondary.
2:03:052 hours, 3 minutes, 5 secondsThere you go. And I'm going to say area label is going to be replet.
2:03:122 hours, 3 minutes, 12 secondsAnd inside there I have a replet logo. There you go. Let me format
2:03:192 hours, 3 minutes, 19 secondseverything and save everything. There you go. We have our logo. Now after this link here I'm going to say nav
2:03:292 hours, 3 minutes, 29 secondsand in there I have a class name hidden items dash center desktop flex basically
2:03:372 hours, 3 minutes, 37 secondsit's hidden on mobile and only visible on the desktop then here I'm going to say area label is going to be main
2:03:462 hours, 3 minutes, 46 secondsinside the main here I'm going to go for nav group nav groupoups dot app that is
2:03:542 hours, 3 minutes, 54 secondscoming from this loading data landing data.ts CS file here, the one that we added recently. This is just the mockup
2:04:032 hours, 4 minutes, 3 secondsdata code that we are using. Everything is going to come from here. All right.
2:04:092 hours, 4 minutes, 9 secondsHere on the map, I'm going to assign group to each individual. And here I'm going to open that. Here we have a div
2:04:182 hours, 4 minutes, 18 secondsfor each to which I'm going to give it class name also. Here I'm going to say
2:04:242 hours, 4 minutes, 24 secondskey for this one is going to be group dot title and just to make sure
2:04:332 hours, 4 minutes, 33 secondsthat group if I go to nav groups there you go and we have this title so this is the key and then we're going to make
2:04:412 hours, 4 minutes, 41 secondssure that we have links and for each link we have label and href that is exactly what we are going to do here in
2:04:502 hours, 4 minutes, 50 secondsa minute okay So group title here then class name is going to be relative. Then
2:04:592 hours, 4 minutes, 59 secondswe have on mouse enter. It's going to be this function set
2:05:072 hours, 5 minutes, 7 secondsopen menu is going to be group dot title
2:05:142 hours, 5 minutes, 14 secondsand then after that we have on mouse leave is going to be set open menu is going to be false.
2:05:242 hours, 5 minutes, 24 secondsAll right. Now not false but null. Sorry. Now in here we have button and I'm going to give it
2:05:332 hours, 5 minutes, 33 secondsa type that is going to be button of course. Then we have a class name which
2:05:402 hours, 5 minutes, 40 secondsis going to be CN. I'm going to open that. And we have a first of all nav actually no
2:05:492 hours, 5 minutes, 49 secondsfirst of all we're going to say gab-1 and then we have text dash 13.
2:05:582 hours, 5 minutes, 58 secondspixels. There you go. And then I'm going to put a comma here. And we have open
2:06:062 hours, 6 minutes, 6 secondsmenu. If that is equal to group dot title, then it's going to be
2:06:142 hours, 6 minutes, 14 secondsbg dash this custom value. We have hash ed e c e8. There you go.
2:06:222 hours, 6 minutes, 22 secondsAnd we also have text dash this custom value hashtag 21225.
2:06:312 hours, 6 minutes, 31 secondsAll right, let me save everything.
2:06:342 hours, 6 minutes, 34 secondsAnd now inside actually not inside but here within the button attributes I'm
2:06:412 hours, 6 minutes, 41 secondsgoing to say area expanded is going to be open menu is equal to group dot title.
2:06:522 hours, 6 minutes, 52 secondsIt's a true or false statement. So it's going to be true or false depending on that. Let me format everything.
2:06:592 hours, 6 minutes, 59 secondsLet me bring it down here. And inside there we have group
2:07:052 hours, 7 minutes, 5 secondsdot title. Formatting everything and saving everything here.
2:07:112 hours, 7 minutes, 11 secondsAnd now before I move on to any further stuff, if I save that, of course there
2:07:172 hours, 7 minutes, 17 secondsis nothing yet to see. So what I'm going to do is I need to go to the very top
2:07:262 hours, 7 minutes, 26 secondshere and here I'm going to say const nav coast class is equal to this we have
2:07:342 hours, 7 minutes, 34 secondsflex it then we have items dash center then we
2:07:402 hours, 7 minutes, 40 secondshave rounded- md px- 2 text-ext dash
2:07:472 hours, 7 minutes, 47 secondssecondary and then we We have transition dash colors on hover. It's going to be
2:07:542 hours, 7 minutes, 54 secondsbg dash this custom value ash e7 e3. There you go. Then we have on hover.
2:08:052 hours, 8 minutes, 5 secondsThis is going to be text dash custom value #21225.
2:08:132 hours, 8 minutes, 13 secondsAll right. Let me format that. Get down here. And here we have const nav
2:08:192 hours, 8 minutes, 19 secondsdropdown panel class is equal to rounded
2:08:272 hours, 8 minutes, 27 secondsdash excel. Then we have border. We have border dash this custom value
2:08:352 hours, 8 minutes, 35 secondshashtag e3 e2 dd. Then we have BG dash pricricing dash surface.
2:08:482 hours, 8 minutes, 48 secondsAnd then after that we have P-2 shadow dash custom value where we have
2:08:552 hours, 8 minutes, 55 seconds0_8 px 32px rgba is going to be 0 0 0.12.
2:09:092 hours, 9 minutes, 9 secondsAnd then I'm going to put a comma here.
2:09:112 hours, 9 minutes, 11 secondsI'm going to say 0_2 px_8 px_rgba.
2:09:192 hours, 9 minutes, 19 secondsIt's going to be 0 0 0.08.
2:09:242 hours, 9 minutes, 24 secondsThere you go. Let me format that. Get down here. And this is the last one we
2:09:312 hours, 9 minutes, 31 secondshave. Const nav drop
2:09:382 hours, 9 minutes, 38 secondsdown link class is equal to block white
2:09:442 hours, 9 minutes, 44 secondsspace dash no wrap px dash 3 py-2 text
2:09:522 hours, 9 minutes, 52 secondsdash 14 pixels then we have leading dashn normal
2:10:002 hours, 10 minutesand Then we have text dash this custom where we have two
2:10:072 hours, 10 minutes, 7 seconds#2F 3 03 4.
2:10:152 hours, 10 minutes, 15 secondsThere you go.
2:10:172 hours, 10 minutes, 17 secondsAnd then we have transition dash colors. And on hover it's going to be text dash #21225.
2:10:292 hours, 10 minutes, 29 secondsAwesome. Let me format that. And now let's get down here. And here I'm going
2:10:362 hours, 10 minutes, 36 secondsto say nav coast class. There you go. Awesome.
2:10:452 hours, 10 minutes, 45 secondsAll right. Now, there's one more little icon needed here. So, I'm going to go to the very top here and I'm going to say
2:10:532 hours, 10 minutes, 53 secondsfunction chevron town and I'm going to return from this
2:11:022 hours, 11 minutes, 2 secondsfunction which is going to be this JSX this little code SVG basically for this
2:11:092 hours, 11 minutes, 9 secondschevron down of course that can be found in the GitHub repo link is available in the description.
2:11:152 hours, 11 minutes, 15 secondsSo here now I'm going to get down here once again.
2:11:212 hours, 11 minutes, 21 secondsAnd under here I'm going to say chevron down. There you go. We should see that.
2:11:282 hours, 11 minutes, 28 secondsBut we cannot see that. And the re and the reason for that is the window width.
2:11:332 hours, 11 minutes, 33 secondsSo if I make it 100%. There you go. You get to see this chevron. And also if I click on it, there's nothing right now.
2:11:432 hours, 11 minutes, 43 secondsBut that will change in a minute. But we need to find a way for this to be displayed. And also we get to see the
2:11:532 hours, 11 minutes, 53 secondscode at the same time. So let me try this. So if I go inspect, if I go to this thing here and change
2:12:012 hours, 12 minutes, 1 secondfrom responsive to let's say iPad Pro
2:12:082 hours, 12 minutes, 8 secondsand change this to this, we have 1180
2:12:142 hours, 12 minutes, 14 secondsuh iPad iPad Pro. Yeah, that's going to be I guess 1366. Awesome. So that's there.
2:12:232 hours, 12 minutes, 23 secondsBut let me change this to 100%.
2:12:272 hours, 12 minutes, 27 secondsAnd that way you still get to see the result here. The part that we are working on and we will change this
2:12:352 hours, 12 minutes, 35 secondsdepending on what we need here. So 50% is there 75% is there. All right. So now
2:12:442 hours, 12 minutes, 44 secondshere under this chevron down actually under this button here I'm going to say
2:12:532 hours, 12 minutes, 53 secondsopen menu if that is actually open menu if that is equal to group dot title in
2:13:022 hours, 13 minutes, 2 secondsthat case we're going to display this so this is going to be a div where I have a class of absolute
2:13:102 hours, 13 minutes, 10 secondsleft zero top full then we have Z 50 and then we have PD-1
2:13:182 hours, 13 minutes, 18 secondsand in that div we have another div I'm going to give it a class name for this time I'm going to use CN there you go
2:13:272 hours, 13 minutes, 27 secondsopen that and this one has nav dropdown panel class then we have min dash
2:13:372 hours, 13 minutes, 37 secondsactually hold on width dash max then we have min dash width -nav dash dropdown
2:13:452 hours, 13 minutes, 45 secondsand then here I'm going to open that div and here we need a little function which
2:13:522 hours, 13 minutes, 52 secondsI'm going to create just now so I'm going to go here under the chevron down I'm going to say function
2:14:012 hours, 14 minutes, 1 secondflatten group links it's going to take a group and which is going to be type of nav
2:14:092 hours, 14 minutes, 9 secondsgroup and this whole thing is going going to return a nav link array and let
2:14:162 hours, 14 minutes, 16 secondsme open that function. So we have const primary is equal to group dot links if
2:14:242 hours, 14 minutes, 24 secondsthat is available wonderful otherwise just an empty array. Then here we have const nested is equal to group dot subsections.
2:14:352 hours, 14 minutes, 35 secondsIf that is available on that then we get flat map we get one section and for that eight section we go for section dot links.
2:14:472 hours, 14 minutes, 47 secondsIf that whole thing is available wonderful otherwise just an empty array and then we finally return
2:14:562 hours, 14 minutes, 56 secondsdata dot primary and data dot nested these two arrays from this function. And
2:15:032 hours, 15 minutes, 3 secondsnow we need to use this function here. So I'm going to go for this thing.
2:15:112 hours, 15 minutes, 11 secondsI'm going to say group and then for that we dot map on that we have each
2:15:202 hours, 15 minutes, 20 secondsindividual link and then on that we run this function again return I mean direct
2:15:272 hours, 15 minutes, 27 secondsreturn on that by omitting the return keyword. So here we have link open that
2:15:342 hours, 15 minutes, 34 secondsit's going to take an href of course that href is going to be link dot href from that individual
2:15:422 hours, 15 minutes, 42 secondssubsections individual uh link and then we also say key that's going to be
2:15:522 hours, 15 minutes, 52 secondsthis custom value that I'm going to say group dot title I'm going to say dash here and then once
2:16:002 hours, 16 minutesagain link dot label and then once again dash here I'm going to say link dot href
2:16:092 hours, 16 minutes, 9 secondsthere you go and we also already have the href and then after this thing here
2:16:162 hours, 16 minutes, 16 secondsI'm going to say class name use c open that and that's going to be
2:16:232 hours, 16 minutes, 23 secondsnav drop-down link class then we have link
2:16:292 hours, 16 minutes, 29 secondsdox accent. If that is available, then we also attach text dash this hashtag
2:16:392 hours, 16 minutes, 39 secondsEC4 E02.
2:16:442 hours, 16 minutes, 44 secondsThere you go. And we have on hover it's going to be text dash this custom value which is
2:16:512 hours, 16 minutes, 51 secondsgoing to be hashtag EC the same basically. Yeah, let me copy paste that here. So we have text this and we have on hover text this. Awesome.
2:17:042 hours, 17 minutes, 4 secondsSo let me format that. And now get to the link. Open that. And in here I'm going to say link dot label. Save it.
2:17:142 hours, 17 minutes, 14 secondsLet's go here. Click on that. And there you go. You get to see this. If I click on that, there you go. If I click on
2:17:212 hours, 17 minutes, 21 secondsthat, you you get to see everything. And by the way that all text that all copy is available right inside
2:17:312 hours, 17 minutes, 31 secondsthe landing data.ts file which is already provided to you in the GitHub repo.
2:17:392 hours, 17 minutes, 39 secondsAgain you can find the link in the description. And I would really appreciate if you guys can please subscribe to my channel if you haven't
2:17:472 hours, 17 minutes, 47 secondsalready. Like this video and please do share this video with the like-minded people in your friends and family circle
2:17:552 hours, 17 minutes, 55 secondsand comment the best part of the video that you like the most or if you have any questions please feel free to ask
2:18:032 hours, 18 minutes, 3 secondswhatever questions you have regarding this project or of course you can suggest next project or further projects
2:18:102 hours, 18 minutes, 10 secondsin the comment section and I will definitely take that seriously. All right, back to leading data. Sorry, the
2:18:182 hours, 18 minutes, 18 secondscode here. And I guess that's pretty much it for this one.
2:18:262 hours, 18 minutes, 26 secondsAnd now I'm going to get down. Hold on.
2:18:312 hours, 18 minutes, 31 secondsSo this thing yes, right after that, but keeping inside the main nav
2:18:392 hours, 18 minutes, 39 secondsright now here, what I'm going to do is topnav links dot map. Then we have individual link.
2:18:482 hours, 18 minutes, 48 secondsOpen that. And here we have link.
2:18:522 hours, 18 minutes, 52 secondsWe have href which is going to be link dot label.
2:18:582 hours, 18 minutes, 58 secondsAnd then we have at hold on. Then we have key which is going to be actually
2:19:042 hours, 19 minutes, 4 secondsthe href. This needs to be key here and this needs to be href here as link.h.
2:19:132 hours, 19 minutes, 13 secondsThere you go. Then we have class name and I'm going to say let's say
2:19:212 hours, 19 minutes, 21 secondsnav cost class and I'm also going to attach text dash SM there. Wonderful.
2:19:292 hours, 19 minutes, 29 secondsAnd let's open that. Here we have link dot label. Awesome. Saving it.
2:19:372 hours, 19 minutes, 37 secondsAnd of course we have this security and pricing here as well. Wonderful job.
2:19:432 hours, 19 minutes, 43 secondsThen after this one here, here I'm going to say another link
2:19:512 hours, 19 minutes, 51 secondswe have href and that's going to be slash agent 4 and I'm going to say class
2:20:012 hours, 20 minutes, 1 secondname which is going to be margin left-ash one flex items dash center and
2:20:102 hours, 20 minutes, 10 secondswe have area label agent 4 and I'm going to open that. And here we
2:20:172 hours, 20 minutes, 17 secondshave agent badge. Actually, that agent badge we still need to make. So, for
2:20:242 hours, 20 minutes, 24 secondsnow, I'm going to say agent 4 here. Just There you go. This is our agent 4. All
2:20:322 hours, 20 minutes, 32 secondsright. Wonderful. Actually, you do you know what? Before moving forward, I would like to complete this. So, I'm
2:20:402 hours, 20 minutes, 40 secondsgoing to go into the file and I'm going to go into UI here, agent dashbatch.tsx.
2:20:502 hours, 20 minutes, 50 secondsThere you go. And we have export function agent batch. And I'm going to say class name.
2:21:022 hours, 21 minutes, 2 secondsIt's going to be a type of class name.
2:21:062 hours, 21 minutes, 6 secondsOptional, of course. That's going to be a string. Open that function. And this is going to return a SVG that of course
2:21:152 hours, 21 minutes, 15 secondsI'm just going to paste here. Just like that. And you can get that in the description from the reper. All right,
2:21:232 hours, 21 minutes, 23 secondsI'm saving that. And now we need to bring that here. We agent badge. There you go. Let me save that. And bingo.
2:21:332 hours, 21 minutes, 33 secondsFantastic. If I can increase. Yeah.
2:21:382 hours, 21 minutes, 38 secondsWell, that won't work here. That way, maybe we can do it like that. Awesome.
2:21:452 hours, 21 minutes, 45 secondsSo, this is how it looks. And if we get to go to let's say 50% to this is how
2:21:532 hours, 21 minutes, 53 secondsthe complete page looks like. Wonderful job. All right. Now after that in after
2:22:012 hours, 22 minutes, 1 secondunder the nav and then under the div I'm going to get down here and here let's create another div. I'm going to give it
2:22:092 hours, 22 minutes, 9 secondsa class name flex items dash center gap 2 on desktop. This is going to be gap 0.5.
2:22:202 hours, 22 minutes, 20 secondsOpen that here. And we have a link here first of all. So href for that is going to be slash
2:22:292 hours, 22 minutes, 29 secondscontact dash sales and then we have class name that's going to be hold on yeah just
2:22:382 hours, 22 minutes, 38 secondslike that then we have nav coast class then after that here we have hidden
2:22:472 hours, 22 minutes, 47 secondsand text dash small and desktop it's going to be flax awesome and Then inside here we just simply say contact sales.
2:22:582 hours, 22 minutes, 58 secondsLet me format and save. And that won't show up just like that. If I change that to that's is displayed somewhere here.
2:23:102 hours, 23 minutes, 10 secondsSo 50%. There you go. That contact sales is there. So I'm just going to keep it that way for now.
2:23:212 hours, 23 minutes, 21 secondsAnd hold on.
2:23:282 hours, 23 minutes, 28 secondsSo I'm just wondering if somehow I can display
2:23:402 hours, 23 minutes, 40 secondsif I go for the normal of course everything goes with 1024 and 1366.
2:23:472 hours, 23 minutes, 47 secondsAnd if I go for the responsive and just 1280 here, this is how the page looks.
2:23:552 hours, 23 minutes, 55 secondsYeah, let's keep it that way. If I decrease that to 1280, I 120.
2:24:042 hours, 24 minutes, 4 secondsYes, it's it's good. It's better now. So here after the link now I'm going to go
2:24:132 hours, 24 minutes, 13 secondsfor a P tag and I'm going to say sign up
2:24:222 hours, 24 minutes, 22 secondsand log in. Simple. These two buttons needs to be there. And then after that here we have button
2:24:312 hours, 24 minutes, 31 secondsand for the button we have type which is going to be button of course. Then we have on click.
2:24:412 hours, 24 minutes, 41 secondsThere you go. And I'm going to say set mobile open. And this is going to be
2:24:492 hours, 24 minutes, 49 secondsthe reverse of which that already is mobile open.
2:24:552 hours, 24 minutes, 55 secondsThere you go. Then after that I'm going to give it a class name which is going to be flex height -ash8 width dash8.
2:25:052 hours, 25 minutes, 5 secondsAnd we have shrink zero items center justify center rounded md. And we have
2:25:162 hours, 25 minutes, 16 secondsbg dash h # e d e c e8. There you go. And then
2:25:242 hours, 25 minutes, 24 secondswe have text dash. And this is going to be #1 51 618.
2:25:362 hours, 25 minutes, 36 secondsThen we have on desktop this is going to be hidden. That is only for the mobile and we will display that. So let's
2:25:432 hours, 25 minutes, 43 secondschange that to iPhone 14 Pro Max here real quick.
2:25:492 hours, 25 minutes, 49 secondsSo here in there I'm going to have an SVG and that SVG is going to be here this one. So let me format everything.
2:26:002 hours, 26 minutesActually I have messed up something.
2:26:072 hours, 26 minutes, 7 secondsSo SVG has no corresponding closing tag.
2:26:142 hours, 26 minutes, 14 secondsYeah, I get it. So after this SVG, there you go. Formatting everything, saving
2:26:212 hours, 26 minutes, 21 secondseverything, and we get to see this SVG here now. And now I need to do a few more things. So here I'm going to say
2:26:302 hours, 26 minutes, 30 secondsarea label, and that's going to be toggle mobile menu. And then we have
2:26:382 hours, 26 minutes, 38 secondsarea expanded and that's going to be mobile open. There you go. Let me format
2:26:482 hours, 26 minutes, 48 secondseverything. And if I click on that, of course, only the state changes. But we need to define what happens when the
2:26:562 hours, 26 minutes, 56 secondsstate changes. We haven't defined that as so far we have only worked on the desktop version but not the mobile
2:27:042 hours, 27 minutes, 4 secondsversion. I'm going to actually let's keep it for the mobile.
2:27:122 hours, 27 minutes, 12 secondsAnd now the very first thing that I'm going to do is go to the top here and
2:27:202 hours, 27 minutes, 20 secondsabove this function this navbar I'm going to come here
2:27:262 hours, 27 minutes, 26 secondsand I'm going to say function mobile nav menu.
2:27:322 hours, 27 minutes, 32 secondsAnd in here we have open also on close and then we have initial
2:27:412 hours, 27 minutes, 41 secondsuser and that's going to be a type of this where we have open as a boolean.
2:27:502 hours, 27 minutes, 50 secondsThen we have on close is a function but void and then we have initial user
2:27:592 hours, 27 minutes, 59 secondsis null for now. And we will add the other thing later. So there you go.
2:28:062 hours, 28 minutes, 6 secondsInitial user. And now here let's open that.
2:28:142 hours, 28 minutes, 14 secondsAnd this U needs to be bigger here. Yeah. Initial user. Awesome.
2:28:192 hours, 28 minutes, 19 secondsSo here I'm going to say const expanded group and set expanded group is
2:28:292 hours, 28 minutes, 29 secondsequal to use state. Here I have string
2:28:362 hours, 28 minutes, 36 secondsor it's going to be null and by default it's going to be products.
2:28:442 hours, 28 minutes, 44 secondsThere you go.
2:28:462 hours, 28 minutes, 46 secondsThen here I'm going to say use effect here. Open that. So if it's open then I'm going to say set time out.
2:29:012 hours, 29 minutes, 1 secondAnd this is going to be this function again. Open that. And in there I'm going
2:29:082 hours, 29 minutes, 8 secondsto make sure we just have 0 seconds. And it's going to say set
2:29:142 hours, 29 minutes, 14 secondsexpanded group is going to be products. There you go. And here to that
2:29:242 hours, 29 minutes, 24 secondsuse effect I'm going to give a second value which is going to be open.
2:29:292 hours, 29 minutes, 29 secondsThere you go. After that here once again I'm going to say use effect and we have this function. Open that.
2:29:402 hours, 29 minutes, 40 secondsAnd the second value for that is going to be open once again. And here
2:29:462 hours, 29 minutes, 46 secondsdocument dotbody dostyle dot overflow
2:29:542 hours, 29 minutes, 54 secondsis going to be open and
2:30:002 hours, 30 minutesthat's going to be hidden or empty string. There you go. So basically if
2:30:082 hours, 30 minutes, 8 secondsopen is true then document.body.style.overflow is going to be set to hidden. But if
2:30:172 hours, 30 minutes, 17 secondsopen is false then it's just going to be an empty string. That's what we're doing
2:30:222 hours, 30 minutes, 22 secondshere. And return this. we have document
2:30:292 hours, 30 minutes, 29 secondsdotbody dotstyle dot overflow is equal to empty finally
2:30:362 hours, 30 minutes, 36 secondson the dismount basically all right now under that here I'm going to say if open is not true then I'm
2:30:462 hours, 30 minutes, 46 secondsgoing to return null simple and now finally here we have return in
2:30:552 hours, 30 minutes, 55 secondswhich I have this div I'm going to give it a class name fixed insert x0
2:31:042 hours, 31 minutes, 4 secondsbottom zero top is going to be 67 pixels
2:31:132 hours, 31 minutes, 13 secondsz-40 we have flex flex- call then we have bg-
2:31:212 hours, 31 minutes, 21 seconds# f1f0e And then we have on desktop it's going to be hidden. There you go. Fantastic.
2:31:332 hours, 31 minutes, 33 secondsFor now I'm just going to say mobile menu. Just like that. And now I need to
2:31:422 hours, 31 minutes, 42 secondsmake sure that I display this mobile nav menu here on the bottom. Let's do that.
2:31:522 hours, 31 minutes, 52 secondsSo under the header container here I'm going to go for mobile nav menu and I'm going to say open
2:32:012 hours, 32 minutes, 1 secondthat is going to be mobile open then we have on close this is going to be a
2:32:082 hours, 32 minutes, 8 secondsfunction set mobile open to false and then we have initial
2:32:162 hours, 32 minutes, 16 secondsuser which is going to be initial user that we have initial user. Everything seems good. Why we have this editor?
2:32:292 hours, 32 minutes, 29 secondsOkay. Expected what? Yeah, got it. There you go.
2:32:352 hours, 32 minutes, 35 secondsThis needs to be removed from here.
2:32:402 hours, 32 minutes, 40 secondsAnd hold on, let me actually it's better to rewrite that.
2:32:452 hours, 32 minutes, 45 secondsSo here we have open set mobile open and then we have on close. This is going to be a function. I'm going to say set
2:32:542 hours, 32 minutes, 54 secondsmobile open and set that to false. Now we need to get down here. Then I'm going to say initial user. And this is going
2:33:022 hours, 33 minutes, 2 secondsto be initial user coming from our props.
2:33:072 hours, 33 minutes, 7 secondsWell done. And now if I go here, click on this one. There you go. That's our mobile menu. Wonderfully working. And of
2:33:162 hours, 33 minutes, 16 secondscourse now we need to make sure that this literally looks like a menu when you click on that when this opens up. So let's do that.
2:33:262 hours, 33 minutes, 26 secondsCreate a div here first of all. And I'm going to give it the class flex dash one. Then we have overflow y auto. And
2:33:342 hours, 33 minutes, 34 secondsthen in there we have nav group. Hold on.
2:33:412 hours, 33 minutes, 41 secondsnav groups dot map individual group and then we have this.
2:33:502 hours, 33 minutes, 50 secondsThere you go. Open that. And then inside we have const is
2:33:562 hours, 33 minutes, 56 secondsexpanded is equal to expanded group is
2:34:022 hours, 34 minutes, 2 secondsgroup is equal to group dot title. So basically this is expanded is going to
2:34:092 hours, 34 minutes, 9 secondsbe true or false based on if the expanded group is equal to the given group title. All right. Now here we have return and let's get to the red line.
2:34:212 hours, 34 minutes, 21 secondsThere we have a div.
2:34:252 hours, 34 minutes, 25 secondsI'm going to give it a class name border dashb. Then we have border and
2:34:322 hours, 34 minutes, 32 secondsI'm going to say hashtag DF
2:34:372 hours, 34 minutes, 37 secondsD E and D8. There you go. And I have PX
2:34:442 hours, 34 minutes, 44 seconds6 and PY 3. Awesome. And I'm also going to give it a key as that's going to be
2:34:522 hours, 34 minutes, 52 secondsinside this loop inside this map. So key for this one is going to be group.title.
2:34:582 hours, 34 minutes, 58 secondstitle. All right. Now, inside this div here, we have a button
2:35:052 hours, 35 minutes, 5 secondstype of course is going to be button for this one. Then we have class name. We have flex width dash full items dash
2:35:152 hours, 35 minutes, 15 secondscenter. Then we have justify between and py 2. I'm going to open that button and
2:35:232 hours, 35 minutes, 23 secondsalso to that button area expanded is going to be is expanded. There you go. And we have
2:35:322 hours, 35 minutes, 32 secondsarea label for this one is going to be toggle mobile nested nav.
2:35:432 hours, 35 minutes, 43 secondsAnd then here I'm going to say on click for this one is going to be set.
2:35:512 hours, 35 minutes, 51 secondsHold on. Let me format everything.
2:35:572 hours, 35 minutes, 57 secondsYes, seems like we have an issue. Let me reload the window real quick. There you
2:36:052 hours, 36 minutes, 5 secondsgo. And nav link here. Actually, we do not maybe need let me get that from here and change that to string. There you go.
2:36:192 hours, 36 minutes, 19 secondsOn click function. And then this is going to be set
2:36:272 hours, 36 minutes, 27 secondsexpanded group.
2:36:312 hours, 36 minutes, 31 secondsAnd for that I'm going to say if is expanded then we're going to say null otherwise
2:36:382 hours, 36 minutes, 38 secondsit's going to be group dot title. Let me save that and let me reload.
2:36:462 hours, 36 minutes, 46 secondsThere you go. Let me format everything now. Perfect.
2:36:532 hours, 36 minutes, 53 secondsSo here under the button inside the button I'm going to say have a span.
2:36:592 hours, 36 minutes, 59 secondsGoing to give it a class name that is going to be font dash display then text
2:37:052 hours, 37 minutes, 5 secondsdash 32 pixels font dash medium then we
2:37:112 hours, 37 minutes, 11 secondshave leading 10 and we have tracking and I'm going to change that to custom value
2:37:182 hours, 37 minutes, 18 secondswhich is 0.04 emus minus 0.04 04 em.
2:37:262 hours, 37 minutes, 26 secondsThen we have text dash custom value which is going to be hash 36 373b.
2:37:372 hours, 37 minutes, 37 secondsThere you go. Let me format everything and that span should say group dot title
2:37:462 hours, 37 minutes, 46 secondsjust like that. And under the span we need a as you guys can see here
2:37:532 hours, 37 minutes, 53 secondsbasically the menu is open but here we need also a toggle and that toggle is
2:38:012 hours, 38 minutes, 1 secondnot done yet. So let's get started working on the toggle. Let's come up here and right after that or maybe after
2:38:122 hours, 38 minutes, 12 secondsthat here I'm going to say function and this is going to be accordion toggle
2:38:222 hours, 38 minutes, 22 secondsand we have expanded this is going to be
2:38:292 hours, 38 minutes, 29 secondsexpanded which is going to be a boolean let's open that function and we have return here in which we have a span. I'm
2:38:372 hours, 38 minutes, 37 secondsgoing to give it a class name flex height dash 8 width dash 8 shrink zero
2:38:452 hours, 38 minutes, 45 secondsthen we have items dash center justify center and we have rounded md and also bg dash h# df d8.
2:38:582 hours, 38 minutes, 58 secondsThere you go. Let's open that span.
2:39:012 hours, 39 minutes, 1 secondActually, we're going to need to give it a text dash #15
2:39:102 hours, 39 minutes, 10 seconds1618 here as well. And now here I'm going to paste that SVG that it is. Of course, you're going to
2:39:182 hours, 39 minutes, 18 secondsfind that in the GitHub repo link is available in the description. So, accordion toggle
2:39:262 hours, 39 minutes, 26 secondsthat's going to be coming here. Codian total.
2:39:332 hours, 39 minutes, 33 secondsHold on. Expanded. Yes.
2:39:402 hours, 39 minutes, 40 secondsSo, expanded here is going to be is expanded. There you go. Let me format.
2:39:472 hours, 39 minutes, 47 secondsSave. And here we have our little uh icon. But it doesn't look good. It's
2:39:552 hours, 39 minutes, 55 secondsnot where it's supposed to be. I think that that's some issue with this one.
2:40:052 hours, 40 minutes, 5 secondsProbably we have in the button we have one span.
2:40:122 hours, 40 minutes, 12 secondsOh, I got it. This needs to be outside the span. There you go. Fantastic. So
2:40:192 hours, 40 minutes, 19 secondsnow this how it looks in expanded and non-expanded like collapsed. Wonderful. Wonderful
2:40:272 hours, 40 minutes, 27 secondsjob. Well done guys. All right. So now if we click on the menu the menu shows
2:40:332 hours, 40 minutes, 33 secondsup but the subsections does not. And for that we need a function. I'm going to go
2:40:402 hours, 40 minutes, 40 secondsto the top and here let's say either on below or on the top here I'm going to
2:40:482 hours, 40 minutes, 48 secondscreate a function and I'm going to say let's do that on the bottom here. Yeah,
2:40:562 hours, 40 minutes, 56 secondsfunction mobile nav link. And it's going to take a few arguments link and on navigate. There you go.
2:41:092 hours, 41 minutes, 9 secondsAnd now this is going to be type of this where we have link is going to be nav
2:41:182 hours, 41 minutes, 18 secondslink and then we have on navigate is going to be a function which is going to be void.
2:41:312 hours, 41 minutes, 31 secondsLet's open the function here and we have if link dot description
2:41:382 hours, 41 minutes, 38 secondsis there then we return this where we have a link
2:41:482 hours, 41 minutes, 48 secondsI'm going to say href is going to be linkhref then we have on click
2:41:562 hours, 41 minutes, 56 secondson click there you This is going to be on navigate. And
2:42:052 hours, 42 minutes, 5 secondsthen we have class name that's going to be block py3.
2:42:122 hours, 42 minutes, 12 secondsThen we have text dash custom value # 2122 5 21 22 2.
2:42:242 hours, 42 minutes, 24 secondsThere you go. Then we have transition dash colors.
2:42:302 hours, 42 minutes, 30 secondsAnd then we have on hover it's going to be text dash text dash primary.
2:42:372 hours, 42 minutes, 37 secondsAll right.
2:42:392 hours, 42 minutes, 39 secondsThen inside there link I'm going to create a span tag and I'm going to give it a class name block text dash small.
2:42:492 hours, 42 minutes, 49 secondsThere you go. And also leading is going to be tight. Here I put link dot label.
2:42:592 hours, 42 minutes, 59 secondsSave that.
2:43:012 hours, 43 minutes, 1 secondAnd after that here I'm going to say span. I'm going to give it a class name
2:43:072 hours, 43 minutes, 7 secondsmargin top 0.5 dash 0.5. There you go. We have block.
2:43:152 hours, 43 minutes, 15 secondsThen we have text small leading tight. And we have text.
2:43:222 hours, 43 minutes, 22 secondsThat's going to be hashtag 696 6c74.
2:43:322 hours, 43 minutes, 32 secondsThere you go. And I'm going to open that span. And here we have link dot description. Let me format everything
2:43:412 hours, 43 minutes, 41 secondsand save everything. Awesome. And if that is not the case, if the description
2:43:482 hours, 43 minutes, 48 secondsdoes not available, then we have this return. And in there we have link once
2:43:552 hours, 43 minutes, 55 secondsagain I'm going to give it href. So link href. Then we have on click on navigate.
2:44:072 hours, 44 minutes, 7 secondsThere you go. Then we have class name.
2:44:102 hours, 44 minutes, 10 secondsAnd this time I'm going to use CN. Open that. And we have log py 2.5
2:44:182 hours, 44 minutes, 18 secondstext small. We have leading tight text is going to be
2:44:272 hours, 44 minutes, 27 seconds#2 F3 034 and we have transition colors and then
2:44:352 hours, 44 minutes, 35 secondswe have on hover text is going to be #2122
2:44:422 hours, 44 minutes, 42 seconds5. I'm going to put a comma here. Get down. And I'm going to say link.acent.
2:44:502 hours, 44 minutes, 50 secondsIf that is true, then I'm going to say text-relet orange. And on hover, it's going to be
2:44:582 hours, 44 minutes, 58 secondstext-repplet orange as well. All right. I'm going to put a comma here. Get down.
2:45:062 hours, 45 minutes, 6 secondsAnd actually, I'm going to go inside this link. And here I'm going to say
2:45:132 hours, 45 minutes, 13 secondslink dot label. There you go. Let me format everything. And I think this one is done.
2:45:232 hours, 45 minutes, 23 secondsI'm going to get down. And after this button here, I'm going to say is expanded.
2:45:342 hours, 45 minutes, 34 secondsAnd if that is the case, then I'm going to display this. So here we have this div.
2:45:412 hours, 45 minutes, 41 secondsI'm going to give it a class name PB-3 and PD-1.
2:45:472 hours, 45 minutes, 47 secondsOpen that div. And in here we have group dot links.
2:45:542 hours, 45 minutes, 54 secondsIf that is available of course then dot map on that then we have each individual link to that we return
2:46:042 hours, 46 minutes, 4 secondsmobile nav mobile nav link there you go and for
2:46:122 hours, 46 minutes, 12 secondseach component we give it a key which is going to be link label then also link
2:46:192 hours, 46 minutes, 19 secondswhich is going to be link and then on navigate which is going going to be on close here.
2:46:282 hours, 46 minutes, 28 secondsLet me format save everything. Let's try click on that. There you go. Awesome.
2:46:352 hours, 46 minutes, 35 secondsFantastic. When we have description, we get to see the description. When we don't, then we don't. Fantastic job. But
2:46:422 hours, 46 minutes, 42 secondsnow here I'm going to say group dot subsections
2:46:492 hours, 46 minutes, 49 secondsdot map. So I'm going to say section and open that here and I'm going to say
2:46:582 hours, 46 minutes, 58 secondsdiv going to give it a actually let's give it a key first. So the key here is going
2:47:052 hours, 47 minutes, 5 secondsto be section dot title. Then we have class name that's going to be PT-4
2:47:132 hours, 47 minutes, 13 secondsheading top four. And here we have a P tag. I'm going to give it a class name abb.
2:47:212 hours, 47 minutes, 21 secondsThen we have text dash small. And then we have text dash # 28 29.
2:47:322 hours, 47 minutes, 32 secondsEnter C. There you go. I'm going to get into that P tag. And here we have
2:47:402 hours, 47 minutes, 40 secondssection dot title. Let me format and save everything. And where is that displayed?
2:47:512 hours, 47 minutes, 51 secondsOkay, we'll keep going. After the P tag here, I'm going to say section
2:47:592 hours, 47 minutes, 59 secondsdot links dot map. Here we have individual link and I'm going to say
2:48:082 hours, 48 minutes, 8 secondsopen that. And here we have mobile nav link.
2:48:142 hours, 48 minutes, 14 secondsAnd actually this is going to be the case. So there you go. Hold on guys.
2:48:232 hours, 48 minutes, 23 secondsJust copy paste that here.
2:48:252 hours, 48 minutes, 25 secondsLink dot label. But for this one key is actually going to change. The key here is going to be section dot title.
2:48:382 hours, 48 minutes, 38 secondsThen we have section actually no
2:48:452 hours, 48 minutes, 45 secondslink dot label. Then we here we have link and then here we have on close.
2:48:532 hours, 48 minutes, 53 secondsFantastic. So there you go. We have everything more items has been increased like use cases that comes under for
2:49:022 hours, 49 minutes, 2 secondswork. Basically these are subsections under for for work. Earlier we had only these two and then there's none inside
2:49:112 hours, 49 minutes, 11 secondsthe sources. Excellent job guys. All right. Now I'm going to scroll up and
2:49:172 hours, 49 minutes, 17 secondsafter this group here I'm going to say
2:49:252 hours, 49 minutes, 25 secondstopnav links dot map. And here we have link.
2:49:322 hours, 49 minutes, 32 secondsI'm going to open that. And here we have link. I'm going to give it a href
2:49:422 hours, 49 minutes, 42 secondsalso key which is going to be link dot label. Href is going to be link dot
2:49:492 hours, 49 minutes, 49 secondshref. And then we have on click which is going to be on close. And then we have
2:49:572 hours, 49 minutes, 57 secondsclass name which is going to be flex items dash center. If I save that
2:50:052 hours, 50 minutes, 5 secondsand let me put link label in there. Let me format and
2:50:132 hours, 50 minutes, 13 secondssave everything. There you go. Security pricing that is there. And
2:50:192 hours, 50 minutes, 19 secondsfor that I'm going to after the class name in there I'm going to actually
2:50:262 hours, 50 minutes, 26 secondscreate a span tag and I'm going to shift this to that span there.
2:50:332 hours, 50 minutes, 33 secondsAnd after flex items center, I'm going to say border bottom. And also border
2:50:412 hours, 50 minutes, 41 secondsdash this custom value hashtag dfd d8. And then after that we have px 6 and py4.
2:50:532 hours, 50 minutes, 53 secondsRight? And then to the span tag. Let me actually save. And so you get to see security and pricing.
2:51:002 hours, 51 minutesAnd then on each individual span I'm going to say class name font dash display and then text dash
2:51:102 hours, 51 minutes, 10 seconds32 pixels. Then we have font dash medium font
2:51:182 hours, 51 minutes, 18 secondsdash medium and then after that here we have leading
2:51:242 hours, 51 minutes, 24 seconds10 and we have tracking minus 0.04 04 em
2:51:332 hours, 51 minutes, 33 secondsand text is going to be this custom value which is # 36373b.
2:51:432 hours, 51 minutes, 43 secondsLet me format everything and save everything. There you go. Everything is how it's supposed to be. Fantastic job.
2:51:512 hours, 51 minutes, 51 secondsNow I'm going to get under that. So, so here and then this div which is here
2:52:012 hours, 52 minutes, 1 secondending and then I'm going to get under that div and I'm going to create another div
2:52:092 hours, 52 minutes, 9 secondshere. I'm going to give it a class name flex items dash center justify center
2:52:172 hours, 52 minutes, 17 secondsgap 4 and then we have border top and then we have border which is going to be
2:52:252 hours, 52 minutes, 25 secondshashtag dfd e d8 and then we have px 6 and py 5. Let
2:52:362 hours, 52 minutes, 36 secondsme format everything and save everything. And you see this little uh border here. So now I'm going to open
2:52:452 hours, 52 minutes, 45 secondsthat div. Here we have link href
2:52:532 hours, 52 minutes, 53 secondsslash contact dash sales and we have on click which is going to
2:52:592 hours, 52 minutes, 59 secondsbe on close. Then we have class name and that's going to be flex height dash8
2:53:072 hours, 53 minutes, 7 secondsitems center rounded empty bg dash hash e 8 e7
2:53:182 hours, 53 minutes, 18 secondse3 and then we have px2 text small
2:53:262 hours, 53 minutes, 26 secondsand the text is going to be hashtag 21 22 two25
2:53:352 hours, 53 minutes, 35 secondsand also we have transition colors and we have on hover it's going to be bg
2:53:422 hours, 53 minutes, 42 secondsdash hash E0 dfdb
2:53:492 hours, 53 minutes, 49 secondsawesome open that link contact sales
2:53:562 hours, 53 minutes, 56 secondsthere you go we have this contact sales button here now under that link here.
2:54:022 hours, 54 minutes, 2 secondsI'm going to create a P tag and I'm going to say sign up and login. Save everything.
2:54:122 hours, 54 minutes, 12 secondsThis needs to be flex. Save. There you go. We have contact sales. We have signed up and we have login. Of course,
2:54:192 hours, 54 minutes, 19 secondsthis signup login is going to be updated. That's coming from the desktop.
2:54:232 hours, 54 minutes, 23 secondsAnd this signup login is going to be updated which is for the mobile. And these both are going to be updated once we have our better oath authentication.
2:54:342 hours, 54 minutes, 34 secondsSo we're going to handle that part. Then until then our nav component is done. It
2:54:412 hours, 54 minutes, 41 secondslooks phenomenal on mobile and it looks really good on the desktop. If I change
2:54:482 hours, 54 minutes, 48 secondsthat to responsive you can see if I change that to 1200. There you go.
2:54:562 hours, 54 minutes, 56 secondsExcellent job, guys. Oh, and almost forgot that I wanted to tell you that if
2:55:022 hours, 55 minutes, 2 secondsyou go to the mobile view and you just need to make sure that you hard reload
2:55:092 hours, 55 minutes, 9 secondslike shift command and R from your Mac and then if you open the menu you will
2:55:162 hours, 55 minutes, 16 secondssee that products submen is already opened because we already defined that
2:55:232 hours, 55 minutes, 23 secondshere under products there. So yeah, that may be not working for you because you
2:55:302 hours, 55 minutes, 30 secondsdid not hard reload. Once you do, that is going to work the way it's supposed to do. All right, well done. All right,
2:55:372 hours, 55 minutes, 37 secondsI'm going to first of all change this from iPhone 14 Pro Max to responsive and make this a 1200 pixels.
2:55:482 hours, 55 minutes, 48 secondsThere you go. And then here I'm going to go to my page.tsx file.
2:55:532 hours, 55 minutes, 53 secondsAnd first of all here I'm going to say export default function. I'm going to name it as homepage as that is what I'm
2:56:022 hours, 56 minutes, 2 secondsgoing to be using for this project. Then in the return instead of navbar here I'm going to
2:56:102 hours, 56 minutes, 10 secondsopen this parenthesis and in there we have this empty fragment and then we have navbar.
2:56:172 hours, 56 minutes, 17 secondsAfter the navbar here, I'm going to create a main tag and I'm going to give it a class name minimum dash height dash
2:56:262 hours, 56 minutes, 26 seconds50 view portut height. That's just temporary class there. But the main tag is going to be used there always. And
2:56:342 hours, 56 minutes, 34 secondsthen under the main tag, we need to create a footer component. And that is exactly what we're going to work on now.
Chapter 11: Footer shell
2:56:442 hours, 56 minutes, 44 secondsSo, I'm going to go to here and then under components layout, I'm going to create a footer. DSX file,
2:56:542 hours, 56 minutes, 54 secondslet me do RFC real quick. And export default function.
2:57:012 hours, 57 minutes, 1 secondThis needs to be footer. And I guess that's pretty much it. And here, let's
2:57:102 hours, 57 minutes, 10 secondsimport that footer. And there you go. We have our footer here. Let me minimize
2:57:172 hours, 57 minutes, 17 secondsthis thing here. Awesome. So, yeah, let's get started working on the footer now here. So, I'm going to go to the
2:57:242 hours, 57 minutes, 24 secondsvery top and in here I'm going to need link from next link. Then replet logo.
2:57:322 hours, 57 minutes, 32 secondsThen I'm going to need container. And there you go. And then I'm going to need
2:57:392 hours, 57 minutes, 39 secondsfooter columns from our landing data. And here,
2:57:452 hours, 57 minutes, 45 secondsof course, I'm going to need to make sure, let's leave it that like that for
2:57:522 hours, 57 minutes, 52 secondsnow, I guess, cuz otherwise we're going to need to go into the components. I'm in here slash components
2:58:012 hours, 58 minutes, 1 secondand then that's going to work. So that's completely up to you. It's just got there by I mean autoimp import. So we
2:58:092 hours, 58 minutes, 9 secondscan leave it like that. So here we have export default.
2:58:142 hours, 58 minutes, 14 secondsI'm going to get rid of the default from here. Export function footer. And then we have return. And in the return I'm going to say footer.
2:58:252 hours, 58 minutes, 25 secondsAnd if I save this it's going to cause issues here because this needs to be inside curly braces. Now as you have
2:58:322 hours, 58 minutes, 32 secondsgotten rid of the uh that default from here also I just
2:58:402 hours, 58 minutes, 40 secondsnoticed here on the navbar in the navbar we have this let me get to the function
2:58:502 hours, 58 minutes, 50 secondsand there you go we have this initial user which is default to null and we're going
2:58:582 hours, 58 minutes, 58 secondsto need to use that but of course that's going to be coming later when we have actually initial user coming from our
2:59:052 hours, 59 minutes, 5 secondsauthentication. So yeah, we can leave it like that. All right. So inside the footer here we have a class name. I'm
2:59:122 hours, 59 minutes, 12 secondsgoing to give it a border dash t. Then we have border dash border dash light.
2:59:232 hours, 59 minutes, 23 secondsThere you go. Slash 60. And then we have bg dash background.
2:59:302 hours, 59 minutes, 30 secondsAwesome. Then inside the footer here we have a container
2:59:382 hours, 59 minutes, 38 secondsand it did not bring that. So let me container. Yes, it did actually. So in
2:59:462 hours, 59 minutes, 46 secondsthe container I'm going to say as footer. Then we have class name which is going to be py-4.
2:59:552 hours, 59 minutes, 55 secondsAnd then here we have a div. I'm going to give it a class name grid. Grid calls
3:00:023 hours, 2 secondstwo. Gap is going to be eight. And then we have on desktop. This is going to be grid calls five.
3:00:133 hours, 13 secondsGrid calls five. There you go. And then after that we have on desktop again. Gap is going to be 10. Let me open that div.
3:00:223 hours, 22 secondsAnd we have another div inside. I'm going to give it a class name call span 2.
3:00:303 hours, 30 secondsCall span 2. There you go. And we have on desktop. This is going to be call span one. Let me open that div. And here
3:00:393 hours, 39 secondswe have a link. I'm going to give it a class name and also href which is going to be hold on.
3:00:523 hours, 52 secondsThere you go. And the class name here is going to be in niche inline dashblo
3:01:003 hours, 1 minutetext dash text dash primary and we have also area label which is
3:01:073 hours, 1 minute, 7 secondsgoing to be replet and then inside there here we have replet logo. There you go.
3:01:163 hours, 1 minute, 16 secondsLet me format everything and save everything. There you go. We have that here.
3:01:223 hours, 1 minute, 22 secondsBut seems like the container.
3:01:273 hours, 1 minute, 27 secondsOh, maybe because 1280. Let's go to that. No, let me pull that up.
3:01:383 hours, 1 minute, 38 secondsAnd here we have this. We have footer here two times. So, actually, let's change this footer to a div. I'm going to save that.
3:01:503 hours, 1 minute, 50 secondsAnd here let me select this is div. Then we have footer here.
3:01:573 hours, 1 minute, 57 secondsAnd yes there is basically
3:02:043 hours, 2 minutes, 4 secondsonly MX with auto. All right let's keep building. And then after this link here I'm going to come down here create a
3:02:123 hours, 2 minutes, 12 secondsdiv. I'm going to give it a class name that is going to be margin top dash 8 here. And then I'm going to give it a flex and items center and gap of three.
3:02:263 hours, 2 minutes, 26 secondsLet's go inside that div. Create a span. I'm going to give it a class name.
3:02:303 hours, 2 minutes, 30 secondsThat's going to be flex height dash 10 width dash 10. There you go.
3:02:393 hours, 2 minutes, 39 secondsitems dash center justify center and we have rounded XL and then we have border
3:02:483 hours, 2 minutes, 48 secondsand border border light and we have bg dash surface white and we have text dash
3:02:583 hours, 2 minutes, 58 secondstext dash muted awesome after that here inside that we're going to need a an SVG
3:03:073 hours, 3 minutes, 7 secondswhich I'm going to paste here that can be found from the GitHub repo. Of course, link is available in the description. Then after the SVG here,
3:03:173 hours, 3 minutes, 17 secondsthe span is ending. And after the span here, I'm going to create a div. There
3:03:243 hours, 3 minutes, 24 secondsyou go. I'm going to give it a class name rounded-l.
3:03:313 hours, 3 minutes, 31 secondsAnd we have border. And we have border dash border dash light. And we have BG surface white.
3:03:423 hours, 3 minutes, 42 secondsBG dash surface white. And then we have px3 py2
3:03:503 hours, 3 minutes, 50 secondstext dash small. I'm going to open that div. And here we have a span ca another
3:03:563 hours, 3 minutes, 56 secondsspan. I'm going to create a emoji. Let me find the dot.
3:04:053 hours, 4 minutes, 5 secondsThere you go. And then we have a span here. And I'm going to say 73.
3:04:153 hours, 4 minutes, 15 secondsAnd then we have this temperature and then Fahrenheit. So here dot let me find that
3:04:283 hours, 4 minutes, 28 secondscircle.
3:04:313 hours, 4 minutes, 31 secondsYep. Maybe that one. Yeah, I I guess that can work. All right, let me format and save everything. This is what we
3:04:393 hours, 4 minutes, 39 secondshave. And of course, now we need to give some classes to these fans. So, I'm going to give it class name font-
3:04:453 hours, 4 minutes, 45 secondsmedium. So, this one I have a class name MX-1.5 and then text-ext dash muted.
3:04:563 hours, 4 minutes, 56 secondsThere you go. And then for the next one, I have text- text muted as well.
3:05:023 hours, 5 minutes, 2 secondsFormatting everything and saving everything. Awesome. And now under this div here, I'm going to create a P tag.
3:05:093 hours, 5 minutes, 9 secondsI'm going to say made in sunny Kelly for NIA. So I'm going to say class name
3:05:193 hours, 5 minutes, 19 secondsArgin top-4 text small and text- text muted. And
3:05:263 hours, 5 minutes, 26 secondsafter that we have another P tag. I'm going to say all rights reserved copyright
3:05:353 hours, 5 minutes, 35 secondsemperson copy colon and then here I'm going to write new
3:05:423 hours, 5 minutes, 42 secondsdate dot get full year. There you go. And I'm
3:05:513 hours, 5 minutes, 51 secondsgoing to attach some class names. Last name is going to be margin top- sex text-xs.
3:05:593 hours, 5 minutes, 59 secondsAnd then we have text- text.
3:06:033 hours, 6 minutes, 3 secondsAwesome. And of course, I'm going to need something more, which is replet.
3:06:103 hours, 6 minutes, 10 secondsThere you go. Let me format everything and save everything. And this is what we have actually.
3:06:173 hours, 6 minutes, 17 secondsYeah, this both P tags should be outside another div here. There you go. It's better now. Fantastic.
3:06:313 hours, 6 minutes, 31 secondsAnd I guess now it just I just want to maximize the screen because that way it
3:06:403 hours, 6 minutes, 40 secondscan really look like a website because that was very zoomed out there and wasn't looking really good. So I'm going to close this one from here.
3:06:513 hours, 6 minutes, 51 secondsAnd this is what we have so far. All right. So I'm going to get back to our code.
3:07:003 hours, 7 minutesI'm going to make this full screen as well. And we go from here. Let me format everything and save everything. Awesome.
3:07:083 hours, 7 minutes, 8 secondsSo now after this div here, I'm going to get down. And here I'm going to say footer columns dot map.
3:07:193 hours, 7 minutes, 19 secondsWe have each individual column. To that I'm going to run a return. We have a div. To each I'm going to give it a
3:07:283 hours, 7 minutes, 28 secondsclass name. Actually, no. I'm going to give it a key, which is going to be column dot
3:07:353 hours, 7 minutes, 35 secondstitle. There you go. And then we have H3. I'm going to give it a class name a
3:07:433 hours, 7 minutes, 43 secondsnot a but a bunch of class name like margin bottom dash4 text dash 11 pixels
3:07:513 hours, 7 minutes, 51 secondsfont dash semib bold upperase and tracking widest.
3:07:593 hours, 7 minutes, 59 secondsThere you go. And then we have text dash text dash dim. And that is going to
3:08:063 hours, 8 minutes, 6 secondsdisplay column dot title. After the h3, I'm going to create a ul. I'm going to give
3:08:163 hours, 8 minutes, 16 secondsit a class name space dashy-2.5.
3:08:253 hours, 8 minutes, 25 secondsHold on.
3:08:283 hours, 8 minutes, 28 secondsThere you go. And I'm going to open that ul. And here we have
3:08:363 hours, 8 minutes, 36 secondscolumn dot links dot well if that is available awesome otherwise just an
3:08:443 hours, 8 minutes, 44 secondsempty string and then to that here
3:08:503 hours, 8 minutes, 50 secondswe're going to run dot map on that and we have each individual link I'm going to open that here and here we have ally.
3:09:023 hours, 9 minutes, 2 secondsI'm going to give it a key which is going to be link dot label and then inside we have link.
3:09:143 hours, 9 minutes, 14 secondsI'm going to give it a href which is going to be link.href. Of course, we have also class name text dash small
3:09:243 hours, 9 minutes, 24 secondstext dash text- secondary and we have transition colors.
3:09:303 hours, 9 minutes, 30 secondsAnd then we have on hover it's going to be text dash text- primary
3:09:373 hours, 9 minutes, 37 secondsprimary. There you go. And that is going to say link dot label here. Let me format
3:09:463 hours, 9 minutes, 46 secondseverything and save everything. Let's go back here. And there you go. We have these labels here. We have the icons.
3:09:533 hours, 9 minutes, 53 secondsAnd of course, they have HFS as well.
3:09:563 hours, 9 minutes, 56 secondsWonderful. Our footer looks amazing, guys. So, I'm going to get back here.
3:10:053 hours, 10 minutes, 5 secondsGet it up here.
3:10:083 hours, 10 minutes, 8 secondsAnd I think that Let me take another look. Yeah, the footer is done. And we are ready to move on to the next one.
3:10:183 hours, 10 minutes, 18 secondsAll right. So now when we have our header and footer are done. Well, the header is not 100% done as we still need
3:10:253 hours, 10 minutes, 25 secondsto work on the sign up and login buttons. But that's after the authentication. And now let's move on to
3:10:343 hours, 10 minutes, 34 secondsthe hero section. And for that we need one thing first. And that is a hook that
Chapter 12: Hero section
3:10:413 hours, 10 minutes, 41 secondswe're going to create. So I'm going to go very small hook. So I'm going to go into lib and create a new file. This is going to be use dash mounted.ts.
3:10:563 hours, 10 minutes, 56 secondsAnd in here we have use client and then I'm going to say use
3:11:033 hours, 11 minutes, 3 secondslayout effect from react also use state from react. And here I'm going to export
3:11:103 hours, 11 minutes, 10 secondsfunction use mounted and I'm going to open that function.
3:11:163 hours, 11 minutes, 16 secondsHere we have const mounted and set mounted is equal to use
3:11:263 hours, 11 minutes, 26 secondsstate and here we have false. Then I'm going to say use layout effect and I'm
3:11:333 hours, 11 minutes, 33 secondsgoing to run this call back function where we have set timeout another call back function I'm going to set the time
3:11:423 hours, 11 minutes, 42 secondsto zero and in here I'm going to say set mounted to true and as a second value
3:11:513 hours, 11 minutes, 51 secondshere I'm going to provide an empty array and that's pretty much it after this here we're going to make sure that we
3:11:583 hours, 11 minutes, 58 secondsturn that mounted. So we have both headmounted and mounted here. Fantastic.
3:12:053 hours, 12 minutes, 5 secondsSave it. Close it. And then the next file that we need to work on is the hero. And for the hero, we have a
3:12:133 hours, 12 minutes, 13 secondsspecific component that's going to go inside components. I'm going to go and create a new folder. I'm going to name
3:12:213 hours, 12 minutes, 21 secondsit uh blending. And in there we have a new folder which is going to be hero. And
3:12:303 hours, 12 minutes, 30 secondsinside hero I'm going to create a new file which is going to be tagline.tsx.
3:12:373 hours, 12 minutes, 37 secondsAwesome. So for this tagline I'm going to say use client.
3:12:433 hours, 12 minutes, 43 secondsThen we have use effect from react also use state from react. Then we have use
3:12:523 hours, 12 minutes, 52 secondsmounted our own hook. Then we have CN awesome. Here we're going to say export function hero tagline.
3:13:033 hours, 13 minutes, 3 secondsOpen that. And here we have const mounted is equal to use mounted.
3:13:113 hours, 13 minutes, 11 secondsAnd then we have const index set index is equal to use state
3:13:203 hours, 13 minutes, 20 secondszero. And then we have const visible set visible is equal to use
3:13:293 hours, 13 minutes, 29 secondsstate. I'm going to set it to true by default. And here we have return.
3:13:373 hours, 13 minutes, 37 secondsHold on. And inside return I'm going to say a p t tag. I'm going to provide a
3:13:443 hours, 13 minutes, 44 secondsclass name to that. And here we have hold on hold on. Here we have a CN. And to that CN I'm going to say font sands.
3:13:543 hours, 13 minutes, 54 secondsThen we have text dash small. We have a leading. I'm going to change that to 22 pixels.
3:14:023 hours, 14 minutes, 2 secondsText dash text dash primary. And then we have transition opacity. We have duration to 50 duration
3:14:123 hours, 14 minutes, 12 secondsdash to 100. Let's Yeah, let's change that to 250.
3:14:183 hours, 14 minutes, 18 secondsAnd then here I'm going to say if mounted is not true or visible
3:14:283 hours, 14 minutes, 28 secondsthen I'm going to say opacity 100 otherwise it's going to be opacity zero.
3:14:383 hours, 14 minutes, 38 secondsAwesome. And now inside the p tag I'm going to say hero tag lines. There you
3:14:463 hours, 14 minutes, 46 secondsgo. And for that I'm going to use the index in here. There you go. And here we
3:14:543 hours, 14 minutes, 54 secondsneed to make sure that we have this use effect.
3:14:583 hours, 14 minutes, 58 secondsSo for that I'm going to open that function. If mounted is not true then we
3:15:073 hours, 15 minutes, 7 secondsreturn and const interval is equal to set interval.
3:15:143 hours, 15 minutes, 14 secondsAnd here we have this function this call back. Here we have set visible to false
3:15:223 hours, 15 minutes, 22 secondsand set time out. There you go. And I'm going to open that up. Here we have set index
3:15:313 hours, 15 minutes, 31 secondsfrom previous to previous plus one. And I'm going to use
3:15:383 hours, 15 minutes, 38 secondsthe modular operator here. hero tag lines dot length here. Then we have set
3:15:463 hours, 15 minutes, 46 secondsvisible set to true. And of course as a second value here, I'm going to give it 250 milliseconds.
3:15:543 hours, 15 minutes, 54 secondsAnd uh as a second value to this set interval here, I'm going to give it
3:16:023 hours, 16 minutes, 2 seconds3,000 milliseconds. And after that here we return on dismount of use effect of
3:16:083 hours, 16 minutes, 8 secondscourse which is going to be clear interval and we clear that interval that we just
3:16:173 hours, 16 minutes, 17 secondscreated here. Awesome. So that's pretty much it for this tagline.
3:16:233 hours, 16 minutes, 23 secondsAll right. So in order to test it out, I'm going to go to the page.tsx tsx file here and let's say I use that inside the main here.
3:16:353 hours, 16 minutes, 35 secondsSo here I'm going to say tag hero tagline. There you go. Save it.
3:16:413 hours, 16 minutes, 41 secondsLet's go to our browser. And there you go. Here we have our tagline. It's keep move. It's keep changing. That is what
3:16:493 hours, 16 minutes, 49 secondswe need. And I'm going to get rid of that from here because that is not going to be used here. That was just for the testing
3:16:583 hours, 16 minutes, 58 secondspurposes. And now I'm going to go to our landing hero
3:17:063 hours, 17 minutes, 6 secondshero. And here I'm going to create a new file which is going to be above the fold. tsx
3:17:163 hours, 17 minutes, 16 secondsand here I'm going to say export function above the fold
3:17:243 hours, 17 minutes, 24 secondsand this is going to be return and in which we have a section I'm going to
3:17:313 hours, 17 minutes, 31 secondsgive it few class names like flex min- height dash this is going to be a
3:17:383 hours, 17 minutes, 38 secondscustom value and this is going to be calc where we have 100 view per height
3:17:443 hours, 17 minutes, 44 secondsminus 67 pixels of the navigation menu
3:17:513 hours, 17 minutes, 51 secondsflex dash call here we have on desktop this is going to be minimum dash height dash going to be custom which is going
3:17:593 hours, 17 minutes, 59 secondsto be kelk this is going to be 100 viewput height minus 81 pixels of the
3:18:063 hours, 18 minutes, 6 secondsdesktop navigation header after I'm going to open that up here we We have a div. I'm going to give it a class name
3:18:153 hours, 18 minutes, 15 secondsthat is going to be flex. We have flex one as well and flex call items center
3:18:223 hours, 18 minutes, 22 secondsjustify center. On desktop it's going to be flex none. And then we have on desktop
3:18:303 hours, 18 minutes, 30 secondsitems stretch. Then also on desktop it's going to be justify start. And on
3:18:383 hours, 18 minutes, 38 secondsdesktop padding top nine. I'm going to open that div. And here we have a hero
3:18:453 hours, 18 minutes, 45 secondssection component that we're going to build. And then after this div, here we have another div. Going to give it a class name which is going to be desktop.
3:18:563 hours, 18 minutes, 56 secondsAnd that's going to be margin top dash auto. Open that div. And here we have a
3:19:033 hours, 19 minutes, 3 secondslogo cloud. actually logo cloud component that we're going to create
3:19:103 hours, 19 minutes, 10 secondsjust now. So before we get started working on these I need to make sure that this above the
3:19:183 hours, 19 minutes, 18 secondsfold is attached here. So I'm going to open this here and here we have above the fold.
3:19:253 hours, 19 minutes, 25 secondsAwesome. And now if we go here we have hero section here and we have logo cloud
3:19:323 hours, 19 minutes, 32 secondshere. Awesome. So that's almost taking all of the space. And then this is at the very bottom. Awesome. So now I'm
3:19:413 hours, 19 minutes, 41 secondsgoing to create this hero section component. So inside the hero I'm going to create a new file. This is going to be a
3:19:493 hours, 19 minutes, 49 secondssection. TSX and I'm going to say hero tag line. Not that tagline. Hero
3:19:593 hours, 19 minutes, 59 secondstag line. This one. There you go. And here we have export function hero section.
3:20:103 hours, 20 minutes, 10 secondsOpen that. And here we have a return in which we have a div. I'm going to save that. And in the above the fold I'm
3:20:183 hours, 20 minutes, 18 secondsgoing to use that hero section. There you go. Awesome. So
3:20:253 hours, 20 minutes, 25 secondsnow I'm going to give it a class name MX dash auto. We have d-ash full px 4. Then
3:20:343 hours, 20 minutes, 34 secondswe have tablet up. It's going to be px8. Then we have on desktop margin top-12.
3:20:443 hours, 20 minutes, 44 secondsThen we have desktop. This is going to be min- height dash min. Then here I'm going to say 40 viewport height comma 540 pixels.
3:20:583 hours, 20 minutes, 58 secondsAnd I'm going to get out of here. And I'm going to say dashtop padding top is going to be four. Open that div. And we have another div. Give it a class name.
3:21:093 hours, 21 minutes, 9 secondsWe have text dash text- center here. And desktop is going to be pt1.
3:21:173 hours, 21 minutes, 17 secondsOpen that div. Here we have h1. And I'm going to say what will you build? There you go.
3:21:273 hours, 21 minutes, 27 secondsAnd if I save that and go to our browser, they this is what you see.
3:21:333 hours, 21 minutes, 33 secondsLet's design that. I'm going to give some class names to the H1. We have font dash display. We also have text dash 32
3:21:433 hours, 21 minutes, 43 secondspixels. Then we have font normal. We have leading of 32 pixels. Then we have tracking.
3:21:553 hours, 21 minutes, 55 secondsAnd that tracking is going to be min -1
3:22:023 hours, 22 minutes, 2 seconds92 pixels. And then we have text dash text dash heading. We have also desktop
3:22:093 hours, 22 minutes, 9 secondshere. And that's going to be text dash 64 pixels almost. Yeah. Double the size.
3:22:173 hours, 22 minutes, 17 secondsDesktop. We have leading and that's going to be 100%. Then we have desktop
3:22:263 hours, 22 minutes, 26 secondstracking. I'm going to change the normal to minus 0.06
3:22:363 hours, 22 minutes, 36 secondsem. There you go. Let me format and save everything. Let's go here. And awesome. This looks great.
3:22:443 hours, 22 minutes, 44 secondsSo our landing page starting to put together. Yeah, starting to look nice.
3:22:483 hours, 22 minutes, 48 secondsSo here after the H1 here I'm going to create a div. I'm going to give it a class name. We have relative.
3:22:583 hours, 22 minutes, 58 secondsWe have relative MX auto. Then we have margin top four. Then we have height
3:23:053 hours, 23 minutes, 5 secondswhich is going to be 22 pixels. We have width- full max- width-h her tag line.
3:23:123 hours, 23 minutes, 12 secondsAnd inside that div here we have hero tag line. I'm going to save that. Let's go here. And it looks awesome. It keeps
3:23:213 hours, 23 minutes, 21 secondschanging. Wonderful. After this one here, I'm going to create another div. And I'm going to give it a class name.
3:23:293 hours, 23 minutes, 29 secondsThat is going to be MX dash auto. Margin top is going to be 33 pixels. Width dash full max- width-h her category.
3:23:433 hours, 23 minutes, 43 secondsAnd then we have on desktop it's going to be max dashboard versus her prompt we have desktop.
3:23:513 hours, 23 minutes, 51 secondsAwesome. And then inside there we have a pay tag where hero prompt area. This is
3:24:003 hours, 24 minutesanother component that we're going to need to build. So that's going to be displayed here. Awesome.
3:24:073 hours, 24 minutes, 7 secondsAll right. I'm going to get back to above default tsx tsx file and the logo
3:24:143 hours, 24 minutes, 14 secondscloud is the component that we need next. But the logo cloud itself does not contain the SVG code for all of the
3:24:233 hours, 24 minutes, 23 secondsbrands. So that's going to take another component and that is what we're what we need to create first. So inside the hero
3:24:313 hours, 24 minutes, 31 secondsI'm going to create a new file which is going to be brand- logos.tsx
3:24:393 hours, 24 minutes, 39 secondsand here I just need to paste this code because first we have a type here class
3:24:463 hours, 24 minutes, 46 secondsname string then we have constant logo class this and then we have all that we have in this entire file is this
3:24:553 hours, 24 minutes, 55 secondsfunction coinbase logo. Then of course that SVG long file and the code. Then we
3:25:033 hours, 25 minutes, 3 secondshave Dualingo logo and then SVG code for that. And then we have Google logo SVG
3:25:103 hours, 25 minutes, 10 secondscode for that guest gusto logo and Microsoft and everything. And basically this is all just SVG code. And I did not
3:25:193 hours, 25 minutes, 19 secondswant to write all that little numbers and because I could mess up so many time like thousands of times and uh yeah I
3:25:273 hours, 25 minutes, 27 secondsdon't want to do that. And then at the end we have this partner logos this array this map where we have ID for each
3:25:363 hours, 25 minutes, 36 secondsand then logo for that and through that we're going to access everything in the next file that we're going to create and
3:25:453 hours, 25 minutes, 45 secondsthat is going to be this logo cloud. So hero new file this is going to be hero dash sorry logo-cloud.tsx.
3:25:563 hours, 25 minutes, 56 secondsSo I'm going to say use client first of all. Then we have use effect from react.
3:26:053 hours, 26 minutes, 5 secondsWe also need use reference from react and use state from react. Then we have partner logos from our brand logos.
3:26:183 hours, 26 minutes, 18 secondsThen we need a container. Then we need use mounted our hook that we created.
3:26:253 hours, 26 minutes, 25 secondsAnd of course CN. And now here I'm going to say function.
3:26:303 hours, 26 minutes, 30 secondsUm actually first I'm not going to write the above function. So I'm going to say export function
3:26:383 hours, 26 minutes, 38 secondslogo cloud. And here I'm going to say return and let's just say div and logo
3:26:473 hours, 26 minutes, 47 secondscloud because very first thing that I want to do is I want to attach this to above the fold. So here we have
3:26:563 hours, 26 minutes, 56 secondslogo cloud. There you go. Awesome. If I go here, we still have the logo cloud here and that is going to be changed
3:27:053 hours, 27 minutes, 5 secondsin a lot of different ways. So here I'm going to say function logo set and this
3:27:133 hours, 27 minutes, 13 secondsis going to be we have duplicate which is going to be false
3:27:193 hours, 27 minutes, 19 secondsand that type is going to be duplicate which is optional and this is going to
3:27:263 hours, 27 minutes, 26 secondsbe a boolean of course open that and here we have a return in which I'm going
3:27:333 hours, 27 minutes, 33 secondsto create a div. I'm going to give it a class name which is going to be flex shrink zero and items center and gap 12.
3:27:443 hours, 27 minutes, 44 secondsAnd also to that div I'm going to attach a few more attributes. We have data dash
3:27:523 hours, 27 minutes, 52 secondsmark key dash set. There you go. And then we also have area hidden. That's
3:28:003 hours, 28 minutesgoing to be this where we have duplicate if or undefined. Let me format everything.
3:28:113 hours, 28 minutes, 11 secondsAwesome. Let me open that div here now.
3:28:143 hours, 28 minutes, 14 secondsAnd inside that we have partner logos dot map and we have
3:28:223 hours, 28 minutes, 22 secondsindividual actually. Let me do that here first.
3:28:283 hours, 28 minutes, 28 secondsAnd now in this we have ID and logo. There you go. And in here
3:28:373 hours, 28 minutes, 37 secondsI'm going to say logo and that's going to be key. For that is going to be a duplicate.
3:28:473 hours, 28 minutes, 47 secondsif that exists or I mean if that's true then it's going to be uh
3:28:553 hours, 28 minutes, 55 secondsID dash duplicate or it's just simply going to be that ID.
3:29:023 hours, 29 minutes, 2 secondsI guess that's pretty much it for this one. The logo set is done and now we can move on to this part here. So here we
3:29:103 hours, 29 minutes, 10 secondscan say that const mounted is equal to use mounted. There you go. Then we have const track
3:29:203 hours, 29 minutes, 20 secondsreference is equal to use reference. And here we have HTML div element or well we can initiate by null here.
3:29:343 hours, 29 minutes, 34 secondsThen we have const. I'm going to say loop width set loop width is equal to
3:29:433 hours, 29 minutes, 43 secondsuse state zero and here inside this
3:29:493 hours, 29 minutes, 49 secondsreturn I'm going to change this to this open that and here we have a container
3:29:573 hours, 29 minutes, 57 secondsfirst of all to that container I'm going to say as section and then I'm going to
3:30:033 hours, 30 minutes, 3 secondssay class name is going to be relative margin bottom dash 8 and
3:30:123 hours, 30 minutes, 12 secondsoverflow is going to be hidden and height is going to be 12 and inside there we have a div going to give it a
3:30:193 hours, 30 minutes, 19 secondsclass name pointer-ashevents dashnone then we have absolute we also have
3:30:263 hours, 30 minutes, 26 secondsinsert y0 dash zero there you go and we have right
3:30:323 hours, 30 minutes, 32 secondszero as well z10 as L width-24 as well and bg dash gradient
3:30:413 hours, 30 minutes, 41 secondsbg dash gradient to hold on bg dash
3:30:513 hours, 30 minutes, 51 secondsgradient dash 2 dash left and then this is going to be gradient. Yeah. G r a d i e n t.
3:31:033 hours, 31 minutes, 3 secondsAwesome. to left and then we have from dash background and then we have to
3:31:133 hours, 31 minutes, 13 secondsdash transparent awesome and this is going to be a self-closing div and after that I'm going to create another
3:31:223 hours, 31 minutes, 22 secondsself-closing div and point events point events none absolute uh this goes same
3:31:283 hours, 31 minutes, 28 secondsright zero z10 width 24 nbg gradient to actually this first one needs to be
3:31:363 hours, 31 minutes, 36 secondschanged to right here from background to transparent and this one we have to left and from background to transparent.
3:31:473 hours, 31 minutes, 47 secondsAwesome. All right. After that here I'm going to create a div. I'm going to go open and inside that inside that div I'm
3:31:573 hours, 31 minutes, 57 secondsgoing to give it a reference which is going to be track reference and
3:32:043 hours, 32 minutes, 4 secondsthen we give it a class name I'm going to go for CN for this one we have flex
3:32:113 hours, 32 minutes, 11 secondswidth dash max items dash center gap is 12 and will change
3:32:213 hours, 32 minutes, 21 secondstransform form. All right. Then here we have mounted. If that is true and
3:32:293 hours, 32 minutes, 29 secondsloop width is more than zero then we are going to say animate mark
3:32:383 hours, 32 minutes, 38 secondsanimate dash hold on animate dash
3:32:453 hours, 32 minutes, 45 secondsm a r q u a mark that's css class available in the globals. CSS file. All
3:32:523 hours, 32 minutes, 52 secondsright. Now, here under this here, I'm going to say style
3:32:593 hours, 32 minutes, 59 secondsand I'm going to say for the style, I'm going to say mounted. If mounted is true.
3:33:083 hours, 33 minutes, 8 secondsActually, hold on. Let me get rid of one. Yeah. If mounted is true and loop
3:33:163 hours, 33 minutes, 16 secondswidth is also true then we're going to say this where we
3:33:233 hours, 33 minutes, 23 secondshave hold on yeah so here I'm going to say
3:33:353 hours, 33 minutes, 35 secondsdash mark key dash distance
3:33:433 hours, 33 minutes, 43 secondsas string and here I'm going to say this is going to be
3:33:523 hours, 33 minutes, 52 secondsloop width and px here
3:33:583 hours, 33 minutes, 58 secondsas react dot css properties. There you go.
3:34:103 hours, 34 minutes, 10 secondsOtherwise, it's just going to be undefined.
3:34:153 hours, 34 minutes, 15 secondsThat's pretty much it. Awesome. And now I'm going to need to go inside that div.
3:34:203 hours, 34 minutes, 20 secondsAnd here I'm going to need to say logo set. And also logo set. Hold on.
3:34:323 hours, 34 minutes, 32 secondsAnd here I'm going to say duplicate. All right.
3:34:373 hours, 34 minutes, 37 secondsAnd if I go here, of course, there's nothing here. Well, there is. We have the logo, but it's not moving. We have
3:34:453 hours, 34 minutes, 45 secondsall of the logos, but of course, it's not moving. So, for that, I'm going to go up here, and I'm going to say use effect.
3:34:583 hours, 34 minutes, 58 secondsI'm going to say if mountain is not true, I'm going to return
3:35:053 hours, 35 minutes, 5 secondsconstra equal to track reference dot current.
3:35:113 hours, 35 minutes, 11 secondsThen we have if track is not true then we're going to return again
3:35:193 hours, 35 minutes, 19 secondsand I'm going to say const measure is equal to this function where we have con
3:35:273 hours, 35 minutes, 27 secondsyeah where we have const sets is equal to track dot query selector all
3:35:383 hours, 35 minutes, 38 secondsand here I'm going to say HTML element and the thing that I'm going to select is going to be
3:35:473 hours, 35 minutes, 47 secondsI'm going to use double quotes here and I'm going to say use the square brackets data dash
3:35:553 hours, 35 minutes, 55 secondsmarquee dash set the thing that we defined here data marquee set awesome
3:36:023 hours, 36 minutes, 2 secondsall right so that is there and now set loop width is going to be actually
3:36:113 hours, 36 minutes, 11 secondsno I'm going to say if sets dolength is more than or equal to two only then
3:36:203 hours, 36 minutes, 20 secondsI'm going to use set loop width and of course this is going to take sets
3:36:283 hours, 36 minutes, 28 secondsfirst item of that dot of set left minus sets
3:36:373 hours, 36 minutes, 37 secondsfirst item of that it was the second item And this is the first item. And uh as as you know JavaScript and basically
3:36:453 hours, 36 minutes, 45 secondsTypeScript is based on JavaScript but uh JavaScript is uh zero index base. So that's why dot of set left. There you go.
3:36:573 hours, 36 minutes, 57 secondsFinally here I'm going to return and after this one here I'm going to say set loop width for this one is going to be
3:37:053 hours, 37 minutes, 5 secondssets. I'm going to select the first item if that is available then dot offset width from that otherwise it's just
3:37:143 hours, 37 minutes, 14 secondsgoing to be zero. Let me format and save everything. And now after this measure
3:37:223 hours, 37 minutes, 22 secondsI'm going to say measure I'm going to call that function. I'm going to say const observer is equal to new resize observer. There you go.
3:37:353 hours, 37 minutes, 35 secondsmeasure and here I'm going to say observer dot observe I mean I'm going to put the
3:37:433 hours, 37 minutes, 43 secondstrack there and I'm going to return for the use effect dismount it's going to be this function
3:37:523 hours, 37 minutes, 52 secondsobserver dot disisconnect there you go and here of course we need to provide the mounted
3:38:013 hours, 38 minutes, 1 secondhere let me format everything and save everything let's go here and there you go. We have this little issue. Let me
3:38:093 hours, 38 minutes, 9 secondsrefresh. That's gone. So, it's working really, really good.
3:38:153 hours, 38 minutes, 15 secondsAwesome. Fantastic job, guys. Let's get back to the code here. Actually, if I go
3:38:213 hours, 38 minutes, 21 secondshere and this looks this looks kind of fine, but this there is something off.
3:38:333 hours, 38 minutes, 33 secondsSo here, yeah, this needs to be changed to left zero and this one is right zero.
3:38:443 hours, 38 minutes, 44 secondsOkay, I'm saving it. Let's go here back.
3:38:473 hours, 38 minutes, 47 secondsAnd now this one is fading and this one is fading as well. Fantastic.
3:38:533 hours, 38 minutes, 53 secondsEarlier both of them were here on the right zero side. So yeah, this is done now. This is done. Done. Fantastic.
3:39:023 hours, 39 minutes, 2 secondsAll right. I'm going to close this logo cloud as well as this section and in the section actually no in the
3:39:103 hours, 39 minutes, 10 secondssection we need this hero prompt area we can close the tagline and also we can close the above the fold. So let's work
Chapter 13: Hero prompt area
3:39:193 hours, 39 minutes, 19 secondson the hero prompt area and for that I'm going to go to hero and create new file and that's going to be prompt- area.tsx.
3:39:313 hours, 39 minutes, 31 secondsI'm going to say use client and then here we have I'm going to first of all import use router from next navigation.
3:39:423 hours, 39 minutes, 42 secondsThen I'm going to import use effect from react.
3:39:473 hours, 39 minutes, 47 secondsI'm going to also need import type and this is going to be project category from our types.
3:39:563 hours, 39 minutes, 56 secondsAnd here I'm going to say export function hero prompt area.
3:40:073 hours, 40 minutes, 7 secondsOpen that. And here we have a return. Of course, I'm going to display div
3:40:163 hours, 40 minutes, 16 secondspag. And I'm going to say prompt.
3:40:233 hours, 40 minutes, 23 secondsThere you go. And in here, I'm going to get rid of this thing. And I have prompt area. There you go.
3:40:333 hours, 40 minutes, 33 secondsExcellent. And now, if I go here, this prompt is coming from the new component.
3:40:393 hours, 40 minutes, 39 secondsSo, let's get back here. And here I'm going to import use toast as well. And
3:40:473 hours, 40 minutes, 47 secondsinside this function here I'm going to say const router is equal to use router.
3:40:563 hours, 40 minutes, 56 secondsAnd then here I'm going to say const error which is going to be toast
3:41:053 hours, 41 minutes, 5 secondserror. There you go. Is equal to use toast. Awesome. All right. So now I'm
3:41:133 hours, 41 minutes, 13 secondsgoing to come down here and change this to an empty fragment. And in there I have a div tag.
3:41:213 hours, 41 minutes, 21 secondsI'm going to open that up. Class name is going to be MX- auto. Then we have dash full and max-h her prompt. There you go.
3:41:333 hours, 41 minutes, 33 secondsAnd then in here I'm going to create a text area. This is going to be a temporary as later on this is going to
3:41:403 hours, 41 minutes, 40 secondsbe moved to a shared component that's going to be used here on the landing
3:41:473 hours, 41 minutes, 47 secondspage as well as on the members area app page. So here I have a text area
3:41:563 hours, 41 minutes, 56 secondsand I'm going to give it a class name for now that is going to be
3:42:043 hours, 42 minutes, 4 secondswidth dash full. Actually, do you know what? I'm going to get rid of this and use CN here as we're going to need to
3:42:123 hours, 42 minutes, 12 secondsuse that later on. So, for the CN, I'm going to use and of course we need to for now we need to bring CN here, but
3:42:213 hours, 42 minutes, 21 secondsthat's going to be removed later on. So, CN here and then that's going to be width- full. Then we have resize none.
3:42:313 hours, 42 minutes, 31 secondsBG dash transparent. We also have on focus, it's going to be outline dashnone. And we also have on disabled.
3:42:453 hours, 42 minutes, 45 secondsThis is going to be opacity 60. I'm going to put a comma here and go for the second line which is going to be
3:42:533 hours, 42 minutes, 53 secondsmax-height 200 pixels.
3:42:583 hours, 42 minutes, 58 secondsAnd we have overflow hidden. Then we have px2, py1, text small,
3:43:063 hours, 43 minutes, 6 secondsleading normal, and then we have text dash text- primary. Awesome.
3:43:133 hours, 43 minutes, 13 secondsAnd that's pretty much it for now. I'm going to save it. And now if we go here,
3:43:213 hours, 43 minutes, 21 secondswell, the text area is there. Of course, the styling is not there. I can click on this one
3:43:293 hours, 43 minutes, 29 secondsand for that I'm going to give it a placeholder and that's going to be text
3:43:363 hours, 43 minutes, 36 secondsdash. This is going to be ash 6 9
3:43:423 hours, 43 minutes, 42 seconds6 C 74. There you go. And of course I'm also going to give this a placeholder.
3:43:523 hours, 43 minutes, 52 secondsThat placeholder is going to be Describe your idea replete will bring it to life.
3:44:033 hours, 44 minutes, 3 secondsSave it. Let's go here. And there you go. We still have that, but we still have no borders around it. Let's go back here.
3:44:143 hours, 44 minutes, 14 secondsI'm going to get this text area and put it in another div. And there you go. And to that div I'm going to give it some class names.
3:44:253 hours, 44 minutes, 25 secondsAnd I'm going to use CN here. And that is going to be first of all relative.
3:44:313 hours, 44 minutes, 31 secondsThen secondly, I'm going to say rounded dash 20 pixels. Then I'm going to say border.
3:44:423 hours, 44 minutes, 42 secondsThen I'm going to say border dash FFB1 999.
3:44:493 hours, 44 minutes, 49 secondsAnd then I'm going to say bg dash dash f3 f3 f1.
3:44:563 hours, 44 minutes, 56 secondsAnd I have transition colors. And I'm going to change that to
3:45:023 hours, 45 minutes, 2 secondstransition min dash height. And then I'm going to say duration- 200. There you
3:45:103 hours, 45 minutes, 10 secondsgo. Let me format that. Let's me let me get back here. And this is what we have so far. All right. We're going to need
3:45:193 hours, 45 minutes, 19 secondsanother div here. So, I'm going to get this inspect. I'm going to put it another div here. And I'm going to give
3:45:283 hours, 45 minutes, 28 secondsit a class name. And that's going to be CN here. Open that. This is going to be px-3 and pb-12.
3:45:403 hours, 45 minutes, 40 secondsI'm going to save that. Format everything. Let's get back to here. And there you go.
3:45:473 hours, 45 minutes, 47 secondsAwesome. So here, if you go back here, you would notice we have very slight space on the top. So
3:45:563 hours, 45 minutes, 56 secondsI'm going to get back here and I'm going to give that here PD-3
3:46:033 hours, 46 minutes, 3 secondshere. So let's get back and awesome. It looks good now. And by the way, just let me tell you that we are doing this whole
3:46:123 hours, 46 minutes, 12 secondsthing for the exemplary stuff. This whole code is not going to be put here.
3:46:193 hours, 46 minutes, 19 secondsEventually, it's going to be moved from here to somewhere other place and uh I don't want to spend too much time on
3:46:263 hours, 46 minutes, 26 secondsthat just to show you guys that this is how it's going to look. It is going to look perfect at the end. But I guess
3:46:343 hours, 46 minutes, 34 secondsthat's pretty much it. And after the text area here, let me create the button here real quick. All right. Next, I'm
3:46:423 hours, 46 minutes, 42 secondsgoing to get out of this div here and I'm going to create a new div. I'm going to give it a class name absolute.
3:46:513 hours, 46 minutes, 51 secondsThen we have bottom three. We also have left three.
3:46:573 hours, 46 minutes, 57 secondsAnd I'm going to say right three as well. And we have flex items center
3:47:043 hours, 47 minutes, 4 secondsjustify between gap is going to be two for this one. Open that. We have another div inside.
3:47:123 hours, 47 minutes, 12 secondsI'm going to give it some class names as flex min width zero. Then we have flex
3:47:193 hours, 47 minutes, 19 secondswrap. We have items center. Gap is going to be to open that div. Here we have a
3:47:263 hours, 47 minutes, 26 secondsbutton that to that button I'm going to give it a type. That's going to be button.
3:47:343 hours, 47 minutes, 34 secondsThen I'm going to give it class name and that's going to be CN. Here, I'm going to open that up.
3:47:413 hours, 47 minutes, 41 secondsFlex height dash 8, width dash 8,
3:47:493 hours, 47 minutes, 49 secondsshrink zero. Then we have items dash center, justify dash center, transition
3:47:563 hours, 47 minutes, 56 secondsdash colors, and on disabled is going to be opacity 60. I'm going to put a comma come down
3:48:063 hours, 48 minutes, 6 secondsand here I'm going to say rounded dash full
3:48:153 hours, 48 minutes, 15 secondsrounded there you go dash full and then we have bg dash custom value which is going to
3:48:233 hours, 48 minutes, 23 secondsbe f3 f3 f1 then we have text dash hash
3:48:313 hours, 48 minutes, 31 seconds2 a29 9 to C. Then on hover, it's going
3:48:373 hours, 48 minutes, 37 secondsto be bg dash black slash 0.04.
3:48:433 hours, 48 minutes, 43 secondsThere you go. And also to this one, I'm going to say area label. That's going to be add attachment. There you go.
3:48:553 hours, 48 minutes, 55 secondsI'm going to add this SVG to this one. I'm going to copy paste that. Save that.
3:49:003 hours, 49 minutesOf course, you can find that in the code in the GitHub repo. Link is available in description. So, if I go here, there you
3:49:093 hours, 49 minutes, 9 secondsgo. We have this little plus icon. Of course, it does not do anything yet. It will do everything once we set
3:49:173 hours, 49 minutes, 17 secondseverything up. Right after that button here,
3:49:243 hours, 49 minutes, 24 secondsI'm going to create a I'm going to create a span here. And I'm going to give it a class name inline dash flex
3:49:333 hours, 49 minutes, 33 secondsh7. And then I'm going to have items dash center gap 1.5
3:49:403 hours, 49 minutes, 40 secondsrounded md. And then I'm going to have border border replet orange slash
3:49:503 hours, 49 minutes, 50 seconds30 and then bgre replet orange/10 px2
3:49:573 hours, 49 minutes, 57 secondsand text-s text replet orange and I'm going to open that span now
3:50:063 hours, 50 minutes, 6 secondsand here we have simply plan mode there There you go.
3:50:143 hours, 50 minutes, 14 secondsI'm going to format everything and save everything. And if I go there, you have our plan mode. This gets visible when
3:50:223 hours, 50 minutes, 22 secondsthe plan mode is activated. And since there are no conditions there yet, so I cannot put this inside the condition.
3:50:303 hours, 50 minutes, 30 secondsRight now, we are just only focusing on the UI.
3:50:343 hours, 50 minutes, 34 secondsSo after this span here, I'm going to create a button.
3:50:403 hours, 50 minutes, 40 secondsIt's going to be type. Hold on. Type is going to be button for this one. And we
3:50:473 hours, 50 minutes, 47 secondsalso have class names flex height dash4 width dash4
3:50:563 hours, 50 minutes, 56 secondsitems dash center. Then we have justify center also rounded.
3:51:043 hours, 51 minutes, 4 secondsAnd then we have text-relate orange/80.
3:51:103 hours, 51 minutes, 10 secondsAnd then we have on hover it's going to be text-repplet orange. That button is
3:51:173 hours, 51 minutes, 17 secondsgoing to have a area label as well which is going to say disable plan mode.
3:51:273 hours, 51 minutes, 27 secondsAnd inside that button we have an SVG and there you go. We have that SVG here.
3:51:353 hours, 51 minutes, 35 secondsIf I go here this is what you have.
3:51:373 hours, 51 minutes, 37 secondsBasically, it does not work the way it should right now. As you guys can of course imagine
3:51:453 hours, 51 minutes, 45 secondsthat we're going to put a lot of effort into this, more effort into this when we are actually working on that component.
3:51:543 hours, 51 minutes, 54 secondsThere is one thing that I would like to confirm if I go here. So, yeah, this button should be inside the span tag.
3:52:053 hours, 52 minutes, 5 secondsThere you go. Let me format everything. Save everything. Now if we go back.
3:52:093 hours, 52 minutes, 9 secondsAwesome. Yes, that cross should be within this background. Awesome. Let's
3:52:163 hours, 52 minutes, 16 secondsmove on. And now I'm going to pull this up. And after this pan, we have this div. I'm going to get under that div.
3:52:273 hours, 52 minutes, 27 secondsAnd here I'm going to create another one. I'm going to give it a class name flex
3:52:323 hours, 52 minutes, 32 secondsitems dash center and gap of two. Open that div here and inside I'm going to create a button.
3:52:433 hours, 52 minutes, 43 secondsType of the button is going to be button. Then here I'm going to say class name.
3:52:523 hours, 52 minutes, 52 secondsThis is going to be CN. Open that. And this is going to be inline dash lex. Hold on.
3:53:003 hours, 53 minutesInline dash flex.
3:53:033 hours, 53 minutes, 3 secondsAnd then we have height dash 8 and items dash center gap 1.5
3:53:113 hours, 53 minutes, 11 secondsrounded lg. We have border. We have px 2.5. We have text xs
3:53:203 hours, 53 minutes, 20 secondstransition colors. Then we have on disabled. This is going to be opacity 60.
3:53:283 hours, 53 minutes, 28 secondsAll right. And then I'm going to put a comma here. And I'm going to say
3:53:353 hours, 53 minutes, 35 secondsborder actually border dash. This is going to be ash f uh df d e dh. And then
3:53:463 hours, 53 minutes, 46 secondsafter that we have text dash text dash muted. And then we have on hover.
3:53:543 hours, 53 minutes, 54 secondsI'm going to say bg dash black dash 0.04.
3:54:013 hours, 54 minutes, 1 secondAll right. Then I'm going to come here and it's going to be area label. That's
3:54:093 hours, 54 minutes, 9 secondsgoing to be enable plan mode. There you go.
3:54:183 hours, 54 minutes, 18 secondsAnd inside the button I'm going to say plan. Let me format everything. Save everything. Let's go here. And there you
3:54:263 hours, 54 minutes, 26 secondsgo. We have our plan. And of course, we're going to need to create a icon for this one. That's going to go here and here as well. But that's later.
3:54:373 hours, 54 minutes, 37 secondsActually, do you know what? On the second thought, we we should do that here. So, I'm going to write function
3:54:473 hours, 54 minutes, 47 secondsplan icon and here I'm going to say return open that and let's paste the SVG for
3:54:563 hours, 54 minutes, 56 secondsthe plan icon and this is going to be used of course I mean I mean this is going to be moved along with the rest of
3:55:043 hours, 55 minutes, 4 secondsthe code to the shirt component when we work on that so right now
3:55:113 hours, 55 minutes, 11 secondsI'm going to display our plan icon here also this is going to be displayed here
3:55:203 hours, 55 minutes, 20 secondsas well let me format and save everything. Let's go here. And there you go. It looks good. It looks really,
3:55:273 hours, 55 minutes, 27 secondsreally good. And now let's move on to the next button here.
3:55:323 hours, 55 minutes, 32 secondsAfter this button, I'm going to create another button. And I'm going to give it a type
3:55:413 hours, 55 minutes, 41 secondsbutton. Then we have class name. And for that I am going to use CN.
3:55:493 hours, 55 minutes, 49 secondsAnd I'm going to say flex height 8 width 8 items center
3:55:583 hours, 55 minutes, 58 secondsjustify center rounded LG transition colors and then we have
3:56:053 hours, 56 minutes, 5 secondsdisabled opacity is going to be 60. Awesome. And then I'm going to put a comma here.
3:56:133 hours, 56 minutes, 13 secondsAnd second one is going to be text dash
3:56:203 hours, 56 minutes, 20 seconds# 69 6 c 74
3:56:303 hours, 56 minutes, 30 secondsand on hover it's going to be bg black/0.04
3:56:373 hours, 56 minutes, 37 secondsand of course that's going to be in the brackets. All right.
3:56:433 hours, 56 minutes, 43 secondsAnd now I'm going to also add area label. That's going to be start voice input.
3:56:533 hours, 56 minutes, 53 secondsFantastic.
3:56:553 hours, 56 minutes, 55 secondsNow, inside the button here, of course, we're going to need an icon. So, for now, I'm going to say mic. Save. And if
3:57:033 hours, 57 minutes, 3 secondswe go here, here. There you go. We have a little mic here, but not the icon. And
3:57:093 hours, 57 minutes, 9 secondsthat icon we need to create now let's actually create this icon for the mic here now. So I'm going to go to the very
3:57:183 hours, 57 minutes, 18 secondstop under the plan icon here I'm going to say function mic icon
3:57:273 hours, 57 minutes, 27 secondsand here I'm going to say active is equal to false and this is a type of this where we have
3:57:353 hours, 57 minutes, 35 secondsactive basically optional and it's going to be boolean open that and here we're
3:57:423 hours, 57 minutes, 42 secondsgoing to say return and in the return We have this SVG.
3:57:503 hours, 57 minutes, 50 secondsThere you go.
3:57:523 hours, 57 minutes, 52 secondsAnd there's one thing that I would like to highlight that this active is being used here.
3:57:583 hours, 57 minutes, 58 secondsSo basically, if the mic icon is active, then it's going to use the current color. Otherwise, it's going to be just none. So that is what we're doing here.
3:58:083 hours, 58 minutes, 8 secondsAnd now we need to use that here. So here we have mic icon. There you go.
3:58:163 hours, 58 minutes, 16 secondsI'm going to go back and awesome. It looks good. Really, really good. Let's go back and get started working on the next button here.
3:58:283 hours, 58 minutes, 28 secondsI'm going to create a button here and give it a class name. And of course, before that, I'm going to give it a type
3:58:373 hours, 58 minutes, 37 secondswhich is going to be button. The class name here is going to be CN. And in there I'm going to say flex items dash
3:58:463 hours, 58 minutes, 46 secondscenter justify center and we have rounded dash full and transition all.
3:58:543 hours, 58 minutes, 54 secondsThere you go. Put a comma here. Come down and I'm I'm going to say h dash8
3:59:013 hours, 59 minutes, 1 secondgap 1 bgrelet orange and then px is going to be three. And I'm going to
3:59:103 hours, 59 minutes, 10 secondssay text dash small and font medium and text dash white. There you go. Also, I'm
3:59:183 hours, 59 minutes, 18 secondsgoing to give it a label which is going to be start. I'm going to open that button here.
3:59:253 hours, 59 minutes, 25 secondsAnd I'm going to say I'm going to put this SVG in here. Let me format everything.
3:59:333 hours, 59 minutes, 33 secondsThere you go. That SVG. And if I go back and see, well, actually that state is
3:59:403 hours, 59 minutes, 40 secondsgoing to be used when we have something here. But by default, that color is going to be changed. So,
3:59:493 hours, 59 minutes, 49 secondswe're going to need to comment this line. And I'm going to come up here and I'm going to say hash8
3:59:573 hours, 59 minutes, 57 secondsand width dash 8. And I'm going to say bg.
4:00:044 hours, 4 secondsThis is going to be hash FFB1 999. And we also have text dash white.
4:00:134 hours, 13 secondsThere you go. And now let's go here and here. There you go. We have our button.
4:00:214 hours, 21 secondsSo with that basically we are not completely done of course because there are a lot of things that we still need to do about this just text area stuff.
4:00:314 hours, 31 secondsThere are a lot of hooks. There are a lot of functions that are going to be written and integrated with this. So
4:00:384 hours, 38 secondsthat way we're going to use the AI and but I guess the UI part is kind of done
4:00:464 hours, 46 secondsand we have only a few things left that we will take care of when we really work on the shared component. Right now I
4:00:544 hours, 54 secondswould like to work on the example prompts that are going to be displayed here under somewhere in this place. So
4:01:034 hours, 1 minute, 3 secondslet's do that. So here I'm going to go to my code editor and I'm going to create a new file.
4:01:114 hours, 1 minute, 11 secondsActually I'm going to collapse everything and under components I'm going to open a new folder. I'm going to
4:01:184 hours, 1 minute, 18 secondsname it shared. And there I have this new file example dash prompts.tsx.
4:01:304 hours, 1 minute, 30 secondsThere you go. Then here we're going to make sure that it's a client component and I'm going to say import use state.
4:01:404 hours, 1 minute, 40 secondsThere you go. All right. And the next thing that I'm going to import is example prompts
4:01:474 hours, 1 minute, 47 secondsprompt sets from our landing data. And I'm going to import CN. And here we have
4:01:544 hours, 1 minute, 54 secondstype example prompt is equal to this label which is going to be a string and text which is also going to be a string.
4:02:064 hours, 2 minutes, 6 secondsAwesome. I'm going to say const theme styles is equal to this. Let's add some
4:02:124 hours, 2 minutes, 12 secondsstyles. So here we have landing and for the landing because later on I'm going
4:02:194 hours, 2 minutes, 19 secondsto end up adding one for the app as well. Just like that. So here in the landing I'm going to say wrapper and
4:02:284 hours, 2 minutes, 28 secondsthis is going to be flex flex dash call items dash center and gap dash two. Then
4:02:364 hours, 2 minutes, 36 secondswe have label row that's going to be relative and height- five. Then we have
4:02:444 hours, 2 minutes, 44 secondslabel that's going to be text-sm and text- text dash muted. Awesome. And then
4:02:514 hours, 2 minutes, 51 secondswe have refresh which is going to be absolute
4:02:574 hours, 2 minutes, 57 secondsdash right dash 6 top dash zero flex height
4:03:054 hours, 3 minutes, 5 secondsflex height dash five width dash five items dash center and just ty
4:03:154 hours, 3 minutes, 15 secondsdash center all right after that we have text
4:03:224 hours, 3 minutes, 22 secondsdash it's going to be custom value hash 6 9 6 C74
4:03:314 hours, 3 minutes, 31 secondsafter that we have on hover it's going to be bg dash black/ 0.04 04.
4:03:424 hours, 3 minutes, 42 secondsThere you go. And then after that here, I'm going to add a chip which is going to be
4:03:504 hours, 3 minutes, 50 secondsheight dash 8 rounded MD border and border is going to be custom
4:03:594 hours, 3 minutes, 59 secondsvalue here. Hashtag DB B
4:04:064 hours, 4 minutes, 6 secondsD9 D3. There you go. And then we have bg # ef e c. Then we have px-2.
4:04:184 hours, 4 minutes, 18 secondsWe also have text dash 13 pixels.
4:04:234 hours, 4 minutes, 23 secondsAnd then we have text dash dash 212225.
4:04:304 hours, 4 minutes, 30 secondsWe have also shadow.
4:04:334 hours, 4 minutes, 33 secondsThat's going to be custom value 0_1 px_2 px
4:04:404 hours, 4 minutes, 40 secondsrgba 0 0 0.02 02 and then we have
4:04:494 hours, 4 minutes, 49 secondstransition dash colors however it's going to be
4:04:574 hours, 4 minutes, 57 secondsborder and that's going to be custom value which is # FFB199
4:05:054 hours, 5 minutes, 5 secondsthere you go let me format everything I think we are done for the landing part as that is the only that we need for now
4:05:134 hours, 5 minutes, 13 secondswe will handle the app part later and of course this whole thing needs to be used as const. All right.
4:05:234 hours, 5 minutes, 23 secondsNow here we have type example prompt
4:05:304 hours, 5 minutes, 30 secondsexample prompts props. Upon that we have a variant that's going to be a key of
4:05:404 hours, 5 minutes, 40 secondstype of theme styles. Then we have on select
4:05:474 hours, 5 minutes, 47 secondsthat's going to be a text which is going to be a string and it's not going to return anything. Awesome. Here we have
4:05:564 hours, 5 minutes, 56 secondsexport function example prompt. No example prompt. There you go.
4:06:044 hours, 6 minutes, 4 secondsAnd let's open this function. And now in here I'm going to say variant is equal to landing by default.
4:06:144 hours, 6 minutes, 14 secondsWe also have on select as well. This is going to be a type of example prompts
4:06:214 hours, 6 minutes, 21 secondsprops. There you go. Here we have const styles is equal to theme styles. And I'm
4:06:304 hours, 6 minutes, 30 secondsgoing to say here variant. Awesome. Let me format everything. I'm going to come down here. And here we have const
4:06:394 hours, 6 minutes, 39 secondsprompts example prompt array of that. And that's going to be
4:06:464 hours, 6 minutes, 46 secondsequal to variant. when that is equal to landing
4:06:544 hours, 6 minutes, 54 secondsthen it's going to be example prompt sets and I'm going to say
4:07:024 hours, 7 minutes, 2 secondsset index set index here otherwise I'm just going
4:07:104 hours, 7 minutes, 10 secondsto say null here and of course we need this set index so I'm going to say const
4:07:194 hours, 7 minutes, 19 secondsset index and also I'm going to say set set index is equal to use
4:07:294 hours, 7 minutes, 29 secondsstate for now it's just zero there you go and here I'm going to return something
4:07:394 hours, 7 minutes, 39 secondsthat's going to be a div I'm going to give it a class name and that's going to be styles dot
4:07:494 hours, 7 minutes, 49 secondsdot hold on yeah styles dot wrapper there you go for now I'm going to open
4:07:574 hours, 7 minutes, 57 secondsthis up and first of all I need to get rid of this error and for that b basically this is going to be something
4:08:044 hours, 8 minutes, 4 secondsfor the landing page when when variant is equal to landing page then we're going to display the example prompts but
4:08:114 hours, 8 minutes, 11 secondswhen that is not means it's the app page then we're going to display something else and that we do not have yet. So, I
4:08:204 hours, 8 minutes, 20 secondsguess what I can do right now, I can get rid of this and this as well. Yeah. So, I'm just going to save it like that. All right.
4:08:324 hours, 8 minutes, 32 secondsNow, I'm going to come inside here and here we have div. I'm going to give it class name and here I'm going to say
4:08:414 hours, 8 minutes, 41 secondsstyles dot label row. Open that div.
4:08:484 hours, 8 minutes, 48 secondscreate a span and here I'm going to give it a class name which is going to be
4:08:554 hours, 8 minutes, 55 secondsstyles dot label and I'm going to say try an example
4:09:014 hours, 9 minutes, 1 secondprompt after this fan we have a button I'm going to give it a class name
4:09:084 hours, 9 minutes, 8 secondsand of course this is going to be a type which is going to be a button and also I need on click here so So, I'm going to
4:09:174 hours, 9 minutes, 17 secondssay I'm going to open this up and I'm going to say set
4:09:264 hours, 9 minutes, 26 secondsset index and that's going to be previous and I'm going to say previous +
4:09:344 hours, 9 minutes, 34 secondsone and I'm going to use the modular operator here and example prompts
4:09:424 hours, 9 minutes, 42 secondsexample prompt sets dot length. There you go. Hold on. Let me format everything. Yes. Awesome. And
4:09:504 hours, 9 minutes, 50 secondsthere is one more thing that I would like to do here is actually so on click in here I'm going to say when the
4:09:584 hours, 9 minutes, 58 secondsvariant is equal to landing only then we're going to do this
4:10:064 hours, 10 minutes, 6 secondsotherwise we're going to make sure it's undefined. Awesome.
4:10:124 hours, 10 minutes, 12 secondsFantastic. Now here in the class name we need styles dot refresh and I'm also
4:10:224 hours, 10 minutes, 22 secondsgoing to need area dash label and that's going to be refresh example props and
4:10:304 hours, 10 minutes, 30 secondsunder button we have an SVG which I'm going to give you here. So there you go.
4:10:384 hours, 10 minutes, 38 secondsOf course that can be found from the GitHub repo. Now under the SVG we have this button and one div. I'm going to
4:10:454 hours, 10 minutes, 45 secondsget out of that div and create another div here. I'm going to give it a
4:10:524 hours, 10 minutes, 52 secondsclass name. I'm going to say it's C name CN and for that we have flex
4:10:594 hours, 10 minutes, 59 secondsflex wrap and then we have justify center and gap of two. I'm going to open
4:11:054 hours, 11 minutes, 5 secondsthat div. And here we have prompts dot map.
4:11:134 hours, 11 minutes, 13 secondsAnd in here we have single prompt and for that we are returning. I'm going to
4:11:214 hours, 11 minutes, 21 secondsgo inside and here we have a button. I'm going to give it a key. First of all that's going to be prompt dot key. Uh
4:11:304 hours, 11 minutes, 30 secondsprompt dot label. And then we have type button.
4:11:394 hours, 11 minutes, 39 secondsWe also have on click. That's going to be this
4:11:454 hours, 11 minutes, 45 secondson select. When that is there, then prompt dot text on that. Awesome. And
4:11:554 hours, 11 minutes, 55 secondsthen we need class name as well. And for the class name, I'm going to say
4:12:024 hours, 12 minutes, 2 secondsstyles dot chip. Awesome. And I'm going to open that up. And here we have prompt
4:12:124 hours, 12 minutes, 12 secondsdot label. Let me format everything and save everything.
4:12:184 hours, 12 minutes, 18 secondsAnd I we have these issues that property chip does not exist.
4:12:254 hours, 12 minutes, 25 secondsAnd uh on type empty basically we have these issues on the refresh and all of
4:12:324 hours, 12 minutes, 32 secondsthese as well. And uh yeah let's get rid of the app from here. We're going to add that when we have the real data for
4:12:394 hours, 12 minutes, 39 secondsthat. And there you go. Yes, all that issues have been sorted out. So I'm going to save it.
4:12:484 hours, 12 minutes, 48 secondsAnd now I'm going to go to prompt area.
4:12:514 hours, 12 minutes, 51 secondsSo in this page under this div insert the very bottom before the fragment
4:12:584 hours, 12 minutes, 58 secondshere. I'm going to create a div. I'm going to give it a class name. That's going to be MX- auto margin top 3.5.
4:13:084 hours, 13 minutes, 8 secondsThere you go. And then we have hidden width dash full max width hero dash
4:13:194 hours, 13 minutes, 19 secondsprompt. And then we have on desktop it's going to be block. Open that up. And here we have example prompts.
4:13:284 hours, 13 minutes, 28 secondsAnd there you go. I'm going to save it.
4:13:304 hours, 13 minutes, 30 secondsFormat everything. Let's go to our browser. And there you go. We have these prompts. Nice looking. If I click on this one, it refreshes. Excellent job.
4:13:414 hours, 13 minutes, 41 secondsLet's get back. And the next thing that we need to work on is the category icons.
4:13:504 hours, 13 minutes, 50 secondsI'm going to go to our shared folder and I'm going to say new file. This is going to be category- icons.tsx.
4:14:014 hours, 14 minutes, 1 secondAnd this component is a little different here because we are not going to write this component.
4:14:084 hours, 14 minutes, 8 secondsFirst of all, we have use id from react and then we have project category.
4:14:194 hours, 14 minutes, 19 secondsNo, we have type project category. There you go.
4:14:254 hours, 14 minutes, 25 secondsAnd then we have all this code that I'm going to paste
4:14:324 hours, 14 minutes, 32 secondshere. There you go. Awesome. So let me explain what is happening here basically. Okay. So, first of all, we
4:14:404 hours, 14 minutes, 40 secondsare not using Lucid React icons in this project as I just wanted to make sure
4:14:474 hours, 14 minutes, 47 secondsthat we are going to replicate the replet landing page and icons and
4:14:544 hours, 14 minutes, 54 secondseverything as exact as possible and Lucid icons did not have those icons. So
4:15:024 hours, 15 minutes, 2 secondsI kind of picked all of these icons from the replet website past grabbed all of those SVG elements and saved them tested
4:15:104 hours, 15 minutes, 10 secondsthem made a little bit changes and like just stroke current color and things like that and uh I don't want you to
4:15:184 hours, 15 minutes, 18 secondswrite all of the SVG code and things like that. So that's there already available to you in the video
4:15:254 hours, 15 minutes, 25 secondsdescription as GitHub repo. Please download that. Get the code from there.
4:15:324 hours, 15 minutes, 32 secondsAnd there you go. You have category check icon.
4:15:374 hours, 15 minutes, 37 secondsAnd then for the category icon, you have a few cases. It's the switch statement.
4:15:444 hours, 15 minutes, 44 secondsIn case of website, we are returning this SVG. Then in case of mobile, we're returning this SVG. We also have design
4:15:534 hours, 15 minutes, 53 secondsthat's just SVG. We have slides a single SVG returning that on data we're returning that. So basically this is a
4:16:024 hours, 16 minutes, 2 secondssimple as a simple switch statement that we're using and for each case we're returning an SVG as simple as that.
4:16:124 hours, 16 minutes, 12 secondsThere is no rocket science. Do not worry that I just pasted some code for you just to follow. Well, this I mean if you
4:16:204 hours, 16 minutes, 20 secondsdon't like that, you definitely you're always welcome to go to the Replet
4:16:264 hours, 16 minutes, 26 secondswebsite itself and grab these icons from there. Let me show you how you can do
4:16:334 hours, 16 minutes, 33 secondsthat. So, if I go to Replet and there you go. So I'm going to open
4:16:404 hours, 16 minutes, 40 secondsthat website and for example let's say if I like this icon I'm going to click inspect and here I'm going to click on this one.
4:16:514 hours, 16 minutes, 51 secondsThis has brought me hold on.
4:16:584 hours, 16 minutes, 58 secondsSo we have this one this SVG. I'm going to copy that. You click that SVG and
4:17:044 hours, 17 minutes, 4 secondsthen you do Ctrl C from there. And that way you can copy the entire SVG and that
4:17:144 hours, 17 minutes, 14 secondscan be used anywhere. Like if I go here, I can create a new file, paste it. There you go. That's the SVG file. That's how
4:17:224 hours, 17 minutes, 22 secondsyou can grab them. Yeah. So anyways, this file is done. I'm going to close this file and I'm going to work on the
4:17:314 hours, 17 minutes, 31 secondsnext file. Now before I move on to the category carousel above this example
4:17:374 hours, 17 minutes, 37 secondsprompts here something like this this category carousel I would like to make
4:17:444 hours, 17 minutes, 44 secondssure that the draft state is completely done before we move on to anything else. So for that we
4:17:544 hours, 17 minutes, 54 secondsare going to need to create a couple of files. So first I'm going to collapse everything and under lib I'm going to
4:18:014 hours, 18 minutes, 1 secondcreate a new file. This is going to be hero dash prompt dashdraft.ts.
4:18:114 hours, 18 minutes, 11 secondsAnd here I have first of all on storage underscore key is equal to dash
4:18:214 hours, 18 minutes, 21 secondsuh I mean quotes replet dash her dash prompt
4:18:284 hours, 18 minutes, 28 secondsdash draft there you go then here we have export type hero prompt draft is
4:18:374 hours, 18 minutes, 37 secondsequal to this we have value string category ID string or
4:18:464 hours, 18 minutes, 46 secondsnull. Then we have plan mode is going to be boolean. Then we have auto
4:18:574 hours, 18 minutes, 57 secondsstart is boolean as well. All right. Now here we have export
4:19:054 hours, 19 minutes, 5 secondsfunction save hero prompt draft. It's going to take a draft hero prompt draft.
4:19:174 hours, 19 minutes, 17 secondsIf type of window is equal to undefined
4:19:264 hours, 19 minutes, 26 secondsthen we return otherwise we have session storage dot set item
4:19:344 hours, 19 minutes, 34 secondsand I'm going to say storage key hold on storage key and the second value is
4:19:424 hours, 19 minutes, 42 secondsgoing to be JSON dot stringify by draft. Awesome. Then I'm going to come down here once more. Export function.
4:19:544 hours, 19 minutes, 54 secondsI'm going to say load hero prompt draft. This is going to be returning a hero prompt draft or just nothing.
4:20:094 hours, 20 minutes, 9 secondsAnd if type of window is equal to undefined,
4:20:174 hours, 20 minutes, 17 secondswe return null from there. And we're going to say try
4:20:254 hours, 20 minutes, 25 secondsand cache block here. And in the try, I'm going to say const raw is equal to
4:20:324 hours, 20 minutes, 32 secondssession storage dot get item. I'm going to say storage key
4:20:394 hours, 20 minutes, 39 secondsand then if raw is not there then we return null
4:20:464 hours, 20 minutes, 46 secondsand if that is there then we have const parsed is equal to JSON dot parse and we
4:20:544 hours, 20 minutes, 54 secondssay raw here as partial and in there I'm going to say
4:21:004 hours, 21 minuteshero prompt draft awesome and if type of
4:21:074 hours, 21 minutes, 7 secondsparsed dot value is not equal to a string
4:21:134 hours, 21 minutes, 13 secondsthen we return null as well and here finally I'm going to return
4:21:234 hours, 21 minutes, 23 secondsuh where is that return this hero prompt draft and for that it's going to be this object which is going to be value
4:21:324 hours, 21 minutes, 32 secondspared dot value then we have category id which is going to be type of
4:21:404 hours, 21 minutes, 40 secondspared dot category id. If that is equal to string then it's going to be parsed dot
4:21:494 hours, 21 minutes, 49 secondscategory id otherwise it's going to be simply null and then we have plan mode
4:21:574 hours, 21 minutes, 57 secondsthat's going to be boolean and we have parsed dot plan mode and then we have
4:22:044 hours, 22 minutes, 4 secondsauto start that's going to be boolean and parsed dot auto start hold on auto
4:22:134 hours, 22 minutes, 13 secondsstart. There you go. Let me format everything. And now under the catch, I'm going to say return null. So we are
4:22:214 hours, 22 minutes, 21 secondsreturning either this hero prompt draft or null out of this function. And then here let me write this final one. So we
4:22:314 hours, 22 minutes, 31 secondshave export function clear hero prompt
4:22:374 hours, 22 minutes, 37 secondsdraft and I'm going to open that. If type of
4:22:444 hours, 22 minutes, 44 secondswindow is undefined then we simply return and we have session storage dot
4:22:544 hours, 22 minutes, 54 secondsremove item and we have storage key. Let me format everything and save everything. Awesome. All right. So this
4:23:034 hours, 23 minutes, 3 secondsis it for now and I don't want to dig into too much deeper for the logic for
4:23:104 hours, 23 minutes, 10 secondsnow and I want to focus on the UI for this uh video I guess and I'm going to
4:23:184 hours, 23 minutes, 18 secondsclose this file and also I'm going to close this file and here I'm going to
4:23:244 hours, 23 minutes, 24 secondsneed another one. So I'm going to create a div here and inside that div we're going to need another component. So for
4:23:334 hours, 23 minutes, 33 secondsthat I'm going to go in the shade folder and I'm going to create a new file which
Chapter 14: Category carousel
4:23:394 hours, 23 minutes, 39 secondswe have category dash carousel.tsx.
4:23:454 hours, 23 minutes, 45 secondsSo this is going to be a client component.
4:23:514 hours, 23 minutes, 51 secondsThere you go. And then we have use effect from React also use ref from
4:23:594 hours, 23 minutes, 59 secondsReact and use state from React. Then we're going to need
4:24:064 hours, 24 minutes, 6 secondscategory check icon and then also category icon as well. And here I'm
4:24:144 hours, 24 minutes, 14 secondsgoing to need project categories from the landing data and type
4:24:244 hours, 24 minutes, 24 secondsproject category as well. Of course, let me put this here. And then I'm going to
4:24:314 hours, 24 minutes, 31 secondsneed a CN as well. Awesome. Here we have const. I'm going to say category
4:24:404 hours, 24 minutes, 40 secondsitem width is equal to 96.
4:24:454 hours, 24 minutes, 45 secondsAnd then we have cost theme styles for this one. I'm going to open that up. We have landing. And in the
4:24:544 hours, 24 minutes, 54 secondslanding, I'm going to say error first of all. So for the arrow we have flex hash
4:25:024 hours, 25 minutes, 2 seconds7 width -7 shrink dash zero items dash center then
4:25:094 hours, 25 minutes, 9 secondswe have just a five dash center we have rounded dash
4:25:174 hours, 25 minutes, 17 seconds6 pixels also bg dash this custom value where we have var I'm going to say dash
4:25:264 hours, 25 minutes, 26 secondscarousel dash arrow -bg and then afterwards we have text dash text dash
4:25:354 hours, 25 minutes, 35 secondssecondary also transition dash
4:25:404 hours, 25 minutes, 40 secondsbackground dash color transform
4:25:484 hours, 25 minutes, 48 secondsand then we need duration dash 150 ease dash out
4:25:564 hours, 25 minutes, 56 secondsenable It's going to be hover and on hover it's going to be BG dash
4:26:044 hours, 26 minutes, 4 secondsthis custom color hash E8 E7 E3
4:26:134 hours, 26 minutes, 13 secondsthen we have on enabled this is going to be active and then on active it's going
4:26:204 hours, 26 minutes, 20 secondsto be scale- 95 also on enabled
4:26:274 hours, 26 minutes, 27 secondsAnd when it's active, it's going to be bg dash h# E0 dfdb.
4:26:384 hours, 26 minutes, 38 secondsAwesome. Then we need on disabled. This is going to be cursor dash default.
4:26:474 hours, 26 minutes, 47 secondsAwesome. And then here category icon is going to be
4:26:564 hours, 26 minutes, 56 secondsflex height -12 width -12 items dash center
4:27:034 hours, 27 minutes, 3 secondsjustify dash center rounded dash to excel
4:27:114 hours, 27 minutes, 11 secondsborder then we have border dash this custom value ash db B D 9 D3.
4:27:224 hours, 27 minutes, 22 secondsAwesome. And then we have BG dash this where we have # F1F0
4:27:314 hours, 27 minutes, 31 secondsE. Awesome. And then we have on hover it's going to be border dash
4:27:394 hours, 27 minutes, 39 seconds# CFC BC4 group dash. It's going to be BG dash
4:27:484 hours, 27 minutes, 48 secondsdash E B E A E E7. And then we have group dash active. That's going to be scale dash 0.97.
4:28:024 hours, 28 minutes, 2 secondsThen we have group dash active border dash custom value where we have
4:28:094 hours, 28 minutes, 9 secondshashtag C9 C7C 0 then we have group dash active it's
4:28:184 hours, 28 minutes, 18 secondsgoing to be bg dash hash E5
4:28:264 hours, 28 minutes, 26 secondsE4 E0 I think that's pretty much it For this one, let me get down. And here we're
4:28:354 hours, 28 minutes, 35 secondsgoing to need category label. And that's going to be PD-1
4:28:434 hours, 28 minutes, 43 secondstext dash center texts leading.
4:28:504 hours, 28 minutes, 50 secondsIt's going to be 18 px. Then we have text dash text dash secondary. And then we have selected icon.
4:29:024 hours, 29 minutes, 2 secondsjust no need for that here. Yeah. So that's pretty much it. And I'm going to make sure that it's being used as const here.
4:29:144 hours, 29 minutes, 14 secondsAnd here we have type category
4:29:194 hours, 29 minutes, 19 secondscarousel props is equal to this where we have variant. It's going to be key of
4:29:294 hours, 29 minutes, 29 secondstype of theme styles.
4:29:344 hours, 29 minutes, 34 secondsWe have selected category ID that's going to be a string
4:29:414 hours, 29 minutes, 41 secondsor it's going to be null. Then we have on category toggle.
4:29:494 hours, 29 minutes, 49 secondsIt's going to take a category category and then that's going to be a project category type and it's going to be void.
4:29:594 hours, 29 minutes, 59 secondsAwesome. Here I'm going to say export function category
4:30:084 hours, 30 minutes, 8 secondscarousel. Open that. Here we have variant
4:30:144 hours, 30 minutes, 14 secondsthat's lending by default. Then we have selected
4:30:224 hours, 30 minutes, 22 secondscategory ID and then we have on category toggle
4:30:284 hours, 30 minutes, 28 secondsof course. There you go. And of course that's going to be a type of category carousel props. And let's open that
4:30:374 hours, 30 minutes, 37 secondsfunction. We have const styles is equal to theme styles. And here we have variant.
4:30:464 hours, 30 minutes, 46 secondsThen here we have con scroll reference is equal to use reference and this is
4:30:544 hours, 30 minutes, 54 secondsgoing to take an HTML div element which is going to be initiated by null.
4:31:014 hours, 31 minutes, 1 secondAwesome. And then we have here const
4:31:084 hours, 31 minutes, 8 secondscan scroll left set can scroll left
4:31:174 hours, 31 minutes, 17 secondsis equal to use state initiated by false and I'm going to copy this paste this
4:31:264 hours, 31 minutes, 26 secondsover here and this changes to right
4:31:324 hours, 31 minutes, 32 secondsand right and new state false. Oh, here we have function. I'm going to say
4:31:404 hours, 31 minutes, 40 secondsupdate scroll state and for that I'm going to say const element is equal to
4:31:494 hours, 31 minutes, 49 secondsscroll reference dot current and then we have if element
4:31:584 hours, 31 minutes, 58 secondsis not available then we simply return and if that is available of course then we have set scroll left is going to be
4:32:074 hours, 32 minutes, 7 secondselement dot But scroll left is more than zero.
4:32:134 hours, 32 minutes, 13 secondsAnd then we have set can scroll right.
4:32:194 hours, 32 minutes, 19 secondsIt's going to be element do.c scroll left is less than element.croll width
4:32:264 hours, 32 minutes, 26 secondsminus element dot client width minus one. There you go. Now here we're
4:32:344 hours, 32 minutes, 34 secondsgoing to need a couple of more functions. So first of all we have a use effect. I'm going to say open that and
4:32:424 hours, 32 minutes, 42 secondshere we have update scroll state initiate that function. Then we have
4:32:504 hours, 32 minutes, 50 secondsconelement is equal to u uh scroll reference and we have dot
4:32:584 hours, 32 minutes, 58 secondscurrent. Then we have if element is not there then we return
4:33:044 hours, 33 minutes, 4 secondsconst observer is equal to new resize observer. There you go. Update scroll
4:33:134 hours, 33 minutes, 13 secondsstate. Then we have observer observer dotobserve. This is going to take the
4:33:224 hours, 33 minutes, 22 secondselement. And then we finally return on the dismount which is going to be observer dot disisconnect.
4:33:334 hours, 33 minutes, 33 secondsAnd here you go. Awesome. Then here I'm going to put the second value which is just an empty array. After that here we
4:33:424 hours, 33 minutes, 42 secondsneed function scroll. It's going to take a direction which is going to be either left or right. and open that function.
4:33:544 hours, 33 minutes, 54 secondsconst step is equal to category item width. Hold on.
4:34:024 hours, 34 minutes, 2 secondsCategory item width. There you go. Let's divide it by two. Sorry, multiplied by
4:34:104 hours, 34 minutes, 10 secondstwo. Scroll reference dot current.
4:34:164 hours, 34 minutes, 16 secondsIf that come on if that is available then we have scroll
4:34:244 hours, 34 minutes, 24 secondsby. There you go. And for that we're going to say that it's going to take left
4:34:314 hours, 34 minutes, 31 secondsdirection is equal to left only then it's going to say minus step otherwise step. Awesome.
4:34:464 hours, 34 minutes, 46 secondsAnd we have behavior that's going to be smooth. And finally after that here we
4:34:544 hours, 34 minutes, 54 secondshave set time out. That's going to actually here we're going to I'm going to put
4:35:024 hours, 35 minutes, 2 secondsuh update scroll state and that's going to take 300 milliseconds. Let me format
4:35:094 hours, 35 minutes, 9 secondseverything. And now after this function finally let's work on the return.
4:35:174 hours, 35 minutes, 17 secondsWe have a div going to give it a class name. That's going to be CN. I'm going
4:35:234 hours, 35 minutes, 23 secondsto open that up. Here we have MX- auto width- full items dash start adding
4:35:324 hours, 35 minutes, 32 secondsbottom-ha get down. On mobile it's going to be block mobile it's going to be padding
4:35:404 hours, 35 minutes, 40 secondsbottom dash six comma get down here tablet up it's going to be flex then we
4:35:484 hours, 35 minutes, 48 secondshave tablet up it's going to be height dash 100 pixel then we have
4:35:574 hours, 35 minutes, 57 secondstablet up again there you go that's going to be max-ero-category
4:36:054 hours, 36 minutes, 5 secondsAnd we again have tablet up. That's going to be justify center tablet up. It's going to be gap of two.
4:36:154 hours, 36 minutes, 15 secondsThen here I'm going to come inside this div.
4:36:194 hours, 36 minutes, 19 secondsHere we have this button. And inside this button I'm going to provide it a type which is going to be
4:36:294 hours, 36 minutes, 29 secondsbutton. And then we have on click. That's going to be scroll left.
4:36:404 hours, 36 minutes, 40 secondsThere you go. And we have disabled.
4:36:434 hours, 36 minutes, 43 secondsWhen that's going to be disabled, well, it's going to be disabled when can scroll left is not true.
4:36:514 hours, 36 minutes, 51 secondsAnd we also have class name here.
4:36:564 hours, 36 minutes, 56 secondsAnd let me format everything and get down here. This is going to be styles dot arrow. Then here I'm going to say
4:37:054 hours, 37 minutes, 5 secondsmargin top 2 come on 2.5.
4:37:114 hours, 37 minutes, 11 secondsThen here I have hidden and tablet up is going to be flax. And here can scroll
4:37:194 hours, 37 minutes, 19 secondsleft. If that's the case when that's not true then only opacity is going to be 50.
4:37:264 hours, 37 minutes, 26 secondsAll right. Now, here I'm going to provide area label
4:37:334 hours, 37 minutes, 33 secondsand that's going to be previous. I'm going to open that button
4:37:394 hours, 37 minutes, 39 secondsand in here I'm going to paste this SVG of course. Awesome.
4:37:464 hours, 37 minutes, 46 secondsAnd now after this button here I'm going to create a div. Inside this div I'm
4:37:534 hours, 37 minutes, 53 secondsgoing to give it a reference and that is going to be scroll reference.
4:38:024 hours, 38 minutes, 2 secondsAlso we need on scroll that's going to be update scroll state and of course
4:38:104 hours, 38 minutes, 10 secondsclass name that's going to be CN here.
4:38:154 hours, 38 minutes, 15 secondsOpen that. And I'm going to say hide scroll hide dash scroll bar. Then we
4:38:244 hours, 38 minutes, 24 secondshave flex width dash full min dash width dash zero.
4:38:294 hours, 38 minutes, 29 secondsAlso items start and overflow x overflow
4:38:354 hours, 38 minutes, 35 secondsx come on the x auto. There you go. And here I
4:38:434 hours, 38 minutes, 43 secondshave tablet up width dash480 pixels.
4:38:494 hours, 38 minutes, 49 secondsAlso on tablet up it's going to be shrink zero. Excellent. Let me format everything. And then here
4:38:584 hours, 38 minutes, 58 secondsI'm going to open this up and I'm going to say project categories dot map. Then
4:39:064 hours, 39 minutes, 6 secondswe have individual category and then on that I'm going to say cost is
4:39:154 hours, 39 minutes, 15 secondsselected is equal to selected category ID when that is equal to category do ID and
4:39:254 hours, 39 minutes, 25 secondsif selected is going to return true and false. So let's use that return. Here we
4:39:324 hours, 39 minutes, 32 secondshave a button and I'm going to give it a type of button. Then also key this is
4:39:404 hours, 39 minutes, 40 secondsgoing to be category do ID and then here I'm going to add on click
4:39:494 hours, 39 minutes, 49 secondswhich is going to be on category toggle and I'm going to provide that category
4:39:564 hours, 39 minutes, 56 secondsthere. All right. And then here I'm going to say area pressed that's going to be is selected. Let me format everything.
4:40:084 hours, 40 minutes, 8 secondsAnd here I have class name.
4:40:134 hours, 40 minutes, 13 secondsThere you go. And that's going to be CN. And here we have
4:40:224 hours, 40 minutes, 22 secondsgroup flex shrink zero flex call items center. There you go. Comma get down.
4:40:334 hours, 40 minutes, 33 secondsMobile width. Come on. Not like that.
4:40:384 hours, 40 minutes, 38 secondsMobile it's going to be width one slash4.
4:40:444 hours, 40 minutes, 44 secondsAnd then we have on mobile it's going to be minimum dash width dash 25%.
4:40:504 hours, 40 minutes, 50 secondsComma get down tablet up tablet up it's going to be width dash 24
4:40:594 hours, 40 minutes, 59 secondsexcellent and then I'm going to open this button here we have a span class name
4:41:084 hours, 41 minutes, 8 secondsCN it's going first of all it's going to be styles dot category icon then I'm going to put
4:41:164 hours, 41 minutes, 16 secondsa comma here and then is selected only then I'm going to say styles dot
4:41:244 hours, 41 minutes, 24 secondsselected icon
4:41:294 hours, 41 minutes, 29 secondsicon and uh yes we need that here
4:41:384 hours, 41 minutes, 38 secondshere just I'm going to put some empty state here for now no styling
4:41:464 hours, 41 minutes, 46 secondsall right so so I'm going to open span here. Now let me format everything span
4:41:524 hours, 41 minutes, 52 secondsopen and here I'm going to say is selected when that is true and when that
4:41:594 hours, 41 minutes, 59 secondsis false in case of true I'm going to display category check icon and in case of false I'm
4:42:094 hours, 42 minutes, 9 secondsgoing to display category icon and I'm going to display icon is going
4:42:154 hours, 42 minutes, 15 secondsto be category dot icon on. There you go. Awesome.
4:42:234 hours, 42 minutes, 23 secondsAnd now under this span, I'm going to create another span here. Going to give it a class name which is going to be styles dot category label.
4:42:344 hours, 42 minutes, 34 secondsAnd here I'm going to say category dot label. I think that's pretty much it. Let me format and save everything.
4:42:454 hours, 42 minutes, 45 secondsI'm going to scroll up a little bit and I'm going to get under this div here.
4:42:514 hours, 42 minutes, 51 secondsCreate a button. I'm going to give it a type which is going to be button. Then
4:42:574 hours, 42 minutes, 57 secondswe have on click and I'm going to say scroll. This is going to go for the right.
4:43:064 hours, 43 minutes, 6 secondsAnd then after that it's going to be disabled when can scroll right is not true.
4:43:164 hours, 43 minutes, 16 secondsAnd then we also have class name and this is going to be CN. Let me format get down here. That's going to be margin top- 2.5.
4:43:294 hours, 43 minutes, 29 secondsAnd then we have hidden tablet up. It's going to be flex also. So it's going to be
4:43:384 hours, 43 minutes, 38 secondsstyles dot arrow comma here then comma here and can scroll right.
4:43:474 hours, 43 minutes, 47 secondsIf that is not true then we have opacity 50. There you go. Let me format
4:43:544 hours, 43 minutes, 54 secondseverything. And now inside this button here actually before that we have area label. That's going to be next.
4:44:044 hours, 44 minutes, 4 secondsAnd inside here, I'm going to paste this SVG.
4:44:094 hours, 44 minutes, 9 secondsAnd there you go. I guess that's pretty much it for this entire uh component. Let me check. Yeah, that's not the problem. Yeah, that's neither.
4:44:224 hours, 44 minutes, 22 secondsAnd yeah, we're good. Awesome.
4:44:274 hours, 44 minutes, 27 secondsNow before I get to the logic part uh I mean before I get to the UI part and
4:44:344 hours, 44 minutes, 34 secondsstart displaying this carousel on the web browser I would like to work on a simple hook that is going to be used for
4:44:444 hours, 44 minutes, 44 secondsthe category of course. So I'm going to close that file and I'm going to collapse everything and under the lib
4:44:524 hours, 44 minutes, 52 secondshere I'm going to create a new file. I'm going to call it use dash infinite-c carousel.ts.
4:45:034 hours, 45 minutes, 3 secondsAnd of course, this is going to be a use client client component. We have use
4:45:104 hours, 45 minutes, 10 secondscall back. We also have use effect also use
4:45:174 hours, 45 minutes, 17 secondslayout effect and use memo. also use reference from
4:45:254 hours, 45 minutes, 25 secondsreact and use state.
4:45:314 hours, 45 minutes, 31 secondsThere you go. Here I'm going to say also use mounted r hook that we created and
4:45:394 hours, 45 minutes, 39 secondsI'm going to say function mod. For this one I'm going to take one argument number and the second argument as number
4:45:484 hours, 45 minutes, 48 secondsas well. And the simplest thing that this is going to do is return.
4:45:554 hours, 45 minutes, 55 secondsThere you go. And in here it's going to take one use the modular operator on
4:46:024 hours, 46 minutes, 2 secondsthat m then add on second value to that
4:46:084 hours, 46 minutes, 8 secondsand then for that it's going to use the module on everything and give us the
4:46:154 hours, 46 minutes, 15 secondsback whatever remainder is. So here we have function
4:46:224 hours, 46 minutes, 22 secondsuse carousel viewport width
4:46:284 hours, 46 minutes, 28 secondsand here I'm going to say const mounted is equal to use mounted
4:46:354 hours, 46 minutes, 35 secondsthen we have const viewport reference is equal to use reference
4:46:424 hours, 46 minutes, 42 secondshtml div element and it's going to initiate it by null.
4:46:484 hours, 46 minutes, 48 secondsNow here, what's the issue? Yeah, got it.
4:46:544 hours, 46 minutes, 54 secondsThere you go. Fixed. Now we need const width and set width. That's going to be equal to use state zero.
4:47:084 hours, 47 minutes, 8 secondsAnd then here we have use layout effect.
4:47:134 hours, 47 minutes, 13 secondsAnd I'm going to open that up. Here we have const view viewport is equal to viewport
4:47:204 hours, 47 minutes, 20 secondsreference dot current. Then we have if viewport view
4:47:284 hours, 47 minutes, 28 secondsport is not there then we return. We have const update is equal to this
4:47:354 hours, 47 minutes, 35 secondsfunction where we have set width viewport dot client width. There you go.
4:47:444 hours, 47 minutes, 44 secondsAnd we use the update function here, of course. Then we have const observer is equal to resize observer.
4:47:574 hours, 47 minutes, 57 secondsThere you go. And I'm going to use the update on that. This is going to be new.
4:48:044 hours, 48 minutes, 4 secondsYeah. Then we have observer. Observer dot observe.
4:48:124 hours, 48 minutes, 12 secondsAnd it's going to take a viewport.
4:48:154 hours, 48 minutes, 15 secondsAwesome. We return on the dismount which is going to be observer.
4:48:214 hours, 48 minutes, 21 secondsCome on. Why do I keep writing J in there? Observer dot disconnect.
4:48:284 hours, 48 minutes, 28 secondsAwesome. And as a second parameter to this one, I'm going to provide an empty array to this use layout effect. After
4:48:364 hours, 48 minutes, 36 secondsthat here I'm going to return for this function that is going to be viewport
4:48:444 hours, 48 minutes, 44 secondsreference also width which is going to be mounted.
4:48:504 hours, 48 minutes, 50 secondsIf that is true then it's going to be width otherwise it's going to be zero.
4:48:564 hours, 48 minutes, 56 secondsLet me format and save everything. And now get down here. I'm going to pull this up and here I'm going to say export
4:49:064 hours, 49 minutes, 6 secondsfunction use infinite carousel and this is going to take a generic type
4:49:144 hours, 49 minutes, 14 secondsand here we have it's going to take items and that's going to be array of
4:49:214 hours, 49 minutes, 21 secondsthat generic type and here we have const count is equal to items dot length
4:49:294 hours, 49 minutes, 29 secondsAnd we have const viewport
4:49:354 hours, 49 minutes, 35 secondsreference and width is equal to use carousel viewport. Hold on. Use
4:49:444 hours, 49 minutes, 44 secondscarousel viewport width. That's the function. There you go. Now here we have
4:49:514 hours, 49 minutes, 51 secondscon slides is equal to use memo. I'm going to open that. And here we have first of all this function.
4:50:004 hours, 50 minutesAnd that's going to be going for items.
4:50:054 hours, 50 minutes, 5 secondsHere I have count minus one. Then I'm going to put dot dot items. Then items
4:50:134 hours, 50 minutes, 13 secondshere. And then zero. And then the second value for this one is going to be items and count for this use memo. All right.
4:50:224 hours, 50 minutes, 22 secondsThen we have con. Here I'm going to say position and set position.
4:50:304 hours, 50 minutes, 30 secondsAnd here we have use state one const
4:50:364 hours, 50 minutes, 36 secondsenable transition and set enable
4:50:434 hours, 50 minutes, 43 secondstransition is equal to use state. That's going to be true here by default. and const
4:50:534 hours, 50 minutes, 53 secondsposition reference is equal to use ref position. And there you go. Here I'm
4:51:004 hours, 51 minutesgoing to say use effect and I'm going to open that function. If
4:51:074 hours, 51 minutes, 7 secondsposition ref is not equal to position then I'm going
4:51:154 hours, 51 minutes, 15 secondsto say position reference dot current is equal to position. I'm going to set that
4:51:214 hours, 51 minutes, 21 secondsthere. And here I'm going to say position. All right. Now after this here
4:51:314 hours, 51 minutes, 31 secondsI have const active index is equal to mod. We have a
4:51:394 hours, 51 minutes, 39 secondsposition minus one comma and count. There you go.
4:51:464 hours, 51 minutes, 46 secondsHere we have const go. Next is equal to use call back and here we have this
4:51:544 hours, 51 minutes, 54 secondsfunction where I'm going to say set enable transition
4:52:014 hours, 52 minutes, 1 secondto true also set position current. I'm going to take the current
4:52:084 hours, 52 minutes, 8 secondsone and then I'm going to change current plus one. There you go. And as a second
4:52:154 hours, 52 minutes, 15 secondsvalue to this, I'm going to provide an empty array here.
4:52:204 hours, 52 minutes, 20 secondsAll right. And then here I'm going to say const go previous
4:52:284 hours, 52 minutes, 28 secondsis equal to use actually I'm going to use this one here.
4:52:344 hours, 52 minutes, 34 secondsI'm going to say co previous.
4:52:394 hours, 52 minutes, 39 secondsThis is true. And of course this becomes minus one. Awesome.
4:52:464 hours, 52 minutes, 46 secondsAnd then in here, I'm going to copy this one more time. And I'm going to say go
4:52:544 hours, 52 minutes, 54 secondsto index. And here for this time, I'm going to provide an index number.
4:53:004 hours, 53 minutesAnd then set transition to true of course. And then here I'm going to say set position.
4:53:074 hours, 53 minutes, 7 secondsI'm going to say index + 1. There you go. After that here I'm going to say
4:53:134 hours, 53 minutes, 13 secondsconst handle transition end is equal to use call back
4:53:244 hours, 53 minutes, 24 secondsand here I'm going to bring this down here as well and here I have this event.
4:53:344 hours, 53 minutes, 34 secondsNo uh hold on. Yeah, here I have this event
4:53:414 hours, 53 minutes, 41 secondsand this is going to be react dot transition event.
4:53:474 hours, 53 minutes, 47 secondsThis is going to be HTML div element and yeah of course we are doing this
4:53:544 hours, 53 minutes, 54 secondsfunction here. Now open that and here if event dotproperty name is not equal to
4:54:044 hours, 54 minutes, 4 secondstransform then we return from this function.
4:54:094 hours, 54 minutes, 9 secondsOtherwise we have const current position is equal to position reference
4:54:194 hours, 54 minutes, 19 secondsdot current. And then here we have if current position is equal to count + 1
4:54:284 hours, 54 minutes, 28 secondsthen we're going to say set enable transition to false
4:54:354 hours, 54 minutes, 35 secondsand I'm going to say request animation frame
4:54:424 hours, 54 minutes, 42 secondsand here we have this function again I'm going to say set position to one and I'm
4:54:484 hours, 54 minutes, 48 secondsgoing to say request animation on frame once again and for this one I'm going to say set transition
4:54:574 hours, 54 minutes, 57 secondsto true here let me format everything and now after
4:55:044 hours, 55 minutes, 4 secondsthis if here I'm going to say else if current position is equal to zero then
4:55:134 hours, 55 minutes, 13 secondswe're going to go for set enable transition to false and request Animation frame is going to
4:55:234 hours, 55 minutes, 23 secondsbe this function where we have set position to count and request animation
4:55:324 hours, 55 minutes, 32 secondsframe once again set enable transition to true here. All
4:55:404 hours, 55 minutes, 40 secondsright. And of course to this call back function here we're going to provide the
4:55:484 hours, 55 minutes, 48 secondssecond which is going to be count in this case. Let me format everything and we're good to go. And now finally here
4:55:574 hours, 55 minutes, 57 secondsI'm going to say return and I'm going to return viewport
4:56:044 hours, 56 minutes, 4 secondsreference also width and slides also position as well as enable transition.
4:56:164 hours, 56 minutes, 16 secondsThen also active index go next. Go previous.
4:56:244 hours, 56 minutes, 24 secondsgo to index and then handle transition and transition. Yeah, all spellings are good
4:56:334 hours, 56 minutes, 33 secondsand we're good to go. Now we are ready to work on the actual component and start displaying that on the page.
4:56:434 hours, 56 minutes, 43 secondsAll right. So now that we have this category carousel in this shared file
4:56:514 hours, 56 minutes, 51 secondsI'm going to create a new file under where are components then we have
4:56:594 hours, 56 minutes, 59 secondsactually let me collapse everything then we have landing hero under here I'm going to create the same file basically
4:57:074 hours, 57 minutes, 7 secondscategory dash carousel.tsx tsx. And the only thing that this file is going to do
4:57:144 hours, 57 minutes, 14 secondsis export category carousel. There you go.
4:57:224 hours, 57 minutes, 22 secondsExport category carousel from this file.
4:57:264 hours, 57 minutes, 26 secondsAnd for this one, I'm going to say components and slashshared/category
4:57:344 hours, 57 minutes, 34 secondscarousel. That's pretty much it. So our whole component lives here under this shared file. And why am I doing it this
4:57:424 hours, 57 minutes, 42 secondsway? Well, because this is going to be used in both places on the landing page as well as on the app page. And we're
4:57:524 hours, 57 minutes, 52 secondsgoing to use this shared component single file. And if we need to make any changes to an individual one, we can
4:58:004 hours, 58 minutesmake those changes here. And of course, we can go from there. So I'm going to close this file not needed also this
4:58:084 hours, 58 minutes, 8 secondsfile and I'm going to get to the prompt area and into this div I'm going to say class
4:58:154 hours, 58 minutes, 15 secondsname MX- auto margin top is going to be 17 pixels. Then we have dash full max
4:58:254 hours, 58 minutes, 25 secondswidth hero prompt. And then we have on tablet up. It's going to be max dash her prompt
4:58:334 hours, 58 minutes, 33 secondstablet. There you go. And I'm going to open that div. Here we have category carousel components shared.
4:58:444 hours, 58 minutes, 44 secondsI don't want to bring that. So what I want is let's go here.
4:58:514 hours, 58 minutes, 51 secondscategory carousel.
4:58:564 hours, 58 minutes, 56 secondsLet's actually use that here. And instead of shared here, I'm going to go for landing
4:59:044 hours, 59 minutes, 4 secondsslashh her landing slash her slash category carousel. There you go. And now
4:59:124 hours, 59 minutes, 12 secondswe need to use this. So, I'm going to get down here.
4:59:214 hours, 59 minutes, 21 secondsThere you go. Let me format everything and save everything. And it seems like we have the issue.
4:59:284 hours, 59 minutes, 28 secondsCategory carousel locally, but it's not exported
4:59:344 hours, 59 minutes, 34 secondsdeclared here. Okay, let's get to the function here. Oh, sorry. This needs to
4:59:414 hours, 59 minutes, 41 secondsbe export note import export category carousel from this file.
4:59:484 hours, 59 minutes, 48 secondsAnd there you go. Very good. Category carousel is here. And that's being used here. And of course,
4:59:574 hours, 59 minutes, 57 secondsit asks for some uh some uh props that we have here like on category toggle and selected category ID.
5:00:085 hours, 8 secondsthose those props can be defined here.
5:00:125 hours, 12 secondsSo what I'm going to do is here I'm going to say const
5:00:205 hours, 20 secondsactually not here but I'm going to define them here. So I'm going to say const selected
5:00:295 hours, 29 secondscategory and set selected category is equal to use state that we
5:00:385 hours, 38 secondscan import from react and here this is going to be project category type
5:00:465 hours, 46 secondsor null and it gets initiated by null here as well and then under that I'm going to say function function
5:00:565 hours, 56 secondshandle category toggle and that's going to take a
5:01:035 hours, 1 minute, 3 secondscategory which is going to be a project category type and I'm going to open that function here
5:01:105 hours, 1 minute, 10 secondswe have set selected category and that's going to take the current one
5:01:185 hours, 1 minute, 18 secondsand run a function on that which is going to be current If that exist then
5:01:255 hours, 1 minute, 25 secondsget the ID from there that is equal to category do ID
5:01:335 hours, 1 minute, 33 secondsif that's true then we set null otherwise we have category here
5:01:425 hours, 1 minute, 42 secondsand I guess that's pretty much it here and we need to get rid of this curly
5:01:495 hours, 1 minute, 49 secondsbrace as this is going to be a direct return. All right, let me format everything and save everything. Awesome.
5:01:575 hours, 1 minute, 57 secondsAnd of course, now these can be used here. So, I'm going to say here we have selected category ID.
5:02:085 hours, 2 minutes, 8 secondsThat's going to be selected category do ID. If that is true, good. Otherwise,
5:02:165 hours, 2 minutes, 16 secondsit's just going to be null. Awesome. And then we have on category toggle handle category toggle. There you go.
5:02:285 hours, 2 minutes, 28 secondsAnd by the way, this is just some uh exemplary code. And this code is not going to be used here. This code
5:02:365 hours, 2 minutes, 36 secondseventually this is going to be removed from here. Let's go to our browser. And there you go. We have this nice looking
5:02:465 hours, 2 minutes, 46 secondscategory. And uh but there is one issue that we should not have this scroll bar.
5:02:545 hours, 2 minutes, 54 secondsI remember that I did put that class there. So if I go to category carousel and here I should have hide.
5:03:085 hours, 3 minutes, 8 secondsYeah, I missed an R from there. Hide scroll bar. And there you go. Awesome.
5:03:145 hours, 3 minutes, 14 secondsThat scroll bar is gone and it looks phenomenal. Perfect. Perfect. Well done, guys. Wonderful job. Good stuff. All
5:03:225 hours, 3 minutes, 22 secondsright. So now the UI for this section is almost done and now we can move on to the next
5:03:305 hours, 3 minutes, 30 secondssection which is the bento cards section. And for that let's move on to our code editor. I'm going to close this file, this file, and this file as well.
Chapter 15: Agent bento section
5:03:415 hours, 3 minutes, 41 secondsAnd keep this open. And I'm going to collapse everything here. Go to components. Then we have on landing. And
5:03:485 hours, 3 minutes, 48 secondsI'm going to create a new folder under lending. That's going to be agent. And under agent, I'm going to create a new file. Call it section.tsx.
5:04:005 hours, 4 minutesAnd first of all, I'm going to import link.
5:04:045 hours, 4 minutes, 4 secondsThen I'm going to import agent features.
5:04:115 hours, 4 minutes, 11 secondsAnd here we have export function agent section.
5:04:175 hours, 4 minutes, 17 secondsAnd of course we're going to return a section.
5:04:235 hours, 4 minutes, 23 secondsAnd I'm going to say agent section here for now. And let's get to this. And here
5:04:305 hours, 4 minutes, 30 secondsI have agent section. There you go. And if I can save that. Let's get back here.
5:04:385 hours, 4 minutes, 38 secondsAnd awesome. Agent section. This is the one that we're going to work on. Now, let's go back here.
5:04:455 hours, 4 minutes, 45 secondsThis sections file and I'm going to provide few classes here. Class py12 and
5:04:525 hours, 4 minutes, 52 secondson desktop it's going to be py 20. There you go. Then here we have a container
5:05:015 hours, 5 minutes, 1 secondthat we are importing and that container is going to have a class name. below desktop is going to be px dash4.
5:05:125 hours, 5 minutes, 12 secondsThere you go. And here I'm going to say div.
5:05:205 hours, 5 minutes, 20 secondsClass name is going to be text dash center mobile it's going to be flex.
5:05:275 hours, 5 minutes, 27 secondsThen we have on mobile it's going to be flex- call. And then we have
5:05:345 hours, 5 minutes, 34 secondson mobile it's going to be items dash center and on mobile again it's going to be gap of four. Open that div. Here we
5:05:425 hours, 5 minutes, 42 secondshave H1 and I'm going to say meet agent 4 and that agent 4 goes within a span tag.
5:05:535 hours, 5 minutes, 53 secondsSo to that H1 I'm going to provide some class names.
5:05:575 hours, 5 minutes, 57 secondsfont dash display text dash 48 pixels font dashnormal
5:06:075 hours, 6 minutes, 7 secondsleading for this one is going to be 48 pixels as well and tracking is going to
5:06:145 hours, 6 minutes, 14 secondsbe this minus2.88 88 8 pixels.
5:06:225 hours, 6 minutes, 22 secondsThen we have text dash text- agent agent dash heading. And then we have on
5:06:305 hours, 6 minutes, 30 secondsdesktop it's going to be text dash 68.92
5:06:395 hours, 6 minutes, 39 secondspixels. Then we have on desktop it's going to be leading none. And on desktop tracking
5:06:475 hours, 6 minutes, 47 secondsis going to be this custom value which is min -4.14 pixels.
5:06:545 hours, 6 minutes, 54 secondsI guess that's pretty much it. And now I need to provide these classes to the span tag as well. So class name text-relet orange. I guess that's it.
5:07:065 hours, 7 minutes, 6 secondsLet's get back here. And there you go. We have meet agent 4 as our headline.
5:07:135 hours, 7 minutes, 13 secondsUnder that we need a P tag. So I'm going to give it class names. That is going to
5:07:195 hours, 7 minutes, 19 secondsbe font-d display text-2 excel. Then we have leading that's going to be 19.92
5:07:295 hours, 7 minutes, 29 secondspixels and it's going to be tracking normal and change that to tracking -0.96 pixels.
5:07:415 hours, 7 minutes, 41 secondstext dash text dash dim. There you go.
5:07:455 hours, 7 minutes, 45 secondsAnd then we have on mobile margin top is going to be zero. On desktop margin top
5:07:525 hours, 7 minutes, 52 secondsis going to be four. Then desktop again text is going to be 28 pixels.
5:08:005 hours, 8 minutesAnd then on desktop again leading is going to be tight. Then on desktop again
5:08:065 hours, 8 minutes, 6 secondstracking is going to be changed to minus0.04
5:08:135 hours, 8 minutes, 13 seconds04 em and inside there I'm going to say creativ creative
5:08:235 hours, 8 minutes, 23 secondshold on creativity runs on replet there you go let's get back here and
5:08:325 hours, 8 minutes, 32 secondsawesome now I'm going to get back under this div I'm going to create another div
5:08:415 hours, 8 minutes, 41 secondsI'm going to give it class name margin dash 6 flex flex call gap four tablet up
5:08:505 hours, 8 minutes, 50 secondsis going to be gap six on desktop margin top is going to be eight and uh on
5:08:575 hours, 8 minutes, 57 secondsdesktop gap is going to be four open that div another div here give it class name contents
5:09:065 hours, 9 minutes, 6 secondstablet up is going to be grid then tablet up is going to grid calls one then tablet up is going to gap four and
5:09:155 hours, 9 minutes, 15 secondsalso on desktop it's going to be grid calls 2 for now change that to minmax 0
5:09:235 hours, 9 minutes, 23 secondscomma 799 px actually fraction
5:09:295 hours, 9 minutes, 29 secondsminmax 0 comma 533 fraction and then open that div here
5:09:385 hours, 9 minutes, 38 secondswe're going to have a featured card component that we haven't created
5:09:445 hours, 9 minutes, 44 secondsyet and another featured card component here that we
5:09:515 hours, 9 minutes, 51 secondshaven't created yet of course then under that div here I'm going to create
5:09:575 hours, 9 minutes, 57 secondsanother div class name contents
5:10:035 hours, 10 minutes, 3 secondstablet up this is going to be a grid and tablet up grid calls one. Then tablet up
5:10:135 hours, 10 minutes, 13 secondsis going to be gap 4. We have desktop grid calls two. Change that to min max 0
5:10:235 hours, 10 minutes, 23 secondscomma 533 fraction. The order has been reversed here. Then we have min max 0
5:10:315 hours, 10 minutes, 31 secondscomma 799 fraction. And then I'm going to get to that. And here we're going to have
5:10:415 hours, 10 minutes, 41 secondsthose here as well. So this featured card
5:10:485 hours, 10 minutes, 48 secondsis going to be basically canvas.
5:10:545 hours, 10 minutes, 54 secondsThen this featured card actually we can use something like no we cannot.
5:11:025 hours, 11 minutes, 2 secondsSo yeah, canvas and then this is going to be parallel
5:11:095 hours, 11 minutes, 9 secondsand this one is going to be artifacts and this one is going to be teams.
5:11:185 hours, 11 minutes, 18 secondsAwesome. Let me format everything and save everything. Let's go here. So this is what we are building. Well, doesn't
5:11:245 hours, 11 minutes, 24 secondslook good at all. Yeah, I'm going to get down here right now. Now I'm going to bring it up and uh here under this div
5:11:345 hours, 11 minutes, 34 secondsbeing inside the container let's create another div give it a class name margin
5:11:395 hours, 11 minutes, 39 secondstop dash8 then we have flex flex wrap items dash center justify center and gap is going to be eight. Open that div.
5:11:515 hours, 11 minutes, 51 secondsHere we have a button not this button but the component that we have created
5:11:585 hours, 11 minutes, 58 secondsand for that we're going to give it an attri that's going to be slash agent4
5:12:055 hours, 12 minutes, 5 secondsagent-4 then we have variant and that's going to be outline then we have class name and
5:12:155 hours, 12 minutes, 15 secondsI'm going to say h dash 45 pixels then border for this one is going to be
5:12:225 hours, 12 minutes, 22 seconds1.5 pixels and px is going to be six for this one. Let me format.
5:12:295 hours, 12 minutes, 29 secondsAnd then in here, this is going to say deep dive into agent 4.
5:12:375 hours, 12 minutes, 37 secondsAnd then I'm going to have a right arrow. This one. Nope, that's not working.
5:12:465 hours, 12 minutes, 46 secondsand uh right arrow.
5:12:505 hours, 12 minutes, 50 secondsI mean, I should be able to use that, but let's save that. Actually, let's get back here. And yeah, that's not working.
5:12:585 hours, 12 minutes, 58 secondsYeah. Anyway, we can leave that. And here after the button here, I'm going to
5:13:055 hours, 13 minutes, 5 secondssay link. To that link, I'm going to say href and we have slash talks. And then I'm
5:13:155 hours, 13 minutes, 15 secondsgoing to give it a class name that's going to be text dash small text- text-
5:13:215 hours, 13 minutes, 21 secondsagent heading and underline and also underline offset two and on hover it's
5:13:295 hours, 13 minutes, 29 secondsgoing to be text dash text dash primary
5:13:355 hours, 13 minutes, 35 secondsand inside there we have read the documentation.
5:13:435 hours, 13 minutes, 43 secondsThere you go. Let me format and save.
5:13:455 hours, 13 minutes, 45 secondsLet's get back here. And awesome. Of course, now we need to work on these featured cards.
5:13:525 hours, 13 minutes, 52 secondsI'm going to get back here. And in order to work on this featured card component, we're going to need the
5:14:015 hours, 14 minutes, 1 secondconfig file for the featured card. And that we're going to create first. So in the agent, I'm going to create a new
5:14:075 hours, 14 minutes, 7 secondsfile. I'm going to name it feature dashcard dashconfig.ts.
5:14:175 hours, 14 minutes, 17 secondsAnd in here I'm just going to give you this code. Let's paste that. And let me
5:14:245 hours, 14 minutes, 24 secondsexplain. So here basically first of all we are bringing agent feature from our types that we already have here. Then we
5:14:335 hours, 14 minutes, 33 secondshave this we are defining this another type here that feature variant config we have a bg rounded layout and all these
5:14:435 hours, 14 minutes, 43 secondslittle things and of course there's this string mostly string and a couple of numbers and we have this literal as well
5:14:535 hours, 14 minutes, 53 secondsright so after that here just we have a few classes and uh here this is the main part the
5:15:015 hours, 15 minutes, 1 secondfeature variant config and in this area we have a few cases.
5:15:085 hours, 15 minutes, 8 secondsFirst of all, this is going to be a canvas. For the canvas, these same options are being used as described here
5:15:165 hours, 15 minutes, 16 secondsin the type in this object. Then we have one for the parallel. If I can go here.
5:15:215 hours, 15 minutes, 21 secondsSo basically we have one canvas, parallel, artifacts and teams. So here we have parallel and then we have third
5:15:285 hours, 15 minutes, 28 secondsone for artifacts and then we have fourth one for the teams. These are some predefined designs that I have already
5:15:375 hours, 15 minutes, 37 secondswritten for you that can be used in order to reduce the time for this project development. I just wanted to
5:15:465 hours, 15 minutes, 46 secondsmake sure that you don't have to write the code what's repetitive and you can learn the most out of this project. So
5:15:535 hours, 15 minutes, 53 secondshere I'm going to close this project uh this file now and create a new one and that is going to be under the same agent folder that's
5:16:025 hours, 16 minutes, 2 secondsgoing to be feature-card.tsx that's the component. So first of all we
5:16:105 hours, 16 minutes, 10 secondshave image from next image. Then we have feature variant config. Then we have
5:16:185 hours, 16 minutes, 18 secondsagent features from our landing data. And then we have CN. There you go. And of course this
5:16:265 hours, 16 minutes, 26 secondsagent features we're bringing the type here.
5:16:325 hours, 16 minutes, 32 secondsThen here I'm going to say type feature variant config is equal to I'm going to
5:16:425 hours, 16 minutes, 42 secondssay type of feature variant config
5:16:505 hours, 16 minutes, 50 secondsand just I'm going to mention agent feature. There you go. And this should be agent feature. Sorry, not agent features.
5:16:595 hours, 16 minutes, 59 secondsAnd that that's not the correct one here. The correct one is here. That should be a type. That's what we are
5:17:065 hours, 17 minutes, 6 secondsdefining here. So agent feature and right after that here I'm going to
5:17:135 hours, 17 minutes, 13 secondssay come on not this one but square brackets. There you go. Variant.
5:17:205 hours, 17 minutes, 20 secondsAwesome. Now I'm going to get down here and I'm going to say type feature card
5:17:275 hours, 17 minutes, 27 secondsprops is equal to this. Here we have a feature which is going to be agent feature.
5:17:355 hours, 17 minutes, 35 secondsThen we have class name and that's going to be a string.
5:17:415 hours, 17 minutes, 41 secondsAwesome. Now here we have function card illustration. Open that. And here we
5:17:505 hours, 17 minutes, 50 secondshave config also a variant. And that is going to be a type of this where we have
5:17:585 hours, 17 minutes, 58 secondsa config which is going to be feature variant config. There you go. Uh not
5:18:065 hours, 18 minutes, 6 secondsthis one feature variant config. And I am missing yeah this
5:18:145 hours, 18 minutes, 14 secondsshould be capital F. This should be this type. And then after that I'm going to
5:18:215 hours, 18 minutes, 21 secondsput a comma here and I'm going to say variant. And that's going to be agent feature here. And I'm going to define variant here.
5:18:325 hours, 18 minutes, 32 secondsAnd then here finally I'm going to open that function. Awesome. So in the function I'm I'm going to say if config
5:18:425 hours, 18 minutes, 42 secondsdot show illustration is not true then we are simply going to
5:18:495 hours, 18 minutes, 49 secondsreturn null. Simple. And then after this if statement I'm say if variant
5:18:585 hours, 18 minutes, 58 secondsis equal to artifacts then this is what we do here. So here
5:19:065 hours, 19 minutes, 6 secondsI'm going to say return open that we have a div. I'm going to give it a class
5:19:135 hours, 19 minutes, 13 secondsname which is going to be config dot illustration class. And uh I'm going to
5:19:205 hours, 19 minutes, 20 secondsopen that div. Create another div inside. Going to give it class name.
5:19:255 hours, 19 minutes, 25 secondsThat's going to be below dash desktop. That's going to be translate x0. Then we have desktop
5:19:355 hours, 19 minutes, 35 secondsminus translate x. And that's going to be 745 pixels. I'm going to open this div. And
5:19:445 hours, 19 minutes, 44 secondshere we have an image. Well, the images are going to be pulled through the SVG
5:19:515 hours, 19 minutes, 51 secondsas well. So for that, I'm going to say image here
5:19:585 hours, 19 minutes, 58 secondsand I'm going to say source config.ration.
5:20:035 hours, 20 minutes, 3 secondsThere you go. That's the SVG. Then we have all just going to leave it empty.
5:20:095 hours, 20 minutes, 9 secondsWidth, that's going to be config dot illustration width. Then I have
5:20:155 hours, 20 minutes, 15 secondsheight. That's going to be config dot illustration height. There you go. Let me format that. And then we have class
5:20:245 hours, 20 minutes, 24 secondsname. That's going to be h dash. That's going to be 149 pixels. Then we have width dash.
5:20:365 hours, 20 minutes, 36 secondsAnd then we have 1085 pixels. And we have max dashwidth dashn none.
5:20:455 hours, 20 minutes, 45 secondsAnd uh we also have area hidden. I guess that's pretty much it for this image.
5:20:525 hours, 20 minutes, 52 secondsAnd I would like to display this artifact now. So this artifacts case we have if I go here.
5:21:015 hours, 21 minutes, 1 secondThere you go. I can display that feature.
5:21:085 hours, 21 minutes, 8 secondsCome on. Actually, no. Hold on. We can't because we are not still Yeah, we are
5:21:175 hours, 21 minutes, 17 secondsnot still exporting it. That's why we can't. So, I'm going to undo this and we're going to get back to this after a
5:21:245 hours, 21 minutes, 24 secondsfew minutes once we have the export from here. Now, after this artifact variant, I'm going to get down here. I'm going to
5:21:315 hours, 21 minutes, 31 secondssay if variant is equal to canvas then we are going to return this
5:21:415 hours, 21 minutes, 41 secondsand in here we have a div class name is going to be config illustration class and I'm going
5:21:505 hours, 21 minutes, 50 secondsto open that up and here I have this image component where I going to use source
5:21:575 hours, 21 minutes, 57 secondsand of course we have configs illustration for that. We also have alt which is empty. Then we have width
5:22:065 hours, 22 minutes, 6 secondsconfig. Illustration width and then we have height
5:22:135 hours, 22 minutes, 13 secondsconfig hold on config dot illustration height. And then we
5:22:225 hours, 22 minutes, 22 secondshave class name which is going to be height- auto width- full max- width-ashnone
5:22:315 hours, 22 minutes, 31 secondsand mobile width is going to be 483px.
5:22:375 hours, 22 minutes, 37 secondsWe have mobile max width dashnone here as well and that's going to be tablet up
5:22:475 hours, 22 minutes, 47 secondswidth which is going to be 482 px. Let me format everything and I guess we are
5:22:545 hours, 22 minutes, 54 secondsdone with this. We need one more thing that is going to be area hidden. That's it.
5:23:055 hours, 23 minutes, 5 secondsand uh yeah pax yeah it was just coming to the
5:23:125 hours, 23 minutes, 12 secondssecond line that's all right then after this one here I'm going to say if
5:23:215 hours, 23 minutes, 21 secondsvariant is going to be equal to parallel then we are going to return this where we have a div going to give it a class
5:23:305 hours, 23 minutes, 30 secondsname which is going to be config illustration class. Open that. We have
5:23:365 hours, 23 minutes, 36 secondsan image. So, I'm going to copy this image. Paste it over here.
5:23:455 hours, 23 minutes, 45 secondsSo, that that width and height. And I'm going to say
5:23:525 hours, 23 minutes, 52 secondsunoptimized for this one. And uh I'm going to change these classes. And that's going to be for this one. Block
5:24:015 hours, 24 minutes, 1 secondheight dash full width dash auto max width none. That's pretty much it. Let
5:24:085 hours, 24 minutes, 8 secondsme duplicate that real quick here. And this one becomes
5:24:155 hours, 24 minutes, 15 secondsteams here. And then for the teams we have same uh stuff here except this thing here is going to be height dash
5:24:245 hours, 24 minutes, 24 secondsauto width dash full and max dash with d-ashnone and I would like to do one thing here it
5:24:315 hours, 24 minutes, 31 secondswill not make any effect on the front end though but I would like to keep that under artifacts
5:24:405 hours, 24 minutes, 40 secondshere and I would like to get rid of this unop optimized from here as well. I guess
5:24:495 hours, 24 minutes, 49 secondsthat's pretty much it. Then we teams uh we also have canvas and then we have
5:24:565 hours, 24 minutes, 56 secondsparallel at the very end with the optimized in this. Awesome. Now one little thing that I would like to add is
5:25:045 hours, 25 minutes, 4 secondsafter this variant here I'm going to say return null. Of course if neither is the case you're only returning one for each if neither is the case.
5:25:165 hours, 25 minutes, 16 secondsuh then of course we are returning null.
5:25:195 hours, 25 minutes, 19 secondsAll right. After that here we're going to write a function. So function card
5:25:275 hours, 25 minutes, 27 secondscontent. There you go. And this is going to take a feature and config and content
5:25:375 hours, 25 minutes, 37 secondsclass here as well. And this is going to be a type of this where we have feature is going to be agent feature.
5:25:485 hours, 25 minutes, 48 secondsThen we have config which is going to be a type of feature variant config. And then
5:25:595 hours, 25 minutes, 59 secondswe have content class which is going to be a string. And let's open this
5:26:055 hours, 26 minutes, 5 secondsfunction here where we have const title class is equal to this where we have
5:26:145 hours, 26 minutes, 14 secondsfeature dot variant if that is equal to parallel
5:26:225 hours, 26 minutes, 22 secondsor feature dot variant is equal to artifacts
5:26:315 hours, 26 minutes, 31 secondsthen in those cases this is going to a text dash
5:26:375 hours, 26 minutes, 37 seconds32 pixels and we have leading 28 pixels and we have tracking
5:26:485 hours, 26 minutes, 48 secondsminus0.05 05 a.m. And then we have tablet up
5:26:575 hours, 26 minutes, 57 secondslit dash up and that's going to be text dash 60 pixels
5:27:065 hours, 27 minutes, 6 secondstablet dash up it's going to be leading dash 53.4
5:27:145 hours, 27 minutes, 14 secondspixels. Let me confirm spellings. So text leading here is good. Tracking here is good. Tablet up. No need space here.
5:27:245 hours, 27 minutes, 24 secondsText and tablet up and uh leading 53.4.
5:27:295 hours, 27 minutes, 29 secondsOkay. All good. Then we have tab lit dash up is going to be tracking dash
5:27:385 hours, 27 minutes, 38 secondsminus3 pixels. And now I'm going to get down here. And in case of false this is
5:27:455 hours, 27 minutes, 45 secondsgoing to be text dash 36
5:27:505 hours, 27 minutes, 50 secondspixel and we have leading dash 32 pixel
5:27:575 hours, 27 minutes, 57 secondsand then we have tracking dash minus 0.05 05 em
5:28:055 hours, 28 minutes, 5 secondstablet dash up. That's going to be text dash 60 pixel.
5:28:135 hours, 28 minutes, 13 secondsYeah. Two times. No need for that. So tablet up. Yes. Tracking. Yes. Leading.
5:28:215 hours, 28 minutes, 21 secondsYes. Text. Yeah. All good here. And tablet up is good as well. And then we have tab
5:28:305 hours, 28 minutes, 30 secondslit up. And it's going to be leading 53.4 px tablet up again.
5:28:425 hours, 28 minutes, 42 secondsAnd this is going to be tracking dash minus3 px.
5:28:505 hours, 28 minutes, 50 secondsAnd here we have return.
5:28:545 hours, 28 minutes, 54 secondsOpen that. It's going to give be a div class name. And this is going to be content class. There you go. Open that.
5:29:045 hours, 29 minutes, 4 secondsWe have a P tag here. I'm going to give it a class name. And I'm going to make sure that it's a CN.
5:29:135 hours, 29 minutes, 13 secondsOpen that up. Here we have first of all text 14 pixels. Put a comma. Get down. Config
5:29:215 hours, 29 minutes, 21 secondsdot eyebrow. Get down config do. I bro class
5:29:285 hours, 29 minutes, 28 secondsif that exists otherwise just margin bottom dash one and then we have mobile
5:29:355 hours, 29 minutes, 35 secondshold on mobile and actually that needs to be there mobile
5:29:415 hours, 29 minutes, 41 secondsand font medium then we have mobile tracking that's going to be minus0
5:29:515 hours, 29 minutes, 51 secondsuh 0.28 28 pixels. Let me format that. Save that.
5:29:575 hours, 29 minutes, 57 secondsAnd now inside here, I'm going to say feature dobrow.
5:30:075 hours, 30 minutes, 7 secondsThere you go.
5:30:095 hours, 30 minutes, 9 secondsAfter the P tag here, I'm going to create an H2 here. Give it a class name and that's going to be CN. We have font display.
5:30:205 hours, 30 minutes, 20 secondsThere you go. Then we have font normal and I'm going to also attach title class
5:30:285 hours, 30 minutes, 28 secondsalso config dot text. Open that H2 and I'm
5:30:345 hours, 30 minutes, 34 secondsgoing to say feature dot title. Let me format everything and save everything.
5:30:415 hours, 30 minutes, 41 secondsAnd after the H2 here, I'm going to create another P. And that's going to be feature dot description.
5:30:515 hours, 30 minutes, 51 secondsAdd some classes to the P tag. That's going to be a C in here. Open that up. We have text dash base.
5:31:005 hours, 31 minutesThen we have config.escription.
5:31:045 hours, 31 minutes, 4 secondsThen we have config.escription description class or it's going to be margin top dash three and the leading is going to be relaxed.
5:31:155 hours, 31 minutes, 15 secondsThen we have config description max width config dot description max width. There you go.
5:31:225 hours, 31 minutes, 22 secondsLet me format everything and we're good to go. I guess that's pretty much it for this content
5:31:305 hours, 31 minutes, 30 secondsuh this card content component. And now we are ready to use this card content
5:31:375 hours, 31 minutes, 37 secondscomponent in the featured card component that we are going to create here under
5:31:455 hours, 31 minutes, 45 secondsexport function feature card.
5:31:515 hours, 31 minutes, 51 secondsHere we have a feature and class name. These are the two things that this is going to ask.
5:31:595 hours, 31 minutes, 59 secondsAnd this is going to be a type of feature card props. Open that. Here we
5:32:055 hours, 32 minutes, 5 secondshave const config is equal to feature variant config. And I'm going to give that feature dot variant here.
5:32:175 hours, 32 minutes, 17 secondsAll right. Then we have const is horizontal is equal to config dot layout
5:32:245 hours, 32 minutes, 24 secondsis equal to horizontal. that's going to return true false. Now, there are a lot of CSS and till CSS classes basically
5:32:335 hours, 32 minutes, 33 secondsthat are going to be used here just like this one title class and trust me I don't want to write them and you don't
5:32:415 hours, 32 minutes, 41 secondswant you don't want me to see write them for 20 minutes or so. So, I'm just going to paste them here. There you go.
5:32:525 hours, 32 minutes, 52 secondsThey're available to you in the GitHub repo. Link is available in the video description. And let me explain what is happening. So basically we have a
5:32:595 hours, 32 minutes, 59 secondscontent class here. Just like the title class that we created here above. This time we use CN for that we went for the
5:33:065 hours, 33 minutes, 6 secondsconfig content class that's already available given to you. Featured variant when that is available to canvas then we
5:33:145 hours, 33 minutes, 14 secondsare adding some classes some tin CSS classes. Of course in case of teams there are some classes in case of par
5:33:235 hours, 33 minutes, 23 secondsparallel and in case of artifacts there are different sets of classes for each different variant. And similarly we're
5:33:305 hours, 33 minutes, 30 secondsdoing the same for the illustration class as well. In case of every different variant, we are doing a
5:33:385 hours, 33 minutes, 38 secondsdifferent bunch of classes and at the end we're making sure that we have this responsive config that we are basically
5:33:465 hours, 33 minutes, 46 secondsdoing the rest operator here and we have the illustration class coming from the
5:33:535 hours, 33 minutes, 53 secondsconfig. All right. So here now I'm going to create a return and inside return we
5:34:025 hours, 34 minutes, 2 secondshave article. I'm going to open that article and I'm going to give it a class name and I'm going to give it a C name
5:34:115 hours, 34 minutes, 11 secondsCN. Open that. And here we have font display. Yeah, there are still so many TIN CSS classes. I wonder if I write I
5:34:195 hours, 34 minutes, 19 secondsmean if I just paste them all it would be done in minutes but you you're not going to like that. So I'm just going to type them manually. Font display. Then
5:34:275 hours, 34 minutes, 27 secondswe have flex overflow hidden tablet up. Tablet dash up is going to be min-
5:34:365 hours, 34 minutes, 36 secondsheight dash 380 pixels. Then we have desktop. It's going to be min- height dash 420 pixels.
5:34:485 hours, 34 minutes, 48 secondsThen I'm going to put a comma here. get down feature dot variant is not equal to artifacts
5:34:575 hours, 34 minutes, 57 secondsthen in that case only I'm going to display text-feature- charcoal
5:35:055 hours, 35 minutes, 5 secondsand I'm going to comma put a comma here then we have config.bg BG there you go and comma again then we
5:35:135 hours, 35 minutes, 13 secondshave mobile for that we have height -506 pixel and we have on mobile rounded dash
5:35:235 hours, 35 minutes, 23 secondsis going to be 40 pixels put a comma here feature
5:35:295 hours, 35 minutes, 29 secondsdot variant and that's going to be equal to canvas there you go and in that
5:35:395 hours, 35 minutes, 39 secondscase only I'm attaching these classes those are on mobile this is going to be
5:35:465 hours, 35 minutes, 46 secondsjustify start and on tablet this is going to be height dash 614 pixels and
5:35:555 hours, 35 minutes, 55 secondsthen on tablet again minimum dash height dash this change that to custom value 614 pixels
5:36:045 hours, 36 minutes, 4 secondsand then we have tablet up which is going to be rounded dash full. Then we have desktop that's going to be height
5:36:125 hours, 36 minutes, 12 secondsdash 420 pixels. And then we have on desktop where we have min- height dash zero. And
5:36:235 hours, 36 minutes, 23 secondsthen we have on desktop this is going to be rounded full. Again saving everything
5:36:305 hours, 36 minutes, 30 secondsand formatting everything. And then under that here I'm going to say feature
5:36:375 hours, 36 minutes, 37 secondsdot variant is equal to teams. And then of course we have this set of classes
5:36:455 hours, 36 minutes, 45 secondstablet. This is going to be height dash 614 pixels. And then we have tablet minimum dash height.
5:36:585 hours, 36 minutes, 58 secondsHold on. Is there something wrong?
5:37:015 hours, 37 minutes, 1 secondtablet I guess not tablet this is going to be min height zero I'm going to
5:37:085 hours, 37 minutes, 8 secondschange that to 614 pixels as well just like actually yeah height and minimum
5:37:165 hours, 37 minutes, 16 secondsheight are the same and then we have tablet up it's going to be rounded full and we have on desktop it's going to be
5:37:245 hours, 37 minutes, 24 secondsheight dash 420 pixels and also on desktop it's going to be
5:37:315 hours, 37 minutes, 31 secondsminimum height zero. Awesome. Put a comma get down. And here we have feature
5:37:395 hours, 37 minutes, 39 secondsdot variant is equal to parallel. And in that case, hold on. In that case, this
5:37:475 hours, 37 minutes, 47 secondsis going to be mobile
5:37:555 hours, 37 minutes, 55 secondspadding zero. Then we have tablet heading uh H dash 614 pixels.
5:38:045 hours, 38 minutes, 4 secondsAnd then we have on tablet minimum- height dash 614 pixels. Then we have on desktop height dash 420 pixels.
5:38:185 hours, 38 minutes, 18 secondsAnd on desktop again this is going to be minimum height zero.
5:38:245 hours, 38 minutes, 24 secondsAll right. After that here we have feature dot variant when that is equal to artifacts. Earlier here we're showing
5:38:345 hours, 38 minutes, 34 secondswe're making sure that when that is not equal to artifacts. Now here we're making sure when that is equal to
5:38:405 hours, 38 minutes, 40 secondsartifacts. So here we're going to say mobile and for the mobile padding zero.
5:38:485 hours, 38 minutes, 48 secondsThen we have tablet high. Actually that's kind of very similar. So, I'm
5:38:545 hours, 38 minutes, 54 secondsgoing to copy the exact same thing from here and paste it over here. Me format.
5:39:015 hours, 39 minutes, 1 secondAnd I guess that's pretty much it for that one. And then we have feature dot
5:39:095 hours, 39 minutes, 9 secondsvariant when that is not equal to canvas.
5:39:145 hours, 39 minutes, 14 secondsAnd feature dot variant when that is not equal to teams.
5:39:225 hours, 39 minutes, 22 secondsAnd when feature dot variant is not equal to
5:39:305 hours, 39 minutes, 30 secondsparallel and when feature dot variant is not
5:39:385 hours, 39 minutes, 38 secondsequal to artifacts in all of these conditions only then I'm going to say
5:39:485 hours, 39 minutes, 48 secondsconfig dot rounded. There you go. Let me put a comma here and let me format.
5:39:565 hours, 39 minutes, 56 secondsThere you go. Awesome.
5:39:585 hours, 39 minutes, 58 secondsAnd now after that here I'm going to say feature dot variant is equal to parallel
5:40:085 hours, 40 minutes, 8 secondsand only then we're adding tablet
5:40:145 hours, 40 minutes, 14 secondsrounded and I'm going to say 24 pixels and on desktop it's going to
5:40:225 hours, 40 minutes, 22 secondsbe rounded and this is going to be 24 pixels. as well. Let me format. And
5:40:315 hours, 40 minutes, 31 secondsnow let me duplicate that here for the instead of parallel this time it's going
5:40:395 hours, 40 minutes, 39 secondsto be artifacts. There you go. And yeah, everything else stays the same. And then
5:40:465 hours, 40 minutes, 46 secondsafter that here, I'm going to say is horizontal.
5:40:515 hours, 40 minutes, 51 secondsAnd if that is true then we have flex dash call tablet up it's going to be
5:40:585 hours, 40 minutes, 58 secondsflex row and otherwise it's going to be flex- call only and we have config
5:41:065 hours, 41 minutes, 6 secondsdotcard class then we have class name and under
5:41:135 hours, 41 minutes, 13 secondsinside this article here eventually I'm going to say config hold on config
5:41:225 hours, 41 minutes, 22 secondsdot layout when that is equal to vertical
5:41:285 hours, 41 minutes, 28 secondsthen we are doing this otherwise we are doing this and now in case of true here
5:41:365 hours, 41 minutes, 36 secondsI have this empty fragment and here I'm going to put an empty fragment here as well and now here I'm going to say
5:41:445 hours, 41 minutes, 44 secondscard illustration and for that I'm going to say config
5:41:505 hours, 41 minutes, 50 secondsConfig is going to be responsive config and variant is going to be
5:42:005 hours, 42 minutesfeature dot variant. There you go. Let me format that. And after that here I'm going to say card content.
5:42:115 hours, 42 minutes, 11 secondsAnd for that of course we have feature and I'm going to add feature here. Then we have config which is config and then
5:42:215 hours, 42 minutes, 21 secondswe have content class which of course we have content class. All right. And now
5:42:295 hours, 42 minutes, 29 secondsin case of false here I'm going to open that up here. And let's actually save
5:42:365 hours, 42 minutes, 36 secondsand format everything. And see here, we still have nothing to display here because that featured card component is not being displayed here.
5:42:475 hours, 42 minutes, 47 secondsSo actually, do you know what? I'm going to do that first.
5:42:515 hours, 42 minutes, 51 secondsSo on this section.tsx file here, I'm going to create a const. I'm going to say can
5:43:005 hours, 43 minuteswas and parallel also artifacts and also teams are going to be extracted from our agent features.
5:43:145 hours, 43 minutes, 14 secondsThere you go. And now these needs to be used. We have parallel RT effects team.
5:43:215 hours, 43 minutes, 21 secondsYeah, all spellings are good. Okay. So now here we have
5:43:275 hours, 43 minutes, 27 secondsfeature card feature and uh yeah this is going to be a feature and what does it
5:43:355 hours, 43 minutes, 35 secondsexpect? Hold on. So this needs a feature and a class name. So for this one feature is going to be
5:43:455 hours, 43 minutes, 45 secondswhich was the first one it was canvas and yeah there you go. Then we have
5:43:525 hours, 43 minutes, 52 secondsparallel and that's going to go here feature card. And I'm going to say
5:44:005 hours, 44 minutesfeature. There you go. Parallel. And I'm going to copy both of these. Paste them
5:44:075 hours, 44 minutes, 7 secondshere. And this changes to artifacts here. And this one is teams.
5:44:165 hours, 44 minutes, 16 secondsAwesome. Let's get back here and see if we have an Well, we do have something.
5:44:225 hours, 44 minutes, 22 secondsAnd uh the shapes are there. And of course, we still need to finish some work. And for that, we're going to need to get back to our featured card
5:44:305 hours, 44 minutes, 30 secondscomponent. Let's get there. I'm going to go to the feature.card file. And here in
5:44:375 hours, 44 minutes, 37 secondsthis state, I'm going to say card content.
5:44:445 hours, 44 minutes, 44 secondsAnd of course we have a feature which is going to be feature. Then we have config which is going to be config. And we have
5:44:535 hours, 44 minutes, 53 secondscontent class which is going to be content class. There you go. Let me format that. And then after that here we
5:45:025 hours, 45 minutes, 2 secondshave card illustration where we have config which is going to be responsive config. Then we have
5:45:115 hours, 45 minutes, 11 secondsvariant and that's going to be feature dotvariant. Let me format save
5:45:185 hours, 45 minutes, 18 secondseverything and let's get back here. And yes, we do have some text now, but the
5:45:265 hours, 45 minutes, 26 secondsimages are not there. And we need to fix them now. Let's get back here.
5:45:335 hours, 45 minutes, 33 secondsAnd now let's let me bring those images to the project here. So here I'm going to inside this public folder we have
5:45:435 hours, 45 minutes, 43 secondsthis fonts I'm going to reveal that in finder and uh yeah so here I'm going to open a
5:45:525 hours, 45 minutes, 52 secondsnew tab go to desktop and in replet I have this illustrations of course you can find that in the GitHub repo and in the public I'm going
5:46:015 hours, 46 minutes, 1 secondto paste this that illustrations folder there and with that where we have both fonts and illustrations ions and
5:46:085 hours, 46 minutes, 8 secondsbasically that is the link which is being given. If I go to components
5:46:155 hours, 46 minutes, 15 secondsand then to landing then we have agent and here if I go to the config file and you would notice this this illustration
5:46:245 hours, 46 minutes, 24 secondsis / illustration slash this SVG and then that's is for each file and these
5:46:315 hours, 46 minutes, 31 secondsare these can be displayed here as I have this little uh extension VS code extension that's displaying me that image. All right, let's get back here.
5:46:415 hours, 46 minutes, 41 secondsLet me refresh. And bingo. Wonderful guys. So this section is 100% done as well. And now let me just make sure one
5:46:495 hours, 46 minutes, 49 secondsthing that is it responsive or not. I'm not worried about the responsiveness of this part yet. But this one because this part is eventually going to be moved out
5:46:585 hours, 46 minutes, 58 secondsfrom here to another another shared component which I've been telling you from the start of this video. So, I'm
5:47:055 hours, 47 minutes, 5 secondsgoing to click inspect, open that up, bring it to the side, and I'm going to make sure that we are visiting like like let's say iPhone 14
5:47:145 hours, 47 minutes, 14 secondsPro Max. And well, this is also responsive. Those are items are gone.
5:47:205 hours, 47 minutes, 20 secondsMany I mean the icons from the sides are gone. And I can drag this. This is also responsive.
5:47:275 hours, 47 minutes, 27 secondsWonderful. The menu is also responsive.
5:47:315 hours, 47 minutes, 31 secondsAnd there you go. This looks phenomenal on the mobile view as well, just like I
5:47:395 hours, 47 minutes, 39 secondsplanned. Wonderful. Let me get back to the desktop version.
5:47:455 hours, 47 minutes, 45 secondsClose this here. All right, let's move on to the next section that is going to come here and that is the platform
5:47:525 hours, 47 minutes, 52 secondssection. I'm going to go to my code editor and I'm going to close this one also this one and I'm going to collapse
5:47:595 hours, 47 minutes, 59 secondseverything components landing. And here I need a new folder. I'm going to name it platform. And in here I need a new file. I'm going to call it section.tsx.
Chapter 16: Platform section
5:48:135 hours, 48 minutes, 13 secondsLet's bring our container. And here I'm going to say export function
5:48:225 hours, 48 minutes, 22 secondsplatform form section open that and here I have this return
5:48:315 hours, 48 minutes, 31 secondsand I'm going to say section and in here I have this container and section is going to have
5:48:395 hours, 48 minutes, 39 secondssome class names as padding bottom dash 8 padding top-16 16 desktop is going to
5:48:475 hours, 48 minutes, 47 secondsbe padding top dash I'm going to say 120 pixels
5:48:545 hours, 48 minutes, 54 secondsand container is going to have an H2 here I'm going to say powered
5:49:035 hours, 49 minutes, 3 secondsby the replet form there you go let me format
5:49:125 hours, 49 minutes, 12 secondseverything save everything and now in here I need that. So, I'm going to say platform section. There you go. Save it.
5:49:215 hours, 49 minutes, 21 secondsLet's go to our code editor. And there you go. This is where we're going to display that section. So, I'm going to get back here.
5:49:315 hours, 49 minutes, 31 secondsAdd some classes to our uh title here. So class name text dash
5:49:385 hours, 49 minutes, 38 secondscenter font dash display text dash is going to be 32 pixels.
5:49:465 hours, 49 minutes, 46 secondsThen I have leading which is going to be 32 pixels as well.
5:49:545 hours, 49 minutes, 54 secondsAfter that I have tracking normal which I'm going to change to minus 1.92
5:50:035 hours, 50 minutes, 3 secondspx. text dash text- agent adding and then we have
5:50:105 hours, 50 minutes, 10 secondstablet up is going to be text dash 40 pixels
5:50:165 hours, 50 minutes, 16 secondsthen we have tablet up again leading is going to be 40 pixels and then I have
5:50:265 hours, 50 minutes, 26 secondstablet up again where I have tracking is going to be -2.4
5:50:345 hours, 50 minutes, 34 seconds4 pixels. Then we have on desktop I'm going to say text dash
5:50:415 hours, 50 minutes, 41 seconds48 pixels. And on desktop it's going to be leading none. And on desktop we have
5:50:495 hours, 50 minutes, 49 secondstracking normal which I'm going to change to minus0.06
5:50:565 hours, 50 minutes, 56 secondsam. I'm going to format everything here and let's take a look how it looks in the browser. There you go. Powered by the Rebbit platform. Awesome.
5:51:075 hours, 51 minutes, 7 secondsThen after that H2 here, we're going to need a component here which is going to
5:51:145 hours, 51 minutes, 14 secondsbe mobile platform slider. Of course, that's not
5:51:215 hours, 51 minutes, 21 secondsalready there. So, I'm going to just leave that as comment there. Then we have a div tag here.
5:51:295 hours, 51 minutes, 29 secondsCome on. And I'm going to give it some class names like large and top-12
5:51:355 hours, 51 minutes, 35 secondshidden. And we have grid calls one. Then we have gap of three. Tablet up is going to be grid.
5:51:465 hours, 51 minutes, 46 secondsAnd then we have tablet up grid calls two. And on desktop it's going to be wide.
5:51:545 hours, 51 minutes, 54 secondsHold on. Sorry. on desktop wide it's going to be flex and then again on
5:52:015 hours, 52 minutes, 1 seconddesktop wide it's going to be flex row I'm going to open that div and here I have
5:52:095 hours, 52 minutes, 9 secondsplatform features platform platform
5:52:165 hours, 52 minutes, 16 secondsfeatures dot map individual feature and for that I'm running I'm running this
5:52:245 hours, 52 minutes, 24 secondsturn where I have this for now just P tag I'm going to say feature
5:52:345 hours, 52 minutes, 34 secondsfeature do ID but eventually this is going to be something like
5:52:415 hours, 52 minutes, 41 secondsplatform card where we're going to say that we have key
5:52:505 hours, 52 minutes, 50 secondswhich is going to be feature dot ID and we have a feature which is going to be this feature from
5:52:595 hours, 52 minutes, 59 secondshere. I'm going to save it. Let's go here. And we have this little issue.
5:53:035 hours, 53 minutes, 3 secondsRefresh. That's still there. Each child list unique key. Yes, of course I can do
5:53:105 hours, 53 minutes, 10 secondsthat. But I I don't want to bother for that because eventually that's going to be removed. P is just a placeholder. So
5:53:185 hours, 53 minutes, 18 secondswe have agent, infrastructure, integrations, and enterprise. these three these four options for this uh platform section to display. All right.
5:53:305 hours, 53 minutes, 30 secondsRight now I would like to work on the platform card component. So here I'm going to go to this platform folder and
5:53:375 hours, 53 minutes, 37 secondsI'm going to create a new f file that is going to be card.tsx and I'm going to bring image first of
5:53:455 hours, 53 minutes, 45 secondsall. Then I'm going to need type let form feature. There you go. And then I'm
5:53:535 hours, 53 minutes, 53 secondsgoing to need actually instead of doing all that I'm going to go slash something like that. And then we
5:54:025 hours, 54 minutes, 2 secondshave CN here. And here I'm going to say const card styles
5:54:115 hours, 54 minutes, 11 secondsrecord. And this is going to be platform feature where we have variant.
5:54:215 hours, 54 minutes, 21 secondsAnd I'm going to put a comma here. And second value is going to be a string equal to this where we have agent bg dash white.
5:54:315 hours, 54 minutes, 31 secondsThen we have infrastructure which is going to be BG dash
5:54:405 hours, 54 minutes, 40 secondsDB DD4 CF. Then we have integrations.
5:54:495 hours, 54 minutes, 49 secondsThat's going to be BG dash feature dash peach.
5:54:545 hours, 54 minutes, 54 secondsThen we have enter enter price and that's going to be bg-feature dash coral.
5:55:045 hours, 55 minutes, 4 secondsLet me format and save everything. And now after that here I'm going to say function
5:55:135 hours, 55 minutes, 13 secondsplatform visual there we have this
5:55:215 hours, 55 minutes, 21 secondsvariant and that's going to be type of this where we have gradient platform
5:55:295 hours, 55 minutes, 29 secondsfeature variant. There you go. Let me open that function here where we have a switch
5:55:385 hours, 55 minutes, 38 secondsstatement for the variant and I'm going to have case agent
5:55:465 hours, 55 minutes, 46 secondsand for that I have this return for now I'm just going to keep it empty. That's pretty much it because I need to create
5:55:555 hours, 55 minutes, 55 secondsanother component which is going to go here and then here I'm going to need another case which is
5:56:055 hours, 56 minutes, 5 secondsgoing to be infrastructure and of course for that this case we need
5:56:135 hours, 56 minutes, 13 secondsthis little colon here then we have return here I'm going to display the image here.
5:56:255 hours, 56 minutes, 25 secondsThere you go. And we have source. I'm going to say slash
5:56:345 hours, 56 minutes, 34 secondsillustrations slash platform or maybe I guess the better way to do
5:56:405 hours, 56 minutes, 40 secondsthat slash. Yeah, there you go. If I do Yeah, it doesn't work that way. Then
5:56:475 hours, 56 minutes, 47 secondsdollar slash and then again dollar slash I'm going to need to go to the public
5:56:545 hours, 56 minutes, 54 secondsslash illustrations slash I need to pick infra.
5:57:005 hours, 57 minutesYeah, sorry. Platform and then slashinfra.svg.
5:57:055 hours, 57 minutes, 5 secondsAnd of course, now I can get rid of everything from here to here. That was
5:57:125 hours, 57 minutes, 12 secondsjust for so I could I could get the in path intellisense.
5:57:185 hours, 57 minutes, 18 secondsAll right. Now we have alt empty. Then we have width 140. And then we have height 213.
5:57:275 hours, 57 minutes, 27 secondsThen we have class name height dash. And it's going to be uh 213 pixel. And then we have width
5:57:365 hours, 57 minutes, 36 secondsdash 140 pixel. And then we have area hidden.
5:57:445 hours, 57 minutes, 44 secondsMe format everything and save everything. And awesome. Then after that return here we're going to need another case that's going to be integrations.
5:57:545 hours, 57 minutes, 54 secondsSo for that we have another return. Open that we have another image and I'm going
5:58:005 hours, 58 minutesto open that. Here we have source and I'm going to paste that. Here we have
5:58:075 hours, 58 minutes, 7 secondsillustrations platform and then we have integrations and of course we no longer need this thing from here.
5:58:175 hours, 58 minutes, 17 secondsThen we have alt empty for now. Width is going to be 273 272 actually. And then we height is 204.
5:58:295 hours, 58 minutes, 29 secondsAnd we have class name. Same values.
5:58:325 hours, 58 minutes, 32 secondsHeight dash 204 pixel.
5:58:375 hours, 58 minutes, 37 secondsThere you go. And we have width dash 272 pixels.
5:58:445 hours, 58 minutes, 44 secondsAll right. Then we have area hidden.
5:58:465 hours, 58 minutes, 46 secondsAwesome. That's done. Next we have case and that's going to be for enterprise
5:58:535 hours, 58 minutes, 53 secondsand we have return here. Open that where we have image of course and I'm going to
5:59:025 hours, 59 minutes, 2 secondssay source this slash illustrations slashplatform slash enterprise.
5:59:125 hours, 59 minutes, 12 secondsLet's get rid of that. No longer need for that. And then we have alt empty. We have width 117.
5:59:215 hours, 59 minutes, 21 secondsWe have height 148. We have class name which is going to be height dash
5:59:295 hours, 59 minutes, 29 seconds148 and 148 pixel. And then we have a width dash 117 pixel. And of course we
5:59:395 hours, 59 minutes, 39 secondshave area hidden as well. Let me format and save everything. And awesome. Now before I move on to any further, I would
5:59:485 hours, 59 minutes, 48 secondslike to work on this little component here that's going to go under the platform. So I'm going to create a new
5:59:555 hours, 59 minutes, 55 secondsfile that's going to be agent dash illustration.tsx.
6:00:036 hours, 3 secondsAnd here we have export function platform agent illustration.
6:00:116 hours, 11 secondsAnd there you go. Here we have return and in the return I'm going to say a div
6:00:186 hours, 18 secondswhere we have class name relative height dash 244 pixel and width dash
6:00:286 hours, 28 seconds72 pixel. I'm going to open that div where we have another div
6:00:346 hours, 34 secondsclasses absolute bottom is going to be
6:00:416 hours, 41 seconds- 9 pixel. We have left five. Then we have size which is going to be 250 pixel.
6:00:516 hours, 51 secondsAnd then we have rounded full and we have border border.
6:00:596 hours, 59 secondsAnd for that I'm going to say 1.5 px.
6:01:036 hours, 1 minute, 3 secondsThere you go. We also have a border dashed. Then border replet orange. There
6:01:106 hours, 1 minute, 10 secondsyou go. Open that div. And here we have another actually I'm going to get rid of
6:01:176 hours, 1 minute, 17 secondsthis thing and make this self-closing div. And now here I'm going to open another div where we have this. And I'm
6:01:276 hours, 1 minute, 27 secondsgoing to say absolute of course. Then left is going to be
6:01:356 hours, 1 minute, 35 secondsminus sorry not minus but 45 pixels. And then we have top is going to be zero.
6:01:436 hours, 1 minute, 43 secondsThere you go. Flex height dash 50 pixels.
6:01:506 hours, 1 minute, 50 secondsWidth dash 162 pixels.
6:01:566 hours, 1 minute, 56 secondsAnd then we have items dash center gap one rounded instead of two pixel uh two
6:02:036 hours, 2 minutes, 3 secondsexcel I'm going to say 7 pixel and then we have border then we have border
6:02:126 hours, 2 minutes, 12 secondsdash custom color which is going to be hash 91818 and
6:02:206 hours, 2 minutes, 20 secondsyeah then we have bg- white also px2.5 py by two
6:02:276 hours, 2 minutes, 27 secondsfont display text is going to be 10.4 px
6:02:356 hours, 2 minutes, 35 secondstracking normal that changes to -0.03
6:02:426 hours, 2 minutes, 42 secondsem and then we have text dash which is #1 91818.
6:02:516 hours, 2 minutes, 51 secondsAwesome. I'm going to open that div.
6:02:546 hours, 2 minutes, 54 secondsAnd here inside this div, I'm going to say make my idea come true for now.
6:03:016 hours, 3 minutes, 1 secondThat's pretty much it. I'm going to get back here. And in here, I'm going to need to bring this over.
6:03:096 hours, 3 minutes, 9 secondsPlatform agent illustration. So here, platform agent illustration. There you go.
6:03:186 hours, 3 minutes, 18 secondsSaving it. Awesome.
6:03:216 hours, 3 minutes, 21 secondsAnd now I would like to wire this up to the section here as well. So for that
6:03:296 hours, 3 minutes, 29 secondsI'm going to get rid of this one and uncomment this one. And I'm going to bring
6:03:356 hours, 3 minutes, 35 secondsactually no I guess we cannot yet because uh function platform visual. Yeah
6:03:446 hours, 3 minutes, 44 secondsbecause we haven't created the function yet for this to export. Yeah, we're going to need to work on that next. And but before that, let's make sure.
6:03:546 hours, 3 minutes, 54 secondsActually, do you know what? I want to do that first. So here
6:03:596 hours, 3 minutes, 59 secondshere I'm going to say export function
6:04:056 hours, 4 minutes, 5 secondsplatform card and in here I have this
6:04:116 hours, 4 minutes, 11 secondsfeature which is going to be type of feature platform feature. There you go.
6:04:206 hours, 4 minutes, 20 secondsopen the function here and we're going to need to return an article from there.
6:04:296 hours, 4 minutes, 29 secondsAwesome. Now, here we have class name.
6:04:336 hours, 4 minutes, 33 secondsI'm going to use CN and I'm going to say flex width- full min height dash this.
6:04:426 hours, 4 minutes, 42 secondsLet's change it to custom which is 480 pixels. We have flex call rounded to Excel from change that to 20 pixels.
6:04:546 hours, 4 minutes, 54 secondsTablet up. Tab up. Come on. Tab up is going to be min
6:05:026 hours, 5 minutes, 2 secondsheight minimum dash height zero. Change that to
6:05:086 hours, 5 minutes, 8 seconds520 pixels. And we have on desktop dash wide that is going to be height
6:05:156 hours, 5 minutes, 15 secondsdash 6 40 pixels. No actually 604 pixels.
6:05:246 hours, 5 minutes, 24 secondsAnd then we have desktop wide width dash 320 pixels and the desktop wide shrink
6:05:336 hours, 5 minutes, 33 secondszero. And I'm also going to add card styles.
6:05:406 hours, 5 minutes, 40 secondsAnd of course, I'm going to need to get feature dot variant. There you go.
6:05:446 hours, 5 minutes, 44 secondsAwesome. I'm going to go inside this article here now. And here I have this div. I'm going to give it a class name
6:05:536 hours, 5 minutes, 53 secondsflex flex call. And we have gap of four.
6:05:586 hours, 5 minutes, 58 secondsAnd inside this I have this p where I would like to display feature.
6:06:046 hours, 6 minutes, 4 secondsI pro. I guess that's pretty much it for me to wire this up here. I'm going to
6:06:106 hours, 6 minutes, 10 secondsget rid of this and add that here. And I'm going to bring
6:06:176 hours, 6 minutes, 17 secondsadd import from cart. There you go. We have key here and we have feature here.
6:06:236 hours, 6 minutes, 23 secondsLet's get back here and see what do we have. There you go. We have agent chat, full stack architecture, infrastructure, integrations, and enterprise control.
6:06:356 hours, 6 minutes, 35 secondsAwesome. And we have all these colors and design as well. Fantastic. Let's get back here to this car.tsx
6:06:426 hours, 6 minutes, 42 secondsand make sure that this P has some classes like font display. Then we have
6:06:496 hours, 6 minutes, 49 secondstext dash 32 pixels. Then we have leading that's going to be 32 pixels as
6:06:576 hours, 6 minutes, 57 secondswell. Tracking and that changes to minus0.04
6:07:046 hours, 7 minutes, 4 secondsam. Then we have text dash text dash agent heading. Let's save that. Let's get here. And awesome.
6:07:156 hours, 7 minutes, 15 secondsFantastic. If I go here, this is very very uh near.
6:07:216 hours, 7 minutes, 21 secondsSo I would like to add P6 here. Save that. Let's get back. And yeah, it looks
6:07:286 hours, 7 minutes, 28 secondsmuch better now. So after this P tag here, we have this div. I'm going to get out of that div. Create another div.
6:07:376 hours, 7 minutes, 37 secondsGive it some class name flex flex one items dash center and justify center.
6:07:466 hours, 7 minutes, 46 secondsOpen that div. Here we have another component which is going to be platform
6:07:556 hours, 7 minutes, 55 secondsvisual that we're going to create in a minute.
6:08:006 hours, 8 minutesSo also of course it's going to take a variant which is going to be
6:08:096 hours, 8 minutes, 9 secondsfeature dot variant. And of course, for now, I'm just going to say platform
6:08:166 hours, 8 minutes, 16 secondsvisual here. And let's take a look. Yes, this is where the visual is going to be displayed.
6:08:236 hours, 8 minutes, 23 secondsLet's get back here. And now after this div here, I'm going to create a p tag.
6:08:306 hours, 8 minutes, 30 secondsAnd I'm going to say feature dot description.
6:08:366 hours, 8 minutes, 36 secondsAnd of course here font dash display text dash base leading
6:08:446 hours, 8 minutes, 44 secondsfor this one is going to be 1.1. Then we have tracking. I'm going to change that to
6:08:526 hours, 8 minutes, 52 secondsminus0.02 am. Then we have text dash text dash
6:09:006 hours, 9 minutesagent heading. There you go. I guess that's pretty much it. If I go here. Awesome. This is how it looks.
6:09:076 hours, 9 minutes, 7 secondsFantastic.
6:09:096 hours, 9 minutes, 9 secondsNow, let's get back here. I'm going to pull this down a little. And here, first of all, change this from feature.
6:09:166 hours, 9 minutes, 16 secondseyebrow to feature.title.
6:09:196 hours, 9 minutes, 19 secondsAnd I'm going to bring this down. And here going to create another P tag. Give it class name. That's going to be font display. Then we have text LG.
6:09:316 hours, 9 minutes, 31 secondsLG also capitalize. Then we have leading of 18 pixels. Then we have tracking
6:09:406 hours, 9 minutes, 40 secondswhich is going to be minus0.04 em. We also have text- text agent
6:09:486 hours, 9 minutes, 48 secondsheading. And in here I'm going to display feature. I draw. Let me format
6:09:556 hours, 9 minutes, 55 secondsand save everything. Let's get back here. And awesome. This is exactly how it should be displayed. All right. Now
6:10:026 hours, 10 minutes, 2 secondsI'm going to work on the platform visual and for that first of all I'm going to go to in the code editor and
6:10:116 hours, 10 minutes, 11 secondscard.tsx file. Here we have this platform visual that we already have created and that's going to go here.
6:10:206 hours, 10 minutes, 20 secondsSo there you go. We have this variant.
6:10:276 hours, 10 minutes, 27 secondsWe're going to use it like that. And this is going to be this way. All right.
6:10:346 hours, 10 minutes, 34 secondsNow, if I go here and there you go. We have these three SVGs. And this one is going to be built under this agent
6:10:436 hours, 10 minutes, 43 secondsillustration file. And let's let's do that. So, after this text here, I'm going to add a span tag and I'm going to
6:10:506 hours, 10 minutes, 50 secondsgive it a class name. This is going to be a self-closing span tag by the way, h3. And then we have width is going to be px.
6:11:006 hours, 11 minutesAnd then we have bg which is going to be #1 91818.
6:11:086 hours, 11 minutes, 8 secondsAnd we have area hidden. There you go. Then I'm going to get out of this div.
6:11:156 hours, 11 minutes, 15 secondsAnd here I'm going to create another div. I'm going to say class
6:11:246 hours, 11 minutes, 24 secondsabsolute. And then I have bottom which is going to be 94 px. Then I have left
6:11:356 hours, 11 minutes, 35 seconds183 px. And then we have flex height dash 38 px width dash
6:11:446 hours, 11 minutes, 44 seconds89 px. And then I have items center as well as justify center gap one
6:11:546 hours, 11 minutes, 54 secondsrounded is going to be 7 px. Let me format and save that.
6:12:016 hours, 12 minutes, 1 secondAnd then it's going to be bg-relate orange also px3 also font display
6:12:116 hours, 12 minutes, 11 secondsalso text is going to be 10.4
6:12:176 hours, 12 minutes, 17 secondspx and then we have tracking normal I'm going to change that to minus0.03 03M
6:12:266 hours, 12 minutes, 26 secondsand we have text dash white. I'm going to open this div and I'm going to paste this SVG here. Of course, link is
6:12:346 hours, 12 minutes, 34 secondsavailable in the description. You can grab that from the GitHub repo and I'm going to say publish here. Save. Let's
6:12:416 hours, 12 minutes, 41 secondsgo here. And there you go. Well, it is not exactly the way it should be. I must
6:12:486 hours, 12 minutes, 48 secondshave missed something. So, left flex. It shouldn't be flex call. It should be just flex.
6:12:586 hours, 12 minutes, 58 secondsLet's go there back. And there you go.
6:13:016 hours, 13 minutes, 1 secondAwesome. Now, after this div, we're going to need to create the next div. So
6:13:086 hours, 13 minutes, 8 secondsI'm going to give it class name absolute bottom zero left zero flex height is
6:13:176 hours, 13 minutes, 17 secondsgoing to be 41 px width is going to be 88 px and then we
6:13:246 hours, 13 minutes, 24 secondshave items dash center justify center gap is going to be one rounded md and we
6:13:326 hours, 13 minutes, 32 secondshave border then we have border dash this where we have #191818
6:13:416 hours, 13 minutes, 41 secondsbg-ite and px2 font display. Then we have text
6:13:486 hours, 13 minutes, 48 secondsand I'm going to change that to 10.4 px tracking is going to be
6:13:576 hours, 13 minutes, 57 secondshold on yeah tracking is going to be
6:14:036 hours, 14 minutes, 3 seconds-0.03 03 em. Then we have text and I'm going to change that to hashtag 1 91818.
6:14:126 hours, 14 minutes, 12 secondsAnd inside that div, I'm going to add this SVG here. And I
6:14:196 hours, 14 minutes, 19 secondsthink we are done. Let's go here. And there you go. We have our user here. But
6:14:276 hours, 14 minutes, 27 secondsof course, we need to add little after the SVG agent here as well. So let's go
6:14:336 hours, 14 minutes, 33 secondsback and awesome. So with that we can proudly say that this section is done as well and of course 100% responsive too.
6:14:436 hours, 14 minutes, 43 secondsLet me actually test it out on the mobile and here if I go and say iPhone
6:14:516 hours, 14 minutes, 51 seconds14 Pro Max and refresh. Well there is nothing. Oh, I
6:14:596 hours, 14 minutes, 59 secondsremember there is one thing that we missed and that is under this I guess section. Yes, we still need to create
6:15:086 hours, 15 minutes, 8 secondsthis little component for the mobile as this is being hidden from the mobile. It is only available on the desktop wide
6:15:186 hours, 15 minutes, 18 secondsand all that also on the tablet up it becomes grid. All right. So for that
6:15:256 hours, 15 minutes, 25 secondsunder the platform I'm going to create a new file. I'm going to name it mobile- slider.tsx.
6:15:336 hours, 15 minutes, 33 secondsAnd I'm going to make sure it's a client component.
6:15:376 hours, 15 minutes, 37 secondsThen we have platform card. Then the next thing that I need is platform
6:15:456 hours, 15 minutes, 45 secondsfeatures. There you go. Here we have export function mobile
6:15:536 hours, 15 minutes, 53 secondsplatform slider. There you go. I'm going to return and in there we have a div to which I'm going to provide a class name.
6:16:046 hours, 16 minutes, 4 secondsSo on mobile it's going to be lock and tablet up it's going to be hidden and in
6:16:126 hours, 16 minutes, 12 secondsthere of course it's going to be a mobile platform
6:16:196 hours, 16 minutes, 19 secondsslider component. So in the section here, mobile platform slider. There you go.
6:16:276 hours, 16 minutes, 27 secondsLet me format that and save that. Now if I go here, this is what you see. Mobile platform slider. Of course, we need to
6:16:366 hours, 16 minutes, 36 secondsadd a lot more things in there, but those things depend on a few other components. So, we're going to need to
6:16:446 hours, 16 minutes, 44 secondscreate a few more components in order to make sure that we can build this mobile slider. So, the very first thing that we need is the infinite carousel component.
6:16:576 hours, 16 minutes, 57 secondsSo, I'm going to collapse everything in here. I'm going to go under components, then UI, and in here I'm going to create
6:17:046 hours, 17 minutes, 4 secondsa new file. Name it infinite dash
6:17:116 hours, 17 minutes, 11 secondscarousel.tsx. tsx. There you go. It's a client component. I'm going to import type react node.
6:17:246 hours, 17 minutes, 24 secondsImport that. Yes, there you go. And then I'm going to need also use infinite scroll infinite carousel hook that we
6:17:326 hours, 17 minutes, 32 secondscreated earlier and also the CN. Then here I'm going to say type
6:17:406 hours, 17 minutes, 40 secondsinfinite carousel props and this is going to take
6:17:456 hours, 17 minutes, 45 secondsa generic type T extends and here we're adding ID string
6:17:546 hours, 17 minutes, 54 secondsand of course let's open that here we have items array of that generic type then we have
6:18:036 hours, 18 minutes, 3 secondsrender slide that's going to be that item which is going to be that T and react node is
6:18:126 hours, 18 minutes, 12 secondsgoing to be returned from that render slide. Then we have get dot
6:18:196 hours, 18 minutes, 19 secondslabel that's optional that's also going to be a function where we have an item which is supposed to be that generic
6:18:276 hours, 18 minutes, 27 secondstype and index which is supposed to be that number type and it's going to
6:18:336 hours, 18 minutes, 33 secondsreturn a string. Then we have viewport class name optional string and it should
6:18:436 hours, 18 minutes, 43 secondsbe string as well. Then we have control plus class control
6:18:516 hours, 18 minutes, 51 secondsclass name and it should be string as well and controls. Yeah. All right.
6:18:586 hours, 18 minutes, 58 secondsAfter that here I'm going to say export function infinite carousel
6:19:066 hours, 19 minutes, 6 secondstake that t extends and it's going to be ID which is going to be string of course
6:19:146 hours, 19 minutes, 14 secondsand I'm going to open this function where I have this is the function and then I need some arguments for the
6:19:236 hours, 19 minutes, 23 secondsfunction as well which is items then render slide Then I need
6:19:306 hours, 19 minutes, 30 secondsget dot label. Then I need view port
6:19:376 hours, 19 minutes, 37 secondsclass name. And then I need controls class name which is equal to margin top
6:19:456 hours, 19 minutes, 45 secondsdash six. And let's open that here. And of course, this whole thing is going to be a type of infinite
6:19:546 hours, 19 minutes, 54 secondsuh where is that infinite carousel crops. There you go. And of course, I
6:20:026 hours, 20 minutes, 2 secondsneed to make sure that the generic type has been added there as well. All right.
6:20:076 hours, 20 minutes, 7 secondsNow, here I'm going to say const and I need a few things.
6:20:146 hours, 20 minutes, 14 secondsSo, I'm going to add I'm going to concat. I'm going to extract them. So,
6:20:216 hours, 20 minutes, 21 secondsview port reference width slides position
6:20:296 hours, 20 minutes, 29 secondsenable transition active index and go next. Go previous.
6:20:406 hours, 20 minutes, 40 secondsGo to index handle transition end. All of these
6:20:476 hours, 20 minutes, 47 secondsneeds to be imported, I mean extracted from the use infinite carousel. And I'm going to add
6:20:556 hours, 20 minutes, 55 secondsitems there. There you go. Handle transition. Well, seems like the spellings are not good. So, let me copy
6:21:056 hours, 21 minutes, 5 secondsthat from here. It won't let me go there. So, how about Yeah. How about this? End transition.
6:21:156 hours, 21 minutes, 15 secondsAnd there you go. There you go. The A is capital. Yeah, sorry. All right, that's there. And now after that here I'm going
6:21:256 hours, 21 minutes, 25 secondsto return from this function which is going to be an empty fragment.
6:21:326 hours, 21 minutes, 32 secondsAnd in there I have this div to which I provide reference which is going to be viewport reference. Then we have class
6:21:426 hours, 21 minutes, 42 secondsname. I'm going to use CN for that. So that's going to be overflow hidden. And then second value is going to be viewport class name.
6:21:546 hours, 21 minutes, 54 secondsThere you go. I'm going to open that div. Have another div. Give it class name. Make sure it's CN. Open that. Flex will change transform.
6:22:076 hours, 22 minutes, 7 secondsComma. Get down. Enable transition. If that is true then we have transition transform
6:22:166 hours, 22 minutes, 16 secondstransition come on transition dash transform
6:22:256 hours, 22 minutes, 25 secondsthere you go and then we have duration 500 also is out there you go let me
6:22:346 hours, 22 minutes, 34 secondsformat everything and then after that here I'm also I add style and in there I'm going to say transform.
6:22:456 hours, 22 minutes, 45 secondsThere you go. And this is going to be width. If that is more than zero then it's going to be
6:22:536 hours, 22 minutes, 53 secondstrans translate 3D.
6:23:016 hours, 23 minutes, 1 secondAnd in there I'm going to add minus and that's going to be position divided by width. Of course I'm going to
6:23:106 hours, 23 minutes, 10 secondsadd px to that and second value here zero and then zero. And in case of it
6:23:186 hours, 23 minutes, 18 secondsnot being true that's going to be after this here undefined. Let me format everything. And there you go. Awesome.
6:23:286 hours, 23 minutes, 28 secondsAnd in here, I'm also going to say on transition end, it's going to be handle
6:23:366 hours, 23 minutes, 36 secondstransition end. Awesome. I'm going to open that. And here I'm going to say
6:23:426 hours, 23 minutes, 42 secondsslides dot map. And here I have this item and slide index. And then for each
6:23:516 hours, 23 minutes, 51 secondsindividual I'm going to return and I have this div where I am going to provide a key and that's going to be item. Hold on.
6:24:056 hours, 24 minutes, 5 secondsYeah. Item do ID and then in here I'm going to add this dash and then slide index. There you go.
6:24:196 hours, 24 minutes, 19 secondsHere I'm going to add class name that's going to be width dash full and shrink
6:24:266 hours, 24 minutes, 26 secondszero. Then we also have this style and in there I'm going to say if width is
6:24:346 hours, 24 minutes, 34 secondsmore than zero then it's going to be width otherwise it's going to be
6:24:426 hours, 24 minutes, 42 secondsundefined. There you go. And there is something yes this div is extra here. Let me get rid of that.
6:24:516 hours, 24 minutes, 51 secondsAnd then in here I'm going to say area hidden.
6:25:026 hours, 25 minutes, 2 secondsThere you go. And for that I'm going to say slide index is not equal to position.
6:25:116 hours, 25 minutes, 11 secondsAnd finally inside that div here we have render slide and I'm going to say item.
6:25:196 hours, 25 minutes, 19 secondsThere you go. That's pretty much it.
6:25:226 hours, 25 minutes, 22 secondsThere is only one thing left and that's going and that's going to be under this div here. There is going to be a
6:25:316 hours, 25 minutes, 31 secondscarousel controls component. And of course we have not that ready yet. So this is time for us
6:25:416 hours, 25 minutes, 41 secondsto create that component. I'm going to save everything and let's let's work on that. So I'm going to go to this UI
6:25:496 hours, 25 minutes, 49 secondsfolder under components and I'm going to create a new file which is going to be
6:25:566 hours, 25 minutes, 56 secondscarousel dash control s carousel-controls.tsx.
6:26:056 hours, 26 minutes, 5 secondsThere you go. And we're going to import chevron icon. I'm pretty tired.
6:26:116 hours, 26 minutes, 11 secondsUh there's also CN. And then I'm going to also let's say type actually
6:26:206 hours, 26 minutes, 20 secondscarousel nav button props is equal to this. And here we have direction. It's
6:26:286 hours, 26 minutes, 28 secondseither going to be left or right. Then we have on click which is a
6:26:386 hours, 26 minutes, 38 secondsfunction but not returning anything. Then we have a label which is going to be a string.
6:26:476 hours, 26 minutes, 47 secondsThen here we're going to say function carousel nav button. Open that. And here
6:26:556 hours, 26 minutes, 55 secondswe have direction on click. Then we have label and this is
6:27:026 hours, 27 minutes, 2 secondsa all type of carousel nav button props open the function body here and we have
6:27:106 hours, 27 minutes, 10 secondsreturn in this we have a button I'm going to give it a type of button of course this
6:27:186 hours, 27 minutes, 18 secondsis going to be an on click I'm going to say on click here then we have area label and for that I'm going to say if
6:27:286 hours, 27 minutes, 28 secondslabel exists That's good. Otherwise, it's going to be direction when that is equal to left.
6:27:376 hours, 27 minutes, 37 secondsWe're going to say previous slide.
6:27:416 hours, 27 minutes, 41 secondsOtherwise, we're going to say next slide. Let me format everything.
6:27:466 hours, 27 minutes, 46 secondsVery good. Then here after that here, we're going to need a class name. And I'm going to say flex h10.
6:27:586 hours, 27 minutes, 58 secondsThen also width 10 and also items center justify center rounded excel. We also
6:28:076 hours, 28 minutes, 7 secondsneed bg dash # f1 f0 e. Then we have
6:28:156 hours, 28 minutes, 15 secondstext dash text dash secondary transition colors. And then we have on hover
6:28:226 hours, 28 minutes, 22 secondsit's going to be bg dash # e8 e7 e3.
6:28:336 hours, 28 minutes, 33 secondsAwesome. And then inside the button here we have chevron icon.
6:28:396 hours, 28 minutes, 39 secondsAnd of course I'm going to provide direction there as well.
6:28:456 hours, 28 minutes, 45 secondsJust like that direction.
6:28:496 hours, 28 minutes, 49 secondsAwesome. Now under this button this function here I'm going to say yeah this
6:28:566 hours, 28 minutes, 56 secondsis where it's ending here. We need a type carousel dot
6:29:036 hours, 29 minutes, 3 secondspagination props is equal to this where we have count I'm going to say number
6:29:116 hours, 29 minutes, 11 secondsthen we have active index also number then on select is going to be a function
6:29:196 hours, 29 minutes, 19 secondswhich is going to take an index which is supposed to be a number and it's not going to return anything. Then we have
6:29:286 hours, 29 minutes, 28 secondsget label also optional but I mean optional but a functional function index
6:29:376 hours, 29 minutes, 37 secondsnumber and it's going to return a string.
6:29:426 hours, 29 minutes, 42 secondsHere we have function carousel dot pagenation. There you go.
6:29:496 hours, 29 minutes, 49 secondsAnd I'm going to open that function. But before that we need to provide count
6:29:566 hours, 29 minutes, 56 secondsthen active index then on select and then
6:30:046 hours, 30 minutes, 4 secondsget label which is going to be equal to this function index which is going to be
6:30:126 hours, 30 minutes, 12 secondsgo to slide and then here we add index + one. Awesome. And this whole thing is
6:30:206 hours, 30 minutes, 20 secondsgoing to be a type of carousel.pagenation props. Awesome. Let me format
6:30:276 hours, 30 minutes, 27 secondseverything. Bring it up. Open this function body. Add return here. And we also add div here. Provide a class name.
6:30:376 hours, 30 minutes, 37 secondsFlex gap-2. Open this. Here we have array dot from
6:30:466 hours, 30 minutes, 46 secondsand in which I'm going to say length is going to be count and then I'm going to say
6:30:556 hours, 30 minutes, 55 secondsunderscore because I don't need that and I need the index of course and then we have index here and then
6:31:046 hours, 31 minutes, 4 secondsafter the index I'm going to open this function return basically Here we have a button.
6:31:136 hours, 31 minutes, 13 secondsI'm going to provide it a type which is going to be a button of course. Then the
6:31:206 hours, 31 minutes, 20 secondskey which is going to be index in this case. And then we have on click which is going to be this function
6:31:296 hours, 31 minutes, 29 secondson select and I'm provide index in there. Then I'm going to need area
6:31:356 hours, 31 minutes, 35 secondslabel. For that I'm going to use get label and in there I'm going to provide index
6:31:436 hours, 31 minutes, 43 secondsas well. And then after that there's class name. I'm going to use CN in there. Open that.
6:31:516 hours, 31 minutes, 51 secondsHere we have H dash2 width also two rounded dash full
6:31:586 hours, 31 minutes, 58 secondstransition colors and then I'm going to use a comma here. Get down. So if index
6:32:056 hours, 32 minutes, 5 secondsis equal to active index then we're going to say bg dash replet
6:32:136 hours, 32 minutes, 13 secondsorange otherwise this is going to be bg dash this custom color hash d9 d7 d3.
6:32:256 hours, 32 minutes, 25 secondsAwesome. All right. And of course we need to get rid of the closing one from
6:32:326 hours, 32 minutes, 32 secondshere as this is just the self-closing button we have here. After that here I'm going to say type carousel
6:32:416 hours, 32 minutes, 41 secondscontrol controls props is equal to this where we have count number
6:32:496 hours, 32 minutes, 49 secondsactive index also number on select function
6:32:566 hours, 32 minutes, 56 secondsindex number and doesn't return anything void. There you go. Then we have on
6:33:056 hours, 33 minutes, 5 secondsprevious function void on next function void
6:33:146 hours, 33 minutes, 14 secondsget dot label optional function index supposed to be number and it returns a string.
6:33:266 hours, 33 minutes, 26 secondsThen we have class name of course optional and it returns a string. All right. I mean it's supposed
6:33:356 hours, 33 minutes, 35 secondsto be a string. Now I'm going to say export function carousel controls.
6:33:436 hours, 33 minutes, 43 secondsOpen that. And here we have count active index. Then we have on select
6:33:526 hours, 33 minutes, 52 secondsalso on previous on next and then get dot label and of
6:34:016 hours, 34 minutes, 1 secondcourse class name as well. Make sure it's type of cursor control props.
6:34:086 hours, 34 minutes, 8 secondsOpen the function body. And we have this return here. I'm going to say a div.
6:34:146 hours, 34 minutes, 14 secondsGive it a class name. Let's use CN. and make sure we have flex items center
6:34:226 hours, 34 minutes, 22 secondsjustify between and here we have class name. I'm going to open that div. Here we have carousel dot page nation.
6:34:336 hours, 34 minutes, 33 secondsI'm going to say count is going to be count and then active index is going to be active index.
6:34:426 hours, 34 minutes, 42 secondsThen I have on select which is going to be on select and get label is going to
6:34:506 hours, 34 minutes, 50 secondsbe get dot label. There you go. Let me format that. Save that. And now under here I'm going to create another div.
6:35:006 hours, 35 minutesGive it a class name flex and gap of two. Open that. Here we have carousel nav button.
6:35:086 hours, 35 minutes, 8 secondsAnd I'm going to add direction left to this one. and on click is going to be on previous. I'm going to duplicate that.
6:35:176 hours, 35 minutes, 17 secondsThis is going to be right and on next. There you go. Let me format everything.
6:35:236 hours, 35 minutes, 23 secondsSave everything. And that's done.
6:35:276 hours, 35 minutes, 27 secondsAnd now this component is going to be used here inside infinite carousel here. So I'm going to say carousel controls.
6:35:366 hours, 35 minutes, 36 secondsThere you go. And I'm going to make sure that we have count all on
6:35:436 hours, 35 minutes, 43 secondscount which is going to be items dolength.
6:35:476 hours, 35 minutes, 47 secondsThen we have active index which is active index. Then we have on select
6:35:546 hours, 35 minutes, 54 secondswhich is go to index. Then we have on previous go previous.
6:36:036 hours, 36 minutes, 3 secondsOn next go next. And then we have get dot label and that's going to be I'm
6:36:126 hours, 36 minutes, 12 secondsgoing to break here and I'm going to say get dot label. If that's true, then I'm going to say this function where we have
6:36:216 hours, 36 minutes, 21 secondsindex that's going to use get dot label and get the and as a first
6:36:306 hours, 36 minutes, 30 secondsparameter I'm going to say items. I'm going to grab the index and then as a second just index here and then it's going to be a type of undefined.
6:36:426 hours, 36 minutes, 42 secondsAll right.
6:36:446 hours, 36 minutes, 44 secondsAfter that here I'm also going to add class name to this which is going to be control class name. All right. Awesome.
6:36:546 hours, 36 minutes, 54 secondsSo this one is done as well. Let me close this one as well as this one. And
6:37:016 hours, 37 minutes, 1 secondnow we are in the mobile slider. This is where we need to use that function now.
6:37:086 hours, 37 minutes, 8 secondsI mean component. So here I'm going to say infinite carousel. There you go. And
6:37:166 hours, 37 minutes, 16 secondsthis is going to be items platform features. There you go. And
6:37:226 hours, 37 minutes, 22 secondsthen we have render slide. And for that I'm going to say feature. And then it's
6:37:296 hours, 37 minutes, 29 secondsgoing to be platform card. There you go.
6:37:366 hours, 37 minutes, 36 secondsAnd this is going to take a feature which is of course is going to be feature that we have. So let me format
6:37:446 hours, 37 minutes, 44 secondsthat and then after that we need let me duplicate that actually no let's let's
6:37:516 hours, 37 minutes, 51 secondsdo fresh. So we have get get dot label and that's going to be also a function which needs two things.
6:38:026 hours, 38 minutes, 2 secondspost we do not need. We need the index.
6:38:066 hours, 38 minutes, 6 secondsAnd that's going to be go to platform card.
6:38:126 hours, 38 minutes, 12 secondsAnd here we have index + one. Awesome.
6:38:186 hours, 38 minutes, 18 secondsIn text. Awesome. And then here we have viewport class name.
6:38:256 hours, 38 minutes, 25 secondsExcellent. And that is going to be margin top-8 of course. And now let's make sure that we have that in here.
6:38:346 hours, 38 minutes, 34 secondsMobile platform slider. Yes, we do.
6:38:366 hours, 38 minutes, 36 secondsLet's go here. And yes, excellent. We have these dots. We have this uh navigation. So if I click on that, it does work. And the dot changes.
6:38:496 hours, 38 minutes, 49 secondsVery very good stuff. So with that guys, we have just completed this section as well for both mobile and the desktop.
6:38:586 hours, 38 minutes, 58 secondsAnd of course we are ready to move on to the next one. All right. So now when we have this platform section completely
6:39:056 hours, 39 minutes, 5 secondsready I think we should move on to the next one and that is testimonials
6:39:136 hours, 39 minutes, 13 secondssection which is going to come here. So I'm going to go to my code editor and I'm going to close this file. This this
6:39:226 hours, 39 minutes, 22 secondsand this. So we're only left with the app/page.tsxile.
6:39:276 hours, 39 minutes, 27 secondstsx file. Now here I'm going to collapse everything and the very first thing that we're going to need for the testimonials
Chapter 17: Testimonials section
6:39:356 hours, 39 minutes, 35 secondssection is the so for that I'm going to go under lib and I'm going to create a
6:39:426 hours, 39 minutes, 42 secondsnew file. I'm going to name it use dash layout scale.ts.
6:39:506 hours, 39 minutes, 50 secondsNow here we have it's a client component. Then we're going to bring use layout effect
6:39:596 hours, 39 minutes, 59 secondsalso use ref and also use state. There you go. Then we are also bringing use
6:40:086 hours, 40 minutes, 8 secondsmounted our own hook that we created and export const
6:40:166 hours, 40 minutes, 16 secondslayout underscore width bars is equal to this where we
6:40:236 hours, 40 minutes, 23 secondshave page content and that's going to be dash dash page dash content dashbacks
6:40:336 hours, 40 minutes, 33 secondsand then we have page header is going to be d-page dash header dashbacks.
6:40:416 hours, 40 minutes, 41 secondsAnd then we're going to make sure that we're using that as const.
6:40:466 hours, 40 minutes, 46 secondsAnd here we have type layout width war is equal to this where we have type of
6:40:556 hours, 40 minutes, 55 secondstype of layout width bars and here I'm going to say
6:41:036 hours, 41 minutes, 3 secondskey off and then type off and layout width bar.
6:41:106 hours, 41 minutes, 10 secondsAll right. There is one thing that we did wrong that is this needs to be a parentheses not the curly braces. There you go.
6:41:226 hours, 41 minutes, 22 secondsAnd yes that's done. Actually there should be only one.
6:41:286 hours, 41 minutes, 28 secondsYes. There you go. Now here const layout_width
6:41:376 hours, 41 minutes, 37 secondsfallbacks and this is going to be a record where we have
6:41:446 hours, 41 minutes, 44 secondslayout width war and second value as number. I'm going to make sure that it's
6:41:506 hours, 41 minutes, 50 secondsequal to dash page dash page content max. And that's going to be 1390.
6:42:026 hours, 42 minutes, 2 secondsAnd then we have d-page header max. That's going to be 1920.
6:42:116 hours, 42 minutes, 11 secondsAwesome. Here we have function. I'm going to say resolve layout width. It's
6:42:206 hours, 42 minutes, 20 secondsgoing to take a source which is going to be number or layout width var.
6:42:296 hours, 42 minutes, 29 secondsAnd of course this is going to return a number and I'm going to open that
6:42:366 hours, 42 minutes, 36 secondsfunction. And here we have if type of
6:42:436 hours, 42 minutes, 43 secondssource is equal to number then we're going to return score
6:42:546 hours, 42 minutes, 54 secondssorry source. There you go. And we have if type of window here is equal to
6:43:026 hours, 43 minutes, 2 secondsundefined then we return layout width fallbacks and we add the source there.
6:43:146 hours, 43 minutes, 14 secondsAwesome.
6:43:156 hours, 43 minutes, 15 secondsAnd now after this if statement I'm going to say const raw is equal to get computed style.
6:43:246 hours, 43 minutes, 24 secondsAnd here we have document dot document element. There you go. And on
6:43:326 hours, 43 minutes, 32 secondsthat I'm going to use dot get property value where we are going to add source.
6:43:406 hours, 43 minutes, 40 secondsAnd then on that I'm going to say trim.
6:43:456 hours, 43 minutes, 45 secondsAnd that's pretty much it. Let me format that. And here we have const parsed is
6:43:516 hours, 43 minutes, 51 secondsequal to parse float. This is going to be a raw.
6:43:576 hours, 43 minutes, 57 secondsAnd here I'm going to say return number dot is not a number
6:44:056 hours, 44 minutes, 5 secondsparsed. And if that is true then we have layout width fallbacks.
6:44:116 hours, 44 minutes, 11 secondsAnd of course we're adding the source here. Otherwise, just the parsed value that we have. That's it for this
6:44:206 hours, 44 minutes, 20 secondsfunction. Let me get down here. Pull it up. And here we have export function use
6:44:296 hours, 44 minutes, 29 secondslayout scale. It's going to take a design width which is going to be a number or that's going to be a layout
6:44:376 hours, 44 minutes, 37 secondswidth bar. And let's open that function body. Here we have const mounted is equal to use mounted.
6:44:486 hours, 44 minutes, 48 secondsThen we have const shell reference is equal to use ref. I'm going to add html
6:44:566 hours, 44 minutes, 56 secondsdiv element which is going to get initiated by null. Then we have const
6:45:056 hours, 45 minutes, 5 secondsshell hold on con const shell width and set shell width is equal
6:45:156 hours, 45 minutes, 15 secondsto use state get started by zero. Then we have const
6:45:226 hours, 45 minutes, 22 secondsresolved design width. Then we have set result
6:45:326 hours, 45 minutes, 32 secondsdesign width is equal to use state for this
6:45:406 hours, 45 minutes, 40 secondstime I'm going to use a function that's going to return a resolve
6:45:466 hours, 45 minutes, 46 secondslayout width and design width is going to be used as an argument to that. There
6:45:536 hours, 45 minutes, 53 secondsyou go. Awesome. I'm going to come down here and here we have first of all use layout effect.
6:46:026 hours, 46 minutes, 2 secondsThis is going to be a call back function and we have a set timeout in there which
6:46:096 hours, 46 minutes, 9 secondshas another call back function and this is going to be a set resolve
6:46:166 hours, 46 minutes, 16 secondsdesign width and this is going to take a resolve layout width which is going to
6:46:226 hours, 46 minutes, 22 secondstake a design width. There you go. And of course, I'm going to give it 0 milliseconds. And to the use effect, I'm
6:46:306 hours, 46 minutes, 30 secondsgoing to provide design width as the dependency for this one. So here we have use layout effect once again.
6:46:426 hours, 46 minutes, 42 secondsI'm going to say open that function. And here we have const shell is equal to
6:46:486 hours, 46 minutes, 48 secondsshell reference dot current. Then we have if shell is not there then we return.
6:46:576 hours, 46 minutes, 57 secondsAnd then we have const update is equal to this function where we have set shell
6:47:056 hours, 47 minutes, 5 secondswidth. It's going to take shell dot client width.
6:47:116 hours, 47 minutes, 11 secondsAnd then we have update. We're calling that function. const observer is equal
6:47:186 hours, 47 minutes, 18 secondsto new resize observer and I'm going to add that update function there and we
6:47:266 hours, 47 minutes, 26 secondshave observer dotobserve and I'm going to add shell in there and
6:47:336 hours, 47 minutes, 33 secondsthen we have finally on dismount return this call back function where we have observer
6:47:426 hours, 47 minutes, 42 secondsdot disconnect there you go And of course we need to provide the second value to that use layout effect as well.
6:47:526 hours, 47 minutes, 52 secondsAfter that here I'm going to say const scale is equal to mounted
6:48:016 hours, 48 minutes, 1 secondand shell width. shell width. When that is more than zero, then we're going to
6:48:086 hours, 48 minutes, 8 secondssay shell width divided by resolve design path.
6:48:176 hours, 48 minutes, 17 secondsOtherwise, it's just going to be one. So yeah, there you go. Then we finally return from here this value where we have shell reference as well as scale.
6:48:306 hours, 48 minutes, 30 secondsAwesome. Yeah. So with that, we have this hook ready to be used for our testimonial components.
6:48:386 hours, 48 minutes, 38 secondsI'm going to go ahead and go to the components. Here we have landing. Create a new folder. Here testimonials.
6:48:496 hours, 48 minutes, 49 secondsAnd in there I'm going to say a new file. First of all, this is going to be a very very little small file containing just an SVG.
6:48:586 hours, 48 minutes, 58 secondsSo bubble-nav.tsx tsx. And there you go. That's the SVG that we need. And I'm going to cut that
6:49:066 hours, 49 minutes, 6 secondsfor now. So we have export function testimmonial
6:49:146 hours, 49 minutes, 14 secondsbubble nav. That's the function name. Here we have return. And under return, we need
6:49:226 hours, 49 minutes, 22 secondsto add that SVG. There you go. And as simple as that. This is done. And of course, the link is available in the description to the GitHub repo and you
6:49:306 hours, 49 minutes, 30 secondscan get the code from there. So, I'm going to close this one. All right, I'm going to move on and create the next
6:49:386 hours, 49 minutes, 38 secondsfile, which is section.tsx.
6:49:436 hours, 49 minutes, 43 secondsAnd of course, it's going to be just an uh main component which is going to just
6:49:516 hours, 49 minutes, 51 secondsfor now import the other components and display them wisely. So, I'm going to say export
6:49:596 hours, 49 minutes, 59 secondsfunction testimonial section. And there you go. Here we have return. And inside return, we have this.
6:50:116 hours, 50 minutes, 11 secondsSo, I'm going to say P testimmonials.
6:50:176 hours, 50 minutes, 17 secondsThere you go. That's pretty much it. I'm going to go here and I'm going to add testimonials
6:50:256 hours, 50 minutes, 25 secondssection. There you go. And now if I go to my browser and there you go. We have this testimonial as a little text. I'm
6:50:336 hours, 50 minutes, 33 secondsgoing to cut back. Well, this file is no longer I mean needed to be open. We can close that.
6:50:426 hours, 50 minutes, 42 secondsAnd in this section tsxv need to work on another file now which is going to be here. I'm going to create a new file. So
6:50:516 hours, 50 minutes, 51 secondsit's going to be testimmonial dash desktop dash carousel.tsx.
6:51:016 hours, 51 minutes, 1 secondAnd here we need to make sure that it's a client component.
6:51:076 hours, 51 minutes, 7 secondsThen we also need use call back. We also need use effect. Also use memo.
6:51:166 hours, 51 minutes, 16 secondsUse ref. And finally use state. I'm going to add testimonial bubble nav.
6:51:246 hours, 51 minutes, 24 secondsAlso I'm going to need chevron icon and container.
6:51:316 hours, 51 minutes, 31 secondsAlso testimonials from the landing data. And we also need
6:51:386 hours, 51 minutes, 38 secondslayout width bars as well as use layout scale the hook that we created. Now here
6:51:476 hours, 51 minutes, 47 secondsI'm going to say function nav arrow and for that I'm going to give
6:51:536 hours, 51 minutes, 53 secondsit a value here which is going to be direction and it's going to be a type of
6:52:016 hours, 52 minutes, 1 secondthis direction is either going to be left or right no other choice and we have a
6:52:106 hours, 52 minutes, 10 secondsreturn in that I'm going to say chevron icon there There you go. And this is going to be direction which is
6:52:186 hours, 52 minutes, 18 secondsgoing to be uh here direction. Then we need a size
6:52:266 hours, 52 minutes, 26 secondswhich is going to be 24. Also need class name shrink zero
6:52:336 hours, 52 minutes, 33 secondsdash 0. There you go. And we need text replet orange as well. Let me format that. So that is done. Now here I'm
6:52:426 hours, 52 minutes, 42 secondsgoing to say export function testimmonial
6:52:496 hours, 52 minutes, 49 secondsdesktop carousel open that function and here we have const count is equal to testimonials dot
6:52:586 hours, 52 minutes, 58 secondslength then we have const I'm going to say shell
6:53:086 hours, 53 minutes, 8 secondsreference as well as scale scale are going to be extracted from use layout
6:53:156 hours, 53 minutes, 15 secondsscale and we're going to provide layout width vs dot page content to that then
6:53:246 hours, 53 minutes, 24 secondswe have here const I'm going to say slides is equal to use memo where we have this function I'm going to open
6:53:326 hours, 53 minutes, 32 secondsthat and this is going to be a testimonials
6:53:386 hours, 53 minutes, 38 secondsand to that I'm going to add count minus one and I'm going to put a comma here. We
6:53:466 hours, 53 minutes, 46 secondshave dot dot dot testimonials comma testimonials and the first item
6:53:536 hours, 53 minutes, 53 secondsfrom that. There you go. And of course for the use memo we need to add a second value to that as well which is going to
6:54:016 hours, 54 minutes, 1 secondbe count. Awesome. Now after the use memo here I'm going to say const
6:54:116 hours, 54 minutes, 11 secondsposition and set position is equal to use state
6:54:186 hours, 54 minutes, 18 secondsone. Then we have con enable transition and set enable
6:54:286 hours, 54 minutes, 28 secondstransition equal to use state set to true. Then we
6:54:346 hours, 54 minutes, 34 secondshave const position reference is equal to use ref
6:54:416 hours, 54 minutes, 41 secondsand here we have position and then we have use effect here.
6:54:516 hours, 54 minutes, 51 secondsOpen that. And this is going to be set timeout.
6:54:556 hours, 54 minutes, 55 secondsAnother callback function in there. And this is going to be position reference dot current is equal to position here.
6:55:046 hours, 55 minutes, 4 secondsAnd of course we can add a zero there. And here we can add the position also.
6:55:136 hours, 55 minutes, 13 secondsNow under that just like that I'm going to go and create const go next is equal to use call back
6:55:226 hours, 55 minutes, 22 secondsand call back function in there where we have a set enable transition set to true
6:55:316 hours, 55 minutes, 31 secondsthen we have set position here it's going to take a P and a P + one there
6:55:396 hours, 55 minutes, 39 secondsyou go and second value here goes an empty array Okay, simple as that.
6:55:456 hours, 55 minutes, 45 secondsI'm going to pull that up. And similarly, we're going to have another one. I'm going to copy paste that here.
6:55:506 hours, 55 minutes, 50 secondsAnd this becomes go previous and p minus one. There you go. Then here we have
6:55:596 hours, 55 minutes, 59 secondsconst handle transition and is equal to use call back where we have this function.
6:56:106 hours, 56 minutes, 10 secondsAnd in this one, of course, this is going to be event, which is going to be react dot transition event.
6:56:196 hours, 56 minutes, 19 secondsAnd this is going to be an HTML div element. There you go. And here we have
6:56:266 hours, 56 minutes, 26 secondsif event dotproperty name is not equal to
6:56:346 hours, 56 minutes, 34 secondstransform, then we simply return.
6:56:396 hours, 56 minutes, 39 secondsAwesome. And now here I'm going to say const P is equal to position reference dot current. There you go. And here we
6:56:486 hours, 56 minutes, 48 secondshave if P is equal to count + 1. And here I'm going to say set enable
6:56:566 hours, 56 minutes, 56 secondstransition. That's going to be set to false. And we have request animation frame. And another callback function in
6:57:056 hours, 57 minutes, 5 secondsthere. This is going to be set position and this is going to be one.
6:57:126 hours, 57 minutes, 12 secondsThen we have request animation frame another call back. This is going to be set enable transition
6:57:196 hours, 57 minutes, 19 secondsto true. All right. Awesome. Now here under that if statement here I'm going
6:57:266 hours, 57 minutes, 26 secondsto say else if P is equal to zero then in that case set enable transition
6:57:346 hours, 57 minutes, 34 secondsbecomes false and then we have request animation frame another call back function in there open that we have set
6:57:426 hours, 57 minutes, 42 secondsposition to count and then request animation frame once again call back function on that we set the enable transition back to true.
6:57:546 hours, 57 minutes, 54 secondsAwesome.
6:57:566 hours, 57 minutes, 56 secondsAwesome. Very very good. Now this call back of course here it needs a second value that is going to be count.
6:58:076 hours, 58 minutes, 7 secondsThere you go. Excellent job guys.
6:58:106 hours, 58 minutes, 10 secondsWonderful. Now I'm going to get under this function here. I mean this call back here. And we finally have a return in there. And we have a section.
6:58:246 hours, 58 minutes, 24 secondsI'm going to name it hidden with dash full overflow hidden. Then we
6:58:326 hours, 58 minutes, 32 secondshave pd- 84 px. Then we have desktop. It's going to be block. Open that section. And here
6:58:416 hours, 58 minutes, 41 secondswe have container. And I'm going to have a p tag and desktop carousel.
6:58:506 hours, 58 minutes, 50 secondsThat's it for now. I'm going to save it.
6:58:526 hours, 58 minutes, 52 secondsGet back here. And here I'm going to say testimonial desktop carousel. There you go. Excellent.
6:59:046 hours, 59 minutes, 4 secondsNow, if I get to my browser, this desktop carousel is coming from here now. And of course, we have all of the
6:59:126 hours, 59 minutes, 12 secondspieces to put together. And we definitely know the only thing that we need to work on is the UI for this. I'm
6:59:206 hours, 59 minutes, 20 secondsgoing to get rid of this P tag. And here I'm going to need a div. I'm going to give it a class name. And also most
6:59:286 hours, 59 minutes, 28 secondsimportantly a reference which is going to be shell reference. And then this class name is going to be relative. Then
6:59:386 hours, 59 minutes, 38 secondswe have width dash full and aspect auto that changes to
6:59:456 hours, 59 minutes, 45 seconds1390 / 518. I'm going to open that div.
6:59:526 hours, 59 minutes, 52 secondsAnd here we have another div. I'm going to give it some class names. We have absolute left zero top zero. Then we
7:00:027 hours, 2 secondshave origin top left. I'm going to open that div. And also here I'm going to
7:00:087 hours, 8 secondsattach a style to this one that is going to be here we have width first of all that
7:00:177 hours, 17 secondsbecomes v dash oh sorry v d-page dashcontent
7:00:247 hours, 24 secondsdashmax there you go now here there's going to be another property here basically height
7:00:327 hours, 32 secondsjust like that but what goes under that height it it it's not available to us right now. So I would like to work on
7:00:417 hours, 41 secondsthat first in order to proceed with this further. And for that we're going to need another file in here and that is
7:00:497 hours, 49 secondsgoing to be testimonial dashcard
7:00:567 hours, 56 secondscards actually testimonials.tsx and just simple stuff here for now. So
7:01:027 hours, 1 minute, 2 secondsI'm going to say export const test testimmonial
7:01:117 hours, 1 minute, 11 secondslayout_h is equal to 518. There you go. Then we have export constimonial.
7:01:217 hours, 1 minute, 21 secondsLet me grab this. There you go. Copy that. testimonial slide width is equal to 1137.
7:01:347 hours, 1 minute, 34 secondsAll right. Now here I'm going to say export con I'm going to paste that value here and this is going to be testimonial
7:01:437 hours, 1 minute, 43 secondsslide_pad_r is equal to 273.
7:01:537 hours, 1 minute, 53 secondsThen we have another one export const I'm going to paste that value here underscore
7:02:007 hours, 2 minutesnav width is equal to 518
7:02:067 hours, 2 minutes, 6 secondsthen we have const there you go const and this is going to be actually this is going to be used for the rest of the
7:02:147 hours, 2 minutes, 14 secondsfile and I guess we can skip that for now that is going to be there later as we are only exporting these values so that's pretty much it for this one here.
7:02:257 hours, 2 minutes, 25 secondsNow I'm going to get here and I'm going to say height and that height is going to be
7:02:357 hours, 2 minutes, 35 secondstestimonial layout height. There you go. That also imported. And then we have
7:02:447 hours, 2 minutes, 44 secondstransform that is going to be this where we have scale. And in there I'm going to add scale.
7:02:527 hours, 2 minutes, 52 secondsLet me format everything. And awesome.
7:02:557 hours, 2 minutes, 55 secondsThen I'm going to get inside that div here. And we have another div. I'm going to give it a class name height dash
7:03:027 hours, 3 minutes, 2 secondsfull. Open that div. We have another div inside. I'm to that I'm going to provide
7:03:087 hours, 3 minutes, 8 secondsa class name and that's going to be flex height- full. Then we have will change
7:03:187 hours, 3 minutes, 18 secondstransform. will change transform. There you go. And then here I'm going to say
7:03:267 hours, 3 minutes, 26 secondsenable transition. If that is true, I'm going to get down here. Then it's
7:03:337 hours, 3 minutes, 33 secondsgoing to say transition transform and then also duration
7:03:417 hours, 3 minutes, 41 seconds500 and also is out and otherwise it's just going to be empty. Let me format
7:03:487 hours, 3 minutes, 48 secondsthat. There you go. And also to this div I'm going to attach a style.
7:03:557 hours, 3 minutes, 55 secondsAnd for that I'm going to say transform.
7:03:597 hours, 3 minutes, 59 secondsThere you go. And we have this where we have translate
7:04:057 hours, 4 minutes, 5 seconds3D. And that's going to be minus. And here we have position divided by testimonial slide width.
7:04:177 hours, 4 minutes, 17 secondsThere you go. And at the end I'm going to attach px then zero then zero here.
7:04:237 hours, 4 minutes, 23 secondsOnce again let me format that. And then I'm going to go add another one here which is going to be on transition end.
7:04:327 hours, 4 minutes, 32 secondsAnd that's going to be handle transition end. I'm going to open that div. Here we have
7:04:387 hours, 4 minutes, 38 secondsslides dot map and then we have for each one we have testimonial and index. I'm
7:04:487 hours, 4 minutes, 48 secondsgoing to open that. Here we have this direct return.
7:04:527 hours, 4 minutes, 52 secondsOpen a div. Give it a key here. That's going to be testimonial. Hold on.
7:05:027 hours, 5 minutes, 2 secondstestimonial do ID and also here actually hold on so I'm going to
7:05:107 hours, 5 minutes, 10 secondsget this here then inside here add that then dash here and then I'm going to add
7:05:197 hours, 5 minutes, 19 secondsindex here awesome then here I'm going to add class name
7:05:247 hours, 5 minutes, 24 secondsthat's going to be shrink zero dash zero there you go and We also have a style
7:05:327 hours, 5 minutes, 32 secondsfor this one. I'm going to open that here where we have width.
7:05:397 hours, 5 minutes, 39 secondsThat's going to be testimonial slide width.
7:05:447 hours, 5 minutes, 44 secondsAnd then we have padding, right? That's going to be testimonial slide padding.
7:05:527 hours, 5 minutes, 52 secondsTestimonial slide padding. Right. There you go. Awesome.
7:05:597 hours, 5 minutes, 59 secondsLet me format everything. And now here I'm going to add area hidden. There
7:06:077 hours, 6 minutes, 7 secondsyou go. This is going to be index when that is not equal to position. Awesome.
7:06:177 hours, 6 minutes, 17 secondsAnd then finally inside that div, we're going to have a another basically component that's going to be coming from the card file.
7:06:287 hours, 6 minutes, 28 secondsAnd that's going to be here. Let me put the comment slide
7:06:367 hours, 6 minutes, 36 secondsgrid. There you go. And for now, I'm just going to have a P tag and I'm going
7:06:427 hours, 6 minutes, 42 secondsto say slide grid. Just like that. And now if we go here, we have this slide
7:06:507 hours, 6 minutes, 50 secondsgrid and this slide grid. and basically nothing else as we still need to create a lot of other stuff for it to display.
7:06:597 hours, 6 minutes, 59 secondsAll right. So here now after this div I'm going to get down here and
7:07:077 hours, 7 minutes, 7 secondsI'm going to create another div. I'm going to give it some class names. We
7:07:137 hours, 7 minutes, 13 secondshave absolute left zero top zero. Then we have Z10.
7:07:217 hours, 7 minutes, 21 secondsYes, there you go. Then we have flex and height is going to be 253
7:07:287 hours, 7 minutes, 28 secondspx. Then width is going to be 253 px as well. And then we have flex call.
7:07:397 hours, 7 minutes, 39 secondsFlex dash call. And then we have just defy center.
7:07:447 hours, 7 minutes, 44 secondsWe have also rounded. That's going to be 40 px.
7:07:537 hours, 7 minutes, 53 secondsBorder is going to be 1.5.
7:07:577 hours, 7 minutes, 57 secondsHold on. Border here is going to be 1.5 px. Then we have border here. That
7:08:047 hours, 8 minutes, 4 secondschanges to # CBC7 C3.
7:08:127 hours, 8 minutes, 12 secondsAnd then we have BG dash. that changes to # F AF 5F0 and we have padding six.
7:08:247 hours, 8 minutes, 24 secondsThere you go. I'm going to also add area hidden. There you go. That is going to be false.
7:08:337 hours, 8 minutes, 33 secondsAnd I'm going to open that div. Here we have a P tag. I'm going to say trusted by builders. And after the P
7:08:427 hours, 8 minutes, 42 secondstag, another P tag. I'm going to say endorsed by innovators.
7:08:487 hours, 8 minutes, 48 secondsLet me format that. And if I go here, so this is what we have. This is the little card that we're trying to create. Let's
7:08:567 hours, 8 minutes, 56 secondsdesign that properly. So to that P tag, I'm going to add some classes. We have font display. We have text dash 32 pixels. Then we have font normal.
7:09:107 hours, 9 minutes, 10 secondsThen we have leading. That's going to be 32 pixels as well.
7:09:177 hours, 9 minutes, 17 secondsThere you go. Then we have tracking that changes to minus0.04 m.
7:09:287 hours, 9 minutes, 28 secondsAnd of course after that we have text dash text dash agent heading. There you go. Awesome.
7:09:367 hours, 9 minutes, 36 secondsSo that is that. Let me get there and yes. Awesome. Let's get back here and design the second P as well. Last name
7:09:457 hours, 9 minutes, 45 secondsmargin top- two font display text small.
7:09:517 hours, 9 minutes, 51 secondsThere you go. Just like that. And then after that we have leading. That's
7:09:587 hours, 9 minutes, 58 secondsgoing to be 22.4 4 px text dash # 52
7:10:087 hours, 10 minutes, 8 seconds54 5a. Let me format. Let's take a look.
7:10:157 hours, 10 minutes, 15 secondsAnd awesome. Of course, these are going to be styled differently. These are just some simple text for now. So here
7:10:247 hours, 10 minutes, 24 secondsI'm going to get here and under this div now I'm going to create another one give it some class names. We have absolute
7:10:347 hours, 10 minutes, 34 secondsright zero top zero Z10 and height dash full. Open that div. And here we have testimonial bubble nav.
7:10:467 hours, 10 minutes, 46 secondsThere you go. And this one also has a style where we have width. That's going to be testimonial lab width. There you go.
7:10:587 hours, 10 minutes, 58 secondsAwesome. Let me check. So we have layout n width slide padding are and slide width. Awesome.
7:11:077 hours, 11 minutes, 7 secondsExcellent job. And now if I go here and yes, excellent. Wonderful. So we have
7:11:137 hours, 11 minutes, 13 secondsthis one, next one and previous one and it's when we click one the slide from
7:11:207 hours, 11 minutes, 20 secondsbeneath that behind this object is going to be moved from right to left. It's going to look phenomenal.
7:11:297 hours, 11 minutes, 29 secondsAnd now of course here we need a couple of buttons. So first one here we have type
7:11:357 hours, 11 minutes, 35 secondsbutton. Then we have on click which is going to be go next. Then we have class
7:11:437 hours, 11 minutes, 43 secondsname absolute right zero top zero Z10
7:11:497 hours, 11 minutes, 49 secondsflex height one slash two width one
7:11:557 hours, 11 minutes, 55 secondsslash two justify justify between
7:12:047 hours, 12 minutes, 4 secondscome on there you go and we also need items and
7:12:127 hours, 12 minutes, 12 secondsand also flex row. And here I'm going to also add
7:12:177 hours, 12 minutes, 17 secondspadding 8. Then we have text dash hash 1 a1
7:12:267 hours, 12 minutes, 26 seconds91 9 then we have transition opacity and we have on hover it's going to be
7:12:337 hours, 12 minutes, 33 secondsopacity 90. I'm going to also add area label which is going to be next testimonial.
7:12:457 hours, 12 minutes, 45 secondsYeah.
7:12:467 hours, 12 minutes, 46 secondsAnd I'm going to open that button. Here we have a span. I'm going to give it this one some class name. So text dash
7:12:547 hours, 12 minutes, 54 secondsleft font dash display. There's also going to be text dash 17 pixels. We have
7:13:027 hours, 13 minutes, 2 secondsfont normal. Then leading here is going to be 17.85 pixels.
7:13:117 hours, 13 minutes, 11 secondsAnd then we have tracking which changes to minus0.0.68 px.
7:13:227 hours, 13 minutes, 22 secondsLet me format that. And then inside that span here I'm going to say next.
7:13:297 hours, 13 minutes, 29 secondsThen I'm going to get down. Add the break. Then testimmonial.
7:13:367 hours, 13 minutes, 36 secondsThere you go. A span ends here. And then after that here, I'm going to say there's going to be basically an icon.
7:13:467 hours, 13 minutes, 46 secondsAnd that is going to be nav arrow. There you go. Nav arrow. And I'm going to add
7:13:547 hours, 13 minutes, 54 secondsa direction to that is going to be right. And this nav arrow is here on the top by the way. So
7:14:027 hours, 14 minutes, 2 secondshere, let me have a look. And this is what we have. Next testimonial looks phenomenal. I really like it. Now
7:14:107 hours, 14 minutes, 10 secondslet's me let's get back. So after this button here, now we're going to create another button.
7:14:197 hours, 14 minutes, 19 secondsAnd I'm going to say button here, we have type button.
7:14:277 hours, 14 minutes, 27 secondsThen we have on click which is going to be go previous. Then we have class name.
7:14:347 hours, 14 minutes, 34 secondsWe have absolute bottom zero. We have left zero. Then we have Z 10.
7:14:447 hours, 14 minutes, 44 secondsAnd then of course we have the rest of the classes coming from here. So I'm just going to grab these classes from here and paste them over here.
7:14:547 hours, 14 minutes, 54 secondsThere you go. Now, we also need area label. That's going to say
7:15:017 hours, 15 minutes, 1 secondprevious testimonial. And here I'm going to open that button.
7:15:097 hours, 15 minutes, 9 secondsAnd where we have nav arrow first and I'm going to add direction left to this one.
7:15:197 hours, 15 minutes, 19 secondsAnd after that, I have a span. Actually, I'm going to copy this span.
7:15:267 hours, 15 minutes, 26 secondsSo, I'm going to paste it over here.
7:15:297 hours, 15 minutes, 29 secondsExcept there is going to be only one change that instead of text left, it's going to be text right. Then we have
7:15:377 hours, 15 minutes, 37 secondshere I'm going to say previous testimonial. Let me format and save everything. Let me get back here. And
7:15:457 hours, 15 minutes, 45 secondsawesome. We have next testimonial. You see it works. We have previous testimonial. It works. So, we have this
7:15:527 hours, 15 minutes, 52 secondslittle card over here and we have these buttons over here. And the only thing that we need to work on now is the
7:15:597 hours, 15 minutes, 59 secondsslides. So, let's get to them. I'm going to go to my code editor and into this testimonial cards file. I'm going to
7:16:077 hours, 16 minutes, 7 secondsbring these down. And here, first of all, we have image from next image.
7:16:137 hours, 16 minutes, 13 secondsThen, we're going to import type. That's going to be testimonial
7:16:197 hours, 16 minutes, 19 secondsfrom our types. There you go. And then I'm going to say function court mark is
7:16:277 hours, 16 minutes, 27 secondsthis function. And where we have return and I'm going to add this span. I'm going to add some classes. Font display.
7:16:397 hours, 16 minutes, 39 secondsText is going to be 48 pixels. Then we have font dash bold and leading we have 48 pixels as well.
7:16:507 hours, 16 minutes, 50 secondstext dash feature page. There you go. Feature page.
7:17:007 hours, 17 minutesAnd here I'm also going to add area hidden. Awesome. Under that
7:17:067 hours, 17 minutes, 6 secondsuh span here I'm going to say emp% LQO.
7:17:137 hours, 17 minutes, 13 secondsAnd there you go. That's pretty much it.
7:17:167 hours, 17 minutes, 16 secondsThis is just a code. Now here after that I'm going to add function
7:17:237 hours, 17 minutes, 23 secondsauthor photo and this is going to be testimmonial
7:17:327 hours, 17 minutes, 32 secondsopen that and this is going to be testimonial and type of testimonial and open the
7:17:407 hours, 17 minutes, 40 secondsfunction body we have return and I'm going to say a div give it a
7:17:467 hours, 17 minutes, 46 secondsclass name relative. Then we have height dash 253 px and width of
7:17:567 hours, 17 minutes, 56 seconds253px as well. And then we have our flow hidden and rounded which I'm going to
7:18:037 hours, 18 minutes, 3 secondschange to 56 pixels. There you go. Open that div. Here we have image and that
7:18:117 hours, 18 minutes, 11 secondsimage is going to be source testimonial dot avatar URL. Then we have alt and
7:18:207 hours, 18 minutes, 20 secondsthat's going to be testimonial dot author. There you go. We also have
7:18:297 hours, 18 minutes, 29 secondsfill. Then we have class name object dash cover. And then we also have unoptimized here. Let me format that.
7:18:407 hours, 18 minutes, 40 secondsPull it up. And then here I'm going to say function court card.
7:18:477 hours, 18 minutes, 47 secondsAnd this is going to be testimonial once again. Open that. We have testimonial here.
7:18:577 hours, 18 minutes, 57 secondsAnd this is going to be a type of testimonial. And open the function body. We have return here.
7:19:067 hours, 19 minutes, 6 secondsAnd I'm going to add article to which I'm going to add some class names like flex height dash 518 px. Then
7:19:167 hours, 19 minutes, 16 secondswidth dash 599 px. Then we have flex call justify between then we have
7:19:257 hours, 19 minutes, 25 secondsrounded 60px and then we have bg-surface white.
7:19:347 hours, 19 minutes, 34 secondsAnd then we have padding 12. I'm going to open that. We have a div class last class name flex flex call and
7:19:447 hours, 19 minutes, 44 secondsflex call and gap of four. Open that div. Here we have so first of all court
7:19:517 hours, 19 minutes, 51 secondsmark that we created. Then after that we have an H3 and I'm going to say
7:19:597 hours, 19 minutes, 59 secondsclass name font-ash display text dash 26
7:20:057 hours, 20 minutes, 5 secondspx font dashn normal leading is going to
7:20:107 hours, 20 minutes, 10 secondsbe 31.2 to px. Then we have tracking and that changes to minus0.78.
7:20:237 hours, 20 minutes, 23 secondsAnd then after that we have text dash text dash secondary. That is going to display testimonial.
7:20:327 hours, 20 minutes, 32 secondsCourt there you go.
7:20:357 hours, 20 minutes, 35 secondsAfter the h3 we have this div. I'm going to get under that div. We have a footer and I'm going to give it a class name
7:20:437 hours, 20 minutes, 43 secondsthat's going to be flex flex call. Open that footer. We have a p tag which is going to display testimonial dotauthor. Of course need some classes.
7:20:567 hours, 20 minutes, 56 secondsFont dash display text for this one is going to be 20px.
7:21:027 hours, 21 minutes, 2 secondsWe have font medium. Then we have leading seven. And then we have text-
7:21:097 hours, 21 minutes, 9 secondstext secondary. Let me format that. And then after that P, we need another P
7:21:167 hours, 21 minutes, 16 secondswhich is going to display testimonial dot roll. Add some classes. We have font dash display. Then we have text- small.
7:21:297 hours, 21 minutes, 29 secondsWe also have leading which is going to be 22.4 px. We have text
7:21:377 hours, 21 minutes, 37 secondsdash which is going to be hashtag 52545A. And there you go.
7:21:477 hours, 21 minutes, 47 secondsAfter that we need another p tag which is going to be testimonial company.
7:21:557 hours, 21 minutes, 55 secondsAnd here I'm going to say class name font dash display. We have text small.
7:22:017 hours, 22 minutes, 1 secondThen we have leading which is going to be 22.4 px.
7:22:077 hours, 22 minutes, 7 secondsAnd then we have text dash #54
7:22:137 hours, 22 minutes, 13 seconds54 a # 5254 5a. There you go.
7:22:237 hours, 22 minutes, 23 secondsJust like this one. Awesome.
7:22:277 hours, 22 minutes, 27 secondsSo that function is done as well. Then we have these things here. And then under that now,
7:22:357 hours, 22 minutes, 35 secondsnow here I'm going to add const testimonial
7:22:447 hours, 22 minutes, 44 secondsunderscore grade width which is going to be 8 64.
7:22:517 hours, 22 minutes, 51 secondsThen I have const here, const here, and const here.
7:22:597 hours, 22 minutes, 59 secondsfour times and then here I'm going to open my caps lock and start writing. We have this testimonial testimonial. Yeah,
7:23:097 hours, 23 minutes, 9 secondsspellings are good. Testimonial underscore gap which is going to be equal to 12.
7:23:157 hours, 23 minutes, 15 secondsThen we have testimonial_code_w which is going to be equal to 599. And
7:23:237 hours, 23 minutes, 23 secondsthen we have testimonial underscore photo is equal to 253.
7:23:317 hours, 23 minutes, 31 secondsAwesome. And now here I'm going to say export function slide grid where we have
7:23:417 hours, 23 minutes, 41 secondstestimonial and that's going to be a type of testimonial which of course is a type of testimonial
7:23:507 hours, 23 minutes, 50 secondstype. Yeah, there's so much testimonial and there we have this return
7:23:587 hours, 23 minutes, 58 secondsand I'm going to say that we have a div which has a class name grid then also
7:24:067 hours, 24 minutes, 6 secondsshrink zero and also to that we have a style attribute
7:24:137 hours, 24 minutes, 13 secondsand we have a lot of custom styling here. So we have width which is going to be testimonial grid W. There you go.
7:24:217 hours, 24 minutes, 21 secondsThen we also have height which is going to be testimonial layout height. We also
7:24:287 hours, 24 minutes, 28 secondshave grid template columns and that's going to be this value where we have
7:24:347 hours, 24 minutes, 34 secondstestimonial photo then px and then here we have testimonial court
7:24:447 hours, 24 minutes, 44 secondsw and then px. here. Then we have grid template rows. And here we have
7:24:547 hours, 24 minutes, 54 secondstestimonial photo px. And here we have testimonial photo. And again px.
7:25:037 hours, 25 minutes, 3 secondsAwesome. I'm going to put a comma. Get down here. We also have a gap. I'm going to say testimonial gap. All right. Everything is being
7:25:137 hours, 25 minutes, 13 secondsused. And now I'm going to open this div here.
7:25:177 hours, 25 minutes, 17 secondsAnd first of all, we have a div which is going to be self-closing and it's going to be area hidden. There you go. And now
7:25:267 hours, 25 minutes, 26 secondsif I can just get down here and where is that? There you go.
7:25:377 hours, 25 minutes, 37 secondsSlide grid. There you go. And of course it needs a testimonial.
7:25:487 hours, 25 minutes, 48 secondstestimonial here as well. Let me format and save everything. Let's go here. And we still we do not see anything. And
7:25:577 hours, 25 minutes, 57 secondsthat's basically the right way because we only have an empty almost empty div
7:26:057 hours, 26 minutes, 5 secondshere. And the magic starts now. I'm going to get down here and I'm going to say open a div class name call start two
7:26:157 hours, 26 minutes, 15 secondsrow span two and we have row start one row uh column start two row span two and
7:26:247 hours, 26 minutes, 24 secondsrow start one yeah good right I'm going to open that div and here we have court card here and this is going to take a
7:26:347 hours, 26 minutes, 34 secondstestimonial testimonial which is going going to be testimonial from this here.
7:26:417 hours, 26 minutes, 41 secondsI'm going to save that. Let's go here.
7:26:437 hours, 26 minutes, 43 secondsAnd awesome. The testimonial looks really, really good. If I click next, there you go. This changes. And of course, now we need to bring the photo
7:26:527 hours, 26 minutes, 52 secondsas well. So, I'm going to get under that div here. And here we have author photo
7:26:597 hours, 26 minutes, 59 secondscomponent that we created above in this same file. So, we have testimonial and testimonial here as well. Let me
7:27:087 hours, 27 minutes, 8 secondsformat and save that. Let's get back here. And there you go. Next. This gets here and the new one is here. Next.
7:27:177 hours, 27 minutes, 17 secondsNext. Next. Previous. And it keeps going in the loop. Exceptional. Wonderful.
7:27:257 hours, 27 minutes, 25 secondsGreat. Great job. Nice work. Right. So, the section for the desktop is done basically. But if we go for the inspect,
7:27:347 hours, 27 minutes, 34 secondsI'm going to make this to the right side. And here we have iPhone 14 Pro
7:27:417 hours, 27 minutes, 41 secondsMax. So that section basically has nothing in it.
7:27:477 hours, 27 minutes, 47 secondsWe have that section, but there is no nothing available for the testimonials.
7:27:527 hours, 27 minutes, 52 secondsAnd the reason is because that is only available for the desktop. If we go here in this section, we have testimonial
7:27:597 hours, 27 minutes, 59 secondsdesktop carousel. And right now we need to make another component for the mobile only. So I'm going to go and create in
7:28:087 hours, 28 minutes, 8 secondsthe in the testimonials. I'm going to create a new file. This is going to be testimonial dash mobile-c carousel.tsx.
7:28:197 hours, 28 minutes, 19 secondsIt's going to be a client component. And then we have infinite carousel that I need to bring.
7:28:297 hours, 28 minutes, 29 secondsI'm also going to need container here.
7:28:317 hours, 28 minutes, 31 secondsAnd after that we have testimonials for our landing data. All right. So here we have export function
7:28:397 hours, 28 minutes, 39 secondstestimmonial mobile carousel. There you go. Open that. And
7:28:487 hours, 28 minutes, 48 secondswe have a return here. And I'm going to say a section with the ID of testimonials.
7:28:587 hours, 28 minutes, 58 secondsThere you go. Let me format everything and save. And let's get back here. And
7:29:057 hours, 29 minutes, 5 secondshere we have testimonial mobile carousel. There you go. Let's save
7:29:127 hours, 29 minutes, 12 secondseverything. And if we go here, of course, there's nothing yet here because we only have this empty section. And I'm going to open that up.
7:29:227 hours, 29 minutes, 22 secondsLet's also provide class name to that. And that's going to be PT-
7:29:307 hours, 29 minutes, 30 seconds84. And then we have PB12 also on desktop. It's going to be hidden.
7:29:387 hours, 29 minutes, 38 secondsAnd here we have container.
7:29:427 hours, 29 minutes, 42 secondsAnd I'm going to say we have a P tag in there. And that's going to say endorsed by innovators.
7:29:517 hours, 29 minutes, 51 secondsLet me format everything. Save everything. Let's go here. And there you go.
7:29:577 hours, 29 minutes, 57 secondsLet's keep going. So to that container, uh, we have this P. And I'm going to add some classes. Text dash access font semibold.
7:30:097 hours, 30 minutes, 9 secondsWe have also uppercase. And then we have tracking widest dashest.
7:30:177 hours, 30 minutes, 17 secondsThere you go. And then we have text dash replet orange. Awesome.
7:30:257 hours, 30 minutes, 25 secondsLooks good. After that P tag here we have H2. I'm going to say trusted by
7:30:327 hours, 30 minutes, 32 secondsbuilders. And to that we have a margin top uh class name margin top-ash2. We have font display.
7:30:437 hours, 30 minutes, 43 secondsText is going to be 32px. Leading is going to be 32px as well.
7:30:527 hours, 30 minutes, 52 secondsThen we have font normal.
7:30:557 hours, 30 minutes, 55 secondsTracking is going to be minus0.04 em.
7:31:037 hours, 31 minutes, 3 secondsAnd then we have text dash agent heading. There you go. Save that. Let's go here. And yeah, looks good.
7:31:117 hours, 31 minutes, 11 secondsAll right. So now here I'm going to say after the H2 we have infinite uh hold on infinite carousel.
7:31:237 hours, 31 minutes, 23 secondsThere you go.
7:31:267 hours, 31 minutes, 26 secondsAnd in there we have items. So as items I'm going to add a testimonials.
7:31:327 hours, 31 minutes, 32 secondsAnd then we have render slide.
7:31:357 hours, 31 minutes, 35 secondsAnd for that I'm going to have this function where here I'm going to add
7:31:447 hours, 31 minutes, 44 secondscome on here I'm going to add a single testimmonial here.
7:31:517 hours, 31 minutes, 51 secondsThere you go. And then inside here we have a another component. So for now I'm just going to add P
7:32:017 hours, 32 minutes, 1 seconduh let's say testimmonial and also here I'm going to add get label
7:32:097 hours, 32 minutes, 9 secondsand that's going to be this function where we have index and I'm going to say go to testimonial
7:32:197 hours, 32 minutes, 19 secondsand we have index plus one here. Then here we also have viewport class name.
7:32:267 hours, 32 minutes, 26 secondsI'm going to add margin top dash. It's let me format everything and save everything. And now if I go here there
7:32:347 hours, 32 minutes, 34 secondsis something there is this slider. So which is working perfectly. But we need the part that actually shows.
7:32:427 hours, 32 minutes, 42 secondsSo for that of course we need this testimonial and instead of this P tag we're going to display some other
7:32:507 hours, 32 minutes, 50 secondscomponent that we do not have yet. So basically
7:32:577 hours, 32 minutes, 57 secondshere I'm going to say mobile testimonial
7:33:047 hours, 33 minutes, 4 secondscard. There you go. And we're going to add testimonial
7:33:127 hours, 33 minutes, 12 secondstestimonial there. And that how this is going to display the complete testimonial for the mobile devices. So
7:33:197 hours, 33 minutes, 19 secondslet's work on this one. So we're going to go to the testimonial cards. And at the very bottom here, I'm going to say
7:33:277 hours, 33 minutes, 27 secondsexport function mobile testimonial
7:33:337 hours, 33 minutes, 33 secondscard. And this is going to be testimonial.
7:33:427 hours, 33 minutes, 42 secondsThere you go. And this is going to be a type of testimonial.
7:33:487 hours, 33 minutes, 48 secondsType of testimonial. There you go. Let's open that function body. And yeah, same
7:33:557 hours, 33 minutes, 55 secondseverywhere. So here we have this return in which we have article. I'm going to
7:34:017 hours, 34 minutes, 1 secondprovide some classes width dash full shrink zero
7:34:087 hours, 34 minutes, 8 secondsrounded and change that to 60ps. Then we have BG
7:34:157 hours, 34 minutes, 15 secondssurface white and we have padding 8 also tablet up it's going to be padding -12.
7:34:247 hours, 34 minutes, 24 secondsLet me open that here. And first of all we have court mark and then we have H3 here I'm going to
7:34:327 hours, 34 minutes, 32 secondssay testimonial dot court and to that H3 I'm going to
7:34:407 hours, 34 minutes, 40 secondsadd margin class margin top dash 4 font
7:34:467 hours, 34 minutes, 46 secondsdisplay text excel font normal leading
7:34:517 hours, 34 minutes, 51 secondsis going to be 1.3 three. Then we have tracking. I'm going to change that to minus0.04.
7:35:027 hours, 35 minutes, 2 secondsAnd then we have text dash text dash secondary. Let me format that. And here
7:35:117 hours, 35 minutes, 11 secondsuh not here but here in the section uh sorry that that goes here. Yeah. So instead of testimonial here I'm going to
7:35:197 hours, 35 minutes, 19 secondsattach this. So there you go. And now let's
7:35:257 hours, 35 minutes, 25 secondsbring that to here. And of course we have some issues.
7:35:337 hours, 35 minutes, 33 secondsLet's actually reverse that by doing the undo.
7:35:387 hours, 35 minutes, 38 secondsAnd now here I'm going to add mobile testimonial card.
7:35:477 hours, 35 minutes, 47 secondsMobile testimonial card. There you go.
7:35:517 hours, 35 minutes, 51 secondsAnd this is going to add a testimonial which is going to be a testimonial. Let me format everything. There you go.
7:35:597 hours, 35 minutes, 59 secondsLet's take a look here. So, we do have this code here. And of course, now we need to display the images and other
7:36:067 hours, 36 minutes, 6 secondsstuff as well. I'm going to go to testimonial cards here. And then under the H3, we have a footer here. Add some
7:36:157 hours, 36 minutes, 15 secondsclass name. We have margin top dash8 flex items center. We have gap of four
7:36:257 hours, 36 minutes, 25 secondsborder top. Then we have border black slash. It's going to be 0.06.
7:36:367 hours, 36 minutes, 36 secondsThere you go. And then we have padding top six. I'm going to open that footer.
7:36:437 hours, 36 minutes, 43 secondsAnd here we have a div. I'm going to add some class names that is relative height dash
7:36:537 hours, 36 minutes, 53 seconds100 px then also we have width dash 100 px
7:36:597 hours, 36 minutes, 59 secondsshrink zero we have overflow hidden and then also we have rounded
7:37:067 hours, 37 minutes, 6 secondsfull open that div and here we have image and we have source Testimonial. Avatar testimonial.
7:37:187 hours, 37 minutes, 18 secondsAvatar URL. We also have alt that's going to be testimonial dot.
7:37:267 hours, 37 minutes, 26 secondsWe have fill. Then also class name object dash cover.
7:37:357 hours, 37 minutes, 35 secondsAnd then we also have unoptimized here.
7:37:387 hours, 37 minutes, 38 secondsLet me format and save that. Let's go here. And there you go. We have the image and nice looking border here as well. Let's add the rest of the
7:37:467 hours, 37 minutes, 46 secondsinformation. So after that div of this image I'm going to get here create another div open that have a p
7:37:557 hours, 37 minutes, 55 secondstag provide some class names font dash display then we have text lg font medium leading
7:38:047 hours, 38 minutes, 4 seconds7-7 then we have text dash text- secondary
7:38:117 hours, 38 minutes, 11 secondsand this is going to say testimonial after that P we have another P class
7:38:197 hours, 38 minutes, 19 secondsname font display text small leading 22.4
7:38:277 hours, 38 minutes, 27 secondspx we have text dash 54
7:38:347 hours, 38 minutes, 34 seconds5254 5A and that's going to say
7:38:407 hours, 38 minutes, 40 secondstestimonial dot roll. There you go. Let me format that. have another P class
7:38:487 hours, 38 minutes, 48 secondsname font display text small then we have leading that
7:38:567 hours, 38 minutes, 56 secondschanges to 22.4 for px text 2x that
7:39:017 hours, 39 minutes, 1 secondcolor is going to be hash 525458 and here we have testimonial.com
7:39:117 hours, 39 minutes, 11 secondscompany let me format and save let's get back here and there you go so we have everything ready for this testimonial
7:39:207 hours, 39 minutes, 20 secondsfor the mobile version as well nice and looking loop already activated it looks phenomenal. Everything's functional.
7:39:307 hours, 39 minutes, 30 secondsNavigation works too. And of course, we have no um grab functionality here on this one.
7:39:397 hours, 39 minutes, 39 secondsSo there you go. Let me close this one. Bring it down.
7:39:457 hours, 39 minutes, 45 secondsAnd with that, we have completed this section for both mobile and desktop. I'm going to go to my code editor now.
7:39:547 hours, 39 minutes, 54 secondsAnd in here the very first file that I'm going to create for my next section
Chapter 18: Pricing section
7:40:017 hours, 40 minutes, 1 secondthat's going to be here in under components. Then we have landing. I'm going to create a new folder that is
7:40:097 hours, 40 minutes, 9 secondsgoing to be pricing. And then here we have a new file called pricing dashplans-client.tsx.
7:40:237 hours, 40 minutes, 23 secondsHere we have use client. Then here we're going to say use state. Let's import
7:40:307 hours, 40 minutes, 30 secondsthat. We also need pricing plans from our landing data as well as import type
7:40:407 hours, 40 minutes, 40 secondsbilling period from our types. And then we also need CN as well. Here I'm going
7:40:467 hours, 40 minutes, 46 secondsto say export function pricing plan client
7:40:537 hours, 40 minutes, 53 secondsand I'm going to add pro monthly price
7:41:007 hours, 41 minutesand then here I'm going to say pro
7:41:087 hours, 41 minutes, 8 secondsmonthly price is going to be type of obviously it's an optional it's going to be type of number and I'm going to open
7:41:177 hours, 41 minutes, 17 secondsthe function body here pro monthly price per monthly price there you go here we
7:41:237 hours, 41 minutes, 23 secondshave const I'm going to say period and set period
7:41:307 hours, 41 minutes, 30 secondsis equal to use state and I'm going to say here billing period and I'm going to start
7:41:397 hours, 41 minutes, 39 secondswith yearly there you go I'm going to get down here and Here we have const plans
7:41:467 hours, 41 minutes, 46 secondsis equal to pricing plans dot map and I'm going to go for
7:41:537 hours, 41 minutes, 53 secondsindividual plan here and of course we have I'm going to return direct here. So
7:42:017 hours, 42 minutes, 1 secondI'm going to say plan do ID if that is equal to pro and
7:42:107 hours, 42 minutes, 10 secondspro monthly price is not equal to null in that case
7:42:197 hours, 42 minutes, 19 secondswe have this and otherwise it's just going to be a single plan. There you go.
7:42:267 hours, 42 minutes, 26 secondsAnd now in here of course I'm going to need something. So, first of all, I'm going to spread
7:42:337 hours, 42 minutes, 33 secondsplan here. And then we have monthly price. That's going to be promonly
7:42:417 hours, 42 minutes, 41 secondsprice. There you go. Then we have yearly price. That's going to be math dot
7:42:487 hours, 42 minutes, 48 secondsround. And I'm going to say promonly price divided by 0.9.
7:42:567 hours, 42 minutes, 56 secondsAnd then we have original price and that's going to be promonly price as
7:43:047 hours, 43 minutes, 4 secondswell. Let me format that. And we are done with with the plans here. Now next
7:43:107 hours, 43 minutes, 10 secondsup here I'm going to say return of course. So in the return we have a div.
7:43:177 hours, 43 minutes, 17 secondsI'm going to give it some class name rounded dash. This is going to be 24 px
7:43:267 hours, 43 minutes, 26 secondsrounded. Yeah. All right. Then we have BG surface white. We also have padding
7:43:337 hours, 43 minutes, 33 seconds4. Then on desktop this is going to be rounded and this is going to be 32 px. Desktop padding 8.
7:43:457 hours, 43 minutes, 45 secondsAnd here we have div going to give it class name.
7:43:517 hours, 43 minutes, 51 secondsAnd we have C. And here I'm going to open that up. We have margin bottom six.
7:43:577 hours, 43 minutes, 57 secondsFlex flex call gap of six.
7:44:037 hours, 44 minutes, 3 secondsComma. Get down. Below desktop. This is going to be items center. Below desktop
7:44:097 hours, 44 minutes, 9 secondsthis is going to be text center. And here we have desktop and I'm going to
7:44:167 hours, 44 minutes, 16 secondssay margin bottom eight. Also on desktop we have flex row and also on desktop we
7:44:257 hours, 44 minutes, 25 secondshave items start desktop justify between desktop text
7:44:347 hours, 44 minutes, 34 secondsdash left. I think that's pretty much it. And then I'm going to open that div here. And here we have another div.
7:44:427 hours, 44 minutes, 42 secondsGoing to give it some class names below desktop. There you go. We have text dash center and desktop text left. Open that
7:44:507 hours, 44 minutes, 50 secondsdiv. We have h2. That's going to say start small scale fast.
7:44:597 hours, 44 minutes, 59 secondsAll right. This is going to say class name font display text dash 32px.
7:45:087 hours, 45 minutes, 8 secondsThen we have font-normal.
7:45:107 hours, 45 minutes, 10 secondsThen we have leading none. We also have tracking normal and I'm going to change that to
7:45:187 hours, 45 minutes, 18 secondsminus0.04 am. Then we have text dash agent heading. There you go. And then we have
7:45:277 hours, 45 minutes, 27 secondsdesktop. We have text 40px. Let me format that. After the H2
7:45:347 hours, 45 minutes, 34 secondshere, I'm going to create a P tag designed for every stage.
7:45:427 hours, 45 minutes, 42 secondsAnd I'm going to add some classes. We have margin top two. We have text large.
7:45:497 hours, 45 minutes, 49 secondsWe have text dim. There you go. After the P tag, we have this div tag ending.
7:45:577 hours, 45 minutes, 57 secondsAnd after that, here we're going to add billing toggle.
7:46:047 hours, 46 minutes, 4 secondsThat's another component that's going to come here. For now, just billing toggle. There you go. Let me format everything.
7:46:127 hours, 46 minutes, 12 secondsI'm going to get out of this div here and I'm going to create another div and I'm going to give it a class name.
7:46:207 hours, 46 minutes, 20 secondsThere you go. CN. Open that. And here we have grid.
7:46:267 hours, 46 minutes, 26 secondsGrid calls one gap of four. Comma get down. We have tablet.
7:46:327 hours, 46 minutes, 32 secondsHold on. Tablet grid calls two. Comma get down. We have a desktop. Then we
7:46:407 hours, 46 minutes, 40 secondshave grid calls four. And we have on desktop gap is
7:46:477 hours, 46 minutes, 47 secondsgoing to be three. Awesome. And now in this div here we're going to say plans
7:46:547 hours, 46 minutes, 54 secondsdot map and we have single individual plan on each one we are returning a
7:47:027 hours, 47 minutes, 2 secondscomponent which we do not have yet. We will do that in a minute. So first of all we have let's say a tag and let's
7:47:107 hours, 47 minutes, 10 secondssay plan here. Awesome. So that's pretty much it for this one. And now we need to
7:47:177 hours, 47 minutes, 17 secondscreate this billing toggle as well as the plan here as well. And of course the main section file too. Let's do the
7:47:257 hours, 47 minutes, 25 secondsbilling toggle component first. So here under the pricing folder, I'm going to create a new file. I'm going to name it
7:47:327 hours, 47 minutes, 32 secondspricing dash billing dash toggle
7:47:407 hours, 47 minutes, 40 secondsbilling dash toggle.tsx.
7:47:447 hours, 47 minutes, 44 secondsThere you go. And of course it's it it is a client component.
7:47:517 hours, 47 minutes, 51 secondsAnd then here we have first of all billing period that's going to be imported as type. Let me bring this down here.
7:48:037 hours, 48 minutes, 3 secondsThere you go. Import type.
7:48:087 hours, 48 minutes, 8 secondsAnd I can say here. There you go. Then we need also in CN. There you go. Here
7:48:177 hours, 48 minutes, 17 secondswe have export function billing toggle.
7:48:237 hours, 48 minutes, 23 secondsI'm going to open that up. Here we have period and on change.
7:48:297 hours, 48 minutes, 29 secondsThis is going to be type where we have period is going to be a type of billing period.
7:48:407 hours, 48 minutes, 40 secondsAnd then we have on change which is going to be a function which is going to take one plan and billing period is
7:48:507 hours, 48 minutes, 50 secondsgoing to be type of that as well and it's not going to return anything and let's open the function body here and
7:48:577 hours, 48 minutes, 57 secondshere we have return directly where we have this div I'm going to give it a role it should be a radio group then we
7:49:067 hours, 49 minutes, 6 secondshave area label that's going to be billing period.
7:49:127 hours, 49 minutes, 12 secondsThere you go. And also we have class name. So I'm going to say inline dash flex shrink zero rounded full nbg
7:49:237 hours, 49 minutes, 23 secondspricing surface then padding one. Open that div. And here we have first of all a button. I'm going to make sure that its type is button as well. No submit.
7:49:367 hours, 49 minutes, 36 secondsRo is going to be radio for this one. And then we have area checked.
7:49:427 hours, 49 minutes, 42 secondsThere you go. And that's going to make sure that we have period is equal to monthly. That's going to return true and
7:49:507 hours, 49 minutes, 50 secondsfalse. And depending on that, it's going to be checked true or false. And then we have on click. Here we have this
7:49:597 hours, 49 minutes, 59 secondsfunction. We're going to say on change and I'm going to say monthly here.
7:50:077 hours, 50 minutes, 7 secondsThere you go.
7:50:087 hours, 50 minutes, 8 secondsAnd then we have class name CN. Open that. Here we have cursor
7:50:167 hours, 50 minutes, 16 secondspointer. Then we have rounded full. We have px 4 py2 text small transition
7:50:267 hours, 50 minutes, 26 secondscolors comma down. If the period is equal to monthly
7:50:357 hours, 50 minutes, 35 secondsthen in that case this is going to be BG surface white text
7:50:427 hours, 50 minutes, 42 secondstext primary and then we have shadow small as well otherwise this is going to
7:50:497 hours, 50 minutes, 49 secondsbe text text muted there you go let me format that and now in the button itself
7:50:567 hours, 50 minutes, 56 secondsI'm going to say monthly There you go. Awesome.
7:51:027 hours, 51 minutes, 2 secondsUnder there, we need another button. So, I'm going to just duplicate that. There you go. And of course, type button radio
7:51:127 hours, 51 minutes, 12 secondsuh roll radio here. This is going to be for yearly here and yearly here as well.
7:51:207 hours, 51 minutes, 20 secondsAnd in the classes, I'm going to add a few more here like flex. This is going to be cursor pointer. And then we also have items center and gap 1.5 as well.
7:51:347 hours, 51 minutes, 34 secondsThen the rest of the classes can stay the same. Of course here we need
7:51:407 hours, 51 minutes, 40 secondsyearly as well surface white. It's big primary shadow small and otherwise it's going to be muted just like above and it's going to be changed to yearly.
7:51:517 hours, 51 minutes, 51 secondsAwesome. Now under this button here I'm going to have a span and I'm going to give it a class name which is going to
7:51:587 hours, 51 minutes, 58 secondsbe inline- flex. We have items center gap one text access text replete orange.
7:52:077 hours, 52 minutes, 7 secondsThere you go. I'm going to open that span and I'm going to paste a an SVG here of course that you can find in the GitHub repo. Link is available in the
7:52:147 hours, 52 minutes, 14 secondsdescription and I'm going to add save 24. There you go. Let me save that. Let
7:52:237 hours, 52 minutes, 23 secondsme format and everything. And I think this section, this component is done as well. And now if we get back here. So
7:52:317 hours, 52 minutes, 31 secondsinstead of this thing here, we have billing toggle. There you go. And what it expects? It expects a where is that? A period and on change.
7:52:447 hours, 52 minutes, 44 secondsAll right. So here I'm going to say period becomes
7:52:527 hours, 52 minutes, 52 secondsperiod here and on change is going to be set period. Awesome. Now, of course, we
7:53:007 hours, 53 minutescannot see this thing yet because there are a few things. First of all, let me confirm what is it.
7:53:097 hours, 53 minutes, 9 secondsYeah, there's only one monthly price.
7:53:117 hours, 53 minutes, 11 secondsSo, let's say that this needs to be number. So, let's say we want to display that. So first of all, let's say I want
7:53:187 hours, 53 minutes, 18 secondsto create a sections file here. And I'm going to import pricing
7:53:277 hours, 53 minutes, 27 secondsplans client. There you go. And then also I'm going to import container.
7:53:347 hours, 53 minutes, 34 secondsAnd here I'm going to say export function pricing section and open that.
7:53:457 hours, 53 minutes, 45 secondsThere you go. And here we have first of all a return in which I'm going to display a section hash pricing py-12.
7:53:567 hours, 53 minutes, 56 secondsOpen that. And here I'm also going to add on desktop py. Come on. On desktop py2,
7:54:087 hours, 54 minutes, 8 secondssorry, py 20. There you go. And in there we have a container. Open that up. And
7:54:157 hours, 54 minutes, 15 secondsin there we have pricing plans client and which expects one thing here of course which is totally optional. So if
7:54:237 hours, 54 minutes, 23 secondswe leave it that way and if we go here well we do not see anything and the reason is that because this one still is
7:54:307 hours, 54 minutes, 30 secondsnot being uh imported into this here. So we can go and add
7:54:387 hours, 54 minutes, 38 secondspricing plan pricing section. There you go. Let me format save.
7:54:447 hours, 54 minutes, 44 secondsAnd there you go. We have one issue here and we have this little problem uh
7:54:507 hours, 54 minutes, 50 secondsmonthly and yearly. this little this I think this needs to be part of something and there's something that I have missed
7:54:597 hours, 54 minutes, 59 secondsand we have what issue each child is okay that that's no problem because eventually that is going to be removed
7:55:057 hours, 55 minutes, 5 secondsit's talking about uh come on where is that
7:55:157 hours, 55 minutes, 15 secondsit's talking about this pay tag so eventually there's going to be another new component which is going to be using
7:55:227 hours, 55 minutes, 22 secondsthat key attribute there. So first of all basically I'm going to go to this section dot jtsx and here I'm going to
7:55:297 hours, 55 minutes, 29 secondsadd const pro monthly
7:55:367 hours, 55 minutes, 36 secondsprice is equal to 25 for now this is going to be changed later on and I'm going to add that here per monthly price
7:55:467 hours, 55 minutes, 46 secondsper monthly price. There you go. If I go here, that little arrow is just uh not
7:55:537 hours, 55 minutes, 53 secondsgone well because that is re relevant to the P tag. And here we need to fix this.
7:55:597 hours, 55 minutes, 59 secondsOf course, let's get back. I'm going to go to this toggle here. And uh yeah, make sure that this span
7:56:087 hours, 56 minutes, 8 secondsis living inside the button here. Format that. Let's get back. And there you go.
7:56:157 hours, 56 minutes, 15 secondsThat's been resolved. And of course, now we need to get started working on the plan itself.
7:56:217 hours, 56 minutes, 21 secondsLet's get back here.
7:56:247 hours, 56 minutes, 24 secondsI'm going to get back to my plans uh client here. And in here, of course, we
7:56:317 hours, 56 minutes, 31 secondsneed that component. So for that, I'm going to create a new file here, which
7:56:367 hours, 56 minutes, 36 secondsis going to be pricing dash cars.tsx link from next link. Import that. And we
7:56:457 hours, 56 minutes, 45 secondsalso need billing period and that is of course a type coming from
7:56:547 hours, 56 minutes, 54 secondsthere you go after the billing period we also need pricing plan as well awesome
7:57:017 hours, 57 minutes, 1 secondand we need CN2 and let's write function price block
7:57:107 hours, 57 minutes, 10 secondshere we have plan and period That's going to be open that here we
7:57:177 hours, 57 minutes, 17 secondshave plan pricing plan and
7:57:237 hours, 57 minutes, 23 secondsperiod is going to be billing period. There you go. Let's open
7:57:317 hours, 57 minutes, 31 secondsthe function body here. And we have if plan dot monthly price is equal to null
7:57:397 hours, 57 minutes, 39 secondsthen we return this where we have a pay tag and we display
7:57:477 hours, 57 minutes, 47 secondscustom pricing and here I'm going to say class name margin top four
7:57:567 hours, 57 minutes, 56 secondswe have font display text XL
7:58:027 hours, 58 minutes, 2 secondstext- Excel and then we have font medium text agent heading
7:58:107 hours, 58 minutes, 10 secondsalso we have below desktop margin top zero we have desktop margin top 4 there
7:58:197 hours, 58 minutes, 19 secondsyou go let me format that and that's pretty much it for this function this period needs to be period here
7:58:287 hours, 58 minutes, 28 secondsand of course we need a comma here and here as well And there you go. There is
7:58:357 hours, 58 minutes, 35 secondssomething wrong. Now after this div here, I'm going to go down and I'm going to say con price is equal to period
7:58:467 hours, 58 minutes, 46 secondsyearly. When that is true, then we go for plan dotyearly price. Otherwise, we
7:58:537 hours, 58 minutes, 53 secondsgo for plan dot monthly price. Then we have const is free is equal to price when that is equal to zero.
7:59:037 hours, 59 minutes, 3 secondsOn is going to be show strike is equal to let's say period when that is equal
7:59:127 hours, 59 minutes, 12 secondsto yearly and plan dot original plan dot hold on
7:59:227 hours, 59 minutes, 22 secondsplan dot original price is not equal to null and
7:59:307 hours, 59 minutes, 30 secondsplan dot original price is more than the price if that exists otherwise just
7:59:397 hours, 59 minutes, 39 secondssimply more than zero there you go and then after that here we finally do the
7:59:477 hours, 59 minutes, 47 secondsreturn here we have div I'm going to say class name is going to be margin top-4
7:59:567 hours, 59 minutes, 56 secondswe also have flex flex wrap there you go we have item
8:00:038 hours, 3 secondsbaseline. Then we have gap x2 gap y1 below desktop is going to be margin top zero.
8:00:138 hours, 13 secondsI'm going to get inside that div here.
8:00:168 hours, 16 secondsAnd here we have show strike. If that is true then we display that where we have a span. I'm going to give it a class
8:00:258 hours, 25 secondsname font display text.
8:00:308 hours, 30 secondsThen we have text dash dim. There you go. We have line through as well. And inside the span we have
8:00:398 hours, 39 secondsthis dollar. And then I'm going to display plan dot original price. Here let me format that. Now after this
8:00:488 hours, 48 secondscondition here I'm going to have another span. I'm going to give it class name font dash display
8:00:558 hours, 55 secondstext dash 32px 1- node 2. Then we have leading is going to be none. Font is going to be normal.
8:01:068 hours, 1 minute, 6 secondsTracking is going to be minus0.04 em. And then we have text- agent
8:01:148 hours, 1 minute, 14 secondspadding. There you go. I'm going to open that span here. And here we have is free. When that is true, then we say
8:01:218 hours, 1 minute, 21 secondsfree. Otherwise, we say the dollar sign extra here and we add
8:01:308 hours, 1 minute, 30 secondsprice here. Awesome. also after this span here now I'm going to say
8:01:388 hours, 1 minute, 38 secondsis free and when that is not true when means when the price is not not free and
8:01:448 hours, 1 minute, 44 secondsalso period is equal to monthly only then we display this where we have
8:01:538 hours, 1 minute, 53 secondsa span I'm going to say slash month and in the span I'm going to add
8:02:018 hours, 2 minutes, 1 secondsome class names like text-s then text muted. There you go. Let me format that and save that. I'm going to
8:02:108 hours, 2 minutes, 10 secondspull it up. And after this condition here, I'm going to say is free when that is not true and the
8:02:208 hours, 2 minutes, 20 secondsperiod is equal to yearly this time and open that up. And here we have an empty
8:02:288 hours, 2 minutes, 28 secondsfragment. I'm going to open that up where we have a span. First of all, I'm going to give it some class names like
8:02:358 hours, 2 minutes, 35 secondsflex. Below desktop is going to be flex call. Then we have text small leading
8:02:428 hours, 2 minutes, 42 secondstight. Then we have text muted. And then we have desktop hidden desktop
8:02:518 hours, 2 minutes, 51 secondshidden. There you go. I'm going to open that span. And we have another span in there which is going to say per month.
8:02:598 hours, 2 minutes, 59 secondsAnd then we have another span which is going to say billing annually.
8:03:098 hours, 3 minutes, 9 secondsThere you go. And then after this span here, I'm going to get down and have another span.
8:03:188 hours, 3 minutes, 18 secondsGive it class name. That's going to be hidden by default. Text SM. Then we have text muted here. And then we have
8:03:268 hours, 3 minutes, 26 secondsdesktop in line. And I'm going to open that span here. And we have per month
8:03:348 hours, 3 minutes, 34 secondsbuild annually. Let me format that. Save that. And I think we are done with this function.
8:03:438 hours, 3 minutes, 43 secondsYes, this one. Price block. And now we need to write the final function which
8:03:498 hours, 3 minutes, 49 secondsis export function pricing card. Open that. This is going to take a plan and a period.
8:03:598 hours, 3 minutes, 59 secondsAnd it's going to be a type of this where we have plan which is which is supposed which is supposed to be a pricing plan.
8:04:098 hours, 4 minutes, 9 secondsThere you go. And then we also have a period which is supposed to be a billing period.
8:04:198 hours, 4 minutes, 19 secondsThere you go. Now here let me open the function body and we have return in which we have article
8:04:288 hours, 4 minutes, 28 secondsand in which we have class name CN open that we have flex slall
8:04:368 hours, 4 minutes, 36 secondsbg- f3 e d
8:04:448 hours, 4 minutes, 44 secondsI'm going to put a comma here get down and we have below desktop is going to be rounded
8:04:518 hours, 4 minutes, 51 seconds40px. Then we have below desktop which is going to be P8.
8:04:588 hours, 4 minutes, 58 secondsThen we have desktop rounded none.
8:05:028 hours, 5 minutes, 2 secondsChange that to 20px. And we have desktop padding five. Hold on. Hold on. What am
8:05:098 hours, 5 minutes, 9 secondsI doing here? No plot needed here. So here. Yeah. After that here
8:05:178 hours, 5 minutes, 17 secondswe need desktop and that is that needs to be padding five dash five. There you go. Let me
8:05:258 hours, 5 minutes, 25 secondsformat that and we're good. Let's go inside this article and create a div for now. Let's say
8:05:348 hours, 5 minutes, 34 secondsarticle. That's it. Save that. Let's go here and I'm going to display that
8:05:428 hours, 5 minutes, 42 secondspricing card here. And of course, this needs a few things like a plan and a
8:05:498 hours, 5 minutes, 49 secondsperiod. We have plan also a key here which is going to be plan do ID and also
8:05:578 hours, 5 minutes, 57 secondsa period here which is going to be period that we have. I'm going to format and save everything. Let's go here and
8:06:058 hours, 6 minutes, 5 secondsthere you go. We have article article and article yearly monthly. Wonderful.
8:06:128 hours, 6 minutes, 12 secondsAwesome. And now let's do the rest here in this one. So instead of article here
8:06:208 hours, 6 minutes, 20 secondsto that div I'm going to add a class name which for
8:06:278 hours, 6 minutes, 27 secondswhich I'm going to use CN. And here we have font display. Then we have font
8:06:348 hours, 6 minutes, 34 secondsmedium. Also we have text replet orange comma down. And here we have text dash
8:06:428 hours, 6 minutes, 42 seconds28 pixels on desktop text is going to be large.
8:06:478 hours, 6 minutes, 47 secondsAwesome. And then inside that div here I'm going to have an H3
8:06:548 hours, 6 minutes, 54 secondswhich is going to be plan dot name and this H3 is going to be class name where
8:07:018 hours, 7 minutes, 1 secondwe have font dash display we have font medium then we have text replet orange
8:07:118 hours, 7 minutes, 11 secondsthere you go text replet dash orange and then we have text
8:07:188 hours, 7 minutes, 18 secondsdash 28 pixels and then we also need on desktop this is going to be text dashl
8:07:268 hours, 7 minutes, 26 secondslarge save that and now if we go here the equal starter rapid core and
8:07:338 hours, 7 minutes, 33 secondseverything awesome after the h3 here I'm going to create a p tag I'm going to give it a class name of margin top-1 we
8:07:438 hours, 7 minutes, 43 secondshave text small then we have text secondary. And this is going to display
8:07:508 hours, 7 minutes, 50 secondsplan dot description. There you go. Let me format and save. And there you go.
8:07:588 hours, 7 minutes, 58 secondsLooks good. All right. So, after this one, we have this div. I'm going to get outside of that div. Create another one.
8:08:058 hours, 8 minutes, 5 secondsGive it a class name. And this is going to be below desktop.
8:08:148 hours, 8 minutes, 14 secondsBelow dash desktop is going to be border bottom. There you go. And we have below desktop.
8:08:248 hours, 8 minutes, 24 secondsThis is going to be border black slash 0.06.
8:08:338 hours, 8 minutes, 33 secondsAnd then we have below desktop padding y-5.
8:08:398 hours, 8 minutes, 39 secondsAnd here inside that div, we have a price block. There you go.
8:08:488 hours, 8 minutes, 48 secondsAnd that price block expects one plan, which is this. And then second period, which is this.
8:08:588 hours, 8 minutes, 58 secondsThere you go. Let me format. Save. Let's go here. And there you go. Looks really good.
8:09:068 hours, 9 minutes, 6 secondsAll right. After that, now we need to get out of this div here. Once again, create div one more class name below
8:09:168 hours, 9 minutes, 16 secondsdash desktop is going to be border dash bottom. Then we have below basically this same thing from here.
8:09:288 hours, 9 minutes, 28 secondsI'm going to paste that here. There you go. Open that div.
8:09:348 hours, 9 minutes, 34 secondsAnd inside that div, I have a link first of all. So that's going to be an href.
8:09:438 hours, 9 minutes, 43 secondsWe have plan CD href. Then we have class name margin top 4 block rounded full bg
8:09:528 hours, 9 minutes, 52 secondssurface dark card. Then we have py 3 text center. We also have text small
8:10:028 hours, 10 minutes, 2 secondsfont medium text white transition colors and then we have on hover bg dash
8:10:128 hours, 10 minutes, 12 secondsblack and we have below desktop margin top-0. Let me format that. Open the link
8:10:208 hours, 10 minutes, 20 secondsand here we have plan.cda. So now if we go here and there you go.
8:10:288 hours, 10 minutes, 28 secondsSorry, not CDA saf. It should be CDA label because that looks weird. Yeah, it's it's it's a lot better now. Yeah.
8:10:378 hours, 10 minutes, 37 secondsGood.
8:10:398 hours, 10 minutes, 39 secondsAll right. So, after this link here, now I'm going to get down and I'm going to say there's going to be basically one
8:10:488 hours, 10 minutes, 48 secondsthing that for that we're going to need another component. So, let's actually put that on hold. Yeah. Yeah. I'm just
8:10:568 hours, 10 minutes, 56 secondsgoing to get rid of that. All right. Now I'm going to after this div here I'm going to create a ul also add some class
8:11:058 hours, 11 minutes, 5 secondsname to that where we have flex dash one then we have below desktop this is going
8:11:118 hours, 11 minutes, 11 secondsto be margin top zero then below desktop it's going to be mar uh padding top five
8:11:198 hours, 11 minutes, 19 secondsand we have on desktop margin top five and inside the ul we have
8:11:278 hours, 11 minutes, 27 secondsplan dot features dot map and then we have individual feature and index and on
8:11:348 hours, 11 minutes, 34 secondsthat individual I'm going to have an ally where we have key which is going to be a feature then we also have a class
8:11:428 hours, 11 minutes, 42 secondsname I'm going to add CN here and that's going to be
8:11:488 hours, 11 minutes, 48 secondsflex items start there you go we have gap three and then we have padding Y3
8:11:588 hours, 11 minutes, 58 secondstext small we also need text dash secondary comma get down here and if I is more
8:12:078 hours, 12 minutes, 7 secondsthan zero then we display border top
8:12:128 hours, 12 minutes, 12 secondsthere you go and border dash black slash is going to be 0.06.
8:12:258 hours, 12 minutes, 25 secondsThere you go. All right. Now I'm going to open that ally and here I have this
8:12:328 hours, 12 minutes, 32 secondsspan. I'm going to say this is going to be self-closing. So there we have class name margin top two
8:12:418 hours, 12 minutes, 41 secondsfirst of all. Then we have height 1.5 width 1.5
8:12:478 hours, 12 minutes, 47 secondsand we have shrink zero. We also need rounded full pgrlet orange. This is going to be a little dot. And then we
8:12:568 hours, 12 minutes, 56 secondshave a feature coming from this iteration here. So I'm going to save that. Let's go here. And there you go.
8:13:068 hours, 13 minutes, 6 secondsLooks really, really good, guys. If I click on this one. There you go. It changes monthly. There you go. Yearly.
8:13:148 hours, 13 minutes, 14 secondsAnd phenomenal.
8:13:178 hours, 13 minutes, 17 secondsWonderful size. So with that that part of the component and the section is done. There is only one small thing
8:13:268 hours, 13 minutes, 26 secondswhich is left and that is going to be displayed here under this link here. So basically for the replete pro we're
8:13:338 hours, 13 minutes, 33 secondsgoing to display a selector here. So let's go for that. I'm going to need to create a new file inside pricing and
8:13:418 hours, 13 minutes, 41 secondsthat's going to be pricing dashpro dash seat dash
8:13:508 hours, 13 minutes, 50 secondsselector actually select should be good select.tsx tsx. There you go. I'm going
8:13:578 hours, 13 minutes, 57 secondsto make sure that it is a client component. Then we have use state that we are pulling out of react. Then we
8:14:058 hours, 14 minutes, 5 secondsalso have row seat tiers from coming our
8:14:118 hours, 14 minutes, 11 secondsdata. And then here we have our import type which is going to be billing
8:14:198 hours, 14 minutes, 19 secondsperiod. Awesome. I'm going to say export function pro
8:14:268 hours, 14 minutes, 26 secondsseat select. It's going to take a period and of course that period is going to be
8:14:358 hours, 14 minutes, 35 secondstype of billing period. There you go. Open that function
8:14:448 hours, 14 minutes, 44 secondsbody. And here we have inside const seats and set seats is equal to use
8:14:548 hours, 14 minutes, 54 secondsstate. I'm going to put 100 in there. We have a return. Open that. And here we
8:15:018 hours, 15 minutes, 1 secondhave select for the name. I'm going to get rid of that
8:15:088 hours, 15 minutes, 8 secondsID. No needed here. And then we add value which is going to be seats. Then we add on change and I'm going to say
8:15:188 hours, 15 minutes, 18 secondsevent. This is going to be set seats. We have event dot target dot value. There you go. Then here we have class name.
8:15:308 hours, 15 minutes, 30 secondsI'm going to say margin top-3 with full rounded XL border
8:15:398 hours, 15 minutes, 39 secondsborder. Then we have border light border border light. And then we have VG surface white. There you go.
8:15:518 hours, 15 minutes, 51 secondsThen we need px 3 here. px dash3 py 2.5.
8:15:588 hours, 15 minutes, 58 secondsAnd then we also need text dash small text dash primary. There you go. Let me format and save everything.
8:16:088 hours, 16 minutes, 8 secondsAnd now after that here I'm going to add area label which is going to be pro seat
8:16:158 hours, 16 minutes, 15 secondstier and here I'm going to say suppress hydration suppress come on suppress
8:16:248 hours, 16 minutes, 24 secondshydration warning there you go I'm going to open that select and here we have pro
8:16:328 hours, 16 minutes, 32 secondsseed tiers dot map we have individual tier and on Each we are displaying
8:16:408 hours, 16 minutes, 40 secondshere we have const price is equal to period is equal to yearly when that is
8:16:488 hours, 16 minutes, 48 secondstrue we're going to say then the price is tier doyearly otherwise it's going to be
8:16:558 hours, 16 minutes, 55 secondstier dot monthly there you go then here we have const
8:17:028 hours, 17 minutes, 2 secondslabel is equal to when the period is equal to yearly
8:17:098 hours, 17 minutes, 9 secondsand tier hold on
8:17:148 hours, 17 minutes, 14 secondstier dot monthly is not equal to tier dot yearly
8:17:238 hours, 17 minutes, 23 secondsthen we are going to display let me put template literal here and I'm going to say the pricing for this would
8:17:318 hours, 17 minutes, 31 secondsbe tier dot monthly I'm going to put a space here. Then another one tier doyearly here. And I'm going to put another dollar sign here.
8:17:468 hours, 17 minutes, 46 secondsAnd then here I'm going to say slash month. Then in case of false, this is
8:17:528 hours, 17 minutes, 52 secondsgoing to be two times dollar sign. Then we have price slash month. There you go.
8:18:008 hours, 18 minutesAnd then finally here we are going to return. So this all red error can go.
8:18:088 hours, 18 minutes, 8 secondsHere we have option. The value for this one is going to be
8:18:158 hours, 18 minutes, 15 secondstier dot seats. Then we also need key which is going to be tier dot seeds as well.
8:18:238 hours, 18 minutes, 23 secondsUnder the option I'm going to say label. Let me format everything and save everything.
8:18:328 hours, 18 minutes, 32 secondsAnd I think that's pretty much it for this one. Now I'm going to get back to the pricing plan client uh nope to the
8:18:418 hours, 18 minutes, 41 secondscards and here I'm going to say when plan do ID is equal to pro only
8:18:498 hours, 18 minutes, 49 secondsthen we're going to display pro select and we're going to make sure that period
8:18:568 hours, 18 minutes, 56 secondsis period here. Let me format and save everything. Let's get back here and there you go. We have a nice looking selector that we obviously can select.
8:19:098 hours, 19 minutes, 9 secondsLooks good. Phenomenal. So with that guys, this section is done as well. Let me quickly check this on the mobile view.
8:19:198 hours, 19 minutes, 19 secondsSo I'm going to bring it to the right side. And here iPhone 14 Pro Max. And there you go.
8:19:288 hours, 19 minutes, 28 secondsMonthly, yearly. The pricings are changing. There you can. There you go.
8:19:348 hours, 19 minutes, 34 secondsstarter. Everything stacked on each other like it's supposed to be for this specific section. And there's one little piece left that's going to be displayed
8:19:438 hours, 19 minutes, 43 secondshere. And then we are officially done with the landing page of our rapid clone. Let's get to that.
8:19:518 hours, 19 minutes, 51 secondsI'm going to close everything from here and just going to keep the page open.
8:19:588 hours, 19 minutes, 58 secondsThen under components and under landing I'm going to create a new folder. I'm going to name it CDA. Under CDA I have a
Chapter 19: CTA section
8:20:088 hours, 20 minutes, 8 secondsnew file section. TSX. This is a small section. This is the only file needed for this section. So we have first of
8:20:158 hours, 20 minutes, 15 secondsall button. Then we have container and I'm going to say export function CDA
8:20:268 hours, 20 minutes, 26 secondssection. And here we have return section
8:20:348 hours, 20 minutes, 34 secondsCDA. I'm going to save that. Actually, let's use that.
8:20:398 hours, 20 minutes, 39 secondsSomething like that. There you go. Now get down here and we have CTA section.
8:20:468 hours, 20 minutes, 46 secondsThere you go. Let me format and save everything. And there you go. This is where that is going to be displayed. So
8:20:548 hours, 20 minutes, 54 secondshere to that section I'm going to say class name py dash 120px
8:21:038 hours, 21 minutes, 3 secondsand inside here we have a container and then inside the container I'm going to
8:21:108 hours, 21 minutes, 10 secondsgive it a class name flex flex call items center cap 10 and then we have text center as well then we have h2 two.
8:21:238 hours, 21 minutes, 23 secondsI'm going to say, "What are you waiting for?" Yeah, what are you waiting for?
8:21:308 hours, 21 minutes, 30 secondsSubscribe to my channel.
8:21:338 hours, 21 minutes, 33 secondsAnd class name is going to be font-d display text-42px.
8:21:418 hours, 21 minutes, 41 secondsThen we have font dashnormal. And we have leading which is going to be 42px as well. And we have tracking.
8:21:518 hours, 21 minutes, 51 secondsGoing to change that to minus 1.68 px
8:21:588 hours, 21 minutes, 58 secondstext- cda heading. There you go. Let me format. Let's go here. And there you go. Looks good.
8:22:068 hours, 22 minutes, 6 secondsNow here after the H2, we have a button.
8:22:118 hours, 22 minutes, 11 secondsI'm going to say href. That's going to go to slash slash sign up. And we also
8:22:198 hours, 22 minutes, 19 secondshave size LG and class name height / 20
8:22:258 hours, 22 minutes, 25 secondswidth full and also max width CDA max width dash CDA button font display text
8:22:368 hours, 22 minutes, 36 secondsto Excel and we have font normal. Now here we have get
8:22:448 hours, 22 minutes, 44 secondsstarted free. Let me format and save everything. I think that's pretty much it. And there you go, guys. Our landing
8:22:528 hours, 22 minutes, 52 secondspage is officially done. Let me check the mobile version real quick. And
8:23:018 hours, 23 minutes, 1 secondiPhone 14 Pro Max here. And there you go. Looks good. Really, really
8:23:088 hours, 23 minutes, 8 secondsgood. Everything is as exactly as we planned and everything works.
8:23:158 hours, 23 minutes, 15 secondsWonderful. Perfect. Congratulations everybody. You have hit a very big milestone basically that this landing
8:23:248 hours, 23 minutes, 24 secondspage that you have created. It's worth adding to your portfolio. Everybody is going to like it. And u with that having
8:23:328 hours, 23 minutes, 32 secondssaid, let's move on and keep building the rest of our application. Let's go to our code editor. And in here, I'm going to close this one as well as this one.
Chapter 20: app route shell
8:23:438 hours, 23 minutes, 43 secondsAnd I'm going to go under app, create another folder called app. And then another folder. This time in
8:23:528 hours, 23 minutes, 52 secondsparenthesis, this is going to be called dashboard.
8:23:588 hours, 23 minutes, 58 secondsAnd remember, whatever we write in the parentheses, this does not become a part of the app router. This is only there
8:24:058 hours, 24 minutes, 5 secondsfor the organizing stuff. So now inside there I'm going to create a new file first of all which is going to be layout.tsx.
8:24:178 hours, 24 minutes, 17 secondsThen we also have page.tsx.
8:24:218 hours, 24 minutes, 21 secondsBut I'm going to write some code into the layout.tsx for now. So first of all we have export
8:24:328 hours, 24 minutes, 32 secondsfunction and I'm going to say app dashboard layout. There you go.
8:24:408 hours, 24 minutes, 40 secondsAnd dashboard layout. Awesome. Let me add some props here. So first of all we have only
8:24:498 hours, 24 minutes, 49 secondschildren here. And I'm going to make sure that we have that children
8:24:568 hours, 24 minutes, 56 secondsadded into the type as well which is going to be react dot react node. And let's open the function body. And now in
8:25:058 hours, 25 minutes, 5 secondshere the only thing that I'm going to do is return in which we have a for now just an empty
8:25:138 hours, 25 minutes, 13 secondsdiv. And in there I'm going to just use that children. There you go. Simple
8:25:208 hours, 25 minutes, 20 secondspretty much that. And now if I go to slash app, it will go there. But of course there's
8:25:308 hours, 25 minutes, 30 secondsonly layout but we haven't write written anything in the page.tsx. So that's why it's giving us that error. Let's get
8:25:388 hours, 25 minutes, 38 secondshere. And in here I'm going to say export default function app page. I'm going to open
8:25:478 hours, 25 minutes, 47 secondsthat up. Here we have return and in there I'm just going to display a div here for now and H1 I'm going to call it
8:25:558 hours, 25 minutes, 55 secondshome and just like that I'm going to go to the layout and make sure that we are doing the export
8:26:028 hours, 26 minutes, 2 secondsdefault function here as well. Let's get back here and there you go. We have our home on the app. Perfect. Now there are
8:26:118 hours, 26 minutes, 11 secondsa couple of more files that I would like to create before going deeper into building one of
8:26:198 hours, 26 minutes, 19 secondsthese files. So under the app inside app I'm going to create a new file
8:26:268 hours, 26 minutes, 26 secondslayout.tsx and this is going to be export function app route layout. And in here I'm going
8:26:378 hours, 26 minutes, 37 secondsto open our children. And of course this is going to be a type of children here
8:26:468 hours, 26 minutes, 46 secondsand react dot react node here. Now in the function body I'm going to return
8:26:548 hours, 26 minutes, 54 secondsa div to which I'm going to provide some classes like app dash theme.
8:27:008 hours, 27 minutesThere you go. And then we have flex also minimum height screen flex call and bg
8:27:098 hours, 27 minutes, 9 secondsappbg as well as text app text. Open that div. And here we
8:27:178 hours, 27 minutes, 17 secondshave children. Let me format everything and save everything here. And now if I go there, of course we have this little
8:27:268 hours, 27 minutes, 26 secondsissue here. So, we're going to need one more file in here, and that is going to be a loading.tsx.
8:27:378 hours, 27 minutes, 37 secondsNow, this loading.tsx file is going to export default function loading.
8:27:458 hours, 27 minutes, 45 secondsAnd here we have the loading with a capital L. Sorry, there you go. And here
8:27:528 hours, 27 minutes, 52 secondswe have a return. And in here, instead of creating the loading component within the loading.tsx, because we're going to
8:28:018 hours, 28 minutes, 1 secondhave a bunch of loading.tsx files uh in the different routes. So, what I would do is I'm going to create a different
8:28:108 hours, 28 minutes, 10 secondscomponent for the loading and then going to keep using that component name throughout these different files. So
8:28:188 hours, 28 minutes, 18 secondshere I'm just going to put this uh let's say in here I'm going to say p uh
8:28:288 hours, 28 minutes, 28 secondsloading. That's it for now. And what I'm going to do now is I'm going to go to
8:28:348 hours, 28 minutes, 34 secondscomponents under UI and here create a new file. I'm going to name it global dashloading.tsx.
8:28:448 hours, 28 minutes, 44 secondsThere you go. Here we have first of all I'm going to import type and this is going to be UI theme then we
8:28:538 hours, 28 minutes, 53 secondshave CN and then I'm going to type global loading props
8:29:028 hours, 29 minutes, 2 secondsand open that and here we have theme which is going to be
8:29:098 hours, 29 minutes, 9 secondsUI theme then we have full screen is going to be a boolean and we have
8:29:188 hours, 29 minutes, 18 secondsclass name string and then we have size is going to be small
8:29:278 hours, 29 minutes, 27 secondsmgd and of course lg here awesome now now down here I'm going to say const
8:29:368 hours, 29 minutes, 36 secondssize styles is equal to this where we have small in which I'm going to say height
8:29:448 hours, 29 minutes, 44 secondsdash 3 63 rem and then also we have width dash
8:29:528 hours, 29 minutes, 52 secondsbasically the same thing. I'm just going to copy that. Paste it over here. Change the height to width. And then we have
8:30:018 hours, 30 minutes, 1 secondfor the medium that's going to be inside here. Height dash
8:30:098 hours, 30 minutes, 9 seconds5.445 g. And of course, I'm going to copy that
8:30:178 hours, 30 minutes, 17 secondswidth. And there you go. Then we have LG. That's going to be height dash 7.26 rim.
8:30:288 hours, 30 minutes, 28 secondsI'm going to copy that. And hold on.
8:30:348 hours, 30 minutes, 34 secondsThis needs to be here.
8:30:388 hours, 30 minutes, 38 secondsAnd then here we have width and then the name here. All right. Then after that here I'm going to say con con.
8:30:478 hours, 30 minutes, 47 secondsActually let me copy that a few times here. And now let me open my gaps lock.
8:30:548 hours, 30 minutes, 54 secondsThat's going to be dot size is equal to 2.5.
8:31:018 hours, 31 minutes, 1 secondThen we have dot gap is equal to two.
8:31:058 hours, 31 minutes, 5 secondsThen we have calls is equal to 4. We also have rows is equal to 4 as well.
8:31:138 hours, 31 minutes, 13 secondsAnd we have grid width is equal to calls multiply by dot size
8:31:228 hours, 31 minutes, 22 secondsplus and in here I'm going to say calls minus one and multiplied by dot gap.
8:31:328 hours, 31 minutes, 32 secondsThere you go.
8:31:348 hours, 31 minutes, 34 secondsThen here we have grid height is equal to rows multiplied
8:31:448 hours, 31 minutes, 44 secondsby dot size plus
8:31:498 hours, 31 minutes, 49 secondsrows minus one and divide multiplied by dot cap. There you go. And then we have
8:31:588 hours, 31 minutes, 58 secondsorigin x is equal to here we have 32 minus grid width divided
8:32:088 hours, 32 minutes, 8 secondsby 2. And here we have origin y is equal to 32 minus grid height divided by 2.
8:32:218 hours, 32 minutes, 21 secondsI'm going to come down here and here I'm going to say red dot indices
8:32:298 hours, 32 minutes, 29 secondsand this is going to be equal to new set. We have this array where we have 11
8:32:378 hours, 32 minutes, 37 seconds14 and 15. There you go. const dot positions is equal to array dot from and
8:32:478 hours, 32 minutes, 47 secondshere we have length that's going to be calls divided
8:32:548 hours, 32 minutes, 54 secondsby sorry multiplied by rows and I'm going to say
8:33:018 hours, 33 minutes, 1 seconda comma here and then we have underscore comma index here and let's
8:33:088 hours, 33 minutes, 8 secondsopen this function In there we have const call is equal to index
8:33:168 hours, 33 minutes, 16 secondsmodular operator and we have calls. So whatever remainder is that is our call
8:33:248 hours, 33 minutes, 24 secondscon row is equal to math dot floor. We have index divided by calls. There you
8:33:328 hours, 33 minutes, 32 secondsgo. Floor. There you go. Let me format and save. And then here we have return
8:33:398 hours, 33 minutes, 39 secondsand I'm going to say X is going to be hold on origin Y sorry X
8:33:508 hours, 33 minutes, 50 secondsis going to be origin X there you go plus call
8:33:588 hours, 33 minutes, 58 secondsand multiplied by here we have parentheses in which I'm going to say dot size plus dot gap app. There you go.
8:34:088 hours, 34 minutes, 8 secondsAnd then we have Y is going to be origin Y plus row multiplied by
8:34:178 hours, 34 minutes, 17 secondsdot size plus dot gap. There you go. Let me format and save. And this needs to be
8:34:268 hours, 34 minutes, 26 secondsrow capital row. Yeah, this row. Awesome.
8:34:328 hours, 34 minutes, 32 secondsAnd now here finally I have this export function loading indicator.
8:34:408 hours, 34 minutes, 40 secondsOpen that. And here we have theme is equal to light by default. Size is going
8:34:478 hours, 34 minutes, 47 secondsto be equal to MD. And we have class name. This is going to be a type of this
8:34:558 hours, 34 minutes, 55 secondswhere we have theme is optional. And that's going to be UI theme.
8:35:018 hours, 35 minutes, 1 secondThen we have size also optional and it could be either SM or MG or LG.
8:35:108 hours, 35 minutes, 10 secondsAnd then we have this is type. Yeah. And then we have
8:35:188 hours, 35 minutes, 18 secondsclass name. That's going to be a string. And here let me open the function body. We
8:35:278 hours, 35 minutes, 27 secondshave const block muted is equal to theme when that
8:35:348 hours, 35 minutes, 34 secondsis equal to app then we say fill app dash surface dash
8:35:438 hours, 35 minutes, 43 secondsactive otherwise that's going to say fill dash custom value # E8
8:35:518 hours, 35 minutes, 51 secondsE6 E1. There you go. Let me format and save here. I'm going to return. And in the
8:35:598 hours, 35 minutes, 59 secondsreturn, I have this SVG which of course you can find in the description. And
8:36:078 hours, 36 minutes, 7 secondshere we have read notice indices. And I notice we have maybe red dot.
8:36:168 hours, 36 minutes, 16 secondsLet me copy this.
8:36:218 hours, 36 minutes, 21 secondsYes, there was yeah there was an extra eye here that the show is gone. And here
8:36:288 hours, 36 minutes, 28 secondsI'm going to say yeah everything is actually already in place. We have uh size styles set to size and then we have
8:36:368 hours, 36 minutes, 36 secondsalso class name and in the dot position in the SVG we do doing this rack where
8:36:438 hours, 36 minutes, 43 secondswe have this key X position Y position all that we took here in this position
8:36:508 hours, 36 minutes, 50 secondsand of course we have everything in here in place and now after that finally here we have the final export from this
8:36:588 hours, 36 minutes, 58 secondsloading uh component that's going to be export Import function global loading.
8:37:078 hours, 37 minutes, 7 secondsOpen that. Here we have theme is equal to light.
8:37:118 hours, 37 minutes, 11 secondsFull screen is going to be false. Then we have class name. We have size set to
8:37:228 hours, 37 minutes, 22 secondsuh size set to empty. And this whole thing is going to be a type of global loading props. Open the function body.
8:37:348 hours, 37 minutes, 34 secondsThis is supposed to be an equal. Here we have a return here. I'm going to open
8:37:418 hours, 37 minutes, 41 secondsthat. And we have a div. I'm going to give it a ro of status. Then we have area live is going to be polite. Then we
8:37:508 hours, 37 minutes, 50 secondshave area label which is going to be loading.
8:37:558 hours, 37 minutes, 55 secondsAnd here we have class name. That's going to be CN. Open that up. And here we have flex.
8:38:068 hours, 38 minutes, 6 secondsAnd we also have width full items dash center justify center.
8:38:128 hours, 38 minutes, 12 secondsAnd here we have full screen minimum height screen.
8:38:198 hours, 38 minutes, 19 secondsOtherwise, minimum dash height dash is going to be 12 rim and flex one. There
8:38:278 hours, 38 minutes, 27 secondsyou go. And then I'm going to put a comma get down here. So if full screen is true then we have I'm also going to
8:38:358 hours, 38 minutes, 35 secondscheck if theme is equal to app then I have this bg dash app dashbg
8:38:468 hours, 38 minutes, 46 secondsotherwise this is going to be bg dash background and here I'm going to say
8:38:548 hours, 38 minutes, 54 secondstheme is equal to app then here I'm going to say bg dash transparent otherwise this is going to be undefined.
8:39:048 hours, 39 minutes, 4 secondsLet me format and save everything.
8:39:078 hours, 39 minutes, 7 secondsAnd after this here finally I'm going to also add class name as well. Let me format that.
8:39:168 hours, 39 minutes, 16 secondsLet me pull that up a little. And here in the div I'm going to say loading indicator. And in there I'm going to say
8:39:248 hours, 39 minutes, 24 secondswe have a theme which is supposed to be theme. Then we have size which is size
8:39:328 hours, 39 minutes, 32 secondshere. Save. And here we have an issue somewhere that I would like to fix.
8:39:418 hours, 39 minutes, 41 secondsSo if I open that up properly property Y.
8:39:538 hours, 39 minutes, 53 secondsOkay. Position. What does it say?
8:39:558 hours, 39 minutes, 55 secondsProperty Y does not exist on type X number. Y number. Hold on.
8:40:048 hours, 40 minutes, 4 secondsYeah, this Y should be smaller, not bigger. I think that issue is gone.
8:40:128 hours, 40 minutes, 12 secondsThere you go. Yeah, turned orange. These are some issues with the um some warnings with the Tailwind CSS classes.
8:40:218 hours, 40 minutes, 21 secondslike you can use uh this minimum height 48 but sometimes that's not work. It's not strong enough doesn't work and
8:40:288 hours, 40 minutes, 28 secondsthat's why I kind of end up using these sort of stuff. All right, I'm going to close this one and I'm going to get to
8:40:368 hours, 40 minutes, 36 secondsthe loading and in here I'm going to display global loading. There you go.
8:40:448 hours, 40 minutes, 44 secondsAnd we have here theme is going to be app and it's going to be full screen.
8:40:518 hours, 40 minutes, 51 secondsThere you go. Save that. And now if I go here, of course, we still have the issue. I'm going to get back here and in
8:41:008 hours, 41 minutesthe layout.tsx file. And for now I'm going to get rid of this layout.tsx file from the app and
8:41:108 hours, 41 minutes, 10 secondsnot from the dashboard. So here just delete that for now. And then we have a
8:41:188 hours, 41 minutes, 18 secondsloading in there. And then if actually the loading I'm going to copy that code here. And I'm going to create the same loading under dashboard.
8:41:288 hours, 41 minutes, 28 secondsHere we have loading.tsx here as well. So I guess that's pretty
8:41:358 hours, 41 minutes, 35 secondsmuch it. If we go here, we have the home here. And of course we have the loading but you will not notice that yet.
8:41:488 hours, 41 minutes, 48 secondsLet me do one more thing. So if I inspect that
8:41:548 hours, 41 minutes, 54 secondsand if I go to my network and if I say 3G refresh.
8:42:108 hours, 42 minutes, 10 secondsNope, we cannot yet. So I'm going to change that back to no throttling here.
8:42:188 hours, 42 minutes, 18 secondsAnd let's get back here.
8:42:218 hours, 42 minutes, 21 secondsNow, I would like to work on the appshell so we can finally start putting pieces together like the sidebar and the
8:42:298 hours, 42 minutes, 29 secondscontent for the appshell. And for that, first of all, we're going to need a type system for the app. We already have one
8:42:398 hours, 42 minutes, 39 secondsfor the landing data, but we have none for the for the app. So, I'm going to create a new file here. I'm going to name it app dashtypes.ts.
8:42:518 hours, 42 minutes, 51 secondsAnd here first of all I'm just going to create one export type app work space
8:43:008 hours, 43 minutesworkspace is equal to this type where we have ID string name string then we have
8:43:098 hours, 43 minutes, 9 secondsslug string type is going to be either personal or it's going to be a team. There you
8:43:188 hours, 43 minutes, 18 secondsgo. Let me format and save that. That's pretty much it. And now I would like to create a new file for the appshell.
Chapter 21: App shell + sidebar
8:43:308 hours, 43 minutes, 30 secondsI'm going to collapse everything and I'm going to go to components. Here we have a new folder. I'm going to name it app.
8:43:378 hours, 43 minutes, 37 secondsUnder there I'm going to create another folder and I'm going to call it shell.
8:43:428 hours, 43 minutes, 42 secondsAnd in there we have a file. I'm going to call it app-shell.tsx.
8:43:488 hours, 43 minutes, 48 secondstsx first of all it's a client component and then I'm going to import use call
8:43:568 hours, 43 minutes, 56 secondsback from react also use effect and also use state afterwards here we have import
8:44:068 hours, 44 minutes, 6 secondstype I'm going to import app workspace from our app types and
8:44:138 hours, 44 minutes, 13 secondsthen here I'm going to say type App shell props is equal to this type where
8:44:218 hours, 44 minutes, 21 secondswe have children is going to be react dot react node.
8:44:288 hours, 44 minutes, 28 secondsThen we have work space is going to be equal to app workspace
8:44:378 hours, 44 minutes, 37 secondsarray of that basically. And then we have active work space slug is optional and it's going to
8:44:458 hours, 44 minutes, 45 secondsbe a string. Then we have a user and that is going to be name string
8:44:548 hours, 44 minutes, 54 secondsor null. Then we have email optional string
8:45:038 hours, 45 minutes, 3 secondsor null. And then we have image optional string or null. I'm going to get down
8:45:118 hours, 45 minutes, 11 secondshere. And here we have export function app shell. And I'm going to open that.
8:45:198 hours, 45 minutes, 19 secondsHere we have children. Then we have work spaces.
8:45:258 hours, 45 minutes, 25 secondsworkspaces. There you go. And then we have active workspace
8:45:348 hours, 45 minutes, 34 secondsslug. And then we have user. This whole thing is going to be a type of appshell props. Open that function body.
8:45:458 hours, 45 minutes, 45 secondsAnd here we have a return in which I'm going to have a div. And I'm going to provide some classes to that app dash
8:45:538 hours, 45 minutes, 53 secondstheme. Then we also have flex minimum height screen bg appbg. And then we also
8:46:028 hours, 46 minutes, 2 secondshave text dash app dash text. I'm going to open that div. And here we're going to have a few things. So first of all
8:46:098 hours, 46 minutes, 9 secondshere we have app sidebar of course which we do not have yet. Then here we're going to have the
8:46:198 hours, 46 minutes, 19 secondsmain content area. And then here we have is a command
8:46:278 hours, 46 minutes, 27 secondspallet which of course we have not yet
8:46:348 hours, 46 minutes, 34 secondspallet. There you go. And uh in the main area here I'm going to say
8:46:428 hours, 46 minutes, 42 secondsdiv class name is going to be app- theme dash main. There you go. And then we
8:46:508 hours, 46 minutes, 50 secondsalso have flex and height dash screen and minimum dash birth-0
8:46:578 hours, 46 minutes, 57 secondsflex one. Then we have flex call and also have overflow hidden. I'm going to
8:47:048 hours, 47 minutes, 4 secondsopen that div. And here we have children. There you go.
8:47:118 hours, 47 minutes, 11 secondsSo now the other uh basically props go into the sidebar. And for now what I'm going to do is I'm going to make sure
8:47:198 hours, 47 minutes, 19 secondsthat they are optional. So we do not get any error or something. And there you go. We have the appshell here.
8:47:308 hours, 47 minutes, 30 secondsAnd now I'm going to go to my loading.tsx file. Sorry, not loading but the layout.tsx file. And here instead of this, I'm going to return app shell.
8:47:438 hours, 47 minutes, 43 secondsThere you go. Open that. And here I have children. There you go. Just like that. I'm going to save that.
8:47:528 hours, 47 minutes, 52 secondsAnd I think that's pretty much it. If I go here, there you go. We have a dark background and this text over that. So,
8:48:008 hours, 48 minutesour op shell is working. And now it is time for us to start working on the sidebar.
8:48:078 hours, 48 minutes, 7 secondsSo we can make it look like a dashboard app. So app that app sidebar is going to go here. Inside this shell uh folder here, I'm going to create a new file.
8:48:188 hours, 48 minutes, 18 secondsI'm going to name it app dash sidebar.tsx.
8:48:238 hours, 48 minutes, 23 secondsAnd let's do use client. And then here we have link from next link. We also have use path
8:48:338 hours, 48 minutes, 33 secondsname from next navigation use effect and use state.
8:48:418 hours, 48 minutes, 41 secondsThen we also need replet logo and we also need to import type. That's going
8:48:498 hours, 48 minutes, 49 secondsto be app work space. There you go. And let me put that there. Awesome. And next
8:48:588 hours, 48 minutes, 58 secondsI'm going to need CN here as well. Here I'm going to type app side bar props is
8:49:068 hours, 49 minutes, 6 secondsequal to this type where we have workspaces is going to be app workspace
8:49:158 hours, 49 minutes, 15 secondsuh array. Then we have active workspace
8:49:228 hours, 49 minutes, 22 secondsslug optional and this is going to be a string. Then we have a user and that's going to be a name,
8:49:318 hours, 49 minutes, 31 secondsstring or null, email optional, string or null. And we
8:49:418 hours, 49 minutes, 41 secondshave also image optional string or null.
8:49:478 hours, 49 minutes, 47 secondsThere you go. Now here I'm going to type actually there's going to be one more and that's going to be
8:49:548 hours, 49 minutes, 54 secondson open search we have this function which is going to be void. Then here we
8:50:018 hours, 50 minutes, 1 secondhave const main nav is going to be equal to this array and that's going to be
8:50:128 hours, 50 minutes, 12 secondslabel string href string. Then we also have icon which is going to be react dot component type.
8:50:258 hours, 50 minutes, 25 secondsAnd here I'm going to say class name come on optional and that's going to be
8:50:348 hours, 50 minutes, 34 secondsa string. There you go. And then we also have exact that's going to be a boolean.
8:50:438 hours, 50 minutes, 43 secondsAwesome.
8:50:458 hours, 50 minutes, 45 secondsAnd then that whole thing is going to be equal to this array where we have this object label is going to be home.
8:50:568 hours, 50 minutes, 56 secondsHref is going to be slash app href. There you go.
8:51:028 hours, 51 minutes, 2 secondsAnd here, hold on. Yeah. Label. We have home and href.
8:51:108 hours, 51 minutes, 10 secondsWe have app. And then here we have icon. That's going to be home icon. Of course, we need to create that icon.
8:51:188 hours, 51 minutes, 18 secondsSo, I'm going to create that in a minute. Then we have exact. That's going to be true here. I'm going to duplicate
8:51:268 hours, 51 minutes, 26 secondsthat here under and then we have projects. Href is going to go to slash
8:51:348 hours, 51 minutes, 34 secondsapp/ projects. Then icon for this one is going to be projects icon. Of course, I'm going to
8:51:438 hours, 51 minutes, 43 secondscreate that too. And then exact is going to be true here. Let me format that and save that. I'm going to get to the very
8:51:518 hours, 51 minutes, 51 secondsbottom here. I'm going to say function home icon is going to be this where we have class name
8:52:008 hours, 52 minutesand that class name is going to be type of a string and this is supposed to be
8:52:078 hours, 52 minutes, 7 secondsoptional and then in here we have return and I'm going to paste that SVG there of course you can find that in the GitHub
8:52:158 hours, 52 minutes, 15 secondsrepo and then now under here I'm going to type function projects icon is going
8:52:238 hours, 52 minutes, 23 secondsto be same class name is going to be
8:52:318 hours, 52 minutes, 31 secondsthis where we have class name optional and this is going to be a
8:52:408 hours, 52 minutes, 40 secondsstring open that function body we have a return and there's the SVG code there
8:52:468 hours, 52 minutes, 46 secondsyou go and of course now those both are being used Here there are a couple of more icons that I
8:52:558 hours, 52 minutes, 55 secondswould like to create just now. So we have function sparkles icon and this is going to be
8:53:048 hours, 53 minutes, 4 secondsclass name and here we have class name optional and this is going to be a type of string.
8:53:158 hours, 53 minutes, 15 secondsThere we have a return and I'm going to paste that SVG there. And then the next one that I'm going to do is function
8:53:248 hours, 53 minutes, 24 secondssearch icon of course it's going to be actually yeah we can leave that for that
8:53:318 hours, 53 minutes, 31 secondsand we can in the function body we have a return here and there you go for the
8:53:378 hours, 53 minutes, 37 secondsSVG so I guess we are done for all of the uh icons we have sparkles icon let me
8:53:478 hours, 53 minutes, 47 secondscheck the spelling com icon and then we have projects icon. Awesome.
8:53:528 hours, 53 minutes, 52 secondsAll right. Now here finally we have the export function app sidebar in which we
8:54:008 hours, 54 minuteshave work spaces. Then we have active work space slug. And then we also have a
8:54:108 hours, 54 minutes, 10 secondsuser and on open search and this hole is going to be type of app
8:54:188 hours, 54 minutes, 18 secondssidebar props. Open the function body and here we have const path name is
8:54:268 hours, 54 minutes, 26 secondsequal to use path name. Then we have const
8:54:338 hours, 54 minutes, 33 secondsaccount open set account open. This is going to be equal to use state and we have false.
8:54:458 hours, 54 minutes, 45 secondsNow here I'm going to say use effect where we have this callback function
8:54:548 hours, 54 minutes, 54 secondsand in there I'm going to have if account open is not true then we return
8:55:018 hours, 55 minutes, 1 secondand else we have this function and key down we have event that's going to be a keyboard event. There you go.
8:55:138 hours, 55 minutes, 13 secondsOpen that function body and this is going to be if event dot key is equal to
8:55:208 hours, 55 minutes, 20 secondsescape then we do set account open to false. Let me format and save that. And
8:55:298 hours, 55 minutes, 29 secondsthen here we have document dot add event listener and we have key down and I'm
8:55:388 hours, 55 minutes, 38 secondsgoing to say handle key down. There you go. And then finally on dismount we have return document dot remove eventlister.
8:55:518 hours, 55 minutes, 51 secondsThere you go. And I'm going to say key down. And this is going to be the handle key down. Awesome. And then the second
8:56:008 hours, 56 minutesvalue for the use effect here is going to be account open. Excellent. Now here
8:56:078 hours, 56 minutes, 7 secondsafter this use effect I'm going to have a return finally where we have aside
8:56:158 hours, 56 minutes, 15 secondsgoing to give it some class names like flex height dash screen width dash app dash sidebar and then we have shrink
8:56:238 hours, 56 minutes, 23 secondszero flex call border right border app border
8:56:318 hours, 56 minutes, 31 secondssubtle. There you go. And then we have bg- app-idebarbg.
8:56:398 hours, 56 minutes, 39 secondsAnd inside that aside I have a div to which I'm going to provide some
8:56:458 hours, 56 minutes, 45 secondsclasses like flex items center and justify between px
8:56:558 hours, 56 minutes, 55 seconds3 py3 as well. In there we have a link.
8:57:038 hours, 57 minutes, 3 secondsThere you go. And to that link I'm going to provide an href where we have slash app. Then we also have area label
8:57:128 hours, 57 minutes, 12 secondsreplet home. And then in there I'm going to have a replet logo to which I'm going to say
8:57:218 hours, 57 minutes, 21 secondssize is going to be compact. And then we have class name text dash app dash text.
8:57:298 hours, 57 minutes, 29 secondsThere you go. And I guess now we are ready to wire this up into our app shell. So here I'm going to say app
8:57:388 hours, 57 minutes, 38 secondssidebar. There you go. And to that I'm going to need workspaces.
8:57:448 hours, 57 minutes, 44 secondsAnd of course we already have workspaces. So I'm going to put that there. Then we also need active workspace slug. So here we have active
8:57:538 hours, 57 minutes, 53 secondsworkspace slug. And then here I'm going to say user which is going to be user
8:58:018 hours, 58 minutes, 1 secondgoing to format and save that. This user is here and is here. And let me get to that
8:58:088 hours, 58 minutes, 8 secondsuser name, email, image. Okay. Okay. So everything seems good. But why do we have the issues here?
8:58:198 hours, 58 minutes, 19 secondsMaybe this is because this is optional here. Yeah, that's gone. And then we have workspaces and that needs to be gone as well because I temporarily made
8:58:278 hours, 58 minutes, 27 secondsthem optional here. All right. Now the next thing that we need here is on open
8:58:358 hours, 58 minutes, 35 secondssearch and for that we're going to need a few more things. So I'm going to go to the top here above the return. I'm going
8:58:428 hours, 58 minutes, 42 secondsto say const command open and set command open is equal to use state false.
8:58:558 hours, 58 minutes, 55 secondsNow here I'm going to say const open command is equal to use call back and
8:59:028 hours, 59 minutes, 2 secondshere we have this function in which I'm going to say set command open set to
8:59:098 hours, 59 minutes, 9 secondstrue and here I'm going to provide an empty array. I guess that's pretty much it. And now this open command is going
8:59:198 hours, 59 minutes, 19 secondsto be used here. Hold on, let me copy that and paste it over here. Let me
8:59:268 hours, 59 minutes, 26 secondsformat and save. And we have some issue here in the appshell. Now, of course, now appshell expects all of those values.
8:59:358 hours, 59 minutes, 35 secondsNow if if I hover over the appshell here so you can see that it says that some of
8:59:428 hours, 59 minutes, 42 secondsthe properties are missing and but like workspaces and user but of course that those are coming later when we have the
8:59:508 hours, 59 minutes, 50 secondsauthentication as well as the database integration but let's go to our code uh I mean in the browser and we already
8:59:578 hours, 59 minutes, 57 secondshave the sidebar and the logo here looking really good. Let's get back to our code editor and I'm going to go to
9:00:059 hours, 5 secondsmy app sidebar and here under the link here I'm going to create
9:00:139 hours, 13 secondsa button I'm going to give it a type of button then we have on click I'm going
9:00:219 hours, 21 secondsto say on open search we also have class name here I'm going to say flex height
9:00:299 hours, 29 secondsdash8 width dash8 height items center justify center rounded LG text app text
9:00:409 hours, 40 secondsmuted then we have transition colors on hover it's going to be BG app surface
9:00:489 hours, 48 secondshover and then we have on hover text app text also I'm going to attach area label
9:00:579 hours, 57 secondsthat's going to be search and then inside here I'm going to have a search
9:01:039 hours, 1 minute, 3 secondsicon. There you go. Let me format and save that. Let's get back here. And there you go. We have our search icon.
9:01:119 hours, 1 minute, 11 secondsOf course, well, it's not designed properly for some reason. We have flex hide it with items center. Yes, got it.
9:01:249 hours, 1 minute, 24 secondsJustify center.
9:01:279 hours, 1 minute, 27 secondsAnd there you go. Let me format and save. I go here and there. Hold on. Let me refresh. Nope.
9:01:359 hours, 1 minute, 35 secondsGot it. Justify center. There you go. It's going to fix
9:01:419 hours, 1 minute, 41 secondsnow. And yes, looks good. All right. So, after this button, we have this div. I'm
9:01:499 hours, 1 minute, 49 secondsgoing to get out of that div. And I'm going to create another div here. I'm going to give it a class name ex-3 and pb-2.
9:02:019 hours, 2 minutes, 1 secondAnd then of course here I'm going to have an I um a component basically work
9:02:109 hours, 2 minutes, 10 secondsspace selector which of course we do not have yet. So I'm just going to say workspace
9:02:179 hours, 2 minutes, 17 secondshere. Just like that. If you go here, this is where the workspace is going to be displayed. Awesome. Then I'm going to
9:02:259 hours, 2 minutes, 25 secondsget out of that div once more and I'm going to create another div class name px-3 pb3.
9:02:349 hours, 2 minutes, 34 secondsOpen that div. Here we have first of all a link. We have a class name and also an
9:02:429 hours, 2 minutes, 42 secondshref slash app. Class name for this one is going to be group
9:02:509 hours, 2 minutes, 50 secondsrelative flex height dash 9 items dash center gap 2 overflow hidden rounded lg
9:03:019 hours, 3 minutes, 1 secondthen we also have px 3 text sm font medium text white and we have
9:03:119 hours, 3 minutes, 11 secondsshadow a custom value 0_2 px_14 14 px rgba
9:03:199 hours, 3 minutes, 19 seconds61 comma triple 1 comma 212 comma 0.02 double two and then after that we have transition.
9:03:309 hours, 3 minutes, 30 secondsI'm going to hold on not tracking but
9:03:389 hours, 3 minutes, 38 secondstransition dash and this changes to box dash shadow comma filter and then we
9:03:469 hours, 3 minutes, 46 secondshave on hover shadow is going to be changed to zero for px 22 px and rgba
9:03:589 hours, 3 minutes, 58 seconds61 triple 1 212 0.32. All right.
9:04:069 hours, 4 minutes, 6 secondsAnd then we have hover. I'm going to say brightness 105. There you go. Let me format and save.
9:04:149 hours, 4 minutes, 14 secondsAnd then open that link. Here we have a span. Going to give it class name
9:04:209 hours, 4 minutes, 20 secondsabsolute insert zero pg gradient
9:04:269 hours, 4 minutes, 26 secondsI n dot dash 2 - br bottom right then we have from that changes to
9:04:369 hours, 4 minutes, 36 secondsuh from # 37 30 a3
9:04:439 hours, 4 minutes, 43 secondsand then we have via app accent blue and then we have dash custom value hash
9:04:529 hours, 4 minutes, 52 seconds6 7 B 8 F 7. There you go. And of course, we need to also provide area
9:05:019 hours, 5 minutes, 1 secondhidden true here as well. And that span is going to be self-closing span by the
9:05:109 hours, 5 minutes, 10 secondsway. There you go. And then under that we have another span.
9:05:169 hours, 5 minutes, 16 secondsBasically I'm just going to copy that.
9:05:209 hours, 5 minutes, 20 secondsNow the second one span here we have span area hidden true. Okay uh absolute then insert zero. This one
9:05:299 hours, 5 minutes, 29 secondsbecomes instead of big uh bg gradient to bottom right. This one is going to be to
9:05:359 hours, 5 minutes, 35 secondstop right. And then from changes to here I'm going to change that from dash white/20.
9:05:469 hours, 5 minutes, 46 secondsAnd then it's going to be via dashtransparent.
9:05:539 hours, 5 minutes, 53 secondsAnd then the two here is going to be
9:06:009 hours, 6 minutes2 dash conse 100/10.
9:06:069 hours, 6 minutes, 6 secondsThere you go. And then we have opacity 50. We also have transition opacity. And then we also have group hover.
9:06:159 hours, 6 minutes, 15 secondsThere you go. That's going to be opacity 80. There you go. And then after that here I'm going to have a sparkles icon.
9:06:259 hours, 6 minutes, 25 secondsAnd then after that actually to that I'm going to provide a class name which is going to be relative Z-10 and also
9:06:349 hours, 6 minutes, 34 secondsshrink zero. After that here we have a span one more time. I'm going to say create something new
9:06:439 hours, 6 minutes, 43 secondsand I'm going to add some class name to that like relative and Z dash 10. So this is a gradient button that we
9:06:529 hours, 6 minutes, 52 secondscreated. If we go here and there you go create something. Yeah, looks really really good. Let's go back here.
9:07:009 hours, 7 minutesAnd now I'm going to go under this div here. I'm going to create a nav. class
9:07:079 hours, 7 minutes, 7 secondsname is going to be flex one space y0.5 and then we have px2 open that nav and
9:07:169 hours, 7 minutes, 16 secondshere we have main nav dot map I'm going to say item to each one I'm going to
9:07:249 hours, 7 minutes, 24 secondsactually going to use this here open that and here we have first of all let's
9:07:319 hours, 7 minutes, 31 secondsreturn so we get rid of this issue the red line and then here I'm going to A
9:07:369 hours, 7 minutes, 36 secondsconst is active is equal to item dot item doexact.
9:07:459 hours, 7 minutes, 45 secondsAnd when that is true then we go for path name is equal to then again
9:07:529 hours, 7 minutes, 52 secondsbasically we're checking path name is equal to item dot href
9:07:599 hours, 7 minutes, 59 secondselse we are saying path name dot starts with here slash actually item
9:08:089 hours, 8 minutes, 8 secondsdot href. There you go. And that's going to return true and false depending on all of these situations.
9:08:169 hours, 8 minutes, 16 secondsSo now under the I uh return here I'm going to say link
9:08:239 hours, 8 minutes, 23 secondsand we have an href here. First of all I'm going to say item href. Then we have key here. I'm going to say item dot
9:08:329 hours, 8 minutes, 32 secondslabel. Then we have class name. I'm going to use CN this time. And here we have flex items center gap 2.5.
9:08:439 hours, 8 minutes, 43 secondsWe have rounded LGPX3 py2 text small transition colors
9:08:509 hours, 8 minutes, 50 secondscomma down and here I have is active. So if it's active then I'm going to do this
9:08:589 hours, 8 minutes, 58 secondshere otherwise this here. So in case of true I'm going to say bg- app surface active
9:09:069 hours, 9 minutes, 6 secondsdash active and then we have text- app text. There you go. And in the case of
9:09:139 hours, 9 minutes, 13 secondsfalse I'm going to say text app text secondary. And then we have on hover bg
9:09:209 hours, 9 minutes, 20 secondsdash app dash surface hover. Then we have on hover it's going to be text dash app
9:09:289 hours, 9 minutes, 28 secondsdash text. There you go. Let me format and save everything. Now I'm going to go inside this link here and I'm going to
9:09:379 hours, 9 minutes, 37 secondssay item dot icon and in there I have class
9:09:449 hours, 9 minutes, 44 secondsname height dash 4 and width dash4 also shrink is going to be zero for this
9:09:529 hours, 9 minutes, 52 secondsone and after that here I have item dot label let me format and save everything
9:09:599 hours, 9 minutes, 59 secondslet's go back here and there you go we have home and projects. Awesome. Let's go back here. I'm going to pull it up.
9:10:079 hours, 10 minutes, 7 secondsAnd now under this nav here, I'm going to create a new div. And I'm going to give it a class name border dash top.
9:10:179 hours, 10 minutes, 17 secondsAnd here we have border app border subtle. Then we have px 3 and py3 as
9:10:269 hours, 10 minutes, 26 secondswell. And in here I'm going to say account open. If that is true then we're
9:10:339 hours, 10 minutes, 33 secondsgoing to do this. Otherwise we're going to do null. And in here we have a button
9:10:419 hours, 10 minutes, 41 secondswhich I'm going to provide a type which is going to be button. Then we have class name fixed
9:10:499 hours, 10 minutes, 49 secondsinsert zero and Z 40. Then we have bg dash black slash 40 here as well. And
9:10:599 hours, 10 minutes, 59 secondsI'm going to also attach area label which is going to be close account menu.
9:11:069 hours, 11 minutes, 6 secondsAnd I'm going to add on click. This is going to be set account open set to false. And
9:11:169 hours, 11 minutes, 16 secondsinside this button well this button is going to be self-closing.
9:11:229 hours, 11 minutes, 22 secondsThere you go. Nothing needs to go in there. Just like that. Now I'm going to
9:11:299 hours, 11 minutes, 29 secondsget down here and here once again I'm going to say account. Actually I'm going to create a
9:11:379 hours, 11 minutes, 37 secondsdiv here and I'm going to name it class name uh relative and width dash full and
9:11:449 hours, 11 minutes, 44 secondsopen that. And here I'm going to say account open. If that is true, then we
9:11:529 hours, 11 minutes, 52 secondshave this. Otherwise, just null. And in case of true, I'm going to display a div here for now. Eventually, this is going to be changed with the component that
9:12:019 hours, 12 minutes, 1 secondwe're going to create later. And in here, I'm going to say account menu panel. That's the account. That's the
9:12:109 hours, 12 minutes, 10 secondscomponent that's going to come. I'm going to get out of that uh null here. And here I'm going to create a button.
9:12:199 hours, 12 minutes, 19 secondsto which I'm going to provide a type button and then also we have on click
9:12:279 hours, 12 minutes, 27 secondsI'm going to say set account open that's going to change that from whatever the
9:12:349 hours, 12 minutes, 34 secondscurrent position is to to the reverse of that just like that
9:12:419 hours, 12 minutes, 41 secondsand then we have area expanded that's going to be account open and then we
9:12:499 hours, 12 minutes, 49 secondshave area has popup. Let's add menu there. And then we have class name. I'm going to use CN here for this one.
9:12:599 hours, 12 minutes, 59 secondsThat's going to be relative Z dash 50.
9:13:029 hours, 13 minutes, 2 secondsThen we have flex width full items center gap 2.5.
9:13:119 hours, 13 minutes, 11 secondsAnd then we have rounded LG. We also have px2 py2 text
9:13:199 hours, 13 minutes, 19 secondsleft transition colors and I'm going to say if account open is true
9:13:279 hours, 13 minutes, 27 secondsthen we are doing this where we have bg- app surface hover otherwise no comma
9:13:369 hours, 13 minutes, 36 secondsneeded here otherwise this is going to be on hover vg- app
9:13:449 hours, 13 minutes, 44 secondssurface hover. There you go. And I'm going to open that button here. And there is going to be basically a avatar.
9:13:549 hours, 13 minutes, 54 secondsAnd of course, we do not have that yet.
9:13:569 hours, 13 minutes, 56 secondsSo for now, I'm just going to put a U here. And we will replace that with this component later on. And here actually
9:14:049 hours, 14 minutes, 4 secondswould like to do that. So as well. So here I'm going to bring that down. And I'm going to say
9:14:129 hours, 14 minutes, 12 secondsaccount menu panel is going to be used here eventually.
9:14:189 hours, 14 minutes, 18 secondsThere you go. And when we have we're going to get rid of this. I'm going to change that to a p tag. Let me format and save. Awesome. And after the u here
9:14:279 hours, 14 minutes, 27 secondsI'm going to add a div. I'm going to give it a class name-width-0 and flex one. Open that div. Here we
9:14:369 hours, 14 minutes, 36 secondshave a p tag. Class name is going to be truncate text sm text app text. Open
9:14:459 hours, 14 minutes, 45 secondsthat. And here we have user dot name if that is there. Good. Otherwise it's just going to say account.
9:14:549 hours, 14 minutes, 54 secondsAfter that p tag have another p tag class name truncate. Then we have text xs. We also
9:15:039 hours, 15 minutes, 3 secondshave text app text muted. Open that pay tag where here we have user email. If
9:15:109 hours, 15 minutes, 10 secondsthat is there, go to otherwise view menu.
9:15:149 hours, 15 minutes, 14 secondsThere you go. And I guess that's pretty much it. And now if we go here, well, we have a few issues. User.name.
9:15:239 hours, 15 minutes, 23 secondsAnd that is because actually yeah because we have
9:15:329 hours, 15 minutes, 32 secondsthis user here but we actually okay we have the user here but we have no user here. So, I
9:15:409 hours, 15 minutes, 40 secondsguess it's best if we just use account here for now and
9:15:519 hours, 15 minutes, 51 secondsview menu here for now. I'm going to save that. And now, let's get back here. And there you go. So, here we have this
9:15:589 hours, 15 minutes, 58 secondsaccount and view menu. And if I click on that, there you go. We have this account menu panel that opens up. And if I click
9:16:079 hours, 16 minutes, 7 secondsoutside, that goes. or if I click escape key from my keyboard, that also goes away. So, we're going to need to create a couple of further components like we
9:16:159 hours, 16 minutes, 15 secondsneed this workspace component. Then we also need one for the avatar and then we also need one for the account menu panel
9:16:239 hours, 16 minutes, 23 secondsas well. All right. So, I'm going to go to my code editor and in here I'm going to go and create a new file under the
9:16:319 hours, 16 minutes, 31 secondsshell here. That is going to be user dash area-ons.tsx.
9:16:419 hours, 16 minutes, 41 secondsAnd trust me, I'm just going to give you this code here. I'm going to paste it here. So, these are just SVG files. So
9:16:509 hours, 16 minutes, 50 secondsjust like I told you guys before that you can uh simply copy these SVG codes from the GitHub repo link is available
9:16:579 hours, 16 minutes, 57 secondsin the description or you are I mean if you want to get them from the website
9:17:049 hours, 17 minutes, 4 secondsitself you can definitely do do that as well. So here I'm going to save that and just close that file. And this is going
9:17:129 hours, 17 minutes, 12 secondsto be used a little bit later, but we needed those icons in place. Now I'm
9:17:199 hours, 17 minutes, 19 secondsgoing to create a new file here which is going to be user- area-tabs
9:17:279 hours, 17 minutes, 27 secondsts. There you go. And here I'm going to import
9:17:349 hours, 17 minutes, 34 secondshere we have account icon then billing icon then we have settings icon then we
9:17:449 hours, 17 minutes, 44 secondshave trash icon and then after that here we have export const
9:17:519 hours, 17 minutes, 51 secondsuser hold on user area tabs is equal to this array And in
9:17:599 hours, 17 minutes, 59 secondsthat array we have these objects where we have label account. And then we have href that's
9:18:089 hours, 18 minutes, 8 secondsgoing to be slash app slash account. And then we have icon which is going to be account
9:18:179 hours, 18 minutes, 17 secondsicon. And I'm going to duplicate this a few times here. This one changes to settings.
9:18:279 hours, 18 minutes, 27 secondsThis one becomes billing trash. And of course here we have
9:18:379 hours, 18 minutes, 37 secondssettings, billing and
9:18:449 hours, 18 minutes, 44 secondstrash here. And let's change the icons as well. So account icon changes to
9:18:519 hours, 18 minutes, 51 secondssettings icon. Then we have billing icon and then we have trash icon
9:18:599 hours, 18 minutes, 59 secondsand make sure that this is being used as a con.
9:19:049 hours, 19 minutes, 4 secondsThere you go. I'm going to close this file as well and I'm going to create a new one here now. So that is going to be
9:19:139 hours, 19 minutes, 13 secondsuser- area- layout.tsx.
9:19:189 hours, 19 minutes, 18 secondsHere I'm going to say use client as this is a client component. Then we have link
9:19:259 hours, 19 minutes, 25 secondsand then also we have use path name. And then we also have user
9:19:329 hours, 19 minutes, 32 secondsarea tabs. There you go. And then we also need CN.
9:19:389 hours, 19 minutes, 38 secondsHere I'm going to say export function user area
9:19:449 hours, 19 minutes, 44 secondslayout. And in there we have children and this is going to be a type of this
9:19:529 hours, 19 minutes, 52 secondswhere we have children and react dot react node. Let me open
9:19:599 hours, 19 minutes, 59 secondsthat function body const path name is equal to use path name. Then here we
9:20:089 hours, 20 minutes, 8 secondshave return and in there we have main going to give it a class name flex minimum height zero. Then we have flex
9:20:179 hours, 20 minutes, 17 secondsone and we have overflow hidden. I'm going to open that main. Here we have aside
9:20:249 hours, 20 minutes, 24 secondsclass name flex width is going to be 1 /3 and then we have minimum width-0. So, we're going to change that to 220px.
9:20:379 hours, 20 minutes, 37 secondsWe also have max width here. So, I'm going to change that to 320px.
9:20:479 hours, 20 minutes, 47 secondsThen, we have shrink zero flex call border r. Then, we have border border
9:20:559 hours, 20 minutes, 55 secondssubtle. And then we have px4 py8.
9:21:019 hours, 21 minutes, 1 secondI'm going to open that aside. And here we have nav. There you go.
9:21:099 hours, 21 minutes, 9 secondsAnd inside this nav here I'm going to first of all provide this a few class
9:21:159 hours, 21 minutes, 15 secondsnames like here we have space y1 space dashy d-1
9:21:239 hours, 21 minutes, 23 secondsand of course then here we have area label. This is going to be account sections. I'm going to open that. And
9:21:329 hours, 21 minutes, 32 secondshere we have user area tabs dot map. Here we have individual
9:21:399 hours, 21 minutes, 39 secondstab. Open that. Here we have return here. And above that I'm going to say
9:21:469 hours, 21 minutes, 46 secondsconst is active is equal to path name is equal to tab. Href. There you go.
9:21:559 hours, 21 minutes, 55 secondsAnd this needs to be three signs here as we are checking is it true or false. Now
9:22:019 hours, 22 minutes, 1 secondunder the tr uh return here we have a link and first of all I'm going to give it a key which is going to be tab.href.
9:22:149 hours, 22 minutes, 14 secondsThen we have href that's going to be tab.href as well. Then we have class name. I'm
9:22:209 hours, 22 minutes, 20 secondsgoing to use cn here and that's going to be flex height dash 10. We have items
9:22:299 hours, 22 minutes, 29 secondsdash center gap 2.5. Then we have rounded lgpx3
9:22:369 hours, 22 minutes, 36 secondstext small transition colors, and here we have is active.
9:22:459 hours, 22 minutes, 45 secondsThen we're going to say bg app surface active font medium text app text. There
9:22:539 hours, 22 minutes, 53 secondsyou go. And in case of false, this is going to be text app secondary.
9:23:009 hours, 23 minutesAnd we also have on hover, it's going to be bg dash app surface hover. There you go. And we have hover
9:23:099 hours, 23 minutes, 9 secondsonce again. Text app text. Let me format and save that. And now inside this link
9:23:169 hours, 23 minutes, 16 secondshere, we have tab dot icon. There you go. And I'm going to say class name
9:23:249 hours, 23 minutes, 24 secondsheight dash4, width dash4, and we have shrink zero.
9:23:309 hours, 23 minutes, 30 secondsAnd after that here, I have tab label.
9:23:359 hours, 23 minutes, 35 secondsThere you go. And of course, I'm going to get outside of this aside here. And I'm going to create a div.
9:23:449 hours, 23 minutes, 44 secondsAnd that's going to be class name flex minimum height zero. Then we have minimum width zero. And then we have
9:23:529 hours, 23 minutes, 52 secondsflex one, flex dash call, and then we have overflow by
9:23:599 hours, 23 minutes, 59 secondsauto. And here I'm going to have those children. There you go, I guess. Yeah,
9:24:089 hours, 24 minutes, 8 secondsthat's it. All right, I'm going to close this one. And on the app dash sidebar here, we have this avatar. I'm going to
9:24:159 hours, 24 minutes, 15 secondswork on this avatar file. And we're going to include that component here.
9:24:219 hours, 24 minutes, 21 secondsand we're going to get get to see how it looks. So that goes under components.
9:24:279 hours, 24 minutes, 27 secondsThen here we have UI. I'm going to create a new file avatar.tsx.
9:24:369 hours, 24 minutes, 36 secondsAnd first of all, I'm going to bring UI theme. There you go. And this needs
9:24:439 hours, 24 minutes, 43 secondsactually import type UI theme. There you go.
9:24:489 hours, 24 minutes, 48 secondsAnd then I'm going to bring avatar fallback styles. There you go.
9:24:549 hours, 24 minutes, 54 secondsAnd also I need import CN.
9:24:599 hours, 24 minutes, 59 secondsAwesome. After that here we have type avatar props is equal to this where we
9:25:069 hours, 25 minutes, 6 secondshave name optional. It's going to be a string or null. Then we have image optional.
9:25:159 hours, 25 minutes, 15 secondsIt's going to be a string or null. Then we have size also optional.
9:25:239 hours, 25 minutes, 23 secondsIt's going to be small or medium or it's going to be large. Then we have
9:25:329 hours, 25 minutes, 32 secondsclass name optional as well. It's going to be a string. Then we have theme. This is
9:25:419 hours, 25 minutes, 41 secondsgoing to be UI theme. There you go.
9:25:469 hours, 25 minutes, 46 secondsAnd now here I'm going to say const size size styles is equal to this where we
9:25:529 hours, 25 minutes, 52 secondshave small height dash 7 width dash 7 and text dash xs
9:26:019 hours, 26 minutes, 1 secondand I'm going to get down md. This is going to be height dash 9 width-9
9:26:089 hours, 26 minutes, 8 secondstext dash small and then we have large
9:26:139 hours, 26 minutes, 13 secondsheight-11 width-11 text dash base. After that here we have function get initials.
9:26:259 hours, 26 minutes, 25 secondsThere you go. And here we have name which is going to be optional string or
9:26:319 hours, 26 minutes, 31 secondsnull. And then we have here if name is not available then we return question
9:26:399 hours, 26 minutes, 39 secondsmark. And then we have const parts is equal to name dot trim dotsplit.
9:26:509 hours, 26 minutes, 50 secondsThere you go. And here I'm going to provide it slash then backslash then s plus slash once
9:27:009 hours, 27 minutesagain. And there we have if parts dolength
9:27:069 hours, 27 minutes, 6 secondsis equal to 1 then we return parts zero
9:27:139 hours, 27 minutes, 13 secondsdot slice from 0 to two dot to uppercase. There
9:27:219 hours, 27 minutes, 21 secondsyou go. And we finally return here we have parts
9:27:279 hours, 27 minutes, 27 secondszero and then again zero indexed of that if that is there awesome otherwise we
9:27:349 hours, 27 minutes, 34 secondshave just an empty string there and then here I'm going to write another code block where we have parts zero sorry
9:27:449 hours, 27 minutes, 44 secondsparts one then zero of that and of course if that is there awesome otherwise we have an empty string once
9:27:529 hours, 27 minutes, 52 secondsagain and then to all that to upper case. There you go. Awesome. Now here
9:28:009 hours, 28 minutesI'm going to say export function avatar and I'm going to open that props here I
9:28:089 hours, 28 minutes, 8 secondsmean the argument where I'm going to say name then we have image also size is
9:28:159 hours, 28 minutes, 15 secondsgoing to be default set to MD we also have class name then we have theme is
9:28:229 hours, 28 minutes, 22 secondsequal to light and then this is whole thing is going to be type of avatar props open that function body and here
9:28:319 hours, 28 minutes, 31 secondswe have if image is there then we're going to say return this where we have
9:28:379 hours, 28 minutes, 37 secondsimg tag source is going to be image alt
9:28:439 hours, 28 minutes, 43 secondsis going to be if name is there then we are going to say name otherwise it's
9:28:499 hours, 28 minutes, 49 secondsgoing to be user avatar and then we have class name I'm going to say
9:28:589 hours, 28 minutes, 58 secondscn N and this is going to be rounded dash full. We have object cover and
9:29:059 hours, 29 minutes, 5 secondscomma size styles. This is going to be size here and another class name here.
9:29:149 hours, 29 minutes, 14 secondsLet me format and save that. And after this if statement here, I'm going to say return if there is no image.
9:29:239 hours, 29 minutes, 23 secondsThen we have a span. I'm going to say area hidden and that's going to be when name is not
9:29:329 hours, 29 minutes, 32 secondsthere and also here class name that's going to be CN and here I'm going to say inline dash
9:29:409 hours, 29 minutes, 40 secondsflex then we have items dash center we have justify center we have rounded dash
9:29:489 hours, 29 minutes, 48 secondsfull then we have font- medium and I'm going to put comma get down
9:29:549 hours, 29 minutes, 54 secondsavatar Fallback styles here we have theme then under here size styles here
9:30:019 hours, 30 minutes, 1 secondwe have size then we have class name here as well and now inside this span
9:30:089 hours, 30 minutes, 8 secondshere I'm going to say get initials and I'm going to provide it
9:30:159 hours, 30 minutes, 15 secondsthat name here. Awesome. I'm going to go to app sidebar file here. And here I'm
9:30:229 hours, 30 minutes, 22 secondsgoing to have that uh avatar. There you go. And to that
9:30:309 hours, 30 minutes, 30 secondsfirst of all, I'm going to give it size small. Then we have theme. I'm going to provide app. And of course, I'm not
9:30:379 hours, 30 minutes, 37 secondsgoing to provide the name and everything else for now. All right. I'm going to save that. Let's get back here. And
9:30:459 hours, 30 minutes, 45 secondsthere you go. We have this little question mark. And if I provide it my name, let's say Ali Maza. Save that. Hit back. And there you go. We get am here.
9:30:569 hours, 30 minutes, 56 secondsAnd of course, this name is going to be pulling from the authenticated user uh initials automatically for now.
9:31:059 hours, 31 minutes, 5 secondsLet's just keep it there. Awesome. All right. So, if I go to the browser, so this is the part that I would like to
9:31:129 hours, 31 minutes, 12 secondswork on now. And of course when you click on this one this account menu panel as well as this workspace are going to be worked on when basically we
9:31:219 hours, 31 minutes, 21 secondshave the authentication in place and the authentication will be implemented after the database uh integration.
9:31:299 hours, 31 minutes, 29 secondsSo that's coming a bit later. So now let's uh in order to work on this uh
9:31:369 hours, 31 minutes, 36 secondshome uh area basically there are a lot of little pieces that needs to be put together in order to make sure that the
9:31:459 hours, 31 minutes, 45 secondsfunctionality and the UI for this part is complete. So the very first file that I'm going to need to create is going to
9:31:539 hours, 31 minutes, 53 secondsbe the app data and that is going to go inside the lib folder here. I'm going to
9:31:599 hours, 31 minutes, 59 secondscreate a new file name it app-data.ts ts and this is going to be export const
Chapter 22: App home prompt shell
9:32:099 hours, 32 minutes, 9 secondsapp home example prompts is equal to this and here we have this little object
9:32:209 hours, 32 minutes, 20 secondsbasically three objects where we have label then we have text again label text label
9:32:279 hours, 32 minutes, 27 secondsand text that's pretty much it and then after that here I'm going to say export
9:32:339 hours, 32 minutes, 33 secondsfunction function get display name is equal to actually this is a function so
9:32:419 hours, 32 minutes, 41 secondshere we have name I'm going to say that's an optional and that's going to be either string or null then we have
9:32:509 hours, 32 minutes, 50 secondsemail optional string or null then we have
9:32:589 hours, 32 minutes, 58 secondsuser name optional string or null and Then of course here we have the function
9:33:059 hours, 33 minutes, 5 secondsbody. So if username is there we return username.
9:33:129 hours, 33 minutes, 12 secondsThen we have if name is there then we return name dotsplit
9:33:209 hours, 33 minutes, 20 secondsand we split that by the space and then we get the first element. It means the
9:33:269 hours, 33 minutes, 26 secondsfirst name and then we have otherwise it's just the name. All right. Then we
9:33:329 hours, 33 minutes, 32 secondshave if email is there then we return email dotsplit and we split from add and then we get
9:33:429 hours, 33 minutes, 42 secondsthe first element of course and otherwise it's just going to be there.
9:33:499 hours, 33 minutes, 49 secondsAll right. And here we have return there.
9:33:559 hours, 33 minutes, 55 secondsAnd I'm going to say export function get work
9:34:019 hours, 34 minutes, 1 secondspace label. And this is going to be work spaces is going to be equal to
9:34:089 hours, 34 minutes, 8 secondswhere we have name string. Slug is going to be a string. And this is is going to
9:34:149 hours, 34 minutes, 14 secondsbe an array. And then we have active slug. That's going to be optional and a
9:34:229 hours, 34 minutes, 22 secondsstring. There you go. And let's open the function body. And here we have const
9:34:299 hours, 34 minutes, 29 secondsworkspace is equal to workspaces dot find. We have single item here. And
9:34:399 hours, 34 minutes, 39 secondsthen on that we're going to say item dot slug. If that is equal to active slug
9:34:479 hours, 34 minutes, 47 secondsthat's there otherwise we have workspace says the first item from there awesome
9:34:549 hours, 34 minutes, 54 secondsand now here I'm going to say if workspace
9:35:019 hours, 35 minutes, 1 secondis not there then we return your workspace
9:35:099 hours, 35 minutes, 9 secondsand here we have return Yeah. And here we have return workspace
9:35:179 hours, 35 minutes, 17 secondsdot name dot ends with and here I'm going to say workspace
9:35:259 hours, 35 minutes, 25 secondsand to that and of course if that is there then we're going to say if that is true I mean workspace.name.ends ends
9:35:339 hours, 35 minutes, 33 secondswith if that is ending with workspace then we're going to say workspaces dot
9:35:399 hours, 35 minutes, 39 secondsname otherwise we're going to say let me put literals here and here I'm going to
9:35:469 hours, 35 minutes, 46 secondssay workspace hold on workspace dot name and then I'm I'm
9:35:549 hours, 35 minutes, 54 secondsgoing to put a comma here and then s workspace basically uh single code here
9:36:029 hours, 36 minutes, 2 secondsworkspace face. There you go. So that's that. And now the next file that I need
9:36:089 hours, 36 minutes, 8 secondsto modify is example prompts. And in here I'm going to first of all bring our app home
9:36:189 hours, 36 minutes, 18 secondsexample prompts. There you go. And then here under here I'm going to say app. And
9:36:269 hours, 36 minutes, 26 secondsthis is going to be a few things. So first of all we have wrapper here. flex
9:36:329 hours, 36 minutes, 32 secondsflex dash call items dash center and gap-3 and then we have
9:36:409 hours, 36 minutes, 40 secondslabel row this is going to be relative and we have flex items dash center and
9:36:499 hours, 36 minutes, 49 secondsgap dash two then we have label this is going to be text dash small text dash
9:36:579 hours, 36 minutes, 57 secondsapp dash text dashmuted. There you go.
9:37:049 hours, 37 minutes, 4 secondsAnd then we have refresh and that's going to be
9:37:109 hours, 37 minutes, 10 secondsflex height dash five width dash five items dash center we have justify
9:37:209 hours, 37 minutes, 20 secondsdash center we have rounded text- app-ext dashmuted
9:37:289 hours, 37 minutes, 28 secondswe have transition dash colors colors first. There you go. Then we have
9:37:369 hours, 37 minutes, 36 secondshover. It's going to be bg dash app dash surface dash hover. And
9:37:439 hours, 37 minutes, 43 secondsthen we have on hover text- app-ext dash secondary. And I'm going to put a comma here. Get down. And here we have chip.
9:37:549 hours, 37 minutes, 54 secondsAnd I'm going to say height dash8 rounded LG
9:38:029 hours, 38 minutes, 2 secondsborder border- app-chip dash border bg- app-chip-bg
9:38:149 hours, 38 minutes, 14 secondsbg dash app dash chip-bg and we have px-3
9:38:249 hours, 38 minutes, 24 secondstext dash is going to be 13 pixels. Then we have text dash app dash text dash
9:38:329 hours, 38 minutes, 32 secondssecondary. And then we have transition dash colors. And then we have hover
9:38:409 hours, 38 minutes, 40 secondsborder dash app dash border. And then we have
9:38:469 hours, 38 minutes, 46 secondson hover bg- app dash surface dash hover.
9:38:529 hours, 38 minutes, 52 secondsAnd then on hover it's going to be text- app dash text. Yeah, so many CS uh
9:38:589 hours, 38 minutes, 58 secondstailwind CSS classes. So now here I'm going to say I'm going to bring this down here and basically here I'm going
9:39:079 hours, 39 minutes, 7 secondsto say if variant is equal to landing then in that case
9:39:149 hours, 39 minutes, 14 secondsI'm going to be displaying example prompt sets set index this thing here otherwise this is going to be app home
9:39:239 hours, 39 minutes, 23 secondsexample prompt. There you go. And I think everything else can stay the same.
9:39:299 hours, 39 minutes, 29 secondsWe are already doing that here. All right. Now, we're going to need a few more helper files. And I'm going to
9:39:369 hours, 39 minutes, 36 secondsclose this one. And under the lib folder, I'm going to create a new file.
9:39:429 hours, 39 minutes, 42 secondsI'm going to name it prompt dash attachments.ts.
9:39:509 hours, 39 minutes, 50 secondsThere you go. And here we have export const. This is going to be max prompt
9:39:599 hours, 39 minutes, 59 secondsattachments is equal to 10. And we have export const max prompt
9:40:089 hours, 40 minutes, 8 secondsattachment underscore bytes is equal to 25 ultiplied by 1024
9:40:189 hours, 40 minutes, 18 secondsmultiplied by 1024 means 25 mgabytes. attachment.
9:40:269 hours, 40 minutes, 26 secondsYeah, that seems good. Okay. Now, here I'm going to say export
9:40:339 hours, 40 minutes, 33 secondsconstachments directory is going to be equal to
9:40:439 hours, 40 minutes, 43 secondsunderscore attachments. There you go.
9:40:499 hours, 40 minutes, 49 secondsNow here we have const allowed
9:40:569 hours, 40 minutes, 56 secondsextensions is equal to new set and here we have this array and this in this
9:41:049 hours, 41 minutes, 4 secondsarray I would like to paste these all extensions where we have jpg jpgpn gif webp and all that extensions
9:41:139 hours, 41 minutes, 13 secondsthat you can of course read and then after that here we have const
9:41:209 hours, 41 minutes, 20 secondsallowed underscore mime mime underscore types is equal to new set. And I'm going to open that.
9:41:319 hours, 41 minutes, 31 secondsAnd here we have all of the mime types that we allow for the user to upload to
9:41:389 hours, 41 minutes, 38 secondsour uh app. And then here we have export constachment
9:41:529 hours, 41 minutes, 52 secondsaccept is equal to this array. I'm going to paste these values here. And uh to that array I'm going to say dot join with the comma. There you go. Awesome.
9:42:059 hours, 42 minutes, 5 secondsHere we have export type prompt attachment is equal to this type. Here
9:42:149 hours, 42 minutes, 14 secondswe have id which is going to be a string and file which is going to be a file.
9:42:209 hours, 42 minutes, 20 secondsAll right. After that here we have function get extension. I'm going to say file name is going to be a string. Open that. Const parse is equal to file name.
9:42:349 hours, 42 minutes, 34 secondsAnd we say dotsplit and we're doing splitting that with the dot. Then we have return parts dot
9:42:449 hours, 42 minutes, 44 secondslength when that is more than one then we have
9:42:509 hours, 42 minutes, 50 secondsparts dot pop and on that I'm going to say when that is there then to dot
9:42:589 hours, 42 minutes, 58 secondslowerase because I don't want to run the function dot lowerase on the undefined and of course if that is there wonderful
9:43:089 hours, 43 minutes, 8 secondswe do this otherwise as we just have an empty string here. And again, we have this else statement here as well. We do
9:43:179 hours, 43 minutes, 17 secondsthe empty string. All right, I'm going to pull this up a little. And here, I'm going to say export function
9:43:259 hours, 43 minutes, 25 secondsvalidate prompt attachment. I'm going to bring a file that is supposed to be a file and it's
9:43:349 hours, 43 minutes, 34 secondsgoing to return a string or null. And let me open the function body. Here we
9:43:409 hours, 43 minutes, 40 secondshave if file dot size is equal to zero then we say return file is empty. There you go. Return.
9:43:549 hours, 43 minutes, 54 secondsThere you go. And after that here we have if file dot size is more than max prompt attachment bytes. There you go.
9:44:049 hours, 44 minutes, 4 secondsWe say return. And I'm going to say file name
9:44:119 hours, 44 minutes, 11 secondsexceeds the 25 MB limit. There you go. And after that here
9:44:199 hours, 44 minutes, 19 secondsI'm going to say const extension is equal to get extension and I'm going
9:44:269 hours, 44 minutes, 26 secondsto put file.name name here and then here I'm going to say const mime allowed
9:44:359 hours, 44 minutes, 35 secondsis equal to file type there you go when that's not true
9:44:459 hours, 44 minutes, 45 secondsor allowed mime types dot has
9:44:529 hours, 44 minutes, 52 secondsfile dot type or file dot type dot starts with
9:45:019 hours, 45 minutes, 1 secondimage slash there you go and now under here I'm
9:45:079 hours, 45 minutes, 7 secondsgoing to say const extension allowed is equal to extension
9:45:169 hours, 45 minutes, 16 secondsif that is true then we have allowed extension dot has extension
9:45:249 hours, 45 minutes, 24 secondsthere you go otherwise it's just going to be false. And here we have if mime
9:45:309 hours, 45 minutes, 30 secondsallowed is not true and we have extension allowed is not true either.
9:45:439 hours, 45 minutes, 43 secondsThere you go. Then in that case we're going to say return file name
9:45:529 hours, 45 minutes, 52 secondsis not a supported file type and there you go. After that here we have return
9:46:029 hours, 46 minutes, 2 secondsnull finally and after that function we have export
9:46:089 hours, 46 minutes, 8 secondsfunction format file size. It's going to take bytes
9:46:169 hours, 46 minutes, 16 secondswhich is going to be a number. Then here we have if bytes is less than 1024
9:46:259 hours, 46 minutes, 25 secondswe return here bytes and then B here. Then we have if
9:46:349 hours, 46 minutes, 34 secondsbytes is less than 1024 multiplied by 1024
9:46:429 hours, 46 minutes, 42 secondsthen we return here byes
9:46:509 hours, 46 minutes, 50 secondsdivided by 1024 dot to fixed one here and basically one
9:46:589 hours, 46 minutes, 58 secondsdecimal and KB here not KG G KB kilobytes sorry I guess I
9:47:069 hours, 47 minutes, 6 secondssorry not here but here KB there you go and then here
9:47:139 hours, 47 minutes, 13 secondsI'm going to say return bytes divided by here I have another set
9:47:229 hours, 47 minutes, 22 secondsof parenthesis where we have 1024 divided by 1024
9:47:289 hours, 47 minutes, 28 secondsdot to fixed one and here I'm going to say MB. There you go.
9:47:389 hours, 47 minutes, 38 secondsExport function create prompt attachment file which is going to be
9:47:469 hours, 47 minutes, 46 secondsfile return prompt attachment and open function body. We have return
9:47:549 hours, 47 minutes, 54 secondshere. Open that here. And then we have id which is going to be
9:48:039 hours, 48 minutes, 3 secondsfile dot name. Put a dash here. Then we have file dot size a dash here. Then
9:48:129 hours, 48 minutes, 12 secondsagain file.ast modified put a dash here. And then again here I'm going to say
9:48:219 hours, 48 minutes, 21 secondscrypto dot random uyu ID. There you go.
9:48:289 hours, 48 minutes, 28 secondsAnd here I have the file as well.
9:48:329 hours, 48 minutes, 32 secondsThere you go. Awesome. So with that this helper function is done and we definitely can can now use this prompt
9:48:399 hours, 48 minutes, 39 secondsattachment in a lot of files which of course we will be doing. I'm going to close this file and also this app data
9:48:489 hours, 48 minutes, 48 secondsas well and don't need the avatar loading
9:48:539 hours, 48 minutes, 53 secondsand this yeah so this app page this is where we need to work on now and
9:49:029 hours, 49 minutes, 2 secondswe need to create a component that eventually is going to be put here and that component is going to render the
9:49:109 hours, 49 minutes, 10 secondslayout of I mean the UI of this app page. So for that first of all
9:49:179 hours, 49 minutes, 17 secondsI'm going to collapse everything and I'm going to go under components then we have app here and instead of shell
9:49:259 hours, 49 minutes, 25 secondsinside the app I'm going to create a new folder name it home and under home I have a new file I'm going to call it
9:49:339 hours, 49 minutes, 33 secondsapp-home.tsx tsx and it's going to be a client component
9:49:409 hours, 49 minutes, 40 secondsand then I'm going to need use search params from next navigation use effect
9:49:489 hours, 49 minutes, 48 secondsalso use ref here and use state and use
9:49:569 hours, 49 minutes, 56 secondstransition then I'm going to need category carousel our component that we created then also example prompts that
9:50:069 hours, 50 minutes, 6 secondswe just completed. And then we also need get display name from our app data. And
9:50:169 hours, 50 minutes, 16 secondsthen here I'm going to import type project category from our types.
9:50:269 hours, 50 minutes, 26 secondsAnd here we finally need use toast as well. All right. So I'm going to write a
9:50:339 hours, 50 minutes, 33 secondstype here app home props is equal to this type where we have user and object
9:50:419 hours, 50 minutes, 41 secondswhere we have name optional string or null then we have email also optional
9:50:499 hours, 50 minutes, 49 secondsstring or null. Then we have image optional string or null. There you go. Let me format that.
9:51:009 hours, 51 minutesAnd here we have export function app home. And here we have user
9:51:119 hours, 51 minutes, 11 secondsapp home props. And I'm going to open function body. And here we have const
9:51:179 hours, 51 minutes, 17 secondssearch params is equal to use search params.
9:51:249 hours, 51 minutes, 24 secondsThere you go. We also have const error which is going to be toast.
9:51:329 hours, 51 minutes, 32 secondsI'm going to name it toast editor and that's going to be extracted from use toast. There you go. Let me format that.
9:51:419 hours, 51 minutes, 41 secondsI'm going to pull that up. And here I'm going to need const
9:51:469 hours, 51 minutes, 46 secondseditor and set editor. And that is going to be equal to use state where
9:51:559 hours, 51 minutes, 55 secondswe have either it's going to be string or null. And this is going to be it
9:52:029 hours, 52 minutes, 2 secondsinitiated by null as well. And then we have const
9:52:109 hours, 52 minutes, 10 secondsis pending. And then we have start transition is going to be equal to use
9:52:189 hours, 52 minutes, 18 secondstransition. There you go. And of course we have const auto
9:52:269 hours, 52 minutes, 26 secondsstarted reference is equal to use ref false by default.
9:52:339 hours, 52 minutes, 33 secondsLet me check auto started reference. Yeah, all good.
9:52:399 hours, 52 minutes, 39 secondsAnd here we need const display name is going to be equal to get display name. And I'm going to add user
9:52:489 hours, 52 minutes, 48 secondsdot name and also user dot email here.
9:52:539 hours, 52 minutes, 53 secondsAwesome. And now here we finally have the return. And I'm going to display a main here. Give it class name flex
9:53:029 hours, 53 minutes, 2 secondsminimum- height dash zero. And then we have flex one flex call as well and overflow y auto.
9:53:129 hours, 53 minutes, 12 secondsOpen that main. And here we have div class name flex width dash full flex one
9:53:199 hours, 53 minutes, 19 secondsflex call and then we have items dash center justify dash center px
9:53:289 hours, 53 minutes, 28 seconds4 py 8 and tablet up this is going to be px8
9:53:359 hours, 53 minutes, 35 secondsopen that div and here we have h1 and to that I'm going to provide some
9:53:409 hours, 53 minutes, 40 secondsclasses max width 3 xl L text center
9:53:469 hours, 53 minutes, 46 secondstext center we have also font display text is going to be 32 px font is going
9:53:559 hours, 53 minutes, 55 secondsto be normal leading is going to be tight then we have tracking that's going to be changed to minus0.03 03 em.
9:54:079 hours, 54 minutes, 7 secondsAnd then we have text app text. And then we have tablet up. This is going to be
9:54:159 hours, 54 minutes, 15 secondstext dash 40px. And that is going to display hi display name.
9:54:269 hours, 54 minutes, 26 secondsWhat do you want to make? Awesome. And let me format that. And now inside this
9:54:349 hours, 54 minutes, 34 secondspage here, I would like to display app here. And of course, it's going to cause
9:54:419 hours, 54 minutes, 41 secondsissues because it requires the user here. So I'm just going to make that optional.
9:54:499 hours, 54 minutes, 49 secondsAnd now here we have this issue.
9:54:539 hours, 54 minutes, 53 secondsThere you go. And there you go. That has been sorted out. And now if we go to our browser.
9:55:029 hours, 55 minutes, 2 secondsAwesome. So this is what we see. Hi there. What do you want to make? Now we see there there because I just made the
9:55:119 hours, 55 minutes, 11 secondsname optional. Let's go back here and keep on building. So after the H1 here I'm going to create another div.
9:55:209 hours, 55 minutes, 20 secondsI'm going to give it some class names like margin top-8. We have width dash full. Max width is going to be
9:55:289 hours, 55 minutes, 28 secondscustom value of 720px and in there we have a very very important component a
9:55:369 hours, 55 minutes, 36 secondspart of that component that we have been building from the very beginning basically this is what you see here if I
9:55:449 hours, 55 minutes, 44 secondsgo to here. So this is the component that we have been building but that has been built in line so far. Eventually,
9:55:539 hours, 55 minutes, 53 secondsthis whole thing is going to be cut from the inline code and going to be pasted
9:56:009 hours, 56 minutesinside a new component file where will be a lot of more code than what it already is for this specific component
9:56:099 hours, 56 minutes, 9 secondsand then that component is going to be used for both homepage as well as for the app page here as well. So I'm going
9:56:189 hours, 56 minutes, 18 secondsto get back here and here I'm going to create a comment for app prompt
9:56:259 hours, 56 minutes, 25 secondsinput and that is the component that we're going to create but of course
9:56:319 hours, 56 minutes, 31 secondsthat's coming later. So for now app prompt
9:56:389 hours, 56 minutes, 38 secondsinput there you go and then of course after that here after that p tag here I'm going to display error if error is
9:56:479 hours, 56 minutes, 47 secondsthere then I'm going to display this otherwise it's going to be null and in this area I'm going to display a p tag
9:56:549 hours, 56 minutes, 54 secondsI'm going to say display that error there and this p tag needs some class
9:57:009 hours, 57 minutesnames margin top dash3 text dash center text dash small text- replet orange
9:57:089 hours, 57 minutes, 8 secondsthere you go text dash replet orange come on
9:57:159 hours, 57 minutes, 15 secondsthere you go awesome and now after this error here I'm going to display is
9:57:239 hours, 57 minutes, 23 secondspending if that is true we're going to display this otherwise it's just going to be null and in case of true there's going
9:57:329 hours, 57 minutes, 32 secondsto be a P tag which is going to say creating your project dot dot dot
9:57:399 hours, 57 minutes, 39 secondsand P tag is have having some classes like margin top dash3 text dash center and then we have text
9:57:489 hours, 57 minutes, 48 secondsdash small there you go and we have text dash app text muted there you go I'm going to
9:57:569 hours, 57 minutes, 56 secondspull it up and uh after this div here I'm going to create Another div. I'm going to give it a class name MX- auto.
9:58:059 hours, 58 minutes, 5 secondsThen we have margin top. That's going to be 171 pixels. Sorry, not 171, 17 pixels.
9:58:129 hours, 58 minutes, 12 secondsThen we have width dash full max width hero prompt. And then we have tablet up max width hero prompt
9:58:219 hours, 58 minutes, 21 secondstablet. There you go. And now inside that div here, we have category carousel. There you go. And this one I'm going to say variant is going to be app.
9:58:349 hours, 58 minutes, 34 secondsAnd uh if I go to app is not accessible to type landing. Okay. So if I go here, we have category carousel here.
9:58:469 hours, 58 minutes, 46 secondsAnd seems like we are missing. Yes, we haven't done that part for the category carousel. So I'm going to cut down here.
9:58:539 hours, 58 minutes, 53 secondsWe have app. And for that I'm going to say adder.
9:58:589 hours, 58 minutes, 58 secondsAnd we for the arrow we have flex height dash 7 width dash 7. We also have shrink
9:59:079 hours, 59 minutes, 7 secondsdash zero items dash center just
9:59:139 hours, 59 minutes, 13 secondsdash center rounded dash 6 pixels. Then we have bg- app-carrow.
9:59:239 hours, 59 minutes, 23 secondsAnd then we have text dash app-ext dash secondary. We have transition dash
9:59:349 hours, 59 minutes, 34 secondsbackground dash color, transform. And then we also have duration dash 150
9:59:429 hours, 59 minutes, 42 secondsease dash out. Then we have enabled hover dash enabled.
9:59:509 hours, 59 minutes, 50 secondsAnd then on hover it's going to be bg d- app- surface dash hover. And then we have on
9:59:599 hours, 59 minutes, 59 secondsenabled. And then active. This is going to be scale- 95. And then we have on
10:00:0710 hours, 7 secondsenabled and active. This is going to be bg- app
10:00:1610 hours, 16 secondsdash surface dash active and then on disable this is going to be cursor
10:00:2410 hours, 24 secondsdash default. Let me format that.
10:00:2910 hours, 29 secondsAnd then under that here we need category icon. And for that I'm going to say flex h12
10:00:3910 hours, 39 secondswidth -12 items dash center justify
10:00:4610 hours, 46 secondsdash center rounded to excel border border- app-category dashborder.
10:00:5610 hours, 56 secondsThere you go. Then we have bg- app dash category dashbg. And then we have text
10:01:0510 hours, 1 minute, 5 secondsdash app dash text transition dash
10:01:1410 hours, 1 minute, 14 secondsbackground dash color and border dash color and transform.
10:01:2210 hours, 1 minute, 22 secondsThen we have duration dash 150. And we have e is
10:01:2910 hours, 1 minute, 29 secondsdash out. We also have group dash hover border- app-border
10:01:3510 hours, 1 minute, 35 secondsand then we have group hover bg- app dash surface dash hover then we have
10:01:4410 hours, 1 minute, 44 secondsgroup dash active this is going to be scale dash 0.97
10:01:5310 hours, 1 minute, 53 secondsand then we have group dash active border dash
10:02:0010 hours, 2 minutesapp dash border and group dash active bg dash app dash surface dash active. There you go.
10:02:1310 hours, 2 minutes, 13 secondsAnd then here I'm going to need category label. This is going to be PD-1
10:02:2010 hours, 2 minutes, 20 secondstext dash center text- access leading is going to be 18 pixels text dash app dash
10:02:3010 hours, 2 minutes, 30 secondstext dash secondary comma get down we have selected icon
10:02:4010 hours, 2 minutes, 40 secondsand this is going to be border dash replet orange/ /40. We also need bg-ab-ash
10:02:5010 hours, 2 minutes, 50 secondssurface dash active and then text dash replet dash orange as well.
10:03:0010 hours, 3 minutesThere you go. I missed an S here. So, it needs to be bg- app surface hover uh group active scale 0.97.
10:03:1310 hours, 3 minutes, 13 secondsWe have group dash active border app border group active bg app surface active and uh bleeding.
10:03:2510 hours, 3 minutes, 25 secondsOkay. Selected icon border replet orange.
10:03:3010 hours, 3 minutes, 30 secondsAll right. Everything is good. Save that. And I'm going to get back to the
10:03:3610 hours, 3 minutes, 36 secondsapp home file here. So for now I'm going to go to category carousel here and I'm going to we have this type here. I'm
10:03:4510 hours, 3 minutes, 45 secondsgoing to this is null and I'm going to make this optional null as well. So we have selected category ID. I'm going to
10:03:5410 hours, 3 minutes, 54 secondspaste that there and this is going to be null for now. And then we have on
10:04:0210 hours, 4 minutes, 2 secondscategory toggle and I'm going to make that null here as well.
10:04:0910 hours, 4 minutes, 9 secondsAnd seems like we have null is not assignable to type category. Okay. So for the on category toggle I'm going to
10:04:1710 hours, 4 minutes, 17 secondsgo up here above the return and here I'm going to create a function handle
10:04:2510 hours, 4 minutes, 25 secondscategory toggle and here we have category which is going to be a project category type. I'm going to open that
10:04:3310 hours, 4 minutes, 33 secondsfunction and for now I'm just going to do a console.log and this is going to display that
10:04:4110 hours, 4 minutes, 41 secondscategory. There you go. Let me format that. Save that. Copy this one. Let's go to here. Paste that over there. And that
10:04:5010 hours, 4 minutes, 50 secondserror is gone. And now if we can go to our Well, we have a few issues. Well,
10:04:5710 hours, 4 minutes, 57 secondsthis thing is there and working. But the issue that we have is
10:05:0510 hours, 5 minutes, 5 secondsthat this needs to be centered. So if I go to page.tx. Yeah, this div needs to
10:05:1210 hours, 5 minutes, 12 secondsbe removed. There you go. Let me format that. Let's get back here. And there you go. That's in center. Of course, this is going to be eventually changed. So for
10:05:2110 hours, 5 minutes, 21 secondsnow, I'm going to get here and just going to give it class name text dash center. There you go. And
10:05:3110 hours, 5 minutes, 31 secondsyeah, that's going to be our prompt. And of course, that category toggle is going to be I
10:05:3910 hours, 5 minutes, 39 secondsmean, it works great, really good. If we go on the app on the homepage, if you click that, that's the toggle. It
10:05:4810 hours, 5 minutes, 48 secondschanges to switch. If you click that, uncclick that. And of course, it works like that. But that is not working on
10:05:5610 hours, 5 minutes, 56 secondshere because we haven't actually we are only actually you know what let's go to the inspect here go to console and if I
10:06:0510 hours, 6 minutes, 5 secondsclick on that on category toggle is not a function okay
10:06:1210 hours, 6 minutes, 12 secondsso on category toggle here if we go here it says that it's not a function
10:06:2010 hours, 6 minutes, 20 secondsokay so here I have been looking And basically here first of all this is not uh regarding that I mean that issue is
10:06:2910 hours, 6 minutes, 29 secondsnot there at all. This was just a reload problem. So here I missed a class that's
10:06:3610 hours, 6 minutes, 36 secondsgoing to be text 2 F34
10:06:4410 hours, 6 minutes, 44 seconds2F 3034. Yeah. So that's it. And then I have this little error. So if I keep
10:06:5210 hours, 6 minutes, 52 secondsgoing down here under this button. Yeah, this needs to be width-4.
10:07:0510 hours, 7 minutes, 5 secondsAnd uh let's go back here and let me do a very hard reload. I mean hard reload.
10:07:1210 hours, 7 minutes, 12 secondsAnd click on that. And there you go. We have ID, website, label, website, and slides and animation. Everything is still there. I mean everything is
10:07:2010 hours, 7 minutes, 20 secondsworking. This was just a little typo. If this is not working for you, just close the server and do that npm rundev once
10:07:3110 hours, 7 minutes, 31 secondsagain. And that should fix the issue for you. And just close this one. Hide this one. Yeah. All right. I'm going to go back to my code editor. Close this one.
10:07:4310 hours, 7 minutes, 43 secondsAnd not this file, but to the app-home.
10:07:4710 hours, 7 minutes, 47 secondsAnd now after this div here, I'm going to create another div. I'm going to give it a class name margin top-10
10:07:5510 hours, 7 minutes, 55 secondswidth full. Max width is going to be here 720 pixels. Open that. And here I'm
10:08:0310 hours, 8 minutes, 3 secondsgoing to add example prompts. There you go. Let me format and save everything. And here we have variant app.
10:08:1210 hours, 8 minutes, 12 secondsAnd uh if I save that and go back here and there you go. If I click on that, it does not toggle yet that yet because
10:08:2210 hours, 8 minutes, 22 secondsthere is one more that basically there's one function needed like on select and that is still
10:08:3210 hours, 8 minutes, 32 secondsnot ready yet because for that we're going to need another file which is going to host all of those sort of uh
10:08:3910 hours, 8 minutes, 39 secondsfunctions that are going to be later on used here in this file.
10:08:4410 hours, 8 minutes, 44 secondsAll right. So in terms of UI, most of this page is done and but we still need to work on the input and of course that
10:08:5310 hours, 8 minutes, 53 secondsinput holds uh an icon for the attachment. I have one icon for the mic, one for the starting and initiating the
10:09:0210 hours, 9 minutes, 2 secondsproject and all that. And of course that is exactly the thing that we're going to work on next. All right, let's get started working on the app prompt input.
10:09:1110 hours, 9 minutes, 11 secondsI'm going to go to my code editor and I am going to close let's actually close everything
10:09:1910 hours, 9 minutes, 19 secondshere for now and let's collapse everything here. I'm going to go under components app home and in here I have a
10:09:2710 hours, 9 minutes, 27 secondsnew file app dash prompt dash input.tsx tsx
10:09:3410 hours, 9 minutes, 34 secondsfirst of all it's a client component and then we have use effect also use ref and
10:09:4510 hours, 9 minutes, 45 secondsuse state coming from react then we also need import type project category
10:09:5410 hours, 9 minutes, 54 secondsthere you go hold on yeah and then we also need import type prompt attachment. There you go.
10:10:0710 hours, 10 minutes, 7 secondsAnd I'm going to make sure that it's using the emp% uh add operator here. And
10:10:1410 hours, 10 minutes, 14 secondsthen we have import format file size.
10:10:2110 hours, 10 minutes, 21 secondsWe also need CN here and category icon as well. And here I'm going to do a type
10:10:3110 hours, 10 minutes, 31 secondsapp prompt input props is equal to this where we have value
10:10:3810 hours, 10 minutes, 38 secondsstring on change is going to be a function which is going to take a value which is going to be a string and it's
10:10:4610 hours, 10 minutes, 46 secondsnot going to return anything. Then we have on submit
10:10:5310 hours, 10 minutes, 53 secondsoptional function value which is string void and then we have selected
10:11:0310 hours, 11 minutes, 3 secondscategory optional and it's going to be project
10:11:0910 hours, 11 minutes, 9 secondscategory type or null. And then we have on remove category optional and this is
10:11:1810 hours, 11 minutes, 18 secondsgoing to be a function which is not going to return anything. Then we have
10:11:2710 hours, 11 minutes, 27 secondsattachments and that's going to be optional as well. And we have prompt attachment.
10:11:3510 hours, 11 minutes, 35 secondsThere you go. Type of uh I mean array of that type. Then we have on attachment
10:11:4410 hours, 11 minutes, 44 secondson attachments change optional. We have attachments
10:11:5210 hours, 11 minutes, 52 secondsprompt attachments array and that's going to be a void function. There you go. This should be p uh s here.
10:12:0110 hours, 12 minutes, 1 secondAttachments uh sorry not s but empty.
10:12:0510 hours, 12 minutes, 5 secondsYeah. Array that here. And then we need plan mode. That's going to be
10:12:1310 hours, 12 minutes, 13 secondsboolean. And then we need on plan mode change. This is going to be
10:12:2110 hours, 12 minutes, 21 secondsenabled boolean. And that's going to be a void function. Then we have on error.
10:12:3010 hours, 12 minutes, 30 secondsThis is going to be taking a message which is going to be a string and it's going to be a void function. Then we
10:12:3810 hours, 12 minutes, 38 secondshave disabled boolean. Then we have a variant optional
10:12:4610 hours, 12 minutes, 46 secondsapp or landing. There you go. Now here I'm going to bring it up and here I'm
10:12:5210 hours, 12 minutes, 52 secondsgoing to say function category tag and in there I have a
10:13:0010 hours, 13 minutescategory and also on remove and also variant which is going to be equal to
10:13:0710 hours, 13 minutes, 7 secondsapp. This is going to be type where we have category is supposed to be a
10:13:1410 hours, 13 minutes, 14 secondsproject category and then we have on remove which is supposed to be a function void then we have variant
10:13:2510 hours, 13 minutes, 25 secondsapp and landing and let's open the function body here
10:13:3110 hours, 13 minutes, 31 secondsawesome here we have this return in which I have this span and I'm going to
10:13:3810 hours, 13 minutes, 38 secondssay class name and I'm going to say CN and in there I have inline
10:13:4710 hours, 13 minutes, 47 secondsflex then also items center gap- 1.5 after that here I have variant if the
10:13:5610 hours, 13 minutes, 56 secondsvariant is going to be equal to landing then in that case it's going to be H d-8
10:14:0610 hours, 14 minutes, 6 secondsrounded LG BG G dash hash D3
10:14:1210 hours, 14 minutes, 12 secondsE3 and FF. Then we have PX2
10:14:1810 hours, 14 minutes, 18 secondstext small text dash hash 18 a3 F8F.
10:14:2710 hours, 14 minutes, 27 secondsThere you go. And in case of false this is going to be H-7.
10:14:3510 hours, 14 minutes, 35 secondsWe have rounded MD. Then we have bg app surface active. Then we have px2
10:14:4210 hours, 14 minutes, 42 secondstext access. And then we have text app text secondary. There you go.
10:14:4910 hours, 14 minutes, 49 secondsI'm going to open that span here. And I have a category icon. And I'm going to provide
10:14:5710 hours, 14 minutes, 57 secondsicon to this which is going to be category dot icon. There you go. And
10:15:0510 hours, 15 minutes, 5 secondsthen after that I have another span to which I'm going to add this class name where I have if variant is equal to
10:15:1410 hours, 15 minutes, 14 secondslanding then this is going to be font dash medium otherwise it's going to be
10:15:2110 hours, 15 minutes, 21 secondsundefined. I'm going to open that span and here we have category dot label.
10:15:2810 hours, 15 minutes, 28 secondsThere you go. Let me format that. And then after that span here I'm going to create a button here. To that button I'm
10:15:3810 hours, 15 minutes, 38 secondsgoing to add a type which is going to be button. And then we have on click here which is going to be on remove. And then
10:15:4710 hours, 15 minutes, 47 secondswe have class name CN. And I'm going to add
10:15:5510 hours, 15 minutes, 55 secondsflex h dash 4 width dash4
10:16:0310 hours, 16 minutes, 3 secondsitems center justify center and round it and after that here I need variant if
10:16:1210 hours, 16 minutes, 12 secondsthat variant is equal to landing then here I'm going to say it's going to
10:16:1810 hours, 16 minutes, 18 secondsbe text dash hash 1 A3 F
10:16:2510 hours, 16 minutes, 25 seconds8F. There you go. And then we have actually 70% opacity of that. Then we have on hover it's going to be
10:16:3410 hours, 16 minutes, 34 secondshover bg dash dash 18
10:16:4110 hours, 16 minutes, 41 seconds3 f8f /ash 10. There you go.
10:16:4910 hours, 16 minutes, 49 secondsThen we have on hover once again this is going to be text dash
10:16:5510 hours, 16 minutes, 55 secondsdash 1 a3f 8F and uh in case of false this is going to
10:17:0310 hours, 17 minutes, 3 secondsbe text- app text muted and then here we have on hover
10:17:1110 hours, 17 minutes, 11 secondsit's going to be text- app text let me format that and then here I'm
10:17:1810 hours, 17 minutes, 18 secondsgoing going to also add area label which is going to be remove
10:17:2510 hours, 17 minutes, 25 secondscategory dot label. There you go. And inside this button here, I'm going to paste this SVG which of course you can
10:17:3410 hours, 17 minutes, 34 secondsget from the GitHub repo. And then after this function here I'm going to say
10:17:4010 hours, 17 minutes, 40 secondsexport function app prompt input in which I have a lot of types. So
10:17:5010 hours, 17 minutes, 50 secondsI'm going to just copy these from there and paste them over here and dot comma comma comma here.
10:18:0310 hours, 18 minutes, 3 secondsLet me just update all of them real quick and
10:18:1110 hours, 18 minutes, 11 secondshere as well also here.
10:18:1910 hours, 18 minutes, 19 secondsAnd there you go. And this whole thing is going to be a type of app prompt
10:18:2710 hours, 18 minutes, 27 secondsinput props. And there we have our uh function body. But there is one thing that attachments
10:18:3310 hours, 18 minutes, 33 secondsneeds to be an empty by default and plan mode needs to be false by default and
10:18:4110 hours, 18 minutes, 41 secondsthen the variant we are going to add that make sure we're going to make sure that this is app by default as well. So
10:18:4910 hours, 18 minutes, 49 secondsthat's pretty much it. Now inside the function body here we have const is
10:18:5710 hours, 18 minutes, 57 secondslanding is equal to uh variant when that is equal to
10:19:0510 hours, 19 minutes, 5 secondslanding. There you go. Then we have con text area reference is equal to use ref
10:19:1310 hours, 19 minutes, 13 secondsand here we have HTML text area element and this is going to be null by default
10:19:2210 hours, 19 minutes, 22 secondsconst uh here we have I'm going to say
10:19:2810 hours, 19 minutes, 28 secondsattachment dialogue open with a capital D
10:19:3510 hours, 19 minutes, 35 secondsand that attachment dialogue open is equal to use state it's going to be false.
10:19:4410 hours, 19 minutes, 44 secondsThen we have const as value is equal to boolean
10:19:5110 hours, 19 minutes, 51 secondsboolean and in there we have value dot trim. There you go. And we have const as
10:20:0110 hours, 20 minutes, 1 secondattachments is equal to attachments dotlength is more than zero. And then we
10:20:0910 hours, 20 minutes, 9 secondshave con can submit is equal to has value or has attachments.
10:20:1810 hours, 20 minutes, 18 secondsAll right. There's going to be one more and that is const speech preferences
10:20:2610 hours, 20 minutes, 26 secondsreference is equal to use ref and in here I'm going to add value. There you
10:20:3310 hours, 20 minutes, 33 secondsgo. Now here I'm going to have a return in which I have this empty fragment. I'm going to open that. And here first of
10:20:4210 hours, 20 minutes, 42 secondsall I'm going to say that this is going to be a prompt attachment dialogue. basically this
10:20:4910 hours, 20 minutes, 49 secondscomponent which does not exist yet. It's just a placeholder.
10:20:5410 hours, 20 minutes, 54 secondsAnd then after that we need a div tag not here but here inside the fragment.
10:21:0610 hours, 21 minutes, 6 secondsAll right. And that div tag is going to have a class name CN. Open that. And here we have first of
10:21:1410 hours, 21 minutes, 14 secondsall we're going to check if it's landing and if that's true then we have relative
10:21:2410 hours, 21 minutes, 24 secondsisolate and also width dash full and otherwise this is going to be relative
10:21:3010 hours, 21 minutes, 30 secondswidth dash full rounded to excel there you go and we have border border
10:21:4010 hours, 21 minutes, 40 secondsapp input border also BG app prompt BG
10:21:4610 hours, 21 minutes, 46 secondsapp prompt BG then we have shadow and that is going to be insert_0_1
10:21:5510 hours, 21 minutes, 55 secondspx_0 rgba
10:22:0110 hours, 22 minutes, 1 second25 to 55 to 55 to 55 to 55
10:22:0710 hours, 22 minutes, 7 seconds0.03 03. There you go. And now in there I have this is landing.
10:22:1810 hours, 22 minutes, 18 secondsThen we do this otherwise it's going to be null. So basically we are just making sure that we're going to display this only when
10:22:2710 hours, 22 minutes, 27 secondsthe page is landing page. In that case we have this div. I have a class name
10:22:3510 hours, 22 minutes, 35 secondspointer-ashevents none and then we have absolute minus insert 2.5 and then we have minus z10.
10:22:4710 hours, 22 minutes, 47 secondsWe also have animate and I'm going to change that to glow dash fade dashin
10:22:5510 hours, 22 minutes, 55 secondsunderscore 0.5 seconds underscore ease dash
10:23:0110 hours, 23 minutes, 1 secondis dash out underscore forwards and then here we have rounded
10:23:0810 hours, 23 minutes, 8 secondsto excel we have bg dash rgba and we have 253
10:23:1610 hours, 23 minutes, 16 secondscomma 84 comma 2 comma 075.
10:23:2510 hours, 23 minutes, 25 secondsAfter that, here we have blur and I'm going to change that to 50 pixels. Let me format that. And that's pretty much
10:23:3410 hours, 23 minutes, 34 secondsit. We can get rid of the closing and make it self-closing tag here. All right. Now if you remember that we have
10:23:4210 hours, 23 minutes, 42 secondssomething similar in the uh components then uh we have landing and here we have
10:23:5010 hours, 23 minutes, 50 secondshero if we go for the prompt area. So in there we have this thing. So I'm going
10:23:5810 hours, 23 minutes, 58 secondsto basically grab that from this div from here to
10:24:0710 hours, 24 minutes, 7 secondsthis div over here. So, I'm going to copy that and paste that
10:24:1510 hours, 24 minutes, 15 secondsover here after this null here.
10:24:2010 hours, 24 minutes, 20 secondsThere you go. Let me format that. And now, of course, there are going to be a lot of things that needs to be put here.
10:24:2810 hours, 24 minutes, 28 secondsFirst of all, this icons. So, let me know where these are. Yeah, plan icon
10:24:3610 hours, 24 minutes, 36 secondsthen mic icon and let me put these both icons. I'm going to copy them
10:24:4310 hours, 24 minutes, 43 secondsfrom here. Eventually this code and also this code is going to be get rid of from here and we're going to use this component over here. So for now I'm just going to put this on the very bottom.
10:24:5410 hours, 24 minutes, 54 secondsThere you go. So we have those icons here now.
10:24:5910 hours, 24 minutes, 59 secondsSo what I need now is that here I'm going to say CN and then this is
10:25:0610 hours, 25 minutes, 6 secondsrelative and here I'm going to say is lending only then we are going to display this
10:25:1610 hours, 25 minutes, 16 secondsthis text here and then after that here I'm going to say is lending and
10:25:2410 hours, 25 minutes, 24 secondscan submit or select category only in that case we're going to have
10:25:3210 hours, 25 minutes, 32 secondsthis minimum dash height dash 120px I'm going to put a comma get down is landing
10:25:4110 hours, 25 minutes, 41 secondsand here I'm going to say can submit actually yeah this needs to yeah this
10:25:4810 hours, 25 minutes, 48 secondscannot submit and selected category is not true in that
10:25:5610 hours, 25 minutes, 56 secondscase we're going to say minimum- height dash 88 pixels. There you go. And now, let me
10:26:0410 hours, 26 minutes, 4 secondsdo one thing real quick. So, I'm going to go to my app-home.tsx
10:26:1210 hours, 26 minutes, 12 secondsfile. And in there, instead of this, I'm going to display app prompt input. There you go. And of
10:26:2110 hours, 26 minutes, 21 secondscourse, this needs a lot of uh props here.
10:26:2610 hours, 26 minutes, 26 secondsAnd the one thing that I'm going to do right now, well, if we go here, we have the issue with the value. And that value
10:26:3410 hours, 26 minutes, 34 secondsis going to be coming from something external, which we do not have yet. So, I'm just going to put a value like
10:26:4110 hours, 26 minutes, 41 secondstesting. Let's say that. Save that. And if we get back here, and there you go.
10:26:4810 hours, 26 minutes, 48 secondsWe have our text area. And of course we need to make sure that plan mode gets activated only when it is really active.
10:26:5810 hours, 26 minutes, 58 secondsAnd so for the I mean these icons this uh of obviously this attachment dialogue is not ready there and we cannot type
10:27:0710 hours, 27 minutes, 7 secondsanything in there. Well, we can but it's not properly styled yet and that everything is going to be done
10:27:1310 hours, 27 minutes, 13 secondseventually step by step. So I'm going to get back here. We do not need this file. I'm going to close that one.
10:27:2210 hours, 27 minutes, 22 secondsAnd in here I'm going to go for yeah here. So under this I'm going to create
10:27:3110 hours, 27 minutes, 31 secondssomething I'm going to say attachments
10:27:3710 hours, 27 minutes, 37 secondsdotlength when that is more than zero then we have this otherwise for now I'm just going to
10:27:4610 hours, 27 minutes, 46 secondsmake it null. And in there I have this div. I'm going to give it a class name CN. And I'm going to say flex.
10:27:5810 hours, 27 minutes, 58 secondsLet me actually get down here. Flex. And then also flex wrap. And then gap of
10:28:0510 hours, 28 minutes, 5 secondstwo. And then we have landing. And then I'm going to say px 3 pt is going to be
10:28:1310 hours, 28 minutes, 13 secondsthree here as well. Otherwise here it's going to be px 4 and pt4.
10:28:2210 hours, 28 minutes, 22 secondsLet me format that. And now here let me open that div here. And now in there I'm going to say attachments
10:28:3210 hours, 28 minutes, 32 secondsdot map. And in there I have single attachment to each. I'm going to run this iteration where I have this span.
10:28:4110 hours, 28 minutes, 41 secondsI'm going to add it a key to that attachment do ID then we have class name
10:28:4910 hours, 28 minutes, 49 secondsand this is going to be CN here and open that here we have inline dash flex max-
10:28:5610 hours, 28 minutes, 56 secondswidth dash full and then we have items center gap 2 rounded md and then we have
10:29:0410 hours, 29 minutes, 4 secondspx2.5 py 1.5 and we have text xs S.
10:29:1210 hours, 29 minutes, 12 secondsThere you go. And now I'm going to get down here. I'm going to say is lending.
10:29:1810 hours, 29 minutes, 18 secondsIn that case, I'm going to make sure that it's designed this way. We have border border dash
10:29:2610 hours, 29 minutes, 26 secondsdfd e8.
10:29:3010 hours, 29 minutes, 30 secondsAnd then we have bg dash surface dash white. Then we have text- text
10:29:3710 hours, 29 minutes, 37 secondssecondary. And if that is not the landing page means it's an app page, then it's going to be border
10:29:4610 hours, 29 minutes, 46 secondsand border app border. There you go. We have BG
10:29:5210 hours, 29 minutes, 52 secondsapp surface. And then we have text app text secondary. There you go. All right. I'm
10:30:0110 hours, 30 minutes, 1 secondgoing to open that span here. And I have a file icon. Hold on. There you go. And
10:30:0810 hours, 30 minutes, 8 secondsin the file icon, I'm going to say class name, which is going to be shrink. Hold on.
10:30:1510 hours, 30 minutes, 15 secondsClass name. And I'm going to add shrink- zero. And also text- app-exted.
10:30:2410 hours, 30 minutes, 24 secondsLet me format. And let's make sure that we have that file icon. So I'm going to get to the very bottom here. And I'm
10:30:3210 hours, 30 minutes, 32 secondsgoing to say function. Which one do we have? Mic icon. and plan icon. Okay,
10:30:3810 hours, 30 minutes, 38 secondsfunction file icon. And here we have class name. There you go. This is going
10:30:4610 hours, 30 minutes, 46 secondsto be a type of this where we have class name optional and it's going to be a string. Open that. Here we have a return
10:30:5410 hours, 30 minutes, 54 secondsand this is going to be the SVG code that you're going to need for that return. There you go.
10:31:0310 hours, 31 minutes, 3 secondsAnd it seems like yeah the comma. All right. So that's been sorted out. And now if I go back on top if I can find that.
10:31:1510 hours, 31 minutes, 15 secondsWhere is that? Attachments. Yeah, there you go. File icon.
10:31:2110 hours, 31 minutes, 21 secondsI'm going to pull that up. And under that we have a span to which I'm going to give a class name uh trunk. Hold on.
10:31:3210 hours, 31 minutes, 32 secondsTruncate. And that's going to be attachment dofile.name.
10:31:4110 hours, 31 minutes, 41 secondsThere you go. Then after the span here, we have another span. And I'm going to add class name shrink dash zero.
10:31:5110 hours, 31 minutes, 51 secondsThere you go. And then we have text app text muted. And to that I'm going to say let's actually open that here.
10:32:0110 hours, 32 minutes, 1 secondAnd I'm going to say format file size.
10:32:0510 hours, 32 minutes, 5 secondsAnd that's going to take attachment dotfile dots size. There you go. And after that span here, I'm going to add a
10:32:1410 hours, 32 minutes, 14 secondsbutton that's going to take a type. Hold on. Which is going to be button. And then we have on.
10:32:2610 hours, 32 minutes, 26 secondsBasically, there's going to be an on click. But we hold on let me check one thing here. So So here I'm going to need
10:32:3510 hours, 32 minutes, 35 secondsto create a function. I'm going to name it handle remove attachment and I'm going to give it an
10:32:4410 hours, 32 minutes, 44 secondsID which is going to be a string. open the function and on attachment change it's going to take
10:32:5310 hours, 32 minutes, 53 secondshere I'm going to add attachment attachments dot filter and then we have individual attachment and to that
10:33:0210 hours, 33 minutes, 2 secondsindividual I'm going to say attachment do ID when that is not equal to the given ID and
10:33:1110 hours, 33 minutes, 11 secondsthat is going to go here on click And there you go. Something like that.
10:33:1910 hours, 33 minutes, 19 secondsAnd of course here I'm going to add attachment id here. Awesome. As it expects. All
10:33:2710 hours, 33 minutes, 27 secondsright. So after that here I'm going to give it a class name which is going to be flex height-4 width4
10:33:3610 hours, 33 minutes, 36 secondsshrink zero. Then we have items center justify center rounded to excel. Then we
10:33:4410 hours, 33 minutes, 44 secondshave text app text muted on hover. This is going to be text app text. All right.
10:33:5310 hours, 33 minutes, 53 secondsAnd then after that here I'm going to add area label. And for that I'm going to go for template literal remove.
10:34:0210 hours, 34 minutes, 2 secondsAnd I'm going to add attachment dotfile.name.
10:34:0710 hours, 34 minutes, 7 secondsOpen that button here. And let's add this SVG there. Let me format and save.
10:34:1310 hours, 34 minutes, 13 secondsAnd we are done. I'm going to pull that up. And now here this area. So the scene I'm going to bring it down here. So I'm going to say is landing.
10:34:2610 hours, 34 minutes, 26 secondsAnd then I'm going to do this.
10:34:2910 hours, 34 minutes, 29 secondsOtherwise I'm going to say px4 and pb-14.
10:34:3610 hours, 34 minutes, 36 secondsThere you go. And that's going to do some reflection here, of course. And let's keep going.
10:34:4310 hours, 34 minutes, 43 secondsAnd after that, let me bring that down once again as well as that's
10:34:5210 hours, 34 minutes, 52 secondscleaner and I know what I'm working on in that case. So here I'm going to say attachments
10:34:5910 hours, 34 minutes, 59 secondsdot length when that is more than zero then we're going to say padding top is going to be three. Otherwise,
10:35:0810 hours, 35 minutes, 8 secondswe're going to check if it's landing page, then we're going to say padding top three as well. And uh otherwise,
10:35:1610 hours, 35 minutes, 16 secondsthis is going to be padding top dash padding top dash 4. There you go.
10:35:2310 hours, 35 minutes, 23 secondsAnd of course, now this padding top-3 here needs to be removed from here. So,
10:35:2910 hours, 35 minutes, 29 secondsyeah, px3, px4, and yeah, padding 3 is coming from here. If it's only landing
10:35:3610 hours, 35 minutes, 36 secondspage. Awesome. I'm going to add a reference to this text area which is going to be text area reference.
10:35:4410 hours, 35 minutes, 44 secondsThen we also have value. I'm going to add value there. And we also have on change. So I'm going to add event.
10:35:5510 hours, 35 minutes, 55 secondsAnd then this is going to be I'm going to open that up. And here I'm going to say speech
10:36:0410 hours, 36 minutes, 4 secondsreferences reference dot current is equal to event
10:36:1110 hours, 36 minutes, 11 secondsdot target dot value. And then I'm going to say on change this is going to be
10:36:1710 hours, 36 minutes, 17 secondsevent dot target dot value. There you go.
10:36:2410 hours, 36 minutes, 24 secondsOn change. There you go. And it seems like that we have an issue.
10:36:3310 hours, 36 minutes, 33 secondsYeah. On change. So, okay, let me get back here. So,
10:36:4210 hours, 36 minutes, 42 secondsthis should be E here. And also on the type, there should be an E here as well. Awesome.
10:36:5110 hours, 36 minutes, 51 secondsSo, that's been fixed. And let me get Yeah. Now here under the placeholder
10:36:5810 hours, 36 minutes, 58 secondshere I'm going to say I'm going to cut this and I'm going to say if it's landing
10:37:0710 hours, 37 minutes, 7 secondsthen I'm going to display that otherwise it's going to be make an app that there
10:37:1610 hours, 37 minutes, 16 secondsyou go remove the comma from there and I guess that's pretty much it for this one
10:37:2310 hours, 37 minutes, 23 secondsand after the placeholder Start here I'm going to add rows that's going to be is landing so I'm going to say one
10:37:3210 hours, 37 minutes, 32 secondsotherwise going to be two and then we have disabled on is going to be on disabled
10:37:4010 hours, 37 minutes, 40 secondsand for the class name here I'm going to say we have this uh then after that here
10:37:4710 hours, 37 minutes, 47 secondswe have is lending then we have this class there you go and
10:37:5410 hours, 37 minutes, 54 secondsotherwise twice. This is going to be this. So that's going to be minimum- height dash 56 pixels. And we also have
10:38:0410 hours, 38 minutes, 4 secondstext dash 15 pixels. And we have leading relaxed also. We have text app text and we have placeholder text app text muted.
10:38:1810 hours, 38 minutes, 18 secondsThere you go.
10:38:2110 hours, 38 minutes, 21 secondsAnd then after that here I'm going to add area label that's going to be is
10:38:2710 hours, 38 minutes, 27 secondslanding. Then this is going to say describe your idea. Otherwise it's going to be
10:38:3710 hours, 38 minutes, 37 secondsdescribe what you want to make. There you go.
10:38:4410 hours, 38 minutes, 44 secondsAnd finally here I'm going to add suppress hydration warning.
10:38:4910 hours, 38 minutes, 49 secondsAnd I'm going to add is landing there as well. So that's pretty much it for this one. Now I guess the text area is done
10:38:5810 hours, 38 minutes, 58 secondsexcept there's going to be something for the onsubmit which we have not done yet.
10:39:0310 hours, 39 minutes, 3 secondsFor that we're going to need some server actions. We're going to do that later.
10:39:0910 hours, 39 minutes, 9 secondsI'm going to pull this up a little. And here we have this div absolute bottom three and all that. And in this we have this button. So file uh class name CN.
10:39:2110 hours, 39 minutes, 21 secondsAnd then we have this. I'm going to add one actually.
10:39:2910 hours, 39 minutes, 29 secondsYeah, I'm going to add disabled. Disabled here. There you go.
10:39:3710 hours, 39 minutes, 37 secondsAnd now for this class name, I'm going to say here I'm going to add is landing.
10:39:4410 hours, 39 minutes, 44 secondsThen here I'm going to say this is going to be the case. if it's landing page
10:39:5010 hours, 39 minutes, 50 secondsotherwise this is going to be rounded LG
10:39:5610 hours, 39 minutes, 56 secondsdash LG and then we have border and then we have border app border we
10:40:0410 hours, 40 minutes, 4 secondshave bg- app dash surface and we have text app
10:40:1010 hours, 40 minutes, 10 secondssecondary and then we have on hover this is going to be bg app surface face
10:40:2010 hours, 40 minutes, 20 secondsdash hold on on hover this is going to be
10:40:2510 hours, 40 minutes, 25 secondsbg dash app dash surface dash hover let me format that
10:40:3410 hours, 40 minutes, 34 secondsand let me make sure that we have no extra spaces here yeah got it and then here
10:40:4310 hours, 40 minutes, 43 secondswe have hover this is going to be text- app- text. All right,
10:40:4910 hours, 40 minutes, 49 secondslet me format that and save that. I guess that's pretty much it for this one, let's change that to hover, not hover.
10:41:0010 hours, 41 minutesAnd I guess that's pretty much it. And now let me pull that up here. And here I'm going to say
10:41:0810 hours, 41 minutes, 8 secondsuh plan mode. If that is the case, then we're doing this. Otherwise, we are doing null here. And in the plan mode, I
10:41:1810 hours, 41 minutes, 18 secondsguess now I need to bring this span tag, cut that from here and bring it into
10:41:2410 hours, 41 minutes, 24 secondsthis plan mode. Let me format and save that. And now if I go here, that plan thing is gone from here. Testing. Well,
10:41:3410 hours, 41 minutes, 34 secondsthat's coming from our value. No problem. Let's leave it there.
10:41:3910 hours, 41 minutes, 39 secondsAnd if I click on plan, nothing happens yet.
10:41:4310 hours, 41 minutes, 43 secondsAnd here on this button I'm going to add one on click where we have on plan mode
10:41:5310 hours, 41 minutes, 53 secondschange. If that exists then we get make it false there.
10:42:0110 hours, 42 minutes, 1 secondAll right, I'm going to pull that up and right under this here I'm going to say if
10:42:0810 hours, 42 minutes, 8 secondsselected category is available then here I'm going to say also on
10:42:1510 hours, 42 minutes, 15 secondsremove category is there are doing this otherwise it's just null and in case of true we're going to
10:42:2310 hours, 42 minutes, 23 secondsdisplay category tag component that we just created above that's going to be category this is going going to be
10:42:3110 hours, 42 minutes, 31 secondsselected category. There you go. And then we have on remove here we have on
10:42:3910 hours, 42 minutes, 39 secondsremove category and then we have variant which is going to be variant here. Let me format and save that.
10:42:4910 hours, 42 minutes, 49 secondsSo if we go here basically nothing is going to happen yet because those uh things are not attached to these categories yet.
10:42:5910 hours, 42 minutes, 59 secondsAll right. So, I'm going to get back here.
10:43:0310 hours, 43 minutes, 3 secondsI'm going to pull that up. And here we have this button. Basically, this plan button here. So, for this one, first of
10:43:1110 hours, 43 minutes, 11 secondsall, I'm going to say that it's a type is button. Yes, leave it that way. Then, I'm going to attach an on click to this,
10:43:2010 hours, 43 minutes, 20 secondswhich is going to be on plan mode change. If that exists then on that it's
10:43:2710 hours, 43 minutes, 27 secondsgoing to reverse whatever the plan mode is. And then we have CN where we have
10:43:3410 hours, 43 minutes, 34 secondsthis by default. Uh hold on actually
10:43:4110 hours, 43 minutes, 41 secondswe have inline flex H8 item center and here we have transition colors
10:43:4810 hours, 43 minutes, 48 secondsand finally uh opacity. Okay. After that here I would like to add. So basically if plan mode is activated
10:43:5710 hours, 43 minutes, 57 secondsthen I'm going to add this. I'm going to say border replet orange/40.
10:44:0610 hours, 44 minutes, 6 secondsAnd I'm going to say bgrelet orange/10.
10:44:1010 hours, 44 minutes, 10 secondsAnd then I'm going to say text replet orange as well. And then here I'm going to go for the else statement in which
10:44:1810 hours, 44 minutes, 18 secondsI'm going to check is landing. And then I'm going to go for let me bring this down as well here.
10:44:2810 hours, 44 minutes, 28 secondsThen I'm going to go for this one. And else I'm going to go for something like border app border. Then we have text app text muted. And then we have on hover.
10:44:4110 hours, 44 minutes, 41 secondsThis is going to be BG app surface hover I guess. And yeah there's one more that hover on hover I'm going to make sure
10:44:5010 hours, 44 minutes, 50 secondsthat text app text is also applied. So now if I go here first of all that
10:44:5710 hours, 44 minutes, 57 secondsborder is gone. If I click on this one let me
10:45:0610 hours, 45 minutes, 6 secondsuh reload. If I click on this one of course for now nothing happens. on plan mode change.
10:45:1510 hours, 45 minutes, 15 secondsLet me check because oh I actually got it because we are not doing basically any setters
10:45:2310 hours, 45 minutes, 23 secondshere. We are only just uh grabbing the values and that's all. All right.
10:45:3110 hours, 45 minutes, 31 secondsSo let me make sure that the UI is complete and then we will get to the logic afterwards.
10:45:3910 hours, 45 minutes, 39 secondsI'm going to also add disabled disabled here and
10:45:4810 hours, 45 minutes, 48 secondsin the area label I'm going to clo I'm going to cut this one and I'm going to say if plan mode is activated then I'm
10:45:5610 hours, 45 minutes, 56 secondsgoing to say plan mode enabled otherwise it's going to say enable plan mode and
10:46:0310 hours, 46 minutes, 3 secondsthen we have this also I'm going to add area pressed And that's going to be
10:46:1210 hours, 46 minutes, 12 secondstrue depending on the plan mode enabled or not. There you go. We have plan icon here and plan.
10:46:2110 hours, 46 minutes, 21 secondsI'm going to go to the very bottom of this file for now and I'm going to create a component function arrow up
10:46:3110 hours, 46 minutes, 31 secondsicon. And in here I'm going to do the return in which I'm going to
10:46:3910 hours, 46 minutes, 39 secondsadd this SVG. Let me save that. And now let me get back here.
10:46:4910 hours, 46 minutes, 49 secondsYes. Yeah. After this div here on this button. So, first of all, I'm going to
10:46:5610 hours, 46 minutes, 56 secondsadd disabled and that's going to be enabled when it can't be submitted
10:47:0510 hours, 47 minutes, 5 secondsand or it's disabled in both of these cases. Then we have this class name CN
10:47:1210 hours, 47 minutes, 12 secondsin which we have this and then in here after that I'm going to add can submit.
10:47:2310 hours, 47 minutes, 23 secondsHere we have this. I'm going to bring it up.
10:47:2810 hours, 47 minutes, 28 secondsSorry, I'm I'm going to change this to is landing. So when it's landing page,
10:47:3610 hours, 47 minutes, 36 secondsit's going to be displaying something like this. Otherwise, this is going to be text app text muted. And on hover, it's going to be BG app surface hover.
10:47:4810 hours, 47 minutes, 48 secondsThen again on hover, it's going to be text app text.
10:47:5310 hours, 47 minutes, 53 secondsAnd here this can be disabled only when disabled is true. All right. And then
10:48:0010 hours, 48 minutesafter that here I'm going to say real label which is going to be changed from
10:48:0610 hours, 48 minutes, 6 secondsthis to this. Let's say there is there is create actually create one variable
10:48:1410 hours, 48 minutes, 14 secondshere. I'm going to say const is is listening is equal to false for now.
10:48:2310 hours, 48 minutes, 23 secondsThis is going to be changed later on.
10:48:2610 hours, 48 minutes, 26 secondsSo let me get to the I guess this is the
10:48:3410 hours, 48 minutes, 34 secondspart. Yeah. So if listening is true then this is going to say
10:48:4410 hours, 48 minutes, 44 secondsstop voice input otherwise it's going to say start voice input.
10:48:5110 hours, 48 minutes, 51 secondsThere you go. And then we also have area pressed.
10:48:5610 hours, 48 minutes, 56 secondsThis is going to be depending on is listening is enabled or not. There you go. And here I would like to do one more
10:49:0410 hours, 49 minutes, 4 secondsthing that I'm going to get down. I'm going to say is listening. When that is
10:49:1010 hours, 49 minutes, 10 secondstrue then I'm going to add bgrelet orange/15 and text replet orange. There you go.
10:49:2210 hours, 49 minutes, 22 secondsAnd then in case of false I'm going to add this. And I'm going to pull both of these above
10:49:2910 hours, 49 minutes, 29 secondshere. I guess that's pretty much it. If we go here, there you go. Of course, this won't work like that. I'm going to
10:49:3610 hours, 49 minutes, 36 secondsneed to change that manually. So, if I can find Where is that?
10:49:4510 hours, 49 minutes, 45 secondsThere you go. If I change that to true.
10:49:4710 hours, 49 minutes, 47 secondsSave that. Let's get back here. And there you go. This is how it's going to look. Awesome. False. And let's get back to the button.
10:49:5810 hours, 49 minutes, 58 secondsAll right. So I guess that is the button here.
10:50:0410 hours, 50 minutes, 4 secondsI'm also going to add active here and that's going to work only on when is listening.
10:50:1110 hours, 50 minutes, 11 secondsAwesome.
10:50:1310 hours, 50 minutes, 13 secondsLet me format everything and save everything. I think that button is done except for the on click handler which of
10:50:2110 hours, 50 minutes, 21 secondscourse we do not have yet as that is going to be another server action. And here I'm going to bring it up. Here we
10:50:2910 hours, 50 minutes, 29 secondshave type button. I'm going to also add
10:50:3510 hours, 50 minutes, 35 secondsdisabled and that's going to be can submit or disabled. And this whole
10:50:4410 hours, 50 minutes, 44 secondsbutton actually is going to be moved somewhere. So I'm going to say is
10:50:5010 hours, 50 minutes, 50 secondsis landing. Then I'm going to do this and null here and in here I'm bringing that button. So I'm going to cut it from
10:50:5910 hours, 50 minutes, 59 secondshere and paste it over here. There you go.
10:51:0410 hours, 51 minutes, 4 secondsSave that. And if I go here, of course, that button is gone. But let me fix
10:51:1010 hours, 51 minutes, 10 secondsthat. Right now here I'm going to add can submit. And if that's true, then
10:51:1810 hours, 51 minutes, 18 secondsthis is going to be this value. I'm going to uncomment that.
10:51:2310 hours, 51 minutes, 23 secondsAnd in case of false, this is going to be the value. Let me remove the comma from here. And I guess that's pretty
10:51:3110 hours, 51 minutes, 31 secondsmuch it. And then after we have area label start.
10:51:3610 hours, 51 minutes, 36 secondsAnd in here I'm going to add can submit. If that is true, then we
10:51:4510 hours, 51 minutes, 45 secondshave this. Otherwise, we have this. And in case of true I'm going to have this
10:51:5210 hours, 51 minutes, 52 secondsempty fragment. And in there I'm going to say start. And after that I have a span here. Area hidden is going to be
10:52:0210 hours, 52 minutes, 2 secondstrue. And in the span I'm adding a icon. Let's say
10:52:1110 hours, 52 minutes, 11 secondsright arrow. So if I use this thing, it's not well it's not working. So let's
10:52:1810 hours, 52 minutes, 18 secondsuse this for now. Well, this cannot this is not going to work either. So I'm going to go here and write arrow entity.
10:52:3010 hours, 52 minutes, 30 secondsThere you go. Right arrow emoji.
10:52:3610 hours, 52 minutes, 36 secondsSo let's say I'm going to go here and pick something from here. if I can find.
10:52:4310 hours, 52 minutes, 43 secondsNope. HTML code.
10:52:5110 hours, 52 minutes, 51 secondsAnd this is the one that I need. And that's going to be this thing.
10:52:5710 hours, 52 minutes, 57 secondsAll right. So, let's use that here. And in case of false, we're going to have
10:53:0310 hours, 53 minutes, 3 secondsthis SVG that we have here. So, there you go. Let me format that. And we're good. So now if I go, let me close that.
10:53:1510 hours, 53 minutes, 15 secondsIf I go here, of course that's not there. But we cannot see that on the homepage yet because homepage does not
10:53:2310 hours, 53 minutes, 23 secondscontain this component yet. So actually let's keep on building for now. And uh when this is not the landing page here
10:53:3310 hours, 53 minutes, 33 secondsthen we are going to display this where we have a button.
10:53:4010 hours, 53 minutes, 40 secondsI'm going to say that this is going to be a type button and then we have on
10:53:4810 hours, 53 minutes, 48 secondswell on click let's leave that for later. When we have the server action, we also have disabled. That's going to
10:53:5510 hours, 53 minutes, 55 secondsbe that cannot submit or
10:54:0410 hours, 54 minutes, 4 secondsit's disabled. There you go. Let me add that. Not here, but yeah, there you go.
10:54:1210 hours, 54 minutes, 12 secondsLet me check one thing real quick. So, here. Yeah, it's good. All right.
10:54:1910 hours, 54 minutes, 19 secondsI'm going to add class name here now and that's going to be CN. Open that. And
10:54:2510 hours, 54 minutes, 25 secondshere we have flex height- width dash 8 items center justify center. Then we
10:54:3410 hours, 54 minutes, 34 secondshave prolet LG. We have transition colors and then I'm going to get down can
10:54:4210 hours, 54 minutes, 42 secondssubmit. If that is the case, then this is going to be BG app text
10:54:4810 hours, 54 minutes, 48 secondsapp BG and then we have on hover BG app text secondary and in case of false this
10:54:5610 hours, 54 minutes, 56 secondsis going to be BG app surface active text app text muted and I'm also going
10:55:0310 hours, 55 minutes, 3 secondsto add area label which is going to be submit prompt and eventually inside the button this is going to be arrow
10:55:1210 hours, 55 minutes, 12 secondsup icon. Let me format and save everything. Let's go here. And there you go. We have the icon here. Wonderful.
10:55:2210 hours, 55 minutes, 22 secondsSo with that guys, we have this part of the UI is completed. Of course, there's a lot to do in terms of functionality
10:55:3110 hours, 55 minutes, 31 secondsand in terms of logic and uh that is going to be coming in the part two of this video. So with this we have the
10:55:4010 hours, 55 minutes, 40 secondslanding page completed. In the part two we're going to move this component from this uh single file into the landing
10:55:4910 hours, 55 minutes, 49 secondspage as well. Basically both the app home and the landing homepage both are going to be using this app prompt input
10:55:5810 hours, 55 minutes, 58 secondsand along with all of the server actions once they are ready in the part two of this series. So that's it for the part one guys. Leave comments if you have any
10:56:0710 hours, 56 minutes, 7 secondsquestions and I will see you in the part two.

Sync to video time
