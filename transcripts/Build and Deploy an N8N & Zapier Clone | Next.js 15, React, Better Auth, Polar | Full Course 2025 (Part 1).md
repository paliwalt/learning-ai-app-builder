https://www.youtube.com/watch?v=ED2H_y6dmC8&t=1715s

Build and Deploy an N8N & Zapier Clone | Next.js 15, React, Better Auth, Polar | Full Course 2025
Code With Antonio
Code With Antonio
419k subscribers

Join


6.3k


Share

Ask

Save

215,094 views  13 Oct 2025
💻 Source Code: https://cwa.run/nodebase
🎨 Free Assets: https://cwa.run/node-assets
🎥 Part 2:    • Build and Deploy an AI Automation Platform...  

📚 Resources:
Try Inngest: https://cwa.run/node-inngest
Try Polar: https://cwa.run/node-polar
Try Better Auth: https://cwa.run/node-auth
Try Sentry: https://cwa.run/sentry
Try CodeRabbit: https://cwa.run/node-rabbit
Try Neon: https://cwa.run/node-neon

In this tutorial, we're building Nodebase, a complete workflow automation platform from scratch. You'll learn how to create a visual drag-and-drop canvas for building workflows, integrate multiple triggers and AI providers, handle background job execution, and build a full SaaS business layer with authentication, subscriptions, and paywalls. We'll also cover error tracking with AI monitoring and a professional Git workflow with AI-powered code reviews.

Key features:
🔄 Visual workflow builder
🎯 Trigger nodes (Webhook, Google Form, Stripe, Manual)
🤖 AI integrations (OpenAI, Claude, Gemini)
💬 Messaging nodes (Discord, Slack)
🌐 HTTP request node
⚡ Background job execution with Inngest
💳 Polar payments & subscriptions
🔐 Better Auth authentication
🎨 React Flow canvas
🗄️ Prisma ORM + Neon Postgres
🔒 Type safety with TypeScript + tRPC
🐛 Sentry error tracking + AI monitoring
🧑‍💻 CodeRabbit PR reviews
🌐 Next.js 15 App Router
📱 Production-ready SaaS

Timestamps

00:00 Intro
06:05 01 Setup
29:33 02 Database
56:15 03 tRPC Setup
01:35:21 04 Authentication
02:37:24 05 Theme & Styling
02:55:05 06 Background Jobs
03:28:09 07 AI Providers
04:01:53 08 Error Tracking
04:27:54 09 Sidebar Layout
05:06:26 10 Payments Setup
05:44:04 11 Workflows Crud
06:45:20 12 Workflows Pagination
07:34:34 13 Workflows UI
08:23:40 14 Workflow Page
08:59:36 15 Editor Setup
09:50:42 16 Node Selector
10:40:32 17 Editor State
11:59:20 End of Part 1
Build Nodebase, a custom workflow automation platform featuring a drag-and-drop canvas, real-time execution tracking via WebSockets, and AI integrations with OpenAI, Claude, and Gemini. Code With Antonio guides you through implementing Stripe payments, subscriptions, and Sentry for AI agent monitoring in a production-ready SaaS.
Summary

Ask
Get answers, explore topics and more


-----------------------------------------------------------------------

In this video


Chapters

Transcript
Search transcript
Search transcript

Chapter 1: Intro
0:000 secondsEvery tutorial out there teaches you how to use N8N or Zapier, but what if you could build your own instead? In this
0:099 secondstutorial, we're building Nodebase, a complete workflow automation platform from scratch, drag and drop canvas,
0:1818 secondsrealtime execution, multiple integrations ready to go. Plus, we're building the full software as a
0:2626 secondsservice layer, payments, subscriptions, free tier, and payw walls. By the end of this tutorial, you'll have a production
0:3535 secondsready platform that you can actually ship and charge for. The heart of any automation platform is the canvas. We'll
0:4444 secondsbuild a clean interface with trigger nodes and execution nodes. You will learn how to create web hook triggers,
0:5353 secondsGoogle form submissions, Stripe event listeners, and even manual triggers. For execution nodes, we'll
1:011 minute, 1 secondbuild AI integrations such as OpenAI, Claude, and Gemini, plus some messaging
1:081 minute, 8 secondsplatforms like Discord, and Slack, and the generic HTTP request node. But here's the key. Once you understand how
1:171 minute, 17 secondsthese work, you will be able to add any integration you want. Air table, notion,
1:231 minute, 23 secondssend grid. The only limit is your imagination. Let's build something practical. We'll start with a Google
1:311 minute, 31 secondsform trigger. Perfect for collecting customer feedback or survey responses.
1:371 minute, 37 secondsWhen someone submits the form, we'll send that data to Open AI to analyze and summarize the responses. Then we'll take
1:451 minute, 45 secondsthat summary and send it to both Discord and Slack, notifying your entire team instantly. Each node has a configuration
1:551 minute, 55 secondspanel where you map data from previous steps using simple template syntax. The data flows from one node to the next and
2:042 minutes, 4 secondsyou control exactly how it transforms along the way. Now, here is where it gets visually satisfying. While the
2:122 minutes, 12 secondsworkflow is executing, each node will display its current status. You see exactly which node is working, when it
2:212 minutes, 21 secondscompletes, and if anything fails. For example, the Google form triggers. Open AAI starts thinking and completes
2:302 minutes, 30 secondssuccessfully. Then Slack fires off and succeeds. But Discord, it lights up and
2:372 minutes, 37 secondsfails with a red error state. You can see exactly which node has the problem and you caught it in real time.
2:442 minutes, 44 secondsEverything updates through web sockets which means no polling and no page refreshes. You're watching your data
2:512 minutes, 51 secondsflow through the system as it actually happens. All of this is powered by ingest. It can handle background job
2:592 minutes, 59 secondsexecution, manage retries if something fails, and gives us real time pub sub messaging for those live updates you
3:083 minutes, 8 secondsjust saw. your workflows run reliably in the background while the UI stays responsive and shows exactly what's
3:153 minutes, 15 secondshappening. For our database layer, we're using Prisma as our OM coupled with Neon
3:223 minutes, 22 secondsas our Postgress provider. This gives you type- safe database queries in a modern stack. Authentication is handled
3:303 minutes, 30 secondsby better out which is quickly becoming the new standard for A in the Nex.js world. It comes with tons of providers
3:383 minutes, 38 secondsout of the box and makes complex outflows actually manageable. For payments and subscriptions, we're using
3:453 minutes, 45 secondsPolar, which gives you free tier, paid plans, and usage based billing.
3:513 minutes, 51 secondsEverything you need to monetize your platform. This is more than just a coding tutorial. It's a realworld
3:593 minutes, 59 secondsdevelopment workflow. Each chapter ends with a new branch and a pull request.
4:054 minutes, 5 secondsWe're using Code Rabbit for AI powered pull request reviews. So you'll see how to structure your code, handle reviews,
4:144 minutes, 14 secondsand merge features just like you would in production. It's a complete GitHub workflow tutorial built right in. In
4:224 minutes, 22 secondsorder to make this project production ready, we are integrating Sentry for error tracking, logging, and session
4:294 minutes, 29 secondsreplays. But the real power is in their AI agent monitoring. Every time an LLM call is triggered, we get extremely
4:374 minutes, 37 secondsdetailed information. Which model was used, exact token counts in and out, cost per request, execution duration,
4:474 minutes, 47 secondsand the actual response output. This way, you can trace every single AI interaction in your application with complete visibility.
4:574 minutes, 57 secondsSo, let's recap the full tech stack.
5:005 minutesNex.js JS and Typescript for the foundation. Prisma and Neon for our database. Better out for authentication.
5:095 minutes, 9 secondsPolar for payments and subscriptions.
5:125 minutes, 12 secondsIngest powering our workflow executions with realtime updates. React flow for
5:195 minutes, 19 secondsthe visual canvas. OpenAI Claude or Gemini for AI integrations. Code Rabbit
5:265 minutes, 26 secondsfor our GitHub workflow and Sentry making it all production ready. This isn't just a workflow automation
5:345 minutes, 34 secondstutorial. This is a complete playbook for building and shipping a real SAS product. And now let's get started.
5:435 minutes, 43 secondsBefore we dive in, using the link on the screen, you can get 3 months of Sentry Team completely for free. We'll be using
5:525 minutes, 52 secondstheir AI monitoring to track all our LLM calls throughout this build. If that sounds useful for your project, feel
6:016 minutes, 1 secondfree to grab the deal. And now, let's build. Let's get started by creating a Nex.js application.
Chapter 2: 01 Setup
6:106 minutes, 10 secondsIn order to do that, we have to meet specific system requirements as outlined on their installation page.
6:186 minutes, 18 secondsAs you can see, Nex.js JS requires NodeJS with a minimum version of 18.8.
6:276 minutes, 27 secondsIn order to confirm what version you have, head inside of your terminal and run the command node- version. If you
6:366 minutes, 36 secondsget an error or if you get a version lower than 18.18, it is time to upgrade or install.
6:456 minutes, 45 secondsYou can do that by clicking on Node.js link within the Nex.js installation page or simply googling
6:526 minutes, 52 secondsNodeJS download. As you can see, the latest long-term support version is 22.20.0.
7:007 minutesAnd this is the easiest way to set up NodeJS on your system. Once you've done that, go ahead and run this command
7:077 minutes, 7 secondsagain. I would highly recommend that you are on the same Node version as me.
7:137 minutes, 13 secondsAnd while you're here, also double check that you have npm and npx.
7:197 minutes, 19 secondsIf you're using the same node version as me, you will definitely have these installed as well once you install NodeJS.
7:287 minutes, 28 secondsKeep in mind that versions of npm and npx can be different depending on what operating system you are on. So it
7:357 minutes, 35 secondsdoesn't matter that they are exactly the same as mine. They can be different versions. What's important is the node version and that you don't get errors for running any of these three commands.
7:497 minutes, 49 secondsOnce you have confirmed you have that, let's go ahead and install NextJS.
7:557 minutes, 55 secondsAs you can see, we have a command which we can use to bootstrap creating a Nex.js application, but we're going to
8:038 minutes, 3 secondsslightly modify it. As you can see, they're using the at latest tag, which is perfectly fine. But in my case, and
8:128 minutes, 12 secondsmore specifically in your case, I don't know when you are watching this tutorial. For that reason, I want to
8:208 minutes, 20 secondsmake this tutorial in a way that you can follow regardless of when you are watching this. So, the exact latest
8:288 minutes, 28 secondsversion at the time of me making this tutorial is 15.5.4.
8:348 minutes, 34 secondsSo I would highly recommend that you write 15.5.4 and this way you will be using the exact
8:428 minutes, 42 secondssame stable version that I am using and you won't have to uh tackle with any breaking changes that might have been
8:498 minutes, 49 secondsadded. So yes, don't worry if uh at the time that you are watching Nex.js is on
8:558 minutes, 55 secondsa higher version, right? The way I'm building this tutorial is so that it works for 15.5.4.
9:039 minutes, 3 secondsIf you want to upgrade later, I would recommend that you do that after you finish the tutorial. It will make it much more easier for you to follow along.
9:149 minutes, 14 secondsAfter you've done that, let's go ahead and give this project a name. So, I'm going to call this Nodebase, the name of
9:209 minutes, 20 secondsour project. Let's go ahead and install this create next app. And let's select yes for TypeScript. Uh we can select uh
9:299 minutes, 29 secondsany llinter you prefer. it will not change the project whatsoever. For example, I'm going to choose biome.
9:369 minutes, 36 secondsUh for Tailwind CSS, make sure you select yes. Make sure you select yes for the source directory as well. In case
9:439 minutes, 43 secondsthis is your first time seeing this install wizard, you can use the arrow keys to choose between yes or no. So, make sure you select yes. Same for the
9:529 minutes, 52 secondsapp router. Same for turbo pack. And select no for customizing the import alias.
9:599 minutes, 59 secondsAnd now let's just wait for this to install.
10:0410 minutes, 4 secondsOnce the project is installed, you will see a success message like this. So then go ahead and immediately change directory inside of your newly installed project notebase.
10:1610 minutes, 16 secondsNow let's go ahead and do a simple ls just to confirm that we are in the correct repository. You should have a
10:2310 minutes, 23 secondsreadme, a biome file, node modules, public source, and some package config files. Perfect.
10:3110 minutes, 31 secondsNow that we have set that up inside of our terminal, let's also set it up inside of our IDE. I'm going to be using Visual Studio Code, but you can use any
10:4010 minutes, 40 secondseditor you prefer. So, let's go ahead and open this project. I'm going to go ahead and select Nodebase and click
10:4810 minutes, 48 secondsopen. If you get a prompt like this, let me show you exactly how it looks like. You can select yes.
10:5610 minutes, 56 secondsNow let's go ahead and just quickly review our code. So our file structure uh looks like the following as I've
11:0311 minutes, 3 secondsalready mentioned by running the ls command. We have some config files. We have the node modules folder public and the source folder. What's important is
11:1211 minutes, 12 secondsthat you have the same structure as I do, which is almost 100% bound to happen if you used the exact same version as
11:2011 minutes, 20 secondsme. So that's why I'm telling you to use the same version so you don't have any surprises here. You should have the source folder, you should have the app folder, and inside you should have a favicon global layout and page.
11:3211 minutes, 32 secondsSo let's go ahead and run this project.
11:3411 minutes, 34 secondsNow in order to run our project all we have to do is go inside of our terminal and do npm rundev
11:4211 minutes, 42 secondssince we selected turboac we will have much faster developer builds and you will see d-turbopac right here and then
11:5011 minutes, 50 secondsyou will see where to access your page on localhost 3000.
11:5611 minutes, 56 secondsSo, let's go ahead and go to localhost 3000. And once you refresh, you should see nextjs here. Depending on if your
12:0512 minutes, 5 secondssystem is in light mode or dark mode, uh you obviously might see this as a white background. So, let's go ahead and try
12:1212 minutes, 12 secondsand change something. I'm going to go inside of page.tsx within the app folder here, and I'm going to remove everything. And instead, I'm just going to write const page like this. Return.
12:2412 minutes, 24 secondsLet's add a simple div. Hello world and export default page. And let's save
12:3112 minutes, 31 secondsthis file. As you can see, I just have a plain hello world text. Let me zoom in a bit so you can see it right here. So,
12:3912 minutes, 39 secondswhat happened? Why did this work? How did I know which file to modify? What happened here is that I went inside of the app folder, which is basically uh
12:4912 minutes, 49 secondsthe router of the Nex.js application, and I selected page.tsx, tsx which you can imagine as the root file of this
12:5812 minutes, 58 secondsproject page is a reserved file name within nex.js. So if this was called something else it would not work. It would not be recognized as a well page.
13:1013 minutes, 10 secondsThe second important thing for you to know when working within Nex.js is beside the uh reserved file name which is page you also have to do a default
13:1913 minutes, 19 secondsexport. For example, if I forgot to do a default export and instead did this, you will see that I will encounter an error.
13:2713 minutes, 27 secondsThe default export is not a react component in forward/page.
13:3213 minutes, 32 secondsSo that's why I did export default. So make sure you do that as well whenever you are creating pages.
13:3913 minutes, 39 secondsPerfect. Now that we have this, let's go ahead and quickly test if Tailwind is working within our project. So, I'm going to go ahead and give this div a
13:4813 minutes, 48 secondsclass name, text red 500, and it immediately turns red. So, now you've probably noticed that I have this cool
13:5713 minutes, 57 secondslittle color indicator here. And not only that, when I hover over classes, I can see the exact underlying CSS, and I
14:0414 minutes, 4 secondscan even see the hex color and this specific value right here. So, why do I have that? And it's actually super
14:1214 minutes, 12 secondsuseful. If you're using Visual Studio Code, go ahead inside of your extensions here and search for Tailwind.
14:1914 minutes, 19 secondsInside of here, you will find Tailwind CSS IntelliSense. If you're using Tailwind, please install this. It will make your life that much easier. So,
14:2814 minutes, 28 secondsbesides that, it also offers you autocomplete. For example, if I want to add font bold or extra bold, I can just
14:3514 minutes, 35 secondsdo this. And there we go. Once I save, it turns bold.
14:4114 minutes, 41 secondsSo besides that, it will also kind of hint you if you're using an invalid Tailwind class. If I accidentally add a
14:4814 minutes, 48 secondstypo here, when I hover over, nothing happens. But whenever I hover over a valid Tailwind class, I can see the
14:5614 minutes, 56 secondsunderlying CSS. So using that little trick, you can always check if you made a typo or not for what you think is a
15:0415 minutes, 4 secondsTailwind class. Perfect. So our Tailwind is actually working. Uh the reason our Tailwind is working I don't I'm not sure
15:1315 minutes, 13 secondsif you even like noticed that it's working. Uh what I meant to say is previously Tailwind required a config file which we cannot find at the moment.
15:2315 minutes, 23 secondsThat's because we are using Tailwind version 4 as you can see. So Tailwind version 4 if you're not familiar is well
15:3015 minutes, 30 secondsan upgraded version of Tailwind which simplified a ton of things. One of them being no more config file which is
15:3715 minutes, 37 secondsabsolutely amazing. You don't really have to worry about this. I'm just making sure that you are aware what Tailwind version you're using. But if
15:4515 minutes, 45 secondsyou installed the app by using 15.5.4, you will have the exact version as I do.
15:5015 minutes, 50 secondsSo yes, another thing to check is the package JSON. Just double check that you have the same dependencies as me so you
15:5715 minutes, 57 secondsdon't get any frustration and having trouble follow along. The biome part or slint part isn't really important.
16:0516 minutes, 5 secondsThat's really for your own uh linting preferences.
16:0916 minutes, 9 secondsPerfect. So now that we have that, let me go back and see what I've outlined here. So so far we have set up the environment. We set up Nex.js app, but
16:1816 minutes, 18 secondswe didn't set up Chatsen UI. So what is Chatzen UI? I like to say that Shatsenui
16:2616 minutes, 26 secondsis a component library, but that's actually not true. Chatsen is much more than that. So as per their definition,
16:3416 minutes, 34 secondsChatzen is a set of beautifully designed components that you can customize, extend, and most importantly build on.
16:4216 minutes, 42 secondsStart here and then make it your own.
16:4416 minutes, 44 secondsThat's exactly what Shatsen is. Let's go ahead and click get started and let's select NextJS.
16:5216 minutes, 52 secondsIn here, I'm going to go ahead and select npm because that's the package manager that I am using. So before we run this again, instead of doing that,
17:0117 minutes, 1 secondI'm just going to go ahead and do something else. So I'm going to go ahead and select latest dash version. This way
17:1117 minutes, 11 secondsyou will see the exact latest version at the time of me making this tutorial. So instead of running latest in it, I will run 3.3.1.
17:2317 minutes, 23 secondsAnd I would highly recommend that you do the same. So you don't have any surprises if some components were deprecated or drastically changed even
17:3117 minutes, 31 secondsthough chaten really really um takes care of um backwards compatibility. Uh
17:3817 minutes, 38 secondsand there's a little bug in my command here. It is not chaten UI. It is just chat. Make sure you don't do the same
17:4617 minutes, 46 secondsmistake. And make sure you're doing this inside of the NodeBase directory. So before I run this command ls, make sure
17:5317 minutes, 53 secondsyou see these things. And once you've convinced yourself that you're inside of here, go ahead and run npx chatsen 3.3.1
18:0118 minutes, 1 secondin it. Let's go ahead and allow it to install the packages. And once it's done that, it will add a couple of changes, a
18:0918 minutes, 9 secondscouple of new files, folders inside of our project.
18:1418 minutes, 14 secondsSo when it comes to which color you would like to use, it really doesn't matter. But if you want your project to look exactly the same as mine, select neutral
18:2218 minutes, 22 secondsand the rest will be found automatically. You can see it recognized next.js. It found version 4 tailwind config. It found the import alias.
18:3218 minutes, 32 secondsBasically no problems at all setting up shadi. Perfect.
18:3918 minutes, 39 secondsSo what I would recommend you do is just restart your server here just in case because this was a lot of hot reload because of all the files that have been
18:4618 minutes, 46 secondsadded here. So you can see now inside of my uh source control here I have a lot of new files. So I have components.json.
18:5618 minutes, 56 secondsI have a bunch of new files in my package JSON. I have changes in my globals.css.
19:0219 minutes, 2 secondsI have changes in my page. Okay, that's us. We did this. And I have a new util file. So let's go ahead and just quickly
19:1019 minutes, 10 secondsgo over these uh and I will try to explain what they are. So starting from the obvious new folder lib and inside we have utils.cs.
19:2119 minutes, 21 secondsSo this will probably be the most used function in this project and I can immediately show you how it's used. So
19:2819 minutes, 28 secondshead inside of app page.dsx dsx. And instead of writing class names like this, imagine you had something dynamic,
19:3719 minutes, 37 secondsfor example, const uh something and set it to true and go ahead and open curly
19:4419 minutes, 44 secondsbrackets around here and then add CN from lib utils. So that exact function that I just uh showed you, right? And
19:5319 minutes, 53 secondsthis is our import alias. So this is so you don't have to do this. It doesn't make too much sense now because we are very shallow. But imagine you are in a
20:0120 minutes, 1 seconddeeply nested folder. You would keep have to doing this and this and this until eventually you found lib utils or you can just use the import alias which
20:0920 minutes, 9 secondskind of teleports you to the root of the project.
20:1220 minutes, 12 secondsSo make sure you added this and make sure you have wrapped your class name like this. And looking at it, nothing really changes. Let me just refresh here.
20:2220 minutes, 22 secondsSo nothing really changes. Uh, and yes, if you were in dark mode and had a black background after adding chats and UI, you will now have a white background.
20:3120 minutes, 31 secondsSo, yes, that's perfectly fine. So, nothing really changed regarding the class name for our hello world text, right? Even though I just wrapped it in
20:4020 minutes, 40 secondsthis CN library. Well, yes, because by default, it can do just that. Just normally parse your uh Tailwind class.
20:5020 minutes, 50 secondsBut imagine you had a bunch of dynamic options for this uh class. For example, if something is true in that case,
20:5920 minutes, 59 secondschange the text to green 500.
21:0521 minutes, 5 secondsAnd you can see that now it works. So technically, yes, you could have done this using template literal,
21:1221 minutes, 12 secondsbut trust me, we're going to have a bunch of these things, right? there will there will be if something is equal to I
21:1921 minutes, 19 secondsdon't know maybe right and basically a bunch of these options each of them having their own class name
21:2621 minutes, 26 secondsand it just gets so much easier to work with CN instead of template literal right so I just wanted to quickly uh
21:3421 minutes, 34 secondsexplain to you what the CN is perfect uh so right now that's the only thing
21:4321 minutes, 43 secondsthat shat added But what it actually added is kind of its config and its registry. So what I like to do now is I
21:5021 minutes, 50 secondslike to add all shaden components. So let's shut down the app for now and let's go ahead and do npx chats 3.3.1 add-all.
22:0422 minutes, 4 secondsSo instead of adding individual components, I'm going to add all of them. Uh chances are we are not going to use them all and you can definitely
22:1222 minutes, 12 secondsclean this up later. The reason I like to add all of them uh is a you can explore and play around with all of them
22:1922 minutes, 19 secondsand b I kind of you know [snorts] forget the shatzen version during my tutorials.
22:2622 minutes, 26 secondsSo it's just kind of a hassle having to remember the version every time I want to add a component and have to worry if I entered an incorrect version. So this
22:3522 minutes, 35 secondsway in the beginning of the tutorial we just added all components. Here they are and we will be able to use them. So go
22:4222 minutes, 42 secondsahead and do npm rundev. And now inside of your source file, you will see a new components and then UI folder. And inside of that UI folder, you will see
22:5122 minutes, 51 secondsall the components that we will be able to use. And you will also find a hooks folder which has the use mobile hook.
22:5922 minutes, 59 secondsAnd this hook is simply used I think maybe in the sidebar. Let's see, was I correct? It is use is mobile. There we
23:0823 minutes, 8 secondsgo. So yeah, it basically created some hooks as well. So you should have 60 new changes if you are using uh any source
23:1523 minutes, 15 secondscontrol to track that. So let's go ahead and just add a simple one to see this work. So I'm going to go ahead and very
23:2323 minutes, 23 secondssimply import button from components UI button and I will render a button here.
23:3223 minutes, 32 secondsAnd let's go ahead and say click me. Let me go ahead and give this a class name.
23:3823 minutes, 38 secondsHeight full, minimum height of screen, minimum width screen, flex item center, and justify center.
23:4923 minutes, 49 secondsLet's refresh this. Every time you restart your Node.js server, make sure you hit refresh. There we go. So, we have a nice button here. So, what's the
23:5623 minutes, 56 secondscatch with Chaten? How is this different from Material UI or anything like that?
24:0224 minutes, 2 secondsUh well, here's the thing that I personally like the most. If I want to modify this button, I could just add a
24:1024 minutes, 10 secondsclass name and, you know, modify it the way I like. But I can also do this. I can literally go inside of source components
24:1824 minutes, 18 secondsbutton and I can see the entire code inside. So for example, inside of my
24:2524 minutes, 25 secondsroot page here, I have a variant prop and you can see that it autocompletes the type safety. for example, outline.
24:3324 minutes, 33 secondsWhat if I don't want to call it outline? What if I want to call this border?
24:3924 minutes, 39 secondsUsually, you'd have no way of changing that within material UI or something like that. But in here, you have the
24:4624 minutes, 46 secondscode. You own the code. So, if I want to go inside of the button, find the button variance, find outline, and change this to border. You can see that immediately
24:5524 minutes, 55 secondstype safety is broken because now it will recommend border. And there we go.
25:0025 minutesWorks again. So I will bring this back to outline now simply because that is the correct and the better name. I just I was just demonstrating, right? But the
25:0925 minutes, 9 secondscool thing is you can add [clears throat] anything here. You can add new sizes. You can modify existing sizes. You can change the roundness. You
25:1725 minutes, 17 secondscan change the shadows. Whatever you like or don't like. It's almost like a perfect foundation. Not almost, it is
25:2425 minutes, 24 secondsthe perfect foundation for building your own component system. And that's what we will be doing in this tutorial. We will
25:3025 minutes, 30 secondsbe making our own component library uh with the design that matches our entire app. And the easiest way to do that is
25:3825 minutes, 38 secondswith chats UI and it is extremely well supported within the Nex.js environment.
25:4525 minutes, 45 secondsAmazing. So I think this kind of is a very good start. I would recommend that you maybe import some more components
25:5125 minutes, 51 secondshere. uh perhaps go to chaten uh UI here ahead inside of the components and just
25:5825 minutes, 58 secondsyou know play around uh there's a bunch of them here for example the calendar uh well I mean it makes no sense for me to
26:0626 minutes, 6 secondsgo individually into all of them but yes there is a very good amount of this components and when you see this blue
26:1326 minutes, 13 secondsbuttons it means they are new components uh for example field is completely new or let's go ahead and look at uh empty.
26:2526 minutes, 25 secondsWe now have empty states that we can do using chats and UI which is exactly the field that we actually will be using in this tutorial. All right, cool. So, we
26:3426 minutes, 34 secondsjust added shaden UI. We have that ready and now let's go ahead and create a GitHub repository.
26:4126 minutes, 41 secondsSo, what I'm going to do uh is I'm going to go ahead and head to github.com and create a repository.
26:4926 minutes, 49 secondsSo after you went to GitHub, you will see a little plus button here and click new repository. And then in here, let's go ahead and call this I'm going to call
26:5826 minutes, 58 secondsit nodebase like that. Uh I will set this to private and I won't add anything else, right? And let's just go ahead and
27:0527 minutes, 5 secondsclick create repository. And now in here you have two options. The first option is create a new repository from the
27:1327 minutes, 13 secondscommand line or push an existing repository from the command line. our case is the second one. We already have
27:2027 minutes, 20 secondsa repository. It's just local. So let's go ahead and do the following. You can see we have 60 uncommitted changes here.
27:2827 minutes, 28 secondsAnd I want you to be careful now. So uh if you're using uh Visual Studio Code, you can use this interface to commit.
27:3627 minutes, 36 secondsBut in case you aren't, you can use uh git commit commands, right? I think it's a little bit easier to follow the
27:4327 minutes, 43 secondstutorial when I do it visually. So go ahead and click inside of the source control here and find the plus button
27:5127 minutes, 51 secondswhich says stage all changes. Be very careful not to accidentally click the discard all changes. Right? Make sure
27:5827 minutes, 58 secondsyou click stage all changes. And once you've staged all changes, uh what I like to do here is I like to name my messages after my uh video chapters.
28:0928 minutes, 9 secondsObviously this is not how you would do it in production. In production, you would actually describe uh what you did.
28:1528 minutes, 15 secondsBut in my case, I called this chapter 01 setup. So my commit message is a 01 setup. And I will then click commit.
28:2428 minutes, 24 secondsNow the problem is this is only committed locally. So this doesn't exist in this GitHub repository. But only once you've done that, once you have no
28:3228 minutes, 32 secondscommitted changes, can you go ahead and copy these three lines from the new repository you've just created. Let's shut down our app here. You can see how
28:4028 minutes, 40 secondsI have zero uncommitted changes. And I will very simply run those three commands right here. So let's go ahead
28:4728 minutes, 47 secondsand add them. There we go. Go ahead back here and refresh. And here we have our
28:5428 minutes, 54 secondsproject 01 setup. And we have another commit from the initial create next app.
29:0029 minutesPerfect. So inside of our source folder, you can see we have components and everything we did during the setup chapter, which is add all of those
29:0829 minutes, 8 secondscomponents. Amazing. Great. Uh I'm very satisfied with this. Uh I believe that marks the end of this chapter. Feel free
29:1629 minutes, 16 secondsto play around with the components. Uh in the next chap in the next chapter, we're going to start exploring the layout and some more things about this
29:2529 minutes, 25 secondsproject. Uh, amazing amazing job and see you in the next chapter.
29:3229 minutes, 32 secondsIn this chapter, we're going to focus on setting up our database and our OM.
Chapter 3: 02 Database
29:3929 minutes, 39 secondsWe're going to start by installing Prisma into our project. We're then going to connect Prisma to a Postgress
29:4629 minutes, 46 secondsdatabase using Neon. Then we're going to explore Prisma Studio. And finally, we're going to explore and test Prisma API.
29:5629 minutes, 56 secondsSo, where we left off last time was this click me button. What you can do now is you can actually shut down your app. So,
30:0330 minutes, 3 secondsas you can see, I don't have any server running. And then once I refresh, I get this screen. So, that's perfectly fine because we're just going to focus on
30:1030 minutes, 10 secondsinstalling packages for now. So, using the link on the screen, you can go ahead and visit this guide on how to use Prisma ORM with NextJS.
30:2130 minutes, 21 secondsSo uh the same as in the beginning as you can see uh prerequisites are NodeJS 18 plus. So again I highly recommend
30:2930 minutes, 29 secondsthat you are on a more up-to-date version of NodeJS.
30:3330 minutes, 33 secondsSo the step one here is to create the project. We can skip this because we already have a NexJS project. So no need to do this at all. Instead let's go
30:4230 minutes, 42 secondsahead and let's actually just focus on installing and configuring Prisma. Let me zoom in a little bit for you here.
30:4830 minutes, 48 secondsAnd in here it's important that you change from Prisma Postgress into other databases. So it's a subtle difference.
30:5530 minutes, 55 secondsWe are not going to need this. So switch to other databases here and let's do a dev dependency install of Prisma and TSX.
31:0631 minutes, 6 secondsSo inside of my Nodebased project here, I'm going to go ahead and install Prisma, DSX, both of them as dev dependencies.
31:1831 minutes, 18 secondsOnce they've been added, I'm going to install Prisma client in my normal dependencies
31:2531 minutes, 25 secondsand Prisma and Prisma client are pretty important packages for this project. So I would definitely suggest that you go
31:3331 minutes, 33 secondsahead and immediately go inside of your project and just visit the package JSON.
31:3831 minutes, 38 secondsThe reason I'm telling you this is so that you can see how far ahead your versions are. So I am on version 6.16.
31:4631 minutes, 46 secondsYou don't have to be on the exact version as me. Prisma can update update quite frequently. Uh same thing for DSX,
31:5531 minutes, 55 secondsbut I would recommend at least trying to be on the same major version as me. Uh I highly doubt that there will be any uh
32:0432 minutes, 4 secondsbreaking changes that soon in the next major version. Most of them are pretty backwards compatible. But then again, if
32:1232 minutes, 12 secondsyou just want to install the exact same version as me, uh here is the version that I am using. But I am very certain
32:2032 minutes, 20 secondsthat you will be able to follow along with your version as well. So no need to do anything special about that. Now that
32:2732 minutes, 27 secondswe have installed these packages, let's actually initialize Prisma. So in here, they give you the full command, but we actually won't be needing these two at all. So let's just run npx Prisma in it.
32:4032 minutes, 40 secondsSo I'm going to clear this ntpx prisma in it again inside of this project. And
32:4832 minutes, 48 secondslet's just wait a few seconds. And there we go. So after this has been completed, you can see that the Prisma schema was created at Prisma/sema.prisma.
33:0133 minutes, 1 secondSo now when you go ahead inside of the Prisma folder, you can find schema.prisma.
33:0833 minutes, 8 secondsInside of here you can see the provider, you can see the output and you can see the default database provider is set to
33:1533 minutes, 15 secondspossess and the URL is reading from our environment file and it's reading the database URL. This is something we don't yet have.
33:2433 minutes, 24 secondsSo let me again confirm. Yes. So only that file has been added schema.prisma.
33:2933 minutes, 29 secondsAnd as you can see, git ignore has been modified to ignore source generated Prisma because this is where the types
33:3633 minutes, 36 secondsfor our database will be generated later on. So right now what's the problem is instead of dot environment here you
33:4433 minutes, 44 secondsshould have it uh because this Prisma in it creates it right and you will have this very large comment inside.
33:5233 minutes, 52 secondsNow we're going to slightly modify this.
33:5433 minutes, 54 secondsSo, I'm going to remove this entire comment here.
33:5833 minutes, 58 secondsAnd I'm going to set this to be just a simple comment database.
34:0434 minutes, 4 secondsAnd then I'm just going to go ahead and make this an empty string because now let's actually set up a scalable production ready database here.
34:1434 minutes, 14 secondsSo, we can close this now and we can head to Neon using the link on the screen here. So, just go ahead and create an account. And once you're
34:2234 minutes, 22 secondsinside, let's go ahead and let's create a project. So I'm going to call this nodebase.
34:2934 minutes, 29 secondsUh these really don't matter. You can just hit create.
34:3434 minutes, 34 secondsAnd once you have a new project, simply click connect to your database.
34:3934 minutes, 39 secondsAnd in here, you can just go ahead and click copy snippet. So this entire snippet basically. And once you have
34:4634 minutes, 46 secondsthat, that's going to be your database URL. As simple as that. All right. So
34:5434 minutes, 54 secondsnow let's go inside of Prisma schema.prisma. And let me just tell you a little tip before we start writing anything here. You've probably noticed
35:0235 minutes, 2 secondsthat I have this clear syntax, right? I can very clearly see what's a value that's a variable and this specific
35:1035 minutes, 10 secondssyntax here. If you want the same, I highly recommend that you install the Prisma extension for Visual Studio Code. So that's how I get the syntax highlighting here. Great.
35:2335 minutes, 23 secondsSo that's pretty much it for the Neon database actually. It's super quick.
35:2735 minutes, 27 secondsIt's scalable. Uh and I love how good the developer experience is here. And you can also have a bunch of branches.
35:3435 minutes, 34 secondsIt's basically perfect for use cases like this. Let's go ahead and let's see what we actually have to do
35:4335 minutes, 43 secondsnext. Right. So we just set up posgress database and we set up Prisma OM. But in order to
35:5135 minutes, 51 secondsexplore Prisma Studio and to test the Prisma API, we actually need to create some models, some tables for our
35:5835 minutes, 58 secondsdatabase, right? And we actually do have this Prisma guide teaching us how to do that here. So again, you can use the link on the screen if you want to go here.
36:1036 minutes, 10 secondsSo let's go ahead and just do that.
36:1236 minutes, 12 secondsLet's add model user here and let's add model post.
36:1936 minutes, 19 secondsSo I'm going to just zoom out a bit. If you are not copying and pasting, it's just these two simple models.
36:2636 minutes, 26 secondsSo we have a user model which has a relation to many posts and we have a post model which has a relation to single or one user.
36:4036 minutes, 40 secondsNow let's go ahead and let's push this to our database.
36:4536 minutes, 45 secondsSo the way we're going to do that is by running npx prisma migrdev.
36:5136 minutes, 51 secondsAnd if you want to yes you can add the flag d-name but I'd rather we do it without just so you can see how it
36:5836 minutes, 58 secondsusually prompts you for the name. So make sure you have added that in your schema prisma. Uh I mean you don't really have to add this specifically.
37:0737 minutes, 7 secondsYou can add whatever you want really. I just copied their example. So I'm now going to run npx prisma migrate dev.
37:1537 minutes, 15 secondsIt's going to read my schema file and it's going to ask me after it connects of course to Neon DB. It's going to ask
37:2337 minutes, 23 secondsme what do I want to name this migration.
37:2937 minutes, 29 secondsSo I'm going to follow their example and I'm just going to call this in it. And there we go. We now have a new migration
37:3637 minutes, 36 secondsfile here. Since this is development, these migration files aren't really too important, right? In production,
37:4537 minutes, 45 secondsobviously, this would be the way you would uh amend your schema. Uh but in development, you can pretty much always just remove the migrations folder. If
37:5437 minutes, 54 secondsyou want to start over if something has gotten complicated, if you feel like you've messed something up, you can always do that. Uh so now that that
38:0138 minutes, 1 secondworks, what you can actually do is you can run Prisma Studio and Prisma Studio will open on localhost
38:0938 minutes, 9 seconds5555 and you can see that now I have post and I have a user models and I'm pretty sure I can actually just add a record here.
38:1838 minutes, 18 secondsSo for example, Antonio.com my name is Antonio.
38:2438 minutes, 24 secondsI will leave the posts empty and I don't have to add this. You can see a function will do this for me. So I just click save change and this should automatically add a new record here.
38:3538 minutes, 35 secondsThere we go. And in order to confirm that this actually happened on the server in our database, head back to Neon. And inside of here, they also have their own tables.
38:4638 minutes, 46 secondsAnd there we go. Post nothing. User. We have one user with ID of one, email
38:5438 minutes, 54 secondsAntonio, and name Antonio. Exactly what we wanted.
38:5938 minutes, 59 secondsSo now let's go ahead and let's actually try and query those things.
39:0539 minutes, 5 secondsSo what actually happened when we run npx prisma migrated dev? Well besides creating a new migration and applying it we also generated prisma client.
39:1739 minutes, 17 secondsWhat that did is let me just try and find it. Uh generated folder here it is.
39:2339 minutes, 23 secondsSo this folder right here now holds the types for our schema. So we can now safely access user.e and it will tell us
39:3139 minutes, 31 secondsthat it's a required string or for example user.name it will tell us that that's an optional string. So that's
39:3939 minutes, 39 secondswhat the generated folder is for and that's why it was added to uh git ignore here.
39:4639 minutes, 46 secondsSo let's go ahead first and let's establish the Prisma client.
39:5239 minutes, 52 secondsSo here's what we have to do. And I can I can't really remember where I found this exact guide, but I will explain you
40:0140 minutes, 1 secondwhy we need to do this. So let's go inside of the lip folder and let's create a new file called database.ts.
40:0840 minutes, 8 secondsLet's go ahead and import Prisma client from generated Prisma. Let's define const global
40:1640 minutes, 16 secondsfor Prisma to be global as unknown as open an object Prisma with a type of
40:2540 minutes, 25 secondsPrisma client. So what this is doing is it's simply adding to the global object
40:3340 minutes, 33 secondsa new Prisma property and I'll explain why we are doing that in a second. Let's define the variable const Prisma to be
40:4240 minutes, 42 secondsglobal for Prisma. Prisma or a new Prisma client.
40:4940 minutes, 49 secondsNow let's check if process.vironment node environment is not production. In
40:5640 minutes, 56 secondsthat case global for Prisma Prisma is equal to the Prisma we just initialized.
41:0441 minutes, 4 secondsAnd let's export default Prisma. So what's going on here? Well, technically we could be doing this. We could just
41:1441 minutes, 14 secondsimport Prisma client every time we need it. The problem is we would also have to do new Prisma client every time. So
41:2441 minutes, 24 secondsokay, why didn't I just do this and we don't need this and we don't need this.
41:3041 minutes, 30 secondsAnd this way I would simply use this singleton instance. Well, that's because that wouldn't happen because of hot
41:3841 minutes, 38 secondsreload. What's hot reload? Whenever your app is running, so if I do npm rundev,
41:4641 minutes, 46 secondswhat's watching the changes in my file here? You can see when I for example add uh if I add a little letter here and
41:5441 minutes, 54 secondsclick save. Uh actually this is a bad example here. Let me just refresh localhost 3000 first.
42:0342 minutes, 3 secondsBasically, hot reload is watching for changes, right? So, if I go inside of my app page.tsx, click me too, you can see that it
42:1042 minutes, 10 secondsimmediately updates, right? So, it immediately compiled. So, that's exactly what's happening. And the problem is
42:1942 minutes, 19 secondswhen hot reload happens, it will create new instances of Prisma
42:2642 minutes, 26 secondsclient multiple times and you will start to get warnings in your terminal about that. It will basically tell you
42:3442 minutes, 34 secondsmultiple Prisma instances instances detected. As far as I'm aware, it's a development only issue, but it can
42:4242 minutes, 42 secondsseverely degrade the development speed when it comes to the dev server. It will become quite slow and maybe even some bugs will occur. So, how do we fix that?
42:5242 minutes, 52 secondsWell, we're using a little hack here.
42:5442 minutes, 54 secondsAnd I mean, when I say hack, this is an official solution, right? I'm just really not sure which part of the documentation talks about this. Uh but
43:0443 minutes, 4 secondsbasically one part of this environment which is unaffected by hot reload is global.
43:1143 minutes, 11 secondsUh so global is well a global variable.
43:1543 minutes, 15 secondsRight? What we're doing here is we are storing the new Prisma client inside
43:2343 minutes, 23 secondsof that global Prisma property. What we did here is we simply created a special
43:3043 minutes, 30 secondstype that can understand what the Prisma is. If we didn't do this, it will still work. You would just get the type errors.
43:3843 minutes, 38 secondsUh I mean technically you would do it like this then, right? Global.prisma. So yes, technically this works except it
43:4643 minutes, 46 secondshas no idea what Prisma is. So we just created a type for it right here because you can't put anything in global. So
43:5443 minutes, 54 secondsdoing this ensures that no new Prisma client instances are created during hot reload. That's why we only do this in
44:0144 minutes, 1 seconddevelopment mode. There is no need to do this in production. Right? In production essentially what happens is this.
44:1144 minutes, 11 secondsThis is what will happen in production. What you would expect to happen right?
44:1644 minutes, 16 secondsBut in development, we need to complicate it a little bit by adding it to the global object because global is unaffected by hot reload. So no new instances of Prisma client are created.
44:2744 minutes, 27 secondsOkay, I hope I managed to explain that.
44:3044 minutes, 30 secondsGreat. Now that we have that, let's go inside of source app page.tsx.
44:3644 minutes, 36 secondsSo in Nex.js, every page file by default is considered a server component.
44:4344 minutes, 43 secondsI can go in depth explaining server components, but I think it's best to show you an example. In server components, things like use effect do
44:5144 minutes, 51 secondsnot work. So, if I just go ahead and add a simple use effect here and save, I will get an error. In order
45:0045 minutesto fix it, I need to convert it to a client component by adding the use client directive. And that fixes it.
45:0845 minutes, 8 secondsBut the cool thing about server components while they can't accept use effect is that they can be asynchronous
45:1545 minutes, 15 secondsand once they are asynchronous they can do cool things like for example my users can be queried using await database my
45:2545 minutes, 25 secondsapologies Prisma from lib database dot userfind many and then inside of here let me go ahead
45:3345 minutes, 33 secondsand do json stringify users and once I save this. There we go. I successfully
45:4145 minutes, 41 secondsfetched the user from my database directly using Prisma in a server component. So that's the power of server
45:4945 minutes, 49 secondscomponents. It technically acts like an API route. Obviously, this isn't too
45:5645 minutes, 56 secondssafe. So don't worry. We will add a proper data access layer using TRPC. And we are going to leverage both client
46:0546 minutes, 5 secondscomponents and server components because one thing that server components are good are good at is that they render
46:1446 minutes, 14 secondswell I'm not sure if render is the correct terminology but they appear before client components. So it would be
46:2246 minutes, 22 secondswasteful not to use them to already start fetching something because it definitely will make the app faster.
46:3146 minutes, 31 secondsBut we will talk about that in uh future chapters. For now, I just wanted us to achieve this very uh simple thing. I
46:4046 minutes, 40 secondswanted us to add an item to our database and I wanted us to fetch it. So what if you want to remove all items from your
46:4846 minutes, 48 secondsdatabase? Well, you can do that manually using Prisma Studio. But you can also do this which I think will be quite useful for you. You can run npx Prisma migrate
46:5746 minutes, 57 secondsreset. Obviously, only do this in development. Don't even think about running something like this in production. It will uh ask you to confirm. All data will be lost. Confirm.
47:0947 minutes, 9 secondsAnd once you do that, well, all data is deleted. So there we go. Immediately if you refresh, you will see it's empty.
47:1947 minutes, 19 secondsPerfect. So for now, I'm going to leave the Prisma schema as it is with this user model and the post model. Turns out we didn't need the post model at all.
47:2947 minutes, 29 secondsSorry for making you write it. Uh but we will write our own models pretty soon and then I will explain in depth about this relations and this foreign keys.
47:4047 minutes, 40 secondsHow does all of this work? How does the syntax work? I purposely didn't want to get into it right now. We just use it as a quick example to try and fetch
47:4847 minutes, 48 secondssomething from our database. So in the next chapter we're going to focus as I said on the data access layer so that we can actually learn how we are going to
47:5747 minutes, 57 secondsfetch because while this is cool it's not exactly the safest and it's not really scalable. So let's go ahead and
48:0648 minutes, 6 secondssee uh let's remove the unused button import while we are here and let's see inside of here what did we achieve. Uh
48:1548 minutes, 15 secondswe definitely explored Prisma Studio and we tested the Prisma API. So what I want to do now is I want to push to GitHub.
48:2348 minutes, 23 secondsBut I want to do that by creating a new branch and creating a new pull request.
48:2848 minutes, 28 secondsSo we learn the actual git workflow. And then let's review our pull request. So all the changes we did and let's merge it. So I'm going to go ahead like this.
48:4148 minutes, 41 secondsInside of your source control, you should have eight files. So get ignore package lock package JSON schema
48:4948 minutes, 49 secondstwo migration files page and the database uh lib. So what I'm going to do
48:5748 minutes, 57 secondsnow go ahead and click on the main here create new branch and I'm going to call this 02 database
49:0549 minutes, 5 secondsand you can see that now I'm on my new branch. Now I'm going to stage all changes.
49:1149 minutes, 11 secondsI'm going to name uh the commit the exact same. So 02 database and I'm going to click commit. And then I'm going to click publish branch.
49:2249 minutes, 22 secondsIf for whatever reason you already clicked commit and you think oh how do I go back? It's okay. Uh so git workflows are optional to follow in this tutorial.
49:3149 minutes, 31 secondsI just think it's a good idea to give you an idea of how it would usually be done in branches. You obviously don't
49:3849 minutes, 38 secondshave to do it if you don't want to. So if you just already committed perfectly fine, no problem.
49:4549 minutes, 45 secondsSo now that we have pushed this branch, let's go ahead and open a pull request if you want to follow the git workflow and let's review it.
49:5549 minutes, 55 secondsSo if you go to your NodeBase repository, you will now see 02 database had recent pushes. But just in case you
50:0350 minutes, 3 secondsdon't see this, you can always go manually inside of pull requests. Click on new pull request. Leave the base to be main and compare to be your new
50:1150 minutes, 11 secondsbranch database. Go ahead and click create a pull request. And again create a pull request. And now we're going to go over our files and review them.
50:2450 minutes, 24 secondsAnd now you've probably noticed that I have some kind of summary here, which you probably don't. And that's
50:3250 minutes, 32 secondscompletely okay. That's expected. So, let's first go over what I have here and then I'll show you exactly how you can
50:3950 minutes, 39 secondshave the exact same summary for every single one of your pull requests. So, summary by code rabbit. New features.
50:4950 minutes, 49 secondsHomepage now dynamically loads and displays user data. Correct. Chores. We added database tooling and supporting
50:5750 minutes, 57 secondsdependencies. Prisma. We initialized the database schema with users and posts including relationships as well as
51:0551 minutes, 5 secondsconstraints. We added a migration lock configuration and we converted the homepage component
51:1351 minutes, 13 secondsto an asynchronous component to support serverside data fetching. That's exactly what we did in this chapter and it's
51:2151 minutes, 21 secondsexactly what code rabbit summarized right here. So in here we can see a more in-depth walkthrough file by file. So
51:2951 minutes, 29 secondsfor example, exactly what we did here and the summary. Uh but what I really really love are these sequence diagrams.
51:3651 minutes, 36 secondsRight now we have a super simple situation in our app. So it's not too impressive. But nevertheless, you can imagine how useful this will be later
51:4351 minutes, 43 secondson, especially when we introduce this complex longunning background jobs and all of the different states that can happen here. So let's go through this
51:5251 minutes, 52 secondssequence diagram generated by code rabbit. So once the user visits the root page uh what we do is we use the Prisma
52:0052 minutesclient. So we import the singleton file using from source lib database.ts using the Prisma client instance. We
52:0952 minutes, 9 secondsfire Prisma do user find many and we contact the posgress database. The posgress database then returns an array
52:1652 minutes, 16 secondsof users and we finally render that in a form of JSON users on app page. DSX.
52:2452 minutes, 24 secondsSo I absolutely love how code rabbit does all of this for us here. Obviously this is a super simple pull request. So
52:3252 minutes, 32 secondsthere's no need to review uh much now but later on we are bound to introduce some bugs in our projects even some
52:4052 minutes, 40 secondscritical mistakes and you will be super impressed by how code rabbit will catch this and it will alert us before we
52:4952 minutes, 49 secondsmerge that into our main branch. In my previous few projects, this has saved me countless times. So, if you want the
52:5752 minutes, 57 secondssame thing, uh you can go ahead and use the link on the screen and simply create an account with code rabbit. You can get
53:0553 minutes, 5 secondsit completely for free. Uh and if you don't like it in pull requests, you can also install their extension.
53:1553 minutes, 15 secondsSo, just go ahead and install the code rabbit extension here.
53:2153 minutes, 21 secondsand connect the account which you've just created and you will get completely free AI code reviews for your branches
53:2953 minutes, 29 secondsand your pool requests inside of Visual Studio Code. Of course, all of this is completely optional. I just think it's extremely useful, but to each their own.
53:4153 minutes, 41 secondsPerfect. So, I've just reviewed this pull request. It's fairly simple. I reviewed the sequence diagram. It's exactly what we were expecting to happen. So let's go ahead and merge this
53:5053 minutes, 50 secondspull request and let's confirm the merge.
53:5353 minutes, 53 secondsSo I'm not going to delete my branch for a very simple reason uh history. So inside of my codebase here, I like that I have a 02 database and I can always go
54:0254 minutes, 2 secondsback to it if I want to see the exact changes I did. So I've just merged 02 database inside of my main branch, which
54:1154 minutes, 11 secondsmeans that inside of my Visual Studio Code, I also have to go back inside of my main branch. So, I'm going to hit on 02 here and I'm going to select a main.
54:2154 minutes, 21 secondsUh, you will have two main branches.
54:2454 minutes, 24 secondsThis one and origin main. In our case, it won't really matter which one you choose. So, one of these is remote and
54:3254 minutes, 32 secondsone of these is local. Since we're not doing anything complex, most of the time they will be exactly the same. But
54:3954 minutes, 39 secondsregardless, whichever one of these you choose, both are main. You can see main here, main here. Whichever one you
54:4754 minutes, 47 secondschoose, always make sure to click this little synchronize changes button and then click okay. And this will push and
54:5554 minutes, 55 secondspull all the changes from uh the GitHub repository. So you can see that now my main branch is completely in sync and it
55:0355 minutes, 3 secondshas the Prisma folder even though I developed that in a new branch. And in order to confirm you did this correctly
55:1055 minutes, 10 secondsin your Visual Studio Code, you can go inside of source control and click on the graph here. And you can see how I developed 01 setup on one level. And
55:2055 minutes, 20 secondsthen I detached into a new branch here for my 02 database and then I merged that back inside of my
55:2955 minutes, 29 secondsmain branch here. So this is how it should look like if you followed my Git workflow. Again, you can complete this
55:3655 minutes, 36 secondsentire tutorial without following the Git workflow. I just think it's useful to know, but to each their own. You know
55:4455 minutes, 44 secondswhy you're here. You know what you want to learn from this tutorial. Excellent.
55:4855 minutes, 48 secondsAmazing job. Uh, and now let's go ahead and just confirm we've done everything we wanted for this chapter.
55:5655 minutes, 56 secondsLooks like the last thing here was to push to GitHub. And that's exactly what we did. We created a new branch. We created a new pull request. and we reviewed and merged our changes.
56:0556 minutes, 5 secondsAmazing, amazing job and see you in the next chapter where we're going to develop our data access layer using TRRPC.
Chapter 4: 03 tRPC Setup
56:1556 minutes, 15 secondsIn this chapter, we're going to focus on setting up TRPC, our data access layer.
56:2256 minutes, 22 secondsSo, let's go ahead and do a quick reminder of what we did in the previous chapter. If I go inside of my app folder, page.dsx, DSX. The last thing I
56:3156 minutes, 31 secondsadded here was a direct Prisma call. So I can do this because this is a server component which can essentially have the
56:4056 minutes, 40 secondssame functionality as an API route in a sense that it can directly query the database. And while this is super fun to
56:4756 minutes, 47 secondsdemonstrate, it's not exactly the safest thing to do. Not because server components are inherently insafe, but
56:5556 minutes, 55 secondsbecause raw access like this is insafe in any type of server instance, be that an AI route or a server component.
57:0457 minutes, 4 secondsBecause of that, we're going to implement a data access layer. This data access layer will be used to for example
57:1157 minutes, 11 secondscreate a protected procedure so that only logged in users will be able to query this database call.
57:1957 minutes, 19 secondsNow there are different ways you can create a data access layer. Of course I personally prefer TRPC.
57:2757 minutes, 27 secondsMany times that I implement TRPC I get asked why not server actions. I have nothing against server actions. I just
57:3657 minutes, 36 secondsfeel more confident writing this extremely large projects with TRPC. I also feel more uh feel more confident
57:4457 minutes, 44 secondsinviting other collaborators if this project uses TRPC and I also feel it is more maintainable long-term if we use
57:5357 minutes, 53 secondsTRPC. The initial complexity for setting up TRPC versus server actions is a very big difference. Yes, TRRPC is more
58:0258 minutes, 2 secondscomplex in the beginning, but for me it is definitely worth it. Some of this might just be my personal opinion. Uh
58:0958 minutes, 9 secondsbut I also do hold almost a decade uh in this industry and I just feel like the RPC is at the moment more mature than
58:1658 minutes, 16 secondsserver actions. But of course to each their own. Uh some of you might be way more experienced with server actions than I am and might have found that it
58:2558 minutes, 25 secondsserves the same purpose. That's completely fine. I'm just trying to elaborate on why I am choosing TRPC in this case. So let's go ahead and set up
58:3458 minutes, 34 secondsthe RPC so that we can modify this from directly calling uh Prisma instance through a data access layer.
58:4258 minutes, 42 secondsSo you can use the link on the screen to uh visit this page right here. And now uh I'm going to teach you how to find
58:4958 minutes, 49 secondsthe documentation that we need. So let's go ahead and uh go inside of the documentation here. And let me just
58:5758 minutes, 57 secondsexpand this and zoom out a bit so it switches to desktop mode. Uh and in here you can see we have the backend usage, we have the client usage. Go inside of
59:0659 minutes, 6 secondsclient usage and find tanstack react query with a star and then select server components.
59:1359 minutes, 13 secondsThis is the guide that we are going to follow. So first things first, we have to install all of these packages here.
59:2159 minutes, 21 secondsSo now I'm going to go ahead and do that. So it's a TRPC server client 10stack react query and then
59:2959 minutes, 29 secondsindividually tanstack react query and then zod client only and server only. So
59:3659 minutes, 36 secondsI'm going to install these packages and after that I'm going to show you the exact versions of these packages because they are quite important and if there
59:4459 minutes, 44 secondsare any breaking changes I want you to be aware of them. So uh let me go ahead and open my changes here. Here I have my
59:5259 minutes, 52 secondspackage JSON. So let's see. I would recommend that you open package JSON as well just to see if you have any large
59:5959 minutes, 59 secondsmajor version differences here. So my 10stack version is version 5. My TRPC is
1:00:051 hour, 5 secondsversion 11. Uh and my TRP Okay. Yes. So every instance of my TRPC is version 11.6.0.
1:00:141 hour, 14 secondsSo I assume all of yours will be a single version as well. My tenstack react query is version five. My client only is 0.0.1 and server only is 0.0.1.
1:00:281 hour, 28 secondsI can't exactly tell you if you have to use the exact versions as me. I think it will work just fine even if you use some
1:00:361 hour, 36 secondsnewer versions. Uh I would you know pay attention if you are like on version seven of tanstack react query and like
1:00:441 hour, 44 secondson version 15 of the RPC. Well, yeah, then maybe you will have some breaking changes. So, at that point, maybe it's
1:00:521 hour, 52 secondsbetter for you to downgrade to my exact versions and run npm install again. Uh, but if you are around the same version,
1:00:591 hour, 59 secondsI'm pretty sure you'll be fine. Uh, by the end of this chapter, you will know whether you are able to do everything the same as me or not. But just here's
1:01:091 hour, 1 minute, 9 secondsmy exact uh versions in case you are interested. All right. So once we have established uh our packages, let's see
1:01:171 hour, 1 minute, 17 secondswhat else we have to do now. So initialize your TRPC back end in TRPC/init.ts.
1:01:271 hour, 1 minute, 27 secondsSo inside of source folder, go ahead and create trpc. And inside of here, let's create init.ts
1:01:351 hour, 1 minute, 35 secondslike so. Let's go ahead and see the sample backend here. So I'm going to copy it and I'm going to paste it here.
1:01:451 hour, 1 minute, 45 secondsLet's go ahead and review it quickly. So initc from gRPC server cache from React.
1:01:511 hour, 1 minute, 51 secondsWe create a mock context which is pretending to be uh some kind of ALF session which gives us the user ID. In
1:02:001 hour, 2 minuteshere we created the initial TRPC instance with no settings inside. And then we create the actual router. We
1:02:091 hour, 2 minutes, 9 secondscreate the caller factory and we create the base procedure. We're going to explore what each of these are a bit
1:02:161 hour, 2 minutes, 16 secondslater, but for now it's important that this is your init file.
1:02:221 hour, 2 minutes, 22 secondsAfter the init file, let's go ahead and create our uh factory of routers, I guess you could call it. So, inside of
1:02:301 hour, 2 minutes, 30 secondsthe TRPC folder, create a new folder called routers. And inside of here, create a new folder my apologies, it's
1:02:371 hour, 2 minutes, 37 secondsnot going to be a folder. is going to be a file_app.ts and inside paste the code from here again. Let's review it.
1:02:481 hour, 2 minutes, 48 secondsSo what's going on here is we import zod for some type safety.
1:02:531 hour, 2 minutes, 53 secondsUh we import the base procedure and create a tRPC router from the init function. So now already you can understand what these are. So create
1:03:021 hour, 3 minutes, 2 secondstRPC router is used to create new routers and base procedure is used to well create procedures. Uh let me try to
1:03:101 hour, 3 minutes, 10 secondsuh draw some parallels with an API route here to help you understand if it's your first time. Uh a base procedure would be
1:03:161 hour, 3 minutes, 16 secondsbasically an API call. Uh so either uh a for example query would be an a get API
1:03:241 hour, 3 minutes, 24 secondscall. If I did dot mutation this would be a post API call. well or put or
1:03:311 hour, 3 minutes, 31 secondsbatch, right? You get the gist. Uh we're just using an RPC uh uh way of of building this API routes.
1:03:401 hour, 3 minutes, 40 secondsUh we still haven't touched the create caller factory because it's a little bit complicated to explain. Uh but for now,
1:03:481 hour, 3 minutes, 48 secondsI hope you understand. Okay. So, TRPC router is used to creating routers. I'm not sure what parallel to drive exactly
1:03:541 hour, 3 minutes, 54 secondswith an API route. uh but trust me when you see the context in which we are going to use this function it's going to be very clear what create TRPC router is
1:04:031 hour, 4 minutes, 3 secondsused for uh base procedure is very you know clear and later when we need to create for example a protected procedure
1:04:101 hour, 4 minutes, 10 secondswe will have protected procedure which will simply extend the base procedure and then in here we're
1:04:201 hour, 4 minutes, 20 secondsgoing to create a middleware which will return false or true depending if the user is logged in or Not. And that way
1:04:271 hour, 4 minutes, 27 secondsif user wants to query hello, we're going to use the protected procedure and then it's going to throw errors if the user is not logged in. So we don't have
1:04:351 hour, 4 minutes, 35 secondsto do it every time. So that's what procedures are in a very very short explanation. Great. So make sure you
1:04:421 hour, 4 minutes, 42 secondshave this app folder with a very basic app router and a hello based procedure with a query. Make sure you didn't modify this limitation and forgot to turn it back.
1:04:521 hour, 4 minutes, 52 secondsOnce we have done that, let's go ahead and let's establish the app folder API folder TRPC and then a dynamic TRPC
1:05:001 hour, 5 minutesfolder with a route.ts inside and copy this in here. Uh so okay, this is very
1:05:071 hour, 5 minutes, 7 secondsvery nextJS specific. Let's go inside of app folder. Let's go ahead and create API folder inside. Then let's create
1:05:141 hour, 5 minutes, 14 secondsTRPC. And inside of that, let's go ahead and create trpc again, but this time inside of square brackets. And finally, route.ds.
1:05:241 hour, 5 minutes, 24 secondsSo, route.ds is a reserved file name the same way page. DSX is except page is
1:05:331 hour, 5 minutes, 33 secondsused to create client routing whereas route is used to create server routing.
1:05:371 hour, 5 minutes, 37 secondsSo, yes, Nex.js has built-in API and you write it like this. So this would be an equivalent of going to localhost 3000
1:05:461 hour, 5 minutes, 46 secondsslapi sltrbc and what this is is basically a dynamic route. Basically anything can go in
1:05:541 hour, 5 minutes, 54 secondshere. It's like a variable like a param right so I can go forward slash123 and it would be a correct hit. I hope that
1:06:031 hour, 6 minutes, 3 secondskind of makes it clear. It's basically allowing the RPC to send uh this RPC procedures through our API call.
1:06:111 hour, 6 minutes, 11 secondsAll right. So, if you paste this from the content here, you will get some errors. Luckily, they are very easy to fix. So, they are using uh this I'm not
1:06:211 hour, 6 minutes, 21 secondssure wavy little sign as the import alias and we are using the at sign. So, just change this to the ad sign and this too. And that's it.
1:06:321 hour, 6 minutes, 32 secondsIn here, it's important that the endpoint is correct forward/ API/drpc which is exactly what we have established here.
1:06:421 hour, 6 minutes, 42 secondsSo there isn't too much to talk about this route here. Basically it creates a handler and it exports it as the get
1:06:491 hour, 6 minutes, 49 secondsroute and as the post route and it uses the app router from TRPC routers app that we have created. It also assigns
1:06:581 hour, 6 minutes, 58 secondsthe context here which for now is not really useful but it allows this API call to have it here. So just make sure
1:07:061 hour, 7 minutes, 6 secondsyou have this set in this exact structure. Make sure there are no typos here and make sure you are doing that inside of the app folder of course.
1:07:151 hour, 7 minutes, 15 secondsPerfect. Once we have established this, let's see what else we have to do. So now we have to create tRPC query-client.ts.
1:07:251 hour, 7 minutes, 25 secondsLet's go ahead and let's do that.
1:07:291 hour, 7 minutes, 29 secondsSo inside of source, let's create query-client.ts.
1:07:371 hour, 7 minutes, 37 secondsAnd inside of here, we're going to paste this code.
1:07:411 hour, 7 minutes, 41 secondsLet's go ahead and see what we have to do. So, we import from tanstack react query default should hydrate query the
1:07:491 hour, 7 minutes, 49 secondshydrate query and the query client. Uh what you're seeing here is basically just a tanstack query configuration that
1:07:561 hour, 7 minutes, 56 secondsworks well with the RPC. Uh I have never ever modified this. It just works fine
1:08:021 hour, 8 minutes, 2 secondsas it is. It's basically a singleton uh tanstack query instance. One error that we have here is the superjson import.
1:08:111 hour, 8 minutes, 11 secondsFor now, we can comment this out. We don't have to worry about it for now. We are going to install superjson later and then add these serializers and transformers. And I will explain why.
1:08:241 hour, 8 minutes, 24 secondsBut for now, yes, that's it for TRPC query client. If you are interested about these settings, you can actually
1:08:311 hour, 8 minutes, 31 secondsread from the documentation here. Now, let's actually create a TRPC client for client components. So, what is this?
1:08:391 hour, 8 minutes, 39 secondsThis is a very large file. Let's go ahead and add it first. So, trpc/client.tsx.
1:08:481 hour, 8 minutes, 48 secondsTRPC client.tsx.
1:08:511 hour, 8 minutes, 51 secondsIt's important to have a tsx extension because there will be some JSX inside of here. this one, right?
1:08:591 hour, 8 minutes, 59 secondsSo, what's going on in this file here? First of all, we mark it as use client.
1:09:061 hour, 9 minutes, 6 secondsThis automatically means that this is now a client component.
1:09:111 hour, 9 minutes, 11 secondsThen we go ahead and we add our tenstack uh query client here. Uh we have some
1:09:181 hour, 9 minutes, 18 secondshelper utils to get the URL of this project. And once we get that URL, we can target that TRPC endpoint in the API
1:09:261 hour, 9 minutes, 26 secondsroutes that we have created. And then we create the provider. Uh in here, as you can see, it's very clear what they're
1:09:331 hour, 9 minutes, 33 secondsdoing, right? They are initializing get query client in a way uh well that it works in this whole environment. It is a
1:09:411 hour, 9 minutes, 41 secondslittle bit complicated, but the good news is you will never have to modify this. So as you've copied it from their documentation, it will work.
1:09:481 hour, 9 minutes, 48 secondsuh and basically we're going to use this to wrap our entire project within uh both the RPC provider and query client
1:09:581 hour, 9 minutes, 58 secondsprovider. So think of it as a well as as a provider for some context, right? We are just going to wrap our app around
1:10:061 hour, 10 minutes, 6 secondsthis entire thing. So that's what we need this for.
1:10:101 hour, 10 minutes, 10 secondsUh and I believe that once we do that, we should immediately add it to yes to our app layout.tsx. tsx.
1:10:171 hour, 10 minutes, 17 secondsSo let's go ahead and do that. So we are exporting let's see what's the name of this component
1:10:251 hour, 10 minutes, 25 secondstRPC react provider. Let's go inside of the source folder, app folder, layout folder here and let's go inside of body
1:10:341 hour, 10 minutes, 34 secondsand around the children, let's add TRPC react provider from TRPC client
1:10:421 hour, 10 minutes, 42 secondslike that from at TRPC client, the exact file we have just added.
1:10:501 hour, 10 minutes, 50 secondsUm, so basically this will now allow us to use DRPC and React query or more specifically Tstack query within our entire application. Perfect.
1:11:021 hour, 11 minutes, 2 secondsOnce we've done that, let's create a TRPC caller for server components.
1:11:091 hour, 11 minutes, 9 secondsSo I'm going to go ahead inside of the RPC and I'm going to create server dot
1:11:151 hour, 11 minutes, 15 secondsnot DSX. Uh actually yes it is uh DSX but uh let's see let me copy the file
1:11:221 hour, 11 minutes, 22 secondsand let me paste it here. Let me just expand this a little bit. So we are importing server only. So it cannot be
1:11:321 hour, 11 minutes, 32 secondsimported from the client for security reasons. So basically yes when you add this import server only and if you try to import this file in a client
1:11:391 hour, 11 minutes, 39 secondscomponent it will throw an error in development mode and it will prevent any builds from happening. So you will never be able to leak any secrets or any
1:11:471 hour, 11 minutes, 47 secondsaccess to the server uh with this right that's why this is very important. Uh and now this is actually not needed. So
1:11:551 hour, 11 minutes, 55 secondsif your router is on a se a separate server pass the client so just remove this.
1:12:001 hour, 12 minutesIt's actually much simpler for us as you can see right here. So what we're doing here is we're creating a caller instance of TRPC for the server component. This
1:12:101 hour, 12 minutes, 10 secondswill allows us this will allow us to call the TRPC data access layer through a server component, right? So we you
1:12:181 hour, 12 minutes, 18 secondsalready probably know that since we added tanstack query on the client side, we're going to be using use query and
1:12:261 hour, 12 minutes, 26 secondsuse mutation and then inside instead of writing the usual string that targets our API, we are going to call the TRPC
1:12:341 hour, 12 minutes, 34 secondsprocedure. But how would we do that on a server component? Well, using this file right here. And this is one of the
1:12:411 hour, 12 minutes, 41 secondsadvantages of TRPC because I worked with other RPCs like Hono RPC and Hono did not have the ability to do that. Well,
1:12:491 hour, 12 minutes, 49 secondsit did, but the out session would get lost. One of the cool things about TRPC's server caller is that it can preserve the out session within this.
1:12:591 hour, 12 minutes, 59 secondsSo, it's a much better solution in my opinion. We will almost never use it, but it's very cool to have it. And you
1:13:071 hour, 13 minutes, 7 secondswill see I will show you by the end of this chapter a few ways you can use the RPC. So, and maybe it will give you an idea for your own project. Just make sure you have added that file here.
1:13:161 hour, 13 minutes, 16 secondsPerfect.
1:13:181 hour, 13 minutes, 18 secondsUh and looks like that is it. I think that it is okay. So, uh this is what I
1:13:271 hour, 13 minutes, 27 secondswant to do now. I want to go inside of source. I want to go inside of the RPC routers app.
1:13:351 hour, 13 minutes, 35 secondsSo I'm going to modify this hello base procedure to be for example get users
1:13:431 hour, 13 minutes, 43 secondsagain just a normal base procedure and we don't need the input at all.
1:13:491 hour, 13 minutes, 49 secondsWe can just do query here and instead of return here I'm going to do now await actually I can just directly do my
1:13:561 hour, 13 minutes, 56 secondsPrisma from lib database dot user dot find many
1:14:051 hour, 14 minutes, 5 secondsI don't need the options at all so it's super simple get users procedure as you
1:14:121 hour, 14 minutes, 12 secondscan see right here we can remove the zod import from here like
1:14:181 hour, 14 minutes, 18 secondsSo now for example, let's go inside of source app folder page.tsx.
1:14:271 hour, 14 minutes, 27 secondsUh in here they give us a bit of a complicated way uh of doing this. I want to get to that later. Uh let me try and
1:14:341 hour, 14 minutes, 34 secondsfind a simple example first. For example, getting data in a server component. So, so far we've done this
1:14:431 hour, 14 minutes, 43 secondsdirectly using await prisma but now we have abstracted this within our router right within the get users procedure.
1:14:551 hour, 14 minutes, 55 secondsSo now we have to find a way to query trpc.
1:14:591 hour, 14 minutes, 59 secondsSo here's what we should do. So in here they tell us that in server.tsx we should have this caller or that we should create it. So let's just quickly
1:15:071 hour, 15 minutes, 7 secondssee inside of tRPC server.tsx.
1:15:131 hour, 15 minutes, 13 secondsSo I have the get query client. I have tRPC but I don't have the caller. So I just added it. Export constaller is app
1:15:201 hour, 15 minutes, 20 secondsrouter.create caller and execute it and p paste the create tRPC context inside.
1:15:261 hour, 15 minutes, 26 secondsSo this exact line that you can see here.
1:15:291 hour, 15 minutes, 29 secondsAnd once I have that caller instead of importing Prisma in this server component I can now import caller
1:15:371 hour, 15 minutes, 37 secondsdirectly from TRPC server and then users in this way will be caller.get users and
1:15:451 hour, 15 minutes, 45 secondsas you can see the type safety works exactly the same way. So yes type safety is now preserved through our Prisma
1:15:521 hour, 15 minutes, 52 secondsschema through our data access layer all the way through our component. That's the power of combining Prisma TRPC and well TypeScript.
1:16:031 hour, 16 minutes, 3 secondsAnd if you go ahead and try this now. So for two things, let's do let's do npm rundev in one. Uh actually I already have it running. Whoops.
1:16:141 hour, 16 minutes, 14 secondsSo npm rundev in one and in another one I'm going to do npx prisma studio.
1:16:211 hour, 16 minutes, 21 secondsSo studio will open on localhost 555.
1:16:241 hour, 16 minutes, 24 secondsSo, I'm going to click add record. Email Antonio@mail.com.
1:16:281 hour, 16 minutes, 28 secondsName will be Antonio. And I will click just save one change. Basically, we already did this before. Uh, I'm just adding a new item here.
1:16:411 hour, 16 minutes, 41 secondsUh, and now let's go to localhost 3000 here. And if we've done everything correctly,
1:16:481 hour, 16 minutes, 48 secondsit works just as it did before. But this is a much more secure way of doing that.
1:16:531 hour, 16 minutes, 53 secondsAnd I know it seems like we did so much for so little, but this is way more scalable. Trust me, because this is a
1:17:011 hour, 17 minutes, 1 secondsuper simple example. We're not passing any inputs. Uh we are not passing any params. We're not doing anything complicated. We're just doing a very
1:17:081 hour, 17 minutes, 8 secondssimple fetch from the database. But you will see as this project grows, you will be so thankful that we added TRPC so
1:17:161 hour, 17 minutes, 16 secondsearly so that we can leverage it through the rest of the project in a super type-S safe way that's maintainable, that's easy to understand, that you can
1:17:241 hour, 17 minutes, 24 secondscome back, you know, in 6 months from now and completely understand what you're doing. Uh, I find this way more understandable than, you know, server
1:17:331 hour, 17 minutes, 33 secondsactions or something like that. That could be just my opinion. It could be that I'm just wired to understand this uh uh that I like this more. All right.
1:17:421 hour, 17 minutes, 42 secondsSo now that we have this, we have solved this super simple example of fetching this in a server component. Right? This
1:17:501 hour, 17 minutes, 50 secondsbasic we repeated the example that we had. But what if this was a client component? So what if I had use client at the top because we are definitely
1:17:591 hour, 17 minutes, 59 secondsbound to have some client components in this project.
1:18:021 hour, 18 minutes, 2 secondsWell, in this case, as you can see, we get an error. And thankfully, this caller is throwing an error here because we imported server only. So, it would be
1:18:111 hour, 18 minutes, 11 secondsa very big mistake if we imported that caller on the client because then the client would be able to query the database. That's horrible, right? Well, it wouldn't be able to query, but you
1:18:201 hour, 18 minutes, 20 secondsnever know what secrets might leak from that. So, we have to modify this a little bit. First, let's remove this.
1:18:261 hour, 18 minutes, 26 secondsLet's remove the import and let's remove this entirely. Now once we save of course we're going to get the error for the users. So let's go ahead and do the proper client way of fetching from TRPC.
1:18:381 hour, 18 minutes, 38 secondsSo constant TRPC will be use DRPC from TRPC client.
1:18:441 hour, 18 minutes, 44 secondsUh and then in here let's go ahead and let's do data. Let's map it to users.
1:18:511 hour, 18 minutes, 51 secondsAnd let me just expand this a little bit.
1:18:551 hour, 18 minutes, 55 secondsUse query from Danstack React query. And now we do tRPC dot get users dotquery
1:19:041 hour, 19 minutes, 4 secondsoptions like this. And you can see that we have now achieved the same thing. The only
1:19:111 hour, 19 minutes, 11 secondsdifference is since this is a client component, it doesn't load as fast as the server one. So you can see that we
1:19:181 hour, 19 minutes, 18 secondshave a small blink here. Right? So, I'm just going to save this for now and I'm going to quickly revert to the server
1:19:271 hour, 19 minutes, 27 secondscomponent just so you can see the difference.
1:19:301 hour, 19 minutes, 30 secondsYou can see how server component is much faster, right? I'm refreshing right now and it's instant, but a client component, which is what we're used to, is a little bit slower.
1:19:421 hour, 19 minutes, 42 secondsSo, you now know how to do it when you have a server component. You know how to do it when you have a client component.
1:19:491 hour, 19 minutes, 49 secondsBut there is a third option and the third option is how we're going to use TRPC through this entire project and that's actually this example that they
1:19:581 hour, 19 minutes, 58 secondshave added here which I think is the most complex example. So that's why I didn't want to show show it to you first. So let's go ahead and uh do that.
1:20:071 hour, 20 minutes, 7 secondsLet me just try and follow the proper example. Okay. So they're doing it with this hydration boundary.
1:20:151 hour, 20 minutes, 15 secondsUh okay. Yeah. So let's go ahead and do it. The way this would work is as follows.
1:20:231 hour, 20 minutes, 23 secondsPage would be left as a server component and we would create a new file called for example client
1:20:311 hour, 20 minutes, 31 secondswhich would be a client component. Since this is not a reserved file name, it's just a random file which is a component.
1:20:391 hour, 20 minutes, 39 secondsWe can do a named export instead of a default one client component.
1:20:471 hour, 20 minutes, 47 secondsSo let's go back inside of the page here and let's revert this back to a asynchronous
1:20:551 hour, 20 minutes, 55 secondscomponent. So what people usually do you know in order to fetch
1:21:011 hour, 21 minutes, 1 secondlet me just revert this in order to uh pass data from a server component to a client component is they would render
1:21:091 hour, 21 minutes, 9 secondsthe client component and they would pass in the users. Right?
1:21:151 hour, 21 minutes, 15 secondsSo let's go ahead and just add users. Uh I don't know. It's a record string any
1:21:231 hour, 21 minutes, 23 secondsand an array. Let's get the users client component JSON stringify users.
1:21:321 hour, 21 minutes, 32 secondsSo that's one way of like passing data from your server component to client one. And you can see it works pretty fast, right?
1:21:401 hour, 21 minutes, 40 secondsSo we are technically leveraging the speed of server components to load and then we are handing off to a client component which can do all the hooks.
1:21:501 hour, 21 minutes, 50 secondsBut there is a problem with this solution and the problem is there is no way for this client component to have
1:21:561 hour, 21 minutes, 56 secondsany other state about this query. It only has the final data.
1:22:021 hour, 22 minutes, 2 secondsIt also cannot refetch. It cannot do pagionation. it cannot do a lot of things that you would have to do in a
1:22:101 hour, 22 minutes, 10 secondsserious project. Because of that, that's not how we do this. Uh we do it in a different way.
1:22:181 hour, 22 minutes, 18 secondsSo in the server component here, uh I'm going to go ahead and leave this import and I'm just going to modify this a
1:22:251 hour, 22 minutes, 25 secondslittle bit. So I'm going to import get query client from tRPC server and
1:22:351 hour, 22 minutes, 35 secondsI'm going to get the query client here to be get query client like that
1:22:431 hour, 22 minutes, 43 secondsand then I'm going to wrap my client here in a hydration boundary from tanstack react query.
1:22:551 hour, 22 minutes, 55 secondsI'm going to remove the client users prop entirely because we don't need it.
1:23:001 hour, 23 minutesAnd I'm going to remove the type from it as well. And in here I'm going to pass the state.
1:23:081 hour, 23 minutes, 8 secondsSo state is going to be dehydrate from tanstack react query and pass in
1:23:161 hour, 23 minutes, 16 secondsthe query client like this.
1:23:201 hour, 23 minutes, 20 secondsSo what we've done now is we've we are creating a boundary between a server component and a client component. So
1:23:281 hour, 23 minutes, 28 secondswhat I'm going to do now is I'm going to uh go ahead and prefetch this by doing void queryclient
1:23:361 hour, 23 minutes, 36 secondsdot prefetch query and then I'm going to pass tRPC which I can import from the server. So make sure you have imported
1:23:451 hour, 23 minutes, 45 secondsit here. So the difference is in the client component you would uh get the TRPC from use TRPC in server components
1:23:531 hour, 23 minutes, 53 secondsyou can just import it from the server library. So TRPC get users dotquery options.
1:24:011 hour, 24 minutes, 1 secondSo what this is doing is it is leveraging the speed of a server component by instantly starting to
1:24:081 hour, 24 minutes, 8 secondsprefetch this. And in the client component, what we would have to do then is the following.
1:24:161 hour, 24 minutes, 16 secondsWe would get our data which is users in two ways.
1:24:241 hour, 24 minutes, 24 secondsFirst one is by doing use query. But since we are prefetching here, we can almost expect it by using use suspense query.
1:24:351 hour, 24 minutes, 35 secondsLet's get the RPC. use DRPC from the client and pass in DRPC
1:24:411 hour, 24 minutes, 41 secondsget users query options and then let's go ahead and try it out.
1:24:511 hour, 24 minutes, 51 secondsCan you can see how now when I'm refreshing it is extremely fast. It is as fast as the first time I tried doing
1:24:591 hour, 24 minutes, 59 secondsthis with just a caller in a server component. But this is a much more advanced case now because we are no
1:25:071 hour, 25 minutes, 7 secondslonger calling any data. Server components has no data in this moment.
1:25:131 hour, 25 minutes, 13 secondsInstead, what we're doing is we are leveraging TRPC's prefetch and we are populating tanstack queries client state
1:25:211 hour, 25 minutes, 21 secondswith it. So we are leveraging server component to start fetching very fast because it will appear faster than the client component. We have already
1:25:301 hour, 25 minutes, 30 secondsdemonstrated this. You remember that little blink that happened when we switched to a client component? Well, that blink is no longer happening even
1:25:391 hour, 25 minutes, 39 secondsthough we are completely doing this on the client, right? But the difference is is that now this client component will be populated from the server component.
1:25:521 hour, 25 minutes, 52 secondsAnd then you can also leverage things like suspense here from react
1:26:001 hour, 26 minutesfallback and let's add loading.
1:26:051 hour, 26 minutes, 5 secondsAnd this way we are going to handle loading states and later on error states.
1:26:111 hour, 26 minutes, 11 secondsSo this is the structure that we are going to use. We're going to leverage the power of speed components but we are
1:26:191 hour, 26 minutes, 19 secondsgoing to hand off to a client component which is familiar for us to use right I am sure that all of us are more familiar
1:26:271 hour, 26 minutes, 27 secondswith hooks rather than you know keeping track of what we should do in a server component what we can do what we can't
1:26:341 hour, 26 minutes, 34 secondsdo and doing all kinds of tricks to make it work instead let's just use the power of server components for speed and let's
1:26:431 hour, 26 minutes, 43 secondshand it off to a client component and then use it in a familiar way. So this is a much better way than just passing the data through props to a client
1:26:521 hour, 26 minutes, 52 secondscomponent because this way we can actually manipulate this data. So I now have use suspense query here. I can get the errors. I can get the loading state.
1:26:591 hour, 26 minutes, 59 secondsI can refetch. I can change the settings to refetch on uh window focus. I can do I can do polling now. Uh I can
1:27:081 hour, 27 minutes, 8 secondsinvalidate query data. I can do all of those things now which I previously could have only done in a server component or maybe couldn't because
1:27:161 hour, 27 minutes, 16 secondsserver components are limited when it comes to hooks and all of those things.
1:27:201 hour, 27 minutes, 20 secondsBut now if you know uh tanstack react query you know the rest of the project right this is nothing new to you the
1:27:271 hour, 27 minutes, 27 secondsonly new thing is how to prefetch this and put it to a client component. So that's what I wanted to demonstrate.
1:27:341 hour, 27 minutes, 34 secondsThat's why we are doing this combination. This is why I prefer TRPC.
1:27:381 hour, 27 minutes, 38 secondsIt is complicated and maybe you don't even realize if we achieved anything impressive now, but I promise you by the end of this tutorial and everything that
1:27:471 hour, 27 minutes, 47 secondswe will build, you will be very happy that you added TRPC this early and that you learned how to do this. I know this
1:27:551 hour, 27 minutes, 55 secondsis complicated uh but you will see the more we build with this exact structure the simpler and more understandable will
1:28:041 hour, 28 minutes, 4 secondsit be for you. So we set up the RRPC, we created a procedure with Prisma API, we explored TRPC client side, server side
1:28:121 hour, 28 minutes, 12 secondsand finally the prefetch which leverages the power of server and the familiarity of the client. Now let's create a new
1:28:201 hour, 28 minutes, 20 secondsbranch and push this. So this is called 03 TRPC setup. So I'm going to go ahead and click down here, create new branch, 03 TRPC setup.
1:28:331 hour, 28 minutes, 33 secondsOnce I'm in a new branch, you can see I have 11 unstaged changes. Package lock
1:28:401 hour, 28 minutes, 40 secondspackage client layout page route client insource gRPC initc
1:28:481 hour, 28 minutes, 48 secondsquery-client insource gRPC server in TRPC and underscore app in the RRPC routers. So, I'm going to stage all of
1:28:571 hour, 28 minutes, 57 secondsthose changes and I'm going to make a commit 03 trc setup commit and let's publish the branch.
1:29:061 hour, 29 minutes, 6 secondsAnd now that we've published the branch, let's go ahead and open the pull request.
1:29:131 hour, 29 minutes, 13 secondsSo, let's just click compare and pull request same as as we did last time. Or if you're creating a pull request manually, the base is main and the
1:29:211 hour, 29 minutes, 21 secondscompare is your new branch. Let's go ahead and create a pull request and then let's review it.
1:29:301 hour, 29 minutes, 30 secondsAnd here we have the summary by code rabbit. Let's go ahead and see what it thinks. So new features. We introduced
1:29:381 hour, 29 minutes, 38 secondsserverbacked data fetching and a client view that displays the user data. We added suspense-based loading states for smoother user experience. Performance.
1:29:481 hour, 29 minutes, 48 secondsWe created faster initial load using serverside pre-fetching and client hydration.
1:29:551 hour, 29 minutes, 55 secondsWe improved responsiveness with cached queries and batched requests.
1:30:001 hour, 30 minutesReliability. We created more resilient data fetching with automatic caching and revalidation. We also added dependencies
1:30:071 hour, 30 minutes, 7 secondsto support RPC based APIs and React query integration. As in the previous chapter, we have a cohort or file by
1:30:161 hour, 30 minutes, 16 secondsfile summary of changes that we did. But I what I find more interesting here is of course uh these amazing uh diagrams
1:30:261 hour, 30 minutes, 26 secondshere. So let's go ahead. Let me just try and uh see it like this. There we go. So
1:30:331 hour, 30 minutes, 33 secondsuh what's going on here? I actually think we should start with the bottom one instead because the bottom one here
1:30:401 hour, 30 minutes, 40 secondsis the server side. Right. So once the nextjs page on the server hits the root
1:30:471 hour, 30 minutes, 47 secondspage, what we do here is we get the query client and using that query client, we are prefetching query get
1:30:561 hour, 30 minutes, 56 secondsusers. Once that is prefetched, what it does is it populates the cache of the query client and with that new cache, we
1:31:051 hour, 31 minutes, 5 secondsthen render the client with of course the hydrate react query. So this cache is properly populated there and then the
1:31:141 hour, 31 minutes, 14 secondsclient component through our hydration boundary ends up having that hydrated state. And we can actually stop here and
1:31:221 hour, 31 minutes, 22 secondswe can now go back in the upper one to see what's going on.
1:31:271 hour, 31 minutes, 27 secondsLet's see. So, user browser this time, right? Render after hydration hits the client component. We have this entire
1:31:361 hour, 31 minutes, 36 secondsflow, but as you can see, not in our case because we get a cache hit. So, we
1:31:431 hour, 31 minutes, 43 secondscan skip this entire usual flow that happens on the front end side and we just read the data from cache. That's
1:31:521 hour, 31 minutes, 52 secondswhy it's so fast. But even if that cache fails for whatever reason or we just or
1:31:591 hour, 31 minutes, 59 secondsthe cache is invalid, you know, maybe enough time has passed on the client component that we should refetch the data. In that case, we do the usual
1:32:071 hour, 32 minutes, 7 secondsfetch get users do an HTTP batch request route to app router get users Prisma users find many and bring back the
1:32:151 hour, 32 minutes, 15 secondsresult to cache. But what I'm trying to say that is that we skipped this entire part by having the prefetch
1:32:211 hour, 32 minutes, 21 secondsfunctionality which automatically does a cache hit on the client component which means that we have data from cache and
1:32:281 hour, 32 minutes, 28 secondsI'm super impressed how code rabbit entirely understood what we did here.
1:32:331 hour, 32 minutes, 33 secondsThis is such a complex topic and code rabbit perfectly understood what we just created and in here it also uh reviewed
1:32:411 hour, 32 minutes, 41 secondsour uh code in detail but since we are going to modify this in the next chapters we don't really have to you
1:32:491 hour, 32 minutes, 49 secondsknow take it to heart. Yes, these are not exactly the most ready snippets yet.
1:32:551 hour, 32 minutes, 55 secondsSome of them have to say stay the same way because we copy them from the documentation but some of them will be modified. For example, in here it says
1:33:021 hour, 33 minutes, 2 secondsthat the context is useless and it is because we never actually infer the context type. We are going to do that
1:33:091 hour, 33 minutes, 9 secondsbut later we don't need it now. In here also it notices that we are doing doing Prisma user find many. So it modifies
1:33:171 hour, 33 minutes, 17 secondsour procedure to uh have a limit to have a cursor. It basically added the entire pagionation for us or at least to limit
1:33:241 hour, 33 minutes, 24 secondsit to something so it doesn't uh give us too many data uh back here. So that's how useful code rabbit will be in this
1:33:331 hour, 33 minutes, 33 secondstutorial. Uh I'm super impressed by how easily it can create these diagrams which help us explain what's going on with our code which is especially useful
1:33:411 hour, 33 minutes, 41 secondsin this very complex scenario. So I'm so happy that I managed to explain once again how this prefetch is working and why it's so useful for us to populate
1:33:491 hour, 33 minutes, 49 secondsthat cache because then once we reach the client side we are just using the cache hit and we can skip this entire complicated and long uh query instead.
1:33:591 hour, 33 minutes, 59 secondsThat's why it's so fast to leverage both server components and client components together because you get the both of best worlds. You get automatic caching
1:34:081 hour, 34 minutes, 8 secondsand revalidation of the client components but you get faster initial site load with server side components.
1:34:141 hour, 34 minutes, 14 secondsThat's what we are doing here. Uh amazing. So I'm not going to modify anything right now. I'm just going to merge this as it is because I am satisfied with it. Uh once we have
1:34:231 hour, 34 minutes, 23 secondsmerged it, I don't delete my branches. I like to keep them. So in my source code here, I can have each branch
1:34:301 hour, 34 minutes, 30 secondsindividually. But once you have changed, let's go into main branch and make sure to always click on synchronize changes
1:34:381 hour, 34 minutes, 38 secondsand okay. And then go ahead inside of your source control here.
1:34:441 hour, 34 minutes, 44 secondsClick on graph. And in here you should see a detachment for TRPC setup and then merging that back in. And if you go
1:34:531 hour, 34 minutes, 53 secondsinside of source and see the TRPC folder on your main branch, it means you did everything correctly. I believe that
1:35:001 hour, 35 minutesmarks the end of this chapter. So, let's go ahead and confirm. That's it. We created a new branch PR and reviewed and
1:35:081 hour, 35 minutes, 8 secondsmerged. Amazing, amazing job on handling this complicated chapter. I hope I uh kind of managed to explain why we did it
1:35:151 hour, 35 minutes, 15 secondsand the long-term benefits of it. And see you in the next chapter.
Chapter 5: 04 Authentication
1:35:211 hour, 35 minutes, 21 secondsIn this chapter, we're going to focus on adding authentication to our project.
1:35:271 hour, 35 minutes, 27 secondsWe're going to do that by implementing better ALF, a new AL library that is slowly becoming the standard for ALF
1:35:341 hour, 35 minutes, 34 secondseverywhere. So, let's go ahead and start by following the Better AL documentation. You can use the link on the screen to visit their page.
1:35:461 hour, 35 minutes, 46 secondsLet's go ahead and click get started right here. And let's go ahead and click on installation.
1:35:531 hour, 35 minutes, 53 secondsI'm going to select my package manager which is npm and I'm simply going to run npm install better al.
1:36:011 hour, 36 minutes, 1 secondLet me go ahead and just make sure that I'm not running my app at the moment and I don't need prisma studio either. So I
1:36:081 hour, 36 minutes, 8 secondshave no servers running just npm install better out and immediately I'm going to show you what version of better out I'm
1:36:161 hour, 36 minutes, 16 secondsusing since it is a pretty important package here. So, as you can see, I'm using better out 1.3.26.
1:36:241 hour, 36 minutes, 24 secondsSo, as always, my advice is the same as for TRPC. If you are on the same major version as me, you're probably not going
1:36:321 hour, 36 minutes, 32 secondsto have any problems. But if you're watching this from version five of better out, you will most likely have some problems and you should probably
1:36:401 hour, 36 minutes, 40 secondsuse the same version as me and then upgrade later. Um, but given what I've experienced with better out so far is
1:36:491 hour, 36 minutes, 49 secondsthat they take extreme care when it comes to good developer experience. So I have no doubt that they will take care of all kinds of backwards compatibility.
1:37:001 hour, 37 minutesBut still I'm showing you my version just so you are aware on what version I am building this authentication module.
1:37:081 hour, 37 minutes, 8 secondsNow let's go ahead and let's set up better out secret. And they've generated this handy button to generate secrets
1:37:151 hour, 37 minutes, 15 secondsfor us. So let's go ahead and go inside of environment here. Let's add better out
1:37:241 hour, 37 minutes, 24 secondsand let's add better out secret. I have a preference of adding these in quotes like that.
1:37:311 hour, 37 minutes, 31 secondsLet's go ahead and see what else we have to do. We have to set the base URL and we can actually copy this as it is
1:37:381 hour, 37 minutes, 38 secondsbecause it is HTTP localhost 3000. If you're not sure what is your app URL, go
1:37:461 hour, 37 minutes, 46 secondsahead and run npm rundev. And in here you will see local http localhost 3000.
1:37:561 hour, 37 minutes, 56 secondsGreat. Now that we have that, let's go ahead and create a file named al.ds inside of the lib folder.
1:38:041 hour, 38 minutes, 4 secondsSo I'm going to go inside of source lib and I'm going to create out.ts.
1:38:101 hour, 38 minutes, 10 secondsIn here I'm going to import better out from better out and then export const
1:38:211 hour, 38 minutes, 21 secondsand let's leave it empty as in the example above.
1:38:261 hour, 38 minutes, 26 secondsIn here we are told to configure a database here. So let's go ahead and look just below where it says
1:38:331 hour, 38 minutes, 33 secondsalternatively if you prefer to use an OM which is our case we use Prisma. Let's click on the Prisma tab and let's see how to configure it. So first things
1:38:411 hour, 38 minutes, 41 secondsfirst we have to import a Prisma adapter. So import Prisma adapter from better out adapters Prisma. Then let's
1:38:491 hour, 38 minutes, 49 secondsgo ahead and import Prisma or is it database? My apologies I'm too zoomed in so I can't see where my
1:38:581 hour, 38 minutes, 58 secondsimports are coming from. I think it's Prisma from SLDB or if you prefer you
1:39:051 hour, 39 minutes, 5 secondscan use it like this so you know exactly where it's coming from.
1:39:091 hour, 39 minutes, 9 secondsSo once you have that, let's go ahead and let's do database
1:39:181 hour, 39 minutes, 18 secondsPrisma adapter pass in Prisma open an object provider
1:39:251 hour, 39 minutes, 25 secondspostgress because that's the database that we are using for Prisma. So we import better out from better out
1:39:331 hour, 39 minutes, 33 secondspackage. We import Prisma adapter from better out adapters Prisma and Prisma from lib database which is this little
1:39:411 hour, 39 minutes, 41 secondsutil we've created in the previous chapters.
1:39:461 hour, 39 minutes, 46 secondsWhat we have to do now is we have to create database tables. What I would suggest you do right now is you go ahead uh let me just close this.
1:39:571 hour, 39 minutes, 57 secondsYou go inside of source my apologies inside of Prisma schema.prisma Prisma right here. And you
1:40:051 hour, 40 minutes, 5 secondscan go ahead and copy this entire file just in case. You actually don't have to worry because if you did Git Workflow the same as me, you can easily revert
1:40:141 hour, 40 minutes, 14 secondsyour changes. But let's go ahead and let's run npx better-out sli generate.
1:40:221 hour, 40 minutes, 22 secondsSo I'm going to go ahead and run this inside of the root of my application.
1:40:271 hour, 40 minutes, 27 secondsIt's going to recognize Prisma. So let me just confirm this update here. And now you can see exact CLI version that I'm using in case you want to use the
1:40:341 hour, 40 minutes, 34 secondssame version. So it noticed Prisma schema. And it tells me that it will overwrite it because it will write directly into that file. Let's go ahead
1:40:431 hour, 40 minutes, 43 secondsand confirm that because we don't really have anything important there. But that's why I told you to copy the file just in case you had some important things. I don't know how exactly you're
1:40:511 hour, 40 minutes, 51 secondsfollowing this tutorial. But nevertheless, uh in my experience, it never actually overrides the entire thing. Yeah, as you can see, I still
1:40:591 hour, 40 minutes, 59 secondshave uh something here. And I think we actually might have a problem here. It's because we already had the user object.
1:41:081 hour, 41 minutes, 8 secondsYeah, let's go ahead and do this. Let's remove the entire thing.
1:41:121 hour, 41 minutes, 12 secondsLet's just leave it empty. Schema Prisma like this. And let's try again. Yes.
1:41:211 hour, 41 minutes, 21 secondsAnd now you can see the user model is correct. The reason we had a problem uh is because we had an existing schema
1:41:291 hour, 41 minutes, 29 secondsPrisma and that schema Prisma already had the model user because if you remember
1:41:381 hour, 41 minutes, 38 secondswhen we followed Prisma guide we copied this model right here of the user.
1:41:481 hour, 41 minutes, 48 secondsSo it ended up having a problem, right?
1:41:511 hour, 41 minutes, 51 secondsThat's why I just deleted all models now and then I rerun the generate command.
1:41:561 hour, 41 minutes, 56 secondsIt found the Prisma schema again and then it populated it correctly. So uh let's go ahead and see what fields we
1:42:051 hour, 42 minutes, 5 secondsare supposed to have inside. So you can see whether you have the correct ones too.
1:42:111 hour, 42 minutes, 11 secondsWe should have the user with an ID, name, email, email verified, image, timestamps, session, accounts, unique field for the email and map to user.
1:42:241 hour, 42 minutes, 24 secondsThen you have the session which has all of these fields and a relation to the user as as well as these unique and map fields
1:42:331 hour, 42 minutes, 33 secondsaccount and verification.
1:42:371 hour, 42 minutes, 37 secondsThese are the fields you are supposed to have in your Prisma schema and you should have no errors. Save that file now and let's go ahead and migrate it.
1:42:461 hour, 42 minutes, 46 secondsSo, npx prisma migrate dev like that.
1:42:521 hour, 42 minutes, 52 secondsAnd let's go ahead and call this better out once we uh get the prompt. Keep in mind that if you have existing data
1:42:591 hour, 42 minutes, 59 secondsinside, you will most likely have to delete that data. You can do that by using npx prisma migrate reset. This way
1:43:081 hour, 43 minutes, 8 secondsyou can you will delete all of your data. For example, you can see the warning I'm getting here. You are about to drop the user's table. So yeah, in my
1:43:161 hour, 43 minutes, 16 secondscase that's completely fine. Better out fields.
1:43:211 hour, 43 minutes, 21 secondsThere we go. So now we have a new Prisma schema. And if you run npx Prisma Studio, uh you should now no longer have any users in here.
1:43:351 hour, 43 minutes, 35 secondsBut you should now have an account model, session model, user model, and verification model. All of these fields are needed to properly run better out.
1:43:451 hour, 43 minutes, 45 secondsPerfect.
1:43:471 hour, 43 minutes, 47 secondsSo once we have done that migration, I think that now we can do npm rundev.
1:43:541 hour, 43 minutes, 54 secondsAnd let's see what we actually uh have to do now. So we didn't run the migrate here because that's only for specific
1:44:021 hour, 44 minutes, 2 secondsadapters, not for Prisma. But the Prisma migration script is very easy anyway. So that's actually it when it comes to what
1:44:111 hour, 44 minutes, 11 secondswe have to do. So for example, let's now enable email and password login. We do that so simply by going inside of source
1:44:191 hour, 44 minutes, 19 secondslib.ts email and password enabled. True. That's
1:44:261 hour, 44 minutes, 26 secondsit. That's how you enable email and password login in better al. And now let's go ahead and let's build uh a form
1:44:351 hour, 44 minutes, 35 secondsthat will accept those fields. So I'm going to go ahead and I'm going to go inside of source
1:44:421 hour, 44 minutes, 42 secondsapp and let me create an out route group and let me create login and inside of
1:44:501 hour, 44 minutes, 50 secondshere page.tsx tsx const page return login
1:44:581 hour, 44 minutes, 58 secondsexport default page.
1:45:021 hour, 45 minutes, 2 secondsSo what I've done is I've created a reserved file name page with a default export and I've put it inside of a login
1:45:091 hour, 45 minutes, 9 secondsfolder inside of the app folder and in between those two I've created an out folder in parenthesis. What this is used
1:45:181 hour, 45 minutes, 18 secondsfor is to organize your folders, your routes, your groups, right? Without
1:45:251 hour, 45 minutes, 25 secondsaffecting the URL. So the way you can access the login page now is by going to localhost 3000
1:45:341 hour, 45 minutes, 34 secondsand then forward slashlo and then you can see the text login here. So notice how let me just show you
1:45:441 hour, 45 minutes, 44 secondshere http localhost 3000/log. So that's my current URL. So notice how I didn't have to write out inside. That's what
1:45:531 hour, 45 minutes, 53 secondsthis is used for because usually inside of the app folder uh any encapsulating folder name which holds a reserved file
1:46:021 hour, 46 minutes, 2 secondsname page becomes part of the URL. Well, if you want to avoid that and you just want to use folders for organization purposes like I am now for out, you can
1:46:101 hour, 46 minutes, 10 secondsadd parenthesis and then it will not be a part of the URL. You will just simply go to forward slash login.
1:46:191 hour, 46 minutes, 19 secondsPerfect. So now that we are inside of the uh login here uh let's go ahead and build a form.
1:46:291 hour, 46 minutes, 29 secondsSo the place where I'm going to do that is going to be inside of source. I'm going to create a new folder called features.
1:46:371 hour, 46 minutes, 37 secondsAnd inside of here, I'm going to create an alpha feature. And then in here, I'm going to create components. Let's go ahead and create a login form.
1:46:471 hour, 46 minutes, 47 secondsDSX. Let's mark it as use client.
1:46:531 hour, 46 minutes, 53 secondsAnd let's go ahead and add all the imports that we're going to need. Though the first imports that we're going to add are going to be zod resolver from
1:47:011 hour, 47 minutes, 1 secondhook form resolvers zod image from next image link from next link use router from next navigation use form from react
1:47:091 hour, 47 minutes, 9 secondshook form toast from soner z from zod and button from components ui button. If you're wondering where do all of these
1:47:161 hour, 47 minutes, 16 secondsimports come from, they all come from the shatzen UI command that we run uh in the first chapter. So if you remember we
1:47:241 hour, 47 minutes, 24 secondsrun npx chatcen add-all.
1:47:281 hour, 47 minutes, 28 secondsWhat that did amongst adding all components was also add a bunch of package json files. My apologies. A bunch of packages in the package json to
1:47:371 hour, 47 minutes, 37 secondsmake all of those components work. So yes, you already have for example react day picker. Uh you already have where is
1:47:461 hour, 47 minutes, 46 secondsmy react hook form? Here it is. React hook form. You already have zod. you already have hook form resolvers. So
1:47:541 hour, 47 minutes, 54 secondsthat's where all of these imports are coming from.
1:47:571 hour, 47 minutes, 57 secondsAll right. Uh now let's go ahead and import everything we need design-wise.
1:48:011 hour, 48 minutes, 1 secondSo besides the button, we're also going to need every component from components UI card. And then we're going to need
1:48:091 hour, 48 minutes, 9 secondseverything from the form field. So form, form control, form field, form item, form label, and form message.
1:48:181 hour, 48 minutes, 18 secondsAnd last three imports are going to be an input. Uh and we're going to need out client.
1:48:251 hour, 48 minutes, 25 secondsUh let's comment this out for now because we are getting an error. We will come back to this later. Uh I think I forgot to do that. Yes, it's a super
1:48:331 hour, 48 minutes, 33 secondssimple thing. Uh but we can continue with what we're doing right now so we don't lose focus. So let's start by
1:48:401 hour, 48 minutes, 40 secondsdefining the form schema. So this form schema which is login form is going to have two fields email and password. So let's define that using zod.
1:48:511 hour, 48 minutes, 51 secondsSo login schema is equal to zod.object which accepts email which is a type of z.mail and password which is a type of z
1:48:591 hour, 48 minutes, 59 secondsdot string with a minimum value of one as well as some error messages if that rules are broken.
1:49:061 hour, 49 minutes, 6 secondsNow while we are here let's quickly define the type for this form. So login form values are using Z as zod.info type
1:49:141 hour, 49 minutes, 14 secondsof login schema and let's export function login form here. Now let me just fix this.
1:49:251 hour, 49 minutes, 25 secondsThe props are going to be um actually we don't need any props here.
1:49:321 hour, 49 minutes, 32 secondsWe can just go ahead and do this.
1:49:351 hour, 49 minutes, 35 secondsNow let's define the router to be use router and let's define the form to be use form.
1:49:441 hour, 49 minutes, 44 secondsSo con form use form.
1:49:481 hour, 49 minutes, 48 secondsNow inside of this form let's go ahead and give it all the properties needed to infer the login schema. So use form open
1:49:561 hour, 49 minutes, 56 secondsan object add the resolver zod resolver which uses the login schema object and default values which are email and
1:50:041 hour, 50 minutes, 4 secondspassword and in order to make this type safe let's also properly infer login form values here. There we go. Now let's
1:50:131 hour, 50 minutes, 13 secondsgo ahead and define the onsubmit method which is going to be an asynchronous login form values function and let's just console log values.
1:50:261 hour, 50 minutes, 26 secondsLet me fix the typo here.
1:50:301 hour, 50 minutes, 30 secondsNow let's define is bending to be form form state and then is submitting. This way we store this in a shorter named
1:50:381 hour, 50 minutes, 38 secondsfield so it's easier to look at our code really. Now let's go ahead inside of here and return a div. Let's give this
1:50:461 hour, 50 minutes, 46 secondsdiv a class name of flex flex column and gap of six.
1:50:511 hour, 50 minutes, 51 secondsBefore we do anything further, I want to render this login form component somewhere so that we can actually see what we're doing inside of this page
1:51:001 hour, 51 minutesinside of this div. Let's do a simple login form from at features al components login form.
1:51:091 hour, 51 minutes, 9 secondsSo right now as you can see we can't really see much but we are going to slowly start to see that now. So inside
1:51:171 hour, 51 minutes, 17 secondsof here I'm going to add my card element.
1:51:201 hour, 51 minutes, 20 secondsI'm going to go ahead and go inside of the card and give this a card header.
1:51:261 hour, 51 minutes, 26 secondsAnd I'm going to give the card header a class name of text center. Inside, I'm going to add a card title with a text, welcome back.
1:51:371 hour, 51 minutes, 37 secondsBelow the card title, I'm going to add card description with a text login to continue.
1:51:441 hour, 51 minutes, 44 secondsOutside of the uh card header, I'm going to add card content.
1:51:501 hour, 51 minutes, 50 secondsAnd then I'm going to add a form element. Inside of this form element, I'm going to spread the form constant which comes from the hook which we have
1:51:581 hour, 51 minutes, 58 secondsdefined above. And now inside of this form, let's go ahead and let's add a native form element like this. This
1:52:081 hour, 52 minutes, 8 secondsnative form element will have an onsubmit method of form handle submit and pass in the onsubmit.
1:52:171 hour, 52 minutes, 17 secondsThen let's open a div inside of that form with a class name of grid gap six.
1:52:261 hour, 52 minutes, 26 secondsThen let's open another div with a class name of flex flex column and gap 4.
1:52:331 hour, 52 minutes, 33 secondsThen let's add a button. Let's give this button a variant of outline.
1:52:411 hour, 52 minutes, 41 secondsLet's give it a class name of full width.
1:52:451 hour, 52 minutes, 45 secondsLet's give it a type of button so it doesn't accidentally trigger the submit method. And let's disable it if we are pending.
1:52:541 hour, 52 minutes, 54 secondsAnd in here, let's say continue with GitHub. Let's go ahead and copy and paste this.
1:53:021 hour, 53 minutes, 2 secondsAnd let's change this to be continue with Google. There we go.
1:53:081 hour, 53 minutes, 8 secondsNow, outside of this div, let's add a new div. And let's close it like this with a class name, which is going to be
1:53:181 hour, 53 minutes, 18 secondsgrid gap 6.
1:53:241 hour, 53 minutes, 24 secondsAdd a form field which is a self-closing tag. Give it control property of form.
1:53:321 hour, 53 minutes, 32 secondsName which is email render.
1:53:361 hour, 53 minutes, 36 secondsLet me just properly extract from the render field the field property.
1:53:431 hour, 53 minutes, 43 secondsAnd then inside of here, let's go ahead and let's render the form item
1:53:491 hour, 53 minutes, 49 secondslike this. inside form label which will simply say email and then form control.
1:53:581 hour, 53 minutes, 58 secondsLet's add a self-closing input tag. Give it a type of email. Give it a placeholder of macample.com.
1:54:091 hour, 54 minutes, 9 secondsAnd let's go ahead and spread the field property like this.
1:54:141 hour, 54 minutes, 14 secondsAnd now below the form control, let's add form message here, which is a self-closing tag. In here we're going to render any errors. Now that we have
1:54:231 hour, 54 minutes, 23 secondsestablished this, we can go ahead and we can copy this form field. So this self-closing tag and paste it below.
1:54:321 hour, 54 minutes, 32 secondsAnd this one will control the password field. So change the form label to be password. Change the type to be
1:54:401 hour, 54 minutes, 40 secondspassword. And for the placeholder, you can just add some asterisk here.
1:54:481 hour, 54 minutes, 48 secondsJust like that.
1:54:511 hour, 54 minutes, 51 secondsNow, outside of this self-closing form field, add a button with a login
1:54:581 hour, 54 minutes, 58 secondsuh text. Give it a type of submit. Give it a class name of full width and give it a disabled if is pending.
1:55:081 hour, 55 minutes, 8 secondsJust like that.
1:55:111 hour, 55 minutes, 11 secondsAnd now just outside of this div, add a new div with a class name text center and text small.
1:55:221 hour, 55 minutes, 22 secondsInside of here, we're going to ask don't have an account question mark. And then let's add a space like this. If you
1:55:311 hour, 55 minutes, 31 secondsdon't have an account, let's use the link to sign up by going to href slash sign
1:55:401 hour, 55 minutes, 40 secondsup and give this a class name underline underline- offset-4.
1:55:471 hour, 55 minutes, 47 secondsIf you're getting an error for this asterisk, you can just use appos like this.
1:55:531 hour, 55 minutes, 53 secondsSo, don't have an account and when you click it will lead you to a 404 page because we didn't develop it yet. But that's how we're going to switch between
1:56:001 hour, 56 minuteslogin and register. So, if you try and hit login now, you will just get some errors. But even if you try uh
1:56:071 hour, 56 minutes, 7 secondssubmitting something, the only thing you'll actually be able to see here are the logs because the only thing we added was console log values here. So let me
1:56:171 hour, 56 minutes, 17 secondsopen inspect element here. Let me go inside of the console. And once I click login, there we go.
1:56:251 hour, 56 minutes, 25 secondsWhoops. I can only see the email and the password that I have entered. If you see that, it means you've developed everything correctly.
1:56:341 hour, 56 minutes, 34 secondsSo before we go any further, uh I want to go ahead and copy this entire thing and create register form.
1:56:441 hour, 56 minutes, 44 secondsSo let's go ahead and copy the login form.
1:56:511 hour, 56 minutes, 51 secondsLet's paste it in this components folder and rename it register form.
1:56:571 hour, 56 minutes, 57 secondsAnd then go inside of the app folder. Go inside of the out. Go ahead and create a new folder called sign up or register
1:57:061 hour, 57 minutes, 6 secondswhatever you prefer. And then page tsx inside.
1:57:131 hour, 57 minutes, 13 secondsI'm going to simply repeat a div which renders register form.
1:57:191 hour, 57 minutes, 19 secondsNow we can't really import this right now because we didn't change the name.
1:57:251 hour, 57 minutes, 25 secondsSo we have to go back inside of our features al components register form and let's go ahead and immediately change the name to register form. So now we are
1:57:341 hour, 57 minutes, 34 secondsexporting a function called register form which means that now we should be able to import that from features out components register-form.
1:57:431 hour, 57 minutes, 43 secondsThere we go. So now when user clicks on sign up here they are no longer getting an error but they are also not seeing anything different from the login form.
1:57:551 hour, 57 minutes, 55 secondsSo just make sure that right now you are on uh localhost 3000/sign up.
1:58:031 hour, 58 minutes, 3 secondsMake sure you are on this page because we are developing the register form now.
1:58:071 hour, 58 minutes, 7 secondsuh or if you have named this register in that case go to register right just make sure you're looking at the new register
1:58:151 hour, 58 minutes, 15 secondsform so in order to see that immediately let's change this from welcome back to
1:58:221 hour, 58 minutes, 22 secondsget started there we go now I can see the text which says get started and instead of login to continue it's going to be create your
1:58:301 hour, 58 minutes, 30 secondsaccount to get started like this and then we can scroll all the way down to the footer which asks don't have an
1:58:391 hour, 58 minutes, 39 secondsaccount and let's change this to instead ask already have an account and let's use the href to go to login and the text
1:58:481 hour, 58 minutes, 48 secondswill be log and now you should be able to switch between the two log it says welcome back sign up it says get started
1:58:581 hour, 58 minutes, 58 secondsperfect now let's focus exclusively on the login form so I'm going to start by changing the name of the schema into
1:59:071 hour, 59 minutes, 7 secondsregister schema and I think that we are using it in this three instances here.
1:59:121 hour, 59 minutes, 12 secondsSo I'm going to change all three at the same time using command D. Uh you can change individually if you want to but yeah here's a little trick if you're
1:59:201 hour, 59 minutes, 20 secondsusing Visual Studio Code. Select the variable and then press command D two more times. So one two and that will
1:59:281 hour, 59 minutes, 28 secondsselect all three instances and then I can change it to register schema. It's a cool little trick. Now let's go ahead
1:59:361 hour, 59 minutes, 36 secondsand also add confirm password here which is also going to be a string but we're not going to add any rules to it directly here. Instead we're going to
1:59:431 hour, 59 minutes, 43 secondsadd a refine method. Refine will get the data and it will check if data.p password is equal to data.confirm
1:59:521 hour, 59 minutes, 52 secondsconfirm password and if it's not in that case the message is going to be passwords
2:00:002 hoursdon't match and the place where we are going to show this error is defined in a path confirm password so we are not
2:00:092 hours, 9 secondsgoing to show that in the password field we're going to show that in the confirm password field uh and I think that you can even choose both of them if you want
2:00:172 hours, 17 secondsto and then both fields will have the error Great. Now I'm going to change the login form values. Again, three instances. So
2:00:262 hours, 26 secondsI use command D. If you are on Windows, perhaps it's uh control D. So one, two, like this. All three are selected. And
2:00:342 hours, 34 secondsnow I can do register form values like this.
2:00:412 hours, 41 secondsAnd let's go ahead and add confirm password here to be an empty string like this. Perfect.
2:00:482 hours, 48 secondsWe can leave everything as it is and we just have to add one more form field. So let's go ahead and copy it and let's paste it here and change the name here
2:00:572 hours, 57 secondsto be confirm password and change it here to be confirm password as well. Uh and let me see if that's the only thing
2:01:062 hours, 1 minute, 6 secondswe need. We can actually do it like this. Confirm password. Type password.
2:01:102 hours, 1 minute, 10 secondsYeah, everything here should be the same. And then change the sign login to sign up. There we go.
2:01:162 hours, 1 minute, 16 secondsAnd now if I for example type in antoniomail.com here and if I type 1 2 3 4 5 6 7 8 and 1 2 3 4 5 6 7 8 it works.
2:01:272 hours, 1 minute, 27 secondsBut if I change to 9ine it doesn't work. Perfect.
2:01:332 hours, 1 minute, 33 secondsAnd let me see. There was this weird error. Let me try again.
2:01:422 hours, 1 minute, 42 secondsI'm not sure how to reproduce that error, but it had some weird error message. Uh maybe it was the specific hot reload state that I was in. Not
2:01:502 hours, 1 minute, 50 secondssure. But uh I think this should work normally.
2:01:532 hours, 1 minute, 53 secondsAll right. Just make sure you have added the default value for it.
2:01:582 hours, 1 minute, 58 secondsExcellent. All right. So now we have both a login and register uh fields here. And now what we have to do is we
2:02:072 hours, 2 minutes, 7 secondsactually have to create an account when we register because we can't even attempt to try to log in if we are not
2:02:142 hours, 2 minutes, 14 secondsuh registered. So in order to do that uh we have to go back to our better AL library here and let me just
2:02:232 hours, 2 minutes, 23 secondsscroll up because I have obviously missed something here. So I've added AL.ts here
2:02:302 hours, 2 minutes, 30 secondsbut I didn't add ALC client.ts s and here it is create client instance perfect so react that's the one we are
2:02:402 hours, 2 minutes, 40 secondsusing yes we are using nexjs but we are using react for the front end right so go inside of lib the same place where we
2:02:482 hours, 2 minutes, 48 secondsuh created alds and now add-client ds
2:02:552 hours, 2 minutes, 55 secondsgo ahead and import create al client from better out forward slreact
2:03:022 hours, 3 minutes, 2 secondsand export con out client here create outclient and execute the function. So it looks
2:03:112 hours, 3 minutes, 11 secondslike this right inside of here they say that you need to add a base URL except if you are on the same domain. So for us
2:03:202 hours, 3 minutes, 20 secondsit's actually enough for the snippet to look like this. That's all we really need.
2:03:282 hours, 3 minutes, 28 secondsAnd now what we can do is the following.
2:03:312 hours, 3 minutes, 31 secondsWe can now go ahead inside of source features out register form right here
2:03:382 hours, 3 minutes, 38 secondsand instead of just doing console log for our values, we can actually log in. So we can do
2:03:462 hours, 3 minutes, 46 secondsawait outclient sign up. Let me first import outclient from lib outclient like
2:03:542 hours, 3 minutes, 54 secondsthis lib outclient. And yes, you can now remove the commented out code because that's the exact snippet that we added.
2:04:052 hours, 4 minutes, 5 secondsDot sign up do email like that. Open an object. Add name to be values.mmail.
2:04:142 hours, 4 minutes, 14 secondsGo ahead and add email to be values.mmail. Whoops. Password to be values.
2:04:232 hours, 4 minutes, 23 secondsand call back URL for now can be a forward slash and it's URL like so
2:04:332 hours, 4 minutes, 33 secondson success here my apologies open another object these are now the fetch options so on success of this fetch
2:04:422 hours, 4 minutes, 42 secondslet's do routerpush to a forward slash on error let's go ahead and get the
2:04:492 hours, 4 minutes, 49 secondserror message here and let's go ahead and do toast context.
2:04:552 hours, 4 minutes, 55 secondsThe only problem is you can't call toast from son before you add toaster to your layout. So let's quickly do that by
2:05:042 hours, 5 minutes, 4 secondsgoing inside of source app folder layout and just add toaster from components UI
2:05:132 hours, 5 minutes, 13 secondsjust like this. Now everything will work just fine.
2:05:182 hours, 5 minutes, 18 secondsUh, and there's another thing you can actually modify here. Let me try and see if it's here or maybe it's if it's in
2:05:252 hours, 5 minutes, 25 secondsconcepts here. Authentication, uh, email and password. Here it is. So, we already did this, right? We enabled
2:05:342 hours, 5 minutes, 34 secondsthe email and password. Uh, but you can actually, uh, do even cooler things here. Let me see. So, they have
2:05:412 hours, 5 minutes, 41 secondsdocumentation for signing out. They have email verification here. uh but what I'm
2:05:472 hours, 5 minutes, 47 secondstrying to find is a very simple way using uh better out that you can
2:05:552 hours, 5 minutes, 55 secondsautomatically sign in. So if I go instead of al client my apologies al.ts instead of source.lib
2:06:022 hours, 6 minutes, 2 secondsemail and password auto sign in set to true. What this will do is it will
2:06:092 hours, 6 minutes, 9 secondsbasically automatically sign in when someone registers because usually you register and then you have to log in again. So by adding this little boolean
2:06:182 hours, 6 minutes, 18 secondsyou will automatically log in. So now let's go inside of uh source app uh
2:06:252 hours, 6 minutes, 25 secondspage.tsx right here. Uh and let's clean this up.
2:06:312 hours, 6 minutes, 31 secondsSo we use this as an example, right? So we no longer have to do that. Feel free to remove all of these imports and make this a client component.
2:06:422 hours, 6 minutes, 42 secondsAnd in here, let's go ahead and let's just simply check our out state. So, let
2:06:472 hours, 6 minutes, 47 secondsme go ahead and find that API here. So, this is server side. Uh, and let's see how do we do it using uh client side.
2:06:592 hours, 6 minutes, 59 secondsHere it is client. So, we already established the client instance. We already tested this. So here it is. Use
2:07:072 hours, 7 minutes, 7 secondssession from create outclient. That's exactly what I want to do. I want to see if we are logged in or if we are not logged in. So let's go ahead and add
2:07:152 hours, 7 minutes, 15 secondsthis. And let's import create outclient from better out react. Uh or perhaps
2:07:232 hours, 7 minutes, 23 secondsuh I think we can just import let me go ahead inside of my out-client. Yes, I think we should definitely use this outclient here. out client.
2:07:342 hours, 7 minutes, 34 secondsUh maybe not not 100% sure. Let me see. Dot use session. Here it is.
2:07:452 hours, 7 minutes, 45 secondsAnd then we don't have to import this. There we go. So in here, let's see data.
2:07:512 hours, 7 minutes, 51 secondsAnd let's just do JSON.stringify data like that. And let's add a button
2:07:582 hours, 7 minutes, 58 secondswhich we can import from components UI button log out and on click out client
2:08:072 hours, 8 minutes, 7 secondsand let's go ahead and find the log out the sign out like this.
2:08:152 hours, 8 minutes, 15 secondsThere we go. But that's only if data is present.
2:08:212 hours, 8 minutes, 21 secondsSo let's not render the log out button unless we are logged in.
2:08:252 hours, 8 minutes, 25 secondsThere we go. Just make sure you have added use client to your app folder, page.tsx. And you can now remove client.tsx.
2:08:332 hours, 8 minutes, 33 secondsWe only used it as an example. Feel free to remove it. We no longer need it.
2:08:392 hours, 8 minutes, 39 secondsLet's go ahead and try some things out now. So I'm going to go ahead and prepare some things. So first of all, make sure you have npm rundev running.
2:08:472 hours, 8 minutes, 47 secondsAnd then let's also do npx prisma studio here.
2:08:532 hours, 8 minutes, 53 secondsRight now, we should have absolutely uh no users whatsoever. Let me see what's the problem in here. I'm not sure. Can I refresh?
2:09:042 hours, 9 minutes, 4 secondsOkay, looks like now it's fine.
2:09:072 hours, 9 minutes, 7 secondsAnd now I'm going to go ahead here and first let's go to localhost 3000 just without any uh
2:09:162 hours, 9 minutes, 16 secondsanything. And you should just see null because we are not logged in. And now if I go to forward slashs signup because
2:09:242 hours, 9 minutes, 24 secondsthat's where my register form is. I'm going to add antonommail.com.
2:09:282 hours, 9 minutes, 28 seconds1 2 3 4 5 6 7 8 and 1 2 3 4 5 6 7 8. And I'm going to click sign up like this. Uh
2:09:372 hours, 9 minutes, 37 secondsand looks like I've got an error. So let's see what the error is about. And I think I actually know what the error is. I think uh I forgot to add the API out.
2:09:462 hours, 9 minutes, 46 secondsMy apologies. So let's go ahead back instead of getting started installation.
2:09:522 hours, 9 minutes, 52 secondsI should have just followed this uh to the end. This is definitely my fault because I get very excited and I want to show you immediately. Uh so let me go
2:10:012 hours, 10 minutes, 1 secondahead uh and find further usage for next.js here because I think we also
2:10:072 hours, 10 minutes, 7 secondshave to add this to our API list. So let's see next.js here it is. Yes. So
2:10:162 hours, 10 minutes, 16 secondsmount handler you have to select next.js and then you have to add the out all route right here and then it will work.
2:10:262 hours, 10 minutes, 26 secondsSo let's go inside of source app folder API. Let's go ahead and create out.
2:10:342 hours, 10 minutes, 34 secondsThen inside of here go ahead and create a catch all route similar to the TRPC one but in here we
2:10:422 hours, 10 minutes, 42 secondsdo the spread to catch all. and then route.ts inside and then just go ahead and copy this and
2:10:512 hours, 10 minutes, 51 secondspaste it. I will show you exactly how it looks like. So from our lib out file
2:10:582 hours, 10 minutes, 58 secondsand from better out next.js we map the post and the get routes. So actually very similar to what we do in TRPC we map the get and the post routes as well.
2:11:082 hours, 11 minutes, 8 secondsPerfect. So now that you have this uh let's go back here and let's sign up.
2:11:172 hours, 11 minutes, 17 secondsLet's wait a second. And there we go.
2:11:202 hours, 11 minutes, 20 secondsYou can see I have my loggedin session right here.
2:11:252 hours, 11 minutes, 25 secondsAnd not only do I have this uh session here, but I should also now have my user here in the database. Let's refresh
2:11:332 hours, 11 minutes, 33 secondshere. There we go. My name, my email, every information is here. My session, my accounts, everything is here.
2:11:422 hours, 11 minutes, 42 secondsPerfect. And now I have this log out button. And when I click that, there we
2:11:492 hours, 11 minutes, 49 secondsgo. I am now logged out. Perfect. So now our authentication is officially working. So now you might be wondering,
2:11:582 hours, 11 minutes, 58 secondsall right, how do I redirect? You know, so for example, let's say inside of our app folder, page.tsx,
2:12:062 hours, 12 minutes, 6 secondslet's now convert this back to a normal protected server component.
2:12:142 hours, 12 minutes, 14 secondsSo I only want logged in users to see this. How do we do that?
2:12:202 hours, 12 minutes, 20 secondsSo the way I like to do this is by going inside of source lib and creating out-Utils.
2:12:302 hours, 12 minutes, 30 secondsDS import headers from next headers. Import a redirect from next navigation.
2:12:392 hours, 12 minutes, 39 secondsimport out from uh slashout because we are in the lib folder. Let's define require out function which is going to
2:12:482 hours, 12 minutes, 48 secondsbe an asynchronous method. Let's first get the session by doing await out ai get session
2:12:572 hours, 12 minutes, 57 secondsand let's pass in the headers using await headers.
2:13:052 hours, 13 minutes, 5 secondsIf there is no session, let's redirect the user to forward sluggin. Otherwise, let's just return back the session.
2:13:142 hours, 13 minutes, 14 secondsAnd then let's go ahead and copy this.
2:13:172 hours, 13 minutes, 17 secondsLet's paste it and let's call this require unout. So the opposite in this
2:13:242 hours, 13 minutes, 24 secondscase, if the session exists, let's go ahead and return to well, what will in the future be
2:13:322 hours, 13 minutes, 32 secondsworkflows, right? basically oh actually we can now just do this so if the user tries to visit login page while they are
2:13:412 hours, 13 minutes, 41 secondsauthenticated we should redirect them back right so that's why I have these two handy utils and the way I do it is
2:13:492 hours, 13 minutes, 49 secondsvery simple so I directly do my out inside of the pages that I need to do
2:13:552 hours, 13 minutes, 55 secondsthere are several reasons for that the first reason is I can see exactly which page is protected which isn't So if I
2:14:042 hours, 14 minutes, 4 secondsjust do require out here like that that's it this page is now protected.
2:14:082 hours, 14 minutes, 8 secondsYou can see how I was immediately redirected. Now of course the first question is can I use a middleware? And
2:14:142 hours, 14 minutes, 14 secondsmost of you are thinking of the nextjs middleware. You can use it but only use it for better user experience. Do not use it as a security layer.
2:14:262 hours, 14 minutes, 26 secondsThere have been countless instances of out libraries being uh broken into using
2:14:342 hours, 14 minutes, 34 secondsthe Nex.js middleware. That is because Nex.js middleware should not be used as the out layer. So there are many
2:14:432 hours, 14 minutes, 43 secondstutorials will which teach you how to uh automatically protect many of your pages using the middleware and that is great.
2:14:492 hours, 14 minutes, 49 secondsYou can do that. There's nothing wrong with that, right? It's for better user experience.
2:14:552 hours, 14 minutes, 55 secondsBut you that shouldn't be your last line of defense. That's why we developed the data access layer. That's why we won't
2:15:032 hours, 15 minutes, 3 secondsdirectly call Prisma calls within server components. Instead, we're going to do that through TRPC.
2:15:102 hours, 15 minutes, 10 secondsAnd we're going to develop something in TRPC called protected procedure. And that way we're going to have actual
2:15:182 hours, 15 minutes, 18 secondssecurity layer here. So yes, if you want to, you can explore how to add this to the middleware. But I've given up on teaching people that because people
2:15:262 hours, 15 minutes, 26 secondsthink that that's a security layer. It is not. So when I say middleware, I mean very specifically on Nex.js middleware,
2:15:352 hours, 15 minutes, 35 secondswhich is actually a different behavior than what you'd normally think a middleware is. For example, TRPC has its
2:15:412 hours, 15 minutes, 41 secondsown middleares, but using out in them is completely fine compared to the Nex.js JS middleware which is more of a proxy than a middleware.
2:15:512 hours, 15 minutes, 51 secondsSo yes, what I just did in the page.x was basically enough to protect this. So if I now go ahead into antonommail.com,
2:15:592 hours, 15 minutes, 59 secondslet's first try 1 2 3 4 5 wrong password and click login.
2:16:052 hours, 16 minutes, 5 secondsUh oh, I didn't I forgot instead of our login form. We never actually developed any kind of submit method here. So let's
2:16:142 hours, 16 minutes, 14 secondsgo ahead and do that. So await out client from lib outclient. So you can now
2:16:222 hours, 16 minutes, 22 secondsremove this commented outline outclients signin email.
2:16:292 hours, 16 minutes, 29 secondsGo ahead and add email to be values email password to be values.p password
2:16:362 hours, 16 minutes, 36 secondscall back URL to be a forward slash and then let's open fetch options here on success
2:16:432 hours, 16 minutes, 43 secondsrouter.push push forward slash on error get the context toast error
2:16:512 hours, 16 minutes, 51 secondscontext error dossage like that and I think that then we don't
2:16:592 hours, 16 minutes, 59 secondsneed CN so we can remove that and I think we have the same case in register form uh image uh we will have image
2:17:072 hours, 17 minutes, 7 secondslater but we won't have CN so we can remove CN from both uh and I think that now Okay, let's try logging in. Now, we
2:17:152 hours, 17 minutes, 15 secondsshould get an error here. Invalid email or password. But if I add the correct uh password 1 2 3 4 5 6 7 8 and log in, I
2:17:242 hours, 17 minutes, 24 secondswill get redirected to a protected server component. And if I try to manually go to forward/lo now, I can
2:17:322 hours, 17 minutes, 32 secondsstill access that. That's something we want to prevent from happening. So, let's go inside of source app folder out
2:17:382 hours, 17 minutes, 38 secondslogin page. dsx asynchronous method await require unauthor
2:17:462 hours, 17 minutes, 46 secondslike this and now if I'm logged in I'm redirected to the protected server component and some of you might get the
2:17:532 hours, 17 minutes, 53 secondsidea okay can I just do this in a layout file and this way I can protect multiple routes at once that is the same
2:18:012 hours, 18 minutes, 1 secondsituation as the middleware you can use it if you want to improve user experience but you shouldn't use it as
2:18:092 hours, 18 minutes, 9 secondsyour security layer. So basically what is a good security layer? How do you know if you have a good security layer?
2:18:162 hours, 18 minutes, 16 secondsImagine all of your out for things like this breaks. Imagine this here breaks.
2:18:252 hours, 18 minutes, 25 secondsImagine page.tsx out breaks. Imagine your Nex.js middleware route breaks.
2:18:332 hours, 18 minutes, 33 secondsWill users unauthenticated users be able to get access to your data? If the answer is yes, you have a bad security
2:18:402 hours, 18 minutes, 40 secondslayer. That's why our main security layer will be inside of TRRPC protected procedure. And everything else that I'm
2:18:472 hours, 18 minutes, 47 secondsdoing right now is purely user experience because even if I uh later on if I remove this line require AL for my
2:18:562 hours, 18 minutes, 56 secondsserver component and I allow the user to fetch and prefetch whatever they're just going to get a bunch of errors. So the
2:19:042 hours, 19 minutes, 4 secondsonly reason I'm doing require out here is so I redirect the user so they don't see those errors. So they are on the
2:19:102 hours, 19 minutes, 10 secondsproper place the login form. So I'm trying to explain to you that data access layer is the only security layer
2:19:182 hours, 19 minutes, 18 secondswhen it comes to ALF this ALF that we are doing that matters. Everything else think of it as improved user experience.
2:19:262 hours, 19 minutes, 26 secondsYou know where to redirect the user so they don't see the errors or broken pages right? But if you have AL inside of your data access layer, which is for
2:19:352 hours, 19 minutes, 35 secondsus TRPC, no data will ever leak to an authenticate non-authenticated user. And that way you won't even care if you use the layout or if you use the middleware.
2:19:462 hours, 19 minutes, 46 secondsYes, but still I like to be very explicit with my routes. So I'm going to go the same thing in the sign up here.
2:19:542 hours, 19 minutes, 54 secondsAsynchronous await require.
2:19:592 hours, 19 minutes, 59 secondsSo now if I go to forward slregister or forward slash signup, my apologies, same thing. I'm redirected to the protected
2:20:082 hours, 20 minutes, 8 secondsserver component. Amazing. So now let's go ahead and wrap this chapter up by developing one last thing. So let's see what I've prepared here.
2:20:192 hours, 20 minutes, 19 secondsSo we set up better AL, we added out screens, we added out utils. The only thing we didn't do was add a protected procedure. So let's do that now.
2:20:292 hours, 20 minutes, 29 secondsSo let's go ahead and go inside of source drpc init.ds and in here we're going to go down here
2:20:372 hours, 20 minutes, 37 secondsto the base procedure and let's export const protected procedure.
2:20:432 hours, 20 minutes, 43 secondsProtected procedure will simply extend the base procedure. This is a good practice in case you extend the base procedure itself in the future. So you
2:20:512 hours, 20 minutes, 51 secondsdon't have to uh keep track of you know if protected procedure will have everything that you've added to the base procedure. You can just simply extend the base procedure. These is chaining.
2:21:012 hours, 21 minutes, 1 secondThese are all middleares. But now I'm using again the word middleware. These are proper middleares. The one that by
2:21:082 hours, 21 minutes, 8 secondsdefinition are middleares. Nex.js's middleware is more of a proxy than a middleware. So in here it's fine. So
2:21:162 hours, 21 minutes, 16 secondslet's go ahead and do base procedure dot use asynchronous method and go ahead and extract the context and
2:21:252 hours, 21 minutes, 25 secondsnext and go ahead and open this function. Let's start by returning next.
2:21:332 hours, 21 minutes, 33 secondsAnd then let's go ahead and first see if we are logged in using await al from lib al. So yes, go ahead and import lib al right here.
2:21:452 hours, 21 minutes, 45 secondsSo, alapi get session headers
2:21:512 hours, 21 minutes, 51 secondsare going to be await headers from next headers. So, make sure you have imported headers from next headers.
2:22:002 hours, 22 minutesIn case there is no session, we are immediately going to break this by throwing a new TRPC error from TRPC
2:22:092 hours, 22 minutes, 9 secondsserver. So, just make sure you have imported this Let's go ahead and add code unauthorized and message unauthorized.
2:22:252 hours, 22 minutes, 25 secondsAnd let's go ahead and extend the object that next will send by adding context
2:22:332 hours, 22 minutes, 33 secondsextending the context and adding the out object as the session which we just
2:22:402 hours, 22 minutes, 40 secondsfetched right here. This way, whatever procedure uses protected procedure and
2:22:472 hours, 22 minutes, 47 secondsif the error is not thrown, we'll have access to the current user ID to whatever we care about for this session.
2:22:552 hours, 22 minutes, 55 secondsSo, we can properly query only the documents and records for this loggedin session. That is the protected
2:23:022 hours, 23 minutes, 2 secondsprocedure. And I didn't really explain but I use this three times now. So this thing that I'm doing get session which
2:23:102 hours, 23 minutes, 10 secondswe also have in AL utils get session it's all documented in the better out docs let me try and find it I think I
2:23:192 hours, 23 minutes, 19 secondshave the concepts API here it is get session await headers so
2:23:262 hours, 23 minutes, 26 secondsthat's how you do it on the server side you need to await the headers all right so now what now that we have this protected procedure Let's put it to use.
2:23:392 hours, 23 minutes, 39 secondsI'm going to go ahead inside of source trpc routers app and I'm going to change the base procedure here to be protected procedure.
2:23:502 hours, 23 minutes, 50 secondsAnd now in here I should have context.
2:23:552 hours, 23 minutes, 55 secondsAnd now in here I can actually do context console log user ID context dot out dot user id.
2:24:062 hours, 24 minutes, 6 secondsAnd now obviously you can now imagine what you can do here. You can now do find many where uh ID is context out
2:24:162 hours, 24 minutes, 16 secondsuser ID. So this way you can only query database users which belong to the currently logged in ID. Right? Let's
2:24:242 hours, 24 minutes, 24 secondsactually do that. Let's query all accounts that belong to the currently logged in user ID. This way you don't even need the console log. You will just
2:24:322 hours, 24 minutes, 32 secondslogically see whether it works or doesn't.
2:24:352 hours, 24 minutes, 35 secondsSo let's go ahead now and go inside of app folder page.tsx here. Uh and let's go ahead and do data here. And I think we can just do a weight. Is it color?
2:24:472 hours, 24 minutes, 47 secondsYes, it is caller dot uh get users. And let's go ahead and do JSON stringify data.
2:24:572 hours, 24 minutes, 57 secondsLet me refresh this. Uh looks like this is now empty. Uh, get users.
2:25:072 hours, 25 minutes, 7 secondsAm I doing this correctly? Users. User.
2:25:102 hours, 25 minutes, 10 secondsFind many. Okay, user works. Maybe the accounts are just empty. But basically, since I'm logged in, you can see that I
2:25:172 hours, 25 minutes, 17 secondscan successfully now fetch uh this user here, right? I can successfully fetch my user.
2:25:262 hours, 25 minutes, 26 secondsBut let's just quickly do the following.
2:25:282 hours, 25 minutes, 28 secondsLet me just add let me add this in a div. Let me add null two here like so
2:25:372 hours, 25 minutes, 37 secondsuh flex call gap y6. I'm just adding some things so they are spacious. Now let's add a
2:25:442 hours, 25 minutes, 44 secondsbutton log out uh on click. Let me see. Can I do
2:25:522 hours, 25 minutes, 52 secondsuh I can't do log out from here because this is a server component. Uh, okay.
2:25:572 hours, 25 minutes, 57 secondsLet me try and think of something real quick here. Inside of the app folder, just for fun, create logout.tsx.
2:26:062 hours, 26 minutes, 6 secondsMark it as use client. Import out client.
2:26:142 hours, 26 minutes, 14 secondsExport const logout button. Return a button.
2:26:202 hours, 26 minutes, 20 secondsLog out. on click of the button simply call outclients signout.
2:26:302 hours, 26 minutes, 30 secondsThe reason we need to do this is because we are playing with server components and client components and server
2:26:372 hours, 26 minutes, 37 secondscomponents cannot do on click in the button. So we need to do it like this by calling out client inside of a use
2:26:442 hours, 26 minutes, 44 secondsclient here. So now just render logout button from dot /loout file. There we go.
2:26:512 hours, 26 minutes, 51 secondsSo you can see that now this is a protected server component and I'm logged in. So if I click log out now,
2:26:582 hours, 26 minutes, 58 secondslet's see. Am I logged out? Maybe I have to refresh. But yeah, you can see that now I'm redirected here, right?
2:27:062 hours, 27 minutes, 6 secondsBut what if I forgot to do this? What if this breaks? What would happen now?
2:27:122 hours, 27 minutes, 12 secondsSo previously, maybe a better example is to not have anything here like this. Let's change this to base procedure.
2:27:202 hours, 27 minutes, 20 secondsAnd so let's purposely yes, forget this.
2:27:242 hours, 27 minutes, 24 secondsAnd let's purposely bring the base procedure back and remove anything from the find menu. If you go
2:27:302 hours, 27 minutes, 30 secondsto localost 3000 now you will have access to the entire data. So this is what I'm talking about.
2:27:382 hours, 27 minutes, 38 secondsYou shouldn't rely on this. This shouldn't be your uh last level of security.
2:27:462 hours, 27 minutes, 46 secondsInstead, your data access layer should use the protected procedure and this way you get the error. So when
2:27:552 hours, 27 minutes, 55 secondsI'm when I tell you that I'm doing this await require out for user experience, this is what I mean. I mean to the fact that the user won't even see the error.
2:28:062 hours, 28 minutes, 6 secondsI will just redirect the user away from the error. But in in case this ever fails, I don't want my data to leak. And
2:28:142 hours, 28 minutes, 14 secondsit won't because my data access layer, my TRPC is going to be using the protected procedure in places where it needs to use the protected procedure.
2:28:262 hours, 28 minutes, 26 secondsThat's what I was trying to explain to you previously. That's why I emphasized on creating the data access layer because we're building a production
2:28:332 hours, 28 minutes, 33 secondsready app here. We're not building a toy, right? So I want you to understand what a data access layer is, why TRPC is
2:28:422 hours, 28 minutes, 42 secondsso useful in this project and the difference between using out protection checks within server components to
2:28:492 hours, 28 minutes, 49 secondsredirect between middlewarees to redirect layouts to redirect and in actual data access
2:28:572 hours, 28 minutes, 57 secondslayer to protect your data. That is the difference. All right, I think that's
2:29:042 hours, 29 minutes, 4 secondsenough for this chapter now. And I'm pretty sure I managed to get my point across. I hope uh this made it clearer
2:29:112 hours, 29 minutes, 11 secondsfor you about what we're doing and why we're doing it. So yeah, you should be able to log in, you should be able to register, uh you should be able to log out.
2:29:212 hours, 29 minutes, 21 secondsYour root page should redirect you to the AL page. And even if this breaks, if you remove this, you should still get
2:29:302 hours, 29 minutes, 30 secondsthe error because you're using the protected procedure. So only once you actually log in
2:29:382 hours, 29 minutes, 38 secondsand click login here should you actually see the data. And yes, this logout doesn't work instantly.
2:29:462 hours, 29 minutes, 46 secondsSo the way you can fix this is you don't have to do it now but basically sign out here accepts I think on success it
2:29:552 hours, 29 minutes, 55 secondsaccepts fetch options and then on success here just to demonstrate to you con router
2:30:022 hours, 30 minutes, 2 secondsuse router from next navigation and let's just do router.push login.
2:30:112 hours, 30 minutes, 11 secondsSo if I try now antoniomail.com 1 2 3 4 5 6 7 8 and click login and click log out here.
2:30:222 hours, 30 minutes, 22 secondsH still not working. Uh okay never mind.
2:30:272 hours, 30 minutes, 27 secondsI mean never mind. Obviously we will make sure this works but it's not really what I'm trying to show in this exact segment. I think it's because we are
2:30:342 hours, 30 minutes, 34 secondsrendering a server component here. So maybe I need to revalidate the server component first. Uh, I'm not really sure. I have to do something, but I can't really think of it right now.
2:30:442 hours, 30 minutes, 44 secondsWhat's important is that it actually clears the cookies once I click log out, right? And then when I try again, it
2:30:522 hours, 30 minutes, 52 secondsafter I refresh, you can see that it's no longer allowing me to do so. So yes, obviously we will create a very reliable
2:31:002 hours, 31 minuteslogout which redirects the user, but for now this is enough.
2:31:062 hours, 31 minutes, 6 secondsPerfect. So let me go ahead and check this. Uh so yes, we just added AL procedures here. And now let's push to
2:31:132 hours, 31 minutes, 13 secondsGitHub. So 04 authentication. I'm going to go ahead and create a new branch 04 authentication.
2:31:222 hours, 31 minutes, 22 secondsI'm going to go inside of my source control. As you can see, I have 18 uh un committed files. So package lock
2:31:292 hours, 31 minutes, 29 secondspackage, a schema, migration file. I removed the client file layout, our little logout client button uh pages
2:31:372 hours, 31 minutes, 37 secondswhere I added mostly the AL protectors, the important route handler for better AL login form, register form, important
2:31:462 hours, 31 minutes, 46 secondsAL client util uh AL utils which I used to redirect the user away.ts ts the most
2:31:532 hours, 31 minutes, 53 secondsimportant uh util for better AL and then some uh modifications in the init where I added protected procedures and finally
2:32:012 hours, 32 minutes, 1 secondsome routers where I used the protected procedures. So that's the 18 files that we did. Let's go ahead and click stage
2:32:082 hours, 32 minutes, 8 secondsall changes and let me name this commit zero for authentication.
2:32:132 hours, 32 minutes, 13 secondsLet me go ahead and hit commit and let me hit publish branch.
2:32:182 hours, 32 minutes, 18 secondsAnd once this is published, I'm going to go inside of my GitHub repository here.
2:32:232 hours, 32 minutes, 23 secondsI will open a new pull request. And now let's go ahead and review our changes.
2:32:292 hours, 32 minutes, 29 secondsKeep in mind that a lot of things that we just did are of course just for demo.
2:32:342 hours, 32 minutes, 34 secondsSo code rabbit will definitely have a lot of comments and a lot of changes that we have to do. But that's okay. We will change them in the following
2:32:422 hours, 32 minutes, 42 secondschapters. Uh what we did in this chapter was to demonstrate how we're going to use AL and the dangers that can happen
2:32:492 hours, 32 minutes, 49 secondsand the data access layer protection that we are going to do to fix it.
2:32:552 hours, 32 minutes, 55 secondsAnd here we have the summary. New features email password authentication enabled with session management. New
2:33:032 hours, 33 minutes, 3 secondslogin and signup pages with form validation and redirects. Out API route added homepage now requires sign in. log
2:33:122 hours, 33 minutes, 12 secondsout button to end session and return to login toast notifications for out success or errors. Homepage content now
2:33:202 hours, 33 minutes, 20 secondsloads server side after authentication and we added authentication library dependency. As always in here we have
2:33:292 hours, 33 minutes, 29 secondsfile by file summary but what I'm really interested in are the sequence diagrams and we don't have to go through the entire sequence diagram of course but I
2:33:372 hours, 33 minutes, 37 secondsjust want to bring your attention to something. So this is what I was talking about. You can see that when the user uh heads to the get route, we do all kinds
2:33:462 hours, 33 minutes, 46 secondsof require out and some headers and if we don't have the session, we redirect otherwise we call get users.query. But
2:33:542 hours, 33 minutes, 54 secondsthis is only the first layer of our authentication protection. The actual layer of our protection is the TRPC get
2:34:022 hours, 34 minutes, 2 secondsusers protected procedure. So the last layer before we actually call Prisma which has direct access to our database
2:34:112 hours, 34 minutes, 11 secondsis fully protected. That's what's important, right? So our app would be equally as protected as if we didn't add
2:34:192 hours, 34 minutes, 19 secondsnone of the redirects as well either in the if we didn't add any uh redirects in
2:34:262 hours, 34 minutes, 26 secondsthe first place, our app will be equally as protected because we protected our data access layer. That's what I was
2:34:342 hours, 34 minutes, 34 secondstrying to say, right? Uh I hope I managed to explain that well to you, right? Uh and again, super impressed by
2:34:422 hours, 34 minutes, 42 secondshow code rabbit managed to understand the entire thing that's going on with our app here. Uh in here we have a sequence diagram explaining how login
2:34:502 hours, 34 minutes, 50 secondsworks and how register form works. But I think we already understand it's a simple, you know, form submit which then creates a new user in the database.
2:35:012 hours, 35 minutes, 1 secondIn here we have some comments on our migrations uh which we don't really have to modify because these are just development migrations. Obviously they
2:35:092 hours, 35 minutes, 9 secondsare with issues because I just deleted the old user and added new one without caring for migration at all. I just removed all records from my database.
2:35:192 hours, 35 minutes, 19 secondsThat's what it's warning me about. Uh in here I think it works perfectly fine with just updated ads. So I disagree with this comment right here. And since
2:35:272 hours, 35 minutes, 27 secondsbetter out is uh we you we used a migration script CLI to add this schema and better out works fine with it. So
2:35:362 hours, 35 minutes, 36 secondsthat's why I'm not going to modify this at all. I'm going to leave it as it is in here. Obviously some very obvious risks here by just you know stringifying
2:35:452 hours, 35 minutes, 45 secondsmy data. So we are not going to uh take that seriously right now because we will remove that. In here it recommends
2:35:522 hours, 35 minutes, 52 secondsincreasing our uh password security by increasing the length the minimum length of the password. So definitely something
2:35:582 hours, 35 minutes, 58 secondswe have to do. Uh and in here it actually noticed a typo. I I typed unauthorized instead of unauthorized. So
2:36:082 hours, 36 minutes, 8 secondsdefinitely have to fix that as well. And yes, we also have Google and GitHub to add. Uh those are mostly all out configurations more than anything else.
2:36:162 hours, 36 minutes, 16 secondsUh but we will do that of course. I will see if it will be in the exact next chapter or maybe later on. Uh as I said
2:36:252 hours, 36 minutes, 25 secondsthere's not much code we have to do here. It's just configuration and working with uh the third party providers. So for now let's go ahead and
2:36:322 hours, 36 minutes, 32 secondsmerge this pull request. I'm satisfied with it. And once we've merged it, let's go ahead and go back in here, select
2:36:402 hours, 36 minutes, 40 secondsmain. Make sure you hit the synchronize changes button. Click okay. And then go inside of your source control. Once
2:36:482 hours, 36 minutes, 48 secondsyou've merged it, go inside of graph and just confirm that it looks like this if you are following along with me regarding the git workflow. So we
2:36:562 hours, 36 minutes, 56 secondsdetached for 04 authentication and then we merged it back inside of the main branch. So now you should have login and sign up inside of your main branch here.
2:37:062 hours, 37 minutes, 6 secondsPerfect. I believe that marks the end of this chapter. Let me just see it does.
2:37:122 hours, 37 minutes, 12 secondsThere we go. We published to GitHub. We created a new branch, new PR, and we reviewed and merged. Amazing, amazing job, and see you in the next one.
Chapter 6: 05 Theme & Styling
2:37:242 hours, 37 minutes, 24 secondsIn this chapter, we're going to focus on improving the look of our current app.
2:37:292 hours, 37 minutes, 29 secondsWe're going to apply a new theme. We're going to improve out screens and how they look. And we're going to add some logos.
2:37:382 hours, 37 minutes, 38 secondsSo, let's start by applying the new theme.
2:37:422 hours, 37 minutes, 42 secondsYou can apply the new theme by using tweak CN. You can use the link on the screen to visit the website. It's an
2:37:492 hours, 37 minutes, 49 secondsabsolutely amazing website which allows you to customize your chat theme in great detail. And once you're satisfied,
2:37:592 hours, 37 minutes, 59 secondsyou can very simply hit code. And in here, you can find the CSS that you need
2:38:052 hours, 38 minutes, 5 secondsto copy to add to your app. or you can even use their CLI interface.
2:38:122 hours, 38 minutes, 12 secondsNow, if you want to have the exact same theme as me, I've prepared a solution for you as well.
2:38:192 hours, 38 minutes, 19 secondsI have made a public repository here where you can copy my exact globals.css.
2:38:272 hours, 38 minutes, 27 secondsSo, let's go ahead and copy this. So, this entire file, you can use the link on the screen to access it or of course generate your own using the website I
2:38:352 hours, 38 minutes, 35 secondsjust shown you. and let's go inside of source app folder globals.css and simply replace everything inside with the new content.
2:38:472 hours, 38 minutes, 47 secondsNow you will see two things that aren't exactly part of tweak cen here. So everything from the start all the way to
2:38:552 hours, 38 minutes, 55 secondsI would say right here is tweak cnen but this is my custom code that I have added. It
2:39:042 hours, 39 minutes, 4 secondsbasically enables the pointer cursor for all buttons which has been removed as of tailwind in version 4. I simply prefer
2:39:112 hours, 39 minutes, 11 secondsmy buttons to have a cursor a pointer cursor and this will come in handy later when we add react flow. So no really
2:39:212 hours, 39 minutes, 21 secondspoint in explaining this now because we don't really have react flow installed at all. So you can find this in my
2:39:282 hours, 39 minutes, 28 secondspublic repository here. Simply find the globals.css CSS file using the link on the screen and just copy the entire file
2:39:352 hours, 39 minutes, 35 secondsand paste it here. That's the first thing I want you to do. The second thing I want you to do is to go inside of images and copy these three images and
2:39:442 hours, 39 minutes, 44 secondsgo ahead and add it inside of your public folder here. So inside of the public folder, we now have uh file,
2:39:532 hours, 39 minutes, 53 secondsglobe, next, the cell, and window. Now let's add these three here as well.
2:40:012 hours, 40 minutes, 1 secondSo here we have I've added logo, Google and GitHub. So make sure you have
2:40:092 hours, 40 minutes, 9 secondsGitHub, Google, and logo here. And I would like to separate this a little bit by just adding a folder called logos.
2:40:162 hours, 40 minutes, 16 secondsAnd then let's move our Google and GitHub inside of that. Like that. And you can even move the main app logo
2:40:242 hours, 40 minutes, 24 secondsinside like that. So it doesn't uh merge with all the other ones that we have already had inside.
2:40:342 hours, 40 minutes, 34 secondsPerfect. So uh if you're wondering where did I get the logo from, it's from Twix CN. So let me go ahead here. You can use
2:40:442 hours, 40 minutes, 44 secondsthe link on the screen and in here you can find a bunch of interesting logos.
2:40:482 hours, 40 minutes, 48 secondsUh basically logo ips Ipsum is this amazing uh website where you can find placeholder logos for your projects. So
2:40:582 hours, 40 minutes, 58 secondsyou can just click to copy and you will copy entire SVG. Uh somewhere down here I found this exact logo. Not sure where it is.
2:41:082 hours, 41 minutes, 8 secondsCan't find it now. But basically, I mean, this is an amazing resource of logos. Uh, and I would highly recommend that you uh visit to find some interesting logos here.
2:41:202 hours, 41 minutes, 20 secondsSo, now that we have the logo and that we have GitHub and that we have Google, let's go ahead and modify our app a bit.
2:41:292 hours, 41 minutes, 29 secondsSo, I'm going to go ahead and do npm rundev.
2:41:342 hours, 41 minutes, 34 secondsAnd immediately, you should see some changes. So let's go ahead and refresh our local host 3000. I'm specifically on
2:41:412 hours, 41 minutes, 41 secondsthe login page. So immediately you you've noticed that we now change the button color to an orange. So that's our
2:41:492 hours, 41 minutes, 49 secondsnew theme. Another thing that has changed is border radius has been reduced by a bit. So it looks a bit more
2:41:562 hours, 41 minutes, 56 secondsblocky. I prefer it this way. You can of course do it some other way. So now let's go ahead inside of the login- form
2:42:062 hours, 42 minutes, 6 secondscomponent which we were previously developing. And in here we have two buttons uh for Google and GitHub. We didn't develop those functions yet. We
2:42:142 hours, 42 minutes, 14 secondswill do that later. But now let's just make it look a little bit better. So above the continue with GitHub text add an image. We should already have image
2:42:242 hours, 42 minutes, 24 secondsimported from next image and give it a source forward/os/github.s
2:42:312 hours, 42 minutes, 31 secondsSVG. And now let's go ahead and give it a width of 20 and a height of 20 as well.
2:42:392 hours, 42 minutes, 39 secondsUh, and let's see what is with my image.
2:42:422 hours, 42 minutes, 42 secondsWhy is it getting an error? Oh, we are missing an al property. Al here is going to be GitHub.
2:42:502 hours, 42 minutes, 50 secondsThere we go. Continue with GitHub. And now let's go ahead and copy this image.
2:42:552 hours, 42 minutes, 55 secondsAnd let's go do the same for Google. And just change this to google.svg. and change this to be Google. There we go.
2:43:032 hours, 43 minutes, 3 secondsContinue with GitHub and continue with Google. Here's how the code looks uh when it's not totally collapsed.
2:43:122 hours, 43 minutes, 12 secondsThere we go.
2:43:142 hours, 43 minutes, 14 secondsAnd now let's go ahead and do something else. Right now, no matter how far I zoom out, uh this always kind of fills the entire area. We don't want that, right?
2:43:252 hours, 43 minutes, 25 secondsSo, what we're going to do is uh well, first let's also add the image thing to
2:43:322 hours, 43 minutes, 32 secondsthe register form, right? So, let's go inside of the register form and let's just do the same thing just so we're on the same page for both of those. There
2:43:402 hours, 43 minutes, 40 secondswe go. GitHub and then Google and change this to Google and change these two logos Google SVG. So, now both sign up
2:43:492 hours, 43 minutes, 49 secondsand login routes should have the icons and look better.
2:43:552 hours, 43 minutes, 55 secondsSo now let's go ahead inside of source app folder al login page.tsx and make sure you are on the login page
2:44:032 hours, 44 minutes, 3 secondshere as well. So what we're going to do now is we're going to make this look better. So let's give this a class name of background color muted. Let's go
2:44:132 hours, 44 minutes, 13 secondsahead and give it a flex a minimum height of SVH flex column
2:44:202 hours, 44 minutes, 20 secondsjustify center gap six padding of six and MD padding of 10.
2:44:342 hours, 44 minutes, 34 secondsNow let's go ahead and add another div here.
2:44:392 hours, 44 minutes, 39 secondsAnd let's give it a class name flex full width maximum width of small flex call and gap six.
2:44:522 hours, 44 minutes, 52 secondsThen let's add a link property which we can import from next link like this.
2:45:032 hours, 45 minutes, 3 secondsGo ahead and give it an href to a forward slash and inside render an image from next
2:45:102 hours, 45 minutes, 10 secondsimage with a source of logos logo. SVG
2:45:152 hours, 45 minutes, 15 secondsan out of node base width of 30
2:45:222 hours, 45 minutes, 22 secondsand height of 30 like that. and give the link property a
2:45:292 hours, 45 minutes, 29 secondsclass name flex items center gap to self
2:45:362 hours, 45 minutes, 36 secondscenter and font medium and after the image render node base just like that.
2:45:452 hours, 45 minutes, 45 secondsSo now let's go ahead and zoom out a bit to see.
2:45:492 hours, 45 minutes, 49 secondsLooks good but something's obviously uh missing here. So let me just check uh what it is here. So minimum height of SVH.
2:46:002 hours, 46 minutesUh it looks like we are missing the full width here. So can I do minimum
2:46:072 hours, 46 minutes, 7 secondswidth of SVW or maybe screen?
2:46:162 hours, 46 minutes, 16 secondsAll right. Looks like there is a slight issue here. Let me just check why.
2:46:222 hours, 46 minutes, 22 secondsI think it's because I forgot to add items center here. There we go. So, I forgot to add items center in the first div.
2:46:312 hours, 46 minutes, 31 secondsAnd now once I've done that, the login screen looks much better both on mobile and on desktop view. But there's a
2:46:392 hours, 46 minutes, 39 secondsproblem with this code. The problem is I would have to write the exact same code in the signup page for it to look the
2:46:472 hours, 46 minutes, 47 secondssame. Well, there is a way we can reuse this route group.
2:46:522 hours, 46 minutes, 52 secondsPreviously, I told you that these route groups are only good for organizing your content, but they're also good for sharing layout files. So, inside of that
2:47:002 hours, 47 minutesout folder, create a layout file. This is another reserved file name in Nex.js.
2:47:052 hours, 47 minutes, 5 secondsSo, let's go ahead and define the layout like this. And let's go ahead and define children
2:47:132 hours, 47 minutes, 13 secondsreact React node as the prop.
2:47:212 hours, 47 minutes, 21 secondsAnd let's go ahead and simply return.
2:47:232 hours, 47 minutes, 23 secondsOops, we already do children. And just by saving the file and of course doing an export default.
2:47:352 hours, 47 minutes, 35 secondsThere we go. Nothing changes really. But now we're going to change it. So go inside of login and let's copy this
2:47:412 hours, 47 minutes, 41 secondsentire thing all the way to the login form.
2:47:462 hours, 47 minutes, 46 secondsAnd now go ahead and render it here. And then below this, render the children.
2:47:532 hours, 47 minutes, 53 secondsAnd then close the two encapsulating divs.
2:47:582 hours, 47 minutes, 58 secondsNow let's go ahead and just add this few imports. So next link and next image.
2:48:062 hours, 48 minutes, 6 secondsPerfect. Now let's go back inside of login and let's remove all of these entirely. So we can just do return login
2:48:152 hours, 48 minutes, 15 secondsform and remove the unused imports. And let's go inside of page signup and let's do
2:48:242 hours, 48 minutes, 24 secondsthe same thing. Just simplify these pages.
2:48:292 hours, 48 minutes, 29 secondsThere we go. So what we achieved now is a layout file which is shared across all
2:48:372 hours, 48 minutes, 37 secondsfolders or all routes within this route group. That's the power of layouts. So
2:48:442 hours, 48 minutes, 44 secondsnow both our sign in and our login routes share the same styles. And may I say our app now looks much better.
2:48:542 hours, 48 minutes, 54 secondsGreat. Uh and I think that that's all I wanted to do for this chapter. I wanted to keep it short
2:49:022 hours, 49 minutes, 2 secondssimply because we had some complicated chapters before us. Uh but let's also improve our structure just a bit. So instead of features we have out
2:49:112 hours, 49 minutes, 11 secondscomponents. Let's also add- layout.tsx here. This way we are only using the app
2:49:212 hours, 49 minutes, 21 secondsfolder as the actual kind of router and business logic. We don't really care about styling within the app folder. For
2:49:292 hours, 49 minutes, 29 secondsthat we're going to be using uh this. So let's just copy the entire thing actually except the children and let's
2:49:382 hours, 49 minutes, 38 secondsdo export const layout like this. Render the children. Close the div.
2:49:472 hours, 49 minutes, 47 secondsClose the div. You can copy the prompts from here.
2:49:532 hours, 49 minutes, 53 secondsAnd you can copy the two imports like this.
2:50:012 hours, 50 minutes, 1 secondAnd now we have the out layout separately in a named component. And then instead what we can just do is just out layout.
2:50:102 hours, 50 minutes, 10 secondsAnd this matches our code consistency a bit more. I'll show you why. So let's
2:50:172 hours, 50 minutes, 17 secondsremove the unused imports. So layout is is a reserved file name which is located inside of the app folder and where it
2:50:252 hours, 50 minutes, 25 secondsstructurally needs to be to work for route access, right? But where we actually define the component with
2:50:332 hours, 50 minutes, 33 secondsstyles and images in everything doesn't need to be here. Instead, let's keep it always in one place in features out. So
2:50:412 hours, 50 minutes, 41 secondsthis way, same thing happens in login and signup pages. We we develop them here because they need to be here
2:50:492 hours, 50 minutes, 49 secondsstructurally for this route to work, right? But where we actually develop the component doesn't have to be inside of this out folder. it can all be together
2:50:582 hours, 50 minutes, 58 secondsin features out components. So I feel like that's a better solution right because now whenever you're wondering oh how do I modify something from out very
2:51:062 hours, 51 minutes, 6 secondssimply just go inside of features out components all of them are here you don't have to worry about visiting them
2:51:132 hours, 51 minutes, 13 secondshere because the way they are organized here is according to the router but here
2:51:202 hours, 51 minutes, 20 secondsit's according to their feature thus we call this folder features I think that's a better structure feel free to write in
2:51:282 hours, 51 minutes, 28 secondsthe comments what you Excellent. Uh amazing amazing job. I think this marks the end of this uh
2:51:352 hours, 51 minutes, 35 secondssimpler chapter that we've had. And yes, we still have to develop uh these two.
2:51:412 hours, 51 minutes, 41 secondsBut I think I might focus on some other things for now simply because uh these take a lot of time. But they uh are
2:51:482 hours, 51 minutes, 48 secondsmostly just configuration setup. So we might actually do this closer to deployment because that's when we are going to start doing this uh
2:51:552 hours, 51 minutes, 55 secondsconfiguration. I'll see. Maybe I'll do it in the next chapter if I change my mind. Uh but as of now, I think we all want to see something interesting like
2:52:032 hours, 52 minutes, 3 secondssome background jobs which are closer to uh what the goal of this project is, which are uh automation, right?
2:52:122 hours, 52 minutes, 12 secondsSo let's go ahead and see if that's what we wanted. We applied new theme, we improved out screens, and we added logos. Amazing. And now let's push this
2:52:202 hours, 52 minutes, 20 secondsto GitHub. So 05 theme and styling. So, I'm going to create a new branch 05 theme styling and let's go ahead and open our changes.
2:52:322 hours, 52 minutes, 32 secondsLet's go ahead and stage all changes. 05 theme and styling.
2:52:402 hours, 52 minutes, 40 secondsLet's commit and let's publish this new branch that we have.
2:52:442 hours, 52 minutes, 44 secondsAnd once we have published the branch, let's go ahead inside of our GitHub here.
2:52:512 hours, 52 minutes, 51 secondsLet's open a new pull request 05 theme and styling. And since this was a very
2:52:582 hours, 52 minutes, 58 secondsvery simple uh pull request, we don't really have to review anything here. We already know uh what's going to happen
2:53:052 hours, 53 minutes, 5 secondsin this case. So we added this new logos. Uh we added a reusable AL layout and now it's written here in the
2:53:142 hours, 53 minutes, 14 secondsfeatures. So it matches the uh structural consistency of all other ALF components. Uh, and we just modify globals, right?
2:53:242 hours, 53 minutes, 24 secondsWe added this some custom things.
2:53:282 hours, 53 minutes, 28 secondsI don't really think there's anything important here. The only thing that can be mentioned here is that these buttons still don't do anything, right? You
2:53:352 hours, 53 minutes, 35 secondsstill can't log in or register with GitHub or Google. Other than that, I think we can merge this. Obviously, very
2:53:432 hours, 53 minutes, 43 secondsthankful for the help Code Rabbit wants to do, but this was a fairly simple pull request. So let's rather use code
2:53:522 hours, 53 minutes, 52 secondswrapped review on something complicated which will be coming very soon. So let's merge this pull request and once you
2:54:002 hours, 54 minuteshave merged this request as always let's go ahead and let's just change our branch back.
2:54:072 hours, 54 minutes, 7 secondsSo head here select the main branch and synchronize the changes to make sure that you're up to date. And once you
2:54:152 hours, 54 minutes, 15 secondshave synchronized your changes, just go ahead inside of source control graph and confirm that you have the same
2:54:232 hours, 54 minutes, 23 secondsview as me. Let me just show you. So I detached into 05 to add some theme and
2:54:292 hours, 54 minutes, 29 secondsstyling and then I merged it back into main and you should see that here. There we go. Amazing. Amazing job. Our app now
2:54:382 hours, 54 minutes, 38 secondslooks much better and we have a new theme. Meaning automatically things we build from now on will start to look good. Great. I believe that marks the
2:54:472 hours, 54 minutes, 47 secondsend of this chapter. We pushed to GitHub. We created a new branch. We created a pull request and we did a personal review and merge simply because
2:54:552 hours, 54 minutes, 55 secondsthis was super simple and we knew exactly what all the changes are. Amazing job and see you in the next one.
2:55:042 hours, 55 minutes, 4 secondsIn this chapter, we're going to get familiar with the most important concept for building an automation app, and that
Chapter 7: 06 Background Jobs
2:55:122 hours, 55 minutes, 12 secondsis background jobs. Let's take a look at a few examples I've prepared to show you
2:55:182 hours, 55 minutes, 18 secondswhy we need them. So, we all know a normal networking example. For example,
2:55:252 hours, 55 minutes, 25 secondsthe user clicks login, we send a network request, and we get an instant response, success or fail.
2:55:342 hours, 55 minutes, 34 secondsBut what if we had a more complex example?
2:55:382 hours, 55 minutes, 38 secondsFor example, an AI summary generator.
2:55:432 hours, 55 minutes, 43 secondsWhen the user clicks generate summary, we send a network request and during that time the back end generates
2:55:512 hours, 55 minutes, 51 secondssummary. Now the way backend do this is a bit complex. Imagine it's a summary of
2:55:582 hours, 55 minutes, 58 secondsa YouTube video. Imagine it's summary of my YouTube video which lasts for 12 hours.
2:56:042 hours, 56 minutes, 4 secondsWe have to include three external services for this. First, we have to fetch the YouTube video. Then we have to
2:56:112 hours, 56 minutes, 11 secondstranscribe the YouTube video. And after that, we have to send the transcription to some AI provider to summarize it.
2:56:182 hours, 56 minutes, 18 secondsDuring those three external services, many things can happen while the user waits.
2:56:252 hours, 56 minutes, 25 secondsMaybe something can time out. Maybe the connection can get lost between any of those three services. or maybe the user itself can break the connection.
2:56:362 hours, 56 minutes, 36 secondsAll of those things can cause the user to never get the result.
2:56:412 hours, 56 minutes, 41 secondsBecause of that, we're going to think of something called background jobs. This time, when the user clicks on generate
2:56:482 hours, 56 minutes, 48 secondssummary, we're going to send the network request as usual, but instead of immediately executing it, we're just going to cue a background job. And once
2:56:582 hours, 56 minutes, 58 secondsthe background job is cued, we're going to send to the user that the summary is being generated. And at that point, the
2:57:062 hours, 57 minutes, 6 secondsuser is free to close the tab or move on. So they will instantly see a response the same way that they did in
2:57:132 hours, 57 minutes, 13 secondsthe first example, right? Instant response, success, right? We successfully started a background job.
2:57:202 hours, 57 minutes, 20 secondsAnd then the user can move on to do other things. This is very important for our automation app because imagine the
2:57:282 hours, 57 minutes, 28 secondsuser had to wait to complete all of those complex services. Uh if you remember in the intro video in the demo,
2:57:352 hours, 57 minutes, 35 secondsI demonstrated how we can transcribe something with Open AI and then send it to Slack and then send it to Discord.
2:57:422 hours, 57 minutes, 42 secondsImagine if the user had to wait for all of those things and imagine if something timed out or if something failed.
2:57:502 hours, 57 minutes, 50 secondsWell, because of that, we are implementing background jobs which will simply notify the user when something is finished.
2:57:582 hours, 57 minutes, 58 secondsSo, let's go ahead and try and do a simple demonstration of this.
2:58:042 hours, 58 minutes, 4 secondsI'm going to go ahead and head inside of my Prisma and I'm going to go inside of schema Prisma and I'm at the end here.
2:58:122 hours, 58 minutes, 12 secondsI'm going to create a new model which we're going to need anyway. Workflows.
2:58:172 hours, 58 minutes, 17 secondsLet's actually call it just workflow since all the other models are single as well. So account verification workflow.
2:58:252 hours, 58 minutes, 25 secondsLet's give it an ID which is a type of string. Give it an ID decorator and a default value of CU ID.
2:58:352 hours, 58 minutes, 35 secondsAnd then let's give it a name with a value of string. So let's keep it very simple for now. No need to do anything
2:58:422 hours, 58 minutes, 42 secondsfurther. And then let's go ahead and do npx prisma migrate dev.
2:58:502 hours, 58 minutes, 50 secondsAnd for the migration name, we can simply do workflows table.
2:58:562 hours, 58 minutes, 56 secondsThere we go. Now restart your server if you haven't already. And you can go to localhost 3000.
2:59:062 hours, 59 minutes, 6 secondsThe last thing we did here was the login screen and the protected server component. So if you are logged out, you
2:59:142 hours, 59 minutes, 14 secondsshould be seeing the login screen and then you can just log in. I use this simple combination of email and 1 2 3 4
2:59:222 hours, 59 minutes, 22 seconds5 6 7 8 password. And in here all I do is I fetch use using a protected procedure I fetch the users in the
2:59:302 hours, 59 minutes, 30 secondsdatabase. So now I'm going to slightly modify it with my new Prisma model.
2:59:352 hours, 59 minutes, 35 secondsInstead of source tRPC routers, I'm going to go ahead and change this from get users to get workflows.
2:59:462 hours, 59 minutes, 46 secondsAnd I'm going to change the Prisma user find many to Prisma workflow find many.
2:59:522 hours, 59 minutes, 52 secondsWe can ignore the error for now. We will resolve that in a moment. Let's actually go ahead and add create workflow
2:59:592 hours, 59 minutes, 59 secondsprocedure. Let's also do a protected procedure, but instead of query, let's add a mutation.
3:00:063 hours, 6 secondsAnd let's go ahead and we don't have to extract the context really. Let's just open a function. And let's return Prisma
3:00:143 hours, 14 secondsworkflow create pass in the data name test workflow. As simple as this.
3:00:243 hours, 24 secondsNow that we have that ready, you can remove the base procedure from here since we're not using it. and go inside of page.tsx
3:00:323 hours, 32 secondsin here where we have the error because we are calling get users which no longer exists. And let's simplify this a little bit. Let's mark this as use client.
3:00:423 hours, 42 secondsLet's remove asynchronous from here.
3:00:443 hours, 44 secondsRemove await require out. And instead of getting the data like this, let's go ahead and this time get it by using use
3:00:523 hours, 52 secondsquery from tanstack react query. And let's get TRPC from use TRPC from the TRPC client. And then in here we can
3:01:013 hours, 1 minute, 1 secondpass TRPC get workflows query options. There we go.
3:01:093 hours, 1 minute, 9 secondsAnd now in here after a brief second of loading you should just see an empty array. So now what I'm going to do is
3:01:173 hours, 1 minute, 17 secondsI'm going to add a constant create and I'm going to add use mutation from tanstack react query drpc create
3:01:273 hours, 1 minute, 27 secondsworkflow mutation options and then I'm going to add a button here create workflow.
3:01:353 hours, 1 minute, 35 secondsI'm going to give it on click to be create dot mutate. And let's do this to
3:01:423 hours, 1 minute, 42 secondsfix the type errors. And then I'm also going to add a disabled prop when create is pending. So this way I can track
3:01:513 hours, 1 minute, 51 secondsexactly how much time has passed. So right now if I go ahead and click uh and actually while we are here we can also
3:01:583 hours, 1 minute, 58 secondsdo one cool thing in the mutation options. Go ahead and open an object on success.
3:02:083 hours, 2 minutes, 8 secondsLet's go ahead and do let me just get the query client. Use query client from tanstack react query
3:02:173 hours, 2 minutes, 17 secondsqueryclient dot invalidate queries trpc dot getworkflows.query
3:02:243 hours, 2 minutes, 24 secondsoptions and I think we can also pass this like this or maybe not. Okay, I think this
3:02:323 hours, 2 minutes, 32 secondsshould work. I think we call use query client. So now immediately when you click create workflow
3:02:403 hours, 2 minutes, 40 secondsit will update because we invalidated the queries here. So we fetch them again. So this way you don't have to refresh your page. So you can see it
3:02:483 hours, 2 minutes, 48 secondsworks pretty instantly right the moment I click create workflow a new one is created. But what if we had a more
3:02:573 hours, 2 minutes, 57 secondscomplicated example? What if inside of my app router here in the create workflow instead of having instant
3:03:053 hours, 3 minutes, 5 secondsresponse I had to communicate with external services. So for example I will mark this as an asynchronous function
3:03:133 hours, 3 minutes, 13 secondsand then in here I'm first going to fetch the video. Imagine this is the transcription process, right? So first I
3:03:203 hours, 3 minutes, 20 secondsfetch the video and that will last 5,000 milliseconds or 5 seconds.
3:03:283 hours, 3 minutes, 28 secondsAfter that, I'm going to transcribe the video. So, that's another 5 seconds. And
3:03:353 hours, 3 minutes, 35 secondsthen I'm going to send the transcription to Open AI, for example. Another 5 seconds. So, let's see how this looks.
3:03:443 hours, 3 minutes, 44 secondsNow, I'm going to go ahead and click create workflow.
3:03:493 hours, 3 minutes, 49 secondsAnd you can already see that this isn't a nice experience. The user now has to wait for 15 seconds before seeing any
3:03:563 hours, 3 minutes, 56 secondskind of feedback. The user doesn't know if they can log out. The user doesn't know if they can refresh the page. They
3:04:043 hours, 4 minutes, 4 secondsjust have to wait for 15 seconds until this completes. And now imagine if something happened. What if this step
3:04:123 hours, 4 minutes, 12 secondshere failed, but we already used some resources to fetch the video? the user
3:04:203 hours, 4 minutes, 20 secondswould have to start the entire process again.
3:04:243 hours, 4 minutes, 24 secondsBecause of this, we're going to implement background jobs. This way, if a single step fails, we can easily retry
3:04:343 hours, 4 minutes, 34 secondsit without having to start the entire job again. And that's just one of the
3:04:403 hours, 4 minutes, 40 secondsmany advantages using background jobs gives us. So let's go ahead and add inest to try and improve this problem.
3:04:523 hours, 4 minutes, 52 secondsSo you can use the link on the screen to head to ingest and if you want to you can create an account here but you can
3:05:003 hours, 5 minutesalso create the entire development environment without creating an account which I think is absolutely amazing. I love uh when uh apps gives us an option
3:05:103 hours, 5 minutes, 10 secondsto do that. So let's go ahead and create nextjs and let's go ahead and install inest. So
3:05:173 hours, 5 minutes, 17 secondsI'm going to add inest here and I'm going to show you which version I'm using. Um simply so you are aware and if you want to use the same version as me.
3:05:263 hours, 5 minutes, 26 secondsSo if you want to you don't have to install it immediately. You can wait till I show you the version and then you will see uh where you stand. So let me
3:05:353 hours, 5 minutes, 35 secondsopen my package JSON here. Let me search for ingest. And here it is 3.44.1.
3:05:453 hours, 5 minutes, 45 secondsThere we go.
3:05:463 hours, 5 minutes, 46 secondsAnd once we have inest, we also need to run our inest CLI. And for this, I will also just show you the version real
3:05:543 hours, 5 minutes, 54 secondsquick. So inest CLI version. You can see it's 1.12.1.
3:06:013 hours, 6 minutes, 1 secondAnd I think that this will either return the version or maybe throw an error if the version flag doesn't exist. Looks like it exists. So yes, this is the full version that I'm using.
3:06:113 hours, 6 minutes, 11 secondsSo yes, now you can do npx inest cli. Is that the correct one? It's not. Ingest-
3:06:183 hours, 6 minutes, 18 secondscli and dev. What this will do is it will
3:06:253 hours, 6 minutes, 25 secondsbasically spin up an instance of inest locally for you and you can access it on localhost 8288.
3:06:333 hours, 6 minutes, 33 secondsAnd in here you will see all the runs that are happening in the background because that's the only way you can actually keep track of them. So let's go
3:06:423 hours, 6 minutes, 42 secondsahead and make sure that you have both that running and npm rundev running.
3:06:493 hours, 6 minutes, 49 secondsAnd then let's actually set up inest following their documentation here. So we just set up the inestdev server uh and we've opened the dev server here.
3:07:003 hours, 7 minutesNow let's create the inest client. So very simple, just the two lines and let's go ahead and add that inside of source.
3:07:103 hours, 7 minutes, 10 secondsLet's create a folder called ingest and then inside of here client.ds.
3:07:173 hours, 7 minutes, 17 secondsAs simple as that.
3:07:213 hours, 7 minutes, 21 secondsAnd let's import inest from our newly installed inest package. And let's export conest with new inest. And the name can be nodebase.
3:07:323 hours, 7 minutes, 32 secondsThere we go. We have our uh client here.
3:07:363 hours, 7 minutes, 36 secondsNow, let's go ahead and let's create the ingest route. So, this is something that we've been doing for pretty much all services that we've added here. So,
3:07:453 hours, 7 minutes, 45 secondsinside of app folder API, we did it for AL and DRPC. And now, let's also do it for ingest like this. And let's go ahead and just create a route.
3:07:593 hours, 7 minutes, 59 secondsDS inside. And let's copy this and let's paste it.
3:08:043 hours, 8 minutes, 4 secondsAnd let's see what it's about. So we are importing serve from inest forward/next.
3:08:103 hours, 8 minutes, 10 secondsAnd then we just need to add our inest client. Yes, you can replace that uh relative import with an alias to kind of
3:08:193 hours, 8 minutes, 19 secondsteleport you to the root of your project so your imports look nicer. We currently have no functions so we can't pass anything here but you already recognize
3:08:283 hours, 8 minutes, 28 secondsthis, right? We are exporting get post and put endpoints using this route. TS the same thing we kind of did here,
3:08:363 hours, 8 minutes, 36 secondsright? We are exporting get and post and we did it here, right? So it's a common pattern that we are doing here. So just
3:08:443 hours, 8 minutes, 44 secondsmake sure you have added that and then let's write our first ingest function.
3:08:503 hours, 8 minutes, 50 secondsSo I'm going to go inside of source ingest. So where your client.ts is and just add functions.
3:08:593 hours, 8 minutes, 59 secondsTS. And let's go ahead and copy this and paste it. And let's see what we have here. So we are importing inest from its
3:09:073 hours, 9 minutes, 7 secondsneighbor client. and we export a function called hello world. We use inest.create function to create it. We
3:09:143 hours, 9 minutes, 14 secondsgive it an ID and very importantly we give it an event. The event will be used to execute this function later on. It
3:09:223 hours, 9 minutes, 22 secondsdoes a very simple thing. It sleeps for 1 second and then it returns a message using some payload that we can pass. You
3:09:323 hours, 9 minutes, 32 secondscan see that the payload can be anything. I can change this to name. I can change this to surname. But let's keep it email as their original example.
3:09:403 hours, 9 minutes, 40 secondsOnce we have created hello world, following their example, we have to add that function to serve. So let's go
3:09:473 hours, 9 minutes, 47 secondsahead back inside of our app folder API inest route. And inside of the functions here, let's add hello world from inest
3:09:563 hours, 9 minutes, 56 secondsfunctions. Just like that. And the moment you do that, if you have your inest cli dev running and if you have
3:10:053 hours, 10 minutes, 5 secondsyour npm running, you will also see a bunch of requests to ingest. And in the beginning, you will see a bunch of invalid requests here because at this
3:10:143 hours, 10 minutes, 14 secondspoint uh something I mean something this the CLI was searching through our app for ingest endpoint. It tried Netlifi.
3:10:243 hours, 10 minutes, 24 secondsIt tried this basically until it found the working route and then it just sticks to that app which works.
3:10:323 hours, 10 minutes, 32 secondsAnd once you have hello world, you can now go to your let me just find it. Here it is inest dev server localhost 8288.
3:10:423 hours, 10 minutes, 42 secondsAnd when you click in functions, you will now see the hello world here. And what you can do now is you can actually invoke it from here. And you can pass in
3:10:503 hours, 10 minutes, 50 secondsthe object like this. Perhaps it will be empty for you. This is because I already used the ingest dev server. So yes, feel free to just write an object. Make sure
3:10:593 hours, 10 minutes, 59 secondsyou're using quotes for your fields here. And then just pass in the email. For example, Antonio@mail.com.
3:11:063 hours, 11 minutes, 6 secondsAnd make sure to not use any commas. I think that's an invalid JSON. Yes. And click invoke function. And you will see
3:11:133 hours, 11 minutes, 13 secondsthat the function is now running. And it finished pretty quickly. And what happened was is exactly what we said will happen.
3:11:213 hours, 11 minutes, 21 secondsIt slept for a second and then it finished with a message. Hello Antonio@mail.com.
3:11:293 hours, 11 minutes, 29 secondsSo let me just open the docs simply because I have a habit of not finishing through the docs because I'm excited to show you how to use it. But I'm pretty
3:11:373 hours, 11 minutes, 37 secondssure that's what the function uses you here. I think then it goes into some other examples which we are going to encounter anyway. Yes, we are now going
3:11:453 hours, 11 minutes, 45 secondsto trigger from code. So yeah, let's go ahead and do that here. So instead of triggering it by clicking the invoke
3:11:533 hours, 11 minutes, 53 secondsbutton, let's go inside of source tRPC routers_app
3:12:003 hours, 12 minutesand let's go ahead and focus on this here.
3:12:053 hours, 12 minutes, 5 secondsSo now instead of doing these three things here, let's go ahead and remove
3:12:123 hours, 12 minutes, 12 secondsit. And instead let's do await ingest from ingest client
3:12:203 hours, 12 minutes, 20 secondsdot send name test forward/hello.world data email.
3:12:303 hours, 12 minutes, 30 secondsAnd well, we could technically extract the email from here, but it really doesn't matter. We can just do Antonio.com or whatever you want. We are
3:12:383 hours, 12 minutes, 38 secondsnow just trying to execute this uh through apc function. So awaiting.s send. And the name here matters because
3:12:463 hours, 12 minutes, 46 secondsit needs to be the same as the event. So make sure you didn't misspell it. You can copy it and you can paste it here directly if you are not sure.
3:12:563 hours, 12 minutes, 56 secondsSo let's try it out now. So I'm going to go ahead back here. I will click uh create workflow.
3:13:053 hours, 13 minutes, 5 secondsAnd now okay, it immediately finished.
3:13:083 hours, 13 minutes, 8 secondsSo let me try and make this a little bit longer. So wait for a moment. I'm going to change this to 10 seconds.
3:13:173 hours, 13 minutes, 17 secondsI'm going to refresh and I'm going to click create workflow again. And now you can see that it's sleeping for 10
3:13:233 hours, 13 minutes, 23 secondsseconds. But the cool thing is this is no not pending, right? So it did exactly what we planned to do.
3:13:343 hours, 13 minutes, 34 secondsLet me show you. When the user clicks a button, we send the network request, but we immediately sent to the user, okay,
3:13:413 hours, 13 minutes, 41 secondswe started the background job. You are no longer disabled, right? Your button is no longer disabled as it's pending.
3:13:483 hours, 13 minutes, 48 secondsYou can move on. You can do something else. We are doing this in the background. It makes no difference if you wait here or go somewhere else. And we're going to finish the background job
3:13:573 hours, 13 minutes, 57 secondsand notify you when we are done. That's exactly what's happening here. So now in here you can imagine that this is uh
3:14:053 hours, 14 minutes, 5 secondsfetching the YouTube video right and then in here we are transcribing the
3:14:143 hours, 14 minutes, 14 secondsvideo and then in here we are sending transcription
3:14:213 hours, 14 minutes, 21 secondsto AI. Right? So let me just go ahead and change this to 5 seconds here. And
3:14:293 hours, 14 minutes, 29 secondswe can even change this then we no longer have to do this here. Instead we can do await step.run create workflow like this.
3:14:423 hours, 14 minutes, 42 secondsAnd let's go ahead and return Prisma which we can import inside of this inest environment. So Prisma doworkflow.create
3:14:533 hours, 14 minutes, 53 secondscreate data name workflow from ingest.
3:15:023 hours, 15 minutes, 2 secondsSo we have basically now abstracted this entire function which no longer needs to return the Prisma
3:15:103 hours, 15 minutes, 10 secondsworkflow. Instead it can just return success true and a message
3:15:203 hours, 15 minutes, 20 secondsjob quit cued [laughter] not quit. Sorry. Uh all right. Uh and now let's go ahead and try
3:15:293 hours, 15 minutes, 29 secondsit out. So we have the same example that we had in the beginning of our project, right? But this time you can see it
3:15:383 hours, 15 minutes, 38 secondsimmediately returns this back. Right? So this is no longer blocked and you can see that the jobs are happening. Right?
3:15:453 hours, 15 minutes, 45 secondsSo this is waiting for a moment. Then this is waiting for a moment and if this step failed we could easily uh as an
3:15:523 hours, 15 minutes, 52 secondsadmin see why it failed here and we can even retry it. Right? So uh I should probably call this transcribing.
3:16:013 hours, 16 minutes, 1 secondI should call this fetching and I should call this sending to AI. But basically
3:16:083 hours, 16 minutes, 8 secondsif any of these steps fails I can always control you know uh the retries for
3:16:143 hours, 16 minutes, 14 secondsexample five retries right or if I want all steps to always work I can set zero retries. So that's what's cool about
3:16:233 hours, 16 minutes, 23 secondsthis background jobs besides the obvious, right? In case transcri transcription step fails, we can very easily, you know, just retry that step.
3:16:333 hours, 16 minutes, 33 secondsMaybe it timed out, maybe the their server broke at right this moment. But the thing is we are going to delay next
3:16:423 hours, 16 minutes, 42 secondsretry for twice amount of time. Well, I just said something that I don't know if it's true, but we definitely delay the
3:16:503 hours, 16 minutes, 50 secondsnext retry. So, we give it time to not hit any rate limits or things like that, right? That's another cool thing about
3:16:573 hours, 16 minutes, 57 secondsthe ingest. So, let's go ahead and try again. And this time, let's make it even more obvious by going to page.tsx here.
3:17:083 hours, 17 minutes, 8 secondsAnd on success, we no longer have to do this. Instead, let's just do toast from soner.success
3:17:153 hours, 17 minutes, 15 secondsSuccess job ceued import toast from Soner
3:17:233 hours, 17 minutes, 23 secondsand now you will get a message job cued and now the user knows okay so whatever I just did is happening in the
3:17:313 hours, 17 minutes, 31 secondsbackground right I don't have to worry about it because right now it's fetching the video for 5 seconds then it's transcribing my video and now it's
3:17:393 hours, 17 minutes, 39 secondssending it to open AI and finally in a real world example you know it would have all the data and it would create the workflow. Right? That's what I'm
3:17:483 hours, 17 minutes, 48 secondstrying to demonstrate here. And you can see that well now we have to refresh to see the new model. But don't worry later we are going to connect inest to their
3:17:563 hours, 17 minutes, 56 secondsreal time service to show to the user in real time when the job is finished when it's in progress or if the job failed.
3:18:043 hours, 18 minutes, 4 secondsSo that's what's absolutely amazing about ingest and I believe that that is a very good introduction to background
3:18:133 hours, 18 minutes, 13 secondsjobs which are a very very crucial concept uh for us here. So let's see if we did everything we intended to do. We
3:18:203 hours, 18 minutes, 20 secondsset up inest we created a background jobs but we didn't add this. So the reason I wanted to add this is
3:18:283 hours, 18 minutes, 28 secondsdefinitely not required. I just think it's cool. So you can see how I need to have two terminals and every time I
3:18:363 hours, 18 minutes, 36 secondsstart this project I have to remember to run both this and I have to remember to run this. So if you're interested you
3:18:443 hours, 18 minutes, 44 secondscan install uh this package. It's called mroxs like multiple processes. You can
3:18:513 hours, 18 minutes, 51 secondsalso use concurrently. But the thing I really like about this is that it will show you the processes that are running
3:18:593 hours, 18 minutes, 59 secondsindividually and you can see if any of them failed. This is obviously not required. It's for running multiple commands in your development mode. But
3:19:063 hours, 19 minutes, 6 secondsit's very easy to install, right? You can just use npm install global multiple processes. So let me go ahead and just add this for example, right?
3:19:183 hours, 19 minutes, 18 secondsBut since this will be kind of in your app, perhaps it will be better to install this as a dev dependency and
3:19:253 hours, 19 minutes, 25 secondsthen all of your collaborators can do that as well. So let me show you my package JSON here and proc. There we go.
3:19:343 hours, 19 minutes, 34 seconds0.7.3 inside of my dev dependencies here.
3:19:393 hours, 19 minutes, 39 secondsUh and now that you have this, all you have to do really is create a simple uh MROS dot
3:19:483 hours, 19 minutes, 48 secondsI'm never sure how to pronounce this extension. Let me just show you. So, in the root of your file, create uh MROS
3:19:563 hours, 19 minutes, 56 secondsdot YL prox mean processes
3:20:043 hours, 20 minutes, 4 secondsand let's add inest cmd npm run inestdev.
3:20:153 hours, 20 minutes, 15 secondsNext. CND npm run dev. Again, this is completely
3:20:233 hours, 20 minutes, 23 secondsoptional. You don't have to do this, right? It's already working for you. You can run both of them at the same time.
3:20:283 hours, 20 minutes, 28 secondsBut if you want to do it with the same command, you can use concurrently or you can use this. Uh this is a new thing that I found and I really like it. And now let's go inside of our package.
3:20:373 hours, 20 minutes, 37 secondsJSON. Uh and let's go inside of scripts here.
3:20:423 hours, 20 minutes, 42 secondsSo I'm now going to add inestdev and I'm going to add inest- cli dev and
3:20:523 hours, 20 minutes, 52 secondsI'm going to add dev all. And in here I'm just going to do mroxs.
3:21:003 hours, 21 minutesAnd let's also install inest cli as a dev dependency the same way we did before. So I will actually shut down
3:21:093 hours, 21 minutes, 9 secondsthis now and I will do mpm install inside of my dev dependencies inest cli.
3:21:203 hours, 21 minutes, 20 secondsThis way, whoever you know ends up working on your project will have the exact dependencies that you had like this mrox and ingest cli.
3:21:303 hours, 21 minutes, 30 secondsAnd if I've done this correctly, and I think I did, when you run dev all, it should find its configuration file and
3:21:383 hours, 21 minutes, 38 secondsit should run both inest and npm rundev at the same time. So just make sure you call this inestdev and then it will just
3:21:463 hours, 21 minutes, 46 secondsmake sure you didn't misspell it here, right? So let's try mpm rundev all. And there we go. You can see how it starts both inest and nextjs.
3:21:583 hours, 21 minutes, 58 secondsNow keep in mind that it's a little bit different. So for example, if you want to quit this, you have to press the letter Q. Ctrl C will not work. So you
3:22:073 hours, 22 minutes, 7 secondshave to press the letter Q and then it will shut down everything. Same thing if you want to copy something from here. If I want to copy this, you can see I'm in
3:22:153 hours, 22 minutes, 15 secondscopy mode now and I have to press the letter C to copy. Right? So when I press C, that copies it. Control C or command
3:22:253 hours, 22 minutes, 25 secondsC will not copy it. It's just the letter C that will copy it. You can use your mouse to select the process or you can
3:22:323 hours, 22 minutes, 32 secondsgo up and down. And you can also do a cool thing. You can once your process is selected, you can press the letter R and
3:22:403 hours, 22 minutes, 40 secondsthat will restart it. You can see that now I just restarted Nex.js or if I want to restart my ingest, I can just press
3:22:473 hours, 22 minutes, 47 secondsR. I personally think it's cool. If you don't like it, you don't have to use it.
3:22:523 hours, 22 minutes, 52 secondsI don't know. Uh but I just wanted to show you this in case you you don't so you don't get surprised if in the middle of the tutorial you see me having this
3:23:003 hours, 23 minutesmultiple processes thing. Uh it it's inspired definitely by the Turbo uh process manager, which is Demox, I
3:23:083 hours, 23 minutes, 8 secondsthink. But setting up Turbo might be a little bit of an overkill for this project. I don't know. Uh I'll have to explore it a little bit more. I usually
3:23:153 hours, 23 minutes, 15 secondsuse it only when I need monor repo. And setting up DMAX is not as simple as doing an npm install. Right? So if this
3:23:233 hours, 23 minutes, 23 secondsis not working for you, no problem. Just continue with the tutorial. But if it is, I think it will kind of help you because we will have some more processes to run synchronously. Uh and that will
3:23:323 hours, 23 minutes, 32 secondsbe like angro our local tunnel. So it will be very easy to have all of them here together.
3:23:383 hours, 23 minutes, 38 secondsGreat. So if it works for you, great. If it doesn't, no need to use it. Uh, and I think that now that marks the end of
3:23:453 hours, 23 minutes, 45 secondseverything we wanted to do. So let's go ahead and let's uh commit this. So 06 background jobs. I'm going to go ahead
3:23:533 hours, 23 minutes, 53 secondshere and I will create a new branch. 06 background jobs.
3:24:003 hours, 24 minutesAnd now let's go ahead and stage all 10 changes that we have.
3:24:073 hours, 24 minutes, 7 seconds06 background jobs and let's click commit and let's click publish branch.
3:24:143 hours, 24 minutes, 14 secondsUh and now let's go ahead to our repository and as always let's open a pull request and let's review our changes.
3:24:263 hours, 24 minutes, 26 secondsAnd here we have the summary by code rabbit. We added a workflows list with client side loading. We introduced a
3:24:333 hours, 24 minutes, 33 secondscreate workflow button with success notification and disabled state while processing background task triggered on
3:24:413 hours, 24 minutes, 41 secondscreation to handle processing. We converted the main page to client side.
3:24:453 hours, 24 minutes, 45 secondsWe only did this so it's easier for us to execute the functions. We added local tooling to run multiple development processes concurrently. Exactly. And we
3:24:543 hours, 24 minutes, 54 secondsintroduced new development runtime dependencies which is referring to ingest. So, what I'm excited about is
3:25:013 hours, 25 minutes, 1 secondthe sequence diagram. You've probably guessed it already. So, let's go ahead and take a look. When the user clicks create workflow, what we do is we call a
3:25:093 hours, 25 minutes, 9 secondsmutation.create workflow. The TRPC router receives that and once it sends the event to test hello world, the
3:25:173 hours, 25 minutes, 17 secondsingest API acknowledges it and we simply send back to the user the success message. And if you remember, this is
3:25:243 hours, 25 minutes, 24 secondsexactly what I planned on doing. Let me just find my example right here. So longunning task example with background jobs. The user clicks generate summary.
3:25:353 hours, 25 minutes, 35 secondsWe send a network request. We cue the background job. And we simply acknowledge the background job. The summary is being generated. That's what
3:25:433 hours, 25 minutes, 43 secondsthis step is. User clicks the button, we send the network request, we cue the background job, and we send to the user a success message like, "Hey, that's it.
3:25:533 hours, 25 minutes, 53 secondsThat's all you have to worry about." But what's actually happening is that something's going on in the background
3:26:003 hours, 26 minuteswhile the user can do whatever they want. In our case, we just sleep for 15 seconds, but we are pretending that this
3:26:073 hours, 26 minutes, 7 secondsis fetching the video, transcribing the video, and sending the transcription to the AI. And then we create some record,
3:26:143 hours, 26 minutes, 14 secondswhich obviously makes no sense. But in the real example, this would use some data from this three steps that we just
3:26:213 hours, 26 minutes, 21 secondsdid. That's basically what we will do in the future. And that's exactly the flow that code rabbit managed to understand.
3:26:293 hours, 26 minutes, 29 secondsEvery time I see this and every time I'm impressed by how well it understands the code that we are writing in we here we
3:26:373 hours, 26 minutes, 37 secondshave a couple of actionable comments. Uh but we will not do anything regarding that simply because we just modified a bunch of our files just to demo. Right?
3:26:463 hours, 26 minutes, 46 secondsSo none of this is really going to stay here. We're going to change our file structure a lot for this page. PSX as
3:26:553 hours, 26 minutes, 55 secondswell as the actual functions are not going to look like this. So it makes no sense to change them because they are not real, right? We just use them as an example. So amazing uh amazing job.
3:27:073 hours, 27 minutes, 7 secondsLet's go ahead and merge this pull request here.
3:27:113 hours, 27 minutes, 11 secondsUh and let's go ahead and see if that's all we had to do. I believe that marks the end of this chapter. It does.
3:27:193 hours, 27 minutes, 19 secondsAmazing. Amazing job. and see you in the next chapter. And yes, before we of course end the chapter, I almost forgot.
3:27:283 hours, 27 minutes, 28 secondsUh we have to go back to our main branch.
3:27:323 hours, 27 minutes, 32 secondsAnd after your main branch here, make sure to synchronize the changes. Click okay. And then head inside of your
3:27:393 hours, 27 minutes, 39 secondssource control your graph. And in here, you should see 06 background jobs being
3:27:463 hours, 27 minutes, 46 secondsdetached from the main branch and then merged back here. And for your sanity check, make sure you are on the main
3:27:533 hours, 27 minutes, 53 secondsbranch and that you can see for example uh MROS configuration file or ingest file. That means everything's fine. And that marks the end of this chapter.
3:28:043 hours, 28 minutes, 4 secondsAmazing job and see you in the next one.
3:28:083 hours, 28 minutes, 8 secondsIn the previous chapter, we've created an infrastructure which allows us to run longunning tasks within our project. And
Chapter 8: 07 AI Providers
3:28:163 hours, 28 minutes, 16 secondsin this chapter, we're going to put that to test by adding AI functions. In order to do that, we first have to choose an
3:28:243 hours, 28 minutes, 24 secondsAI provider. Using the link on the screen, you can visit AI SDK.
3:28:303 hours, 28 minutes, 30 secondsGo ahead and head into the providers section. And in here, you can find the list of all compatible providers.
3:28:383 hours, 28 minutes, 38 secondsYou can see that it ranges from popular ones like OpenAI, Anthropic, Google, which is Gemini,
3:28:473 hours, 28 minutes, 47 secondsDeepSick, all the way to lesserk known ones.
3:28:523 hours, 28 minutes, 52 secondsAnd now I've extracted average pricing for those simply so you know if you have the budget or not. Gemini, which is what
3:28:593 hours, 28 minutes, 59 secondsI will be teaching you how to use in this chapter, is completely free, at least at the moment of me recording this video. OpenAI and Anthropic, which are
3:29:083 hours, 29 minutes, 8 secondsby far the best and most popular models, require a minimum of $5, which will be more than enough to complete this
3:29:153 hours, 29 minutes, 15 secondsproject five times. But in order to make this easy for everyone to follow, I will be using Gemini.
3:29:243 hours, 29 minutes, 24 secondsSo, let's go ahead and start with setting up AI SDK.
3:29:283 hours, 29 minutes, 28 secondsSo, I'm going to go ahead here and let me try and go back here. And first things first, let's do npm install
3:29:363 hours, 29 minutes, 36 secondsAI. So you can see that I'm using AI SDK version 5. So I will simply do npm install AI and then I'm going to head
3:29:453 hours, 29 minutes, 45 secondsinside of my package JSON here just to show you the exact version. Here it is AI 5.0.60.
3:29:553 hours, 29 minutes, 55 secondsOnce we have that, let's go ahead and let's add a provider. So in order to add a provider, you have to go inside of
3:30:033 hours, 30 minutes, 3 secondsproviders here and you have to find the one you use. If you're using OpenAI, you would simply select Open AI provider.
3:30:113 hours, 30 minutes, 11 secondsYou would select your uh package manager and you would run the command. So in this example, we're going to be using uh
3:30:203 hours, 30 minutes, 20 secondsI I'm never sure which one it is. Okay, we're going to be using Google Generative AI, which is Gemini. So let's
3:30:283 hours, 30 minutes, 28 secondsgo ahead and select nm. Let's go ahead and copy this and let's paste it inside npm install at ai-dkward
3:30:373 hours, 30 minutes, 37 secondssloogle and then let me show you that as well so you can see the exact version. So that's up here. Here it is. AISDK/Google2.0.17.
3:30:483 hours, 30 minutes, 48 secondsSo that's the version that's compatible with my uh 5.0.60 version of AI.
3:30:563 hours, 30 minutes, 56 secondsNow that we have that ready, we have to go ahead and get an API key. So for whatever provider you choose, you can
3:31:043 hours, 31 minutes, 4 secondsvery quickly just click on the hyperlink here and you will be redirected to their website and from there you can find the
3:31:123 hours, 31 minutes, 12 secondsAPI keys. Uh so for Google generative AI, let's go ahead and click here which will take us to a.google.dev.
3:31:193 hours, 31 minutes, 19 secondsI will have the link on the screen so it's easier to find here. Uh, one quick tip for you. The first time I tried
3:31:283 hours, 31 minutes, 28 secondsaccessing this website, I went into explore models in Google AI Studio and I was actually kicked out from here. And the reason was I didn't verify my age.
3:31:403 hours, 31 minutes, 40 secondsYou need to be at least 18 years old to access Google AI Studio. So, in case you are wondering why are you getting kicked
3:31:493 hours, 31 minutes, 49 secondsout from Google AI Studio, it's probably because you have to verify your age. So, just go to your Google account, go into settings, and find a way to verify it.
3:31:593 hours, 31 minutes, 59 secondsBut if you can access this screen, most likely everything's completely fine. And right here at the bottom, you can actually see get API key. So, I'm going
3:32:093 hours, 32 minutes, 9 secondsto go ahead and click create API key button. And I'm going to call this Node.
3:32:153 hours, 32 minutes, 15 secondsAnd now you have to either create a project or choose a project. So I don't have any. So I will click create
3:32:213 hours, 32 minutes, 21 secondsproject. And I will call this Nodebase project.
3:32:273 hours, 32 minutes, 27 secondsLet's go ahead and wait a second for this to be created. And then hopefully we will be able to select it right here.
3:32:353 hours, 32 minutes, 35 secondsHere it is. Nodebase project. Nodebase.
3:32:383 hours, 32 minutes, 38 secondsCreate key. And once the key has been created, let's go ahead and click copy API key.
3:32:473 hours, 32 minutes, 47 secondsAnd you can see I'm on the free tier. I don't have the credit card added.
3:32:523 hours, 32 minutes, 52 secondsHopefully that's the same for you. And let's go inside of environment here. And let's go ahead and do Google generative AI.
3:33:043 hours, 33 minutes, 4 secondsAnd let's do Google or maybe Gemini secret key and paste it inside.
3:33:143 hours, 33 minutes, 14 secondsAnd now to find the actual proper name we should be using for this. I mean it doesn't matter. You can of course use whatever name you want but I just want
3:33:223 hours, 33 minutes, 22 secondsto show you that if you actually go to AI SDK here uh you will be able to find the exact value that they are expecting.
3:33:293 hours, 33 minutes, 29 secondsAnd here it is. So API key which is a prop. So you can always pass your custom name but this is the one they are
3:33:363 hours, 33 minutes, 36 secondsexpecting a Google generative AI API key. So I will use that instead. So Google generative AI API key.
3:33:463 hours, 33 minutes, 46 secondsPerfect. Now that we have that, let's go ahead and try and use it. So I'm going to go ahead inside of first just a
3:33:553 hours, 33 minutes, 55 secondsnormal TRPC router to keep it simple. No need to mix it with inest for now.
3:34:023 hours, 34 minutes, 2 secondsAnd I will simply add a new route here.
3:34:053 hours, 34 minutes, 5 secondsAnd let me go ahead and expand this a little bit. Let's call this um test AI.
3:34:153 hours, 34 minutes, 15 secondsIt will be a protected procedure. It will be a mutation.
3:34:203 hours, 34 minutes, 20 secondsAnd inside of here, let's go ahead and let's see what's the best way to do that. I want to do this.
3:34:303 hours, 34 minutes, 30 secondsI want to do the generate text one. So I will mark this as an asynchronous method here. And I am going to import generate
3:34:393 hours, 34 minutes, 39 secondstext and Google from above. So let me just add Google from AI SDK Google and generate text from AI. And then inside
3:34:473 hours, 34 minutes, 47 secondsof here I'm very simply going to get that text here. So let me just copy this and let me paste it here.
3:34:553 hours, 34 minutes, 55 secondsHere it is text. And let me just return text back.
3:35:003 hours, 35 minutesSo write a vegetarian lasagna recipe for four people. You can change this, of course, to whatever you want. I will
3:35:063 hours, 35 minutes, 6 secondsstick with the original query here. So we are using a model Gemini 2.5 flash.
3:35:133 hours, 35 minutes, 13 secondsDepending on when you're watching this video, perhaps they updated the documentation, but I think that it's all type safe. Yes, you can see exactly
3:35:223 hours, 35 minutes, 22 secondswhich ones they offer. So let me just move it back to 2.5 flash. I'm not really familiar with
3:35:303 hours, 35 minutes, 30 secondsGoogle models. I guess this is okay. Now that I have that in my router, I'm going to go inside of my source app folder
3:35:373 hours, 35 minutes, 37 secondspage.tsx and I'm going to do const test AI use
3:35:443 hours, 35 minutes, 44 secondsmutation tRPC test AI domutation options.
3:35:513 hours, 35 minutes, 51 secondsAnd let's go ahead and use this test AI.
3:35:533 hours, 35 minutes, 53 secondsAnd let's just do a new button here with test AI text here. On click, it will simply call test AI.mmutate.
3:36:023 hours, 36 minutes, 2 secondsAnd just to be aware of how long it takes, let's also disable if test AI is pending like this.
3:36:123 hours, 36 minutes, 12 secondsNow let's go ahead and make sure our app is running. So you can do that using npm rundev. But just a quick reminder in the
3:36:203 hours, 36 minutes, 20 secondsprevious chapter we have also added dev all but since we don't need injust at the moment npm rundev is fine.
3:36:293 hours, 36 minutes, 29 secondsSo let's go ahead to localhost 3000 here and in order to test this I think the best way is to actually open your
3:36:373 hours, 36 minutes, 37 secondsnetwork tab because I don't see how else we can see the results really. So let me go ahead and go inside of my network tab
3:36:473 hours, 36 minutes, 47 secondshere. Get Workflows is failing. Uh maybe because I'm logged out.
3:36:543 hours, 36 minutes, 54 secondsLet me go ahead and log out and let me go. Yeah, since we removed we removed the
3:37:023 hours, 37 minutes, 2 secondsredirect. So, make sure that you go to log manually. If you have your errors here, it's probably because you are
3:37:113 hours, 37 minutes, 11 secondslogged out. So, just make sure you log in again. Maybe the cookie or the session timed out or something, right?
3:37:173 hours, 37 minutes, 17 secondsUh, and let's click test AI. And here we have test AI. Let me go ahead and you can see it takes a while, right? So,
3:37:273 hours, 37 minutes, 27 secondssomething is happening now. Uh, and we're actually going to get a much prettier view of what's happening once
3:37:333 hours, 37 minutes, 33 secondswe connect this to ingest to a background job. And you can see how useful background jobs are for
3:37:413 hours, 37 minutes, 41 secondsAI queries. You can see how long this took. And we had no idea if it went successfully or not until we actually look here. And here it is. Here's a
3:37:493 hours, 37 minutes, 49 secondsdelicious and hearty vegetarian lasagna recipe designed for four people focusing on fresh vegetables, blah blah blah blah. So it works. We successfully
3:37:583 hours, 37 minutes, 58 secondsconnected Gemini to our project using a free API key. Uh but you can see the problem, right? When I click test AI, it
3:38:053 hours, 38 minutes, 5 secondsreally does take a while, right? So this is a realworld example of a longunning task. uh and this can very easily time
3:38:143 hours, 38 minutes, 14 secondsout in production. If you deploy this on Versell or Netlify and you don't use their streaming option, uh this kind of
3:38:223 hours, 38 minutes, 22 secondsrequest will time out and your users will never actually get the result back.
3:38:273 hours, 38 minutes, 27 secondsAnd what's worse, they will actually use up your tokens.
3:38:313 hours, 38 minutes, 31 secondsSo the perfect solution for this is to put them in a background job instead. So now we're going to do that.
3:38:393 hours, 38 minutes, 39 secondsLet's go ahead and you know in case you're struggling with this uh like logged in logged out thing you can also
3:38:473 hours, 38 minutes, 47 secondsjust make your life easier by going inside of routers app instead of using a protected procedure just use a base procedure
3:38:553 hours, 38 minutes, 55 secondsand import base procedure and this way even if you're logged out so even if you go in incognito mode you will be able to
3:39:023 hours, 39 minutes, 2 secondstest the AI function so now instead of running this here we need to abstract ract it instead of something like this.
3:39:133 hours, 39 minutes, 13 secondsSo let's do that. I'm going to go ahead inside of source and inside of inest.
3:39:213 hours, 39 minutes, 21 secondsAnd here are the functions.
3:39:253 hours, 39 minutes, 25 secondsUh and now I'm going to delete everything in here like that. And I'm going to change this a little bit. So let's call this execute.
3:39:373 hours, 39 minutes, 37 secondsAnd let's call this execute as well.
3:39:423 hours, 39 minutes, 42 secondsOr maybe let's just be a little more specific. So like execute dot AI and ID execute dash AI. I don't know. I just
3:39:503 hours, 39 minutes, 50 secondswant to make sure that uh we can do this. I think this might be the proper one.
3:39:583 hours, 39 minutes, 58 secondsMaybe like that. Okay. And let's rename the hello world here to execute.
3:40:073 hours, 40 minutes, 7 secondsAnd once we have that, let's go inside of our TRPC API route.
3:40:173 hours, 40 minutes, 17 secondsUh my apologies, not here, not TRPC inest right here. And let's replace hello world with execute function.
3:40:293 hours, 40 minutes, 29 secondsHere it is. So execute execute you can close the tRPC route and functions here. Perfect.
3:40:363 hours, 40 minutes, 36 secondsAnd now instead of calling all of those weight elements let's simply call the AI function.
3:40:453 hours, 40 minutes, 45 secondsAnd now here we can import create Google generative AI from AI SDK Google. And we can import
3:40:553 hours, 40 minutes, 55 secondsgenerate text from AI. Now let's go ahead and let's define Google right. So
3:41:023 hours, 41 minutes, 2 secondsconst Google is going to be create Google generative AI. Uh and in here you don't actually have to pass anything
3:41:103 hours, 41 minutes, 10 secondssimply because it will work out of the box like this because we are using Google generative AI API key name. So if
3:41:193 hours, 41 minutes, 19 secondsyou named it something else in that case you would have to pass that here and then process.environment custom Gemini key right? But since we are using this
3:41:283 hours, 41 minutes, 28 secondsspecific name and since it already worked through just a DRPC router, I'm fairly confident that it will work like this as well. And then in here, there's a cool thing that inest offers us.
3:41:393 hours, 41 minutes, 39 secondsInstead of running uh the actual AI uh generate text, what we can do here is we
3:41:463 hours, 41 minutes, 46 secondscan extract the steps from await step.ai.
3:41:563 hours, 41 minutes, 56 secondsAnd let's go ahead and call this Gemini generate text. As the second argument,
3:42:033 hours, 42 minutes, 3 secondslet's pass generate text. And then as the third argument, let's open an object.
3:42:103 hours, 42 minutes, 10 secondsAnd then in here in this object, let's define the system to be you are a helpful assistant.
3:42:183 hours, 42 minutes, 18 secondsAnd let's define the prompt from the user to be what is 2 + 2.
3:42:263 hours, 42 minutes, 26 secondslike this.
3:42:293 hours, 42 minutes, 29 secondsAnd let's also add the actual model that we will be using, which is using Google.
3:42:363 hours, 42 minutes, 36 secondsAnd inside of here, let's pass in the Gemini 2.5 flash. So, let me collapse this so it's easier to look at and understand.
3:42:473 hours, 42 minutes, 47 secondsSo, inside of our AI.rap, app. We have three props passed. First one is the name of
3:42:543 hours, 42 minutes, 54 secondsour step. Second one is the function that we are wrapping which is generate text from our AI library. And third one
3:43:033 hours, 43 minutes, 3 secondsare the properties of this generate text from AI. So essentially we're doing the same thing that we just did inside of
3:43:113 hours, 43 minutes, 11 secondsthis uh route.ts routers instead of underscore app. Here you can see it's kind of the same thing
3:43:203 hours, 43 minutes, 20 secondsbut it is optimized for ingest. So it kind of becomes a step. It's abstracted in this way. And now that we do that
3:43:293 hours, 43 minutes, 29 secondswhat we can actually do is we can just return the step here.
3:43:343 hours, 43 minutes, 34 secondsAnd I think already we should see some results uh steps. Whoops.
3:43:423 hours, 43 minutes, 42 secondsAnd now let's just make sure that we actually fire this event execute forward sli.
3:43:513 hours, 43 minutes, 51 secondsSo again inside of our underscore app folder let's go inside of test AI.
3:43:583 hours, 43 minutes, 58 secondsAnd now here we're going to do the same thing awaiting send.
3:44:063 hours, 44 minutes, 6 secondsAnd we are just going to send execute forward slash AI.
3:44:163 hours, 44 minutes, 16 secondsLet me just confirm. So it's name of the event. Here it is. Execute AI. I don't need to pass any data really. Uh and
3:44:253 hours, 44 minutes, 25 secondsyeah, we can just copy this. So again, we just cue the job. We're not going to make this longunning task happen and let
3:44:333 hours, 44 minutes, 33 secondsthe user wait here with a disabled button not knowing how long it's going to take. We're going to give them an instant uh response. Now, in order to
3:44:423 hours, 44 minutes, 42 secondsrun this, we also have to run our npx inest CLI latest dev
3:44:513 hours, 44 minutes, 51 secondsor you can use what we developed last time if it worked for you. npm rundev all
3:44:593 hours, 44 minutes, 59 secondswhich will run both inest and nex.js simultaneously.
3:45:043 hours, 45 minutes, 4 secondsSo now I'm going to go to localhost 8288. In here I have my runs and I'm going to refresh this one more time and
3:45:133 hours, 45 minutes, 13 secondsI will click test AI. Instantly I'm unblocked. And in here you can see that we had a Gemini step and it was called
3:45:223 hours, 45 minutes, 22 secondslet me see the full name Gemini generate text and the output here is so the content is what's 2 + 2 and if we go all
3:45:323 hours, 45 minutes, 32 secondsthe way down here somewhere we should find the response.
3:45:393 hours, 45 minutes, 39 secondsI'm going to try and find it here. If we can't find it, I will very simply just uh change the code or maybe in the finalization step.
3:45:523 hours, 45 minutes, 52 secondsOh, here it is. 2 + 2 equals 4. So, it instantly responded. It didn't. I I thought it was going to write here's
3:46:003 hours, 46 minutesyour answer blah blah blah, but it instantly responded that 2 plus 2 is four. Perfect. So, that's how we're going to run our AI jobs through
3:46:093 hours, 46 minutes, 9 secondsbackground jobs. So this way when someone just tries to execute an AI job, they are going to get an instant message
3:46:163 hours, 46 minutes, 16 secondslike, "Hey, all right, that's in progress. Do whatever you want. We're going to handle this for you." Right? So let's go ahead and try this once again.
3:46:253 hours, 46 minutes, 25 secondsAnd now I'm going to go inside of my functions here and let me just add a simple await sleep here. Await stop.step.
3:46:353 hours, 46 minutes, 35 secondsAnd uh let me see. I'm going to call this I don't know pretend
3:46:423 hours, 46 minutes, 42 secondsand then let's sleep for let me just see oh
3:46:493 hours, 46 minutes, 49 seconds5 seconds I think I can just do this and let's go ahead and change our page
3:46:563 hours, 46 minutes, 56 secondstsx here so that when we click on the test AI in here in the mutation options
3:47:043 hours, 47 minutes, 4 secondslet's just copy the on success and let's just say AI job cued.
3:47:123 hours, 47 minutes, 12 secondsSo you can now finally start to see how handy these background jobs are when we have a real world example. So let's refresh. Let's click test AI. Instantly
3:47:223 hours, 47 minutes, 22 secondsAI job is cued. And in here you can see we have a pretend step and then we are starting the AI job. So imagine in the
3:47:303 hours, 47 minutes, 30 secondspretend step we kind of fetched something or we communicated to some third service. That's what's happening
3:47:373 hours, 47 minutes, 37 secondshere, right? And you can now see how useful this is going to be when this test AI button becomes execute workflow
3:47:463 hours, 47 minutes, 46 secondsbutton. And then we are going to execute topologically all the nodes that are connected.
3:47:543 hours, 47 minutes, 54 secondsThat node can for example be fetch a website or fetch an API and then use the
3:48:003 hours, 48 minutesresult of that fetch and put it inside of an open AI request or a Gemini request. and after that send it to Slack
3:48:103 hours, 48 minutes, 10 secondsor Discord. You can see how long that would take within a normal network request. That would certainly time out
3:48:173 hours, 48 minutes, 17 secondson all providers. But if we offset that to a background job like inest, it is much more reliable, much easier to work
3:48:263 hours, 48 minutes, 26 secondswith and a much better experience for the user because look at this. Instantly they get a response. All right, we got
3:48:333 hours, 48 minutes, 33 secondsit. You can do whatever you want. We are going to handle this entire workflow for you. Don't worry, that's what we are
3:48:423 hours, 48 minutes, 42 secondsdoing here. And we can do a bunch of side effects. We can do analytics. We can do whatever we want during these background jobs. And not to mention, all of this can retry if Gemini step fails.
3:48:533 hours, 48 minutes, 53 secondsWe're just going to retry it, right?
3:48:553 hours, 48 minutes, 55 secondsThat's how useful all of these things are. And now to finish the chapter, uh let's see. We selected Gemini, but I'm
3:49:043 hours, 49 minutes, 4 secondsalso going to show you how to add OpenAI and Enthropic regardless if you have the API key or not. I would suggest that you follow along uh and simply let them
3:49:123 hours, 49 minutes, 12 secondserror, right? You don't have to have them working. We also need to demonstrate errors somehow. So, just
3:49:203 hours, 49 minutes, 20 secondsintegrate them together with me regardless if you have the API key or not. And you are just going to have an error, right? For example, I don't have
3:49:283 hours, 49 minutes, 28 secondsan anthropic API key. I just have open AI. So my anthropic is going to fail and my open AI is going to work. But it's
3:49:363 hours, 49 minutes, 36 secondsuseful for you to have the proper integration of all three of them because that will make it quite powerful to whoever you want to show this to, right?
3:49:433 hours, 49 minutes, 43 secondsAnd because these are very popular and very good models. So it will be a shame because it's super simple to create them, right? So the way we do this is we
3:49:523 hours, 49 minutes, 52 secondsgo back to AI SDK, right? And we click on open AI. We select npm and we
3:50:003 hours, 50 minutesinstall. So let me go ahead here. Let me install AI SDK OpenAI. You scroll a bit
3:50:083 hours, 50 minutes, 8 secondsdown and in here you can find OpenAI API key environment variable which tells you the default that it's expecting. So let's go ahead and do open AI.
3:50:233 hours, 50 minutes, 23 secondsHere it is. And let's do anthropic already. And we're going to do the same thing.
3:50:313 hours, 50 minutes, 31 secondsSo, anthropic npm install
3:50:393 hours, 50 minutes, 39 secondsand let's find the variable anthropic API key.
3:50:483 hours, 50 minutes, 48 secondsHere it is. So, now I'm going to show you how you can obtain uh open AI API key simply because I have it here. So you have to go to platform.openai.com.
3:50:593 hours, 50 minutes, 59 secondsYou can see the link on the screen. Once you sign in here in your settings here, make sure that in
3:51:063 hours, 51 minutes, 6 secondsyour billing here, you have some balance. So as I told you, the minimum to add is $5.
3:51:133 hours, 51 minutes, 13 secondsI've been using this balance for the past three or four projects that I've done. So you can see it's very cheap for what we are doing, except if you don't,
3:51:223 hours, 51 minutes, 22 secondsyou know, overuse it. And in here you have API keys. Uh so you can see I already created one when I was developing this project. So just click
3:51:313 hours, 51 minutes, 31 secondscreate new secret key nodebase. If you don't have a project just select a default project and click create secret
3:51:393 hours, 51 minutes, 39 secondskey. Copy it here and then just paste it here.
3:51:443 hours, 51 minutes, 44 secondsUh and the reason I'm telling you that you should add open AAI and the thropping regardless if you have API keys or not. uh using after you finish
3:51:543 hours, 51 minutes, 54 secondsthis project, you are not going to use your API keys. Your users will add their
3:52:003 hours, 52 minutesown API keys, right? So, we are just doing this for demonstration purposes.
3:52:073 hours, 52 minutes, 7 secondsFor example, I'm going to demonstrate leaving Enthropic empty because I don't have that API key. But later when the project is finished for each of these
3:52:153 hours, 52 minutes, 15 secondsproducts for each of these nodes your users will have to create new credentials and in those credentials they are going to enter these fields
3:52:243 hours, 52 minutes, 24 secondsright here. So they will have to take care of the costs of their AI providers.
3:52:313 hours, 52 minutes, 31 secondsSo don't worry about that. Uh and now uh let's go ahead and we don't have to create any new actions. We can just
3:52:383 hours, 52 minutes, 38 secondsfocus on this one AI job that we have here.
3:52:423 hours, 52 minutes, 42 secondsSo let me go ahead and do con open AI create open uh AI. I'm not sure which one it is. Let me just quickly uh check.
3:52:523 hours, 52 minutes, 52 secondsSo it is create open AI from AI SDK open AI
3:52:593 hours, 52 minutes, 59 secondsand oh it's open AI like this. And let's do anthropic. Create anthropic.
3:53:083 hours, 53 minutes, 8 secondsAnd I'm 90% sure it's just anthropic. Create anthropic. As simple as that. And now that we have all three
3:53:173 hours, 53 minutes, 17 secondshere, regardless if you have the API key or not, let's go ahead and call this alias this
3:53:233 hours, 53 minutes, 23 secondsto be Gemini steps like that. And then copy this.
3:53:303 hours, 53 minutes, 30 secondsPaste it here. Change this to be open AI steps and use open AI.
3:53:393 hours, 53 minutes, 39 secondsChange this to beh4 I guess. I don't know. And let's copy it
3:53:493 hours, 53 minutes, 49 secondsone more time. Change this to be anthropic steps. And change this to entropic.
3:53:573 hours, 53 minutes, 57 secondsAnd oh this I don't know. Uh, try to use some cheap cheap ones
3:54:043 hours, 54 minutes, 4 secondsif that means anything to you. I have I think oppos is very expensive. So, I'm going to use set maybe. I don't know.
3:54:123 hours, 54 minutes, 12 secondsAnd let me just change this to be anthropic generate text. And this will be open AI generate text. Perfect. And
3:54:203 hours, 54 minutes, 20 secondsthen here we will just return Gemini steps. Open AI steps. and anthropic steps.
3:54:333 hours, 54 minutes, 33 secondsAnd did I like this? There we go. So now we should have no errors at all. And if we try to
3:54:423 hours, 54 minutes, 42 secondsgo back inside of our app here, refresh and let me close this and click test AI.
3:54:503 hours, 54 minutes, 50 secondsYou can now see we have this running and let's see what happens. So what I expect to happen is the first two to succeed.
3:54:563 hours, 54 minutes, 56 secondsSo Gemini succeeded. Now we are doing the second one. OpenAI succeeded and Enthropic has failed because as you can
3:55:043 hours, 55 minutes, 4 secondssee the API key header is required. And you can see what's actually happening here. It's retrying.
3:55:113 hours, 55 minutes, 11 secondsRight? So that's what I was trying to explain to you. Imagine this wasn't an API key issue. Imagine this was a rate limiting issue or a connectivity issue.
3:55:213 hours, 55 minutes, 21 secondsIf this was a normal network request, the user would have to do it all over again, regardless if they already spent
3:55:273 hours, 55 minutes, 27 secondsthe tokens for these two. But thanks to ingest, we can still save this by
3:55:343 hours, 55 minutes, 34 secondsattempting to run anthropic again. But since this is an obvious issue, you can see it will just continue to fail in the
3:55:413 hours, 55 minutes, 41 secondssecond attempt and the third attempt will take even longer to try. You can see they purposely add a delay before
3:55:493 hours, 55 minutes, 49 secondstrying again. They don't want to get rate limited, right? Uh so yes, as expected, OpenAI is uh I mean Anthropic
3:55:563 hours, 55 minutes, 56 secondsis failing because we didn't add the API key here. So let's just click cancel for now. So it doesn't run. And yes, this
3:56:033 hours, 56 minutes, 3 secondsone is failed for you. It might uh stop after open AI, right? But as I said,
3:56:103 hours, 56 minutes, 10 secondsimplement OpenAI anthropic with me simply because when you finish this project, it will be your users who will
3:56:163 hours, 56 minutes, 16 secondsadd API keys, not you. But we do need our API keys to actually test if this is working of course or to just test if uh
3:56:263 hours, 56 minutes, 26 secondsit will fail. But the cool thing about using generate text from AI is you can see that it's the same everywhere. The
3:56:343 hours, 56 minutes, 34 secondsonly thing we modified is the model that we are using. So you can be pretty confident that if your free one is
3:56:413 hours, 56 minutes, 41 secondsworking, the Gemini one, all the other ones will work as well because this is the same API, right? I would expect this
3:56:493 hours, 56 minutes, 49 secondsto work. I wouldn't even test it. I'm 99% certain that the anthropic one works without even trying the API key. So
3:56:573 hours, 56 minutes, 57 secondsthat's what I tried to show you. That's what I was telling you about a uh background jobs. And I hope that this kind of explained it even further why
3:57:043 hours, 57 minutes, 4 secondsthey are so useful because they can really be longunning tasks and it's such a good experience for your users to
3:57:123 hours, 57 minutes, 12 secondsinstantly get a success message like hey okay we are taking care of that go ahead and relax do whatever you want and that
3:57:193 hours, 57 minutes, 19 secondswill be extremely useful uh if not fundamental to this project which is workflows right we are based on these
3:57:273 hours, 57 minutes, 27 secondsbackground jobs so I think that now we have a very good understanding of background jobs and we even uh tested
3:57:353 hours, 57 minutes, 35 secondsthem with another fundamental of this project which is AI right so we set up AI SDK and we used AI SDK with now let's
3:57:443 hours, 57 minutes, 44 secondsopen a pull request here so I'm going to click here create new branch 07 AI
3:57:513 hours, 57 minutes, 51 secondsproviders I'm going to go inside of source control here I will expand my screen a bit so
3:57:593 hours, 57 minutes, 59 secondsyou can see with I will close the graph here. Not too many unsaved files. I mean unstaged
3:58:063 hours, 58 minutes, 6 secondsfiles. So I will stage all of them. And I will add a commit 07 AI providers.
3:58:133 hours, 58 minutes, 13 secondsLet's click commit. And let's publish the branch.
3:58:173 hours, 58 minutes, 17 secondsAnd once the branch has been published, we can go ahead and simply start a pull request. And let's quickly review our changes and go to the next chapter.
3:58:303 hours, 58 minutes, 30 secondsAnd here we have the summary by code rabbit. We added a test AI button to trigger an AI job and it shows the AI job cued toast on success.
3:58:423 hours, 58 minutes, 42 secondsWe introduced a new public API mutation to cue an AI execution because we added base procedure there. And the back end
3:58:503 hours, 58 minutes, 50 secondsnow processes AI tasks using multiple providers and returns aggregated results. This is referring to the ingest
3:58:583 hours, 58 minutes, 58 secondsfunction. And of course, we added AI SDK dependencies to support this new AI job execution. As always, a file by file and
3:59:073 hours, 59 minutes, 7 secondsa cohort walk through here. But what I'm interested in is of course the sequence diagram. So let's just quickly take a
3:59:143 hours, 59 minutes, 14 secondslook even though it's fairly simple and we've uh already established this a few times. The user clicks on test AI. We
3:59:213 hours, 59 minutes, 21 secondscall the RRPC test AI. Mutate. We send the event called execute AI to ingest
3:59:303 hours, 59 minutes, 30 secondsand we immediately return back to the user success job has been cued. This is exactly what we were talking about I
3:59:393 hours, 59 minutes, 39 secondsbelieve in the previous chapter right we achieve this again this time with a real world example and not just uh some sleep
3:59:473 hours, 59 minutes, 47 secondssteps and then what happens in the execute function is just calling various SDKs three different external services
3:59:553 hours, 59 minutes, 55 secondsall of them could fail all of them could take a while and that's why it's perfect for a background job so all of them can
4:00:034 hours, 3 secondsthen run and then return back the results. But we're going to improve that even further by adding real time to it.
4:00:134 hours, 13 secondsSo then users will see exactly which node is executing, which one succeeded and which one has failed.
4:00:204 hours, 20 secondsAnd as per the code comments it here, it told us to use a fully qualified anthropic clots on it. I'm not
4:00:294 hours, 29 secondsfamiliar with the models here, so I don't know. It says Gemini Flash is okay and GPT4 is correct. But for this one
4:00:364 hours, 36 secondsthat we should use versioned ID, I don't know. Sure, we can change it to that. I'm not too familiar with uh the models.
4:00:434 hours, 43 secondsAnd in here, [snorts] of course, it noticed that we uh changed it to base procedure and that we should add authentication there. Uh so you can see
4:00:524 hours, 52 secondshow familiar it is with our protected procedure, right? It's really like a partner to check all of your code.
4:00:594 hours, 59 secondsObviously, we did this on purpose because we didn't really have a proper uh outflow setup, but yeah, uh we are going to remove the test AI route.
4:01:104 hours, 1 minute, 10 secondsAnyway, amazing job. Uh very good pull request here as always. Very useful review by Code Rabbit. Uh and once you
4:01:194 hours, 1 minute, 19 secondsmerge that, make sure that you go back here, select main, and simply synchronize your changes. This way you are up to date. And then inside of your
4:01:284 hours, 1 minute, 28 secondssource control here, just make sure to look at the graph and just confirm that you have number seven here and that you've merged it in here.
4:01:394 hours, 1 minute, 39 secondsThis way you know that you're up to date. Perfect. I believe that marks the end of this chapter. Let me just double
4:01:474 hours, 1 minute, 47 secondscheck. Yes, amazing, amazing job. And see you in the next one.
Chapter 9: 08 Error Tracking
4:01:534 hours, 1 minute, 53 secondsIn this chapter, we're going to focus on creating production grade error tracking within our project. In order to do that,
4:02:014 hours, 2 minutes, 1 secondlet's first try and demonstrate an error scenario within our app. I'm going to go inside of my underscore app folder where
4:02:104 hours, 2 minutes, 10 secondsI have a couple of procedures. My app router where I have the test AI route.
4:02:164 hours, 2 minutes, 16 secondsAnd inside of here, let's go ahead and do throw new TRPC error from TRPC
4:02:224 hours, 2 minutes, 22 secondsserver. Let's pass in the code bad request. And let's pass in a message which says something went wrong.
4:02:344 hours, 2 minutes, 34 secondsNow let's go ahead and let's do npm rundev. Or if we already have it, you can just restart your next server.
4:02:434 hours, 2 minutes, 43 secondsAnd now let's go ahead into localhost 3000.
4:02:484 hours, 2 minutes, 48 secondsSo now if you go ahead and click test AI, you don't even know that something went wrong unless you take a look in the
4:02:564 hours, 2 minutes, 56 secondsterminal. And in here you can see that something is happening.
4:03:024 hours, 3 minutes, 2 secondsA way that you can make the user aware that something went wrong is by going inside of page where you execute test AI
4:03:114 hours, 3 minutes, 11 secondsand add the on error here and do toast error something went wrong.
4:03:194 hours, 3 minutes, 19 secondsIf you try now you will get the message down here something went wrong.
4:03:264 hours, 3 minutes, 26 secondsThis is an extremely basic scenario and in here we are actually forcing an error. But errors like this are bound to
4:03:354 hours, 3 minutes, 35 secondshappen in every application. But even more likely in application that is so heavily dependent on user input because
4:03:444 hours, 3 minutes, 44 secondsas a developer you are very familiar with your application and you're very familiar with your code which means that
4:03:514 hours, 3 minutes, 51 secondserrors like this and bugs like this uh will not escape you. You will catch them and you will fix them. But will you fix
4:04:004 hours, 4 minutesall bugs that hundreds or thousands of your users will introduce and find out?
4:04:074 hours, 4 minutes, 7 secondsChances are you're not going to do that so easily. Now, there are ways you can add your own logging here. For example,
4:04:164 hours, 4 minutes, 16 secondsevery time you throw an error, you can go ahead and call some kind of logger and pass in the message here. And then
4:04:244 hours, 4 minutes, 24 secondsthat logger would store that somewhere so you can take a look. But you can see how tedious that becomes very quickly.
4:04:324 hours, 4 minutes, 32 secondsJust imagine having to do that for all of our background functions for all of our third party services.
4:04:404 hours, 4 minutes, 40 secondsVery soon it becomes unmaintainable.
4:04:444 hours, 4 minutes, 44 secondsFor that reason we're going to integrate Sentry production grade tracking which works almost magically. But besides
4:04:524 hours, 4 minutes, 52 secondsthat, we are also going to use Sentry to integrate something called session
4:04:594 hours, 4 minutes, 59 secondsreplays, which is basically a way to see exactly what your user was doing in an
4:05:064 hours, 5 minutes, 6 secondsanonymized way to see where they clicked on the UI that started the error.
4:05:124 hours, 5 minutes, 12 secondsBecause sometimes just seeing the error on your back end doesn't make it instantly clear why it happened. Even if
4:05:214 hours, 5 minutes, 21 secondsyou look at the input that was sent, it's just not clear. So when you combine that with a session replay, which is
4:05:294 hours, 5 minutes, 29 secondsable to recreate how the UI looked at the time of the error happening, gives you a whole another perspective. And
4:05:374 hours, 5 minutes, 37 secondsCentury is one of the rare error tracking tools that is able to do that.
4:05:434 hours, 5 minutes, 43 secondsBut besides that, we're also going to have something very interesting called AI monitoring. And with just a few
4:05:504 hours, 5 minutes, 50 secondsconfiguration steps, you will be able to track every single AI call within your application. Not only whether it
4:05:594 hours, 5 minutes, 59 secondssucceeds or fails, but also how long did it take and how much did it cost. And by
4:06:074 hours, 6 minutes, 7 secondshaving that information, you will be able to improve your app constantly by optimizing to cost less and last less.
4:06:164 hours, 6 minutes, 16 secondsLet's go ahead and do that. Using the link on the screen, you can visit sentry.io and you can create an account.
4:06:264 hours, 6 minutes, 26 secondsI've teamed up with Sentry and they are currently offering 3 months of Sentry team for free. So, use the link on the
4:06:344 hours, 6 minutes, 34 secondsscreen and create an account. And once you have done that, go ahead and sign in.
4:06:414 hours, 6 minutes, 41 secondsI've logged in and this is how it looks in an empty dashboard with no projects.
4:06:474 hours, 6 minutes, 47 secondsIf you have a project, that's perfectly fine. We're going to create a new one for this project. So, I'm going to click
4:06:544 hours, 6 minutes, 54 secondsright here on help and then I'm going to click on documentation.
4:06:584 hours, 6 minutes, 58 secondsAnd in here, I'm going to find an installation wizard for NextJS.
4:07:044 hours, 7 minutes, 4 secondsSo, let's go ahead and run this command right here.
4:07:094 hours, 7 minutes, 9 secondsAnd just for information purposes, I'm also going to show you the exact version of this uh installation. Let me go ahead
4:07:184 hours, 7 minutes, 18 secondsand paste this and just try doing version first this way. If you want to use the same
4:07:264 hours, 7 minutes, 26 secondsversion as me, you can do it. And now I'm going to run the actual command. So I recommend shutting your app down for this one and just running the command.
4:07:364 hours, 7 minutes, 36 secondsSo in here it tells us that we have uncommitted or unttracked files in your repo. Uh so it is basically warning us that sentry wizard is going to install
4:07:454 hours, 7 minutes, 45 secondssome files. So be careful you know if it overrides them. Uh we don't really care about this. We just added some errors and some toasters for showing that
4:07:544 hours, 7 minutes, 54 secondserrors. We can even unstage all of those. It really wouldn't matter. So it's completely fine. So I'm just going to select yes. Now it's asking us if we are self-hosting Sentry. That's right.
4:08:054 hours, 8 minutes, 5 secondsYou can self-host Sentry if you want to.
4:08:094 hours, 8 minutes, 9 secondsThat's another reason why I highly recommend using Sentry for error tracking. If you don't want it, you don't have to, but you can still
4:08:184 hours, 8 minutes, 18 secondsself-host it. So, let's go ahead and select Sentry SAS because we just created an account on their website. Do
4:08:264 hours, 8 minutes, 26 secondsyou already have an entry account? Yes, we can now select yes. And this will now open uh the page here. So select your organization and let's go ahead and
4:08:344 hours, 8 minutes, 34 secondscreate a new project. I'm going to call this NodeBase. And let's go ahead and click continue.
4:08:414 hours, 8 minutes, 41 secondsAnd now the wizard will connect. So we can return to the terminal here. And here it is installing Sentry Nex.js with npm our package manager.
4:08:524 hours, 8 minutes, 52 secondsFor this prompt, do you want to route Sentry requests in the browser through Nex.js server to avoid ad lockers. You can see what will happen if you select
4:09:004 hours, 9 minutesyes. It can potentially increase the server load and hosting bill. So depending on what you want, you can select no, but then browser errors and
4:09:094 hours, 9 minutes, 9 secondsevents might be blocked by ad blockers before being sent to Sentry. So you kind of have to decide for yourself. For
4:09:174 hours, 9 minutes, 17 secondstesting purposes, for demo, it's completely fine to select yes. We are just doing this locally. So uh let's see
4:09:244 hours, 9 minutes, 24 secondsSentry in in action as what it can do in full, right? Do you want to enable tracing? Yes. Do you want to enable
4:09:344 hours, 9 minutes, 34 secondssession replay to get a video like reproduction of errors during a user session? This is extremely useful and one of the most impressive things I've seen. Make sure to select yes for this.
4:09:454 hours, 9 minutes, 45 secondsDo you want to enable logs? Again, this is also very very useful. You will be able to follow your application logs
4:09:534 hours, 9 minutes, 53 secondsfrom start to finish. So select yes and select yes for creating an example page so we can test if the sentry setup was working.
4:10:034 hours, 10 minutes, 3 secondsAnd in here it gives us a warning that it we are using Turboac.
4:10:084 hours, 10 minutes, 8 secondsUh it is warning us that Sentry is only compatible with Turopac on Nex.js version 15.3.0
4:10:174 hours, 10 minutes, 17 secondsor later. So we are good. If you're using Turopac with an older Nex.js JS version just remove d-turbo or d- turboback from your development command.
4:10:304 hours, 10 minutes, 30 secondsSo we don't really have to do anything here.
4:10:344 hours, 10 minutes, 34 secondsAre you using a CI/CD tool? Uh we can select yes for this.
4:10:404 hours, 10 minutes, 40 secondsAnd now let's go ahead and copy the sentry al token and let's go inside of environment
4:10:484 hours, 10 minutes, 48 secondsand let's add sentry and just paste it here. I like to put it inside of quotes because of syntax highlighting.
4:10:574 hours, 10 minutes, 57 secondsAnd let's say yes, continue.
4:11:014 hours, 11 minutes, 1 secondOptionally add a project scope mcp server. So I'm not working with NCPs. So for me, this can be no. And as you can
4:11:094 hours, 11 minutes, 9 secondssee, you can add it later anytime. Here it is. Successfully installed sentry next.js SDK. So we can now npm rundev.
4:11:174 hours, 11 minutes, 17 secondsAnd we can go to forward/entry example page. Don't forget to remove turbo if you are on older Nex.js version. Not the case for us. So let's do npm rundev all.
4:11:294 hours, 11 minutes, 29 secondsSo we start both inest and next.js.
4:11:334 hours, 11 minutes, 33 secondsLet's go to localhost 3000 uh and forward slash centry example page.
4:11:414 hours, 11 minutes, 41 secondsAnd now in here let's go ahead and throw a sample error. And if you get a message error sent to Sentry, it means everything is good.
4:11:504 hours, 11 minutes, 50 secondsSo let me go ahead and refresh here in my sentry. You can see how now I got
4:11:574 hours, 11 minutes, 57 secondsboth the front end error and the example API error. So that's how Sentry works.
4:12:054 hours, 12 minutes, 5 secondsThe error that just happened wasn't explicitly logged. Sentry will simply
4:12:114 hours, 12 minutes, 11 secondscatch every single log inside uh sentry will catch every single error within our
4:12:184 hours, 12 minutes, 18 secondsapp. That's exactly what we want. We don't want to concern ourselves with whether we forgot to track an error.
4:12:274 hours, 12 minutes, 27 secondsSentry will monitor every single error that's happening within our app. So if you scroll down here, make sure you select the front end error.
4:12:394 hours, 12 minutes, 39 secondsYou can actually see the session replay from this anonymous user. And you can see how it managed to recreate what was
4:12:464 hours, 12 minutes, 46 secondshappening in the UI at the time. And you can see the user clicking on the button.
4:12:504 hours, 12 minutes, 50 secondsYou can see the success messages. You can see the arrow moving. So this was all done using metadata and telemetry that's available to recreate the scene.
4:13:004 hours, 13 minutesAnd this will help you a lot in production. When errors keep happening and you don't know why, just go to the front end and see the session replay.
4:13:104 hours, 13 minutes, 10 secondsAnd this will give you a clearer picture of why it happened and you can actually follow the breadcrumbs about how this
4:13:174 hours, 13 minutes, 17 secondshappened. Right? So you can see that right here this sentry example error is being thrown. This error is raised on the front end of the example page. But
4:13:264 hours, 13 minutes, 26 secondsyou can see what actually happened right we fetched API sentry example API and in
4:13:334 hours, 13 minutes, 33 secondshere we got 500 error. So that's why the exception was thrown. So the more you explore sentry the more you're going to
4:13:424 hours, 13 minutes, 42 secondsunderstand how useful this is. These are the logs that I have been talking about.
4:13:484 hours, 13 minutes, 48 secondsSo you can see exactly everything that was happening. We navigated to century example page. And then in here we did a
4:13:574 hours, 13 minutes, 57 secondsUI click and you can see exactly which button we clicked exactly what was the HTML
4:14:064 hours, 14 minutes, 6 secondselement within the button which was a span. And then you can see exactly what that button triggered, what we received
4:14:134 hours, 14 minutes, 13 secondsfrom that button, and finally the exception that was thrown on the front end. And using all of that telemetry, we are able to achieve something like this.
4:14:244 hours, 14 minutes, 24 secondsThis will help you greatly within your projects. Uh, and if you use the link that I showed on the screen, you can
4:14:314 hours, 14 minutes, 31 secondsactually get Sentry theme 3 months for free. But even after the free trial, if you don't want if you don't have the
4:14:394 hours, 14 minutes, 39 secondsbudget, Sentry is still free and has an extremely generous free tier. I highly suggest just keeping it here in case you
4:14:474 hours, 14 minutes, 47 secondsknow some errors happen. And let's go ahead and check out things even further here. So we also have sentry example API
4:14:564 hours, 14 minutes, 56 secondserror here. In here we can see some other things. In here we can see uh the backend version, right? So you can see
4:15:044 hours, 15 minutes, 4 secondshow different this is now in here we are tracking uh inner internal files of Nex.js and where it happened and how it
4:15:134 hours, 15 minutes, 13 secondshappened right and again you can follow the breadcrumbs to understand why this happened. You can see how it has the
4:15:204 hours, 15 minutes, 20 secondstrace preview uh specifically created for Nex.js so you understand exactly every single
4:15:284 hours, 15 minutes, 28 secondsthing that is happening here. Page load sentry example page then HTTP server.
4:15:354 hours, 15 minutes, 35 secondsYou can see in how much detail you can track this errors. This is what production grade error tracking looks
4:15:434 hours, 15 minutes, 43 secondslike. But we are barely scratching the surface of what Sentry can do. So while
4:15:514 hours, 15 minutes, 51 secondsthis is super cool, I can talk about this for days probably. So I'm going to stop myself here. And now what I want to
4:15:594 hours, 15 minutes, 59 secondsdo is I want to go ahead and just show you a few more things besides the issues here which are basically your unresolved
4:16:084 hours, 16 minutes, 8 secondsissues. And yes, from here you can actually uh assign your members to these issues. You can mark them as resolved.
4:16:174 hours, 16 minutes, 17 secondsUh you can resolve them in a commit. Uh you can go ahead and connect this with GitHub and create a pull request, a
4:16:264 hours, 16 minutes, 26 secondsGitHub issue. There is so many things you can do here. There are also different views here under explore. You
4:16:334 hours, 16 minutes, 33 secondscan see individual traces or you can see the logs in here.
4:16:394 hours, 16 minutes, 39 secondsSo let's go ahead now and let's focus on one specific thing which is insights.
4:16:464 hours, 16 minutes, 46 secondsAnd in here you can see AI. So let's go ahead and configure AI agents because
4:16:534 hours, 16 minutes, 53 secondsthis is another super cool and useful thing that we can do.
4:16:594 hours, 16 minutes, 59 secondsSo we already installed Sentry SDK and we are using Versel AI SDK. So this
4:17:084 hours, 17 minutes, 8 secondsis good. Sentry next.js. Let's just double check. I think that when we run the wizard we I'm pretty sure we got all
4:17:154 hours, 17 minutes, 15 secondsthe packages. So inside of here, let me just check.
4:17:204 hours, 17 minutes, 20 secondsWhoops. Sentry next.js. Here it is. All right. No need to do anything here.
4:17:264 hours, 17 minutes, 26 secondsInstead, let's just focus on next. And that is configuration. So add Versel AI
4:17:334 hours, 17 minutes, 33 secondsintegration to your sentry.init call. So I'm going to copy the integration block right here.
4:17:424 hours, 17 minutes, 42 secondsAnd then I'm going to find my server config as per their documentation. So we have the edge config and we have the
4:17:504 hours, 17 minutes, 50 secondsserver config. So after the SN here I'm going to add integrations. Add the
4:17:574 hours, 17 minutes, 57 secondsVerscell AI SDK integration to sentry.server.config.ds.
4:18:024 hours, 18 minutes, 2 secondsIt's added right here. Record inputs set to true and record outputs set to true as well.
4:18:114 hours, 18 minutes, 11 secondsAnd let's just quickly verify. So tracing must be enabled for monitoring to work. tracing sample rate is 1.0 and
4:18:194 hours, 18 minutes, 19 secondslet's just see whether we have that uh traces sample rate is set to one. I believe that's the same as 1.0.
4:18:284 hours, 18 minutes, 28 secondsUh great. And we can also do send default pi simply because they also have it here. So I will set it to true.
4:18:374 hours, 18 minutes, 37 secondsAnd now in order for this to work, we have to find where we use generate text and we have to add the experimental
4:18:464 hours, 18 minutes, 46 secondstelemetry and execute it. So let's go inside of our functions.ts inside of ingest where we use the
4:18:554 hours, 18 minutes, 55 secondsgenerate text. So after the prompt here, let's also add experimental telemetry.
4:19:024 hours, 19 minutes, 2 secondsNow depending on when you're watching this might have become telemetry because obviously since it has the experimental
4:19:094 hours, 19 minutes, 9 secondsprefix uh it's bound to happen at some point that it will just be called telemetry. So if experimental is not
4:19:164 hours, 19 minutes, 16 secondsworking for you uh it's obvious that the API has changed and I'm pretty sure the name will stay telemetry. So let's go
4:19:234 hours, 19 minutes, 23 secondsahead and add this to all the places where we are using generated text. So these three places right here. And let's click save.
4:19:334 hours, 19 minutes, 33 secondsAnd once we've done that, let's go ahead and click on next. And now this is waiting for the project's first agent
4:19:404 hours, 19 minutes, 40 secondsevents. So I'm going to go to localhost 3000 and refresh here. And I'm going to click test AI.
4:19:474 hours, 19 minutes, 47 secondsUh and now I'm going to just watch here and see if it will detect it. So as far
4:19:544 hours, 19 minutes, 54 secondsas I remember uh we first wait for a few seconds and then we uh fire the events
4:20:044 hours, 20 minutes, 4 secondsand after a few seconds go ahead and refresh if it doesn't refresh for you and you should be able to see this
4:20:114 hours, 20 minutes, 11 secondsscreen and in here you can see traces, models and even tools. Right now we are not using any tools. So we just have to
4:20:204 hours, 20 minutes, 20 secondsfocus on these two. And you can already see the number of LLM calls for GPT4 for Gemini 2.5 flesh and for cloth set 45.
4:20:314 hours, 20 minutes, 31 secondsYou can see exact amount of tokens that we've used. You can see GPT4 is using significantly more tokens uh than
4:20:394 hours, 20 minutes, 39 secondsGemini. So perhaps if you want to make sure your app is the cheapest one amongst competitors, you can maybe
4:20:464 hours, 20 minutes, 46 secondsdefault your users to use Gemini 2.5 unless they select otherwise. This way they will have the cheapest amount of
4:20:544 hours, 20 minutes, 54 secondstoken spend. So this is what I was telling you about how you can learn more about your application if you add Sentry. You can make smarter decisions
4:21:034 hours, 21 minutes, 3 secondsthis way. Inside of the models tab, you can see this in another uh graphical example. You can also see errors which
4:21:114 hours, 21 minutes, 11 secondsare happening. For example, my claude keeps getting errors, right? Why is it getting errors? Well, it's getting errors because I have no API key inside.
4:21:224 hours, 21 minutes, 22 secondsAnd what they've done is they've reused their amazing traces and everything that you usually uh use for normal errors and
4:21:324 hours, 21 minutes, 32 secondsthey have added it to Versel AI SDK. So now we can see exactly what went wrong
4:21:404 hours, 21 minutes, 40 secondsin this type of environment as well and this is extremely useful because AI models are very hard to keep track of
4:21:494 hours, 21 minutes, 49 secondsright uh and now you have them in one place. You can filter by so many things by your projects, by production, by
4:21:584 hours, 21 minutes, 58 secondsdevelopment in the last hour, last 24 hours and you can combine it with everything that we have learned in the
4:22:054 hours, 22 minutes, 5 secondsissues tab. So you can follow the trace from the front end all the way to the back end. Basically, Sentry is an
4:22:144 hours, 22 minutes, 14 secondsabsolutely crucial part of this project, but you will only see its power when you go to production. And hopefully all of
4:22:214 hours, 22 minutes, 21 secondsyou will go to production here. So you can find the AI again here in AI uh new.
4:22:284 hours, 22 minutes, 28 secondsUh you can go ahead and play with the models. You can play with the tools here. Uh and the more you use your app,
4:22:364 hours, 22 minutes, 36 secondsthe more errors you're going to get here, the more things will happen. And this will be another way of fixing what you missed. So we will definitely come
4:22:464 hours, 22 minutes, 46 secondsback to Sentry at some point. And I just want to see whether we have logs here. So let's see. We already installed this.
4:22:534 hours, 22 minutes, 53 secondsLet's go ahead and click next. Uh so now we also need to add Sentry console logging integration here. And what will
4:23:034 hours, 23 minutes, 3 secondshappen now is remember when I told you that uh let me just see. So we are adding this
4:23:124 hours, 23 minutes, 12 secondsit looks like if they don't define where I think we need to add it to both. So let's add it to server config here. So
4:23:204 hours, 23 minutes, 20 secondsintegrations after sentry versel integration also add sentry console logging integrations and track log warn
4:23:274 hours, 23 minutes, 27 secondsand error here. And let's do the same in sentry.edge.config here. So I'm just going to add
4:23:354 hours, 23 minutes, 35 secondsintegrations here and add it like so.
4:23:414 hours, 23 minutes, 41 secondsSo now basically in your functions here if you just add some logs you are also going to track things. So if you add
4:23:504 hours, 23 minutes, 50 secondsconsole log or maybe console warn uh something is missing or console.
4:23:584 hours, 23 minutes, 58 secondsThis is an error I want to track. You no longer have to develop your own logger abstraction and send that somewhere
4:24:074 hours, 24 minutes, 7 secondsbecause after you've added this integration, Sentry will now do it for you. So, let's go ahead and click next here.
4:24:164 hours, 24 minutes, 16 secondsUh, and let's see. Okay, perhaps we have to use this logger. My apologies. Uh, perhaps I understood it wrong, but I'm
4:24:234 hours, 24 minutes, 23 secondspretty sure both are true. I think we're just using this to forcefully test it. I think both will work. So I'm going to
4:24:304 hours, 24 minutes, 30 secondsdirectly try from their logger. Either way you you don't have to create your own, right? So both will now work. Let's
4:24:384 hours, 24 minutes, 38 secondssee. User triggered the test log and let's go ahead inside of our app here.
4:24:454 hours, 24 minutes, 45 secondsLet's refresh and let's click on test AI button.
4:24:514 hours, 24 minutes, 51 secondsAnd now in here, let's go ahead and wait a few seconds and then let's try and refresh to see uh if this will now work.
4:25:044 hours, 25 minutes, 4 secondsSo it takes a while, but after a few refreshes, you will start to see the logs here as well. And from now on,
4:25:124 hours, 25 minutes, 12 secondswhenever you want to log something and make sure that it is recorded, you can use the Sentry integration to do so as
4:25:204 hours, 25 minutes, 20 secondswell. So, as I said, we will definitely be visiting this dashboard throughout the tutorial so we can keep track of our
4:25:274 hours, 25 minutes, 27 secondstokens used, our LLM calls, and all the errors that we might have missed that are happening in the background. Because
4:25:354 hours, 25 minutes, 35 secondsyou can see I don't always have this open, but this could be full of errors as far as I know. That's why we're going to make sure Century is keeping track of
4:25:434 hours, 25 minutes, 43 secondsthat and we no longer have to depend on ourselves on thinking about every single possible errors that both us and our
4:25:514 hours, 25 minutes, 51 secondsusers can do. So, I hope I kind of showed you the power of Sentry and why I like it so much. Uh, and let's go ahead
4:25:594 hours, 25 minutes, 59 secondsand see if that's all we planned for this chapter. I believe it is. We've set up Sentry. We've shown session replays,
4:26:074 hours, 26 minutes, 7 secondslogs, and AI monitoring. and we will continue to demonstrate throughout the rest of the project. And now let's just
4:26:144 hours, 26 minutes, 14 secondspush this to GitHub. So since this was mostly just installation vizard, we don't really have to review this pull
4:26:204 hours, 26 minutes, 20 secondsrequest. So let's go ahead and just create a new branch 08 error tracking
4:26:284 hours, 26 minutes, 28 secondslike so. Let's go ahead here in the source control and let's go ahead and
4:26:344 hours, 26 minutes, 34 secondsstage all changes and let's do 08 error tracking
4:26:414 hours, 26 minutes, 41 secondsand let's hit commit and let's hit publish branch. I also [snorts] just want to tell you that if for whatever reason uh this chapter was unsuccessful
4:26:504 hours, 26 minutes, 50 secondsfor you in a sense that something is not working do not worry. So all of this is just a improvement. It is not required
4:26:574 hours, 26 minutes, 57 secondsin a sense that you will not be able to finish the project without this. I just think it's an extremely useful thing to have especially for a production grade
4:27:064 hours, 27 minutes, 6 secondsapplication. So here I am opening the pull request and as I said this was mostly just an installation vizard and
4:27:134 hours, 27 minutes, 13 secondssome testing uh scenes. So we can immediately merge this pull request. We are just going to keep it as a separate branch, right? But we don't really have
4:27:224 hours, 27 minutes, 22 secondsto go through the review. And once you have merged this, you can go back inside of your project here and make sure that you go back inside of your main branch.
4:27:324 hours, 27 minutes, 32 secondsAnd as always, make sure that you synchronize changes so everything is pulled from the branch that we just merged. And I believe that marks the end of this chapter. Amazing, amazing job.
4:27:444 hours, 27 minutes, 44 secondsYou can also go inside of your source control here graph to confirm that you have detached and merged as always. And see you in the next chapter.
Chapter 10: 09 Sidebar Layout
4:27:544 hours, 27 minutes, 54 secondsIn this chapter, we're going to create the layout for our dashboard part of the application. So, let's go ahead and start by improving our file structure.
4:28:054 hours, 28 minutes, 5 secondsAnd then let's add the layout files which are going to render the sidebar which we are going to use as our main navigation towards many various routes.
4:28:164 hours, 28 minutes, 16 secondsSo, let's go ahead first and see if our apps are running. So just a quick reminder I am using npm rundev all which
4:28:254 hours, 28 minutes, 25 secondsuses mroxs and the config file to simultaneously run inest and next.
4:28:324 hours, 28 minutes, 32 secondsIf for whatever reason that's not working for you, you can always individually run npm rundev and npx uh
4:28:404 hours, 28 minutes, 40 secondsinest cli latest and dev. That's the command. Even though
4:28:494 hours, 28 minutes, 49 secondsfor this exact chapter, we only actually need this. So I will do this simply because I prefer it this way. And let's go ahead and go to localhost.
4:29:024 hours, 29 minutes, 2 secondsAnd now let's go ahead and improve the structure of our files here.
4:29:084 hours, 29 minutes, 8 secondsUh, and sometimes you might see changes like this happen. It's my ampro.
4:29:174 hours, 29 minutes, 17 secondsNow, let's go ahead and go inside of the source app. And in here, let's modify this a bit. Besides AL, I'm also going
4:29:264 hours, 29 minutes, 26 secondsto have dashboard like this. Another route group. So, this will not be a part of the URL. It's just going to be used for structure.
4:29:344 hours, 29 minutes, 34 secondsUh, and now inside of here, let's create another folder. One called editor and
4:29:404 hours, 29 minutes, 40 secondsthe other rest as in the rest of the routes. We can think of a better organizational name later. The reason
4:29:494 hours, 29 minutes, 49 secondsI'm separating editor is because it's going to have a very specific layout. So that's why I'm having a separate organizational folder for it. And I'm
4:29:584 hours, 29 minutes, 58 secondsgoing to keep well the rest of the routes which are exactly the same and share the same layout in the rest
4:30:044 hours, 30 minutes, 4 secondsfolder. So let's go ahead and start by adding some things here. So let's add
4:30:114 hours, 30 minutes, 11 secondsworkflows which will be one of our entities. And let's add page.tsx.
4:30:184 hours, 30 minutes, 18 secondsLet's do const page return paragraph workflow page.
4:30:264 hours, 30 minutes, 26 secondsAnd let's do export default page. And we can actually keep this simpler.
4:30:354 hours, 30 minutes, 35 secondsWorkflows. As simple as that.
4:30:394 hours, 30 minutes, 39 secondsAnd now that we have that ready, let's go ahead and let's remove page.tsx entirely.
4:30:484 hours, 30 minutes, 48 secondsSo remove it so that this breaks.
4:30:514 hours, 30 minutes, 51 secondsAnd when you did do that, you can also remove logout.tsx. We are not going to need that either.
4:31:004 hours, 31 minutesSo inside of your app folder, you should now have global error which was added by sentry and you should have layout file.
4:31:084 hours, 31 minutes, 8 secondsLet's focus on the dashboard for now.
4:31:114 hours, 31 minutes, 11 secondsInside of rest, we now have workflows and page.tsx and that is actually going to be our
4:31:204 hours, 31 minutes, 20 secondsmain route. So in order to make that the default route, let's head to next.config.ts.
4:31:284 hours, 31 minutes, 28 secondsAnd inside of next config, let's go ahead and do an asynchronous redirects function. And in here, let's return an array.
4:31:404 hours, 31 minutes, 40 secondsInside of this array, I'm going to open an object with a source of forward slash as in the root page and change the
4:31:494 hours, 31 minutes, 49 secondsdestination to be workflows and set the permanent to false. The reason I'm telling you to
4:31:564 hours, 31 minutes, 56 secondsset this to false is if you have any other Nex.js projects on your machine,
4:32:034 hours, 32 minutes, 3 secondssetting permanent to true will make them redirect the root page to workflows as well. So for that reason, it's better to
4:32:114 hours, 32 minutes, 11 secondsput this to false. It will work exactly the same and it will help you in development mode.
4:32:174 hours, 32 minutes, 17 secondsAfter you do that, go ahead and restart NextJS. So use the letter R to restart
4:32:254 hours, 32 minutes, 25 secondsit and refresh the localhost 3000. And you can see how that is immediately redirecting me to forward/workflows.
4:32:364 hours, 32 minutes, 36 secondsSo I am now immediately redirected to here in case you can't see
4:32:434 hours, 32 minutes, 43 secondsright. So if I try and delete the workflows route again I'm redirected
4:32:504 hours, 32 minutes, 50 secondsback here. That is exactly the behavior we intended to have. Now let's continue developing here. Now inside of my app
4:33:004 hours, 33 minutesfolder dashboard rest I'm going to copy workflows and I'm going to make this credentials.
4:33:114 hours, 33 minutes, 11 secondsYou can select yes if it asks you to update the imports for credentials. It is basically going to modify the next
4:33:184 hours, 33 minutes, 18 secondscache file. It looks kind of buggy, but you don't have to worry too much about this file. You can see it's unsaved.
4:33:264 hours, 33 minutes, 26 secondsI can just click save and close it. And I can just collapse the next folder. It really doesn't matter because it will be rebuilt each time we we restart the server.
4:33:374 hours, 33 minutes, 37 secondsSo inside of credentials page, change this to credentials.
4:33:444 hours, 33 minutes, 44 secondsAnd now let's copy that and paste it here. and change this to executions.
4:33:514 hours, 33 minutes, 51 secondsAnd same thing for imports update here.
4:33:554 hours, 33 minutes, 55 secondsIt's a little bit buggy. You can just go inside of the unsaved file, save it, close it, and collapse the next folder so you don't accidentally develop
4:34:044 hours, 34 minutes, 4 secondsanything in there. Go inside of the executions and change the paragraph to executions.
4:34:114 hours, 34 minutes, 11 secondsSo now you should have three routes, credentials, executions, and workflows with workflows being your default route.
4:34:224 hours, 34 minutes, 22 secondsSo now that we have that, let's create individual routes here. So for example, inside of here, let's add credential ID
4:34:324 hours, 34 minutes, 32 secondslike so. And inside page tsx I'm going to copy the existing page content paste it here. And this will be credential ID.
4:34:444 hours, 34 minutes, 44 secondsAnd in order to make this fun let's create an interface page props params
4:34:534 hours, 34 minutes, 53 secondspromise and inside of here add credential ID to be a type of string.
4:35:024 hours, 35 minutes, 2 secondsNow in here you can assign the page props. Whoops. You can extract the params,
4:35:124 hours, 35 minutes, 12 secondsmake this an asynchronous method and simply the structure credential ID
4:35:194 hours, 35 minutes, 19 secondsfrom await params and then go ahead and render the credential ID.
4:35:274 hours, 35 minutes, 27 secondsSo be careful about two things. First, make sure you develop this folder inside of the credentials folder. Second, make
4:35:364 hours, 35 minutes, 36 secondssure that you've added the square brackets. This makes it dynamic. And third, make sure you used proper
4:35:434 hours, 35 minutes, 43 secondscapitalization. Credential is spelled in lowerase and ID is spelled with a capital I. So, credential ID like this.
4:35:564 hours, 35 minutes, 56 secondsIf you named this credential ID 2 for example, then inside of the page props, this will
4:36:054 hours, 36 minutes, 5 secondsno longer work. It has to be credential ID here as well. That's why I'm telling you that capitalization is important.
4:36:144 hours, 36 minutes, 14 secondsSo, make sure that you have named this credential ID with a capital letter I. It's a
4:36:214 hours, 36 minutes, 21 secondslittle bit problematic here because because of this font, they look very similar. And again, this validator is showing up in the types. You can just
4:36:304 hours, 36 minutes, 30 secondssave it, override it. It really doesn't matter. You can even delete the entire next folder and just restart the server
4:36:374 hours, 36 minutes, 37 secondsand it will fix itself. Don't worry about it. So, how do you test if you did this correctly? Well, go ahead and go to
4:36:454 hours, 36 minutes, 45 secondshttp localhost 3000 credentials two.
4:36:514 hours, 36 minutes, 51 secondsSo, I'm going to copy this route and I'm going to change the URL to that. And there we go. Credential ID is one, two, three.
4:37:014 hours, 37 minutes, 1 secondAnd if you're wondering why does this need to be a promise, uh it's simply the way Nex.js params API
4:37:104 hours, 37 minutes, 10 secondsworks. So if you remove asynchronous and just did this uh and if you didn't type it as a promise I think it will still
4:37:194 hours, 37 minutes, 19 secondswork. Yeah you can see it still works but you also get an error this route
4:37:274 hours, 37 minutes, 27 secondsused paramscredential ID params should be awaited before using the properties learn more right here dynamic APIs.
4:37:384 hours, 37 minutes, 38 secondsSo let me paste this here. And here it is. So dynamic APIs are asynchronous.
4:37:464 hours, 37 minutes, 46 secondsYou can see that if you do this, you get that warning. So because of that, you have to make it asynchronous and you have to await the params. Exactly what
4:37:554 hours, 37 minutes, 55 secondswe were doing before. So I'm going to revert it to that. Perfect. So that's how we're going to handle individual
4:38:034 hours, 38 minutes, 3 secondscredential. Let's copy this route and let's paste it inside of executions. And let's change it from credential ID to
4:38:104 hours, 38 minutes, 10 secondsexecution ID.
4:38:154 hours, 38 minutes, 15 secondsAgain, you you can update the import, save the validator, close it, and collapse the next folder. It's a little bit annoying. Let's go inside of
4:38:234 hours, 38 minutes, 23 secondsexecution ID page and change this from credential ID to execution ID and change this to be execution ID.
4:38:344 hours, 38 minutes, 34 secondsSo now the same thing http localhost 3000 executions 1 2 3.
4:38:424 hours, 38 minutes, 42 secondsSo I'm going to change the URL to that now. Paste it. And here we have it.
4:38:474 hours, 38 minutes, 47 secondsExecution ID. So, if you accidentally misspell this, you will not be able to see your ID. And
4:38:554 hours, 38 minutes, 55 secondsthat's how you know that you named something incorrectly. It could be a typo in here, or it could be a typo in here, or maybe it could be the invalid
4:39:044 hours, 39 minutes, 4 secondsstructure. And for the workflow ID, we're going to do it a little bit differently. So that's why I kept all of
4:39:124 hours, 39 minutes, 12 secondsthis in the rest folder because they all share the same layout and all of this is
4:39:194 hours, 39 minutes, 19 secondsfine. But workflows will only be rendered inside of rest here. But very specific workflow ID will be rendered in
4:39:274 hours, 39 minutes, 27 secondsthe editor route group. Yes, you can do that. You can create workflows as a folder again here. But you cannot create
4:39:354 hours, 39 minutes, 35 secondsa page.tsx inside of here again. That would be a conflict. But what you can do is just
4:39:424 hours, 39 minutes, 42 secondscreate its child route workflow ID like this. Now both routes will work.
4:39:504 hours, 39 minutes, 50 secondsWorkflows will be using the rest organizational folder. And if we add a layout file here later, which we will do, it will share the rest layout.
4:40:004 hours, 40 minutesWhereas the workflow ID will be using the editor layout. That's why we are doing that separation.
4:40:084 hours, 40 minutes, 8 secondsInside of workflow ID, let's create page.tsx.
4:40:124 hours, 40 minutes, 12 secondsAnd let's copy it from one of the existing ID pages. And let me just remove this. We no longer need it. Copy
4:40:194 hours, 40 minutes, 19 secondsit. Paste it in the new workflow ID. And change this three to be workflow ID. And change this to be workflow ID.
4:40:294 hours, 40 minutes, 29 secondsOnce you've saved that file, you can very easily just go to the root of your local host because you will get redirected to workflows. and then simply
4:40:374 hours, 40 minutes, 37 secondsadd forward slash123 and you will see workflow ID123 is working. So this is what you should go
4:40:464 hours, 40 minutes, 46 secondsto uh HTTP. Ignore the fact that I copied HTTPS. It's the browser's mistake. It's HTTP.
4:40:564 hours, 40 minutes, 56 secondsPerfect. So now we have improved our file structure. And now that we have that, we are ready to actually build the proper layout for this.
4:41:074 hours, 41 minutes, 7 secondsSo we're going to go inside of dashboard here and create a new file layout. DSX.
4:41:154 hours, 41 minutes, 15 secondsThis layout will be shared across both the editor and the rest. So let's go inside of layout to fix this error.
4:41:224 hours, 41 minutes, 22 secondsconst layout and let's return here sidebar provider from components UI sidebar
4:41:314 hours, 41 minutes, 31 secondswhich we added when we initialized chat UI.
4:41:354 hours, 41 minutes, 35 secondsSo you should have the sidebar provider inside of your components UI sidebar. It uses the use is mobile.
4:41:444 hours, 41 minutes, 44 secondsThat's how you can recognize it. I didn't just randomly say that fact. Uh, and now let's just quickly give the
4:41:514 hours, 41 minutes, 51 secondsprops here. Children react. React node children.
4:41:594 hours, 41 minutes, 59 secondsAnd in here, let's add sidebar inset from the same folder. So, sidebar inset and
4:42:084 hours, 42 minutes, 8 secondsrender the children inside. And give this a class name background accent with a 20% opacity.
4:42:174 hours, 42 minutes, 17 secondsAnd now let's go ahead and let's add app sidebar here which is a self-closing tag. And we don't yet have it. We have to develop it.
4:42:274 hours, 42 minutes, 27 secondsSo I'm going to close everything. Go inside of source components and create app-side.tsx.
4:42:344 hours, 42 minutes, 34 secondsI'm not going to create it inside of the UI folder. I like to reserve the UI folder for chat components. My own are
4:42:424 hours, 42 minutes, 42 secondsgoing to go here in the components folder. So inside of here, let's mark it as use client because it will often be rendered in server components.
4:42:524 hours, 42 minutes, 52 secondsSo from here, let's go ahead and import uh all the icons which we are going to need. Maybe we are not going to use all of them immediately, but let's just import all of these from Lucid React.
4:43:054 hours, 43 minutes, 5 secondsLet's import image from next image.
4:43:114 hours, 43 minutes, 11 secondsLet's import link from next link.
4:43:164 hours, 43 minutes, 16 secondsLet's import use path name and use router from next navigation.
4:43:234 hours, 43 minutes, 23 secondsAnd now let's import everything we need from the component from the sidebar component. The sidebar itself content
4:43:314 hours, 43 minutes, 31 secondsfooter group content header menu button and menu item.
4:43:394 hours, 43 minutes, 39 secondsPerfect. And now let's go ahead and let's define the menu items here. The menu items is going to be an array of
4:43:464 hours, 43 minutes, 46 secondsobjects. Each object will be a definition of a route. For example, we're going to have workflows and the
4:43:544 hours, 43 minutes, 54 secondsitems are going to be an array of routes.
4:44:004 hours, 44 minutesSo the first one will be workflows.
4:44:054 hours, 44 minutes, 5 secondsicon will be folder open and the URL will be workflows
4:44:134 hours, 44 minutes, 13 secondsand I just want to change something since all of them are using the icon version I want to use the icon version for this as well you can do both in
4:44:224 hours, 44 minutes, 22 secondslucid react so for each credit card there is a credit card icon so you can see if I remove this I don't get an
4:44:294 hours, 44 minutes, 29 secondserror because both exist as exports but I really prefer having the icon at the Because if you import link, you can see
4:44:384 hours, 44 minutes, 38 secondsit's a duplicate identifier. But if you have a practice of importing things as link icon, it doesn't happen. So that's
4:44:474 hours, 44 minutes, 47 secondswhy I prefer being consistent here. So I'm going to change this to this.
4:44:534 hours, 44 minutes, 53 secondsAnd let's stop here so that we can actually develop the app sidebar and see the results. Export con app sidebar like this.
4:45:054 hours, 45 minutes, 5 secondsLet's go ahead and return sidebar.
4:45:094 hours, 45 minutes, 9 secondsCollapsible is going to be a type of icon. Let's add sidebar content.
4:45:184 hours, 45 minutes, 18 secondsAnd inside of here, menu items do map.
4:45:224 hours, 45 minutes, 22 secondsGet an individual group. And for each group, let's go ahead and let's return a sidebar group element. Give the key a group.title.
4:45:344 hours, 45 minutes, 34 secondsAnd inside of here, let's add sidebar group content.
4:45:404 hours, 45 minutes, 40 secondsInside group dot items do map the individual item sidebar menu item
4:45:504 hours, 45 minutes, 50 secondswith a key of item.title.
4:45:564 hours, 45 minutes, 56 secondsInside of here, use the sidebar menu button to finally render the element.
4:46:014 hours, 46 minutes, 1 secondThe sidebar menu button will have a couple of attributes. For example, tool pip item.title
4:46:104 hours, 46 minutes, 10 secondsis active, which for now we can hardcode to false. We're going to make it dynamic later. Make it as child. As child prop
4:46:194 hours, 46 minutes, 19 secondswill make sure that this element here becomes whatever we put as the first child inside. Thus, the name as child.
4:46:294 hours, 46 minutes, 29 secondsThis is useful for when we want the sidebar menu button to be a link because it is not valid to render an href
4:46:384 hours, 46 minutes, 38 secondselement within a button. So because of that this button will become the link element
4:46:454 hours, 46 minutes, 45 secondsand let's give it a class name gap x of 4, height of 10 and px of four. Now
4:46:544 hours, 46 minutes, 54 secondsinside of here let's use the link element. Let's give it an href of item URL.
4:47:014 hours, 47 minutes, 1 secondInside, let's render item icon which can be whatever we have defined here. For example, folder open icon. It's a
4:47:114 hours, 47 minutes, 11 secondsself-closing tag and it's just going to have a size 4 class name. And finally, a span rendering the item title. In order
4:47:204 hours, 47 minutes, 20 secondsto make this link faster, we are going to prefetch like so. in production. This
4:47:284 hours, 47 minutes, 28 secondswill make sure to prefetch the content of this href on page load. So when the
4:47:364 hours, 47 minutes, 36 secondsuser clicks on it, it will almost be as it if is as if it as if it was already loaded, which it is. It will act like it is cached.
4:47:474 hours, 47 minutes, 47 secondsSo now that we have that, we are ready to render it and see something. So, I'm going to go inside of my layout in app
4:47:554 hours, 47 minutes, 55 secondsdashboard and let's import app sidebar and let's go ahead all the way here and maybe zoom out a bit. Make sure you zoom
4:48:034 hours, 48 minutes, 3 secondsout otherwise you will not be able to see it. But here it is the workflow. So, let me zoom out as much as I can because
4:48:104 hours, 48 minutes, 10 secondsif I zoom out too much it collapses to mobile mode. So, if I click workflows you can see it redirects me back to
4:48:174 hours, 48 minutes, 17 secondsworkflows. Perfect. Now, let's focus on creating the rest of the menu items here. So, besides
4:48:254 hours, 48 minutes, 25 secondsworkflows, we're going to have credentials. So, let's add credentials here.
4:48:334 hours, 48 minutes, 33 secondsAnd let's also have executions here like that. So, all of them inside of items. And the title here can really be
4:48:414 hours, 48 minutes, 41 secondshome because or maybe main like that like main menu items.
4:48:484 hours, 48 minutes, 48 secondsAnd now on desktop mode here we should have workflows, we should have credentials and we should have
4:48:554 hours, 48 minutes, 55 secondsexecutions and all routes should work because we just developed the structure for them.
4:49:024 hours, 49 minutes, 2 secondsNow let's go ahead and make the app sidebar look a little bit better by adding the sidebar header.
4:49:114 hours, 49 minutes, 11 secondsLet's add sidebar menu item. Let's add sidebar menu button.
4:49:184 hours, 49 minutes, 18 secondsLet's go ahead and give the sidebar menu button as child again. And let's give it a class name gap x4 height 10 and px of four.
4:49:294 hours, 49 minutes, 29 secondsLet's add a link in here. And let's prefetch to forward slashworkflows. Whoops.
4:49:364 hours, 49 minutes, 36 secondsForward slashworkflows.
4:49:404 hours, 49 minutes, 40 secondsOkay. I think something's wrong. Link like this. Href slworkflows. All right. And prefetch.
4:49:504 hours, 49 minutes, 50 secondsAnd I think that's good. Let's add an image with a source of logos. Forward
4:49:574 hours, 49 minutes, 57 secondsslash logo SVG. We should have already been using this. You can see in AL
4:50:044 hours, 50 minutes, 4 secondslayout. So whatever you used for the logo in AL layout is the same you should use here. The alt will be nodebase the name of our app. Width will be 30.
4:50:174 hours, 50 minutes, 17 secondsHeight will be 30 as well. You can find your logo in the public folder here. Logos logo. SVG.
4:50:264 hours, 50 minutes, 26 secondsPerfect. And below the image, add a span with a text of nodebase, the name of our
4:50:334 hours, 50 minutes, 33 secondsapp with a class name font semibold and text small.
4:50:404 hours, 50 minutes, 40 secondsLet's go ahead and see how this looks like. already looking much better. And you can see that this acts as the home button.
4:50:484 hours, 50 minutes, 48 secondsPerfect.
4:50:504 hours, 50 minutes, 50 secondsIn fact, you can make the href go to forward slash.
4:50:554 hours, 50 minutes, 55 secondsThis way, it's a true root page. And just accidentally, we also redirect to workflows. So, nothing really changes.
4:51:044 hours, 51 minutes, 4 secondsBut I think this is more semantically correct that this leads to a root page and this leads to workflows. Those are the same because we redirect. But I
4:51:134 hours, 51 minutes, 13 secondsthink you get the idea what I'm trying to explain here. Perfect. Now that we have that, let's go ahead and make sure
4:51:204 hours, 51 minutes, 20 secondsthat we can highlight what is the active route. Const router use router const path name use path name.
4:51:304 hours, 51 minutes, 30 secondsAnd now let's go ahead down here in the menu items and in the sidebar menu button for the
4:51:384 hours, 51 minutes, 38 secondsis active. Let's check if item do URL is forward slash. In that case, let's check if path name is also forward slash.
4:51:484 hours, 51 minutes, 48 secondsOtherwise, let's check if path name starts with item URL.
4:51:554 hours, 51 minutes, 55 secondsSo now once you've added this, you will see that each of these will be properly highlighted and selected.
4:52:054 hours, 52 minutes, 5 secondsThe reason that we need to do this little trick is because if you don't do it, uh you can get into a situation where all routes are considered active.
4:52:164 hours, 52 minutes, 16 secondsSo you have to make an exclusion for this specific uh root page. Even though this can't really happen with our app because we
4:52:244 hours, 52 minutes, 24 secondsredirect to workflows, but if you ever want to change it, it will happen to you. So leave it like this. It's better.
4:52:344 hours, 52 minutes, 34 secondsGreat. Uh, now that we have that, uh, let me just go ahead and see. One thing I don't like is that
4:52:444 hours, 52 minutes, 44 secondsinside of the sidebar group content, none of these have any space between each other. Uh, maybe I will focus on
4:52:524 hours, 52 minutes, 52 secondsthat later. I want to go ahead and create the sidebar footer.
4:52:584 hours, 52 minutes, 58 secondsSo, outside sidebar content, create sidebar footer. sidebar menu.
4:53:064 hours, 53 minutes, 6 secondsAnd inside of here, let's add sidebar menu item. Sidebar menu button.
4:53:134 hours, 53 minutes, 13 secondsLet's go ahead and add a tool tip here.
4:53:174 hours, 53 minutes, 17 secondsUpgrade to pro. Class name will be the same as we've had so far for
4:53:254 hours, 53 minutes, 25 secondsour buttons. Gap x4, height 10, and px of four. on click for now will just be
4:53:334 hours, 53 minutes, 33 secondsan empty arrow function. And inside we're going to render a star icon and a text upgrade to pro.
4:53:444 hours, 53 minutes, 44 secondsAnd then let's go ahead and copy the sidebar menu item here. Paste it below
4:53:514 hours, 53 minutes, 51 secondsand change the tool tip here to be billing portal. Let's actually do it like this.
4:54:004 hours, 54 minuteschange the text to billing portal. Use the credit card icon and I think everything else can stay the same. And
4:54:094 hours, 54 minutes, 9 secondsthere is one more thing missing here. So you can see now we have upgrade to pro and we have billing portal. And if you
4:54:164 hours, 54 minutes, 16 secondswant to get rid of this nextjs indicator here, you can do that by going inside of the config and turn the dev indicators to false.
4:54:294 hours, 54 minutes, 29 secondsAnd I would suggest restarting your next route by pressing the R letter which
4:54:354 hours, 54 minutes, 35 secondswill reset it like this and then restart your app.
4:54:424 hours, 54 minutes, 42 secondsSo what we have to do now is we have to do the sign out button. So let's copy this sidebar menu item entirely.
4:54:504 hours, 54 minutes, 50 secondsPaste it here. Set the icon to be log out icon. Change the text below to be sign out.
4:54:594 hours, 54 minutes, 59 secondsand change the tool tip to be sign out as well.
4:55:044 hours, 55 minutes, 4 secondsAnd that will be the finished look of our sidebar. So, credentials, executions.
4:55:124 hours, 55 minutes, 12 secondsYeah, you can see how they are not so mashed up down here, but they are mashed
4:55:184 hours, 55 minutes, 18 secondsup up here. So, I was definitely right that something is off, but okay, we will definitely resolve that. Let's focus on
4:55:284 hours, 55 minutes, 28 secondsactually creating the sign the sign out method. So this is actually quite easy.
4:55:344 hours, 55 minutes, 34 secondsAll we have to do is we have to import al client from lib alclient
4:55:424 hours, 55 minutes, 42 secondsand let's go down here to sign out and let's call out client dot sign out.
4:55:524 hours, 55 minutes, 52 secondsOpen an object fetch options on success router.pushward
4:55:594 hours, 55 minutes, 59 secondsslash login just like this.
4:56:054 hours, 56 minutes, 5 secondsAnd now when you go here and click on sign out you should get redirected to the login page.
4:56:164 hours, 56 minutes, 16 secondsLet me try again. Sign out.
4:56:224 hours, 56 minutes, 22 secondsnot working too well and I think the fault might be uh okay now it's not working because I
4:56:304 hours, 56 minutes, 30 secondsam already signed out so yes we can't really properly demonstrate this because none of our pages are redirecting at the
4:56:404 hours, 56 minutes, 40 secondsmoment so let's do the following first I'm just going to debug a little what's
4:56:474 hours, 56 minutes, 47 secondsgoing on here so we have sidebar group we have sidebar group content. We have sidebar menu item here. Sidebar menu button.
4:56:594 hours, 56 minutes, 59 secondsWe have as child. We have link.
4:57:034 hours, 57 minutes, 3 secondsYes. Not exactly sure uh why this is happening.
4:57:114 hours, 57 minutes, 11 secondsI think that I'm missing instead of sidebar group content, we need sidebar menu.
4:57:194 hours, 57 minutes, 19 secondsYes. and just wrap the iteration around the sidebar menu and indent it here. And
4:57:264 hours, 57 minutes, 26 secondsI think that that will fix it. Here we go. That looks much better, much more visually cleaner.
4:57:354 hours, 57 minutes, 35 secondsAnd now let's go ahead and properly protect our routes to end this chapter.
4:57:424 hours, 57 minutes, 42 secondsSo let's start by going into workflows page. DSX right here in the rest. Let's
4:57:504 hours, 57 minutes, 50 secondsgo ahead and make this asynchronous and very simply let's await require out. I already explained why I prefer doing
4:57:594 hours, 57 minutes, 59 secondsthis individually in each page rather than using a middleware. I personally consider this and the middleware just a
4:58:074 hours, 58 minutes, 7 secondshelper for user experience. The real authentication and security layer is in our data access layer, our TRRPC
4:58:164 hours, 58 minutes, 16 secondsprotected route. Everything else here is so that the user doesn't see errors or weird flows like we just had, right? So
4:58:254 hours, 58 minutes, 25 secondsthat's why I don't want to teach to use the middleware because people start to use it to protect their API routes and I personally protect individual pages like
4:58:344 hours, 58 minutes, 34 secondsthis. You can see exactly what's going on. Executions. Let's do the same thing. So, we add this.
4:58:424 hours, 58 minutes, 42 secondsWe turn this into an asynchronous page and we import. And I think I can copy
4:58:494 hours, 58 minutes, 49 secondsthis and just paste it in credentials too. Perfect.
4:58:554 hours, 58 minutes, 55 secondsAnd then let's do the same for individual credential ID. Same thing in here. It's even easier. We can just
4:59:034 hours, 59 minutes, 3 secondsawait require out from lib out utils.
4:59:124 hours, 59 minutes, 12 secondsLet's go ahead inside of execution ID and do the same thing
4:59:204 hours, 59 minutes, 20 secondsrequire ALF from lib al utils and there is one place left and that is workflow ID which is located in the editor here.
4:59:304 hours, 59 minutes, 30 secondsSo let's make sure to add that here too.
4:59:344 hours, 59 minutes, 34 secondsRequire AL from lib al utils. And I think that's all of our pages protected.
4:59:404 hours, 59 minutes, 40 secondsAnd now we should be able to demonstrate the logout in a better way. So 1 2 3 4 5 6 7 8 is my password. Here I'm logging
4:59:504 hours, 59 minutes, 50 secondsin. I am immediately redirected to workflows. Workflows is highlighted. I can visit credentials. I can visit
4:59:584 hours, 59 minutes, 58 secondsexecutions. And if I click sign out, there we go. I am redirected back to login. Amazing. So I believe this puts
5:00:085 hours, 8 secondsus in a much better position as opposed to previous uh state where we had to, you know, put a bunch of things in page.
5:00:195 hours, 19 secondsDSX and it was starting to get a little cluttered. So the next steps here, let
5:00:275 hours, 27 secondsme just fix 1 2 3 4 5 6 7 8 login. The next steps here would be to create a add
5:00:365 hours, 36 secondsnew button in the workflow and to create a header which we are going to use to uh
5:00:435 hours, 43 secondsenable this on mobile and I actually want to use this chapter to add the header as well simply because it is very very easy to do so.
5:00:535 hours, 53 secondsSo, we're going to go inside of the rest folder, app folder, dashboard, rest, and in here, create a layout. DSX.
5:01:075 hours, 1 minute, 7 secondsWe can go ahead and copy the existing layout here and just paste it. But remove the sidebar provider, remove all of these.
5:01:185 hours, 1 minute, 18 secondsInstead, you can just go ahead and add a fragment
5:01:255 hours, 1 minute, 25 secondslike so. You can wrap the children around a main element, give it a class name of flex one.
5:01:375 hours, 1 minute, 37 secondsAnd instead of adding anything here, let's just do app header.
5:01:445 hours, 1 minute, 44 secondsAnd now let's quickly develop app header which should be super simple inside of source components. Let's
5:01:535 hours, 1 minute, 53 secondsdevelop app-header.tsx and let's paste it here. So import I
5:02:005 hours, 2 minutesmean paste it. I pasted it. You build it right. So import sidebar trigger from components UI sidebar. Export const app
5:02:095 hours, 2 minutes, 9 secondsheader. We are using the simple header element and we give it a class name of flex, height 14, shrink zero, items
5:02:165 hours, 2 minutes, 16 secondscenter, gap 2, border bottom, px4 and bg of background. And in here we render the sidebar trigger.
5:02:265 hours, 2 minutes, 26 secondsSo now that we have the app header here, make sure that you build it. Again, I pasted it from my source code. We didn't copy it from anywhere. Uh it was my
5:02:345 hours, 2 minutes, 34 secondsmistake. And now let's just import the app header from here. So very simple header here and you can see already how
5:02:425 hours, 2 minutes, 42 secondsit looks. So now on mobile you should be able to open the sidebar header. I mean
5:02:505 hours, 2 minutes, 50 secondsthe sidebar. Okay, perfect. So I think that's more than enough for this chapter. Uh very clean, very smooth. We
5:02:575 hours, 2 minutes, 57 secondsprotected our routes. We created a very nice layout. Uh, and yes, so now the rest folder has this layout where it has
5:03:065 hours, 3 minutes, 6 secondsthe app header, but the editor will have a very specific header of its own.
5:03:125 hours, 3 minutes, 12 secondsThat's why I didn't put it inside of here. That's why we are separating it.
5:03:185 hours, 3 minutes, 18 secondsAnd if you're wondering about a better name for this folder, maybe home will be better or main. I don't know. Uh, if you
5:03:255 hours, 3 minutes, 25 secondsreally dislike rest, because I don't like it too much, but it's the first thing that came to mind. Uh, great. I think this is more than enough for this chapter. So, again, I have 14 files.
5:03:385 hours, 3 minutes, 38 secondsMaybe you have 13 if you don't have the mrox.log.
5:03:425 hours, 3 minutes, 42 secondsSo, it's when an error happens, you get a new log file. So, yeah, don't worry about that.
5:03:495 hours, 3 minutes, 49 secondsAll right. Uh, now let's go ahead and see if that's all we intended to do. I'm
5:03:555 hours, 3 minutes, 55 secondspretty sure it was. We improved the file structure. We created placeholder routes. We created the sidebar layout.
5:04:055 hours, 4 minutes, 5 secondsPerfect. So 09 sidebar layout. I'm going to create a new branch. 09 sidebar layout.
5:04:155 hours, 4 minutes, 15 secondsAnd then I'm going to push that branch. So I'm going to stage all of my changes.
5:04:215 hours, 4 minutes, 21 seconds09 sidebar layout. I'm going to commit those changes and I'm going to publish the branch.
5:04:285 hours, 4 minutes, 28 secondsAnd once I publish the branch, I'm going to go ahead and I'm going to create a pull request
5:04:375 hours, 4 minutes, 37 secondsas usual. Let's go ahead and review the changes and let's wrap up the chapter.
5:04:445 hours, 4 minutes, 44 secondsAnd here we have this summary. New features. We added new dashboard layout with header and collapsible sidebar
5:04:515 hours, 4 minutes, 51 secondsnavigation. with dedicated pages for workflow credentials, executions, including detail views by ID. Root URL now redirects to forward/workflows.
5:05:025 hours, 5 minutes, 2 secondsAll dashboard pages and force authentication.
5:05:055 hours, 5 minutes, 5 secondsWe did some refactoring when it comes to navigation. Uh we moved sign out around.
5:05:105 hours, 5 minutes, 10 secondsUh it basically refers to the fact that it was all in one page. TSX and then now it is in the sidebar. As always, a walk
5:05:195 hours, 5 minutes, 19 secondsthrough file by file here. Uh and for the first time, I don't think we really need to look at the diagram simply because there isn't really any business
5:05:275 hours, 5 minutes, 27 secondslogic involved here. We know exactly what's going on, right? We already went over all of this outflows in the previous chapters, so we don't have to
5:05:365 hours, 5 minutes, 36 secondsfocus on it too much. And we were pretty good. Uh no actionable comments beside
5:05:435 hours, 5 minutes, 43 secondsthe typo that I did. Instead of upgrade, I spelled up upgrade or I don't know. I think I missed something. Oh, the tool
5:05:515 hours, 5 minutes, 51 secondstip is misspelled. All right, great. So, I believe that marks the end of this
5:05:585 hours, 5 minutes, 58 secondschapter. I'm going to merge this pull request. You merge it as well. And after you did so, go ahead and change back to
5:06:065 hours, 6 minutes, 6 secondsthe main branch and go ahead and synchronize your changes. Click okay.
5:06:135 hours, 6 minutes, 13 secondsAnd let me just go ahead and review everything.
5:06:175 hours, 6 minutes, 17 secondsI believe that marks the end. It sure does. Amazing, amazing job and see you in the next chapter.
Chapter 11: 10 Payments Setup
5:06:265 hours, 6 minutes, 26 secondsIn this chapter, we're going to integrate payments and subscriptions to our application. And we're going to do
5:06:335 hours, 6 minutes, 33 secondsthat using Polar, an open-source payment processor. So, why am I choosing Polar over all other methods?
5:06:425 hours, 6 minutes, 42 secondsLooking at their website, you can find exactly what Polar is and how it works.
5:06:495 hours, 6 minutes, 49 secondsPolar is an open-source billing infrastructure platform designed specifically for developers who want to
5:06:565 hours, 6 minutes, 56 secondsmonetize their software without the complexity of traditional payment systems.
5:07:025 hours, 7 minutes, 2 secondsPolar is also a merchant of record which basically means that you can leave the billing infrastructure and international
5:07:105 hours, 7 minutes, 10 secondstax headaches to them and just focus on growing your business instead. They handle VAT, GST and sales tax in all
5:07:185 hours, 7 minutes, 18 secondsjurisdictions. They also do proper EU VAT handling and they also do automatic tax calculation for you. This is not
5:07:265 hours, 7 minutes, 26 secondseveryone's cup of tea. Some people prefer using Stripe and when they met the threshold for tax, they have their
5:07:335 hours, 7 minutes, 33 secondsaccountant handle that. That's a perfectly fine decision to do. So in my case I have a company register within EU
5:07:415 hours, 7 minutes, 41 secondsand it is very important for me to have a merchant of record. But if the first two reasons aren't enough for you there
5:07:485 hours, 7 minutes, 48 secondsis also a third reason developer experience.
5:07:535 hours, 7 minutes, 53 secondsI am not exaggerating when I say that for the time it takes me to integrate Stripe in just one project I can
5:08:005 hours, 8 minutesintegrate Polar in 50 projects. And I am not exaggerating. You're going to see that in a second when we actually start
5:08:085 hours, 8 minutes, 8 secondsdeveloping here. So, Polar was developed with developer ergonomics in mind. They
5:08:165 hours, 8 minutes, 16 secondsput developer experience in the front seat. And they're not lying when they say that. You will see how incredibly
5:08:235 hours, 8 minutes, 23 secondseasy it is to integrate Polar within any adapter that you need. Be that Nex.js, JS, TypeScript or something even more
5:08:325 hours, 8 minutes, 32 secondsspecific like better out which is our use case. And on top of all of that, Polar is completely open source which I've already mentioned in the beginning.
5:08:435 hours, 8 minutes, 43 secondsAnd if you're still having doubt about their reliability, given that they are a new player in this payment processing
5:08:515 hours, 8 minutes, 51 secondsworld, I can tell you that I have personally been using Polar over half a year for all of my sales. And I have not
5:08:595 hours, 8 minutes, 59 secondsonce had a bad experience. And this is also true for their support team who is extremely responsive and here for any
5:09:085 hours, 9 minutes, 8 secondsquestions that you might have. And same goes for the amazing developer community that they have created within their Discord.
5:09:165 hours, 9 minutes, 16 secondsAnd here's some other information. Polar is the cheapest merchant of record on the market and no hidden fees, which is
5:09:255 hours, 9 minutes, 25 secondsunfortunately a practice for a lot of merchant of record providers. And I'm very happy that Polar does not do that.
5:09:335 hours, 9 minutes, 33 secondsYou can very clearly see exactly how much money goes into your bank account after all the tax has been handled.
5:09:425 hours, 9 minutes, 42 secondsSo now let's go ahead and use the link you can see on the screen to actually visit their landing page here. So you can turn your software into a business
5:09:505 hours, 9 minutes, 50 secondswith six lines of code and they are not joking when they say that and you automatically get subscriptions,
5:09:575 hours, 9 minutes, 57 secondsbenefits, checkout links, usage billing, customer portal metrics and even more than that when they say integrate under
5:10:065 hours, 10 minutes, 6 secondsa minute again they are not joking. The only reason this chapter is not one minute long is because I'm taking time
5:10:135 hours, 10 minutes, 13 secondsto explain what I'm doing. So in here they've listed some of the more popular adapters like Nex.js adapter and you can
5:10:205 hours, 10 minutes, 20 secondssee how easy it is to add a checkout route here but they also have some very specific adapters like better out which
5:10:285 hours, 10 minutes, 28 secondsis absolutely amazing because that's exactly what we need. And in here you can already see something interesting
5:10:355 hours, 10 minutes, 35 secondsinside of the better out config. They have this field called create customer on sign up set to true. This one line is
5:10:445 hours, 10 minutes, 44 secondsso useful that it will save us so much headache and so much time from making sure that we can easily check whether
5:10:535 hours, 10 minutes, 53 secondsany user in our database is a pro tier or a free tier customer.
5:11:005 hours, 11 minutesLet's go ahead and just try and integrate Polar so you can see exactly what I'm talking about. So go ahead and
5:11:085 hours, 11 minutes, 8 secondslog in. I'm going to be using Google here. Now depending on your state here, you will either have a project or you
5:11:175 hours, 11 minutes, 17 secondswill have a new organization screen which you can access manually by going on new organization here. Now we're going to have to create two
5:11:255 hours, 11 minutes, 25 secondsorganizations here. So I'm going to call this first one node base and I will call it production and organization slug
5:11:335 hours, 11 minutes, 33 secondsneeds to be unique. So I would suggest adding some unique identifier here. I will add CWA as in code with Antonio. So
5:11:425 hours, 11 minutes, 42 secondsthis will be taken for you. So make sure you add something else. In here you have supported use cases and prohibited use cases if you're interested for that uh
5:11:515 hours, 11 minutes, 51 secondsfor your own custom app later. Make sure you understand those terms and click create.
5:11:575 hours, 11 minutes, 57 secondsAnd after you have created an organization you will be prompted to create your first product. I'm going to call this NodeBase Pro and the
5:12:065 hours, 12 minutes, 6 secondssubscription will be unlock the full benefits of NodeBase.
5:12:125 hours, 12 minutes, 12 secondsYou can add some subscription image if you have it. Otherwise, you can go into pricing which can be a one-time purchase, monthly or yearly. And I'm going to set this to be $29.99.
5:12:245 hours, 12 minutes, 24 secondsFor the automated benefits, you can offer a Discord invite, a GitHub repository invite, file download,
5:12:335 hours, 12 minutes, 33 secondslicense keys, a lot of things, and they will automatically be revoken if the subscription has failed. And let's just click create a product.
5:12:445 hours, 12 minutes, 44 secondsAnd once the product has been created in here, you will be asked to integrate checkout. But I would actually suggest
5:12:525 hours, 12 minutes, 52 secondsthat you just click go to dashboard. So what you're looking at right now, at least of me at the time of me making
5:12:585 hours, 12 minutes, 58 secondsthis video, is you are in production now, right? So you can't exactly test
5:13:055 hours, 13 minutes, 5 secondsthis product. I just wanted you to have your nodebased production organization here, but you don't really need to get
5:13:125 hours, 13 minutes, 12 secondsthe uh you can find the developer token here later when you need it in production. But for development, you actually need to click go to sandbox.
5:13:225 hours, 13 minutes, 22 secondsAnd once you are in sandbox, you will see a big screen here. Changes you make here don't affect your live account.
5:13:295 hours, 13 minutes, 29 secondsPayments are not processed. And in here, you have to create a new organization once more. So, let's go ahead and call
5:13:375 hours, 13 minutes, 37 secondsthis one Nodebase development. And again, I'm going to add an original slug here. Make sure you click I understand
5:13:465 hours, 13 minutes, 46 secondsthe restrictions and create this new organization.
5:13:505 hours, 13 minutes, 50 secondsAnd now you will have both your development and your production organization. So let's go ahead and call this NodeBase Pro. Unlock the full benefits of NodeBase.
5:14:025 hours, 14 minutes, 2 secondsLet's go ahead and set the monthly price to be $29.99.
5:14:065 hours, 14 minutes, 6 secondsAnd let's click create product. And now we can actually follow the checkout instructions here.
5:14:145 hours, 14 minutes, 14 secondsSo I'm going to go ahead and select better out here. And then I'm going to follow the install dependencies script.
5:14:245 hours, 14 minutes, 24 secondsSo we have to install better out which we already have. So no need for that. We can just focus on the other two packages
5:14:325 hours, 14 minutes, 32 secondshere. So, npm install polar sh better out and polar shdk.
5:14:405 hours, 14 minutes, 40 secondsMake sure you install those two packages within your project. And then go ahead and create a new environment variable.
5:14:485 hours, 14 minutes, 48 secondsI'm going to call this app development.
5:14:515 hours, 14 minutes, 51 secondsAnd it will never expire. And I will select all scopes simply so it's easy to develop with this. And let's click
5:15:005 hours, 15 minutescreate. Go ahead and copy this immediately and let's go ahead and you should now have two uh uncommitted
5:15:085 hours, 15 minutes, 8 secondschanges here. So basically polar sh better out and polar shdk.
5:15:145 hours, 15 minutes, 14 secondsNow let's go inside of our environment file here and let's add polar. So I'm
5:15:215 hours, 15 minutes, 21 secondsgoing to add polar access token and I'm going to store it right here. So this is obviously for development.
5:15:315 hours, 15 minutes, 31 secondsGreat. And now that we have that, uh, looks like it we also need to add the polar success URL. So, let's quickly add
5:15:405 hours, 15 minutes, 40 secondsit here. Polar success URL is just going to be our app.
5:15:475 hours, 15 minutes, 47 secondsSo, I don't think Yeah, basically exactly the same as better out URL right here.
5:15:545 hours, 15 minutes, 54 secondsPerfect. We have that ready. And now let's go ahead and integrate the checkout. So what we're going to do now
5:16:025 hours, 16 minutes, 2 secondsis we're going going to go inside of out.ts instead of source lib where we have the Prisma adapter and the email
5:16:095 hours, 16 minutes, 9 secondsand password. So let me show you how that looks like here in the file structure instead of the lib folder al.ds.
5:16:185 hours, 16 minutes, 18 secondsAnd inside of here, let's go ahead and let's import checkout
5:16:255 hours, 16 minutes, 25 secondspolar and portal from polar shetter out.
5:16:325 hours, 16 minutes, 32 secondsAnd now let's go ahead inside of the lib folder and let's create a new file called polar.ts.
5:16:415 hours, 16 minutes, 41 secondsIn here, let's go ahead and import polar from polar sh SDK and export con polar
5:16:505 hours, 16 minutes, 50 secondsclient new polar access token process environment. And let's go ahead and add
5:16:585 hours, 16 minutes, 58 secondspolar access token and make sure to add server sandbox.
5:17:045 hours, 17 minutes, 4 secondsI'm going to add a comment to do change in production.
5:17:105 hours, 17 minutes, 10 secondsSo just double check that you have correctly named a polar access token here that you don't have any typos otherwise it will not work and yes you
5:17:205 hours, 17 minutes, 20 secondscan also create some kind of logic here for example I think in the database.ts DS we do that if process.environment
5:17:295 hours, 17 minutes, 29 secondsnode environment is not production in that case use sandbox otherwise
5:17:375 hours, 17 minutes, 37 secondsproduction like this and then you don't have to do it manually.
5:17:435 hours, 17 minutes, 43 secondsuh but you might have to modify this a little bit further if you will have staging or if you will have uh like uh
5:17:535 hours, 17 minutes, 53 secondssome development previews right which are deployed because then it will use the production server. So yeah, I'm not
5:18:015 hours, 18 minutes, 1 secondsure if that's what you want, but the simplest way is this, but maybe a more reliable way would be polar server
5:18:115 hours, 18 minutes, 11 secondslike this. And then depending on where you deploy, you would have to modify it.
5:18:155 hours, 18 minutes, 15 secondsSo let's go ahead and just just for now, let's leave it at sandbox. I think it's easier. So polar client sandbox. Let's
5:18:245 hours, 18 minutes, 24 secondsgo inside of database. Uh my apologies, inside of our al.ts TS here. And now let's import polar client.
5:18:365 hours, 18 minutes, 36 secondsNot from here, but from here polar.
5:18:435 hours, 18 minutes, 43 secondsAnd then let's simply go ahead and add plugins in here. Open polar. Set the client to
5:18:515 hours, 18 minutes, 51 secondsbe polar client. Create customer on sign up set to true. use is going to be an
5:18:595 hours, 18 minutes, 59 secondsarray. Checkout and portal. In checkout, let's go ahead and add products.
5:19:095 hours, 19 minutes, 9 secondsOpen an array here and open an object and add product ID and add slug.
5:19:175 hours, 19 minutes, 17 secondsNow, let's find our product ID and let's choose the slug. The slot can be whatever we want. So, I will set this to
5:19:245 hours, 19 minutes, 24 secondsbe pro. And I think I can actually find, you can see they prefill the product ID for you. So you can actually copy it
5:19:325 hours, 19 minutes, 32 secondsfrom here. But just in case you don't want that, so I'm going to add it here
5:19:395 hours, 19 minutes, 39 secondsnow. But just in case you closed this screen or cannot find it, you can go to
5:19:465 hours, 19 minutes, 46 secondsdashboard, go inside of your products, and click copy product ID. And then you will be able to find it here.
5:19:545 hours, 19 minutes, 54 secondsAnd then let's also add inside of checkout success URL process environment
5:20:035 hours, 20 minutes, 3 secondspolar success URL and authenticated users only set to true. This way your
5:20:115 hours, 20 minutes, 11 secondscustomers can only be users who have an account using better ALF. So in order to
5:20:185 hours, 20 minutes, 18 secondstest if we did this correctly uh we already added portal. All right. I just wanted to make sure that's true. In
5:20:255 hours, 20 minutes, 25 secondsorder to test this, let's do the following. We don't have to add anything new to our Prisma schema. Instead, let's
5:20:345 hours, 20 minutes, 34 secondsdo npx prisma migrate reset. So, let's remove all users from our database now.
5:20:415 hours, 20 minutes, 41 secondsSo, all data will be lost. Yes, the reason we are doing this is because we just introduced create customer on sign up field. So I'm
5:20:515 hours, 20 minutes, 51 secondsgoing to do npm rundev all. I'm going to go to localhost 3000 here and I want to to keep your polar open
5:21:005 hours, 21 minutesand click inside of customers here. You can see that I have no customers right now. But the moment I create this one.
5:21:085 hours, 21 minutes, 8 secondsSo let me go ahead and click sign up this time. Antonio.com
5:21:135 hours, 21 minutes, 13 seconds1 2 3 4 5 6 7 8 1 2 3 4 5 6 7 8. And when I click sign up, nothing will
5:21:225 hours, 21 minutes, 22 secondschange for the user really. So let's just sign up. Here we are. But on Polar
5:21:285 hours, 21 minutes, 28 secondsnow when you refresh, you now see your new customer here. So that's what happened. When you click on
5:21:375 hours, 21 minutes, 37 secondsantonommail.com here and when you scroll down here, you can see something called external ID. This external ID is a
5:21:475 hours, 21 minutes, 47 secondsoneto-one mapping of what's currently stored inside of your database. So if I
5:21:545 hours, 21 minutes, 54 secondsgo ahead and close this and open my users, let me just refresh this
5:22:015 hours, 22 minutes, 1 secondso I can load the user. You can see the ID starts with capital D then lowercase D and oops, I thought I was here. My
5:22:105 hours, 22 minutes, 10 secondsapologies. You can see that is exactly the ID. that's been stored here in the external ID column. So that's right,
5:22:195 hours, 22 minutes, 19 secondsyour customers are now automatically created. You don't need a web hook. You don't need any after sign up event. All
5:22:275 hours, 22 minutes, 27 secondsof this happens automatically and very reliably for you. And the rest is now extremely easy. So let me show you. So
5:22:365 hours, 22 minutes, 36 secondsyou probably wondering all right so now when the user clicks upgrade to pro here how do we upgrade you will be amazed by
5:22:455 hours, 22 minutes, 45 secondshow simple this is let's go inside of app dash sidebar to develop that
5:22:525 hours, 22 minutes, 52 secondsand we don't even need to add any new imports because we already have the al client all we have to do is find the
5:23:015 hours, 23 minutes, 1 secondupgrade button and change the onclick to call out client dot checkout
5:23:095 hours, 23 minutes, 9 secondslike this and select the slug to be pro.
5:23:145 hours, 23 minutes, 14 secondsBut of course, I missed one thing which you can immediately see by the lack of type definition here. Let's quickly go
5:23:215 hours, 23 minutes, 21 secondsinside of out client. So it's located in the lip folder out client. I forgot that we have to add the plugins here as well.
5:23:305 hours, 23 minutes, 30 secondsSo just polar client from polar better out like this. And now you can see
5:23:385 hours, 23 minutes, 38 secondsimmediately the error the type error has gone. Why slug pro? Because that's exactly what we have defined here. The
5:23:475 hours, 23 minutes, 47 secondsslug is called pro. So we can now easily refer to it without knowing the ID of the product. And now when you click
5:23:555 hours, 23 minutes, 55 secondsupgrade to pro, wait a few seconds and you will get redirected to the payment screen.
5:24:035 hours, 24 minutes, 3 secondsIf you keep seeing the white screen, you can just hit refresh and it will then load NodeBase Pro. This can happen when
5:24:115 hours, 24 minutes, 11 secondsyou are logged in in your Polar account and you try to purchase your own product. It's kind of a uh like a protection in some sense. And in here,
5:24:215 hours, 24 minutes, 21 secondsif you want to test it out, you can very simply just use stripes test cards, which are these ones. The expiration
5:24:295 hours, 24 minutes, 29 secondsneeds to be in the future. The security code can be whatever you want. And in here, you have to follow the guide as you would normally purchase. So, I am in Croatia, so that's what I would choose.
5:24:405 hours, 24 minutes, 40 secondsAnd you can see the taxes that are going to apply that are going to be applied.
5:24:445 hours, 24 minutes, 44 secondsAnd once I click subscribe here, I will simply be redirected uh back to my product here. Now, nothing is really
5:24:535 hours, 24 minutes, 53 secondshappening for me here. But if you take a look at here, you can see the actual revenue that has just happened for this
5:25:015 hours, 25 minutes, 1 seconduser. You can see that now I am on $29 of monthly recurring revenue.
5:25:085 hours, 25 minutes, 8 secondsAnd how do we now use that information?
5:25:115 hours, 25 minutes, 11 secondsHow do we now give this user some special access? Well, very easily. So, let's go ahead for example and let's
5:25:195 hours, 25 minutes, 19 secondshide this sidebar menu item if the user has already purchased or subscribed to Pro.
5:25:295 hours, 25 minutes, 29 secondsNow, this can also be done in many ways, but the way I'm going to do that is by
5:25:355 hours, 25 minutes, 35 secondsgoing inside of my features folder. So instead of source features I will create a new folder called subscriptions.
5:25:465 hours, 25 minutes, 46 secondsSo features subscriptions feature or payments whatever you prefer and I will create a hooks folder inside.
5:25:565 hours, 25 minutes, 56 secondsAnd then I'm going to create use-subscription.ts.
5:26:035 hours, 26 minutes, 3 secondsLet's go ahead and import use query from tanstack react query. Let's import out
5:26:115 hours, 26 minutes, 11 secondsclient from lib out client. Let's export const use subscription
5:26:185 hours, 26 minutes, 18 secondsto be returned use query query key subscription
5:26:255 hours, 26 minutes, 25 secondsquery function asynchronous method and let's dstructure the data from await outclient customerstate.
5:26:375 hours, 26 minutes, 37 secondsSo you can see how easy it is to get the customer's state since we are connecting
5:26:435 hours, 26 minutes, 43 secondsour internal database ID with Polar's external database ID. I mean it's transferred to Polar as external
5:26:525 hours, 26 minutes, 52 secondsdatabase ID. We can very simply get the polar state by calling whatever is the current outclient session customer.state.
5:27:035 hours, 27 minutes, 3 secondsYou don't have to pass this inside of React query. This is completely optional. I simply just prefer using
5:27:115 hours, 27 minutes, 11 secondsquery whenever I can. You could have very easily just done that here somewhere. But I personally like it this
5:27:195 hours, 27 minutes, 19 secondsway much more. And then let's export const use has active subscription hook.
5:27:255 hours, 27 minutes, 25 secondsSo we can very simply use this throughout our client side on the back end. It's much easier than this because we can very simply just await without
5:27:345 hours, 27 minutes, 34 secondsneeding to refresh or something. But in here, we kind of have to rely on some refreshes and refetches, right? So,
5:27:425 hours, 27 minutes, 42 secondslet's go ahead and get the data and remap it to customer state. Let's get is loading and the rest of the values all from use subscription.
5:27:545 hours, 27 minutes, 54 secondsAnd then let's define has active subscription as customer state question
5:28:025 hours, 28 minutes, 2 secondsmark active subscriptions and customer state
5:28:085 hours, 28 minutes, 8 secondsdot active subscriptions dotlength are larger than zero because we only allow the user to have one active
5:28:175 hours, 28 minutes, 17 secondssubscription at the time which makes it very easy for us to confirm whether this user should see their pro status. or
5:28:245 hours, 28 minutes, 24 secondsnot. If you had a more complex situation, you would have to look through the active subscriptions to find the one with the ID that you need. And
5:28:345 hours, 28 minutes, 34 secondsthen in here, I'm just going to return has active subscription. The active subscription will be customer state
5:28:415 hours, 28 minutes, 41 secondsquestion mark active subscriptions question mark first in the array. I will pass is loading and I will pass the rest
5:28:505 hours, 28 minutes, 50 secondsas well. There we go. So we now have use has active subscription. So I'm going to go here in the app sidebar and I will
5:29:005 hours, 29 minutesadd use has active subscription. Let me show you the import here from features subscriptions hooks use subscription
5:29:105 hours, 29 minutes, 10 secondshas active subscription and is loading will be extracted from here. And now let's finally go down here where we have
5:29:185 hours, 29 minutes, 18 secondsthe sidebar menu item and let's check if not has active subscription and if we're
5:29:255 hours, 29 minutes, 25 secondsnot loading the state of the user's subscription then show this upgrade button.
5:29:345 hours, 29 minutes, 34 secondsSo now if you take a look you will see the button doesn't exist because my Antonio user is premium. But if I sign
5:29:445 hours, 29 minutes, 44 secondsout and if I sign up again with a new account, I'm using the same password here. So,
5:29:535 hours, 29 minutes, 53 secondslet me go ahead and sign up. This new user will now see the subscription here.
5:30:015 hours, 30 minutes, 1 secondMaybe I need to do a refresh. Here it is. Yes, I need to do a refresh.
5:30:075 hours, 30 minutes, 7 secondsAnd the reason it stayed uh invisible is because the previous user was premium.
5:30:135 hours, 30 minutes, 13 secondsAnd when I signed out, we didn't clear the React query cache. Now, you don't have to really worry about that because
5:30:215 hours, 30 minutes, 21 secondsagain, this isn't our layer of protection. This is the same as redirecting the user away when they are
5:30:285 hours, 30 minutes, 28 secondslogged out. This is just to improve user experience because the true uh premium
5:30:355 hours, 30 minutes, 35 secondsprotection will be inside of our data access layer by introducing the same way we introduced protected procedure in
5:30:425 hours, 30 minutes, 42 secondsTRPC. We are going to introduce premium procedure in TRPC. So you don't have to worry about glitches like this in a
5:30:505 hours, 30 minutes, 50 secondssense that obviously it's not good to have any bugs but in a sense that this is a security leak. It is not. So don't
5:30:575 hours, 30 minutes, 57 secondsworry just because you forget to clean up some state uh it won't mean that someone will be able to use pro features because pro features will be restricted using TRPC data access layer protection.
5:31:105 hours, 31 minutes, 10 secondsSo just refresh and then you should be able to see upgrade to pro here. Uh and you can also now enable portal down
5:31:185 hours, 31 minutes, 18 secondshere. So billing portal should always be active if you ask me. So customer and then just call portal. It doesn't matter
5:31:265 hours, 31 minutes, 26 secondsif the user is uh pro or not. When you click on billing portal, it will simply redirect you to your customer portal
5:31:345 hours, 31 minutes, 34 secondswhich will say no active subscriptions, no benefits available. Right? Super simple. But if you sign out and if you
5:31:415 hours, 31 minutes, 41 secondsgo inside of antoniomail.com or whatever you added as your premium customer
5:31:505 hours, 31 minutes, 50 secondsin that case in here when I click billing portal you will see that I have a current active
5:31:595 hours, 31 minutes, 59 secondssubscription and I will be able to cancel it from there as well.
5:32:055 hours, 32 minutes, 5 secondsSo, here it is. $29.99 per month. I can change plan. I can view subscription. I can do what I want.
5:32:165 hours, 32 minutes, 16 secondsPerfect. So, now let's go ahead and let me just show you one more cool thing.
5:32:215 hours, 32 minutes, 21 secondsThis is actually very new. What they've added is the ability to trial. So, let me expand my screen here. Let me
5:32:295 hours, 32 minutes, 29 secondscollapse this internal sidebar that they have. You can actually select a trial period if you want to. So configure a
5:32:375 hours, 32 minutes, 37 secondsfree trial period for this product. So if you enable this, you can select for example one month of free trial or one
5:32:445 hours, 32 minutes, 44 secondsday, one week, right? Whatever combination you want and just go ahead and click save product. And what's going
5:32:515 hours, 32 minutes, 51 secondsto happen now is that if you go back to your app here and let me go ahead inside of sign up, my apologies, inside of the
5:32:595 hours, 32 minutes, 59 secondsother account. So this one 1 2 3 4 5 6 7 8. Let's see if I enter that correctly.
5:33:075 hours, 33 minutes, 7 secondsI did. Let me just refresh. Okay, you can see it appears. And when I click upgrade to pro here, you will see that
5:33:145 hours, 33 minutes, 14 secondsit says one month trial, which means that I will not be build, right? And if
5:33:215 hours, 33 minutes, 21 secondsI take a look at my customer portal later, it will say status triing. So, it
5:33:285 hours, 33 minutes, 28 secondsis that easy to add a free trial to your product as well. Excellent. So, I purposely want to leave uh one of my
5:33:365 hours, 33 minutes, 36 secondscustomers to be free so I can demonstrate creating a protected premium procedure.
5:33:445 hours, 33 minutes, 44 secondsIn order to do that, let's go inside of init.ts within source DRPC folder. In here, we
5:33:525 hours, 33 minutes, 52 secondshave already created protected procedure. So, now let's extend it.
5:33:575 hours, 33 minutes, 57 secondsExport const premium procedure will be protected procedure dot use. Let's go
5:34:055 hours, 34 minutes, 5 secondsahead and make this an asynchronous method and let's dstructure context and next
5:34:125 hours, 34 minutes, 12 secondslet's get the customer by doing await polar client which we can import from lib polar. So just make sure where is it? Here it is from lib polar.
5:34:245 hours, 34 minutes, 24 secondsSo polarclient dotc customers dot get state external and use the
5:34:335 hours, 34 minutes, 33 secondsexternal id context out user id. So that's why we are extending the protected procedure so
5:34:425 hours, 34 minutes, 42 secondsthat we have the out session here so that we can obtain the user ID which is mapped as external ID in polar and then
5:34:505 hours, 34 minutes, 50 secondsin here let's go ahead and check if not customer.active subscriptions or if customer active
5:34:595 hours, 34 minutes, 59 secondssubscriptions.length is equal to zero. Let's go ahead and throw new TRPC error here.
5:35:085 hours, 35 minutes, 8 secondswith a code forbidden and a message active subscription required.
5:35:165 hours, 35 minutes, 16 secondsOtherwise, let's return next. And let's go ahead and pass context here. Spread the existing context and simply add
5:35:255 hours, 35 minutes, 25 secondscustomer inside too in case we want to do something with the customer object.
5:35:305 hours, 35 minutes, 30 secondsAnd it is that simple to integrate a premium procedure. So let's go ahead now and test it out quickly. So I'm going to
5:35:395 hours, 35 minutes, 39 secondsgo inside of uh let's see actually we will test it out in some other example in the next chapter simply because we
5:35:485 hours, 35 minutes, 48 secondsnow have to convert something to a client page. I think it's unnecessarily complicated for something that we can very easily come back and test. But I
5:35:565 hours, 35 minutes, 56 secondsthink you already understand how it works, right? It works the same way as protected procedure but now it's a premium procedure. So inside of your app
5:36:045 hours, 36 minutes, 4 secondsunderscore app in source gRPC routers if you wanted to change test AI you can change it to be a premium procedure
5:36:135 hours, 36 minutes, 13 secondsright instead of a protected procedure and then this will throw an error if the currently logged in user isn't subscribed.
5:36:235 hours, 36 minutes, 23 secondsLet me see if I can very quickly test that somewhere inside of source app dashboard rest. Let's go ahead and create a subscription.
5:36:345 hours, 36 minutes, 34 secondsAnd let's go ahead and do a simple page.
5:36:395 hours, 36 minutes, 39 secondsDSX use client. Let's go ahead and let's import use tRPC and let me add use mutation here from
5:36:495 hours, 36 minutes, 49 secondstanstack react query export. Let's do const page
5:36:555 hours, 36 minutes, 55 secondsconst drpc use drpc const test AI will
5:37:025 hours, 37 minutes, 2 secondsbe use mutation trpc test ai mutation options
5:37:095 hours, 37 minutes, 9 secondslet me fix the typo use mutation let's return a button from components UI
5:37:175 hours, 37 minutes, 17 secondsbutton click to test subscription And inside of here, let's add on success
5:37:285 hours, 37 minutes, 28 secondstoast from soner dots success success otherwise
5:37:365 hours, 37 minutes, 36 secondson error toast dot error failed. This way we will see what's going on. And let's add on click here.
5:37:475 hours, 37 minutes, 47 secondsTest AI dot oops test AI domutate and in fact maybe we can grab
5:37:565 hours, 37 minutes, 56 secondsmessage from here and then show the message like that and let's export
5:38:045 hours, 38 minutes, 4 secondsdefault page. So now head to http localhost 3000/subscription
5:38:115 hours, 38 minutes, 11 secondssubscription just one like this and in here you should see click to test subscription. So I'm currently on a free
5:38:195 hours, 38 minutes, 19 secondsuser and if I click this let's see what happens active subscription required. I get an
5:38:275 hours, 38 minutes, 27 secondserror. But if I go and sign out.
5:38:335 hours, 38 minutes, 33 seconds1 2 3 4 5 6 7 8 and I log in here and let me just refresh and go back to
5:38:425 hours, 38 minutes, 42 secondssubscription and I click click to test the subscription. I get back success.
5:38:485 hours, 38 minutes, 48 secondsNow you might get an error here if you don't have injust running. So just make sure you have injust running too. And now uh AI is running in the background.
5:39:005 hours, 39 minutesAmazing. So we successfully wrapped that up. So we can now remove the subscription page here because we don't
5:39:085 hours, 39 minutes, 8 secondsneed it. Uh and I think that we developed everything we need for now. So the only thing that I kind of don't like
5:39:155 hours, 39 minutes, 15 secondsis this use subscription which is being cached through logout. So the new user
5:39:235 hours, 39 minutes, 23 secondswho logs in temporarily get gets the premium state of the premium user. I will look into the best way of fixing
5:39:315 hours, 39 minutes, 31 secondsthis. But again, that's just a UI bug because our actual protection is inside
5:39:385 hours, 39 minutes, 38 secondsof premium procedure here, which will always make a separate API call to Polar to confirm whether this user that's
5:39:475 hours, 39 minutes, 47 secondscurrently logged in has the active subscription or not. And it is simply extending the protected procedure here.
5:39:555 hours, 39 minutes, 55 secondsSo this cannot really be hijacked by some fake ID. We are using the ID from the session that we have. So I believe
5:40:045 hours, 40 minutes, 4 secondsthat marks the end of this chapter and I hope you realized how fun it is to use polar really in order to develop all of
5:40:125 hours, 40 minutes, 12 secondsthis. It would take me so much time and headache with stripe and not to mention the web hook and then the local testing of the web hook. It's just you know a
5:40:205 hours, 40 minutes, 20 secondsheadache. But with polar it is just ridiculously easy to do. So so let's see. We have set up polar. We integrated
5:40:295 hours, 40 minutes, 29 secondswith better out. We created checkout and we created the billing portal. And now let's go ahead and commit that. So
5:40:365 hours, 40 minutes, 36 secondschapter 10 payments. I have nine uh files here. You can see them right here.
5:40:435 hours, 40 minutes, 43 secondsYou might have 10 files if you accidentally have some error for MROs because it can create like an additional file. But these are the files you should have. So I will click down here on main.
5:40:545 hours, 40 minutes, 54 secondsI will click create branch 10 payments.
5:40:585 hours, 40 minutes, 58 secondsI'm going to then stage all of my changes and I'm going to do 10 payments and commit. And then I'm going to
5:41:065 hours, 41 minutes, 6 secondspublish the branch. And after I publish my branch, as always, I'm going to
5:41:135 hours, 41 minutes, 13 secondscreate a pull request so I can review my changes and see if we need to fix any critical mistakes.
5:41:215 hours, 41 minutes, 21 secondsAnd here we have the code rabbit summary subscription aware sidebar upgrade to
5:41:285 hours, 41 minutes, 28 secondspro appears only when applicable and launches checkout screen. We added inapp billing portal for managing subscriptions.
5:41:385 hours, 41 minutes, 38 secondsPremium actions now require an active subscriptions. No non-subscribed users see a clear error and an upgrade path.
5:41:475 hours, 41 minutes, 47 secondsWe also added the dependencies to support said checkout billing and subscription state. In here as always
5:41:555 hours, 41 minutes, 55 secondsfile by file walk through. And in here we have the sequence diagram. So this one is explaining how our upgrade to pro
5:42:045 hours, 42 minutes, 4 secondsworks which very simply uses out client's polar plugin to call the checkout function which simply creates
5:42:125 hours, 42 minutes, 12 secondsthe checkout session and redirects the user to that URL the same way customer portal works and in here we have a
5:42:215 hours, 42 minutes, 21 secondsdefinition of our premium procedure. So when the user calls mutate test AI, we invoke a premium procedure which again
5:42:305 hours, 42 minutes, 30 secondsuses the polar climb to get the customer state using user ID. If the user has an active subscription, we proceed with
5:42:395 hours, 42 minutes, 39 secondswhatever that procedure is of wrapping otherwise no active subscription with throw an error active subscription
5:42:485 hours, 42 minutes, 48 secondsrequired. In here we do have a few comments but it's mostly the things we already knew. uh my upgrade typo and in
5:42:565 hours, 42 minutes, 56 secondshere uh a guard against missing polar success URL. So if someone forgets to pass that we should either throw an
5:43:065 hours, 43 minutes, 6 secondserror or we should add a fallback. So we are going to look into that here. Same thing here what I tried to do dynamic
5:43:145 hours, 43 minutes, 14 secondspolar server variable. I will see into in the next chapters how we can improve that. And looks like that is it. So
5:43:235 hours, 43 minutes, 23 secondslet's go ahead and merge this pull request.
5:43:265 hours, 43 minutes, 26 secondsAnd once it is merged, we can go back to the main branch here as well. And we can click on synchronize changes and okay.
5:43:355 hours, 43 minutes, 35 secondsAnd after that, head inside of your source control graph and just confirm
5:43:415 hours, 43 minutes, 41 secondsthat you just did 10. You detached and you merged back in. And that means
5:43:485 hours, 43 minutes, 48 secondseverything is as it should be. And now let's go ahead and wrap up the chapter.
5:43:535 hours, 43 minutes, 53 secondsWe pushed to GitHub. We created a new branch, a new PR, and we reviewed and merged. Amazing, amazing job. And see you in the next chapter.
5:44:035 hours, 44 minutes, 3 secondsIn this chapter, we're going to work on workflows create, read, update, and delete methods. In order to do that, we
Chapter 12: 11 Workflows Crud
5:44:115 hours, 44 minutes, 11 secondsfirst have to update the workflow schema, and then we can create the workflow TRPC API routes. Let's start by
5:44:205 hours, 44 minutes, 20 secondsupdating the schema. So head into schema.prisma located in the Prisma folder and find
5:44:285 hours, 44 minutes, 28 secondsyour workflow model. Inside we just have ID and name. Now let's go ahead and extend this by adding created at which
5:44:375 hours, 44 minutes, 37 secondswill be a type of date time with a default value of now. And then let's add
5:44:455 hours, 44 minutes, 45 secondsupdated at with the same value and a decorator updated at. And now what we're
5:44:535 hours, 44 minutes, 53 secondsgoing to do is we're going to make a model belong to a user. We're going to do that using relationship and foreign
5:45:005 hours, 45 minuteskeys. So let's add user ID field which is a type of string. And then I'm going to expand my screen a bit because this
5:45:095 hours, 45 minutes, 9 secondsis now a longer line. User is a type of user referring to the model above which we have called user.
5:45:195 hours, 45 minutes, 19 secondsSo user type of user decorator relation targeting the field user id which we
5:45:285 hours, 45 minutes, 28 secondsdefined above. It's referencing to field ID within the user model. And then let's
5:45:365 hours, 45 minutes, 36 secondsadd on delete here cascade. So when the user gets deleted, all of their workflows will be deleted as well.
5:45:445 hours, 45 minutes, 44 secondsThat's what ondee cascade does. So we will never have a workflow which doesn't belong to anyone. And now that we have
5:45:525 hours, 45 minutes, 52 secondsthat relation set, we have to create an equivalent relation in the user model.
5:46:005 hours, 46 minutesSo let's find the user model again. And just as we defined sessions and accounts, let's add workflows.
5:46:105 hours, 46 minutes, 10 secondsworkflow and an array. And you can see that the moment you save, you will no longer be seeing any errors here. So I
5:46:185 hours, 46 minutes, 18 secondsthink that is uh enough for now in regards to the workflow.
5:46:255 hours, 46 minutes, 25 secondsYou can save this file and inside of your terminal let's do npx prisma
5:46:315 hours, 46 minutes, 31 secondsmigrate dev and let's call this workflows improvement
5:46:395 hours, 46 minutes, 39 secondsor maybe workflows update something simple here we go after that you can do
5:46:475 hours, 46 minutes, 47 secondsnpm rundev all make sure your nextjs server starts successfully now that we have that Let's
5:46:555 hours, 46 minutes, 55 secondsgo ahead inside of our source folder features and in here let's create a new folder called workflows inside of here
5:47:045 hours, 47 minutes, 4 secondsanother folder called servers and finally routers.ts TS inside
5:47:115 hours, 47 minutes, 11 secondslet's export const workflows router to be create trpc router from
5:47:195 hours, 47 minutes, 19 secondstRPC init and then add a create procedure here which will be for now a
5:47:265 hours, 47 minutes, 26 secondsprotected procedure from tRPC init it's going to be a mutation and in here we're going to execute a function in the
5:47:355 hours, 47 minutes, 35 secondsparams of that function you can extract context Next. And then what you can do is return Prisma from lib database.workflow.create.
5:47:485 hours, 47 minutes, 48 secondsOpen the data object. Give it a name of to-do. And let's go ahead and give it user ID of context.
5:47:585 hours, 47 minutes, 58 secondsDo user do ID. Just like that. That's all the things we have to pass in order to create a new procedure.
5:48:105 hours, 48 minutes, 10 secondsNow I do want to slightly modify this by not having to write to-do for the name.
5:48:185 hours, 48 minutes, 18 secondsWe can do that by installing a very simple package mpm install random word
5:48:255 hours, 48 minutes, 25 secondsslugs. It's a nice little package which I often use in my projects to very simply just generate random words which looks familiar to what big apps do.
5:48:375 hours, 48 minutes, 37 secondsGenerate slug from random word slugs.
5:48:425 hours, 48 minutes, 42 secondsYou can configure this generate slug function quite extensively actually, but I will just keep it to three words. As
5:48:495 hours, 48 minutes, 49 secondssimple as that. Now that we have the workflows router, we actually have to go back inside of our underscore app folder
5:48:575 hours, 48 minutes, 57 secondsin source drpc routers and we get to finally clean this up. Let's remove everything inside. So just an empty app
5:49:075 hours, 49 minutes, 7 secondsrouter and just map workflows to be workflows router
5:49:145 hours, 49 minutes, 14 secondslike this. And then finally, you can remove all the unused things from here.
5:49:215 hours, 49 minutes, 21 secondsThat includes the base procedure as well as the two other procedures.
5:49:265 hours, 49 minutes, 26 secondsThere we go. And now we have just a simple create procedure here.
5:49:345 hours, 49 minutes, 34 secondsNow let's go ahead and add the delete procedure which I like to map as remove instead of delete simply because delete
5:49:425 hours, 49 minutes, 42 secondsis a reserved keyword in JavaScript. Uh so I just like I feel safer using
5:49:495 hours, 49 minutes, 49 secondsremove. So let's go ahead and add a protected procedure here as well. Mutation.
5:49:565 hours, 49 minutes, 56 secondsAnd again we execute a function here.
5:49:595 hours, 49 minutes, 59 secondsAnd let's go ahead and simply destructure context from here. And let's return prisma.workflow
5:50:075 hours, 50 minutes, 7 secondsdelete where and let's go ahead and do user ID
5:50:145 hours, 50 minutes, 14 secondsmatches context out user ID. So only the user who actually uh created this workflow can be the one to delete it.
5:50:255 hours, 50 minutes, 25 secondsBut the only problem with this wear query is that user ID doesn't make a workflow unique. So we also have to add something before we define the mutation.
5:50:375 hours, 50 minutes, 37 secondsSo besides mutation, we are also going to have dotinput and that's going to be
5:50:445 hours, 50 minutes, 44 secondsusing zod. So make sure you add z from zod zod.object
5:50:505 hours, 50 minutes, 50 secondsid z.r like this. And then besides the context you will also have the input and then
5:50:575 hours, 50 minutes, 57 secondsyou can assign the ID to be input do ID and this will then attempt to delete the
5:51:055 hours, 51 minutes, 5 secondsworkflow using this ID and the currently logged in user. So if there is a mismatch between the two it's going to
5:51:135 hours, 51 minutes, 13 secondsfail either because the ID is not correct or because we don't have permission to delete this because we are not the person who created it. we are
5:51:215 hours, 51 minutes, 21 secondsnot the author of the workflow. So yes, you can do that very easily by just properly querying inside of Prisma. You
5:51:295 hours, 51 minutes, 29 secondsdon't have to first query it by ID and then check if the user ID matches except if you want to throw specific errors.
5:51:375 hours, 51 minutes, 37 secondsBut for now, this is okay.
5:51:405 hours, 51 minutes, 40 secondsAnd now let's go ahead and let's create a simple uh very specific route which I'm going to call update name. So update
5:51:495 hours, 51 minutes, 49 secondsname again a protected procedure with an input here. So Z.Object
5:51:575 hours, 51 minutes, 57 secondsand it's going to accept an ID just as the previous one did but also a name
5:52:055 hours, 52 minutes, 5 secondswith a minimum of value of one. So at least something has to be passed. And again it's going to be a mutation.
5:52:145 hours, 52 minutes, 14 secondsLet's go ahead and dstructure the context from here.
5:52:185 hours, 52 minutes, 18 secondsAnd then in here return Prisma workflow update where and data is what we need in the
5:52:275 hours, 52 minutes, 27 secondswhere make the ID be input do ID which we also need to the structure from here
5:52:345 hours, 52 minutes, 34 secondsand then we can properly do it here and user ID context out user ID and the data
5:52:405 hours, 52 minutes, 40 secondswill very simply just update the name and just like that we've created a secure author authorized and
5:52:485 hours, 52 minutes, 48 secondsauthenticated endpoint to update a workflow name. I am very purposely separating just the name update because
5:52:575 hours, 52 minutes, 57 secondslater updating the nodes will be a little bit more specific and I think it's smarter to separate these two
5:53:055 hours, 53 minutes, 5 secondsendpoints to keep them simple and well not exactly to keep them simple but just to keep them one for each purpose. It's
5:53:135 hours, 53 minutes, 13 secondseasier to maintain this way. And now let's go ahead and let's do get one here.
5:53:205 hours, 53 minutes, 20 secondsSo get one will be a protected procedure.
5:53:265 hours, 53 minutes, 26 secondsAnd in let's go ahead and just add a query here.
5:53:305 hours, 53 minutes, 30 secondsAnd we can also extract the context here. And let's just do
5:53:375 hours, 53 minutes, 37 secondsreturn prisma.workflow workflow dot find unique which means it will either find
5:53:465 hours, 53 minutes, 46 secondsthis or it will throw an error and then where we're also missing an input. So let me just copy the input from my
5:53:545 hours, 53 minutes, 54 secondsremove procedure because we are looking for a very specific one right. So we need the id
5:54:015 hours, 54 minutes, 1 secondwhere id is input do id user id is context out user id like this
5:54:115 hours, 54 minutes, 11 secondsand then let's go ahead and copy this and change this to be get many for this one. We don't need an input now. We will
5:54:195 hours, 54 minutes, 19 secondsneed it later for all the various querying like searching and things. Uh but for now we can just do context
5:54:295 hours, 54 minutes, 29 secondsfind many and change this. So it will now load all of this users workflows. So
5:54:375 hours, 54 minutes, 37 secondsthis is obviously a simplified version because we will have pagionation too. Right now this doesn't have pagionation.
5:54:445 hours, 54 minutes, 44 secondsIt doesn't have anything but we will uh do that later. For now, I just want to have all the uh methods here. And I
5:54:525 hours, 54 minutes, 52 secondsthink this is enough for us to start testing these routes.
5:54:575 hours, 54 minutes, 57 secondsSo what I want to do now is for each of these actions, I want to create an equivalent hook that we can call. So
5:55:055 hours, 55 minutes, 5 secondsinside of source features workflows where we just created the server, let's go ahead and create hooks folder. And inside of here I will add use-workflows.ts.
5:55:185 hours, 55 minutes, 18 secondsAnd let's start with a very simple one.
5:55:205 hours, 55 minutes, 20 secondsUh hook to fetch all workflows using suspense. So I like to add comments like this. Export const use suspense
5:55:305 hours, 55 minutes, 30 secondsworkflows. I like to be specific because it's important for developers to know whether they are using suspense or
5:55:385 hours, 55 minutes, 38 secondsnot. So, TRPC use TRPC and let's go ahead and just return use suspense query
5:55:495 hours, 55 minutes, 49 secondslike this. TRPC.workflows do get manyquery options
5:55:575 hours, 55 minutes, 57 secondslike this. So this will now be used as a reusable use suspense workflows hook
5:56:055 hours, 56 minutes, 5 secondswhich fetches all the ho all the workflows using suspense which means it needs to be wrapped in the proper
5:56:125 hours, 56 minutes, 12 secondshydration boundary and suspense and all of those things. We are basically going to be using uh the third option of our
5:56:215 hours, 56 minutes, 21 secondswhoops the third option which we discussed if you remember in TRPC chapter we explored TRPC with server and
5:56:305 hours, 56 minutes, 30 secondsclient using prefetch. So for that exact scenario is what we are preparing right now. We are going to use the best of
5:56:375 hours, 56 minutes, 37 secondsboth worlds if you remember. So for now I think that just this one actually might be enough. So, I'm going to stop
5:56:455 hours, 56 minutes, 45 secondshere because I just want to start demonstrating how we're going to use this. So, let's go ahead now inside of
5:56:535 hours, 56 minutes, 53 secondsworkflows here, create a new folder called components. And inside of here, create workflows.tsx like this.
5:57:045 hours, 57 minutes, 4 secondsAnd then let's go ahead and export const.
5:57:105 hours, 57 minutes, 10 secondsAnd let's do const workflows. Use suspense workflows
5:57:175 hours, 57 minutes, 17 secondsfrom dot dot/hooks use workflows like this. And then let's go ahead and let's return a very simple.
5:57:285 hours, 57 minutes, 28 secondsLet's just do a paragraph JSON stringify workflows data.
5:57:365 hours, 57 minutes, 36 secondsand just some other things here to make it format in a prettier way
5:57:435 hours, 57 minutes, 43 secondslike this. So we are later going to create this in a proper component but for now it's just going to be an indicator for any data.
5:57:525 hours, 57 minutes, 52 secondsNow let's go ahead and render this within a workflows page. So I'm going to go inside of source app folder dashboard
5:58:005 hours, 58 minutesrest workflows page.dsx DSX.
5:58:065 hours, 58 minutes, 6 secondsAnd now in here, I'm going to go ahead and prefetch my workflows. Now, the way I'm going to prefetch my workflows is by
5:58:155 hours, 58 minutes, 15 secondsuh creating a reusable prefetch util just like I did with my hooks. So,
5:58:225 hours, 58 minutes, 22 secondsinside of features workflows, we have the server folder. And let's just add prefetch.ts
5:58:305 hours, 58 minutes, 30 secondsinside because this is relating to the server side. Uh and let me just see I think yes one thing that we are missing
5:58:385 hours, 58 minutes, 38 secondshere is let me just try and uh quickly check inside of TRPC
5:58:465 hours, 58 minutes, 46 secondsserver. Yes we only added caller we didn't create uh any other helpers here.
5:58:545 hours, 58 minutes, 54 secondsSo let me quickly open tRPC docs and hopefully we can find what I'm looking for. So because I want you to see exactly where I find my information.
5:59:075 hours, 59 minutes, 7 secondsSo click on tanstack react query and then click on server components and we already followed this entire process
5:59:155 hours, 59 minutes, 15 secondshere. But if you scroll a bit down you will see these two hydrate client and prefetch.
5:59:265 hours, 59 minutes, 26 secondsSo if you can find this copy it and paste it. If you can't pause the screen and you will be able to see uh what I'm
5:59:355 hours, 59 minutes, 35 secondstalking about. So you can also create a prefetch and hydrate client helper functions to make it a bit more concise and reusable. So that's the purpose
5:59:435 hours, 59 minutes, 43 secondsbecause uh very often we're going to use both of them. So let's you know save some time here. So in the server here
5:59:515 hours, 59 minutes, 51 secondsI'm going to add the prefetch function and we need to import tRPC query options
5:59:585 hours, 59 minutes, 58 secondsfrom TRPC tanstack react query like this. So make sure you have that and now
6:00:046 hours, 4 secondsyou have prefetch right here and then let's also copy hydrate client function.
6:00:116 hours, 11 secondsFor this it is very important that your server file has tsx extension. if it doesn't change it. So, make sure you can
6:00:216 hours, 21 secondspause the screen again if you don't have this. The only thing we had to import was DRPC query options. And then below
6:00:276 hours, 27 secondsthis, add hydrate client. And in here, import the hydration boundary from tanstack react query and dehydrate from
6:00:376 hours, 37 secondstanstack react query. So, let me show you hydration boundary from tanstack react query and dehydrate from the same
6:00:456 hours, 45 secondsplace. So, make sure you have this and make sure you have this. Again, you can pause the screen if you were not
6:00:536 hours, 53 secondsable to find it in the documentation, but it should be there. Great.
6:00:596 hours, 59 secondsNow that we have that, let's go ahead and create our prefetch here. So, the first thing I want to do is I want to import type infer input from TRPC
6:01:096 hours, 1 minute, 9 secondstanstack react query. And then I'm going to import prefetch from TRPC server as well as TRPC itself. Then I'm going to
6:01:186 hours, 1 minute, 18 secondscreate a type input which will infer the input type of TRPC workflows get many.
6:01:266 hours, 1 minute, 26 secondsSo I have the exact type that will be accepted for my get many. At the moment
6:01:336 hours, 1 minute, 33 secondsthis makes no sense because we don't have an input. But later it when we add an input which will have you know search
6:01:416 hours, 1 minute, 41 secondsand things like that it will make sense because this input will be exactly typed as we need it. So we don't so we never
6:01:506 hours, 1 minute, 50 secondshave to repeat ourselves. So let's go ahead and add a prefetch all workflows
6:01:566 hours, 1 minute, 56 secondsutil export const prefetch workflows accepting the params which are input and
6:02:046 hours, 2 minutes, 4 secondsreturn prefetch.workflows get manyquery options and pass in the params.
6:02:166 hours, 2 minutes, 16 secondsSo this now works right the the query options don't exist. They are nothing, right? It's the same thing if I do this.
6:02:256 hours, 2 minutes, 25 secondsBut imagine I changed this to be input here. Z do.
6:02:316 hours, 2 minutes, 31 secondsSearch Z do. Something like that. You can see that now it's expecting that. But I
6:02:386 hours, 2 minutes, 38 secondsdon't want to remember which are the props that I've passed. So I created this which will automatically infer that. You can see how it added search.
6:02:466 hours, 2 minutes, 46 secondsSo I can safely just pass params here. So even if I remove it, it still works.
6:02:536 hours, 2 minutes, 53 secondsI hope that clears it up. It's not fully clear because we don't have any uh input here. But that's how you can infer uh
6:03:016 hours, 3 minutes, 1 secondthe input type for any TRPC procedure that you have, which is quite useful because imagine if I had to manually add
6:03:096 hours, 3 minutes, 9 secondssearch and then string here, right? And then imagine I had a million of these.
6:03:136 hours, 3 minutes, 13 secondsSo it's just easier to reuse the types even if they're completely empty. and the type of void. So now we have
6:03:206 hours, 3 minutes, 20 secondsprefetch workflows and I can go back inside of my dashboard rest workflows page.tsx
6:03:276 hours, 3 minutes, 27 secondshere with the workflows paragraph. And now what I'm going to do is just do prefetch workflows
6:03:366 hours, 3 minutes, 36 secondslike this. I don't have to pass anything here, but usually this is where params would be accepted.
6:03:436 hours, 3 minutes, 43 secondsAnd now that they are pre-fetched, I also have to properly render these by adding hydrate client from tRPC server
6:03:516 hours, 3 minutes, 51 secondswhich is another util we just added. And in here let's add the error boundary.
6:03:596 hours, 3 minutes, 59 secondsNow we actually don't have this. So don't import it from anywhere. The place to import this is a third-party package.
6:04:086 hours, 4 minutes, 8 secondsSo let me quickly install it. npm install react error boundary. Uh as far as I know, it is the most popular
6:04:156 hours, 4 minutes, 15 secondspackage for uh react error boundary. So let's now import error boundary
6:04:236 hours, 4 minutes, 23 secondsfrom react error boundary like this and pass in the fallback here to be error
6:04:316 hours, 4 minutes, 31 secondsand then add suspense from react simply because we are using
6:04:386 hours, 4 minutes, 38 secondsuh use suspense workflows so we need to wrap that component within suspense and for the fallback here let's go ahead and
6:04:476 hours, 4 minutes, 47 secondslet's use loading And finally, let's render the workflows list. So, make sure you imported
6:04:556 hours, 4 minutes, 55 secondsworkflows list from features workflows components workflows.
6:05:016 hours, 5 minutes, 1 secondAnd inside of workflows list, we are using use suspense workflows. So, because of that, we can safely wrap
6:05:086 hours, 5 minutes, 8 secondssuspense around this. And if it fails, it will show the error. And we already prefetched this in the server component which is asynchronous and loads faster.
6:05:196 hours, 5 minutes, 19 secondsSo it will have that effect that we first learned in chapter 3 where I demonstrate you how this is the best of
6:05:266 hours, 5 minutes, 26 secondsboth worlds and you will get very uh good results here. So let's refresh workflows and we should just see either
6:05:346 hours, 5 minutes, 34 secondsan empty array or an error as I am getting. Let's see why. attempted to
6:05:406 hours, 5 minutes, 40 secondscall you TRPC from the server but ustrpc is on the client. I think what I forgot is in the workflows list I have to mark this as use client.
6:05:526 hours, 5 minutes, 52 secondsThere we go. And now let's refresh and try this again. And there we go. You saw the loading fallback and then an empty
6:06:006 hours, 6 minutesarray. Great. Now let's go ahead and add an ability to create a workflow.
6:06:076 hours, 6 minutes, 7 secondsSo the way our workflows container here is going to look like is exactly the same how our credentials and how our
6:06:166 hours, 6 minutes, 16 secondsexecutions container will look like. So in my opinion it makes sense to start creating some reusable components here.
6:06:246 hours, 6 minutes, 24 secondsThe way we are going to do that is by going inside of source components and in here create entity views. DSX or maybe
6:06:356 hours, 6 minutes, 35 secondsentity components would be better. So entity refers to workflow credential
6:06:426 hours, 6 minutes, 42 secondsexecution right because all of them will reuse these components. So I want to
6:06:486 hours, 6 minutes, 48 secondsstart by having one called entity header
6:06:546 hours, 6 minutes, 54 secondsand entity header is going to have a couple of props. So let's define entity header props.
6:07:046 hours, 7 minutes, 4 secondsLet's go ahead and define this. So entity header props is an interface
6:07:106 hours, 7 minutes, 10 secondsand it's going to accept the following props.
6:07:156 hours, 7 minutes, 15 secondsTitle optional description optional new button label optional disabled prop and
6:07:226 hours, 7 minutes, 22 secondsoptional is creating boolean. And then let's extend it even further by giving it some very specific combinations of
6:07:316 hours, 7 minutes, 31 secondstypes. So if the user passes on new which is a type of just an arrow
6:07:386 hours, 7 minutes, 38 secondsfunction just a void in that case new button href
6:07:446 hours, 7 minutes, 44 secondsshould be never like this. And let me just check if I am doing this correctly.
6:07:516 hours, 7 minutes, 51 secondsThis should be a type apologies not an interface. And yes, do this. So if we pass on new, it means that inside of the
6:08:016 hours, 8 minutes, 1 secondentity header, the add button as in add new workflow will be done using a
6:08:076 hours, 8 minutes, 7 secondsfunction. And then we can we should not be able to pass the link for the new button screen.
6:08:166 hours, 8 minutes, 16 secondsBut if someone passes new button href first and it becomes a type of string in that case on new should be a type of never.
6:08:276 hours, 8 minutes, 27 secondsSo it can only be one or the other. And let's also do on new to be never and new
6:08:356 hours, 8 minutes, 35 secondsbutton href to be never. So one of them is required. It's just up to the developer what they're going to choose.
6:08:446 hours, 8 minutes, 44 secondsSo now that we have that, let's go ahead and let's extract all of those props.
6:08:496 hours, 8 minutes, 49 secondsTitle, description, on new, new button, href, new button label disabled, and is creating. And in here, let's go ahead
6:08:596 hours, 8 minutes, 59 secondsand let's return a div with a class name flex flex row items center justify
6:09:096 hours, 9 minutes, 9 secondsbetween gap x of four. Another div here with a class name flex flex column and
6:09:196 hours, 9 minutes, 19 secondsthen an h1 element which will render the title. And now let's give this H1
6:09:266 hours, 9 minutes, 26 secondselement text large on medium text extra large and font semibold.
6:09:346 hours, 9 minutes, 34 secondsAnd now before we do anything with the rest of the props, I want to reuse this.
6:09:406 hours, 9 minutes, 40 secondsI actually meant to say I want to use this. So instead of features workflows components workflows.tsx,
6:09:496 hours, 9 minutes, 49 secondslet's go ahead and let's create the workflows header. So export const workflows header will accept only disabled.
6:10:026 hours, 10 minutes, 2 secondsUh did I do this correctly?
6:10:076 hours, 10 minutes, 7 secondsLet me just check. What am I doing incorrectly here?
6:10:126 hours, 10 minutes, 12 secondsI think it's just because I didn't like complete it. Yeah. Okay. So in here let's return
6:10:216 hours, 10 minutes, 21 secondsempty fragment entity header from entity components which we just created. And in
6:10:306 hours, 10 minutes, 30 secondshere I'm going to pass the title to be workflows like this and a description to
6:10:366 hours, 10 minutes, 36 secondsbe create and manage your workflows and and then you will see what I was talking about. If you pass on a new
6:10:446 hours, 10 minutes, 44 secondswhich can be a function in that case new button href should not be passable.
6:10:516 hours, 10 minutes, 51 secondsYou can see I have an error right so you can only do one of the two and if you pass new button href then you can't pass
6:11:006 hours, 11 minuteson new because this will be like a workflows new. If you want that then you will be able to pass this. So this is
6:11:086 hours, 11 minutes, 8 secondsjust like a little exercise on having good developer experience when writing your components.
6:11:166 hours, 11 minutes, 16 secondsSo for on new I will just do this now.
6:11:196 hours, 11 minutes, 19 secondsNew button label is going to be new workflow disabled
6:11:276 hours, 11 minutes, 27 secondswill be disabled and is creating is going to be false. and keep it inside a fragment for now.
6:11:366 hours, 11 minutes, 36 secondsEven though it makes no sense, it's simply because we will add some other elements later. So that's how we're going to reuse these entity headers,
6:11:456 hours, 11 minutes, 45 secondsright? Later when we have credentials, we're going to reuse it and have the title credentials description create and manage your credentials. New button
6:11:526 hours, 11 minutes, 52 secondslabel, new credential. So we don't have to write this entire entity header a million times, right? I think after you see how we're going to use this, you
6:12:006 hours, 12 minuteswill agree with me. Now let's check if we have the description. So we are now completing the entity header component.
6:12:066 hours, 12 minutes, 6 secondsIf we have the description, let's add a paragraph here and let's render the description inside. And let's give the
6:12:146 hours, 12 minutes, 14 secondsparagraph a class name of text extra small on medium text small text muted foreground.
6:12:256 hours, 12 minutes, 25 secondsAnd then let's check if we have on new and if we don't have new button href
6:12:336 hours, 12 minutes, 33 secondsthat means we are intending to use this button which we have to import from forward slash UI button
6:12:416 hours, 12 minutes, 41 secondsright because we are already in the components folder.
6:12:456 hours, 12 minutes, 45 secondsSo if we have that in that case it means that plus icon should be rendered here.
6:12:546 hours, 12 minutes, 54 secondsMake sure you added this from Lucid React. Give it a class name size four.
6:13:036 hours, 13 minutes, 3 secondsLet me just remove the extra space here. And let's render new button label.
6:13:116 hours, 13 minutes, 11 secondsAnd now let's go ahead and give this disabled
6:13:176 hours, 13 minutes, 17 secondsis creating or disabled. size small on click on new
6:13:256 hours, 13 minutes, 25 secondsand just to make this more readable I will collapse these props but basically you see the point if the user passes on
6:13:336 hours, 13 minutes, 33 secondsnew then we're going to immediately execute that function uh when this button has been clicked and we also
6:13:426 hours, 13 minutes, 42 secondsshould have a fallback for the new button label or maybe we don't how about we just uh make the new button label
6:13:516 hours, 13 minutes, 51 secondsrequired. This way we don't have to have a fallback. It will just be required for everyone. And now let's copy and let's
6:13:586 hours, 13 minutes, 58 secondspaste this. And let's reverse the situation. So if you have new button href and you don't have on new, in that
6:14:066 hours, 14 minutes, 6 secondscase the button uh will never be disabled. It will not have on click.
6:14:116 hours, 14 minutes, 11 secondsInstead, it will have as child. And we're going to use link from next link to redirect the user to an href which
6:14:196 hours, 14 minutes, 19 secondswill be new button href. And let's prefetch that so it's faster. So make sure you've added a link from next link.
6:14:276 hours, 14 minutes, 27 secondsSo that is how this is going to work.
6:14:306 hours, 14 minutes, 30 secondsBasically, if inside of the entity header, someone passes new button href, in that case, we're going to serve the
6:14:386 hours, 14 minutes, 38 secondsbutton as a link to redirect to wherever we intend to. Or if we have an exact function to create a new thing, we're just going to execute that function.
6:14:496 hours, 14 minutes, 49 secondsGreat. So, that will be our uh reusable entity header.
6:14:546 hours, 14 minutes, 54 secondsNow we have to create two more uh reusable entity components here. Uh but I think it would be a good idea to start
6:15:036 hours, 15 minutes, 3 secondsto render this simply so you can see what we are doing because it's quite hard to develop this way when you don't really know what you're doing. So after
6:15:126 hours, 15 minutes, 12 secondsworkflows header let's go ahead and do export const workflows container here.
6:15:216 hours, 15 minutes, 21 secondsAnd inside of here, let's simply render the children. Give it a type like this.
6:15:326 hours, 15 minutes, 32 secondsAnd inside of here, we have to render entity container which will render the children and give
6:15:406 hours, 15 minutes, 40 secondsit a header option which will be workflows header like this. and then give it search which
6:15:476 hours, 15 minutes, 47 secondswill be an empty fragment and give it pagionation which will be an empty fragment as well. So in order to see our
6:15:566 hours, 15 minutes, 56 secondsworkflows header we have to create the entity container first uh which thankfully isn't too difficult. So let's
6:16:056 hours, 16 minutes, 5 secondsgo back inside of the entity components here and let's do export con entity container.
6:16:156 hours, 16 minutes, 15 secondsLet's go ahead and return a div and let's import entity container here just so we stop getting the error for
6:16:236 hours, 16 minutes, 23 secondsits existence. And now let's go ahead and properly uh give it the props. So I'm just going to copy the type here.
6:16:326 hours, 16 minutes, 32 secondsI'm going to add it here. And I'm going to change this to be entity container props. Now the props will be
6:16:416 hours, 16 minutes, 41 secondsthankfully a little bit simpler. So we can just add these
6:16:486 hours, 16 minutes, 48 secondsand let me go ahead and just add prefix to all of this. So it's react.react node.
6:16:556 hours, 16 minutes, 55 secondsSo children optional header optional search optional pageionation. And let's just assign entity container props.
6:17:056 hours, 17 minutes, 5 secondsThere we go. Let's extract all of the props. Children, header, search, and pageionation here. And then finally in
6:17:136 hours, 17 minutes, 13 secondshere let's render the header. Now let's give the top diva class name padding for
6:17:196 hours, 17 minutes, 19 secondsmdpx of 10 md py of six height full. And
6:17:276 hours, 17 minutes, 27 secondslet's give this one MX auto MX uh max width screen extra large
6:17:376 hours, 17 minutes, 37 secondsfull width flex flex column gap Y8 and full height like this. And now that we
6:17:476 hours, 17 minutes, 47 secondshave the workflows container which renders the entity container which we just developed here and allowed it to
6:17:546 hours, 17 minutes, 54 secondsrender the header for which we used workflows header for which we used entity header.
6:18:046 hours, 18 minutes, 4 secondsNow we can finally go inside of source app dashboard rest workflows page.
6:18:156 hours, 18 minutes, 15 secondsAnd in this page we can now wrap the entire thing in workflows container like this.
6:18:256 hours, 18 minutes, 25 secondsImport workflows container from features workflows components workflows. And this is what you're going to see. Workflows.
6:18:326 hours, 18 minutes, 32 secondscreate and manage your workflows and a new workflow button. So this will now be a nice chunk of reusable code for each
6:18:416 hours, 18 minutes, 41 secondsof these entities, credentials, executions, right? That's why we are spending a little bit more time on it than we usually would is to create a
6:18:506 hours, 18 minutes, 50 secondsreusable structure. Right? So we have this entity container which has this exact layout that we need. And if we need a very specific header, we can just
6:18:586 hours, 18 minutes, 58 secondspass a different header here. So now that we have workflows header, uh let me just see one thing. One thing that I'm
6:19:056 hours, 19 minutes, 5 secondsnoticing is that uh I'm no longer seeing the body here and that is because of uh
6:19:146 hours, 19 minutes, 14 secondsentity container. So let's finish entity container. So we can actually see the body uh that we are passing here.
6:19:226 hours, 19 minutes, 22 secondsSo after the header here we have another div with a class name flex flex column
6:19:296 hours, 19 minutes, 29 secondsgap y4 and height full and inside of here we should render search if it
6:19:366 hours, 19 minutes, 36 secondsexists and we should render the children and below that we should render the pageionation and once you save this uh
6:19:446 hours, 19 minutes, 44 secondsyou can see that we pass the children here and when I refresh I think that I should start seeing uh oh I'm seeing
6:19:526 hours, 19 minutes, 52 secondsit's just right here at the bottom. So, not sure if that is uh a bug. Let me just check entity here. Just a second.
6:20:066 hours, 20 minutes, 6 secondsHard to say if it's a bug because we don't really have proper data here. Let me just change the workflows list into a
6:20:146 hours, 20 minutes, 14 secondsdiv and give this a class name of flex one justify center items center.
6:20:226 hours, 20 minutes, 22 secondsUh will this make it any better? I'm not so sure. And then in here maybe a paragraph wrapping this.
6:20:356 hours, 20 minutes, 35 secondsOops.
6:20:386 hours, 20 minutes, 38 secondsAll right. Um, yeah, I think something might be wrong here or maybe just on mobile mode. Uh, I'm not really sure.
6:20:476 hours, 20 minutes, 47 secondsI'm going to debug just a little bit.
6:20:516 hours, 20 minutes, 51 secondsRight. So, first thing that I can see that's missing here is another flex. So, if I add another flex here to my
6:20:586 hours, 20 minutes, 58 secondsworkflows list, what changes is that now it's centered, but for some reason all the way down here, and I want it to be here.
6:21:076 hours, 21 minutes, 7 secondsSo something in the workflows header maybe entity header here could be taking
6:21:156 hours, 21 minutes, 15 secondstoo much space. Let me just check by adding bg red 500. Great. So header is
6:21:226 hours, 21 minutes, 22 secondstaking only the space it needs. Let's take a look at the entity container here.
6:21:286 hours, 21 minutes, 28 secondsMX auto flex flex call header. All right.
6:21:376 hours, 21 minutes, 37 secondsFlex flex call he hide full.
6:21:406 hours, 21 minutes, 40 secondsAh yes there is a bug. This container here which we have added to entity container is not supposed to end here.
6:21:486 hours, 21 minutes, 48 secondsIt's supposed to end at the bottom.
6:21:516 hours, 21 minutes, 51 secondsThere we go. Okay. I had a feeling something is off. I just wasn't sure because we don't have you know proper
6:21:586 hours, 21 minutes, 58 secondsdata here. But yes, this div MX auto max width screen extra large width full flex
6:22:056 hours, 22 minutes, 5 secondsflex gap Y height full is supposed to encapsulate all elements the header the
6:22:126 hours, 22 minutes, 12 secondssearch the children and the pageionation.
6:22:166 hours, 22 minutes, 16 secondsSo after we do that you can see it works nice and we no longer have that weird thing at the bottom. You can no longer
6:22:256 hours, 22 minutes, 25 secondsscroll there. So that the fix was in entity container. Make sure that this div doesn't end after header. It should
6:22:346 hours, 22 minutes, 34 secondsend here. Right? So now we can close entity components.
6:22:416 hours, 22 minutes, 41 secondsAnd in the workflows list, all we did is turn this into a div. And we have centered it just so it's easier to find
6:22:496 hours, 22 minutes, 49 secondsit here. But now what I want to do is an ability to click here and for a new workflow to appear.
6:22:586 hours, 22 minutes, 58 secondsFor that we're going to go back inside of our use workflows hook where we added use suspense workflows. And now let's create a hook to create a new workflow.
6:23:116 hours, 23 minutes, 11 secondsSo, let me close this. Export const use create workflow hook.
6:23:186 hours, 23 minutes, 18 secondsAnd inside of here, let's go ahead and let's add three things.
6:23:256 hours, 23 minutes, 25 secondsThe router, the query client, and use the RPC. You can import use router from next navigation, and you can import use
6:23:336 hours, 23 minutes, 33 secondsquery client from tanstack query. So, make sure you have added all of these.
6:23:406 hours, 23 minutes, 40 secondsNow that you have that, let's return use mutation here.
6:23:446 hours, 23 minutes, 44 secondsAnd looks like we also need use mutation from tanstack react query. So just make sure you have added use mutation from
6:23:516 hours, 23 minutes, 51 secondstanstack react query. Inside of use mutation, we're going to add tRPCworkflows.create.
6:24:016 hours, 24 minutes, 1 secondAnd let's actually collapse it like this so it's easier to look at. Let's pass in the mutation options here. On success.
6:24:096 hours, 24 minutes, 9 secondsWhoops. On success.
6:24:146 hours, 24 minutes, 14 secondsLet me just properly do this. On success, we get the data that was just created, the new workflow. And let's
6:24:226 hours, 24 minutes, 22 secondsfirst send a toast from Soner.
6:24:326 hours, 24 minutes, 32 secondswhich will say inside of template literal workflow data
6:24:406 hours, 24 minutes, 40 secondsname created. So it will tell you the exact name of the workflow because names are randomly generated so that you know
6:24:486 hours, 24 minutes, 48 secondswhich was the newest one. After that it's going to push to again template literal forward slashworkflows
6:24:576 hours, 24 minutes, 57 secondsand then data ID. So it's going to redirect to that newly created workflow.
6:25:026 hours, 25 minutes, 2 secondsAnd after that, let's go ahead and do query client invalidate queries. TRPC
6:25:096 hours, 25 minutes, 9 secondsworkflows get many query options. So we are going to reinvalidate our current
6:25:166 hours, 25 minutes, 16 secondsstate of get many. So the new one is loaded immediately. And on error here, let's get the error. And let's do toast
6:25:256 hours, 25 minutes, 25 secondserror failed to create workflow. And let's pass in error dot message like so.
6:25:386 hours, 25 minutes, 38 secondsSo now we have our use create workflow.
6:25:416 hours, 25 minutes, 41 secondsSo let's go ahead and use it inside of the workflow header.
6:25:466 hours, 25 minutes, 46 secondsNow let's go ahead and add our newly created create workflow hook.
6:25:526 hours, 25 minutes, 52 secondsuse create workflow. So let me show you exactly where I imported that from. From hooks use workflows the same place I've
6:26:026 hours, 26 minutes, 2 secondsimported use suspense workflows. This is inside of our workflows.tsx file. Let's go ahead and do const handle
6:26:106 hours, 26 minutes, 10 secondscreate workflow. Mutate pass in undefined as
6:26:166 hours, 26 minutes, 16 secondsthe first argument. And on error here, we're going to handle error a little bit specifically. So for now, let's just
6:26:256 hours, 26 minutes, 25 secondsconsole error, but later we're going to change this. Let me in fact add a to-do here. To-do open upgrade model.
6:26:366 hours, 26 minutes, 36 secondsWe could have technically done that directly in here. But the question is, you know, how do you want that to happen or not?
6:26:466 hours, 26 minutes, 46 secondsSome could even argue that I shouldn't do router push within a reusable use
6:26:536 hours, 26 minutes, 53 secondscreate workflow as well because when it comes to developer experience this shouldn't have any unexpected side
6:27:016 hours, 27 minutes, 1 secondeffects and redirecting to the newly created one actually is an unexpected side effect.
6:27:106 hours, 27 minutes, 10 secondsSo h yeah perhaps we shouldn't do it. I don't know for now I will leave it like this. Uh and let me just go ahead and
6:27:186 hours, 27 minutes, 18 secondstest this right. So I will now just pass in handle create here and is creating will be become create workflow is
6:27:266 hours, 27 minutes, 26 secondspending and let's try it out now. So at the moment you can see that I'm using server
6:27:356 hours, 27 minutes, 35 secondsside prefetching and client side use suspense to load this. And when I click new workflow, that will allow me to both
6:27:446 hours, 27 minutes, 44 secondsleverage the speed of server components for the initial load, but allow me client side hooks for reinvalidation
6:27:526 hours, 27 minutes, 52 secondsbecause this wouldn't be possible if we only used server components. So when I click new workflow, there we go. You can
6:27:596 hours, 27 minutes, 59 secondssee how it immediately uh updated the list of my workflows and redirected me to that specific workflow ID. And now I
6:28:086 hours, 28 minutes, 8 secondscan see them here and they are cached, right? So you can see how fast it is when I just go back here. He doesn't have to load them. Let's try again.
6:28:176 hours, 28 minutes, 17 secondsImmediately works and immediately the list has been updated. Amazing. So there's one more thing I want to do to
6:28:256 hours, 28 minutes, 25 secondswrap up this chapter simply because it's already been 45 minutes and that is handle this error right here.
6:28:366 hours, 28 minutes, 36 secondsSo let's do that by doing the following.
6:28:416 hours, 28 minutes, 41 secondsInside of source components, let me extract this. Let's go ahead and create upgrade model.tsx.
6:28:536 hours, 28 minutes, 53 secondsLet's mark it as use client. And let's import all the alert components from chats UI. dialogue, action, cancel,
6:29:036 hours, 29 minutes, 3 secondscontent, description, footer, header, and title. So, we have all of these from chapter one when we added all components
6:29:106 hours, 29 minutes, 10 secondsfrom chats. And let's also import AL client from lib al client. Let's create
6:29:186 hours, 29 minutes, 18 secondsthe interface upgrade model props which receives open and unopen boolean change.
6:29:276 hours, 29 minutes, 27 secondsAnd then finally, let's export our component upgrade model. So it will
6:29:336 hours, 29 minutes, 33 secondsaccept these two props and it maps them to this. Let me collapse it so it's easier for you to understand the structure. There we go.
6:29:436 hours, 29 minutes, 43 secondsNow instead of this upgrade model, we are very simply just going to return all of the alert dialogue
6:29:506 hours, 29 minutes, 50 secondsuh compositions. So alert dialogue itself with open and nonopen change props. Then we're going to have alert
6:29:596 hours, 29 minutes, 59 secondsdialogue content. Then alert dialogue header. Inside of that we're going to have alert dialogue title with a text
6:30:086 hours, 30 minutes, 8 secondsupgrade to pro. After that we're going to have alert dialogue description. And in here just some text. You need an active subscription to perform this
6:30:166 hours, 30 minutes, 16 secondsaction. Upgrade to pro to unlock all features. And then let's go ahead and let's add alert dialogue uh footer, but
6:30:246 hours, 30 minutes, 24 secondswe're going to do that outside of the header here. So alert dialogue footer.
6:30:306 hours, 30 minutes, 30 secondsLet's add a cancel action first. Alert dialogue cancel. And lastly, let's add the upgrade action. So alert dialogue
6:30:396 hours, 30 minutes, 39 secondsaction with onclick which calls outclient checkout with slug pro. We already had this exact scenario inside of our app sidebar.
6:30:526 hours, 30 minutes, 52 secondsSo if it worked here in the sidebar, it should also work here. Just make sure you didn't misspell the slug. And that's it. That is our upgrade model.
6:31:036 hours, 31 minutes, 3 secondsNow that we have that, let's create a uh accompanying hook here. So I'm just going to go inside of source hooks
6:31:136 hours, 31 minutes, 13 secondsand I will create a new hook use upgrade model.tsx.
6:31:206 hours, 31 minutes, 20 secondsI will import tRPC client error from tRPC client. I will import use state
6:31:286 hours, 31 minutes, 28 secondsfrom react and I will import upgrade model from components upgrade model.
6:31:346 hours, 31 minutes, 34 secondsLet's export const use upgrade model.
6:31:396 hours, 31 minutes, 39 secondsLet's define open set open from use state and set it to false by default.
6:31:456 hours, 31 minutes, 45 secondsConst handle error will receive an unknown type of error. We are going to
6:31:526 hours, 31 minutes, 52 secondscheck if error is an instance of tRPC client error and if error.data.code is forbidden.
6:32:046 hours, 32 minutes, 4 secondsIn that case, set the model to open and return true. Otherwise, return false.
6:32:156 hours, 32 minutes, 15 secondsand do const model upgrade model with open prop and on open change prop
6:32:256 hours, 32 minutes, 25 secondsto be set open and return handle error and model
6:32:346 hours, 32 minutes, 34 secondslike this. A very simple use upgrade model hook. And now we can finally go back to our workflows.tsx.
6:32:476 hours, 32 minutes, 47 secondsAnd in here after in the workflows header component after use create workflow add use upgrade model from hooks use upgrade model.
6:33:006 hours, 33 minutesExtract handle handle error and model itself. And now finally you will see the use of this fragment below entity header
6:33:106 hours, 33 minutes, 10 secondsrender model. Actually maybe above it would be a better semantic decision. And instead of this you're just going to
6:33:186 hours, 33 minutes, 18 secondspass the handle error like this. And you can see how the type
6:33:246 hours, 33 minutes, 24 secondsis working right. Perfect. So now this will still not do anything unless you actually go inside of workflows routers.
6:33:376 hours, 33 minutes, 37 secondsSo server routers.ts find create and change protected procedure to premium procedure.
6:33:486 hours, 33 minutes, 48 secondsSo now not only logged in users but also only premium users otherwise forbidden
6:33:576 hours, 33 minutes, 57 secondscode will be thrown. And then inside of use upgrade model we're going to check for forbidden code thrown and open the
6:34:056 hours, 34 minutes, 5 secondsupgrade model. So make sure that you're testing this out on an account which is
6:34:126 hours, 34 minutes, 12 secondsnot premium. So let me go ahead and check. Let me log in.
6:34:206 hours, 34 minutes, 20 secondsI'm going to refresh just to make sure no cash is left. And when I click new workflow, I should now see an error.
6:34:286 hours, 34 minutes, 28 secondsActive subscription required and upgrade to pro text. And when I click upgrade now, I am redirected to the checkout
6:34:376 hours, 34 minutes, 37 secondspage. Amazing. And let me just confirm this on my premium account here. So I
6:34:446 hours, 34 minutes, 44 secondsknow that it is working as expected. New workflow and this should just create the new one and redirect me. Perfect. And
6:34:526 hours, 34 minutes, 52 secondsthis this entire time I've been thinking about should we redirect the user or not? And I think the right decision here
6:35:016 hours, 35 minutes, 1 secondis to redirect them in here. So let's separately handle on success here. Pass
6:35:086 hours, 35 minutes, 8 secondsin the data and let's go ahead and do router.push push workflows
6:35:166 hours, 35 minutes, 16 secondsdata ID and add the const router use router from
6:35:236 hours, 35 minutes, 23 secondsnext navigation here from next navigation. And now go inside of use create workflow inside of your use
6:35:316 hours, 35 minutes, 31 secondsworkflows hook in the workflows feature folder here and remove the router from here and remove the push from here. This
6:35:396 hours, 35 minutes, 39 secondsway this use create workflow has no unexpected side effects. So when you
6:35:466 hours, 35 minutes, 46 secondsspecifically want to redirect you will be able to extend on success once again just like we are doing here. So both of this use create workflow we already have
6:35:556 hours, 35 minutes, 55 secondson success and on error. But since we return the entire use mutation, it
6:36:016 hours, 36 minutes, 1 secondallows us to add very specific onsuccess and on error for a very specific use
6:36:086 hours, 36 minutes, 8 secondswithin workflows header. So this way if I create a new workflow within the header, which I'm doing right now, the
6:36:166 hours, 36 minutes, 16 secondsbehavior is exactly the same. But maybe sometimes I will have new workflow buttons somewhere where I don't want to
6:36:236 hours, 36 minutes, 23 secondsredirect and then I very simply just won't have this. Maybe somewhere I don't want to open the premium model so I just
6:36:326 hours, 36 minutes, 32 secondswon't have this. I think this is a better decision. I think this is a better way to do it. And I just reordered this by length because I like
6:36:416 hours, 36 minutes, 41 secondsit this way. I think it's time to end the chapter here. It's 52 minutes long already. Amazing job you've been doing
6:36:496 hours, 36 minutes, 49 secondshere. And I know this seems a little bit unnecessarily complicated, but trust me, later when you see how quickly we are going to create credentials and
6:36:576 hours, 36 minutes, 57 secondsexecutions by just reusing everything that we just did, you're going to be so thankful that you went through this and
6:37:046 hours, 37 minutes, 4 secondscreated reusable components. So, let me go ahead and end here. Regardless of what I wrote that we should be doing,
6:37:136 hours, 37 minutes, 13 secondsuh, let me go back here. So we updated the workflows schema. We created workflows API for create, read, update
6:37:216 hours, 37 minutes, 21 secondsand delete. 11 workflows CRUD. So let me go ahead and create a new branch here.
6:37:296 hours, 37 minutes, 29 seconds11 workflows CRUD. And let me go ahead and quickly review my changes. I have 14
6:37:376 hours, 37 minutes, 37 secondsuncommitted files. You might have 15 depending if you got any MROs error log
6:37:446 hours, 37 minutes, 44 secondsfiles. So that's fine. Uh package lock package JSON schema migration and all of the files we have modified. So I'm going to do 11 workflows crud commit commit.
6:37:576 hours, 37 minutes, 57 secondsWhoops. I first had to ch uh stage all of them and then commit and then publish branch.
6:38:076 hours, 38 minutes, 7 secondsPerfect. And now that we have that, let's go ahead and let's uh review all of these changes. This was quite a large
6:38:156 hours, 38 minutes, 15 secondspull request, so it's definitely a good idea to have another set of eyes look at it before we merge.
6:38:236 hours, 38 minutes, 23 secondsAnd here we have the summary. New features. We added a workflows area with list and one-click creation. We redirect to the new workflow on success.
6:38:346 hours, 38 minutes, 34 secondsFaster page loads via server pre-fetching. Exactly. And client hydration. So we populate the cache
6:38:416 hours, 38 minutes, 41 secondsusing the prefetch UI wrapped with loading and error boundaries. Upgrade to pro model prompts when an action
6:38:506 hours, 38 minutes, 50 secondsrequires subscription thanks to our premium procedure data access layer protection. Workflows are now tied to
6:38:576 hours, 38 minutes, 57 secondsyour account with automatic created updated timestamps referring to our updated schema.
6:39:036 hours, 39 minutes, 3 secondsuh some refactoring regarding the TRPC endpoints and some dependencies for uh name creation as always file by file
6:39:126 hours, 39 minutes, 12 secondssummary but here we have the sequence diagrams I think the more interesting one here is how the user fetches the
6:39:206 hours, 39 minutes, 20 secondsworkflows so when we go to workflows and once we uh confirm out we call prefetch
6:39:266 hours, 39 minutes, 26 secondsworkflows the prefetch workflows then uh does get many returns the workflows and
6:39:326 hours, 39 minutes, 32 secondsIt does cache fill. And once we render the client using dehydrate and with the
6:39:406 hours, 39 minutes, 40 secondshydration boundary, we can do something called hydrated render which is
6:39:476 hours, 39 minutes, 47 secondsbasically the super fast uh data load that you are seeing when you use a combination of prefetch. And we do that
6:39:566 hours, 39 minutes, 56 secondsfinally with use suspense and we serve the cached workflows result. That's why it's faster than normal. Uh and in here
6:40:056 hours, 40 minutes, 5 secondswe have a diagram explaining how create happens. Uh more specifically what happens if we're not premium. So if we
6:40:136 hours, 40 minutes, 13 secondsare not premium we throw forbidden error. We handle that error and we then open upgrade model. If forbidden has
6:40:236 hours, 40 minutes, 23 secondsbeen thrown we already understood this but it's always nice to have a diagram here as well. And it's so impressive how Code Rabbit knows exactly what were the two most complicated uh routes here.
6:40:356 hours, 40 minutes, 35 secondsWhat were the two most complicated jobs and it decides to create a diagram of those two. In here we do have some
6:40:436 hours, 40 minutes, 43 secondscomments. The first one is regarding the migration file. Since migrations are using the dev command, I don't really
6:40:516 hours, 40 minutes, 51 secondstake these seriously because obviously in production you would do migrations in a proper way. Uh the reason this is critical is because yes uh we are
6:41:006 hours, 41 minutesdropping all workflow records whenever we modify something. So yeah in development we are doing that in production we should not be doing that.
6:41:086 hours, 41 minutes, 8 secondsSo completely right comment here and this is where it's actually wrong and I
6:41:156 hours, 41 minutes, 15 secondshaven't seen any AI get this right yet simply because prefetching is kind of a new concept especially in TRPC and
6:41:236 hours, 41 minutes, 23 secondstanstack query. uh adding a weight to prefetch workflows will do absolutely nothing. In fact, you can see inside of
6:41:316 hours, 41 minutes, 31 secondsTRPC server, this little helper that we have for prefetch, it's not using await, it's using void. The reason it's using
6:41:406 hours, 41 minutes, 40 secondsvoid is so when you use prefetch yourself, you never actually expect anything to be returned. So, let me show
6:41:506 hours, 41 minutes, 50 secondsyou page.tsx in the workflows. it is used. So you never do things like this,
6:41:586 hours, 41 minutes, 58 secondsright? This will never work. Workflows will always be a void, right? Because people were struggling to understand
6:42:056 hours, 42 minutes, 5 secondswhat prefetch workflows does. So that's why this is actually incorrect. Awaiting prefetch workflows will do absolutely
6:42:146 hours, 42 minutes, 14 secondsnothing. And in here, it's actually a good comment. we can use shorthand operator because prop will be
6:42:226 hours, 42 minutes, 22 secondsautomatically passed and we don't have to use three lines for it then. So yeah that's correct. Uh and in here uh let me
6:42:316 hours, 42 minutes, 31 secondssee. Okay so yes technically this is correct because it noticed that we don't have any uh params passed in the
6:42:406 hours, 42 minutes, 40 secondsprefetch but we accept it here. We will fix that later when we actually have some params for get many and they will
6:42:476 hours, 42 minutes, 47 secondsnot be optional. they will actually be required. Uh, and this is another thing where I'm pretty sure the AI is wrong
6:42:546 hours, 42 minutes, 54 secondsbecause I also had clawed code and uh, GPT tell me this, but I'm pretty certain that you can use find unique with a
6:43:036 hours, 43 minutes, 3 secondscomposite query like this. I think that Prisma would throw an error if we tried
6:43:116 hours, 43 minutes, 11 secondsto use find unique with a property that doesn't make it unique. So in here it's telling me that I should switch to find
6:43:186 hours, 43 minutes, 18 secondsfirst and cloud code and you know cursor did both of that when I was developing this but I'm fairly certain all of them
6:43:266 hours, 43 minutes, 26 secondsare wrong. I think in newer versions of Prisma you can very safely do this. We both tested that it works and there were
6:43:356 hours, 43 minutes, 35 secondsno errors being thrown inside of our IDE nor the server. So, I will keep my eye on this because it's telling me that
6:43:446 hours, 43 minutes, 44 secondscomposite wear clause will fail for find unique. But I'm very certain that that's not the case anymore. Perhaps it was the
6:43:516 hours, 43 minutes, 51 secondscase in the past, but now I think you can pass a composite query with one
6:43:586 hours, 43 minutes, 58 secondsunique field and one authentication field. I mean authentication field, one other field for authentication.
6:44:076 hours, 44 minutes, 7 secondsSo I think find unique works perfectly fine here and it's not needed to use find first. Uh the reason I recommend
6:44:156 hours, 44 minutes, 15 secondsusing find unique is because I think it relies on indexes more than find first and it will then be a better and smarter
6:44:236 hours, 44 minutes, 23 secondsquery. So I will definitely research this to make sure I'm not telling you incorrect information because we will be doing this a couple of times within the
6:44:316 hours, 44 minutes, 31 secondsproject. But I think we just proved by finishing this chapter that it works fine. So let me go ahead and click merge pull request. And let me confirm a
6:44:386 hours, 44 minutes, 38 secondsmerge. And once we have done that, let's go ahead and switch back to our main branch here. And then let's go ahead and
6:44:466 hours, 44 minutes, 46 secondshit the synchronize changes. And the moment you click that, uh, everything should be updated here. There we go.
6:44:556 hours, 44 minutes, 55 secondsPerfect. Amazing. Amazing job. As always, you can check the graph to see that you just uh detached chapter 11 and
6:45:046 hours, 45 minutes, 4 secondsthen merged it back here. Perfect. That means everything is fine. And then to wrap it up, let me go back here and just mark this as completed.
6:45:156 hours, 45 minutes, 15 secondsAmazing, amazing job. And see you in the next chapter.
Chapter 13: 12 Workflows Pagination
6:45:206 hours, 45 minutes, 20 secondsIn this chapter, we're going to continue working on the workflows entity focusing on pagionation and search. Before we go
6:45:296 hours, 45 minutes, 29 secondsinto that, I want to resolve one question from the previous chapter's pull request review and that was can we
6:45:366 hours, 45 minutes, 36 secondssafely use find unique with composite wear clauses because code rabbit and many other AI models have warned me
6:45:456 hours, 45 minutes, 45 secondsagainst using this to the point where I uh wasn't even sure myself if this is something I can teach you and I'm happy
6:45:536 hours, 45 minutes, 53 secondsto say that we can use this safely. The thing is this is a very new thing as you
6:46:006 hours, 46 minutescan see from version 5.0.0 the generated type unique input on where
6:46:076 hours, 46 minutes, 7 secondsexposes all fields on the model not just unique fields. So you can see that
6:46:146 hours, 46 minutes, 14 secondspreviously that was only available under the extended wear unique preview flag.
6:46:206 hours, 46 minutes, 20 secondsSo here's the rule. You must specify at least one unique field in your where statement outside of boolean operators
6:46:286 hours, 46 minutes, 28 secondsand then you can specify any number of additional unique and non-unique fields.
6:46:346 hours, 46 minutes, 34 secondsYou can use this to add filters to any operation that returns a single record.
6:46:396 hours, 46 minutes, 39 secondsFor example, you can use this feature to do permission checks which is exactly what we are doing. We are adding
6:46:466 hours, 46 minutes, 46 secondsalongside one unique field a user ID field permission check. Can we fetch this? Are we allowed to fetch this? So
6:46:556 hours, 46 minutes, 55 secondsthe reason all AI models are throwing this error is because this is a relatively new thing. So yes, I'm happy
6:47:036 hours, 47 minutes, 3 secondsto say that we can safely do that. And now let's focus on adding search and
6:47:096 hours, 47 minutes, 9 secondspageionation to our workflows. So what I want to start with is creating a config
6:47:176 hours, 47 minutes, 17 secondsfile folder actually. So instead of source let's create config and inside of here constants.ts.
6:47:276 hours, 47 minutes, 27 secondsLet's export const pageionation.
6:47:306 hours, 47 minutes, 30 secondsDefault page will be one. Default uh well let me actually show you all the options. Default page size will be five.
6:47:406 hours, 47 minutes, 40 secondsMaximum page size will be 100 and a minimum page size will be one. Great.
6:47:466 hours, 47 minutes, 46 secondsOnce we have that, let's go inside of routers.ts inside of source features workflows
6:47:536 hours, 47 minutes, 53 secondsserver folder routers.ts. So in here where we have the create procedure, remove procedure, update name, get one,
6:48:016 hours, 48 minutes, 1 secondand finally get many. So let's start by adding.input here for the get many procedure. And let's open Z.Object.
6:48:096 hours, 48 minutes, 9 secondsobject and then inside of here let's start by adding the page. So what page are we on of this get many procedure
6:48:176 hours, 48 minutes, 17 secondsthat's going to be a type of number with a default value using our pageionation.
6:48:226 hours, 48 minutes, 22 secondsSo pagionation make sure you import it from config constants. Let me show you how it looks like this. And then you can
6:48:296 hours, 48 minutes, 29 secondsuse the default page which is set to one like that. Then let's add page size.
6:48:386 hours, 48 minutes, 38 secondspage size is going to be Z dot number and then it's going to have a minimum and a maximum value a minimum value of
6:48:466 hours, 48 minutes, 46 secondspageionation minimum page size and a maximum of maximum page size. And let's
6:48:536 hours, 48 minutes, 53 secondsalso give it a default of default page size. Basically all the constants that we have here. And lastly,
6:49:016 hours, 49 minutes, 1 secondlet's add a search which is Z.string with the default of just an empty string.
6:49:126 hours, 49 minutes, 12 secondsAnd then in here, besides context, we can also export input. Let's go ahead and makes this easier for us by the
6:49:206 hours, 49 minutes, 20 secondsstructuring page, page size, and search from the input. And let's go ahead and turn this query into an asynchronous
6:49:276 hours, 49 minutes, 27 secondsquery because we are no longer going to directly return this. Instead, what we're going to do is we're going to get
6:49:356 hours, 49 minutes, 35 secondsitems and total count using await promise all. And inside of
6:49:426 hours, 49 minutes, 42 secondshere, open an array. And now the first one in here is going to be our existing Prisma workflow find.
6:49:526 hours, 49 minutes, 52 secondsAnd then the second one will be Prisma workflow count like this. And let's just add where user id context out user ID.
6:50:036 hours, 50 minutes, 3 secondsSo only count how many total uh workflows belong to this user. And then in this where we're going to focus on
6:50:116 hours, 50 minutes, 11 secondssome more specific things. So right now both queries look identical. This one uses count and this one uses find many.
6:50:196 hours, 50 minutes, 19 secondsSo then the total count will have the result of this and items will have the result of this.
6:50:276 hours, 50 minutes, 27 secondsNow let's go ahead and add some pagionation properties. Skip will be page minus one * page size.
6:50:376 hours, 50 minutes, 37 secondsTake will be page size.
6:50:406 hours, 50 minutes, 40 secondsWhere will be user ID and name contains search mode insensitive.
6:50:536 hours, 50 minutes, 53 secondsWhen doing pagionation, it's also important to define order by. So let's do updated at descending
6:51:046 hours, 51 minutes, 4 secondslike this. And I think this will be enough for pagionation.
6:51:106 hours, 51 minutes, 10 secondsNow let's go ahead and actually do some math which will define what is the next
6:51:166 hours, 51 minutes, 16 secondspage, is there a next page and things like that. So after the promise all is executed
6:51:256 hours, 51 minutes, 25 secondsconst total pages we're going to use math. Ceiling total count divided by page size.
6:51:356 hours, 51 minutes, 35 secondsHas next page will be defined if the current page is less than total pages.
6:51:426 hours, 51 minutes, 42 secondshas previous page will be defined as page is larger than
6:51:506 hours, 51 minutes, 50 secondsone. Now let's go ahead and add a comment map. Actually, we don't really need to do anything yet. I think for now
6:51:586 hours, 51 minutes, 58 secondsit's enough that we just return the following. Items uh is just going to be items.
6:52:056 hours, 52 minutes, 5 secondsPage will be page page size. total count total pages has next page has previous
6:52:136 hours, 52 minutes, 13 secondspage and we can also do the same for items in that case later we're going to do something specific with the items
6:52:226 hours, 52 minutes, 22 secondsthat's why I'm a bit confused basically we're going to have to map them to their actual nodes and thing like that but for
6:52:306 hours, 52 minutes, 30 secondsnow let's just keep it simple uh and I think that's enough information for us to have proper pageionation Here
6:52:386 hours, 52 minutes, 38 secondswhat we have to do now is we have to actually pass the props because if you take a look at page.tsx instead of source app dashboard arrest
6:52:476 hours, 52 minutes, 47 secondsworkflows you will see some errors in the prefetch. If you take a look at the workflows list you will and go instead of use suspense workflows you will start
6:52:556 hours, 52 minutes, 55 secondsto see errors here. So let's go ahead and close everything so it's easier to understand what we have to do next. So I have actually outlined that here.
6:53:056 hours, 53 minutes, 5 secondsWhat we've just did is we updated get many for procedure. What we have to do now is add nuks for param handling and
6:53:126 hours, 53 minutes, 12 secondswe have to handle both client side and server side param handling. So we are going to store the state of our params
6:53:206 hours, 53 minutes, 20 secondsin the URL and there is no better choice for that than the Nooks package.
6:53:286 hours, 53 minutes, 28 secondsSo using the link on the screen you can visit the Nooks homepage and the documentation page. And the way it works
6:53:346 hours, 53 minutes, 34 secondsis it basically allows you to control URL state the same way you would normal use state and that goes for the
6:53:426 hours, 53 minutes, 42 secondsreactivity part as well which is absolutely amazing. It's super easy to install. All we have to do is npm
6:53:496 hours, 53 minutes, 49 secondsinstall Nooks and then we have to add a provider. So let's go ahead and run npm install Nooks here. And since we are
6:53:576 hours, 53 minutes, 57 secondsusing Nex.js, you can even see which versions are supported. And I will also show you my exact Nooks version. So
6:54:056 hours, 54 minutes, 5 secondspackage JSON Nooks 2.7.1 with my next version 15.5.4.
6:54:156 hours, 54 minutes, 15 secondsAnd now let's go ahead and go to the adapters. So we are using Next.js app router. So let's go inside of our layout.tsx.
6:54:236 hours, 54 minutes, 23 secondsLet me show you where that is located in since uh I have a small screen here. So you can see inside of source app folder
6:54:316 hours, 54 minutes, 31 secondsthe main layout. So source app folder layout where we define the toaster where
6:54:386 hours, 54 minutes, 38 secondswe import globals where we have the fonts where we have the metadata right where we have HTML and body defined.
6:54:466 hours, 54 minutes, 46 secondsThat's the main layout. So go here and this is where we add the Nooks adapter.
6:54:536 hours, 54 minutes, 53 secondsSo I'm going to add it after TRPC react provider Nuks adapter
6:55:016 hours, 55 minutes, 1 secondand let me indent these two and you can see the full import here for the Nooks adapter. So I will go here and import NX
6:55:106 hours, 55 minutes, 10 secondsadapter from the Nooks package forward/adaptors forward slashnext forward/app. This is how it looks like in one line. And once you've done that I think you are ready.
6:55:226 hours, 55 minutes, 22 secondsUh yeah, you don't have to do anything else here. Uh I suggest that you keep the Nooks page open simply so you can look through the documentation as you
6:55:306 hours, 55 minutes, 30 secondslearn. And now what we're going to do is we're going to actually define all the params that our TRPC router is accepting.
6:55:406 hours, 55 minutes, 40 secondsSo I'm going to go inside of source features workflows and in here I'm going to create params.ts.
6:55:506 hours, 55 minutes, 50 secondsI'm going to import parse as integer and parse as string from nooks forward
6:55:586 hours, 55 minutes, 58 secondsslashs server. I'm going to import pagionation from config constants. The reason I'm importing from server you can
6:56:066 hours, 56 minutes, 6 secondsalso import from here. The reason I'm adding the server prefix is because we are also going to reuse this params object for our server side rendering
6:56:156 hours, 56 minutes, 15 secondsright for our prefetch. So because of that we need to use this solution because server can be used both in client and server whereas nuks is client
6:56:246 hours, 56 minutes, 24 secondsso it can only be used in client. So since I already know what we are going to be using this for right in page.tsx tsx in the workflows. I already know
6:56:336 hours, 56 minutes, 33 secondsthat I'm going to have to load the params here somehow and I can only do that if I think in advance and define
6:56:406 hours, 56 minutes, 40 secondsthe params using Nuk's server and I don't want to just magically tell you this information. You can definitely find that here in the server side usage.
6:56:496 hours, 56 minutes, 49 secondsYou can see Nuk's server, right? So to parse search params server side, you can use a loader function. That's what we
6:56:566 hours, 56 minutes, 56 secondsare going to create in a second. But you also have to import the search params parse as float, parse as string, parse
6:57:046 hours, 57 minutes, 4 secondsas integer from the same thing. And you can see some examples here how that's going to look like. So yes, that's why I
6:57:126 hours, 57 minutes, 12 secondssuggest that you, you know, have this open just so you don't blindly uh accept what I say, you know, try and find
6:57:196 hours, 57 minutes, 19 secondsexactly what I'm talking about. So let's export const workflows params.
6:57:266 hours, 57 minutes, 26 secondsThe page is going to be parsed as integer with default pageination
6:57:356 hours, 57 minutes, 35 secondsdot default page with options clear on default set to true. What does
6:57:446 hours, 57 minutes, 44 secondsthat mean? For example, if we had, let me go ahead and add a comment here.
6:57:516 hours, 57 minutes, 51 secondsLocal host 3000 workflows page and it's on number two. That's pretty normal,
6:57:586 hours, 57 minutes, 58 secondsright? We know what this means. But if the default page is number one, this is
6:58:056 hours, 58 minutes, 5 secondspretty useless because it's exactly the same as this. So for that reason we can tell Nuks that if you hit the default
6:58:146 hours, 58 minutes, 14 secondspage which is one just remove it like this clear on default that's what that
6:58:216 hours, 58 minutes, 21 secondsmeans or if you had a search of Antonio right and then imagine you cleared the
6:58:286 hours, 58 minutes, 28 secondssearch without this option it would be this which again is dumb because that's the same thing as this. It just looks
6:58:376 hours, 58 minutes, 37 secondsbad in the URL. So that's what we are doing. That's what clear on default does.
6:58:446 hours, 58 minutes, 44 secondsAnd let's go ahead and duplicate this.
6:58:476 hours, 58 minutes, 47 secondsThe next one is going to be page size with default value default page size.
6:58:566 hours, 58 minutes, 56 secondsAnd the last one is going to be search which is going to be parse as string.
6:59:066 hours, 59 minutes, 6 secondsAnd it's going to not use any default just an empty string with options clear
6:59:126 hours, 59 minutes, 12 secondson default true. So basically params can be anything right just because in the
6:59:196 hours, 59 minutes, 19 secondsURL we do localhost 3000 page one. We don't really know that this is this
6:59:286 hours, 59 minutes, 28 secondssupposed to be an integer. Is this supposed to be treated like a string? We don't know really. So by using this
6:59:376 hours, 59 minutes, 37 secondsstrict definition parse as integer parse as string we are telling nooks how to do
6:59:446 hours, 59 minutes, 44 secondstype safety for that specific param that's why we have different definitions because page and page size should
6:59:516 hours, 59 minutes, 51 secondsdefinitely be treated as numbers whereas search should be treated as string.
6:59:576 hours, 59 minutes, 57 secondsPerfect. Now that we have that, we have to create a hook called use workflow params. Instead of workflows, let's go
7:00:067 hours, 6 secondsinside of hooks. Use whoops hooks. Use workflows dashparams.ds.
7:00:167 hours, 16 secondsAnd it's going to be pretty easy now. So use query states from nuks. We don't have to use forward
7:00:237 hours, 23 secondsslashserver because this is obviously a hook meaning it's going to be used client side. But let's import workflows
7:00:317 hours, 31 secondsparams from our shared params. And very simply export con used workflows
7:00:387 hours, 38 secondsparams return use query states and pass in workflows params.
7:00:477 hours, 47 secondsSo what will this do now? Now that you have that defined, go inside of your
7:00:547 hours, 54 secondsworkflows.tsx inside of components here and then go inside of use suspense workflows. And in
7:01:037 hours, 1 minute, 3 secondshere, what you can now do is you can extract the params
7:01:107 hours, 1 minute, 10 secondsfrom use workflows params like this from its neighbor. And then in here you
7:01:187 hours, 1 minute, 18 secondscan pass the params. And you can see how they are immediately type safe because if you hover over params it accepts
7:01:277 hours, 1 minute, 27 secondspage, page size and search. And our query options accept page page size. Oh,
7:01:377 hours, 1 minute, 37 secondssorry. This is what it returns. Uh I'm not sure if I can see what it accepts here. I think I can. Input page which is
7:01:437 hours, 1 minute, 43 secondsa type of number or undefined. page size same and search which is a string or undefined. So we successfully mapped the
7:01:537 hours, 1 minute, 53 secondsTRPC input with use workflow params and the reason I did this through Nooks is because now it will be super easy to
7:02:027 hours, 2 minutes, 2 secondsmanipulate with this. Basically if you have any kind of URL state please use Nooks. it will be such a lifesaver for
7:02:107 hours, 2 minutes, 10 secondsyou and the best part of it honestly is um reactivity right so you could add set
7:02:197 hours, 2 minutes, 19 secondsparams here and then if you wanted to for example we are going to use this for pagenation the the way we are going to
7:02:267 hours, 2 minutes, 26 secondstrigger next page is very simply going to be by changing the page param to number two or to number three and that's
7:02:367 hours, 2 minutes, 36 secondsautomatically going to refetch our TRPC get many endpoint. So we are never going to directly refetch it. We're just going
7:02:447 hours, 2 minutes, 44 secondsto change the param. But in this case we just want to get the value of them. So we pass them here. And that is all we
7:02:537 hours, 2 minutes, 53 secondsactually need right now. Uh instead of this query options for use create workflow, we can just pass an empty
7:03:007 hours, 3 minutesobject because we don't really care for we don't we are not invalidating for a specific state. we are invalidating for
7:03:077 hours, 3 minutes, 7 secondsall of them. So we can just pass an object here to get rid of that error.
7:03:117 hours, 3 minutes, 11 secondsAnd now that we have use workflow params, we have to handle the same thing for our page.x which is still throwing an error here
7:03:207 hours, 3 minutes, 20 secondsbecause it's also expecting some params, right? So the way we're going to solve that uh is by creating the loader. So
7:03:297 hours, 3 minutes, 29 secondsinstead of server here folder, let's create params. DS.
7:03:367 hours, 3 minutes, 36 secondsSo, okay, it's named the same uh h params dash. Okay, let's call it uh params loader.ds.
7:03:487 hours, 3 minutes, 48 secondsSo, params-loader.ds.
7:03:527 hours, 3 minutes, 52 secondsImport create loader from nooks forward/s
7:03:587 hours, 3 minutes, 58 secondsserver. import workflows params from dot dot /params
7:04:047 hours, 4 minutes, 4 secondsexport const workflows params loader let me fix the typo workflows
7:04:127 hours, 4 minutes, 12 secondscreate loader and pass in workflows params now that we have the params loader here
7:04:217 hours, 4 minutes, 21 secondslet's go inside of our react server component where we prefetch the workflows so inside of dashboard arrest
7:04:287 hours, 4 minutes, 28 secondsworkflows page.tsx and now we have to uh pass the props here.
7:04:357 hours, 4 minutes, 35 secondsSo the first thing we have to do is create a type props for this page search
7:04:417 hours, 4 minutes, 41 secondsparams which is a reserved type for each page file in next.js JS and it is a
7:04:507 hours, 4 minutes, 50 secondspromise and the type inside is going to be a type of search params which you can
7:04:567 hours, 4 minutes, 56 secondsimport from Nooks server. So let me show you search params from Nooks server and
7:05:037 hours, 5 minutes, 3 secondsyou can specifically just import it as a type.
7:05:077 hours, 5 minutes, 7 secondsSo search params is a promise exactly the same way when you go in sort of like individual
7:05:147 hours, 5 minutes, 14 secondsdynamic workflow ID page params is a promise. So this is params is a reserved
7:05:217 hours, 5 minutes, 21 secondstype for each page tsx the same way search params is for queries.
7:05:297 hours, 5 minutes, 29 secondsSo in here we are using this generic search params type. Usually, you know, you would very clearly define search,
7:05:377 hours, 5 minutes, 37 secondswhich is string or undefined, page size, which is integer or undefined, blah blah. And you would have to be super
7:05:447 hours, 5 minutes, 44 secondsspecific and just match that one by one with your TRPC router. It's just a mess, right? But thanks to this, we can make
7:05:527 hours, 5 minutes, 52 secondsit better. Thanks to Nuks, it's much easier. So just get the props here.
7:05:587 hours, 5 minutes, 58 secondsExtract search params and then in here const params are await
7:06:047 hours, 6 minutes, 4 secondsworkflows params. Whoops. Loader from features workflows
7:06:107 hours, 6 minutes, 10 secondsserver params loader right here and pass in search params from this server
7:06:197 hours, 6 minutes, 19 secondscomponent. And this will then transform it into our expected type. But keep in
7:06:257 hours, 6 minutes, 25 secondsmind that this will not fail if it doesn't match the value. I think it even
7:06:327 hours, 6 minutes, 32 secondssays that here. Uh this async overload makes it easier to use against the search params. I think somewhere there is a warning that it like won't fail.
7:06:447 hours, 6 minutes, 44 secondsYou shouldn't basically use this as a validator. That's what I'm trying to say if that was your plan. Uh, but I think that now it should work just fine. If I
7:06:517 hours, 6 minutes, 51 secondsrefresh here, we should just see as usual, right? But if I go ahead inside of my config.ts file, inside of my
7:07:007 hours, 7 minutesapologies, my constants.ts file. And if I change the default page size to one, meaning only one result
7:07:087 hours, 7 minutes, 8 secondsfrom the first page, you can see that I only get one item inside page size one,
7:07:157 hours, 7 minutes, 15 secondstotal count four. So I have four workflows in total and I have four pages in total because for each page I have
7:07:247 hours, 7 minutes, 24 secondsmade it so that it can only be one record. So let me change this back to five. And now you can see there is one
7:07:327 hours, 7 minutes, 32 secondspage only because uh I only have four of them and for each page we're going to display five of them which means that in page one all of them were created.
7:07:457 hours, 7 minutes, 45 secondsAmazing. pagionation is working just fine. And if you go ahead uh uh maybe you can do this. So if you want to
7:07:537 hours, 7 minutes, 53 secondsconstance change this again to one and then go ahead and change your URL to the following
7:08:017 hours, 8 minutes, 1 secondpage two. So localhost 3000 workflows page two. I'm going to go ahead and
7:08:117 hours, 8 minutes, 11 secondspaste that. And you should just see that you are now on page two here. Right?
7:08:187 hours, 8 minutes, 18 secondsWhereas if I go manually to page three, you will see you are on page three. If I
7:08:247 hours, 8 minutes, 24 secondsgo back to page one, the URL should say page one. There we go. And also notice how this time I I know it's very small.
7:08:367 hours, 8 minutes, 36 secondsYou can't see. Unfortunately, I don't know how to zoom in the URL part, but it still says page one. But in when we
7:08:457 hours, 8 minutes, 45 secondsactually uh use that use the hook use search params uh and if I switched to page one using that, it would remove the
7:08:537 hours, 8 minutes, 53 secondsprop altogether just using the default version. All right. So once you've confirmed that works, we are ready to
7:09:017 hours, 9 minutes, 1 secondimplement uh the search. So let's go ahead and do that.
7:09:077 hours, 9 minutes, 7 secondsSo let's start by going inside of source components entity components and let's start developing the entity search
7:09:157 hours, 9 minutes, 15 secondscomponent. So after entity container let's go ahead and define interface entity search props accepting the value
7:09:247 hours, 9 minutes, 24 secondson change with the value prop and an optional placeholder.
7:09:297 hours, 9 minutes, 29 secondsThen let's go ahead and let's export const entity search. Whoops. like this.
7:09:407 hours, 9 minutes, 40 secondsAnd let's go ahead and assign all the necessary props inside of here.
7:09:477 hours, 9 minutes, 47 secondsValue on change placeholder and set it to search by default if it's not passed.
7:09:537 hours, 9 minutes, 53 secondsAnd in here, return a div with a class name relative ML auto.
7:10:017 hours, 10 minutes, 1 secondThen add a search icon which you can import from Lucid React.
7:10:077 hours, 10 minutes, 7 secondsGive it a class name of size 3.5 absolute
7:10:147 hours, 10 minutes, 14 secondsleft three top 1 and a half minus translate
7:10:237 hours, 10 minutes, 23 secondsminus dashy 1 and a half text muted foreground. This will position the search icon in the
7:10:327 hours, 10 minutes, 32 secondsbeginning of the input which we are going to add now. Input should be imported.
7:10:397 hours, 10 minutes, 39 secondsSo dot / UI input the same way we added the button.
7:10:467 hours, 10 minutes, 46 secondsAnd in order to make space for the search icon, give it a limit on the width. So let me just move this up 200 pixels.
7:10:567 hours, 10 minutes, 56 secondsBG background shadow none border border
7:11:027 hours, 11 minutes, 2 secondsand PL of 8. So we'll leave some space on the left side of the input so the
7:11:097 hours, 11 minutes, 9 secondssearch icon can render. And now besides the class name, let's go ahead and pass some more attributes here. So let's pass
7:11:187 hours, 11 minutes, 18 secondsin the placeholder prop to be placeholder. And then let's add value.
7:11:277 hours, 11 minutes, 27 secondsAnd then let's add on change on change event target value like this.
7:11:377 hours, 11 minutes, 37 secondsSo now that we have entity search, let's go ahead and go into our features
7:11:447 hours, 11 minutes, 44 secondsworkflows components workflows.tsx DSX and let's export const workflows
7:11:537 hours, 11 minutes, 53 secondssearch like this and let's return entity search
7:12:027 hours, 12 minutes, 2 secondsfrom our entity components. So, so far we've imported entity container, entity header, and now entity search. From
7:12:107 hours, 12 minutes, 10 secondshere, let's pass in the value to be an empty string on change to be an empty arrow
7:12:177 hours, 12 minutes, 17 secondsfunction and placeholder search workflows.
7:12:307 hours, 12 minutes, 30 secondsNow that you have workflows search, you can find workflows container and simply
7:12:377 hours, 12 minutes, 37 secondsrender workflows search here as a self-closing tag. And now you will immediately see it right here. But now
7:12:467 hours, 12 minutes, 46 secondslet's go ahead and make it work. So I'm going to go ahead now and
7:12:527 hours, 12 minutes, 52 secondsgrab our params const params set params from use workflows params.
7:13:017 hours, 13 minutes, 1 secondAnd now I can set the value to be specifically search value for example.
7:13:077 hours, 13 minutes, 7 secondsBut before I do that, I actually want to develop my own function for changing
7:13:147 hours, 13 minutes, 14 secondsthis value using debounce so it doesn't spam the server. So I'm going to go
7:13:217 hours, 13 minutes, 21 secondsinside of hooks and I will create a new file called use entity search.tsx.
7:13:337 hours, 13 minutes, 33 secondsSo first things first let's import use effect and use state. Then let's import pagionation from config constants.
7:13:437 hours, 13 minutes, 43 secondsThen let's define the interface use entity search props t extends
7:13:517 hours, 13 minutes, 51 secondssearch which is a type of string and page which is a type of number.
7:13:577 hours, 13 minutes, 57 secondsSo params is a type of generic set. params uses the generic and
7:14:037 hours, 14 minutes, 3 secondsdebounce is an optional uh config how much to debounce for. Now that we have
7:14:107 hours, 14 minutes, 10 secondsthat let's export function use entity search and let's go ahead and pass the generic
7:14:177 hours, 14 minutes, 17 secondshere t extends search which is a type of string page which is a type of number.
7:14:267 hours, 14 minutes, 26 secondsLet's go ahead and extract params. Set params and the bounce in milliseconds to be 500.
7:14:357 hours, 14 minutes, 35 secondsLet's return use entity search props and pass in the t generic here and open the
7:14:427 hours, 14 minutes, 42 secondsfunction finally. And this should be the bounce milliseconds.
7:14:487 hours, 14 minutes, 48 secondsNow instead of use entity search, let's first define the local search using the
7:14:557 hours, 14 minutes, 55 secondscurrent params dot search value. Local search and set local search with a
7:15:017 hours, 15 minutes, 1 seconddefault value of params dot search. Now let's open use effect. We are going to use this to create the debounce effect.
7:15:127 hours, 15 minutes, 12 secondsFirst let's see whether we actually have to do it. If local search is empty and if params
7:15:207 hours, 15 minutes, 20 secondsdot search is not empty. So this means if new input
7:15:297 hours, 15 minutes, 29 secondshas been cleared. So currently in the URL there is a search like Antonio but user just changed that inside of this
7:15:387 hours, 15 minutes, 38 secondsinput to be an empty string. It means we can just reset everything. So set params
7:15:467 hours, 15 minutes, 46 secondsspread the current params so we preserve if there was any pagionation here or something else and simply reset search
7:15:537 hours, 15 minutes, 53 secondshere and change the page to be pagenation dotdefault page because every time you search I think there is kind of
7:16:017 hours, 16 minutes, 1 seconda practice to to reset the pagionation I'm not sure if you don't want that you don't have to do
7:16:097 hours, 16 minutes, 9 secondsit but I kind of expect that as a user and make sure to return here to break the method from going any further
7:16:167 hours, 16 minutes, 16 secondsbecause what we do further is we define a timer for debounce.
7:16:217 hours, 16 minutes, 21 secondsSet timeout if local search is different than what
7:16:307 hours, 16 minutes, 30 secondswe currently have in the URL. What's the current search? Right? So only for new queries. Set params
7:16:407 hours, 16 minutes, 40 secondssearch new local search and reset pagionation. Again, this is
7:16:477 hours, 16 minutes, 47 secondswhat I expect as a user. If I search for something and I am on page 50, I would expect pagionation to reset. Like I'm
7:16:557 hours, 16 minutes, 55 secondstrying to look for specific results again. At least that's the way I think of it. I don't know.
7:17:017 hours, 17 minutes, 1 secondAnd let's go ahead here and pass debounce in milliseconds.
7:17:067 hours, 17 minutes, 6 secondsNow that we have this, let's go ahead and return clear timeout and pass in the timer. So we don't have
7:17:157 hours, 17 minutes, 15 secondsany overflow in case this component unmounts.
7:17:207 hours, 17 minutes, 20 secondsIn the dependency uh prompts, pass in the local search params, set params, and debounce in milliseconds.
7:17:317 hours, 17 minutes, 31 secondsAnd last but not least, another use effect here.
7:17:377 hours, 17 minutes, 37 secondsSet local search params dot search params.arch
7:17:447 hours, 17 minutes, 44 secondsin the dependency array. And finally return search value
7:17:507 hours, 17 minutes, 50 secondswhich is local search and on search change which is set local search.
7:17:597 hours, 17 minutes, 59 secondsAnd we are going to reuse this for every single entity search with safe debounce.
7:18:057 hours, 18 minutes, 5 secondsSo now let's go ahead inside of the workflows search here and let's go ahead and use it. Use entity
7:18:137 hours, 18 minutes, 13 secondssearch which I've just imported from hooks. Use entity search pass in the params set params.
7:18:227 hours, 18 minutes, 22 secondsAnd you can now extract search value from here and on search change which will be debounced and you can now pass
7:18:317 hours, 18 minutes, 31 secondsthe search value and you can now pass on search change.
7:18:367 hours, 18 minutes, 36 secondsPerfect. So let's take a look now. I will go inside of my constants.ts and I will change my pageionation default page size back to number five.
7:18:487 hours, 18 minutes, 48 secondsThis way I see a lot of my workflows here. If you don't have one, just click new workflow to generate it. Go back to
7:18:557 hours, 18 minutes, 55 secondsworkflows. Let's find a specific name, flat curved horse. Let's go ahead and search for horse here.
7:19:057 hours, 19 minutes, 5 secondsYou can see that it's loading and then it will only return the item whose name is flat curved horse. And if you take a
7:19:147 hours, 19 minutes, 14 secondslook at my URL, it is localhost 3000 workflows search equals horse. Exactly
7:19:247 hours, 19 minutes, 24 secondsas I expected. And if I delete this, you can see that the URL is now reset
7:19:337 hours, 19 minutes, 33 secondsto this. It didn't do this, which would be bad. Instead, it noticed that is the
7:19:407 hours, 19 minutes, 40 secondsdefault. I can just reset and clear the URL so it looks better. Perfect. And you can see how there is a debones, right?
7:19:497 hours, 19 minutes, 49 secondsSo it doesn't query for everything. Only when I stop typing for half a second and it returns for this one no items, right?
7:19:587 hours, 19 minutes, 58 secondsAmazing. You have now created uh this very amazing search. And the best part,
7:20:067 hours, 20 minutes, 6 secondsit is also cached. You can see how the second time I searched for horse, it immediately returned the results because
7:20:147 hours, 20 minutes, 14 secondsit was already cached for this specific query. That's the power of combining TRPC and Tanstack query and Nooks. You
7:20:237 hours, 20 minutes, 23 secondsget type safety, you get caching, you get speed, you get maintainable code.
7:20:297 hours, 20 minutes, 29 secondsThat's why I really really like this stack. This is another reason why I feel more confident using TRRPC as my data
7:20:367 hours, 20 minutes, 36 secondsaccess layer as opposed to uh built-in server actions. I just feel I know how to use this better. I feel I know how to make better apps using this method.
7:20:497 hours, 20 minutes, 49 secondsAnd now to wrap the chapter up, let's also add pagionation functionality. So we're going to go inside of source
7:20:587 hours, 20 minutes, 58 secondscomponents entity components and just as we've added entity search let's go ahead and add entity pageionation starting
7:21:067 hours, 21 minutes, 6 secondswith the interface and the props page total pages on page change which accepts page and optional disabled.
7:21:177 hours, 21 minutes, 17 secondsAnd now let's go ahead and let's actually define the component with the props like this entity pagenation which
7:21:267 hours, 21 minutes, 26 secondsuses all of those props and the type right here.
7:21:317 hours, 21 minutes, 31 secondsAnd now inside of here, let's go ahead and let's return a div with a class name
7:21:387 hours, 21 minutes, 38 secondsflex items center justify between gap x to full width.
7:21:477 hours, 21 minutes, 47 secondsAnother div inside with a class name flex one text small text muted foreground.
7:22:007 hours, 22 minutesAnd now let's say what page we are on.
7:22:037 hours, 22 minutes, 3 secondsSo page then the page number of total pages or default to number one. So page
7:22:127 hours, 22 minutes, 12 secondsone of two page two of two.
7:22:187 hours, 22 minutes, 18 secondsThen another div here with a class name flex items center justify and space x2
7:22:287 hours, 22 minutes, 28 secondspy4 and inside let's use a button. We should already have button imported from dotui button.
7:22:397 hours, 22 minutes, 39 secondsThe first button will be previous and the second button will be next.
7:22:497 hours, 22 minutes, 49 secondsThe first button will be disabled if page is number one or if we have for some reason disabled pageionation
7:22:587 hours, 22 minutes, 58 secondsoverall. The variant is going to be outline. Size will be small.
7:23:067 hours, 23 minutes, 6 secondsOn click for now will be an empty arrow function.
7:23:107 hours, 23 minutes, 10 secondsAnd then we can copy these props and paste them here into the next button but with a slightly modified logic. If page
7:23:187 hours, 23 minutes, 18 secondsis equal to total pages that's when the button will be disabled or if total
7:23:257 hours, 23 minutes, 25 secondspages is equal to zero or if we have disabled altogether.
7:23:317 hours, 23 minutes, 31 secondsNow let's add the actual onpage change which we can use right here. So on click
7:23:397 hours, 23 minutes, 39 secondshere let's call on p p p p p p p p p p p p p p p p p p p p p p p p p p p p p p p p p p p p p p p p page change math maximum one page minus one.
7:23:497 hours, 23 minutes, 49 secondsSo we can't go uh less than the page number one and make sure that this is like this.
7:24:017 hours, 24 minutes, 1 secondAnd in here we're going to do the opposite. page uh math dominimum of total pages
7:24:097 hours, 24 minutes, 9 secondsand page plus one. So we can't go more than the total pages number.
7:24:197 hours, 24 minutes, 19 secondsThere we go.
7:24:217 hours, 24 minutes, 21 secondsAnd we are going to decide what on page change is from the outside.
7:24:267 hours, 24 minutes, 26 secondsSo now that we have entity pagination finished here, let's go ahead inside of features workflows
7:24:357 hours, 24 minutes, 35 secondsand let's go inside of components workflows.tsx
7:24:427 hours, 24 minutes, 42 secondsand just above the container here. So we leave the container last. We can develop the pagionation export con workflows.
7:24:517 hours, 24 minutes, 51 secondsPagination const workflows use suspense workflows
7:24:577 hours, 24 minutes, 57 secondsconst params set params from use workflows params return entity pagionation.
7:25:087 hours, 25 minutes, 8 secondsMake sure to import entity pagionation the same way we imported entity search uh and all the other ones. Right?
7:25:177 hours, 25 minutes, 17 secondsAnd let's go ahead and disable it. If workflows is fetching,
7:25:267 hours, 25 minutes, 26 secondslet's go ahead and add total pages here to be workflows.
7:25:317 hours, 25 minutes, 31 secondsTotal pages page to be workflows.
7:25:397 hours, 25 minutes, 39 secondspage onpage change to get the page and set params using nooks preserving the
7:25:487 hours, 25 minutes, 48 secondsexisting params and just changing the page. So if we have a search query and then change to the next page, we should
7:25:567 hours, 25 minutes, 56 secondsnot reset the search query. We should keep it. And now that we have workflows pagionation, we can render it here as
7:26:047 hours, 26 minutes, 4 secondswell as a self-closing tag.
7:26:097 hours, 26 minutes, 9 secondsThere we go. You can see that since I have typed in horse, that's the only existing query. So page one of one. But
7:26:187 hours, 26 minutes, 18 secondsif I clear this uh I still get page 101. Okay, not too useful of an example. We can very easily
7:26:267 hours, 26 minutes, 26 secondschange this by going inside of our constants and change the default page size to number one and refresh.
7:26:347 hours, 26 minutes, 34 secondsImmediately you can see page one of five with the next button active. So if I
7:26:417 hours, 26 minutes, 41 secondsclick next, there we go. Page two of five and I am now on page two. And notice my URL.
7:26:507 hours, 26 minutes, 50 secondsThis is my URL. And yours should be too page two. And if I click previous to go
7:26:587 hours, 26 minutes, 58 secondsback to page one, you can see that now the URL is properly reset to default.
7:27:057 hours, 27 minutes, 5 secondsRight? This is my URL now. It didn't go to page one because it doesn't make sense. Page one is the same thing as
7:27:137 hours, 27 minutes, 13 secondsthis. That's what clear on default does in the search params nooks configuration.
7:27:197 hours, 27 minutes, 19 secondsAmazing. And if I search for horse for example in that case uh let's see what
7:27:267 hours, 27 minutes, 26 secondshappens. So horse is here uh and I have one of five but I can
7:27:337 hours, 27 minutes, 33 secondsstill click on next. Oh and that just uh makes an empty page. Okay. Ah I see I
7:27:417 hours, 27 minutes, 41 secondssee what we did wrong. We have a bug inside of pro uh routers.ts get many.
7:27:507 hours, 27 minutes, 50 secondsWhen I do a total count, I don't take in consideration the name uh the search.
7:27:587 hours, 27 minutes, 58 secondsThere we go. So, make sure you add this to count. And now you can see now it's a bug. Page two of one. So, let's try this again.
7:28:097 hours, 28 minutes, 9 secondsAnd let's click horse. When you search horse now it will give you page one of one but if you remove it will be page
7:28:167 hours, 28 minutes, 16 secondsone of five and you can also see that this is cached too right so only the next ones are going to be slower but the
7:28:257 hours, 28 minutes, 25 secondsprevious ones are cached so they're super fasting the pageionation is working uh the search is working let's search for
7:28:337 hours, 28 minutes, 33 secondspencil there we go page one of one previous and the next disabled The URL is working.
7:28:427 hours, 28 minutes, 42 secondsAmazing. Amazing job. You just developed a kickass pageionation and search with
7:28:497 hours, 28 minutes, 49 secondsdebounce available to reuse for all of our other entities. Let's bring this back to five so we have a more realistic
7:28:587 hours, 28 minutes, 58 secondsexample for future use cases. And now let's merge this. So I have 13 uh unstaged files.
7:29:087 hours, 29 minutes, 8 secondsYou might have 14 as always in case MROs leaves some logs. I'm just telling you
7:29:157 hours, 29 minutes, 15 secondsthat in case you are comparing to yours and are wondering where did you get the extra file, right, perfect. So, let's go
7:29:227 hours, 29 minutes, 22 secondsahead and see if that's all we wanted to do. That's all we wanted to do. 12 workflows pageionation. So, I'm going to
7:29:307 hours, 29 minutes, 30 secondsgo ahead and start a new branch. Create new branch. 12 workflows pageionation.
7:29:387 hours, 29 minutes, 38 secondsI'm then going to stage all of my changes and add a commit 12 workflows
7:29:457 hours, 29 minutes, 45 secondspagionation. And I'm going to commit and I'm going to publish the branch. And as always, once the branch has been
7:29:537 hours, 29 minutes, 53 secondspublished, I'm going to go ahead and open a pull request. This was also a pretty large one, so it will definitely
7:30:027 hours, 30 minutes, 2 secondsbe a good idea to have another pair of eyes take a look at it.
7:30:087 hours, 30 minutes, 8 secondsAnd here we have this summary by code rabbit. New features workflows list now includes a debounced searched input. We
7:30:167 hours, 30 minutes, 16 secondsadded pagionation with previous and next controls as well as page indicators.
7:30:217 hours, 30 minutes, 21 secondsPage page size and search are synchronized to the URL for easy sharing and persistence. Yes, when you add state
7:30:307 hours, 30 minutes, 30 secondsto the URL, you can also very easily share that state if you ever modify this to have an organization level
7:30:367 hours, 30 minutes, 36 secondsimprovements. Workflow data prefetching now respects current filters for more relevant initial results. Exactly. This
7:30:447 hours, 30 minutes, 44 secondsway we are prefetching exactly what's in the current state of the URL. So if user refreshes on that page, we're going to prefetch that exact state. As always,
7:30:547 hours, 30 minutes, 54 secondsfile by file walk through here. And here we have the sequence diagrams. So not need to, you know, look at this too much
7:31:027 hours, 31 minutes, 2 secondssimply because we've already went over this. When user navigates to workflows, what's different now is that before we
7:31:087 hours, 31 minutes, 8 secondscall prefetch, we also create the loader with the current search params. So this is a specific example. If we have search
7:31:177 hours, 31 minutes, 17 secondsand if we have page, we're going to create the loader using Nuks and Nuks adapter. And then we're going to parse
7:31:257 hours, 31 minutes, 25 secondsthose fields into page, page size, and search which are compatible with prefetch workflows params which are in
7:31:347 hours, 31 minutes, 34 secondsthird to TRPCA workflows get many input and that that will properly prefetch
7:31:407 hours, 31 minutes, 40 secondsfrom the database using the proper count, using the proper search, using the proper page.
7:31:497 hours, 31 minutes, 49 secondsPerfect.
7:31:507 hours, 31 minutes, 50 secondsAnd down here we have an example of how debouncing is working. But I think we are all already aware of how that works.
7:32:007 hours, 32 minutesIf for whatever reason you are curious, feel free to you know pause the screen and take a look at how this is executed here. We do have a few comments here. So
7:32:097 hours, 32 minutes, 9 secondsfirst one is uh invalid Nooks dependency version. Uh I think this is not true. Uh I'm pretty sure that this is a
7:32:187 hours, 32 minutes, 18 secondscompletely valid version of Nooks that we have here. Uh in here it suggests adding area area label for the
7:32:277 hours, 32 minutes, 27 secondsplaceholder to improve accessibility which we could definitely add. Yes. So area label for the placeholder makes
7:32:367 hours, 32 minutes, 36 secondssense here. In here we forgot to add the bounce validation for the page parameter. So we add default but we
7:32:457 hours, 32 minutes, 45 secondsnever limit the minimum value. So we could definitely add that. So users can't query by negative pages.
7:32:547 hours, 32 minutes, 54 secondsAnd in here we have a potential issue and a serious one potential infinite loop because we use params object in the
7:33:047 hours, 33 minutes, 4 secondsdependency array. So the solution here to re could be to restructure to use to
7:33:117 hours, 33 minutes, 11 secondsdepend only on specific fields as you can see params search params page but the problem is we want to preserve the existing params here.
7:33:207 hours, 33 minutes, 20 secondsSo I will have a look at how we can improve that for the next chapter though we tested it and it didn't cause any
7:33:287 hours, 33 minutes, 28 secondsinfinite loops. So we can also say that it works. But uh yes, this is a a good thing to reconsider. Let's go ahead and
7:33:367 hours, 33 minutes, 36 secondsmerge this pull request. And once we have merged this request, let's go ahead and take a look if everything is as
7:33:467 hours, 33 minutes, 46 secondsintended. So I'm going to change this to my main branch. And then I'm going to click on the synchronize changes button.
7:33:557 hours, 33 minutes, 55 secondsAnd then I'm going to click on my source control. Here I will open graph. And in here you can see that we have properly
7:34:047 hours, 34 minutes, 4 secondsmerged 12 into main. Amazing. And now let's go ahead and wrap this chapter up.
7:34:127 hours, 34 minutes, 12 secondsSo we have added nooks for RAM handling both client and server side. We added more entity components as well as full
7:34:227 hours, 34 minutes, 22 secondsUI for search and pageionation. and we've wrapped it all up by reviewing our pull request. Amazing, amazing job and see you in the next chapter.
7:34:337 hours, 34 minutes, 33 secondsIn this chapter, we're going to improve the UI of our workflows entity by adding a set of reusable components. Loading,
Chapter 14: 13 Workflows UI
7:34:437 hours, 34 minutes, 43 secondserror, empty, list, and item. Let's go ahead and start with the three states first as they are the simplest to do and to demonstrate.
7:34:547 hours, 34 minutes, 54 secondsMake sure you have your project running.
7:34:567 hours, 34 minutes, 56 secondsI'm using npm rundev all to run both processes at the same time and make sure that you are on your workflows page.
7:35:067 hours, 35 minutes, 6 secondsOnce you are in here, let's go ahead inside of source components entity components. So the last thing we
7:35:147 hours, 35 minutes, 14 secondsdeveloped here was I believe entity pageionation and now we're just going to add a couple of simpler ones. So all of
7:35:237 hours, 35 minutes, 23 secondsthese three states loading, error, and empty are going to share one common prop. So let's create a reusable
7:35:327 hours, 35 minutes, 32 secondsinterface called state view props with an optional message. And then let's
7:35:397 hours, 35 minutes, 39 secondsextend state view props for each specific state. For example, loading
7:35:457 hours, 35 minutes, 45 secondsview props extends state view props and it adds the entity option. So let me
7:35:537 hours, 35 minutes, 53 secondsshow you how that looks like in one line. And then let's export const loading view.
7:36:017 hours, 36 minutes, 1 secondNow let's go ahead and destructure the props and assign them to this loading view props. So we're going to have the
7:36:087 hours, 36 minutes, 8 secondsmessage and the entity. Let's set the entity by default to be items if not passed. And let's pass the message separately like this.
7:36:197 hours, 36 minutes, 19 secondsThen let's go ahead and let's return a div element with a class name flex
7:36:277 hours, 36 minutes, 27 secondsjustify center items center full height flex one
7:36:367 hours, 36 minutes, 36 secondsflex column gap Y4 and let's render the loader 2 icon
7:36:447 hours, 36 minutes, 44 secondsinside from Lucid React. So, just make sure you imported this from Lucid React.
7:36:527 hours, 36 minutes, 52 secondsLet's go ahead and give the loader icon a class class name of size six. Animate
7:36:597 hours, 36 minutes, 59 secondsspin. And let's do text muted foreground.
7:37:047 hours, 37 minutes, 4 secondsThen in here, a paragraph with a class name text small text muted
7:37:137 hours, 37 minutes, 13 secondsforeground. And let's go ahead and either render a message or if the message was not passed, let's just do
7:37:217 hours, 37 minutes, 21 secondsloading and then entity. Whatever entity was passed, three dots.
7:37:277 hours, 37 minutes, 27 secondsAs simple as that. That is our loading view. Now let's go ahead inside of
7:37:367 hours, 37 minutes, 36 secondsfeatures folder, workflows components, workflows. ESX and let's go ahead and export const
7:37:457 hours, 37 minutes, 45 secondsworkflows loading to very simply return loading view from
7:37:527 hours, 37 minutes, 52 secondsour newly created entity components export and let's give it entity workflows like this.
7:38:047 hours, 38 minutes, 4 secondsNow that we have workflows loading, let's go inside of app folder dashboard
7:38:107 hours, 38 minutes, 10 secondsrest workflows page.tsx and let's go ahead and render it here instead in the suspense workflows
7:38:197 hours, 38 minutes, 19 secondsloading and make sure you add the import. So, so far we've imported workflows container, workflows list, and
7:38:277 hours, 38 minutes, 27 secondsnow workflows loading from features, workflows components, and then the workflows export file. There we go. So
7:38:357 hours, 38 minutes, 35 secondsnow, if you go ahead and refresh, you should see a nicer uh loading state.
7:38:417 hours, 38 minutes, 41 secondsIt's very brief, but you can see it right there. And in fact, I want to modify it ever so slightly by going back inside of entity components uh and maybe
7:38:517 hours, 38 minutes, 51 secondschanging the text of the loader here to text primary.
7:38:597 hours, 38 minutes, 59 secondsThis way it will be an orange color.
7:39:037 hours, 39 minutes, 3 secondsLet's see. Let me do a hard refresh here. Uh it's cached so I can't see. Maybe if I try searching.
7:39:117 hours, 39 minutes, 11 secondsUh, really not helping my example here.
7:39:157 hours, 39 minutes, 15 secondsUh, okay. Yeah, we we were just able to see it for a second. I think it might look a little bit better with that orange color. I don't know. You choose
7:39:247 hours, 39 minutes, 24 secondsfor yourself. Uh, and now for the message.
7:39:297 hours, 39 minutes, 29 secondsYou know what? I think it might be easier to just send a message here instead and just render this conditionally. If
7:39:377 hours, 39 minutes, 37 secondswe have a message then just go ahead and display it. And whenever you use this operator also make sure to turn this
7:39:467 hours, 39 minutes, 46 secondsinto a boolean otherwise this will render if it's uh truthy. So add double
7:39:547 hours, 39 minutes, 54 secondsexclamation points here or you can use the boolean operator or you can use the turnary operator with a question mark
7:40:017 hours, 40 minutes, 1 secondand the else. Right? So I personally prefer this. I'm used to it, but whatever it's easier for you. And then
7:40:097 hours, 40 minutes, 9 secondsinside of the workflows. DSX, let's pass a message here. Loading workflows.
7:40:177 hours, 40 minutes, 17 secondsI think this gives us kind of more explicit controls. Again, this agent mode. Uh, how do I close agent mode like that? Okay.
7:40:297 hours, 40 minutes, 29 secondsAnd it should behave exactly the same. Now again I'm having trouble showing it.
7:40:357 hours, 40 minutes, 35 secondsLet's go ahead and continue by focusing on some other entity components. Now that we have the loading view, let's go
7:40:437 hours, 40 minutes, 43 secondsahead and copy the loading view and the interface. And let's paste the entire thing here.
7:40:517 hours, 40 minutes, 51 secondsAnd let's change this loading view to now be error view.
7:40:587 hours, 40 minutes, 58 secondsAnd at this point we actually we don't we no longer need the entity
7:41:057 hours, 41 minutes, 5 secondshere. We can just reuse state view props because yeah we just remove the entity completely. So we can do the same thing
7:41:147 hours, 41 minutes, 14 secondshere. Just reuse the state view props everywhere. It's the same. And instead of this we're going to do alert triangle
7:41:237 hours, 41 minutes, 23 secondsicon from Lucid React. So the same place where we imported the loader two icon a moment ago and make sure to remove animate spin from here.
7:41:347 hours, 41 minutes, 34 secondsSo how do we trigger an error? Well, very easy actually. First let's go inside of workflows.tsx
7:41:417 hours, 41 minutes, 41 secondsand let's go ahead and do an export here. So this will be workflows error.
7:41:497 hours, 41 minutes, 49 secondsInstead of loading view, it will be error view.
7:41:537 hours, 41 minutes, 53 secondsAnd this will be error loading workflows.
7:41:597 hours, 41 minutes, 59 secondsMake sure to import the error view from components entity components. And then inside of the page file, also add
7:42:077 hours, 42 minutes, 7 secondsworkflows error and make sure to use it in the error boundary. It's a self-closing tag like
7:42:157 hours, 42 minutes, 15 secondsthis. In order to break it, go inside of workflows list and just throw new error here.
7:42:247 hours, 42 minutes, 24 secondsThere we go. Error loading workflows. And then remove this.
7:42:297 hours, 42 minutes, 29 secondsPerfect. So now that we have that, let's create an empty state. The empty state will be slightly different. And we're
7:42:387 hours, 42 minutes, 38 secondsactually going to be using some new chats components, which I'm very happy about. So instead of entity components
7:42:447 hours, 42 minutes, 44 secondsfolder here, go ahead and add all the components from empty
7:42:537 hours, 42 minutes, 53 secondsSo you can import it like this or you can just use this because we are in the components folder empty content
7:43:017 hours, 43 minutes, 1 seconddescription header media and title. In order for this to exist in your UI empty you have to make sure that you use the
7:43:107 hours, 43 minutes, 10 secondsproper npx chaten 3.3.1 version because it's a very new component and I can actually quickly show you that uh.com.
7:43:207 hours, 43 minutes, 20 secondsIf I go inside of the components here, you can see that empty is highlighted as new and it will give us this nice little
7:43:287 hours, 43 minutes, 28 secondsuh no projects yet example. So that's what I want to do here. So using this empty, let's go ahead and now build it.
7:43:347 hours, 43 minutes, 34 secondsI want to do it down here simply because all of my other states are down there.
7:43:407 hours, 43 minutes, 40 secondsSo uh my empty is going to be called interface empty view props. And this one
7:43:487 hours, 43 minutes, 48 secondswill actually extend it. So extends state view props and it will add on new which is an
7:43:577 hours, 43 minutes, 57 secondsoptional component. Uh I mean an optional prop here. So it makes sense for this one.
7:44:047 hours, 44 minutes, 4 secondsEmpty view like this. And let's go ahead and assign
7:44:107 hours, 44 minutes, 10 secondsempty view props. Let's extract the message. And let's extract on new, which
7:44:177 hours, 44 minutes, 17 secondsis optional. Inside of here, we're going to return empty, which we just imported.
7:44:227 hours, 44 minutes, 22 secondsAnd we're going to give it a class name of border, border dashed, and background color of white. Then let's use empty
7:44:327 hours, 44 minutes, 32 secondsheader. So, let me just quickly fix this component. Empty header, empty media, and variant of icon.
7:44:437 hours, 44 minutes, 43 secondsAnd inside of here, render package open icon from Lucid React. You can of course use whatever icon you think is best. I
7:44:527 hours, 44 minutes, 52 secondspersonally think this one kind of represents like an empty box. So now let's close the empty header and let's
7:44:597 hours, 44 minutes, 59 secondsadd empty title here which will simply say
7:45:057 hours, 45 minutes, 5 secondsuh no items like this and empty description.
7:45:137 hours, 45 minutes, 13 secondsLet's go ahead and render the message and we should only do that if the message is available. So again render it
7:45:207 hours, 45 minutes, 20 secondsconditionally. The reason I rendered these things conditionally is so they don't take any weird UI space. And remember to turn it into a boolean so
7:45:287 hours, 45 minutes, 28 secondsyou don't get any unexpected render results. Same thing for on new. If it exists inside of empty content here, add
7:45:367 hours, 45 minutes, 36 secondsa button which you should already have imported here and give it on click on
7:45:417 hours, 45 minutes, 41 secondsnew and give it add item like this. If you want to, you can also
7:45:507 hours, 45 minutes, 50 secondsadd props for like individual empty title label, add new label.
7:45:567 hours, 45 minutes, 56 secondsI mean, you absolutely can do that if you want to. Let's go ahead inside of workflows now. And just as we've created
7:46:037 hours, 46 minutes, 3 secondsuh workflows uh error and workflows loading and now let's create the workflows empty export
7:46:127 hours, 46 minutes, 12 secondscon workflows empty. This one will be slightly different. So, first let's go
7:46:187 hours, 46 minutes, 18 secondsahead and let's return a fragment and empty view inside of here. Just just make sure you imported empty view here.
7:46:287 hours, 46 minutes, 28 secondsAnd let's go ahead and pass in message.
7:46:337 hours, 46 minutes, 33 secondsYou haven't created any workflows yet. Get started by creating your first workflow.
7:46:447 hours, 46 minutes, 44 secondsAnd let's go ahead and give it an on new option by adding create workflow. Use create workflow because we already have
7:46:527 hours, 46 minutes, 52 secondsit imported here actually from hooks use workflows.
7:46:577 hours, 46 minutes, 57 secondsAnd let's also make use of our premium model handle error and model
7:47:057 hours, 47 minutes, 5 secondsfrom use upgrade model. We also have this imported because we used both of them inside of workflows header.
7:47:157 hours, 47 minutes, 15 secondsAnd now we're simply let's just add constant handle create which calls the
7:47:227 hours, 47 minutes, 22 secondscreate workflow mutates. It skips the first parameter because we don't have any options. But we need to pass something to access the second parameter
7:47:317 hours, 47 minutes, 31 secondswhich has the custom on error option which allows us to handle error and open the model if needed. which means that we also have to render the model just like
7:47:407 hours, 47 minutes, 40 secondsthat. And of course on new handle create. There we go. And now that we
7:47:487 hours, 47 minutes, 48 secondshave workflows empty, we have to render that as well.
7:47:537 hours, 47 minutes, 53 secondsThe way we can do that is by actually not even leaving the workflows file. We can just go ahead and find workflows
7:48:017 hours, 48 minutes, 1 secondlist here. And let's simply do if workflows dot uh data do items uhlength is uh I think this will work.
7:48:137 hours, 48 minutes, 13 secondsWe can just return workflows empty like this.
7:48:217 hours, 48 minutes, 21 secondsSo now if you go ahead and search something obscure you should see no items. You haven't created any workflows
7:48:297 hours, 48 minutes, 29 secondsyet. get started by creating your first workflow. So yeah, maybe not the best
7:48:357 hours, 48 minutes, 35 secondsmessage to show uh for search empty, but you get the idea, right? This would appear if you had no workflows at all.
7:48:447 hours, 48 minutes, 44 secondsSo maybe you can change the message to something a bit more generic like uh no workflows found. Get started by creating
7:48:527 hours, 48 minutes, 52 secondsa workflow so it doesn't indicate like there are no workflows in this account.
7:48:577 hours, 48 minutes, 57 secondsMaybe that's better by creating a workflows. No workflows found.
7:49:067 hours, 49 minutes, 6 secondsI don't know. I like the longer message simply because it fills the space in a nicer way.
7:49:137 hours, 49 minutes, 13 secondsAll right. Uh, one problem though is that it get it expands a lot. But we're going to fix that very soon by creating
7:49:217 hours, 49 minutes, 21 secondsuh our new component which is going to be the entity list. So that's something that we actually don't have yet. You can see how instead of my workflows list
7:49:297 hours, 49 minutes, 29 secondshere, I manually added this and I still rendered this inside of a completely centered JSON string. So now let's go
7:49:397 hours, 49 minutes, 39 secondsahead and let's focus on uh using the entity list. So for that we go back inside of entity components where we
7:49:467 hours, 49 minutes, 46 secondsjust developed the empty view. And in here we have to create an interface called entity list props. And I'm going
7:49:547 hours, 49 minutes, 54 secondsto write this one together with you because it's a little bit more complicated. Interface entity list props accepts a generic.
7:50:037 hours, 50 minutes, 3 secondsAnd then items will be a type of that generic. We're going to have a render item function which will accept the item
7:50:127 hours, 50 minutes, 12 secondswhich is the generic and it will of course have an index and it will return a react node. This
7:50:197 hours, 50 minutes, 19 secondswill allow us to basically have our own map done within this reusable component.
7:50:297 hours, 50 minutes, 29 secondsAnd in order to have a dot map, we also need to have a way to have a key for
7:50:367 hours, 50 minutes, 36 secondseach object. So let's pass get key which is technically optional but you know it's a good developer
7:50:437 hours, 50 minutes, 43 secondsuh practice to have this as an option to pass if for whatever reason we don't want to use the index as the key.
7:50:537 hours, 50 minutes, 53 secondsAnd here we are going to pass an option for empty view. What if no items are found? And an optional class name if we
7:51:007 hours, 51 minutesever wish to modify how the entity list looks like. Let's export function entity list and pass in the generic here. Go
7:51:097 hours, 51 minutes, 9 secondsahead and add items render item get key empty view and class name.
7:51:187 hours, 51 minutes, 18 secondsUh and for the class name uh we don't have to pass anything in the class name actually. I mean let's obviously add it
7:51:277 hours, 51 minutes, 27 secondsand let's assign entity list props and forward the generic from the entity list here. You're going to see how this
7:51:357 hours, 51 minutes, 35 secondsgeneric will be used in a moment when we actually render it. So first things first if items.length is equal to zero
7:51:417 hours, 51 minutes, 41 secondsand if we have the empty view component passed in that case we're going to return
7:51:497 hours, 51 minutes, 49 secondsa div. And this div, we're going to have a class name to center that empty list.
7:51:557 hours, 51 minutes, 55 secondsSo flex one, flex justify center and items center. And it's going to render the empty view within a limited maximum
7:52:047 hours, 52 minutes, 4 secondswidth. So make sure to add this div here. This way it will not expand like this. It will kind of be smaller.
7:52:127 hours, 52 minutes, 12 secondsAll right. Uh after this, oh let me just expand a bit so you can see the code.
7:52:187 hours, 52 minutes, 18 secondsAfter this, we have to actually render our items. For that, we're going to use a div and a class name. And for this
7:52:277 hours, 52 minutes, 27 secondsclass name, I'm going to use the CN util. So, make sure to import CN from lib utils. And I'm going to give it some
7:52:347 hours, 52 minutes, 34 secondsdefault classes, which will be flex, flex column, and gap y4. And then I'm going to pass class name if we ever want
7:52:427 hours, 52 minutes, 42 secondsto override that. And then inside of here, we can go ahead and iterate over our items. So each item will have an
7:52:497 hours, 52 minutes, 49 secondsindex accompanying it here. And we're going to return a div like this. And each div needs to have a
7:52:587 hours, 52 minutes, 58 secondskey which will either be via the get key function or we are going to manually call get key and pass in item index.
7:53:077 hours, 53 minutes, 7 secondsUh this was an incorrect explanation. If we have the get key function, we're going to call the get key and pass the information of the item and the index.
7:53:157 hours, 53 minutes, 15 secondsOtherwise, we're just going to use the index. And then let's use the render item function and pass in the item and the index. This
7:53:247 hours, 53 minutes, 24 secondsway, we can easily change every component of this entity list to display whatever we want for either the renderer
7:53:327 hours, 53 minutes, 32 secondsor for the empty state. Now, we can head back to workflows.tsx DSX inside of features, workflows, components, workflows.
7:53:427 hours, 53 minutes, 42 secondsAnd now we can go inside of the workflows list and uh make this a little bit better. So I'm going to remove this
7:53:507 hours, 53 minutes, 50 secondsentire thing and I'm just going to return the entity list from components entity components.
7:54:007 hours, 54 minutesAnd then let's go ahead and pass the items to be workflows.
7:54:047 hours, 54 minutes, 4 secondsitems get key is very simply going to uh get the individual workflow from each of
7:54:117 hours, 54 minutes, 11 secondsthese item list and it will use the workflow ID and you can see how we have type safety here and you're probably wondering how does it know exactly what
7:54:207 hours, 54 minutes, 20 secondsthe workflow is because of the items prop because inside of the entity list here we decide that the items are the
7:54:297 hours, 54 minutes, 29 secondsgeneric so then we can reuse that generic type through all the other functions that we have and have type
7:54:367 hours, 54 minutes, 36 secondssafety passed along. So if I change this to I don't know credentials or some other type it will have that type here.
7:54:467 hours, 54 minutes, 46 secondsSo that's how this is working. That's why we needed that a little bit complicated interface to allow us to adapt to any items list that we pass.
7:54:557 hours, 54 minutes, 55 secondsThis is how people actually build those reusable UI components which render lists. If you ever wondered like data
7:55:027 hours, 55 minutes, 2 secondsgrids and things like that, they need uh type safety like this. So it it can accompany any scenario.
7:55:107 hours, 55 minutes, 10 secondsRender item is the next prop which we need. And for now, let's go ahead and just get workflow and render a paragraph
7:55:167 hours, 55 minutes, 16 secondswhich will say workflow.name because we don't actually have a component. And empty view will simply be workflows empty.
7:55:287 hours, 55 minutes, 28 secondsAnd now we should have a bit of a nicer experience. Here it is. And if I remove this, I should just get paragraphs of
7:55:367 hours, 55 minutes, 36 secondsall of my workflows. And when I search for something obscure, I get my no items result. And when I click add item, all
7:55:447 hours, 55 minutes, 44 secondsit should do is just create a new workflow. And you can see how this one does not redirect me there. So that's what I was talking about, right?
7:55:527 hours, 55 minutes, 52 secondsSometimes we might not want to redirect the user. This action definitely tells the user to kind of immediately go there. But you can decide for yourself.
7:56:027 hours, 56 minutes, 2 secondsUh do you want inside of your workflow is empty here to also add an onsuccess
7:56:117 hours, 56 minutes, 11 secondsget the data and then do router which you need to import from next navigation push workflows
7:56:207 hours, 56 minutes, 20 secondsdata ID. If you want to you can do that and then every time they create a new one they will be redirected. So perhaps that's a good idea to do here as well.
7:56:287 hours, 56 minutes, 28 secondsUse router. We already have use router imported. Perfect. So now when you click add item from here, it will also
7:56:367 hours, 56 minutes, 36 secondsredirect there. There we go. Perfect. So let's go back inside of workflows now.
7:56:417 hours, 56 minutes, 41 secondsAnd now let's go ahead and render uh the workflow item component.
7:56:477 hours, 56 minutes, 47 secondsSo the entity item component which we need to create now uh will be a little bit larger but it won't really be
7:56:547 hours, 56 minutes, 54 secondscomplicated in any way. So let's start by creating an interface entity item props in here. Let's start with a couple
7:57:037 hours, 57 minutes, 3 secondsof easy ones href title and subtitle which is a required an optional react
7:57:107 hours, 57 minutes, 10 secondsnode. And then we will have optional image and actions and both of them will be react.react node also optional.
7:57:217 hours, 57 minutes, 21 secondsThen we're going to have an optional on remove which can be either a void or it can be a promise void.
7:57:287 hours, 57 minutes, 28 secondsAnd then let's go ahead and add is removing and class name which are all optional. One is a boolean and one is a string.
7:57:387 hours, 57 minutes, 38 secondsNow let's go ahead and export entity item with all of those props this structured href title subtitle image
7:57:467 hours, 57 minutes, 46 secondsactions on remove is removing and a class name and inside of here what we are going to
7:57:537 hours, 57 minutes, 53 secondsdo is we're going to return a link
7:57:597 hours, 57 minutes, 59 secondswhich we already have it make sure it's imported from next link
7:58:067 hours, 58 minutes, 6 secondsgive it an href of href and prefetch option. So automatically by clicking on the entity item you will redirect to its uh page.
7:58:187 hours, 58 minutes, 18 secondsWhat we have to do now is we have to import all of the card components. I'm not sure if we have that. So let's go ahead and quickly check in our import.
7:58:277 hours, 58 minutes, 27 secondsWe don't. So let's go ahead and add card card content description and title. You can also use this type of import since
7:58:367 hours, 58 minutes, 36 secondswe are in the same folder. And we are also going to need all components from the drop-down menu. So same thing
7:58:447 hours, 58 minutes, 44 secondsdrop-own menu content item and drop-down menu trigger.
7:58:497 hours, 58 minutes, 49 secondsNow that we have that, let's go back to our entity item and let's start building
7:58:577 hours, 58 minutes, 57 secondsthe actual card here. So card will have a following class name. It
7:59:057 hours, 59 minutes, 5 secondswill be dynamic. So open CN. We already have it imported by default. Padding for shadow none hover shadow and cursor pointer.
7:59:167 hours, 59 minutes, 16 secondsIf is removing, we're going to make sure that it has some kind of opacity to indicate that something is happening and
7:59:237 hours, 59 minutes, 23 secondsthat uh it should not be interacted with because it's being removed. And as the third, we're going to pass the class name which can be whatever the user
7:59:327 hours, 59 minutes, 32 secondswants. I mean the developer wants. So card content will have a class name of flex flex row items center justify
7:59:427 hours, 59 minutes, 42 secondsbetween and padding zero. And then let's add a div with a class name flex items
7:59:497 hours, 59 minutes, 49 secondscenter and gap three. And in here we're going to render an image.
7:59:567 hours, 59 minutes, 56 secondsUh then let's go ahead. So still inside of this div here, let's open a new div
8:00:038 hours, 3 secondsand a card title. And in here, we're just going to render the title of this item.
8:00:108 hours, 10 secondsThe card title will have a class name of text base and font medium.
8:00:168 hours, 16 secondsAnd then we are going to have a check if the subtitle exists. In that case, let's add
8:00:258 hours, 25 secondscard description and render the subtitle. And the class name will be text extra small. And now we have to
8:00:348 hours, 34 secondsdevelop the drop-own menu action. So let's go ahead outside of these two divs still inside of card content and let's
8:00:418 hours, 41 secondscheck if we have actions or if we specifically have on remove.
8:00:488 hours, 48 secondsLet's go ahead and let's do div. Inside we can render the actions if the developers want to pass actions like
8:00:558 hours, 55 secondsthis flex gap x4 items center suggests some simple styling here. And now let's
8:01:028 hours, 1 minute, 2 secondsspecifically develop on remove here because this will be the one most commonly used in our case. We open the
8:01:098 hours, 1 minute, 9 secondsdrop-own menu. We open the drop-down menu trigger. We make this trigger behave as child. So it becomes the ch
8:01:178 hours, 1 minute, 17 secondsthe child element which in our case will be the button. This way uh it won't be rendered as button within a button but
8:01:258 hours, 1 minute, 25 secondsit will use the styles of our chatsen button that's why we are doing so size will be icon variant will be ghost on
8:01:358 hours, 1 minute, 35 secondsclick will be event stop propagation the reason we need this is so that when you
8:01:428 hours, 1 minute, 42 secondsclick on the drop-own menu you don't trigger the link which redirects the user away so that's why we are stopping
8:01:518 hours, 1 minute, 51 secondspropagation here. And inside we're going to render more vertical icon and let's go ahead and give it a class name size
8:02:008 hours, 2 minutes4. Make sure you've imported this from Lucid React.
8:02:058 hours, 2 minutes, 5 secondsOutside of the trigger, let's go ahead and add drop-down menu content.
8:02:118 hours, 2 minutes, 11 secondsAnd it needs to have a few props as well. first a line which will be end and
8:02:188 hours, 2 minutes, 18 secondson click which will again stop the propagation.
8:02:238 hours, 2 minutes, 23 secondsSo even when you click in the drop-down content it doesn't count as a link click
8:02:298 hours, 2 minutes, 29 secondsand finally drop-down menu item and trash icon from Lucid React with delete
8:02:378 hours, 2 minutes, 37 secondstext and a class name to the icon of size four.
8:02:428 hours, 2 minutes, 42 secondsAgain, make sure you've imported trash icon from Lucid React. And now we have to uh develop the handle remove method
8:02:508 hours, 2 minutes, 50 secondswhich will be very simple. So it's just going to be a generic. We already have on remove here. So what we're going to do is con handle remove. Make it
8:02:598 hours, 2 minutes, 59 secondsasynchronous. Event will be react.mouse event.
8:03:048 hours, 3 minutes, 4 secondsFirst things first prevent default. Then stop propagation. Check if you are
8:03:108 hours, 3 minutes, 10 secondsalready removing and then uh I'm my apologies. Check if we have the on remove method and then await on remove.
8:03:208 hours, 3 minutes, 20 secondsAnd you could perhaps check if is removing just break the method. This way you cannot trigger it twice.
8:03:328 hours, 3 minutes, 32 secondsAnd then very simply on the drop-own menu item add on click handle remove.
8:03:428 hours, 3 minutes, 42 secondsThere we go. Now we have the entity item. And now that we have that, we can go back inside of workflows.tsx
8:03:528 hours, 3 minutes, 52 secondsuh and let's go ahead and let's develop the workflow item. So uh the way we're going to do that
8:04:018 hours, 4 minutes, 1 seconduh let's just do export const workflow item
8:04:088 hours, 4 minutes, 8 secondsand the type will be workflow and you will be able to import the
8:04:148 hours, 4 minutes, 14 secondsworkflow type. Let me see do we maybe have it already or do we not? We don't
8:04:218 hours, 4 minutes, 21 secondshave it. Uh I think we can import it from Prisma schema.
8:04:288 hours, 4 minutes, 28 secondsSo let's import workflow from generated Prisma like this workflow and let's import it as a type workflow.
8:04:398 hours, 4 minutes, 39 secondsSo it's referring uh to our schema model workflow. This way we have its exact types.
8:04:488 hours, 4 minutes, 48 secondsAnd then we're going to map that down here. So that's exactly what it will be used for.
8:04:548 hours, 4 minutes, 54 secondsAnd let's destructure the uh let me see should it be data. Oh okay we're going
8:05:018 hours, 5 minutes, 1 secondto pass it as data workflow like this.
8:05:088 hours, 5 minutes, 8 secondsSo we don't individually have to pass all the fields.
8:05:118 hours, 5 minutes, 11 secondsAnd in here let's simply return entity item from components entity components.
8:05:188 hours, 5 minutes, 18 secondsMake sure you've added this new import.
8:05:228 hours, 5 minutes, 22 secondsHref is going to be forward slashworkflows slash data id. Title is going to be data.name.
8:05:328 hours, 5 minutes, 32 secondsSubtitle is going to have a fragment here updated. And let's go ahead say to-do.
8:05:418 hours, 5 minutes, 41 secondsThen we're going to have an empty space.
8:05:448 hours, 5 minutes, 44 secondsadd bull as in bullet point created empty space to do.
8:05:528 hours, 5 minutes, 52 secondsSo, makes no sense now, but we will fix this in a uh a second. Now for the
8:06:008 hours, 6 minutesimage, let's go ahead and for now I think we can just pass
8:06:088 hours, 6 minutes, 8 secondsan element like div class name size 8
8:06:168 hours, 6 minutes, 16 secondsflex items center justify center
8:06:238 hours, 6 minutes, 23 secondsand the render workflow icon from Lucid React. act inside.
8:06:318 hours, 6 minutes, 31 secondsUh here's the tricky part again. Lucid exports both workflow and workflow icon.
8:06:388 hours, 6 minutes, 38 secondsBoth of these are valid. But make sure you don't use the workflow from Lucid React because it will conflict with the type here. So just make sure to use
8:06:478 hours, 6 minutes, 47 secondsworkflow icon. Honestly, I'd also do this as workflow type maybe, but it's okay for now if we don't have any other
8:06:548 hours, 6 minutes, 54 secondsworkflow uh thingy named inside of this file. So, workflow icon is rendered here.
8:07:038 hours, 7 minutes, 3 secondsUh now let's go ahead and give this a class name size five and the text muted foreground.
8:07:138 hours, 7 minutes, 13 secondslater this image will be completely dynamic and depending on the first trigger of the workflow it will display
8:07:218 hours, 7 minutes, 21 secondsthe image of that trigger for example uh Stripe or Google form or web hook like
8:07:288 hours, 7 minutes, 28 secondsthings like that but since we don't have that developed at all yet we're just going to fall back to this simple uh workflow icon.
8:07:388 hours, 7 minutes, 38 secondsAll right, now that we have that, let's go ahead and just pass in on remove to be an empty arrow function is removing to be false.
8:07:508 hours, 7 minutes, 50 secondsAnd I think that now we should be able to revisit our workflows list
8:07:578 hours, 7 minutes, 57 secondscomponent. Here it is. So inside of the render item now instead of rendering
8:08:048 hours, 8 minutes, 4 secondsthis paragraph let's render workflow item
8:08:108 hours, 8 minutes, 10 secondsand pass in data to be workflow and let's see this now isn't compatible it seems.
8:08:188 hours, 8 minutes, 18 secondsSo user ID string user ID let me see created at are not
8:08:258 hours, 8 minutes, 25 secondscompatible. Oh. Aha. I think I know exactly why this is happening. It should work. If you take a look, it looks fine.
8:08:338 hours, 8 minutes, 33 secondsAll right. But why is the T why are the types wrong? Well, as you can see here,
8:08:398 hours, 8 minutes, 39 secondsuh yeah, things happen during the TRPC to server component to hydration to
8:08:468 hours, 8 minutes, 46 secondscache types get lost especially for the kinds of types which are in the database referred to as a date. but on the front
8:08:558 hours, 8 minutes, 55 secondsend are referred to as a string. For example, types of property created that are incompatible. String is not
8:09:028 hours, 9 minutes, 2 secondsassignable to date. So yeah, that that's a problem because one has a I guess a time stamp of some sort in a string and the other one has an actual date, right?
8:09:148 hours, 9 minutes, 14 secondsSo how do we fix that? We fix that with super JSON. So let's go ahead and do npm install superjson
8:09:238 hours, 9 minutes, 23 secondsand I will show you the exact version I have super JSON. Usually I teach people to install super JSON during the TRPC
8:09:328 hours, 9 minutes, 32 secondsinstallation but this actually might be better because you actually learn why we need it. So you can see yes now we have
8:09:398 hours, 9 minutes, 39 secondsthis problematic types right incompatible with our front end and our database because database has we're
8:09:478 hours, 9 minutes, 47 secondsusing Postgres as the database and we're basically using schema to communicate to Postgress using uh those types right uh
8:09:568 hours, 9 minutes, 56 secondsbut our JavaScript app on the front end doesn't have the same types as our Postgress database so we need some way
8:10:058 hours, 10 minutes, 5 secondsto transform that data to make it compatible and to make it you know able to communicate both ways from the
8:10:138 hours, 10 minutes, 13 secondsdatabase to the front end and from the front end to uh an API call which needs to create something in the database and the way you fix this is super easy you
8:10:218 hours, 10 minutes, 21 secondswould just have to revisit our TRPC init file here and actually all of the files so let's see u in here we already have
8:10:318 hours, 10 minutes, 31 secondsinside of initcreate you can see we have data transformers and you can actually learn more about them by following this link. Superjson
8:10:408 hours, 10 minutes, 40 secondsallows us to transparently use standard date map set over the vire between server and the client. Basically that
8:10:498 hours, 10 minutes, 49 secondswas the problem. You can return any of these types from your AP resolver and use them in client without having to recreate the objects from JSON. So
8:10:588 hours, 10 minutes, 58 secondsthat's how that works. So we can now finally enable the transformer superjson and we can import superjson.
8:11:088 hours, 11 minutes, 8 secondsDid I show you my superjson version? I don't think it matters that much but it's 2.2.2.
8:11:158 hours, 11 minutes, 15 secondsSo superjson as you can see now is added as a transformer here. And now I think there are some other places where we need to add it. Let's check the server itself.
8:11:268 hours, 11 minutes, 26 secondsUh okay I think not needed here query client in here we need it. So you can
8:11:348 hours, 11 minutes, 34 secondssee it's already commented out. So import super JSON from superjson and instead of make query client uncomment
8:11:418 hours, 11 minutes, 41 secondsserialized data and uncomment d serialized data. This way it will work both ways on the database and to the
8:11:488 hours, 11 minutes, 48 secondsdatabase and to the client and client.tsx. Let me check if we have something here.
8:11:568 hours, 11 minutes, 56 secondsWe do. And we also have an error unless it is enabled. So make sure to uncomment
8:12:038 hours, 12 minutes, 3 secondstransformer inside of HTTP batch link inclient.tsx.
8:12:088 hours, 12 minutes, 8 secondsAnd let's also just import superjson from superjson.
8:12:138 hours, 12 minutes, 13 secondsAnd once you do that, I think that's all. I think we so we added it inside of client. We added it inside of init.
8:12:228 hours, 12 minutes, 22 secondsWe added it inside of query client. The only place we didn't add it is inside of server. And I think we don't need to add
8:12:308 hours, 12 minutes, 30 secondsit here. If we've done this correctly and now revisit workflows.tsx, there should be no error. You can see
8:12:388 hours, 12 minutes, 38 secondsthat updated at and created at are both treated as date. If you are still getting errors, you can just reload your
8:12:468 hours, 12 minutes, 46 secondswindow or restart your TypeScript session or restart Visual Studio Code.
8:12:508 hours, 12 minutes, 50 secondsSo that's what SuperJSON do does. It's a data transformer. Yes, I'm actually happy this happened because this way you
8:12:588 hours, 12 minutes, 58 secondscan learn why we need it rather just than just blindly follow me with installing it.
8:13:048 hours, 13 minutes, 4 secondsAnd we already saw that the UI is working just fine. So nothing much to really uh view here. It worked before as
8:13:138 hours, 13 minutes, 13 secondswell, but now the types are correct as well. So later uh and yes clicking on it redirects to individual workflow later
8:13:218 hours, 13 minutes, 21 secondseach of these little icons will change depending on what is the first trigger node in each workflow. So if it is like a stripe web hook it will change to a
8:13:298 hours, 13 minutes, 29 secondsstripe icon. If it's a Google form it will change to Google form. If it's manual execution it will have a little arrow. Things like that little details
8:13:388 hours, 13 minutes, 38 secondswhich are going to make this look better. Uh [snorts] now let's fix the to-do thing and let's enable the deletion. So fixing to-do is quite
8:13:478 hours, 13 minutes, 47 secondssimple. Let's go ahead and mpm install date fns. As always, I'm going to show you uh the version that I installed
8:13:558 hours, 13 minutes, 55 secondssimply in case you're wondering, oh, why don't I have the same API? It could be that you have a completely different major version depending on when you're
8:14:048 hours, 14 minutes, 4 secondswatching the video. All right, now that we have this, let's go ahead and import a couple of things from date FNS.
8:14:148 hours, 14 minutes, 14 secondsSo, let's import actually just one thing. Format distance to now. That's the one we need. And
8:14:238 hours, 14 minutes, 23 secondslet's scroll all the way down to our workflow item. And let's change the
8:14:298 hours, 14 minutes, 29 secondsto-do here to instead be format distance to now data dot updated at because that
8:14:398 hours, 14 minutes, 39 secondswill be our primary order, right? which was the most recently modified workflow to show first. So we are showing it
8:14:488 hours, 14 minutes, 48 secondsfirst here as well like this and created also format distance to now data created
8:14:578 hours, 14 minutes, 57 secondsat and this way you will see updated 21 minutes created 21 minutes. We currently don't have an option to update. So all
8:15:068 hours, 15 minutes, 6 secondsof them will be exactly the same. And if you want to, you can also add to both of these an option to add suffix.
8:15:198 hours, 15 minutes, 19 secondsAdd suffix true like this.
8:15:248 hours, 15 minutes, 24 secondsAnd when you add that to both of them, it will have the ago. So updated 21 minutes ago, created 21 minutes ago.
8:15:328 hours, 15 minutes, 32 secondsPerfect. One more thing left to do and that is the on remove method. So
8:15:398 hours, 15 minutes, 39 secondslet's start with our okay I just closed everything I didn't need to close. Uh
8:15:458 hours, 15 minutes, 45 secondslet me go inside of uh routers.ts here. Do we have the remove method? Let
8:15:548 hours, 15 minutes, 54 secondsme check. We have. It's had protected procedure. Great. And it will delete a single unique file using the unique
8:16:028 hours, 16 minutes, 2 secondsfield. and using permission user ID field. Perfect. But what I think we don't have is use workflows
8:16:118 hours, 16 minutes, 11 secondsuh hook for it. So we have it to create workflow. We never developed one to remove workflow. So let's do that first.
8:16:198 hours, 16 minutes, 19 secondsSo hook to remove a workflow export const. Use remove workflow.
8:16:288 hours, 16 minutes, 28 secondsWe're going to start usual by adding TRPC and use query client. I think we have both of them imported here already.
8:16:368 hours, 16 minutes, 36 secondsAnd let's return use mutation. In the first argument, we are passing TRPC.workflows.
8:16:438 hours, 16 minutes, 43 secondsAnd we are opening the mutation options.
8:16:468 hours, 16 minutes, 46 secondsInside of the mutation options, we are passing on success. And if it succeeds, let's go ahead and first do toast.uess.
8:16:558 hours, 16 minutes, 55 secondsAnd let's go ahead and indicate which workflow was removed. Workflow data.name removed.
8:17:038 hours, 17 minutes, 3 secondsIf you want to, you can put it in quotes.
8:17:068 hours, 17 minutes, 6 secondsUh let me see what how do the other toasts look like. The other put it in quotes. So it would make sense for this one to do that as well. What I like to
8:17:148 hours, 17 minutes, 14 secondsdo here now is I like to invalidate my queries. TRPC workflows get manyquery
8:17:218 hours, 17 minutes, 21 secondsoptions like this. It's also perfectly valid to not want to invalidate all queries and
8:17:308 hours, 17 minutes, 30 secondsinstead just want to manually go inside of cache and remove that one. That's also I mean that's obviously a better
8:17:388 hours, 17 minutes, 38 secondssolution. But the thing is uh we had limits in place. So when you reinvalidate it's not like you're going
8:17:458 hours, 17 minutes, 45 secondsto refetch your entire workflow database. You will just refetch at max five or 10 items for that user, right?
8:17:548 hours, 17 minutes, 54 secondsUh, I find it easier, especially in tutorials, you know, to just invalidate the entire queries. Same thing goes when you create a new one. It's easier for me
8:18:028 hours, 18 minutes, 2 secondsto just invalidate and load new ones rather than go inside of workflows cache and then append one to the top or here
8:18:108 hours, 18 minutes, 10 secondsfilter out by the ID. But you can do that. Yeah, that would technically be even better. But you don't have to worry about this being super unoptimized
8:18:188 hours, 18 minutes, 18 secondsbecause we do have limits in place inside of our constants here. So we don't let just a billion records to be loaded every time we invalidate.
8:18:288 hours, 18 minutes, 28 secondsPerfect. Uh so now that we have use remove method here uh we can go inside of workflows.tsx
8:18:378 hours, 18 minutes, 37 secondsand inside of workflow item we can actually use it. So what I'm going to do is I'm going to do the following.
8:18:478 hours, 18 minutes, 47 secondsI'm going to import mutate a I'm going to extract mutate async and I'm going to map it to remove workflow and I'm going
8:18:558 hours, 18 minutes, 55 secondsto extract is pending and let me go ahead and use import use remove workflow here from all of the other ones and
8:19:058 hours, 19 minutes, 5 secondsactually I don't need to complicate this that much I can just do remove workflow
8:19:148 hours, 19 minutes, 14 secondsno reason to complicate it const handle remove like this. Let's go ahead and just do uh
8:19:248 hours, 19 minutes, 24 secondsremove workflow mutate and in here pass in id data id
8:19:328 hours, 19 minutes, 32 secondsand then inside of on remove we can pass in handle remove workflow is pending.
8:19:418 hours, 19 minutes, 41 secondsThere we go. So, if we did this correctly, I will try to remove harsh breezy
8:19:488 hours, 19 minutes, 48 secondsPortugal by clicking delete. You can see it's grayed out and it's reinvalidated and removed. Amazing job. So, we just
8:19:578 hours, 19 minutes, 57 secondsfinished the entire UI for our uh handling workflows API thingy. And what's cool about it is that we now have
8:20:068 hours, 20 minutes, 6 secondsa set of components that we can reuse for credentials and for executions. So we no longer have to worry about building any of that from scratch. We
8:20:148 hours, 20 minutes, 14 secondscan easily reuse it for anything. We can reuse the pageionation. We can reuse the header, the new buttons, everything. We
8:20:218 hours, 20 minutes, 21 secondscan reuse the empty states in here. We can reuse the uh loading states. Let me try and demonstrate it. No luck. Oh,
8:20:298 hours, 20 minutes, 29 secondsokay. You saw it. Perfect. We can reuse the errors and the delete methods here as well. Perfect. I believe that marks the end of this chapter. So let me see.
8:20:408 hours, 20 minutes, 40 secondsWe created the UI components for loading error empty list and for item. And now let's go ahead and push this to GitHub.
8:20:508 hours, 20 minutes, 50 secondsSo 13 workflows UI. Let me first review my files here.
8:20:568 hours, 20 minutes, 56 secondsNine files package JSON page entity component workflows use workflows client init and query client where we initialized super JSON. So I'm going to
8:21:068 hours, 21 minutes, 6 secondsgo ahead and open a new branch here. 13 workflows UI.
8:21:118 hours, 21 minutes, 11 secondsThen I'm going to stage all of my changes and I'm going to make a commit 13 workflows UI. I'm going to commit and I'm going to publish the branch.
8:21:228 hours, 21 minutes, 22 secondsPerfect. And now let's go ahead and do our GitHub pull request review. So
8:21:298 hours, 21 minutes, 29 secondscompare pull request. Create pull request. And let's have another set of eyes take a look at our code.
8:21:388 hours, 21 minutes, 38 secondsAnd here we have the summary. We enhanced workflows page with dedicated loading and error views. We added an
8:21:468 hours, 21 minutes, 46 secondsempty state with a guided flow to create a new workflow. We introduced a consistent workflow list item with
8:21:538 hours, 21 minutes, 53 secondsimages and human readable timestamps. We enabled deleting workflows with user feedback on success. And of course, we
8:22:018 hours, 22 minutes, 1 secondintegrated super JSON for more reliable data handling and compatibility across the app. and added superjson as a
8:22:088 hours, 22 minutes, 8 secondsruntime dependency. Exactly. In here, as always, file by file walkthrough. Uh there wasn't too much business logic to
8:22:168 hours, 22 minutes, 16 secondsreview here really, but perhaps some of you might be interested in this, which is the diagram explaining how superjson
8:22:258 hours, 22 minutes, 25 secondsserialization and deserialization happens. So feel free to pause the video and take a look here. Again, great catch
8:22:328 hours, 22 minutes, 32 secondsby Code Rabbit explaining what seems a super simple thing we did, which was actually very important for this project and to make it work all together.
8:22:428 hours, 22 minutes, 42 secondsAnd good thing is uh this project didn't include too much business logic. So, we actually have only one comment to add
8:22:498 hours, 22 minutes, 49 secondserror handling for workflow removal. So, we have on success, but we forgot to do on error. So, yeah, definitely something
8:22:578 hours, 22 minutes, 57 secondswe could add. Other than that, no comments. Let's go ahead and merge this pull request. And after we have merged
8:23:048 hours, 23 minutes, 4 secondsit, let's go ahead back inside of our main branch. Let's hit synchronize changes.
8:23:128 hours, 23 minutes, 12 secondsAnd as always, I like to confirm once the changes are synchronized inside of my graph here. 13 workflows UI merged
8:23:208 hours, 23 minutes, 20 secondsback here in the main branch. I believe that marks the end of this chapter. Let me go ahead and mark it as finished.
8:23:298 hours, 23 minutes, 29 secondspushed to GitHub, created a new branch, created APR, and reviewed and merged.
8:23:358 hours, 23 minutes, 35 secondsAmazing, amazing job, and see you in the next chapter.
Chapter 15: 14 Workflow Page
8:23:408 hours, 23 minutes, 40 secondsIn this chapter, we're going to focus on creating the individual workflow page.
8:23:458 hours, 23 minutes, 45 secondsBy using the workflow ID, we will be able to prefetch on the server component, use suspense query in the
8:23:538 hours, 23 minutes, 53 secondsclient component, and display loading and error states with our suspense and error boundary components.
8:24:018 hours, 24 minutes, 1 secondWe are then going to create a useful workflow header component which we are going to use to display and update
8:24:098 hours, 24 minutes, 9 secondsworkflow name. And we're going to end the chapter by creating the editor component which will display react flow
8:24:198 hours, 24 minutes, 19 secondswhere we are going to finally start adding some nodes.
8:24:238 hours, 24 minutes, 23 secondsLet's start by doing the prefetch use suspense query loading and error because we have just done that for the entire workflows list page.
8:24:358 hours, 24 minutes, 35 secondsOne thing I want to bring your attention to is that when we initialized this project here, we used biome as our
8:24:458 hours, 24 minutes, 45 secondsllinter. But you've probably noticed that during this entire tutorial, I never really got any biome warnings.
8:24:548 hours, 24 minutes, 54 secondsThat is because I never installed the biome extension.
8:24:598 hours, 24 minutes, 59 secondsSo if you actually want to see the benefit of using biome, you should probably use the extension, but keep in mind that biome is pretty
8:25:088 hours, 25 minutes, 8 secondsstrict. For example, if I go instead of source tpc server.tsx,
8:25:158 hours, 25 minutes, 15 secondsyou can see that now I have all kinds of warnings and infos here. For example, biome is telling me that I need to sort
8:25:258 hours, 25 minutes, 25 secondsmy imports and exports. It's also telling me that I should make sure to
8:25:318 hours, 25 minutes, 31 secondsonly import things which are types separately as types. It's also telling
8:25:378 hours, 25 minutes, 37 secondsme not to use any. Now, these warnings shouldn't really break my build. The
8:25:458 hours, 25 minutes, 45 secondsonly thing that can break the build are TypeScript errors.
8:25:498 hours, 25 minutes, 49 secondsSo, I do know that there is an option to fix all of this at once by using a
8:25:588 hours, 25 minutes, 58 secondsformatter, and you can set that formatter to apply every time you save the file, or you can manually format
8:26:068 hours, 26 minutes, 6 secondsyour document and then configure the default formatter to be biome. And you can see how that kind of fixes the issue. But in this tutorial, I'm
8:26:158 hours, 26 minutes, 15 secondsactually not going to do that. And the reason why is I don't feel comfortable
8:26:228 hours, 26 minutes, 22 secondswith you not seeing exactly every single line that I change because if I use the
8:26:298 hours, 26 minutes, 29 secondsformatter, sure, we can see that it modified some files here. But I'm pretty sure you didn't notice that it also
8:26:368 hours, 26 minutes, 36 secondsmodified the files down there. And I don't want you to I don't want to leave you in a situation where you have
8:26:438 hours, 26 minutes, 43 secondsdifferent code than I do. For that reason, and for that reason only, because this is a tutorial, I will not be using the biome extension at all.
8:26:548 hours, 26 minutes, 54 secondsIf you want to, you can of course use it. Llinters are overall a good thing.
8:27:008 hours, 27 minutesAnd if you use the save format on save, it will be obviously a better quality
8:27:078 hours, 27 minutes, 7 secondscode. But just for tutorial purposes to make this easier for you to follow, I will not be using biome at all. I still
8:27:168 hours, 27 minutes, 16 secondsrecommend using biome. I did use it while I was developing to catch some issues. But for tutorial sake, I'm not
8:27:248 hours, 27 minutes, 24 secondsgoing to use it because it has a bit too strict rules that I will waste my time on. So let's go ahead now and let's focus on doing load workflow page by ID.
8:27:368 hours, 27 minutes, 36 secondsAnd yes, you can always format your entire project when you finish it. So just like format all files and fix them,
8:27:438 hours, 27 minutes, 43 secondsbut keep in mind that almost all files from chats and UI will be broken according to biome. So it will be quite
8:27:528 hours, 27 minutes, 52 secondsa lot of changes. So decide for yourself. Maybe while following this tutorial,
8:27:598 hours, 27 minutes, 59 secondsdon't fix every single biome issue. You will just spend a lot of time doing that. maybe later when you finish the
8:28:068 hours, 28 minutes, 6 secondsproject. All right, now finally I can go into building this. So I want to start by seeing do I even have my uh features
8:28:178 hours, 28 minutes, 17 secondsworkflows server routers.ts. Do I have get one? Looks like I do. It is protected and it is queried by ID.
8:28:288 hours, 28 minutes, 28 secondsPerfect. And it's fetching for this user permission. Great. Exactly what we need.
8:28:358 hours, 28 minutes, 35 secondsSo now uh what we should do here inside of workflows, let's go inside of prefetch here and let's create a prefetch for individual workflow.
8:28:468 hours, 28 minutes, 46 secondsSo that's actually quite simple.
8:28:508 hours, 28 minutes, 50 secondsPrefetch a single workflow. Export const prefetch workflow accept an ID which is a type of string and just as above
8:28:578 hours, 28 minutes, 57 secondsprefetch DRPC workflows this time using get one and query options are just that
8:29:048 hours, 29 minutes, 4 secondssingle ID and save the file. Now we have prefetch workflow.
8:29:108 hours, 29 minutes, 10 secondsNow let's also do the equivalent in the hooks. Instead of use workflows here we have use remove workflow, we have use
8:29:188 hours, 29 minutes, 18 secondscreate workflow and use suspense workflows.
8:29:238 hours, 29 minutes, 23 secondsSo down here at the bottom I'm going to add uh use suspense workflow
8:29:308 hours, 29 minutes, 30 secondsa hook to fetch a single workflow using suspense. So use suspense workflow also
8:29:378 hours, 29 minutes, 37 secondsaccepts an ID initializes TRPC and simply returns use suspense query TRPC
8:29:448 hours, 29 minutes, 44 secondsworkflows get one query options and passes in the ID. This is how it looks like in one line. There we go.
8:29:528 hours, 29 minutes, 52 secondsLet's go ahead and continue with this for now. Once we have those two, we can go ahead inside of app folder dashboard
8:30:018 hours, 30 minutes, 1 secondeditor workflows workflow ID page. DSX and we already have something prepared here. So we are protecting this page.
8:30:108 hours, 30 minutes, 10 secondsGreat. And we are even extracting the workflow ID from the params which means that if I go to localhost 3000 and just
8:30:188 hours, 30 minutes, 18 secondsclick on a random workflow, I should be seeing the workflow ID here. And I do which means that this is working as
8:30:258 hours, 30 minutes, 25 secondsexpected. And since I do that, it also means that I can now safely prefetch here. So prefetch workflow, not
8:30:338 hours, 30 minutes, 33 secondsworkflows, just workflow and pass in workflow ID. Make sure you have imported prefetch workflow. A quick reminder, you
8:30:428 hours, 30 minutes, 42 secondsdo not need to await this. So the prefetch which we have defined in server.tsx is using avoid for that
8:30:498 hours, 30 minutes, 49 secondsspecific reason. It's not returning any value. It is simply populating the cache. So now that we have prefetched
8:30:578 hours, 30 minutes, 57 secondsthis, let's go ahead and let's save some time by going inside of rest workflows page.tsx
8:31:058 hours, 31 minutes, 5 secondsand let's copy hydrate client and suspense and error boundary like this. Paste all of them here.
8:31:168 hours, 31 minutes, 16 secondsLet's go ahead and close error boundary and let's close hydrate client. Now let's go ahead and indent these things.
8:31:268 hours, 31 minutes, 26 secondsThere we go. Let's import hydrate client from tRPC server. Let's import error boundary from react error boundary.
8:31:368 hours, 31 minutes, 36 secondsLet's import suspense from react.
8:31:418 hours, 31 minutes, 41 secondsAll of these components. Great. Now let's go ahead and temporarily just set
8:31:478 hours, 31 minutes, 47 secondsthe error boundary to be error in a paragraph.
8:31:558 hours, 31 minutes, 55 secondsAnd let's go ahead and set the loading to be a similar solution like this.
8:32:038 hours, 32 minutes, 3 secondsNow let's go ahead and create the editor component.
8:32:088 hours, 32 minutes, 8 secondsSo, inside of our features folder, I want to create a new folder called
8:32:158 hours, 32 minutes, 15 secondseditor. And in here, I'm going to create a folder called components and a file editor.tsx.
8:32:268 hours, 32 minutes, 26 secondsLet's mark it as use client and let's import use suspense workflow from features workflow hooks.
8:32:368 hours, 32 minutes, 36 secondsand let's export const editor.
8:32:418 hours, 32 minutes, 41 secondsLet's go ahead and give it a simple prop type workflow ID which is a type of string workflow ID
8:32:518 hours, 32 minutes, 51 secondsand then in here const data remap it to workflow use suspense workflow and pass in the
8:32:598 hours, 32 minutes, 59 secondsworkflow ID and let's go ahead and return a paragraph.
8:33:058 hours, 33 minutes, 5 secondsMake sure to close it. JSON stringify workflow and some settings to format
8:33:138 hours, 33 minutes, 13 secondsthat stringify in a nicer way. Make sure you added use client at the top.
8:33:218 hours, 33 minutes, 21 secondsNow let's also make sure to add editor loading and editor error.
8:33:308 hours, 33 minutes, 30 secondsSo for this we can reuse entity uh loading view from components entity components.
8:33:408 hours, 33 minutes, 40 secondsSo just make sure to return it. And the message here will be loading editor
8:33:468 hours, 33 minutes, 46 secondslike this. And export con editor error
8:33:528 hours, 33 minutes, 52 secondsreturn error view from same and message will be error loading editor.
8:34:018 hours, 34 minutes, 1 secondSo from entity components. Perfect.
8:34:048 hours, 34 minutes, 4 secondsSo now that we have those two, we can go ahead and go back inside of the page. We can replace the error with editor error.
8:34:158 hours, 34 minutes, 15 secondsAnd we can replace the suspense with editor loading.
8:34:228 hours, 34 minutes, 22 secondsAnd inside of suspense, we can render the editor from features editor components editor. And make sure to pass the workflow ID which is workflow ID.
8:34:358 hours, 34 minutes, 35 secondsThere we go. Now this will be prefetched and it will be loaded or it will be thrown if there is an error. Let's quickly take a look. Looks amazing.
8:34:448 hours, 34 minutes, 44 secondsThere we go. Now that we have that, you've probably noticed that we are missing a header. For example, my
8:34:528 hours, 34 minutes, 52 secondsworkflows has a header which I can use to collapse the sidebar. But if I go inside of an individual workflow, that
8:34:598 hours, 34 minutes, 59 secondsheader no longer exists. That's because, as explained here, we're going to have a workflow header which will have the
8:35:068 hours, 35 minutes, 6 secondsability to update workflow name. Since it has that complex feature, I made the architectural decision to separate it in its entire organizational folder here.
8:35:178 hours, 35 minutes, 17 secondsSo, let's go ahead and work on that workflow header. Now the first thing we have to do is go inside of source app folder dashboard
8:35:268 hours, 35 minutes, 26 secondseditor workflow ID page and wrap the children inside of suspense
8:35:348 hours, 35 minutes, 34 secondsinside of main like this and give it a class name of flex one.
8:35:438 hours, 35 minutes, 43 secondsAnd above that main create editor header render which doesn't exist yet. We're going to create it in a moment and pass in the workflow ID like this.
8:35:558 hours, 35 minutes, 55 secondsThe reason we are doing this exact structure is because we are replicating what other routes have in their layout.
8:36:068 hours, 36 minutes, 6 secondsYou can see it's exactly that the children are wrapped in main and above main is the app header. We are doing
8:36:158 hours, 36 minutes, 15 secondsthat exact thing but directly inside of page.tsx because we don't really need the layout
8:36:228 hours, 36 minutes, 22 secondsand also because instead of editor header we're also going to use use suspense workflow. So because of that we
8:36:318 hours, 36 minutes, 31 secondshave to wrap it instead of suspense and error boundary and hydrate client. And I think it makes more sense to do that
8:36:388 hours, 36 minutes, 38 secondsinside of this page than to purposely use a layout file because technically there is no need for a layout in a single route folder.
8:36:488 hours, 36 minutes, 48 secondsSo let's focus on creating the editor header component.
8:36:538 hours, 36 minutes, 53 secondsWe can speed things up by copying the existing app header component.
8:37:028 hours, 37 minutes, 2 secondsSo let me just copy this entire file content and let me go inside of features
8:37:128 hours, 37 minutes, 12 secondseditor components and create a new file called editor header
8:37:198 hours, 37 minutes, 19 secondstsx and paste the content here. Let's rename this to editor header and let's modify the props so that they accept workflow ID.
8:37:298 hours, 37 minutes, 29 secondsThere we go. Let me just extract the workflow ID.
8:37:378 hours, 37 minutes, 37 secondsPerfect.
8:37:398 hours, 37 minutes, 39 secondsAnd let's go ahead and go inside of our page.tsx and let's import editor header.
8:37:478 hours, 37 minutes, 47 secondsSo, so far we've imported the editor component, editor header error, and editor loading. And we've now added
8:37:568 hours, 37 minutes, 56 secondseditor header from components editor header. You can see that now I have that
8:38:028 hours, 38 minutes, 2 secondssame collapse button. Now it doesn't make too much sense why we did this because it looks identical to the one in
8:38:108 hours, 38 minutes, 10 secondsthe list. But now we're going to extend it by adding breadcrumbs so we can see exactly uh what workflow we are on and
8:38:188 hours, 38 minutes, 18 secondsthe ability to modify it. So after sidebar trigger, let's create a div and
8:38:268 hours, 38 minutes, 26 secondsa class name. Make sure you're doing this inside of the editor header file.
8:38:298 hours, 38 minutes, 29 secondsDon't accidentally overwrite your app header. You can close it. Let's give this a class name of flex flex row items
8:38:388 hours, 38 minutes, 38 secondscenter justify between gap x4 and full width. Inside let's first create editor
8:38:478 hours, 38 minutes, 47 secondsbreadcrumbs and pass in the workflow ID as the prop.
8:38:558 hours, 38 minutes, 55 secondsAnd then let's do editor save button. And you can copy the prop from above.
8:39:048 hours, 39 minutes, 4 secondsSo editor the breadcrumbs and editor save button.
8:39:098 hours, 39 minutes, 9 secondsLet's go ahead and develop them one by one. So editor save button. And we can copy the exact thing like this.
8:39:208 hours, 39 minutes, 20 secondsNow the editor save button will just return a div with a class name ML auto
8:39:288 hours, 39 minutes, 28 secondsto push it all the way to the right side by giving it uh a margin on the left side and it will render the button from
8:39:378 hours, 39 minutes, 37 secondscomponents UI button save icon from Lucid React with a class name size 4
8:39:468 hours, 39 minutes, 46 secondsand a text which says Save size will be small on click for now will be empty and
8:39:538 hours, 39 minutes, 53 secondsdisabled will be explicitly false so we remember to modify it later. All right,
8:40:008 hours, 40 minutesthat's one down. Now let's copify uh let's copy editor save button and let's
8:40:068 hours, 40 minutes, 6 secondsgo ahead and create editor breadcrumbs component. And once you save and refresh uh the errors should no longer appear.
8:40:168 hours, 40 minutes, 16 secondsLet me see why uh they are appearing here.
8:40:208 hours, 40 minutes, 20 secondsUhhuh. Okay. It is because we forgot to add use client to the editor header. So use client. And once we do that and
8:40:308 hours, 40 minutes, 30 secondsrefresh, I'm fairly confident we should no longer have any errors. We should just have two instances of save buttons.
8:40:378 hours, 40 minutes, 37 secondsIt's obviously because we didn't change the content of the editor breadcrumbs.
8:40:428 hours, 40 minutes, 42 secondsSo let's go ahead and do that. In order to do that, we are going to have to import all the components from
8:40:518 hours, 40 minutes, 51 secondsbreadcrumb. We already have it when we added chats and UI breadcrumb item link list and separator.
8:40:598 hours, 40 minutes, 59 secondsAnd while we are here, let's also import input. And let's also import use effect,
8:41:078 hours, 41 minutes, 7 secondsuse ref, use state from react. Uh, and I
8:41:138 hours, 41 minutes, 13 secondsthink for now this is okay. Let's just add link from next link. We will add
8:41:218 hours, 41 minutes, 21 secondssome more imports later. Let's for now focus on making the breadcrumbs look like something. So instead of returning a div, it will return breadcrumb.
8:41:328 hours, 41 minutes, 32 secondsSo let's go ahead and close it. Inside it will return breadcrumb list
8:41:408 hours, 41 minutes, 40 secondsthen breadcrumb item then breadcrumb link
8:41:488 hours, 41 minutes, 48 secondsgive it an as child property so it becomes the next JS link which we separately imported and it doesn't use
8:41:578 hours, 41 minutes, 57 secondsbecause otherwise if you don't do it it will just use the normal anchor. So we can now prefetch and we can just
8:42:038 hours, 42 minutes, 3 secondsredirect user to workflows and this will say workflows.
8:42:108 hours, 42 minutes, 10 secondsGreat. Outside of the item added the breadcrumb separator and then in here just leave it empty and
8:42:198 hours, 42 minutes, 19 secondsyou will see how this looks now. So in here obviously we are going to render the individual workflow name but when we click on the workflows we get redirected back to workflows.
8:42:318 hours, 42 minutes, 31 secondsRight, we have this smooth navigation here. Now, what this will allow us to do is that when we click on what's going to
8:42:388 hours, 42 minutes, 38 secondsbe the name of the workflow, it's going to switch to an input and we will be able to change the name.
8:42:458 hours, 42 minutes, 45 secondsIn order to save the name, we have to make sure we have two things ready.
8:42:518 hours, 42 minutes, 51 secondsLet's go inside of routers.ts, inside of workflows server routers. DS
8:42:588 hours, 42 minutes, 58 secondsand let's find update name. Just make sure you have it. The only thing we should accept is the name and the ID. It
8:43:068 hours, 43 minutes, 6 secondsshould be a protected procedure. And in the wear clause, you make sure that you query by user ID as well as the ID.
8:43:138 hours, 43 minutes, 13 secondsPerfect. Once you have that, let's go ahead inside of workflows
8:43:208 hours, 43 minutes, 20 secondshooks. Use workflows. So we have used remove workflow. We have use create workflow. Let's go ahead and copy use create workflow.
8:43:318 hours, 43 minutes, 31 secondsAnd let's go ahead and paste it here.
8:43:338 hours, 43 minutes, 33 secondsAnd let's rename it to use update workflow name. So hook to update a
8:43:428 hours, 43 minutes, 42 secondsworkflow name. We need query client and tRPC. Instead of calling workflows.create, we are calling update name.
8:43:538 hours, 43 minutes, 53 secondsOn success it will be workflow data name updated.
8:43:588 hours, 43 minutes, 58 secondsWe are going to refetch this and we are also going to query client invalidate queries
8:44:068 hours, 44 minutes, 6 secondstRPC workflows get one query options ID data do ID. This way the individual
8:44:148 hours, 44 minutes, 14 secondsone will be refetched as well. So it has a new name and this will be failed to update workflow error message.
8:44:258 hours, 44 minutes, 25 secondsGreat. Now that we have used update workflow name, let's go back inside of the editor header and let's go ahead and
8:44:338 hours, 44 minutes, 33 secondslet's export con editor name editor or maybe editor name inputs. Maybe that one
8:44:418 hours, 44 minutes, 41 secondsis better so we don't repeat the word editor so much. So let's repeat this
8:44:488 hours, 44 minutes, 48 secondstype here. You can copy of course. And in here we're first going to get the
8:44:558 hours, 44 minutes, 55 secondsdata remap it to workflow from use suspense workflow and pass in the
8:45:018 hours, 45 minutes, 1 secondworkflow ID. Now don't worry just because inside of page.tsx DSX. Here we
8:45:098 hours, 45 minutes, 9 secondsrender both the editor header which now uses use suspense workflow and the editor which uses use suspense workflow.
8:45:198 hours, 45 minutes, 19 secondsIt doesn't mean that there will be two requests. It just means that one of them will be cached. So yes, that's the cool
8:45:268 hours, 45 minutes, 26 secondsthing about using React query. Uh and let's go ahead and let's do update
8:45:338 hours, 45 minutes, 33 secondsworkflow name. Or maybe we can just call it update workflow. Use update workflow name.
8:45:408 hours, 45 minutes, 40 secondsPerfect. Now let's go ahead and let's return breadcrumb item and render workflow.name.
8:45:548 hours, 45 minutes, 54 secondsUh it says that workflow is possibly null. Hm. Let me check how that is
8:46:018 hours, 46 minutes, 1 secondexactly possible because we are using use suspense workflow.
8:46:078 hours, 46 minutes, 7 secondsSo that should not happen. Let me check inside of page here. Uh h
8:46:168 hours, 46 minutes, 16 secondsuse suspense workflow. We are returning use suspense query.
8:46:228 hours, 46 minutes, 22 secondsThis should guarantee that the workflow exists.
8:46:278 hours, 46 minutes, 27 secondsI think it might be due to the way instead of use suspense workflow and specifically instead of the get one
8:46:368 hours, 46 minutes, 36 secondshere. Yes, because of this. Let's do it like this instead. Const workflow is
8:46:438 hours, 46 minutes, 43 secondsawait Prisma workflow. Turn the query into an asynchronous component. And if there is no workflow, let's throw new
8:46:518 hours, 46 minutes, 51 secondsTRPC error instead because usually this will not throw. Or maybe I can use find or throw. My apologies. Maybe that's easier. Find, unique, or throw. Exactly.
8:47:038 hours, 47 minutes, 3 secondsIf I use this, I think that then uh my header here will always have this.
8:47:118 hours, 47 minutes, 11 secondsYes. So, we have to throw the error if it didn't find one. There's no point in returning null
8:47:198 hours, 47 minutes, 19 secondsbecause we don't handle that, right? We can't do anything with something that's null. And now we no longer have that
8:47:268 hours, 47 minutes, 26 secondsissue. So just make sure you have modified this get one to find unique or
8:47:338 hours, 47 minutes, 33 secondsthrow. I will go through the rest of the code to see if there is an opportunity to fix that anywhere else here. For example, delete. No, it's just delete.
8:47:448 hours, 47 minutes, 44 secondsCreate is just create. Okay, I think there are no other places to check other than this. But yes, the get one needs
8:47:518 hours, 47 minutes, 51 secondsfind unique or throw because we will display an error if it doesn't exist.
8:47:578 hours, 47 minutes, 57 secondsAnd now that we have a update workflow here, we just have it ready. We have this workflow name. We have editor name
8:48:058 hours, 48 minutes, 5 secondsinput. And now in here after the separator, let's render editor name input. And now also pass in the workflow ID.
8:48:168 hours, 48 minutes, 16 secondsHere it is. And now you will see the name of your workflow. So if you go
8:48:238 hours, 48 minutes, 23 secondsahead and change to this one, breezy early pencil, you will see the name
8:48:308 hours, 48 minutes, 30 secondsbreezy early pencil right here. Now let's go ahead and make it so that it it visually appears clickable. We're going
8:48:388 hours, 48 minutes, 38 secondsto do that using CSS. So let's go ahead and give the breadcrumb item a class name of cursor pointer hover text
8:48:488 hours, 48 minutes, 48 secondsforeground and transition colors. And now when you hover over this you will see that you can visually click on it
8:48:578 hours, 48 minutes, 57 secondsright and when you click on it something should happen. What will happen is that we're going to switch a state from is
8:49:068 hours, 49 minutes, 6 secondsediting from false to true. So is editing from use state give it a default
8:49:138 hours, 49 minutes, 13 secondsvalue of false is editing and set is editing and let's prepare name set name use state the default value is workflow
8:49:228 hours, 49 minutes, 22 secondsname which will always be some form of data because otherwise we throw an error we fixed that just a moment ago and
8:49:318 hours, 49 minutes, 31 secondslet's prepare the input ref so we can always focus on this when we switch input element as the type HTML input
8:49:398 hours, 49 minutes, 39 secondselement as the type and let's go ahead and do use use effect like this.
8:49:488 hours, 49 minutes, 48 secondsIf we have workflowname set name to workflowname, this will
8:49:558 hours, 49 minutes, 55 secondsupdate if any new name is received which will happen when we revalidate.
8:50:028 hours, 50 minutes, 2 secondsAnd another use effect here which will do the following.
8:50:098 hours, 50 minutes, 9 secondsIf is editing and if input ref dot current in that case let's go ahead and do input
8:50:188 hours, 50 minutes, 18 secondsref.curren focus and let's also do select and in the
8:50:268 hours, 50 minutes, 26 secondsdependency array pass in is editing. You don't have to pass the ref. Let's develop handle save method.
8:50:368 hours, 50 minutes, 36 secondsAnd in here if name is equal to workflow.name, what we are going to do is set is editing to false and break the method. We didn't modify the name.
8:50:478 hours, 50 minutes, 47 secondsOtherwise, let's go ahead uh and let's do update workflow. So what we can do is we can actually open try and catch here.
8:50:558 hours, 50 minutes, 55 secondsSo turn this into an asynchronous and instead of try do await updateworkflow dotmutate asynchronous
8:51:048 hours, 51 minutes, 4 secondspassing the ID to be workflow ID and the name like this. If that fails make sure
8:51:128 hours, 51 minutes, 12 secondsto reset the name and then finally so regardless if it fails or succeeds make sure to reset set
8:51:208 hours, 51 minutes, 20 secondsis editing back to false. This way we handled most of the use cases that can happen. And let's add one more method
8:51:298 hours, 51 minutes, 29 secondsconst handle key down which accepts the value of react dot keyboard event.
8:51:398 hours, 51 minutes, 39 secondsIf event key is enter handle
8:51:458 hours, 51 minutes, 45 secondssave else if event key is escape set name to whatever was the current
8:51:548 hours, 51 minutes, 54 secondsvalue and reset the editing status. So just some hot keys for easier editing.
8:52:028 hours, 52 minutes, 2 secondsAnd finally if is editing instead of returning breadcrumb item we are going to return an input component.
8:52:118 hours, 52 minutes, 11 secondsIt will have a ref of input ref.
8:52:168 hours, 52 minutes, 16 secondsIt will have value of name on change which accepts the event and passes it to
8:52:238 hours, 52 minutes, 23 secondsset name as event target value on blur automatically triggers handle
8:52:308 hours, 52 minutes, 30 secondssave. If you don't like that, you can of course remove it. On key down, handle key down. This is a listener for hotkeys.
8:52:418 hours, 52 minutes, 41 secondsAnd class name height 7 with auto minimum width of a 100 pixels and px of
8:52:508 hours, 52 minutes, 50 secondstwo. And now it should be ready. Right now it's called breezy early pencil. And
8:52:578 hours, 52 minutes, 57 secondslet me go ahead and yes, of course, one thing we forgot was to actually add on click to the breadcrumb item. So on
8:53:058 hours, 53 minutes, 5 secondsclick set is editing to true.
8:53:148 hours, 53 minutes, 14 secondsSo let's go ahead and try it. Now when I try to click here, there we go.
8:53:198 hours, 53 minutes, 19 secondsIt automatically selects. If I click escape, nothing happens. But if I change from pencil to rename and press enter
8:53:278 hours, 53 minutes, 27 secondsand did it it did workflow breezy early name updated. Uh and it should also
8:53:358 hours, 53 minutes, 35 secondschange it here in the data. Right? So if I refresh it should fully stay rename. I just don't like that when I pressed
8:53:438 hours, 53 minutes, 43 secondsenter it didn't immediately close. Uhh. So when we press enter, handle save happens.
8:53:548 hours, 53 minutes, 54 secondsPerhaps we should immediately do set is editing to false. Set is editing
8:54:028 hours, 54 minutes, 2 secondsto false like this. And maybe remove the finally.
8:54:118 hours, 54 minutes, 11 secondsAnd you know, maybe you can improve it by not allowing to change back to this
8:54:178 hours, 54 minutes, 17 secondsmode. if it's pending. So, test two immediately closes and then you can see it renames. Maybe that's a little bit of
8:54:268 hours, 54 minutes, 26 secondsa better experience. Uh, and you can also do disabled if let's go ahead and do
8:54:358 hours, 54 minutes, 35 secondscreate update workflow is pending.
8:54:418 hours, 54 minutes, 41 secondsAnd then maybe you don't have to do it here. Maybe you can then revert to finally just experimenting now.
8:54:528 hours, 54 minutes, 52 secondsSo click here, remove something. Yeah, it's kind of disabled. Okay. Yeah, that looks fine. That's good. I like this
8:55:018 hours, 55 minutes, 1 secondsolution. Perfect. So you can see now it's renamed to Breezy early. Let's confirm by going back to workflows. You
8:55:098 hours, 55 minutes, 9 secondscan see updated less than a minute ago, but created two days ago. So obviously works. Uh great. So there is one thing
8:55:178 hours, 55 minutes, 17 secondsleft inside of the editor header and that is the save button. But we can't really do anything here. Uh we will
8:55:238 hours, 55 minutes, 23 secondsdevelop this later because we the save button will be used to save the current workflow editor state the nodes the
8:55:328 hours, 55 minutes, 32 secondsconnections uh executions those kinds of things. This is fairly simple developer experience. We can just save on blur.
8:55:428 hours, 55 minutes, 42 secondsBut the save button will somehow need to have the state from the editor.
8:55:488 hours, 55 minutes, 48 secondsSo I know that I've said that I want to add workflow in this chapter, but it kind of makes no sense because we are
8:55:568 hours, 55 minutes, 56 secondsalready half an hour here and I'm fairly satisfied with what we did here. So I
8:56:028 hours, 56 minutes, 2 secondswant to call it a day here and skip this part for now and instead dedicate the
8:56:098 hours, 56 minutes, 9 secondsnext chapter to it so I can properly explain it and go a bit more in depth.
8:56:148 hours, 56 minutes, 14 secondsSo let's wrap this up. So 14 workflow page.
8:56:208 hours, 56 minutes, 20 secondsI'm going to go ahead and create a new branch 14 workflow page.
8:56:278 hours, 56 minutes, 27 secondsAnd then I'm going to go ahead and make sure to commit all six changes.
8:56:328 hours, 56 minutes, 32 secondsSo stage all changes 14 workflow page commit and publish
8:56:418 hours, 56 minutes, 41 secondsbranch. Once it's been published as always let's go ahead and let's review
8:56:488 hours, 56 minutes, 48 secondsthe pull request. So I'm creating a new pull request. And now we're going to review it.
8:56:558 hours, 56 minutes, 55 secondsAnd here we have the review by code rabbit. New features. We introduced a full page workflow editor with header
8:57:028 hours, 57 minutes, 2 secondsbreadcrumbs and inline name editing. We added save action in the editor header with clear disabled state during saving.
8:57:108 hours, 57 minutes, 10 secondsWe provided loading and error views for smoother editing experience. And we improved handling for missing workflows.
8:57:188 hours, 57 minutes, 18 secondsUsers now see a clear error when a workflow doesn't exist. This is referring to our uh find unique or throw
8:57:268 hours, 57 minutes, 26 secondschange in Prisma. As always, file by file summary here. And as per the sequence diagrams, this isn't really
8:57:328 hours, 57 minutes, 32 secondsanything we haven't seen before. This specific one is referring to how prefetch is working and what happens in
8:57:408 hours, 57 minutes, 40 secondsthe seed cache here. I'm pretty sure you understand this by now since we did have a couple of examples of this already.
8:57:498 hours, 57 minutes, 49 secondsBut if you want to take a look at it, you can of course pause the video. I will, you know, slowly go over it here so you can see exactly what is going on.
8:57:598 hours, 57 minutes, 59 secondsBasically, prefetch seeds the cache and then our client component, our UI component immediately has access because it hits the cache.
8:58:108 hours, 58 minutes, 10 secondsAnd it's pretty clear how our editor name input works as well. We actually have no actionable comments.
8:58:198 hours, 58 minutes, 19 secondsThere are some nitpick comments. So for that reason I told it to summarize what we've learned here and yes code rabbit can do that as well. You can talk to it
8:58:278 hours, 58 minutes, 27 secondslike you would normally to a actual person. And what I think is important here is this. We changed from find
8:58:368 hours, 58 minutes, 36 secondsunique to find unique or throw in the router to explicitly handle missing records paired with try catch blocks in
8:58:438 hours, 58 minutes, 43 secondsthe UI that revert optimistic updates on failure. Exactly what we did. And I'm
8:58:508 hours, 58 minutes, 50 secondspretty sure we knew all the other ones already. Overall, pretty good pull request. Not much to comment on. It was
8:58:588 hours, 58 minutes, 58 secondspretty simple. Amazing job. After you've merged that, go back inside of your main branch and make sure to synchronize your changes.
8:59:088 hours, 59 minutes, 8 secondsAnd once you've done that, as always, I like to end by going inside of graph and making sure that I can see my newest
8:59:158 hours, 59 minutes, 15 secondsmerge right here. Excellent. And let's go ahead now and wrap it all up by marking the GitHub part as finished.
8:59:268 hours, 59 minutes, 26 secondsAmazing, amazing job. And see you in the next chapter where we are going to start to implement the editor using React Flow.
Chapter 16: 15 Editor Setup
8:59:368 hours, 59 minutes, 36 secondsIn this chapter, we are going to develop the editor component. By adding React Flow dependency, we will be able to drag
8:59:448 hours, 59 minutes, 44 secondsnodes around within a canvas and establish connections between them. We are then also going to update our Prisma
8:59:538 hours, 59 minutes, 53 secondsschema by adding a node and connection table. This will allow us to preserve whatever we create within the editor
9:00:019 hours, 1 secondcanvas such that we will be able to store it in the database. And once we have that established, we will be able
9:00:099 hours, 9 secondsto end the chapter by loading the default editor state from the database.
9:00:169 hours, 16 secondsLet's go ahead and start by adding React Flow into our project.
9:00:219 hours, 21 secondsUsing the link on the screen, you can visit their landing page and clicking on quick start. You can visit the documentation.
9:00:299 hours, 29 secondsSince we already have a project, we can just follow the second step which installs XYlow React package.
9:00:379 hours, 37 secondsSo I'm going to go ahead and install this package. And once it's been installed, I'm going to show you the
9:00:439 hours, 43 secondsexact version that I am using. Here it is, 12.8.6.
9:00:509 hours, 50 secondsYou don't have to use the exact version, but I just want you to be aware which one I'm working with in case something doesn't work for you.
9:01:009 hours, 1 minuteSo now let's go ahead and make sure that we have our app running. And once we have our app running, let's go ahead and go into an individual workflow page.
9:01:139 hours, 1 minute, 13 secondsRight now the only thing that should be visible there is a stringified JSON of the workflow data. So if I click here in
9:01:219 hours, 1 minute, 21 secondsBreezy early after I load the editor I should only see this. And now we're going to follow the usage here and modify our editor.tsx.
9:01:339 hours, 1 minute, 33 secondsSo editortsx it is inside of features editor components.
9:01:429 hours, 1 minute, 42 secondsLet's start by adding use state and use callback from React. And then let's import all of these from our newly
9:01:519 hours, 1 minute, 51 secondsinstalled XY flow React. React flow apply node changes. Apply edge changes and add edge.
9:02:009 hours, 2 minutesThen let's also import XY flow styles.
9:02:049 hours, 2 minutes, 4 secondsAnd I like to do that here at the end after all other imports.
9:02:109 hours, 2 minutes, 10 secondsThen let's go ahead and establish the initial nodes. We're going to do that above the editor constant since since that's the one we are interested in.
9:02:219 hours, 2 minutes, 21 secondsSo as you can see the initial nodes will be two objects. Both of them will have their position coordinates and their
9:02:299 hours, 2 minutes, 29 secondsdata object which establishes their label. So both nodes have an ID, position, and data.
9:02:409 hours, 2 minutes, 40 secondsNow that we have the initial nodes established, let's also add the initial edges. The initial edges will be a very
9:02:489 hours, 2 minutes, 48 secondssimple uh array with a single object inside. And that object will have a
9:02:549 hours, 2 minutes, 54 secondssource referring to the ID of the first node that we have here. and the target
9:03:029 hours, 3 minutes, 2 secondsreferring to the second node that we have here. So make sure that source N1 matches the ID N1 and target N2 matches the ID N2.
9:03:149 hours, 3 minutes, 14 secondsAnd we also give the edge an ID simply because every element needs to have its own ID.
9:03:229 hours, 3 minutes, 22 secondsAnd for the position, it's pretty self-explanatory.
9:03:269 hours, 3 minutes, 26 secondsnode one is strictly in the center whereas node two will be initialized slightly below uh on the y axis.
9:03:379 hours, 3 minutes, 37 secondsSo now that we have the initial edges let's go ahead and set up the state here. So after use suspense workflow let me just go ahead and collapse this.
9:03:489 hours, 3 minutes, 48 secondsThere we go. So after use suspense workflow, make sure to add nodes and edges as well as their setters using use
9:03:579 hours, 3 minutes, 57 secondsstate and set the default value respectively for nodes and for edges to the constants we defined above.
9:04:069 hours, 4 minutes, 6 secondsNow what I like to do here is immediately create the types for this.
9:04:129 hours, 4 minutes, 12 secondsSo this will be a type of node which you can import from XY flow react and it's going to be an array of nodes and this
9:04:219 hours, 4 minutes, 21 secondswill be a type of edge. Again you can import both node and edge from XY flow
9:04:279 hours, 4 minutes, 27 secondsreact and you can even specifically say that this is just a type.
9:04:349 hours, 4 minutes, 34 secondsSo now you will have the exact types in here. When you hover over nodes, you can see it will become node.
9:04:429 hours, 4 minutes, 42 secondsNow let's go ahead and let's add these three methods on a nodes change on edges change and on connect. All of them are
9:04:519 hours, 4 minutes, 51 secondsexactly the same as you can see. Let me go ahead and expand this as much as I can so it's easy for you to look at. use
9:04:589 hours, 4 minutes, 58 secondscallback receives new changes and immediately returns and calls set nodes.
9:05:079 hours, 5 minutes, 7 secondsInside of set nodes, we can open a call back if we want to receive the snapshot
9:05:139 hours, 5 minutes, 13 secondsor basically in other words the current value of nodes. So technically you could
9:05:229 hours, 5 minutes, 22 secondsalso just call apply node changes and instead of using node snapshots you could just pass nodes but you shouldn't
9:05:309 hours, 5 minutes, 30 secondsreally do that. If you want to get the most update uh value of the state you should use the callback parameter like this.
9:05:419 hours, 5 minutes, 41 secondsSo I will zoom out just once more so you can see how all of this looks in one line because it's a long line and I don't want you to be confused. So use
9:05:509 hours, 5 minutes, 50 secondscall back receives changes and immediately calls set nodes. Set nodes calls a call back and immediately calls
9:05:599 hours, 5 minutes, 59 secondsapply node changes. And all of the other ones are the same except they are using set edges and call apply edge changes in
9:06:089 hours, 6 minutes, 8 secondson edges change or add edge in on connect.
9:06:139 hours, 6 minutes, 13 secondsAll of these apply node changes, apply edge changes and add edge can be found
9:06:199 hours, 6 minutes, 19 secondsin the import above. Now in order to fix the changes type, we also have to specify them here. So this would be a type of node change and then an array.
9:06:319 hours, 6 minutes, 31 secondsYou can also import the node change type. Let me just go ahead and space specify it from here. So type node
9:06:399 hours, 6 minutes, 39 secondschange and let's also go ahead and prepare the type edge change and type connection.
9:06:509 hours, 6 minutes, 50 secondsNow that we have those, let's go ahead and call this edge change and an array and this a connection.
9:06:589 hours, 6 minutes, 58 secondsThere we go. Now we no longer have any type errors here as you can see.
9:07:059 hours, 7 minutes, 5 secondsSo once we've established these three functions, we can finally render React flow. So let me clean up my return here.
9:07:139 hours, 7 minutes, 13 secondsWe're going to create a div with a class name of size full. And then we're going to render React flow.
9:07:249 hours, 7 minutes, 24 secondsNow let's go ahead and pass in the nodes, edges, and those three methods we've just created. Nodes, edges, on
9:07:329 hours, 7 minutes, 32 secondsnodes change, on edge change, and on connect. And let's add fit view. Fit view will automatically zoom in on the
9:07:419 hours, 7 minutes, 41 secondsnodes that we have. And now, as you can see, when you refresh in an individual workflow ID, you will be able to drag
9:07:509 hours, 7 minutes, 50 secondsthese nodes around and they will already be connected. The reason they are connected is because we established the
9:07:589 hours, 7 minutes, 58 secondsinitial edges, right? So, initial edges show that node one is connected to
9:08:059 hours, 8 minutes, 5 secondstarget node two. Perfect. Now let's go ahead and learn how to improve the React Flow look. So if you change this from a
9:08:149 hours, 8 minutes, 14 secondsself-closed component to this one and add a component called the background which you can also import from XY Flow
9:08:229 hours, 8 minutes, 22 secondsReact and save, you can see that now we get a background grid which is already looking much better. Let's enhance it
9:08:309 hours, 8 minutes, 30 secondseven further by adding controls again from XY Flow React. And now in this corner you will be able to zoom
9:08:389 hours, 8 minutes, 38 secondsout, zoom in or fit view. Let's also add mini map again from XY flow react. And
9:08:479 hours, 8 minutes, 47 secondsnow in here you will be able to see a mini map of what's going on. And since I
9:08:549 hours, 8 minutes, 54 secondsknow some of you will be asking me this down here you can see the text react
9:09:019 hours, 9 minutes, 1 secondflow. And I think they fully deserve to have that text here. And I'm going to show you exactly how you can support
9:09:109 hours, 9 minutes, 10 secondsthem as a company. If you have the resources or if your company does,
9:09:169 hours, 9 minutes, 16 secondsdo consider supporting React Flow package. This is as far as I'm aware the only way they maintain this. Uh and
9:09:259 hours, 9 minutes, 25 secondsReactFlow is open-source and MIT licensed software which means that you are allowed to use it without supporting
9:09:339 hours, 9 minutes, 33 secondsthem. But as you can see with your subscriptions you are ensuring the sustainable maintenance and development of the React Flow library. The reason
9:09:429 hours, 9 minutes, 42 secondsI'm telling you this is because now I'm going to show you how you can remove uh their uh logo if you want to. So you can
9:09:529 hours, 9 minutes, 52 secondsadd pro options here. hide attribution set to true. I would recommend that if
9:10:009 hours, 10 minutesyou do this, do consider supporting them because if you don't do it, the minimum they deserve is recognition. And you can
9:10:099 hours, 10 minutes, 9 secondssee that when you add pro options, you hide their attribution here.
9:10:159 hours, 10 minutes, 15 secondsAnd when you don't have it, you have a little text react flow. Again, it's not required, but I think it would be very
9:10:229 hours, 10 minutes, 22 secondsnice to support open-source MIT licensed projects like this one. They are absolutely amazing.
9:10:299 hours, 10 minutes, 29 secondsGreat. Now that we have that established, let's see what's next uh on our list here.
9:10:369 hours, 10 minutes, 36 secondsSo, we just created the editor component. We added React Flow and the initial nodes. Now, let's go ahead and
9:10:449 hours, 10 minutes, 44 secondsupdate the schema and add the node and the connection table.
9:10:499 hours, 10 minutes, 49 secondsIn order to do that, we have to go inside of Prisma schema. So now I'm going to expand this so we can focus
9:10:579 hours, 10 minutes, 57 secondsexclusively on that. So below the workflow table, create a model called node. Now you can copy the type of ID
9:11:049 hours, 11 minutes, 4 secondsbecause it's going to be exactly the same. And now you have to create a relation with a workflow. So each node will have a workflow ID which is a type
9:11:139 hours, 11 minutes, 13 secondsof string. And now we have to create a workflow type of relation. So workflow
9:11:209 hours, 11 minutes, 20 secondsrelation is referring to field workflow ID and it is referencing the ID field in
9:11:269 hours, 11 minutes, 26 secondsthe workflow model. And when we delete the workflow, let's also delete this node. We can ensure that happens by adding on delete cascade.
9:11:379 hours, 11 minutes, 37 secondsAnd once you've established that, you also have to go back inside of the node inside of the workflow here and add the
9:11:449 hours, 11 minutes, 44 secondsnodes relation like this node and then you will have no errors. Perfect. Now let's go ahead and give this a name.
9:11:559 hours, 11 minutes, 55 secondsLet's go ahead and give this a type. Now the type will be a specific custom node
9:12:029 hours, 12 minutes, 2 secondstype. So this does not exist yet. We are now going to create it. So I'm going to go here and I'm going to do enum node
9:12:109 hours, 12 minutes, 10 secondstype for now. Let's go ahead and create initial as that's the only one we will be working with.
9:12:199 hours, 12 minutes, 19 secondsSo now that we have the type node type here, let's also add position which will be a type of JSON
9:12:289 hours, 12 minutes, 28 secondsdata which will be a type of JSON with the default of stringified object like this.
9:12:389 hours, 12 minutes, 38 secondsThen let's go ahead and copy created at and updated at timestamps here.
9:12:459 hours, 12 minutes, 45 secondsAnd let's go ahead and see. I think this is enough. I think that's all we need
9:12:529 hours, 12 minutes, 52 secondsright now. And now let's also create the connection model. Model connection will
9:13:009 hours, 13 minutesrepresent the edges. So model connection go ahead and you can copy these three lines here.
9:13:109 hours, 13 minutes, 10 secondsSo each will have an ID and workflow which means that we have to go back to workflow and add connection connection
9:13:199 hours, 13 minutes, 19 secondsand change this to connections like this.
9:13:249 hours, 13 minutes, 24 secondsInside of connection here, let's do from node id and make it a type of string.
9:13:309 hours, 13 minutes, 30 secondsFrom node, make it a type of node relation called from node fields from
9:13:389 hours, 13 minutes, 38 secondsnode ID references ID on delete cascade.
9:13:449 hours, 13 minutes, 44 secondsSo if the nodes get deleted, we can also remove this connection.
9:13:499 hours, 13 minutes, 49 secondsAnd now let's go ahead and let's copy these two and change this to be from node ID to be
9:13:599 hours, 13 minutes, 59 secondsto node ID. So from what node to what node and change this to be two node
9:14:069 hours, 14 minutes, 6 secondschange the name to be two node and change the two node ID to be used as the field here like this.
9:14:169 hours, 14 minutes, 16 secondsLet's also add from output to be a type of string default main
9:14:249 hours, 14 minutes, 24 secondsto input type of string default main.
9:14:309 hours, 14 minutes, 30 secondsThis might come in handy. I'm going to see if we're actually going to need this or not, but let's leave it here for now.
9:14:389 hours, 14 minutes, 38 secondsAnd let's copy the timestamps as usual.
9:14:429 hours, 14 minutes, 42 secondsAnd let's go ahead and set the unique field here to be from node ID to node ID from output and to input.
9:14:549 hours, 14 minutes, 54 secondsOnce we have that, let's go ahead and create the relations back in the node
9:15:019 hours, 15 minutes, 1 secondhere. Output connections will be connection with a relation name from node.
9:15:109 hours, 15 minutes, 10 secondsInput connections will be a connection a connection array
9:15:189 hours, 15 minutes, 18 secondslet me fix the typo with a relation called to node.
9:15:259 hours, 15 minutes, 25 secondsThere we go.
9:15:289 hours, 15 minutes, 28 secondsOnce we have that I think that we are ready to uh create a migration. So we've
9:15:359 hours, 15 minutes, 35 secondscreated the node. We've created the initial node type and connection.
9:15:429 hours, 15 minutes, 42 secondsPerfect. So let me go ahead now and do npx prisma migrate dev. And let's call
9:15:499 hours, 15 minutes, 49 secondsthis uh react flow tables.
9:15:569 hours, 15 minutes, 56 secondsSo react flow tables. And once we do that, we have applied the migration. I
9:16:029 hours, 16 minutes, 2 secondsnow recommend restarting NextJS so everything works as expected. Perfect.
9:16:109 hours, 16 minutes, 10 secondsSo now that we have that, what we can do and what we should do is go inside of
9:16:169 hours, 16 minutes, 16 secondssource features workflows server routers.ts and let's specifically focus on the create.
9:16:279 hours, 16 minutes, 27 secondsNow what we are going to add is that every time a new workflow is created let's also create a set of nodes.
9:16:379 hours, 16 minutes, 37 secondsSo nodes create type will be node type which we can now import
9:16:449 hours, 16 minutes, 44 secondsfrom generated Prisma dot initial position. Let's go ahead and make x0
9:16:539 hours, 16 minutes, 53 secondsy zero and the name node type dot initial. We're going to see if this name
9:17:019 hours, 17 minutes, 1 secondfield is actually useful or not. I think that most of the time we're just going to use the type. So maybe the name won't
9:17:109 hours, 17 minutes, 10 secondsbe all that useful. For now add it here so you don't get any errors. And now every time you create a new workflow,
9:17:199 hours, 17 minutes, 19 secondsyou will also create a new initial node in that workflow. The problem is in
9:17:269 hours, 17 minutes, 26 secondseditor tsx, we don't ever use that, right? Because first we don't even include nodes. You can see our workflow type doesn't even have any nodes here.
9:17:369 hours, 17 minutes, 36 secondsSo we can't pass them here. So what we have to do while we are here is revisit our get one protected procedure.
9:17:469 hours, 17 minutes, 46 secondsSo let's go ahead and start by doing uh const workflow to be await Prisma
9:17:539 hours, 17 minutes, 53 secondsworkflow find unique or throw make the query async like this. Now this workflow will always exist. You don't have to do
9:18:039 hours, 18 minutes, 3 secondsif workflow doesn't exist because we are continuing to use find unique or throw. And instead let's find all the nodes.
9:18:129 hours, 18 minutes, 12 secondsNow let's go ahead and import the node type from generated Prisma like this.
9:18:229 hours, 18 minutes, 22 secondsUh okay. And let's do uh my apologies. We also have to include the nodes.
9:18:289 hours, 18 minutes, 28 secondsInclude nodes true connections. True. Uh and I think
9:18:369 hours, 18 minutes, 36 secondsthat maybe I'm telling you something incorrect here. Yes, it makes no sense that this is a node. So, what are we actually doing here? Why am I getting
9:18:459 hours, 18 minutes, 45 secondsconfused? What I thought that we are doing now is just, you know, fetching the nodes from the server. But here's
9:18:529 hours, 18 minutes, 52 secondsthe thing. The structure that React Flow expects and the structure that we saved
9:18:599 hours, 18 minutes, 59 secondsin our Prisma schema are not onetoone mappings. Which means that now what we
9:19:059 hours, 19 minutes, 5 secondsare doing here is transforming the uh server nodes to react flow
9:19:149 hours, 19 minutes, 14 secondscompatible nodes. That's what we are doing. Which means that this node type should more specifically
9:19:249 hours, 19 minutes, 24 secondscome from react flow. So type
9:19:309 hours, 19 minutes, 30 secondsnode from xy flow react and this will be a type of edge the other one.
9:19:379 hours, 19 minutes, 37 secondsGreat. So make sure you have added both node and edge head back instead of get one. And now in here what we are going
9:19:459 hours, 19 minutes, 45 secondsto do is we are going to uh transform the nodes. So workflow dot nodes which
9:19:549 hours, 19 minutes, 54 secondsnow exists because we include them dot map get the individual node here. Give
9:20:019 hours, 20 minutes, 1 secondeach node an ID which we have. Give each node a type which we also have and give each node a position.
9:20:119 hours, 20 minutes, 11 secondsLet's go ahead and also wrap it up by giving each node its data.
9:20:179 hours, 20 minutes, 17 secondsNow in here we have some type issues. I believe the position is incompatible.
9:20:239 hours, 20 minutes, 23 secondsThat's because the position is a type of JSON value, which is technically correct. But let's be a little more specific. It's going to be a type of
9:20:319 hours, 20 minutes, 31 secondsnumber and a type of number, the coordinates.
9:20:359 hours, 20 minutes, 35 secondsAnd this one is the second one that's problematic. So, this one is yes, a little bit problematic. So let's go
9:20:419 hours, 20 minutes, 41 secondsahead and do node data as record of string or unknown because literally
9:20:499 hours, 20 minutes, 49 secondsanything can be data or just an empty object. Perfect. Now let's go ahead and
9:20:569 hours, 20 minutes, 56 secondslet's transform the server connections to
9:21:049 hours, 21 minutes, 4 secondsreact flow compatible edges. So const edges is a type of edge which is an array workflow.connections.map
9:21:139 hours, 21 minutes, 13 secondsconnections.mmat get the individual connection and let's
9:21:199 hours, 21 minutes, 19 secondsgo ahead and add the following things ID connection ID source connection from
9:21:289 hours, 21 minutes, 28 secondsnode ID target connection to node ID source handle from output target handle
9:21:359 hours, 21 minutes, 35 secondsto input this way we can always transform from the server to the client
9:21:429 hours, 21 minutes, 42 secondsclient. So now we have nodes and edges which are ready to be passed down and
9:21:509 hours, 21 minutes, 50 secondsrendered in React Flow. So let's go ahead and modify this by doing return id
9:21:569 hours, 21 minutes, 56 secondsworkflow do ID name workflowname nodes edges. There we go.
9:22:069 hours, 22 minutes, 6 secondsNow that we have that inside of editor.tsx dsx we can modify the default
9:22:139 hours, 22 minutes, 13 secondsvalues here. So instead of using initial nodes and initial edges let's do
9:22:199 hours, 22 minutes, 19 secondsworkflow dot nodes and let's do workflow edges like this and we can now remove
9:22:279 hours, 22 minutes, 27 secondsthe unused variables from here. What I want to do now is also start npxrisma studio.
9:22:379 hours, 22 minutes, 37 secondsLet's go ahead and open up the studio here and let's remove all of the existing workflows. This way we won't
9:22:449 hours, 22 minutes, 44 secondshave any outdated workflows which don't have initial nodes. So just delete all of them. Once you have deleted all of
9:22:539 hours, 22 minutes, 53 secondsthem, let's go inside of workflows and make sure to refresh this because it might cause some errors. So there we go.
9:23:029 hours, 23 minutes, 2 secondsNo items. And when I click add item, what should happen now is that uh I should have an initial node. And you can see that I do have it. But it's weird.
9:23:149 hours, 23 minutes, 14 secondsIt doesn't exactly look as expected.
9:23:179 hours, 23 minutes, 17 secondsNothing is really written here. But something was loaded here. So what we have to do now is we have to create
9:23:269 hours, 23 minutes, 26 secondssomething called node components registry. So, let's go ahead and do the following.
9:23:349 hours, 23 minutes, 34 secondsI'm going to go ahead and extend this and I'm going to go inside of source config and in here I'm going to create
9:23:439 hours, 23 minutes, 43 secondsnode components.ds and I will export con node components as
9:23:509 hours, 23 minutes, 50 secondsa factory map. And in here I'm going to do when we use node type from Prisma
9:24:009 hours, 24 minutesinitial let's render initial node and let's go ahead and do
9:24:099 hours, 24 minutes, 9 secondsas const satisfies node types
9:24:169 hours, 24 minutes, 16 secondsfrom react flow. So make sure to import this as type and I think okay no this is not import as as type.
9:24:279 hours, 24 minutes, 27 secondsSo obviously we're now going to have to create the initial node and let me just go ahead
9:24:349 hours, 24 minutes, 34 secondsuh yeah let's also just do a quick type export which we're going to need later registered
9:24:419 hours, 24 minutes, 41 secondsnode type to be key of type of node components.
9:24:479 hours, 24 minutes, 47 secondsSo in order to create the initial node, we're going to need a little help specifically help from React Flow and
9:24:559 hours, 24 minutes, 55 secondsChats and UI. That's right. So if you go on to React Flow and click inside of UI
9:25:029 hours, 25 minutes, 2 secondsin here, you can go ahead and you can find uh where is it? Custom nodes and you can
9:25:099 hours, 25 minutes, 9 secondsfind the placeholder. And this is how it looks like. And that's exactly what I want. I want this to be our initial node. Just a big plus button.
9:25:209 hours, 25 minutes, 20 secondsIn order to do that, we have to run npx chaten latest and then add the placeholder node. So let's go ahead and
9:25:299 hours, 25 minutes, 29 secondsdo that. So I will specifically continue to use my version of shatzen which is 3.3.1.
9:25:379 hours, 25 minutes, 37 secondsI would suggest that you also kind of try and use the same shaden version even though I think this will continue to
9:25:449 hours, 25 minutes, 44 secondswork even if you use an updated version now. So even using at latest should work and you can see how we specifically use
9:25:529 hours, 25 minutes, 52 secondsuh this placeholder node. Now if this fails for you, I will try and put a link
9:25:599 hours, 25 minutes, 59 secondson the screen where you can find uh exact code of this component, right?
9:26:059 hours, 26 minutes, 5 secondsBecause that's all this is. It will just add one file to our project. So if I press enter here, let's go ahead and
9:26:139 hours, 26 minutes, 13 secondssee. This should now add placeholder node. There we go. It added two things. It added base node and placeholder node.
9:26:229 hours, 26 minutes, 22 secondsNow I want to make sure that we know this was added with a CLI that we didn't write this. So inside of components I
9:26:319 hours, 26 minutes, 31 secondswill create something called react dashflow like this and I will uh select both base node and placeholder node and
9:26:409 hours, 26 minutes, 40 secondsI will paste it here simply so I don't confuse them and select yes for updating the imports. So let's go inside of base
9:26:499 hours, 26 minutes, 49 secondsnode and let's just see. Okay, imports are fine. Placeholder node. Uh you can see it's having problems. So let's just
9:26:579 hours, 26 minutes, 57 secondschange this to its neighbor like this because we just moved both of them here.
9:27:029 hours, 27 minutes, 2 secondsI feel more comfortable this way. So I know exactly these are the ones that I made myself. These are the ones from
9:27:099 hours, 27 minutes, 9 secondschaten and these are the ones from react flow using chaten registry.
9:27:169 hours, 27 minutes, 16 secondsNow that we have base node and placeholder node inside of components, I'm going to create the initial node.
9:27:259 hours, 27 minutes, 25 secondsWhat is the initial node? The the thing we just specified here, which doesn't exist yet.
9:27:339 hours, 27 minutes, 33 secondsSo inside of components, let's create initial node.tsx.
9:27:409 hours, 27 minutes, 40 secondsLet's mark it as use client. Let's import type node props from XYlow React.
9:27:479 hours, 27 minutes, 47 secondsLet's import plus icon from Lucid React.
9:27:519 hours, 27 minutes, 51 secondsLet's go ahead and import memo use state from React. Let's go ahead and import
9:27:599 hours, 27 minutes, 59 secondsplaceholder node fromward/reactflow placeholder node like this. Let's export
9:28:079 hours, 28 minutes, 7 secondscon initial node to be memo props to be a type of node props
9:28:159 hours, 28 minutes, 15 secondslike this. Let's go ahead and define initial node dot display name initial node.
9:28:249 hours, 28 minutes, 24 secondsAnd let's go ahead and return inside of here placeholder node.
9:28:309 hours, 28 minutes, 30 secondsAnd inside let's add a div and a plus icon. Give this a class name of size four.
9:28:409 hours, 28 minutes, 40 secondsGive this a class name of cursor pointer flex items center and justify center. Go
9:28:519 hours, 28 minutes, 51 secondsahead and spread all the past props to the placeholder node. Description
9:28:589 hours, 28 minutes, 58 secondswill be add a first step here. Uh, let me just see. Uh, do we need description?
9:29:079 hours, 29 minutes, 7 secondsUm, no. Let's let's remove it. No need for a description here. So, just a big
9:29:149 hours, 29 minutes, 14 secondsplus icon. And I think that actually uh might be enough.
9:29:219 hours, 29 minutes, 21 secondsNow that we have the initial node, we can import it from components initial node. And now that we have the registry
9:29:299 hours, 29 minutes, 29 secondsnode components which is mapping prisma type initial to a component initial node
9:29:369 hours, 29 minutes, 36 secondsand we use the placeholder node from the chaten installation.
9:29:439 hours, 29 minutes, 43 secondsYou can go ahead inside of source. You can go inside of features editor editor.tsx and let's go ahead and add node.
9:29:549 hours, 29 minutes, 54 secondsUh let me just go ahead and find what the name of the prop is.
9:29:599 hours, 29 minutes, 59 secondsSo it's called node types and pass in node components config here. So just the
9:30:079 hours, 30 minutes, 7 secondsthing we've created where we map the Prisma type to the initial node here.
9:30:129 hours, 30 minutes, 12 secondsAnd now if we've done this correctly, there we go. You can see how the initial
9:30:189 hours, 30 minutes, 18 secondsnode looks now. So now every single time you create a new workflow, you will have
9:30:269 hours, 30 minutes, 26 secondsthis new uh placeholder uh node which we are going to use that when clicked on simply opens the sidebar
9:30:369 hours, 30 minutes, 36 secondsnode selector which will give the user much more options. Right? But that's what I want for the initial node. And
9:30:439 hours, 30 minutes, 43 secondsbasically what we've learned here is how easy it is to add custom nodes to React Flow which is what we are going to be
9:30:519 hours, 30 minutes, 51 secondsheavily using in this tutorial. So we are going to create a registry of node
9:30:579 hours, 30 minutes, 57 secondscomponents and then inside of Prisma you know later in node types when we add
9:31:049 hours, 31 minutes, 4 secondsopen AI we are very simply going to copy this change this to open AI and this
9:31:119 hours, 31 minutes, 11 secondswill be open AI node that's how it's going to work and then react flow will know exactly
9:31:199 hours, 31 minutes, 19 secondswhat to render if the type is set to Open AI. I purposely did this with initial so it's the simplest possible
9:31:299 hours, 31 minutes, 29 secondsexample because this one literally displays nothing has no data. It's just a you different looking node than the other ones.
9:31:409 hours, 31 minutes, 40 secondsAnd I just want to show you like one more thing because I'm not sure if all of you completely understood what we did
9:31:479 hours, 31 minutes, 47 secondshere. We are no longer using the initial nodes constant or the initial edges constant. We are literally fetching from
9:31:569 hours, 31 minutes, 56 secondsthe database about our current node state. Right? So if I go inside of
9:32:029 hours, 32 minutes, 2 secondsuse suspense workflow inside of get one and then find my create here, right?
9:32:099 hours, 32 minutes, 9 secondsWhere I create these. Uh let me just check how do I create many. Okay, create many and then like an array. Is that how you use Prisma?
9:32:209 hours, 32 minutes, 20 secondsUh, okay. Let me just quickly find how I do this.
9:32:259 hours, 32 minutes, 25 secondsOkay, I think that create many uh is also an object and then uses data and then you open an array.
9:32:379 hours, 32 minutes, 37 secondsYes. So like this.
9:32:429 hours, 32 minutes, 42 secondsSo instead of just adding like one initial node, if you were to copy this,
9:32:509 hours, 32 minutes, 50 secondspaste it and created another initial node but gave it a position of 200 and then went back to workflows and if
9:33:009 hours, 33 minutesyou click new workflow that should give you two initial nodes every time you create. So that's what
9:33:089 hours, 33 minutes, 8 secondsI'm trying to explain right. uh we have successfully connected our database state with our canvas state. So we will
9:33:189 hours, 33 minutes, 18 secondsnow work from that principle and it will be very easy for us to translate
9:33:249 hours, 33 minutes, 24 secondswhatever we make within this canvas into nodes that we understand on the server that we can easily easily turn into
9:33:339 hours, 33 minutes, 33 secondsbackground jobs that we can easily update, remove, delete, right? It's all going to be in sync. So, let me revert
9:33:429 hours, 33 minutes, 42 secondsthis quickly back to just a normal create.
9:33:509 hours, 33 minutes, 50 secondsSo, just create with a single initial node. Perfect.
9:33:569 hours, 33 minutes, 56 secondsNow, before we wrap up, let's just enhance the look of our nodes even more because what we're going to do now,
9:34:049 hours, 34 minutes, 4 secondswe're going to reuse in every other node inside of components. Let's go ahead and create workflow- node.tsx.
9:34:149 hours, 34 minutes, 14 secondsAnd let's go ahead and mark it as use client. Let's go ahead and let's import node toolbar from XY Flow React and
9:34:239 hours, 34 minutes, 23 secondsposition from XY Flow React. Let's import settings icon from Lucid React
9:34:309 hours, 34 minutes, 30 secondsand trash icon from Lucid React. Then let's import type React node from React.
9:34:399 hours, 34 minutes, 39 secondsAnd let's import button from UI button.
9:34:449 hours, 34 minutes, 44 secondsin here. Let's go ahead and create an interface workflow node props.
9:34:519 hours, 34 minutes, 51 secondsLet me just fix the way I did this. So, interface workflow node props which will
9:34:599 hours, 34 minutes, 59 secondsaccept children which are a type of react node. And then let's go ahead and do show toolbar to be an optional
9:35:089 hours, 35 minutes, 8 secondsboolean ondelete to be an optional function.
9:35:139 hours, 35 minutes, 13 secondsThen the same for on settings name optional string and description optional string as well.
9:35:259 hours, 35 minutes, 25 secondsAnd then expert function workflow node. Let's assign workflow node props here.
9:35:339 hours, 35 minutes, 33 secondsLet's go ahead and dstructure all of the props and set the the default show toolbar to be true.
9:35:409 hours, 35 minutes, 40 secondsAnd then in here, let's go ahead and let's return an empty fragment.
9:35:479 hours, 35 minutes, 47 secondsAnd let's check if show toolbar is set to true. In that case, render node toolbar. And inside of here, add a button which renders the settings icon.
9:36:009 hours, 36 minutesGive it a size of small variant of ghost on click.
9:36:109 hours, 36 minutes, 10 secondson settings and the settings icon shall have a class
9:36:169 hours, 36 minutes, 16 secondsname of size four. Duplicate this exact button and change this to be on delete and trash icon.
9:36:269 hours, 36 minutes, 26 secondsAfter the toolbar, render the children and then if a name is present, render node toolbar again.
9:36:379 hours, 36 minutes, 37 secondsGive it a position prop of position dot bottom is visible
9:36:449 hours, 36 minutes, 44 secondsclass name maximum width of 200 pixels and text center.
9:36:539 hours, 36 minutes, 53 secondsThen a paragraph here which will render the name which we pass and a class name font medium.
9:37:039 hours, 37 minutes, 3 secondsThen let's check if we have a description and if we do a paragraph which will render the description.
9:37:119 hours, 37 minutes, 11 secondsThis will have a class name of text muted foreground truncate and text small. This will be
9:37:209 hours, 37 minutes, 20 secondsvery useful when we for example have a node named open AI and then a
9:37:269 hours, 37 minutes, 26 secondsdescription for example not configured or if it is configured we will show a
9:37:339 hours, 37 minutes, 33 secondsbrief description uh of what we entered as the system prompt for example
9:37:409 hours, 37 minutes, 40 secondsand the toolbar above will be used to quickly access the settings of that node. So now that we have this,
9:37:509 hours, 37 minutes, 50 secondslet's go ahead and go back inside of our initial node here and let's wrap it
9:37:589 hours, 37 minutes, 58 secondsinside of workflow node from dot /workflow node which we've just created.
9:38:049 hours, 38 minutes, 4 secondsSo wrap the entire thing in it like so.
9:38:099 hours, 38 minutes, 9 secondsAnd now when it's rendered here. Whoops.
9:38:159 hours, 38 minutes, 15 secondsI have to find a way to turn off that agent thingy. Let me refresh to see uh if we can maybe already see something.
9:38:259 hours, 38 minutes, 25 secondsUh all right. So now on click this just becomes a node. Uh
9:38:319 hours, 38 minutes, 31 secondsyes. Not not exactly what I wanted to demonstrate. Yes. I think placeholder node is like the worst node to
9:38:389 hours, 38 minutes, 38 secondsdemonstrate this into. But let's just for now end the chapter by adding show
9:38:459 hours, 38 minutes, 45 secondstoolbar and set it to false just so I don't forget to do it later. Uh I know
9:38:529 hours, 38 minutes, 52 secondsthis makes no sense. I made a mistake. I should have maybe introduced this in another chapter. Uh but uh the good thing is we are going to use this as
9:39:019 hours, 39 minutes, 1 secondsoon as the next node is created. And it wasn't really too complicated. I'm just disappointed that you can't see what we
9:39:089 hours, 39 minutes, 8 secondsdid because this way it's hard to develop. You don't even know what you did, right? So for now in the on placeholder, no. Let's see if I add on
9:39:179 hours, 39 minutes, 17 secondsclick. Can I maybe just like override it? Uh so it cannot accept on click. And
9:39:259 hours, 39 minutes, 25 secondslet me see. H let's go inside of this React Flow placeholder node. I think we might need
9:39:349 hours, 39 minutes, 34 secondsto uh create some adjustments here. So, what I'm going to do here
9:39:429 hours, 39 minutes, 42 secondsis I'm going to add on click to be this.
9:39:489 hours, 39 minutes, 48 secondsAnd now on click should be passed uh further down. Let me see. Okay. So, this is the base node. We have handle.
9:39:569 hours, 39 minutes, 56 secondsWe have source.
9:39:599 hours, 39 minutes, 59 secondsOkay. We have handle. Click here. Ah, yes. But you can see that handle click what it does is it creates this new
9:40:079 hours, 40 minutes, 7 secondsnode. So, we're actually going to remove that functionality. Yes. Let's go inside of placeholder node and
9:40:159 hours, 40 minutes, 15 secondswe can remove everything here. Really everything. We don't need a single thing.
9:40:239 hours, 40 minutes, 23 secondsThe only thing we should do is add on click here and paste it here directly.
9:40:319 hours, 40 minutes, 31 secondsLet me see. The handle is fine. This handle is fine, too. This is all right.
9:40:399 hours, 40 minutes, 39 secondsUh, let's go ahead and change this from width 150 pixels to be width auto and
9:40:459 hours, 40 minutes, 45 secondsheight auto as well. Border dashed, border gray 400, BG card, padding two.
9:40:539 hours, 40 minutes, 53 secondsLet's change this to padding four. Text center text gray 400. Shadow none.
9:41:019 hours, 41 minutes, 1 secondLet's do cursor pointer. Let's go ahead and give it that hover
9:41:099 hours, 41 minutes, 9 secondsborder gray 500. Hover bg gray 50. Let's go ahead and add this.
9:41:199 hours, 41 minutes, 19 secondsLet's remove the unused use react flow and unused use node ID. And let's remove use callback.
9:41:279 hours, 41 minutes, 27 secondsAnd now instead of the initial node, you will see that the placeholder node now accepts its own on click. So if I go
9:41:359 hours, 41 minutes, 35 secondsinside of my workflows here now and just create a new workflow, I should now get the one with the normal initial node in
9:41:419 hours, 41 minutes, 41 secondshere. And there we go. Looks much better. And clicking on it does nothing,
9:41:489 hours, 41 minutes, 48 secondswhich is exactly what we want. What it's going to do later is it's going to open a sidebar. So we over we have overridden
9:41:579 hours, 41 minutes, 57 secondsthe initial functionality of the placeholder node that was added in here with the command line interface
9:42:049 hours, 42 minutes, 4 secondsuh so that we can take care of the on click from the outside and I think that was kind of the problem why we were not able to demonstrate
9:42:139 hours, 42 minutes, 13 secondsworkflow node. Let me try and remove this and there we go. You can see that now
9:42:229 hours, 42 minutes, 22 secondswhen you when you click on it. So if you click outside, it doesn't exist. When you click on it, you can see the settings and you can see the delete
9:42:299 hours, 42 minutes, 29 secondsoption, right? And if I were to give this a type a name,
9:42:369 hours, 42 minutes, 36 secondsinitial node, you can see it's displayed here. And if I do description, click to add a node, you will see it has a
9:42:469 hours, 42 minutes, 46 secondsdescription. There we go. So that is what I wanted to demonstrate. Now I personally think the big plus button is
9:42:549 hours, 42 minutes, 54 secondsdescriptive enough. So for that reason I chose to do show toolbar set to false
9:43:019 hours, 43 minutes, 1 secondhere. Uh because I mean this seems pretty self-explanatory right when we
9:43:089 hours, 43 minutes, 8 secondsclick here it's just going to open a big uh sidebar uh node selector. Perfect. So
9:43:169 hours, 43 minutes, 16 secondsthat is what I wanted to show you. And I'm so happy that I was able to do that. Let me remove use state from React here.
9:43:239 hours, 43 minutes, 23 secondsIt seems to be an unused import. We're going to leave this as it is. And I'm going to wrap the chapter up by adding
9:43:319 hours, 43 minutes, 31 secondsjust one more thing here. Instead of features editor, editor.tsx, let's add one more thing here.
9:43:419 hours, 43 minutes, 41 secondsSo we are going to learn how to add a custom element inside of the canvas because all of these three elements were
9:43:499 hours, 43 minutes, 49 secondsbuilt in. So what if you just want to add like a random plus button here at the top? Why would we need that? Well,
9:43:589 hours, 43 minutes, 58 secondsonce we change once we add something here, this initial node will no longer exist. So we won't have any way of
9:44:069 hours, 44 minutes, 6 secondsadding new nodes. Because of that, we need one more way to add new nodes.
9:44:139 hours, 44 minutes, 13 secondsSo, let's go ahead and go inside of editor components and create add node button.tsx.
9:44:239 hours, 44 minutes, 23 secondsMark this as use client import plus icon from Lucid React.
9:44:319 hours, 44 minutes, 31 secondsImport memo and use state from React
9:44:389 hours, 44 minutes, 38 secondsand import button from components UI button. Export const add node button.
9:44:469 hours, 44 minutes, 46 secondsMake it a memo component and return button with a plus icon here.
9:44:589 hours, 44 minutes, 58 secondsAnd go ahead and give this button an on click for now to just be an empty arrow
9:45:039 hours, 45 minutes, 3 secondsfunction. Size of icon variant of
9:45:089 hours, 45 minutes, 8 secondsoutline class name bg background like this. And let's do add node button dot display name add node button.
9:45:239 hours, 45 minutes, 23 secondsNow that we have this, you can remove use state. uh we will have it later when we actually enable this. Now let's go
9:45:309 hours, 45 minutes, 30 secondsahead and actually add this. We can do that by using panel from react flow
9:45:379 hours, 45 minutes, 37 secondsreact I mean xy flow react and go ahead and render add node button
9:45:469 hours, 45 minutes, 46 secondsin here from dot / add node button. And to define the position, all you have to
9:45:539 hours, 45 minutes, 53 secondsdo is define it. And you can see that once I do that, I have a new button here in the corner. So now, even if the
9:46:019 hours, 46 minutes, 1 secondinitial node goes away, I still have the plus icon here, which is always fixed on the screen as you can see. Perfect. So I
9:46:119 hours, 46 minutes, 11 secondsbelieve that that is a good place to end this chapter. We got familiar with React Flow. We learned how to connect nodes
9:46:199 hours, 46 minutes, 19 secondsusing code, right? Using those initial constants, but we also learned how to
9:46:279 hours, 46 minutes, 27 secondsload the React canvas state from our server and how to render completely
9:46:359 hours, 46 minutes, 35 secondscustom node components which didn't exist initially. We also created some reusable toolbars which will be very
9:46:439 hours, 46 minutes, 43 secondshelpful later. And we also started separating, you know, what was added from Shatzen uh and what we built
9:46:519 hours, 46 minutes, 51 secondsourselves from scratch. Amazing, amazing job. I think we've done more than enough now. So in the next chapter we are
9:47:009 hours, 47 minutesactually going to learn on how to create the node selector sidebar which will allow us to select some trigger nodes
9:47:089 hours, 47 minutes, 8 secondslike manual trigger and then some execution nodes like open AI, Gemini, Slack, Discord. So let's go ahead now
9:47:169 hours, 47 minutes, 16 secondsand see uh what was the plan here. We updated the schema node table connection
9:47:239 hours, 47 minutes, 23 secondstable and we loaded the default editor state. Let's go ahead and push this to GitHub. So 15 editor. I have 12 changes
9:47:329 hours, 47 minutes, 32 secondshere. Some of them were migration schemas here. All right. So I'm going ahead and create a new branch.
9:47:409 hours, 47 minutes, 40 seconds15 editor.
9:47:439 hours, 47 minutes, 43 secondsI'm going to click stage all changes and then 15 editor. Let's hit commit and
9:47:509 hours, 47 minutes, 50 secondslet's hit publish branch. Now, as always, I'm going to go ahead and just create a new pull request here. And
9:47:599 hours, 47 minutes, 59 secondssince this was a lot of new things, it would be a good idea to have another pair of eyes. Take a look at it.
9:48:079 hours, 48 minutes, 7 secondsAnd here we have the summary. New features. We introduced an interactive workflow editor with a nodebased canvas,
9:48:159 hours, 48 minutes, 15 secondsincluding pan and zoom controls, background grid, as well as a mini map.
9:48:219 hours, 48 minutes, 21 secondsNew workflows now start with an initial node displayed on the canvas.
9:48:279 hours, 48 minutes, 27 secondsNodes feature a toolbar with settings and delete actions. Optional name and description are shown in a bottom label.
9:48:359 hours, 48 minutes, 35 secondsWe added a add node button in the editor panel. UI only at this time, meaning no real functionality here, as well as some
9:48:449 hours, 48 minutes, 44 secondsvisual refinements for node structure and placeholders to support future node types. Exactly. as always file by file
9:48:529 hours, 48 minutes, 52 secondswalk through here and some interesting sequence diagrams. So the first one is explaining how when we fetch one
9:49:029 hours, 49 minutes, 2 secondsworkflow, we attempt to find it or we throw an error and then if we do find
9:49:099 hours, 49 minutes, 9 secondsit, we make sure to include workflows, nodes and connections. And then we map
9:49:169 hours, 49 minutes, 16 secondsthat to React Flow type of node and edges. And when we return that, we can properly render the React Flow canvas
9:49:259 hours, 49 minutes, 25 secondsand get exactly what the user expects to get. And in here we have a simple diagram explaining how when we create a
9:49:339 hours, 49 minutes, 33 secondsnew workflow, we also create the initial node with it. And for the comments, not too much actually. Uh I made a typo in
9:49:429 hours, 49 minutes, 42 secondsmy workflow node. I misspelled truncate.
9:49:489 hours, 49 minutes, 48 secondsAnd down here, uh, it is telling me that I should find a way to persist node edge state to the server. That is correct.
9:49:569 hours, 49 minutes, 56 secondsRemember, we do have a save button in the workflow header, but we never actually enabled it. We will work on
9:50:049 hours, 50 minutes, 4 secondsthat later. But yes, this is a good comment, but we are on our way to fix that. So, let's go ahead and merge this pull request.
9:50:149 hours, 50 minutes, 14 secondsAnd once it's been merged, let's go ahead and go back inside of our main branch. Make sure to synchronize your changes.
9:50:239 hours, 50 minutes, 23 secondsAnd once your changes have been synchronized, as always, confirm with the graph 15 editor. Perfect. Merged
9:50:329 hours, 50 minutes, 32 secondsinto main. That marks the end of this chapter. Amazing. Amazing job. And see you in the next one.
Chapter 17: 16 Node Selector
9:50:429 hours, 50 minutes, 42 secondsIn this chapter, we're going to continue working on the editor component by introducing the node selector, which
9:50:509 hours, 50 minutes, 50 secondswill give us an ability to add all types of nodes to the canvas. We're also going to add our first trigger node called
9:50:599 hours, 50 minutes, 59 secondsmanual trigger, which will allow users to manually start executing a workflow.
9:51:049 hours, 51 minutes, 4 secondsAnd we're going to add a very simple execution node called HTTP request which will be able to execute well HTTP
9:51:129 hours, 51 minutes, 12 secondsrequests. We are of course going to create the actual node selector component and more importantly we're
9:51:199 hours, 51 minutes, 19 secondsgoing to establish the editor state and once we have that editor state we're going to enable editor save functionality.
9:51:289 hours, 51 minutes, 28 secondsLet's get started by adding two new nodes to our project. So inside of Prisma schema, instead of node type
9:51:369 hours, 51 minutes, 36 secondswhere last time we just added initial, let's go ahead and let's extend it by adding a type manual trigger.
9:51:469 hours, 51 minutes, 46 secondsAnd then let's also add HTTP request. So now instead of just having one node
9:51:539 hours, 51 minutes, 53 secondstype, we have three node types. Let's go ahead and let's do npx prisma migrate
9:52:009 hours, 52 minutesdev. And we can just call it more nodes or new nodes.
9:52:079 hours, 52 minutes, 7 secondsSo here we have the prompt for a name new nodes. And now we are ready to create the node selector component.
9:52:169 hours, 52 minutes, 16 secondsI recommend restarting your Nex.js server while you do this. Every time you update your Prisma schema, do restart
9:52:249 hours, 52 minutes, 24 secondsyour server. It's definitely a good thing to do. Otherwise, you might get some weird errors which you think maybe
9:52:319 hours, 52 minutes, 31 secondsyou will think you did something incorrectly when that's not the case.
9:52:349 hours, 52 minutes, 34 secondsIt's just that the cache is weird or something. Let's go ahead inside of components and let's create a new file called node selector.
9:52:449 hours, 52 minutes, 44 secondsDSX. Let's mark it as use client. Let's go ahead and let's import.
9:52:529 hours, 52 minutes, 52 secondsuh we don't really have this package but let's go ahead and finish the import and then we're going to add it. So we are
9:52:589 hours, 52 minutes, 58 secondsgoing to import create ID from this package which allows us to create CU
9:53:059 hours, 53 minutes, 5 secondsids. Why CU IDs? Well, because we use CU ids everywhere and this is by far the most popular
9:53:149 hours, 53 minutes, 14 secondspackage to do that regardless if the name is not exactly it doesn't instill confidence, right? But it is by far the
9:53:229 hours, 53 minutes, 22 secondsmost used uh package for this. So let the mpm install uh my apologies. It is cud2.
9:53:329 hours, 53 minutes, 32 secondsSo make sure to install cud2 and make sure to add cud2 here. There we go. Then
9:53:399 hours, 53 minutes, 39 secondslet's import use react flow from xy flow react. Let's go ahead and prepare from
9:53:469 hours, 53 minutes, 46 secondslucid react. Let's import a few of these. Globe icon,
9:53:539 hours, 53 minutes, 53 secondsmouse pointer icon, and we can remove a web hook icon for now. Let's import use callback from React.
9:54:029 hours, 54 minutes, 2 secondsLet's import toast from Soner. And now let's import everything we need from
9:54:099 hours, 54 minutes, 9 secondscomponents UI sheet, which is something that we've installed when we started this project. This is kind of like a sidebar, but not really like a drawer.
9:54:219 hours, 54 minutes, 21 secondsLet's go ahead and let's import node type from Prisma.
9:54:279 hours, 54 minutes, 27 secondsAnd let's import separator from dot / UI separator or you can do the components UI whatever you
9:54:369 hours, 54 minutes, 36 secondsprefer. Let's go ahead and export type node type option.
9:54:429 hours, 54 minutes, 42 secondsGive it a type of node type which we import imported above.
9:54:479 hours, 54 minutes, 47 secondsA label of string description of a string icon which is a react component
9:54:569 hours, 54 minutes, 56 secondstype and each can have a optional class name prop
9:55:039 hours, 55 minutes, 3 secondsor it can just be a normal string. So we are going to switch between uh components and images depending on what we need.
9:55:129 hours, 55 minutes, 12 secondsNow let's go ahead and let's define a constant trigger nodes. Let's go ahead and give it a type of node type option and it's an array of those.
9:55:259 hours, 55 minutes, 25 secondsAnd let's go ahead and add a type node type domanual trigger label will be trigger manually.
9:55:349 hours, 55 minutes, 34 secondsAnd the description can be uh well whatever you want. For example, I'm going to use runs the flow on clicking a
9:55:429 hours, 55 minutes, 42 secondsbutton. Good for getting started quickly. Icon mouse pointer icon. Great.
9:55:489 hours, 55 minutes, 48 secondsSo that's all we need for the trigger nodes. Of course, we're going to add more later. Now let's go ahead and do const execution
9:55:579 hours, 55 minutes, 57 secondsnodes node type option like this. The only reason we are separating these arrays is so that you can visually
9:56:069 hours, 56 minutes, 6 secondsseparate trigger nodes from execution nodes to not confuse people.
9:56:109 hours, 56 minutes, 10 secondsLet's go ahead and give this a type of node type HTTP request label HTTP request.
9:56:189 hours, 56 minutes, 18 secondsDescription can be makes an HTTP request a simple one and an icon of globe icon.
9:56:269 hours, 56 minutes, 26 secondsYou should already have it imported.
9:56:289 hours, 56 minutes, 28 secondsGreat. So now we have execution nodes and we have the trigger nodes. Now let's create the interface for the node
9:56:359 hours, 56 minutes, 35 secondsselector component. So node selector props accepts open on open change and the children.
9:56:439 hours, 56 minutes, 43 secondsThen let's export function node selector node selector props.
9:56:559 hours, 56 minutes, 55 secondsLet's go ahead and let's get open on open change children
9:57:019 hours, 57 minutes, 1 secondand then let's go ahead and let's go uh let's see what should we do first. I think it's time to actually build this so we can see what we are doing rather
9:57:109 hours, 57 minutes, 10 secondsthan just doing business logic in advance. So render sheet and pass open and pass on open change to be on open
9:57:199 hours, 57 minutes, 19 secondschange. Then sheet trigger here is very simply going to be whatever we've wrapped the children around. So this can
9:57:279 hours, 57 minutes, 27 secondsbe anything and make sure to use as child for that specific reason.
9:57:329 hours, 57 minutes, 32 secondsYou're going to see what this will allow us to do in a second. Let's just render some sheet content here.
9:57:409 hours, 57 minutes, 40 secondsGive it a side of right class name full width on small devices maximum
9:57:489 hours, 57 minutes, 48 secondswidth of MD overflow Y auto give it a header
9:57:579 hours, 57 minutes, 57 secondsgive it a title what triggers this workflow and then let's go ahead and give this a
9:58:069 hours, 58 minutes, 6 secondsdescription a trigger is a step that starts your workflow. And then outside
9:58:139 hours, 58 minutes, 13 secondsof sheet header, open a div trigger nodes dom node type.
9:58:249 hours, 58 minutes, 24 secondsIcon is going to be node type do icon and return a div like this. Go ahead and
9:58:329 hours, 58 minutes, 32 secondsgive it a key of node type dot type.
9:58:389 hours, 58 minutes, 38 secondsLet's go ahead and add a class name to be full width
9:58:469 hours, 58 minutes, 46 secondsjustify start height auto py 5 px4
9:58:559 hours, 58 minutes, 55 secondsrounded none cursor pointer border L2 border transparent hover border L
9:59:059 hours, 59 minutes, 5 secondsprimary on click for now. Just leave it empty like this.
9:59:149 hours, 59 minutes, 14 secondsInside of here, let's go ahead and add a class name flex items center
9:59:229 hours, 59 minutes, 22 secondsgap six full width overflow hidden. And now let's finally render the icon. So if
9:59:309 hours, 59 minutes, 30 secondstype of icon is just a string, it means it's an image href. So let's use a normal image element here.
9:59:429 hours, 59 minutes, 42 secondsSource is going to be the icon. Alt will be node type label. Class name is going
9:59:519 hours, 59 minutes, 51 secondsto be size five. Object contain rounded small.
9:59:589 hours, 59 minutes, 58 secondsOtherwise, we are going to render it as an icon, as a node
10:00:0510 hours, 5 secondswith a class name size five. So, I'm going to stop here so we can actually see what this even was.
10:00:1510 hours, 15 secondsFor example, let's go inside of our add node button. This is the last component I believe we have added in the editor.
10:00:2510 hours, 25 secondsSo you can find it in the editor here where we render React Flow. We practiced adding like a random thing in the upper
10:00:3410 hours, 34 secondsright corner. So inside of source features editor components add node button. We have it right here. So what
10:00:4310 hours, 43 secondswe could do here is wrap it inside of node selector like this. And this will allow the button to become the trigger to open that drawer.
10:00:5610 hours, 56 secondsLet's go ahead and pass in open on open change. And let's very simply introduce a state here like this. Selector open
10:01:0510 hours, 1 minute, 5 secondsset selector open from use state react pass in selector open and pass in set
10:01:1210 hours, 1 minute, 12 secondsselector open in the second prop. Now that we have that, let's go ahead and try it out. So, I'm going to refresh
10:01:1910 hours, 1 minute, 19 secondsthis and I will attempt to just, you know, click on the plus button here. And there
10:01:2610 hours, 1 minute, 26 secondswe go. What triggers this workflow? A trigger is a step that starts your workflow. There we go. You can see how
10:01:3310 hours, 1 minute, 33 secondsthat looks. When I click on it, nothing really happens. So now, let's keep that open. You can see it becomes full screen on mobile. And let's continue working
10:01:4210 hours, 1 minute, 42 secondsinside of the node selector here. So after we render the icon, let's open a new div.
10:01:5210 hours, 1 minute, 52 secondsLet's open a span inside node type label. Now you can see we have a label
10:01:5810 hours, 1 minute, 58 secondshere. Let's give the span a class name font medium text small.
10:02:0710 hours, 2 minutes, 7 secondsLet's give the parent div a class name flex flex column items start text left.
10:02:1610 hours, 2 minutes, 16 secondsLet's open a new span node type description. Give it a class name of
10:02:2310 hours, 2 minutes, 23 secondstext extra small and text muted foreground. There we go. Now we can see
10:02:3010 hours, 2 minutes, 30 secondshow this looks uh with all of the details added. Perfect. And now what we can do is we can copy this entire thing.
10:02:3910 hours, 2 minutes, 39 secondsSo yeah, let's copy the entire div like this. Copy it and paste it. And then you're just going to change this from
10:02:4810 hours, 2 minutes, 48 secondstrigger nodes to execution nodes like this. And between them, you can add a separator like this.
10:02:5610 hours, 2 minutes, 56 secondsUh if you want to, you can also, you know, kind of uh like repeat the sheet header. Maybe you can do that instead of like separator. I don't know. Let's see.
10:03:0810 hours, 3 minutes, 8 secondsMaybe what executes this workflow. I don't know. I think separator is clear enough. And or maybe you can just change
10:03:1810 hours, 3 minutes, 18 secondsuh this depending on what type of nodes you have on your uh editor. You will be
10:03:2610 hours, 3 minutes, 26 secondsable to actually do that. You will be able to read the state of the editor. So you can maybe see if you only have this default plus node perhaps show a message
10:03:3510 hours, 3 minutes, 35 secondswhat triggers this workflow and only show triggers and then once you start adding things also show both triggers
10:03:4410 hours, 3 minutes, 44 secondsand executions however you want. I think this is okay. Uh now let's also make this button do that as well.
10:03:5410 hours, 3 minutes, 54 secondsSo the way we can do that is by going inside of our initial node component
10:04:0210 hours, 4 minutes, 2 secondsinside of source components initial node and just as we've wrapped our placeholder node within workflow node let's now do it with the node selector
10:04:1010 hours, 4 minutes, 10 secondsas simple as this they are in the same folder so they can be imported simple dot / node selector and let's just go
10:04:1810 hours, 4 minutes, 18 secondsahead and keep the state here selector open set selector open from use state from react. Just make sure you add that.
10:04:2610 hours, 4 minutes, 26 secondsAnd once you have those two, let's go ahead and just simply add open and unopen change. And now this big button
10:04:3410 hours, 4 minutes, 34 secondshere should serve as the on click as well. I think we have to refresh here and click plus.
10:04:4110 hours, 4 minutes, 41 secondsLooks like that is not happening. And it's very clear why because we never call set selector open to be true.
10:04:5110 hours, 4 minutes, 51 secondsSo now let's go ahead and click on this.
10:04:5310 hours, 4 minutes, 53 secondsThere we go. And now that I'm actually uh now that I think of it,
10:05:0010 hours, 5 minutesuh maybe we don't even need to uh keep track of state from the outside because trigger will do that for us.
10:05:1010 hours, 5 minutes, 10 secondsUh uh but then it will be a bit harder to decide how to close it. I think let's just let's keep it like this for now.
10:05:2310 hours, 5 minutes, 23 secondsAll right. Uh perfect. So now we have two ways. One the initial way and one which will always be available here in
10:05:3010 hours, 5 minutes, 30 secondsthe corner. Perfect. Now what we have to do is that when we click on trigger manually, it should show the manual
10:05:3810 hours, 5 minutes, 38 secondstrigger node. When I click on HTTP request, it should add that. So let's go ahead and go inside of our node selector
10:05:4710 hours, 5 minutes, 47 secondshere and let's create the logic to do that.
10:05:5210 hours, 5 minutes, 52 secondsSo the first thing we have to do is we have to get the current state of the editor. So let's call our use react flow
10:06:0010 hours, 6 minuteswhich we have imported here and then we can get set nodes from here. We can get get nodes and screen to flow position.
10:06:1310 hours, 6 minutes, 13 secondsAnd now let's create handle node select.
10:06:1710 hours, 6 minutes, 17 secondsLet's make it a call back like this.
10:06:2310 hours, 6 minutes, 23 secondsAnd inside of here uh let's also make sure this accepts a type. So node type is a type of node type option. Basically
10:06:3110 hours, 6 minutes, 31 secondsthe node type option is this what we've defined above.
10:06:3610 hours, 6 minutes, 36 secondsSo once we select one of those, first thing we're going to ch do is we're going to check if node type is equal to node type dot manual trigger.
10:06:4910 hours, 6 minutes, 49 secondsPerhaps we can rename the node type in this case to be like selection, I don't know, selection.
10:06:5610 hours, 6 minutes, 56 secondsMaybe that makes more sense. Like if selection type is same as the manual trigger, we have to check if there is an already existing manual trigger. Right?
10:07:0910 hours, 7 minutes, 9 secondsSo you should never be able to add two manual triggers.
10:07:1410 hours, 7 minutes, 14 secondsSo what I'm going to do is do const nodes get nodes.
10:07:1910 hours, 7 minutes, 19 secondsConst has manual trigger nodes sum node node type node type dot manual trigger.
10:07:3110 hours, 7 minutes, 31 secondsSo is there any node already in the canvas which has a type of manual trigger. If has manual trigger we're
10:07:3910 hours, 7 minutes, 39 secondsgoing to break this function by throwing an error. Only one manual trigger is allowed per workflow.
10:07:4710 hours, 7 minutes, 47 secondsAnd let's break the function with a return.
10:07:5110 hours, 7 minutes, 51 secondsOtherwise, let's call set nodes. Inside of here, we are going to get the snapshot of the current nodes. And let's
10:07:5810 hours, 7 minutes, 58 secondsgo ahead and do the following. const has initial trigger nodes sum node node type node type initial.
10:08:1110 hours, 8 minutes, 11 secondsSo we are checking basically is this uh a state where we
10:08:1810 hours, 8 minutes, 18 secondsare adding the very first node. So it's checking if this element exists because if it exists it means that whatever user
10:08:2710 hours, 8 minutes, 27 secondsjust selected is the very first node that we are ever going to add. So we're just going to replace the position of that initial trigger.
10:08:3710 hours, 8 minutes, 37 secondsConst center X is going to be window inner width divided by two
10:08:4610 hours, 8 minutes, 46 secondsand center Y is going to be window inner height
10:08:5310 hours, 8 minutes, 53 secondsdivided by two. And now let's go ahead and convert screen coordinates to react flow coordinates by doing const flow
10:09:0210 hours, 9 minutes, 2 secondsposition. Screen to flow position X is going to be center X plus
10:09:0910 hours, 9 minutes, 9 secondsmath.random minus.5* 200 and Y is going to be center Y.
10:09:2210 hours, 9 minutes, 22 secondsSo what we're doing here is basically uh if th this is the logic we are preparing later when you add like more
10:09:3110 hours, 9 minutes, 31 secondsnodes right um the way we're going to decide where to position a new node that's been added
10:09:4010 hours, 9 minutes, 40 secondscannot just be a center because look at the canvas if I go you know all the way here and if I click add node I would
10:09:4910 hours, 9 minutes, 49 secondsexpect it to appear here so we can't always just choose the center. This is the center. Imagine always having to scroll back. So that's what we are doing
10:09:5810 hours, 9 minutes, 58 secondshere. We are using uh the current camera angle like imagine it like that.
10:10:0410 hours, 10 minutes, 4 secondsLike we are the using the current cursor position, the current canvas position and positioning it a little bit off the center so they don't like stack on top
10:10:1210 hours, 10 minutes, 12 secondsof one another. And let's go ahead and do con new node here. pass in the id to
10:10:1810 hours, 10 minutes, 18 secondsbe create uh id. So we can use create id from cud2 to import.
10:10:2610 hours, 10 minutes, 26 secondsData will be an empty object. Position is going to be flow position.
10:10:3410 hours, 10 minutes, 34 secondsType will be node uh selection.
10:10:4010 hours, 10 minutes, 40 secondsAnd now let's check if has initial trigger. In that case, let's just return new node because we don't have to like
10:10:4910 hours, 10 minutes, 49 secondsappend this to a list of nodes. We want to replace the existing initial trigger with this new node. And otherwise, let's
10:10:5810 hours, 10 minutes, 58 secondsjust return nodes new node in a sense that we are just adding more nodes here.
10:11:0410 hours, 11 minutes, 4 secondsAnd once we do that, let's call on open change and set it to false in the sense that let's close the sidebar. Now, now
10:11:1110 hours, 11 minutes, 11 secondswe have to add all of the dependencies here. Set nodes, get nodes, on open, change, screen to flow position.
10:11:2210 hours, 11 minutes, 22 secondsGreat. And now that we have that, we can use that as the on click in here. On
10:11:2910 hours, 11 minutes, 29 secondsclick handle node select and pass in node type.
10:11:3410 hours, 11 minutes, 34 secondsCopy this and make sure to also add it in the execution nodes below.
10:11:3910 hours, 11 minutes, 39 secondsThere we go. Let's go ahead and refresh now. And now we should be able to add our node. And this one should disappear.
10:11:4610 hours, 11 minutes, 46 secondsIf I click this, there we go. The old node disappeared. And this one was added. If I go and move here and do it
10:11:5610 hours, 11 minutes, 56 secondsagain, you will see I now have two of them and they follow my camera. Right?
10:12:0010 hours, 12 minutesSo if I initialize another one here, it's always going to be somewhere here.
10:12:0510 hours, 12 minutes, 5 secondsWe slightly offset it randomly so they don't exactly stack on top of each other. Okay, this is stacking. But at
10:12:1110 hours, 12 minutes, 11 secondsleast it's not like this, right? All right, looks like this is working.
10:12:1610 hours, 12 minutes, 16 secondsObviously, the problem is we didn't initialize any uh component that should load when the type is manual trigger or
10:12:2610 hours, 12 minutes, 26 secondswhen the type is an HTTP request. So now let's go ahead and do that. Let's start by going inside of config node
10:12:3310 hours, 12 minutes, 33 secondscomponents here and let's go ahead and let's prepare node type dot http request
10:12:4110 hours, 12 minutes, 41 secondsand node type dot manual trigger.
10:12:4710 hours, 12 minutes, 47 secondsSo the manual trigger one will be called manual trigger node and the other one
10:12:5310 hours, 12 minutes, 53 secondswill be called http request node. Uh let's start by creating the HTTP uh
10:13:0210 hours, 13 minutes, 2 secondsrequest node here. We're going to keep it simple. Uh though we will have to
10:13:1110 hours, 13 minutes, 11 secondsuh all right let's let's do the following. Uh leave this as error for
10:13:1810 hours, 13 minutes, 18 secondsnow. Let's go inside of source components and create a new base
10:13:2610 hours, 13 minutes, 26 secondsexecution node. DSX base execution node dsx like this. Let's
10:13:3510 hours, 13 minutes, 35 secondsmark it as use client here. Let's go ahead and let's import
10:13:4210 hours, 13 minutes, 42 secondstype node props and position from xy flow react. Let's go ahead and
10:13:5110 hours, 13 minutes, 51 secondsimport type lucid icon from lucid react. Import image
10:13:5910 hours, 13 minutes, 59 secondsfrom next image. import memo type react node and use callback
10:14:0810 hours, 14 minutes, 8 secondsfrom react. Let's go ahead and now see do I have something called base handle?
10:14:1710 hours, 14 minutes, 17 secondsI only have something called base node.
10:14:2010 hours, 14 minutes, 20 secondsSo I should be able to import base node a and base node content from
10:14:2710 hours, 14 minutes, 27 secondscomponents react flow base node. Looks like both of them exist. Great. But we also need base handle. Uh, and I'm
10:14:3610 hours, 14 minutes, 36 secondspretty sure that we can uh do that by going inside of here. Let's inside of UI and let's try to find the handle here.
10:14:4410 hours, 14 minutes, 44 secondsHere we have it. Base handle. So, I'm going to go ahead and run this again.
10:14:5110 hours, 14 minutes, 51 secondsAgain, if you if for whatever reason this is not working for you, using the link on the screen or the the place
10:14:5910 hours, 14 minutes, 59 secondsbasically my assets folder, you can find all the components which we add in this way. So you can follow along npx chat
10:15:0910 hours, 15 minutes, 9 secondscnui. I'm using my version and let's add a base handle. There we go. It's installing dependencies.
10:15:1910 hours, 15 minutes, 19 secondsAnd once we have the base handle, what I'm going to do immediately is move the base handle inside of React Flow. Move.
10:15:2910 hours, 15 minutes, 29 secondsNow, I'm not sure if only base handle was added, but I think that was the only component that was added. Great.
10:15:3710 hours, 15 minutes, 37 secondsNow, we can focus back here in the base execution node. And we can now also
10:15:4310 hours, 15 minutes, 43 secondsimport the base handle. So import base handle from react flow base handle. And
10:15:5010 hours, 15 minutes, 50 secondsyou can also change this to be like this like a shorter line. All right. And
10:15:5710 hours, 15 minutes, 57 secondslet's import workflow node from dot slashworkflow node.
10:16:0510 hours, 16 minutes, 5 secondsNow let's go ahead and let's create an interface here.
10:16:0910 hours, 16 minutes, 9 secondsBase execution node props extends node props. So node props was imported from here. The only one we won't implement
10:16:1710 hours, 16 minutes, 17 secondsfor now is the status because it will require um it will require another set of components. And I think the best way to
10:16:2610 hours, 16 minutes, 26 secondsimplement the status thingy is when we implement the real time pub sub messaging because then you will actually be able to see like loading status,
10:16:3410 hours, 16 minutes, 34 secondserror status or success status. So I don't really want to waste time developing that now because we won't really be able to see it in action.
10:16:4410 hours, 16 minutes, 44 secondsLet's do export con base execution node.
10:16:5210 hours, 16 minutes, 52 secondsIt's a memo like this.
10:16:5710 hours, 16 minutes, 57 secondsType base execution node props and open a function like this. All right.
10:17:0810 hours, 17 minutes, 8 secondsNow let's go ahead and extract ID icon. Let's remap it to icon with a capital I.
10:17:1410 hours, 17 minutes, 14 secondsName description children on settings on double click. And I think
10:17:2210 hours, 17 minutes, 22 secondsthat's it. Great. Now let's go ahead and let's return workflow node.
10:17:3010 hours, 17 minutes, 30 secondsLet's pass in the name to be name description to be description
10:17:3610 hours, 17 minutes, 36 secondson delete to be handle delete on settings to be on settings.
10:17:4410 hours, 17 minutes, 44 secondsLet's go ahead and quickly just define con handle delete here as an empty function.
10:17:5210 hours, 17 minutes, 52 secondsThen let's render the base node.
10:17:5610 hours, 17 minutes, 56 secondsLet's pass in the It should have on double click. It does. Great. On doubleclick.
10:18:0410 hours, 18 minutes, 4 secondsSo on double click is just a native HTML uh event handler. That's why it's working. It's just a normal div, but
10:18:1110 hours, 18 minutes, 11 secondsit's it works just as the same way as on click does, right? And inside of here, let's do base node content.
10:18:2210 hours, 18 minutes, 22 secondsAnd then let's go ahead and check if type of icon is a string.
10:18:3010 hours, 18 minutes, 30 secondsLet's render an image with a source of icon al of name width
10:18:3810 hours, 18 minutes, 38 seconds16 and height 16. Otherwise, let's render it as a node. So depending, are we going to use an icon or are we going to use an image?
10:18:5110 hours, 18 minutes, 51 secondsGreat. After that, render the children.
10:18:5610 hours, 18 minutes, 56 secondsAnd now we have to define the base handles here. So render base handle. It's a self-closing tag.
10:19:0310 hours, 19 minutes, 3 secondsLet's go ahead and give it an ID of target one. Let's give it a type of target and a position of position.
10:19:1410 hours, 19 minutes, 14 secondsSo we imported position from XYlow React. duplicate the base handle and
10:19:2210 hours, 19 minutes, 22 secondsgive this one a source of one and a type of source and this will be position right
10:19:3010 hours, 19 minutes, 30 secondsand let's just end it by giving it a display name like this so what's currently missing is the
10:19:3810 hours, 19 minutes, 38 secondsstatus as I've described but we are going to come back to this later all right uh so base execution node uh and obviously we are also missing this.
10:19:4910 hours, 19 minutes, 49 secondsSo, let me just add to-do add delete.
10:19:5610 hours, 19 minutes, 56 secondsAnd inside of here, I'm going to do to-do wrap within node status indicator,
10:20:0510 hours, 20 minutes, 5 secondswhich is something we're going to focus on later because we don't really have a way of displaying it right now. Let's remove the unused use callback.
10:20:1310 hours, 20 minutes, 13 secondsNow that we have uh the base execution node, we can go ahead and develop the HTTP request node.
10:20:2410 hours, 20 minutes, 24 secondsSo I'm going to go ahead inside of the following features. Let's create a new folder called executions.
10:20:3410 hours, 20 minutes, 34 secondsAnd let's go ahead and create a new folder called components. And let's go ahead and create a new folder called
10:20:4110 hours, 20 minutes, 41 secondsHTTP request. And in here we're going to create all business logic for HTTP request as well as all UI things. So
10:20:4910 hours, 20 minutes, 49 secondslet's do node.tsx like this. Let's mark it as use client.
10:20:5610 hours, 20 minutes, 56 secondsLet's go ahead and add some imports. Uh we're going to need node and node props
10:21:0410 hours, 21 minutes, 4 secondsfrom xy flow react as well as use react flow. Let's import globe icon from lucid react. Let's import memo and use state.
10:21:1610 hours, 21 minutes, 16 secondsLet's import our newly created base execution node. You can also simplify
10:21:2310 hours, 21 minutes, 23 secondsthis by doing this I believe. Uh maybe not.
10:21:3010 hours, 21 minutes, 30 secondsUh ah yeah let's go ahead and do this.
10:21:3310 hours, 21 minutes, 33 secondsInside of components, remove the base execution node from here and let's keep it inside of executions components. And
10:21:4310 hours, 21 minutes, 43 secondsif it asks to update imports, you can select yes. So inside of base execution node, you can now replace this with the alias because it makes more sense now.
10:21:5710 hours, 21 minutes, 57 secondsAnd now you should be able to find the base execution node as your neighbor because it will exclusively be used
10:22:0510 hours, 22 minutes, 5 secondsinside of executions here. And in here we are going to we're going to use the same way we will build the HTTP request.
10:22:1310 hours, 22 minutes, 13 secondsWe're also going to build open AI. We're also going to build entropic. We're going to build Gemini this way. So that's why I want to keep this closed
10:22:2110 hours, 22 minutes, 21 secondsinstead of just like randomly as in it can be used for whatever. So instead of a HTTP request node. DSX.
10:22:2910 hours, 22 minutes, 29 secondsMake sure that you have this now. Uh and now let's just focus on creating HTTP request node data.
10:22:4010 hours, 22 minutes, 40 secondsEndpoint is going to be an empty string.
10:22:4310 hours, 22 minutes, 43 secondsmethod is going to be either get or post or put or patch or delete.
10:22:5310 hours, 22 minutes, 53 secondsBody is going to be an empty string and then whatever other properties we might
10:22:5910 hours, 22 minutes, 59 secondsneed. Now this data will require a separate model to be worked with but let's
10:23:0810 hours, 23 minutes, 8 secondsalready define it here simply so you can see that we will have some actual functionality behind these nodes. Let's
10:23:1510 hours, 23 minutes, 15 secondsdefine HTTP request node type to be a node with HTTP request node data. So
10:23:2310 hours, 23 minutes, 23 secondsthat's how we are going to specify a more specific type of node with specific data we expect.
10:23:3110 hours, 23 minutes, 31 secondsLet's export const HTTP request node to be memo props node props http request.
10:23:4210 hours, 23 minutes, 42 secondsOh. Oh, we can actually uh No, it needs to be node props HTTP request node type.
10:23:5210 hours, 23 minutes, 52 secondsAll right.
10:23:5510 hours, 23 minutes, 55 secondsAnd then in here, what we are going to do is we're going to
10:24:0210 hours, 24 minutes, 2 secondsdo const description to be node data question mark. Uh let's see how do we get node data specifically.
10:24:1510 hours, 24 minutes, 15 secondsUh just a second. Okay.
10:24:2110 hours, 24 minutes, 21 secondsLet's first define node data to be props. data as HTTP request
10:24:2810 hours, 24 minutes, 28 secondsnode data. In the description, let's do node data.endpoint.
10:24:3410 hours, 24 minutes, 34 secondsNow, if we define an endpoint for this HTTP request node, we are very simply going to render the following node data method that we used or fallback to get.
10:24:4610 hours, 24 minutes, 46 secondsAnd then we're simply going to display node data.endpoint like this. Otherwise, we're going to say
10:24:5410 hours, 24 minutes, 54 secondsnot configured. So basically, if I know this [snorts] is a lot right now, and the reason it's complicated is because I
10:25:0210 hours, 25 minutes, 2 secondsjust told you to write this entire thing, but you don't really understand where you're going to add this fields, right? There will be a dialogue that
10:25:1110 hours, 25 minutes, 11 secondswill open when you doubleclick on HTTP request node and then you will be able to have inputs and forms to select these
10:25:1810 hours, 25 minutes, 18 secondsthings and depending on that input we are choosing what to display on this node as in not configured like you
10:25:2810 hours, 25 minutes, 28 secondshaven't done any settings here or I will show you the exact method you chose as well as the endpoint you chose. So now
10:25:3610 hours, 25 minutes, 36 secondslet's finally do a return here so we can see what's going on. Uh so open a fragment and render a base execution
10:25:4510 hours, 25 minutes, 45 secondsnode in here. And that's the cool thing about developing this base execution node. We are going to reuse it for every
10:25:5210 hours, 25 minutes, 52 secondssingle node that we have which is executing something. So now we're just passing some things here. Icon will be globe icon.
10:26:0310 hours, 26 minutes, 3 secondsName will be HTTP request. Description will be dynamic. So either not
10:26:1010 hours, 26 minutes, 10 secondsconfigured or the full you know option that we did on settings for now empty
10:26:1710 hours, 26 minutes, 17 secondson doubleclick for now empty. So the double click will open the dialogue or settings both of those will basically
10:26:2510 hours, 26 minutes, 25 secondsopen the dialogue and then the user will be able to configure the endpoint method body and key. But we needed to like
10:26:3210 hours, 26 minutes, 32 secondsdevelop this because you can see we need it for node types.
10:26:3810 hours, 26 minutes, 38 secondsAnd let's just end this by adding the HTTP request node to be a display name like this. Great. So for now, let's
10:26:4710 hours, 26 minutes, 47 secondsremove the unused use state and use React flow here. Now that we have this, we can go back inside of node components
10:26:5610 hours, 26 minutes, 56 secondshere and we should be able to import HTTP request node from features
10:27:0310 hours, 27 minutes, 3 secondsexecutions components request HTTP request node. Now we have to do the same thing for manual trigger node. But let's
10:27:1210 hours, 27 minutes, 12 secondscomment this out just so we can see what we developed here. So I'm going to refresh and then I'm going to select an
10:27:2010 hours, 27 minutes, 20 secondsHTTP request and this is how it looks like right. So HTTP request with a globe icon and it says not configured because it isn't. You will have to doubleclick
10:27:2910 hours, 27 minutes, 29 secondson it or click on the settings button which will open the dialogue and that will basically allow you to pass in uh the method which is get put post patch
10:27:3810 hours, 27 minutes, 38 secondsor delete uh and the endpoint which is the URL as well as some other body configuration. Uh and now we should do
10:27:4610 hours, 27 minutes, 46 secondsthe same for this because you can see how this one is not really configured at the moment.
10:27:5410 hours, 27 minutes, 54 secondsIn order to develop the trigger node, we have to also create the base for it. So
10:28:0210 hours, 28 minutes, 2 secondsjust as we've developed the base for the execution node, let's copy it and let's go ahead inside of features here and let's actually create a new folder called triggers.
10:28:1210 hours, 28 minutes, 12 secondsAnd in here, let's add components. And then inside of here, paste the copy of
10:28:1910 hours, 28 minutes, 19 secondsbase execution node. And rename this to uh base trigger node.
10:28:2710 hours, 28 minutes, 27 secondsAnd now inside of here, make sure that you're inside that new file so you don't override what existed, right? Let's go ahead and change this from base
10:28:3510 hours, 28 minutes, 35 secondsexecution node props to base trigger node props. icon is going to be uh the same name is going to be the same
10:28:4310 hours, 28 minutes, 43 secondsdescription will be the same children we're going to comment out on the status everything else will be the same here so
10:28:5010 hours, 28 minutes, 50 secondsinstead of base execution node here again trigger same for the props here we're going to
10:28:5810 hours, 28 minutes, 58 secondsuh leave this to be just empty and we're going to work on it later workflow node same thing it will have its own settings
10:29:0610 hours, 29 minutes, 6 secondsit will have handle delete it will have description.
10:29:1010 hours, 29 minutes, 10 secondsWe will also need to wrap it within a status indicator. Uh now what we are going to start to do differently is
10:29:1810 hours, 29 minutes, 18 secondsthis. The base node will need a class name of rounded L to Excel.
10:29:2510 hours, 29 minutes, 25 secondsRelative and group. Let me fix the typo.
10:29:2910 hours, 29 minutes, 29 secondsRelative. There we go. Rounded L to Excel.
10:29:3410 hours, 29 minutes, 34 secondsAll right. Now instead of base node content uh this is fine. Um let's see.
10:29:4110 hours, 29 minutes, 41 secondsSo we need source, we need alt, we need width, we need height. All of that is good. I think icon is good as well.
10:29:5110 hours, 29 minutes, 51 secondsChildren is good. And now here's the crucial difference. You won't be able to
10:29:5710 hours, 29 minutes, 57 secondsconnect to the base trigger from the target handle. So remove it. It should only have a source on the right side.
10:30:0810 hours, 30 minutes, 8 secondsAnd let's go ahead and of course change these two to be base trigger node.
10:30:1510 hours, 30 minutes, 15 secondsThere we go. So very simply, we copied the base execution node. We renamed it in all instances. We gave a class name
10:30:2310 hours, 30 minutes, 23 secondsto base node here. And we removed one base handle which was the target one.
10:30:3010 hours, 30 minutes, 30 secondsSo, a slight modification but quite easy to build. We didn't have to do it from scratch. Now, inside of triggers here,
10:30:3910 hours, 30 minutes, 39 secondsinside of components, let's create a new folder called manual trigger like this.
10:30:4510 hours, 30 minutes, 45 secondsAnd this manual trigger will now have node.tsx. Let's export con manual trigger node.
10:30:5410 hours, 30 minutes, 54 secondsGive it a memo with propes props node props from XYlow React. And this one
10:31:0110 hours, 31 minutes, 1 secondwill not have any settings like uh our HTTP request that this is just a normal onclick event. Nothing special here
10:31:1010 hours, 31 minutes, 10 secondsreally. So let's go ahead and just do a very simple return.
10:31:1610 hours, 31 minutes, 16 secondsLet's return a fragment because we will have more elements later. base trigger node
10:31:2410 hours, 31 minutes, 24 secondsand let's spread the props. Icon will be mouse mouse pointer icon from lucid
10:31:3110 hours, 31 minutes, 31 secondsreact name will be when clicking on actually let's just do when clicking and then in quotes execute workflow
10:31:4010 hours, 31 minutes, 40 secondslike that. Uh let's go ahead and do this. Let's pass in status to be node status and comment it out because we
10:31:4910 hours, 31 minutes, 49 secondswill need it later. So I will just add to-do so I don't remember on settings should just be
10:31:5910 hours, 31 minutes, 59 secondsuh it should be handle open settings. So I'm going to comment that out too as
10:32:0510 hours, 32 minutes, 5 secondswell. and on doubleclick again handle open settings to do so I
10:32:1310 hours, 32 minutes, 13 secondsdon't forget those things now that we have the manual trigger node let's go inside of node components here let's
10:32:2010 hours, 32 minutes, 20 secondsenable it and let's import from features triggers components manual trigger forward slashnode and there we go you
10:32:2910 hours, 32 minutes, 29 secondscan immediately see how this looks so when clicking execute workflow that's how this is looking right. Perfect. So
10:32:3810 hours, 32 minutes, 38 secondsnow you know how to you know create a sheet which can render new elements here on the canvas. And if I try to add one
10:32:4810 hours, 32 minutes, 48 secondsmore trigger, I should actually get an error. Only one manual trigger is allowed per workflow. So I copied that
10:32:5610 hours, 32 minutes, 56 secondsfrom N8N. Uh if you personally think for your use case you should have multiple manual executions feel free to remove
10:33:0410 hours, 33 minutes, 4 secondsthat if clause that I added in the node selector. Great. So obviously still room for improvement here. Uh still a lot of
10:33:1310 hours, 33 minutes, 13 secondsconfusion about why did we need all of that inside of you know base execution node. Uh how will we actually open the
10:33:2110 hours, 33 minutes, 21 secondsdialogues? How will we delete nodes? A lot of questions for sure. But let's go ahead and see uh where we are right now.
10:33:3110 hours, 33 minutes, 31 secondsSo we added the manual node HTTP request node and we built the node selector component. All of this I have to say did
10:33:3910 hours, 33 minutes, 39 secondstake more time than I thought. So um I think it's best that I leave the save uh
10:33:4810 hours, 33 minutes, 48 secondsfunctionality for the next chapter simply because in that next chapter I will also be working on
10:33:5710 hours, 33 minutes, 57 secondsuh create creating the delete functionality. So perhaps that will be kind of be a chapter where we manipulate
10:34:0410 hours, 34 minutes, 4 secondsthe state of the editor. So we leave this one as a simple okay I learned how to uh create a node selector and how to
10:34:1310 hours, 34 minutes, 13 secondsremove the current initial node and how to render this executor style thingy.
10:34:2110 hours, 34 minutes, 21 secondsAll right. So yes, this looks good.
10:34:2310 hours, 34 minutes, 23 secondsWe're also going to kind of modify the CSS here a little bit. I don't I'm not sure I like them this dark. Uh I will see uh how we're going to fix that.
10:34:3310 hours, 34 minutes, 33 secondsGreat. So let's call it a day here and I'm going to prepare some things for the
10:34:4010 hours, 34 minutes, 40 secondsnext chapter. So let me go here. 16 node selector. I'm going to go ahead and commit this 13 files that I have here.
10:34:5110 hours, 34 minutes, 51 secondsI'm going to create a new branch 16 node selector.
10:34:5610 hours, 34 minutes, 56 secondsAnd I'm going to go ahead and stage all of my changes here.
10:35:0110 hours, 35 minutes, 1 second16 node selector commit and I'm going to publish the branch. Now let's go ahead
10:35:0810 hours, 35 minutes, 8 secondsand take a look at GitHub.
10:35:1310 hours, 35 minutes, 13 secondsLet's go ahead and open a pull request and let's review our code.
10:35:1910 hours, 35 minutes, 19 secondsAnd here we have the summary. We added a node selector panel to insert workflow nodes from the canvas to add button. We
10:35:2810 hours, 35 minutes, 28 secondsintroduced new node types, manual trigger and HTTP request. We added base components for trigger and execution
10:35:3710 hours, 35 minutes, 37 secondsnodes with consistent styling and connection handles. We enhanced initial node to open the node selector for quick
10:35:4410 hours, 35 minutes, 44 secondsstarting points. We mapped new node types to their visual components in the editor. We also added a lightweight ID
10:35:5110 hours, 35 minutes, 51 secondsgeneration library and we updated the database schema to support new node types.
10:35:5910 hours, 35 minutes, 59 secondsNow in this specific pull request I don't believe u there is anything too useful to look at the sequence diagram for but we do have some comments. So the
10:36:0810 hours, 36 minutes, 8 secondsfirst issue is code rabbit suggests not dropping all uh the nodes instead replace the initial node instead.
10:36:1810 hours, 36 minutes, 18 secondsSo instead of just doing return new node or this, we find the initial node and replace it uh inside of the has initial
10:36:2710 hours, 36 minutes, 27 secondstrigger block. This is what I actually did initially. But the problem is if you scroll away like drag the canvas away
10:36:3510 hours, 36 minutes, 35 secondsfrom that node. Let me show you what I'm thinking about. So if I refresh this, what it's suggesting is that this exact
10:36:4410 hours, 36 minutes, 44 secondsposition gets replaced with the initial node. Right now, that doesn't happen. You can see how it's a little below it.
10:36:5010 hours, 36 minutes, 50 secondsIt's basically random every time. The reason I do that is because if you do like this and then add it, it's still
10:36:5810 hours, 36 minutes, 58 secondsgoing to be here. Otherwise, if you do what Code Rabbit suggests, it will have to be here. You'll have to go back here.
10:37:0510 hours, 37 minutes, 5 secondsSo, that's why I'm not doing that. All right.
10:37:1010 hours, 37 minutes, 10 secondsIn here, it noticed a bug. We have double spread of props here. So, definitely a bug. But as far as I know, since this is in React Flow folder, it
10:37:1810 hours, 37 minutes, 18 secondsmeans it was added by them, not us. So, at least we didn't write the bug. But we should definitely be the ones who fix
10:37:2510 hours, 37 minutes, 25 secondsit. Uh, in the add node button here, we left an on click completely empty, and
10:37:3410 hours, 37 minutes, 34 secondswe didn't notice because it's still working. The reason it's working is because we wrapped it inside of a node
10:37:4010 hours, 37 minutes, 40 secondsselector and we gave it an open onopen change here.
10:37:4510 hours, 37 minutes, 45 secondsand node selector is wrapping the button with a sheet trigger. And I think that
10:37:5310 hours, 37 minutes, 53 secondsthat trigger for itself calls on open change regardless that this is empty. I will make sure to take a look at this
10:38:0110 hours, 38 minutes, 1 secondbefore the next chapter to give you a conclusion on whether we should remove this or maybe switch this selector open
10:38:0710 hours, 38 minutes, 7 secondsto be true here. I'm not sure. But you know this works. So I'm not sure what
10:38:1410 hours, 38 minutes, 14 secondsexactly to conclude, but yeah, we could also add this. It wouldn't hurt. Or we can just remove the on click altogether.
10:38:2210 hours, 38 minutes, 22 secondsAnd now most of these things that it's telling me are because of the unused on doubleclick empty handle deletes. I'm
10:38:3210 hours, 38 minutes, 32 secondsnot really going to take into consideration those comments now because this is still in to-do. We still have to
10:38:3910 hours, 38 minutes, 39 secondsproperly use them. So these comments aren't really applicable right now.
10:38:4610 hours, 38 minutes, 46 secondsNow in here it told me to fix the node props generic and avoid unsafe cast. And
10:38:5410 hours, 38 minutes, 54 secondsI think that might be true because I'm doing HTTP request node type by extending node here. And then I'm using node props to extend it using this.
10:39:0410 hours, 39 minutes, 4 secondsI will see if that's really all I need.
10:39:0610 hours, 39 minutes, 6 secondsSo in here it suggests doing node props and passing uh wait but what am I doing
10:39:1410 hours, 39 minutes, 14 secondsincorrectly? Oh I I mis misunderstood. I thought it was referring to how I initialize the data but it's referring to this specifically
10:39:2310 hours, 39 minutes, 23 secondsto avoid casting uh like as HTTP request node data and making it work by default.
10:39:3010 hours, 39 minutes, 30 secondsAll right. So yeah definitely if we can do that that would be an improvement. I will look into how we can fix that.
10:39:3610 hours, 39 minutes, 36 secondsAnd the rest of these are just the same about our unused uh handlers. So let's just merge this pull
10:39:4510 hours, 39 minutes, 45 secondsrequest here for now and I will make sure to take a look at this fixes in the next chapter. Let's go back inside of our main branch here and let's
10:39:5410 hours, 39 minutes, 54 secondssynchronize the changes again. Amazing comments by code rabbit here and let's confirm we've merged by going inside of
10:40:0110 hours, 40 minutes, 1 secondgraph. There we go. 16 node uh node selector.
10:40:0610 hours, 40 minutes, 6 secondsSo we didn't end up uh developing the editor state and we didn't enable editor save functionality. We will do that in
10:40:1410 hours, 40 minutes, 14 secondsthe next chapter but we did finish the rest. Amazing amazing job and see you in the next chapter where we were going to
10:40:2210 hours, 40 minutes, 22 secondsexplore the editor state, the save button, u how to delete nodes, etc.
10:40:2810 hours, 40 minutes, 28 secondsAmazing job and see you in the next chapter.
Chapter 18: 17 Editor State
10:40:3210 hours, 40 minutes, 32 secondsIn this chapter, we're going to be working on the editor state, which will include adding the save functionality,
10:40:4010 hours, 40 minutes, 40 secondsdelete functionality for each node, and the settings functionality for each node. We're also going to fix some of
10:40:4710 hours, 40 minutes, 47 secondsthe bugs which code rabbit all request review noted last chapter. So, let's
10:40:5410 hours, 40 minutes, 54 secondsstart with that. we have an issue of empty onclick handlers and a specific
10:41:0110 hours, 41 minutes, 1 secondtype cast which we might not need. So make sure you have your app running and let's take a look at one of the examples
10:41:0910 hours, 41 minutes, 9 secondshere. So right now if I click on this button a node selector opens and if I click on the one in the upper right
10:41:1710 hours, 41 minutes, 17 secondscorner same thing happens. Let's go ahead and actually look at the definition. So if I go inside of my
10:41:2410 hours, 41 minutes, 24 secondsinitial node in source components here, you will see that I use the set selector
10:41:3310 hours, 41 minutes, 33 secondsopen both here and the node selector, but I also do it here in the on click.
10:41:4010 hours, 41 minutes, 40 secondsNow the reason we need it in the on click here is because we specifically want the placeholder node click to
10:41:4810 hours, 41 minutes, 48 secondstrigger the node selector and not the workflow node which is essentially as you can see just some node toolbar which
10:41:5710 hours, 41 minutes, 57 secondsrenders the children. So because of that reason we specifically need an on click of this component to open it. But an
10:42:0610 hours, 42 minutes, 6 secondsinteresting case happens in our add node button component in here. We actually have an empty on
10:42:1510 hours, 42 minutes, 15 secondsclick. So why is the node selector opening? Why is this working? That's what code rabbit proposed as a fix. Like
10:42:2410 hours, 42 minutes, 24 secondshey you are missing set selector open set to true here. If you change this nothing will change. It just works. But
10:42:3110 hours, 42 minutes, 31 secondsit also worked before. Why? It's because of the way node selector works. If you
10:42:3810 hours, 42 minutes, 38 secondsgo inside of node selector, you will see that we render the children inside of
10:42:4510 hours, 42 minutes, 45 secondssheet trigger. Now this sheet trigger basically acts as a button which has set
10:42:5310 hours, 42 minutes, 53 secondsselector toggle. Right? So I believe that even if we completely remove the on click, we can just rely on the fact that
10:43:0110 hours, 43 minutes, 1 secondwe passed on open change here. So if I try now, you can see it works just as well. So if for whatever reason yours
10:43:1110 hours, 43 minutes, 11 secondsdoesn't work or if you just prefer being explicit, you can go ahead and do set selector open here and set it to true if
10:43:1910 hours, 43 minutes, 19 secondsthat's what you want, right? Uh but basically this sheet can communicate with the trigger and once the trigger
10:43:2610 hours, 43 minutes, 26 secondshas been clicked it will call the onopen change that we pass here and it will execute it. Again the reason that
10:43:3310 hours, 43 minutes, 33 secondsdoesn't work here is because it registers this as the trigger because that's its uh nearest child but we want it to be active on the placeholder node.
10:43:4610 hours, 43 minutes, 46 secondsSo because of that it's not working as expected. If you disable the on click on the placeholder node in the initial node component, you can see that nothing
10:43:5510 hours, 43 minutes, 55 secondsreally happens because it's expecting a click on the workflow node, not the placeholder node. Now, you could potentially move the node selector here.
10:44:0710 hours, 44 minutes, 7 secondsAnd I think that then maybe it will work. I'm not sure. I haven't tried.
10:44:1110 hours, 44 minutes, 11 secondsLet's see. Yes, then it does work. But I'm not sure what are the implications of node selector being uh wrapped inside
10:44:2010 hours, 44 minutes, 20 secondsof the workflow node. I'm not sure. But yes, I built the entire project like
10:44:2710 hours, 44 minutes, 27 secondsthis. So I'm going to stay true to my source code. But yes, you could just move node selector to wrap the placeholder node. And then users click
10:44:3610 hours, 44 minutes, 36 secondson the placeholder node will trigger this the same way the individual on click does.
10:44:4310 hours, 44 minutes, 43 secondsAll right, once we resolved those issues which uh okay, we resolved one of them.
10:44:4810 hours, 44 minutes, 48 secondsSo empty on click handlers. Now let's do type casts. So I think that's just a unneeded cast we added. If we go inside
10:44:5810 hours, 44 minutes, 58 secondsof HTTP request forward slashnode.
10:45:0310 hours, 45 minutes, 3 secondsSo inside of features executions components HTTP request folder. For some reason we define node data constant and
10:45:1310 hours, 45 minutes, 13 secondswe give it a cast. I think we can just remove the cast. And when I hover over this it is HTTP request node data which
10:45:2110 hours, 45 minutes, 21 secondsis exactly what we casted it as. So this is obviously working as expected. No errors are being shown which means this
10:45:2910 hours, 45 minutes, 29 secondsworks just fine. So we can go ahead and mark this as fixed as well. Now let's go ahead and let's implement the save
10:45:3810 hours, 45 minutes, 38 secondsfunctionality. So I want to start that by going inside of the workflows feature router
10:45:4610 hours, 45 minutes, 46 secondsbasically the TRPC router. And just as we have create and just as we have update name, let's copy update name
10:45:5510 hours, 45 minutes, 55 secondsbecause it's the most similar one. And let's change it to be update. It's going to be a protected procedure and the input will be a little bit different. So
10:46:0410 hours, 46 minutes, 4 secondsI'm just going to collapse this because the object will be quite larger than before. So we are still going to need
10:46:1110 hours, 46 minutes, 11 secondsthe ID, but we are not going to be working with name. Instead, we will receive a bunch of nodes. In fact, it's
10:46:2010 hours, 46 minutes, 20 secondsgoing to be an array of nodes. Inside of that array, we're going to have some
10:46:2610 hours, 46 minutes, 26 secondsobjects. Each object will have an ID,
10:46:3210 hours, 46 minutes, 32 secondsa type, which is a Z dot string, or it can be nullish.
10:46:4010 hours, 46 minutes, 40 secondsThen we're going to have a position for each node which will be an object again with X and Y.
10:46:5010 hours, 46 minutes, 50 secondsAfter position, we're also going to have some data which will be a record. And then we're going to set the key to be a
10:46:5810 hours, 46 minutes, 58 secondstype of string. And the value can be a type of any because the data can literally be any. And it's also optional.
10:47:0810 hours, 47 minutes, 8 secondsAnd besides receiving nodes, we're also going to be receiving edges. So we are receiving this from uh React flow,
10:47:1610 hours, 47 minutes, 16 secondsright? So don't confuse this values with our database of nodes and connections.
10:47:2210 hours, 47 minutes, 22 secondsWe are now going to have to transform this value into database compatible values. So the objects that will be
10:47:3110 hours, 47 minutes, 31 secondsstored inside of edges input will be source which is a type of string, target which is a type of string and source
10:47:4010 hours, 47 minutes, 40 secondshandle which is string nullish and target handle which is the same.
10:47:4910 hours, 47 minutes, 49 secondsAll right, that is our input here.
10:47:5410 hours, 47 minutes, 54 secondsSo now let's go ahead and start by extracting the fields here. ID nodes and edges from
10:48:0210 hours, 48 minutes, 2 secondsthe input. Make sure to mark this as an asynchronous mutation. You can remove this for now. Let's go ahead and see if we find the workflow or not by using ID
10:48:1210 hours, 48 minutes, 12 secondsand user ID. We can change this to find unique or throw. So this will always be
10:48:2010 hours, 48 minutes, 20 secondsan existing workflow because if you just use find unique then it can be null and then you have to manually fix that. So
10:48:2810 hours, 48 minutes, 28 secondsjust make sure you throw otherwise because we will handle that error. And now let's go ahead and let's make sure
10:48:3410 hours, 48 minutes, 34 secondsto open a transaction so we ensure consistency.
10:48:3910 hours, 48 minutes, 39 secondsSo let's return await prisma dollar sign transaction asynchronous. open a transaction and let's go ahead and start
10:48:4810 hours, 48 minutes, 48 secondsdoing some things. First things first, we're going to delete all existing nodes. And by deleting nodes for this workflow, that's also going to delete
10:48:5610 hours, 48 minutes, 56 secondsconnections because we are using cascade instead of Prisma schema. If you take a look at nodes, my apologies. I think we need to take a
10:49:0510 hours, 49 minutes, 5 secondslook at the connection. Yes. So if from node or to node is deleted for that connection, it will automatically
10:49:1210 hours, 49 minutes, 12 secondsremove itself from the database. So what we have to do to clean this up is just go ahead and use the transaction to
10:49:2010 hours, 49 minutes, 20 secondsdelete all nodes associated with this workflow ID. There we go. Just like this. And then we have to create new nodes.
10:49:3010 hours, 49 minutes, 30 secondsSo now we're going to use this input here to create nodes compatible with our database. So create many data nodes.
10:49:4110 hours, 49 minutes, 41 secondsget the individual node and return an immediate object.
10:49:4510 hours, 49 minutes, 45 secondsNow let's pass in the ID. Workflow ID will simply be ID.
10:49:5210 hours, 49 minutes, 52 secondsName will be node type or unknown.
10:49:5610 hours, 49 minutes, 56 secondsType will be node.ype. And now we have to fix this by manually casting as node type.
10:50:0410 hours, 50 minutes, 4 secondsLooks like we already have node type imported from Prisma. Perfect.
10:50:1110 hours, 50 minutes, 11 secondsadd position to be node.position data to be node data or an empty array.
10:50:1910 hours, 50 minutes, 19 secondsAnd now let me go ahead and fix the this to be node. And I believe that's all we
10:50:2510 hours, 50 minutes, 25 secondsneed to use the transaction to transform whatever input we received from react flow editor into our database compatible
10:50:3410 hours, 50 minutes, 34 secondsnodes. And now we also need to create connections. So let's go ahead and wait.
10:50:3910 hours, 50 minutes, 39 secondstx.connection dotcreate many data edges dom get the
10:50:4610 hours, 50 minutes, 46 secondsindividual edge and return an immediate object.
10:50:5010 hours, 50 minutes, 50 secondsNow inside of here workflow ID will be id from node id will be edge dots source
10:50:5910 hours, 50 minutes, 59 secondsto node ID will be edge.target Target from output will be edge source handle
10:51:0610 hours, 51 minutes, 6 secondsor main to input will be edge target handle or main.
10:51:1410 hours, 51 minutes, 14 secondsGreat. And since this transaction doesn't really modify the workflow directly just its relations it will
10:51:2310 hours, 51 minutes, 23 secondsnever really appear as modified. So we have to end this by also updating the
10:51:3210 hours, 51 minutes, 32 secondsworkflows update at timestamp otherwise it will be bad user experience right you just created some nodes in a workflow
10:51:4010 hours, 51 minutes, 40 secondsyou clicked save and in the list it doesn't appear as updated so let's just do await txworkflow upupdate where we
10:51:5010 hours, 51 minutes, 50 secondsfound the matching ID data updated at new eight.
10:51:5710 hours, 51 minutes, 57 secondsJust like this. And finally return workflow.
10:52:0310 hours, 52 minutes, 3 secondsAnd just like that, we now have an equivalent update procedure which will transform React form val React flow
10:52:1210 hours, 52 minutes, 12 secondsvalues into our database compatible values. The same way we just did the opposite. Right. Inside of get one, we
10:52:2110 hours, 52 minutes, 21 secondstransform server database nodes into React Flow compatible nodes. Inside of our update, we do the opposite. We
10:52:2910 hours, 52 minutes, 29 secondstransform React Flow nodes into uh database compatible nodes. Perfect. So
10:52:3610 hours, 52 minutes, 36 secondsnow that we have that, let's go ahead and create uh use update workflow. So instead of use workflows
10:52:4510 hours, 52 minutes, 45 secondswhere we develop use suspense workflow, use update workflow name. Let's go ahead and in fact copy that specific one.
10:52:5610 hours, 52 minutes, 56 secondsLet's paste it here.
10:52:5810 hours, 52 minutes, 58 secondsSo this will be a hook to update a workflow. So this is located in here.
10:53:0410 hours, 53 minutes, 4 secondsLet me show you. Features workflows hooks use workflow. use update workflow
10:53:1110 hours, 53 minutes, 11 secondswill have query client DRPC and it will call workflows.update update and this
10:53:1910 hours, 53 minutes, 19 secondswill say updated or let's actually call save because that's kind of the action that will happen. It will save right. So
10:53:2710 hours, 53 minutes, 27 secondswhat do we want to invalidate? Uh we do want to invalidate get many and we want to invalidate this one. Yes. Perfect.
10:53:3310 hours, 53 minutes, 33 secondsAnd this will be failed to save workflow. Excellent.
10:53:3710 hours, 53 minutes, 37 secondsSo not much uh changing needed uh in this case. Perfect. Now that we have that, we have to go ahead and implement
10:53:4610 hours, 53 minutes, 46 secondssome kind of state management. Why do we need that? Well, take a look at what we currently have. So, right now, the save
10:53:5310 hours, 53 minutes, 53 secondsbutton is in a component called workflow ID header. How did I call it? Header.
10:54:0210 hours, 54 minutes, 2 secondsMy apologies. I called it editor header.
10:54:0410 hours, 54 minutes, 4 secondsAs you can see, now the editor header doesn't really have access to my editor component state. So in order to pass
10:54:1410 hours, 54 minutes, 14 secondsthat around, I can either create some kind of context, I can do some prop drilling or I can just install one of the state management libraries. Now the
10:54:2210 hours, 54 minutes, 22 secondsone that I found myself using more and more is Yai. So I'm going to go ahead and do mpm install yai. The reason I
10:54:3110 hours, 54 minutes, 31 secondslike using it is because the syntax is almost the same as just using normal use
10:54:3710 hours, 54 minutes, 37 secondsstate except it's global and it works everywhere. So, I kind of really like that. Let me go inside of package JSON,
10:54:4510 hours, 54 minutes, 45 secondssearch for YAI. So, you can see the exact version I'm using, just in case you're wondering. And now, let's go ahead and let's create a store for this.
10:54:5310 hours, 54 minutes, 53 secondsSo, I'm going to go ahead right here inside of source features editor, I'm going to create store and I will create atoms.ds.
10:55:0410 hours, 55 minutes, 4 secondsAnd then in here I'm going to import type react flow instance from XY flow
10:55:1110 hours, 55 minutes, 11 secondsreact. I'm going to import atom from yai and I will export const
10:55:1810 hours, 55 minutes, 18 secondseditor atom to be atom which is a type of react flow instance or null if it wasn't initialized. And then I will be
10:55:2810 hours, 55 minutes, 28 secondsable to share this atom. I will assign it inside of the editor component and I will fetch it inside of my editor header component.
10:55:3710 hours, 55 minutes, 37 secondsNow there is just a quick note here. If we go to Yai documentation here, you can use the link on the screen to visit it.
10:55:4510 hours, 55 minutes, 45 secondsUh and if I go inside of docs here, we usually have a provider here. Uh but I never I don't think I really
10:55:5310 hours, 55 minutes, 53 secondsunderstood uh when we are supposed to use it and I that just crossed my mind here. So let me go ahead and find
10:56:0010 hours, 56 minutesnext.js guide. Okay. So this works. This works. Yes. But uh because the problem is I can use the provider or I don't
10:56:0810 hours, 56 minutes, 8 secondshave to use it. So let's see. Okay. So to limit the lifetime of the store to the scope of one request, you need to use a provider at the root of your app
10:56:1610 hours, 56 minutes, 16 secondsor a sub tree. If you're using YA only for a part of your application, let's go ahead and just add this. I think it will
10:56:2410 hours, 56 minutes, 24 secondsuh make our app behave better. So instead of layout, instead of the app source app, I'm just going to import
10:56:3110 hours, 56 minutes, 31 secondsthis. Let me move globals all the way down here. I think that should be down.
10:56:3510 hours, 56 minutes, 35 secondsSo provider y uh and let's go ahead and just add provider like this.
10:56:4510 hours, 56 minutes, 45 secondsThere we go.
10:56:4710 hours, 56 minutes, 47 secondsAnd now let's go ahead inside of our editor.tsx component. So where we actually render
10:56:5610 hours, 56 minutes, 56 secondsthe react flow and what we have to do now is we have to find a way to well you
10:57:0310 hours, 57 minutes, 3 secondsknow initialize that editor instance. So what I'm going to do here is I'm going to do const set editor instance actually
10:57:1210 hours, 57 minutes, 12 secondsjust let's just do set editor use set atom from yi
10:57:1910 hours, 57 minutes, 19 secondsand let's pass in editor atom from store atoms which we've just created.
10:57:2810 hours, 57 minutes, 28 secondsSo we are working inside of features editor components editor.tsx dsx and we've created a neighboring store at
10:57:3610 hours, 57 minutes, 36 secondsAdams. So that's why I was able to import the editor atom from dot dot/store atoms.
10:57:4310 hours, 57 minutes, 43 secondsNow that we have this what we can do is very simply pass a new prop here in the react flow called on init
10:57:5210 hours, 57 minutes, 52 secondsand pass in set editor. As simple as that. So now the moment uh editor is initialized
10:58:0010 hours, 58 minutesit will initialize the react flow instance inside of this atom.
10:58:0710 hours, 58 minutes, 7 secondsUh and now what we should do here is we should load that inside of the editor
10:58:1410 hours, 58 minutes, 14 secondsheader. So let's go inside of editor header.tsx right here.
10:58:2310 hours, 58 minutes, 23 secondsAnd in here, as you can see, we have a completely unused save button. Here it is. Editor save button. So what we have
10:58:3210 hours, 58 minutes, 32 secondsto do inside of the editor save button is load that instance. So const editor
10:58:4110 hours, 58 minutes, 41 secondswill be use atom value from yi editor store my apologies editor atom from
10:58:4810 hours, 58 minutes, 48 secondsstore atoms. And now we can pass the value around. So let's also go ahead and do update workflow. Let's call it save
10:58:5710 hours, 58 minutes, 57 secondsworkflow to be use update workflow.
10:59:0210 hours, 59 minutes, 2 secondsMake sure you didn't import the name one. So we are using the new one we just created which uses trpc workflows update which has all of those big inputs.
10:59:1310 hours, 59 minutes, 13 secondsAnd now let's go ahead and do con handle save.
10:59:1810 hours, 59 minutes, 18 secondsWe're going to do the following. So if there is no editor, let's just break the function, right? No
10:59:2710 hours, 59 minutes, 27 secondspoint in doing anything further. Now let's get the nodes by using editor dot get nodes. Then let's get the edges by using editor get edges.
10:59:3910 hours, 59 minutes, 39 secondsAnd finally let's do update workflow dot mutate.
10:59:4410 hours, 59 minutes, 44 secondspass in the ID to be workflow ID and pass in the nodes and the edges.
10:59:5410 hours, 59 minutes, 54 secondsAnd my apologies, this is save workflow mutate. And as you can see, no errors because the type of nodes that I receive
11:00:0211 hours, 2 secondshere is fully compatible with the type of uh TRPC workflow input that we've
11:00:0911 hours, 9 secondscreated. Perfect. Now that we have that, let's go ahead and change this to be handle save. And let's go ahead and
11:00:1611 hours, 16 secondschange this to be our uh save workflow is pending.
11:00:2411 hours, 24 secondsThere we go.
11:00:2611 hours, 26 secondsUh let's see. I'm using handle save. I think this should all be working now. So let's go ahead and try it out. So I
11:00:3511 hours, 35 secondsthink it's best that we just start a new workflow completely. So, like a clean working slate here. And I'm going to add
11:00:4311 hours, 43 secondsa manual trigger. And I'm going to add an HTTP request. And I'm going to connect the two. And I'm going to position them in some way I can
11:00:5111 hours, 51 secondsrecognize like this. And I'm going to click save. And let's see.
11:00:5611 hours, 56 secondsWorkflow. Then the name of the workflow saved. Now I'm going to go back inside of my workflows list. I'm going to refresh here. So I clear any cache or
11:01:0611 hours, 1 minute, 6 secondsany you know store and once I load this there we go we can now officially save
11:01:1311 hours, 1 minute, 13 secondsour editor state and we didn't even have to do anything special to load it because that's already finished right
11:01:2111 hours, 1 minute, 21 secondsinstead of editor.tsx we already do that when we load it here using the use suspense workflow we
11:01:2811 hours, 1 minute, 28 secondsalready populate the nodes and the edges from it. So we are now successfully transforming between server values for
11:01:3611 hours, 1 minute, 36 secondsconnections and nodes and react flow values for nodes and edges. They are one and the same now.
11:01:4411 hours, 1 minute, 44 secondsSo that's one part of our job finished. Let's go ahead and mark it as finished.
11:01:5011 hours, 1 minute, 50 secondsSo we added the save functionality. Now let's go ahead and implement the delete functionality. Now this one shouldn't be
11:01:5811 hours, 1 minute, 58 secondstoo hard either. So what I want to do is go to the place where we actually call these functions. So I believe that is
11:02:0611 hours, 2 minutes, 6 secondscurrently inside of components. I think I have uh it's not instead of features.
11:02:1211 hours, 2 minutes, 12 secondsSo it's it's we have to modify two components. One is for the trigger and one for is for the execution. Let's go inside of the trigger one first and let's find the base trigger node which
11:02:2111 hours, 2 minutes, 21 secondswe developed last time. And in here we have handle the lead but we never really implemented it. So let's go ahead and do
11:02:2811 hours, 2 minutes, 28 secondsthat now. So I'm pretty sure there is u an easy way to do that by using set nodes and set edges from use react flow.
11:02:4111 hours, 2 minutes, 41 secondsSo as long as this component is initialized within the editor which I think is definitely the case we should
11:02:4911 hours, 2 minutes, 49 secondsbe able to modify set nodes and edges from here directly. We have the ID which is great because we need the ID to be
11:02:5711 hours, 2 minutes, 57 secondsable to manipulate uh and filter this node. So inside of handle delete let's go ahead and try set nodes and get the
11:03:0511 hours, 3 minutes, 5 secondsnodes. And now what we need to do here is uh let's call this current nodes so it's easier to understand.
11:03:1511 hours, 3 minutes, 15 secondsI'm going to open a function like this and I will do const updated nodes to be current nodes.
11:03:2111 hours, 3 minutes, 21 secondsget the single node and compare that node's ID against the ID of the node
11:03:2811 hours, 3 minutes, 28 secondshere. So if it is not ID and let's simply return updated nodes.
11:03:3711 hours, 3 minutes, 37 secondsThere we go. But we also have to delete all the edges. So let's go ahead and do set edges current edges here.
11:03:4511 hours, 3 minutes, 45 secondsAnd I'm going to do the same thing. Uh con updated edges are going to be
11:03:5111 hours, 3 minutes, 51 secondscurrent edges dot filter get the individual edge and check if
11:03:5711 hours, 3 minutes, 57 secondsedge whoops edge dots source is not equal to node to id and if
11:04:0511 hours, 4 minutes, 5 secondsedge.target is not equal to ID and return updated edges.
11:04:1311 hours, 4 minutes, 13 secondsAnd I think that this should now be enough for us to well handle delete. So we already have handle delete here. So
11:04:2211 hours, 4 minutes, 22 secondsthat seems to be working. Now this is just for the trigger node. So the only way you can test this is by this.
11:04:2911 hours, 4 minutes, 29 secondsI'm not even sure if we connected the button. Let me try and click here. Looks like it works. And if I click save,
11:04:3711 hours, 4 minutes, 37 secondslooks like that works. And if I refresh, that works too. And don't worry about the position change. That node that didn't change its position. We just
11:04:4611 hours, 4 minutes, 46 secondsalways uh do this, right? Every time the editor loads, we focus on it. Perfect.
11:04:5311 hours, 4 minutes, 53 secondsSo, that seems to be working. That was very simple, wasn't it? Let's go ahead and copy this entire implementation here. And let's copy it inside of the
11:05:0211 hours, 5 minutes, 2 secondsbase execution node. And that will be the only other place where we are going to need this, I think.
11:05:0811 hours, 5 minutes, 8 secondsSo uh instead of executions uh base execution node and let's do the same thing. So let me remove this paste all
11:05:1511 hours, 5 minutes, 15 secondsof this fix the indentation and import use react flow from XY flow react and
11:05:2411 hours, 5 minutes, 24 secondsnow this should work as well. So if I go ahead and select this and delete it there we go works amazing. Obviously if
11:05:3111 hours, 5 minutes, 31 secondsyou don't save and refresh it will still be here. Perfect. So that's one more issued taken care of. Let's go ahead and
11:05:4011 hours, 5 minutes, 40 secondsmark that as finished as well. But now we have the settings functionality. And this one is a little bit uh more complicated. But I do want to work on it
11:05:4811 hours, 5 minutes, 48 secondsbecause it's the only way we can move forward by actually uh executing these things.
11:05:5611 hours, 5 minutes, 56 secondsJust before we do that, um there is one more thing that I want to show you and I want to confirm if it works or not because of the changes we just did. It
11:06:0511 hours, 6 minutes, 5 secondsis inside of features editor components editor.tsx.
11:06:1011 hours, 6 minutes, 10 secondsSo it's quite annoying that right now we can only delete one node at one time.
11:06:1511 hours, 6 minutes, 15 secondsRight? So if I have like two nodes here, I can't select them. But maybe I can, I don't know, but I'm not really seeing
11:06:2411 hours, 6 minutes, 24 secondsthat indicators quite well. So let's go ahead and add some more props to React Flow in order to make it better. So, I'm
11:06:3211 hours, 6 minutes, 32 secondsgoing to give this snap grid 10 and 10 inside of an array like this. And now it's kind of uh having to follow the
11:06:4011 hours, 6 minutes, 40 secondsgrid. So, if you snap it around now, uh let's let's also do snapped to grid. And
11:06:4711 hours, 6 minutes, 47 secondswhen you try moving it around now, you will see how it kind of sticks, right? I think this is a slightly better experience now simply because it can't
11:06:5611 hours, 6 minutes, 56 secondsgo anywhere. you will be able to center them because of the snap to grid.
11:07:0211 hours, 7 minutes, 2 secondsThen let's do pan on scroll. Now pan on scroll will basically change the controls here. They are going to work on
11:07:1011 hours, 7 minutes, 10 secondsthe opposite directions. This will make it much easier to work with this with a touch bar. And if you enable pan on
11:07:1711 hours, 7 minutes, 17 secondsscroll basically it's just the way you modify your canvas. it will change the controls and it's actually more familiar
11:07:2411 hours, 7 minutes, 24 secondsto what Zap year and N8N use in my experience. And let's do pen on drag and let's go ahead and actually disable it.
11:07:3311 hours, 7 minutes, 33 secondsAnd instead let's add selection on drag.
11:07:3811 hours, 7 minutes, 38 secondsSo what will happen now is that you can see you can now only move this by using uh your scroll uh mouse, right? Uh but
11:07:4811 hours, 7 minutes, 48 secondsor if you're on a touch bar, it's much easier actually. But what you can do now is this. You can now finally select
11:07:5411 hours, 7 minutes, 54 secondsthem. Uh okay. And I think that's actually all I wanted to do. But now that you actually are able to select
11:08:0211 hours, 8 minutes, 2 secondsyour nodes here, you can go ahead and delete them. There we go. I just wanted to test if that is working. So yes, we
11:08:0911 hours, 8 minutes, 9 secondsjust added this three things here. If for whatever reason you don't like that behavior, you can remove it. Right? So,
11:08:1711 hours, 8 minutes, 17 secondsI tried to replicate the behavior of popular platforms and this is mostly how they work. Uh the thing that's hard with this is moving the canvas around, right?
11:08:3011 hours, 8 minutes, 30 secondsUh I haven't really found uh any other way to do this other than using scroll bars now. Like you can't drag because
11:08:3811 hours, 8 minutes, 38 secondsthat is selecting. Uh if you have u a laptop touch bar then you can easily do it. The way I'm able to scroll left and
11:08:4711 hours, 8 minutes, 47 secondsright using my mouse is because I use a mouse that has two two scroll bars. So I don't know how you will be able to do
11:08:5411 hours, 8 minutes, 54 secondsit. So for that reason uh you can play around with this uh this settings and
11:09:0111 hours, 9 minutes, 1 secondsee if you like them or not and then just remove or leave them. It doesn't matter, right? It's just I just wanted to show you that there is a way to like
11:09:0911 hours, 9 minutes, 9 secondsselect things and then delete them using the backspace.
11:09:1311 hours, 9 minutes, 13 secondsAll right, so once we have this, let's go ahead and let's work on implementing the settings. So let's start with super
11:09:2211 hours, 9 minutes, 22 secondssimple one by going inside of features triggers manual trigger node.tsx.
11:09:3011 hours, 9 minutes, 30 secondsThe reason I say super simple is because the the settings for manual trigger literally don't even exist. But we are
11:09:3811 hours, 9 minutes, 38 secondsgoing to create them anyway simply to be consistent with user experience of all of our nodes. So inside of manual
11:09:4511 hours, 9 minutes, 45 secondstrigger create a new file called dialogue.tsx.
11:09:5011 hours, 9 minutes, 50 secondsMark it as use client and then import everything we need from the dialogue uh components which come from shaten UI.
11:09:5911 hours, 9 minutes, 59 secondsAfter that go ahead and create props like this.
11:10:0511 hours, 10 minutes, 5 secondsAnd let's go ahead actually we can just do like interface props export const manual trigger
11:10:1411 hours, 10 minutes, 14 secondsdialogue assign the props here and execute like this. then get the open on open change here.
11:10:2411 hours, 10 minutes, 24 secondsAnd now all we have to do is just create the dialogue. So that's fairly easy to do. We render the dialogue. We give it
11:10:3211 hours, 10 minutes, 32 secondsopen and we give it on open change. On open change and then we render the content inside we render the header.
11:10:4411 hours, 10 minutes, 44 secondsThen we render the title which will say manual trigger.
11:10:5111 hours, 10 minutes, 51 secondsWe go ahead and copy this and render the description.
11:10:5611 hours, 10 minutes, 56 secondsInside of the description here, well, we can just say configure the settings for manual trigger node and the dialogue header.
11:11:0611 hours, 11 minutes, 6 secondscreate a div with a class name of py4 inside a paragraph manual trigger
11:11:1411 hours, 11 minutes, 14 secondsbecause that's the only thing we can really say to the user now right this is a manual trigger what else can we say
11:11:2111 hours, 11 minutes, 21 secondsobviously I'm doing this to show you how this will look like in a more complicated node now that we have this dialogue we can go back inside of this
11:11:3011 hours, 11 minutes, 30 secondsnode and then we can finally make sense of this fragment by also adding a manual trigger trigger dialogue and let's
11:11:3911 hours, 11 minutes, 39 secondsrender it above. I think that's semantically correct. Uh manual trigger dialogue. Did I forget something? Why is it not uh why is this an error?
11:11:4911 hours, 11 minutes, 49 secondsOh, it's missing properties. Oh, yeah.
11:11:5111 hours, 11 minutes, 51 secondsOkay. So, now let's go ahead and just add a simple state here from React.
11:11:5811 hours, 11 minutes, 58 secondsDialogue open. Set dialogue open. And all we have to do is just pass those two props. And that's it. That's all we
11:12:0711 hours, 12 minutes, 7 secondsneed. So, this is a super simple example because there is no really any settings, but at least we have the UI for those
11:12:1411 hours, 12 minutes, 14 secondssettings. And now we can enable these and handle open settings can just be a
11:12:2311 hours, 12 minutes, 23 secondssuper simple function like this. The reason I'm separating in a it in a function because
11:12:3011 hours, 12 minutes, 30 secondsin other components this can be obviously more complicated.
11:12:3511 hours, 12 minutes, 35 secondsSo, let's go ahead and just uh get a new workflow going on here
11:12:4211 hours, 12 minutes, 42 secondsand go ahead and add a trigger node. And now when you click on the settings button, it will open it. Manual trigger
11:12:5011 hours, 12 minutes, 50 secondsconfigure settings for the manual trigger node. Now in here, I've just left this small comment. And you can also do double click on it by the way.
11:12:5811 hours, 12 minutes, 58 secondsYeah, I've left this small comment like manual trigger. But in some other node this wouldn't be as simple. This would
11:13:0611 hours, 13 minutes, 6 secondsbe a whole form here. So for example, I don't know in order to make this better maybe you can say used to manually
11:13:1511 hours, 13 minutes, 15 secondsexecute a workflow. No configuration available.
11:13:2311 hours, 13 minutes, 23 secondsI don't know something like that. But uh I think it's a good idea to have it here simply so users always expect to see
11:13:3111 hours, 13 minutes, 31 secondsmore information about a node when they doubleclick or when they click on the settings. So they will try that on like
11:13:3811 hours, 13 minutes, 38 secondsother nodes here because in here obviously we need it like what HTTP request what method uh any authorization
11:13:4511 hours, 13 minutes, 45 secondskeys right that's what users will expect. So we have to teach our users that they can always access the settings to see more information.
11:13:5411 hours, 13 minutes, 54 secondsGreat. Uh, now while we are here, I actually have an idea of also enabling the status because I told you we can't
11:14:0211 hours, 14 minutes, 2 secondsdo the status, but we actually can and it's not that difficult. And if we do it now, we won't have to remind ourselves
11:14:1011 hours, 14 minutes, 10 secondsto do it later. And it's not too difficult to do. Uh, I think that the number one thing we have to do is um
11:14:1911 hours, 14 minutes, 19 secondsinstall a package from React Flow. So, let's go back here. Let's go inside of UI. And here we have it. The status
11:14:2711 hours, 14 minutes, 27 secondsindicator. So this is it, right? And let's go ahead and do this. So npm here.
11:14:3211 hours, 14 minutes, 32 secondsOh, you also have manual here. Yeah, you can also just copy it if you don't want it to be added. Sure.
11:14:4011 hours, 14 minutes, 40 secondsOr you can use, you know, my uh public assets folder. And in there you can find uh all of these components that I added this way.
11:14:4911 hours, 14 minutes, 49 secondsSo npx chat cn. Okay. Base handle change this to node status indicator.
11:14:5911 hours, 14 minutes, 59 secondsOkay. And then immediately after I get this, I'm going to move it into its own
11:15:0611 hours, 15 minutes, 6 secondsfolder. So inside of components, here it is. Node status indicator. Let me just confirm it's been finished. It is. I'm
11:15:1411 hours, 15 minutes, 14 secondsgoing to drag it and I'm going to drop it inside of React Flow. So I know all of those have been added uh by them and
11:15:2111 hours, 15 minutes, 21 secondsnot by me. All right. Now let's go ahead and do the following. We have to go
11:15:2911 hours, 15 minutes, 29 secondsinside of base trigger node. So let's go inside of base trigger node here. And here we have a to-do wrap within node
11:15:3611 hours, 15 minutes, 36 secondsstatus indicator. So let's do that. I'm going to add node status
11:15:4311 hours, 15 minutes, 43 secondsindicator and I'm going to wrap the entire base node in it and I'm going to indent it like this.
11:15:5311 hours, 15 minutes, 53 secondsNow in here let's go ahead and give it a status which uh for now can just be set to
11:16:0011 hours, 16 minutesinitial. Let's give it a variant of border and let's give it a class name of rounded L2 Excel. Uh, looks like it does
11:16:1011 hours, 16 minutes, 10 secondsnot accept class name. All right. So, that's something we're going to have to modify the note status indicator for.
11:16:1511 hours, 16 minutes, 15 secondsBut let's go ahead and just take a look at our app now. So, nothing is happening. But if I change the status
11:16:2211 hours, 16 minutes, 22 secondshere to loading, there we go. You can see something is happening. If I do
11:16:2811 hours, 16 minutes, 28 secondssuccess, you can see it's green. If I do error, you can see it's red. So, what we have to do obviously is make it match the look of our current node.
11:16:4111 hours, 16 minutes, 41 secondsSo, first things first, let's make sure loading is turned on. I think that one might be the most complicated one to
11:16:4811 hours, 16 minutes, 48 secondsmatch. So, now we're going to go inside of node status indicator inside of the React flow folder and we're going to
11:16:5611 hours, 16 minutes, 56 secondsmodify it so that it works for our use case.
11:17:0111 hours, 17 minutes, 1 secondSo, first things first, let's go all the way to the top here inside of the node status indicator props and let's add
11:17:0711 hours, 17 minutes, 7 secondsclass name to be an optional string like this. Then inside of let's see so this is spinner loading indicator that's
11:17:1611 hours, 17 minutes, 16 secondsfine. Let's go inside of a border loading indicator here and let me add class name here and let me add class
11:17:2311 hours, 17 minutes, 23 secondsname here and it's going to be a optional type of string. There we go.
11:17:2911 hours, 17 minutes, 29 secondsUh okay. So we have that and now uh we have to find a way to render it.
11:17:3611 hours, 17 minutes, 36 secondsSo I'm just thinking what is the best way to render it. I think it should be in this class name specifically. So let's go ahead and open this inside of
11:17:4411 hours, 17 minutes, 44 secondscurly brackets like so. And let's import CN. Looks like we already have it in use here. Perfect. So I can just drop this
11:17:5311 hours, 17 minutes, 53 secondsas the first value and then extend it with class name. As simple as that. Perfect.
11:18:0011 hours, 18 minutesUh I think that for now uh yes, let's also do it in one more place which is this one node status indicator. So this
11:18:0811 hours, 18 minutes, 8 secondsis the one that actually has to pass the class name further down. Okay. So we have the loading, we have the overlay.
11:18:1611 hours, 18 minutes, 16 secondsWe're not interested in that. The border is the one we are interested in. So let's pass in the class name here. Class
11:18:2311 hours, 18 minutes, 23 secondsname. There we go. You can see no errors. Perfect.
11:18:2711 hours, 18 minutes, 27 secondsfor the success one. Uh for the other one, let's not modify anything now.
11:18:3211 hours, 18 minutes, 32 secondsLet's just go back inside of the base trigger node and let's try and changing the class name now. There we go. No more type errors. And when I click save,
11:18:4011 hours, 18 minutes, 40 secondslooks much better, doesn't it? Try changing this to error. Uh not good.
11:18:4611 hours, 18 minutes, 46 secondsOkay. Something seems broken. Uh success.
11:18:5111 hours, 18 minutes, 51 secondsOh yeah. Okay. So head back to node status indicator. we have to modify uh the success and the error runs very
11:19:0011 hours, 19 minutessimply by adding CN here like this. So CN and then pass class name as the
11:19:0711 hours, 19 minutes, 7 secondssecond argument and same thing here CN wrap it and pass class name as the second
11:19:1611 hours, 19 minutes, 16 secondsargument. Perfect. There we go. Now let's go ahead and see if we can slightly modify this. So for the error I
11:19:2311 hours, 19 minutes, 23 secondswant to use border red 700 with 50% opacity. For success I want to use
11:19:3111 hours, 19 minutes, 31 secondsemerald. I want to use green 700 with 50% opacity. So exactly like this. Yes.
11:19:4111 hours, 19 minutes, 41 secondsAll right. Uh now let's go ahead inside of the status border here and let me see
11:19:4911 hours, 19 minutes, 49 secondsif I can slightly modify this. So I'm going to modify minus left to be 2 pixels, minus top to be 2 pixels and I
11:19:5711 hours, 19 minutes, 57 secondswill do this calculation to be plus 4 pixels and the width calculation will be
11:20:0411 hours, 20 minutes, 4 seconds+ 4 pixels as well. So this will make the border look thicker.
11:20:0911 hours, 20 minutes, 9 secondsFor a rounded I'm just going to change this to rounded MD and I'm going to change the border to three. And now it
11:20:1711 hours, 20 minutes, 17 secondswill just be like a thicker border. All right. Now, let's go ahead up here and
11:20:2311 hours, 20 minutes, 23 secondssee uh what can we change here for the spinner. Um let's see.
11:20:3311 hours, 20 minutes, 33 secondsUh we have rounded seven pixels. Let's change this from rounded seven pixels to rounded SM. And let's change this to loading so we can see what we're doing.
11:20:4411 hours, 20 minutes, 44 secondsRounded SM. All right. And let me go ahead and change the colors a bit. So
11:20:5211 hours, 20 minutes, 52 secondsthis will be we're going to turn this into RGB A. And I'm going to pass 0.5
11:21:0011 hours, 21 minuteshere. And the second one uh can stay the same. Yes, I don't think it needs any modification,
11:21:0911 hours, 21 minutes, 9 secondsbut we will be modifying something here above right here. So we're going to make this
11:21:1611 hours, 21 minutes, 16 secondsthicker as well. So minus left 2 pixels, minus top 2 pixels, height calculation will be four pixels and width
11:21:2411 hours, 21 minutes, 24 secondscalculation will be four pixels pixels as well. So now all of these have thicker values
11:21:3211 hours, 21 minutes, 32 secondsI mean thicker look. Okay. Uh obviously this is just my personal decision. You can of course modify this however you
11:21:4111 hours, 21 minutes, 41 secondsprefer. Uh now let's go ahead and let's just use a better way of passing the class name I mean passing the status.
11:21:5411 hours, 21 minutes, 54 secondsSo right now instead of base node my apologies not base node inside of features triggers base trigger node we
11:22:0411 hours, 22 minutes, 4 secondsjust passed the status as uh loading. So instead what I want to do is I want to
11:22:1011 hours, 22 minutes, 10 secondsdevelop like the I want to use the type from our node status indicator component. So I think that we can now do this. I commented this out inside of the base trigger node props. Let me see.
11:22:2211 hours, 22 minutes, 22 secondsYes, I can now import node status from my node status indicator.
11:22:2911 hours, 22 minutes, 29 secondsThere we go. And now that I have the status, I can actually use it here.
11:22:3411 hours, 22 minutes, 34 secondsStatus. And by default we are going to uh set it to initial. And now we can just pass the status here. There we go.
11:22:4511 hours, 22 minutes, 45 secondsSo right now by default nothing is happening.
11:22:4911 hours, 22 minutes, 49 secondsNow we're not yet finished here because we also have to now modify the base node now that we can accept status. So let's just do status here. Status like this.
11:23:0011 hours, 23 minutesAnd that will obviously throw an error because base node itself does not accept
11:23:0711 hours, 23 minutes, 7 secondsuh the status. So just make sure you have that opened uh inside of source app components react flow base node. So this
11:23:1411 hours, 23 minutes, 14 secondswas added here using the CLI. I will go back inside of my base trigger node here
11:23:2211 hours, 23 minutes, 22 secondsto make sure this error is resolved. And I will also find manual trigger node.tsx. tsx
11:23:3011 hours, 23 minutes, 30 secondsbecause in here this is also the place where we actually define the node status. So what I'm going to do is just const node status and in here I'm just
11:23:4011 hours, 23 minutes, 40 secondsgoing to modify it. So now I can uh send this this way. There we go. It's now controlled directly from manual trigger
11:23:4911 hours, 23 minutes, 49 secondsnode instead of from the reusable components. Perfect. And now here we're going to change it as needed. So what we have to focus on now is the base node.
11:24:0011 hours, 24 minutesSo let's go ahead and do that. We're going to start by creating an interface
11:24:0611 hours, 24 minutes, 6 secondsbase node props extends HTML attributes
11:24:1511 hours, 24 minutes, 15 secondsHTML div element and pass in the optional status to be a type of node status from node status
11:24:2311 hours, 24 minutes, 23 secondsindicator component. Perfect. So now we have the base node props which accept the status prop and in the forward refs we now have to modify this uh slightly.
11:24:3511 hours, 24 minutes, 35 secondsSo instead of just HTML attributes we can now use base node props which will extend both the HTML attributes as well
11:24:4311 hours, 24 minutes, 43 secondsas our status which we should be able to pass here now. And you can see immediately in the base trigger node we
11:24:5011 hours, 24 minutes, 50 secondsnow no longer get the error for passing that status here. So I think that now we can close the base trigger node and just focus on developing the base node.
11:24:5911 hours, 24 minutes, 59 secondsPerfect. So some things I want to modify in here. I want to remove all of these comments. They're just confusing. And I
11:25:0711 hours, 25 minutes, 7 secondswant to remove all of these React Flow features here.
11:25:1211 hours, 25 minutes, 12 secondsUh and now uh let's go ahead and do this. So I'm going to change this from rounded medium to rounded small. That's
11:25:2011 hours, 25 minutes, 20 secondsthe first thing I'm going to do. And immediately it looks a little bit better because the border is now matching. Then I'm going to change this to be border.
11:25:2811 hours, 25 minutes, 28 secondsAnd I'm going to do border-muted-foreground immediately a little bit darker now. As
11:25:3411 hours, 25 minutes, 34 secondsyou can see, uh I can leave the BG card as it is. And I can leave the text card
11:25:4111 hours, 25 minutes, 41 secondsforeground. And let me add hover BG accent like this. And let me remove this hover ring one. We don't need it. There
11:25:4911 hours, 25 minutes, 49 secondswe go. So that is the behavior I am expecting here.
11:25:5411 hours, 25 minutes, 54 secondsAnd now we have to do something in regards to the status that we are passing. So let's go ahead and do and
11:26:0011 hours, 26 minutescheck if status is equal to error. In that case we're going to render X circle
11:26:0811 hours, 26 minutes, 8 secondsicon from Lucid React. Uh and we also have to extract the status from here. Uh is that not how I do it? Let's see.
11:26:1711 hours, 26 minutes, 17 secondsstatus. Uh, what am I doing incorrectly here?
11:26:2411 hours, 26 minutes, 24 secondsStatus. Status is here. Three dots expected.
11:26:3111 hours, 26 minutes, 31 secondsH, not sure. Let me just debug for a second. Oh. Uh. Oh, my apologies. I I
11:26:4011 hours, 26 minutes, 40 secondsdidn't realize this is a self-closing tag. Change this. It's no longer a self-closing tag. And now you have to make sure to add props.
11:26:4911 hours, 26 minutes, 49 secondsLike that. And then let's do status equals to error. My apologies. I wasn't aware uh that it was
11:26:5911 hours, 26 minutes, 59 secondsthat it was a self-closing tag. And now we can do X circle icon render in here.
11:27:0611 hours, 27 minutes, 6 secondsAnd let's go inside of manual trick. Oh, it's already opened here. And let's go ahead and just change this from node
11:27:1311 hours, 27 minutes, 13 secondsstatus to loading to error. And there we go. We can now see a very ugly X circle icon. In order to make it pretty, let's add a class name absolute.
11:27:2411 hours, 27 minutes, 24 secondsAnd let's add right.5. Let's do bottom 0.5.
11:27:3111 hours, 27 minutes, 31 secondsLet's do size two.
11:27:3411 hours, 27 minutes, 34 secondsText red 700. And stroke three. There we go.
11:27:4111 hours, 27 minutes, 41 secondsLet's copy this and change the error to success. Change the icon to be check circle to icon. All icons are from Lucid React.
11:27:5211 hours, 27 minutes, 52 secondsLet's go instead of node change this to success.
11:27:5611 hours, 27 minutes, 56 secondsAnd let's change this to be green 700.
11:28:0211 hours, 28 minutes, 2 secondsAnd the last one will be if the status is loading. So let me change this to loading.
11:28:0811 hours, 28 minutes, 8 secondsAnd now this will be a loader to icon from lucid react.
11:28:1411 hours, 28 minutes, 14 secondsAnd let's see. So absolute minus right.5 minus bottom.5
11:28:2011 hours, 28 minutes, 20 secondssize two. This will be text blue 700 stroke three and animate spin.
11:28:2911 hours, 28 minutes, 29 secondsAll right. So now uh I believe there is a slight problem here because you can see how the spin when we add the spin animation it kind of moves further here.
11:28:4011 hours, 28 minutes, 40 secondsSo let me try doing right one actually. H
11:28:4711 hours, 28 minutes, 47 secondsuh let's see what if I do minus right.5 and minus bottom.5.
11:28:5411 hours, 28 minutes, 54 secondsI think now it's exactly positioned as for example error. Yes,
11:29:0111 hours, 29 minutes, 1 secondthat is the exact position. Perfect. So we can now bring this back to initial.
11:29:0611 hours, 29 minutes, 6 secondsAnd now we have our look and feel as we expected it. Amazing. Now the only problem here is let's remove the
11:29:1411 hours, 29 minutes, 14 secondstrailing comma. Now the only problem here is that this currently does not work. If you go inside of the HTTP request node inside of executions
11:29:2311 hours, 29 minutes, 23 secondscomponents HTTP request node. So if I go ahead and do con node status and set it
11:29:3011 hours, 29 minutes, 30 secondsto loading. And if I try to pass the status here, you can see that node status will not even be accepted here.
11:29:4011 hours, 29 minutes, 40 secondsSo now we just have to do the same thing to the base execution node as we did to the base trigger node. So there we go.
11:29:4811 hours, 29 minutes, 48 secondsWe can uncomment this inside of base execution node props. Import the node status from here.
11:29:5711 hours, 29 minutes, 57 secondsuh and also import node status indicator component itself.
11:30:0511 hours, 30 minutes, 5 secondsLet's see do I have a to-do? I do. So wrap within node status indicator.
11:30:1211 hours, 30 minutes, 12 secondsHere we go.
11:30:1411 hours, 30 minutes, 14 secondsSo the entire base node is now wrapped in that.
11:30:1911 hours, 30 minutes, 19 secondsLet's go ahead and let's pass the status to be the status prop.
11:30:2411 hours, 30 minutes, 24 secondsLet me just see if I actually use it. I don't. So here I have to use it after I added it as a type of course. And I also
11:30:3211 hours, 30 minutes, 32 secondshave to give it a default value of initial in case it's not passed. You can see how immediately this starts working.
11:30:4111 hours, 30 minutes, 41 secondsLet's also give it here. So status status to the base node. And you can see how we now just reuse that entire code
11:30:4911 hours, 30 minutes, 49 secondsuh for this specific thing. And let me just check if there is something that we've missed. Uh I think we just have to
11:30:5611 hours, 30 minutes, 56 secondsspecify variant border here just in case. There we go. Let's go ahead instead of the node in the HTTP request, change this to error. Works. Success.
11:31:0911 hours, 31 minutes, 9 secondsWorks.
11:31:1011 hours, 31 minutes, 10 secondsAmazing. Perfect. So, we just fixed all of the to-do things when it comes to our status, which I think it was very easy
11:31:1911 hours, 31 minutes, 19 secondsto demonstrate. I thought there was going to be a problem with demonstrating. So, for that reason, I didn't want to do it, but looks like it
11:31:2611 hours, 31 minutes, 26 secondsworks just fine. And now that we added the settings, uh let's wrap this chapter up by implementing the settings for the
11:31:3411 hours, 31 minutes, 34 secondsHTTP request. So, you can see how we are going to preserve some actual node data because this is super simple, right?
11:31:4211 hours, 31 minutes, 42 secondsJust a manual trigger. But what about this one? This one is more complex. This one requires some kind of form, right?
11:31:4911 hours, 31 minutes, 49 secondsNow, let's go ahead and focus on that.
11:31:5111 hours, 31 minutes, 51 secondsLet me see. Is there something I can check off from here?
11:31:5611 hours, 31 minutes, 56 secondsSo, we added uh well, we almost finished the settings functionality. I don't want to do it. Uh I don't want to check it just yet. So, let's focus on that now.
11:32:0611 hours, 32 minutes, 6 secondsSo let's start by copying the existing dialogue inside of source features triggers
11:32:1311 hours, 32 minutes, 13 secondsmanual trigger and copy the dialogue and paste it in the HTTP request folder. Now
11:32:2011 hours, 32 minutes, 20 secondslet's go inside of that dialogue and let's rename it. So instead of manual trigger dialogue, this is going to be HTTP request dialogue.
11:32:3211 hours, 32 minutes, 32 secondsAnd let's change this to be HTTP request like this. And let's change the
11:32:4111 hours, 32 minutes, 41 secondsdescription to be configure the settings for the HTTP request node. And inside of
11:32:5011 hours, 32 minutes, 50 secondshere, let's remove this entire div. just leave an empty space for the form that is about to be here. Now let's go inside
11:32:5711 hours, 32 minutes, 57 secondsof the node of the HTTP request here and let's go ahead and add a simple state control here.
11:33:0811 hours, 33 minutes, 8 secondsSo I'm going to do that right here.
11:33:1211 hours, 33 minutes, 12 secondsBasically a simple use state from React for dialogue open and set dialogue open with a default value of false.
11:33:2211 hours, 33 minutes, 22 secondsAnd I'm going to move the node status here simply because I want it to be consistent to my manual trigger and that
11:33:3011 hours, 33 minutes, 30 secondscomes right after this. It's easy. It's easier for you if you make your code consistent. It will be like easier to
11:33:3711 hours, 33 minutes, 37 secondsunderstand what's going on. At least [snorts] that's the case for me. All right. Uh so now uh that we have that
11:33:4611 hours, 33 minutes, 46 secondslet's go ahead and do const handle open settings set dialogue open to true.
11:33:5511 hours, 33 minutes, 55 secondsGreat. And now we can go ahead and we can render HTTP request dialogue from
11:34:0311 hours, 34 minutes, 3 secondsdot / dialogue. And we can go ahead and pass those two values open and on open change.
11:34:1311 hours, 34 minutes, 13 secondsThere we go.
11:34:1511 hours, 34 minutes, 15 secondsPerfect. And now let's go ahead and pass in the on settings and on double click to be handle open settings. And now it
11:34:2411 hours, 34 minutes, 24 secondsshould behave exactly the same. So if I click here, there we go. HTTP request.
11:34:2911 hours, 34 minutes, 29 secondsSame as this. If I double click, it opens exactly the same way. Perfect.
11:34:3511 hours, 34 minutes, 35 secondsSo now we have to configure our HTTP request dialogue to accept some
11:34:4211 hours, 34 minutes, 42 secondsmore elements here. So instead of this dialogue, let's go ahead and extend uh the props.
11:34:5011 hours, 34 minutes, 50 secondsSo I'm going to add onsubmit here to be an optional of actually it's going to be
11:34:5711 hours, 34 minutes, 57 secondsrequired. So it will accept values which are going to infer type of form schema
11:35:0511 hours, 35 minutes, 5 secondswhich we don't have yet but we will in a second. And then we're going to add a default end point to be a type of
11:35:1311 hours, 35 minutes, 13 secondsstring. Default method to be a type of get
11:35:1911 hours, 35 minutes, 19 secondsor post or put or patch or delete.
11:35:2711 hours, 35 minutes, 27 secondsand default body will be a type of string.
11:35:3211 hours, 35 minutes, 32 secondsNow let's go ahead and let's import Z from zod
11:35:3911 hours, 35 minutes, 39 secondsand let's do const form schema Z dot object endpoint Z dot URL
11:35:4811 hours, 35 minutes, 48 secondsand an error message please enter a valid URL
11:35:5411 hours, 35 minutes, 54 secondsmethod is going to be Z.NUM Enum with options of get, post, put, patch, and delete.
11:36:0811 hours, 36 minutes, 8 secondsThe body will be a string. It's going to be optional. Not every HTTP request
11:36:1511 hours, 36 minutes, 15 secondsneeds a body, right? It can just be a simple get method. Uh, and for now, I'm going to leave it like this. I will
11:36:2311 hours, 36 minutes, 23 secondsprepare a refine and I will comment it out. We will need refine later, but it makes no sense for me to do that now because it will be hard to explain why.
11:36:3411 hours, 36 minutes, 34 secondsSo, I'm just leaving this as a to-do to not forget that I have to do that. It's basically to accept a specific template
11:36:4211 hours, 36 minutes, 42 secondslanguage that we are going to implement later on. All right. So now we have all of those. We have default endpoint,
11:36:4911 hours, 36 minutes, 49 secondsdefault method, and default body. And now our HTTP request is actually uh uh expecting that. So after on open change
11:36:5811 hours, 36 minutes, 58 secondslet's do onsubmit here for now just this.
11:37:0211 hours, 37 minutes, 2 secondsLet's do default endpoint to be node data dot
11:37:0911 hours, 37 minutes, 9 secondsendpoint like this. Default method to be node data dot method. default body to be
11:37:1911 hours, 37 minutes, 19 secondsnode data body. And now when I'm writing this, I'm realizing that I could have
11:37:2611 hours, 37 minutes, 26 secondstechnically just sent initial values as the node data object
11:37:3311 hours, 37 minutes, 33 secondsand I think that is a much better solution actually especially when it comes to extending this in the future.
11:37:4011 hours, 37 minutes, 40 secondsSo for the next chapter I will make sure to look into improving this. I will add a little comment uh to do check if it
11:37:4811 hours, 37 minutes, 48 secondscan be improved by just sending initial values node data because this is kind of
11:37:5511 hours, 37 minutes, 55 secondspointless writing every single thing here and it will save time in defining this as well. All right. Uh now let me
11:38:0411 hours, 38 minutes, 4 secondsjust check something. So props data always exist. Okay. Let's just go ahead and do this. And I think that's okay.
11:38:1411 hours, 38 minutes, 14 secondsYeah, no errors. Perfect. But still nothing really happens here. So now we have to develop the actual form. So in
11:38:2311 hours, 38 minutes, 23 secondsorder to do that, let's go ahead and let's import everything we will need to create that form. So that will include
11:38:3211 hours, 38 minutes, 32 secondsall the form elements. Form, form control, description field, form item label, and form message. We're going to need the input from components UI input.
11:38:4311 hours, 38 minutes, 43 secondsWe're going to need select from components UI select. And we're going to need text area from components UI text area.
11:38:5511 hours, 38 minutes, 55 secondsNow, for some other components like zod, we're going to need uh the ZOD resolver from hook form resolvers. Zod. We
11:39:0411 hours, 39 minutes, 4 secondsalready have this installed and we used it already. All right, good.
11:39:1011 hours, 39 minutes, 10 secondsUh, and we're going to need use form from React hook form and we're going to
11:39:1711 hours, 39 minutes, 17 secondsneed use effect from React to update if any new values are received in the
11:39:2411 hours, 39 minutes, 24 secondsmeantime. All right, I think that's all for now. Later, we are going to need I'm just going to add JSON 5 simply like a
11:39:3311 hours, 39 minutes, 33 secondsreference for me. So I know what I have to explain here. But for now, we don't have to concern ourselves with that.
11:39:4011 hours, 39 minutes, 40 secondsNow, inside of the HTTP request dialogue, it would be a good idea to extract all of those new values here.
11:39:4811 hours, 39 minutes, 48 secondsOnsubmit default endpoint, default method, and default body. I assigned this as a default value to get. Again,
11:39:5611 hours, 39 minutes, 56 secondsthis might change later. I will explore for the next chapter to see if we can improve this by sending just the initial values.
11:40:0411 hours, 40 minutes, 4 secondsLet's do form use form and inside of here add default values here
11:40:1311 hours, 40 minutes, 13 secondsendpoint default endpoint method default method
11:40:2111 hours, 40 minutes, 21 secondsbody default body like this. Now let's go ahead and improve the type safety of the
11:40:3011 hours, 40 minutes, 30 secondsform by adding Z.infer infer type of form schema and let's also add resolver here. Zod
11:40:3811 hours, 40 minutes, 38 secondsresolver form schema. There we go.
11:40:4411 hours, 40 minutes, 44 secondsNow uh let's go ahead and do this. So constatch method will be form.atch
11:40:5111 hours, 40 minutes, 51 secondsmethod. The reason we are doing this is so that we can do some dynamic field uh
11:40:5811 hours, 40 minutes, 58 secondshide and show depending on the method that the user selects. So basically we are going to show the body field if
11:41:0811 hours, 41 minutes, 8 secondseither post or put or patch are in the watch method which we are looking at above.
11:41:1911 hours, 41 minutes, 19 secondsIn the handle submit, let's define the values as Z.infer type of form schema.
11:41:3011 hours, 41 minutes, 30 secondsLet's call onsubmit and on open change to false. So we close the model.
11:41:3811 hours, 41 minutes, 38 secondsAll right. Now we are ready to actually build the form. So let's add a form and
11:41:4411 hours, 41 minutes, 44 secondslet's spread uh the form in it. Now let's use a normal HTML form element and
11:41:5311 hours, 41 minutes, 53 secondslet's give it an onsubmit prop of form dot handle submit handle submit inside.
11:42:0211 hours, 42 minutes, 2 secondsSo the same way we built the form for the out screens space y8 margin top
11:42:0911 hours, 42 minutes, 9 secondsfour. Uh the reason I'm comparing this to outscreens is because I won't be doing as in-depth explanation as I did
11:42:1811 hours, 42 minutes, 18 secondsduring that part where it was the first time we encountered building forms. Right?
11:42:2611 hours, 42 minutes, 26 secondsSo let's now add form field which is a self-closing tag. Let's give it control form.
11:42:3311 hours, 42 minutes, 33 secondsThe first field will be used to control the method of this HTTP request. Let's go ahead and execute render here like this.
11:42:4511 hours, 42 minutes, 45 secondsAnd it's going to render form item with a form label method.
11:42:5411 hours, 42 minutes, 54 secondsAnd then we're going to add select.
11:42:5811 hours, 42 minutes, 58 secondsLet's give this select on a value change field on change
11:43:0411 hours, 43 minutes, 4 secondsdefault value field do value and then let's open form control select
11:43:1211 hours, 43 minutes, 12 secondstrigger let's give it a class name full width and let's give it a value
11:43:2211 hours, 43 minutes, 22 secondswhich is a self-closing tag with a placeholder select a method
11:43:3011 hours, 43 minutes, 30 secondsAll right. And now outside of the trigger, outside of form control, we're going to add select content with all the
11:43:4011 hours, 43 minutes, 40 secondspossible options. So, let me expand my screen. Select content with multiple select items with matching uh value here
11:43:4911 hours, 43 minutes, 49 secondsand the value prop. This value prop is very important. So, make sure you don't misspell it.
11:43:5511 hours, 43 minutes, 55 secondsB basically add all the options that we've write here and here in the NU
11:44:0411 hours, 44 minutes, 4 secondsand now we have our first field. We can now select basically what is this methods uh mode of request.
11:44:1411 hours, 44 minutes, 14 secondsAnd now let's also add a form description here. The HTTP method to use for this
11:44:2111 hours, 44 minutes, 21 secondsrequest. And let's render form message which is a self-closing tag which will appear if there is an error in this field specifically.
11:44:3111 hours, 44 minutes, 31 secondsPerfect. So now let's go ahead and let's copy this entire form field.
11:44:3811 hours, 44 minutes, 38 secondsLet's paste it here.
11:44:4011 hours, 44 minutes, 40 secondsAnd now let's go ahead and modify it. So this one will be used for the end point.
11:44:4611 hours, 44 minutes, 46 secondsSo let's go ahead and change the form label to endpoint URL.
11:44:5211 hours, 44 minutes, 52 secondsAnd luckily this will be a little bit simpler. You can remove the entire select thing.
11:44:5811 hours, 44 minutes, 58 secondsAnd after the label, add form control, render the input, which is a self-closing tag,
11:45:0611 hours, 45 minutes, 6 secondsspread all the field properties, and just give it a placeholder here. And this is the one I'm going to use simply
11:45:1411 hours, 45 minutes, 14 secondsbecause it will be uh a cool way of showing your users what you can do. For example, you can query api.agample.com
11:45:2211 hours, 45 minutes, 22 secondsexample.com users and then you can actually do like a dynamic thing here.
11:45:2911 hours, 45 minutes, 29 secondsOf course you could manually write 1 2 3 but if you want to reuse the data from the previous node you could use our
11:45:3711 hours, 45 minutes, 37 secondstemplating language. Now this makes no sense to you right now but this is what we are going to implement. We will basically allow users to reuse the data
11:45:4611 hours, 45 minutes, 46 secondsfrom previous nodes. Right now it makes no sense because we just have this combination. But imagine the HTTP
11:45:5311 hours, 45 minutes, 53 secondsrequest was connecting to some third node which already has some data in it.
11:45:5911 hours, 45 minutes, 59 secondsSo that's how we're going to be able to do that. What if it was three HTTP requests connected one after another,
11:46:0611 hours, 46 minutes, 6 secondsright? And that's kind of what I'm trying to show here. And because of that, we are going to add a advanced
11:46:1411 hours, 46 minutes, 14 secondsform description here like this. static URL or use and then I'm using this kind
11:46:2311 hours, 46 minutes, 23 secondsof thing so I can display uh double brackets like use variables for simple values or use JSON and then the name of
11:46:3211 hours, 46 minutes, 32 secondsthe variable to stringify objects because you will be able to pass objects you will be able to pass individual values so this is just some instructions
11:46:4011 hours, 46 minutes, 40 secondsfor the users how they will be able to use this don't worry this will make more sense later once we actually do this
11:46:4711 hours, 46 minutes, 47 secondswhich I commented out JSON 5 refine. You will see how cool it is. For now, let's
11:46:5311 hours, 46 minutes, 53 secondsjust you know write the explanation for it. And one more field left which is uh
11:47:0111 hours, 47 minutes, 1 secondonly if show body field is enabled. So only then are we going to render this
11:47:0911 hours, 47 minutes, 9 secondsform field. So let's go ahead and just copy the render for this one. paste it
11:47:1611 hours, 47 minutes, 16 secondshere. Let's go ahead and give this control form dot control.
11:47:2611 hours, 47 minutes, 26 secondsLet's go ahead and give it a name of body. There we go.
11:47:3311 hours, 47 minutes, 33 secondsSo, this will be the request body.
11:47:3711 hours, 47 minutes, 37 secondsInstead of using an input, it's going to be using a text area.
11:47:4411 hours, 47 minutes, 44 secondsAnd let's give it a class name, minimum height of 120 pixels, font mono, and text small.
11:47:5611 hours, 47 minutes, 56 secondsSo now when you switch to post, you should see a request body in here
11:48:0311 hours, 48 minutes, 3 secondsbecause it only shows if either post, put, or patch are selected because otherwise you don't need the body field.
11:48:1211 hours, 48 minutes, 12 secondsAnd now what I'm going to do is I'm just going to improve the placeholder for this. So the placeholder will be a little specific.
11:48:2011 hours, 48 minutes, 20 secondsYou don't obviously don't have to do it the same as me. So this will be the placeholder just explaining to the user that they can do like dynamic values in
11:48:2911 hours, 48 minutes, 29 secondshere. So this is how it looks like in here. You can pass an object define user ID, name and items. And you can use the
11:48:3711 hours, 48 minutes, 37 secondsdynamic templates uh language here to show variables, right? Uh so I'm going to update the form description to kind of resemble that as well.
11:48:5011 hours, 48 minutes, 50 secondsWe I mean it already kind of resembles it, but let's go ahead and do this JSON with template variables. You can use
11:48:5811 hours, 48 minutes, 58 secondsvariables for simple values or JSON variable to stringify objects. And basically you are now explaining to your
11:49:0611 hours, 49 minutes, 6 secondsusers like hey you can do advanced things here. You can use the value from your previous node and add it here. So
11:49:1411 hours, 49 minutes, 14 secondsobviously this is just placeholder. It's not important code. So you can just write whatever you want here if you can't bother with you know writing this.
11:49:2211 hours, 49 minutes, 22 secondsIt's obviously a long and annoying line of code. Uh but we will implement this later. And in order to wrap this up,
11:49:3011 hours, 49 minutes, 30 secondslet's just end it by adding a dialogue footer, which we forgot to import,
11:49:3911 hours, 49 minutes, 39 secondsand button, which we also forgot to import. Make sure it has a type submit save, and this a margin top of four.
11:49:4711 hours, 49 minutes, 47 secondsThere we go. Perfect. So now what we have to do to end the chapter is find a way to preserve the value. So let's go
11:49:5511 hours, 49 minutes, 55 secondsback inside of the node here and let's actually uh do that. So what we're going to do
11:50:0411 hours, 50 minutes, 4 secondshere is we are going to add set nodes from use react flow
11:50:1411 hours, 50 minutes, 14 secondslike this from XY flow react and then I'm going to go ahead here and do con
11:50:2111 hours, 50 minutes, 21 secondshandle submit the values which I'm going to accept are
11:50:2811 hours, 50 minutes, 28 secondsendpoint which is a string method which which is a string as well and body which is an optional string.
11:50:4111 hours, 50 minutes, 41 secondsAnd then in here I'm going to do set nodes.
11:50:4511 hours, 50 minutes, 45 secondsAnd then I'm going to go through my current nodes and I will do nodes.m map find the
11:50:5311 hours, 50 minutes, 53 secondsindividual node and I'm going to find the node which matches the prompts id which means okay I found the node that I
11:51:0111 hours, 51 minutes, 1 secondhave to add this data to and let's simply return by spreading the existing value of the node opening the data
11:51:0811 hours, 51 minutes, 8 secondsobject preserving whatever is currently in that data and then just adding those new values
11:51:1811 hours, 51 minutes, 18 secondslike this and then I also have to do return node here. There we go. So very simple handle
11:51:2811 hours, 51 minutes, 28 secondssubmit. I will take a look if we can somehow reuse the well we can definitely you know reuse the values from the
11:51:3511 hours, 51 minutes, 35 secondsdialogue. We can just export a zinfer type of form schema and then we can use
11:51:4211 hours, 51 minutes, 42 secondsthat here. So it doesn't have to be like this.
11:51:4711 hours, 51 minutes, 47 secondsAll right. Uh and now that we have the handle submit, let's just go ahead and pass in the handle submit here.
11:51:5511 hours, 51 minutes, 55 secondsThere we go. I get no errors simply because I my types are exactly the same here. But we can improve this
11:52:0411 hours, 52 minutes, 4 secondsdefinitely. Let me just go ahead and do export type uh I don't know form type
11:52:1511 hours, 52 minutes, 15 secondsand then I can import this here from dot / dialogue. There we go. And
11:52:2411 hours, 52 minutes, 24 secondsnow the values have the exact same thing and I don't have to manually type that.
11:52:2811 hours, 52 minutes, 28 secondsPerfect. So now onsubmit will go through the state of the react flow and it will save those values.
11:52:3911 hours, 52 minutes, 39 secondsThere is just one more thing we have to do before we test this out and that is inside of dialogue inside of here we
11:52:4611 hours, 52 minutes, 46 secondsneed to add a use effect to reset the form values if the dialogue opens with new defaults.
11:52:5411 hours, 52 minutes, 54 secondsSo let's add use effect like this.
11:53:0011 hours, 53 minutesIf open form reset endpoint default
11:53:0611 hours, 53 minutes, 6 secondsendpoint method default method body default body like this
11:53:1411 hours, 53 minutes, 14 secondsand let's go ahead and add open default endpoint default method default body and form.
11:53:2511 hours, 53 minutes, 25 secondsAll right.
11:53:2911 hours, 53 minutes, 29 secondsAnd I think that now this should be working fine. So let's just do a refresh here.
11:53:3711 hours, 53 minutes, 37 secondsAnd let's add an HTTP request. Let me select a post here. Let me do HTTPS code with Antonio.com.
11:53:4711 hours, 53 minutes, 47 secondsAnd in here I'm going to do I don't know. We're just pretending here user ID
11:53:5411 hours, 53 minutes, 54 secondsone two three. And let's click save. And you can see how immediately we have post method targeting codewithintonio.com.
11:54:0311 hours, 54 minutes, 3 secondsPerfect. So if I go inside of my node.tsx, you can see that that's exactly what happens here. We are reading the node
11:54:1211 hours, 54 minutes, 12 secondsdata and we can uh now construct the description here. Let me just quickly go
11:54:1911 hours, 54 minutes, 19 secondsinside of base execution node. I think I made a typo here for truncating.
11:54:2511 hours, 54 minutes, 25 secondsLet me see. Oh, workflow node. Let's go inside of workflow node. So, that is located inside of source components.
11:54:3211 hours, 54 minutes, 32 secondsWorkflow node.
11:54:3411 hours, 54 minutes, 34 secondsAm I missing? Yes. Truncate. I just had to fix that typo. There we go. So, now it's all in one line. Perfect. And you
11:54:4411 hours, 54 minutes, 44 secondscan see when I open it's preserved. And if I click save here and if I do a hard refresh here,
11:54:5211 hours, 54 minutes, 52 secondsthere we go. It is all preserved. The data is saved successfully. Amazing.
11:54:5911 hours, 54 minutes, 59 secondsAmazing job. So we can now mark that as completed. Amazing. That's it for this
11:55:0511 hours, 55 minutes, 5 secondschapter. So 17 editor state. We have 18 files.
11:55:1111 hours, 55 minutes, 11 secondsLet me close this. So these are all of my files.
11:55:1611 hours, 55 minutes, 16 seconds18 uh 17 editor state. Let me go ahead and open a new branch. 17 editor state.
11:55:2611 hours, 55 minutes, 26 secondsI'm going to stage all of my changes here. 17 editor state. I'm going to commit.
11:55:3411 hours, 55 minutes, 34 secondsI'm going to publish the branch.
11:55:3711 hours, 55 minutes, 37 secondsAnd then I'm going to go ahead and open a pull request to review all of these changes. and see if there are some
11:55:4511 hours, 55 minutes, 45 secondsimprovements or critical mistakes that we've made.
11:55:4911 hours, 55 minutes, 49 secondsAnd here we have the summary by code rabbit. So new features, we added visual status indicators for nodes, loading
11:55:5611 hours, 55 minutes, 56 secondssuccess and error. HTTP request node is now configurable via dialogue. We can configure the method endpoint and the
11:56:0411 hours, 56 minutes, 4 secondsbody. A manual trigger node now also includes a setting dialogue for consistency. Add node button opens the node selector. So this actually worked
11:56:1211 hours, 56 minutes, 12 secondsbefore, but we now explicitly gave it an on click. So it's no longer an empty on click as per Code Rabbit's previous
11:56:1911 hours, 56 minutes, 19 secondscomments. Editor gains save action for workflows with feedback and data persistence. Exactly. And we changed the
11:56:2811 hours, 56 minutes, 28 secondseditor interactions with grid snapping, scroll to pan, and refine selection, drag behavior. Obviously, I told you to adjust this to whatever you like that
11:56:3711 hours, 56 minutes, 37 secondsyou can work with. And we also added functionality to delete the nodes. and its edges. And another bug fix to fix the text truncation that at least I had.
11:56:4811 hours, 56 minutes, 48 secondsNow, I don't think there was anything like too complicated happening here, but we can definitely take a look at how our save function works. So, once we save
11:56:5611 hours, 56 minutes, 56 secondsusing the editor header, we read the editor atom, which was initialized when
11:57:0211 hours, 57 minutes, 2 secondsit read the editor instance, and we send a mutation with nodes and edges.
11:57:1011 hours, 57 minutes, 10 secondsAnd now what we do is we have a transaction which will verify the workflow ownership, delete existing
11:57:1711 hours, 57 minutes, 17 secondsnodes and also cascade all connections and then create new nodes and new node data according to that. Same goes for
11:57:2411 hours, 57 minutes, 24 secondsthe connections and finally it will update the workflow and that will result in a success message for the user. Uh in
11:57:3311 hours, 57 minutes, 33 secondshere we have a super simple dialogue explaining how we populated the values of the HTTP request dialogue and how we update it using React Flow set nodes.
11:57:4411 hours, 57 minutes, 44 secondsAs per some comments here, uh we have some TypeScript issues it appears, but I think this is incorrect. It's telling me border 3 is not a Tailwind utility.
11:57:5411 hours, 57 minutes, 54 secondsThat's because most AI models are not familiar with Tailwind version 4, which I'm pretty sure introduced border 3.
11:58:0211 hours, 58 minutes, 2 secondsIn here, it's telling me to not use the default value and instead to use value, which could be a good point. I'm not
11:58:1011 hours, 58 minutes, 10 secondssure. I will take a look at that. Uh, and in here, uh, yes, it's basically it doesn't like the fact that we are
11:58:1811 hours, 58 minutes, 18 secondscasting the value here. So for the type I just defined the string. So in here it's telling me to use a native annium
11:58:2611 hours, 58 minutes, 26 secondsand pass the node type. We could do that but then on the client I would have to do casting. So we'll see. I will take a
11:58:3511 hours, 58 minutes, 35 secondslook if there is a better solution for this. Other than that all good. So not as bad as I thought it would be. We did
11:58:4311 hours, 58 minutes, 43 secondswrite a lot of code but looks like most of it was good. Let's go back to the main branch. And as always, let's make sure to synchronize our changes. Once
11:58:5211 hours, 58 minutes, 52 secondsyou synchronize your changes, I always recommend just going inside of the graph so you can see that everything here is fine. Perfect. So, uh, now that we've
11:59:0111 hours, 59 minutes, 1 seconddone that, let's go ahead and wrap this chapter up by confirming that we pushed to GitHub, we created a new branch, new
11:59:1011 hours, 59 minutes, 10 secondsPR, and we reviewed and merged. Amazing, amazing job. You just finished with the editor state and see you in the next chapter.
Chapter 19: End of Part 1

Sync to video time
