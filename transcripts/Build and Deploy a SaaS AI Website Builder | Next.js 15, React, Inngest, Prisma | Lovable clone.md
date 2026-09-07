https://www.youtube.com/watch?v=xs8mWnbMcmc&t=9972s








Build and Deploy a SaaS AI Website Builder | Next.js 15, React, Inngest, Prisma | Lovable clone
Code With Antonio
Code With Antonio
419k subscribers

Join


7.1k


Share

Ask

Save

247,375 views  26 Jun 2025
💻 Source Code: https://cwa.run/vibe
🎨 Free Assets: https://cwa.run/vibe-assets
Try Inngest: https://cwa.run/vibe-inngest
Try Clerk: https://cwa.run/vibe-clerk
Try CodeRabbit: https://cwa.run/vibe-rabbit
Try Neon Database: https://cwa.run/vibe-neon

In this video, we’re building an AI-powered app builder from start to finish.

You’ll learn how to generate full-stack applications from simple prompts using programmable AI agents powered by Inngest. We’ll use models like OpenAI, Anthropic, and Grok to handle code generation, and execute everything inside secure cloud sandboxes with E2B and Docker.

We’ll also cover the agent architecture, background job orchestration, project dashboard, authentication and billing with Clerk, and a full Git workflow with AI-assisted PR reviews from CodeRabbit.

Built with Next.js 15, React 19, Tailwind v4, and a fully modern AI-first toolchain.

Key features:
🚀 Next.js 15 + React 19
🎨 Tailwind v4 + Shadcn/ui
📡 tRPC for full-stack type safety
🔁 Inngest background jobs
🧠 Inngest agent toolkit
🔐 Clerk authentication
💳 Clerk billing
🧱 Component and app generation from AI prompts
🗂️ Live project preview with URL access
🖥️ E2B cloud sandboxes for runtime execution
🐳 Docker-based sandbox templating
🧠 AI model support (OpenAI, Anthropic, Grok)
📦 Prisma + Neon for database integration
🤖 CodeRabbit AI-powered PR reviews
🧾 Built-in credit system with usage tracking
🧪 Preview + code explorer toggle

Timestamps
0:00 Intro & Demo
7:06 01 Setup
23:51 02 Database
49:08 03 tRPC Setup
01:25:33 04 Background Jobs
01:53:41 05 AI Jobs
02:19:46 06 E2B Sandboxes
02:59:41 07 Agent Tools
03:47:09 08 Messages
04:16:56 09 Projects
04:36:36 10 Messages Ui
05:36:36 11 Project Header
05:58:41 12 Fragment View
06:12:35 13 Code View
07:06:37 14 Home Page
07:43:17 15 Theme
07:52:03 16 Authentication
08:41:23 17 Billing
09:31:34 18 Agent Memory
09:57:50 19 Bug Fixes
10:19:35 20 Deployment
Ask
Get answers, explore topics and more










-------------------------------------


In this video


Chapters

Transcript
Search transcript
Search transcript

Chapter 1: Intro & Demo
0:000 secondsImagine building your next startup with nothing more than a sentence. This is Vibe, an AI powered app builder that
0:099 secondsmakes that possible. And in this course, you're going to learn how to build it yourself. Let's try it out by entering a simple prompt and hitting submit.
0:2020 secondsWhat you're about to see next is something you'd normally expect from high-end tools like Lovable, Replet, or Bolt. But in this tutorial, it is something you will learn how to build.
0:3232 secondsThe result, a fully functional Netflix style homepage generated entirely by AI.
0:3939 secondsWe can explore the full app right here in the preview and everything just works. The layout, the interactions,
0:4848 secondseven models and favorites. It doesn't just look like a Netflix style homepage, it behaves like one. And just above the
0:5656 secondspreview, there's a live URL. You can open it in a new tab, share it with others, or test the app in a real
1:051 minute, 5 secondsbrowser environment. And when you're ready to see exactly how it works, simply switch to the code tab and
1:121 minute, 12 secondsexplore every component, utility, and file that was created. But how is this even possible? And how does it all work?
1:201 minute, 20 secondsLet's break it down. What you're looking at here is the inest developer server.
1:261 minute, 26 secondsIt shows a background task that kicked off as soon as we submitted our prompt.
1:311 minute, 31 secondsThe task itself is handled by an AI coding agent. The agent has access to various tools used to build the app. It
1:411 minute, 41 secondscan run commands in the terminal, create, read, or even update files. And its goal is to create a fully functional
1:491 minute, 49 secondsNex.js JS application tailored to the user's request. You can click into any step to see exactly what happened and
1:581 minute, 58 secondswhen. Which packages were installed, what commands were run, and which files were created or modified.
2:062 minutes, 6 secondsFinally, the agent spins up a real development environment using an E2B sandbox, a secure container that runs
2:152 minutes, 15 secondsyour app and exposes a live URL, so you can preview and interact with it just like any deployed project.
2:242 minutes, 24 secondsAnd finally, the finished app is saved to our Postgress database powered by Neon.
2:312 minutes, 31 secondsLet's head back to our Netflix project for a second. And just above the message form, you will see that we have a
2:382 minutes, 38 secondsmessage, two credits remaining. That's right. Each generation uses a credit.
2:442 minutes, 44 secondsSo, let's see what else we can build with this app and find out what happens when we spend our last point.
2:522 minutes, 52 secondsThis time, I will go with something a bit more interactive, like a conbon board I can drag around. And just like
3:003 minutesour previous project, this one was created flawlessly. I can drag and drop cards and even create new ones.
3:083 minutes, 8 secondsEverything just works. And just like our previous project, I can visit the file explorer and see every line of code that
3:183 minutes, 18 secondswas generated. Notice how I've got one more credit left. Let's go ahead and spend it.
3:253 minutes, 25 secondsRight beneath our homepage, we can find all of our previously generated apps or vibes as we are going to call them.
3:353 minutes, 35 secondsLet's click into the first one just to confirm it is still live and working.
3:413 minutes, 41 secondsBut now, let's use our final credit to build something new. This time I'm going
3:483 minutes, 48 secondsto build an admin dashboard and I'm hoping to see some status cards and a pageionated table. And here it is, a
3:573 minutes, 57 secondssleek looking admin dashboard with status cards, sidebar, and a pageentated
4:044 minutes, 4 secondssearchable data table. Notice how I have no more credits left. meaning that when
4:114 minutes, 11 secondsI try to generate a new prompt, I'm going to get an error and it is time to upgrade. In order to get more credits,
4:194 minutes, 19 secondsit's time to upgrade. Billing is powered by Clerk. That's right. Just like their
4:264 minutes, 26 secondsout system, the developer experience is incredibly smooth. No web hooks, no complicated code, no confusing Stripe setup. Everything works out of the box.
4:384 minutes, 38 secondsWatch how quickly I can upgrade my account. That's it. I have upgraded and I am now on the premium plan and I can
4:474 minutes, 47 secondssee my status reflected immediately in the user settings.
4:524 minutes, 52 secondsAnd as a developer, you can now track your monthly recurring revenue on the clerk dashboard page. After a successful
4:594 minutes, 59 secondsupgrade, you will see that you have a 100 credits remaining and beneath them the exact time they will reset. And by
5:075 minutes, 7 secondsthe way, dark mode is fully supported in this project. You can switch it on from the project's settings bar, and it will
5:145 minutes, 14 secondsimmediately update the entire app's UI, including the code explorer and the landing page.
5:225 minutes, 22 secondsThis isn't just a coding tutorial. We'll also be following a proper Git workflow throughout the project. This will
5:305 minutes, 30 secondsinclude creating commits, new branches, and real pull requests.
5:355 minutes, 35 secondsEvery pull request will be reviewed by Code Rabbit, our AI reviewer that provides feedback on everything from logic issues to best practices.
5:465 minutes, 46 secondsAll actionable insights and critical mistakes will be flagged automatically, drastically improving our code quality.
5:545 minutes, 54 secondsLet's quickly go over the text stack we'll be using. Next.js 15 with React 19
6:016 minutes, 1 secondmake our framework with support for serverside rendering and server components. TRPC combined with fanstack
6:096 minutes, 9 secondsquery will ensure our app meets full stack type safety. Prisma OM with postgress provided by Neon will be our
6:186 minutes, 18 secondsdatabase solution. Tailwind version 4 for styling along with chats and UI for accessible and reusable components.
6:276 minutes, 27 secondsAuthentication and billing will be done by clerk while background jobs and agent tooling and agent networks will be done
6:366 minutes, 36 secondsby ingest. E2B for executing AI generated code in secure cloud sandboxes. Docker for generating custom
6:456 minutes, 45 secondssandbox templates. Open AAI anthropic or Grock depending on the model you choose
6:526 minutes, 52 secondsto power your AI agents. Code Rabbit for AI powered code reviews. And of course,
6:596 minutes, 59 secondswe'll deploy everything to production when it's finished. And now, without further ado, let's get started.
Chapter 2: 01 Setup
7:077 minutes, 7 secondsIn this chapter, we're going to set up our Nex.js project, confirm our environment, get familiar with the file
7:147 minutes, 14 secondsstructure and versions of our project, and set up our component library. And finally, create a GitHub repository for
7:227 minutes, 22 secondsthis project. So let's start by setting up our Next.js project. If you head to the documentation page of Nex.js and
7:317 minutes, 31 secondsclick on the installation tab, you will find the system requirements. The minimum Node.js version is 18.18
7:397 minutes, 39 secondsand these are the supported operating systems. So first things first, let's confirm we have a proper node version installed. You can go inside of your terminal and you can run node-v.
7:517 minutes, 51 secondsAnd while you're here, also confirm these two commands. You should not be getting errors for any of these three.
7:597 minutes, 59 secondsIf you get errors for any of them, it is time to upgrade or reinstall your node.
8:048 minutes, 4 secondsYou can do that by visiting the official Node.js website. If you have a version which is lower than 18.18, you're going
8:138 minutes, 13 secondsto have to upgrade as well. Keep in mind that if you are or Linux or some different operating system, your
8:208 minutes, 20 secondsversions of npm and npx may be different, but as long as you're not getting any errors and you have a correct node version, you are good to go.
8:308 minutes, 30 secondsSo now let's go ahead and let's actually install our Nex.js application.
8:368 minutes, 36 secondsSeeing here, we have an automatic installation CLI command. So I'm going to go ahead and copy it, but I'm not going to run it immediately. I will
8:448 minutes, 44 secondsslightly modify it. Instead of using at latest, I'm going to write the exact version 15.3.4.
8:538 minutes, 53 secondsSo instead of latest, I'm going to do 1534.
8:578 minutes, 57 secondsWhy am I doing this? And do you need to do this? The reason I'm doing this is because I don't know when my viewers
9:049 minutes, 4 secondswill come across this video. This might be a month from now, 6 months from now, or a year from now. And depending on that, there might be a lot of new
9:139 minutes, 13 secondsbreaking changes introduced in the latest versions. So if you want to, you can use the latest version. That's
9:209 minutes, 20 secondsperfectly fine. But if you want to avoid any breaking changes, meaning that you're watching this video far into the future, like 6 months from now or a year
9:299 minutes, 29 secondsfrom now, and you just want to code along, I'm giving you the option to use the exact version that I had at the
9:369 minutes, 36 secondstime. Right? So this is the latest version at the time of me making this tutorial. So I'm going to go ahead and
9:439 minutes, 43 secondsuse this version. I'm going to create a project called a vibe. I'm going to select yes for TypeScript, yes for
9:519 minutes, 51 secondsslint, yes for Tailwind, and I'm also going to select yes for the source directory. Be careful here because I
9:589 minutes, 58 secondsthink that the default value might be no. So use the arrow keys to select yes and press enter. Same thing for the app router. Make sure you select yes here.
10:0810 minutes, 8 secondsYes for Turboac, but only for nextdev in my case. And I'm not going to customize the import alias. So this will be the
10:1710 minutes, 17 secondsonly no option for me. And now let's just wait for our dependencies to install.
10:2410 minutes, 24 secondsAfter our dependencies have installed, you're going to see a success message like this. What you have to do next is you have to enter this directory with
10:3210 minutes, 32 secondsyour terminal. So let's go ahead and do change directory vibe like this. And once you're inside of here, you can run
10:4010 minutes, 40 secondsthe ls command to see a list of files inside. Before we run this project, I want to set up our IDE, the place where
10:4810 minutes, 48 secondswe are going to write some code. For me, that's going to be VS Code. So I'm going to go ahead and select open, and I will select my new Vibe project.
10:5910 minutes, 59 secondsInside of here, you should be seeing a similar or the exact same file and folder structure. So, first let's
11:0711 minutes, 7 secondsconfirm our versions. I'm going to go inside of package JSON. You can see that I have Turboac here because I selected
11:1411 minutes, 14 secondsTurboAC. Yes, you can see that I have React 19. You can see that I have next 15.3.4.
11:2111 minutes, 21 secondsYou can see that I use Tailwind version 4 and TypeScript version 5. And these are probably the most important versions
11:2811 minutes, 28 secondsfor this project. Of course, if you are watching this into the future and you want to use whatever are the newest versions for you, you absolutely can.
11:3711 minutes, 37 secondsYou don't have to worry about this. Then I'm simply showing this for those people who want to use the exact same versions as me. Great. So about the config files,
11:4711 minutes, 47 secondsI have a tsconfig, a post CSS config, next config, and an esllet config. You might notice that Tailwind config is
11:5511 minutes, 55 secondsmissing. That is because we are using Tailwind version 4, which no longer introduces a Tailwind config.
12:0312 minutes, 3 secondsInside of the source folder, I have an app folder. Source folder is quite important. Make sure you have it. So,
12:1012 minutes, 10 secondsinside of the app folder here, I have a favicon, globals, layout, and page.
12:1812 minutes, 18 secondsYou can quickly visit them if you want to. And inside of my public folder, you can see that I have some SVGs here.
12:2712 minutes, 27 secondsGreat. So now let's go ahead and let's install Shats CNN UI into our project.
12:3412 minutes, 34 secondsFirst of all, let's mark these as completed.
12:3912 minutes, 39 secondsNow let's go ahead and set up Shatsen UI.
12:4312 minutes, 43 secondsSo by visiting chats UI and going into the introduction you can see that even though we are going to use it as our
12:5012 minutes, 50 secondscomponent library is actually not a component library.
12:5412 minutes, 54 secondsInstead it is how you build a component library. It is basically a collection of open code components with composition
13:0313 minutes, 3 secondspattern that you can simply add to your project. So let's go ahead and go inside of the installation and select next.js.
13:1013 minutes, 10 secondsLet's pick our package manager here.
13:1313 minutes, 13 secondsLet's copy the command. Make sure you are doing this inside of your project.
13:1813 minutes, 18 secondsSo again, you can run ls to confirm you are inside. And once again, instead of using latest, I'm going to go ahead and
13:2513 minutes, 25 secondsshow you which version I have. So for me, that is 2.7.0.
13:3113 minutes, 31 secondsSo let's go ahead and run the command. My apologies.
13:4113 minutes, 41 secondsinstead of latest 2.7.0 in it. If you get prompted to install, you can select yes. I'm going to be using neutral for my color here.
13:5113 minutes, 51 secondsAnd there we go. Just like that, we have initialized chats UI into our project.
13:5613 minutes, 56 secondsHere you can see how it verified the framework next.js and it valid validated the Tailwind config. It found version 4.
14:0514 minutes, 5 secondsPerfect. You can see that it also installed some dependencies, modified our global CSS and created one file. So
14:1214 minutes, 12 secondswe can now go ahead and visit all of those things here.
14:1614 minutes, 16 secondsYou can see that I now have CLSX Lucid React and I believe also Tailwind Animate CSS.
14:2514 minutes, 25 secondsI think that's the new package that came from uh Shotsy UI and Tailwind merge is
14:3214 minutes, 32 secondsnew as well I believe. Great. So those are the packages that SHAT CN CLI added.
14:3914 minutes, 39 secondsNow let's go ahead and look at our lib file utils inside of the source folder.
14:4414 minutes, 44 secondsIn here we have a CN function which we're going to use throughout our project whenever we need to safely uh merge or add dynamic Tailwind classes.
14:5414 minutes, 54 secondsAnd it also modified the globals.css by adding a bunch of variables which we can now use uh to build our project
15:0315 minutes, 3 secondstheme. It also added dark mode rules as well. Perfect.
15:1015 minutes, 10 secondsSo now let's go ahead and let's learn how to add a component. So for example, let's go inside of our components here.
15:1815 minutes, 18 secondsLet's select a button component and let's go ahead and select CLI option for the installation. And let's go ahead and
15:2615 minutes, 26 secondscopy this to clipboard. And I'm going to use 2.7.0 add button.
15:3315 minutes, 33 secondsAnd just like that, we have added a component to our project. If you get prompted with the option to use legacy
15:4015 minutes, 40 secondspeer depths or force, uh you can select any of those two options. But if you're using the same versions as me, I'm
15:4815 minutes, 48 secondspretty sure uh it will you will have the exact same experience. It should just work straight out of the box. But if you
15:5415 minutes, 54 secondsget any errors or any uh decisions to make, you can select legacy peer depths.
16:0016 minutesIf you don't have that choice, perfectly fine. You can just continue.
16:0516 minutes, 5 secondsGreat. So now you can go inside of source components UI and you can find button.tsx and you can see that it's using some of
16:1216 minutes, 12 secondsthese new packages that it added before and it also uses the CN which it initialized before. So the cool thing
16:2016 minutes, 20 secondsabout SAT CNUI components is that they are open code meaning that it's not bundled in a Node.js package. it is
16:2816 minutes, 28 secondsactually available for us to modify and build as much as we want. So now let's go ahead and let's run our project.
16:3716 minutes, 37 secondsSo npm rundev you will see d- turbo pack here and then you can open the localhost 3000 to see your app.
16:4716 minutes, 47 secondsNow let's go ahead and let's modify source app page tsx so we can see some changes here.
16:5516 minutes, 55 secondsgo inside of page here and let's learn how to actually write a page component.
17:0017 minutesSo I'm going to remove everything and the important thing here is that your components need to be uh using default
17:0817 minutes, 8 secondsexport. Right? So the name doesn't matter. This can be called home or it can be called page. I like to use the
17:1517 minutes, 15 secondspage convention. And now in here I can just write hello world.
17:2017 minutes, 20 secondsAnd once I save you will see the change hello world. If this is your first time using Visual Studio Code, if you have a
17:2817 minutes, 28 secondslittle uh circle here, it means the file is unsaved. So, just hit save and then it will be updated.
17:3717 minutes, 37 secondsAnd here's what happens if you don't do a default export. It will not be able to find the page. So, that's why default
17:4517 minutes, 45 secondsexpert is important here. But the name itself does not matter. But of course, you can't use some reserved uh things,
17:5317 minutes, 53 secondsright? You should not be able to call this error, right? Because error is already reserved.
18:0018 minutesGreat. So now let's go ahead and let's test out our tailwind. So I'm going to go ahead and add a class name here. Text bold.
18:1118 minutes, 11 secondsMy apologies. It is font bold. I forgot. There we go. And now my font is bold.
18:1718 minutes, 17 secondsBut let's try changing the color. Text rows 500.
18:2118 minutes, 21 secondsAnd now I've changed the color. You might notice that I have this little color icon. And when I hover over my classes, I can see the inner CSS it is
18:3118 minutes, 31 secondsapplying. If you want to see the exact same thing, you can go ahead and install Tailwind CSS IntelliSense package. It will be quite useful in this tutorial.
18:4218 minutes, 42 secondsGreat. Now, let's go ahead and let's remove this and let's add a button from components UI button.
18:5118 minutes, 51 secondsLet's go ahead and give it some children. And let's close it.
18:5718 minutes, 57 secondsAnd just like that, you have a button here.
19:0119 minutes, 1 secondAnd now I'm going to show you a quick way you can enter the button inner code.
19:0619 minutes, 6 secondsYou can use command or control and then click here and that will take you to the actual source components UI button.
19:1619 minutes, 16 secondsRight? So it will be quite useful for you to learn this shortcut because I will use it quite often in the tutorial so you don't get confused how I got
19:2519 minutes, 25 secondsthere that fast. Another shortcut you should learn is command space. My apologies command P or control P
19:3419 minutes, 34 secondsdepending if you are on Windows. And then once you open this bar you can search for button and press like this.
19:4119 minutes, 41 secondsI'm going to be using this quite extensively in the tutorial. So it would be good that you learn this as well. So once you're inside of the button here,
19:4919 minutes, 49 secondsyou can see that we can have some variants like destructive. Let's go ahead and try it out.
19:5919 minutes, 59 secondsOnce you add it, you can see that the destructive variant is now uh active.
20:0420 minutes, 4 secondsBut what happens if you go inside of the code and change this to danger? You can see how it immediately breaks.
20:1220 minutes, 12 secondsAnd we have to change this to danger. So what we've just done is we've changed the inner code of the button to our
20:1920 minutes, 19 secondsliking. Instead of destructive, it is now called danger. So let's bring that back now and let's try creating a new
20:2720 minutes, 27 secondsone. So new and let's go ahead and try something fun like background purple 500 text white.
20:3620 minutes, 36 secondsAnd if you go ahead and try now, you will see that you have the new option.
20:4020 minutes, 40 secondsAnd just like that, you created your own variant. So that's the power of Shatsen UI. And now that we confirm the button
20:4920 minutes, 49 secondsis working, let's go ahead and let's add all of the other components. The reason I want to add all other components is so that it's easier to follow along in this
20:5820 minutes, 58 secondstutorial. You obviously don't need all of them and you can clean them up later, but it's just going to be easier for us to have all of them at our disposal and
21:0721 minutes, 7 secondsthen simply choose which ones we want to use instead of having to install and wait. So, I'm going to go ahead and shut down my app and I'm going to run npxhat cnui 2.7.0-all.
21:2021 minutes, 20 secondsAnd this will add every single component to our project.
21:2521 minutes, 25 secondsAnd you can see how it added all of these components, but it skipped the button because it already exists. Perfect.
21:3321 minutes, 33 secondsSo, now we can go ahead and inside of your source components UI, you will see all of these various components here.
21:4021 minutes, 40 secondsYou now probably have a lot of unsaved files here. My apologies, not unsaved, uncommitted files. Uh, we're going to
21:4821 minutes, 48 secondsexplore what that means in a second. So, let's go ahead now and let's do the last thing that we need, which is create a
21:5621 minutes, 56 secondsGitHub repository. So, I'm going to go ahead and go inside of my GitHub. And I selected new repository here. Now, just a quick note, you don't have to do this.
22:0622 minutes, 6 secondsSo yes, following this step right here, creating a GitHub repository, branching out, doing commits, and opening pull
22:1422 minutes, 14 secondsrequests, it's completely optional. It is simply for those who want to learn uh how to follow a proper Git workflow. If
22:2322 minutes, 23 secondsthat is not something of interest to you, you don't have to do it at all.
22:2822 minutes, 28 secondsRight? So I'm going to create a new repository called Vibe, and I'm going to set it to private. And I'm going to
22:3422 minutes, 34 secondscreate a new repository here. And then I'm going to go ahead and copy uh these three lines because we need to push an
22:4322 minutes, 43 secondsexisting repository here. But before we can do that, we have to stage our changes. So we have 53 unstaged changes
22:5122 minutes, 51 secondsnow. So let's go ahead and add a plus here. And now all of them are staged.
22:5622 minutes, 56 secondsAnd now let's add a commit message. So I'm going to go ahead and do 01 setup.
23:0123 minutes, 1 secondbasically my commit messages will match uh my chapter and then I'm just going to commit. And then what we're going to do
23:0923 minutes, 9 secondsis we're going to go ahead inside of our project and we're going to run those three commands here.
23:1523 minutes, 15 secondsWait a second. And now if you go ahead and refresh your repository, you can see that you have your project available
23:2223 minutes, 22 secondsright here. And now in here you no longer have that button publish a branch because now you have access to your uh
23:3023 minutes, 30 secondsremote origin main meaning that this is no longer a local repository. This is now a remote branch on a remote
23:3823 minutes, 38 secondsrepository. Perfect. So that marks the end of this chapter and now we are ready to start setting up our database.
23:4723 minutes, 47 secondsAmazing job and see you in the next chapter.
Chapter 3: 02 Database
23:5323 minutes, 53 secondsIn this chapter, we're going to set up our database. We're going to start by obtaining a connection URL using a poser
24:0124 minutes, 1 seconddatabase provided by Neon. We are then going to set up Prisma, our OM. We're going to learn how to add and modify a
24:0924 minutes, 9 secondsPrisma schema, some basic migrations, as well as how to use a database studio, and also how to reset your database in
24:1724 minutes, 17 secondscase something goes wrong. And then we're going to go ahead and branch out, open up a pull request, and review and
24:2524 minutes, 25 secondsmerge that pull request. So, let's go ahead and visit Neon database. You can use the link in the description or the
24:3324 minutes, 33 secondslink you can see on the screen to let them know you came from this video. Once you've created an account with Neon, go
24:4024 minutes, 40 secondsahead and click create project. I'm going to go ahead and call my project Vibe, and my database name will be Vibe
24:4724 minutes, 47 secondsas well. And then I'm going to click the connect button and I'm going to copy the snippet for my connection string.
24:5424 minutes, 54 secondsAfter that, I'm going to go inside of my project and I will create a new file environment.
25:0025 minutesInside of here, I'm going to create a database URL and I'm going to paste my connection string.
25:0825 minutes, 8 secondsAfter that, let's go ahead and let's set up Prisma. You can use the link in the description or the link you can see on the screen to let them know you came
25:1725 minutes, 17 secondsfrom this video. This helps me a lot in creating more content like this. So let's go ahead and learn how to use
25:2425 minutes, 24 secondsPrisma with Nex.js. The first step is to set up the project. Since we already have that, we don't have to do that.
25:3225 minutes, 32 secondsInstead, we can go immediately to step two, install and configure Prisma. Since we are using other databases,
25:4025 minutes, 40 secondsspecifically Neon, let's click here so we know what to install. So, let's go ahead and start by installing Prisma and TSX as our dev dependencies.
25:5425 minutes, 54 secondsOnce this was installed, I will just go ahead and go inside of my package. JSON so you can see the versions, right?
26:0326 minutes, 3 secondsPrisma is 6.10.1 and TSX is 4.2. 20.3.
26:0926 minutes, 9 secondsSo if you're using the latest versions, this probably does not matter for you.
26:1426 minutes, 14 secondsBut if you want to use the same versions as me, you would go ahead and set up your installation like this. For
26:2126 minutes, 21 secondsexample, if you want to. Great. So after we've done this, our next step is to install
26:3026 minutes, 30 secondsPrisma client, but this time not as a dev dependency, but as an actual dependency instead.
26:3926 minutes, 39 secondsAfter we've done this, let me show you the version.
26:4526 minutes, 45 secondsPrisma client 6.10.1. So I think the most important thing about the Prisma versions is that Prisma client needs to
26:5326 minutes, 53 secondsmatch your Prisma dev dependency. At least at the time of me making this video, I'm pretty sure that is an important rule. It might change in this
27:0227 minutes, 2 secondsin the future. So I'm not sure, but I think it was this way for a long time now. So now let's go ahead and let's
27:0927 minutes, 9 secondsactually run our app. So in here they have this snippet but I'm not sure if this exact output will work with our
27:1627 minutes, 16 secondsdirectory because we have a source file here. So instead what I'm going to do is I'm just going to run npx prisma init with nothing more. So npx prisma init.
27:2927 minutes, 29 secondsLet's go ahead and run this.
27:3327 minutes, 33 secondsAnd after this was finished I see this big log here. So your Prisma schema was created in Prisma/sema.prisma.
27:4527 minutes, 45 secondsPrisma would have added database URL but it already exists in your environment.
27:5227 minutes, 52 secondsYou already have a g ignore file. Don't forget to add environment in here. So pretty good warnings here. So yes, every time you run npx prisma in it, it
28:0128 minutes, 1 secondcreates an environment file or it modifies it and it adds a database URL.
28:0728 minutes, 7 secondsBut this time it detected that we already have a database URL inside of our environment. So it didn't do
28:1528 minutes, 15 secondsanything. Right? Usually it would modify your uh uh environment file and it would
28:2228 minutes, 22 secondswrite a big message at the top saying modified or generated by Prisma. But the only thing you need in your environment
28:3028 minutes, 30 secondsis the database URL. So even if yours looks different, maybe in the future they've changed this. All you need is a
28:3628 minutes, 36 secondsdatabase URL for now. Great. So now let's go ahead and let's visit the other things added inside of Prisma folder. We
28:4528 minutes, 45 secondsnow have a schema.prisma. And what's important here is that your provider is posgress and that your URL is the
28:5328 minutes, 53 secondsdatabase URL. So make sure you don't have any typos here. But if you got this warning message, it means you have typed
29:0129 minutes, 1 secondit correctly because it did not override it. And yes, about this second message, uh don't forget to add environment in
29:0929 minutes, 9 secondsthe git ignore file. That is very important. But as you can see, my environment file is grayed out, which actually means it is inside of git ignore. You can find it right here.
29:2229 minutes, 22 secondsGreat. So now that we have that set up, let's go ahead and learn how to modify the schema. So I'm going to go ahead and
29:2929 minutes, 29 secondsI'm going to copy this exact changes that they are using in their Prisma. If you don't have access to that documentation page for whatever reason,
29:3829 minutes, 38 secondsdon't worry. I'm just doing this as an example. Our schema will be different anyway, or you can just pause the screen and type it out now. So basically we're
29:4629 minutes, 46 secondsadding a user model with an ID of type integer and it will auto increment.
29:5229 minutes, 52 secondsBasically if I add one user it will be ID1 and then I add another user it will be ID2. Then an email string which is
30:0130 minutes, 1 secondrequired and unique and a name string which is optional.
30:0730 minutes, 7 secondsSo basically, Prisma is using decorators for stuff like defining a primary key or ID in this case or adding the default value or setting something to be unique.
30:1930 minutes, 19 secondsAnd if you want to make a field optional, you simply add a question mark after its type. And if you want to make
30:2630 minutes, 26 secondsa relation like user and post, you start by defining well obviously your database structure one to many many to many,
30:3430 minutes, 34 secondsright? uh and then you simply add how you want it to be architectured. So I want user to have many posts but I want
30:4230 minutes, 42 secondspost to have only one user. So you define the second model and you literally say it's an array of that
30:5030 minutes, 50 secondsmodel, right? And then inside of here in order to properly connect it using foreign keys, what you have to do is you
30:5730 minutes, 57 secondshave to set the author ID or the user ID and then you have to create an actual relation using the foreign key. So you
31:0631 minutes, 6 secondshave to use user as the model and then you use a decorator relation. So it matches the outer id and it references
31:1431 minutes, 14 secondsthe ID of the user model and this is the place where you would add things like on delete cascade right so in case the user
31:2431 minutes, 24 secondsgets deleted we want the model post to get deleted as well so you can remove this for now just leave it exactly like
31:3131 minutes, 31 secondsthis this is like a pretty good minimal example to learn Prisma and one thing I forgot to tell you yes you can install
31:3931 minutes, 39 secondsPrisma uh here to see the syntax. I should have told you this before. My apologies. I just remembered. Uh, so
31:4731 minutes, 47 secondsmake sure to install this, right? So you can see the pretty colors and everything.
31:5231 minutes, 52 secondsAnd once you've done this, make sure you save this file. And let's go ahead and see how do we actually, you know, commit this, right? Because right now, uh, our database here is completely empty.
32:0332 minutes, 3 secondsNothing yet exists here. Nothing is pushed here. So let's go ahead and let's do npx prisma migrate dev. I'm not going
32:1132 minutes, 11 secondsto do this flag because that's not how we're going to uh run our commands. So, npx prisma migrate dev. And now we're
32:1932 minutes, 19 secondsgoing to be asked to uh call this migration in a certain way.
32:2732 minutes, 27 secondsSo, I'm going to call this migration in it. And just like that, we applied the migration. And two things have happened
32:3532 minutes, 35 secondsnow. Actually, three things. The first thing is that it synchronized our database from neon to the schema. Right?
32:4332 minutes, 43 secondsSo now uh our neon database has the same schema there. Uh the second thing it did is it created a migrations file instead
32:5132 minutes, 51 secondsof our project. And the third thing it did is it generated the Prisma client instead of source generated Prisma.
32:5832 minutes, 58 secondsRight? So let's try and check all of those things out. Uh if you go inside of your Prisma, you can now see the migrations here. And inside of here you
33:0633 minutes, 6 secondscan see the actual SQL file that happened.
33:1033 minutes, 10 secondsUh and the second thing you can see is I'm not sure where is my uh generated.
33:1833 minutes, 18 secondsIt's right here. Source generated. There we go. You can see the Prisma is now available here. And the third thing that it did is it synchronized the Neon
33:2633 minutes, 26 secondsdatabase. So if you go inside of neon uh and if you go inside of tables I think you might be able to see there we go
33:3433 minutes, 34 secondspost and user right. So you can see uh the exact fields here title content
33:4133 minutes, 41 secondspublished author ID and user relation ID email name and posts relation. There we
33:4833 minutes, 48 secondsgo. So we officially synchronized all of those things now. So let's go ahead and see the next steps that we have to do.
33:5633 minutes, 56 secondsUh in here it suggest creating a seed script. Let's go ahead and do that.
34:0134 minutes, 1 secondRight, I'm going to copy this. You don't have to do this, but I think it's nice.
34:0634 minutes, 6 secondsIt's a nice way to learn Prisma. Let's go inside of Prisma and let's create a seed.ts script like this. And let's paste it
34:1434 minutes, 14 secondsinside. Now in here I have to go inside of source I think.
34:2334 minutes, 23 secondsLet me just see how do I access this.
34:2834 minutes, 28 secondsAll right, found it. So it's source generated Prisma, right? We have to go inside of source generated Prisma. It's
34:3634 minutes, 36 secondsnot inside of app like they suggested here. Perhaps uh this depends on whether you use the source folder or not or
34:4534 minutes, 45 secondsthey've changed it. So they use the prisma dot user create input. Now if you're wondering where does this come
34:5234 minutes, 52 secondsfrom? How does it know user create input? Why is this called user? Well, that's actually the magic of Prisma.
35:0035 minutesEvery time that you modify the Prisma schema and you run the proper command npx prisma migrate dev which internally runs npx prisma generate.
35:1235 minutes, 12 secondsWhat basically happens is that it refreshes its internal uh intellisense typescript tool if I can call it like
35:2035 minutes, 20 secondsthat and it creates a bunch of these useful types for you. So right now you also have things like Prisma uh you can
35:2935 minutes, 29 secondssee all these weird things. If I I think I can you I can import user and I can import post right and if I were to add a
35:3735 minutes, 37 secondsnew model I would be able to import that as well. Right? So that's the cool thing about Prisma. Uh perfect. So I have this
35:4435 minutes, 44 secondsuser data here and let me just if you if you are not unable to copy this let me just show you this first example and all
35:5335 minutes, 53 secondsthe other ones are exactly like that and this is the bottom part right uh or you can use the link that I will
36:0036 minutesput on the screen uh for this seed script if you want if you are unable to find it great so now let's go ahead and
36:0936 minutes, 9 secondslet's add this to our package JSON so Prisma and seed Let's go inside of package. JSON.
36:1836 minutes, 18 secondsSo after scripts here, let's add Prisma seed. TSX Prisma SLT seed.ts. Just
36:2636 minutes, 26 secondsensure that yours is in the correct place.
36:3236 minutes, 32 secondsAnd once you've done that and saved the file, uh in here we have a warning.
36:3736 minutes, 37 secondsBefore starting the development server, note that if you're using Nex.js JS version 15.2.0 or 15.2.1
36:4536 minutes, 45 secondsdo not use Turboac. Right? So you can see that Turbopac sometimes has this small little issues. But since we are on a newer version, we should have no
36:5436 minutes, 54 secondsproblems here. Right? Uh and now let's go ahead and run npx Prisma database seed here
37:0237 minutes, 2 secondslike that. And that uses the tsx Prisma seed. And there we go. The seed command has been executed. So, just make sure
37:0937 minutes, 9 secondsyou have tsx installed in your dev dependencies and your seed command set at the correct place. And you should immediately be able to see this if you
37:1837 minutes, 18 secondsgo inside of your neon database. And if you go inside of your users, you will see Alice and Bob inside of the users
37:2537 minutes, 25 secondshere. So, we successfully populated our database. Perfect. Another way of seeing this data is by using the Prisma Studio.
37:3337 minutes, 33 secondsSo, NTX Prisma Studio should open it up on 555.
37:3937 minutes, 39 secondsAnd there we go. You can see that inside of here, I have some posts and I have some users right here, Alice and Bob. Perfect.
37:5037 minutes, 50 secondsLet's see what are the next steps here.
37:5337 minutes, 53 secondsSo, now we have to learn how to actually uh fetch our data, right? So, let's go
38:0038 minutesahead and do that. I'm going to go ahead inside of my project inside of source inside of lib and I'm going to create a
38:0938 minutes, 9 secondsdatabase.ts file. So they recommend creating Prisma. I like to call it database. And I'm going to import Prisma
38:1738 minutes, 17 secondsclient from generated Prisma. This is the same thing that they are doing. I'm just using an alias here. And then you
38:2438 minutes, 24 secondsliterally have to do the same thing here.
38:2838 minutes, 28 secondsI'm going to go ahead and try and explain uh how this works. So basically why not just export new Prisma client.
38:3838 minutes, 38 secondsThe reason why is because of Nex.js hot reload. Uh every time a hot reload happens a new Prisma client gets
38:4538 minutes, 45 secondsinitialized and that causes problems and you would actually see a warning in your terminal about that. So what they do is
38:5338 minutes, 53 secondsthey store Prisma in a global because global as the window object is not affected uh by hot reload.
39:0439 minutes, 4 secondsI used window object. I'm not sure if this belongs to the window nameace.
39:0939 minutes, 9 secondsPerhaps node namespace would be a better descriptor of it. And I also don't like to use the export default. So I will
39:1639 minutes, 16 secondsjust use the export const here. And let me just put it here. Actually, I have to do it like this. Okay.
39:2639 minutes, 26 secondsSo, now that we've done that, let's go ahead and let's uh try and query something. So, I'm going to go inside of
39:3439 minutes, 34 secondsmy source folder inside of app page.x and I'm going to go ahead and import
39:4239 minutes, 42 secondsprisma from lib database right here. And I will get my users from await which means I have to turn this into an
39:5139 minutes, 51 secondsasynchronous component prisma dot user and let's just use find many and then
40:0040 minutesI'm going to remove this entirely and do JSON stringify users null and two and we
40:0740 minutes, 7 secondscan remove the button import. So this is a server component by default meaning that it is rendered on the server and it
40:1540 minutes, 15 secondshas access to the database. Server component is not the same thing as server side rendering. Those are two
40:2240 minutes, 22 secondsdifferent concepts. A server component is actually a react thing not a next.js thing. Next.js is simply the environment
40:3040 minutes, 30 secondswhere server components can be demonstrated. So let's go ahead now and do npm rundev.
40:3840 minutes, 38 secondsLet's visit localhost 3000. And in here you should see a JSON of your users
40:4440 minutes, 44 secondsinside. And if you change this to post and change this to posts, you should be
40:5240 minutes, 52 secondsable to see posts here as well. So that is basically it. Right in here they go a
40:5940 minutes, 59 secondsbit more in depth. They're creating a whole, you know, unique include. We're going to learn that through the project itself. So that's basically it for this.
41:0841 minutes, 8 secondsBut there is one more thing I want to uh go over here. So we added the schema, we learned about basic migrations and we
41:1641 minutes, 16 secondslearned about database studio. But we didn't learn about database reset.
41:2241 minutes, 22 secondsSo why do we even need to learn about database reset? Well, I just think it's very useful for development. So let me
41:2941 minutes, 29 secondsgo ahead and actually modify this. So for development, right, not for production cases, right? You would
41:3641 minutes, 36 secondspretty much never need to reset your database in production, but during development, it's just super easy if you
41:4441 minutes, 44 secondsget stuck, right? Because this is the case now. So we now have some posts and we have some users, right? So what
41:5141 minutes, 51 secondshappens if I go ahead now inside of my schema Prisma here and for example, I remove the title from the post. It's no
42:0042 minuteslonger required. or I remove the email, right? And if I go ahead and do that now. So, npx prisma migrate dev. I'm
42:0842 minutes, 8 secondsgoing to add this changes now. Uh it will probably ask me to reset database anyway, right? Uh that's why this is a
42:1642 minutes, 16 secondsdev command, right? It should this should also not be used in production. You would usually do npx prisma migrate.
42:2442 minutes, 24 secondsYou can learn more about that uh in the actual Prisma documentation here. And there we go. So now we have a problem.
42:3142 minutes, 31 secondsYou are about to drop the column title which still contains nonnull values and you're about to drop the column emails.
42:3942 minutes, 39 secondsAre you sure you want to create and apply this migration? I'm going to select yes and I'm going to call this test migration here. Uh and this time it
42:4842 minutes, 48 secondsworked right. So this seems to be uh normal now. But the problem is what if you do something more complicated? For
42:5642 minutes, 56 secondsexample, let's try and let's drop the user here and let's drop this. Right?
43:0243 minutes, 2 secondsI'm trying to make a scenario uh where this actually stops working. Right?
43:1043 minutes, 10 secondsLet me try this.
43:1443 minutes, 14 secondsI'm going to do another migration and I'm going to call this test again.
43:2243 minutes, 22 secondsTest two. And okay, it's still working.
43:2643 minutes, 26 secondsNever mind. Basically, my point is that you need to learn how to nuke your database. Let's say that you do some
43:3443 minutes, 34 secondssome of your own experiments here and you get to a point where you're getting errors with your npx Prisma migration.
43:4143 minutes, 41 secondsWhat I usually do if I get completely stuck and I'm in development, this is important only for development mode. I
43:4943 minutes, 49 secondswould go inside of Prisma here and I will remove all of my migrations, all of them. And then I would do npx prisma migrate reset like this.
44:0144 minutes, 1 secondAre you sure you want to reset your database? All data will be lost. And I will press yes. Right. So, uh, oh yes,
44:1144 minutes, 11 secondsum, I forgot that resetting it also runs the seed script. So, let's remove the seed script because it doesn't make sense, right? We just use it to learn.
44:2044 minutes, 20 secondsSo, we can remove that. We can go inside of our package JSON and we can remove this.
44:2544 minutes, 25 secondsAnd we can also go inside of our source app page and we can remove this as well.
44:3744 minutes, 37 secondsAnd then let's go ahead and just confirm that we can do npx prisma migrate reset again.
44:4544 minutes, 45 secondsSo just confirm and this should clear your entire database.
44:5244 minutes, 52 secondsBasically this is quite useful in development mode when you are for example doing what we just did right we just learned how to use Prisma. So we populated our database with some models.
45:0345 minutes, 3 secondsWe don't really need we don't need the user with name optional and email required and posts right there. There's
45:1145 minutes, 11 secondsnot going to be any posts in our project. So we just learned how to reset our database as well. Perfect. So now it's time to create our first pull request.
45:2445 minutes, 24 secondsOnce again uh the part of git workflow of this tutorial is completely optional only for those who want to learn. So you
45:3045 minutes, 30 secondscan end the chapter here uh if you don't want to follow the git workflow. So what I'm going to do is I'm going to go ahead down here where it says main and I'm
45:4045 minutes, 40 secondsgoing to click create new branch and I'm going to call this 02 and then I'm going to call it database. So I'm going to
45:4845 minutes, 48 secondscall my branches according to my chapter 02 database. And you can see that down here it says 02 database. Then I'm going
45:5645 minutes, 56 secondsto go ahead and click the plus icon to add all of these changes. And then I'm going to go ahead and add my 02 database commit message. And after that, I'm going to publish my branch.
46:0846 minutes, 8 secondsAnd once I've done that, I'm going to go back to my GitHub here. And immediately you will see an option to create a pull
46:1546 minutes, 15 secondsrequest in my repository. If this did not appear for you, you can manually go inside of pull requests, new pull
46:2246 minutes, 22 secondsrequest. The base will be main or master depending on what you're using. And you're going to select your new branch
46:3046 minutes, 30 secondshere in the compare. And then create a pull request and then click create pull request right here.
46:4046 minutes, 40 secondsAnd once you've created your pull request, you can go inside of file changes here. And in here you can see every single thing that was modified.
46:4846 minutes, 48 secondsYou can see that we added the Prisma client instead of our lib database. We slightly modified our page tsx and we
46:5646 minutes, 56 secondsadded the schema prisma. We installed some new packages and we also added uh source generated prisma to get ignore.
47:0547 minutes, 5 secondsSo that was not added. And after that we can go ahead and merge this pull request and click confirm merge. Uh I'm not
47:1347 minutes, 13 secondsgoing to delete my branch simply so I have access to all of my branches here.
47:1747 minutes, 17 secondsYou can see that I can now always go back to that state of the application.
47:2147 minutes, 21 secondsAnd then what you have to do inside of your project is the following. Go uh down here and click on the 02 database
47:2947 minutes, 29 secondsbranch and then you have to select your main branch. You might be wondering which one this main or this main. Well,
47:3847 minutes, 38 secondsbasically the difference is one is a local branch and the other one is a remote branch. So the remote branch
47:4447 minutes, 44 secondswould be the one that is most uh well I I would say that is the source of truth.
47:5147 minutes, 51 secondsI could be wrong in doing this because you could have some changes on your main branches that you didn't push. But in our case we're going to push everything
48:0048 minutesfrom the main branch. So in your case it doesn't matter if you click on this one or if you click on this one you will have the exact same result. What's important is that you do the following.
48:1148 minutes, 11 secondsuh you click on synchronize changes here and then okay like this. And now you should no longer have any uh visible buttons here, right?
48:2248 minutes, 22 secondsAnd if you go inside of your graph, you should see this an initial commit then 01 and then something different for 02,
48:3048 minutes, 30 secondsright? Because we branched out and then we merged that back into our main like that. And now if you go ahead inside of
48:3948 minutes, 39 secondsyour main here, you can see that six minutes ago we merged this, right? Uh, perfect. So that's it for this chapter,
48:4848 minutes, 48 secondsyou can now see that even though I'm in my main branch, I still have my Prisma schema, meaning everything is fine.
48:5448 minutes, 54 secondsEverything is good. Perfect. So let's go ahead and wrap this up. So I'm going to go ahead and uh
49:0349 minutes, 3 secondscheck this as done. Amazing job. and see you in the next chapter.
Chapter 4: 03 tRPC Setup
49:0949 minutes, 9 secondsIn this chapter, we're going to set up TRPC, which is going to be our data access layer. Let's go ahead and let's
49:1749 minutes, 17 secondshead to the TRPC documentation page. You can use the link in the description or the link you can see on the screen to let them know you came from this video.
49:2649 minutes, 26 secondsOnce you are on the landing page, go ahead and click on the docs. And in here, click on the client usage. And in
49:3449 minutes, 34 secondshere you can find tanstack react query with a little star icon. And in here going to server components. Be mindful
49:4349 minutes, 43 secondsthat at the top here you do have a nex.js tab but that is talking about an
49:4949 minutes, 49 secondsolder nex.js version. So make sure that you are inside of tanstack react query server components. This is what we need.
49:5949 minutes, 59 secondsThe first thing we have to do is install all the necessary dependencies. So, if you're watching this video far into the future, I would recommend waiting until
50:0850 minutes, 8 secondsyou see the exact versions that I had installed. So, before you run this, what I suggest you do, and what I suggest you
50:1550 minutes, 15 secondsdo before you start any of my chapters, is click on this button right here and just click okay. Basically, this is just
50:2450 minutes, 24 secondsa sanity check to confirm that you are on your main branch and that you didn't accidentally uh forget to synchronize
50:3250 minutes, 32 secondsyour merged branch from the previous chapter. So, you only care about this if you are actually following the git workflow.
50:4050 minutes, 40 secondsOnce you've done that and you are confirmed to be on the main branch, you can go ahead and install all of these packages. I am going to show you which versions exactly I have installed.
50:5250 minutes, 52 secondsLet's head into package.json so we can see all the changes here.
50:5850 minutes, 58 secondsAs you can see, I have tenstack react query 5.80.10 and all tRPC versions are 11.4.2.
51:0851 minutes, 8 secondsSo if that's something you care about, you can go ahead and install these versions as follows. You would add this
51:1751 minutes, 17 secondsexact number to all of these packages regarding TRPC and then you would change this from
51:2551 minutes, 25 secondsusing the latest version to using 5.80.10
51:3151 minutes, 31 secondsand the ones for ZOD client only and server only are not that important but I'm going to show you them as well. So
51:3951 minutes, 39 secondsserver only is 0.0.1 0.1 and zod is a package we already have installed and we had it installed in the first chapter
51:4851 minutes, 48 secondssetup because when we added all chats component we also added forms and forms in chaten use zod for validation so
51:5751 minutes, 57 secondsthat's why this isn't marked as a new dependency because we already had it great so now that you have confirmed to
52:0452 minutes, 4 secondsinstalled all TRPC ones just double check that you actually have the same versions of all TRP PC packages because
52:1252 minutes, 12 secondsthat is quite important, right? So the version here is the the important version here is 11.x, right? The minor
52:2052 minutes, 20 secondsversions probably don't matter that much, but there is a big breaking change in uh 11 if you're coming from 10 or 9.
52:2852 minutes, 28 secondsSo make sure you're using at minimum 11 something and then you're good to go.
52:3452 minutes, 34 secondsPerfect. Now let's go ahead and let's create a small init file here. Uh so I'm going to copy this. Uh it's a very
52:4252 minutes, 42 secondssimple snippet. So even if you don't have access to this documentation page, don't worry. I will pause the screen and you will be able to copy with me. Let's
52:5152 minutes, 51 secondscreate a TRPC folder inside of our source folder. And inside let's create init.ts.
52:5852 minutes, 58 secondsAnd in here we are importing init TRPC from TRPC server package and cache from React. We are setting up the create
53:0653 minutes, 6 secondsTRRPC context here with some mock information and we are also creating our initial T object which is basically
53:1453 minutes, 14 secondsinitializing the TRPC and then we are extending it to create the router callers uh and factory and base procedure.
53:2353 minutes, 23 secondsPerfect. So that's our init file.
53:2653 minutes, 26 secondsNow let's go ahead and scroll a bit down and let's create our base routers.
53:3153 minutes, 31 secondsSo I'm going to go ahead inside of TRPC I'm going to create routers folder and inside app.ts.
53:4153 minutes, 41 secondsSo I'm importing Z from zod and from the previously created init file I'm importing the TRPC router with the base
53:4853 minutes, 48 secondsprocedure. So in here we have a very simple procedure called hello and it accepts text which is a string and it
53:5653 minutes, 56 secondsreturns back an object with a property greeting which is a string with the information from the text that we've
54:0454 minutes, 4 secondsentered. We are going to test this out later so it's easier for you to understand if this is the first time seeing the TRPC syntax.
54:1254 minutes, 12 secondsSo that's it for the routers and now what we have to do is we have to create our API folder DRPC and then a special
54:2154 minutes, 21 secondsuh Nex.js variable folder uh and then route.ts. So let's do that first.
54:2854 minutes, 28 secondsInside of source app folder, let's create API.
54:3254 minutes, 32 secondsThen let's create tRPC. And then let's create a dynamic folder inside of square brackets TRPC again. and then route. DS
54:4354 minutes, 43 secondsand let's go ahead and copy this. Now, in here, we're going to get some errors.
54:4754 minutes, 47 secondsIt's specifically uh about this import alias. So, we don't use uh this curly little string. Instead, we use an add
54:5654 minutes, 56 secondssign. So, you can just switch it to that and you will have no more errors. As you can see, uh all of these things already exist. So, we have the TRPC server
55:0455 minutes, 4 secondspackage. They are just extending it here. Some tree shaking it seems. And the TRPC in it is the one we just created as well as the router's app.
55:1355 minutes, 13 secondsRight? So you can commandclick on this to visit that same as the init one. And this is a NodeJS package. So that's a
55:2055 minutes, 20 secondsdifferent thing. Great. You can save this as well. Just double check that you have app folder API TRPC TRPC in square
55:2955 minutes, 29 secondsbrackets and then route.ts. It's very important to have this exact structure.
55:3755 minutes, 37 secondsGreat. Once we've done that, let's go ahead and let's create the queryclient.ts.
55:4455 minutes, 44 secondsSo I'm going to go inside of source drpc queryclient.ts.
55:5355 minutes, 53 secondsYes, it is.ts. Perfect. So about super JSON, we can um let's do this. Let's
56:0056 minutesimmediately install it. So super JSON because we are going to need it. And I will go inside of my package JSON here.
56:0756 minutes, 7 secondsSo this is my version in case you want to use the exact same one. And what we're going to do is we're going to immediately enable serialized data using
56:1656 minutes, 16 secondssuperjson.s serialize and des serialize data using superjson. DS serialize as well. So you can leave it the component
56:2556 minutes, 25 secondslike this. No need to modify anything further.
56:2956 minutes, 29 secondsNow let's go ahead and let's create our client.tsx.
56:3356 minutes, 33 secondsSo this will basically be a wrapper, a provider of TRPC and Tstack query which we're going to wrap our entire app
56:4256 minutes, 42 secondsaround. Uh if this is your first time ever seeing Tanstack query or TRPC, this is a lot of information at once. Uh but
56:5056 minutes, 50 secondsif you've ever worked with uh React Query or something like SVR, I promise
56:5756 minutes, 57 secondsit's a similar API. It is just uh a bit more advanced data access layer format that we are doing here. So as much as
57:0657 minutes, 6 secondsthis setup seems a little bit complicated, it is definitely worth it.
57:1057 minutes, 10 secondsYou will see how easy it will be to build your API routes and your procedures later on. You will thank yourself for going through this because
57:1957 minutes, 19 secondsof how easy it will be to maintain this project going forward. Right? So just stay with me. I promise it will be worth
57:2657 minutes, 26 secondsit. So let's create client.tsx inside of here. client.tsx.
57:3357 minutes, 33 secondsSo this extension is important because this will be exporting a component. So since this is a bit of a larger file, I'm going to go ahead and explain what
57:4157 minutes, 41 secondsit is. So first of all, we are adding use client because this has to be a client component. You can see it tries to access the window here and it's also
57:4957 minutes, 49 secondsusing some uh hooks like use state that can only be achieved using a client component. That's why we are using use
57:5757 minutes, 57 secondsclient at the top and you can also see the explanation here. So we are importing all of those things. We should not have any errors because we either created or installed these packages.
58:0958 minutes, 9 secondsSo one thing that we are going to change is this. So I don't like how this is specifically tailored for Versell because I don't know where you want this
58:1758 minutes, 17 secondsdeployed. So don't worry. I'm going to show you how you can modify this so it works well regardless of where you deploy.
58:2658 minutes, 26 secondsSo let's go inside of our let's just save the file uh and let's go inside of environment here
58:3558 minutes, 35 secondsand let's simply add next public app URL and this will be the following. When you
58:4358 minutes, 43 secondsgo ahead and do npm rundev you're going to see where your app is being run. So go ahead and copy this and simply paste it inside.
58:5358 minutes, 53 secondsThen I always like to copy from here and then paste it rather than type it out because you can do some typos if you're not careful. And you can see how
59:0259 minutes, 2 secondscomplicated this is, right? So it recognizes Versell URL and then it has to append the protocol and then it has to add this because Versel URL doesn't
59:1059 minutes, 10 secondshave the protocol otherwise it has to guess that we are using the 3000 port.
59:1559 minutes, 15 secondsIt's just completely unnecessary. We can do this much easier. you can return this completely and instead of using this you
59:2259 minutes, 22 secondscan just do process environment next public app URL. So then when you deploy, you will simply change this to your
59:2959 minutes, 29 secondsproduction URL regardless of where you deploy and this will work just fine. And in my opinion, it's much simpler to work
59:3659 minutes, 36 secondswith. And this is important, right? You can see that this will attempt to load the URL from localhost 3000 /trpc.
59:4859 minutes, 48 secondsSo it's important that you didn't do any changes herec. That's why this structure is important.
59:5659 minutes, 56 secondsAnd then in here we just have some regular uh trpc and uh tanstack query setup. But we have to enable the
1:00:041 hour, 4 secondstransformer superjson because we did enable it here. So we have to enable it here as well. So let's do the following
1:00:121 hour, 12 secondsat the top here. I'm going to import superjson from super JSON and I'm going to go down here remove this part and
1:00:211 hour, 21 secondssimply uncomment. So we are using the super JSON and you can ignore the error for now. It's because we need to enable it in some other places as well to get it to work.
1:00:311 hour, 31 secondsSo once you've done this, we didn't do any changes besides this and this. Right? That's the only
1:00:381 hour, 38 secondsthing we changed. So now as per their instructions, we have to go ahead and wrap this in the root of our application
1:00:461 hour, 46 secondswhen using Nex.js. Since we are in Nex.js, JS. Let's go inside of the root of our application and that's inside of
1:00:531 hour, 53 secondsthe app folder layout. So in here simply go ahead and wrap the entire application.
1:01:021 hour, 1 minute, 2 secondsSo be careful with the component you are importing. It is TRPC react provider from TRPC client. The reason I'm telling
1:01:101 hour, 1 minute, 10 secondsyou to be careful is because there are similarly named imports from packages.
1:01:161 hour, 1 minute, 16 secondsWe are not importing from any npm package. If you need to be able to command or controlclick here and it should lead you to this exact component which has this little superjson error.
1:01:271 hour, 1 minute, 27 secondsThat's the one we need to import and wrap our application around because if you just do TRPC provider, you can see that that also exists, but that's the
1:01:361 hour, 1 minute, 36 secondsincorrect one, right? It's TRPC react provider from TRPC client component that is currently throwing the error. That's the one we need.
1:01:461 hour, 1 minute, 46 secondsOnce you've done that, we have to create a server.tsx.
1:01:501 hour, 1 minute, 50 secondsAnd this is where things become interesting. So let's just do that now.
1:01:551 hour, 1 minute, 55 secondsI'm going to go inside of DRPC and I'm going to create server.tsx.
1:01:591 hour, 1 minute, 59 secondsAnd I'm going to paste this here. And you can immediately delete this part. So this is just an example. If your router is on a separate server, not case for
1:02:081 hour, 2 minutes, 8 secondsus. So we can remove this. So you can see it's much simpler. Now again, we have all of this either installed or already created.
1:02:171 hour, 2 minutes, 17 secondsGreat. So now that we have that, uh let's go ahead and just fix this little super JSON uh issue here that I'm having.
1:02:281 hour, 2 minutes, 28 secondsSo I'm using super JSON in client.dsx. I'm using it in queryclient.ds.
1:02:351 hour, 2 minutes, 35 secondsAnd I think I should also be using it in init.ds.
1:02:391 hour, 2 minutes, 39 secondsYou can see that I have it commented out here. So let's enable this and let's import super JSON from super JSON. This
1:02:481 hour, 2 minutes, 48 secondsbasically helps with serialization when it comes to passing specific props from server to client components with complex
1:02:551 hour, 2 minutes, 55 secondsobjects, right? Like well object, array, date, things like that. Super.json helps sparse those things. Uh great. So we now created server.dsx.
1:03:071 hour, 3 minutes, 7 secondsAnd this is actually a very very uh interesting file and I'm going to try and do my best to explain why. So that
1:03:151 hour, 3 minutes, 15 secondsis basically it for the setup. We are now ready to use this API. So let's go ahead and let's do that. In here I think
1:03:221 hour, 3 minutes, 22 secondsthey've added the most complicated example. So I'm going to try and use a more familiar example first. Let's go
1:03:291 hour, 3 minutes, 29 secondsinside of source app folder and let's go inside of page.tsx and let's try and do the following.
1:03:361 hour, 3 minutes, 36 secondsLet's add TRPC using use TRPC from naturally client,
1:03:431 hour, 3 minutes, 43 secondsright? That's our client.tsx component. This is where we import everything client related.
1:03:511 hour, 3 minutes, 51 secondsSo now we have access to TRPC. You can see that I can find my hello and I can go ahead and pass in the query options
1:03:581 hour, 3 minutes, 58 secondsinside. I can find the greeting or the text and I can say hello.
1:04:061 hour, 4 minutes, 6 secondsRight, this isn't doing anything now.
1:04:081 hour, 4 minutes, 8 secondsI'm just showing you the API and how it works. So, let's just quickly go inside of our routers here so you can see this
1:04:161 hour, 4 minutes, 16 secondschange in real time and so I can give you a little tip if it doesn't change for you. So, go inside of TRPC routers app and rename this from hello to, for example, create AI, something like that.
1:04:291 hour, 4 minutes, 29 secondsYou can see how immediately I've gotten an error here because that's how TR the RPC works. So instead of having to do
1:04:361 hour, 4 minutes, 36 secondslocalhost 3000 / AI slashcreate dash AI, right, which is most of the
1:04:441 hour, 4 minutes, 44 secondstime a literal string, right? So it's very hard to u it's very easy to make mistakes, right? I can accidentally do this and this is now an invalid API
1:04:531 hour, 4 minutes, 53 secondsroute, but I wouldn't know until I see a 404 error. So what the RPC does is it enables full stack type safety from
1:05:011 hour, 5 minutes, 1 secondstart to end. So if I accidentally make a mistake here, it immediately throws an error like this route doesn't exist.
1:05:091 hour, 5 minutes, 9 secondsThat's what the RPC is.
1:05:121 hour, 5 minutes, 12 secondsAnd it is much easier to build your apps when you know that you can rely on your code rather than having to see it break in production and then go and fix it.
1:05:211 hour, 5 minutes, 21 secondsRight? So if it works inside of your IDE, if there are no errors here, it will pretty much work everywhere. That's
1:05:281 hour, 5 minutes, 28 secondsthe power of having uh end to end type safety. And let's go ahead and change one more thing inside of this input
1:05:351 hour, 5 minutes, 35 secondshere. This basically represents things you can send to your API. So let's go ahead and imagine an API post request.
1:05:441 hour, 5 minutes, 44 secondsAgain, for example, this would be create AI. In here we would send something like body and then we would somehow you know
1:05:511 hour, 5 minutes, 51 secondsstringify this with text hello right this is a stupid example right but you know what I mean uh this is also very
1:05:591 hour, 5 minutes, 59 secondseasy to break but in here you can see that if I try sending a number here I'm getting an error why because we clearly
1:06:061 hour, 6 minutes, 6 secondsdefined this needs to be a string so if I change this to uh number now you can see that it works right but if I try
1:06:151 hour, 6 minutes, 15 secondsstring it will break So what happens if you are not being able to see the same result as me? Right? When I hover over
1:06:221 hour, 6 minutes, 22 secondstext, I can see the text is a type of number. When I hover over create AI, I can see the input and text number and output is a greeting of string. Right?
1:06:311 hour, 6 minutes, 31 secondsExactly as I'm typing it here. If you are seeing type any for everything, you could be having a problem with your
1:06:401 hour, 6 minutes, 40 secondssetup. So what you can do is you can go uh inside of extra information and go
1:06:471 hour, 6 minutes, 47 secondsinto frequently asked questions and here we have it. It doesn't work. I'm getting any everywhere. So there are a couple of
1:06:561 hour, 6 minutes, 56 secondsthings you can do. The first thing is you can check your tsconfig.json and in here make sure you have strict
1:07:041 hour, 7 minutes, 4 secondstrue enabled. The second thing is to make sure that you are using the proper TypeScript version and make sure your editor is using the same TypeScript
1:07:121 hour, 7 minutes, 12 secondsversion as package JSON. So for me, none of these things were ever an issue, but I did have this as an issue and this is
1:07:201 hour, 7 minutes, 20 secondswhat actually fixed my types. So go inside of your VS Code settings.json.
1:07:281 hour, 7 minutes, 28 secondsLet me just go ahead and try and do this. So settings, let me Oh, I think that yeah, you can
1:07:371 hour, 7 minutes, 37 secondsjust create it if you want to. So go inside and create a VSS code like this and then settings.json
1:07:461 hour, 7 minutes, 46 secondsand you can paste this inside and then you can click allow if this happens. And let me go back to page.tsx. So nothing
1:07:541 hour, 7 minutes, 54 secondschanged for me because this worked from the start. But if you're having any problems, when I say any, I mean this
1:08:021 hour, 8 minutes, 2 secondsyou're getting the type any all over your project, it could be due to these missing settings. So this actually fixed
1:08:091 hour, 8 minutes, 9 secondsmy problem once. So that's why I am sharing it with you. And you can always do commandshiftp and then reload window
1:08:161 hour, 8 minutes, 16 secondsand this kind of restarts the TypeScript server. So then it could work maybe.
1:08:221 hour, 8 minutes, 22 secondsGreat. So now let's actually see the result of this query.
1:08:271 hour, 8 minutes, 27 secondsSo make sure that you have your app running and that you can visit uh your root page. And first thing you should
1:08:341 hour, 8 minutes, 34 secondssee is this very big error. Why? Because by default in Nex.js every page and component is a server component unless
1:08:431 hour, 8 minutes, 43 secondsspecified differently or if it is a direct child of a client component. So let's go ahead and add use client to the
1:08:531 hour, 8 minutes, 53 secondstop. This will then turn it into a client component. And you can see we no longer have these errors. We can now use hooks as much as we want. So what I want
1:09:001 hour, 9 minutesto do now is show you how we actually get data from our API using a very familiar use query from the package
1:09:081 hour, 9 minutes, 8 seconds10stack react query. And in here you would usually create you know your own fetch method which would then call
1:09:171 hour, 9 minutes, 17 secondsforward slash AI create AI and then you would pass in the body right and you would have the JSON stringify blah blah
1:09:251 hour, 9 minutes, 25 secondsblah. What you can do now is the following. You can just use the TRPC oneRPC create AI and pass in the query options inside text and let's try Antonio here.
1:09:381 hour, 9 minutes, 38 secondsLet's go back inside of Yeah, you can also commandclick here and it will take you directly to the router. So, I'm going to change this back to string. And
1:09:471 hour, 9 minutes, 47 secondsthen what we can do is simply render data. Let's just do JSON stringify data.
1:09:561 hour, 9 minutes, 56 secondsThere we go. And there we go. Greeting.
1:09:591 hour, 9 minutes, 59 secondsHello Antonio. If I change this to John, it will change to hello John. That's how
1:10:061 hour, 10 minutes, 6 secondswe're going to fetch our data. This is our data access layer. Great. So, this is the most simple way of fetching data using a client component, right?
1:10:161 hour, 10 minutes, 16 secondsEveryone knows this. But let's go ahead and cover two more examples which I think are important, right? So, we've kind of set up the RPC and we experimented with a client component.
1:10:271 hour, 10 minutes, 27 secondsNow, let's experiment with a server component. And then finally, let's experiment with pre-fetching. And I'm going to try to explain what it is and why it is important.
1:10:371 hour, 10 minutes, 37 secondsSo basically server components have several advantages over client components. Uh they are not of course one is not a replacement of other. They
1:10:461 hour, 10 minutes, 46 secondswork together. But server components have that advantage that they are well on a server which means server components have direct access to the
1:10:541 hour, 10 minutes, 54 secondsdatabase for example. But in our case what's important is that they render sooner than client components. Right? So
1:11:021 hour, 11 minutes, 2 secondswhat is currently happening is that our application has to wait for page.tsx to be rendered from the server and only then does it start fetching the data.
1:11:141 hour, 11 minutes, 14 secondsBut what if we could start fetching the data on the server and then continue
1:11:211 hour, 11 minutes, 21 secondsusing the data using this familiar API within a client component that is prefetching. But in order to understand
1:11:291 hour, 11 minutes, 29 secondspre-fetching, let's first remove use client like this and let's break our app. So immediately our app is broken, right? We can't use tRPC here at all.
1:11:401 hour, 11 minutes, 40 secondsRight? So now what we have to do is we have to learn how to use TRPC inside of a server component. And let me just show you uh I'm going to try and do this. So
1:11:491 hour, 11 minutes, 49 secondsif I add console log here and just remove these things and just refresh, I think that you
1:11:571 hour, 11 minutes, 57 secondsshould be seeing server component inside of your terminal. How come you're seeing it in the terminal? Because it is a server component, right? Because if I
1:12:061 hour, 12 minutes, 6 secondschange this to use client now and change this to client component and refresh,
1:12:131 hour, 12 minutes, 13 secondsI'm pretty sure we can still see it here. Yes, this is a bad example. My apologies. Previously in the past you could not see it if it was a client
1:12:211 hour, 12 minutes, 21 secondscomponent. Uh so yeah ignore this. I tried to do an example but I used a wrong one. Let's just learn how to fetch
1:12:301 hour, 12 minutes, 30 secondsdata from a server component. So in here we actually have some guides. Let me just go back here.
1:12:381 hour, 12 minutes, 38 secondsThere we go. So uh in here getting data in a server component. So let's go ahead and simply create this little caller inside of our server.tsx.
1:12:501 hour, 12 minutes, 50 secondsSo go inside of tRPC server.tsx and at the end here export const caller call the app router create caller create
1:12:591 hour, 12 minutes, 59 secondstrpc context right. So there is a way you could you know fetch data from a server component and that would be
1:13:071 hour, 13 minutes, 7 secondseither you know directly calling the database like calling Prisma or there is nothing stopping you from fetching
1:13:161 hour, 13 minutes, 16 secondsinside of a server component. So you could again do create AI and then the body blah blah blah right but that is
1:13:251 hour, 13 minutes, 25 secondsunnecessary overhead because server component already has access to the database right no point in doing this
1:13:321 hour, 13 minutes, 32 secondsthat's why TRPC has invented something called a caller so what you can do now is let me just confirm the API you can
1:13:391 hour, 13 minutes, 39 secondsimport the caller so let's just do that so I'm going to do cons data and turn this into an asynchronous server
1:13:471 hour, 13 minutes, 47 secondscomponent component and await caller from DRRPC server create AI and let me just see do I have to do it like this? I
1:13:551 hour, 13 minutes, 55 secondshave to Antonio server and then I believe let me just check is
1:14:021 hour, 14 minutes, 2 secondsit data like this? There we go. JSON stringified data.
1:14:111 hour, 14 minutes, 11 secondsSo this is how you would fetch from a server component using TRPC using a caller. So this isn't doing a network
1:14:181 hour, 14 minutes, 18 secondsrequest on the server component. This is server component literally directly having a remote procedure access a remote procedure protocol to TRPC.
1:14:291 hour, 14 minutes, 29 secondsThat's why TRPC is so powerful because I think it's one of the only RPCs available that has these types of callers. I could be wrong, but it's the
1:14:381 hour, 14 minutes, 38 secondsonly one I've seen that performs this well. And this isn't so impressive right now, but if you've worked with server components before and you tried any kind
1:14:461 hour, 14 minutes, 46 secondsof RPC here, you would almost always encounter an issue that you lose authorization headers, right? Uh the
1:14:541 hour, 14 minutes, 54 secondsserver component would never know if the user is logged in or not. TRPC solved that problem as well. That's why I love
1:15:011 hour, 15 minutes, 1 secondTRPC so much because it allows us to leverage server components. So now let's finally do the uh way we are going to
1:15:101 hour, 15 minutes, 10 secondsuse the RPC and that is using pre-fetching. So we would do things like this const query client would be get
1:15:191 hour, 15 minutes, 19 secondsquery client from gRPC server. We're not going to call the caller here but we will import tRPC from here. And then in
1:15:281 hour, 15 minutes, 28 secondshere we're going to do void t uh queryclient dot prefetch query drpc
1:15:351 hour, 15 minutes, 35 secondscreate ai query options text Antonio
1:15:431 hour, 15 minutes, 43 secondsand this time prefetch and then in here what we would do is we would add a hydration boundary from tanstack react query.
1:15:561 hour, 15 minutes, 56 secondsWe would pass the state to be dehydrate again imported from tanstack react query and pass in the query client. And then
1:16:031 hour, 16 minutes, 3 secondsin here we would render a client component.
1:16:081 hour, 16 minutes, 8 secondsSo let's go ahead and create that client.tsx.
1:16:131 hour, 16 minutes, 13 secondsThis is not a reserved keyword. So this is just a component which needs use client at the top. And then in here what we would be able to do is the following.
1:16:251 hour, 16 minutes, 25 secondsWe can now get the data by using use suspense query from tanstack react query. And let's add
1:16:341 hour, 16 minutes, 34 secondsour TRPC from the client and pass in TRPC create AI query options. And
1:16:411 hour, 16 minutes, 41 secondsimportant, you need to have the exact same text here. Otherwise, the pre-fetching will fail because this would usually be some kind of filter.
1:16:511 hour, 16 minutes, 51 secondsFor example, instead of text, you would most likely have page one limit 10. So if you prefetch one thing and then
1:16:581 hour, 16 minutes, 58 secondsexpect to have something in suspense in the client component, it wouldn't work.
1:17:031 hour, 17 minutes, 3 secondsThat's why it is super important that your query options are exactly the same in your prefetch and in your client component. And then in here, you would be able to do JSON stringify data.
1:17:161 hour, 17 minutes, 16 secondsAnd now let's go ahead and let's do this. So let's go inside of here. Let's import client from dot /client and let's wrap this
1:17:261 hour, 17 minutes, 26 secondsinside of suspense from react and let's add a fallback here loading.
1:17:351 hour, 17 minutes, 35 secondsSo what's going on here?
1:17:391 hour, 17 minutes, 39 secondsBasically instead of directly calling the data inside of a server component what we are
1:17:461 hour, 17 minutes, 46 secondsdoing is we are leveraging t uh we are leveraging tanstack queries cache and state and we are immediately populating
1:17:551 hour, 17 minutes, 55 secondsit the moment server component gets created the moment server component loads because this will then allow the
1:18:041 hour, 18 minutes, 4 secondsclient component to load whenever it loads because we know a server component will load sooner than client component,
1:18:101 hour, 18 minutes, 10 secondsbut this time the client component won't have to wait until it gets loaded and only then initiate a network request.
1:18:191 hour, 18 minutes, 19 secondsInstead, it will already have the data ready even though because we prefetched
1:18:251 hour, 18 minutes, 25 secondsit inside of a server component. And it's very important to use a void here.
1:18:311 hour, 18 minutes, 31 secondsAnd this prefetch query actually doesn't return anything. So even if you tried things like this, this wouldn't work. it doesn't return anything. They've done
1:18:401 hour, 18 minutes, 40 secondsthat on purpose so you don't uh so you don't actually use this data because pre-fetching query all it does is it
1:18:481 hour, 18 minutes, 48 secondsinitiates a call on a server component but only for the sole purpose of populating uh tanstack query which can then be
1:18:571 hour, 18 minutes, 57 secondsaccessed in a client component. So we are leveraging server component to start fetching our data immediately and then
1:19:061 hour, 19 minutes, 6 secondswe are passing it down to the client component which uses a familiar API. So because this is use client, we can now
1:19:141 hour, 19 minutes, 14 secondsgo ahead and have a use effect here, right? We can go ahead and we can have a state here, right? We can do all of
1:19:221 hour, 19 minutes, 22 secondsthese things and it would work as fast as if we did the entire thing in a server component. So we don't lose the
1:19:301 hour, 19 minutes, 30 secondsfamiliarity of client components and we also don't lose the speed of server components. We basically get the best of
1:19:381 hour, 19 minutes, 38 secondsboth worlds by doing this. And let's finally try it out. You can see it works just fine. I know this is still a bit
1:19:461 hour, 19 minutes, 46 secondsconfusing. I try to explain it the best I can. I would highly suggest, you know, reading about prefetching and just going
1:19:531 hour, 19 minutes, 53 secondsthrough uh this documentation in the first place. Perhaps Dave explained it a bit better, but this is how I like to
1:20:011 hour, 20 minutes, 1 secondexplain it. Basically, we are now getting the best of both worlds. both the speed of server components and the
1:20:081 hour, 20 minutes, 8 secondsfamiliarity of client components and I think that this officially uh
1:20:151 hour, 20 minutes, 15 secondsmarks the end of this chapter right so let's just remove these things because we don't need them and what we're going to start doing in the next chapter is
1:20:231 hour, 20 minutes, 23 secondsfinally initializing our uh background jobs and start introducing some background actions we now have our
1:20:311 hour, 20 minutes, 31 secondsdatabase we have our OM and we have our data access layer. So those are the three things that we need so we can
1:20:381 hour, 20 minutes, 38 secondsstart saving uh some data in our database properly. Right? So let's go ahead now and mark this as completed. We
1:20:481 hour, 20 minutes, 48 secondsdid all of these things and let's go ahead and branch out now. So I'm going to go ahead and go down here and create
1:20:541 hour, 20 minutes, 54 secondsa new branch. I'm going to call this 03 DRPC setup. I'm going to go inside of my
1:21:021 hour, 21 minutes, 2 secondssource control here and I'm going to stage all changes and then I'm going to
1:21:081 hour, 21 minutes, 8 secondsadd 03 TRPC setup comment and I'm going to commit and then I'm going to uh publish the branch.
1:21:191 hour, 21 minutes, 19 secondsThen let's go ahead to our GitHub to open a pull request.
1:21:241 hour, 21 minutes, 24 secondsSo in here compare and pull request and let's create a pull request.
1:21:331 hour, 21 minutes, 33 secondsAnd as you can see I have something that you probably don't in your pull request
1:21:391 hour, 21 minutes, 39 secondsand that is an AI code review using code rabbit. As you can see not only do I
1:21:471 hour, 21 minutes, 47 secondshave a complete summary of this pull request. As you can see, we introduced TRRPC integration for type safe API
1:21:541 hour, 21 minutes, 54 secondscalls between client and the server and we also added some chores. Not only that, but I have a change file by file
1:22:021 hour, 22 minutes, 2 secondssummary so you can see exactly what I did in each file. And I also have a sequence diagram explaining exactly how
1:22:121 hour, 22 minutes, 12 secondsevery single component works in which order and how it responds with data and result, which is especially useful if
1:22:211 hour, 22 minutes, 21 secondsthis is your first time working with the RPC and Tanstack query.
1:22:261 hour, 22 minutes, 26 secondsAnd I also have some potential issues it caught. For example, we added this dummy TRPC context from the documentation.
1:22:361 hour, 22 minutes, 36 secondsRight? So, it noticed that and it told me that I should replace this hard-coded user ID with proper authentication. In
1:22:441 hour, 22 minutes, 44 secondsthis exact case, it is okay for us to proceed because this is just uh our initial TRPC code. We will replace this
1:22:521 hour, 22 minutes, 52 secondslater when we add authentication. But you can see how it already started noticing some potential issues in our
1:22:591 hour, 22 minutes, 59 secondscode. And then it also told us to change this further on when we update this React context. So it actually understands our code very very indepth.
1:23:111 hour, 23 minutes, 11 secondsIf you're interested in having the exact same code review, you can use the link in the description or the link you can
1:23:181 hour, 23 minutes, 18 secondssee on the screen and create a Code Rabbit account. But that is not all. So now I'm going to go ahead and merge this
1:23:261 hour, 23 minutes, 26 secondsright here. Let's merge this pull request.
1:23:311 hour, 23 minutes, 31 secondsI'm not going to delete my branch simply so I have access to it right here. So this was our previous chapter and now we
1:23:381 hour, 23 minutes, 38 secondshave TRPC setup. And you can see that I got this popup in my Visual Studio Code as well asking if I want to start a review inside of my Visual Studio Code.
1:23:501 hour, 23 minutes, 50 secondsSo, since I just reviewed my code uh in a pull request, I'm going to click no.
1:23:551 hour, 23 minutes, 55 secondsBut I'm going to show you in a second what this is. So, before we proceed, go ahead and make sure you change back to
1:24:021 hour, 24 minutes, 2 secondsyour main branch. And then just click on this little button to synchronize the changes.
1:24:091 hour, 24 minutes, 9 secondsAnd then when you click on a graph here, you should see our last one was a database commit. And then we merged
1:24:161 hour, 24 minutes, 16 secondsthat. And now we branched out for TRPC setup. and we merge that back inside.
1:24:221 hour, 24 minutes, 22 secondsAnd what I suggest you install is Code Rabbit extension. So Code Rabbit is a
1:24:291 hour, 24 minutes, 29 secondscompletely free VS Code extension. You can go ahead inside of your extensions here, Code Rabbit, and install it. And
1:24:381 hour, 24 minutes, 38 secondsif you don't want it connected to your pull requests, you can have complete free code reviews in your Visual Studio
1:24:471 hour, 24 minutes, 47 secondsCode. All you need is an account with Code Rabbit. You can use the link you can see on the screen and you will get amazing pull request reviews, but also
1:24:551 hour, 24 minutes, 55 secondsyou will get completely free code reviews in your IDE. We're going to try that in the next chapter because we just
1:25:021 hour, 25 minutes, 2 secondsreviewed our code in a pull request this time. So again, just confirm you are on your main branch and you have synchronized all changes. And that will
1:25:111 hour, 25 minutes, 11 secondsallow us to continue to the next chapter. So let's go ahead and mark this as done. Amazing job. We now have the
1:25:201 hour, 25 minutes, 20 secondsdatabase access, our ORM, and our data access layer. We are finally ready to start doing some AI related things and background jobs. Amazing, amazing job.
1:25:301 hour, 25 minutes, 30 secondsAnd see you in the next chapter.
Chapter 5: 04 Background Jobs
1:25:341 hour, 25 minutes, 34 secondsIn this chapter, we're going to learn all about background jobs. We're going to learn how to add them to an Nex.js GS application and we're going to learn
1:25:431 hour, 25 minutes, 43 secondswhat they are and why we need them. In order to understand that, let's first look at a normal example. Imagine a
1:25:511 hour, 25 minutes, 51 secondslogin form. You enter your email, your password, you click login, we send a network request, and we get an instant
1:25:581 hour, 25 minutes, 58 secondsresponse. Success or fail. We've already seen this a million times. But now imagine you have a more complex task at
1:26:071 hour, 26 minutes, 7 secondshand. Imagine you offered your user an ability to generate a summary of a very
1:26:131 hour, 26 minutes, 13 secondsvery long YouTube video. Imagine my videos for example, they are sometimes 12 24 hours long.
1:26:221 hour, 26 minutes, 22 secondsSo this time we send a network request.
1:26:251 hour, 26 minutes, 25 secondsAnd in order for our backend to generate this summary, it can take well over 30 seconds to do that because just imagine
1:26:331 hour, 26 minutes, 33 secondseverything that needs to happen. We first have to download the YouTube video. Then we have to transcribe the
1:26:401 hour, 26 minutes, 40 secondsvideo and only then can we send that to an AI model to generate the summary. So depending on the size of the video, depending on the AI model you will use
1:26:491 hour, 26 minutes, 49 secondsand depending on your overall infrastructure, it can take well over 30 seconds for that to finish. And if you
1:26:561 hour, 26 minutes, 56 secondshave a task that's running for so long within a normal network request like this one, you know, something completely
1:27:031 hour, 27 minutes, 3 secondsnormal, you risk your user never getting the result. So the problem is not that the user has to wait. The problem is
1:27:121 hour, 27 minutes, 12 secondsthis network request can time out, the user can accidentally close the tab, or the user can lose their connection. If
1:27:211 hour, 27 minutes, 21 secondsany of these things happen, the user will never get the result back and we have to start the entire process again.
1:27:271 hour, 27 minutes, 27 secondsThat's why we have something called background jobs. So let's imagine this again. The user clicks generate summary.
1:27:341 hour, 27 minutes, 34 secondsThis time we send a network request again, but instead of using our backend to generate the summary, we use our
1:27:411 hour, 27 minutes, 41 secondsbackend to invoke a background job. And the moment we've done that, we are finished with our network request, which
1:27:501 hour, 27 minutes, 50 secondsmeans that we immediately return back to the user and say the summary is being generated and the user can now close the
1:27:571 hour, 27 minutes, 57 secondstab, they can go for a run, they can do whatever they want. What's actually happening is that the moment we invoke a
1:28:051 hour, 28 minutes, 5 secondsbackground job, the background job now runs in a separate environment independent of the user's session,
1:28:121 hour, 28 minutes, 12 secondsindependent of the user's connection, right? And we can simply notify the user when we are done. This is the structure
1:28:201 hour, 28 minutes, 20 secondsyou have to understand if you want to build AI apps because depending on the model you will use and the complexity of the app you will build most of your tasks will be longunning tasks.
1:28:321 hour, 28 minutes, 32 secondsWe will achieve this in our project using ingest. So let's go ahead and create our first function and let's trigger a background job from nextjs.
1:28:441 hour, 28 minutes, 44 secondsYou can use the link you can see on the screen or the link in the description to let them know you came from this video.
1:28:501 hour, 28 minutes, 50 secondsAnd once you're here, you can immediately go inside of the documentation, select NextJS, and select app router here. And then let's go ahead and install inest.
1:29:031 hour, 29 minutes, 3 secondsBefore you do that, just make sure that you are on your main branch. And you can click synchronize changes just to
1:29:101 hour, 29 minutes, 10 secondsconfirm uh you didn't have any unsaved changes here. You can see my last chapter was TRPC setup and yours should
1:29:181 hour, 29 minutes, 18 secondsbe as well. So I'm going to shut down my app now and I'm going to do npm install injust.
1:29:271 hour, 29 minutes, 27 secondsAnd now that I have this installed, let me quickly show you my package JSON so you can see the version that I'm using.
1:29:351 hour, 29 minutes, 35 secondsOnce you have installed Injust, the second step is to run the Ingest developer server.
1:29:431 hour, 29 minutes, 43 secondsThe version that I will be using is 1.8.0.
1:29:481 hour, 29 minutes, 48 secondsBut you can see that in here they simply target the latest version. So when you see me now doing this npx inest- cli at
1:29:581 hour, 29 minutes, 58 secondslatest, the latest is equivalent to 1.8.0.
1:30:041 hour, 30 minutes, 4 secondszero just in case you were interested in my exact version. So, npx inest- cli at
1:30:131 hour, 30 minutes, 13 secondslatest or a specific version and then dev. And when I start this, you can see that it says injustdev server is online at localhost 8288.
1:30:231 hour, 30 minutes, 23 secondsAnd if I visit the project here, well, you can see that not much is going on here. It is a developer server, but
1:30:301 hour, 30 minutes, 30 secondsnothing is here for us to do. So what we have to do now is we also have to have our app running. So let's do mpm rundev.
1:30:401 hour, 30 minutes, 40 secondsAnd in here you will start to see something. You will start to see a bunch of 404 pages here. That is because the
1:30:481 hour, 30 minutes, 48 secondsingest developer server is trying to find our inest initialization in our project. But since we haven't done that,
1:30:561 hour, 30 minutes, 56 secondswe just have a bunch of 404s. So let's go ahead and continue with the documentation here.
1:31:031 hour, 31 minutes, 3 secondsI'm going to go ahead and create an ingest folder and then put a client.ts inside with this simple code snippet.
1:31:121 hour, 31 minutes, 12 secondsSo let me go ahead here inside of source and I will create a new folder called inest and I will create client.ts
1:31:221 hour, 31 minutes, 22 secondsand I will paste this inside. I'm going to call this vibe project or vibe development
1:31:301 hour, 31 minutes, 30 secondssomething like that. basically the name of your project here and once you've done that you should oh actually not yet
1:31:381 hour, 31 minutes, 38 secondssorry so this is the first step and then we come to the second step which is creating an API endpoint for ingest so
1:31:461 hour, 31 minutes, 46 secondsyou can copy this snippet as well and go inside of app API create a new folder ingest and inside go ahead and create
1:31:561 hour, 31 minutes, 56 secondsroute ts and paste this inside and you and replace this with an add sign and a
1:32:031 hour, 32 minutes, 3 secondsforward slash. There we go. It's basically using this inest which we just created. And the moment you save this file, if you have named it correctly and
1:32:121 hour, 32 minutes, 12 secondsput it in the API folder, you should go here and you will see that now you finally get 200 here because it
1:32:201 hour, 32 minutes, 20 secondsfinally found the ingest integration and now it will only try to hit that endpoint instead of all of these other ones.
1:32:301 hour, 32 minutes, 30 secondsGreat. But we still don't have anything useful in the developer server here. So let's go ahead now and let's continue by creating the first ingest function.
1:32:421 hour, 32 minutes, 42 secondsSo I'm going to go here inside of source ingest functions.ts and create a new function. So inside of
1:32:501 hour, 32 minutes, 50 secondsingest folder in the source, make sure you don't accidentally do this inside of API inest. So in here create functions.
1:32:581 hour, 32 minutes, 58 secondsWhoops.
1:33:001 hour, 33 minutesFunctions. DS import the client and a simple hello world in just create function. We give this an ID. We give this an event name.
1:33:101 hour, 33 minutes, 10 secondsAnd we have a very simple step which waits for 1 second and it then returns a dynamic string which uses the data we
1:33:191 hour, 33 minutes, 19 secondscan pass to this background job. So this is an example. So they show us how easy it is for us to pass some data to this
1:33:271 hour, 33 minutes, 27 secondsbackground job. This would be for example a link to a YouTube video we want to summarize, right? That's what
1:33:341 hour, 33 minutes, 34 secondsthis data object would hold. For example, I think I have a typo in my functions here. So, let me just fix that. And then let's go inside of the
1:33:421 hour, 33 minutes, 42 secondsapp folder API inest route and inside of here, let's import hello world from that
1:33:491 hour, 33 minutes, 49 secondsinest functions file. And now if you go back here you should be seeing uh your app here
1:33:571 hour, 33 minutes, 57 secondsavailable auto detected. You can see everything is fine. It found it at API inest framework next.js and one function
1:34:071 hour, 34 minutes, 7 secondsfound hello world because we just added it here. So if I rename this to hello world 2, it immediately renames here as
1:34:151 hour, 34 minutes, 15 secondswell. And now instead of these functions, let me just refresh. So, it's back to this name. I can now click invoke here. And you probably have empty
1:34:241 hour, 34 minutes, 24 secondsdata, but you can go ahead and add email and pass in I don't know it it can even just be the name. It doesn't matter. And
1:34:321 hour, 34 minutes, 32 secondsclick invoke function. And you will see how it went from ceued to running to completed. So that's the status that just happened. It happened very quickly
1:34:411 hour, 34 minutes, 41 secondsbecause uh there wasn't no no no one there was no function before this. So the queue to running went very fast and
1:34:491 hour, 34 minutes, 49 secondsthe running only took 1 second because we only wait for 1 second. For example, let's now increase this to 10 seconds
1:34:581 hour, 34 minutes, 58 secondsand save the file. And let's go inside of our functions invoke and let's click this again. You can see how now it keeps
1:35:081 hour, 35 minutes, 8 secondsrunning. It's running for 5 seconds, 7 seconds, and finally after 10 seconds,
1:35:151 hour, 35 minutes, 15 secondsit's finished. Is this getting familiar to what we just discussed? This is a background job. The only problem so far
1:35:251 hour, 35 minutes, 25 secondsis that we are not invoking this function from our network request. We are manually clicking on invoke here.
1:35:321 hour, 35 minutes, 32 secondsHow do we invoke this from in our case TRPC procedure? Let's go ahead and let's do that.
1:35:401 hour, 35 minutes, 40 secondsSo I'm going to go inside of source trpc routers_app and in here I'm going to call this
1:35:491 hour, 35 minutes, 49 secondsinvoke. This will be base procedure and let's add an input here z.object
1:35:561 hour, 35 minutes, 56 secondsand let's pass in the text to be z dot string like this. And then instead of
1:36:041 hour, 36 minutes, 4 secondsdotquery, let's add dot mutation. This time it's going to be asynchronous here.
1:36:111 hour, 36 minutes, 11 secondsLet's extract input from here like this. And this time what we're
1:36:171 hour, 36 minutes, 17 secondsgoing to do is await inest from injust client.
1:36:251 hour, 36 minutes, 25 secondsThe name of the function you can find here. This is the name of the function you will run.
1:36:331 hour, 36 minutes, 33 secondsSo pass that here and then you pass in the data and the data can be anything you want but we know that we accept
1:36:411 hour, 36 minutes, 41 secondsemail here. Uh so let's go ahead and pass email to be input.ext
1:36:471 hour, 36 minutes, 47 secondsbecause we defined it as text here. And this is how you invoke a background job from TRPC. So now let's go ahead and
1:36:561 hour, 36 minutes, 56 secondsactually use this invoke method. I'm going to go inside of source at folder and I'm going to go inside of page.tsx
1:37:061 hour, 37 minutes, 6 secondshere and uh well we already have this set up but since we are not going to need it I'm going to delete it for now.
1:37:141 hour, 37 minutes, 14 secondsI'm going to delete this client.tsx.
1:37:171 hour, 37 minutes, 17 secondsI'm going to go back inside of the page here and I will simply return a div here test and I will remove everything from
1:37:271 hour, 37 minutes, 27 secondshere. We only use this to learn about the RPC. So let's mark this as use client. So this becomes a client component. The use client is very
1:37:361 hour, 37 minutes, 36 secondsimportant for our demonstration here. So please do it. Now when you refresh on your local host 3000, you should just see a test here. So now let's go ahead
1:37:451 hour, 37 minutes, 45 secondsand let's create a padding for maximum width 7 XL MX auto. And in here let's add a button component.
1:37:561 hour, 37 minutes, 56 secondsinvoke background job.
1:38:011 hour, 38 minutes, 1 secondAnd there we go. We now have a button to invoke a background job. So let's go ahead and add TRPC here.
1:38:101 hour, 38 minutes, 10 secondsUse TRPC and let's add invoke from use mutation from tanstack react query. Pass in
1:38:191 hour, 38 minutes, 19 secondstRPC.invoke and pass in the mutation options here.
1:38:261 hour, 38 minutes, 26 secondsAnd then in here on click call invoke and call mutate
1:38:351 hour, 38 minutes, 35 secondsand pass in the text to be test or John something like that.
1:38:431 hour, 38 minutes, 43 secondsSo what I want to demonstrate to you now is how quickly this background job uh
1:38:501 hour, 38 minutes, 50 secondslasts in comparison to the network request. So, I'm going to go ahead and open my developer console here. I'm
1:38:571 hour, 38 minutes, 57 secondsgoing to go inside of the network tab and I will click invoke background job and let me just see did I even do
1:39:051 hour, 39 minutes, 5 secondsanything now or not because I I'm definitely expecting to see something here but it is not uh happening.
1:39:171 hour, 39 minutes, 17 secondsLet me refresh the page.
1:39:221 hour, 39 minutes, 22 secondsAll right. So my website froze. So what I did was I simply shut down my app and
1:39:291 hour, 39 minutes, 29 secondsI did npm rundev again. So I'm hoping to try it out again. This time successfully.
1:39:371 hour, 39 minutes, 37 secondsThere we go. Now when I click on invoke a background job, you can see how quickly this finished. Let's just see.
1:39:461 hour, 39 minutes, 46 seconds468 milliseconds. That's how long this network request took. But we know that
1:39:531 hour, 39 minutes, 53 secondsthe actual background job took 10 seconds. So that is what we wanted to achieve. If I go inside of the RPC
1:40:021 hour, 40 minutes, 2 secondsinvoke again uh and inside of the ingest and go inside of the functions, let's change this to 30 seconds and add a
1:40:101 hour, 40 minutes, 10 secondscomment here. You know, imagine this is a u download step right here. In here we
1:40:181 hour, 40 minutes, 18 secondsare downloading a video. Then in here, imagine this is a transcript step. Another 10 seconds. And
1:40:261 hour, 40 minutes, 26 secondsthen finally, you know, imagine this is a summary step. And this finally then
1:40:331 hour, 40 minutes, 33 secondstakes 5 seconds. This is what we want to achieve, right? The moment we click on
1:40:401 hour, 40 minutes, 40 secondsgenerate summary, we send a network request. We trigger a background job and we immediately allow the user to close the tab. Right? So let's try it again.
1:40:501 hour, 40 minutes, 50 secondsUh in order if you want to you can also do this. You can go inside of your layout
1:40:561 hour, 40 minutes, 56 secondsin app folder and you can add a toaster from components UI soner
1:41:051 hour, 41 minutes, 5 secondslike this. I just like to order the components like so. And now once you've added the toaster you can go inside of
1:41:131 hour, 41 minutes, 13 secondsthe page here go inside of mutation options and add on success here.
1:41:191 hour, 41 minutes, 19 secondsAnd you can add toast from soner.su success background job started.
1:41:291 hour, 41 minutes, 29 secondsAnd now you will see the following. If your app gets stuck, you can go ahead and just do mpm rundev again. Uh I did
1:41:361 hour, 41 minutes, 36 secondsget this happen a few times and I think I solved it when I removed the turbo pack, but we'll see. Basically, if your app hangs on loading, don't worry. You
1:41:451 hour, 41 minutes, 45 secondscan just uh restart it. it will not happen in the actual app. So let's try this now. Uh we can also do
1:41:541 hour, 41 minutes, 54 secondsdisabled here and let's do invoke is pending
1:42:001 hour, 42 minuteslike that and we can also go inside of invoke function here. the RPC invoke and
1:42:081 hour, 42 minutes, 8 secondsafter a wait let's return okay success
1:42:161 hour, 42 minutes, 16 secondslike this so now if you click invoke background job you can see this is it the request is finished right the user
1:42:251 hour, 42 minutes, 25 secondscan now close their tab and what's happening is in the background right we are now doing the first step which would
1:42:331 hour, 42 minutes, 33 secondsbe 30 seconds of downloading a YouTube video. After that, we're going to go
1:42:401 hour, 42 minutes, 40 secondsahead onto the second step, right? Which would be transcribing a video. So, let's
1:42:471 hour, 42 minutes, 47 secondssee. After 30 seconds here is finished, we go to the second step. And this step
1:42:531 hour, 42 minutes, 53 secondswill last for 10 seconds because we just wait for transcription to happen. And
1:43:001 hour, 43 minutesthen finally, we have a third step. And in here we would do the AI summarization. And that's it. Hello John
1:43:091 hour, 43 minutes, 9 secondsor this would actually be the summarization. Right? So that is how background jobs work. And that's how you add them uh in a Nex.js environment.
1:43:191 hour, 43 minutes, 19 secondsRight? And it doesn't matter if the user lost their internet connection. It doesn't matter if they're closed the tab because the moment they invoke a
1:43:281 hour, 43 minutes, 28 secondsbackground job, the background job has started. they can lose their internet connection. Obviously in development mode if you lose the internet connection
1:43:361 hour, 43 minutes, 36 secondsyour dev server would fail. So yes in development technically you need you cannot really shut down your laptop but
1:43:441 hour, 43 minutes, 44 secondsin production it will run on a separate server in a separate environment right and from this inest developer server you
1:43:521 hour, 43 minutes, 52 secondscan easily cancel things if you don't want to you can rerun them uh you can go ahead and look at the payload that was added you can do a bunch of things here
1:44:011 hour, 44 minutes, 1 seconduh and one cool thing about ingest steps is this will later be of course more complex things than just sleeping for 30
1:44:091 hour, 44 minutes, 9 secondsor 10 seconds. This will be API calls, database requests and if they fail, it is crucial to well retry them and that
1:44:181 hour, 44 minutes, 18 secondsis what inest does automatically for you. Uh they actually have a cool example on their landing page here. They have uh and yes they have agent kit.
1:44:281 hour, 44 minutes, 28 secondsThis is something I didn't want to talk about immediately because I don't want to confuse you, right? So uh alongside background jobs, we're going to use
1:44:361 hour, 44 minutes, 36 secondsinjust to build autonomous agents, right? So AI and background jobs go hand in hand and Injust is the platform to do
1:44:451 hour, 44 minutes, 45 secondsboth of that. But I first want to introduce it through background jobs because it's easier to understand, right? And in here they have three very
1:44:531 hour, 44 minutes, 53 secondscool examples. So this is the transcription example. You can see that uh they have a step called transcribe video. So it's very similar to
1:45:011 hour, 45 minutes, 1 secondstep.slip, slip, but instead it is step.run and they call it transcribe video and in
1:45:081 hour, 45 minutes, 8 secondshere they simply return a deepgram SDK with a function to transcribe a video URL and once this steps finishes they
1:45:171 hour, 45 minutes, 17 secondscall an LLM chat GPT uh GPT4 to create a summary. So exactly what we did. So this
1:45:251 hour, 45 minutes, 25 secondswould be the two steps right this would be the first one you know transcribe the video and then the second one summarize
1:45:321 hour, 45 minutes, 32 secondsthe video right I just use a download step as well so looks like we don't need a download step right so this is what you can use in just for the second one
1:45:401 hour, 45 minutes, 40 secondsis to build AI with automatic retries cach caching and improved observability
1:45:471 hour, 45 minutes, 47 secondsright so it's way more powerful than I can showcase in this short chapter that's why We will have more chapters
1:45:551 hour, 45 minutes, 55 secondslater on to build the actual agent networks, agent router, and agent tools, right? And of course, you can do sleep,
1:46:041 hour, 46 minutes, 4 secondswhich right now seems only for fun, but sleep can be very useful. For example, you can send a welcome email to a user,
1:46:111 hour, 46 minutes, 11 secondsthen wait a week, and then send a follow-up email. So, yes, that's how long these tasks can wait. They are
1:46:181 hour, 46 minutes, 18 secondsbackground tasks. Uh, perfect. Yes. And for development, you don't need any account yet. But later uh for
1:46:261 hour, 46 minutes, 26 secondsproduction, for deployment, we're going to have to create an account with ingest. But for development, there's going to be no need for that as well.
1:46:331 hour, 46 minutes, 33 secondsAnd I think that's great because we can get started right away just by running this. Perfect. So I think that was the
1:46:411 hour, 46 minutes, 41 secondsgoal of this chapter. I think we achieved this exact thing right here. So
1:46:481 hour, 46 minutes, 48 secondswe set up inest. Let me just change the color. So we've set up inest. We created the first function. We explored the
1:46:551 hour, 46 minutes, 55 secondsingest developer server and we triggered a background job from Nex.js. Now let's go ahead and branch out and push this to GitHub. So let me see this chapter name.
1:47:061 hour, 47 minutes, 6 secondsThis is 04 background jobs. So I'm going to go ahead and click here. You can see
1:47:131 hour, 47 minutes, 13 secondsthat I have 10 unsaved files. And I also have this little database in the inest folder. If you're wondering what that is, I'm just guessing it's cache for the inest developer server.
1:47:241 hour, 47 minutes, 24 secondsAnd now I'm going to go and click on the main here. I will click create new branch and I will do 04 background jobs.
1:47:341 hour, 47 minutes, 34 secondsAfter I've done that, I'm going to stage all of my changes and I'm going to create a commit message
1:47:421 hour, 47 minutes, 42 secondsand I'm going to click commit. And then you can see that code rabbit extension if you remember from the previous
1:47:491 hour, 47 minutes, 49 secondschapter uh you can install this a completely free AI code extension which allows you to review all of those files.
1:47:581 hour, 47 minutes, 58 secondsSo let's go ahead and review all of these files and while this is doing its own thing which is most likely a background job on its own. So you can
1:48:061 hour, 48 minutes, 6 secondssee uh you can see background jobs every day right? You probably just didn't know they were called background jobs. While
1:48:141 hour, 48 minutes, 14 secondsthat is going on, let's go ahead and let's create a new pull request inside of our repository here. So, let me go
1:48:221 hour, 48 minutes, 22 secondsinside of pull requests here. Uh, new pull request.
1:48:261 hour, 48 minutes, 26 secondsUh, oh, looks like it won't push until uh this reviews. So, I'm going to go ahead and review first.
1:48:351 hour, 48 minutes, 35 secondsActually, it will. I just have to click publish branch. Yes, I forgot to click that. So, make sure you click publish branch. And you can see that this is still doing its own thing in the
1:48:441 hour, 48 minutes, 44 secondsbackground. And I think now that we have a new branch. There we go. I forgot to do that. My apologies. So, now we're going to have two uh AI reviews here.
1:48:531 hour, 48 minutes, 53 secondsOne is going to be from here and the other one is going to be from here. And you can see how cool it is that it can
1:49:001 hour, 49 minutesadd comments on my code locally here in my There we You can see fox fix duplicate
1:49:091 hour, 49 minutes, 9 secondsstep ID. So it noticed that all of my steps are called wait a moment uh which is very you know not useful uh when you
1:49:171 hour, 49 minutes, 17 secondswere reading inside of the ines developer server. So it already detected that for example. So you can see how
1:49:241 hour, 49 minutes, 24 secondscool it is and it also fixes some wrong things here. Payload mismatch with ingest function. This is of course not
1:49:331 hour, 49 minutes, 33 secondssomething that uh we need to fix right now simply because this is a demo. But it is very useful. As you can see, it
1:49:411 hour, 49 minutes, 41 secondsdetects pretty much everything. So if you don't want it here in your pull requests, you can have it here in your uh IDE.
1:49:531 hour, 49 minutes, 53 secondsAnd here we have our pull request summary which is pretty much identical
1:49:581 hour, 49 minutes, 58 secondsas you can see uh to the reextension for Visual Studio Code. You're going to see
1:50:061 hour, 50 minutes, 6 secondsin here we have fix duplicate step ids and you can see that here at the bottom I have the exact same issue here. So you can choose which one do you like more.
1:50:171 hour, 50 minutes, 17 secondsDo you like your pull request reviewed or do you want to submit clean pull requests by having this run before you
1:50:261 hour, 50 minutes, 26 secondspush a pull request? So in here I'm going to read through the pull request simply because we have the summary here.
1:50:331 hour, 50 minutes, 33 secondsSo we introduced an API endpoint to handle background jobs using inest. We added a button on the main page to
1:50:411 hour, 50 minutes, 41 secondstrigger a background job with real-time toast notification on success. We use this to visually measure how quickly the
1:50:491 hour, 50 minutes, 49 secondsnetwork request is finished in uh comparison to how long the background job actually lasts. Right? And this is
1:50:561 hour, 50 minutes, 56 secondswhat I like the most. I like the sequence diagram because it is exactly what we discussed in the beginning of
1:51:041 hour, 51 minutes, 4 secondsthe chapter. So the user clicks on invoke a background job. We send the invoke mutation with the text and then
1:51:121 hour, 51 minutes, 12 secondsour TRPC router which is our network request simply sends the event with that
1:51:201 hour, 51 minutes, 20 secondsdata. This can basically read as invoke a background job and the moment we do
1:51:271 hour, 51 minutes, 27 secondsthat we can send back the user. Okay, success. So this part right here is
1:51:351 hour, 51 minutes, 35 secondsidentical to what I wanted to achieve here. The user clicks, we send the network request, we forward the data to
1:51:441 hour, 51 minutes, 44 secondsa background job, and we immediately respond to the user so they can close the tab and move on. And the fun thing
1:51:521 hour, 51 minutes, 52 secondsabout this background jobs is the way Code Rabbit just reviewed my 10 files
1:51:581 hour, 51 minutes, 58 secondshere is by using a background job. They definitely didn't have a network request which went on for 30 seconds. They had a
1:52:071 hour, 52 minutes, 7 secondsbackground job which did this exact thing. So I went through this potential
1:52:141 hour, 52 minutes, 14 secondschanges. They are all very correct. But since this was just a demonstration, it makes no sense to fix them right now
1:52:211 hour, 52 minutes, 21 secondsbecause we will remove the whole page entirely uh in the first place. Right?
1:52:261 hour, 52 minutes, 26 secondsSo we are good to go with merging this pull request right here. I'm not going to delete my branch simply so I can go
1:52:361 hour, 52 minutes, 36 secondsback to this part whenever I want. Uh and let's go ahead now
1:52:431 hour, 52 minutes, 43 secondsright here. Let me close this. Let's go back to our main branch. Let's click this and let's synchronize our changes.
1:52:531 hour, 52 minutes, 53 secondsAnd after that, I'm going to click no on this. I'm going to go inside of my source control on the graph. And you can
1:53:011 hour, 53 minutes, 1 secondsee that I have 04 background jobs now merged right here. And you can see that I'm on the main branch. And I should
1:53:101 hour, 53 minutes, 10 secondshave access to my inest folder here, which basically means we fixed all these things. Perfect. I'm also not going to
1:53:181 hour, 53 minutes, 18 secondsdo uh anything regarding this code rabbit uh comments here simply because all of this was just a demonstration.
1:53:261 hour, 53 minutes, 26 secondsAmazing amazing job. Let's go ahead and mark this as complete now and see you in the next chapter when we
1:53:341 hour, 53 minutes, 34 secondsare going to extend the use of our background jobs with AI. Amazing amazing job.
Chapter 6: 05 AI Jobs
1:53:421 hour, 53 minutes, 42 secondsIn this chapter, working to implement AI background jobs. In order to do that, the first thing we're going to have to
1:53:501 hour, 53 minutes, 50 secondsdo is choose our AI provider. In here, I have added a list of all the options
1:53:571 hour, 53 minutes, 57 secondsthat we have and some comments for each of them. Starting with the best choice,
1:54:041 hour, 54 minutes, 4 secondswhich is Open AI. It is by far the most reliable, the most normal rate limit
1:54:111 hour, 54 minutes, 11 secondswith a fast reset and a very very good coding model. This is the coding model
1:54:181 hour, 54 minutes, 18 secondsthat I have chosen GPT4.1 and it is almost perfect. The absolute
1:54:261 hour, 54 minutes, 26 secondsbest coding model though is cloth specifically set 3.5 or 4. They are
1:54:351 hour, 54 minutes, 35 secondskings of coding models. The problem with anthropic is a very strict rate limit
1:54:421 hour, 54 minutes, 42 secondsand when you hit the rate limit it will take you longer than 24 hours for that rate limit to reset. So it's it is just
1:54:511 hour, 54 minutes, 51 secondsvery very annoying to work with. If you want to, you can choose anthropic, but you will almost certainly hit a rate
1:55:001 hour, 55 minuteslimit and you're going to have to either change the model or create a whole new organization and account. So, basically,
1:55:071 hour, 55 minutes, 7 secondsAnthropic allocates their resources to uh higher paying customers, right? Which are this very very large companies. So, it's not exactly suitable for tutorials.
1:55:181 hour, 55 minutes, 18 secondsAs per Grock or XAI, I'm not sure. I haven't worked with it. It is on the list of the supported AI models, so I
1:55:281 hour, 55 minutes, 28 secondsdon't know. I won't recommend it and I won't tell you not to use it. I I'm not sure. And as for Gemini or Google, the
1:55:361 hour, 55 minutes, 36 secondsgreat thing about Gemini is the amazing free tier. The biggest problem with it for our use case, it is just not good
1:55:441 hour, 55 minutes, 44 secondsfor calling tools. It will straight up be errors all around. So because of that at this moment I just don't recommend
1:55:511 hour, 55 minutes, 51 secondsit. Uh I've heard that Grock AI has free tier. So I would rather you use Grock
1:55:581 hour, 55 minutes, 58 secondsthan Gemini. So unfortunately at this point I cannot recommend Gemini. It is
1:56:061 hour, 56 minutes, 6 secondsokay for this simple chapter that we're going to do now, but later when we use AI for the thing we will actually need to use it for, it will simply not work.
1:56:171 hour, 56 minutes, 17 secondsSo if you really need a free tier, you can try and use Grock rather than Gemini.
1:56:231 hour, 56 minutes, 23 secondsThe absolute best choice and the choice that I will be using is Open AI, specifically this model. As I said,
1:56:301 hour, 56 minutes, 30 secondsthere is a chance we might hit the rate limit here, but the reset is around 2 seconds, which is completely fair and it
1:56:381 hour, 56 minutes, 38 secondswill happen rarely, only when we are doing some very very large uh tasks.
1:56:441 hour, 56 minutes, 44 secondsWith Enthropic we get the amazing results. It completely understands Nex.js ecosystem. It understands what
1:56:501 hour, 56 minutes, 50 secondschats and UI is. But once you hit a red rate limit and you will hit it very soon. It is almost impossible to get rid
1:56:581 hour, 56 minutes, 58 secondsof. You will almost be stuck in a rate limit. So in my opinion, choose Open AI.
1:57:051 hour, 57 minutes, 5 secondsIt is the simple best solution for this project. If that is possible for you, you will have the best uh experience
1:57:131 hour, 57 minutes, 13 secondsusing Open AI. And now I'm going to show you uh how you can find if any changes have been made regarding this uh if
1:57:231 hour, 57 minutes, 23 secondsyou're watching this tutorial in the future. So you can use the link in the screen uh again or link in the description to visit ingest and in here
1:57:321 hour, 57 minutes, 32 secondsgo to the documentation and then go ahead and find agent kit and in here go
1:57:401 hour, 57 minutes, 40 secondsahead and click on this support for openai anthropic and gemini or click on the models here. So in here you will see
1:57:501 hour, 57 minutes, 50 secondsall supported models as you can see open AAI anthropic Gemini and Grock as I said
1:57:581 hour, 57 minutes, 58 secondseven though Gemini is supported here I just wasn't able to get it to work if you want to you can try but I wasn't
1:58:061 hour, 58 minutes, 6 secondsable to get it to work. Anthropic worked amazingly, especially the 3.5ET versions, but the rate limits were very
1:58:151 hour, 58 minutes, 15 secondseasily hit. The Open AI, I initially tried with 4.0 and I really was not satisfied with the results. It's not
1:58:231 hour, 58 minutes, 23 secondsthat good. But even though it's not on this list, you can try 4.1. So, that is confirmed. I tested it myself and it
1:58:311 hour, 58 minutes, 31 secondsworks no problem and it's amazing. Not as good as Enthropic 3.5, but very very
1:58:371 hour, 58 minutes, 37 secondsgood and very reasonable rate limits. So what we have to do next is we have to create our account in one of these
1:58:451 hour, 58 minutes, 45 secondsproviders. I'm going to show you what I do with OpenAI and then you can do whatever you want to choose here. In my
1:58:541 hour, 58 minutes, 54 secondscase, I'm going to go ahead to platform.openai.com.
1:58:571 hour, 58 minutes, 57 secondsYou can use the link you can see on the screen or link in the description. Once you've created your account, you're going to go ahead into settings.
1:59:061 hour, 59 minutes, 6 secondsOnce you are in the settings, you're going to go into billing. In here, it is very important that you have a credit
1:59:131 hour, 59 minutes, 13 secondsbalance. So, maximum of $10, even less, will be enough for you to complete this tutorial many times, which will of
1:59:221 hour, 59 minutes, 22 secondscourse depend on how often you create uh new uh websites and uh apps with this project. but I barely spent that amount
1:59:311 hour, 59 minutes, 31 secondsand I tested pretty heavily. Once you have uh filled your account, you can go ahead and obtain an AI key. If you're
1:59:391 hour, 59 minutes, 39 secondsusing Grock or Gemini, you have a free tier, but as I said, Gemini just doesn't work. Uh and Grock, I'm not sure. You
1:59:471 hour, 59 minutes, 47 secondscan try. So, let's go ahead and let's create a new secret key. I'm going to call this Vibe development. I will use the default project and I will select
1:59:561 hour, 59 minutes, 56 secondsall permissions and I will create the secret key. I will then copy this key and then what we have to do is we have
2:00:022 hours, 2 secondsto add that to our IDE I mean to our project. As always ensure that you're on your main branch and you can synchronize
2:00:102 hours, 10 secondsthe changes just to make sure you're up to date. As you can see my last chapter was background jobs. So now what I'm going to go is I'm going to go inside of
2:00:192 hours, 19 secondsenvironment here and I'm going to create open AI here open AI API key and I will paste it
2:00:272 hours, 27 secondsinside like this. If you're using something else let me show you how to add that. So I'm going to go inside of
2:00:352 hours, 35 secondsthe inest uh agent kit documentation here and here you have it environment variable used for each model provider.
2:00:422 hours, 42 secondsIf you're using OpenAI, it is OpenAI API key. If you're using Anthropic, it's Enthropic API key. If you're using
2:00:502 hours, 50 secondsGemini, it is Gemini API key. Or if you're using Grock, it is XAI API key.
2:00:572 hours, 57 secondsSo, make sure that you've added one of those here. Perfect. Now that you have done that, let's go ahead and do the
2:01:042 hours, 1 minute, 4 secondsfollowing. Uh, go inside of the agent kit by ingest and go inside of installation. and let's go ahead and
2:01:122 hours, 1 minute, 12 secondsinstall inest agent kit. So, I'm going to go ahead and install this and I'm going to show you the version.
2:01:212 hours, 1 minute, 21 secondsOnce this has been installed, I'm just going to go inside of the package JSON and show you the version 0.8.3.
2:01:292 hours, 1 minute, 29 secondsThat's the version I'm working with.
2:01:312 hours, 1 minute, 31 secondsNow, let's go ahead and let's use the agent kit. In order to do that, I just want to do the following. Let's go ahead
2:01:382 hours, 1 minute, 38 secondsand do npm rundev. And let's go inside of source app folder page.tsx.
2:01:462 hours, 1 minute, 46 secondsAnd in here, what I'm going to do is the following. I'm going to add a simple input from components UI input. And
2:01:542 hours, 1 minute, 54 secondsabove this tpc methods, I will add value set value and a simple use state from react. Make sure you import that. I'm
2:02:032 hours, 2 minutes, 3 secondsthen going to give the input a value and on change a simple event calling set
2:02:102 hours, 2 minutes, 10 secondsvalue and setting it to event target value. You've probably done this 100
2:02:172 hours, 2 minutes, 17 secondstimes. And this will simply be uh it can stay invoke background job. It doesn't really matter. Great. So now let's go
2:02:262 hours, 2 minutes, 26 secondsahead and run npx inest cli latest dev.
2:02:322 hours, 2 minutes, 32 secondsSimply so we have both our app and the dev server running. And now let's go ahead and do the following. Let's go
2:02:392 hours, 2 minutes, 39 secondsinside of our inest functions here. And let's just remove this one. Leave this
2:02:462 hours, 2 minutes, 46 secondsone for 5 seconds like this. And change this to
2:02:532 hours, 2 minutes, 53 secondsum let's just say input. Let's call it that. And then I'm going to change this
2:03:002 hours, 3 minutesto be input as well. Actually I'm going to change it to be value. So we control it from this input here. I'm going to go
2:03:082 hours, 3 minutes, 8 secondsinstead of the invoke tRPC method. So it is inside of routers here. I will change this to be input.
2:03:152 hours, 3 minutes, 15 secondsI will change the input to be input.
2:03:182 hours, 3 minutes, 18 secondsWell, I just call that in a dumb way, didn't I? Why don't we just call it value? That would be better. Sorry. So
2:03:262 hours, 3 minutes, 26 secondslet's go inside of invoke change this to value input dov valueue and call this value and then make sure to save this
2:03:332 hours, 3 minutes, 33 secondsfile go back inside of the functions and change this to hello event data value.
2:03:402 hours, 3 minutes, 40 secondsSo let me show you the changes again inside of the page we added use state and the input with value and set value.
2:03:472 hours, 3 minutes, 47 secondsWe then added a control to this input with those fields and we modified slightly the invoke.mmutate to pass in
2:03:542 hours, 3 minutes, 54 secondsthe value to be the value from the state. We then modified our TRPC router to accept value in the Z object and
2:04:032 hours, 4 minutes, 3 secondswe've accepted we changed uh the ingests send to pass in value in the data object
2:04:102 hours, 4 minutes, 10 secondsand of course we modify the function to read dot value and we removed an extra waiting step.
2:04:182 hours, 4 minutes, 18 secondsSo now that you've done this let's go ahead and let's run our app on localhost 3000 and let's open our uh development
2:04:262 hours, 4 minutes, 26 secondsserver here. So now I'm going to call this uh test value and I will click invoke background job and then in here
2:04:342 hours, 4 minutes, 34 secondsin the running uh text I should see value test value here and in finalization hello test value. So exactly what we pass here. Perfect.
2:04:442 hours, 4 minutes, 44 secondsThat's a very good setup. Now that we have agent kit installed let's go ahead and do the following. in the inest documentation which is outside of the
2:04:532 hours, 4 minutes, 53 secondsengine agent kit you can find a very very simple example by going inside uh let me just find inest functions step
2:05:022 hours, 5 minutes, 2 secondsand workflows AI interference here and in here where they show you agent kit
2:05:092 hours, 5 minutes, 9 secondsfor the first time uh they show you this very very simple uh way of doing it so this is what we're going to do I'm going
2:05:172 hours, 5 minutes, 17 secondsto add the following import. So let's now go inside of inest functions here
2:05:252 hours, 5 minutes, 25 secondsand I'm going to add this agent agentic open AI as open AI and
2:05:332 hours, 5 minutes, 33 secondscreate agent from inest agent kit and then I'm going to go ahead and open
2:05:412 hours, 5 minutes, 41 secondsthis function. It's already opened, right? So basically I'm going to now write inside of here. You can leave this hello world. This can be unchanged.
2:05:482 hours, 5 minutes, 48 secondsLet's create a new agent like this.
2:05:532 hours, 5 minutes, 53 secondsSo let me just show you this. And you can remove this. It is directly open AI, right?
2:06:022 hours, 6 minutes, 2 secondsAnd you can remove the step here as well.
2:06:062 hours, 6 minutes, 6 secondsSo instead of writer, let's call this summarizer. The name will be summarizer.
2:06:142 hours, 6 minutes, 14 secondsYou are an expert summarizer.
2:06:182 hours, 6 minutes, 18 secondsYou summarize in two words. So something very obvious,
2:06:262 hours, 6 minutes, 26 secondsright? A very easy task. You can give it a model GPT40 if you're using Open AI.
2:06:322 hours, 6 minutes, 32 secondsAnd let me just remove the things I don't need for now. Let me remove the step from here since I don't need it. So
2:06:392 hours, 6 minutes, 39 secondsin here we open a summarizer agent like this. And since I'm using open AI, these
2:06:462 hours, 6 minutes, 46 secondsare the models that I can use. One of them is CH GPT40. If you import
2:06:522 hours, 6 minutes, 52 secondsanthropic from here, you can see that then you're going to have to choose one of these models. So
2:07:002 hours, 7 minutesjust pick the one you like. And same is true for XAI or Gemini, whatever you ended up using. So now we have to find a
2:07:072 hours, 7 minutes, 7 secondsway to invoke this summarizer with event data value.
2:07:142 hours, 7 minutes, 14 secondsAnd since you saw when I copied this import, I had to fix the invalid OpenAI import because I've copied it from here,
2:07:242 hours, 7 minutes, 24 secondsright? So it would be best if you follow the instructions for agent kit on the actual agent kit documentation. Again,
2:07:332 hours, 7 minutes, 33 secondsyou can find it right here under agent kit. I simply used this one because I thought it was a very similar example to what we discussed in the previous
2:07:412 hours, 7 minutes, 41 secondschapter with the summarizer, right? But I think it would be better for you to follow the agent kit documentation here because this is the one that is kept up
2:07:492 hours, 7 minutes, 49 secondsto date constantly. So please follow this one. So you can again go inside of the agents here and you can find this exact thing we just did. We created an
2:07:582 hours, 7 minutes, 58 secondsagent. We called it summarizer and we gave it uh a system prompt and then we gave it a model. So we did that
2:08:062 hours, 8 minutes, 6 secondscorrectly. Now what we have to do is we have to run it. So let's go ahead and do that right here. I'm going to go ahead
2:08:142 hours, 8 minutes, 14 secondsand add this summarizer summarizer.run like this. And let's go ahead and learn
2:08:222 hours, 8 minutes, 22 secondswhat to type here. So I'm going to go ahead and add summarize the following
2:08:302 hours, 8 minutes, 30 secondstext and I'm going to open back. So I can insert
2:08:362 hours, 8 minutes, 36 secondsevent data value like this. And now let's go ahead and add a weight here.
2:08:452 hours, 8 minutes, 45 secondsAnd now we have access to the output here. Uh so let me just see. I'm not sure if I know the API by default, but let me try output first in the array.
2:08:572 hours, 8 minutes, 57 secondsIs it uh like that? I'm not exactly sure. Let's try and let's just say success.
2:09:032 hours, 9 minutes, 3 secondsOkay, here. And let's rely on the console log. Or perhaps we can just return out the whole output like this.
2:09:112 hours, 9 minutes, 11 secondsMaybe this would be easier to work with.
2:09:142 hours, 9 minutes, 14 secondsSo we just created a very simple summarizer agent which is an expert summarizer and can summarize in two words. We imported open AAI and create
2:09:222 hours, 9 minutes, 22 secondsagent from inest agent kit new package that we have installed. We specified a GPT40 model. Another hint here uh I mean
2:09:322 hours, 9 minutes, 32 secondsjust I'm basically just repeating what we previously went over. make sure that your environment variables are properly
2:09:392 hours, 9 minutes, 39 secondsset because as you can see we did not define the API and variable here. So it will search for it itself. So the name
2:09:472 hours, 9 minutes, 47 secondsis very important. But if you want to name it differently for whatever reason you can do that and I think that inside you can pass the API key and then you
2:09:572 hours, 9 minutes, 57 secondscan call this you know API key if you want to or if it's not managing to find your environment variable for whatever reason.
2:10:062 hours, 10 minutes, 6 secondsLet's try this out now. So, I'm going to go ahead um and honestly, I don't know how this will perform. So, I'm going to
2:10:142 hours, 10 minutes, 14 secondscall this I am Antonio and I am a developer. Let's go ahead and try and doing that.
2:10:242 hours, 10 minutes, 24 secondsSo, in here, as you can see, it immediately finished and you can see the step was called summarizer and you can
2:10:312 hours, 10 minutes, 31 secondssee the content inside. So the content is you are an expert summarizer. You summarize in two words. And then we
2:10:392 hours, 10 minutes, 39 secondspassed in the role user summarize the following text. I am Antonio and I am a developer. And in here I think we can already see the output. And there we go.
2:10:492 hours, 10 minutes, 49 secondsThe output was Antonio developer. And if you actually look at the finalization step, I think that is exactly what you
2:10:562 hours, 10 minutes, 56 secondswill find. So output.content is Antonio developer. Amazing. So, we officially created our first AI background job.
2:11:092 hours, 11 minutes, 9 secondsSo, now just for fun, let's try and change it up just a little bit. How about we change the system prompt here?
2:11:172 hours, 11 minutes, 17 secondsActually, let's change the name of the agent to code agent. And let's call this code agent and call code agent.run.
2:11:272 hours, 11 minutes, 27 secondsAnd now we're going to say you are an expert Nex.js developer.
2:11:332 hours, 11 minutes, 33 secondsAnd let's go ahead and just say something like you write readable maintainable code.
2:11:432 hours, 11 minutes, 43 secondsAnd let's go ahead and also answer you write simple Nex.js
2:11:512 hours, 11 minutes, 51 secondssnippets like button component Nex.js and React
2:12:002 hours, 12 minutessnippets. Okay, let's just do that and then write the following snippet like this.
2:12:082 hours, 12 minutes, 8 secondsSo, this is still called hello world.
2:12:102 hours, 12 minutes, 10 secondsThat's perfectly fine. We don't have to change anything else. But let's just see what we've achieved now. For example,
2:12:172 hours, 12 minutes, 17 secondsI'm going to say uh create a button component.
2:12:242 hours, 12 minutes, 24 secondsI'm going to click invoke background job. And you can see this is a bit longer running task. And let's see what it created. I'm not really sure what the
2:12:322 hours, 12 minutes, 32 secondsoutput would be here, but here we have it. Here's a simple and reusable button component using Nex.js. And you can see
2:12:392 hours, 12 minutes, 39 secondshow it actually writes code. import react const button with props on click children type button class name. And it
2:12:482 hours, 12 minutes, 48 secondsreturns JSX button on click. It has class names. It uses tailwind. It added a class name prop. It has children in
2:12:572 hours, 12 minutes, 57 secondsthe button. export the default of the button. So basically a fully working button. So we are you can say halfway
2:13:062 hours, 13 minutes, 6 secondsthere, right? We just made AI create a React component. So the next step that
2:13:132 hours, 13 minutes, 13 secondswe have to learn is how to make it use tools and run this code snippet it just
2:13:202 hours, 13 minutes, 20 secondscreated inside a sandbox inside of a cloud environment that we can then show
2:13:272 hours, 13 minutes, 27 secondsto the user as a result. So that's what our next chapter will be about and I think that in the this chapter we've
2:13:362 hours, 13 minutes, 36 secondsdone what we aimed to do. So let me just check this. We chose our AI provider and
2:13:432 hours, 13 minutes, 43 secondswe've set up in justest agent kit and we even tried a very simple AI step. Right?
2:13:502 hours, 13 minutes, 50 secondsSo basically that's how you're going to write uh agent kit tools and we are then
2:13:572 hours, 13 minutes, 57 secondsonly going to extend it by introducing tools. One of the tool can be terminal usage. Another tool can be create files.
2:14:072 hours, 14 minutes, 7 secondsA third tool will be read files, right?
2:14:112 hours, 14 minutes, 11 secondsThat's what we're going to do. And then we're going to explore networks and routers. So we can keep the uh agent in
2:14:192 hours, 14 minutes, 19 secondsa execution loop. So it consist so it constantly creates new components until its task is finished. You saw that in
2:14:282 hours, 14 minutes, 28 secondsthe intro video of this tutorial. I had a lot of uh coding steps. That's by because it is in a execution loop until
2:14:372 hours, 14 minutes, 37 secondsit completes its task. So that's what the tools will be used for. We're then going to have the state history a bunch
2:14:452 hours, 14 minutes, 45 secondsof things and then finally we're going to have the finalization step where it will save to the database and it will uh
2:14:542 hours, 14 minutes, 54 secondssave the URL of the sandbox so we can show that to the user. So in order to advance further and create these tools
2:15:032 hours, 15 minutes, 3 secondsand things like that, we're going to have to establish our sandbox because without the sandbox, we can't work
2:15:102 hours, 15 minutes, 10 secondsright. So that will be our next step for this chapter. Uh we did a very good job.
2:15:162 hours, 15 minutes, 16 secondsWe created a very simple interface here on the front end and we are now able to call AI background jobs and we are able
2:15:252 hours, 15 minutes, 25 secondsto get some AI code right here. So later on when we actually connect this to a
2:15:322 hours, 15 minutes, 32 secondsproper network the function will say coding agent right you're going to see it's very very cool amazing uh so now
2:15:402 hours, 15 minutes, 40 secondswhat we have to do is we have to uh open a new branch and push to GitHub so let's go ahead and open 05 AI jobs branch I'm
2:15:502 hours, 15 minutes, 50 secondsgoing to go here and as you can see six files changed one of them was the ingest database upgrade which is Again, I'm
2:15:582 hours, 15 minutes, 58 secondsguessing some cache for the ingest developer server. So, in here, I'm going to create a new branch and I'm going to
2:16:052 hours, 16 minutes, 5 secondscall it 05 AI jobs. I'm going to stage all changes here. 05 AI jobs. And I'm
2:16:152 hours, 16 minutes, 15 secondsgoing to go ahead and click commit. And then I'm going to publish the branch. And if you want to, you can press yes.
2:16:242 hours, 16 minutes, 24 secondsAnd then this code rabbit uh free code rabbit extension will analyze all of these files. Or if you prefer, you can
2:16:322 hours, 16 minutes, 32 secondsgo to uh where we are now going to open our pull request. And in here we're going to have that very same review.
2:16:432 hours, 16 minutes, 43 secondsAnd here we have the code rabbit summary. So we added an input field allowing users to submit custom prompts
2:16:502 hours, 16 minutes, 50 secondsfor code generation. So you can see how it connected all of those separate entities of ours from the front- end
2:16:572 hours, 16 minutes, 57 secondsinput to the TRPC invocation of a background job to the actual content of a background job. And we now generate
2:17:052 hours, 17 minutes, 5 secondscode snippets dynamically using an AI agent specialized in Nex.js development.
2:17:112 hours, 17 minutes, 11 secondsSo in here we can see step by step we can see the sequence diagram as always.
2:17:162 hours, 17 minutes, 16 secondsYou can see how it now features the new agent kit right here.
2:17:202 hours, 17 minutes, 20 secondsAnd in here we have some potential issues. So you can see how it cares about our TRPC value because we are uh
2:17:292 hours, 17 minutes, 29 secondslacking any kind of validation. We're not even requiring a minimum length. So obviously it is telling us that that's something we should add of course and we
2:17:382 hours, 17 minutes, 38 secondswill later on. We're going to change our form schema entirely. So you don't have to worry about that. Right now it's just for demonstration purposes.
2:17:472 hours, 17 minutes, 47 secondsIn here it's recommending using constants instead of hardcoded strings and that is exactly something we will
2:17:542 hours, 17 minutes, 54 secondsdo. So later on I have prepared very very large system prompts which I have tested on which gave me the best
2:18:022 hours, 18 minutes, 2 secondsresults. So I will share them with you and then you will paste them in your app and you will be able to use them as constants.
2:18:112 hours, 18 minutes, 11 secondsAnd in here it again suggests some sanit sanitization and uh some other limits on
2:18:192 hours, 18 minutes, 19 secondsthe front end. Uh my apologies in the background job. I thought that this was the submit function. It is not. We will take care of that as well.
2:18:282 hours, 18 minutes, 28 secondsUh and yeah, no need to do anything else here because this will not look like this. We are going to modify it quite
2:18:372 hours, 18 minutes, 37 secondsheavily in the next few chapters when we introduce the actual agent network.
2:18:432 hours, 18 minutes, 43 secondsGreat. So I'm going to go ahead and merge this pull request. So 05 AI jobs.
2:18:492 hours, 18 minutes, 49 secondsI'm not going to delete the branch simply so I have everything here. And then I'm going to go inside of my IDE here and I'm going to go back inside of
2:18:572 hours, 18 minutes, 57 secondsmy main branch and I'm going to synchronize the changes like this. So everything is now up to date. I'm going
2:19:042 hours, 19 minutes, 4 secondsto select no for uh this trigger of the code rabbit extension this time simply because this is a merge which we just reviewed. Right. I'm going to open the
2:19:132 hours, 19 minutes, 13 secondsgraph here just for a sanity check to confirm that my last changes were 05 AI jobs and they are great. So that marks
2:19:222 hours, 19 minutes, 22 secondsthe end of this chapter and in the next chapter we're going to learn how to create uh online sandbox cloud sandboxes
2:19:312 hours, 19 minutes, 31 secondswhich run Nex.js JS applications which in the following chapters will be something our agents will work on and
2:19:382 hours, 19 minutes, 38 secondscreate new components and run terminal commands into. Amazing job and see you in the next chapter.
Chapter 7: 06 E2B Sandboxes
2:19:472 hours, 19 minutes, 47 secondsIn this chapter we are going to explore E2B sandboxes. This will be the environments where our AI will generate
2:19:562 hours, 19 minutes, 56 secondsfiles and create a working Nex.js application. In this chapter, our specific goal is to create an E2B
2:20:052 hours, 20 minutes, 5 secondsaccount, learn how to use their command line interface, and create a Docker file template for our Next.js project, and
2:20:132 hours, 20 minutes, 13 secondsthen push that template to E2B. And then we're going to preview that Nex.js
2:20:202 hours, 20 minutes, 20 secondsapplication inside a sandbox. So, we're not going to make AI create any new
2:20:272 hours, 20 minutes, 27 secondsfiles and run any terminal commands right now. The goal for this chapter is to learn more about the sandboxes, how
2:20:352 hours, 20 minutes, 35 secondsthey work, and basically to create a template that we are going to use moving on to uh create working Nex.js
2:20:452 hours, 20 minutes, 45 secondsapplications. So, we're going to start by creating an E2B account. You can use the link in the description or the link
2:20:532 hours, 20 minutes, 53 secondsyou can see on the screen to let them know you came from this video. As you can see, uh in short, E2B allows you to
2:21:022 hours, 21 minutes, 2 secondsrun AI generated code securely in your application. It's an opensource runtime for executing AI generated code in
2:21:102 hours, 21 minutes, 10 secondssecure cloud sandboxes. It is made for Agentic and AI use cases. And some of
2:21:172 hours, 21 minutes, 17 secondsthe uh uh some of their customers are Perplexity, Hugging Face, Manus, and
2:21:242 hours, 21 minutes, 24 secondseven Grock. So these are very very big names in AI here. And my experience with E2B was nothing short of amazing, right?
2:21:362 hours, 21 minutes, 36 secondsSo they are built for AI use cases. So for exact thing that we are building
2:21:432 hours, 21 minutes, 43 secondshere, it is generative UI. This is pretty much the thing that we will be building here. But they have an even
2:21:502 hours, 21 minutes, 50 secondsdeeper use case which I highly invite you to explore yourself.
2:21:562 hours, 21 minutes, 56 secondsSo let's go ahead and create an account and let's go in the dashboard.
2:22:012 hours, 22 minutes, 1 secondAfter you create an account, you will probably be redirected to your sandboxes which looks like this. And at the moment
2:22:102 hours, 22 minutes, 10 secondsyou will probably have zero sandboxes running. If you head into templates, you will probably have less templates than I
2:22:192 hours, 22 minutes, 19 secondsdo. You might have three. I have five templates because well, I explored E2B while I was developing this project. You
2:22:272 hours, 22 minutes, 27 secondscan see that I have this code with Antonio Nex.js thing. You don't have this. So, I have this because I tested
2:22:342 hours, 22 minutes, 34 secondsit. Same thing with this no-name template, right? You probably have desktop code interpreter and base. I
2:22:422 hours, 22 minutes, 42 secondsassume that's the things you have. You probably don't have these two. So, no worries about that. And I just want to
2:22:492 hours, 22 minutes, 49 secondsshow you uh inside of your budget, you should see your credits. So, you should have $100,
2:22:562 hours, 22 minutes, 56 secondsuh, free for your new account. And as you can see, I tested E2B pretty thoroughly. So, I I really really tested
2:23:052 hours, 23 minutes, 5 secondsit all day, every day, and I barely spent $9. So it is quite well optimized
2:23:132 hours, 23 minutes, 13 secondsfor tutorial making. So ensure that you have that in your budget. Make sure that you have the credits. Uh and now let's
2:23:222 hours, 23 minutes, 22 secondsgo ahead inside of the documentation here. And specifically let's go in the CLI installation.
2:23:302 hours, 23 minutes, 30 secondsSo you can use brew or you can use npm.
2:23:332 hours, 23 minutes, 33 secondsI used npm here. And once you do that, you should be able, my apologies for
2:23:402 hours, 23 minutes, 40 secondsthis, you should be able to run E2B, right? And you should see a bunch of options on how you can run it and you
2:23:482 hours, 23 minutes, 48 secondscan shut down your app, right? So basically E2B should become available after you install uh either via npm or
2:23:572 hours, 23 minutes, 57 secondsusing brew. So what we have to do next is we have to authenticate, right? So
2:24:032 hours, 24 minutes, 3 secondsE2B O login uh should open up. You can see that I am already logged in. So uh in here I get that
2:24:122 hours, 24 minutes, 12 secondsmessage. But you should get a not you probably won't get this message. Instead you will get redirected to E2B page and
2:24:202 hours, 24 minutes, 20 secondsfrom there you're going to have to uh approve the login and then you'll be good to go.
2:24:272 hours, 24 minutes, 27 secondsSo once you've logged in uh what I would suggest is try uh listing sandboxes or
2:24:342 hours, 24 minutes, 34 secondsjust try listing something just to confirm that you are logged in. So I have no running sandboxes. So this is my
2:24:412 hours, 24 minutes, 41 secondsmessage. I believe that if I wasn't logged in I would get some kind of error here. Right? So just make sure that at least you get a message like this which
2:24:502 hours, 24 minutes, 50 secondsmeans okay you're logged in but you have no running u you have no running sandboxes. Great. So now uh what we have
2:24:592 hours, 24 minutes, 59 secondsto do is we have to learn how to add a new template because right now you can
2:25:062 hours, 25 minutes, 6 secondssee that inside of our E2B here templates uh you probably have three of them as I said desktop code interpreter
2:25:142 hours, 25 minutes, 14 secondsand base. But what you need is a NextJS template. Now they do have their own Next.js template which you can use but I
2:25:232 hours, 25 minutes, 23 secondsdon't want you to do that. I want you to learn how to create your own template.
2:25:282 hours, 25 minutes, 28 secondsSo for this we're going to have to go into the second uh step. So we've created CLI and we've connected to our
2:25:352 hours, 25 minutes, 35 secondsaccount. Now we need to create a Docker file template. Now I have provided you with a GitHub repository with two files
2:25:442 hours, 25 minutes, 44 secondsthat we are going to need for this not because uh I don't want to write this with you but because we have to be very
2:25:512 hours, 25 minutes, 51 secondscareful about writing these files right so this is what I suggest we do now as always ensure that you're on your main
2:25:582 hours, 25 minutes, 58 secondsbranch you can synchronize changes just in case and then go inside of your source source folder here my apologies
2:26:062 hours, 26 minutes, 6 secondsoutside of source folder so completely outside create a new folder called sandbox templates like this and inside
2:26:152 hours, 26 minutes, 15 secondscreate a new folder which we're going to call nextjs and then in here you are going to create
2:26:222 hours, 26 minutes, 22 secondse2b docker file like this you don't have to install any extensions at least I didn't
2:26:302 hours, 26 minutes, 30 secondsuse any for this now this docker file has the content that you can find in the public repository sorry that which you
2:26:382 hours, 26 minutes, 38 secondscan access by using the link in the description or the link you can see on the screen and when you're in here you can access that file. So just go ahead and copy it entirely and paste it here.
2:26:492 hours, 26 minutes, 49 secondsAnd now we're going to go ahead and uh explain what it does. So the first thing we do is we set the environment. In our
2:26:562 hours, 26 minutes, 56 secondscase that's going to be node. After that we run a terminal command to install kernel. So we updated the system. We get
2:27:052 hours, 27 minutes, 5 secondsthe install method for curl and then well whatever else we need to do here.
2:27:102 hours, 27 minutes, 10 secondsI'm not too familiar with configuring docker environments but basically in this part we configure curl. After that
2:27:182 hours, 27 minutes, 18 secondswhat we do here is we copy another important file a bash script compile
2:27:252 hours, 27 minutes, 25 secondspage which we currently don't have. So let's create it. compile_page.sh.
2:27:322 hours, 27 minutes, 32 secondsMake sure to not misspell this because we need it right here. And you can find the content in the same
2:27:412 hours, 27 minutes, 41 secondsuh public repository here. I'm going to explain what this does as well. But for now, just make it like this.
2:27:492 hours, 27 minutes, 49 secondsAfter we copy this compile page and we put it in the environment, right, in
2:27:572 hours, 27 minutes, 57 secondsthis docker environment, we run this command on it to make it executable.
2:28:022 hours, 28 minutes, 2 secondsThen we change our directory to next.js app. And then inside of that next.js app, we run a command which you've
2:28:102 hours, 28 minutes, 10 secondsalready seen a couple of times. Create next app. So basically the same way we started this project, we are now
2:28:182 hours, 28 minutes, 18 secondscreating a docker which is going to start the project the same way. The versions I'm using are 15.3.3 with chat 2.6.3.
2:28:282 hours, 28 minutes, 28 secondsThe reason I'm using these versions is because when I started making this tutorial, uh those were the newest versions. You already know that now that
2:28:362 hours, 28 minutes, 36 secondsI'm recording this tutorial, there are newer versions than this. So, if you want to, you can upgrade, but I'm going to stay with these versions for now
2:28:452 hours, 28 minutes, 45 secondssimply because I know that they work for me. So, later on when we finish the project, you know, feel free to upgrade
2:28:522 hours, 28 minutes, 52 secondsthis to 7.0 and this to 7.0 zero and this to whatever is the newest version.
2:28:582 hours, 28 minutes, 58 secondsBut for now, I want to stick with these versions because they worked for me initially. Now let's explain these flags. So why do I add d- yes after npx
2:29:072 hours, 29 minutes, 7 secondsand why do I add d- yes after create next app? The reason I'm doing that is because you have to remember these
2:29:152 hours, 29 minutes, 15 secondscommands will be running in a container in a dockerized container which means no user will be able to interact with them.
2:29:222 hours, 29 minutes, 22 secondsRemember when we started our Nex.js application, we had a bunch of questions. Do you want to use tailwind?
2:29:272 hours, 29 minutes, 27 secondsDo you want to use slint? Do you want to use this that so because of that uh I have to uh just agree to all of those
2:29:352 hours, 29 minutes, 35 secondsthings so the terminal doesn't hang right? So it doesn't block it can keep
2:29:422 hours, 29 minutes, 42 secondsmoving forward because if it blocks it will not work. That's why we have to add both d- yes in front of npx and in front
2:29:512 hours, 29 minutes, 51 secondsof our command because npx might ask you to upgrade right so we will also agree
2:29:582 hours, 29 minutes, 58 secondsto that right whatever you ask me I agree to and same is true for running chaten in it and for adding all shatzen
2:30:072 hours, 30 minutes, 7 secondscomponents and then what we do is the following we move the content of that new folder
2:30:142 hours, 30 minutes, 14 secondsnextjs app where we just added Nex.js and all of its components and we move that entire content into home user
2:30:232 hours, 30 minutes, 23 secondsdirectory and then we remove the old folder. The reason we do that is simply because it is easier for AI to
2:30:302 hours, 30 minutes, 30 secondsunderstand that the the place where it's located because initially it will be loaded here. We just tell it wherever
2:30:382 hours, 30 minutes, 38 secondsyou are this is where you have the next.js application. You don't have to go to any other directory. Trust me, that is much easier for nextj for an AI
2:30:472 hours, 30 minutes, 47 secondsto understand because otherwise it will hallucinate things. This way it's just easier to work with. So you might be wondering why did we then even open a
2:30:562 hours, 30 minutes, 56 secondsnew folder if we're just going to bring all the stuff back here? Because if you try to initialize this command, the dot
2:31:052 hours, 31 minutes, 5 secondsbasically means in this folder. If you try to do that inside of home user, it would fail because in order to initialize a next app, it needs to be an
2:31:142 hours, 31 minutes, 14 secondsempty folder and home user has some hidden files, right? So it's never really empty. That's why we needed to do
2:31:222 hours, 31 minutes, 22 secondsthis trick. So that is basically our docker file. Now let's explain the compile page. So the compile page is a
2:31:302 hours, 31 minutes, 30 secondslittle trick that we are going to use to ensure that the next.js JS application is running and that the root page is
2:31:372 hours, 31 minutes, 37 secondscompiled. So basically in here we have a function called ping server which uses curl which we install right here and we
2:31:452 hours, 31 minutes, 45 secondsare attempting to ping localhost 3000 and we are doing an iteration of 20 uh
2:31:522 hours, 31 minutes, 52 secondsI'm not sure not too familiar with the bash shell language to tell you if this is seconds milliseconds I'm not sure but
2:31:592 hours, 31 minutes, 59 secondsbasically it's more than enough time for the server to start. So it gives it 20 attempts, right, to try and get a 200
2:32:082 hours, 32 minutes, 8 secondsresponse. And once it does, it simply uh uh marks it as done. And then it runs
2:32:162 hours, 32 minutes, 16 secondsthat method ping server and it goes inside of home user where we just said that we create this project and it runs
2:32:252 hours, 32 minutes, 25 secondsnpx nextdev- turboac.
2:32:292 hours, 32 minutes, 29 secondsSo the turbo pack is uh really cool here because it speeds up the uh the start of the dev server. So it's actually very useful in this case.
2:32:392 hours, 32 minutes, 39 secondsGreat. So once you have these two things, the second part is very important and that is that you set up Docker inside of your project.
2:32:532 hours, 32 minutes, 53 secondsSo here I am on the Docker landing page.
2:32:562 hours, 32 minutes, 56 secondsYou can use the link you can see on the screen to let them know you came from this video. Uh, and basically the way I set up Docker in my project is by
2:33:042 hours, 33 minutes, 4 secondsdownloading Docker Desktop. I use a MacBook, so I download it for Apple Silicon. If you use Windows, you choose
2:33:122 hours, 33 minutes, 12 secondsyour architecture here. Or if you use Linux, uh, well, you probably know what you're doing then. So, after you've done
2:33:182 hours, 33 minutes, 18 secondsthat, make sure that you have Docker uh, installed. So, in here, let me just try and open it back here. Uh since if I go
2:33:272 hours, 33 minutes, 27 secondsinside of uh let me just try and find the documentation here. Docker desktop.
2:33:352 hours, 33 minutes, 35 secondsLet's go into overview. And in here somewhere we should have setup install. And in here, there we go.
2:33:442 hours, 33 minutes, 44 secondsSo in here we have some deeper documentation here. Uh on on Mac and on Linux it's pretty straightforward, right? If you install it uh with a DMG,
2:33:532 hours, 33 minutes, 53 secondsit will add it to the terminal uh as well. But if you don't, here's how you can add it from terminal as well. Also, if you want to, you can use orb stack.
2:34:032 hours, 34 minutes, 3 secondsThat's a Docker alternative. All right.
2:34:062 hours, 34 minutes, 6 secondsBut the reason I kind of don't know how to explain how to install Docker is because I don't know if I'm talking to a person who has a Windows, who has Linux,
2:34:142 hours, 34 minutes, 14 secondsor who has Mac OS, right? So that's why I'm kind of don't want to give you too much information and I don't want to tell you something incorrectly but
2:34:222 hours, 34 minutes, 22 secondsbasically try to research yourself you know uh what you are using right so try
2:34:302 hours, 34 minutes, 30 secondsand install that and your goal is basically to be able to have docker available
2:34:392 hours, 34 minutes, 39 secondsright that's kind of the goal you should not get an error in docker and on windows In here, you can see
2:34:482 hours, 34 minutes, 48 secondspretty similar instructions. Uh I'm not too sure what this means. I don't use Windows. Uh but in here, I think it is
2:34:562 hours, 34 minutes, 56 secondsimportant for you to be able uh to run Docker from the command line as well. Uh
2:35:042 hours, 35 minutes, 4 secondsbut at minimum, you should be able you you need to install the Docker desktop package and you should be able to start
2:35:122 hours, 35 minutes, 12 secondsthat application at minimum. That's the minimum thing that I expect, right? So now I'm going to go ahead and start my
2:35:202 hours, 35 minutes, 20 secondsDocker application. Actually, the first thing I'm going to do is I'm going to try without Docker started simply so uh we can test if uh if the command fails.
2:35:322 hours, 35 minutes, 32 secondsSo I want to show you what happens if the command fails first. So let's go ahead inside of SDK reference CLI
2:35:402 hours, 35 minutes, 40 secondstemplate and let's do template build. So in here we have E2B template build command. And the way we're going to do
2:35:472 hours, 35 minutes, 47 secondsthis is the following. Go inside of sandbox templates and go inside of next.js like this.
2:35:572 hours, 35 minutes, 57 secondsSo I'm going to try and run B2B template build here and I'm going to give this a name and I'm going to call it vibe
2:36:042 hours, 36 minutes, 4 secondsnext.js test. So that will be the first thing I'm going to try. So in here you can see how uh it found the E2B docker
2:36:142 hours, 36 minutes, 14 secondsfile and it requested build for the sandbox template ID with this name login succeeded and then it attempted to run docker build and then it failed. Right?
2:36:262 hours, 36 minutes, 26 secondsSo this is the error you will see if your docker is not running. So now I'm going to start docker for me very simply
2:36:352 hours, 36 minutes, 35 secondsI'm just going to open the application docker and then in here uh I will have docker desktop available. You can see
2:36:432 hours, 36 minutes, 43 secondsdocker desktop is now running. So uh let's see if that will be enough for me to run this and try it. So let me see.
2:36:522 hours, 36 minutes, 52 secondsE2B template build. Let's see this time.
2:36:552 hours, 36 minutes, 55 secondsAnd there we go. So all I had to do was install Docker Desktop and I need to make sure that I have Docker Desktop
2:37:042 hours, 37 minutes, 4 secondsrunning. That's the important thing for me. So you can actually stop this now because it will take some time to build
2:37:122 hours, 37 minutes, 12 secondsbut it's not going to work correctly. I just wanted to show you how it looks like when your Docker is not running.
2:37:172 hours, 37 minutes, 17 secondsBasically this is the error you will get. So just make sure you have Docker running. You don't even have to create any image on Docker or nothing. We are
2:37:252 hours, 37 minutes, 25 secondsdoing that now. Right? So just make sure you have Docker installed on your system and make sure you open whatever application you installed. It can be
2:37:342 hours, 37 minutes, 34 secondsOrbstack, it can be Docker Desktop, right? Uh I'm not sure if you need it inside of here, right? As I'm I I keep
2:37:412 hours, 37 minutes, 41 secondssaying that because I don't know what machine you're on. I have it inside of my terminal as well. I'm not sure if that matters, right? Because you can see
2:37:502 hours, 37 minutes, 50 secondsthat in here it does run the Docker command. So it probably does matter the fact that I have it inside of my
2:37:592 hours, 37 minutes, 59 secondsterminal. So uh make sure that you have Docker CLI installed as well. If you don't, you might even see a different
2:38:062 hours, 38 minutes, 6 secondserror showing here. Great. But once you get to this part, once you get to the fact that after Docker build is being fired, you start seeing these kinds of
2:38:152 hours, 38 minutes, 15 secondsmessages, right? Something resolving, something transferring, it means the Docker is working. And then you can cancel it using command C or control C.
2:38:262 hours, 38 minutes, 26 secondsUh and then we're going to run a proper command with a proper uh start command.
2:38:342 hours, 38 minutes, 34 secondsSo now in here, here's what we have to do this. Basically uh we have to add
2:38:422 hours, 38 minutes, 42 secondsE2B template build-ame vibe next.js js
2:38:502 hours, 38 minutes, 50 secondstest two dash cmd and you have to add compiled_page.sh.
2:38:572 hours, 38 minutes, 57 seconds[Music]
2:39:002 hours, 39 minutesSo now uh let's go ahead and run this again. So I'm just going to wait to see this succeed. There we go. And now I'm
2:39:092 hours, 39 minutes, 9 secondsgoing to pause until this part completes because it is a little bit long. you know it needs to upgra it needs to
2:39:162 hours, 39 minutes, 16 secondsupload the entire Nex.js project there with all the packages and everything and it needs to you know install curl and
2:39:242 hours, 39 minutes, 24 secondsall of that. So I will pause until some interesting things show here so you can compare with your process as well.
2:39:332 hours, 39 minutes, 33 secondsSo here's an interesting part. Uh it is running npx create next app and you can see my result typescript types node
2:39:402 hours, 39 minutes, 40 secondstypes react tailwind CSS. So it is obviously successfully installing this with no questions asked. That's why
2:39:482 hours, 39 minutes, 48 secondsthese parts were so important because if we didn't include this uh it would be blocked by waiting for the user input, right? That's why that is important.
2:40:002 hours, 40 minutesIt was also successful in copying compile page.sh. So we did this correctly as well.
2:40:102 hours, 40 minutes, 10 secondsNow I am running chaten in it. I'm selecting neutral color. I'm forcing everything to install here. Right? So
2:40:182 hours, 40 minutes, 18 secondsI'm just making sure that I'm not adding any prompts. And there we go. It's succeeding. It uh checked the reg
2:40:242 hours, 40 minutes, 24 secondsregistry. It found app globals CSS. And now it's installing all dependencies. So so far so good.
2:40:342 hours, 40 minutes, 34 secondsNow it is adding all components. You can see again very successful. It found global CSS. It is upgrading it and it is
2:40:432 hours, 40 minutes, 43 secondsinstalling all of those radics packages which we use for our component. So it's we are basically doing the same setup we did for our project but this time inside of a docker container.
2:40:552 hours, 40 minutes, 55 secondsGreat. And now it has finished that part. And now it is moving the entire content from Nex.js app into home user
2:41:032 hours, 41 minutes, 3 secondsand removing the old folder. Now this is this command actually failed for me a lot during the initial development of
2:41:112 hours, 41 minutes, 11 secondsthis project and the reason was actually because I was missing this d- yes commands. So if this part is successful
2:41:182 hours, 41 minutes, 18 secondsfor you as it is to me right now you have pretty much succeeded in doing this. So if this part fails for you it
2:41:262 hours, 41 minutes, 26 secondsis almost certainly because uh you forgot to add d- yes to some of this.
2:41:322 hours, 41 minutes, 32 secondsBasically, it's hanging on some command and it didn't create the Nex.js app. Uh, great. So, now what's happening, I
2:41:402 hours, 41 minutes, 40 secondsthink, you know, I'm I'm new to Docker as well. I've briefly experienced it before, but now what's happening is obviously pushing all of that data to
2:41:492 hours, 41 minutes, 49 secondsthe Docker container on the E2B app.
2:41:542 hours, 41 minutes, 54 secondsAnd just to confirm, in case you're wondering, this part does take a while.
2:42:012 hours, 42 minutes, 1 secondAfter that part has completed, it is triggering the build. And here you can track the progress of the build itself.
2:42:102 hours, 42 minutes, 10 secondsSo this is more specifically a build of the docker image. We're not building the Nex.js app, right? Those are two
2:42:172 hours, 42 minutes, 17 secondsdifferent things. Our Nex.js uh app is just a development instance. We are building the Docker image here.
2:42:272 hours, 42 minutes, 27 secondsAll right. So mine uh failed. So I will uh it looks like it failed because
2:42:352 hours, 42 minutes, 35 secondsit is missing the compiled_page.sh
2:42:382 hours, 42 minutes, 38 seconds[Music]
2:42:402 hours, 42 minutes, 40 secondscommand not found. And that's definitely because of this. I should have uh done this differently. I have to find a way to execute this in a different way.
2:42:512 hours, 42 minutes, 51 secondsSomething like this. I will test it out so I know for sure and then I will tell you the correct command.
2:43:002 hours, 43 minutesSo I think that the start command should be this forward slashcompilepage.sh.
2:43:082 hours, 43 minutes, 8 secondsAnd let me just show you something. Uh regardless if this part fails or not. I mean depending on how I edit this video,
2:43:162 hours, 43 minutes, 16 secondsperhaps I told you not to even run this command in advance, right? But you can see that I have something called e2b.tl
2:43:222 hours, 43 minutes, 22 secondsgenerated in here. You can see my start command is compiled_page.sh.
2:43:282 hours, 43 minutes, 28 secondssh. So I have two ways of changing this now. I can either change it here or I can change it here. But you can see how
2:43:352 hours, 43 minutes, 35 secondsit remembered all of these things. But for now basically this should be the working command. So I'm going to pause and try it again.
2:43:472 hours, 43 minutes, 47 secondsAnd this time it worked. You can see that right here it is waiting for the template to be ready and then it is
2:43:542 hours, 43 minutes, 54 secondswaiting for server to start a couple of times and then finally we can see next.js 15.3
2:44:012 hours, 44 minutes, 1 secondand that signals that it is done template is ready pausing sandbox template. So be very very careful here.
2:44:102 hours, 44 minutes, 10 secondsDuring my initial development of this project, I was able to get to template is ready and pausing sandbox template
2:44:172 hours, 44 minutes, 17 secondsand uploading template. But I actually never saw this part. Let me just go up here. It is very important that you can
2:44:252 hours, 44 minutes, 25 secondssee this part in your terminal because this means that it's actually working.
2:44:292 hours, 44 minutes, 29 secondsIf you can't see this everywhere, even with this saying it's ready, it will actually not be working. So just make
2:44:382 hours, 44 minutes, 38 secondssure you did this correctly. And also on the second run, this runs much much faster because half of the I mean the entire project is already uploaded,
2:44:462 hours, 44 minutes, 46 secondsright? So you won't have to wait that long. But basically, this was the final command E2B template build. And the cool
2:44:542 hours, 44 minutes, 54 secondsthing now is that you actually get instructions on how to use this. You can see that you can use the name or you can
2:45:012 hours, 45 minutes, 1 seconduse the ID. So I don't know what this actually tells us. Is the name unique or not? I think it might be unique per
2:45:072 hours, 45 minutes, 7 secondsteam. uh which then again you know uh depends if you're going to publish this or not. Uh what does publishing mean?
2:45:162 hours, 45 minutes, 16 secondsWell, I'm going to explain in a second.
2:45:182 hours, 45 minutes, 18 secondsBut basically now you can go find your E2B.l file and in here you can see all the information team ID start command
2:45:262 hours, 45 minutes, 26 secondsdocker file template name template ID and from now on if you ever want to do any changes to here you can just do
2:45:332 hours, 45 minutes, 33 secondstemplate build. That's it. And you can just modify whatever you want from here.
2:45:382 hours, 45 minutes, 38 secondswant to change the name just change the name here and run template build. So right that the in the tommo file that's basically where the configuration is
2:45:462 hours, 45 minutes, 46 secondsnow. Uh great. So before we move on now let's go ahead inside of E2B inside of your project go inside of templates and
2:45:542 hours, 45 minutes, 54 secondsrefresh. And now if you have done this correctly you should see vibe next.js test dash2 right here. And you can see
2:46:042 hours, 46 minutes, 4 secondsthat this says private. So just to make things easier for now, I want you to do the following. I want you to copy the ID
2:46:112 hours, 46 minutes, 11 secondsof vibe next.js test 2 and I want you to go and go to E2B template publish here.
2:46:212 hours, 46 minutes, 21 secondsAnd let's go ahead and do the following.
2:46:232 hours, 46 minutes, 23 secondsSo actually we need the team ID. My apologies. So just go ahead and find I think it's inside of your team here.
2:46:312 hours, 46 minutes, 31 secondsFind the team ID and copy it. And inside of here. So you are inside of this uh Nex.js template. So you can just do E2B
2:46:392 hours, 46 minutes, 39 secondstemplate publish D and then paste the ID of the team and this will make the template public to everyone outside of
2:46:472 hours, 46 minutes, 47 secondsyour team. The reason you're doing this is simply because uh it will be easier to connect to it. At least that was my experience. Later on we can easily
2:46:552 hours, 46 minutes, 55 secondsunpublish it or you can delete it. The reason this is kind of uh you know you should be wary of this. You should not
2:47:022 hours, 47 minutes, 2 secondsshare your uh template ID with anyone because I can use it and I can uh use your credits, right? I can spend your
2:47:112 hours, 47 minutes, 11 secondsbudget here. So, be careful. Make sure that only you know about this and later I will make sure to find a way to
2:47:182 hours, 47 minutes, 18 secondsunpublish this so that only you and your team can use this. Great. So now what should happen is inside of your
2:47:252 hours, 47 minutes, 25 secondstemplates when you hit refresh and find that vibe nextjs test 2 it should say
2:47:322 hours, 47 minutes, 32 secondspublic under visibility and that basically means you did it. This is now working. So now what we have to do is
2:47:402 hours, 47 minutes, 40 secondsthe last part of this chapter. We did this we did this and we even did this.
2:47:452 hours, 47 minutes, 45 secondsIt's time to actually start this sandbox. Right. Let's see if that next.js JS app is actually working or
2:47:532 hours, 47 minutes, 53 secondsnot. And lucky for us, this is quite easy to do. So, what we're going to do now is we're going to go inside of
2:48:012 hours, 48 minutes, 1 secondsource, inside of ingest, and inside of functions here. Uh, and I think I completely forgot, but yeah, we have to
2:48:092 hours, 48 minutes, 9 secondsuh we have to install uh E2B. I think I forgot that entirely.
2:48:152 hours, 48 minutes, 15 secondsSo let's add E2B code interpreter to our project. And make sure you go in the root of your app like this. And I'm
2:48:232 hours, 48 minutes, 23 secondsgoing to show you the version of this package now.
2:48:272 hours, 48 minutes, 27 secondsSo let's go inside of package.json quickly. So it is 1.5.1. That's my version.
2:48:352 hours, 48 minutes, 35 secondsNow let's go inside of our functions here and let's import sandbox from E2B code interpreter
2:48:432 hours, 48 minutes, 43 secondspackage which we just installed. And then what we're going to do is the following. Let's go ahead and before we
2:48:512 hours, 48 minutes, 51 secondscreate an agent, let's do const sandbox ID await step.r run. And we can extract the step from here. We removed it in the
2:49:002 hours, 49 minutesprevious chapter I believe. So step.run run get sandbox ID. That will be the first step we're going to run.
2:49:072 hours, 49 minutes, 7 secondsAnd in here, we're going to attempt to get the sandbox by doing await sandbox.create.
2:49:162 hours, 49 minutes, 16 secondsAnd inside of here, you will simply pass the template ID. So in your case, this will be vibe next.js test 2. Now, you
2:49:252 hours, 49 minutes, 25 secondswill probably have a different name for this because I think if they allow public templates, there probably has to be some kind of originality here, I
2:49:342 hours, 49 minutes, 34 secondsguess. So, once you've created that, go ahead and simply do await sandbox set timeout. Uh, actually, you don't have to
2:49:422 hours, 49 minutes, 42 secondschange the timeout. I'm going to explain what the timeout is in a second, but for now, let's just do sandbox.box ID. So
2:49:502 hours, 49 minutes, 50 secondsthis will be the step which we are actually going to preserve here and keep throughout uh this entire project because we will always need the sandbox
2:49:572 hours, 49 minutes, 57 secondsID. And now that we have the sandbox ID, uh what we have to do is we have to create a sandbox URL. So after the agent
2:50:072 hours, 50 minutes, 7 secondsfinishes, let's pretend that this agent now actually connected to this sandbox and then added a bunch of files. Then what we would do is we would generate
2:50:162 hours, 50 minutes, 16 secondsthe sandbox URL using await step.r run get sandbox URL.
2:50:242 hours, 50 minutes, 24 secondsIn here we would get the sandbox again using await. And then in here uh we need to create a util called get sandbox. So
2:50:332 hours, 50 minutes, 33 secondslet me just go ahead inside of the ingest and create utils. DS and export asynchronous function get sandbox
2:50:422 hours, 50 minutes, 42 secondswhich accepts sandbox ID which is a type of string.
2:50:472 hours, 50 minutes, 47 secondsLet's get the sandbox using await sandbox from E2B code interpreter.connect
2:50:542 hours, 50 minutes, 54 secondssandbox id like this and then in here just return sandbox. So basically I'm
2:51:032 hours, 51 minutes, 3 secondswriting a function to make this uh reusable. You're going to see why later.
2:51:082 hours, 51 minutes, 8 secondsAnd also let's import this like so. So the structure now that you have get sandbox you can do await get sandbox
2:51:152 hours, 51 minutes, 15 secondshere and pass in uh the sandbox id and then return sandbox.get
2:51:242 hours, 51 minutes, 24 secondshost 3000. So, uh, basically what this is, it creates the host under the port 3000.
2:51:332 hours, 51 minutes, 33 secondsWhy 3000? Well, we know why. Because of our uh, sandbox template, right inside
2:51:412 hours, 51 minutes, 41 secondsof here, we know it's running on port 3000. That's the only port it can run on. It's a Nex.js app. And this is
2:51:482 hours, 51 minutes, 48 secondsactually only the host. So, let's do con host to be that. and then return open back
2:51:572 hours, 51 minutes, 57 secondshttps and then post like this and then in here
2:52:052 hours, 52 minutes, 5 secondssandbox URL like this. Are you ready to try this out now? Make sure you have
2:52:122 hours, 52 minutes, 12 secondsimported the get sandbox right. So let's go ahead and do it. npm rundev in one
2:52:182 hours, 52 minutes, 18 secondsnpx ingest cli dev in the other. It is running perfect. Let's go to localhost
2:52:252 hours, 52 minutes, 25 seconds3000. Make sure you have your ines development server here. And I'm just going to do uh create a button component again. Why not?
2:52:362 hours, 52 minutes, 36 secondsAnd let's go ahead and see what's going on here. Oh, so there we go. It is failing. So something uh you can see the
2:52:442 hours, 52 minutes, 44 secondserror. Invalid API key. So we can cancel this run because I forgot to add the API key. Uh I'm constantly not reading this
2:52:532 hours, 52 minutes, 53 secondsthe way I should. So let me just go ahead uh and add click on API key here.
2:53:002 hours, 53 minutesUh and we can find it at the dashboard.
2:53:032 hours, 53 minutes, 3 secondsSo let's go back inside of our dashboard here. Uh you can see I already have some. So I'm going to click create new key here. And you can find it here under API keys. So create new key vibe dev.
2:53:152 hours, 53 minutes, 15 secondsAnd I'm going to click create key here.
2:53:182 hours, 53 minutes, 18 secondsI'm going to copy that key. And let's go inside of environment here. E2B and let's add it.
2:53:272 hours, 53 minutes, 27 secondsSo it's going to be E2B API key like that. And if you add it like this,
2:53:362 hours, 53 minutes, 36 secondsI don't think you have to explicitly add it anywhere because this is what it will be looking for. So, uh I'm not sure if I
2:53:452 hours, 53 minutes, 45 secondscan find the documentation for this specifically, but I think that now it will be working.
2:53:502 hours, 53 minutes, 50 secondsLet's try again. Invoke another background job. And let's see, do we get any errors or do we successfully get a
2:54:002 hours, 54 minutesrunning template? We're going to see get sandbox ID has succeeded. And now it's doing the coding agent thing. It's generating some code and now it's
2:54:082 hours, 54 minutes, 8 secondsgrabbing the sandbox URL. And in the finalization here, you should see the output of an AI who created a component
2:54:152 hours, 54 minutes, 15 secondsand you should see an actual URL. Let's try and visit this URL. Fingers crossed.
2:54:222 hours, 54 minutes, 22 secondsAnd we should now see a Nex.js application. And we are a completely empty Nex.js application hosted in E2B
2:54:322 hours, 54 minutes, 32 secondsstarted from our background job. You are halfway there. you can already uh kind
2:54:392 hours, 54 minutes, 39 secondsof tell what the next steps are. We are going to dive deeper into E2B sandbox API now and we're going to learn how to
2:54:482 hours, 54 minutes, 48 secondsrun terminal commands, how to create files, how to read files, basically how to translate what it's now doing here
2:54:562 hours, 54 minutes, 56 secondsvery simply as an output into actually modifying the code in this sandbox.
2:55:032 hours, 55 minutes, 3 secondsAmazing, amazing job. I know this chapter wasn't too easy. a lot of new things, Docker, Docker files, all of those things. But if you've come this far, you did it. Amazing, amazing job.
2:55:152 hours, 55 minutes, 15 secondsSo, let's go ahead and mark this as complete. And yes, this uh will stop working after some time and that's
2:55:232 hours, 55 minutes, 23 secondscompletely normal. So, after about 5 minutes, I think by default, uh this link will show an error, right? So, that's normal. Don't worry, we can change the timeout later.
2:55:342 hours, 55 minutes, 34 secondsSo now let's go ahead uh and let's merge this. So I'm going to go ahead
2:55:412 hours, 55 minutes, 41 secondsand I'm going to open my source control here. I'm going to go ahead and create a new branch
2:55:482 hours, 55 minutes, 48 seconds06 E2B sandbox. Let me just confirm that's my chapter name. So sandboxes.
2:55:552 hours, 55 minutes, 55 secondsI'm going to go ahead and stage all of my changes including the Docker files of course.
2:56:012 hours, 56 minutes, 1 secondAnd I'm going to do 06 E2B sandboxes here. And I'm going to commit.
2:56:082 hours, 56 minutes, 8 secondsAnd I'm going to publish my branch.
2:56:102 hours, 56 minutes, 10 secondsAgain, there is a free code rabbit extension you can use if you want to review your changes and learn about all the things you can do differently in
2:56:192 hours, 56 minutes, 19 secondsyour code. So if you want to, you can click review all changes. Or if you're like me and you like to see uh the
2:56:272 hours, 56 minutes, 27 secondssummary and all other things, you can use their pull request function. So now I'm opening my new pull request here which I will merge. So let's go ahead and review it.
2:56:382 hours, 56 minutes, 38 secondsAnd here we have the code summary. So what I'm very impressed with is how well Code Rabbit understands what we just
2:56:452 hours, 56 minutes, 45 secondsdid. So we introduced a sandbox environment for Nex.js allowing users to create and access isolated Nex.js
2:56:542 hours, 56 minutes, 54 secondsinstances. We added functionality to generate and return a unique URL for accessing sandbox next.js app. So quite
2:57:022 hours, 57 minutes, 2 secondsimpressive that it understood the entire context of this pull request with nothing more than files. Very very very
2:57:102 hours, 57 minutes, 10 secondsnice. So in here we even have an entire sequence diagram demonstrating how that happens. So once the user triggers a
2:57:172 hours, 57 minutes, 17 secondshello world background job, we go ahead and create a new sandbox with our template name. After that, we return the
2:57:252 hours, 57 minutes, 25 secondssandbox ID and we have it for that session of that background job. We then use our new package E2B code interpreter
2:57:312 hours, 57 minutes, 31 secondsto return a sandbox instance and from it we extract the sandbox URL. Amazing. And
2:57:382 hours, 57 minutes, 38 secondsyou can see how it even has some related pull requests. It detected where we initially added hello world. So if you
2:57:462 hours, 57 minutes, 46 secondswere working in a team, if this was some big operation, you can now link pull requests automatically with this extension. Amazing. So in here, it has
2:57:552 hours, 57 minutes, 55 secondssome potential issues regarding our TOML file, but that doesn't matter because this file is not generated by us in the first place. So it is okay for it to be
2:58:042 hours, 58 minutes, 4 secondslike this. In here, it is suggesting improving the compile page shell script, which could be completely valid. I'm
2:58:122 hours, 58 minutes, 12 secondsdon't know bash. I'm I'm also mixing bash and shell. I'm not even sure what is the correct name. So for all I know, this could be completely correct.
2:58:242 hours, 58 minutes, 24 secondsBut since I want to be very careful about this part, you know, I'm not going to change it because I know it works,
2:58:322 hours, 58 minutes, 32 secondsright? So good enough for me at the moment. Uh great. Uh so in here it recommends adding some try catch all of
2:58:402 hours, 58 minutes, 40 secondsthe things which we will add later but in a different syntax because we will implement the agent network and the agent retrying and it's going to work in
2:58:482 hours, 58 minutes, 48 secondsa different way. It's going to be using tools. So overall pretty good summary pretty good review. Let's go ahead and merge this now. As always I'm not going
2:58:572 hours, 58 minutes, 57 secondsto delete my branch simply so I have access to all of my progress here.
2:59:022 hours, 59 minutes, 2 secondsAmazing amazing job. So, as always, go back to your IDE here and change to main branch and then click on synchronize
2:59:102 hours, 59 minutes, 10 secondschanges. And as a final sanity check, you can go ahead inside of source control inside of graph and you will see 06 E2B sandboxes have just been merged.
2:59:222 hours, 59 minutes, 22 secondsAmazing, amazing job. I believe that marks the end of this chapter and see you in the next chapter where we are going to learn how to make our AI use
2:59:312 hours, 59 minutes, 31 secondstools such as terminal to install some things and actually modify these sandboxes. Amazing amazing job.
Chapter 8: 07 Agent Tools
2:59:412 hours, 59 minutes, 41 secondsIn this chapter, we're going to add tools to our AI.
2:59:462 hours, 59 minutes, 46 secondsThe tools we are going to add are going to be the terminal tool which will allow the agent to run commands, create or
2:59:542 hours, 59 minutes, 54 secondsupdate files tool, which as its name says will allow the agent to create or update any files within its environment.
3:00:033 hours, 3 secondsAnd finally, we're going to have read files, which will be able to read files.
3:00:093 hours, 9 secondsWe are then going to add a completely new prompt for our agent. And we are then going to implement the agent
3:00:153 hours, 15 secondsnetwork and the routers. So we are going to heavily rely on agent kit by ingest.
3:00:233 hours, 23 secondsYou can use the link you can see on the screen or the link in the description to let them know you came from this video.
3:00:293 hours, 29 secondsSo in here what we are going to do is we are going to uh add some tools. Tools are used to extend the functionality of
3:00:373 hours, 37 secondsagents for structured output or for performing tasks. So for example, they
3:00:443 hours, 44 secondsare used to call code enabling models to interact with systems like your own database or external APIs like B2B. So
3:00:543 hours, 54 secondslet's go ahead and let's create a very simple tool which will be allow our agent to interact with the terminal.
3:01:033 hours, 1 minute, 3 secondsSo the first thing we're going to do is ensure we're on the main branch and we are going to synchronize our changes and just confirm your last merge was E2B sandboxes.
3:01:133 hours, 1 minute, 13 secondsAfter that let's go inside of source inest functions.
3:01:193 hours, 1 minute, 19 secondsNow in here we're going to do the following. After you create the coding agent uh go ahead and do the following.
3:01:283 hours, 1 minute, 28 secondsRight after your model, add tools.
3:01:323 hours, 1 minute, 32 secondsOpen this array and let's create tool which you can import from ages uh a inest agent kit.
3:01:413 hours, 1 minute, 41 secondsIn here, let's go ahead and give this tool a name. It will be called terminal.
3:01:483 hours, 1 minute, 48 secondsAdd a description. Use the terminal to run commands
3:01:543 hours, 1 minute, 54 secondsand add the parameters which the AI will pass to this tool. It will be a very simple command which is a type of
3:02:043 hours, 2 minutes, 4 secondsstring. And after you have added the parameters and the handler method,
3:02:113 hours, 2 minutes, 11 secondsextract the command from the first argument and extract the step from the second argument.
3:02:193 hours, 2 minutes, 19 secondsIn here you are going to return the step execution
3:02:243 hours, 2 minutes, 24 secondsawait step question markr run. The reason we need to use question mark is
3:02:313 hours, 2 minutes, 31 secondsbecause step can be undefined. So let's go ahead and run a step called terminal.
3:02:383 hours, 2 minutes, 38 secondsIt's going to be an asynchronous method inside of this step. And the first thing we're going to do is we are going to create an object called buffers.
3:02:473 hours, 2 minutes, 47 secondsInside of here, we are going to set std out to be an empty string and std error
3:02:553 hours, 2 minutes, 55 secondsto be an empty string as well. Now, let's open a try and catch method.
3:03:013 hours, 3 minutes, 1 secondInstead of the try, let's grab our uh let's get our sandbox here using await get sandbox and pass in the sandbox ID.
3:03:133 hours, 3 minutes, 13 secondsThen let's grab the result of await sandboxcomands.
3:03:203 hours, 3 minutes, 20 secondsAnd pass in the command. So we are reusing our get sandbox method from utils. I also imported zod. So make sure you add this as well.
3:03:313 hours, 3 minutes, 31 secondsUh and we are basically doing the same thing we're doing right here. We are establishing the connection with our sandbox using this simple util here. So we don't have to repeat this every time.
3:03:423 hours, 3 minutes, 42 secondsAnd now what we are doing is we are running a command. So you can learn more about this uh by going inside of the E2B
3:03:493 hours, 3 minutes, 49 secondsdocumentation and simply learning about the command. Let me see if I can find
3:03:553 hours, 3 minutes, 55 secondsthat here. Here we have the commands. So this is how you basically run commands in your environment. Perfect. So now
3:04:033 hours, 4 minutes, 3 secondslet's go ahead uh and define some more settings here. So after we run the
3:04:103 hours, 4 minutes, 10 secondscommand, let's define on std out grab the data which is a type of string
3:04:173 hours, 4 minutes, 17 secondsand for buffers std out simply add that data and the same thing on std
3:04:263 hours, 4 minutes, 26 secondserror. So data is a type of string and in here simply add buffers std error
3:04:363 hours, 4 minutes, 36 secondsplus equals data. So we are handling all of the results of running the terminal commands in this object. So we're going
3:04:423 hours, 4 minutes, 42 secondsto know if the terminal command succeeds or if it fails. That's why it's important to keep track of the result.
3:04:503 hours, 4 minutes, 50 secondsAnd then let's go ahead and let's return result std out. And then in the catch method, let's extract the error here.
3:05:003 hours, 5 minutesFirst, let's do console. Simply so we see this in the terminal. Open back. And you're going to say command failed
3:05:093 hours, 5 minutes, 9 secondsrender the error. And then you can use forward slashn to break into new line so it's more readable. std out will be buffers std out.
3:05:213 hours, 5 minutes, 21 secondsAnd then go ahead and break line again.
3:05:263 hours, 5 minutes, 26 secondsstd error will be buffers std error. So that's going to be the console
3:05:343 hours, 5 minutes, 34 secondslog. And then you're going to return the exact same thing.
3:05:393 hours, 5 minutes, 39 secondsThis will basically tell the agent what went wrong with additional information about std out and std error. So yes,
3:05:473 hours, 5 minutes, 47 secondsjust make sure that you don't accidentally type this incorrectly as it is important for AI to understand what's going on. And that is our first tool.
3:05:593 hours, 5 minutes, 59 secondsOur agent now has the ability to use the terminal. It uses sandbox API for this
3:06:063 hours, 6 minutes, 6 secondsand it will keep the results of this uh terminal execution. So either a success
3:06:133 hours, 6 minutes, 13 secondsmessage or an error with detailed information about what happened because commands can fail and thanks to ingest
3:06:213 hours, 6 minutes, 21 secondsthey will automatically retry but now with the context of what happened. So if you're building nex.js with me for some
3:06:293 hours, 6 minutes, 29 secondstime you know that sometimes when we install a package which doesn't support next uh react 19 it fails because we
3:06:373 hours, 6 minutes, 37 secondsneed to add d-leacy pure depths. So if that happens here it will first fail and then the AI will read the message and
3:06:463 hours, 6 minutes, 46 secondssay oh okay I need to add d- legacy peer demps and ingest will automatically
3:06:533 hours, 6 minutes, 53 secondsretry the terminal step with that new information and then it will succeed. So that's how powerful injest background
3:07:013 hours, 7 minutes, 1 secondjobs are and now they're amazing inest uh agent kit.
3:07:073 hours, 7 minutes, 7 secondsSo now that we have finished uh the terminal tool, let's go ahead and create a new tool.
3:07:183 hours, 7 minutes, 18 secondsThis one will be called create or update files.
3:07:243 hours, 7 minutes, 24 secondsThe description will be and let me just see. I think I'm doing something. Yes, I'm doing something incorrect here.
3:07:333 hours, 7 minutes, 33 secondsI think it needs to be here and add a comma here. There we go. So yes, so just make sure you're doing it at the end of
3:07:403 hours, 7 minutes, 40 secondsthis create tool bracket right here. The description will be create or update files in the sandbox.
3:07:513 hours, 7 minutes, 51 secondsLet's go ahead and let's add the parameters. It's going to be an object of items and it will accept the files.
3:07:593 hours, 7 minutes, 59 secondsfiles are going to be an array of objects and inside we're going to have path
3:08:063 hours, 8 minutes, 6 secondswhich is a type of string and content which is a type of string as well
3:08:123 hours, 8 minutes, 12 secondsand it's going to be the only thing we will accept. So now we can build our handler method
3:08:203 hours, 8 minutes, 20 secondsinside of this handler method. Let's go ahead and let's extract a few things.
3:08:243 hours, 8 minutes, 24 secondsThe first things will be the files and the second thing will be step and network.
3:08:343 hours, 8 minutes, 34 secondsAnd now in here let's go ahead and let's get the new files by doing await step question mark run create or update files.
3:08:453 hours, 8 minutes, 45 secondsOpen the asynchronous method here. And let's go ahead and open a try and catch block.
3:08:533 hours, 8 minutes, 53 secondsLet me just add catch here. There we go.
3:08:563 hours, 8 minutes, 56 secondsInstead of try, let's create updated files by first looking at network.state.data.files or an empty array.
3:09:093 hours, 9 minutes, 9 secondsThen let's get the sandbox here. Await get sandbox and pass in the sandbox ID.
3:09:163 hours, 9 minutes, 16 secondsAnd now for const file of files await sandbox files write file.path
3:09:273 hours, 9 minutes, 27 secondsfile.content updated files file.path is now file.content.
3:09:353 hours, 9 minutes, 35 secondsSo basically when the agent gets access to create or update files tool, it will
3:09:433 hours, 9 minutes, 43 secondsgive us a structured input of files it just created. So imagine this first part which we already have. We've already seen it create a a few files I think.
3:09:553 hours, 9 minutes, 55 secondsThere we go. So here's a simple button component and then it just returns jsx.
3:10:003 hours, 10 minutesSo now it will do exactly that but it will recognize the input this accepts uh accepts. So what it's going to do is it's going to return back an object.
3:10:123 hours, 10 minutes, 12 secondsLet me try like this. It's going to return an object like this and it will have app psx
3:10:203 hours, 10 minutes, 20 secondsand then in here it will be you know paragraph app page. This is how it's going to look like. And then the same thing for any new components. Right?
3:10:313 hours, 10 minutes, 31 secondsThis is what it's doing now. And then we're going to iterate over each of that and we're going to write that to the
3:10:383 hours, 10 minutes, 38 secondssandbox file explorer using files.right which is the similar API like sandbox commands.
3:10:463 hours, 10 minutes, 46 secondsSo that's how we know which file to write where. And then we just keep a track of updated files internally in our
3:10:543 hours, 10 minutes, 54 secondsnetwork state simply so we can later tell the user which files were changed because technically we could just ask it
3:11:023 hours, 11 minutes, 2 secondsin the prompt hey you know when you finish also tell me which file you changed but you can't really rely on
3:11:083 hours, 11 minutes, 8 secondsthat because AI has a token limit it can only talk for so much but for this part you can rely on this right so each file
3:11:173 hours, 11 minutes, 17 secondsit actually writes in the sandbox box in the file explorer. We are going to save it. We are going to keep track of it.
3:11:243 hours, 11 minutes, 24 secondsAnd the reason we are choosing the format of an object rather than an array is because this way it is very easy to to overwrite any files if they change by
3:11:323 hours, 11 minutes, 32 secondsinvoking this step again because this step can be called 50 times for all we know. That's why we are choosing an
3:11:393 hours, 11 minutes, 39 secondsobject rather than an array. So we can just simply overwrite any path if it changes.
3:11:463 hours, 11 minutes, 46 secondsAnd then let's go ahead and do return updated files. And then in the error here,
3:11:533 hours, 11 minutes, 53 secondslet's return error and simply render the
3:11:583 hours, 11 minutes, 58 secondserror. Perfect. And then uh outside of this
3:12:053 hours, 12 minutes, 5 secondsif type of new files is equal to object network state data files will be new files.
3:12:163 hours, 12 minutes, 16 secondsSo why are we waiting for this to be an object? So the new files are basically the return of this step. This step can
3:12:233 hours, 12 minutes, 23 secondseither be an object or it can be a string. So we are basically waiting for it to be an object and only then do we store it into our internal network
3:12:323 hours, 12 minutes, 32 secondsstate. Perfect. So that's another tool finished. Now let's go ahead and let's create another tool with a name read
3:12:413 hours, 12 minutes, 41 secondsfiles. Now in here let's add a description read files from the sandbox.
3:12:503 hours, 12 minutes, 50 secondsparameters Z dot object files Z dot array and Z dot string inside.
3:12:583 hours, 12 minutes, 58 secondsNow let's go ahead and let's add a handler method again an asynchronous method and in here we are going to return await
3:13:073 hours, 13 minutes, 7 secondsstep and we just need to extract the step from here. So let's do that. First extract the files from here and then extract the step from the second step.
3:13:183 hours, 13 minutes, 18 secondsBe mindful if you forget to do this. You won't get an error simply because we have a step defined elsewhere.
3:13:263 hours, 13 minutes, 26 secondsWe have it here. So be careful.
3:13:293 hours, 13 minutes, 29 secondsYou always have to extract the step from the tool because it holds different context.
3:13:373 hours, 13 minutes, 37 secondsSo step.run read files asynchronous.
3:13:443 hours, 13 minutes, 44 secondsAnd in here open a try and catch block.
3:13:483 hours, 13 minutes, 48 secondsIn the try block, connect to the sandbox. Await get sandbox sandbox ID.
3:13:573 hours, 13 minutes, 57 secondsIn here, open the contents array. And for const file of files,
3:14:053 hours, 14 minutes, 5 secondspush to that contents array. So const individual content is await sandbox
3:14:113 hours, 14 minutes, 11 secondsfiles read file. So we read the file and then we simply push the path to be file
3:14:213 hours, 14 minutes, 21 secondsand the content next to it. So in here it doesn't really matter how we store this data because this is not for us.
3:14:303 hours, 14 minutes, 30 secondsThis is for the AI if they if it needs to read data. So yeah let's just fix this path. So if we in our prompt
3:14:403 hours, 14 minutes, 40 secondsinstruct the the the AI agent to read before they do something, they're going to use this. Why would they need to read
3:14:483 hours, 14 minutes, 48 secondssomething? Well, so they don't hallucinate, right? So we tell it if you attempt to use a chat component, make
3:14:563 hours, 14 minutes, 56 secondssure to read inside of the components folder. So then it's going to use this tool to attempt to read a file. And if it doesn't exist, it's going to say,
3:15:043 hours, 15 minutes, 4 seconds"Oh, okay. then I need to create it or I need to use something else. It's basically not going to hallucinate or assume a tool exists. That's why this
3:15:133 hours, 15 minutes, 13 secondsstep is quite useful and also why we don't really care about the format too much because AI can read from various formats here. And if this fails, we
3:15:223 hours, 15 minutes, 22 secondsreturn an error like this. And that is the last tool that we need.
3:15:303 hours, 15 minutes, 30 secondsWhat we have to do next is we have to update our prompt and tell it that it can use these tools.
3:15:393 hours, 15 minutes, 39 secondsI have prepared a prompt for you in my public GitHub of assets. You can use the link you can see on the screen or the link in the description to access it.
3:15:493 hours, 15 minutes, 49 secondsNow be mindful of something. I am not a prompt engineer. I have no idea if this is a good prompt or a bad prompt. I have
3:15:583 hours, 15 minutes, 58 secondsgenerated it using AI itself. So I assume it's okay. I have found it to
3:16:053 hours, 16 minutes, 5 secondswork quite well for my use case. But you are free to modify it however you want it. I I started out very simple like it was almost just like one or two lines.
3:16:153 hours, 16 minutes, 15 secondsAnd then I had to addit more and more and more instructions until it understood things very well. And I found
3:16:223 hours, 16 minutes, 22 secondsthis to be kind of a very very good uh at least starting point if nothing more.
3:16:283 hours, 16 minutes, 28 secondsRight? But the cool thing about this project is your app can get twice as
3:16:353 hours, 16 minutes, 35 secondsgood just by adding a new model. So if OpenAI or Enthropic release a new model,
3:16:433 hours, 16 minutes, 43 secondsall you have to do is use that new model and your app is suddenly twice as good.
3:16:483 hours, 16 minutes, 48 secondsSo that's the cool part about working with AI, right? So copy this prompt from my assets. Let's go inside of source and
3:16:553 hours, 16 minutes, 55 secondslet's create prompt.ts and let's paste it here. So I'm going to slightly go over it just so you understand what I'm doing here. So you're a senior engineer
3:17:053 hours, 17 minutes, 5 secondsworking in a sandboxed Nex.js 15.3 environment. Why that environment? Well, because that's what we define here.
3:17:143 hours, 17 minutes, 14 secondsSo I'm telling it exactly where it is running. And then I tell it some tools.
3:17:193 hours, 17 minutes, 19 secondsYou can write files with create or update files. You can execute commands via terminal. I also tell it to use d- yes simply because uh it's not a human.
3:17:303 hours, 17 minutes, 30 secondsSo it uh basically we we must not get it in a position where the terminal waits for human input. Then I tell it you can
3:17:403 hours, 17 minutes, 40 secondsread files with read files. So those are the first three instructions that I give it. I then tell it you know some general rules. Don't install package JSON or log
3:17:483 hours, 17 minutes, 48 secondsfiles directly. You can install packages but don't modify the these directly. I tell it the main file is in the app
3:17:553 hours, 17 minutes, 55 secondsfolder page.tsx. I tell it that all chats components are pre-installed and imported here. And then I tell it some
3:18:033 hours, 18 minutes, 3 secondsgeneral rules like you must never add use client to layout. This must always remain a server component. Uh I tell it to never create any CSS or SCSS files.
3:18:143 hours, 18 minutes, 14 secondsstyling must be done strictly with Tailwind and basically some rules like that. So you can of course tweak this if
3:18:223 hours, 18 minutes, 22 secondsyou think you you can modify it a little bit. Of course maybe I will modify it during this tutorial but basically it's
3:18:293 hours, 18 minutes, 29 secondsjust a bunch of rules that I have added after I experienced it fail. So after I saw that it does something incorrectly I added a new rule for that. And this is
3:18:383 hours, 18 minutes, 38 secondsimportant the final output. So after it's fully completed, I instruct it to return this type of format task summary
3:18:473 hours, 18 minutes, 47 secondsand inside uh a description of what it just did. So it needs to return with this and you're going to see why in a
3:18:563 hours, 18 minutes, 56 secondssecond. This is super important and this is why I'm very strict about it because this is the only way to terminate the
3:19:033 hours, 19 minutes, 3 secondstask. If it omits or alters this section, the task will be considered incomplete and it will continue unnecessarily.
3:19:113 hours, 19 minutes, 11 secondsSo now that we have our new prompt, let's go inside of inest functions.ts and let's go ahead and change our code
3:19:203 hours, 19 minutes, 20 secondsagent here and let's extract the open AI here a little bit. And now what we are going to do is we're going to change this model to be GPT4.1.
3:19:323 hours, 19 minutes, 32 secondsDefault parameters here will be temperature 0.1. Now if you're using uh something that is not open AI, this
3:19:403 hours, 19 minutes, 40 secondsmight not exist and that's completely okay. You don't have to modify this.
3:19:443 hours, 19 minutes, 44 secondsWhat temperature means is randomness. So the larger the number here, the more random is something going to be. And
3:19:523 hours, 19 minutes, 52 secondswhen it comes to generative UI, I kind of want it to be deterministic and reliable rather than completely random.
3:19:593 hours, 19 minutes, 59 secondsBut I give it a little little little chance of randomness. So if you're using grock or anthropic, you don't have this
3:20:063 hours, 20 minutes, 6 secondsprobably. So that's that's that's completely okay, right? You can even do without this in open AI. And the reason
3:20:133 hours, 20 minutes, 13 secondsI changed the model is because 4.1 is much much much better at generating UI than 40. And for Antropic, the better model is 3.5 set.
3:20:263 hours, 20 minutes, 26 secondsFor Grock or Gemini, I simply don't know. And as I said with Gemini, I have problems running these tools. You can
3:20:323 hours, 20 minutes, 32 secondstry, but for me, I just got errors. So now, let's go ahead and modify the system here to use our prompt
3:20:403 hours, 20 minutes, 40 secondsconstant from at prompt, which we just added. So just make sure it's this one.
3:20:463 hours, 20 minutes, 46 secondsPerfect. Now, let's go ahead and let's add a slight description here. An expert coding agent.
3:20:573 hours, 20 minutes, 57 secondsThere we go. So, I'm just going to bring back this temperature 0.1. If you're using Open AI, you can add this. So, both you and I will get similar results.
3:21:083 hours, 21 minutes, 8 secondsI hope. Great. Now that we have these tools, we are still not ready to try them out just yet because what we have
3:21:163 hours, 21 minutes, 16 secondsto do now is we have to add life cycle here. So after the array of tools ends,
3:21:233 hours, 21 minutes, 23 secondsso make sure that you find where the tools end, right? Go to the bottom here.
3:21:313 hours, 21 minutes, 31 secondsWe're going to add life cycle. And in here, we're going to get on response.
3:21:393 hours, 21 minutes, 39 secondsAnd from here, we're going to get the result and network.
3:21:443 hours, 21 minutes, 44 secondsAnd now what we're going to do here is we are going to check if the last message that is in this cycle because
3:21:523 hours, 21 minutes, 52 secondsthis is a cycle right this is not going to be linear. It's not going to go uh using the terminal then create or update
3:22:013 hours, 22 minutes, 1 secondfiles and then read the files and we're done. No, it has access to all three tools equally and it will create its own
3:22:103 hours, 22 minutes, 10 secondsplan. It might use them 50 times in a row. That's why in the prompt we tell it when you are finished when you know that
3:22:173 hours, 22 minutes, 17 secondsyou're done go ahead and return the task summary. So now in the life cycle we are
3:22:243 hours, 22 minutes, 24 secondsgoing to uh extract the last message from the assistant and we are going to check if that message includes the task
3:22:323 hours, 22 minutes, 32 secondssummary. If it does, we will break the cycle and then we can go ahead and do these steps where it actually shows to the user what it generated.
3:22:443 hours, 22 minutes, 44 secondsSo in order to implement that part, we have to go inside of utils here in the inest where we have get sandbox. Let's
3:22:513 hours, 22 minutes, 51 secondsexport function here last assistant text message content.
3:22:593 hours, 22 minutes, 59 secondsIt will accept a result which is a type of agent result from inest agent kit.
3:23:063 hours, 23 minutes, 6 secondsLet's go ahead and do const last assistant text message index which will be
3:23:133 hours, 23 minutes, 13 secondsresultput find the last index.
3:23:183 hours, 23 minutes, 18 secondsExtract the message and we are going to find the index of a message whose role is assistant. So we know okay this is
3:23:273 hours, 23 minutes, 27 secondswhat assistant said last. Then let's extract the actual message content from that index. So result dot output last
3:23:363 hours, 23 minutes, 36 secondsmessage index as a type of either
3:23:433 hours, 23 minutes, 43 secondstext message again from ing inest agent kit or unde
3:23:503 hours, 23 minutes, 50 secondsso it can even not exist. Right? And then let's return message question mark.content.
3:23:593 hours, 23 minutes, 59 secondsAnd we're going to add a turnary below it. If type of message.content is string, we're going to simply render message.content.
3:24:113 hours, 24 minutes, 11 secondsOtherwise, we will do message.content domap. Get the individual inner content
3:24:193 hours, 24 minutes, 19 secondsand simply return that inner contents text. And then we're going to join it all in a single string. And then finish
3:24:273 hours, 24 minutes, 27 secondsthe outer turnary by adding or undefined here. Like that.
3:24:343 hours, 24 minutes, 34 secondsPerfect. I'm going to pause the screen just so you can double check your code.
3:24:393 hours, 24 minutes, 39 secondsNow let's go ahead here and let's use that inside of here. So I'm going to do const
3:24:473 hours, 24 minutes, 47 secondslast assistant text. just this last assistant. Uh let's
3:24:543 hours, 24 minutes, 54 secondsdo message text and in here we're going to call our last
3:25:003 hours, 25 minutesassistant text message content which we can import from the utils and pass in the result like this.
3:25:113 hours, 25 minutes, 11 secondsAnd let me just see if I did something incorrectly here. So uh life cycle on response uh I have to end this here. There we go.
3:25:223 hours, 25 minutes, 22 secondsPerfect. And then we're going to check if last assistant message text and if we have network
3:25:313 hours, 25 minutes, 31 secondsif last assistant message text doinccludes task summary
3:25:433 hours, 25 minutes, 43 secondsadd to the network state in the summary key last assistant message text like
3:25:513 hours, 25 minutes, 51 secondsthis and then outside of this outer if clause return result
3:25:593 hours, 25 minutes, 59 secondsand let me just see what I did incorrectly here. So I think I have to end this maybe like that. Let me just try and fix this quickly.
3:26:113 hours, 26 minutes, 11 secondsSo let's see. I think I don't need this part. Do I need this? Okay, so that was the extra. Perfect.
3:26:213 hours, 26 minutes, 21 secondsSo basically what we're doing here is we're extracting last assistant message text using our util last assistant text
3:26:283 hours, 26 minutes, 28 secondsmessage content which simply finds the index of the last message whose role was assistant and then if it is type of text
3:26:353 hours, 26 minutes, 35 secondsmessage and if it's string it just returns that content. But there is obviously a special type of message where it can be an array of strings. So
3:26:433 hours, 26 minutes, 43 secondsin that case we simply join that into a single string using a very simple method. And then once we parse that
3:26:513 hours, 26 minutes, 51 secondsmessage, if we have network available and if we have last assistant message text and if that message includes task
3:27:003 hours, 27 minutessummary, which is our rule here, right, to return that if it's done, we store
3:27:063 hours, 27 minutes, 6 secondsthe network state data summary last assistant message text and we return the
3:27:133 hours, 27 minutes, 13 secondsresult. And what we will be able to do now is the following. Go below this entire coding agent and create a network.
3:27:223 hours, 27 minutes, 22 secondsThe network will be create network from inest agent kit like this. And in
3:27:313 hours, 27 minutes, 31 secondshere go ahead and add the following. The name
3:27:373 hours, 27 minutes, 37 secondscoding agent network agents will be our coding agent or
3:27:443 hours, 27 minutes, 44 secondswhatever we called it. it we called it code agent. So let's just add it here.
3:27:493 hours, 27 minutes, 49 secondsCode agent max iteration
3:27:543 hours, 27 minutes, 54 secondswill be 15. Now this will basically
3:28:003 hours, 28 minutesthis is a number that will uh limit how many loops the agent can do. So what is
3:28:073 hours, 28 minutes, 7 secondsa loop? As I explained previously, the agent can pretty much do things indefinitely if it wants to, right? We need to find a way to tell it to stop.
3:28:183 hours, 28 minutes, 18 secondsSo, we are doing that currently using the task summary, right? But there has to be some kind of limit. We cannot
3:28:253 hours, 28 minutes, 25 secondsreally let it go forever. So, I'm going to say if you reach 15 iterations, you're doing something wrong. you should
3:28:333 hours, 28 minutes, 33 secondshave already been done and this is too much and I have to stop you because you will use all of my open AI credits.
3:28:403 hours, 28 minutes, 40 secondsThat's what max iterations is.
3:28:443 hours, 28 minutes, 44 secondsNow let's add a router here which is an asynchronous method and it can extract network.
3:28:523 hours, 28 minutes, 52 secondsLet's add the summary here to be network data summary. And if we have the
3:29:013 hours, 29 minutes, 1 secondsummary, we are going to break this network. Otherwise, we are going to return uh the agent and the agent will
3:29:113 hours, 29 minutes, 11 secondsbe code agent like this. There we go. So this is how we break the loop. If we
3:29:193 hours, 29 minutes, 19 secondsdetect this summary in the network state, we break the network. Otherwise, we return code agent, right? So the code
3:29:273 hours, 29 minutes, 27 secondsagent will call itself many times until finally we detect there's a summary. If we detect a summary, we say great, you
3:29:363 hours, 29 minutes, 36 secondsare done. Perfect. So now I have a bunch of these errors that I have to fix. So I'm going to go ahead and just see did I
3:29:443 hours, 29 minutes, 44 secondsmaybe remove an important bracket or something? Uh because something seems to be wrong here. I'm going to start by
3:29:513 hours, 29 minutes, 51 secondstrying to reload my window just to see if that maybe fixes it. Looks like it did not fix it. So, I'm going to go
3:29:583 hours, 29 minutes, 58 secondsahead and see uh exactly what I did wrong.
3:30:043 hours, 30 minutes, 4 secondsOkay, I think I found it. It's all the way uh up here. Uh somehow this
3:30:113 hours, 30 minutes, 11 secondshappened. I'm not sure how. So, create network. There we go.
3:30:203 hours, 30 minutes, 20 secondsPerfect. And now the only error in our app is this unused network variable.
3:30:253 hours, 30 minutes, 25 secondsEverything else seems to be working. No errors seem to be flying around.
3:30:293 hours, 30 minutes, 29 secondsPerfect. So once I have this network, what I can now do is I can run this network instead of running the actual
3:30:373 hours, 30 minutes, 37 secondscode agent. So I will remove this now and I will do con result that comes from the entire network.
3:30:463 hours, 30 minutes, 46 secondsAnd I will simply pass in event data and I believe it was value that we pass. So let's go ahead and do that. And then in
3:30:543 hours, 30 minutes, 54 secondshere what we are able to do is this part can stay the same. And in the result part uh we can actually do the
3:31:023 hours, 31 minutes, 2 secondsfollowing. We can show each file that was changed. So next to sandbox URL let's do it like this.
3:31:143 hours, 31 minutes, 14 secondsSo URL is sandbox URL.
3:31:183 hours, 31 minutes, 18 secondsThe title will be for now just a fragment. files will be result state
3:31:253 hours, 31 minutes, 25 secondsdata files and summary will be result state data
3:31:323 hours, 31 minutes, 32 secondssummary. So right now these are a type of any depending on the version you use maybe they will even become errors.
3:31:393 hours, 31 minutes, 39 secondsDon't worry we will add the types later.
3:31:423 hours, 31 minutes, 42 secondsSo if we've done this correctly, we should have working code now. Especially after you change this and if you add
3:31:513 hours, 31 minutes, 51 secondsthis prompt, I believe this should be working. Now keep in mind uh it is hard to be reliable and deterministic with AI
3:32:003 hours, 32 minutesagents. I might get one result and you might get a completely different result and that will actually quadruple if
3:32:073 hours, 32 minutes, 7 secondsyou're using a different AI model than me.
3:32:123 hours, 32 minutes, 12 secondsSo again, the my biggest advice is use the same model I'm using, use the same
3:32:193 hours, 32 minutes, 19 secondsopen AI, you even put the same temperature. This will make it much more easier for you uh to have the same
3:32:263 hours, 32 minutes, 26 secondsresult as me. Let's try it out now. So, uh, I have my app running here and I'm
3:32:353 hours, 32 minutes, 35 secondsgoing to go inside of here and I will create, um, create a calculator
3:32:423 hours, 32 minutes, 42 secondsapp. Let's try this and let's invoke a background job. Let's see. Maybe it fails immediately. Maybe it works. We're
3:32:493 hours, 32 minutes, 49 secondsgoing to see. Uh, let me refresh the runs. Are they working? Are they not working?
3:32:563 hours, 32 minutes, 56 secondsNot sure. Okay, it seems it seems like there is some kind of error happening here. So, let me just try and debug this.
3:33:093 hours, 33 minutes, 9 secondsAll right. So, what I did is I've shut down the npx inest cli. I have shut down npm rundev and I restarted both of them.
3:33:183 hours, 33 minutes, 18 secondsSo, do that. Shut them down and restart them and let's see what's going on. So, I managed to get the sandbox ID. That's
3:33:263 hours, 33 minutes, 26 secondsa good start. It means we successfully started the sandbox. And now we are running the code agent. And you can see here we are running it with all the
3:33:343 hours, 33 minutes, 34 secondstools available. The tools to use the terminal, the tools to create or update files,
3:33:403 hours, 33 minutes, 40 secondsthe tool to read files. And now it will use those tools. So there we go. It used create or update files. Let's see what
3:33:493 hours, 33 minutes, 49 secondsit created. It created calculator.tsx tsx and then it imported that calculator from that file. At least that's what it
3:33:583 hours, 33 minutes, 58 secondssays it did. And it returned back the code sandbox URL. Let's check it out.
3:34:043 hours, 34 minutes, 4 secondsI'm going to click here. And if it worked, we should now be seeing a simple calculator app. Fingers crossed. And
3:34:123 hours, 34 minutes, 12 secondslooks like something went wrong. So what happened here? What happened is that it
3:34:183 hours, 34 minutes, 18 secondsforgot to use use state. But here's the cool part for you. Maybe this doesn't didn't even happen. I don't know, right?
3:34:283 hours, 34 minutes, 28 secondsUh it can behave randomly. So, how do we fix this thing? Well, we can fix it in two ways. We can fix it by uh making the
3:34:373 hours, 34 minutes, 37 secondsprompt even more strict, right? We can find the places where I add, for example, in here I added you must never add use client to layout tsx line 13.
3:34:503 hours, 34 minutes, 50 secondsMaybe it's confused because of this. It reads this part and then it gets confused. Let's remove that part.
3:34:593 hours, 34 minutes, 59 secondsLet's search for use client again. File safety rules again. Never add use client to app layout tsx. Maybe it gets
3:35:083 hours, 35 minutes, 8 secondsconfused by this. So I'm going to remove this where it says never add use client because it seems like u it is avoiding to add use client in that case.
3:35:203 hours, 35 minutes, 20 secondsI have another instance of use client here where it says if building a form or or interactive element include proper state handling and add use client to the top. Perfect. That's a good example.
3:35:303 hours, 35 minutes, 30 secondsOnly add use client at the top of files that was react hooks or browser APIs.
3:35:353 hours, 35 minutes, 35 secondsNever add it to layout tsx. So I will remove this part as well simply because I feel like it is leading it away from using use client properly.
3:35:473 hours, 35 minutes, 47 secondsSo let's see if our next iteration will be better. So I will add it again.
3:35:523 hours, 35 minutes, 52 secondsCreate a calculator app. Uh and if it doesn't work then we can instruct it in this prompt further. Right? And as I said for you maybe it worked first try.
3:36:033 hours, 36 minutes, 3 secondsI don't know. That's kind of the part about building this type of apps. Um you have to simply rely on luck sometimes
3:36:113 hours, 36 minutes, 11 secondsright? Sometimes the agent will perform very well, sometimes it will perform very bad. And the better this models
3:36:193 hours, 36 minutes, 19 secondsget, the better your results will actually be. And as I said, uh your prompts will also get better with time.
3:36:273 hours, 36 minutes, 27 secondsRight? So let's go ahead and see if this was any better. Let's see if it added
3:36:343 hours, 36 minutes, 34 secondsuse client this time. And there we go. I have a working calculator app generated
3:36:423 hours, 36 minutes, 42 secondsby AI. Can you believe that AI has generated this? Now, as I said, I have
3:36:503 hours, 36 minutes, 50 secondsno idea what kind of result you are going to get, right? I don't think you will get the same result as me. Your
3:36:573 hours, 36 minutes, 57 secondsmight have some colors. Your might not work again. If it doesn't work again, you know, you can try and go inside of
3:37:043 hours, 37 minutes, 4 secondshere and then explicitly tell it, you know, uh, be mindful of use client where
3:37:113 hours, 37 minutes, 11 secondsit needs to be added, right? You can tell it that and then it definitely won't make that mistake
3:37:183 hours, 37 minutes, 18 secondsor, you know, uh, read through my prompt and see if there's something you don't like here. Or maybe paste my entire
3:37:253 hours, 37 minutes, 25 secondsprompt inside of chat GPT and tell it to improve it somehow.
3:37:313 hours, 37 minutes, 31 secondsSo for me, I removed those couple of lines for use client.
3:37:373 hours, 37 minutes, 37 secondsPerfect. Uh let's try build a landing page.
3:37:433 hours, 37 minutes, 43 secondsSo you can now pretty much you know you're pretty much let's say finished when it comes to backend side. You can
3:37:503 hours, 37 minutes, 50 secondsnow only improve these tools and improve the prompts. So what we're going to do next is we're going to implement saving this to the database and we're going to
3:37:593 hours, 37 minutes, 59 secondsimplement creating a summary of what it just created. So we can save that to the database and kind of return a message
3:38:063 hours, 38 minutes, 6 secondsback to the user. And if you want to uh you can instruct it to use some package
3:38:123 hours, 38 minutes, 12 secondslike use drag and drop use framer and then you will see it use the terminal tool. So let's see if it managed to
3:38:193 hours, 38 minutes, 19 secondscreate a landing page. There we go. And may I say a pretty good landing page, right? Very impressive. Perhaps you
3:38:283 hours, 38 minutes, 28 secondsshould try with the landing page example because it doesn't use any use client or things like that. I'm very very
3:38:363 hours, 38 minutes, 36 secondsimpressed by this is better than I expected. So let's try telling it to use framework this time. Build a landing page. Use motion package.
3:38:453 hours, 38 minutes, 45 secondsLet's try this.
3:38:493 hours, 38 minutes, 49 secondsSo in here we can see that now it is using terminal and we can see the result added three packages right. So let's see
3:38:573 hours, 38 minutes, 57 secondsif it actually used uh that or something else. I think you can also click on the code agent right before it uses the
3:39:043 hours, 39 minutes, 4 secondsterminal and click on the output and in here you can see npm install framer motion. So that's what it run. I'm not sure if that's the newest version of
3:39:133 hours, 39 minutes, 13 secondsframer. Maybe this won't even work. I don't know but let's click on get sandbox URL. Let's click here and let's see maybe it will be broken.
3:39:233 hours, 39 minutes, 23 secondsYeah, looks like this doesn't work. It should use motion package not framer motion. So, as I said, uh it's not
3:39:303 hours, 39 minutes, 30 secondsperfect, right? You can break it every now and then, but you can also improve it just as easily, right? As I said,
3:39:373 hours, 39 minutes, 37 secondsClaude Sonnet 3.5 is by far the most reliable coding agent because it just it is up to date with everything. It just
3:39:453 hours, 39 minutes, 45 secondsknows everything, right? But you will hit limits very very soon. So, your best
3:39:523 hours, 39 minutes, 52 secondsoption for now is to create this kind of app, right? using open AI and simply improve the prompt as much as you can.
3:40:023 hours, 40 minutes, 2 secondsSo I did this myself and I am not a prompt engineer. So you can definitely create this better than me. Your starting point uh should be this. You're
3:40:113 hours, 40 minutes, 11 secondsa senior software engineer and the most the other important part is this. Give it a very important ending. So this
3:40:193 hours, 40 minutes, 19 secondsshould be your ending. Everything in between after before final output you can change. So I wrote all of this with
3:40:263 hours, 40 minutes, 26 secondsthe help of AI and I basically added more things as I saw uh they as I saw some things fail. So for example,
3:40:333 hours, 40 minutes, 33 secondssometimes it attempted to run dev itself or build. So I told it you must never do that, right? It's always working. Uh so
3:40:423 hours, 40 minutes, 42 secondsyeah, you can learn how to prompt a little bit better and you will get better results or you can simply use a newer model. So, how about we try build
3:40:523 hours, 40 minutes, 52 secondsa conbon board use react beautiful
3:41:013 hours, 41 minutes, 1 seconddrag and drop. Let's try that. Maybe we will have some uh better results with this package.
3:41:083 hours, 41 minutes, 8 secondsSo, this is the result of the query to build a conbon board. As you can see, the first terminal command actually
3:41:163 hours, 41 minutes, 16 secondsfailed and we can actually see the error here. So, let's go ahead and scroll down here. Error error unable to resolve the
3:41:253 hours, 41 minutes, 25 secondsdependency and it probably told it that it needs to use uh legacy peer depths.
3:41:333 hours, 41 minutes, 33 secondsYou can see this retry this command with d-force or legacy peer depths. And then what happened is it simply retried that
3:41:423 hours, 41 minutes, 42 secondsand you can see then it worked. So that's the power of ingest and that's the power of returning the result of the
3:41:503 hours, 41 minutes, 50 secondsterminal tool. Right? So we tell it the command failed and we tell it why it failed. So that way it knows how to
3:41:593 hours, 41 minutes, 59 secondsretry. And my get sandbox URL uh was this what seems to be a working conbon board.
3:42:083 hours, 42 minutes, 8 secondstest. Amazing. It seems to have some issues.
3:42:123 hours, 42 minutes, 12 secondsIt's missing a prop set here, but honestly, other than that, pretty damn good. Look at this.
3:42:223 hours, 42 minutes, 22 secondsAmazing, right? It even highlights where it's going to land. Very, very cool. Uh,
3:42:293 hours, 42 minutes, 29 secondsgreat. So, I think that marks the end of this chapter. uh till we finish this project, we will add some methods to
3:42:363 hours, 42 minutes, 36 secondsimprove the failing builds, right? We will allow the user to tell the AI like, hey, you forgot to add use client so it
3:42:453 hours, 42 minutes, 45 secondsunderstands what happened previously and then it can just easily fix the issue.
3:42:493 hours, 42 minutes, 49 secondsThat's at least what we are going to attempt to do. So even if something fails, uh we will allow the user to instruct the AI and tell it, hey, it
3:42:583 hours, 42 minutes, 58 secondsfailed. Can you please fix it? Because you know, I saw lovable fail. I saw replet fail. I saw v 0ero fail. All of these apps fail, right? They are just
3:43:063 hours, 43 minutes, 6 secondsAI. It's a it's a language model after all, right? So, it can definitely fail.
3:43:123 hours, 43 minutes, 12 secondsBut I think it is super impressive given the fact that we built it so soon and so fast. Amazing, amazing job. Let me mark all of these things as complete here.
3:43:243 hours, 43 minutes, 24 secondsAnd now, let's go ahead and branch out.
3:43:263 hours, 43 minutes, 26 secondsSo, 07 agent tools. I'm going to go ahead and create a new branch 07 agent tools.
3:43:383 hours, 43 minutes, 38 secondsI'm going to stage all of my changes.
3:43:423 hours, 43 minutes, 42 seconds07 agent tools. I will commit and I will publish my branch. As always, you have a
3:43:503 hours, 43 minutes, 50 secondscompletely free code rabbit extension you can install inside of Visual Studio Code if you wanted to review your files.
3:43:583 hours, 43 minutes, 58 secondsAnd now let's go ahead and let's open a pull request so we can merge our changes and so we can review them here with a summary.
3:44:093 hours, 44 minutes, 9 secondsAnd here we have the code rabbit summary. So we have enhanced agent capabilities with multi-tool multi-agent network for sandbox interactions
3:44:183 hours, 44 minutes, 18 secondsincluding terminal commands, file operations and summary extraction. We also introduced a comprehensive system
3:44:243 hours, 44 minutes, 24 secondsprompt outlining coding standards and environment constraints for improved code generation and consistency.
3:44:313 hours, 44 minutes, 31 secondsPerfect. So that's exactly what we did.
3:44:343 hours, 44 minutes, 34 secondsAnd in here we even have a sequence diagram of how it happens. So once the background job is triggered, we can see
3:44:413 hours, 44 minutes, 41 secondsthat now the coding agent can use the terminal, create or update files or read files as needed and then the tools
3:44:483 hours, 44 minutes, 48 secondsreturn results using std out using files contents or anything else. And depending on that the code agent is either calling
3:44:583 hours, 44 minutes, 58 secondsanother tool or finally it returns with the last message which includes the task
3:45:053 hours, 45 minutes, 5 secondssummary tag signaling that it is over and then we can return the sandbox URL.
3:45:123 hours, 45 minutes, 12 secondsSo in here it actually uh recommends not doing a double turnary instead ending early here. So that's quite a good suggestion.
3:45:223 hours, 45 minutes, 22 secondsWe could possibly do that. Then below here, it fixed a typo to agent. That is
3:45:293 hours, 45 minutes, 29 secondsdefinitely a mistake. Great. Uh, and in here is something quite interesting. So,
3:45:353 hours, 45 minutes, 35 secondswhat I do here is if I fail, I simply return an error. So, I practically never
3:45:453 hours, 45 minutes, 45 secondsstore anything if it fails. But in here it recommends actually doing partial
3:45:523 hours, 45 minutes, 52 secondssaving right. So if there is at least some files which were successfully created save them but still throw an
3:46:003 hours, 46 minuteserror. So quite a good suggestion but in my experience if it fails on one file it
3:46:073 hours, 46 minutes, 7 secondswill fail entirely because uh this doesn't mean that it wrote incorrect code. If it throws an error here, it means it lost access to the file system.
3:46:183 hours, 46 minutes, 18 secondsThat's why I'm not exactly worried about this. I will pretty much always expect it to be able to write all files it
3:46:253 hours, 46 minutes, 25 secondsneeds. But very good suggestion here to handle partial success. I will look into that. Let's go ahead and let's merge
3:46:343 hours, 46 minutes, 34 secondsthis pull request here. I'm not going to delete the branch as always. So I have access to it right here. And now that we
3:46:423 hours, 46 minutes, 42 secondsare here, let's go ahead and go back inside of our main and let's go ahead and synchronize our changes. And that
3:46:513 hours, 46 minutes, 51 secondsshould officially mark the end of this chapter. Just a sanity check here. There we go. We just merged 07. Amazing,
3:47:003 hours, 47 minutesamazing job. We are now ready to start building our UI. See you in the next chapter.
Chapter 9: 08 Messages
3:47:093 hours, 47 minutes, 9 secondsIn this chapter, we're going to implement the messages entity. This will include creating the actual message Prisma schema, the fragment Prisma
3:47:183 hours, 47 minutes, 18 secondsschema, and then we're going to modify our current TRPC procedures and our background jobs to use those new schemas
3:47:253 hours, 47 minutes, 25 secondsand save user prompts and AI responses in their appropriate models. So, let's start by creating a simple message
3:47:343 hours, 47 minutes, 34 secondsschema. In order to do that, we have to go ahead and visit our schema file.
3:47:393 hours, 47 minutes, 39 secondsBefore you do that, as always, confirm that you're on your main branch. And if you are unsure if you have any unsynchronized changes, you can always
3:47:463 hours, 47 minutes, 46 secondsclick this and confirm. And just make sure that chapter 7 is your last merged change here. Great. Now, let's go ahead inside of Prisma and schema.prisma.
3:47:583 hours, 47 minutes, 58 secondsIf you have a folder with migrations here, you can delete it because we're going to remove pretty much everything inside of here. Right? So, we're going
3:48:063 hours, 48 minutes, 6 secondsto create a whole new schema now. So, let's go ahead and create a model message inside create an ID which will
3:48:153 hours, 48 minutes, 15 secondshave a type of which will be a type of string is going to be an ID with the default value of uyu ID. After that,
3:48:253 hours, 48 minutes, 25 secondslet's go ahead and create a content which will be a type of string. Let's go ahead and add a role which will be a
3:48:323 hours, 48 minutes, 32 secondstype of enum. So, let's create an enum message type.
3:48:373 hours, 48 minutes, 37 secondsAnd let's give it uh my apologies not message type message role
3:48:453 hours, 48 minutes, 45 secondswhich can be a type of user or assistant and then you can go ahead and use that right here. So simply assign the role to
3:48:533 hours, 48 minutes, 53 secondsbe message ro just like that. And now we're going to do what I started to do which is the message type.
3:49:023 hours, 49 minutes, 2 secondsSo the message type will either be a type of result or a type of error.
3:49:093 hours, 49 minutes, 9 secondsAnd let's go ahead and give this a type of message type. So in case the AI response fails, we are going to treat it
3:49:163 hours, 49 minutes, 16 secondsas an error. meaning that the AI will simply return uh I wasn't able to do this generation for whatever reason
3:49:253 hours, 49 minutes, 25 secondsplease retry and now let's add the usual created ad field which is a type of date time and
3:49:333 hours, 49 minutes, 33 secondsthe default value of now and let's add updated ad which is a date time as well and it has a special decorator updated
3:49:413 hours, 49 minutes, 41 secondsad which is a very cool decorator because what it does is it will automatically update this build when we
3:49:473 hours, 49 minutes, 47 secondsupdate the message model. And now let's go ahead and let's create a fragment
3:49:533 hours, 49 minutes, 53 secondsmodel. So the fragment model will also have an ID of string and the
3:50:003 hours, 50 minutesdefault value of UU ID and it will have a relation to the message. So let's add a message ID to be a type of string and it needs to be unique.
3:50:103 hours, 50 minutes, 10 secondsNow let's add a message here to be a type of message. Give it a relation decorator targeting the fields message
3:50:183 hours, 50 minutes, 18 secondsID which we defined above referencing the ID field in the message model. And let's add on delete here to
3:50:273 hours, 50 minutes, 27 secondsbe cascade. So if this message gets deleted, the fragment gets deleted as well. And now we just have to fix this
3:50:343 hours, 50 minutes, 34 secondserror by adding a proper relation here in the message. So the message does not have to have a fragment. If the user is
3:50:423 hours, 50 minutes, 42 secondssending a message, there will be no fragment. Only for the AI response will there be a fragment. That's why we're
3:50:493 hours, 50 minutes, 49 secondsgoing to create a fragment field and we're going to make it a type of fragment, but it's going to be optional
3:50:563 hours, 50 minutes, 56 secondslike this. And then let's go back inside of the fragment model and let's create a sandbox URL to be a type of string, the
3:51:043 hours, 51 minutes, 4 secondstitle to be a type of string, and files to be a type of JSON. So this is quite
3:51:113 hours, 51 minutes, 11 secondscool. Uh it's very nice that possess allows this and it's perfect for our use case because files is not exactly
3:51:193 hours, 51 minutes, 19 secondssomething that in my opinion makes sense to create a whole new model for because it's just a simple mapping of the file
3:51:263 hours, 51 minutes, 26 secondspath and the content and it can be pretty much infinite in size. Well, obviously not infinite but you know what I mean. So I think this is a very good
3:51:353 hours, 51 minutes, 35 secondsuse case of using JSON in posgress and then we can just copy the created ad and the updated ad from the model above just
3:51:443 hours, 51 minutes, 44 secondslike that. Now in here you should have no errors and again make sure that you're using the Prisma extension simply so you have the syntax
3:51:533 hours, 51 minutes, 53 secondshighlighting and it will tell you in advance if you've done anything incorrectly here. So what we have to do now is we have to push this. So let's go
3:52:013 hours, 52 minutes, 1 secondahead and shut down our app. Make sure you have shut down your ingest server as well. And I will now run npx prisma
3:52:083 hours, 52 minutes, 8 secondsmigrate dev. And let's just wait a second for this to connect to our database.
3:52:153 hours, 52 minutes, 15 secondsSo I have gotten an error. In your case, you might not get an error. But I think this is because yes, it detected some
3:52:233 hours, 52 minutes, 23 secondsdrift. Your database schema is not in sync with your migration history. That's because I told you to manually delete the migration folder. This is not a
3:52:313 hours, 52 minutes, 31 secondsproblem. We are working with development data here. So let's use npx prisma migrate reset first and let's just reset
3:52:393 hours, 52 minutes, 39 secondsthe entire thing. So let me just confirm this. Um and even if this doesn't work, you can always just create a new
3:52:463 hours, 52 minutes, 46 secondspostgress database and then just go instead of environment and just use a new database URL. Right? That's like the ultimate brute force you can do. So
3:52:553 hours, 52 minutes, 55 secondsafter I've done my migrate reset, I will try migrate dev again.
3:53:013 hours, 53 minutes, 1 secondAnd this time with no problems, I'm going to call this message-fragment.
3:53:073 hours, 53 minutes, 7 secondsAnd there we go. Just like that, we have created new schema here. And now you can go ahead and run the npx Prisma studio.
3:53:153 hours, 53 minutes, 15 secondsAnd in here, you should see the fragment and the message as the models, meaning it successfully created that. Perfect.
3:53:213 hours, 53 minutes, 21 secondsSo now let's go ahead and let's actually use these things. So what I want to do now is I want to go inside of source and
3:53:293 hours, 53 minutes, 29 secondsI want to create a new folder called modules.
3:53:333 hours, 53 minutes, 33 secondsSo I like to have a module-based structure in my application. So instead of having my procedures written here
3:53:413 hours, 53 minutes, 41 secondsrandomly, I will have them in their own module. So I like to separate modules either by large chunks of my application
3:53:503 hours, 53 minutes, 50 secondslike homepage, landing page, pricing or by entity models that I have in my database. So for example, let's go ahead
3:54:003 hours, 54 minutesand let's create messages in here. So inside of here, I will keep everything message related. So for example, one of
3:54:073 hours, 54 minutes, 7 secondsthose things would be all the things that go on the server uh regarding messages, specifically all our procedures.
3:54:163 hours, 54 minutes, 16 secondsSo now that we are inside of here, we're going to import uh initc router or create tRPC router from trpc init. And
3:54:253 hours, 54 minutes, 25 secondslet's export const messages router here to be create trpc router. And then inside of here, let me just quickly
3:54:333 hours, 54 minutes, 33 secondscheck inside of my TRPC routers app. I seem to have this existing one called invoke. So now what we're going to do is
3:54:403 hours, 54 minutes, 40 secondswe're going to create a create procedure. So this will be accessed through as message.create.
3:54:493 hours, 54 minutes, 49 secondsThis is how you will call this. That's why it's called create and not create message because it would be redundant.
3:54:553 hours, 54 minutes, 55 secondsMessage dot message create or create message, right? Makes no sense. So let's add a base procedure which will of
3:55:023 hours, 55 minutes, 2 secondscourse be a protected procedure later on in the tutorial. For now it's perfectly fine to be a base procedure. Let's go ahead and define an input here. And I'm
3:55:113 hours, 55 minutes, 11 secondsgoing to set this to be uh the value. It can be the value. It can be the prompt.
3:55:173 hours, 55 minutes, 17 secondsI think value is good enough. And let me just import Z from zod.
3:55:223 hours, 55 minutes, 22 secondsLet's go ahead and set it to be a string. And let's give it a message is required error.
3:55:323 hours, 55 minutes, 32 secondsGreat. And then let's go ahead and let's chain mutation here is going to be asynchronous.
3:55:403 hours, 55 minutes, 40 secondsLet's dstructure the input from here like this. And then inside of here, what we're going to do is we're going to
3:55:493 hours, 55 minutes, 49 secondscreate a new message by using await Prisma from lib database and then go
3:55:573 hours, 55 minutes, 57 secondsahead dot message dotcreate and pass in the data inside. And let's add the content to be input value here
3:56:063 hours, 56 minutes, 6 secondslike this. And let me just see what else do I have to add inside because I already forgot how my schema looks like.
3:56:133 hours, 56 minutes, 13 secondsSo I have to add a role and I have to add a type. So my role here will be user and my type here will be result. Right?
3:56:223 hours, 56 minutes, 22 secondsThere's no loading. This is an instant message created by the user.
3:56:263 hours, 56 minutes, 26 secondsPerfect. So I think I actually don't even need to uh put that in any type of constant. I think this works just fine.
3:56:353 hours, 56 minutes, 35 secondsAnd what I'm doing after this is I'm actually invoking my background job. So let me go inside of the routers here and
3:56:423 hours, 56 minutes, 42 secondslet me just copy this part inside of procedures and let's go right here. So let me import inest from the
3:56:503 hours, 56 minutes, 50 secondsinest client. Let me show you my imports a bit simply so you're on the same page. There we go.
3:56:583 hours, 56 minutes, 58 secondsAnd obviously we're going to have to change this as well. It makes no sense to be called test. Uh and uh this is
3:57:053 hours, 57 minutes, 5 secondswhat we should actually do. We should keep this as created message or new message and then simply return created
3:57:133 hours, 57 minutes, 13 secondsmessage simply. So our API response has some kind of well response for the user back. Perfect. Now that we have the
3:57:223 hours, 57 minutes, 22 secondsbasic message router created with some basic validation here, let's go ahead inside of TRPC routers and let's remove
3:57:323 hours, 57 minutes, 32 secondseverything inside of here. And then in here add messages messages router. You can import the
3:57:393 hours, 57 minutes, 39 secondsingest. You can you can remove zone. You can remove inest and you can remove the base procedure just like this.
3:57:473 hours, 57 minutes, 47 secondsAnd this is how we're going to add all other uh module related things inside.
3:57:533 hours, 57 minutes, 53 secondsSo later when we add fragments it will be fragments router and we will control all procedures inside of its own module.
3:58:033 hours, 58 minutes, 3 secondsRight, like this. Great. So now obviously we need to fix some things in our page I believe. So let's go inside of source app page.
3:58:153 hours, 58 minutes, 15 secondsAnd in here this is now create message. This will be TRPC dot messages.create.
3:58:233 hours, 58 minutes, 23 secondsAnd the on success is the same. In here we can just say on success message created.
3:58:313 hours, 58 minutes, 31 secondsAnd then let's go ahead and let's use create message is pending and create message.mmutate just like that. So right now uh this
3:58:403 hours, 58 minutes, 40 secondsshould still work exactly the same right let's go ahead and just quickly try it out uh just to make sure we didn't
3:58:483 hours, 58 minutes, 48 secondsaccidentally break something. So npm rundev in one npx inest cli latest dev in the other one. Let's go and we can
3:58:553 hours, 58 minutes, 55 secondsinstall the new one. If it appears it's okay. And let's go ahead and open local host 3000 here. And I'm going to do
3:59:033 hours, 59 minutes, 3 secondscreate a landing page simply because this is the simplest thing that most likely won't go wrong. There we go.
3:59:103 hours, 59 minutes, 10 secondsLooks like it is created. So I'm going to click invoke a background job here.
3:59:163 hours, 59 minutes, 16 secondsAnd looks like message was created. I'm going to go inside of my inest developer server here. And I'm going to wait for this to complete.
3:59:263 hours, 59 minutes, 26 secondsAnd here we have it. It is complete. and quite a nice result. I'm always impressed by its landing pages. It seems
3:59:343 hours, 59 minutes, 34 secondsto have uh gotten that it seems to have gotten very good at creating landing pages. Uh great. So, looks like
3:59:413 hours, 59 minutes, 41 secondseverything is still working. And now what we have to do is while we are storing the messages from the user, we
3:59:493 hours, 59 minutes, 49 secondsare not storing the messages from the AI. So in order to keep track of that, how about we extract the messages here by using use query from tanstack query.
4:00:024 hours, 2 secondsSo just make sure you add this import here. Pass in tRPC do messages. And I just remembered we didn't create any. So let's simply go inside of the messages
4:00:104 hours, 10 secondsrouter which is inside of your modules here. And simply create uh let's call this get many base procedure.
4:00:204 hours, 20 secondsThe input doesn't really matter for now.
4:00:234 hours, 23 secondsLet's just do a query here. Again, it's going to be an asynchronous method.
4:00:304 hours, 30 secondsAnd in here, what we're going to do is get the messages to be await Prisma message find many. And how about we do
4:00:404 hours, 40 secondsorder by and let me just see I have to use updated at or created at let's use ascending and return the messages.
4:00:504 hours, 50 secondslike this and just like that we have our get many procedure. So now we can go back here and add it. There we go. Get many. This will be query options here.
4:01:014 hours, 1 minute, 1 secondAnd then inside of here, let's go ahead and do it below the button.
4:01:064 hours, 1 minute, 6 secondsJSON.stringify messages null 2. So now you can see that I just created this create a landing
4:01:144 hours, 1 minute, 14 secondspage with the ro user. So if I go ahead and do create a red landing page and
4:01:224 hours, 1 minute, 22 secondsinvoke this background job and refresh this page, you can see that now I have create a landing page and after that I have a create a red landing page. So let
4:01:314 hours, 1 minute, 31 secondsme go inside of my procedures and change the updated ad to be descending and refresh and then the newer message
4:01:384 hours, 1 minute, 38 secondsappears at the top. And if you want you can wait for the result but uh you know it's it's not that important right now
4:01:454 hours, 1 minute, 45 secondsbut it definitely created a red landing page. Great. So now again I'm expecting
4:01:524 hours, 1 minute, 52 secondsthat besides having these steps to get sandbox ID create our update and then finalize. I also needed to save this
4:02:004 hours, 2 minutesentire thing to the database so that we can access it from the UI and not from the inest developer server. So let's go
4:02:084 hours, 2 minutes, 8 secondsahead back inside of ingest functions here and then we're going to create a whole new step here at
4:02:174 hours, 2 minutes, 17 secondsthe bottom. So after we get our sandbox URL, we have to go ahead and actually
4:02:234 hours, 2 minutes, 23 secondssave this to the database. So let's do await step.r run save result
4:02:324 hours, 2 minutes, 32 secondsasynchronous method like this. And in here, let's return await Prisma dossage.
4:02:404 hours, 2 minutes, 40 secondsWhoops. We have to import Prisma from lib database. So just make sure you add this import.
4:02:464 hours, 2 minutes, 46 secondsAnd we're basically going to save the content. So prisma dossage.create.
4:02:524 hours, 2 minutes, 52 secondsThe data will be the following. Content is going to be result state data summary
4:03:014 hours, 3 minutes, 1 secondand role will be assistant. and type here will be result like this. And let's
4:03:094 hours, 3 minutes, 9 secondsalso extend it a bit further by also creating the fragment relation. Let's pass in the sandbox URL here. Uh sandbox
4:03:194 hours, 3 minutes, 19 secondsURL doesn't exist. Did I do something incorrectly in my schema or is it just the syntax that I didn't finish? It
4:03:274 hours, 3 minutes, 27 secondsdefinitely does exist here. So perhaps I just have to do result actually sandbox URL like this.
4:03:364 hours, 3 minutes, 36 secondsOh my apologies. This is not how you do it. Create and then sandbox URL. Sandbox
4:03:434 hours, 3 minutes, 43 secondsURL. And let's go ahead and add the the title of the fragment to be just fragment and files can be result state data files.
4:03:554 hours, 3 minutes, 55 secondsThere we go.
4:03:574 hours, 3 minutes, 57 secondsSo now let's go ahead and try and do this again. So use a simple prompt again. Build a blue landing page. So
4:04:064 hours, 4 minutes, 6 secondsbasically something simple and then wait for this to finish. And after it finishes, you should now see another
4:04:144 hours, 4 minutes, 14 secondsstep happening here which is to save the result in Prisma. It should create a assistant message and it should also
4:04:234 hours, 4 minutes, 23 secondscreate a fragment with the sandbox URL and all the files that it created.
4:04:314 hours, 4 minutes, 31 secondsThere we go. So we have the save result step. And now if I go back here, there we go. You can see I have a new message
4:04:394 hours, 4 minutes, 39 secondshere at the top. The content includes the task summary, created a fully responsive production quality blue
4:04:464 hours, 4 minutes, 46 secondsthemed landing page in app page tsx. The layout includes a navbar, hero section, favorites, pricing, contact form, and
4:04:534 hours, 4 minutes, 53 secondsfooter. Uh, and we don't really have access to the sandbox URL here. That's because what we have to do if we want to
4:05:014 hours, 5 minutes, 1 secondsee that is go inside of the message router and we have to add include fragment true. And after you do that,
4:05:084 hours, 5 minutes, 8 secondsyou will see the entire fragment content. So you will see the entire source code actually. And you will see
4:05:154 hours, 5 minutes, 15 secondsthe sandbox URL. So if you try adding that here, we now have the blue landing page. And that is basically what we now
4:05:244 hours, 5 minutes, 24 secondshave to do. So uh let's remove the fragment for now. We can easily add it later because I'm not sure if we need it
4:05:314 hours, 5 minutes, 31 secondsand it's taking up a lot of space. Uh perfect. So this is what I actually wanted to do for this chapter. I wanted
4:05:384 hours, 5 minutes, 38 secondsus to add the messages router and I think that we can do one more thing while we are here and that is the
4:05:464 hours, 5 minutes, 46 secondsfollowing. We can go inside of ingest here instead of functions and let's just change this right. Let's stop calling it
4:05:534 hours, 5 minutes, 53 secondshello world. Let's go ahead and call this uh code agent. The ID will be code
4:06:004 hours, 6 minutesagent. And let's also change the event to be code agent
4:06:084 hours, 6 minutes, 8 secondsrun like this. And now just make sure that you go back inside of your modules
4:06:154 hours, 6 minutes, 15 secondsmessages server procedures here and when you invoke it make sure to change this
4:06:224 hours, 6 minutes, 22 secondslike that or any other place where you do this make sure to change it. For me it's only one place code agent run. Uh
4:06:314 hours, 6 minutes, 31 secondsokay. And now we have to also go inside of app API ingest route and we have to replace this with code agent.
4:06:404 hours, 6 minutes, 40 secondsThere we go. Go ahead and refresh.
4:06:444 hours, 6 minutes, 44 secondsUh if it's still stuck, you can always shut this down. And I would recommend shutting both of them down.
4:06:534 hours, 6 minutes, 53 secondsAnd let's go ahead and refresh again. Build a green landing page.
4:07:014 hours, 7 minutes, 1 secondmessage created. And I recommend waiting it out just to confirm it works since we just changed this to be a code agent function.
4:07:124 hours, 7 minutes, 12 secondsThere we go. Seems to work quite well. And I think that is it for this chapter. Oh, this one's nice.
4:07:204 hours, 7 minutes, 20 secondsuh we've basically created the message model, the fragment model which basically puts it puts us in a position where we can start creating proper UI
4:07:294 hours, 7 minutes, 29 secondsaround this because uh by having the fragment and by having the message we can create the file explorer we can
4:07:384 hours, 7 minutes, 38 secondscreate the I frame where we render the URL and we can create the message containers on this side and while we are
4:07:454 hours, 7 minutes, 45 secondshere it is important to do uh one more thing go inside of your functions.TTS in
4:07:514 hours, 7 minutes, 51 secondsthe ingest here and after you do uh the result from the network run define an is
4:07:594 hours, 7 minutes, 59 secondserror constant and it will be an error if we don't have result data summary
4:08:064 hours, 8 minutes, 6 secondsresult data.state state my apologies state
4:08:124 hours, 8 minutes, 12 secondsdata summary or if object do keys result state data files or an alternative empty
4:08:224 hours, 8 minutes, 22 secondsarray.length is equal to zero. So if any of those two are missing it means something went
4:08:314 hours, 8 minutes, 31 secondswrong. So inside of here when we save the result what we're going to do is we're going to check if is error we're
4:08:394 hours, 8 minutes, 39 secondsgoing to return content.
4:08:434 hours, 8 minutes, 43 secondsWhoops my apologies. We're going to uh return await
4:08:494 hours, 8 minutes, 49 secondsPrisma message create data content something went wrong.
4:08:584 hours, 8 minutes, 58 secondsPlease try again.
4:09:024 hours, 9 minutes, 2 secondslike this. Let's give it a role of assistant and let's give it a type of error like this. There we go. So, we do
4:09:114 hours, 9 minutes, 11 secondsan early return if we detect it is an error. So, we don't create the fragment if we don't have the information to
4:09:194 hours, 9 minutes, 19 secondscreate it. And the one thing I completely forgot about is the types here. So, right now files is a type of any, summary is a type of any, right?
4:09:294 hours, 9 minutes, 29 secondsAnd while this seems to not create any problems for us, I want to show you that there is a way so that you can properly type your entire network state because I
4:09:374 hours, 9 minutes, 37 secondsthink that is important and it will make your project more maintainable. So let's go ahead above the uh code agent here
4:09:454 hours, 9 minutes, 45 secondsand let's create an interface agent state and let's go ahead and do the following. Let's make a summary a string
4:09:544 hours, 9 minutes, 54 secondsand let's create files which can be mapped as a record string string. But I don't like this simply because there is a way to make it uh closer to what we
4:10:034 hours, 10 minutes, 3 secondsexpect and it's basically opening an object and then defining path as the key and simply the content as a string. I
4:10:114 hours, 10 minutes, 11 secondsthink this more closely resembles what we expect rather than record string string.
4:10:184 hours, 10 minutes, 18 secondsNow that we have the agent state, uh we just have to find all the places to use it. So starting with uh oh yes, I really
4:10:264 hours, 10 minutes, 26 secondsdon't like this. We should not name our function and our agent the same. So how about we rename one of them? Let's call
4:10:354 hours, 10 minutes, 35 secondsthis uh code agent function like this. and then go back inside of
4:10:424 hours, 10 minutes, 42 secondsyour uh source app API inest route code agent function code agent function like
4:10:504 hours, 10 minutes, 50 secondsthis way safer like that okay now let's go ahead and use the agent state instead
4:10:574 hours, 10 minutes, 57 secondsof the code agent here we can open uh pointy brackets and pass it inside so that's step one then the next place we
4:11:064 hours, 11 minutes, 6 secondscan use it is in the tool create or update files so In here we have step and network and you can see that files here
4:11:134 hours, 11 minutes, 13 secondsare undefined even though we added it to the agent state. That's because what we have to do here is we have to define this step as a type of tool from inest
4:11:224 hours, 11 minutes, 22 secondsagent kit. So just make sure that you import the type tool from inest agent kit. I think you can specify type like this.
4:11:324 hours, 11 minutes, 32 secondsLet's go back here. So it's going to be a type of tool dot options and pass in agent state inside. And then when you
4:11:414 hours, 11 minutes, 41 secondshover over files you will see that it has the correct state. So that's the second place and the third place is in
4:11:494 hours, 11 minutes, 49 secondsthe network here. So open this up agent state like this and then data dos summary is a
4:11:574 hours, 11 minutes, 57 secondstype of string now and you will see that you now have autocomplete. And if you type something else,
4:12:044 hours, 12 minutes, 4 secondsyou should get an error now. Right? So when you clearly define your state, it is much stricter and you will not be
4:12:104 hours, 12 minutes, 10 secondsmaking any mistakes now. Uh perfect. So I think that this is it for this chapter
4:12:174 hours, 12 minutes, 17 secondsthen. Uh and let me just check uh how does this look like? Summary. So this looks like it doesn't need anything
4:12:254 hours, 12 minutes, 25 secondsbecause life cycle seems to infer properly from create agent agent state here. Right? So if I change this, I'm getting an error. Perfect.
4:12:354 hours, 12 minutes, 35 secondsGreat. So I think that this could be it for this chapter. So I'm going to stop here. Let me just fix this fix this
4:12:434 hours, 12 minutes, 43 secondsdescription coding agent like this. And of course, yeah, if you want to, you can change the name of this. I told you you can always go
4:12:514 hours, 12 minutes, 51 secondsinside of your let me find the folder sandbox templates toml file and you can change the name
4:13:014 hours, 13 minutes, 1 secondhere and then simply run inside of this folder E2B template build.
4:13:074 hours, 13 minutes, 7 secondsGreat. So now that we have this let's go ahead and open a pull request.
4:13:124 hours, 13 minutes, 12 secondsIf you want to, you can also, you know, try another one just to confirm it works because we changed again the name of our function. But at this point, I think you
4:13:214 hours, 13 minutes, 21 secondsknow how to fix it. But let's just try build a yellow landing page just for sanity check so I don't end the
4:13:294 hours, 13 minutes, 29 secondschapter and things are broken and seems to work just fine. Let's go ahead and see the yellow landing page.
4:13:394 hours, 13 minutes, 39 secondsPerfect. So let's go ahead and open a pull request. So this chapter is 08 messages. Uh we just created the message
4:13:484 hours, 13 minutes, 48 secondsschema fragment schema. We're saving the user prompt and we are saving the user response. Perfect. So I'm going to go
4:13:554 hours, 13 minutes, 55 secondsahead and I'm going to create a new branch 08 messages. I'm going to stage all of my changes.
4:14:044 hours, 14 minutes, 4 secondsI'm going to add a commit message and I'm going to commit and publish the branch.
4:14:104 hours, 14 minutes, 10 secondsIf you want to, there is a free Code Rabbit extension which can help you review all of your files here. Now,
4:14:174 hours, 14 minutes, 17 secondslet's go ahead and go inside of our GitHub and let's go ahead and open a pull request and let's review with the summary and the diagram here.
4:14:294 hours, 14 minutes, 29 secondsAnd here we have a summary. So, let's quickly go over it. So, we end this chapter. We introduced a new messages
4:14:364 hours, 14 minutes, 36 secondssystem allowing users to create and view messages with associated metadata and fragments. Messages now display
4:14:434 hours, 14 minutes, 43 secondsadditional details including message type and role. And we did some refactors such as we streamlined the backend
4:14:524 hours, 14 minutes, 52 secondsprocedures and routing for the message management and we removed the legacy user and post data structures. Perfect.
4:14:594 hours, 14 minutes, 59 secondsSo in here we have the diagram but nothing much has been changed from last time except this time we have additional
4:15:064 hours, 15 minutes, 6 secondsstep before we invoke the code agent run which is that we save the user message in the database and we have one more
4:15:144 hours, 15 minutes, 14 secondsstep in the background job where we save the uh message to the database to the Prisma here. Great. And in here we have
4:15:234 hours, 15 minutes, 23 secondsuh some comments but all of these things will be changed. The on error will be added here later. This will basically
4:15:314 hours, 15 minutes, 31 secondsnot be in this component at all. So that's the only reason why I keep you know not fixing this comments. Uh not because they're wrong. They're
4:15:384 hours, 15 minutes, 38 secondscompletely right. But it's not the component they are going to be in anyway. This is just for demonstration.
4:15:444 hours, 15 minutes, 44 secondsRight? We are now going to start and build the proper UI in here. Uh I'm pretty sure this is not needed simply because uh inest events have their own
4:15:534 hours, 15 minutes, 53 secondstry catch methods. So let's go ahead now uh and go through the rest of these. So in here it recommends pagionation.
4:16:014 hours, 16 minutes, 1 secondThat's something we can look into later.
4:16:034 hours, 16 minutes, 3 secondsBut yes, it's very easy to add pagionation with Prisma. As you can see, they have take, they have skip, and that's pretty much all you need here. Uh
4:16:124 hours, 16 minutes, 12 secondsin here, it recommends limiting the length of the message, and that is definitely a good thing. Yeah, we don't want any user to be able to spam our app
4:16:204 hours, 16 minutes, 20 secondswith a huge number of tokens. So we will have to limit this to some reasonable number. This is a very good suggestion here. Let's go ahead and merge our pull
4:16:294 hours, 16 minutes, 29 secondsrequest. As always, I'm not going to delete my branch. Instead, what I'm going to do is now I'm going to go back to my main branch here and I'm going to click on synchronize changes.
4:16:404 hours, 16 minutes, 40 secondsAnd once that is finished, I can go inside of my source graph and confirm messages are the last merged
4:16:484 hours, 16 minutes, 48 secondschapter. Amazing. Amazing job. and see you in the next chapter.
Chapter 10: 09 Projects
4:16:574 hours, 16 minutes, 57 secondsIn this chapter, we're going to add the projects entity to our application. So, this chapter will be quite similar to
4:17:044 hours, 17 minutes, 4 secondsthe previous one where we introduced the message model. So, in this chapter, we're going to add the project schema.
4:17:124 hours, 17 minutes, 12 secondsWe're going to add message relations to that project. And then we're going to create a new project on user prompt. And
4:17:204 hours, 17 minutes, 20 secondsthe last thing we have to do is preserve project ID in background jobs so we know where to store that AI result.
4:17:294 hours, 17 minutes, 29 secondsBasically, each message needs to belong to a project so we can keep track of all of our uh AI generations. So let's go
4:17:384 hours, 17 minutes, 38 secondsahead and start by adding a new Prisma schema. As always, confirm you are on your main branch. And if you haven't,
4:17:454 hours, 17 minutes, 45 secondssynchronize your changes. You should have 08 messages as your last merge. So I'm going to go inside of Prisma. I have
4:17:524 hours, 17 minutes, 52 secondssome migrations here because we added them last time. And now let's go above the message here. And actually let's go above message type and above message ro.
4:18:024 hours, 18 minutes, 2 secondsAnd let's add a model project. The ID will be the same as the message. So you can add it here. The name will be a
4:18:124 hours, 18 minutes, 12 secondsstring. And then we're just going to have created at and updated at. So we can add this and then down here add
4:18:214 hours, 18 minutes, 21 secondsmessages which will be a type of message like this. And now we have to create an equal relation in the message model. So
4:18:294 hours, 18 minutes, 29 secondslet's go inside of the message model here and let's go ahead and add project
4:18:364 hours, 18 minutes, 36 secondsID to be a type of string and below that project to be a type of project. Give it
4:18:434 hours, 18 minutes, 43 secondsa relation decorator with fields project ID references ID and on delete cascade.
4:18:544 hours, 18 minutes, 54 secondsSo exactly the same as the message relation in the fragment right we are aiming for project ID field referencing
4:19:014 hours, 19 minutes, 1 secondthe ID field in the project and if the project gets deleted the message gets deleted as well and then the fragment
4:19:084 hours, 19 minutes, 8 secondsgets deleted as well. Perfect. So now that we have this we have to push that to our database. So I recommend shutting
4:19:164 hours, 19 minutes, 16 secondsdown both of your uh servers here. And let's first do npx prisma migrate reset
4:19:234 hours, 19 minutes, 23 secondssimply so we remove everything from our database because we have invalid data at the moment. And once this is deleted,
4:19:324 hours, 19 minutes, 32 secondslet's go ahead and do npx prisma migrate dev. And once it connects to the database, let's go ahead and call this migration project.
4:19:424 hours, 19 minutes, 42 secondsThere we go. So I'm going to call this projects like this. And that should apply the migration. Perfect. Now let's
4:19:504 hours, 19 minutes, 50 secondsgo ahead and start this server. And let's start the ingest server here.
4:19:564 hours, 19 minutes, 56 secondsThere we go. So now what we're going to do is the following. We're going to go inside of source inside of modules and
4:20:044 hours, 20 minutes, 4 secondslet's copy the messages and paste it here. And let's rename it to projects.
4:20:114 hours, 20 minutes, 11 secondsLet's go inside of server procedures.
4:20:134 hours, 20 minutes, 13 secondsMake sure you are inside of projects here. We're going to change this from messages router to projects router like
4:20:204 hours, 20 minutes, 20 secondsthis. And then we're going to modify uh how this works as well. So for the get
4:20:284 hours, 20 minutes, 28 secondsmany change this to be projects and then in here await prisma.pro
4:20:354 hours, 20 minutes, 35 secondsfind many. So that's the get many procedure for the project's router.
4:20:404 hours, 20 minutes, 40 secondsfor the create here uh the value will also be uh the message right and
4:20:474 hours, 20 minutes, 47 secondsactually I'm not even yeah so we are going to create a project by entering a
4:20:544 hours, 20 minutes, 54 secondsprompt right so we are not going to create a new project and then give the project a name instead we're going to have a big landing page like this and we
4:21:034 hours, 21 minutes, 3 secondswill simply say hey enter something like create a Netflix clone and then we're going to click create and this will
4:21:104 hours, 21 minutes, 10 secondscreate both the message and the project at the same time. So in the create we actually only have the value right the
4:21:194 hours, 21 minutes, 19 secondsprompt. So that's going to be this. So we're going to do the following const created project
4:21:274 hours, 21 minutes, 27 secondsawait prisma project create and then for the data uh we have to give
4:21:334 hours, 21 minutes, 33 secondsa project a name. So for this we're going to add a generator package to our project.
4:21:414 hours, 21 minutes, 41 secondsSo let's go ahead and let's quickly do npm install random words slugs. Random
4:21:494 hours, 21 minutes, 49 secondsword slugs. You can of course use a billion other uh generators, but this is the one I found that looks the most like
4:21:584 hours, 21 minutes, 58 secondsuh all the other apps I can find. So this is the version 0.1.7 in case you're interested. And let's go ahead and use it now. So let me just add it here.
4:22:084 hours, 22 minutes, 8 secondsGenerate slug from random words slug.
4:22:114 hours, 22 minutes, 11 secondsAnd then in here uh in here the name will be generate slug and pass in two
4:22:194 hours, 22 minutes, 19 secondswords. And let's go ahead and open the settings and pass in the format to be ke like this. So that will be it for the
4:22:284 hours, 22 minutes, 28 secondsname. And now we have to immediately create the message. So we can do that either uh separately like this or we can
4:22:364 hours, 22 minutes, 36 secondsjust pass in the message messages here and then open the create inside and you can just copy this
4:22:444 hours, 22 minutes, 44 secondsexactly like this and then you can remove this and then we start the ingest here and
4:22:524 hours, 22 minutes, 52 secondsbesides sending the value we will also send the project ID to be created project ID and then in here you will
4:23:014 hours, 23 minutes, 1 secondhave created project as the return and that's it. That is our create method for the project's router. So in here it
4:23:104 hours, 23 minutes, 10 secondswould be a good idea uh to limit the length as our code rabbit suggested previously.
4:23:164 hours, 23 minutes, 16 secondsSo let me add maximum here and let's add I don't know 10,000 maybe that could be the good upper limit.
4:23:264 hours, 23 minutes, 26 secondsMessage is too long. This is not actually the message.
4:23:324 hours, 23 minutes, 32 secondsThis is prompt, right? Or value since this is called value. So yeah, it's
4:23:414 hours, 23 minutes, 41 secondseither going to be required or if it's longer than 10,000 characters, we're going to say, okay, that's too long. Uh you can of course modify this later to
4:23:494 hours, 23 minutes, 49 secondshowever you like. Perfect. So you can of courseh also play around uh with this, right? It even has some more options
4:23:574 hours, 23 minutes, 57 secondswhich you can do but I found this to be sufficient and also in our Prisma schema the project name is not unique so it
4:24:064 hours, 24 minutes, 6 secondsdoesn't matter if there are conflicts with this right great so now that we have this we also
4:24:144 hours, 24 minutes, 14 secondshave to modify our messages procedures here because right now uh they are not exactly
4:24:244 hours, 24 minutes, 24 secondsworking. So let's go inside of the create base procedure here. And for the
4:24:304 hours, 24 minutes, 30 secondsvalue, well, we can just copy this just so we're on the same page here. So
4:24:364 hours, 24 minutes, 36 secondseither min or max. And then let's also add project ID here, which will be a
4:24:444 hours, 24 minutes, 44 secondstype of string with a minimum value of one and a message project ID is required
4:24:524 hours, 24 minutes, 52 secondslike this. And then in here when we create a new message we will also assign project ID to be input project ID. So
4:25:004 hours, 25 minuteseach message will be stored in an individual uh agent in an individual project. Right? And now what we have to
4:25:094 hours, 25 minutes, 9 secondsdo is also modify the ingest send to also accept project ID from input project ID like this. There we go.
4:25:204 hours, 25 minutes, 20 secondsAnd now what we have to do is we have to modify our ingest functions to accept the project ID.
4:25:304 hours, 25 minutes, 30 secondsSo let's go all the way down here to when we actually save the result. And you can see we have
4:25:374 hours, 25 minutes, 37 secondsan error here. That's because this message is missing the project ID. So project ID will be input. My apologies.
4:25:464 hours, 25 minutes, 46 secondsIt is event. Let me just find it. Uh how do I do this? Just a second.
4:25:544 hours, 25 minutes, 54 secondsEvent data value. So this will be event data project ID like this and do the same thing here.
4:26:054 hours, 26 minutes, 5 secondsSo basically you have to make sure that anytime a message is created you add project ID. So you can highlight this
4:26:124 hours, 26 minutes, 12 secondspart and use command shift F to search it through your entire project. And basically every place that you find this, it should include project ID. So
4:26:224 hours, 26 minutes, 22 secondsjust be extra careful in the functions of the ingest here so you don't forget to uh so you don't accidentally misspell
4:26:304 hours, 26 minutes, 30 secondsthis, right? Because there are no strict typings here. We can improve this later on, but for now just make sure you
4:26:384 hours, 26 minutes, 38 secondsdidn't misspell project ID when you extract it from event data.
4:26:434 hours, 26 minutes, 43 secondsPerfect. And now let's also do inest dot send simply so we see that we are sending project ID in all places that we
4:26:524 hours, 26 minutes, 52 secondsneed. Great. So in here we are extracting it from the created project but in here it is from input project ID.
4:26:594 hours, 26 minutes, 59 secondsPerfect. So now what we have to do is we have to go inside of source app folder page.tsx
4:27:074 hours, 27 minutes, 7 secondsand we have to modify this. So this will no longer be creating messages and we no longer have to query messages. We only did that before because we were
4:27:154 hours, 27 minutes, 15 secondsinterested in seeing them. So we can remove this and instead we can do create project and this will be TRPC
4:27:234 hours, 27 minutes, 23 secondsuh projects which doesn't exist. The reason it doesn't exist is because we forgot to add it. So inside of TRPC
4:27:294 hours, 27 minutes, 29 secondsfolder routers app add projects projects router and you can import it from modules projects server procedures.
4:27:384 hours, 27 minutes, 38 secondsBasically this thing we just created.
4:27:414 hours, 27 minutes, 41 secondsAnd now that we have that we have a proper working projects create we can remove uh on success and instead we can
4:27:494 hours, 27 minutes, 49 secondsadd on error here and you can do toast error error dot message like that.
4:28:004 hours, 28 minutesAnd now that we have the create project let's go ahead uh and let's do create project is
4:28:064 hours, 28 minutes, 6 secondspending and create project domutate. And this will be submit
4:28:134 hours, 28 minutes, 13 secondslike this. And let's go ahead and just modify this slightly by adding height
4:28:194 hours, 28 minutes, 19 secondsscreen with screen flex item center and justify center. And inside of here, let's do this.
4:28:314 hours, 28 minutes, 31 secondsLet's give this a class name. Maximum width 7 XL MX auto flex item center.
4:28:404 hours, 28 minutes, 40 secondsLet's do flex call and gap Y for an items and justify center.
4:28:514 hours, 28 minutes, 51 secondsAnd now when I refresh this, there we go. It looks like a centered little prompt. We can maybe expand this. Let's see. maximum width.
4:29:034 hours, 29 minutes, 3 secondsOkay. Uh screen let's just keep it at 7 XL like this.
4:29:114 hours, 29 minutes, 11 secondsAnd when you write test now and click submit uh it should say well nothing nothing for the success message. But now
4:29:194 hours, 29 minutes, 19 secondswhat should happen is the following. It should create well I have no idea what it's going to create now because I just
4:29:264 hours, 29 minutes, 26 secondstyped test. So let's actually see. Okay, so the it returns the error. Something went wrong. Please try again. Right?
4:29:344 hours, 29 minutes, 34 secondsEven though it generated something in the sandbox, I have no idea what that is. I think not a single file was modified yet. So it's just an empty Nex.js page. But if you look at your
4:29:434 hours, 29 minutes, 43 secondsPrisma Studio now, and if you actually start it, so let's do npx Prisma Studio.
4:29:504 hours, 29 minutes, 50 secondsYou should now have a project. And inside of that project, you should have There we go. I have a name uninterested
4:29:584 hours, 29 minutes, 58 secondsplastic. So a new project was generated and I have two messages inside. The first is the message from the user who
4:30:054 hours, 30 minutes, 5 secondsasked test and then a response from the assistant which is a type of error because something went wrong because this is clearly not something the AI can
4:30:144 hours, 30 minutes, 14 secondsgenerate. Right? So let's try build a landing page and let's click submit. And what should happen now in the Prisma
4:30:224 hours, 30 minutes, 22 secondsStudio here uh this one is that we should have a new project now modern London with one
4:30:304 hours, 30 minutes, 30 secondsmessage. As you can see let's just refresh. There we go. So build a landing page by user. We are running this and
4:30:394 hours, 30 minutes, 39 secondsnow we should have a successful example and all the messages for this project will be stored in that project. So you
4:30:474 hours, 30 minutes, 47 secondscan see how our submit data was a project ID and the value build a landing page. So there we go. Now when I refresh
4:30:554 hours, 30 minutes, 55 secondsthis again, I should get another message from the assistant with the task
4:31:024 hours, 31 minutes, 2 secondssummary. And this message also has a proper fragment. And inside of here we should be able to see let's open in new
4:31:114 hours, 31 minutes, 11 secondstab this fragment. And in here I have the sandbox URL. And I should now see the landing page. There we go. Perfect.
4:31:204 hours, 31 minutes, 20 secondsSo now that we have this uh let's go ahead and just do one more thing so we can start building the UI for these messages. So let's go inside of source
4:31:304 hours, 31 minutes, 30 secondsapp folder. Let's create a new folder called projects and in here open project ID. So this is basically a dynamic URL
4:31:394 hours, 31 minutes, 39 secondspart. Uh it's important how you write this. So curly brackets uh square brackets are extremely important. And
4:31:464 hours, 31 minutes, 46 secondsthen how you type inside is exactly how you're going to extract this value. So be mindful of casing. Right
4:31:554 hours, 31 minutes, 55 secondsnow add page.tsx here and export uh do a page export like this
4:32:034 hours, 32 minutes, 3 secondsand a div like this. And this will be project ID. And then to extract the project ID, you simply create an
4:32:114 hours, 32 minutes, 11 secondsinterface props with params which are a type of promise.
4:32:164 hours, 32 minutes, 16 secondsAnd inside project ID which is a type of string. And then in here you can extract the props. You can extract the params.
4:32:264 hours, 32 minutes, 26 secondsAnd since this is a server component, you can make this an asynchronous component and extract the project ID from await params.
4:32:364 hours, 32 minutes, 36 secondsAnd then you can set the project ID to be project ID. As simple as this. So how do I know that it is project ID? How do I know it's not project ID 1 2 3?
4:32:464 hours, 32 minutes, 46 secondsBecause of how we named the folder. So if you name this with a lowercase letter I, then you need to change this to
4:32:544 hours, 32 minutes, 54 secondslowerase letter I. So be mindful of how you name this dynamic folder. And once you've done that, go back to your page
4:33:024 hours, 33 minutes, 2 secondshere and go ahead and add router from use router from next navigation
4:33:104 hours, 33 minutes, 10 secondslike this. And then add the on success here which I'm going to transform into an
4:33:174 hours, 33 minutes, 17 secondsarrow function simply because I prefer them. No other reason. We only need the data here. And let's do router.push forward slash projects and then data id.
4:33:294 hours, 33 minutes, 29 secondsSo how come that we have the data ID available for us? Because in the create procedure,
4:33:364 hours, 33 minutes, 36 secondswe return the created project. So this new project that was just created, we have its ID right here. So now if I do
4:33:464 hours, 33 minutes, 46 secondsbuild a blue landing page and click submit right here, there we go. I'm redirected to project ID and that new
4:33:544 hours, 33 minutes, 54 secondsproject. And now in here I will load only the messages for that project. So in the next chapter we will go inside of
4:34:024 hours, 34 minutes, 2 secondsour modules messages procedures and we will modify the get many to accept a specific project ID and then query by
4:34:114 hours, 34 minutes, 11 secondsproject ID instead of loading all of them. But that is for the next chapter.
4:34:174 hours, 34 minutes, 17 secondsAmazing amazing job. So you just added project schema. uh in our uh entire application we will have one more model
4:34:254 hours, 34 minutes, 25 secondsin the database but this is pretty much it. Amazing. So we added the project schema message relations new project on
4:34:344 hours, 34 minutes, 34 secondsuser prompt and we preserve the project ID in background jobs. Now let's go ahead and commit this. So I'm going to
4:34:414 hours, 34 minutes, 41 secondsopen a new branch 09 projects.
4:34:474 hours, 34 minutes, 47 secondsI'm going to stage all of my changes. 09 projects. And I'm going to click commit.
4:34:554 hours, 34 minutes, 55 secondsAnd let's go ahead and publish the branch.
4:34:594 hours, 34 minutes, 59 secondsAnd then let's go ahead and open a pull request.
4:35:034 hours, 35 minutes, 3 secondsJust like that. And let's see the summary of this chapter.
4:35:104 hours, 35 minutes, 10 secondsAnd here we have the code rabbit summary. We introduced support for projects allowing users to create and view projects each with an associated
4:35:184 hours, 35 minutes, 18 secondsinitial message. We also added a dedicated project page displaying the project ID for now. This will later be
4:35:254 hours, 35 minutes, 25 secondsthe actual interface where you will chat with an AI and see the preview of your work. And in here we have a couple of uh
4:35:334 hours, 35 minutes, 33 secondsrecommended changes. So in here it recommends throwing an error in the background job if it cannot find the
4:35:404 hours, 35 minutes, 40 secondsproject ID. And this is definitely the a good idea. But I would rather we don't even invoke a background job if we don't
4:35:484 hours, 35 minutes, 48 secondshave a project ID because where do we even save this message then right so we have to think of a different way to
4:35:554 hours, 35 minutes, 55 secondsimprove this but a good suggestion nevertheless and another suggestion regarding the migration since this is just you know
4:36:034 hours, 36 minutes, 3 secondsdevelopment migration I really don't uh care about this one since it's not really dangerous for our use case. So, I'm going to merge this pull request.
4:36:134 hours, 36 minutes, 13 secondsAnd that marks the end of this chapter.
4:36:154 hours, 36 minutes, 15 secondsAs always, make sure you go back to your main branch and make sure you click on synchronize changes. So, you pull that new merge. And once that is done, you
4:36:244 hours, 36 minutes, 24 secondscan go inside of your source control button here, go inside of graph, and you should see that we just merged projects.
4:36:314 hours, 36 minutes, 31 secondsAmazing. See you in the next chapter.
Chapter 11: 10 Messages Ui
4:36:364 hours, 36 minutes, 36 secondsIn this chapter, we're going to develop the messages UI. This will include creating the project view, the messages
4:36:444 hours, 36 minutes, 44 secondscontainer, message card, and the message form components. And for the API changes, we're going to have to slightly
4:36:514 hours, 36 minutes, 51 secondsmodify the get many procedures of our messages. So before we do that, let's go ahead and ensure that we are on the main
4:36:584 hours, 36 minutes, 58 secondsbranch. And you can click synchronize changes just to make sure everything is up to date. And in your source control, your last merge should be 09 projects.
4:37:084 hours, 37 minutes, 8 secondsSo I'm going to go ahead and go inside of source inside of modules messages procedures.
4:37:164 hours, 37 minutes, 16 secondsAnd in the get menu, let's add the ability to add a project ID. So I'm just going to copy the input from the below
4:37:244 hours, 37 minutes, 24 secondscreate procedure. And I'm going to add it here. And I'm going to delete the value because it's not required here.
4:37:304 hours, 37 minutes, 30 secondsonly project ID is required. And once we have the project ID, we can extend this to add a where. And let's go ahead and add project ID to be input project ID.
4:37:444 hours, 37 minutes, 44 secondsNow let's go ahead and actually dstructure the input from here so we can use it properly. Just like this.
4:37:514 hours, 37 minutes, 51 secondsPerfect. So now we can load messages for an individual project. Let's go ahead and let's do that. So now I'm going to
4:37:594 hours, 37 minutes, 59 secondsgo inside of source app projects project ID page.tsx
4:38:074 hours, 38 minutes, 7 secondsand since this is a server component what we are going to do is we're going to leverage prefetching. So I'm going to
4:38:144 hours, 38 minutes, 14 secondsgo ahead and do const query client and I will do await get query client
4:38:224 hours, 38 minutes, 22 secondsfrom the RPC server and this is not a promise. So we don't need a weight here.
4:38:304 hours, 38 minutes, 30 secondsYou can usually see that if you type an await on something that does not need a weight, you will see little three dots
4:38:384 hours, 38 minutes, 38 secondshere which will tell you that it has no effect on this. But you can also see that when hovering on something, you will see that there is no promise
4:38:454 hours, 38 minutes, 45 secondswrapping this. For example, when I hover over params, you can see that there's a promise of wrapping this. So a weight
4:38:524 hours, 38 minutes, 52 secondsmakes sense, right? in here. Nothing would happen if I used await, but we don't have to use await. And let's now
4:39:004 hours, 39 minutesadd a void TRPC, which you can import from the TRPC server. Same same as get query client. And let's go ahead and
4:39:084 hours, 39 minutes, 8 secondsactually do void query client. Prefetch query tRPC
4:39:144 hours, 39 minutes, 14 secondsdot messages get many query options and pass in the project ID which we structure from right here.
4:39:244 hours, 39 minutes, 24 secondsPerfect. So now what I want to do is I also want to add inside of my modules projects server procedures
4:39:334 hours, 39 minutes, 33 secondsI want to add a get one like this and I want to add an input
4:39:414 hours, 39 minutes, 41 secondshere and I want to call this ID ZR with a minimum value of one and a message ID is required.
4:39:534 hours, 39 minutes, 53 secondsSo should you call this ID or should you call this uh project ID? Well, since
4:40:004 hours, 40 minutesthis is regarding fetching a single project, in my opinion, it is kind of redundant to call the property project
4:40:074 hours, 40 minutes, 7 secondsID here. Uh and let me just see what I did incorrectly here. So this is not how you open this. You should add Z.Object
4:40:164 hours, 40 minutes, 16 secondsand then wrap this in parenthesis like this. This is the input. And then in here you can go ahead and import uh
4:40:244 hours, 40 minutes, 24 secondsextract this input and you would find existing project here to be await prisma
4:40:304 hours, 40 minutes, 30 secondsproject find unique like this and you would just do where
4:40:404 hours, 40 minutes, 40 secondsID is equal to input ID and then go ahead and return the existing project and you can add if
4:40:484 hours, 40 minutes, 48 secondsthere is no existing project throw new TRPC error which you can import from TRPC server and the cool thing about
4:40:574 hours, 40 minutes, 57 secondsthis is that you have strictly typed codes. So in this case this would be not found and then we can specify our message which can be project not found.
4:41:104 hours, 41 minutes, 10 secondsGreat. So now we have a procedure to fetch an individual project by its unique ID. So we can leverage the find unique which uses the index ID.
4:41:214 hours, 41 minutes, 21 secondsNow let's go back inside of the page here and let's also prefetch for that.
4:41:264 hours, 41 minutes, 26 secondsSo TRPC projects get one and instead of ID uh instead of project ID we are using
4:41:344 hours, 41 minutes, 34 secondsthe ID field because just think of it when we are fetching messages it makes sense that the prop is project ID
4:41:424 hours, 41 minutes, 42 secondsbecause it's referring to an entirely new entity. But when we are fetching projects, we already know that ID is referring to the project ID. That's why
4:41:514 hours, 41 minutes, 51 secondsin my case, it makes no sense to call this project ID. We already know it's a project. At least that's kind of my idea
4:41:594 hours, 41 minutes, 59 secondsof naming a convention here. In here, basically, we are doing this just in case you were confused. But yeah, you can do a shorthand operator if the key
4:42:074 hours, 42 minutes, 7 secondsand the value are named the same. So now we are prefetching these two which means that we can now create our project view
4:42:154 hours, 42 minutes, 15 secondscomponent. So I'm going to do that by going inside of modules projects and I will create a new folder called UI.
4:42:254 hours, 42 minutes, 25 secondsAnd inside of here I will create views.
4:42:304 hours, 42 minutes, 30 secondsAnd then inside of here I will create project- view.tsx.
4:42:364 hours, 42 minutes, 36 secondsAnd I will mark this as use client. And I will export const project view.
4:42:424 hours, 42 minutes, 42 secondsAnd in here I will create an interface props project ID. And I will call this a
4:42:494 hours, 42 minutes, 49 secondsstring. In here you could also technically use ID since we know what it's referring to but I originally built
4:42:584 hours, 42 minutes, 58 secondsthe project using this. So I just don't want to alter the source code.
4:43:034 hours, 43 minutes, 3 secondsAnd now in here we are going to rely on getting the data from use suspense query
4:43:094 hours, 43 minutes, 9 secondsand from using const tpc usepc like this trpc
4:43:184 hours, 43 minutes, 18 secondsdot projects and here I have it get one query options and
4:43:254 hours, 43 minutes, 25 secondspass in the ID to be project ID and let's go ahead and remap this to project. Then let's copy this and let's
4:43:334 hours, 43 minutes, 33 secondschange this to messages get many and this will use the project id key and we
4:43:404 hours, 43 minutes, 40 secondsare going to remap this to messages and now in here we can return a div
4:43:464 hours, 43 minutes, 46 secondsproject JSON stringify project and then below JSON stringify messages null too
4:43:574 hours, 43 minutes, 57 secondsjust like that just make sure you've marked this as use client And now inside of the page here what you can do is you can change this to be
4:44:054 hours, 44 minutes, 5 secondshydration boundary which you can import from tanstack react query. You can pass the state here to be dehydrate again
4:44:134 hours, 44 minutes, 13 secondsfrom tanstack react query and simply pass in the query client.
4:44:194 hours, 44 minutes, 19 secondsThen inside of here render the project view component and pass in the project ID to be project ID. Just like that. And
4:44:284 hours, 44 minutes, 28 secondsthere actually is another reason why I don't want to use ID here. Simply because ID is reserved for u HTML
4:44:364 hours, 44 minutes, 36 secondselements, right? You often see things like form ID and then something. So because of that, I want to explicitly
4:44:444 hours, 44 minutes, 44 secondsuse project ID here. And let's go ahead and wrap this inside of suspense, which you can import from React.
4:44:534 hours, 44 minutes, 53 secondsAnd let's give it a fall back of loading like this. There we go.
4:45:014 hours, 45 minutes, 1 secondPerfect.
4:45:044 hours, 45 minutes, 4 secondsSo now if you have your app running and if you go to localhost 3000 and if you create a new project here,
4:45:124 hours, 45 minutes, 12 secondsbuild a yellow landing page and click submit.
4:45:184 hours, 45 minutes, 18 secondsThe project ID was just loading for a second. And as you can see the first thing we have is for me it's freezing tent that's the random name that we
4:45:274 hours, 45 minutes, 27 secondsgenerated and then immediately below that I mean after that we can see an array of messages. The first one is build a yellow landing page by the user
4:45:364 hours, 45 minutes, 36 secondsand in a couple of seconds we will get another message which will basically be the response. And here we have it the task summary. It created a landing page
4:45:444 hours, 45 minutes, 44 secondsblah blah blah. Perfect. So this works just fine and it leverages pre-fetching in the server components. Just be careful that your query options are
4:45:524 hours, 45 minutes, 52 secondsexactly the same in the prefetch as they are in the use suspense query. So they need to be identical. So make sure you didn't accidentally mess them up.
4:46:034 hours, 46 minutes, 3 secondsNow I'm going to add some resizable panels inside of this project view. You already have this installed when we
4:46:094 hours, 46 minutes, 9 secondsadded all Shatsen components. So you can import all of these from components UI
4:46:164 hours, 46 minutes, 16 secondsresizable. So you can control-click to confirm that you have it. It is inside of source components UI resizable. And
4:46:244 hours, 46 minutes, 24 secondsnow let's go ahead and actually build uh our resizable panels. So I'm going to give this div here a class name of
4:46:314 hours, 46 minutes, 31 secondsheight screen. I'm then going to add a resizable not handle panel group. And
4:46:394 hours, 46 minutes, 39 secondsI'm going to wrap these two elements inside.
4:46:444 hours, 46 minutes, 44 secondsI will give this a direction of horizontal and I will then add a resizable panel.
4:46:534 hours, 46 minutes, 53 secondsAnd let's go ahead and wrap the project in one resizable panel and then another one for the messages like this. Let's go
4:47:034 hours, 47 minutes, 3 secondsahead and give this one a default. Let's actually collapse this. Default size will be 35. Minimum size will be 20. And
4:47:124 hours, 47 minutes, 12 secondslet's give it a class name of flex flex column and the minimum height of zero.
4:47:184 hours, 47 minutes, 18 secondsAnd now let's go ahead uh and let's do the following. In between these two resizable panels add a resizable handle
4:47:274 hours, 47 minutes, 27 secondsand add width handle like this. And for this resizable panel,
4:47:344 hours, 47 minutes, 34 secondsgive it a default size of 65 and a minimum size of 50 like this. So now you
4:47:454 hours, 47 minutes, 45 secondsshould have this type of resizable panel and you can already see how this is going to look. In here we're going to have our messages and in here we will
4:47:524 hours, 47 minutes, 52 secondshave the project preview. Right now it is the opposite but you know it's I just wanted to use it as an example. So that's how we're going to do that. And
4:48:004 hours, 48 minutesby default, you can see it has what I think is a kind of fair ratio. This size for messages, this side for the preview.
4:48:074 hours, 48 minutes, 7 secondsYou can of course change the default size to whatever you like. Uh but you know just make uh the the the total
4:48:154 hours, 48 minutes, 15 secondsnumber of these two panels needs to add up to 100. So you know just make sure you are using the proper calculations.
4:48:224 hours, 48 minutes, 22 secondsGreat. So now that we have this, let's go ahead and let's develop this side of the resizable panel. So I'm just going to change this to be to-do preview.
4:48:334 hours, 48 minutes, 33 secondsAnd this here will be our messages container.
4:48:404 hours, 48 minutes, 40 secondsSo right now we have an error because messages container does not exist yet.
4:48:444 hours, 48 minutes, 44 secondsSo now let's go ahead and do the following. I'm going to still stay inside of projects, inside of UI, and I
4:48:524 hours, 48 minutes, 52 secondswill create components. Now, you're probably wondering why am I creating a message container, messages
4:48:594 hours, 48 minutes, 59 secondscontainer.tsx inside of the projects module when I clearly have the messages module right
4:49:064 hours, 49 minutes, 6 secondshere. Well, it's not the name that decides where you put something in module-based architecture. It is its
4:49:144 hours, 49 minutes, 14 secondspurpose. And this specific messages container purpose will only be used inside of the project ID page. Right? So
4:49:244 hours, 49 minutes, 24 secondsthis project's project ID page is obviously the project module. So just because we are rendering a component
4:49:314 hours, 49 minutes, 31 secondscalled messages here messages container doesn't mean that it belongs in the message uh module, right? but something
4:49:394 hours, 49 minutes, 39 secondsthat's re reusable like the message API that belongs in the message uh module but messages container is just a
4:49:484 hours, 49 minutes, 48 secondscontainer to render messages in the project so that's why this is the place I'm putting it in the name doesn't
4:49:574 hours, 49 minutes, 57 secondsmatter I can call this project message container maybe that would be uh a bit more visually attractive but just to
4:50:054 hours, 50 minutes, 5 secondsexplain why I'm putting that here now let's go ahead and let's build the messages container. So we are actually going to do the following messages
4:50:144 hours, 50 minutes, 14 secondscontainer and then I'm going to copy a couple of things specifically this because this is
4:50:224 hours, 50 minutes, 22 secondswhere I will load the messages. If you can, it will it will always be better to load the messages to use it to use use
4:50:304 hours, 50 minutes, 30 secondssuspense query in a deeper component because the deeper component you use it in uh the the faster the page will load
4:50:404 hours, 50 minutes, 40 secondsand I'm going to show you why in a second. So let's call this use TRPC from TRPC client like this. And in here we
4:50:494 hours, 50 minutes, 49 secondsneed an interface which I can just copy from the project view here.
4:50:544 hours, 50 minutes, 54 secondsAnd let's go ahead and destructure the props and get the project ID like this.
4:51:004 hours, 51 minutesAnd now we have the messages here. So let's just return a div with JSON.stringify messages.
4:51:094 hours, 51 minutes, 9 secondsThere we go. And now we can import the messages container here from components messages container. And we can remove
4:51:184 hours, 51 minutes, 18 secondsthe suspense query for messages like this. and pass in the project ID here to
4:51:244 hours, 51 minutes, 24 secondsbe project ID. And now what's important is that you wrap this inside of suspense
4:51:314 hours, 51 minutes, 31 secondsas well and give this a fallback of loading messages
4:51:404 hours, 51 minutes, 40 secondslike this. So now the cool thing that's happening I don't know if you will now see this and yes uh yeah so let me try and demonstrate.
4:51:514 hours, 51 minutes, 51 secondsYeah, it's kind of hard uh to do right now perhaps because I don't need this.
4:51:564 hours, 51 minutes, 56 secondsWhat if I comment this out? Yes, you can see that when you comment this out in the project view, the page loads much
4:52:044 hours, 52 minutes, 4 secondsquicker. That is because if we are using a use suspense query inside of the project view, then it means that this
4:52:124 hours, 52 minutes, 12 secondssuspense will fire and that blocks the entire page. You can see that while that big loading is active, let me just write loading project.
4:52:224 hours, 52 minutes, 22 secondsSo while this loading project text is visible, the entire page is blocked. But if you move the suspense in an deeper
4:52:314 hours, 52 minutes, 31 secondscont uh component like the message container like we just did with loading the messages here and wrap that inside of suspense. So let me now simulate by
4:52:404 hours, 52 minutes, 40 secondscommenting this out. You can see that we are not blocking the entire view only the messages view. So that's why I told
4:52:494 hours, 52 minutes, 49 secondsyou that it will be faster. It's not really faster. It is just visually faster. So we are going to do the same thing for loading the project. So yes,
4:52:584 hours, 52 minutes, 58 secondsfor now we can actually remove this because we will not be loading the project uh inside of the project view.
4:53:044 hours, 53 minutes, 4 secondsLet me just move the suspense right here. Perfect. So now let's go inside of the message container and let's develop it.
4:53:144 hours, 53 minutes, 14 secondsI'm going to start by giving the most outer div a class name of flex flex column flex one and a minimum height of
4:53:224 hours, 53 minutes, 22 secondszero. I'm then going to add another div with a class name flex one minimum
4:53:294 hours, 53 minutes, 29 secondsheight of zero and overflow y auto. And then inside of here another div with a
4:53:364 hours, 53 minutes, 36 secondsclass name padding top padding top two and padding right of one. And then finally inside of here I will go over my
4:53:444 hours, 53 minutes, 44 secondsmessages. I will get the individual message here and I will render a new component. So in here we're going to
4:53:524 hours, 53 minutes, 52 secondsrender message card component and you can remove the JSON stringify here. Now let's give this a key of message do ID.
4:54:004 hours, 54 minutesLet's give it content of message.content roll of message roll fragment of message fragment. And now we have a problem.
4:54:114 hours, 54 minutes, 11 secondsFragment is not loaded here. So let's go ahead and fix that by going inside of messages get many procedure. It's inside
4:54:194 hours, 54 minutes, 19 secondsof uh modules messages server procedures. And simply do what we did in the previous chapter. Add include. Make
4:54:264 hours, 54 minutes, 26 secondssure you're doing this instead of get many. add include fragment true like this.
4:54:344 hours, 54 minutes, 34 secondsAnd now let's go back inside of the messages container here. And as you can see now we no longer have that problem.
4:54:414 hours, 54 minutes, 41 secondsRight? So now message fragment exists.
4:54:444 hours, 54 minutes, 44 secondsLet's add created at here to be message.created at just is active fragment for now to be
4:54:534 hours, 54 minutes, 53 secondshardcoded to false. on fragment click will be an empty arrow function and the type will be message.ype.
4:55:034 hours, 55 minutes, 3 secondsNow let's go ahead inside of the components and create the message card.
4:55:074 hours, 55 minutes, 7 secondsAgain we are doing this inside of the projects module because even though these components are called message they
4:55:154 hours, 55 minutes, 15 secondsrelate more to the product to the project entity than they do to the message entity. And inside of the message card component, we are now uh going to do this the uh the following.
4:55:264 hours, 55 minutes, 26 secondsFirst, let's create the props content which is a string roll which is a type of message roll. You can import from at
4:55:344 hours, 55 minutes, 34 secondsgenerated Prisma. So this is the generated folder of Prisma which you can find in your source folder. And you can
4:55:414 hours, 55 minutes, 41 secondssee that you don't really touch this folder, right? You don't modify this folder because it is automatically
4:55:484 hours, 55 minutes, 48 secondsgenerated every time you do npx prisma generate or npx prisma migrate dev which
4:55:554 hours, 55 minutes, 55 secondsin background runs npx prisma generate right you can always do npx prisma generate yourself this will simply
4:56:044 hours, 56 minutes, 4 secondsupdate the entire prisma right so in case yours didn't exist now it will exist so message ro was directly generated from our schema message role.
4:56:154 hours, 56 minutes, 15 secondsSo if yours is called something else, you're going to have to import something else. Same thing for fragment from message here. And same thing for message
4:56:244 hours, 56 minutes, 24 secondstype. So basically content ro fragment which can be null created at is active fragment which is a boolean on fragment
4:56:334 hours, 56 minutes, 33 secondsclick which accepts the fragment as the value and type which is a message type.
4:56:374 hours, 56 minutes, 37 secondsNow, let's go ahead and let's export the message card here and let's assign all of those props from above and let's dstructure them all here.
4:56:494 hours, 56 minutes, 49 secondsPerfect. Now, inside of this, let's go ahead and do the following. If roll is equal to assistant, we're going to return a paragraph assistant.
4:57:014 hours, 57 minutes, 1 secondOtherwise, we are going to return a paragraph user. And let me just fix my
4:57:084 hours, 57 minutes, 8 secondsuh typo here. So we have this uh I don't think I need this. There we go.
4:57:154 hours, 57 minutes, 15 secondsLike this. And it's okay that all of these things are unused. Now let's go back to the messages container and import message card from dot / message
4:57:234 hours, 57 minutes, 23 secondscard. Let me just separate my imports here. No need for use client in this component simply because the uh project
4:57:314 hours, 57 minutes, 31 secondsview where it's rendered is already use client. So its children will be as well. And as you can see I have two messages.
4:57:394 hours, 57 minutes, 39 secondsThe first one is from the assistant and the other one is from the user. And I think that in this case we would
4:57:464 hours, 57 minutes, 46 secondsactually need the opposite to happen. So let's go inside of the messages container. Go inside of messages get many and change the order by to be
4:57:554 hours, 57 minutes, 55 secondsascending. So the first one should be from the user and the second one should be from the assistant. All right. Now, let's go inside of the message card and
4:58:044 hours, 58 minutes, 4 secondslet's actually develop this. So, let's do the user one first because I believe it is a little bit easier. So, we're
4:58:104 hours, 58 minutes, 10 secondsgoing to do user message here and it will have one prop which is content. So,
4:58:174 hours, 58 minutes, 17 secondslet's pass in content here. And we're going to develop this uh just above this con user message.
4:58:274 hours, 58 minutes, 27 secondsAnd let's create an interface uses me user message props like this. And then just extract the props here. It's just
4:58:364 hours, 58 minutes, 36 secondscontent. And in here return a div with a class name flex justify and padding
4:58:434 hours, 58 minutes, 43 secondsbottom of four PR of 2 PL of 10. And in here add a card from components UI card.
4:58:524 hours, 58 minutes, 52 secondsYou already have this as well. It comes with chat UI. You can find it in source components UI card. Now inside of the
4:59:014 hours, 59 minutes, 1 secondcard render the content and give the card a class name of rounded large
4:59:084 hours, 59 minutes, 8 secondsbackground muted padding three shadow none border none maximum width of 80%
4:59:154 hours, 59 minutes, 15 secondsand break words like this. So the user message will be
4:59:234 hours, 59 minutes, 23 secondsrendered every time the user sends a message and we should be able to see that now. Build a yellow landing page.
4:59:314 hours, 59 minutes, 31 secondsThat was my first message and you can see how my message is moved into this corner. We are now going to render the assistant output. So in order to do that
4:59:404 hours, 59 minutes, 40 secondswe will render the assistant message like this.
4:59:484 hours, 59 minutes, 48 secondsassistant message and the assistant will have uh some different props. So we're
4:59:564 hours, 59 minutes, 56 secondsgoing to pass the content to be content fragment to be fragment.
5:00:015 hours, 1 secondIt will have created at it will have is active fragment
5:00:095 hours, 9 secondsand it will have on fragment click and it will have a type. Basically all
5:00:165 hours, 16 secondsthe other props are related to the assistant message. So now let's go uh below the user message. Let's create an
5:00:245 hours, 24 secondsinterface assistant message. And in here we can just add all of those props.
5:00:305 hours, 30 secondsContent fragment which can be a type of fragment or null created at which is date is active fragment which is boolean
5:00:375 hours, 37 secondson fragment click and type. I'm not sure but maybe these are identical to message card props.
5:00:435 hours, 43 secondsUh it doesn't have roll. So yeah, one less prop. I'm not sure if this is the best way to do this, but you know, I think it's fine. Now, let's go ahead and
5:00:525 hours, 52 secondsactually do const assistant message like this. Let's destructure assistant message props.
5:01:025 hours, 1 minute, 2 secondsOops. Yeah, I should call this props.
5:01:045 hours, 1 minute, 4 secondsYes, like this. And then inside, let's just add all of those things. Content fragment created at is active on fragment. Click enter and type.
5:01:165 hours, 1 minute, 16 secondsAnd inside of here, we are going to do the following. Let's add a div with a dynamic class name, which means open
5:01:235 hours, 1 minute, 23 secondscurly brackets and import CN from lib utils. If you don't remember this, but we got this when we installed shot cnui.
5:01:315 hours, 1 minute, 31 secondsAnd I told you we are going to use this when we need some dynamic classes and this is the first time we need that. So the way you use this library is very
5:01:405 hours, 1 minute, 40 secondssimple. You open it up as a function. It can accept an infinite number of parameters. So the first parameter, the
5:01:475 hours, 1 minute, 47 secondssecond parameter, the third, infinite number.
5:01:515 hours, 1 minute, 51 secondsWhat I like to do is I like to reserve the first one for my static class names.
5:01:565 hours, 1 minute, 56 secondsSo flex flex column group ex 2 and padding bottom of four. And then in the second argument, I like to do dynamic
5:02:055 hours, 2 minutes, 5 secondsones. If type is equal to error, I'm going to render it differently. I'm
5:02:115 hours, 2 minutes, 11 secondsgoing to render text red 700 and on dark mode text red 500 like this. And then
5:02:205 hours, 2 minutes, 20 secondsinside of here I'm going to add a div with a class name of flex item center gap 2 pl 2
5:02:305 hours, 2 minutes, 30 secondsand margin bottom of two. Now I'm going to add to-do add logo because we don't have it yet. And I'm going to add an
5:02:385 hours, 2 minutes, 38 secondsimage component here. Uh actually we can do that only when we have the logo. So let's add a span for now and our app
5:02:455 hours, 2 minutes, 45 secondsname. In my case this will be vibe text small and font medium
5:02:525 hours, 2 minutes, 52 secondslike this. Then copy this span and in here you're going to need to install npm
5:02:595 hours, 2 minutes, 59 secondsinstall date fns. This will be used to parse dates. And let me show you my package json date fns 4.1.0. zero.
5:03:105 hours, 3 minutes, 10 secondsAnd I'm going to import something from date FNS. So import format from date FNS like this.
5:03:225 hours, 3 minutes, 22 secondsAnd inside of here, I'm going to format created at like this.
5:03:305 hours, 3 minutes, 30 secondsAnd I will format in this format like this.
5:03:395 hours, 3 minutes, 39 secondsAnd then I'm going to slightly modify this to be text extra small and text muted foreground. And then then I'm
5:03:485 hours, 3 minutes, 48 secondsgoing to give it an opacity of zero. And I'm going to give it transition opacity.
5:03:545 hours, 3 minutes, 54 secondsAnd since I have given this outer parent div a group class name, I can leverage
5:04:015 hours, 4 minutes, 1 secondthat by doing the following. I can do group colon my apologies group dash hover. So when the group is hovered,
5:04:105 hours, 4 minutes, 10 secondschange the opacity to 100 like this. And that's how I'm going to make this appear when we hover on the parent element.
5:04:215 hours, 4 minutes, 21 secondsPerfect. And then outside of this div, let's go ahead and let's actually render the content. So div class name pl 8.5
5:04:315 hours, 4 minutes, 31 secondsflex plex column and gap y of four. And inside of here, a span with content
5:04:385 hours, 4 minutes, 38 secondsinside. And let's go ahead and make sure we are using the assistant message. We are perfect. And there we go. You can see build a yellow landing page. And
5:04:475 hours, 4 minutes, 47 secondsthen vibe answers at this time which only appears when I hover with a task summary like this. Perfect.
5:04:565 hours, 4 minutes, 56 secondsSo now let's go ahead and continue uh developing this uh and let me just see.
5:05:055 hours, 5 minutes, 5 secondsSo in here we have flex item center gap 2 PL2 margin bottom of two. Okay. I
5:05:135 hours, 5 minutes, 13 secondsthink I think this is okay. I am just this this spacing seems a little bit odd. I'm
5:05:215 hours, 5 minutes, 21 secondsnot sure this is how it's supposed to be. But yeah, go ahead and try and collapse your page a bit. It should work fine. It should normally break words. It
5:05:285 hours, 5 minutes, 28 secondsshouldn't add any scroll bars except the the the one from up down, right? That one should appear, but no one on the
5:05:365 hours, 5 minutes, 36 secondsx-axis should not happen. Uh great. So now let's go ahead and let's obtain our app logo.
5:05:445 hours, 5 minutes, 44 secondsSo head to the assets page. You can see the link on the screen or you can use the link in the description. And in here you can find logo.svg.
5:05:545 hours, 5 minutes, 54 secondsI found this logo from logo Ipsum. So these are amazing placeholder logos you can use for your projects. Uh and I use
5:06:035 hours, 6 minutes, 3 secondsthem in pretty much every project. They are amazing. So I slightly modify them to match the color scheme of the project. You can download them or you
5:06:125 hours, 6 minutes, 12 secondscan copy the SVG since the code is in SVG and you can then go inside of your project and what I like to do is go
5:06:195 hours, 6 minutes, 19 secondsinside of public create a new logo. SVG here and then I click this open file
5:06:265 hours, 6 minutes, 26 secondsusing VS Code standard text binary and I paste it inside and save it and that creates the logo or you can just download it as a file normally without
5:06:355 hours, 6 minutes, 35 secondsall that trouble. So now let's go ahead and let's add our logo to our message card. Specifically in the assistant
5:06:435 hours, 6 minutes, 43 secondsmessage, I added a to-do here. Now let's add an image here from next image. So make sure you have added this import here.
5:06:535 hours, 6 minutes, 53 secondsAnd then we're going to add the following. Source will be forward/lo.svg.
5:06:595 hours, 6 minutes, 59 secondsAlt will be vibe. Width will be 18.
5:07:045 hours, 7 minutes, 4 secondsHeight will be 18. and class name will be shrink zero. And let's go ahead and try again.
5:07:125 hours, 7 minutes, 12 secondsAnd there we go. So now this space makes more sense because the logo perfectly pushes the text to be aligned with the
5:07:205 hours, 7 minutes, 20 secondscontent right here. Amazing. And don't worry about this task summary tag. We will get rid of that later uh using
5:07:275 hours, 7 minutes, 27 secondssomething else. But this is basically how our chat will look like. And if you're wondering, the colors don't look
5:07:345 hours, 7 minutes, 34 secondsexactly as your demo, don't worry. We're going to change the entire theme of the project later. But this is what I wanted
5:07:415 hours, 7 minutes, 41 secondsto achieve. So now what I want to do is I also want to add a little uh message on the bottom here. I mean a little form
5:07:515 hours, 7 minutes, 51 secondson the bottom. Uh but just before I do that, I also want to create a fragment component. So after we render the span
5:08:005 hours, 8 minutescontent, let's check if we have the fragment and if type is equal to result only then are we going to render the
5:08:095 hours, 8 minutes, 9 secondsfragment card. The fragment card will accept three props. The fragment itself
5:08:165 hours, 8 minutes, 16 secondsis active fragment and on fragment click. And we can create the fragment
5:08:235 hours, 8 minutes, 23 secondsjust above here. So first the props fragment card props fragment is active
5:08:315 hours, 8 minutes, 31 secondsfragment and on fragment click and then the fragment card component. So let's just use the props and extract them here.
5:08:415 hours, 8 minutes, 41 secondsAnd then inside of here we're going to return a button but a normal HTML button like this. We're going to give it a dynamic class name using the CN library.
5:08:535 hours, 8 minutes, 53 secondsIn the first argument I will add flex items start text start gap two border
5:09:045 hours, 9 minutes, 4 secondsrounded large background muted width fit
5:09:105 hours, 9 minutes, 10 secondspadding three hover bg secondary and transition colors
5:09:185 hours, 9 minutes, 18 secondsand then I'm going to check if is active fragment And I will do the following
5:09:255 hours, 9 minutes, 25 secondsbackground primary text primary foreground border primary and hover bg
5:09:345 hours, 9 minutes, 34 secondsprimary like this. And on click here I will call on fragment click and pass the fragment as the prop.
5:09:445 hours, 9 minutes, 44 secondsInside of the button itself I will add code to icon.
5:09:505 hours, 9 minutes, 50 secondsSo from lucid react, let me just fix this uh invalid fragment end here. I don't need this. There we go. The code
5:10:005 hours, 10 minutesto icon will have a class name of size four and margin top of.5.
5:10:085 hours, 10 minutes, 8 secondsI will then open a div with a class name flex, flex column and flex one. And
5:10:155 hours, 10 minutes, 15 secondsinside of here I will have a span which will render the fragment title.
5:10:205 hours, 10 minutes, 20 secondsand the class name text small font medium and line clamp one. Below this
5:10:275 hours, 10 minutes, 27 secondsanother span with a class name of text small and the text preview.
5:10:365 hours, 10 minutes, 36 secondsI think we should already start to see this because this message from the AI assistant has the fragment and it is not an error. So we can see it right here.
5:10:465 hours, 10 minutes, 46 secondsMake sure that you are doing this on a successful response. So you have the fragment generated in your database. If you are unsure, if you still can't see
5:10:545 hours, 10 minutes, 54 secondsit, npx Prisma studio to show you what I'm talking about. So your message, whatever one you're doing
5:11:025 hours, 11 minutes, 2 secondsshould have a fragment. You can see how some of my messages don't have fragments because they are by user or they are errors. But the ones that are successful
5:11:125 hours, 11 minutes, 12 secondshave a fragment, right? So that's what you need to do. You basically need to create uh a background job with a
5:11:185 hours, 11 minutes, 18 secondssuccessful generation, something that has a fragment. So now after the preview here, outside of this div, I'm going to
5:11:275 hours, 11 minutes, 27 secondsadd another div with a chevron write icon from lucid react with a class name of size 4. So the same import place as
5:11:375 hours, 11 minutes, 37 secondscode to icon. And let's go ahead and give this a class name. flex items
5:11:435 hours, 11 minutes, 43 secondscenter justify center and margin top of 0.5.
5:11:495 hours, 11 minutes, 49 secondsAnd I think that marks the end of the message card component. I think we have everything we need. Now the only thing I
5:11:565 hours, 11 minutes, 56 secondsdon't like is that this doesn't have the pointer cursor. It doesn't look clickable. But you don't have to fix
5:12:035 hours, 12 minutes, 3 secondsthat by adding the pointer to uh this because this is already a button. So what we're going to do is we are going
5:12:115 hours, 12 minutes, 11 secondsto change the global CSS so that it shows the pointer when this is hovered like this. I mean not this one but you
5:12:185 hours, 12 minutes, 18 secondsyou get the idea right. Perfect. So now what we can do is we can create the form here at the bottom and that will uh complete the message container.
5:12:295 hours, 12 minutes, 29 secondsSo let's go ahead and go inside of the components and let's create the message dash form.tsx.
5:12:395 hours, 12 minutes, 39 secondsSo this will be rendered at the bottom of the message container. Let's go ahead and just copy the props from the
5:12:485 hours, 12 minutes, 48 secondsprevious components and let's export message form inside of here. Go ahead and assign the
5:12:575 hours, 12 minutes, 57 secondsprops and destructure the project ID and return a div message form. And now let's
5:13:055 hours, 13 minutes, 5 secondsgo inside of the messages container. And now we have to render this. So I'm going to render it uh after the last div here.
5:13:145 hours, 13 minutes, 14 secondsI'm going to open a new one with a class name relative padding 3 pt1.
5:13:215 hours, 13 minutes, 21 secondsAnd then I'm going to add message form and I'm going to pass in the project ID.
5:13:285 hours, 13 minutes, 28 secondsProject ID like this. So make sure you have added this import. And now at the bottom you will see message form.
5:13:385 hours, 13 minutes, 38 secondsIn order to complete the message form component, we're going to have to install a new package
5:13:455 hours, 13 minutes, 45 secondsreact text area autosize. So go ahead and install this. And I'm going to show you the version. So, package JSON 8.5.9.
5:13:575 hours, 13 minutes, 57 secondsThat is my version. And now, let's go inside of the message form. And we're going to need a couple of things from
5:14:045 hours, 14 minutes, 4 secondsReact hook form. So, use form. And then, we're going to need Zod resolver from hook form resolvers zod. And if you're
5:14:125 hours, 14 minutes, 12 secondsworried where do these packages come from, we already have them. cook form
5:14:185 hours, 14 minutes, 18 secondsand form react cook form. So all of this already exist and they came with chatnui
5:14:255 hours, 14 minutes, 25 secondswhen we added all components and the new one is this one text area auto size from
5:14:315 hours, 14 minutes, 31 secondsreact text area auto size and besides this let's just see uh what else
5:14:405 hours, 14 minutes, 40 secondsdo we need let's also add use state from react like this let's also add zod
5:14:505 hours, 14 minutes, 50 secondsand let's add post from sonner and let's also add some icons. So that's going to be arrow up icon and loader two icon
5:14:595 hours, 14 minutes, 59 secondsfrom lucid react and from tanstack query we need use mutation use query and use query client from tanstack react query
5:15:075 hours, 15 minutes, 7 secondsthen let's add cn from lib utils use trpc from at tpc client the button
5:15:155 hours, 15 minutes, 15 secondscomponent and form and form field from components UI form this is another shhatsenui component and when you installed that which you did using the d-all command.
5:15:285 hours, 15 minutes, 28 secondsYou also got use form and you got the zod resolver and also zod. And that is
5:15:345 hours, 15 minutes, 34 secondsit for now. So now let's define form schema here to be z.object. And
5:15:435 hours, 15 minutes, 43 secondswhat you should actually do is you should visit one of your procedures in messages specifically find the create
5:15:505 hours, 15 minutes, 50 secondsprocedure and you should copy the value from here. So you have the limit right? So like this.
5:15:595 hours, 15 minutes, 59 secondsNow how you're going to call this value string um I really don't know. So you can do value you can do content whatever
5:16:075 hours, 16 minutes, 7 secondsyou want. And let's go ahead and do the following now that we have this form schema. Con form use form pass in
5:16:165 hours, 16 minutes, 16 secondsZ.infer infer type of form schema like this and add resolver here to be zod
5:16:245 hours, 16 minutes, 24 secondsresolver and pass in the form schema object and the default values will set the value to be an empty string by default.
5:16:335 hours, 16 minutes, 33 secondsGreat. Now that we have the form, let's build the UI. So the outer div will be the form element from here from
5:16:425 hours, 16 minutes, 42 secondscomponents UI form and we have to pass the entire object that we created here
5:16:495 hours, 16 minutes, 49 secondsusing use form and then inside we need a native HTML form element like this and
5:16:575 hours, 16 minutes, 57 secondsin here we need the following. We need onsubmit to be form handle submit and then we have to create a custom submit
5:17:075 hours, 17 minutes, 7 secondsform. So const onsubmit here we'll accept the values which are basically this. So you can copy this from above and for now just console log the values.
5:17:205 hours, 17 minutes, 20 secondsThe reason we are doing this infer is because when you hover over you can see that it is exactly what you define here.
5:17:275 hours, 17 minutes, 27 secondsSo now use that onsubmit and pass it here. So now this onsubmit will only trigger this which will actually
5:17:345 hours, 17 minutes, 34 secondsinitialize the network call when the validation passes. So that's why we are wrapping it inside of here. Perfect. And
5:17:445 hours, 17 minutes, 44 secondsnow let's go ahead and do a class name here.
5:17:485 hours, 17 minutes, 48 secondsCN relative border padding four padding top one rounded
5:17:565 hours, 17 minutes, 56 secondsextra large background sidebar dark bg sidebar and transition all like this and
5:18:065 hours, 18 minutes, 6 secondsthen if is focused which doesn't exist yet we were going to do shadow extra small and for show usage we are going to do a rounded top none.
5:18:195 hours, 18 minutes, 19 secondsSo now let's go ahead and just quickly uh fix these things. So for is focused it is an easy fix. All we are going to
5:18:265 hours, 18 minutes, 26 secondsdo is add a new use state here with is focused and set is focused with the default value of false from use state
5:18:345 hours, 18 minutes, 34 secondsreact. And for the show usage I'm going to manually set it to false for now. So
5:18:425 hours, 18 minutes, 42 secondsnow you should have no errors here. And periodically you can check on this just to see how it looks. Great. Now that we
5:18:505 hours, 18 minutes, 50 secondshave this, let's go ahead and add the form field component which is a self-closing tag. Just make sure you
5:18:575 hours, 18 minutes, 57 secondshave imported it. Give this a control of form.
5:19:025 hours, 19 minutes, 2 secondsGive it a name of content and give it a render of field
5:19:095 hours, 19 minutes, 9 secondslike this. And inside use the text area auto size self-closing component. In here you can immediately spread
5:19:175 hours, 19 minutes, 17 secondseverything you have from the field above. And then go ahead and give it the following and give it an onfocus and on
5:19:245 hours, 19 minutes, 24 secondsblur to modify the set is focused state like this. And the name should be value.
5:19:315 hours, 19 minutes, 31 secondsMy apologies. So already when you hover over this, I'm not sure if you can notice, but that's there's an ever so
5:19:385 hours, 19 minutes, 38 secondsslight shadow change to the entire object. Now we have to fix this so it doesn't look so weird. So let's go ahead
5:19:465 hours, 19 minutes, 46 secondsand give this a minimum rows of two and a maximum rows of eight. And then a
5:19:525 hours, 19 minutes, 52 secondsclass name. Adding top four bore. Resize none. Border none. Width full. Outline none. Background transparent.
5:20:065 hours, 20 minutes, 6 secondsAnd a placeholder of what would you like to build?
5:20:115 hours, 20 minutes, 11 secondsAnd then let's go ahead and do on key down.
5:20:175 hours, 20 minutes, 17 secondsget the event and check if event key is equal to enter and open parenthesis. We are also
5:20:265 hours, 20 minutes, 26 secondsholding control key or meta key. So this will basically be control enter. We
5:20:345 hours, 20 minutes, 34 secondsprevent the default and we do form handle submit onsubmit oops onsubmit and pass the event as
5:20:435 hours, 20 minutes, 43 secondswell. So the onsubmit is this just like that. So now uh outside of
5:20:525 hours, 20 minutes, 52 secondsthis which is form field I believe. Yes outside of form field but still inside of the form let's go ahead and do the
5:21:005 hours, 21 minutesfollowing. Let's add a div with a class name flex gap x2 items end
5:21:105 hours, 21 minutes, 10 secondsjustify between padding top of two. Then another div with a class name text
5:21:185 hours, 21 minutes, 18 seconds10 pixels text muted foreground and font mono. And just write test here simply so
5:21:275 hours, 21 minutes, 27 secondsyou see where that is. So it's right here at the bottom.
5:21:315 hours, 21 minutes, 31 secondsSo this will now be the following. It will be a uh keyboard sign. I think this is for keyboard. The
5:21:395 hours, 21 minutes, 39 secondsthe short name for keyboard. Uh render a span inside and render the following sign
5:21:475 hours, 21 minutes, 47 secondslike this and then enter. And that will turn uh like this. The command sign and enter.
5:21:575 hours, 21 minutes, 57 secondsNow let's style it.
5:21:595 hours, 21 minutes, 59 secondsThe class name will be ML auto pointer events none inline flex height five
5:22:075 hours, 22 minutes, 7 secondsselect none items center gap one rounded
5:22:135 hours, 22 minutes, 13 secondsjust rounded border background color muted px 1.5 font mono text 10 pixels
5:22:245 hours, 22 minutes, 24 secondsfont medium and text muted foreground ground and then let's go ahead outside
5:22:315 hours, 22 minutes, 31 secondsof the KBD and let's do NBSP to submit.
5:22:395 hours, 22 minutes, 39 secondsSo basically command enter to submit. We are telling the user how to submit. And now outside of this div add a button
5:22:485 hours, 22 minutes, 48 secondselement. And this button element will do the following. It will render arrow up icon which we already have imported from
5:22:565 hours, 22 minutes, 56 secondsLucid React. There we go. And now we're going to style it. Give it a class name
5:23:045 hours, 23 minutes, 4 secondsof CN size 8 and rounded full like this.
5:23:125 hours, 23 minutes, 12 secondsThere we go. This is how it's going to look like. And now we need to add some dynamic things here. So let's start by adding our create message mutation.
5:23:245 hours, 23 minutes, 24 secondsSo we need to add PRPC here. Use PRPC.
5:23:315 hours, 23 minutes, 31 secondsAnd then we need to add create message from use mutation ERPC messages create mutation
5:23:405 hours, 23 minutes, 40 secondsoptions like this. And then you can extract the following.
5:23:475 hours, 23 minutes, 47 secondsYou can then extract const is pending to be create message is pending.
5:23:575 hours, 23 minutes, 57 secondsConst is disabled to be is pending or if not form form
5:24:055 hours, 24 minutes, 5 secondsstate is valid. So if form state is not valid like this. And let me actually move these two
5:24:145 hours, 24 minutes, 14 secondsto the bottom here simply so I have all of these things in one place.
5:24:205 hours, 24 minutes, 20 secondsAnd now that we have the create message mutation, let's go inside of the onsubmit and let's make it an asynchronous method. And let's do await
5:24:295 hours, 24 minutes, 29 secondscreate message dot mutate async and pass in the value to be data. Actually this
5:24:375 hours, 24 minutes, 37 secondsis values. So values do value and the project ID like that. Perfect. And now
5:24:465 hours, 24 minutes, 46 secondslet's use the is pending and let's use uh the is is disabled. So first things
5:24:535 hours, 24 minutes, 53 secondsfirst to the text area auto size disabled if is pending
5:25:005 hours, 25 minuteslike that. And then let's go ahead down to this button. And the button will be a little bit different. So this one will
5:25:095 hours, 25 minutes, 9 secondsbe disabled if is disabled. So be careful for the text area auto size. We only disabled if it's pending. So only
5:25:175 hours, 25 minutes, 17 secondsif the network request is pending. But disabled will be for this. So you can do is button disabled
5:25:255 hours, 25 minutes, 25 secondsjust to don't so you don't make a mistake. There we go. Uh and let's also do if is button disabled background muted foreground and border like this.
5:25:365 hours, 25 minutes, 36 secondsAnd then inside of here a turnary if is pending. In that case we are rendering the loader two icon which we already
5:25:435 hours, 25 minutes, 43 secondshave imported with a class name of size four and animate spin. Otherwise we render the arrow up icon like this.
5:25:555 hours, 25 minutes, 55 secondsThere we go. So now make sure that you you know restart your server here.
5:26:015 hours, 26 minutes, 1 secondActually I will restart the entire project as well. So, npm rundev, npx inestdev.
5:26:085 hours, 26 minutes, 8 secondsI will refresh this page here and I'm going to add build a blue landing page and I will press command enter. And
5:26:175 hours, 26 minutes, 17 secondsthere we go. You can see that that has submitted this for a second. It was loading. We still have to do the cleanup function. But if I look in my inest
5:26:255 hours, 26 minutes, 25 secondsdeveloper server, you can see that this is successfully running. Amazing. And if I refresh here, I should actually see my
5:26:345 hours, 26 minutes, 34 secondsnew message here. Build a blue landing page. Perfect. So now let's go ahead and just add some onsuccess things to happen
5:26:415 hours, 26 minutes, 41 secondsin the mutation options of the create message. Right. So what should happen after we submit? So the first thing that should happen is on success here once we
5:26:505 hours, 26 minutes, 50 secondsget the data of this new message. Let's go ahead and let's first do form.reset like this. So make sure that form is
5:26:585 hours, 26 minutes, 58 secondsinitialized above and then let's do query client which uh I'm not sure do we have it we don't. So let's let me just
5:27:065 hours, 27 minutes, 6 secondsadd const query client to be use query client.
5:27:115 hours, 27 minutes, 11 secondsSo you have this imported from tanstack react query. So in here what you're going to do is queryclient.invalidate
5:27:205 hours, 27 minutes, 20 secondsinvalidate queries and then pass in TRPC messages get many query options
5:27:285 hours, 27 minutes, 28 secondsproject ID data project ID or you can use the project ID from here yeah maybe
5:27:365 hours, 27 minutes, 36 secondsthat's even easier to do and then you can use the shorthand operator that's the first thing we are going to invalidate
5:27:445 hours, 27 minutes, 44 secondsthen the second thing uh we don't have yet so I will add a to-do reinvalidate or invalidate
5:27:515 hours, 27 minutes, 51 secondsuh usage status. We don't have this yet, but we will have it later. And now add on error here. Get the error
5:28:015 hours, 28 minutes, 1 secondand do toast dot error error dossage.
5:28:085 hours, 28 minutes, 8 secondsAnd I will add a to-do redirect to pricing page if specific error.
5:28:195 hours, 28 minutes, 19 secondsThere we go. And the only thing I don't have left here is the use query. And I will remove it for now because we don't really have the entity we need to call.
5:28:315 hours, 28 minutes, 31 secondsAnd I think that for now this is it. I think for now this is everything. uh we can do here and there we go we have a
5:28:405 hours, 28 minutes, 40 secondsresponse now created a fully responsive production quality blue themed landing page perfect so now what I want to do is
5:28:475 hours, 28 minutes, 47 secondsjust to end this chapter one more thing here I don't like how uh the first thing is when I load the page you can see I
5:28:565 hours, 28 minutes, 56 secondshave to scroll all the way down and the second thing is when I scroll the text visibly clips here you can see how it's
5:29:045 hours, 29 minutes, 4 secondscut so let's fix those two things and let's end the chapter. Both of these things will be in the messages container. So, make sure that you have
5:29:125 hours, 29 minutes, 12 secondssome messages and you can zoom in a little so you have the scroll bar like I do.
5:29:195 hours, 29 minutes, 19 secondsThe first thing will be a very simple self-closing div just above the place where we render the message form inside of this relative div. and give it a
5:29:275 hours, 29 minutes, 27 secondsclass name of absolute minus top minus 6, left 0, right zero,
5:29:375 hours, 29 minutes, 37 secondsheight of six, background gradient to bottom from transparent
5:29:455 hours, 29 minutes, 45 secondsto oops to dash background forward slash70
5:29:515 hours, 29 minutes, 51 secondspointer events none. What this will do is it will create an ever so slightly white shadow. I'm not sure if you can
5:29:595 hours, 29 minutes, 59 secondssee it, but it kind of melts the the overflow so it doesn't look as obvious that the text is clipping here. If you
5:30:085 hours, 30 minutes, 8 secondswant to, you can improve this and change this to two background. And then you can see you can't you can't see the clipping
5:30:155 hours, 30 minutes, 15 secondsat all. It's like it fades into some kind of fog, right? So just a slight effect to make this look better.
5:30:235 hours, 30 minutes, 23 secondsSo it doesn't clip. Now let's do the thing that when we load we scroll to the bottom here. So in order to do that we
5:30:325 hours, 30 minutes, 32 secondsfirst have to add a bottom ref. So let's do that here. const bottom ref will be use ref from react with a default value
5:30:415 hours, 30 minutes, 41 secondsof null and the type of HTML div element like this. Let me just move this to the
5:30:495 hours, 30 minutes, 49 secondstop like that.
5:30:525 hours, 30 minutes, 52 secondsAnd then what we are going to do is we are going to change this to be use
5:31:015 hours, 31 minutes, 1 secondeffect which you can import from react
5:31:125 hours, 31 minutes, 12 secondsand let's first do the following const last system or let's do last assistant
5:31:185 hours, 31 minutes, 18 secondsmessage and do data Find last. My apologies. Messages. Find last.
5:31:275 hours, 31 minutes, 27 secondsSearch through the messages and find the message whose role is assistant. And that's how we are going to find the last
5:31:365 hours, 31 minutes, 36 secondsmessage that the assistant sends. So make sure you're using the find last API here. And if we are able to find this
5:31:435 hours, 31 minutes, 43 secondslast assistant message, what we are going to do first is we are going to set the fragment uh to that assistant message. Now we don't have this yet.
5:31:555 hours, 31 minutes, 55 secondsSo actually I'm not sure if we can do that. So let me just do to-do uh and let's do set active fragment. Right? So
5:32:055 hours, 32 minutes, 5 secondswe're going to do this uh well maybe in this chapter, maybe in the future. I I will see. But let's add messages for now
5:32:125 hours, 32 minutes, 12 secondslike this. And then let's go ahead and add another use effect.
5:32:225 hours, 32 minutes, 22 secondsAnd in here we will do messages.length.
5:32:285 hours, 32 minutes, 28 secondsAnd we're going to check if bottom ref question mark scroll into view like this.
5:32:395 hours, 32 minutes, 39 secondsAnd let me just check. I think um that for now this is okay. If I do a refresh
5:32:485 hours, 32 minutes, 48 secondshere, uh looks like it's not working. So So it should be scrolling me to the bottom,
5:32:555 hours, 32 minutes, 55 secondsbut it is not probably because I never added that. So, let's go ahead outside
5:33:015 hours, 33 minutes, 1 secondof here, add a self-closing div and give it a ref of bottom ref.
5:33:105 hours, 33 minutes, 10 secondsSo, now when you refresh, there we go.
5:33:135 hours, 33 minutes, 13 secondsYou can see how you scroll down immediately.
5:33:165 hours, 33 minutes, 16 secondsPerfect. Um, so now, um, yes, I think I'm going to end the chapter here simply because it's already
5:33:255 hours, 33 minutes, 25 secondsbeen an hour. So we're going to end here and in the next chapter we're going to wrap this up by adding is active
5:33:325 hours, 33 minutes, 32 secondsfragment functionality. We're going to add some loading states while we wait for the response. And we're also going
5:33:405 hours, 33 minutes, 40 secondsto add the header here so that we can click the back button to go back to the landing page and so we can uh access some settings here and see the project
5:33:495 hours, 33 minutes, 49 secondsname. Great. So, we've already made some great progress here. And you can add something uh like this if you want to see the error state.
5:34:015 hours, 34 minutes, 1 secondAnd now you can see how the error state looks like when you send it something that it cannot generate. It will simply tell you something went wrong and it
5:34:095 hours, 34 minutes, 9 secondshighlights the red color. Perfect. So, I'm very very satisfied with this. So, we've done this. We've done this, this,
5:34:165 hours, 34 minutes, 16 secondsthis, and even more than this. Now, let's go ahead and open a new branch and merge this. So, 10 messages UI. I'm
5:34:265 hours, 34 minutes, 26 secondsgoing to open this. I'm going to create a new branch.
5:34:325 hours, 34 minutes, 32 seconds10 messages UI. I'm going to stage all of my changes and I will do 10 messages
5:34:405 hours, 34 minutes, 40 secondsUI and I will commit and I will publish the branch. A quick reminder that there is a free code rabbit extension which you can use to improve your code
5:34:495 hours, 34 minutes, 49 secondsquality. And now I'm going to go and open this pull request here. And we're
5:34:565 hours, 34 minutes, 56 secondsgoing to review the summary of this chapter and everything we did.
5:35:025 hours, 35 minutes, 2 secondsAnd here we have the code rabbit summary. We introduced a chat interface for project pages, including a message
5:35:105 hours, 35 minutes, 10 secondslist, message input form, and support for assistant and user messages with styled cards.
5:35:175 hours, 35 minutes, 17 secondsAdded support for displaying message fragments and interactive fragment cards. We implemented a horizontally resizable panel layout with a dedicated
5:35:255 hours, 35 minutes, 25 secondsarea for future preview features. That is exactly what was the point and goal of this chapter. And may I say we did a
5:35:345 hours, 35 minutes, 34 secondspretty good job because no comments, only some nitpicking comments like we
5:35:415 hours, 35 minutes, 41 secondscould save some time by doing project ID instead of project ID equals project ID.
5:35:475 hours, 35 minutes, 47 secondsSo overall amazing amazing job. In here, of course, we have an in-depth diagram explaining exactly how everything in
5:35:555 hours, 35 minutes, 55 secondsthis page happens, including pre-fetching, including invalidation, including refetching, everything.
5:36:035 hours, 36 minutes, 3 secondsAmazing, amazing job. I'm going to merge this poll request. Once the poll request is merged, I'm going to go back inside
5:36:125 hours, 36 minutes, 12 secondsof my IDE and I will go back to the main branch. After that, I'm going to synchronize my changes and I will check
5:36:195 hours, 36 minutes, 19 secondsthe source control and the graph so I can see that I successfully merged chapter 10. That
5:36:285 hours, 36 minutes, 28 secondsmarks the end of this chapter, I believe. Amazing, amazing job and see you in the next chapter.
Chapter 12: 11 Project Header
5:36:375 hours, 36 minutes, 37 secondsIn this chapter, we're going to continue the UI development from the last chapter. We pretty much completed the
5:36:445 hours, 36 minutes, 44 secondsmessages container at that point, but we do have some things missing like the fragment selection and the loading state. But after that, we're going to
5:36:535 hours, 36 minutes, 53 secondsfocus on the project header component, which is the component above the messages container, which will tell us which is the currently active project
5:37:015 hours, 37 minutes, 1 secondand the buttons to go back. So, let's go ahead and first handle the leftovers from the previous chapter. As always,
5:37:105 hours, 37 minutes, 10 secondsmake sure that you're on your main branch and clicked on synchronize changes just to confirm everything is up to date. So now what I want to do is I
5:37:195 hours, 37 minutes, 19 secondswant to go inside of my project view inside of projects UI views project view. And in here, let's go ahead and
5:37:275 hours, 37 minutes, 27 secondslet's introduce an active fragment and set active fragment state
5:37:355 hours, 37 minutes, 35 secondsfrom use state and by default let's set it to null and the type can be a type of
5:37:425 hours, 37 minutes, 42 secondsfragment from Prisma or null. So just make sure you added this imports here.
5:37:505 hours, 37 minutes, 50 secondsOnce you've added that, let's go ahead and let's modify the messages container component to have a few more procs.
5:37:595 hours, 37 minutes, 59 secondsLet's add active fragment to be active fragment. And let's add set active
5:38:055 hours, 38 minutes, 5 secondsfragment to be set active fragment. Now go inside of the messages container and
5:38:125 hours, 38 minutes, 12 secondslet's improve these props. So, I'm going to add the active fragment prop to be fragment or null. And make sure to
5:38:205 hours, 38 minutes, 20 secondsimport the fragment and add the set active fragment right here. And then you can extract them in the new props here.
5:38:315 hours, 38 minutes, 31 secondsActive fragment and set active fragment.
5:38:355 hours, 38 minutes, 35 secondsJust like that. And then inside of use effect here, if we detect the last assistant message, call set active
5:38:435 hours, 38 minutes, 43 secondsfragment and set last system message. My apologies, last assistant message dot
5:38:535 hours, 38 minutes, 53 secondsfragment inside, but only if we have last assistant message fragment.
5:39:025 hours, 39 minutes, 2 secondsUh well actually since it's going to be null h yeah let's go ahead and we can just do
5:39:105 hours, 39 minutes, 10 secondsthis it's okay and call this there we go. So now one of the fragments will always be selected. What we have to
5:39:195 hours, 39 minutes, 19 secondsdo now is we have to go to the message card and set the active fragment question mark ID to be identical to
5:39:275 hours, 39 minutes, 27 secondsmessage fragment question mark id and set active fragment will um on fragment
5:39:355 hours, 39 minutes, 35 secondsclick will call set active fragment and pass the message fragment inside like
5:39:425 hours, 39 minutes, 42 secondsthis. So now inside of your project here when you click on a specific fragment it should be highlighted like this.
5:39:525 hours, 39 minutes, 52 secondsPerfect. And when you load the page since this is an error right now nothing is highlighted here. But if you try this again build a landing page for example.
5:40:045 hours, 40 minutes, 4 secondsI'm going to wait for a second for this to respond. And you're going to see that then when you refresh it will automatically select that fragment
5:40:125 hours, 40 minutes, 12 secondsthanks to this use effect right here which searches for the last message which role is assistant.
5:40:235 hours, 40 minutes, 23 secondsAnd perhaps we can even improve this by searching for the last assistant message with fragment. And then we can do this
5:40:325 hours, 40 minutes, 32 secondsand message.fragment fragment and just turn this into a boolean and then just do this.
5:40:435 hours, 40 minutes, 43 secondsSo you can see that now when I refresh this fragment is automatically selected.
5:40:495 hours, 40 minutes, 49 secondsPerfect. Exactly what we need. So now that we have that, let's also create a loading state. In order to do that, let's go outside of the use effect here.
5:41:005 hours, 41 minutesLet's create a constant to find the last message. Instead of data, let's use messages like this. And then we are going to find
5:41:095 hours, 41 minutes, 9 secondsthe last user message. So if if is last message user. So if last message role is user, it means that we are the one who
5:41:185 hours, 41 minutes, 18 secondssent the message last. So that's going to be the system we are going to rely on for now to display loading. Later we can
5:41:265 hours, 41 minutes, 26 secondsimprove it more. So let's do this. Let's go just above the bottom riff and let's do if last message is user add message
5:41:355 hours, 41 minutes, 35 secondsloading state like this. Now let's create message loading
5:41:425 hours, 41 minutes, 42 secondstsx here and in here this is what we're going to do. So import image from next
5:41:505 hours, 41 minutes, 50 secondsimage and import use state and use effect from react. Now in here first define shimmer messages function.
5:42:045 hours, 42 minutes, 4 secondsAnd in here add an array of messages.
5:42:075 hours, 42 minutes, 7 secondsThis can be anything you want. So I'm going to add thinking, loading, generating, analyzing your request, building your website, crafting components, basically things like that.
5:42:175 hours, 42 minutes, 17 secondsAnd then what I'm going to do is I'm going to create a state for current message index and set current message index with the initial value of zero.
5:42:275 hours, 42 minutes, 27 secondsAnd then I'm going to create a use effect here like this.
5:42:345 hours, 42 minutes, 34 secondsAnd the use effect will do the following. It will create an interval set interval.
5:42:425 hours, 42 minutes, 42 secondsAnd inside of this interval, every two seconds, I'm going to call set
5:42:485 hours, 42 minutes, 48 secondscurrent message index previous + one modulus messages.length
5:42:585 hours, 42 minutes, 58 secondslike that. And inside of here, I'm going to add messages.length.
5:43:045 hours, 43 minutes, 4 secondsAnd in the return method here call clear interval and pass the interval constant
5:43:115 hours, 43 minutes, 11 secondslike this. And then inside of here you are going to return a div and a span.
5:43:205 hours, 43 minutes, 20 secondsAnd inside render the currently active message like this.
5:43:285 hours, 43 minutes, 28 secondsNow give this a span a class name of text base text muted foreground and animate false and give the outer div
5:43:385 hours, 43 minutes, 38 secondsa class name of flex items center and a gap of two like this. And now finally let's export const message loading.
5:43:515 hours, 43 minutes, 51 secondsInside of here, we're going to return a div with a class name flex flex column group px of two and padding bottom of
5:44:005 hours, 44 minutesfour. Then a div of class name flex items center gap 2 pl2 and margin bottom
5:44:105 hours, 44 minutes, 10 secondsof two. Then we're going to render an image component with a source of logo
5:44:165 hours, 44 minutes, 16 secondsSVG out of our project name, width of 18, height of 18 as well, and a class
5:44:265 hours, 44 minutes, 26 secondsname of shrink zero. After that, a span with the name of our project with a class name text small and font medium.
5:44:365 hours, 44 minutes, 36 secondsOutside of this div, we're going to open a new one with the class name pl 8.5
5:44:425 hours, 44 minutes, 42 secondsflex flex column and get y of four. And inside render the shimmer messages
5:44:505 hours, 44 minutes, 50 secondscomponent and then inside of the messages container here you can import message loading component like this. So
5:45:005 hours, 45 minutesnow if you try and do build a yellow landing page
5:45:055 hours, 45 minutes, 5 secondsyou will see this thinking loading generating analyzing your request. So
5:45:135 hours, 45 minutes, 13 secondssomething for the user to look at while this generates uh and if you really want to immediately see the results of this.
5:45:215 hours, 45 minutes, 21 secondsSo right now we have to refresh we have to wait for some kind of refetch. What you can actually do inside of your messages container
5:45:285 hours, 45 minutes, 28 secondsis you can add a refetch interval for example every 5
5:45:355 hours, 45 minutes, 35 secondsseconds. So now even without you refreshing it's going to refetch the messages every 5 seconds. And there we
5:45:435 hours, 45 minutes, 43 secondsgo we get a result. So we can add a to-do here temporary
5:45:505 hours, 45 minutes, 50 secondslive message update like this. But just so you can start showing this to people so you don't have to refresh your page
5:45:585 hours, 45 minutes, 58 secondsevery time. So yes, now if you take a look at your network request, every 5 seconds there there will be a network for refreshing the messages. But don't
5:46:085 hours, 46 minutes, 8 secondsworry, uh since we are using React query, a lot of this will be cached.
5:46:135 hours, 46 minutes, 13 secondsGreat. So now let's go ahead and let's build a component which will be above this and it will be used to display the
5:46:215 hours, 46 minutes, 21 secondsproject name and the ability to go back.
5:46:265 hours, 46 minutes, 26 secondsSo I'm going to go back inside of the project view component and just above the suspense for loading messages I am going to add project header component.
5:46:405 hours, 46 minutes, 40 secondsI'm going to pass project ID to be project ID like this.
5:46:455 hours, 46 minutes, 45 secondsAnd after you've done that, let's go inside of components and let's create project-
5:46:525 hours, 46 minutes, 52 secondsheader.tsx like this. Now, inside of here, let's go ahead and add the following imports.
5:47:005 hours, 47 minutesLink image used theme from next themes.
5:47:045 hours, 47 minutes, 4 secondsSo, you already have this inside of your package JSON. This will be used to enable dark mode.
5:47:125 hours, 47 minutes, 12 secondsUse suspense query from tanstack react query. Some icons chevron down chevron
5:47:185 hours, 47 minutes, 18 secondsleft edit sun moon icon. And then let's add use tpc from tRPC client button from
5:47:275 hours, 47 minutes, 27 secondscomponents UI button. And all of these imports from the drop-own menu.
5:47:345 hours, 47 minutes, 34 secondsthe menu itself, content item, portal, radio group, radio item, separator, sub,
5:47:415 hours, 47 minutes, 41 secondssub subcontent, subt trigger, and menu trigger. All of those things. Now, let's go ahead and let's create an in
5:47:485 hours, 47 minutes, 48 secondsinterface props here. And let's go ahead and define project header right here.
5:47:575 hours, 47 minutes, 57 secondsNow, when we are inside of here, we can add tRPC. use TRPC and we can go ahead and fetch our project using use suspense
5:48:065 hours, 48 minutes, 6 secondsquery TRPC projects get one query options ID project ID and now we've done
5:48:135 hours, 48 minutes, 13 secondswhat we did initially right remember we had the project loading here but now we moved it here so it's time to do the
5:48:215 hours, 48 minutes, 21 secondsfollowing first import the project header from docomponents project header and after that wrap it in its own
5:48:285 hours, 48 minutes, 28 secondssuspense like this and give it a fallback of loading
5:48:345 hours, 48 minutes, 34 secondsproject like this. And now that we have this, let's go ahead and add a header tag
5:48:435 hours, 48 minutes, 43 secondsright here. Let's give it a class name of padding 2 flex justify between items center and border bottom.
5:48:555 hours, 48 minutes, 55 secondsAnd let's call it header.
5:48:585 hours, 48 minutes, 58 secondsAnd let me just refresh here. Uh, and looks like it's not showing now. Uh, it is, but it is very small, I believe. So,
5:49:075 hours, 49 minutes, 7 secondslet's go ahead. Uh, and let me see.
5:49:125 hours, 49 minutes, 12 secondsLet's Oh, my apologies. No, it is not visible. We are not rendering anything.
5:49:165 hours, 49 minutes, 16 secondsI thought it was just very small, but it didn't make sense. Make sure to return it. There we go. Now, we can see header in the text.
5:49:255 hours, 49 minutes, 25 secondsThere we go. Perfect. So now let's go ahead and develop this header even further. So I'm going to add a drop-own
5:49:325 hours, 49 minutes, 32 secondsmenu here. We have all of these components imported. Now inside of here, add a drop-own menu
5:49:405 hours, 49 minutes, 40 secondstrigger and give it an as child property. This will allow it to become the button which is inside.
5:49:485 hours, 49 minutes, 48 secondsAnd then let's give this button a variant of ghost, a size of small, a
5:49:555 hours, 49 minutes, 55 secondsclass name of focus visible ring zero, hover bg transparent, hover opacity 75,
5:50:065 hours, 50 minutes, 6 secondstransition opacity, and pl2 with an exclamation point at the end. In Tailwind, this means important. We are
5:50:145 hours, 50 minutes, 14 secondsbasically overriding some classes in here. You're going to render the image with the source of logo SVG out of the
5:50:245 hours, 50 minutes, 24 secondsproject name width of 18, height of 18.
5:50:305 hours, 50 minutes, 30 secondsThen a span element with the project name, the project name coming from the query which we just loaded. This will
5:50:395 hours, 50 minutes, 39 secondshave a class name of text small and font medium. After that, a chevron down icon.
5:50:485 hours, 50 minutes, 48 secondsAnd there we go. This now becomes a drop-down menu. It doesn't have the uh proper cursor, but don't worry, we will fix that later.
5:50:595 hours, 50 minutes, 59 secondsGreat. So, now let's go ahead and go outside of the drop-down menu trigger and let's add drop-down menu content.
5:51:105 hours, 51 minutes, 10 secondsAnd let's give this a side of bottom. Let's give this an align of start.
5:51:175 hours, 51 minutes, 17 secondsLet's get the drop-down menu item here. Let's give it an as child property.
5:51:265 hours, 51 minutes, 26 secondsLet's make sure we close the drop-own menu item component.
5:51:305 hours, 51 minutes, 30 secondsAdd a link component here. Give it an href to the root page. Add the chevron
5:51:385 hours, 51 minutes, 38 secondsleft icon and a span element. Go to dashboard.
5:51:445 hours, 51 minutes, 44 secondsAnd there we go. Now the first item is to go back. Perfect. Now we have a way to go to the landing page.
5:51:545 hours, 51 minutes, 54 secondsWhat I want to do next is I want to create a drop-own menu separator. So let's do drop-own menu separator here.
5:52:035 hours, 52 minutes, 3 secondsThere we go. And below that add a drop-own menu sub and then a drop-own menu subt trigger.
5:52:125 hours, 52 minutes, 12 secondsGive this a class name of gap 2.
5:52:165 hours, 52 minutes, 16 secondsInside of this trigger, render a sun moon icon.
5:52:205 hours, 52 minutes, 20 secondsGive this a class name of size 4 and text muted foreground
5:52:275 hours, 52 minutes, 27 secondsand then a span with the text appearance.
5:52:335 hours, 52 minutes, 33 secondsAnd now you have a submen here. And now let's go ahead and go outside of the trigger and add drop-down menu portal.
5:52:445 hours, 52 minutes, 44 secondsInside of the portal, add drop-own menu subcontent.
5:52:515 hours, 52 minutes, 51 secondsInside of subcontent, add drop-down menu radio group.
5:52:585 hours, 52 minutes, 58 secondsGive it a value for now uh of light
5:53:045 hours, 53 minutes, 4 secondsand on value change of an empty arrow function for now.
5:53:105 hours, 53 minutes, 10 secondsNow let's add drop-down menu radio item.
5:53:155 hours, 53 minutes, 15 secondsGive this a value of light and render a span light.
5:53:235 hours, 53 minutes, 23 secondsNow go ahead and copy this two times.
5:53:265 hours, 53 minutes, 26 secondsThe second one will be dark with the text dark. The third one will be system with the text system like this.
5:53:385 hours, 53 minutes, 38 secondsAnd now you will have the option to select different themes. In order to
5:53:455 hours, 53 minutes, 45 secondsenable this, we first have to go inside of our layout, our main layout in the app folder next to the root page. Right?
5:53:565 hours, 53 minutes, 56 secondsSo this one with the body and everything and then in here add to the HTML tag suppress hydration warning and then
5:54:055 hours, 54 minutes, 5 secondsinside of body add a theme provider from next themes and encapsulate the toaster and the
5:54:145 hours, 54 minutes, 14 secondschildren. So just make sure you have added the import here. Let me just move this up here.
5:54:225 hours, 54 minutes, 22 secondsOops. Looks like I did something incorrectly here.
5:54:285 hours, 54 minutes, 28 secondsLet me just do it again. So, I'm going to add theme provider and encapsulate the children.
5:54:375 hours, 54 minutes, 37 secondsNow, inside of here, I'm going to give it an attribute class. I'm going to give it a default theme of system and I'm
5:54:445 hours, 54 minutes, 44 secondsgoing to give it the enable system option as well as disable transition on change.
5:54:525 hours, 54 minutes, 52 secondsAnd now let's go inside of project header back. And in here I'm going to add const set theme and
5:55:025 hours, 55 minutes, 2 secondstheme from use theme. You have imported this from next themes. You can remove
5:55:095 hours, 55 minutes, 9 secondsthe edit icon. And now let's go back to our radio here. Set the value to be theme. Change this to be uh set theme.
5:55:215 hours, 55 minutes, 21 secondsAnd I think that is pretty much it. If you try clicking on dark mode, uh it should use the dark mode. Try refreshing if it doesn't work. There we go.
5:55:335 hours, 55 minutes, 33 secondsPerfect. We now have dark mode. We will of course improve the look of it later, but pretty impressive so far. Great. So
5:55:425 hours, 55 minutes, 42 secondsthat marks the end of the project header for now. What we're going to do or start doing in the next chapter will be
5:55:515 hours, 55 minutes, 51 secondspreviewing the actual fragments and fix any potential issues that we have. This will also include creating the code
5:55:595 hours, 55 minutes, 59 secondseditor, right? Amazing job. So, let's go ahead. I can see that we have some issue here. Every time I select this fragment,
5:56:085 hours, 56 minutes, 8 secondsvery soon the bottom one starts to select. So, I'm pretty sure that something inside of my messages
5:56:155 hours, 56 minutes, 15 secondscontainer uh oh yes, the refetch interval is probably causing this to uh
5:56:225 hours, 56 minutes, 22 secondsrefetch every time. So, maybe a better option for now would be to not use it.
5:56:285 hours, 56 minutes, 28 secondsSo, I'm going to comment it out. I will add to-do. This is causing problems.
5:56:345 hours, 56 minutes, 34 secondsYes, it's definitely that refetch interval. So now by default no fragment is selected only you can select it. It's
5:56:415 hours, 56 minutes, 41 secondsokay to be like that now. Uh great in the next chapter we are developing this.
5:56:475 hours, 56 minutes, 47 secondsSo let's go ahead and do what we usually do. Let's mark what we completed and let's open a new branch project header.
5:56:585 hours, 56 minutes, 58 secondsSo I'm going to open a new branch here. Create new branch 11 project header.
5:57:065 hours, 57 minutes, 6 secondsI'm going to stage all of my changes. 11 project header. I'm going to commit and I'm going to publish this branch.
5:57:165 hours, 57 minutes, 16 secondsThen I'm going to go ahead and go in my GitHub and I'm going to open a new pull request so that we can review all the things we did.
5:57:275 hours, 57 minutes, 27 secondsAnd here we have the summary. New features. We added a dynamic project header with theme switching and
5:57:345 hours, 57 minutes, 34 secondsnavigation options. We also introduced a loading indicator with animated messages during message processing. We enabled
5:57:425 hours, 57 minutes, 42 secondslive updates for messages with automatic refreshing every 5 seconds. We improved message interaction by highlighting and managing active message fragments.
5:57:525 hours, 57 minutes, 52 secondsPerfect. That is exactly what we did in this chapter. As always in here, we have file by file walkthrough. And of course
5:58:005 hours, 58 minutesa sequence diagram this time including the periodically refetching messages which we just added. Amazing. And as for
5:58:085 hours, 58 minutes, 8 secondsthe comments, we are very good again. No comments except some nitpick comments.
5:58:155 hours, 58 minutes, 15 secondsAmazing job. Let's go ahead and let's merge this. And after you have merged it, go back to your project, change to the main branch, and make sure to
5:58:245 hours, 58 minutes, 24 secondssynchronize your changes. After you have synchronized your changes, as always, you can click on the source control graph and confirm that you have just
5:58:335 hours, 58 minutes, 33 secondsmerged chapter 11. And I believe that marks the end of this chapter. Amazing, amazing job. And see you in the next one.
Chapter 13: 12 Fragment View
5:58:435 hours, 58 minutes, 43 secondsIn this chapter, we're going to focus on creating the fragment view component.
5:58:485 hours, 58 minutes, 48 secondsAnd this entire chapter is pretty straightforward. We just have to create an ability to view that E2B sandbox URL.
5:58:585 hours, 58 minutes, 58 secondsSo, let's go ahead and do that. As always, ensure that you're on your main branch and synchronize changes to make
5:59:055 hours, 59 minutes, 5 secondssure everything is up to date. The last chapter was chapter 11. So, now let's go ahead inside of source and basically just find project view. There we go.
5:59:185 hours, 59 minutes, 18 secondsInside of this project view, go inside of your second resizable panel and in here render the fragment web component.
5:59:285 hours, 59 minutes, 28 secondsWe are only going to render this if we have an active fragment. So if you have an active fragment only, then render the
5:59:355 hours, 59 minutes, 35 secondsfragment web and pass in the data to be active fragment. As simple as that. And you can turn this into a boolean like
5:59:435 hours, 59 minutes, 43 secondsthis. Perfect. Now let's go ahead and let's go inside of components fragment web.tsx.
5:59:555 hours, 59 minutes, 55 secondsNow in here let's create an interface props with fragment from generated Prisma. Now let's go ahead and let's add
6:00:046 hours, 4 secondsa couple of more things. Use state from react external link icon and refresh CCW
6:00:106 hours, 10 secondsicon. And then we're going to use the button component from components UI
6:00:176 hours, 17 secondsbutton. Now in here let's go ahead and export function fragment web
6:00:246 hours, 24 secondswhich accepts data and props. And in here, let's go ahead and start by doing
6:00:326 hours, 32 secondsa div with a class name flex flex column full
6:00:396 hours, 39 secondswidth full height. And then inside of here, we're going to do an I frame.
6:00:486 hours, 48 secondsAnd we're going to add key. Uh, actually, we can't do this yet. My apologies. So for now just do a class name height full
6:00:576 hours, 57 secondswidth full sandbox allow forms allow scripts and allow same
6:01:066 hours, 1 minute, 6 secondsorigin and then loading will be lazy and source will be data sandbox URL like
6:01:156 hours, 1 minute, 15 secondsthis and then let's go ahead and import this
6:01:236 hours, 1 minute, 23 secondsfrom component fragment web and I think that now when you click here you should be seeing a big error saying
6:01:316 hours, 1 minute, 31 secondsthat sandbox was not found but try creating a new prompt so build a landing page.
6:01:396 hours, 1 minute, 39 secondsLet's go ahead and do that. And let's wait for this to generate.
6:01:446 hours, 1 minute, 44 secondsAnd once you get a response, you can click on the new fragment. And in here, you are now able to preview inside of the iframe the new landing page which was just created. Amazing. Amazing job.
6:01:576 hours, 1 minute, 57 secondsSo you are pretty much halfway there, right? Great. So now let's add some features to make this seem like a little
6:02:056 hours, 2 minutes, 5 secondsbrowser. So inside of this fragment web, we're now going to add a couple of things above the iframe. Add a div and
6:02:126 hours, 2 minutes, 12 secondsgive this div a class name padding two border bottom background color sidebar
6:02:206 hours, 2 minutes, 20 secondsflex items center and gap x of two. So now just above here you have a little
6:02:266 hours, 2 minutes, 26 secondsbar. Then in here add a button component and inside a refresh CCW icon. Give this
6:02:356 hours, 2 minutes, 35 secondsa size of small, a side of bottom. Oh, my apologies. No, these are completely
6:02:426 hours, 2 minutes, 42 secondswrong props. Uh, variant of outline. And on click for now, just an empty
6:02:496 hours, 2 minutes, 49 secondsfunction. And now you have a refresh button here. Perfect.
6:02:556 hours, 2 minutes, 55 secondsSo after that, go ahead and copy this button.
6:02:596 hours, 2 minutes, 59 secondsAnd in here, you're going to have the following. You're going to have a span
6:03:066 hours, 3 minutes, 6 secondsinside of here like this which will render data sandbox URL. It will have a class name of truncate.
6:03:196 hours, 3 minutes, 19 secondsAnd now let's go ahead and do the following. Collapse all of these props like so.
6:03:276 hours, 3 minutes, 27 secondsAnd keep the variant and keep the size. So let's just add a class name here to be
6:03:346 hours, 3 minutes, 34 secondsflex one justify start text start and
6:03:406 hours, 3 minutes, 40 secondsfont normal. So now you have a big uh kind of like an address bar, right?
6:03:476 hours, 3 minutes, 47 secondsShowing the current fragment URL.
6:03:506 hours, 3 minutes, 50 secondsAnd then let's go ahead and just add disabled prop to be explicitly false.
6:03:566 hours, 3 minutes, 56 secondsAnd then after this button, let's add another one which will have the external link icon and give this one a size of
6:04:066 hours, 4 minutes, 6 secondssmall a disabled if there is no sandbox URL variant of outline.
6:04:136 hours, 4 minutes, 13 secondsAnd on click will be an arrow function which checks if there is no data sandbox
6:04:196 hours, 4 minutes, 19 secondsURL return otherwise call window open data sandbox URL
6:04:276 hours, 4 minutes, 27 secondsblank as the second argument. So it opens in a new tab. There we go.
6:04:346 hours, 4 minutes, 34 secondsNow let's go ahead and go inside of frame and let's add uh I keep doing the key but I keep forgetting to implement
6:04:416 hours, 4 minutes, 41 secondsthe key. Let's finally do that. So go to the top here and add fragment key and
6:04:486 hours, 4 minutes, 48 secondsset fragment key and call use state like this. Then let's add copied and set
6:04:566 hours, 4 minutes, 56 secondscopied use state false. Let's add on a refresh method.
6:05:066 hours, 5 minutes, 6 secondsSet fragment key previous previous + one con handle copy
6:05:176 hours, 5 minutes, 17 secondsnavigator clipboard write text data sandbox URL
6:05:256 hours, 5 minutes, 25 secondsset copied goes to true and set timeout is fired with set copied set to false with a 2cond timeout. out.
6:05:366 hours, 5 minutes, 36 secondsNow that we have these two, let's go ahead and add on refresh here like so.
6:05:466 hours, 5 minutes, 46 secondsAnd for this one, let's give it an on click to be handle copy and disabled if
6:05:536 hours, 5 minutes, 53 secondsthere is no data sandbox URL or if we just copied something.
6:05:596 hours, 5 minutes, 59 secondsAnd in here, I think it is good enough.
6:06:046 hours, 6 minutes, 4 secondsSo now you should have buttons to open this in an external tab like this. You should have buttons to copy this. So when I paste, there we go. And you
6:06:136 hours, 6 minutes, 13 secondsshould be able to refresh this. But looks like the refresh one uh is not working. Let me just check.
6:06:206 hours, 6 minutes, 20 secondsYes, it's okay if this expires. That's completely fine. It expires very soon because we don't want to spend our free credits on E2B. So I don't think this
6:06:306 hours, 6 minutes, 30 secondsrefresh is working and it's not working because we need to add the fragment E here. So now when you hit refresh you
6:06:386 hours, 6 minutes, 38 secondscan see how it it blinks which basically means it is refreshing. Perfect. So let's try build a calculator app.
6:06:476 hours, 6 minutes, 47 secondsAnd let's see that and let's see how that displays in something like this. And here we have a calculator app.
6:06:576 hours, 6 minutes, 57 secondsPretty pretty cool. Amazing. We can now refresh this. And there we go. You have a whole new refreshed page. Uh, perfect.
6:07:056 hours, 7 minutes, 5 secondsYou can copy this. Amazing. So now what I want to do is I want to develop one simple component called hint. And we're
6:07:146 hours, 7 minutes, 14 secondsgoing to store that inside of source components. hint.tsx.
6:07:216 hours, 7 minutes, 21 secondsSo not inside of the UI folder. Let me just close it here. I mean, it doesn't matter. If you want to, you can put it inside of the UI folder. And in here, we're going to mark this as use client.
6:07:326 hours, 7 minutes, 32 secondsAnd we're going to import everything tool tip related from components UI tool pip. You already have this in it is inside of the UI folder.
6:07:416 hours, 7 minutes, 41 secondsSo import all of these things and then create the following interface hint props accepting the children the text
6:07:496 hours, 7 minutes, 49 secondsand then optional side and align which accepts top right bottom or left and align start center and end.
6:07:576 hours, 7 minutes, 57 secondsAnd then let's go ahead and export const hint with some predefined props here.
6:08:056 hours, 8 minutes, 5 secondsSo basically we have the children, the text, the side which by default will be top and align which by default will be
6:08:126 hours, 8 minutes, 12 secondscenter. And then inside of here what you're going to do is you're going to add the tool tip provider. You're going to add the tool tip itself. And then
6:08:216 hours, 8 minutes, 21 secondsyou're going to add a tool tip trigger like that as child property and the
6:08:276 hours, 8 minutes, 27 secondsrender children inside. And then you're going to add tool tip content. You're going to pass in the side prop. You're going to pass in the align prop.
6:08:386 hours, 8 minutes, 38 secondsAnd inside you're going to render a paragraph with a text.
6:08:446 hours, 8 minutes, 44 secondsJust like that. That is our hint component. Now let's go back inside of the fragment web and let's wrap it around a couple of items. Starting with
6:08:526 hours, 8 minutes, 52 secondsthe external link icon. So simply wrap your button in your new hint component like this.
6:09:006 hours, 9 minutesAnd then you can add a text here and say open in a new tab and a side of bottom
6:09:076 hours, 9 minutes, 7 secondsand then a line of start. Just make sure you have imported the hint from components hint. And now when you hover it say it tells you what it does, right?
6:09:186 hours, 9 minutes, 18 secondsBecause just by looking at the icons it might not be clear. And now let's do that for the rest. So
6:09:256 hours, 9 minutes, 25 secondsfind the copy button and wrap it in a hint like this. Click the copy with a side of bottom.
6:09:366 hours, 9 minutes, 36 secondsSo now when you hover over here, you can see that you can click to copy and then do the same thing
6:09:446 hours, 9 minutes, 44 secondsfor this one to refresh.
6:09:516 hours, 9 minutes, 51 secondsThere we go. So now we can refresh as well. Amazing, amazing job. In the next chapter, what we are going to do is we're going to
6:09:596 hours, 9 minutes, 59 secondsimplement tabs here so we can switch between a code preview and a actual web preview like we are doing now. Great.
6:10:106 hours, 10 minutes, 10 secondsSo, let's go ahead and mark this as completed. A very simple chapter, but a very powerful and very rewarding chapter, may I say. So, let's go ahead
6:10:196 hours, 10 minutes, 19 secondsand open a pull request. So, this is chapter 12.
6:10:236 hours, 10 minutes, 23 secondsI'm going to close everything. New branch 12. Fragment preview. Is that the name?
6:10:316 hours, 10 minutes, 31 secondsIt is fragment view. Let's add and stage all of my changes.
6:10:396 hours, 10 minutes, 39 secondsLet me just click here. There we go. Stage the changes. 12 fragment view.
6:10:456 hours, 10 minutes, 45 secondsLet's commit. And let's publish the branch.
6:10:496 hours, 10 minutes, 49 secondsAnd let's go ahead and open a pull request here. And let's review what we just did.
6:10:596 hours, 10 minutes, 59 secondsAnd here we have this summary. We introduced a reusable tool tip component for displaying contextual contextual
6:11:066 hours, 11 minutes, 6 secondshints. We added a web fragment preview component with controls to refresh, copy, and open the preview in a new tab.
6:11:146 hours, 11 minutes, 14 secondsWe enabled a live preview of the project fragments directly within the project view, including interactive controls and
6:11:216 hours, 11 minutes, 21 secondstool tips. Perfect. As always, an an in-depth walkthrough as well as a sequence diagram here and some
6:11:306 hours, 11 minutes, 30 secondsactionable comments. So yes, navigator.Clipboard.ext is technically a promise. So it can you
6:11:396 hours, 11 minutes, 39 secondscan do on it and catch on it. So it is possible that the copy feature fails. So
6:11:466 hours, 11 minutes, 46 secondsit might be a good idea to add then and catch to uh at least display some kind of error at least internally for you so
6:11:546 hours, 11 minutes, 54 secondsyou know something is going on. This is not a bad idea. And in here it allows improving uh it suggests improving
6:12:026 hours, 12 minutes, 2 secondsaccessibility for the iframe by adding the title and area labels. Great. I'm satisfied with what we have. So, I'm just going to merge this pull request.
6:12:126 hours, 12 minutes, 12 secondsAnd once it is merged, I'm going to go back here, main branch, and refetch.
6:12:196 hours, 12 minutes, 19 secondsAnd after it refetches, there we go. Fragment view is the last merged one. Amazing. That marks the end
6:12:276 hours, 12 minutes, 27 secondsof this chapter. So, let's go ahead and mark this as complete and see you in the next one. Amazing. Amazing job.
Chapter 14: 13 Code View
6:12:366 hours, 12 minutes, 36 secondsIn this chapter, we're going to implement the code view. This will be a slightly longer chapter in comparison to
6:12:436 hours, 12 minutes, 43 secondsour last one simply because we have a bit more components to create. But let's start with adding tabs in our project
6:12:516 hours, 12 minutes, 51 secondsview component so that we can switch between the fragment web component and code view component.
6:12:596 hours, 12 minutes, 59 secondsSo as always ensure that you are on your main branch and you can synchronize changes.
6:13:056 hours, 13 minutes, 5 secondsThe last chapter was 12 fragment view.
6:13:096 hours, 13 minutes, 9 secondsNow let's go ahead inside of our project view. And this time we're going to add a couple of components. So let's go ahead
6:13:176 hours, 13 minutes, 17 secondsand just in between the fragment and the components UI resizable add tabs. Tabs content tabs list and tabs trigger. from
6:13:266 hours, 13 minutes, 26 secondscomponents UI tabs you have them installed when you added chats UI and once you have added them it's time to
6:13:346 hours, 13 minutes, 34 secondsuse them so what I'm going to do is I'm going to go below the project view and I
6:13:406 hours, 13 minutes, 40 secondswill add tab state and set tab state I will add use state here and I will set
6:13:486 hours, 13 minutes, 48 secondsthe options to be preview or code and by default it's going to be preview now Now
6:13:556 hours, 13 minutes, 55 secondsthat we have the tab state, let's go in the second resizable panel here and
6:14:026 hours, 14 minutes, 2 secondslet's encapsulate the active fragment within tabs.
6:14:076 hours, 14 minutes, 7 secondsNow in here, let's give the tabs a class name. Height full gap Y zero. Default value will be preview.
6:14:196 hours, 14 minutes, 19 secondsvalue will be tab state and on value change we'll get the new
6:14:266 hours, 14 minutes, 26 secondsvalue and set tab state to be value as preview or code like this.
6:14:366 hours, 14 minutes, 36 secondsThen inside of this tabs let's add a new div and let's encapsulate this once again.
6:14:436 hours, 14 minutes, 43 secondsThis div will have a class name of full width items center padding two border
6:14:506 hours, 14 minutes, 50 secondsbottom and gap x of two and then open tabs list and again encapsulate the
6:14:586 hours, 14 minutes, 58 secondsfragment. Inside of the tabs list give it a class name of height zero padding
6:15:056 hours, 15 minutes, 5 secondszero border and rounded medium. And then finally inside of here we can add tabs trigger.
6:15:146 hours, 15 minutes, 14 secondsThe first one will be the value preview with the class name rounded medium.
6:15:226 hours, 15 minutes, 22 secondsWe're going to render the I icon here which you can import from Lucid React. And while you're here also import icon.
6:15:316 hours, 15 minutes, 31 secondsLet me just move them to the top. There we go.
6:15:366 hours, 15 minutes, 36 secondsSo, let me just fix this. Uh, just a second.
6:15:446 hours, 15 minutes, 44 secondsSo, I think I just have to remove this. There we go.
6:15:486 hours, 15 minutes, 48 secondsSo, inside of this tabs trigger, add the eye icon like that and a span demo.
6:15:576 hours, 15 minutes, 57 secondsAnd then copy this trigger. This one will be code with the text code and uses
6:16:046 hours, 16 minutes, 4 secondsthe code icon. And then outside of the tabs list,
6:16:106 hours, 16 minutes, 10 secondsgo ahead and add a div with class name
6:16:156 hours, 16 minutes, 15 secondsML auto flex items center and gap x of two.
6:16:246 hours, 16 minutes, 24 secondsAnd this button will uh I'm sorry this div will encapsulate a
6:16:306 hours, 16 minutes, 30 secondsbutton from components UI button which will uh not serve any purpose now
6:16:386 hours, 16 minutes, 38 secondsbut it will later. So give it as child give it size small variant
6:16:456 hours, 16 minutes, 45 secondsand for now give it well just default
6:16:526 hours, 16 minutes, 52 secondsa link from next link. So, make sure to add this
6:17:006 hours, 17 minuteswith an href of pricing and add a crown icon and upgrade text.
6:17:126 hours, 17 minutes, 12 secondsGreat. And now outside of that div and outside of this
6:17:206 hours, 17 minutes, 20 secondsdiv as well. So move this outside. Add tabs content.
6:17:276 hours, 17 minutes, 27 secondsThis one will be for value preview. So you can put this finally inside. And then we're going to have another tabs
6:17:346 hours, 17 minutes, 34 secondscontent or value code. And this will simply be a paragraph to-do code.
6:17:436 hours, 17 minutes, 43 secondsThere we go. So make sure tabs content is still inside of tabs. So now when you go inside of your app here, you should
6:17:506 hours, 17 minutes, 50 secondssee a button to upgrade which should lead you to 404 page. And you should see that you can switch between demo and
6:17:596 hours, 17 minutes, 59 secondsbetween code. Uh the demo doesn't show anything until you select a fragment.
6:18:036 hours, 18 minutes, 3 secondsRight? So you can see how you can switch between the two. So now let's develop
6:18:096 hours, 18 minutes, 9 secondsthe code part. So in here it will be quite similar.
6:18:166 hours, 18 minutes, 16 secondsSo let's start by doing the following. MPM install prismjs.
6:18:226 hours, 18 minutes, 22 secondsThis will be used to uh highlight code syntax. So let's go ahead and develop this simple component
6:18:316 hours, 18 minutes, 31 secondsinside of source components. So in here add code view.tsx.
6:18:376 hours, 18 minutes, 37 secondsAnd in here you're going to need uh just one more thing. So let's actually create a folder code view like this and move this inside.
6:18:496 hours, 18 minutes, 49 secondsAnd you can change this to be index.tsx.
6:18:566 hours, 18 minutes, 56 secondsAnd then go inside of your uh vibe assets. You can use the link in the description or you can see it on the screen here. And find code theme.css.
6:19:056 hours, 19 minutes, 5 secondsSo it's quite long. That's why we are not typing it. So go ahead and copy this and create it here. So code theme.css
6:19:156 hours, 19 minutes, 15 secondsand just paste the entire thing inside and save it. And now let's go ahead and develop the code view here. So you're going to import everything from PrismJS.
6:19:256 hours, 19 minutes, 25 secondsAnd let me show you Prism.js. Oh, did I install it or not? MPM install PrismJS.
6:19:356 hours, 19 minutes, 35 secondsLet me see.
6:19:386 hours, 19 minutes, 38 secondsPrismJS. It is installed. But I think I also need to do mpm install-d at types prismjs.
6:19:446 hours, 19 minutes, 44 secondsThere we go. So, prismjs 1.3 and types 1.26.5 and now it works.
6:19:546 hours, 19 minutes, 54 secondsBelow that, import use effect and then import the following things. Risenjs components and then JavaScript, JSX,
6:20:036 hours, 20 minutes, 3 secondsPython, TSX or TypeScript. You can remove if you're not going to use Python for example.
6:20:106 hours, 20 minutes, 10 secondsAnd finally, import code theme CSS. So just make sure this is in the same folder. Right.
6:20:196 hours, 20 minutes, 19 secondsThen export const code view and create a simple interface
6:20:276 hours, 20 minutes, 27 secondsprops which accepts the code which is a string and a language which is a string.
6:20:366 hours, 20 minutes, 36 secondsSo assign the props. Let's dstructure them. Code and language. And inside of here, return a pre-tag.
6:20:476 hours, 20 minutes, 47 secondsGive it a class name padding two, background color transparent, border none, rounded none, margin zero, and the text extra small.
6:21:006 hours, 21 minutesAnd inside of here, add a code element, which renders the code.
6:21:076 hours, 21 minutes, 7 secondsAnd let's give this a class name.
6:21:106 hours, 21 minutes, 10 secondsAnd let's go ahead and use language dash lang like this. Usually if this was
6:21:186 hours, 21 minutes, 18 secondsa TypeScript uh class name, you would not do this because this type you shouldn't do this kind of half dynamic
6:21:266 hours, 21 minutes, 26 secondsclass name, right? You should instead do the full one. But this is not a Tailwind class.
6:21:336 hours, 21 minutes, 33 secondsThis is a class from Prism, right?
6:21:366 hours, 21 minutes, 36 secondsThat's why you don't have to worry because you can see that it is exactly what it expects.
6:21:436 hours, 21 minutes, 43 secondsAnd now let's just use the use effect here for a very simple thing. So on load simply use prism and highlight all.
6:21:536 hours, 21 minutes, 53 secondsThat's it. So that's going to be our code view component.
6:21:586 hours, 21 minutes, 58 secondsAnd if you go inside of project view, uh maybe we can already render it. Let's try code view.
6:22:046 hours, 22 minutes, 4 secondsAnd let me try adding language to be JS or let's do ts. And let's do code.
6:22:116 hours, 22 minutes, 11 secondsLet me just try const a is equal hello world something like that. Let's see if we are
6:22:206 hours, 22 minutes, 20 secondsable to preview that. And we are. There we go. And I think that it will also affect dark mode. And you can see how the syntax is visible. Very nice.
6:22:316 hours, 22 minutes, 31 secondsAnd now let's actually uh use this in a file explorer because that's what we
6:22:386 hours, 22 minutes, 38 secondshave to do next. So we're going to go ahead and create the file explorer inside. Yes, let me just show you how
6:22:466 hours, 22 minutes, 46 secondsyou can import code view. So you don't have to go to index.
6:22:516 hours, 22 minutes, 51 secondsIndex can be uh used like this. That's why we named it index. So you can just target code view.
6:22:596 hours, 22 minutes, 59 secondsIn case this doesn't work for you for any reason, you can just name this properly, name it code view again and then just import that way. And let me just move it up here. There we go.
6:23:116 hours, 23 minutes, 11 secondsSo now let's create the file explorer component.
6:23:156 hours, 23 minutes, 15 secondsI'm going to go inside of source components file. Whoops.
6:23:226 hours, 23 minutes, 22 secondsFile explorer.tsx.
6:23:276 hours, 23 minutes, 27 secondsAnd let's go ahead and let's prepare the imports. Copy check icon and copy icon from lucid react. Use state use memo and
6:23:366 hours, 23 minutes, 36 secondsuse callback as well as fragment from react.
6:23:416 hours, 23 minutes, 41 secondsHint and button from components. Button comes from shatzen meaning it has the UI
6:23:486 hours, 23 minutes, 48 secondsprefix and hint is our custom component which we created in the previous chapter. Now let's import our new code view which we just created.
6:23:586 hours, 23 minutes, 58 secondsAnd then let's go ahead uh and add resizable
6:24:056 hours, 24 minutes, 5 secondswith resizable handle panel and panel group. And let's also import everything we need from breadcrumb. So both of this
6:24:146 hours, 24 minutes, 14 secondscome from shatnui. So you have them breadcrumb item list page separator and ellipses.
6:24:236 hours, 24 minutes, 23 secondsNow let's go ahead and let's define our file collection.
6:24:286 hours, 24 minutes, 28 secondsThis is our file collection type. It is basically a type of record string string. But I like to use this type
6:24:366 hours, 24 minutes, 36 secondssimply because it uses the path as the key and then the content here. I think this kind of visually makes more sense.
6:24:416 hours, 24 minutes, 41 secondsI think we did the same thing in our functions path string. Yes, this is exactly how we
6:24:496 hours, 24 minutes, 49 secondsdefined our files here. So I like to do this because I think uh it visually looks better. Great. So now let's go
6:24:576 hours, 24 minutes, 57 secondsahead and first create a function which can extract language from file extension. So get language from extension accepts the file name and
6:25:066 hours, 25 minutes, 6 secondsreturns a string. And what we do here is we simply target the extension part and we take that part and we turn it to
6:25:146 hours, 25 minutes, 14 secondslowercase and we default to text if we were unable to do that. So basically if we enter something like app.tsx
6:25:236 hours, 25 minutes, 23 secondswe return tsx as the language. As simple as that.
6:25:306 hours, 25 minutes, 30 secondsPerfect. Now let's go ahead and let's create uh a component which we are going to
6:25:376 hours, 25 minutes, 37 secondsneed in order to even render uh which file is currently active. So I'm just trying to think what is the best way to build this so that you can see the
6:25:456 hours, 25 minutes, 45 secondsresults as soon as possible because there's a lot of components we have to build and I'm just afraid that um we might have to build for a lot of time
6:25:536 hours, 25 minutes, 53 secondswithout seeing any results. So this is what I will do. We're going to do export const file explorer like this.
6:26:046 hours, 26 minutes, 4 secondsLet's create an interface file explorer.
6:26:066 hours, 26 minutes, 6 secondsActually, let's just call this yeah file explorer props because we're going to have many components in this file. So I want to name this explicitly to be file
6:26:156 hours, 26 minutes, 15 secondsexplorer props. It will accept files which are a type of file collection like this.
6:26:236 hours, 26 minutes, 23 secondsThen let's go ahead and let's use this and we can destructure the files from here. So now what I want to do is I want
6:26:316 hours, 26 minutes, 31 secondsto add the return resizable group resizable panel group like this with the
6:26:386 hours, 26 minutes, 38 secondsdirection horizontal and then resizable panel
6:26:476 hours, 26 minutes, 47 secondswith a default size of 30 with a minimum size of 30 and a class name background sidebar.
6:26:586 hours, 26 minutes, 58 secondsAnd inside of here, a paragraph to-do tree view like this.
6:27:066 hours, 27 minutes, 6 secondsThen let's go ahead and let's add a resizable handle here with a class name hover background
6:27:156 hours, 27 minutes, 15 secondsprimary and transition colors like this.
6:27:216 hours, 27 minutes, 21 secondsAnd then let's go ahead and do another resizable banner like this with a default size of 70 and a minimum size of 50.
6:27:346 hours, 27 minutes, 34 secondsAnd in here what we are going to do is try and do files first in the array.
6:27:456 hours, 27 minutes, 45 secondsI'm just thinking of a way. Okay, I know what we can do now.
6:27:506 hours, 27 minutes, 50 secondsLet's create a state called selected files.
6:27:556 hours, 27 minutes, 55 secondsSo const selected file set selected file use state.
6:28:026 hours, 28 minutes, 2 secondsAnd it can either be a string or null.
6:28:066 hours, 28 minutes, 6 secondsAnd let's go ahead and create a function inside of use state to get the file keys
6:28:136 hours, 28 minutes, 13 secondsby using object keys and pass in the files. And then return file keys.length length is larger than zero, we can
6:28:216 hours, 28 minutes, 21 secondsselect from the file keys the first in the array otherwise null. So this way we are going to pre-seelelect the first
6:28:296 hours, 28 minutes, 29 secondsfile we can find. And now that we have this first file, I think it will be a little bit easier for us to build this UI. So inside of this second resizable
6:28:396 hours, 28 minutes, 39 secondspanel, check if we have the selected file and if inside of files we can find this selected file. If we can do that,
6:28:486 hours, 28 minutes, 48 secondsgo ahead and render a div code view like this. Otherwise, let's go ahead and
6:28:566 hours, 28 minutes, 56 secondsrender the alternative which is a div which says select a file to view its content
6:29:066 hours, 29 minutes, 6 secondswith a class name flex height full items center justify center and text muted
6:29:156 hours, 29 minutes, 15 secondsforeground and I think it's time to render this. So let's go inside of the project view here and let's go ahead and render it
6:29:236 hours, 29 minutes, 23 secondsinstead. So remove code view and check if you have active fragment question mark files.
6:29:316 hours, 29 minutes, 31 secondsRender the file explorer component and pass in the files to be active
6:29:376 hours, 29 minutes, 37 secondsfragment.files files as and in here you can choose to use
6:29:456 hours, 29 minutes, 45 secondslet me just copy from here this type basically
6:29:526 hours, 29 minutes, 52 secondsbecause the JSON type will be any right so we are now marking it as this make sure to import the file explorer and you
6:30:016 hours, 30 minutes, 1 secondcan remove the code view now because we're going to use it inside of the file explorer and I think that already just make sure you have a fragment selected
6:30:086 hours, 30 minutes, 8 secondshere When you click on code, you should have a to-do tree view and to-do code view. Perfect.
6:30:156 hours, 30 minutes, 15 secondsAnd I've had some trouble uh making this work. Oh, looks like it's working just fine. Okay, my version had some
6:30:246 hours, 30 minutes, 24 secondsproblems. I think looks like it works just fine nevertheless. Okay, now let's go ahead and let's actually develop the
6:30:326 hours, 30 minutes, 32 secondstree view and the code view. So, I'm going to go back inside of the file explorer here. And I think it might be easier to develop the code view first
6:30:406 hours, 30 minutes, 40 secondssimply because we already have the code view. So I'm going to go inside of this div here and I'm going to add a class
6:30:466 hours, 30 minutes, 46 secondsname height full width full flex and flex column. And then I'm going to open
6:30:536 hours, 30 minutes, 53 secondsa new div. The class name border bottom bg sidebar px4 py2 flex justify center.
6:31:046 hours, 31 minutes, 4 secondsUh actually it will be justify between items will be center and gap x will be two.
6:31:126 hours, 31 minutes, 12 secondsThen let's add to-do breadcrump file breadcrump like this. And then add a hint component
6:31:216 hours, 31 minutes, 21 secondswrapping our button component and give this a text of copy to clipboard and the side of bottom.
6:31:306 hours, 31 minutes, 30 secondsAnd for this button right here, give it a variant of outline, a size of icon, a
6:31:386 hours, 31 minutes, 38 secondsclass name of ML auto on click to be an empty arrow function, and disabled
6:31:466 hours, 31 minutes, 46 secondsto be false. And inside of here, render the copy icon.
6:31:526 hours, 31 minutes, 52 secondsSo now, when you click on code, you should have the copy to clipboard button. Just make sure you have both button and the hint imported.
6:32:046 hours, 32 minutes, 4 secondsGreat. And now below this div, we're going to open a new div with a class
6:32:106 hours, 32 minutes, 10 secondsname flex one overflow auto and render the code view.
6:32:186 hours, 32 minutes, 18 secondsIn here, select the code to be files and then selected file. And the language will be
6:32:276 hours, 32 minutes, 27 secondsoops the language will use our function get language from extension selected file.
6:32:346 hours, 32 minutes, 34 secondsWhoops.
6:32:386 hours, 32 minutes, 38 secondsLike this. And by default, you can see that it selected a specific file. Right now, I'm not able to scroll. We will fix
6:32:466 hours, 32 minutes, 46 secondsthis as well. by uh let's see it has overflow auto but I think that we are
6:32:536 hours, 32 minutes, 53 secondsmissing uh something obviously because it's preventing us from doing this
6:33:016 hours, 33 minutes, 1 seconduh so let's see everything here seems fine but yes I'm not able to scroll to the
6:33:096 hours, 33 minutes, 9 secondsbottom here so how about I go inside of the project view here and to the value code add a class name a minimum height of zero.
6:33:216 hours, 33 minutes, 21 secondsAnd I think that now when you select the fragment, there we go. Now I'm able to scroll in all directions, you should be
6:33:296 hours, 33 minutes, 29 secondsable to scroll left and right and up and down. So basically inside of your project view in the tab content for the
6:33:366 hours, 33 minutes, 36 secondsvalue code, add a minimum height of zero. And this will allow you to scroll inside of the code preview. So this is
6:33:446 hours, 33 minutes, 44 secondsnow showcasing the very first file it selected. But now we have to build the tree view so we actually see the file we
6:33:516 hours, 33 minutes, 51 secondsselected and so that we can choose between other files. And then we need a breadcrumb component here to render the
6:33:586 hours, 33 minutes, 58 secondscurrent file. So let's go ahead and let's build the tree view next. So I'm
6:34:056 hours, 34 minutes, 5 secondsgoing to prepare that right here in the file explorer right above where we added a to-do to render the tree view. Let's
6:34:136 hours, 34 minutes, 13 secondsadd tree view like this. And let's give it some props. Data is going to be an
6:34:206 hours, 34 minutes, 20 secondsempty array. Value will be selected file. On select will be an empty function. And now let's go ahead and
6:34:296 hours, 34 minutes, 29 secondslet's prepare this things here. So what I want to do now is the following. Uh I
6:34:356 hours, 34 minutes, 35 secondswant to go inside of source lib utils and I will export function convert files
6:34:436 hours, 34 minutes, 43 secondsto tree items and I'm going to create a JS doc like this simply so you can see what happens.
6:34:526 hours, 34 minutes, 52 secondsSo this JS doc is quite useful. I don't like I mean I don't use it usually but it's useful when I feel like things are
6:35:006 hours, 35 minutesnot exactly clear. You can see how when you create a comment like this and when you hover over a function it actually tells you that. So it converts a record
6:35:086 hours, 35 minutes, 8 secondsof files to a tree structure. So we accept files which is a record of file paths to content. So this is the input
6:35:156 hours, 35 minutes, 15 secondsright source button tsx and then some content and this is the output that it will return. So that's what we are
6:35:236 hours, 35 minutes, 23 secondsbuilding now. So let's go ahead and add some props here. files which will be a type of path which is a type of string
6:35:326 hours, 35 minutes, 32 secondsand a string and it will return a tree item. So now we need to create the tree item object.
6:35:416 hours, 35 minutes, 41 secondsSo let me just uh do this like so I'm trying to think of a perfect place to add this to.
6:35:526 hours, 35 minutes, 52 secondsUm how about in source we just create types ds and let's export type tree item
6:36:016 hours, 36 minutes, 1 secondand that will be a string or an array of string
6:36:076 hours, 36 minutes, 7 secondsand tree item itself. So it can reference itself right it can be a deeply nested array.
6:36:176 hours, 36 minutes, 17 secondsNow that we have this, we can go back inside of the utils file here. Uh, and we can set the return method to be the
6:36:256 hours, 36 minutes, 25 secondsreturn type to be tree item from the types. And it's going to be an array of those three items and it's going to be an error until we actually return that.
6:36:346 hours, 36 minutes, 34 secondsSo I want to do this because this way we are certain that we correctly developed this. So let's start by creating an
6:36:426 hours, 36 minutes, 42 secondsinterface tree node like this which is basically a key which is a string and then tree node which is itself inside or
6:36:516 hours, 36 minutes, 51 secondsnull. Then let's define a tree which is a type of tree node and it's going to be an empty object at first. Now let's go
6:37:006 hours, 37 minutesahead and create sorted paths. So we are basically sorting the files alphabetically by their path. And then what we're going
6:37:096 hours, 37 minutes, 9 secondsto do is a for loop. So for const file path of sorted paths.
6:37:176 hours, 37 minutes, 17 secondsLet's go ahead and this uh split the file path into parts by doing file path.split
6:37:266 hours, 37 minutes, 26 secondsby a forward slash. The current one will be the current tree which is just the
6:37:326 hours, 37 minutes, 32 secondsempty object for now. And then for let index being zero, index being less
6:37:406 hours, 37 minutes, 40 secondsthan the parts length minus one and index increasing by one for each iteration
6:37:486 hours, 37 minutes, 48 secondsget the part. So parts and using this index here if we cannot find the path
6:37:576 hours, 37 minutes, 57 secondsthe part in the current object we need to add it there like this
6:38:056 hours, 38 minutes, 5 secondsand then current is equal to current part like this.
6:38:116 hours, 38 minutes, 11 secondsAnd then what we have to do outside of here is add the file or the leaf node.
6:38:196 hours, 38 minutes, 19 secondsRight? So const file name is parts parts.length minus one. Current file name is equal to null.
6:38:316 hours, 38 minutes, 31 secondsThis will basically indicate that it's a file. This is quite confusing, right?
6:38:366 hours, 38 minutes, 36 secondsBut once you see how the file uh structure will look, it will make a little bit uh more sense. Uh okay. So I
6:38:466 hours, 38 minutes, 46 secondsthink that this uh let me just see.
6:38:526 hours, 38 minutes, 52 secondsYeah. So okay, we just finished this for loop, right? And now we have to uh
6:38:596 hours, 38 minutes, 59 secondsconvert the node. So let's create an inner function to do that. function convert node. The node it accepts is a tree node.
6:39:116 hours, 39 minutes, 11 secondsWe have defined a tree node right here.
6:39:166 hours, 39 minutes, 16 secondsAnd the name is an optional string and it returns back a tree item, an array of
6:39:236 hours, 39 minutes, 23 secondstree items or a single tree item like this. So let's get the entries to be object entries from a specific node.
6:39:366 hours, 39 minutes, 36 secondsIf entries.length is equal to zero, return the name or an empty string. Then define the children
6:39:456 hours, 39 minutes, 45 secondsto be a tree item like so. And set it to be an empty array for now.
6:39:546 hours, 39 minutes, 54 secondsAnd then let's go ahead and do for const they structure the key and the value of
6:40:026 hours, 40 minutes, 2 secondsentries and do the following. If value is equal to null
6:40:116 hours, 40 minutes, 11 secondsthat means this is a file. So do children.push key.
6:40:206 hours, 40 minutes, 20 secondsElse this is a folder. So create a sub tree using convert node and pass in the
6:40:276 hours, 40 minutes, 27 secondsvalue and the key. So we need to go deeper. We need to recursively call this function again until we find a file. If
6:40:346 hours, 40 minutes, 34 secondsarray is array subtree children dopush
6:40:426 hours, 40 minutes, 42 secondsopen an array of key and spread the subree.
6:40:476 hours, 40 minutes, 47 secondselse children do push key and subtree
6:40:546 hours, 40 minutes, 54 secondslike so. And then let's go ahead outside of this four and return the children
6:41:036 hours, 41 minutes, 3 secondslike so. And then let's define the result here to be convert node tree and
6:41:106 hours, 41 minutes, 10 secondsreturn array is array result otherwise result inside of the array like this.
6:41:216 hours, 41 minutes, 21 secondsAnd if you've done it correctly you should have no errors here.
6:41:266 hours, 41 minutes, 26 secondsNow I completely understand that this was a very complex task. And if if you are worried that you did it incorrectly,
6:41:346 hours, 41 minutes, 34 secondsdon't worry. Uh I have added my entire utilus files to my public assets. So you can just find it here and you can copy
6:41:426 hours, 41 minutes, 42 secondsit from here. For example, I can copy this entire file and I can paste it in here like so. So now I have this convert
6:41:496 hours, 41 minutes, 49 secondsnode and I have the convert files to three items.
6:41:546 hours, 41 minutes, 54 secondsRight? So if you want to do a double check or you just want to copy file uh because it's easier, you can do that.
6:42:016 hours, 42 minutes, 1 secondDon't worry. Uh yes, a slight mistake here. My apologies. Uh so don't worry, I will fix I will fix this file so it
6:42:106 hours, 42 minutes, 10 secondsdoesn't use this import because our tree item comes from types.
6:42:166 hours, 42 minutes, 16 secondsYes. So import type three item. Uh I will fix that instead. I think I can fix it right now.
6:42:256 hours, 42 minutes, 25 secondsThere we go. Like so.
6:42:286 hours, 42 minutes, 28 secondsSo when you copy, you won't have that problem. Uh and I will double check by copying this file again. Pasting it. Uh oops. Copy it again.
6:42:406 hours, 42 minutes, 40 secondsI cannot seem to copy it. Let me try one more time. I think the copy button is still using the old one.
6:42:496 hours, 42 minutes, 49 secondsOkay. Finally, no errors in the utilus file. Okay. So, now that you have the convert files to tree items, we can go
6:42:586 hours, 42 minutes, 58 secondsback inside of the file explorer.
6:43:056 hours, 43 minutes, 5 secondsAnd in here, uh, we're going to have to create tree data. So, const tree data
6:43:126 hours, 43 minutes, 12 secondswill be use memo and return convert files to tree items
6:43:186 hours, 43 minutes, 18 secondsand pass files here. And in here add files as a dependency. So just make sure you imported our newly created function
6:43:266 hours, 43 minutes, 26 secondshere. Uh you can either write write that function yourself as we just did or you can copy it from the source code or from
6:43:346 hours, 43 minutes, 34 secondsthe assets folder. Uh great. Now that we have this and we have the tree data, let's go ahead and let's add the const
6:43:436 hours, 43 minutes, 43 secondshandle file select to be use call back.
6:43:506 hours, 43 minutes, 50 secondsAnd inside of the use call back, we're going to check the file path to be a type of string.
6:44:006 hours, 44 minutesAnd if files file path exists, set selected file to be the file path.
6:44:096 hours, 44 minutes, 9 secondsAnd add files here. There we go.
6:44:136 hours, 44 minutes, 13 secondsPerfect. And now inside of the tree view, add the tree data here.
6:44:216 hours, 44 minutes, 21 secondsAnd on select, add handle file select like so. And now it's time to develop
6:44:286 hours, 44 minutes, 28 secondsthe treeview component. So I'm going to go inside of components tree view.tsx.
6:44:366 hours, 44 minutes, 36 secondsLet's go ahead and create the interface tree view props which uses the tree item from our types
6:44:436 hours, 44 minutes, 43 secondslike so. And now let's export const tree view.
6:44:506 hours, 44 minutes, 50 secondsLet's assign the props. Tree view props. In here we get data value end on select.
6:44:596 hours, 44 minutes, 59 secondsAnd in here let's go ahead and let's return a paragraph tree. Actually maybe we can do
6:45:076 hours, 45 minutes, 7 secondsJSON stringify data just so we can see what we created. And let's import the tree view from dot slash treeview.
6:45:206 hours, 45 minutes, 20 secondsAnd if you go back to your app here, select a fragment and click code. There we go. I have app folder and page.tsx.
6:45:276 hours, 45 minutes, 27 secondsSo those are for me. But if I go into one of my older ones, well, looks like all of these are pretty simple. So it's going to keep using just uh a simple
6:45:366 hours, 45 minutes, 36 secondsexample. But if you tell it to build something complicated, uh you will have more items here. So this represents a
6:45:456 hours, 45 minutes, 45 secondsfolder and this represents a file. And now I mean this is basically how the file structure should look like. And now we're going to use that to properly render the tree view.
6:45:566 hours, 45 minutes, 56 secondsSo, uh, let's go ahead and let's import everything we need from the sidebar component.
6:46:046 hours, 46 minutes, 4 secondsSo, that's going to be the sidebar, the content group, group content, menu, menu button, menu item, menu sub, provider,
6:46:136 hours, 46 minutes, 13 secondsand rail from components UI sidebar. You already have this when you added Shatsen UI. And now let's go ahead here and
6:46:216 hours, 46 minutes, 21 secondslet's render that. So starting with the sidebar provider and let's render sidebar with
6:46:306 hours, 46 minutes, 30 secondscollapsible to be none and class name to be width full and then sidebar content like so.
6:46:426 hours, 46 minutes, 42 secondsinside of the sidebar content. Sidebar group sidebar group content
6:46:506 hours, 46 minutes, 50 secondssidebar menu like that.
6:46:576 hours, 46 minutes, 57 secondsSo you shouldn't see anything now simply because we didn't add anything in the menu. So now what we have to do is we have to develop the tree component. So
6:47:066 hours, 47 minutes, 6 secondslet's do that below here. Const tree will have an interface tree props which
6:47:146 hours, 47 minutes, 14 secondswill accept item which is a type of tree item. It will accept selected value which will be an optional string or it
6:47:226 hours, 47 minutes, 22 secondswill be null on select which will be an optional function which accepts the value which is a type of string and returns a
6:47:316 hours, 47 minutes, 31 secondsvoid and parent path which will be a string.
6:47:366 hours, 47 minutes, 36 secondsSo let's go ahead and add tree props here and the structure the item selected value on select and parent path like so.
6:47:496 hours, 47 minutes, 49 secondsInside of here, let's first do a destruction of the name and the rest of the items from an array. Array is array item. If it is, we can render the item.
6:48:026 hours, 48 minutes, 2 secondsOtherwise, put the item in the array.
6:48:066 hours, 48 minutes, 6 secondsThen let's get the current path. This will check if we have the parent path and it's going to render dynamically
6:48:136 hours, 48 minutes, 13 secondsusing backd parent path forward slashname otherwise just the name of the file. If we don't have any
6:48:236 hours, 48 minutes, 23 secondsitems, uh this means that this is a file. So let's add it's a file const is selected
6:48:336 hours, 48 minutes, 33 secondshere will be selected value equals current path and in here we're going to return
6:48:416 hours, 48 minutes, 41 secondssidebar menu button with is active to be is selected and
6:48:496 hours, 48 minutes, 49 secondsclass name will be data active true background transparent and I'll click
6:48:576 hours, 48 minutes, 57 secondsHere we'll call on select with a question mark because it can be optional and pass the current path
6:49:046 hours, 49 minutes, 4 secondsinside of here. Render the file icon uh file icon from lucid react. Just make
6:49:146 hours, 49 minutes, 14 secondssure you have it like that. And below that a span and the name. And this will have a class name of truncate
6:49:236 hours, 49 minutes, 23 secondslike that. and then go outside of this if clause and this means it's a folder
6:49:326 hours, 49 minutes, 32 secondsand in here return sidebar menu item with collapsible
6:49:396 hours, 49 minutes, 39 secondsuh we now have to import the things from collapsible as well. My apologies I forgot about that. So just add
6:49:476 hours, 49 minutes, 47 secondscollapsible content and trigger from components UI collapsible. you also have those components.
6:49:556 hours, 49 minutes, 55 secondsSo, let's go ahead uh down here and instead of the sidebar menu item, open collapsible like that.
6:50:066 hours, 50 minutes, 6 secondsUh let me just fix this collapsible. Give it a class name of group forward slash collapsible.
6:50:186 hours, 50 minutes, 18 secondsand then add the following class name which is a little bit longer and looks weird. So basically open curly brackets
6:50:286 hours, 50 minutes, 28 secondsand this entire thing is inside of that curly brackets and and then if data state is open for this component target
6:50:376 hours, 50 minutes, 37 secondsthe button target the SVG and target the first child and rotate it by 90
6:50:446 hours, 50 minutes, 44 secondsand set the default to open inside of here collapsible trigger with
6:50:516 hours, 50 minutes, 51 secondsthe prop as child Add a sidebar menu button component with
6:50:586 hours, 50 minutes, 58 secondsthe chevron right icon from lucid react and give it a class name of transition transform. So this is the icon that we
6:51:066 hours, 51 minutes, 6 secondsare going to rotate by 90 once we open this collapsible and next to it add a folder icon from
6:51:156 hours, 51 minutes, 15 secondsLucid React and then a span with the name of the folder and the class name truncate
6:51:246 hours, 51 minutes, 24 secondsand then outside of the collapsible trigger use a collapsible content and
6:51:306 hours, 51 minutes, 30 secondsinside of this a sidebar menu sub and inside of here go over items.mmap
6:51:396 hours, 51 minutes, 39 secondsget the sub item and the index and render the tree again.
6:51:486 hours, 51 minutes, 48 secondsThat's right. We are rendering itself again.
6:51:536 hours, 51 minutes, 53 secondsAnd in here set the key to be index item to be sub item.
6:52:006 hours, 52 minutesSelected value to be selected value.
6:52:046 hours, 52 minutes, 4 secondsOn select to be on select oops parent path to be current path
6:52:146 hours, 52 minutes, 14 secondslike that. And that's it for the tree component. What we have to do now is we have to actually use the tree component.
6:52:216 hours, 52 minutes, 21 secondsAnd we're going to do that by going back here inside of the sidebar menu and simply do data.m map item and index.
6:52:306 hours, 52 minutes, 30 secondsRender the tree component.
6:52:336 hours, 52 minutes, 33 secondsPass in the key to be index. Item will be item. Selected value will be the
6:52:396 hours, 52 minutes, 39 secondsvalue. On select will be on select and parent path will be an empty string. So
6:52:476 hours, 52 minutes, 47 secondslet's see what we didn't use. We didn't use sidebar rail. So, we forgot that.
6:52:526 hours, 52 minutes, 52 secondsSo, let's go down here after sidebar content and render sidebar rail.
6:53:026 hours, 53 minutes, 2 secondsNow, let's go inside of the file explorer. Oh, we already have tree view.
6:53:066 hours, 53 minutes, 6 secondsSo, there we go. Here we have it. And we can open and close it. Uh, but looks like our select isn't really showing. It isn't working. So, let's fix that.
6:53:196 hours, 53 minutes, 19 secondsOr maybe this is the selected state. I'm not exactly sure. So I'm going to try and develop something a bit more
6:53:286 hours, 53 minutes, 28 secondscomplicated. So I'm going to try to prompt it to something to create more files.
6:53:356 hours, 53 minutes, 35 secondsOkay. So what I did is I asked it to build a landing page with each part in its own component. And that generated a
6:53:436 hours, 53 minutes, 43 secondsmuch better result as you can see. So what I'm going to do is I'm going to expand this. I'm going to go back to the code and yeah, I still am not able to
6:53:516 hours, 53 minutes, 51 secondsselect this. So, let's go ahead and look at what we forgot to do. So, okay, these breadcrumbs are unused. That's okay. Uh,
6:53:596 hours, 53 minutes, 59 secondswe're going to use them in a moment, but it seems like this handle file select uh
6:54:066 hours, 54 minutes, 6 secondsis not working properly. So what I'm going to do is I'm going to first start by adding a console
6:54:146 hours, 54 minutes, 14 secondslog and rendering the file path.
6:54:206 hours, 54 minutes, 20 secondsSo I'm going to open my inspect element here and okay. Oh, so it looks app name is being sent. Okay, so
6:54:306 hours, 54 minutes, 30 secondsthat definitely doesn't exist. Let's go inside of a tree view and let's see what I did wrong. So in here we have on
6:54:386 hours, 54 minutes, 38 secondsselect parent path and then the name. Yes, this this
6:54:456 hours, 54 minutes, 45 secondsdoesn't look correct. I think I meant this in the current path.
6:54:536 hours, 54 minutes, 53 secondsLet me refresh and check. Select the fragment check.
6:54:596 hours, 54 minutes, 59 secondsThere we go. So I'm I'm not sure if you can see. Well, you can definitely see the code is changing, right? And also the file is is a little bit bold. So
6:55:096 hours, 55 minutes, 9 secondsbasically the problem was in the tree view component the current path I hardcoded name when what I should have
6:55:166 hours, 55 minutes, 16 secondsbeen doing uh is put it inside of curly brackets like this.
6:55:226 hours, 55 minutes, 22 secondsExcellent. So now that we have this uh the good thing is no more no need for to do anything more in the tree view. Uh
6:55:306 hours, 55 minutes, 30 secondsnow let's go ahead and let's enable the copy button and let's create the file breadcrumb here. So I want to do the
6:55:366 hours, 55 minutes, 36 secondsfile uh breadcrumb thing first. So I'm going to go inside of the file explorer.
6:55:446 hours, 55 minutes, 44 secondsUm let's go just above it here. So const file breadcrumb like this.
6:55:546 hours, 55 minutes, 54 secondsLet's go ahead and create an interface file breadcrumb props which accepts an individual file path.
6:56:036 hours, 56 minutes, 3 secondsLet's extract the file path from here and let's go ahead and get the path
6:56:106 hours, 56 minutes, 10 secondssegments by a forward slash and let's limit the maximum number of segments to be four. So if the path goes deeper than
6:56:196 hours, 56 minutes, 19 secondsfour segments, we're going to be responsive about it. Now let's do con render breadcrumb items like this.
6:56:306 hours, 56 minutes, 30 secondsAnd in here if path segments length is lower than or equal than
6:56:376 hours, 56 minutes, 37 secondsmaximum segments add a comment show all segments if four or less.
6:56:486 hours, 56 minutes, 48 secondsSo let's return path segments here. Map segment index
6:56:556 hours, 56 minutes, 55 secondsconst is last will be if the index is equal to path segments.length minus one and in here return a fragment.
6:57:076 hours, 57 minutes, 7 secondsGive it a closing tag.
6:57:106 hours, 57 minutes, 10 secondsGive the fragment a key of index. The fragment is imported from React right
6:57:166 hours, 57 minutes, 16 secondshere. Inside of the fragment, add a breadcrumb item.
6:57:246 hours, 57 minutes, 24 secondsCheck. Oh, let me just fix bread breadcrumb inside check is last if it is render
6:57:336 hours, 57 minutes, 33 secondsbreadcrumb page and inside the segment and give it a class name of font medium.
6:57:436 hours, 57 minutes, 43 secondsIf it is not last, we're going to render a span element and segment inside and give the span a class name text muted foreground.
6:57:576 hours, 57 minutes, 57 secondsAnd then outside of the breadcrumb item, if it is not last, again add a breadcrumb separator like so.
6:58:076 hours, 58 minutes, 7 secondsAnd this was inside of this if. So let's now add else.
6:58:126 hours, 58 minutes, 12 secondsWe are going to show the first element and then ellipses if we have more than four of them. So the first segment is what we care about.
6:58:236 hours, 58 minutes, 23 secondsPath segments first in the array. Last segment.
6:58:306 hours, 58 minutes, 30 secondsSo path segments.length minus one. So it's only those two that we care about.
6:58:376 hours, 58 minutes, 37 secondsAnd once we get those two, let's simply return a fragment breadcrumb item
6:58:466 hours, 58 minutes, 46 secondsa span first segment with a class name text muted foreground. And then let's go
6:58:556 hours, 58 minutes, 55 secondsahead and add the breadcrumb separator and the breadcrumb ellipses like so. So
6:59:036 hours, 59 minutes, 3 secondsrender the breadcrumb separator and then a breadcrumb item which renders the breadcrumb ellipses. All of these are
6:59:106 hours, 59 minutes, 10 secondsimported from the same thing. Then let's add another breadcrumb item here with a breadcrumb page
6:59:186 hours, 59 minutes, 18 secondsand render the last segment inside and give this a class name of font medium.
6:59:276 hours, 59 minutes, 27 secondsAnd finally outside of this function return breadcrumb
6:59:366 hours, 59 minutes, 36 secondsand then breadcrumb list and then render breadcrumb items like that.
6:59:486 hours, 59 minutes, 48 secondsSo a little bit of effort here to create nice and responsive file breadcrumbs.
6:59:536 hours, 59 minutes, 53 secondsAnd now let's go ahead and let's render them. So that's going to be rendered in the code view.
7:00:007 hoursSo there we go. To-do file breadcrumb just above this hint. Let's render a file breadcrumb.
7:00:077 hours, 7 secondsAnd let's give it a file path to be selected file.
7:00:127 hours, 12 secondsAnd there we go. App contact tsx features footer hero navbar. And if you create one that's very deep, it will
7:00:217 hours, 21 secondsshow a maximum of four folders before it uses the responsive mode and it will just replace the folders in between with
7:00:307 hours, 30 secondsan ellipses which is basically three dots. Perfect. Now let's implement the copy feature.
7:00:397 hours, 39 secondsSo we already did this before. So we can copy it from that place. Handle copy use call back. If we have the selected file
7:00:477 hours, 47 secondsright to the navigator clipboard with files selected file and now we have to add the set copied state.
7:00:577 hours, 57 secondsSo let me just add it here above the selected file. Copied and set copied.
7:01:027 hours, 1 minute, 2 secondsPerfect. So now we have handle copy. And now let's use the handle copy for this
7:01:087 hours, 1 minute, 8 secondsbutton right here. Handle copy. And let's paste in copied. copied.
7:01:167 hours, 1 minute, 16 secondsIf it's copied, we will use the copy check icon.
7:01:217 hours, 1 minute, 21 secondsOtherwise, the copy icon like this. And you should no longer have any errors in your code because we are
7:01:297 hours, 1 minute, 29 secondsusing everything. So when I click copy, it turns into a different icon now. And you can see that I just copied that
7:01:357 hours, 1 minute, 35 secondsentire thing. Amazing. We just developed a super amazing file explorer. So now
7:01:437 hours, 1 minute, 43 secondsI'm going to try to prompt it to create a deeper structure. But this is pretty much it for uh this chapter.
7:01:537 hours, 1 minute, 53 secondsAll right. So this time I told it build a landing page with each part in its own component. Use deeply nested folders.
7:02:007 hours, 2 minutesAnd you can see that I definitely got that. So inside of the app folder I have a landing and then I have features and
7:02:077 hours, 2 minutes, 7 secondsthen I have the file. And you can see our breadcrumb in action now. But for example, you can see that I can break it, right? I if I open this too much, it
7:02:167 hours, 2 minutes, 16 secondsbreaks. So what you can do is you can remove the maximum segments here to be three. And it will be reasonable to change the comment here as well. And
7:02:267 hours, 2 minutes, 26 secondsthis is how it will look like. Then let me just refresh. I think the error was because of the hot reload. And let's click on the fragment here. So let me select features.
7:02:367 hours, 2 minutes, 36 secondsUh okay. So you can see it works. But it seems like we have some problem here.
7:02:417 hours, 2 minutes, 41 secondsUh, okay. List cannot be a descendant of list. Uh, okay. It's a hydration error. It's not
7:02:497 hours, 2 minutes, 49 secondsexactly too big of a problem, but I'm not um I'm not too sure how to fix that
7:02:577 hours, 2 minutes, 57 secondsat the top of my mind right now. So, I'm going to leave it like this. I think it's not too big of an issue. It's a small hydration error, but you can see
7:03:047 hours, 3 minutes, 4 secondshow it looks, right? And if you click on something simpler like page, you can see that it will display the entire thing.
7:03:107 hours, 3 minutes, 10 secondsBut for something complicated, it will just show you the first and the last segment. So you can decide if you want
7:03:177 hours, 3 minutes, 17 secondsto show that for three segments or for four segments, right? Whatever makes sense for you. Amazing, amazing job. So
7:03:267 hours, 3 minutes, 26 secondsI think this was uh a much harder chapter, but I think it was worthwhile.
7:03:317 hours, 3 minutes, 31 secondsWe have an actual uh file explorer now that we can copy files from and explore everything that was created. We can scroll. Definitely an impressive result.
7:03:437 hours, 3 minutes, 43 secondsSo now let's go ahead and mark these things as completed and let's open a new branch. So 13 code
7:03:527 hours, 3 minutes, 52 secondsview. Let me collapse this. Open the source control. Opening a new branch here.
7:03:597 hours, 3 minutes, 59 seconds13 code view. Just to double check that's the chapter's name. Once we are on the new chapter, I'm going to stage
7:04:067 hours, 4 minutes, 6 secondsall of my changes. 13 code view. I'm going to commit and I'm going to publish this branch. As always, a reminder,
7:04:157 hours, 4 minutes, 15 secondsthere's a free code rabbit extension you can use to review your files. And now, let's go ahead and let's see
7:04:247 hours, 4 minutes, 24 secondsour pull request. So, I'm going to open this new pull request here. And let's review our summary.
7:04:337 hours, 4 minutes, 33 secondsAnd here we have the code rabbit summary. We introduced a code viewer with syntax highlighting and GitHub dark theme. We added a file explorer with
7:04:427 hours, 4 minutes, 42 secondsthree view breadcrumb navigation and a copy to clipboard functionality for code files. We enhanced the project view with
7:04:507 hours, 4 minutes, 50 secondstabbed navigation allowing users to switch between a live demo and the code view of project fragments. That is
7:04:577 hours, 4 minutes, 57 secondsexactly what we did in this chapter. As always, a walkthrough of file by file and of course a sequence diagram. So in
7:05:057 hours, 5 minutes, 5 secondshere we have this very complicated component which we build the file explorer which renders the tree view and then finally the code view. So in here
7:05:147 hours, 5 minutes, 14 secondsyou can see it generated the entire sequence diagram for that component along with the prisjs code highlighting.
7:05:227 hours, 5 minutes, 22 secondsSo very very good. We have a few comments here. Um this one is a good comment. It's basically telling us to
7:05:307 hours, 5 minutes, 30 secondsalso add an actual type of check. The reason it's telling us this because uh
7:05:377 hours, 5 minutes, 37 secondsit could be anything but then at the same time we know that it's always going to be an object. It's going to be a type
7:05:437 hours, 5 minutes, 43 secondsof JSON, right? So, I think this is a little bit redundant.
7:05:497 hours, 5 minutes, 49 secondsAdding it would not hurt, but I think it's okay the way it is right now. I'm not sure about this change. I think uh
7:05:587 hours, 5 minutes, 58 secondsit works just fine like this. And in here, I accidentally added two semicolons in the file explorer props.
7:06:067 hours, 6 minutes, 6 secondsSo, yes, of course, we can remove that.
7:06:077 hours, 6 minutes, 7 secondsI'm going to do that in the next chapter.
7:06:107 hours, 6 minutes, 10 secondsAnd there we go. Let's merge this pull request and let's go back here and let's go ahead and go back to main and let's synchronize our changes again.
7:06:227 hours, 6 minutes, 22 secondsAnd once you've done that, go inside of source control graph and just confirm that you merged the 13 successfully.
7:06:307 hours, 6 minutes, 30 secondsAmazing, amazing job. That marks the end of this chapter and see you in the next one.
Chapter 15: 14 Home Page
7:06:387 hours, 6 minutes, 38 secondsIn this chapter, we're going to develop the homepage. This will include creating the home layout, the homepage component
7:06:457 hours, 6 minutes, 45 secondswhich consists of project form and project list. Let's go ahead and let's start our app. Running npm rundev in one
7:06:537 hours, 6 minutes, 53 secondsterminal and starting in justestdev server in the other. And now let's go ahead and make sure we are on the main
7:07:017 hours, 7 minutes, 1 secondbranch. And you can click on synchronize changes just to make sure everything is up to date inside of your source
7:07:087 hours, 7 minutes, 8 secondscontrol. The last merge should be number 13.
7:07:127 hours, 7 minutes, 12 secondsNow, let's go ahead and let's fix one thing that's been bothering me. So, right now, uh I'm loading my previous
7:07:197 hours, 7 minutes, 19 secondsproject here. You can see that when the project loads, no fragment is selected.
7:07:257 hours, 7 minutes, 25 secondsThis is because in the messages container here, we commented out this use effect which selects the last fragment because it was causing
7:07:337 hours, 7 minutes, 33 secondsproblems. You can see that when I enable this, then it works. This is selected.
7:07:387 hours, 7 minutes, 38 secondsBut it's annoying because if I want to select this one and look at it, you can see that it automatically moves it after 5 seconds. Why after 5 seconds? Because
7:07:487 hours, 7 minutes, 48 secondswe refetch every 5 seconds. So this use effect can obviously be improved. So let's go ahead and make it a little bit
7:07:567 hours, 7 minutes, 56 secondssimpler. I'm going to go ahead and remove everything in here for now. And I'm going to start by adding a new ref right below the bottom ref. add last
7:08:067 hours, 8 minutes, 6 secondsassistant message ID ref which can be a simple use ref of a type of string.
7:08:137 hours, 8 minutes, 13 secondsAnd now inside of this use effect here let's go ahead and find the last assistant message. So last assistant
7:08:207 hours, 8 minutes, 20 secondsmessage we'll use messages find last and then simply find the message whose role is assistant. So messages.findlast find
7:08:297 hours, 8 minutes, 29 secondsthe last API is that we are using and then in here we're going to open an if clause
7:08:387 hours, 8 minutes, 38 secondsand what we are going to do is we're going to check if last assistant message fragment exists and if last assistant
7:08:467 hours, 8 minutes, 46 secondsmessage do ID is not identical to last assistant message id refer.
7:08:547 hours, 8 minutes, 54 secondsLet me just remove this. So if that's the case only then are we going to call set active fragment and do last
7:09:017 hours, 9 minutes, 1 secondassistant message. fragment and then we have to update last assistant message id
7:09:077 hours, 9 minutes, 7 secondsref.curren to be last assistant message id and this way we won't have any
7:09:167 hours, 9 minutes, 16 secondsunnecessary updates and we can remove this to-do here. So let's go ahead and do a refresh again and there we go. So you can see how it selects the fragment
7:09:247 hours, 9 minutes, 24 secondsthe last assistant message it it can find. But if I manually select this one let's wait for 5 seconds and you can see
7:09:317 hours, 9 minutes, 31 secondsthat nothing will change it right simply because this last assistant message ID
7:09:387 hours, 9 minutes, 38 secondsref is stored. So the only time that we are going to override users selection is
7:09:457 hours, 9 minutes, 45 secondsif an actual new message arrives. I think that's an okay UX. If you want to, you can uh improve this logic even further by creating two separate states.
7:09:577 hours, 9 minutes, 57 secondsOne for the automatic selection of the active fragment and one for the user selection of the active fragment. And
7:10:047 hours, 10 minutes, 4 secondsthen you can overrule one over the other if that's something you prefer. Because you can see now nothing can change the fact that this fragment is active unless I do build a yellow landing page.
7:10:187 hours, 10 minutes, 18 secondsSo if I add this still nothing is happening. I'm still uh having this
7:10:247 hours, 10 minutes, 24 secondsolder fragment as selected. Only after uh this finally responds with some new
7:10:327 hours, 10 minutes, 32 secondscontent will the new fragment be automatically selected because it is constantly looking for the last new
7:10:417 hours, 10 minutes, 41 secondsassistant message. So, our message wasn't able to trigger that use effect.
7:10:487 hours, 10 minutes, 48 secondsAnd if it simply calls the refetch request and it receives the exact same messages, we compare the last message ID
7:10:577 hours, 10 minutes, 57 secondswith our ref ID. And if it's the same, no, we don't change anything. And there we go. You can see how it works. I
7:11:047 hours, 11 minutes, 4 secondsdidn't change anything. It just generated a new landing page and it selected that fragment. That is the exact behavior we hoped for. Amazing.
7:11:147 hours, 11 minutes, 14 secondsSo, what I want to do now, which you know, you can choose if you want to or not. I just want to remove this handle from here. I don't like it. So, this is
7:11:237 hours, 11 minutes, 23 secondswhat I'm going to do. I'm going to open both the project view and I'm going to open the file explorer. And the only
7:11:307 hours, 11 minutes, 30 secondsthing I want to do in the file explorer is copy the class name from the resize handle. And then I'm going to go inside of the project view. I'm going to find
7:11:387 hours, 11 minutes, 38 secondsthe resizable handle here. remove the prop with handle and just paste the class name here. And there we go. Now I
7:11:457 hours, 11 minutes, 45 secondshave this type of resizable. And there seems to be some kind of problem. You can see when when you have two resizables active, you can only move one
7:11:547 hours, 11 minutes, 54 secondsof them, right? So you can't move this one. I'm going to explore at the end of the tutorial if that's something we can fix. There might be some solution, but
7:12:037 hours, 12 minutes, 3 secondsyou know, it's it's not too big of an issue. Great. So now let's go ahead and let's actually uh build the homepage.
7:12:117 hours, 12 minutes, 11 secondsSo we're going to go and do the following. Inside of your source app folder, create a new folder home. This
7:12:197 hours, 12 minutes, 19 secondsis a route group. This will not be a part of the URL, but it can hold things like layouts. So let's go ahead and
7:12:287 hours, 12 minutes, 28 secondsbuild a simple home layout here. The first thing we have to do in a layout is create props which hold the children.
7:12:357 hours, 12 minutes, 35 secondsAnd then we have to do a default export like this. And in here we assign the props. And we extract the children. And
7:12:447 hours, 12 minutes, 44 secondsthen inside of here, let's add instead of div, let's add main.
7:12:497 hours, 12 minutes, 49 secondsAnd let's give the main a class name of flex. Flex column, minimum height of screen, and the maximum height of
7:12:587 hours, 12 minutes, 58 secondsscreen. Like so. And in here, let's add a div with a class name flex one flex
7:13:067 hours, 13 minutes, 6 secondsflex column ex four and padding bottom of four. And inside render the children.
7:13:157 hours, 13 minutes, 15 secondsAnd then what I want you to do once you have this layout tsx it is important that this is called layout. This is a
7:13:227 hours, 13 minutes, 22 secondsreserved file name just like a page, right? So, it's important that you use layout and it's important that you do a
7:13:307 hours, 13 minutes, 30 secondsdefault export here. What I want you to do now is I want you to uh move the page
7:13:367 hours, 13 minutes, 36 secondstsx from the app folder, the global one, and drag it inside of the home folder.
7:13:427 hours, 13 minutes, 42 secondsSo, move it inside. And sometimes this can trigger some unsaved files. So, if you get any unsaved files here, you can
7:13:507 hours, 13 minutes, 50 secondsjust close them. And if it asks you if you want to save it or not, you can just click yes. If nothing happened, you can
7:13:567 hours, 13 minutes, 56 secondsjust continue. What basically happens if that does happen to you is cache, right?
7:14:037 hours, 14 minutes, 3 secondsThe hot reload is currently active. So sometimes the cache inside of this folder gets confused when you move a page that's currently uh active. So what
7:14:117 hours, 14 minutes, 11 secondsdid we do now? Well, if you go and click back to the dashboard, nothing changes, right? That's because what we just did
7:14:207 hours, 14 minutes, 20 secondsis we created a layout for all of our uh homebased pages. Right now, this doesn't make too much sense because we only have
7:14:287 hours, 14 minutes, 28 secondsone page, the homepage, right? But later in here, we're also going to have pricing and we're also going to have
7:14:357 hours, 14 minutes, 35 secondslogin forms. So that's why instead of copying this code every single time into each page, we're just going to uh create
7:14:447 hours, 14 minutes, 44 secondsa nice little uh reusable layout like so. Now in here, let's go ahead and let's do the following. I want to create
7:14:527 hours, 14 minutes, 52 secondsa uh self-closing div like so. and give it a class name of absolute inset zero
7:15:017 hours, 15 minutes, 1 secondminus Z 10 height of full width of full
7:15:067 hours, 15 minutes, 6 secondsbg background on dark use bg radial-ashgradient
7:15:137 hours, 15 minutes, 13 secondslike so and then inside of here write 39 9 so 3 93
7:15:227 hours, 15 minutes, 22 secondsE48_1 pixel comma transparent
7:15:297 hours, 15 minutes, 29 secondsand then underscore one pixel. So this is all one class name dark background
7:15:367 hours, 15 minutes, 36 secondsradial gradient transparent right. So all of this is one class name. What's important is that when you hover over this if you have the tailwind extension
7:15:457 hours, 15 minutes, 45 secondsyou should see the underlying CSS. If you accidentally add space somewhere that breaks the class. You can see how now it's not working. So just be
7:15:537 hours, 15 minutes, 53 secondscareful. Don't add any spaces. I mean, this is not important. This is just for a cool effect you're going to see in a second. Uh, and now what I want you to
7:16:017 hours, 16 minutes, 1 seconddo is I want you to copy this again, paste it, but without the dark prefix here. And you're going to change the
7:16:097 hours, 16 minutes, 9 secondscolor of this to not be this one, but instead be da d2.
7:16:167 hours, 16 minutes, 16 secondsAnd this can still be transparent. And then just add another one. background
7:16:227 hours, 16 minutes, 22 secondsdash size 16 pixels underscore 16 pixels. And now you will see a bunch of
7:16:307 hours, 16 minutes, 30 secondsdots all over your page. So now let's go ahead and let's actually develop this.
7:16:377 hours, 16 minutes, 37 secondsSo I'm going to go back inside of my homepage right here and we're going to do the following. I'm going to remove
7:16:457 hours, 16 minutes, 45 secondsall of these things here because we're not going to need any of them.
7:16:517 hours, 16 minutes, 51 secondsI'm going to well I'm just going to clean the entire thing. I don't even need use client here. I'm going to open
7:16:587 hours, 16 minutes, 58 secondsa div and I will add a class name here flex flex column maximum width of five
7:17:057 hours, 17 minutes, 5 secondsexcel maximum width of auto and width full. I will then add a section with a
7:17:137 hours, 17 minutes, 13 secondsclass name space Y6 py
7:17:197 hours, 17 minutes, 19 secondsof 16 pixels. My apologies 16 VH to Excel will be py 48.
7:17:297 hours, 17 minutes, 29 secondsNow inside of here I will add a div with a class name flex flex column and items center.
7:17:397 hours, 17 minutes, 39 secondsIn here, we're going to render an image from next image with the source of logo
7:17:457 hours, 17 minutes, 45 secondsSVG out of vibe width of 50, height of 50, class name of hidden MD block.
7:17:587 hours, 17 minutes, 58 secondsOutside of this div encapsulating that image, I will add an H1 build something with vibe or the name of your project.
7:18:077 hours, 18 minutes, 7 secondsAnd we're going to put this heading give this heading class name text to Excel medium text 5 Excel font bold and text
7:18:187 hours, 18 minutes, 18 secondscenter. And you should already be seeing something here. Now below this heading add a paragraph create apps and websites
7:18:287 hours, 18 minutes, 28 secondsby chatting with AI and give this a class name of text large medium text
7:18:367 hours, 18 minutes, 36 secondsextra large text muted foreground and text center. There we go.
7:18:457 hours, 18 minutes, 45 secondsAnd now below that add a div with a class name maximum width of 3 Excel MX
7:18:537 hours, 18 minutes, 53 secondsauto and width full and nothing will appear now. That's because we have to create a new component called project
7:19:037 hours, 19 minutes, 3 secondsform. Now the cool thing about project form is that you already built this. You just don't know it. So what we're going
7:19:127 hours, 19 minutes, 12 secondsto do is we're going to reuse one component that we already have and we're going to go inside of modules projects
7:19:207 hours, 19 minutes, 20 secondsUI components and in here we have the message form. Now technically we could modify this message form with a prop.
7:19:297 hours, 19 minutes, 29 secondsYou know I could just pass a prop here like is homepage is landing page and then we could modify the CSS. But honestly, I would rather keep components
7:19:377 hours, 19 minutes, 37 secondsseparate than creating this magical components which can be used a million times, right? I'm okay with copying my code if it's for one, two, three
7:19:467 hours, 19 minutes, 46 secondsinstances. I'm I would rather do that than creating this ambiguous abstract code that's impossible to keep track of.
7:19:537 hours, 19 minutes, 53 secondsRight? So, this is what I'm going to do instead. I will copy that message form and I'm going to go ahead inside of modules and I will create home module.
7:20:047 hours, 20 minutes, 4 secondsAnd inside of here UI and then components and then in here I will create project form.tsx.
7:20:127 hours, 20 minutes, 12 secondsAnd then I will copy everything inside of the projects UI components message form and I will paste it here like this.
7:20:207 hours, 20 minutes, 20 secondsAnd then I will remove the props because we don't need them. And this will now be called project form. There will be no
7:20:277 hours, 20 minutes, 27 secondsprops for this. the value will still be the same but it will not be creating a message. It will be creating the
7:20:357 hours, 20 minutes, 35 secondsproject. So this will be called create project.
7:20:397 hours, 20 minutes, 39 secondsSo let's go ahead and see what we have to do. We will reset the form. Uh actually we don't have to reset the form and I'll tell you why. Because on
7:20:487 hours, 20 minutes, 48 secondssuccess we're going to uh reinvalidate anyway. So let's go ahead and do this.
7:20:537 hours, 20 minutes, 53 secondsAfter we reset the form, the only thing we should actually oh I'm sorry after we successfully create a project, the only thing we should do is we should call
7:21:017 hours, 21 minutes, 1 secondPRPC.pro and we should just refetch get many.
7:21:067 hours, 21 minutes, 6 secondsThat's the only thing that should happen and then also we should invalidate the usage status. So we can leave this to do and the same thing for this. But also
7:21:157 hours, 21 minutes, 15 secondsone more thing that should happen here is that we add router use router from next navigation. Let me just move this here.
7:21:247 hours, 21 minutes, 24 secondsWhen you successfully do this, let's do router.push and we push to the newly created project. So that's going to be forward
7:21:337 hours, 21 minutes, 33 secondsslash projects data id. As always, we have this data because in the projects create procedure here
7:21:417 hours, 21 minutes, 41 secondswhen we create the new project and then we invoke a background job, we return that new created project. So we have access to it right here. Great. So on
7:21:517 hours, 21 minutes, 51 secondssubmit we'll be calling create project and we don't need the project ID here at all. For the is pending we will have
7:21:597 hours, 21 minutes, 59 secondscreate project is pending like so we can remove the show usage uh from here entirely. We don't need it on the
7:22:087 hours, 22 minutes, 8 secondshomepage. So you can remove this show usage here like so. Uh what would you like to build can stay the same to
7:22:177 hours, 22 minutes, 17 secondssubmit? to submit. Honestly, I think everything else here works just fine.
7:22:237 hours, 22 minutes, 23 secondsSo, yes, just a slight modification here. And now, let's go ahead and use it inside of our app homepage.tsx.
7:22:337 hours, 22 minutes, 33 secondsLet's import project form from modules UI components project form. And I think we also need to add use client here
7:22:437 hours, 22 minutes, 43 secondsbecause it's imported in a server component. So, it wouldn't work. And there we go. This is how it's going to look like
7:22:507 hours, 22 minutes, 50 secondsand you can already try it. So, build a landing page. I like to use this example because I think it's super simple and works almost every time. And there we
7:22:597 hours, 22 minutes, 59 secondsgo. You can see what happens. So, from the landing page, we create a new project with build a landing page initial message. Perfect. So, if you want to, you can wait for the result.
7:23:087 hours, 23 minutes, 8 secondsUh, I know it's very fun to always see the results. So I I completely understand if you want to, but I'm going to go back to the project form. And what
7:23:167 hours, 23 minutes, 16 secondsI'm going to do now is I'm going to show you how you can create some predefined prompts for the users so that they can easily click on them here. So it's so
7:23:257 hours, 23 minutes, 25 secondsthat they can see the results faster. So this is what we're going to do. We're going to do this inside of the project form. So in here,
7:23:337 hours, 23 minutes, 33 secondsgo outside of this native form elements and create a div with a class name. flex wrap justify
7:23:437 hours, 23 minutes, 43 secondscenter gap 2 hidden MD plex and a maximum width of 3XL.
7:23:517 hours, 23 minutes, 51 secondsAnd now in here what you should do is you should create something called project templates.
7:23:597 hours, 23 minutes, 59 secondsSo you can go inside of the public assets folder which you can see the link for on the screen or you can use the link in the description and in here you
7:24:077 hours, 24 minutes, 7 secondscan find uh constants.ts. TS. And in here, I just created a bunch of project templates for you. Uh, and you're going
7:24:157 hours, 24 minutes, 15 secondsto have to, you know, test each of these out depending on the model you will use and what works for you and what doesn't because it's a good idea to showcase
7:24:237 hours, 24 minutes, 23 secondsyour project templates on something that you know will always work with your AI model. Right? So, I'm going to put this inside of home. I will create new
7:24:317 hours, 24 minutes, 31 secondsconstants. DS and I will paste that here. So basically something like build a Spotify clone, build an Airbnb clone,
7:24:387 hours, 24 minutes, 38 secondsbuild a store page, YouTube clone, file manager. And I'm just using very descriptive prompts here because it will
7:24:467 hours, 24 minutes, 46 secondswork better if you give it a good description. But the cool thing is that you know you have full freedom to improve the prompt in any way. In here
7:24:557 hours, 24 minutes, 55 secondswhen I select build a Netflix clone, the full prompt will be build a Netflix style homepage with a hero banner. uh use a nice dark mode compatible gradient
7:25:047 hours, 25 minutes, 4 secondshere. Movie sections, responsive card, and a model for viewing details using mock data in local state, use dark mode, right? So, it's a very descriptive uh
7:25:137 hours, 25 minutes, 13 secondsprompt. But depending on what model you use, you might be able to do it with just build a Netflix clone, right? It
7:25:217 hours, 25 minutes, 21 secondswill just depend on the prompt that you're using and the model that you're using. For example, Claude Sonet understands uh your instructions very
7:25:307 hours, 25 minutes, 30 secondsvery well. But with OpenAI, I sometimes have to tell it, you know, if you're using dark mode, make sure you use Next
7:25:387 hours, 25 minutes, 38 secondsthemes because you have Shhatzen installed, right? I have to tell it uh a more in-depth about what's going on. So,
7:25:477 hours, 25 minutes, 47 secondsmake sure you have this project templates. And now what you're going to do is you're going to iterate over them.
7:25:527 hours, 25 minutes, 52 secondsSo, project templates, which I've just imported from dot dot /constants here,
7:25:597 hours, 25 minutes, 59 secondsdom. And for each template, I'm going to return a button component,
7:26:087 hours, 26 minutes, 8 secondsI'm going to give the button a key of template dot title. And then I'm going to add some additional attributes to the
7:26:177 hours, 26 minutes, 17 secondsbuttons. So variant of each will be outline. Size will be small. Class name
7:26:257 hours, 26 minutes, 25 secondswill be background white and dark background sidebar.
7:26:307 hours, 26 minutes, 30 secondsOn click here on select will be called which we don't have yet. So let's just leave it as empty. And then let's put template emoji. And let's put template title.
7:26:427 hours, 26 minutes, 42 secondsAnd let's see that now. And there we go.
7:26:447 hours, 26 minutes, 44 secondsSo you can see that now beneath this big input bar uh you can select any of
7:26:507 hours, 26 minutes, 50 secondsthese. So let's go ahead now uh and just properly space these things out. So what I want
7:26:587 hours, 26 minutes, 58 secondsto do is I want to wrap my form inside of a section with a class name space Y
7:27:077 hours, 27 minutes, 7 secondssix like so. and just encapsulate all the way to here like that. And then you
7:27:147 hours, 27 minutes, 14 secondscan indent the entire thing and now you have a nice space in between. And now we have to create the
7:27:217 hours, 27 minutes, 21 secondsability to actually select this. So for this I'm going to add const on select
7:27:297 hours, 27 minutes, 29 secondscontent string form set value content or whatever you
7:27:357 hours, 27 minutes, 35 secondsuse. Let's see. So we use uh value is the one we use. So set value to be
7:27:427 hours, 27 minutes, 42 secondscontent or you know you can just put value here. A lot of value. Uh and what's important you do is you enable
7:27:517 hours, 27 minutes, 51 secondsall three should to true should validate to true and should touch to true. This will basically simulate it to be in the
7:27:597 hours, 27 minutes, 59 secondssame state as if the user actually typed this. So now what you have to do is you have to add the on select to the
7:28:067 hours, 28 minutes, 6 secondsbuttons. So call on select and pass in the template.prompt like so. So now when you click on build
7:28:157 hours, 28 minutes, 15 secondsan admin dashboard there we go you can go ahead and run this. So I suggest that you try running this and also keep in
7:28:247 hours, 28 minutes, 24 secondsmind some of these are larger tasks so they might actually time out right. So be mindful of that. The good thing about
7:28:337 hours, 28 minutes, 33 secondsuh ingest is that if it notices a rate limit, it won't retry immediately. It will it will retry with exponentially
7:28:417 hours, 28 minutes, 41 secondslonger pauses between each retry, which if you're using Open AI is perfect because Open AI has reasonable timeouts.
7:28:497 hours, 28 minutes, 49 secondsSo when you hit a limit in Open AI, they punish you with like 2 seconds of waiting time. So inest will wait for
7:28:577 hours, 28 minutes, 57 secondseven longer than that. And if it happens again, it will wait for even longer. So you don't have to worry. Ingest and OP and I are quite a good combination. Uh
7:29:067 hours, 29 minutes, 6 secondsand you can see that with this longer prompt right where I told it, let me just see create an admin dashboard with stat cards, placeholder, all of those
7:29:157 hours, 29 minutes, 15 secondsthings, blah blah blah. And here it takes a bit of a longer time. You can see almost a minute. But as I said, you can speed these things up by using a
7:29:237 hours, 29 minutes, 23 secondsdifferent model. You can create a smoother prompt, right? A lot of things you can do. So let's just see this result. I'm very curious if it will work
7:29:317 hours, 29 minutes, 31 secondsor not. And there we go. So almost the exact same thing as we saw uh in the initial demo. Amazing. And you can see
7:29:407 hours, 29 minutes, 40 secondsthe code here. Very very good. So I would suggest that you, you know, try a couple of these and if some are
7:29:477 hours, 29 minutes, 47 secondsobviously failing, well, you can try and, you know, fix them in the prompt or you can simply replace them with something simpler because if you're
7:29:557 hours, 29 minutes, 55 secondsactually building this as a business, it's a good idea that you, you know, allow the user to select something that will 100% work, right? You don't want to
7:30:047 hours, 30 minutes, 4 secondsgive them something that might work or might fail, right? Perfect. And I'm just super interested. Let me just go back
7:30:127 hours, 30 minutes, 12 secondshere. I want to change this to dark mode. I want to see how this looks like.
7:30:167 hours, 30 minutes, 16 secondsLooks pretty good. Great. Uh but I actually prefer working in light mode.
7:30:207 hours, 30 minutes, 20 secondsSo let's go ahead now and let's develop the bottom part which is the project list. So so far we created the project
7:30:297 hours, 30 minutes, 29 secondsform and the layout. Now let's create the project list. In order to do that, we have to go back to our page dsx where
7:30:377 hours, 30 minutes, 37 secondswe render the project form and we have to render the project list outside of
7:30:437 hours, 30 minutes, 43 secondsthis section. So project projects list like this.
7:30:507 hours, 30 minutes, 50 secondsAnd then let's go inside of our home modules here. So home UI components projects list.tsx.
7:30:597 hours, 30 minutes, 59 secondsLet's mark this as use client. And let's import everything we need here. So link
7:31:067 hours, 31 minutes, 6 secondsfrom next link and image from next image format distance to now from date FNS
7:31:167 hours, 31 minutes, 16 secondsuse query from tanstack react query and use tRPC from TRPC client and button
7:31:247 hours, 31 minutes, 24 secondsfrom components UI button. Let's export cons projects list here and let's start by defining the RPC.
7:31:347 hours, 31 minutes, 34 secondsThen let's define data projects to be use query
7:31:397 hours, 31 minutes, 39 secondsDRPC projects get many query options like that and then in here let's return
7:31:497 hours, 31 minutes, 49 secondsa div with a class name full width background color of white dark
7:31:557 hours, 31 minutes, 55 secondsbackground color sidebar rounded extra large adding eight border flex X flex
7:32:057 hours, 32 minutes, 5 secondscolumn gap Y 6 SM gap Y4.
7:32:107 hours, 32 minutes, 10 secondsThen let's add an H2 element which will just say previous vibes or saved vibes.
7:32:197 hours, 32 minutes, 19 secondsI thought it would be fun to call old projects vibes because the project name is vibe, right? You can of course just
7:32:267 hours, 32 minutes, 26 secondssay old project, saved projects, whatever you want. So text to Excel and font semi bold. Later this will say Antonio's vibes or whoever is logged in.
7:32:367 hours, 32 minutes, 36 secondsBut since we don't have out yet, we can't display that just yet. So now let's just import the projects list simply so we can start seeing the
7:32:447 hours, 32 minutes, 44 secondsprogress. So right here at the bottom you should see saved vibes right here.
7:32:527 hours, 32 minutes, 52 secondsIt should look like this.
7:32:557 hours, 32 minutes, 55 secondsSo now let's go ahead below this and let's create a div with a class name of
7:33:017 hours, 33 minutes, 1 secondgrid grid columns 1 SM grid columns three and gap of six and then in here
7:33:107 hours, 33 minutes, 10 secondscheck if projects.length this should be a question mark so if projects.length length is equal to zero.
7:33:187 hours, 33 minutes, 18 secondsIn that case, let's display a div with a class name all span full and text
7:33:257 hours, 33 minutes, 25 secondscenter. And inside a paragraph, no projects found and a class name text small and text muted foreground.
7:33:367 hours, 33 minutes, 36 secondsOtherwise, let's do projects do map get the individual project here and then return a button.
7:33:477 hours, 33 minutes, 47 secondsGive this button a key of project ID, a variant of outline, and a class name
7:33:557 hours, 33 minutes, 55 secondsfont normal, height auto, justify start, full width,
7:34:027 hours, 34 minutes, 2 secondstext start, and the padding of four, and give it an as child prop. Then go ahead
7:34:087 hours, 34 minutes, 8 secondsand add a link here with a dynamic href forward slash projects project.
7:34:167 hours, 34 minutes, 16 secondsID and then inside of here create a div with a class name flex item center and
7:34:267 hours, 34 minutes, 26 secondsgap x of four. Then add an image here with a source of logo SVG out of vibe
7:34:357 hours, 34 minutes, 35 secondswidth of 32 height of 32 and the class name object contain. Below the image,
7:34:437 hours, 34 minutes, 43 secondsadd a new div with a class name flex and flex column.
7:34:507 hours, 34 minutes, 50 secondsInside of that div they have an H3 element with project.name name inside
7:34:587 hours, 34 minutes, 58 secondsand give the H3 element a class name of truncate and font medium and below it a
7:35:057 hours, 35 minutes, 5 secondsparagraph using format distance to now which we imported from date FNS
7:35:117 hours, 35 minutes, 11 secondsproject updated at add suffix true and give the paragraph a
7:35:197 hours, 35 minutes, 19 secondsclass name text small and text muted foreground and that is it. So in here now you can
7:35:277 hours, 35 minutes, 27 secondssee all of your previous vibes. So you can go ahead and visit them. And in here the source code is of course preserved.
7:35:367 hours, 35 minutes, 36 secondsGreat. So I believe that that marks the end of this chapter where the goal was to build uh a
7:35:437 hours, 35 minutes, 43 secondsthe goal was to build uh a landing page and we added the templates, we added the project list. We added the ability to
7:35:527 hours, 35 minutes, 52 secondsyou know look at this older projects and I think we did an amazing amazing job here. Obviously there are some things
7:36:007 hours, 36 minutesstill missing like the navbar but we will do that later when we add authentication.
7:36:057 hours, 36 minutes, 5 secondsSo, what I want to do in the next chapter is I actually want to improve the theme of this project because my original theme in the demo was some kind
7:36:137 hours, 36 minutes, 13 secondsof yellowish color. So, I'm going to show you how I modify the theme to make it look like that. And I'm super interested in the result of this. So,
7:36:207 hours, 36 minutes, 20 secondsI'm just going to wait. Uh hopefully it will work. If not, you know, it's just a lesson that these AI models are a bit
7:36:277 hours, 36 minutes, 27 secondsundeterministic. You can't really rely on them too much. But if you spend you know more than uh I built this app in a
7:36:367 hours, 36 minutes, 36 secondsspan of a month right so I couldn't really spend too much time learning proper prompt engineering but if you actually use this for your business you
7:36:457 hours, 36 minutes, 45 secondsare most certainly going to spend a lot of time on this and you will learn prompt engineering and you will learn how to improve the prompt and how to fix
7:36:547 hours, 36 minutes, 54 secondsthis little mistakes because in comparison to what you've just built an app failing is really not a big issue.
7:37:027 hours, 37 minutes, 2 secondsYou can learn how to speed it up. You can use a new model. Uh you can spend, you know, more credits. You can basically do a billion solutions, but
7:37:107 hours, 37 minutes, 10 secondsthe boilerplate is here and it's working.
7:37:157 hours, 37 minutes, 15 secondsSo, for example, you can see that I've gotten an error for this file manager.
7:37:197 hours, 37 minutes, 19 secondsYou might not get an error. Again, it's a very simple fix. It forgot to add use client to the top of the file. We can see that in the file grid, it was
7:37:277 hours, 37 minutes, 27 secondssupposed to add use client, but it didn't. right? Or it should have added it to the page. So perhaps this can be a very very easy fix. You know, you can
7:37:367 hours, 37 minutes, 36 secondsmaybe tell it inside of the prompt right here. You can somewhere add a rule that it must add use client.
7:37:487 hours, 37 minutes, 48 secondsHow about this? Let's add always add use client to the top of page tsx.
7:37:587 hours, 37 minutes, 58 secondsSo because we are not expecting this to make any API calls right. So then I can maybe remove this and I can just extend
7:38:067 hours, 38 minutes, 6 secondsit and any other relevant files which use browser
7:38:137 hours, 38 minutes, 13 secondsAPIs or react hooks use effect. Okay, I won't add too many tokens now. But for example, you can do things like this.
7:38:227 hours, 38 minutes, 22 secondsAnd I think that already uh this should work much much better. And I purposely want to retry it now just to see if that will fix. I'm trying to teach you that
7:38:307 hours, 38 minutes, 30 secondsyou know you don't have to use this prompt. You can make your own prompt.
7:38:347 hours, 38 minutes, 34 secondsLike I built this prompt and I have no idea about prompt engineering. I just started very simple and then I extended and I extended and I extended. Right? So
7:38:437 hours, 38 minutes, 43 secondsI just added this file safety rule to always add use client at the top of page.tsx simply because uh if it does that it
7:38:527 hours, 38 minutes, 52 secondsdoesn't have to worry about adding it to the other places. So let's see if this will fix the problem or maybe some new problem will arrive.
7:39:017 hours, 39 minutes, 1 secondAnd finally I managed to get it to work.
7:39:047 hours, 39 minutes, 4 secondsSo this was very funny. It actually failed uh again, right? It forgot to add use client again. But look at this. It
7:39:137 hours, 39 minutes, 13 secondsadded it but it didn't add it at the top of the file. So you can see how funny these AI models are. Sometimes you will lose your mind trying to tell it to do something right. So this is what I did.
7:39:257 hours, 39 minutes, 25 secondsI modified this always add use client to the top the first line of app page tsx.
7:39:317 hours, 39 minutes, 31 secondsSo this way it understood me and it did an interesting thing this time. You can see that it understood what I wanted now
7:39:407 hours, 39 minutes, 40 secondsand also it decided to create a whole new separate file where it created everything. I'm not sure why it needed
7:39:487 hours, 39 minutes, 48 secondsto do that. Um, but let's see what it created because I think that this is very interesting actually. Can I rename this? Okay, I can't do that. Oh, I can.
7:39:597 hours, 39 minutes, 59 secondsOne, two, three. Save. Oh, it works. I can rename. I can delete. Or can I? I can.
7:40:077 hours, 40 minutes, 7 secondsThis is actually super impressive. Can I delete entire folders? Looks like something's wrong with the models. Keep in mind that sometimes the problems
7:40:147 hours, 40 minutes, 14 secondsaren't in code, but the problems are in the iframe, right? Sometimes you might have to visit a live example. Wow, this
7:40:227 hours, 40 minutes, 22 secondsis actually a very very nice example of a file manager. But yeah, you can see that I had to struggle a bit with this, right? I got a very good result in the
7:40:317 hours, 40 minutes, 31 secondsend. But you know, the prompt can always be better. Again, I'm not a prompt engineer. I have no idea what I'm doing when it comes to prompt engineering. So,
7:40:397 hours, 40 minutes, 39 secondsspend some time learning that and you will get even better results than uh what I am in this tutorial. But I still managed to get extremely impressive results.
7:40:487 hours, 40 minutes, 48 secondsGreat. So I believe that that marks the end of this chapter now. So 14 homepage.
7:40:557 hours, 40 minutes, 55 secondsLet's go ahead and close everything here. And I will go and create a new branch. 14 homepage like so.
7:41:067 hours, 41 minutes, 6 secondsI'm going to stage all of my changes and I will create a commit. 14 homepage. I will commit and I will publish my branch.
7:41:147 hours, 41 minutes, 14 secondsPerfect. Now, let's go ahead and open a new pull request here.
7:41:217 hours, 41 minutes, 21 secondsAnd let's create a pull request.
7:41:247 hours, 41 minutes, 24 secondsAnd let's wait for the summary to arrive.
7:41:287 hours, 41 minutes, 28 secondsAnd here we have the summary. We introduced a new homepage layout with a visually enhanced background and responsive design. We added project
7:41:377 hours, 41 minutes, 37 secondscreation form with template section, validation, and keyboard shortcut support. Basically, a copy of our message form, right? We implemented
7:41:457 hours, 41 minutes, 45 secondsproject list view showing saved projects with quick navigation and relative timestamps. We provided a set of predefined project templates for faster
7:41:547 hours, 41 minutes, 54 secondsproject setup. We also fixed the fragment handling uh to prevent repeated state updates. Exactly. Uh and we also
7:42:027 hours, 42 minutes, 2 secondsupdated the resizable handle styling for a smoother and more interactive user experience. And it also detected our prompt change where we clarified the
7:42:117 hours, 42 minutes, 11 secondsrequirement for the use client directive in relevant files. Excellent. So in here as always we have a more in-depth walk
7:42:207 hours, 42 minutes, 20 secondsthrough. In here we have a sequence diagram explaining exactly how all of those things happen. And in here we have
7:42:277 hours, 42 minutes, 27 secondssome comments. So it suggests adding some loading states here in the project list. Uh we could very much do that. We could even leverage our pre-fetching and
7:42:367 hours, 42 minutes, 36 secondssuspense. We'll see how we're going to handle that later. And in here, it suggests also adding is dirty check. I'm
7:42:457 hours, 42 minutes, 45 secondsnot sure if we need that. I think I completed the project without it. So, I think we don't need this. So, I'm going
7:42:527 hours, 42 minutes, 52 secondsto merge this pull request here. And after I've done that, I'm going to go back inside of the main branch. And I'm going to click on synchronize changes.
7:43:027 hours, 43 minutes, 2 secondsAnd after that my graph here will update and it will show me that pull request 14 uh was just merged. Amazing amazing job.
7:43:117 hours, 43 minutes, 11 secondsI believe that marks the end of this chapter and see you in the next one.
Chapter 16: 15 Theme
7:43:187 hours, 43 minutes, 18 secondsIn this chapter we're going to learn how to change the theme of our project and I'm going to show you two ways you can
7:43:247 hours, 43 minutes, 24 secondsdo that. The first one is to simply visit my public assets folder or if you have access you can use the source code.
7:43:317 hours, 43 minutes, 31 secondsBasically just visit the link you can see on the screen or the link in the description and from in here you can find globals.css
7:43:407 hours, 43 minutes, 40 secondsand in here you can click copy or you can you know manually select and copy things and then go inside of your source
7:43:497 hours, 43 minutes, 49 secondsapp globals.css ensure that you are on your main branch and you can synchronize changes if you
7:43:567 hours, 43 minutes, 56 secondsaren't sure. Make sure that the last merge was 14 and simply replace the
7:44:017 hours, 44 minutes, 1 secondentire globals CSS file. So in here uh alongside changing all the colors, this
7:44:107 hours, 44 minutes, 10 secondswill update as well. This is basically what enables button to have a cursor pointer just in case you were wondering.
7:44:187 hours, 44 minutes, 18 secondsSo this is new and basically the colors were modified. And if you take a look at your app now, you will see that we have
7:44:257 hours, 44 minutes, 25 secondsthis new orange color. And if you go to the dashboard, you will see that it's more of a yellowish color. So this is
7:44:327 hours, 44 minutes, 32 secondsthe one that I like. But I want to show you exact place where I found this and
7:44:397 hours, 44 minutes, 39 secondshow you can create your own uh CSS theme. So for now, what I'm going to do is I'm just going to revert this simply
7:44:487 hours, 44 minutes, 48 secondsso it is the old global CSS. You don't have to, right? If you like the theme, you can copy from my uh GitHub assets,
7:44:577 hours, 44 minutes, 57 secondsyou can use it. But let me show you how I even found that theme. I basically used tweak cn.com. Again, you can use
7:45:057 hours, 45 minutes, 5 secondsthe link in the description or the link you can see on the screen. And in here, you can go inside of try it now. And you
7:45:127 hours, 45 minutes, 12 secondscan basically click here and find a bunch of different themes for UI. And I think it is super cool. And the one I
7:45:217 hours, 45 minutes, 21 secondsselected was cloth, right? And in here you can check how it looks in light mode and how it looks in dark mode. I think this is an amazing project. It has so
7:45:307 hours, 45 minutes, 30 secondsmany themes you can try from. So I purposely want to pick uh some theme that I haven't tried before. Let's see
7:45:407 hours, 45 minutes, 40 secondshow about I try this claymorphism. So the way you would do it is you would click on code and in here you can see
7:45:487 hours, 45 minutes, 48 secondsthat they are taking care of Tailwind versions right so I would take Tailwind version 4 and if you want to you can
7:45:557 hours, 45 minutes, 55 secondsjust use the CLI to do it but you can also just copy this and then you will have to replace your root
7:46:047 hours, 46 minutes, 4 secondsyour dark and theme inline. So let me show you how you would do that. So starting from the theme inline root and
7:46:137 hours, 46 minutes, 13 secondsdark, we select all of these and you can remove them. So this is how the global CSS looks now. And you just paste the
7:46:207 hours, 46 minutes, 20 secondsnew one here. And that changes the entire look of your app. As you can see, it looks very different now. Right? So
7:46:287 hours, 46 minutes, 28 secondsif you like this one, you can use this one. Right? I personally like the look of Claude. So I'm going to select Claude right here.
7:46:397 hours, 46 minutes, 39 secondscode uh code and I will click copy and then the same thing you basically select
7:46:467 hours, 46 minutes, 46 secondsthe root the dark and theme inline and you can delete it. So this is how it should look like and paste your new ones
7:46:547 hours, 46 minutes, 54 secondshere and then your app should look like this. I think this is a very very nice look. Uh and it has nice borders.
7:47:027 hours, 47 minutes, 2 secondsEverything just looks nice with this style. Again, I don't know how well this website will be maintained. I don't know
7:47:107 hours, 47 minutes, 10 secondsif this will be available, you know, 2 years from now. I hope it will because it's an amazing project. But then again, Shhatzen can update a lot and they will
7:47:187 hours, 47 minutes, 18 secondsprobably update the app accordingly to that. So, because of that, I am offering you my globals.css which you can copy from the source code
7:47:277 hours, 47 minutes, 27 secondsor the global assets and just paste the entire globals.css inside. And if you're
7:47:347 hours, 47 minutes, 34 secondsusing this my globals.css, you will notice that now buttons have cursor pointers. They look clickable, right?
7:47:427 hours, 47 minutes, 42 secondsEach of these buttons look clickable.
7:47:457 hours, 47 minutes, 45 secondsThat is because of this part. Let me show you this one. So if you don't have this u it will not come with uh tweak
7:47:537 hours, 47 minutes, 53 secondsCN. So it doesn't come with this. I added this myself in my global CSS. So basically this is a way to enable cursor
7:48:017 hours, 48 minutes, 1 secondpointer for all buttons which are not disabled. So you can add this little snippet if you want to and then your
7:48:087 hours, 48 minutes, 8 secondsbuttons will have proper uh cursor pointers. I just think that this looks way better than everything than anything
7:48:167 hours, 48 minutes, 16 secondselse. Right now let me try and go to one of my previous projects where I have a lot of fragments. You can see how now
7:48:247 hours, 48 minutes, 24 secondsfragments look clickable. Right? They have a proper cursor on them. Great. I am super satisfied with this one. So, I
7:48:317 hours, 48 minutes, 31 secondswill leave it at this. And while we are here, there is just one more thing I want to do. So, just go in any of your projects and let's go ahead and do the
7:48:407 hours, 48 minutes, 40 secondsfollowing. Select your theme. I would recommend using my global CSS and then later at the end of the project, you can
7:48:477 hours, 48 minutes, 47 secondsmodify it to whatever theme you like, but it will be easier for you to have the exact same result as me. So, that's why you can use my global.css. Keep in
7:48:567 hours, 48 minutes, 56 secondsmind that this is for let me show you next version for next 15.3.4 four,
7:49:047 hours, 49 minutes, 4 secondsright? So, if you are watching this two years from now, I have no idea if it will work for you and whatever is the latest version, but if you're using a
7:49:127 hours, 49 minutes, 12 secondssimilar version like me, uh or if you're using the exact version as me, it will work. Great. So, now let's go ahead and
7:49:217 hours, 49 minutes, 21 secondsdo one more thing. Let's go inside of our button inside of source components UI button. And in here, I want to add a new variant called uh terriiary.
7:49:337 hours, 49 minutes, 33 secondsI don't know how to pronounce this to be honest. I never I always mess this up.
7:49:387 hours, 49 minutes, 38 secondsBut basically, it's going to be background primary with 25% opacity. In dark mode is going to be BG primary
7:49:467 hours, 49 minutes, 46 secondsagain, but 30% opacity. Text will be primary. Shadow will be extra small.
7:49:537 hours, 49 minutes, 53 secondsHover will be BG primary 20.
7:49:577 hours, 49 minutes, 57 secondsBG primary 20. And on dark mode, hover will be BG uh let me just check
7:50:067 hours, 50 minutes, 6 secondson dark mode hover will be BG primary 25%. And now go inside of your project view here
7:50:147 hours, 50 minutes, 14 secondsand in these tabs find the upgrade button and give it a variant of this
7:50:227 hours, 50 minutes, 22 secondsnew one. However you pronounce this, right?
7:50:257 hours, 50 minutes, 25 secondsAnd then when you look at it, it will look like this. It's a kind of uh lighter version. And let me switch to
7:50:327 hours, 50 minutes, 32 secondsdark mode and still looks good. And of course, check your app in dark mode to see it looks fine. I very much like this
7:50:407 hours, 50 minutes, 40 secondslook of the app more than all the other themes, but you're of course free to choose your own. And I like how this becomes orange now when you resize your
7:50:507 hours, 50 minutes, 50 secondspanels. Uh great. So this was a very very easy chapter. So let's go ahead and just quickly merge this. So mark this as
7:50:597 hours, 50 minutes, 59 secondscomplete and 15 theme. I'm going to open a new branch here. Let me just see what did we all change. We'll change this to
7:51:077 hours, 51 minutes, 7 seconds30 this new variant here. And we changed our theme overall. So I'm going to
7:51:147 hours, 51 minutes, 14 secondscreate a new branch 15 theme. I'm going to add all of the
7:51:217 hours, 51 minutes, 21 secondschanges. 15 theme. I'm going to commit and I'm going to publish the branch. And there's really no need for any review
7:51:287 hours, 51 minutes, 28 secondsbecause this was a super simple uh change. So I'm going to immediately merge this pull request. So we speed things up.
7:51:377 hours, 51 minutes, 37 secondsThere we go.
7:51:407 hours, 51 minutes, 40 secondsSo just three simple changes and we can immediately merge it. We don't need to wait for any review this time. It's much
7:51:467 hours, 51 minutes, 46 secondssimpler. And after that's done, let's go inside of main and let's synchronize our changes. And then your last merge here
7:51:557 hours, 51 minutes, 55 secondsshould be 15 theme. Amazing amazing job and see you in the next chapter.
Chapter 17: 16 Authentication
7:52:047 hours, 52 minutes, 4 secondsIn this chapter, we're going to add authentication to our project. This will include creating a clerk account,
7:52:117 hours, 52 minutes, 11 secondssetting up clerk, creating the necessary components to display the authenticated state, creating protected TRPC
7:52:187 hours, 52 minutes, 18 secondsprocedures, and updating the Prisma schema. Let's start by creating the clerk account. You can use the link you
7:52:267 hours, 52 minutes, 26 secondscan see on the screen or the link in the description.
7:52:297 hours, 52 minutes, 29 secondsAnd once you get to the landing page, you might see something interesting in here where they mention the companies
7:52:367 hours, 52 minutes, 36 secondsthat use clerk. You can actually find injust the company that we are using for our background jaws. And you can confirm
7:52:447 hours, 52 minutes, 44 secondsthat yourself by going in their signin screen and searching for clerk inside of their network tab. And in here you can see that they are actually making
7:52:527 hours, 52 minutes, 52 secondsrequests for clerk. And I just think it is super interesting that such a uh great company uses the same authentication system that we are going to implement in our project right now.
7:53:037 hours, 53 minutes, 3 secondsSo let's go ahead and do that. Once you create your account here, you will be redirected to the dashboard. And in here
7:53:097 hours, 53 minutes, 9 secondsyou can click create application. I'm going to call this application Vibe. And I'm going to enable email and Google.
7:53:167 hours, 53 minutes, 16 secondsYou can of course enable all of these other providers if you want to. And I will click create application.
7:53:247 hours, 53 minutes, 24 secondsAfter we do that, we have to install the Nex.js clerk package. But just before you do that, ensure that you are on your
7:53:317 hours, 53 minutes, 31 secondsmain branch. Ensure that your last change was 15 theme and that you have synchronized all of your changes.
7:53:397 hours, 53 minutes, 39 secondsNow let's go ahead and let's run npm install lurk nex.js. And once it's been installed, I'm going to show you the
7:53:467 hours, 53 minutes, 46 secondsexact version that I will be using, 6.23.0.
7:53:527 hours, 53 minutes, 52 secondsNow that we have that, let's go ahead and add the environment variables to our environment file. So, I'm going to go ahead and add clerk and paste these two.
7:54:027 hours, 54 minutes, 2 secondsI like to wrap them in parenthesis, but I think this might depend on the system.
7:54:067 hours, 54 minutes, 6 secondsI think Windows might have problems with this. Uh, but I think maybe even not. I think all of these will work just fine.
7:54:157 hours, 54 minutes, 15 secondsBut yeah, in case you were wondering, I like to wrap them in parenthesis. They don't have to be in parenthesis. So, all of these could actually be without
7:54:237 hours, 54 minutes, 23 secondsparenthesis if that's something you prefer. I just feel like the syntax looks better with parenthesis.
7:54:317 hours, 54 minutes, 31 secondsUh, I keep saying parenthesis, I mean quotes. Sorry. Uh, okay. Now, let's create our middleware file. So, that's going to be inside of the source folder.
7:54:407 hours, 54 minutes, 40 secondsCreate middleware.d DS. Make sure to not misspell this. Middleware.ds.
7:54:467 hours, 54 minutes, 46 secondsIt's a reserved file name. We import clerk middleware from clerk next.js server and we export default clerk middleware middleware and we add a
7:54:547 hours, 54 minutes, 54 secondsmatcher. So, uh, we target all of these files here.
7:54:597 hours, 54 minutes, 59 secondsExcellent. So, now that we have this, let's go ahead and let's add the clerk provider to our layout. So, I'm just
7:55:067 hours, 55 minutes, 6 secondsgoing to import clerk provider to our root layout. So app folder layout. Let's go ahead and import
7:55:157 hours, 55 minutes, 15 secondsclerk provider from add clerk next.js and I'm going to wrap the entire application inside of a clerk provider.
7:55:267 hours, 55 minutes, 26 secondsYes, make sure you wrap your TRPC React provider inside of clerk provider as well. Like that. So let me just confirm
7:55:337 hours, 55 minutes, 33 secondsthat I use the correct package and just confirm that they've done this as well.
7:55:377 hours, 55 minutes, 37 secondsPerfect. And now let's go ahead and let's do npm rundev here. You don't need
7:55:457 hours, 55 minutes, 45 secondsto start your uh ingest right now because we will be doing some other things. So what I did is I went to the end here and I clicked on next steps.
7:55:547 hours, 55 minutes, 54 secondsUtilize your own pages for authentication. The account portal is the fastest way to add authentication.
7:55:597 hours, 55 minutes, 59 secondsSo let's click continue to the next GS guide. And the first thing we're going to do is we're going to add this uh sign in pages. So let's go ahead and do that.
7:56:117 hours, 56 minutes, 11 secondsI'm going to go inside of source app home here. And now I'm going to create a new folder called sign in. And then
7:56:187 hours, 56 minutes, 18 secondsinside I will create another folder which will use the catch all route sign in like this. It needs to be exactly
7:56:267 hours, 56 minutes, 26 secondslike this. And then page.dsx inside. And now let's go ahead and let's import sign
7:56:357 hours, 56 minutes, 35 secondsin from clerk nextjs and let's do a page
7:56:417 hours, 56 minutes, 41 secondsexport here with a div which will have a class name of flex flex column maximum
7:56:497 hours, 56 minutes, 49 secondswidth of 3 excel mx out and width pool and then let's add a section which
7:56:587 hours, 56 minutes, 58 secondsincludes a class name space Y 6 padding top of 16 VH and to Excel padding top of 48.
7:57:097 hours, 57 minutes, 9 secondsInside of this section, add a div with a class name flex flex column items
7:57:167 hours, 57 minutes, 16 secondscenter. And inside of here, render sign in. Whoops.
7:57:237 hours, 57 minutes, 23 secondsSign in like this. And once you've added this, you can go ahead and copy this and
7:57:317 hours, 57 minutes, 31 secondsyou can add sign up here like so. And then change this to be sign up as well.
7:57:387 hours, 57 minutes, 38 secondsGo inside of the sign up page and replace sign in import with sign up import.
7:57:457 hours, 57 minutes, 45 secondsAnd then let's go ahead and do the following.
7:57:497 hours, 57 minutes, 49 secondsSo we're going to set this to be public route. So, we are going to go inside of our middleware.ts.
7:58:017 hours, 58 minutes, 1 secondWe're going to import create route matcher right here. And we're going to define a constant is public route using create
7:58:107 hours, 58 minutes, 10 secondsroute matcher. And we are going to target sign in.
7:58:147 hours, 58 minutes, 14 secondsAnd then we're going to change this expert default clerk middleware to include an arrow function which checks
7:58:237 hours, 58 minutes, 23 secondsif the current request is not a public route and then it will redirect to the protect page.
7:58:327 hours, 58 minutes, 32 secondsAnd then what we have to do is we have to modify our environment variables.
7:58:397 hours, 58 minutes, 39 secondsSo let's go ahead and go inside of environment variables here and let's add that next public clerk signin URL is
7:58:477 hours, 58 minutes, 47 secondsforward slash signin and the fallbacks will be an empty forward slash. So next public clerk sign in fallback redirect
7:58:557 hours, 58 minutes, 55 secondsand next clerk sign up fall back redirect urls. Perfect. And now I think that already you should be able to see
7:59:037 hours, 59 minutes, 3 secondsthis. If you go to localhost 3000, I think you should immediately be redirected to this page, right? And if
7:59:107 hours, 59 minutes, 10 secondsyou try to visit any other page like try to visit some older project like projects 1 2 3, you get immediately
7:59:197 hours, 59 minutes, 19 secondsredirected back to the signin page. So all pages are now protected. We are of course going to slightly modify this by
7:59:277 hours, 59 minutes, 27 secondsgoing inside of the middleware and let's modify this array of public routes to also include a forward slash and I like
7:59:367 hours, 59 minutes, 36 secondsto use these types of quotes and we also uh actually yeah I think this uh
7:59:467 hours, 59 minutes, 46 secondswe also need forward slap API inest like this. So make sure you add this
7:59:537 hours, 59 minutes, 53 secondsotherwise background jobs will not be able to work. So we need to allow inest to be contacted.
8:00:018 hours, 1 secondGreat. So once you've done this you should now be able to visit the localhost 3000 page. There we go. You can see that now we can visit this but
8:00:098 hours, 9 secondswe still can't visit the individual project page. So uh and yes I am in dark mode. You might be in light mode. It
8:00:168 hours, 16 secondsdoesn't matter. So now let's go ahead and do the same thing that we did.
8:00:238 hours, 23 secondsLet me just go here. The same thing that we just did for sign in. We are now going to do to the sign up page. So we just did this. So we don't have to do
8:00:318 hours, 31 secondsit. I told you like already that you can just copy the sign in and do it right here. But what we need to do is we need
8:00:398 hours, 39 secondsto add sign up to the list of our public routes. So let's see. Did we do that or not? We didn't. So let's add it.
8:00:488 hours, 48 secondsThere we go. So sign up is now added to the list the same as sign in. And then we also need to add all the environment
8:00:558 hours, 55 secondsvariables here. So let's go inside of environment here. And let's just add some so next clerk next public clerk
8:01:038 hours, 1 minute, 3 secondssign up URL and the redirect URLs for sign up fallback and sign in fallback.
8:01:128 hours, 1 minute, 12 secondsAnd looks like these are duplicates. So yeah, I think you only need one of these and one of these. So yeah, you can do
8:01:208 hours, 1 minute, 20 secondsremove these two and just move these two. There we go. At least I think that they were duplicates, right? I think
8:01:278 hours, 1 minute, 27 secondsthey were. Uh, and now you should be able to go uh manually. You can just enter any other route. Try going to
8:01:368 hours, 1 minute, 36 secondsprojects one to three. You will be redirected. And if you click sign up, you should be taken on the same layout.
8:01:428 hours, 1 minute, 42 secondsAs you can see, it loads the sign up page. So now you can switch between the two. Perfect. Uh so now what I want to
8:01:508 hours, 1 minute, 50 secondsdo before we even log in, I want to go back to localhost 3000 here and I want to create a navbar.
8:02:008 hours, 2 minutesSo let's go inside of our home module.
8:02:048 hours, 2 minutes, 4 secondsSo that's going to be inside of source modules home UI components. And in here, go ahead and create navbar esx.
8:02:178 hours, 2 minutes, 17 secondsLet's go ahead and mark this as use client. And let's import link from next link. Let's import image from next
8:02:258 hours, 2 minutes, 25 secondsimage. Let's import all of these from clerk next.js. Signed in, signed out, sign in button, and sign up button. And
8:02:348 hours, 2 minutes, 34 secondsthen let's import button from components UI button. Let's export con navbar here and let's return a nav element.
8:02:458 hours, 2 minutes, 45 secondsGive this nav element a class name of padding 4, background color transparent,
8:02:518 hours, 2 minutes, 51 secondsfixed top zero, left zero, right zero, zindex of 50, transition all, duration
8:03:008 hours, 3 minutes200, border bottom, and border transparent.
8:03:068 hours, 3 minutes, 6 secondsInside of this div uh nav add a div with a class name of maximum width 5 xl mxal
8:03:148 hours, 3 minutes, 14 secondswidth full flex justify between and items center.
8:03:228 hours, 3 minutes, 22 secondsAdd a link inside with an href to a forward slash with a class name of flex
8:03:298 hours, 3 minutes, 29 secondsitem center and gap of two. And in here render an image with a source
8:03:378 hours, 3 minutes, 37 secondsof logo SVG out of vibe width of 24 and
8:03:438 hours, 3 minutes, 43 secondsheight of 24 as well. Add a span with a text vibe inside. Add a class name font semibold and text large like that.
8:03:578 hours, 3 minutes, 57 secondsAnd let's go ahead and let's go inside of our layout in app folder home layout
8:04:068 hours, 4 minutes, 6 secondsand let's render it just so we can start seeing some results. So navbar from modules home UI components navbar
8:04:158 hours, 4 minutes, 15 secondsand you should now see the vibe right here at the top and the fun fact it should also appear if you go into out
8:04:248 hours, 4 minutes, 24 secondsscreens as well as you can see. So now you can always use it to quickly go back. So now let's continue developing
8:04:318 hours, 4 minutes, 31 secondsthe navbar here. The first thing we're going to add after the link is we're going to add signed out state like this.
8:04:388 hours, 4 minutes, 38 secondsAnd then inside add a div with a class name flex gap 2 and add
8:04:488 hours, 4 minutes, 48 secondssign up button and add a normal button inside with a variant
8:04:558 hours, 4 minutes, 55 secondsof outline and a size of small and render sign up
8:05:028 hours, 5 minutes, 2 secondsinside. You can copy this and then change this to sign in button. This one
8:05:088 hours, 5 minutes, 8 secondswill say sign in and this one won't have the outline variant. It will just have a size small. So there we go. Now you have
8:05:178 hours, 5 minutes, 17 secondssign up and sign in buttons that you can access only if you're logged out of course. And
8:05:248 hours, 5 minutes, 24 secondsthen if you are signed in let's just add a paragraph to do user control.
8:05:328 hours, 5 minutes, 32 secondsAnd now we should be ready to log in. So I'm going to click sign in here and I'm going to continue with Google.
8:05:418 hours, 5 minutes, 41 secondsAnd once you confirm your Google login, you will be redirected back here. And you should be redirected on the landing
8:05:488 hours, 5 minutes, 48 secondspage with the text to-do user control like that. And you can see how now we can also load these apps. So, the reason
8:05:578 hours, 5 minutes, 57 secondsthey previously weren't even loading uh is because in the middleware, we didn't
8:06:038 hours, 6 minutes, 3 secondsallow the TRPC to be a public route. So, in my case, I'm not going to have any
8:06:108 hours, 6 minutes, 10 secondspublic TRPC procedures. But if you want to, you can also add TRPC here
8:06:178 hours, 6 minutes, 17 secondslike this. Let's just fix this TRPC. And then if you well, you can't log out now.
8:06:238 hours, 6 minutes, 23 secondsSo, let's just create a component to log out now. and then I will demonstrate this. It's completely fine to add this here because we are going to protect
8:06:308 hours, 6 minutes, 30 secondsTRPC routes based on their procedure type as well because right now if you wanted to have any public API routes
8:06:378 hours, 6 minutes, 37 secondsthey don't exist. We prevent any anything other than this to be a public route.
8:06:448 hours, 6 minutes, 44 secondsUh also you can create the exact opposite right you can call this is private route and then all of these will
8:06:518 hours, 6 minutes, 51 secondsbe private routes right and then you would just modify your logic you would remove the exclamation point and you would do this so if you have the
8:07:008 hours, 7 minutesmajority of the public routes and minority of the private ones you can just reverse the logic of the clerk middleware that's the cool thing about
8:07:078 hours, 7 minutes, 7 secondsthis it doesn't have to right we just called this is public route we could have called it anything and we could just put private routes inside and then
8:07:148 hours, 7 minutes, 14 secondsuse the reverse logic here, right? It's not like you need to add the public ones here. So, this is especially useful if
8:07:228 hours, 7 minutes, 22 secondsyou have a bunch of public routes, then just do the reverse logic, you know.
8:07:278 hours, 7 minutes, 27 secondsGreat. Now, let's add the user control uh component.
8:07:328 hours, 7 minutes, 32 secondsSo, I'm going to go ahead and close everything. I'm going to go inside of source components and I will create user
8:07:388 hours, 7 minutes, 38 secondscontrol. DSX. I will mark this as use client and I'm going to import user
8:07:458 hours, 7 minutes, 45 secondsbutton component. Here I will export const user control
8:07:538 hours, 7 minutes, 53 secondsand I will create an interface props here to show name which is an optional boolean
8:08:008 hours, 8 minutesand in here I will add the props and show name.
8:08:058 hours, 8 minutes, 5 secondsThen in here I'm going to return the user button component which is a self-closing tag.
8:08:108 hours, 8 minutes, 10 secondsAnd I will modify well first I will pass the show name prop and then I'm going to modify the appearance prop to include
8:08:188 hours, 8 minutes, 18 secondsthe elements and then get the user button box to be rounded medium with an exclamation point
8:08:268 hours, 8 minutes, 26 secondsat the end which basically means important user button avatar box rounded medium
8:08:348 hours, 8 minutes, 34 secondswith size eight eight and user button trigger rounded medium like so.
8:08:448 hours, 8 minutes, 44 secondsSo I don't have to type this any every time I have uh created it in a component like this. So now let's go back inside
8:08:528 hours, 8 minutes, 52 secondsof our navbar and inside of signed in render user control and pass in show
8:09:008 hours, 9 minutesname prop. So just make sure you have imported user control and there we go.
8:09:058 hours, 9 minutes, 5 secondsUh, and in here you now have this uh name which is barely visible because I'm in dark mode. Don't worry, we're going
8:09:128 hours, 9 minutes, 12 secondsto fix that as well. But from here you can access your entire account, your security, uh, all of those things and
8:09:208 hours, 9 minutes, 20 secondsyou can also sign out from here. And you can see that now since I enabled inside of my middleware TRPC, I can fetch them,
8:09:298 hours, 9 minutes, 29 secondsright? But if I remove this and refresh, I'm not able to fetch them because all the network requests for TRPC
8:09:388 hours, 9 minutes, 38 secondsare failing. As you can see, all of them are failing. But we will protect our TRPC routes in a different way. So it's
8:09:468 hours, 9 minutes, 46 secondscompletely okay in my opinion to allow this. In fact, you can even just allow your entire API like this. then you
8:09:548 hours, 9 minutes, 54 secondsdon't have to worry about injust or DRPC specifically because our API should uh it should be protected in a different
8:10:028 hours, 10 minutes, 2 secondsway in the first place. Let's just do a sanity check. What do we have here? We have ingest and we have uh TRPC. So
8:10:108 hours, 10 minutes, 10 secondsinest needs to be publicly available simply because inest will contact this no one else. Right? And if you're
8:10:188 hours, 10 minutes, 18 secondswondering how this works, they probably have some kind of uh security header which is checked every time you access this route because you can see that we're using the serve from ingest next.
8:10:278 hours, 10 minutes, 27 secondsSo inside of here, they probably have their own request handler that does all the security features inside. And as for
8:10:358 hours, 10 minutes, 35 secondsTRPC, uh well, we are going to be the ones who are going to have to protect each individual route here. And that's what we are going to do with the
8:10:438 hours, 10 minutes, 43 secondsprotected procedure. So I would actually recommend allowing all API endpoints to be public routes. So now let's go ahead
8:10:528 hours, 10 minutes, 52 secondsand let's uh create the dark mode for this because you can see that when I log in of course it just looks weird. So
8:11:018 hours, 11 minutes, 1 secondwhat we're going to do is we're going to go and create a hooks folder.
8:11:078 hours, 11 minutes, 7 secondsSo go inside of source. Uh do we we already have hooks? Great. So this came with chats and UI. And now create use current theme.ts.
8:11:198 hours, 11 minutes, 19 secondsSo we already have use theme from next themes and we already use it in the project header use theme. The problem
8:11:288 hours, 11 minutes, 28 secondswith this is that it has uh the following possible values. It can be
8:11:358 hours, 11 minutes, 35 secondssystem dark or light which is fine for this radio group. But if the value is
8:11:428 hours, 11 minutes, 42 secondssystem, what exactly is that? Is it light or is it dark? We don't know. That's why we have to create
8:11:518 hours, 11 minutes, 51 secondsa custom use current theme here where we can extract the theme and
8:11:588 hours, 11 minutes, 58 secondssystem theme. Specifically use theme like that. And then if theme
8:12:068 hours, 12 minutes, 6 secondsis dark or if theme is light, we can just return
8:12:138 hours, 12 minutes, 13 secondsthe theme as usual. Otherwise, return the system theme like that
8:12:218 hours, 12 minutes, 21 secondsbecause you you cannot always just return the system theme. This only makes sense if the theme is system, right? If it's dark or light, then we don't care.
8:12:328 hours, 12 minutes, 32 secondswe can just return whatever the value is. But if it is something other than dark or light, it means it is system. So then we cannot return theme. We have to
8:12:418 hours, 12 minutes, 41 secondsreturn the actual value of the system theme. And now we can go inside of the user control right here. And we can
8:12:498 hours, 12 minutes, 49 secondsadapt it as follow const current theme
8:12:568 hours, 12 minutes, 56 secondsuse current theme like this.
8:13:028 hours, 13 minutes, 2 secondsAnd then inside of here, uh, let's also import. I think we need to install a package first. So, let's just do npm install at clerk forward slash themes.
8:13:158 hours, 13 minutes, 15 secondsAnd I'm going to show you my package json here.
8:13:198 hours, 13 minutes, 19 seconds2.2.51 is my version. And then from that package, you can now import
8:13:278 hours, 13 minutes, 27 secondsdark from clerk themes. And then very simply in the appearance here set the
8:13:348 hours, 13 minutes, 34 secondsbase theme to check if current theme is equal to dark use dark otherwise use undefined.
8:13:438 hours, 13 minutes, 43 secondsAnd now you can see the text is visible and this is now in dark mode.
8:13:488 hours, 13 minutes, 48 secondsSo you might be thinking could I have just added that to the clerk provider because clerk provider also allows for
8:13:558 hours, 13 minutes, 55 secondsthe appearance and base theme. Well, you can, but the problem is the theme provider for SHAT CN needs to be inside
8:14:038 hours, 14 minutes, 3 secondsof the body and clerk provider needs to be outside of the HTML. So, we kind of
8:14:108 hours, 14 minutes, 10 secondshave a conflicting situation here, right? Um, you can try moving both the clerk provider and TRPC react provider
8:14:208 hours, 14 minutes, 20 secondshere maybe, but I'm not sure how that works, right? Uh I'm not sure if it matters but uh from all the
8:14:288 hours, 14 minutes, 28 secondsdocumentation I've seen these two need to be outside of HTML. I'm not sure I could be wrong but basically if you are
8:14:358 hours, 14 minutes, 35 secondsable to move these two like this inside then you can create an abstraction
8:14:438 hours, 14 minutes, 43 secondsaround cleric provider and then you can do the same thing like this. But for now I'm going to leave it like this simply because this is what worked for me initially.
8:14:538 hours, 14 minutes, 53 secondsGreat. So we now have this in the user control and we can now go inside of sign in and do the same thing because right
8:15:018 hours, 15 minutes, 1 secondnow if I sign out and if I go here you can see that this uses light mode. So let's go inside of sign in page right
8:15:098 hours, 15 minutes, 9 secondshere. Let's go ahead and mark this as use client and let's import use current theme from
8:15:178 hours, 15 minutes, 17 secondshooks use current theme which we just created. And let's import dark from clerk themes.
8:15:238 hours, 15 minutes, 23 secondsNow in here we can extract the current theme and for this sign in let's add appearance here
8:15:328 hours, 15 minutes, 32 secondsbase theme we'll check if current theme is equal to dark and use dark otherwise use undefined. And let's also modify the elements a bit by adding card box here.
8:15:438 hours, 15 minutes, 43 secondsDo not have any border, not have any shadow and be rounded for LG
8:15:528 hours, 15 minutes, 52 secondslike this. And there we go. You can see how now this is in dark mode. And when you click on sign up, you can see it still uses the old theme. So let's just
8:16:008 hours, 16 minutesgo ahead. We can just copy the entire file, go inside of sign up, paste the entire thing, and replace the import to be sign up. I think that's faster.
8:16:118 hours, 16 minutes, 11 secondsAnd there we go. Now both of our sign in and sign ups have the proper team.
8:16:178 hours, 16 minutes, 17 secondsGreat. So let's see where we are. What did we do? We created a clerk account.
8:16:238 hours, 16 minutes, 23 secondsWe updated updated our environment. We added clerk provider signup screens middleware. Perfect. We added home
8:16:318 hours, 16 minutes, 31 secondslayout in the navbar. We created the user control component. Now let's create protected tRPC procedures. and let's update the Prisma schema.
8:16:418 hours, 16 minutes, 41 secondsSo I just want to do one more thing with the user control component and that is inside of the project view. So go inside
8:16:508 hours, 16 minutes, 50 secondsof this component here and in here after the tabs list here we added this ML auto flex and this button to upgrade. Now
8:16:598 hours, 16 minutes, 59 secondsnext to it also add user control like this and don't add the prop show name. So just make sure that you
8:17:088 hours, 17 minutes, 8 secondsimported user control and let me show you how that will look like now. So now if you of course sign in. So let me just
8:17:188 hours, 17 minutes, 18 secondsenter an account here and let me just go to uh any random project here.
8:17:278 hours, 17 minutes, 27 secondsYou can see that I have my user button right here. And let me just switch to light mode to see everything still works fine. There we go. You can see that now
8:17:358 hours, 17 minutes, 35 secondsI can log out and access my account information from here as well. And let's just double check the light mode to see everything works fine. Everything works
8:17:448 hours, 17 minutes, 44 secondsjust great. Perfect. So now what we have to do is we have to create the protected TRPC procedures.
8:17:528 hours, 17 minutes, 52 secondsSo in order to do that, let's go inside of source tRPC and let's go inside of init. And now in
8:18:008 hours, 18 minuteshere, we're going to modify the TRPC context here. So what I'm going to do is I'm going to remove this comment
8:18:078 hours, 18 minutes, 7 secondsand I will return al to be await out from clerk next.js
8:18:158 hours, 18 minutes, 15 secondsserver. After that, I mean just below it, I'm going to export type context which uses awaited
8:18:238 hours, 18 minutes, 23 secondsreturn type type of off create trpc context. And you can actually find these exact instructions in clerk
8:18:318 hours, 18 minutes, 31 secondsdocumentation here. Let me just find tRC. Maybe I can find it. Integrate clerk into your next.js plus tRPC app.
8:18:388 hours, 18 minutes, 38 secondsLet me see if that is uh what I'm looking for here.
8:18:438 hours, 18 minutes, 43 secondsLet's try again. TRPC I think this might be it. So yes, you can see that they instruct you to wrap
8:18:518 hours, 18 minutes, 51 secondsthe clerk provider around the TRPC provider. So we already did that, right?
8:18:588 hours, 18 minutes, 58 secondsWe are using TRPC React provider simply because the documentation has changed since then, but it's the same thing.
8:19:048 hours, 19 minutes, 4 secondsIt's important that the clerk provider is wrapping around the TRPC provider.
8:19:098 hours, 19 minutes, 9 secondsAnd now in here we are basically doing this in the create context and we are creating the context type
8:19:158 hours, 19 minutes, 15 secondshere like that. And in here you can find all the other things that we are going to do. Uh for example they have a
8:19:228 hours, 19 minutes, 22 secondsspecific instruction to now add create context to this TRPC route. But if you look at the TRPC route
8:19:308 hours, 19 minutes, 30 secondswe already do that right? So you don't have to worry about that. You can just follow what I do now. So I'm going to go
8:19:388 hours, 19 minutes, 38 secondsafter this T initialization and I will do const is outped like so and I will do
8:19:458 hours, 19 minutes, 45 secondsT dot middleware and from here the structure next and context
8:19:538 hours, 19 minutes, 53 secondsand check if not context out user ID
8:20:008 hours, 20 minutesin that case throw new TRPC error code.
8:20:078 hours, 20 minutes, 7 secondsUh let me just see what exactly is the problem in this one. Oh, so I need to import TRPC error from TRPC server.
8:20:168 hours, 20 minutes, 16 secondsOkay, make sure you do this.
8:20:208 hours, 20 minutes, 20 secondsThen let's do unauthorized here with a message of not authenticated like that.
8:20:298 hours, 20 minutes, 29 secondsNothing. uh and then after this if clause return next and extend the context to include out.
8:20:398 hours, 20 minutes, 39 secondsNow we have to fix this problems that out doesn't exist. You can do that quite easily by going back to this t here and
8:20:478 hours, 20 minutes, 47 secondssimply add dot context add the context type and execute it. And you can see that now we have the al property here which we added here.
8:21:008 hours, 21 minutesPerfect. And it's important that we also cache this in React. So this doesn't need to be called every single time. And
8:21:088 hours, 21 minutes, 8 secondswe are simply relying on the user ID from it here. So make sure you don't do any mistakes here because now we're finally going to go ahead down here and
8:21:168 hours, 21 minutes, 16 secondsdo export const protected procedure to be t.procedure. Whoops. T.procedure.
8:21:268 hours, 21 minutes, 26 secondsis authored.
8:21:298 hours, 21 minutes, 29 secondsThere we go. Now we have our protected procedure.
8:21:338 hours, 21 minutes, 33 secondsSo now it's time to replace a lot of our previous uh well procedures with this
8:21:418 hours, 21 minutes, 41 secondsnew one. So thankfully we don't have too many modules. So let's start with the messages procedures here. Let's see. At
8:21:498 hours, 21 minutes, 49 secondsfirst we have get many instead of base procedure. What you can do is honestly I don't think there will be a single public procedure here. So what I like to
8:21:588 hours, 21 minutes, 58 secondsdo is I like to highlight base procedure and then I press command D or control D
8:22:058 hours, 22 minutes, 5 secondsand then this just selects all of the other ones. Right? So 1 2 3 and I can remove them and I can add protected
8:22:138 hours, 22 minutes, 13 secondsprocedure like this. And nothing really changes now. So I'm just now using protected
8:22:208 hours, 22 minutes, 20 secondsprocedure for each of these for get many for create and I think that's that's the only two instances and you might think
8:22:288 hours, 22 minutes, 28 secondsbut nothing really changed now that's right but look at this if I'm using so just for example I will bring back base
8:22:358 hours, 22 minutes, 35 secondsprocedure here for the get many I'm now using base procedure if I try to extract context from here and if I try to do uh
8:22:458 hours, 22 minutes, 45 secondslet's for example imagine that we can query the messages by user ID. Imagine if I do user ID here and do context.
8:22:558 hours, 22 minutes, 55 secondsAnd then I try to do you know user ID in here. It can tell me that the user ID is
8:23:028 hours, 23 minutes, 2 secondsstring or null. So that means what I have to do is I have to first check if there is no context.out user ID and then
8:23:108 hours, 23 minutes, 10 secondsI have to throw new tRPC error blah blah blah. But that makes no sense. we just created the protected procedure which
8:23:198 hours, 23 minutes, 19 secondsdoes that for us and then uh passes the context further. So instead what we do when we know that something has to be a
8:23:288 hours, 23 minutes, 28 secondsprotected procedure that we will always throw an error if the user ID is missing we can now just use the protected procedure and this time the user ID is a type of string.
8:23:398 hours, 23 minutes, 39 secondssee the difference. Base procedure tells me it can be string or it can be null.
8:23:448 hours, 23 minutes, 44 secondsBut protected procedure tells me this is definitely a string because it 100%
8:23:518 hours, 23 minutes, 51 secondsexists at this point. So that's why we're replacing things with a protected procedure. And then at this point it
8:23:598 hours, 23 minutes, 59 secondsdoesn't matter that our API is allowing the public route for API. Right? An important thing you should know, you
8:24:088 hours, 24 minutes, 8 secondsshould never never ever ever rely on the middleware for authentication.
8:24:158 hours, 24 minutes, 15 secondsSo what I'm doing here is just a nice user experience, right? It is easy to redirect the user using the middleware.
8:24:258 hours, 24 minutes, 25 secondsBut this isn't my line of defense.
8:24:288 hours, 24 minutes, 28 secondsThis isn't what I'm doing to throw errors. That's why I have a data access layer called TRPC. And in here I have my
8:24:368 hours, 24 minutes, 36 secondsprotected procedures. So if this middleware fails even even in this case I explicitly allow the middleware to
8:24:448 hours, 24 minutes, 44 secondsallow API routes. I'm still very much protected because I'm protecting my data access layer and you should do the same.
8:24:538 hours, 24 minutes, 53 secondsNever ever rely on the middleware to protect your app. If you want to use the middleware for nice user experience like
8:25:018 hours, 25 minutes, 1 secondwe are, of course you can do that. But it shouldn't be your last line of defense. You should have a data access
8:25:088 hours, 25 minutes, 8 secondslayer and you should protect your routes individually because let's imagine this middleware breaks which can happen.
8:25:158 hours, 25 minutes, 15 secondsNex.js had a middleware security issue just a few versions ago and people who were shocked that that happened know got
8:25:248 hours, 25 minutes, 24 secondsa very big security lesson. You shouldn't rely on the middleware. Even if the middleware was perfect, you
8:25:318 hours, 25 minutes, 31 secondsshould not rely on it. Uh don't confuse this middleware with this is also technically a middleware right we we
8:25:408 hours, 25 minutes, 40 secondsjust created a middleware this middleware and this middleware are two different things they are not comparable okay what I'm trying to tell you is
8:25:498 hours, 25 minutes, 49 secondsdon't try and do API and then projects and then create don't do this this is
8:25:568 hours, 25 minutes, 56 secondsnot enough for you to protect your API routes you should protect your API routes
8:26:038 hours, 26 minutes, 3 secondsinside of the routes themselves like I am doing right now. So this is a different type of middleware. They're just using the same word. They're using
8:26:118 hours, 26 minutes, 11 secondsthe same keyword middleware here and middleware here. Right? I'm trying to explain the difference. So whenever you
8:26:198 hours, 26 minutes, 19 secondsuse the middleware, it should only be used to improve user experience like adding redirects which is very a very nice thing to use the middleware for.
8:26:288 hours, 26 minutes, 28 secondsBut if your middleware breaks and if the user actually ends up being able to visit my individual project page, I'm
8:26:368 hours, 26 minutes, 36 secondsstill just going to throw a bunch of errors because when we try to load the messages, it will be a protected procedure and it will just throw the
8:26:448 hours, 26 minutes, 44 secondsuser an error saying, "Hey, you're not authorized. I don't know how you access this API, but you cannot see that API."
8:26:528 hours, 26 minutes, 52 secondsThat's how authorization should work, not by the middleware. The middleware is just the first layer of security. The
8:27:008 hours, 27 minutesactual layer of security is the data access layer. In our case, the RPC. I hoped I cleared that up. Sorry for going
8:27:078 hours, 27 minutes, 7 secondson this rant, but it is important for you to understand that. Great. So now let's go ahead and once we finish the
8:27:158 hours, 27 minutes, 15 secondsmessages, let's go inside of projects server procedures. And I think that we have to do the very same thing here. I don't see a single thing that can be a
8:27:228 hours, 27 minutes, 22 secondsbase procedure here. So I'm just going to replace All of these instances I think this is the last one. Yes, with
8:27:318 hours, 27 minutes, 31 secondsprotected procedure. So let me show you the exact changes. Get one, get many,
8:27:378 hours, 27 minutes, 37 secondsand create. So three procedures in this case. And when I search for base
8:27:448 hours, 27 minutes, 44 secondsprocedure now, not a single one exists except the actual instance here in the init file. And when I search for
8:27:518 hours, 27 minutes, 51 secondsprotected procedure, I have eight results in three files. the third one being in it file. So that's how your
8:28:008 hours, 28 minutesproject should look as well. So now only authorized users can access this API routes and it absolutely doesn't matter
8:28:078 hours, 28 minutes, 7 secondsthat we are not protecting it in the middleware.
8:28:118 hours, 28 minutes, 11 secondsPerfect. So now let's go ahead and let's add Prisma schema update because now we
8:28:198 hours, 28 minutes, 19 secondsfinally have the user ID. So that means we can go inside of Prisma schema here and we can modify
8:28:288 hours, 28 minutes, 28 secondssome things. So let's start with the project. The project from now on will have a user ID which will be a required string like this.
8:28:418 hours, 28 minutes, 41 secondsAnd since other entities relating to the project, all other entities end up being related to the root project. We don't
8:28:508 hours, 28 minutes, 50 secondsreally have to add it to the message as well. You can of course do that if you want to uh if you have any architectural
8:28:588 hours, 28 minutes, 58 secondsreason for doing that. Of course, you can add individual user ID for the fragment, individual user ID uh for the
8:29:058 hours, 29 minutes, 5 secondsmessage, right? But for the same reason I'm not adding project ID into the fragment because the fragment is related to the message which has the project ID
8:29:148 hours, 29 minutes, 14 secondsalready. I'm not going to be adding the user ID uh to my uh other entities because it is enough that the user ID is
8:29:228 hours, 29 minutes, 22 secondsin the project. And once I've done that I'm going to shut down my app and I'm going to do npx prisma migrate reset. So
8:29:318 hours, 29 minutes, 31 secondsagain only do this in development. We are clearing up our database because we are in development and we can do that.
8:29:388 hours, 29 minutes, 38 secondsAnd once we've done this, let's go ahead and do npx prisma migrate dev. And once it connects, let's simply call this user ID or out.
8:29:498 hours, 29 minutes, 49 secondsHere we go. I'm going to call this user ID. And there we go. Now I'm going to do npm rundev. And I'm going to run npx
8:29:588 hours, 29 minutes, 58 secondsinest cli latest dev. So both things should be running. And just double check that it was able to connect to API inest
8:30:078 hours, 30 minutes, 7 secondsbecause as I said if you accidentally don't allow your API here then inest
8:30:148 hours, 30 minutes, 14 secondswill not be able to connect. There we go. You can see that now it's 404. So that's wrong. That's why you need to
8:30:218 hours, 30 minutes, 21 secondsmake sure to allow all of your API routes and then after some time let's check again. It can connect to it.
8:30:288 hours, 30 minutes, 28 secondsExactly what we need. So now let's go ahead and fix all of the issues that we have because we do have them. We just
8:30:358 hours, 30 minutes, 35 secondsgot a new rule and that is that each project needs to have a user ID. So
8:30:418 hours, 30 minutes, 41 secondslet's go ahead inside of our modules and let's go inside of projects server
8:30:488 hours, 30 minutes, 48 secondsprocedures and we can already see some errors here such as the create error. So in the create protected procedure we now
8:30:568 hours, 30 minutes, 56 secondshave to also pass the user ID which we can easily extract from the context here because we are using a protected
8:31:038 hours, 31 minutes, 3 secondsprocedure. So context.out user id as simple as that problem fixed. Now what
8:31:108 hours, 31 minutes, 10 secondswe have to do next is you also have to modify the get many. So whose projects are we loading? Very simple. The
8:31:188 hours, 31 minutes, 18 secondscurrently logged in users projects. So let's add a wear here.
8:31:248 hours, 31 minutes, 24 secondslike this user ID matches context out user ID and now we are only loading this currently
8:31:328 hours, 31 minutes, 32 secondslogged in users project and same thing for get one simply extract context from here and we can only load the existing
8:31:408 hours, 31 minutes, 40 secondsproject if we have a matching user ID if we don't this will be null and we're
8:31:488 hours, 31 minutes, 48 secondsgoing to throw the error not found so even if the user is logged in and manages to surpass this protected
8:31:558 hours, 31 minutes, 55 secondsprocedure, we will still be able to throw the error because we have no idea which project with that specific ID and
8:32:038 hours, 32 minutes, 3 secondsthat user ID they are looking for. So we just throw we have no idea what you're talking about. We've never seen that project before. So full security in our
8:32:128 hours, 32 minutes, 12 secondsapplication. And now we have to do the same thing but for messages. So let's go inside of procedures here and let's
8:32:218 hours, 32 minutes, 21 secondscheck get many. So in here I'm going to extract the context as well and I'm going to try and do project user ID and
8:32:298 hours, 32 minutes, 29 secondsit seems like I can do that. So let's simply add context out user ID. There we go. So just like that we are now also protecting all of our messages. But
8:32:388 hours, 32 minutes, 38 secondssince we don't have direct user ID in the message we have to go through the project ID first.
8:32:448 hours, 32 minutes, 44 secondsPerfect. And for the create uh well we have to do the same thing but a little bit differently here. So what we're
8:32:528 hours, 32 minutes, 52 secondsgoing to do here is we're going to do con existing project first
8:32:578 hours, 32 minutes, 57 secondsawait prisma project find unique where and simply add the ID to be input
8:33:068 hours, 33 minutes, 6 secondsproject ID and user ID to be context pal user ID like this.
8:33:188 hours, 33 minutes, 18 secondsI mean maybe we can somehow do it from here. I don't know. I'm not that good with Prisma, but you can do it in two
8:33:268 hours, 33 minutes, 26 secondsseparate queries. You know, it's not the end of the world. And if there is no existing project, let's throw new TRPC error here
8:33:338 hours, 33 minutes, 33 secondscode not found with a message project not found. So I have no idea
8:33:438 hours, 33 minutes, 43 secondswhat where what project do you want to create this message into. Right? And make sure you have imported the TRPC
8:33:518 hours, 33 minutes, 51 secondserror from TRPC server. So this way, even if they somehow surpass the protected procedure, we are still not
8:33:588 hours, 33 minutes, 58 secondsgoing to allow them to just create messages in someone else's project because they need to match the exact user ID who created that project. Uh
8:34:078 hours, 34 minutes, 7 secondsgreat. So we now have this done right here. And then we can safely do the created message. You can even then use
8:34:158 hours, 34 minutes, 15 secondsmaybe it's even safer to use existing project ID for the project ID. So it's only this one which we can query from
8:34:228 hours, 34 minutes, 22 secondsour database with the correct user ID that we're going to insert this message into.
8:34:288 hours, 34 minutes, 28 secondsExcellent. And you don't have to worry about these background jobs because we are protecting them before we even trigger them.
8:34:368 hours, 34 minutes, 36 secondsSo that is for the create method. Let's see. Did I fix it for the get many? And I think that should be it. So obviously
8:34:448 hours, 34 minutes, 44 secondswe should now just test our app to make sure things are still working. Uh so let's go ahead and do the following.
8:34:518 hours, 34 minutes, 51 secondsLet's go inside of our projects list now. And I just want to do a slight modification here. And that modification
8:35:008 hours, 35 minutesis that I'm going to load the current user from use user which you can import
8:35:088 hours, 35 minutes, 8 secondsfrom clerk next.js. And then this will allow us to do the following. We can then do user question mark first name
8:35:178 hours, 35 minutes, 17 secondsand then apostrophes users vibes and then in here also do if
8:35:248 hours, 35 minutes, 24 secondsthere is no user return null. So we don't even load the project list if we are not logged in. We can of course do
8:35:328 hours, 35 minutes, 32 secondsthis in a million ways but I think this is just simple enough for now. Uh great.
8:35:388 hours, 35 minutes, 38 secondsSo you can see that when I am logged out nothing happens here. Great. So what I want to do first is I want to go inside
8:35:468 hours, 35 minutes, 46 secondsof my project form and in here in my
8:35:538 hours, 35 minutes, 53 secondson success specifically on error I should redirect the user to the out screen as well if this fails because
8:36:018 hours, 36 minutes, 1 secondright now when I type test I'm just getting an error not authenticated. I mean, you could technically argue that's
8:36:088 hours, 36 minutes, 8 secondsgood enough, but uh let me show you what you can do. So, you can do router and then you can just push the user to sign
8:36:168 hours, 36 minutes, 16 secondsup or sign in. That's an easy way you can do. But here's a cool thing. You can actually do con clerk use clerk from clerk.js.
8:36:248 hours, 36 minutes, 24 secondsSo, just make sure to add this import.
8:36:288 hours, 36 minutes, 28 secondsAnd once you have it, you can do the following.
8:36:338 hours, 36 minutes, 33 secondsIf error data.code is equal to unauthorized, you can do clerk.open
8:36:428 hours, 36 minutes, 42 secondssign in like that. Uh, and let me just so error data is possibly undefined. So maybe I need to do this. There we go.
8:36:538 hours, 36 minutes, 53 secondsAnd let me just move this to the top. So this way if this fails, it will open the signin model. So I write test.
8:37:018 hours, 37 minutes, 1 secondAnd there we go. It opens this nice model. I think it looks cool. If you want to, you can also just do, you know, router.push sign in. That also works.
8:37:148 hours, 37 minutes, 14 secondsThere we go. So, whichever one you prefer. I just thought I would show you this cool alternative.
8:37:208 hours, 37 minutes, 20 secondsUh, great. So, I'm pretty sure that we don't have to do anything more besides
8:37:288 hours, 37 minutes, 28 secondstest the app. So now I'm going to log in here.
8:37:328 hours, 37 minutes, 32 secondsAnd as you can see, it says Jones Vibes and no projects found. And I will do build a landing page here.
8:37:408 hours, 37 minutes, 40 secondsAnd let's see, will I get any errors? I don't think I'm getting any errors at all. I do want to just check my functions.ts just to confirm I'm not
8:37:498 hours, 37 minutes, 49 secondsgetting any errors in here. Even though we shouldn't be getting any errors at all. This is a background job. This doesn't need any user ID.
8:37:588 hours, 37 minutes, 58 secondsI think everything is just fine here and I think that we will be able to normally load the messages. But let's wait and see the result.
8:38:078 hours, 38 minutes, 7 secondsAnd there we go. Once I am logged in, you can see that I can normally create my messages. I can even refresh this and I can load my messages. I can see my
8:38:168 hours, 38 minutes, 16 secondsfragments. So all of this is obviously working. Perfect. Uh and let's try something fun. I'm going to copy the URL
8:38:258 hours, 38 minutes, 25 secondshere and I will log out. And then I'm going to go ahead and paste that URL. So obviously I'm getting redirected. But
8:38:328 hours, 38 minutes, 32 secondslet's say inside of my middleware I accidentally do projects and I do this. All right. So let's see what happens then.
8:38:428 hours, 38 minutes, 42 secondsYou can see that even if the middleware fails, nothing useful is shown to the user and
8:38:498 hours, 38 minutes, 49 secondsfinally an error is thrown. This is of course not ideal because we are missing an error boundary. uh we're going to fix
8:38:568 hours, 38 minutes, 56 secondsthis details in the last chapters, right? Obviously, it's not ideal that this types of errors shown even though this wouldn't show in production. This
8:39:048 hours, 39 minutes, 4 secondsis what you would see in production, which is not any better, but we will I'm going to show you how to add proper error boundaries. I just wanted to show
8:39:128 hours, 39 minutes, 12 secondsyou that you can't fool this system we just created, right? You will either get redirected or you will be hit with a
8:39:198 hours, 39 minutes, 19 secondsbunch of errors because you don't belong on that website. Amazing. Amazing job. I think that officially marks the end of
8:39:278 hours, 39 minutes, 27 secondsthis chapter. So now let's go ahead and let's open a pull request. So 16 authentication.
8:39:348 hours, 39 minutes, 34 secondsI'm going to create a new branch. 16 authentication.
8:39:408 hours, 39 minutes, 40 secondsI'm going to stage all of my changes. 16 authentication. I'm going to commit and I'm going to publish the branch.
8:39:508 hours, 39 minutes, 50 secondsNow, let's go ahead and open a pull request and let's review our changes.
8:39:588 hours, 39 minutes, 58 secondsAnd here we have the summary. We added user authentication and theming support using clerk, including sign in and sign
8:40:058 hours, 40 minutes, 5 secondsup pages with theme aare styling. We introduced a navigation bar with authentication controls and user display. We added a user control
8:40:148 hours, 40 minutes, 14 secondscomponent for displaying user information and actions. We integrated authentication checks into project and message features, ensuring users can
8:40:238 hours, 40 minutes, 23 secondsonly access their own data. We improved project and message lists to only display personalized content and enforce
8:40:318 hours, 40 minutes, 31 secondsuserbased access. Exactly what we did in this chapter. As always, file by file
8:40:388 hours, 40 minutes, 38 secondswalk through here and a whole sequence diagram explaining how our new clerk provider and authentication TRPC
8:40:468 hours, 40 minutes, 46 secondsprocedures work. And we did a very good job this time. The only comment is in the migration SQL. Um, we don't really
8:40:548 hours, 40 minutes, 54 secondscare about this because we are in development phase and no other comments.
8:40:598 hours, 40 minutes, 59 secondsAmazing, amazing job. Let's go ahead and merge this pull request. And once we've done that, let's go ahead and go back to the main branch and let's click on
8:41:078 hours, 41 minutes, 7 secondssynchronize changes and okay. And in a few seconds, you will see that 16 was just merged authentication.
8:41:168 hours, 41 minutes, 16 secondsThat marks the end of this chapter.
8:41:198 hours, 41 minutes, 19 secondsAmazing, amazing job and see you in the next one.
Chapter 18: 17 Billing
8:41:248 hours, 41 minutes, 24 secondsIn this chapter, we're going to implement billing and the credit system into our project. In order to do that,
8:41:318 hours, 41 minutes, 31 secondswe first have to enable billing in clerk. We then have to create a pricing page. After we've done those two, we can
8:41:398 hours, 41 minutes, 39 secondsstart and add rate limiting or usage or credit system in our application. This
8:41:468 hours, 41 minutes, 46 secondswill include adding some new models to Prisma schema and creating the util for rate limiting. After that, we're going
8:41:538 hours, 41 minutes, 53 secondsto have to create the usage component which will show to the user how many credits they have. And finally, we're going to have to update some procedures
8:42:018 hours, 42 minutes, 1 secondto actually call this util for rate limiting to trigger credit spend. So, let's start with enabling billing. So,
8:42:108 hours, 42 minutes, 10 secondsthis is the first time I'm using clerk billing. It was announced recently and the moment I heard it, I just knew it
8:42:198 hours, 42 minutes, 19 secondshad to be an incredible developer experience. And I think that you will be shocked at how good it is because we all
8:42:278 hours, 42 minutes, 27 secondsknow that Clerk's developer experience is immaculate. They have completely solved the issue of uh complicated code.
8:42:348 hours, 42 minutes, 34 secondsEverything regarding Clerk is super easy, super fast and super simple to do.
8:42:408 hours, 42 minutes, 40 secondsAnd billing is one of the most complicated parts of building the authentication, especially if we are doing it with Stripe. So, you're going
8:42:488 hours, 42 minutes, 48 secondsto be so impressed by the fact that we won't even need a web hook for this entire process. More so, we won't even
8:42:588 hours, 42 minutes, 58 secondshave to build a single component besides our custom usage component, which actually has nothing to do with billing.
8:43:078 hours, 43 minutes, 7 secondsLet's go ahead and do that. You can find information about clerk billing in their documentation here. You can scroll and find billing. And in here, you can
8:43:158 hours, 43 minutes, 15 secondsselect B2C. You can also do B2B but in this case it will be uh B2C SAS. The
8:43:238 hours, 43 minutes, 23 secondsfirst thing we have to do is enable billing. So we have to go to billing settings. This will redirect you to your
8:43:308 hours, 43 minutes, 30 secondsproject. So you click into configure and down here billing settings.
8:43:358 hours, 43 minutes, 35 secondsGo ahead and click create a plan. And the first thing we're going to do is we're going to create a free plan. So
8:43:428 hours, 43 minutes, 42 secondsI'm going to go ahead and open this. And in here you can set the name of the plan and you can set the slug like this. So
8:43:508 hours, 43 minutes, 50 secondsthis is what we are going to use in our codebase to check if the user is on that plan. Right? So we're going to check if free user is active. That means the user
8:43:598 hours, 43 minutes, 59 secondsis currently on the free tier. Uh and in here make sure to check publicly available. This basically means that this will appear on the pricing table.
8:44:118 hours, 44 minutes, 11 secondsSo you can create that and then you can click add another user plan and for example call this pro like this and give
8:44:208 hours, 44 minutes, 20 secondsit a monthly fee of $29. And if you're wondering can I easily combine this into an annual discount? Yes, you can just
8:44:298 hours, 44 minutes, 29 secondsenable annual discount and in here set it to something like 25. So, if they pay monthly, it's going to be $29 a month.
8:44:398 hours, 44 minutes, 39 secondsBut if they choose to pay annually, we're going to reduce the price to $25 per month. So, you're going to get $300
8:44:488 hours, 44 minutes, 48 secondsinstantly from them. And in return, they're going to have a bit of a cheaper plan. You can, of course, uh assign the
8:44:558 hours, 44 minutes, 55 secondsprice to whatever you want and click save. So, right now in your subscription plans, whoops.
8:45:038 hours, 45 minutes, 3 secondsright here you should have two subscription plans, one free and one pro which is build monthly or annually. So
8:45:118 hours, 45 minutes, 11 secondsin here, let me just go and click on the settings here. And in here, let's just click enable billing. There we go. So
8:45:188 hours, 45 minutes, 18 secondsnow billing is enabled. And in here, you can choose your payment getaway. So if you want to, you can add your own Stripe
8:45:258 hours, 45 minutes, 25 secondsaccount, but you can also choose clerk's payment getaway, which is a zero conflict payment getaway. it is ready to process and test payments immediately.
8:45:348 hours, 45 minutes, 34 secondsAnd this is amazing. You're going to see how simple this is. So, to recap, go inside of configure, go inside of
8:45:428 hours, 45 minutes, 42 secondsbilling settings, and make sure that you click enable. Make sure that you have a message billing is enabled. After that, go ahead and create two subscription
8:45:518 hours, 45 minutes, 51 secondsplans right here. And now, let's go ahead and let's add a pricing table to our app.
8:45:588 hours, 45 minutes, 58 secondsSo, as always, make sure that you are on your main branch.
8:46:048 hours, 46 minutes, 4 secondsMake sure that you synchronize your changes. And if you want to go inside of source control and confirm that the last change was adding authentication.
8:46:138 hours, 46 minutes, 13 secondsWhat we have to do now is we have to implement the pricing page. So, let's go inside of source app home and let's
8:46:208 hours, 46 minutes, 20 secondscreate a new folder called pricing inside page.tsx. tsx
8:46:288 hours, 46 minutes, 28 secondslike this. Let's mark this as use client. And then let's go ahead and let's import image from next image. And
8:46:388 hours, 46 minutes, 38 secondslet's import pricing table from clerk next.js. And let's go ahead and export this page.
8:46:478 hours, 46 minutes, 47 secondsSo I'm going to export it like this. And inside of here for now, let's just do pricing table. Let's just do that and
8:46:558 hours, 46 minutes, 55 secondsnothing more. If you now go into your app, just make sure you have it running.
8:47:008 hours, 47 minutesAnd if you go to forward slashpricing, uh it will redirect you to the login
8:47:088 hours, 47 minutes, 8 secondspage. So, let's just make sure to add that here. So, forward slpricing
8:47:158 hours, 47 minutes, 15 secondslike so. Now, you should be able to go to localhost 3000 pricing.
8:47:228 hours, 47 minutes, 22 secondsThere we go. we have a date a pricing table. So we didn't have to code a single component. All we have to do is
8:47:308 hours, 47 minutes, 30 secondsstyle it a little bit now. So let's go ahead and do that. So I'm going to go back inside of here and I'm going to add
8:47:368 hours, 47 minutes, 36 secondsa class name flex flex column maximum width of 3 Excel MX
8:47:448 hours, 47 minutes, 44 secondsauto and full width. I will then add a section around our pricing table and I'm
8:47:528 hours, 47 minutes, 52 secondsgoing to create a div inside of here with an image component and then in here I will add an H1 element and then I'm going to add a
8:48:018 hours, 48 minutes, 1 secondparagraph. Now let's go ahead and style this. Starting with the section which
8:48:058 hours, 48 minutes, 5 secondswill have space Y 6 padding top of 16 VH
8:48:148 hours, 48 minutes, 14 secondson to Excel padding top of 48.
8:48:208 hours, 48 minutes, 20 secondsThen on this div encapsulating the image let's give it a class name of flex flex column and items center. For the image
8:48:308 hours, 48 minutes, 30 secondsitself, give it a source logo SVG, alt vibe, width 50, and height 50 as well.
8:48:428 hours, 48 minutes, 42 secondsAnd give it a class name hidden MD block.
8:48:478 hours, 48 minutes, 47 secondsThen in the H1, go ahead and add the text pricing. And give this a class name of text extra large like this.
8:48:578 hours, 48 minutes, 57 secondson MD text 3 Excel font bold and text center for the paragraph. Enter the
8:49:068 hours, 49 minutes, 6 secondstext. Choose the plan that fits your needs.
8:49:108 hours, 49 minutes, 10 secondsAnd give this a class name text muted foreground text center text small and MD text base.
8:49:228 hours, 49 minutes, 22 secondsAnd now let's just go to the pricing table appearance.
8:49:288 hours, 49 minutes, 28 secondsAnd let's add elements here. Pricing table card. And let's change this to use
8:49:348 hours, 49 minutes, 34 secondsthe border shadow none rounded large. Just just make sure you're putting the exclamation points
8:49:428 hours, 49 minutes, 42 secondshere. And just like that, we have a pricing table that clearly reflects the two plans that we created in clerk
8:49:508 hours, 49 minutes, 50 secondsdashboard. So now let's go ahead and let's modify the descriptions of these and let's show some features which will be active once we upgrade.
8:50:028 hours, 50 minutes, 2 secondsSo let's go inside of our clerk dashboard here. Go inside of configure and in here subscription plans. Select
8:50:108 hours, 50 minutes, 10 secondsthe free one and let's go ahead and give it a description for getting started like this and click save.
8:50:198 hours, 50 minutes, 19 secondsAnd then in here, let's add a feature.
8:50:228 hours, 50 minutes, 22 secondsAnd let's go ahead and call this feature five monthly credits.
8:50:298 hours, 50 minutes, 29 secondsLike that. Make sure it's publicly available. And let's click create feature. And let's click save. And just by doing that and refreshing, you will
8:50:378 hours, 50 minutes, 37 secondsimmediately see the new description reflected here. And you will also see the new feature five monthly credits.
8:50:468 hours, 50 minutes, 46 secondsAnd now if you wanted to this is where you will add even more features for example public projects something like
8:50:538 hours, 50 minutes, 53 secondsthat. So for example we don't even have private or public projects all projects are private in our case but for example
8:51:018 hours, 51 minutes, 1 secondhere you can see how that would look like. And now let's go ahead and let's modify the other plan which is the pro
8:51:098 hours, 51 minutes, 9 secondsplan. So go back here back inside of our subscription plans
8:51:158 hours, 51 minutes, 15 secondsand select the pro plan. So this one can have the description of for more
8:51:228 hours, 51 minutes, 22 secondsprojects and usage and then go inside of the features here
8:51:308 hours, 51 minutes, 30 secondsand let's go ahead and add a new feature called 100 credits per month like this.
8:51:398 hours, 51 minutes, 39 secondsLet's go ahead and let's add private projects like that. Let's add custom domains.
8:51:488 hours, 51 minutes, 48 secondsBasically, whatever you plan to, you know, extend this application with, you can add here or maybe some collaboration like three editors per project. All
8:51:588 hours, 51 minutes, 58 secondsright, just think of a bunch of features you would add to your app. And let's do uh remove the vibe badge. Imagine that
8:52:078 hours, 52 minutes, 7 secondswe would create some kind of feature that adds the vibe badge. And click save. And you can of course, you know, drag and drop this however you like. I
8:52:158 hours, 52 minutes, 15 secondsjust wanted us to add a lot of features here simply because the the pricing table looks better if you add more
8:52:228 hours, 52 minutes, 22 secondsfeatures here. And I absolutely love how this looks. So now that we have uh this
8:52:308 hours, 52 minutes, 30 secondsfinished, let me just go ahead and do one thing. I want to go inside of layout right here and I want
8:52:398 hours, 52 minutes, 39 secondsto modify the clerk provider and its appearance here. And I want to add variables here. Color primary. And I'm
8:52:478 hours, 52 minutes, 47 secondsjust going to set it to the light mode of our cloud theme, which is this.
8:52:548 hours, 52 minutes, 54 secondsAnd when you save this, you can see that immediately it will pick up the theme that we are using throughout the project. And I just think this looks
8:53:038 hours, 53 minutes, 3 secondsamazing. Now, let's just go back to the pricing here. And let's enable dark mode
8:53:108 hours, 53 minutes, 10 secondsif we need it. So, I'm going to import dark from Clark themes. And I'm going to import
8:53:198 hours, 53 minutes, 19 secondsuse current theme. Make sure this is marked as use client. Go ahead and add this. And then simply in the appearance,
8:53:298 hours, 53 minutes, 29 secondsgo ahead and add base theme. checking if the current theme is dark, then use dark, otherwise it's undefined. And now
8:53:368 hours, 53 minutes, 36 secondsthis page will support dark mode as well. Uh, and if you try and subscribe, you can see that you're redirected to login. So you don't have to immediately
8:53:458 hours, 53 minutes, 45 secondsuh try and subscribe simply because I want to demonstrate the entire upgrade process. You can see that when I log in, by default, every user is in the free
8:53:548 hours, 53 minutes, 54 secondstier. You didn't even have to write the code for that. you automatically, we automatically added this user to the free tier. If you click subscribe here,
8:54:028 hours, 54 minutes, 2 secondsyou can see how nicely this looks. As I said, you don't have to do this now. If you can, fine. Sure. But you're going to
8:54:098 hours, 54 minutes, 9 secondshave to create a new account to test out our usage uh tryyouts. So, you can see how this looks. I think it's just, you
8:54:178 hours, 54 minutes, 17 secondsknow, amazing. Uh, and one thing that I want to fix that we forgot about is when
8:54:248 hours, 54 minutes, 24 secondsI scroll, I want this navbar to stop being transparent because it just looks weird. So, let's quickly fix that by
8:54:338 hours, 54 minutes, 33 secondsgoing inside of source hooks and let's create use scroll.ts like this.
8:54:428 hours, 54 minutes, 42 secondsAnd inside of here, let's go ahead and do import use state use effect from React export const use scroll.
8:54:528 hours, 54 minutes, 52 secondsAnd let's add the threshold to be 10.
8:54:598 hours, 54 minutes, 59 secondsDefine the state is scrolled and set is scrolled.
8:55:048 hours, 55 minutes, 4 secondsUse state by default is going to be false. Call use effect
8:55:108 hours, 55 minutes, 10 secondswith for now an empty dependency array like this. And inside create a handle
8:55:208 hours, 55 minutes, 20 secondsscroll arrow function which will call set is scrolled to be
8:55:278 hours, 55 minutes, 27 secondswindow scroll Y which is above the threshold.
8:55:348 hours, 55 minutes, 34 secondsAnd then let's add a window add event listener here to listen for scroll and handle scroll.
8:55:448 hours, 55 minutes, 44 secondsAnd then simply call handle scroll. And in the return method call window remove
8:55:498 hours, 55 minutes, 49 secondsevent listener scroll handle scroll just like that. And add the threshold inside.
8:55:598 hours, 55 minutes, 59 secondsAnd all you have to do is return is scrolled.
8:56:038 hours, 56 minutes, 3 secondsThere we go. So now that we have use scroll in our app, we can go back to the navbar inside of home module UI
8:56:128 hours, 56 minutes, 12 secondscomponents navbar. And in here you can now easily get is scrolled. Use is scrolled.
8:56:218 hours, 56 minutes, 21 secondsUse scroll. My apologies from hooks. Use scroll. and then make this a dynamic class name by wrapping it inside of curly brackets and adding the CN util.
8:56:348 hours, 56 minutes, 34 secondsSo we have to import CN from lib utils.
8:56:398 hours, 56 minutes, 39 secondsI'm going to keep the static classes as the first argument and then I'm going to check if is scrolled. Let's do back bg background and border border.
8:56:528 hours, 56 minutes, 52 secondsSo now if you scroll ever so slightly, you can see that the navbar
8:56:588 hours, 56 minutes, 58 secondsstarts to stop being transparent and a border appears. Amazing. Now that we have this and now that we have the
8:57:078 hours, 57 minutes, 7 secondsbilling, let's go ahead and just check a couple of things. So now this upgrade button should take you to the pricing.
8:57:138 hours, 57 minutes, 13 secondsIf yours doesn't, make sure you check the project view here. And make sure that you have a button. Let me just find
8:57:228 hours, 57 minutes, 22 secondsit. Here it is. Button with a link redirecting to pricing like that. And now it's time to create the usage model.
8:57:338 hours, 57 minutes, 33 secondsSo in order to do that, we're going to have to install a package called rate
8:57:428 hours, 57 minutes, 42 secondsliimiter flexible. So let me just close this and this and let me do npm install
8:57:498 hours, 57 minutes, 49 secondsrate limiter flexible like this. Let me show you the version.
8:57:578 hours, 57 minutes, 57 secondsSo I'm using 7.1.1. That's my version.
8:58:018 hours, 58 minutes, 1 secondLet me do npm rundev. And then in here, I'm going to go ahead and do the
8:58:088 hours, 58 minutes, 8 secondsfollowing. Inside of Prisma schema, I'm going to create uh a new model
8:58:158 hours, 58 minutes, 15 secondscalled usage. Right here at the bottom, model usage.
8:58:238 hours, 58 minutes, 23 secondsLet's go ahead and give it a key, which will be a type of string, and that's going to be the ID. and then a points
8:58:318 hours, 58 minutes, 31 secondswhich will be integer and finally expire which will be an optional
8:58:388 hours, 58 minutes, 38 secondsdate time. So this will be my usage model. Now let's go ahead and let's do
8:58:448 hours, 58 minutes, 44 secondsnpx prisma migrate dev. We don't need to clear our database because this is not really conflicting with any other
8:58:538 hours, 58 minutes, 53 secondsmodels. We're just adding a new one. So, I'm going to call this migration usage.
8:59:008 hours, 59 minutesLet's go ahead and add the name usage. And there we go.
8:59:068 hours, 59 minutes, 6 secondsNow that we have the new usage model here and the new migration ready, let's go ahead and let's implement uh the
8:59:158 hours, 59 minutes, 15 secondsusage tracker. So, this is what I'm going to do. I'm going to go ahead and create a new lib that I'm going to call
8:59:248 hours, 59 minutes, 24 secondsusage.ts. ts. And inside of here, I'm going to go ahead and add an import for
8:59:318 hours, 59 minutes, 31 secondsthe rate limiter. So, specifically, it's going to be rate limiter Prisma right here. And let's go ahead and do export
8:59:418 hours, 59 minutes, 41 secondsasync function get usage tracker like this. And for now I'm just going to
8:59:488 hours, 59 minutes, 48 secondsdefine const usage tracker to be new rate limiter Prisma store client will be our Prisma from the
8:59:588 hours, 59 minutes, 58 secondsdatabase like this and table name will be usage. So just
9:00:079 hours, 7 secondsmake sure it matches exactly the model we named here.
9:00:129 hours, 12 secondsAnd for the points, let's go ahead and by default, uh, give everyone five points.
9:00:209 hours, 20 secondsAnd for the duration, let's go ahead and let's do 30 days. So, 30 * 24 * 60 * 60.
9:00:299 hours, 29 secondsNow, what I like to do is I like to do const free points. And let's go ahead and give everyone free points. So, you
9:00:379 hours, 37 secondscan replace this like so. Then let's do the cons duration to be 30 * 24 * 60 *
9:00:449 hours, 44 seconds60. So you can add a little comment 30 days for example.
9:00:529 hours, 52 secondsAnd now that we have this, let's just return the usage tracker.
9:01:019 hours, 1 minute, 1 secondAnd now let's go ahead and let's create a function called consume credits. So export async function consume credits
9:01:109 hours, 1 minute, 10 secondsand in here let's go ahead first uh and let's extract user ID to be await out
9:01:199 hours, 1 minute, 19 secondsfrom clerk next.js server like so and make sure to execute this.
9:01:299 hours, 1 minute, 29 secondsIf there is no user ID, we can throw new error here. User not authenticated.
9:01:379 hours, 1 minute, 37 secondsThat's the first thing. And then let's go ahead and do const usage tracker to be await usage tracker. Basically this
9:01:469 hours, 1 minute, 46 secondsfunction which we defined above. And then in here const result to be await usage tracker dot consume.
9:01:569 hours, 1 minute, 56 secondspass in the user ID and then how many points do we want to take from them. So for that I'm going to define const
9:02:049 hours, 2 minutes, 4 secondsgeneration cost cost to be one. So let's go ahead and add that here. So we're going to subtract one point from the
9:02:139 hours, 2 minutes, 13 secondsuser every time we consume credits. And then let's just return result.
9:02:219 hours, 2 minutes, 21 secondsAnd then let's create the last function.
9:02:249 hours, 2 minutes, 24 secondsExport asynchronous function get usage status.
9:02:339 hours, 2 minutes, 33 secondsAgain extract user ID from await out.
9:02:379 hours, 2 minutes, 37 secondsIf there is no user ID throw new error user not authenticated.
9:02:469 hours, 2 minutes, 46 secondsAnd then let's do const usage tracker here to be await get usage tracker
9:02:559 hours, 2 minutes, 55 secondsand then result will be await usage tracker dot get user id. So we are looking at how many points we have left.
9:03:079 hours, 3 minutes, 7 secondsThere we go. So we are basically using this very very cool library which can inject directly into Prisma. Uh, and I'm
9:03:149 hours, 3 minutes, 14 secondsjust going to open the documentation now for it so you can read more.
9:03:199 hours, 3 minutes, 19 secondsSo here it is. Node rate limiter flexible.
9:03:249 hours, 3 minutes, 24 secondsBasically node limiter flexible counts and limits the number of actions by key and protects from DDOS and brute force attacks at any scale. It works with W
9:03:329 hours, 3 minutes, 32 secondskey radius, prisma, dynamo, process memory, cluster, pm2, memach, myql, sqlite and posgress. Also works in
9:03:419 hours, 3 minutes, 41 secondsthe browser. It offers atomic increments. All operations are in memory or distributed environment. Use atomic increments against race conditions. So
9:03:509 hours, 3 minutes, 50 secondsif that's something you were wondering about, yes, we solved the problem of race conditions by using this package.
9:03:569 hours, 3 minutes, 56 secondsIt is extremely fast. It is flexible, ready for growth and it is friendly.
9:04:029 hours, 4 minutes, 2 secondsNow, should it be used exactly the way I'm using it? Right? I'm using it as a simple rate limiting for premium
9:04:109 hours, 4 minutes, 10 secondscredits. I haven't really seen any advice not to do it. But since it solves uh a bunch of problems out of the box
9:04:189 hours, 4 minutes, 18 secondsand it's just an npm package, I thought it was a no-brainer to use it. Uh given the fact that we can easily add it to
9:04:259 hours, 4 minutes, 25 secondsPrisma, right? So that's why I chose this package. Uh I explored a bit what we should use. Should we develop our own and this ended up being the best
9:04:349 hours, 4 minutes, 34 secondsdecision. Great. So now that we have these three functions, a functions to get the usage status by the current user
9:04:419 hours, 4 minutes, 41 secondsID key, a function to consume credits for the current user, and the overall function to get the usage tracker, which right now doesn't make too much sense.
9:04:529 hours, 4 minutes, 52 secondsThis could have been a constant, but don't worry, it will make sense later.
9:04:579 hours, 4 minutes, 57 secondsSo now let's go ahead and let's actually create the procedure for the rate limiting here. So I'm going to go ahead
9:05:069 hours, 5 minutes, 6 secondsand go inside of source. I will create a new module called usage and in here I'm going to
9:05:139 hours, 5 minutes, 13 secondscreate server and then I'm going to create procedures.ts.
9:05:209 hours, 5 minutes, 20 secondsLet's go ahead and do get usage status from lib usage. Let's import create trpc
9:05:269 hours, 5 minutes, 26 secondsrouter from trpc init and protected procedure.
9:05:329 hours, 5 minutes, 32 secondsThen let's go ahead and export constage router to be create trpc router status
9:05:409 hours, 5 minutes, 40 secondsis going to be protected procedure query asynchronous method
9:05:479 hours, 5 minutes, 47 secondsand then in here let's open a try and catch block return null in the catch block and in the try attempt to get the
9:05:559 hours, 5 minutes, 55 secondsresult from await get usage status and return the
9:06:039 hours, 6 minutes, 3 secondsAs simple as that. So we we don't really worry about catching these errors and displaying something since this is a query, right? So once you've done this,
9:06:129 hours, 6 minutes, 12 secondsgo ahead and add that to your TRPC routers here. So usage usage router.
9:06:219 hours, 6 minutes, 21 secondsThere we go.
9:06:239 hours, 6 minutes, 23 secondsAnd yes, if you want to, you can move everything usage related into this module. Perhaps you can move it out of the usage. Um,
9:06:339 hours, 6 minutes, 33 secondsfor now I will leave it here. But yeah, if you want to you can create a lib here. I think it will make more sense actually. Uh, okay. Now that we have
9:06:419 hours, 6 minutes, 41 secondsthis, let's go ahead and let's create the usage component. So this one will be interesting. Let's go inside of source
9:06:509 hours, 6 minutes, 50 secondsmodules projects UI components and let's create usage.tsx.
9:06:579 hours, 6 minutes, 57 secondsSo in here I want to create an interface props which accepts the points and milliseconds before next refresh.
9:07:049 hours, 7 minutes, 4 secondsAnd for the imports let's go ahead and let's import link from next link. Let's go ahead and let's import the crown icon
9:07:149 hours, 7 minutes, 14 secondsfrom lucid react and let's import format duration and interval to duration from date fns. And finally the button from
9:07:249 hours, 7 minutes, 24 secondscomponents UI button. Now in here, let's go ahead and let's add the usage like so.
9:07:329 hours, 7 minutes, 32 secondsLet's return a div with a class name rounded top extra large bg background
9:07:409 hours, 7 minutes, 40 secondsborder border bottom zero adding 2.5.
9:07:469 hours, 7 minutes, 46 secondsanother div inside with a class name flex items center and gap x of two
9:07:569 hours, 7 minutes, 56 secondsin here a div which will have one more div inside and this inner deal div div will have a class name of text small
9:08:069 hours, 8 minutes, 6 secondsand let's go ahead and simply render the number of points that we have and then let's just say you have that many free
9:08:139 hours, 8 minutes, 13 secondscredits remaining and you can change this into a paragraph so we don't use so many divs. And then after that add
9:08:229 hours, 8 minutes, 22 secondsanother paragraph with a class name of text extra small and text muted foreground and inside
9:08:329 hours, 8 minutes, 32 secondsresets in then add a space like this
9:08:389 hours, 8 minutes, 38 secondsopen curly brackets format duration inside of it interval to duration
9:08:489 hours, 8 minutes, 48 secondsand set the start to be new date and set the end to be new date and inside date
9:08:569 hours, 8 minutes, 56 secondsdot now plus milliseconds before next and then add a new prop here I mean a
9:09:069 hours, 9 minutes, 6 secondsnew param in this interval to duration uh my apologies format duration function
9:09:129 hours, 9 minutes, 12 secondswhich takes the format to be months days and hours so it's going to display in those intervals.
9:09:229 hours, 9 minutes, 22 secondsAnd I think that's it. I think that's all we need. And then outside of this div right here,
9:09:339 hours, 9 minutes, 33 secondsgo ahead and add a button and a link inside. The link will have an href to
9:09:409 hours, 9 minutes, 40 secondsthe pricing page. We're going to render a crown icon and text upgrade. The
9:09:469 hours, 9 minutes, 46 secondsbutton will have an as child size small variant will be the new one that we
9:09:539 hours, 9 minutes, 53 secondscreated tertiary I I guess class name ML auto
9:09:599 hours, 9 minutes, 59 secondsnow that we have this let's go ahead and display the usage prop
9:10:069 hours, 10 minutes, 6 secondsin order to display it we have to go inside of our messages form
9:10:139 hours, 10 minutes, 13 secondscomponent so it is inside of projects UI components message form and then let's
9:10:209 hours, 10 minutes, 20 secondsgo ahead above this and let's do show usage and end and then render the usage
9:10:279 hours, 10 minutes, 27 secondslike so. Import the usage from dot / usage passing the points to be zero and milliseconds before next to be zero.
9:10:379 hours, 10 minutes, 37 secondsJust make sure you have imported the usage component.
9:10:419 hours, 10 minutes, 41 secondsSo now go into any random project that you have. So I'm going to go ahead and go inside of this one that I already
9:10:499 hours, 10 minutes, 49 secondshave. And once this loads, nothing changes. But if I go inside of the message form and if I change the show usage to true.
9:11:019 hours, 11 minutes, 1 secondAnd if I refresh, you will see zero free credits remaining, resets in nothing, and we have a button to upgrade. That's
9:11:099 hours, 11 minutes, 9 secondswhat I wanted to see. And now what we're going to do is we're actually going to fetch the usage from our new router. So
9:11:179 hours, 11 minutes, 17 secondslet's go ahead to the top here and before the form, let's do const data
9:11:249 hours, 11 minutes, 24 secondsusage to be use query which you can import from let me just find tanstack react query.
9:11:349 hours, 11 minutes, 34 secondsHere it is. And in here pass TRPC usage status like this query options.
9:11:469 hours, 11 minutes, 46 secondsAnd once you have the usage, let's go ahead and define the show usage to be double exclamation point and then usage.
9:11:559 hours, 11 minutes, 55 secondsAnd then in here you're going to do if you pass the points to be usage remaining points and in here usage milliseconds before next.
9:12:079 hours, 12 minutes, 7 secondsAnd now let's refresh. And it looks like it does not exist yet.
9:12:139 hours, 12 minutes, 13 secondsI think that is because yes, so it's not going to exist right now because in order for this to be written to the
9:12:219 hours, 12 minutes, 21 secondsdatabase, let me just start npx Prisma studio so you can see what I'm talking about. We have this new model called
9:12:299 hours, 12 minutes, 29 secondsusage. Right now we have the fields key points and expire but nothing exists here. It will not be created by itself.
9:12:389 hours, 12 minutes, 38 secondsIt will be created after the very first consume credits function is called. So the first time we do dot
9:12:469 hours, 12 minutes, 46 secondsconsume and take some points that's when it's going to be stored in the database.
9:12:529 hours, 12 minutes, 52 secondsSo let's go ahead and let's do that. So the first one we can do it for is the messages procedures. So let's go inside
9:12:599 hours, 12 minutes, 59 secondsof messages server procedures and in the create here let's go ahead and do that.
9:13:069 hours, 13 minutes, 6 secondsSo before we even create the message here let's go ahead and let's do await and
9:13:169 hours, 13 minutes, 16 secondslet's call consume credits like so. And now this will already work.
9:13:249 hours, 13 minutes, 24 secondsBut I want to do I want to just wrap this into try and catch because get
9:13:309 hours, 13 minutes, 30 secondsusage uh usage.conume will have an error object right because
9:13:379 hours, 13 minutes, 37 secondsthere is an error that we have to catch and that is the error which says you have no more points. So we have to catch that here.
9:13:479 hours, 13 minutes, 47 secondsSo let's do it by wrapping this inside of try like so and then open catch and let's get the error. And the first thing we're
9:13:569 hours, 13 minutes, 56 secondsgoing to do is we're going to check if error is actually an instance of error.
9:14:019 hours, 14 minutes, 1 secondThis is this basically means that something else happened. Right? This doesn't mean that we hit a rate limit.
9:14:099 hours, 14 minutes, 9 secondsThis just means something literally failed. Maybe it's the database connection, right? Because this works by connecting to the database. So maybe
9:14:179 hours, 14 minutes, 17 secondsthat failed. So it would be incorrect to just throw a TRPC error saying rate limit exceeded if consume credits fail.
9:14:249 hours, 14 minutes, 24 secondsThat's why in here I will throw new ERPC error here with the code
9:14:339 hours, 14 minutes, 33 secondsbad request and a message something went wrong. Right? So I have no idea what
9:14:419 hours, 14 minutes, 41 secondshappened here but it's not something we expect otherwise it is so if it is not an
9:14:489 hours, 14 minutes, 48 secondsinstance of error that means this is the rate limit response. So in here add a
9:14:559 hours, 14 minutes, 55 secondscode too many requests and add a message um let's see you have no more or maybe
9:15:039 hours, 15 minutes, 3 secondsyou have run out of credits something like that basically a message indicating to the user that they have no
9:15:119 hours, 15 minutes, 11 secondsmore points and now just for fun I'm going to modify my usage here and I'm going to set uh two free points
9:15:209 hours, 15 minutes, 20 secondsso let's go ahead and try it out now I'm going to do build a landing page. Something that reliably works for me.
9:15:289 hours, 15 minutes, 28 secondsAnd we should have done uh one thing here immediately. Oh yes, we forgot the ingest API. We forgot to do that. npx
9:15:389 hours, 15 minutes, 38 secondsinest cli. Whoops. My bad. And let me just refresh this. And you can see that now when you refresh you you have one
9:15:479 hours, 15 minutes, 47 secondsfree credit remaining which resets in 29 days and 23 hours. Do I have my Prisma Studio running? I do. So if I go here
9:15:559 hours, 15 minutes, 55 secondsnow in the usage and reset once we call this consume method, you can see that I have a key which is the user ID with
9:16:049 hours, 16 minutes, 4 secondssome prefix here. And I can see when this will expire and I can also see how many points I have spent so far. So I
9:16:119 hours, 16 minutes, 11 secondsonly spent one point so far. And basically that is how this is going to work. So just for fun I will do build a
9:16:189 hours, 16 minutes, 18 secondslanding page again. And this time uh I will refresh and I will have no free credits remaining. So if I try one more
9:16:269 hours, 16 minutes, 26 secondstime I should get the error you have run out of credits and we just got that error. Amazing. You successfully
9:16:339 hours, 16 minutes, 33 secondsimplemented usage. Now you probably noticed a little bit of a weird thing here. Uh and that is that uh we call
9:16:429 hours, 16 minutes, 42 secondsconsume credits before we even know that this succeeded.
9:16:509 hours, 16 minutes, 50 secondsSo if you want to, you could move this consume credits function into the background job and then only consume the
9:16:599 hours, 16 minutes, 59 secondscredit after you successfully save the result to the database. It will depend on what you want to protect, right? If
9:17:069 hours, 17 minutes, 6 secondsyou want to protect your resources, you will most likely add this before you even call uh something like inest. and
9:17:159 hours, 17 minutes, 15 secondsyou don't even want to spend any open AI credits if someone doesn't have enough credits, right? But if you were to pass this in the background job, you would
9:17:249 hours, 17 minutes, 24 secondsalso need to pass the user ID in the event data. So just be mindful of that.
9:17:299 hours, 17 minutes, 29 secondsAnd then you would also have to modify the consume credits overall because in here we rely on it using ALF and I'm not
9:17:369 hours, 17 minutes, 36 secondssure how this will work if it is invoked from a background job. I just think that it will throw user not authenticated
9:17:439 hours, 17 minutes, 43 secondsbecause background jobs by default are not authenticated. They are like web hooks. Right? So that's why I decided to
9:17:519 hours, 17 minutes, 51 secondsdo it in the procedure rather than in the background job. What we have to do is this to-do right here. So let's
9:17:589 hours, 17 minutes, 58 secondsremove this. Let's add queryclient dot invalidate queriesc usage status query options like this. So
9:18:089 hours, 18 minutes, 8 secondsnow when we create a new message, we automatically invalidate the queries.
9:18:139 hours, 18 minutes, 13 secondsAnd one easy way to reset this is to just go inside of your Prisma Studio and just bring back the points for your user
9:18:229 hours, 18 minutes, 22 secondsto be zero and click save. And this way you will not have spent any points. So you are now back at three credits
9:18:299 hours, 18 minutes, 29 secondsremaining. So if I go ahead and do test and send the message now, it should automatically upgrade. And there we go.
9:18:369 hours, 18 minutes, 36 secondsYou can see now it says one. So that is thanks to this invalidation here. And now we can also fix this to-do here as
9:18:439 hours, 18 minutes, 43 secondswell. So if error.code error data question mark code is equal to too many requests, let's go ahead and
9:18:539 hours, 18 minutes, 53 secondsdo router. We don't have router. So let's add it. Con router.
9:18:599 hours, 18 minutes, 59 secondsUse router from next navigation. Make sure you add this import.
9:19:069 hours, 19 minutes, 6 secondsAnd just do router.push. push forward slash pricricing like that. So now when you hit too many requests it will yeah
9:19:159 hours, 19 minutes, 15 secondsyou can see this is kind of the not perfect thing. If you spend your credit on a bad query we take the credit away from you and you don't get the result.
9:19:269 hours, 19 minutes, 26 secondsSo yeah not exactly perfect but I think it's pretty good so far. Right. Let's go ahead and just I purposely just going to
9:19:339 hours, 19 minutes, 33 secondsuse stupid queries now just to get that error. There we go. So once I run out of credits, I'm redirected to the pricing
9:19:419 hours, 19 minutes, 41 secondspage. Perfect. Now there is one more place where we need to do this exact thing. So I'm going to go inside of messages procedures just so I can copy
9:19:509 hours, 19 minutes, 50 secondsthe try and catch for my consume credits here. And now let's go ahead and go inside of projects server procedures.
9:20:029 hours, 20 minutes, 2 secondsprocedures right here and find the create right here and simply call that
9:20:109 hours, 20 minutes, 10 secondstry catch before you create a new project and import consume credits
9:20:209 hours, 20 minutes, 20 secondslike this and then go inside of project form component and we have to do the same thing.
9:20:289 hours, 20 minutes, 28 secondsSo first things first query client invalidate queries and pass in gRPC usage status
9:20:369 hours, 20 minutes, 36 secondsquery options and then in here
9:20:429 hours, 20 minutes, 42 secondsif error data code is too many requests do router.push/pricing.
9:20:509 hours, 20 minutes, 50 secondsThere we go. So now you have the exact same thing happening from here. So if you try test from here same thing happens. you have run out of credits and
9:20:589 hours, 20 minutes, 58 secondsyou are redirected here. Amazing. But right now, if we were to upgrade, nothing would change. So, let's go ahead
9:21:079 hours, 21 minutes, 7 secondsand fix that. So, in order to fix that, we have to go inside of our usage in the lib here. And then what we have to do uh
9:21:179 hours, 21 minutes, 17 secondsis we have to get inside of here the status. So has and let's do await out
9:21:279 hours, 21 minutes, 27 secondshon has premium access will be has plan and then pro. So how do I know it's pro?
9:21:379 hours, 21 minutes, 37 secondsWell because inside of the clerk configuration here the slug is pro. So
9:21:439 hours, 21 minutes, 43 secondsmaybe has row axis would be better. And then what I'm going to do is I'm just going to add const pro points 100 like
9:21:539 hours, 21 minutes, 53 secondsthis. And then if I have has proaxis, it's going to be row points. Otherwise,
9:22:009 hours, 22 minutesit's going to be three points like that. And here's a quick tip. If you also want to change
9:22:089 hours, 22 minutes, 8 secondsthe duration uh which I wouldn't recommend you know there there's also if you look at all of these apps chat GPT
9:22:179 hours, 22 minutes, 17 secondsuh claude lovable bolt replet I've noticed that not all of them have annual plans and the reason for that is it is
9:22:269 hours, 22 minutes, 26 secondssafer for them to bill you monthly uh simply because they don't know how many credits you can spend right so that's
9:22:339 hours, 22 minutes, 33 secondswhy I recommend not changing the duration for the proaxis. But even if you wanted to, the way this rate limiter
9:22:409 hours, 22 minutes, 40 secondsworks is that it will not update the duration, right? So you can update the points in the middle of an existing uh
9:22:489 hours, 22 minutes, 48 secondsdatabase record for rate limit, but you cannot do it for expiration just if you in case you were interested. But in this case, it doesn't really matter because
9:22:579 hours, 22 minutes, 57 secondsit is safer for us business-wise to track monthly usage and do monthly billing, right? Even if a user is on an
9:23:059 hours, 23 minutes, 5 secondsannual plan, we're just going to give them the same amount of points, 100 points per month.
9:23:119 hours, 23 minutes, 11 secondsGreat. Now that we have this done, uh let me just check. I think this is the only place here uh where I have to do
9:23:209 hours, 23 minutes, 20 secondsthat. And now let's just do a comparison. So when I click on one of my projects, it says zero free credits remaining. I will click upgrade. I will click subscribe.
9:23:309 hours, 23 minutes, 30 secondsPay with the card.
9:23:339 hours, 23 minutes, 33 secondsThat's it. That was clerk billing. I don't know if you just saw that, but that was it. I can now go inside of my
9:23:399 hours, 23 minutes, 39 secondsmanage account billing and I can find that I am on this plan. And from here, I can see cancel subscription. I can
9:23:489 hours, 23 minutes, 48 secondsswitch. I can remove monthly, whatever I want. So, I think this is insanely good.
9:23:549 hours, 23 minutes, 54 secondsAnd let's see if it worked. So, right now, uh I think that there we go. I have to refresh, right? And then it says 96
9:24:039 hours, 24 minutes, 3 secondsfree credits remaining. So we are have officially upgraded, right? I can now send another broken message. And it
9:24:119 hours, 24 minutes, 11 secondsworks. So we successfully added 100 points. It seems like it has subtracted the existing points we spent during the
9:24:199 hours, 24 minutes, 19 secondsfree trial. So that's something we could improve, but overall it works. When the user is pro, we use a larger amount of
9:24:289 hours, 24 minutes, 28 secondspoints here. So now what we have to do is we have to change the text. This is no longer free
9:24:369 hours, 24 minutes, 36 secondscredits. This is just credits now. And we can also remove all of the upgrade buttons. We no longer need them. So
9:24:439 hours, 24 minutes, 43 secondslet's do that. I'm going to go inside of the usage.tsx here and let's see. So this is from out
9:24:519 hours, 24 minutes, 51 secondswhich means that in here we can access has from use out from clerk next.js. JS
9:24:599 hours, 24 minutes, 59 secondsI have has here so I'm going to change let's go ahead and do const is has pro access
9:25:089 hours, 25 minutes, 8 secondshas plan pro has question mark plan pro so let's
9:25:169 hours, 25 minutes, 16 secondscheck if has pro access then it's an empty string otherwise it is free so now it should just say 95 credits remaining.
9:25:279 hours, 25 minutes, 27 secondsNo free credits. And let's hide this button if I don't have Pro Access.
9:25:379 hours, 25 minutes, 37 secondsSo, only show this for users who don't have Pro Access. There we go. And let's do the same thing in the project view.
9:25:459 hours, 25 minutes, 45 secondsSo, I'm just going to copy this. Go inside of the project view. I'm going to add it here.
9:25:549 hours, 25 minutes, 54 secondsI'm going to import use out from clerk nextjs. I'm going to move it here.
9:26:039 hours, 26 minutes, 3 secondsAnd then if I don't have pro access, I'm going to show this button right here. So
9:26:109 hours, 26 minutes, 10 secondsif I don't have pro access only, then show the button.
9:26:189 hours, 26 minutes, 18 secondsAnd there we go. Now the button doesn't exist. If you want to use the reverse logic, if you want to create const is free tier, then you would do has plan.
9:26:309 hours, 26 minutes, 30 secondsAnd be careful here. It's not free, right? You always have to go inside of here, inside of your plans, select the plan you want, and then check the slug.
9:26:429 hours, 26 minutes, 42 secondsIt's free user. This is the one you want. That's the mistake I made when I developed. So, I'm just warning you. But
9:26:509 hours, 26 minutes, 50 secondsin here, we used this type of logic, so it's fine. And I think that that might be it regarding billing. It was that
9:26:599 hours, 26 minutes, 59 secondssimple to do. I'm super impressed by this. No web hooks, nothing. I mean, 90% of this chapter wasn't even adding
9:27:069 hours, 27 minutes, 6 secondsbilling. It was adding usage rate limiting, right? So amazing, amazing
9:27:139 hours, 27 minutes, 13 secondsjob. I am super satisfied by this. So let's go ahead and merge all of this. I believe this chapter is called 17
9:27:209 hours, 27 minutes, 20 secondsbilling and let's just mark things. So we enabled billing, created pricing page, added rate limiting, updated the Prisma schema, created the util, we
9:27:299 hours, 27 minutes, 29 secondscreated the usage component and we updated procedures to trigger credit spend. Yeah, one more thing I wanted to show you. If you want to, you can also
9:27:379 hours, 27 minutes, 37 secondsimplement something like usage procedure and then in the middleware you could check for the uh consume status. Maybe
9:27:469 hours, 27 minutes, 46 secondsthat would be something fun for you to try and then you would have a more abstracted routers and procedures to
9:27:539 hours, 27 minutes, 53 secondswork with. Maybe homework for you if you want to after you finish the project.
9:27:599 hours, 27 minutes, 59 secondsOkay. So, I'm going to go ahead and I will create a new branch here.
9:28:069 hours, 28 minutes, 6 seconds17 billing like this. I'm going to stage all of my changes. I'm going to add 17
9:28:139 hours, 28 minutes, 13 secondsbilling commit here and I'm going to publish the branch. Just a quick reminder, there's a code rabbit free
9:28:219 hours, 28 minutes, 21 secondsextension which you can use and it will review all of your files for you.
9:28:279 hours, 28 minutes, 27 secondsNow, let's go ahead and let's open a pull request here and let's see the summary of our billing changes.
9:28:369 hours, 28 minutes, 36 secondsAnd here we have the summary. We introduced a usage and credit tracking system for users with separate limits for free and pro plans. We added a new
9:28:459 hours, 28 minutes, 45 secondspricing page with dynamic theming and a detailed pricing table. We added a usage component to display remaining credits
9:28:529 hours, 28 minutes, 52 secondsand reset time with an upgrade prompt for nonpro users. Navbar now dynamically changes style based on the scroll
9:29:009 hours, 29 minutesposition. As per the enhancements, project and message creation now deducts credits and prevents actions if credits
9:29:089 hours, 29 minutes, 8 secondsare exhausted, redirecting users to the pricing page when necessary. Usage status is now displayed and updated in
9:29:159 hours, 29 minutes, 15 secondsrelevant forms and components. The upgrade button is only shown to users without a pro plan. Perfect. So, that's
9:29:239 hours, 29 minutes, 23 secondsexactly what we did. As always, an more in-depth walkthrough here. And we have a sequence diagram uh explaining exactly
9:29:319 hours, 29 minutes, 31 secondswhat happens. Right? So when user tries to submit a and create a new project or a message, we call the mutation. In here
9:29:389 hours, 29 minutes, 38 secondswe call the consume credits and in here we call the database to check and update the usage. And then if we have credits
9:29:479 hours, 29 minutes, 47 secondsavailable, we return with succeed with success and we proceed with the creation. And then we simply return the creation results. But if credits are
9:29:559 hours, 29 minutes, 55 secondsexhausted, we throw too many requests and we redirect the user to pricing.
9:30:019 hours, 30 minutes, 1 secondAmazing. Exactly what we developed. And in here we also have the diagram for our get usage status method which simply reads the usage and it returns it.
9:30:129 hours, 30 minutes, 12 secondsPerfect. So in here we have some actionable comments. This one recommends adding a default false in case has
9:30:209 hours, 30 minutes, 20 secondsdoesn't load, which is actually a good advice. We could do that in here. It recommends wrapping this
9:30:289 hours, 30 minutes, 28 secondsinstead of try and catch and fall backs to soon.
9:30:349 hours, 30 minutes, 34 secondsSo, this can happen if the dates are incorrect. And yeah, this this might be a good idea because it's kind of u weird
9:30:429 hours, 30 minutes, 42 secondsthat the entire page fails just because the date renders incorrectly. So we could actually do this in the next
9:30:519 hours, 30 minutes, 51 secondschapter. Uh so we ensure some kind of security here so it doesn't ruin the entire experience. And then in the
9:30:589 hours, 30 minutes, 58 secondsusage.ts for all of the function, it recommends adding error tracking. But we don't have to do that simply because we track in the TRPC.
9:31:079 hours, 31 minutes, 7 secondsSo I'm going to merge this pull request.
9:31:099 hours, 31 minutes, 9 secondsI'm going to keep in mind the changes it suggested. And then I'm going to change back to my main branch here. And I'm going to click on the synchronize
9:31:179 hours, 31 minutes, 17 secondschanges button. And okay. And then I will confirm that we just merged that right here. 17 billing. Perfect.
9:31:269 hours, 31 minutes, 26 secondsAmazing. Amazing job. We have finished billing. and see you in the next chapter.
Chapter 19: 18 Agent Memory
9:31:349 hours, 31 minutes, 34 secondsIn this chapter, we're going to implement agent memory. Right now, our agent and our conversations have no
9:31:429 hours, 31 minutes, 42 secondscontext. The agent doesn't know the history of our conversations. It doesn't understand our previous messages. Each message is technically a new project.
9:31:559 hours, 31 minutes, 55 secondsLet's test that out. As always, ensure that you are on your main branch and feel free to synchronize the changes.
9:32:029 hours, 32 minutes, 2 secondsThe last chapter was 17 billing. Make sure you have npm rundev and injust running. And what I want you to do is I
9:32:119 hours, 32 minutes, 11 secondswant you to create a very simple build a landing page. The one we already did hundreds of times. So go ahead and build a simple landing page.
9:32:249 hours, 32 minutes, 24 secondsAnd here we have a very simple landing page. What if I just send it a message make it red?
9:32:319 hours, 32 minutes, 31 secondsWhat we would expect to happen is that it would understand that my previous message was build a landing page and it
9:32:399 hours, 32 minutes, 39 secondswill now change it to red. But the truth is that won't happen. Right? So it
9:32:469 hours, 32 minutes, 46 secondsdidn't modify the landing page. It's simply updated the page to be a red
9:32:529 hours, 32 minutes, 52 secondsthemed page. If I add add a calculator there, it won't understand what I mean,
9:33:009 hours, 33 minutesright? But what we want to is basically a landing page like this
9:33:069 hours, 33 minutes, 6 secondscolored in red or if I tell it build a calculator in the hero segment, I want a
9:33:149 hours, 33 minutes, 14 secondslittle calculator here instead of the rocket. So let's go ahead and make that possible. The reason we really really
9:33:219 hours, 33 minutes, 21 secondsneed this is not for continuous conversation. The more important reason is AI can make mistakes. You already saw that sometimes it forgot to add use
9:33:309 hours, 33 minutes, 30 secondsclient. And we want to allow our users to say, "Hey, you made a mistake. You forgot use client." Because if I just
9:33:399 hours, 33 minutes, 39 secondsgive it that right now, it will have no idea what I'm talking about. it has no idea that previously it created this. So
9:33:489 hours, 33 minutes, 48 secondslet's improve that. Let's fix that. What we're going to do is the following.
9:33:529 hours, 33 minutes, 52 secondsWe're going to go inside of our functions.ts
9:33:589 hours, 33 minutes, 58 secondsand in here let's go right after we do sandbox ID and let's do const
9:34:099 hours, 34 minutes, 9 secondsmessages and let's do await step.r run
9:34:159 hours, 34 minutes, 15 secondsget previous messages. It is an asynchronous arrow function like this.
9:34:229 hours, 34 minutes, 22 secondsAnd then let's do con formatted messages and give it a type of message which you
9:34:309 hours, 34 minutes, 30 secondscan import from inest agent kit. So I can put type message here as well
9:34:379 hours, 34 minutes, 37 secondsand set it to be an empty array. And now let's fetch the messages using await prisma messages
9:34:469 hours, 34 minutes, 46 secondsand let's do find many where project id is event data project
9:34:549 hours, 34 minutes, 54 secondsid like that and let's add order by created at descending
9:35:039 hours, 35 minutes, 3 secondsand then for con message of messages let's go ahead and push each message to
9:35:119 hours, 35 minutes, 11 secondsthis new array. The reason we are doing it like this is so that we have this type which cannot be uh broken. So
9:35:199 hours, 35 minutes, 19 secondsformatted messages dot push type text
9:35:269 hours, 35 minutes, 26 secondsro if message ro is assistant it will be lowerase assistant otherwise lowerase
9:35:369 hours, 35 minutes, 36 secondsuser like this. And the content is going to be message dot content. And let me
9:35:449 hours, 35 minutes, 44 secondsjust see what uh what is the problem here. Formatted messages. Oh, it should be an array of message. My my apologies.
9:35:549 hours, 35 minutes, 54 secondsThere we go. And then let's go ahead and let's return formatted messages.
9:36:039 hours, 36 minutes, 3 secondsThere we go. So right now it it is going to have context of the entire conversation. and it will know exactly what we told it. It will know exactly
9:36:109 hours, 36 minutes, 10 secondswhat it responded back to us. So now let's go ahead and let's create a const state to be create state from agent kit
9:36:209 hours, 36 minutes, 20 secondsagain. So create state from inest agent kit. Let's give it a type of agent state.
9:36:289 hours, 36 minutes, 28 secondsSo we already have agent state defined right here. We have summary and files. And let's go ahead and do the following.
9:36:379 hours, 36 minutes, 37 secondsThe first object in here will be summary make it empty and files make them empty.
9:36:449 hours, 36 minutes, 44 secondsAnd then in the second object you will have messages which will be previous messages.
9:36:519 hours, 36 minutes, 51 secondsAnd now we have the state. So now we have to add this state uh to a couple of places. So let's go ahead and find our
9:37:009 hours, 37 minutesnetwork execution right here. And let's add default state to be the state from above. And in the
9:37:099 hours, 37 minutes, 9 secondsresult when we run it, let's add state and make it state or you can use the shorthand operator like this. Perfect.
9:37:189 hours, 37 minutes, 18 secondsSo let's go ahead and do this again. Build a landing page. Let's do that.
9:37:259 hours, 37 minutes, 25 secondsBuild a landing page. And let's follow the context here. As you can see, we now have a step get previous messages. And
9:37:329 hours, 37 minutes, 32 secondsyou can now see that we included all of the new all of the older messages even the responses and the user messages
9:37:419 hours, 37 minutes, 41 secondshere. So now the code agent as you can see has messages. So it knows exactly what we ask it to do now. So let's go
9:37:509 hours, 37 minutes, 50 secondsahead and wait for this result right here.
9:37:559 hours, 37 minutes, 55 secondsWe should see it any second. And you can see how it preserved the red color because that's what we asked previously.
9:38:029 hours, 38 minutes, 2 secondsSo it already knows the context. And now this is what I'm going to say. Add a calculator in the hero segment.
9:38:129 hours, 38 minutes, 12 secondsSo I didn't tell it to create a landing page. I didn't tell it anything other than this. And let's see how well it will do.
9:38:219 hours, 38 minutes, 21 secondsOf course, it can make a mistake even at this point. But now it has the context.
9:38:269 hours, 38 minutes, 26 secondsIt knows that add a calculator in the hero segment is the message after build a landing page and it is a message after
9:38:359 hours, 38 minutes, 35 secondsuh created a polished fully responsive red themed landing page. So let's see if it was able to do this or not.
9:38:459 hours, 38 minutes, 45 secondsWe should see any second now. Uh and looks like it wasn't able to do it. Let me refresh just in case and let's see the code.
9:38:569 hours, 38 minutes, 56 secondsLooks like we didn't add it. So, let I just want to make sure that I didn't accidentally maybe do the
9:39:049 hours, 39 minutes, 4 secondsincorrect order of loading the messages here.
9:39:109 hours, 39 minutes, 10 secondsCreated at descending. I think that should be okay. Let's try again. You
9:39:179 hours, 39 minutes, 17 secondsdidn't add the calculator component in the hero page. add the calculator component.
9:39:269 hours, 39 minutes, 26 secondsSo in the previous examp when I tried this privately off camera, it worked for me. So you can see that AI is sometimes
9:39:349 hours, 39 minutes, 34 secondsa bit unpredictable, but I just want to tune it, you know. Uh we might even have to modify the prompt for this. We might
9:39:439 hours, 39 minutes, 43 secondshave to tell it you have context of all older messages. You can use older messages, right? But you can already see
9:39:519 hours, 39 minutes, 51 secondsa slight improvement, right? Because right now when we asked it to create that landing page, uh it's it made it red, right? So it understood the
9:39:599 hours, 39 minutes, 59 secondscontext, but I have a feeling it is still not understanding entirely what we want. Let's see if this will be better.
9:40:069 hours, 40 minutes, 6 secondsAnd there we go. We now have a very very simple calculator in our landing page.
9:40:139 hours, 40 minutes, 13 secondsGreat. So this is exactly what we asked.
9:40:169 hours, 40 minutes, 16 secondsLet's try and do make it green now just to make sure that this is the last
9:40:239 hours, 40 minutes, 23 secondsmessage it sees. Right? I want I'm okay with adding state. I just don't want to make it so that it conf it's confused
9:40:319 hours, 40 minutes, 31 secondsabout what is the latest message. So let's follow along in the running here.
9:40:369 hours, 40 minutes, 36 secondsSo yes, make it green is the first message in the array here. Maybe that should be the opposite. I don't know
9:40:459 hours, 40 minutes, 45 secondsbecause maybe it's now thinking that this the last message in the array is the newest one. And let's see the coding
9:40:539 hours, 40 minutes, 53 secondsagent. I think the coding agent understands the same thing maybe or not.
9:41:009 hours, 41 minutesYeah, in here it also the last message here is build a landing page. So I keep thinking that maybe
9:41:079 hours, 41 minutes, 7 secondsor maybe not. Yeah, you can see that it preserved the fact that it's a landing page. It added the calculator and it ma changed it green. So obviously now it
9:41:169 hours, 41 minutes, 16 secondsunderstands what we are doing. So I'm going to go ahead and add a little to-do here.
9:41:249 hours, 41 minutes, 24 secondsTo-do change to ascending if AI does not understand what is the latest message.
9:41:369 hours, 41 minutes, 36 secondsBut I think that it works pretty well. I think that it understands that make it green refers to the landing page which I
9:41:449 hours, 41 minutes, 44 secondsscolded it for because it didn't add the calculator. So now it has both the calculator and it is green. And I think
9:41:509 hours, 41 minutes, 50 secondsthat's exactly what we wanted. So let's try and just do one more time make sure to use separate component files.
9:42:029 hours, 42 minutes, 2 secondsAnd while this is happening uh let's go ahead and do the following. I want you to visit my uh public assets folder or
9:42:109 hours, 42 minutes, 10 secondsthe source code. You can use the link in the description or the link you can see on the screen. And in here I added a new file called additional prompts. And in
9:42:199 hours, 42 minutes, 19 secondshere I have the response prompt and the fragment title prompt. So go ahead and copy this entire file. Go inside of your prompt.ts
9:42:289 hours, 42 minutes, 28 secondsand at the end of it or if it's easier you know at the top just add those two and export both of them. So export the
9:42:359 hours, 42 minutes, 35 secondsfragment title and export the response prompt. We're now going to use this to create two more agents so they create
9:42:439 hours, 42 minutes, 43 secondsbetter responses and so they create a proper name here. So let's see what it did. There we go.
9:42:519 hours, 42 minutes, 51 secondsSo it understood the context. It it seems to again made it red. Uh I keep thinking that the way we are loading
9:42:589 hours, 42 minutes, 58 secondsthese previous messages maybe isn't perfect. So, you're going to have to tweak that a little bit or maybe you can somehow
9:43:069 hours, 43 minutes, 6 secondsum maybe you can somehow modify it so that it knows you can add it in the content
9:43:129 hours, 43 minutes, 12 secondslike maybe let's see I'm thinking of keeping a track of the index and then maybe we can modify the
9:43:209 hours, 43 minutes, 20 secondscontent and like say first message and then the message content
9:43:279 hours, 43 minutes, 27 secondslike something like that and then maybe In here we can keep track of index and then replace this with the index for example. Maybe that can instruct it better to understand what's going on.
9:43:399 hours, 43 minutes, 39 secondsBut uh what's important is that it at least understands the last message right that's what I want to make sure. So I
9:43:469 hours, 43 minutes, 46 secondsjust told it to use separate components and that's exactly what it did. It preserved the fact that it's a landing page but it made it uh into separate
9:43:559 hours, 43 minutes, 55 secondscomponents. Let's do make it green or let's do make it yellow. this time you know keep testing it make sure that it's
9:44:029 hours, 44 minutes, 2 secondslistening to you and you can play around with changing the order here you can use that idea that I told you uh you can
9:44:109 hours, 44 minutes, 10 secondseven explore you know in justest documentation about the state maybe in there we can find something uh I will of course research off camera and in the
9:44:189 hours, 44 minutes, 18 secondsnext chapter I will tell you more information if I find out anything new but what I want to do now is the following
9:44:269 hours, 44 minutes, 26 secondsin the function here after the network finishes. So right here after we get the result, I want to go ahead and I want to
9:44:359 hours, 44 minutes, 35 secondsdo uh the following. So I want to create an agent called fragment
9:44:449 hours, 44 minutes, 44 secondstitle generator and that will be create agent like this. And let me just see I already forgot how do we create agents.
9:44:579 hours, 44 minutes, 57 secondsSo the name will be something and then the description and then the system and then model. Okay. So I will just copy this.
9:45:049 hours, 45 minutes, 4 secondsLet's add it all over here. So the name will be fragment title generator.
9:45:119 hours, 45 minutes, 11 secondsA description will be a fragment title generator.
9:45:189 hours, 45 minutes, 18 secondsAnd for the model we can use open AI and you can use a cheaper model. You can use 4.0 for example. And you can remove the default parameters here. So in here use
9:45:279 hours, 45 minutes, 27 secondsa cheaper model because this will just generate text and in here go ahead and use the fragment title prompt which we
9:45:349 hours, 45 minutes, 34 secondsjust added and also now import the response prompt.
9:45:409 hours, 45 minutes, 40 secondsSo let's go ahead and use this. Now after this go ahead and copy it and now this will be response generator.
9:45:519 hours, 45 minutes, 51 secondsChange this to be response generator and a response generator and change the
9:45:579 hours, 45 minutes, 57 secondssystem here uh to be response prompt. And now you're going to
9:46:049 hours, 46 minutes, 4 secondsdefine two outputs. The first output here will be t uh fragment title
9:46:129 hours, 46 minutes, 12 secondsawait fragment title generator run. And inside of here you will pass the result state data summary.
9:46:249 hours, 46 minutes, 24 secondsAnd then you're going to copy this. And this will be response response generator from the same thing.
9:46:329 hours, 46 minutes, 32 secondsAnd then you're going to go inside of save result.
9:46:389 hours, 46 minutes, 38 secondsAnd for the fragment title, go ahead and do the following. Fragment title dot uh
9:46:459 hours, 46 minutes, 45 secondsfirst in the array dot type is equal to text fragment title first in the array
9:46:529 hours, 46 minutes, 52 secondsdot content otherwise just fragment like this and let me just see content is
9:47:009 hours, 47 minutesthis um okay let me just build a little function uh so we don't have to do this in one
9:47:089 hours, 47 minutes, 8 secondsfile so we have fragment title output and we have response output here.
9:47:179 hours, 47 minutes, 17 secondsSo I'm going to just collapse this and then in here I'm going to do con
9:47:269 hours, 47 minutes, 26 secondsgenerate fragment title and I will do
9:47:349 hours, 47 minutes, 34 secondsif fragment title output type is not equal first in the array of course
9:47:429 hours, 47 minutes, 42 secondsthe text return fragment ment otherwise let's go ahead and do if
9:47:509 hours, 47 minutes, 50 secondsfragment title generator first in the array content
9:47:569 hours, 47 minutes, 56 secondsand let's check maybe if is array can I do this
9:48:059 hours, 48 minutes, 5 secondsuh array is array I think fragment title output because this can
9:48:149 hours, 48 minutes, 14 secondsbe an array Okay, then let's return fragment title output first in the
9:48:219 hours, 48 minutes, 21 secondsarray.content.m map text join
9:48:349 hours, 48 minutes, 34 secondslike this.
9:48:369 hours, 48 minutes, 36 secondsSo basically this should always return a string and otherwise just return
9:48:469 hours, 48 minutes, 46 secondsin the else here just return the content
9:48:569 hours, 48 minutes, 56 secondsand let me just see so this is a type of string here uh and well you can just add another
9:49:059 hours, 49 minutes, 5 secondssafety one fragment And okay, but this is unreachable. So I don't know why exactly uh string is not uh okay. Yeah, my bad.
9:49:199 hours, 49 minutes, 19 secondsAnd now go ahead and copy this and call this generate response. And basically the same thing.
9:49:299 hours, 49 minutes, 29 secondsSo response output.
9:49:349 hours, 49 minutes, 34 secondsAnd in here we're going to just set the default to be here you go.
9:49:429 hours, 49 minutes, 42 secondsOtherwise it can be this. And now when we have those two in here we can put generate fragment title.
9:49:529 hours, 49 minutes, 52 secondsAnd in the content we can do generate response.
9:49:589 hours, 49 minutes, 58 secondsThere we go. And this should now improve uh our app. So let's see if that is uh
9:50:069 hours, 50 minutes, 6 secondstrue or not. So I'm going to do build a let's actually start a new project just to make sure everything is clear. So
9:50:129 hours, 50 minutes, 12 secondsbuild a calculator app like this. And let's follow the ingest
9:50:209 hours, 50 minutes, 20 secondsto see if we're going to mess something up or not. I mean technically I don't think it will ever be an array of items
9:50:289 hours, 50 minutes, 28 secondsthat we're going to have to join like this. It will almost always certainly be just this, but uh yeah, I guess we're
9:50:379 hours, 50 minutes, 37 secondstrying it out. So, we successfully did this fragment title and we successfully
9:50:449 hours, 50 minutes, 44 secondsdid response generation. So, let's see what it came up with. There we go.
9:50:499 hours, 50 minutes, 49 secondsHere's what I built for you. A snazzy calculator app with a sleek responsive design. And we have a name this time for the fragment calculator app. So that's
9:50:589 hours, 50 minutes, 58 secondswhat I wanted us to achieve, right? If you don't want this, you don't have to use it. I mean, the app worked just fine
9:51:069 hours, 51 minutes, 6 secondsbefore this. So if this for some reason messes up your app, you don't have to use it. Of course, I just thought it would be, you know, fun to add that as
9:51:159 hours, 51 minutes, 15 secondswell. And you can definitely write this in a better way. I mean, starting with the fact that we can just do con title and just make it this.
9:51:269 hours, 51 minutes, 26 secondsSo let's do output and just make it this like so.
9:51:339 hours, 51 minutes, 33 secondsThere we go. This is already better. And then you can do the same thing here. Con output.
9:51:419 hours, 51 minutes, 41 secondsChange this to this. And then replace all instances here.
9:51:509 hours, 51 minutes, 50 secondsThere we go.
9:51:529 hours, 51 minutes, 52 secondsAnd you can probably also just use a single function because it's exactly the same. So let's maybe do parse
9:52:029 hours, 52 minutes, 2 secondsuh agent output. And in here let's go ahead and see this is a type of uh
9:52:109 hours, 52 minutes, 10 secondsmessage or array. So let's try value message array like that. And then can I just use
9:52:209 hours, 52 minutes, 20 secondsvalue con output value first in the array? Yeah, that
9:52:299 hours, 52 minutes, 29 secondsworks as well. So parse agent output then is the only function you need
9:52:379 hours, 52 minutes, 37 secondsand you can then put it maybe at the top of the file and we are later going to move it to libs.
9:52:429 hours, 52 minutes, 42 secondsSo basically parse agent output and in here it accepts the value which is a message which is an array. The message
9:52:509 hours, 52 minutes, 50 secondsis a type of message from agent kit. And now that we have parse agent output.
9:52:569 hours, 52 minutes, 56 secondsLet's go down here and keep the fragment title generator, keep the response generator, keep the
9:53:049 hours, 53 minutes, 4 secondstwo outputs and remove generate response function.
9:53:109 hours, 53 minutes, 10 secondsAnd now what you're just going to do is parse.
9:53:159 hours, 53 minutes, 15 secondsHow did I call the function? Uh, parse agent output.
9:53:219 hours, 53 minutes, 21 secondsAnd in here, you're going to parse response output.
9:53:299 hours, 53 minutes, 29 secondsAnd in here, you're going to pass fragment title output. There we go.
9:53:389 hours, 53 minutes, 38 secondsAnd then you can move this function to utils here in the ingest.
9:53:439 hours, 53 minutes, 43 secondsSo export const parse agent output and import message from inent uh inest kit here. There we go.
9:53:559 hours, 53 minutes, 55 secondsThen you can remove it from here. Find some place you're using it. And then there we go. Import from utils like
9:54:049 hours, 54 minutes, 4 secondsthis. And let's just do a sanity check here. Uh make the calculator use glossy glassy design or something like that.
9:54:179 hours, 54 minutes, 17 secondsThe only thing I'm trying to do here is again confirm it can kind of understand the context of my previous messages and
9:54:259 hours, 54 minutes, 25 secondsthat it will give me a nice response with a name for my fragment. So we can follow again inside of the running here to make sure that's what's happening.
9:54:379 hours, 54 minutes, 37 secondsThere we go. Fragment title generator response generator.
9:54:429 hours, 54 minutes, 42 secondsAnd let's see. Here's what I built for you. A sleek glassy design calculator app with a modern twist. Very cool. So
9:54:509 hours, 54 minutes, 50 secondsit understood that we just wanted a glassy design on top of our previous app.
9:54:579 hours, 54 minutes, 57 secondsAmazing. I'm very very satisfied with this. Uh, and I think that marks the end of this chapter. As always, you know,
9:55:059 hours, 55 minutes, 5 secondsyour app worked just fine up until this point. So, don't let uh this ruin your project if you don't like it or, you
9:55:149 hours, 55 minutes, 14 secondsknow, feel free to research a bit yourself about whether this should be descending, ascending. Uh, and if this
9:55:229 hours, 55 minutes, 22 secondsis failing for whatever reason, the fragment title generator and the response generator, you can also remove them. You don't need them. And make sure
9:55:299 hours, 55 minutes, 29 secondsto just use a cheaper model here simply because you can even use an entirely new model, you know, like uh Gemini, Grock,
9:55:389 hours, 55 minutes, 38 secondswhatever, because we are not calling any tools here. So, just make sure this is something cheap so it doesn't spend your credits for no reason when it's just
9:55:469 hours, 55 minutes, 46 secondsgenerating some text. Uh, amazing. So, 18 agent memory. Let's go ahead and review that. I'm opening a new branch here.
9:55:569 hours, 55 minutes, 56 seconds18 agent memory.
9:55:599 hours, 55 minutes, 59 secondsI'm going to stage all of my changes. 18 agent memory. And I'm going to commit and I'm going to publish the branch.
9:56:099 hours, 56 minutes, 9 secondsLet's go ahead and open a pull request. And let's review our changes.
9:56:189 hours, 56 minutes, 18 secondsAnd here we have the summary. We enhanced message handling by retrieving and formatting previous messages for
9:56:249 hours, 56 minutes, 24 secondsimproved agent interactions. We added automated generation of concise userfriendly summary messages and short
9:56:329 hours, 56 minutes, 32 secondsdescriptive fragment titles. We updated the process for saving results to use dynamically generated summaries and
9:56:399 hours, 56 minutes, 39 secondstitles instead of static content. And we introduced utility functions and structured prompt templates to standardize agent outputs. And in here
9:56:489 hours, 56 minutes, 48 secondswe have just one comment and that is that we should probably check if the value is actually valid. Um so yeah we
9:56:569 hours, 56 minutes, 56 secondscould add this as well and I just noticed that we return the text fragment as placeholder even though we use this
9:57:049 hours, 57 minutes, 4 secondsboth for the response and for the fragment title. So, I should probably add a new value, something like fallback value, something like that. We'll see.
9:57:159 hours, 57 minutes, 15 secondsUh, nevertheless, very satisfied with this one. I will research before the next chapter if there's something we can
9:57:219 hours, 57 minutes, 21 secondsdo uh better when it comes to adding message history. But I think this is as good as we can do right now. Uh, great.
9:57:319 hours, 57 minutes, 31 secondsSo let's go ahead and change this to main and let's synchronize our changes and we should see our new poll request
9:57:409 hours, 57 minutes, 40 secondsbeing merged. Amazing. Uh I believe that marks the end of this chapter. Amazing amazing job and see you in the next one.
Chapter 20: 19 Bug Fixes
9:57:509 hours, 57 minutes, 50 secondsIn this chapter, we're going to go over some final bug fixes and improvements in our application. This will include
9:57:589 hours, 57 minutes, 58 secondslearning how to increase the sandbox expiration, making A2B template private so no one else other than your team can
9:58:069 hours, 58 minutes, 6 secondsuse it, improving our conversation history from the previous chapter, and overall error handling improvement in
9:58:139 hours, 58 minutes, 13 secondsour application. So, let's start by learning how to make our sandboxes last longer. As always, ensure that you're on
9:58:219 hours, 58 minutes, 21 secondsyour main branch and make sure you have synchronized your changes. The last chapter we we merged was 18 agent
9:58:279 hours, 58 minutes, 27 secondsmemory. So let's learn how to increase sandbox expiration. Right now inside of
9:58:349 hours, 58 minutes, 34 secondsour application if I visit uh even this one 4 minutes ago, okay, this one works.
9:58:409 hours, 58 minutes, 40 secondsBut if you visit anything older than 5 minutes ago, it will show this the sandbox wasn't found, which is not ideal if you're doing some presentation or if
9:58:499 hours, 58 minutes, 49 secondsyou're showcasing this to someone. So here's what how you can increase your timeout. So the sandbox life cycle it
9:58:569 hours, 58 minutes, 56 secondswill stay alive for 5 minutes by default but you can change that using the timeout parameter. Now of course depending if you are on free tier or if
9:59:049 hours, 59 minutes, 4 secondsyou're on premium tier you have different limits. On premium tier you can keep it alive up for 24 hours but on free tier which we are on we can keep it
9:59:139 hours, 59 minutes, 13 secondsalive for 1 hour. So for example let's find something in between. Let's use uh half an hour. I think that's a fair
9:59:219 hours, 59 minutes, 21 secondsamount. So all you can do is go inside of your functions inside of the ingest folder and in here when you create it go
9:59:309 hours, 59 minutes, 30 secondsahead and do await sandbox dot set timeout and now you have to enter in
9:59:379 hours, 59 minutes, 37 secondsmilliseconds right and in here you can see so the maximum time a sandbox can can be kept alive is 24 hours for pro
9:59:469 hours, 59 minutes, 46 secondsusers and 1 hour for hobie users. So, if you want to, you can set this and then this will be alive for an hour. But keep
9:59:569 hours, 59 minutes, 56 secondsin mind, the longer you put this, the more credits are you going to spend. So, what I recommend is, you know, find a middle ground.
10:00:0510 hours, 5 secondsThis is half an hour. So, you can put this instead.
10:00:0910 hours, 9 secondsUh, and you also have this util here, I believe, get sandbox. Now, in here,
10:00:1810 hours, 18 secondsit's also important to increase it, but you don't have to put half an hour here,
10:00:2510 hours, 25 secondsbut um yeah, let's be consistent. And let's put half an hour here as well. I just want to be careful and I don't want you to spend all your credits, but
10:00:3410 hours, 34 secondsperhaps maybe add this to some kind of constant here. Types.ts DS export const
10:00:4110 hours, 41 secondssandbox timeout and add a comment 30 minutes in milliseconds like this. And then you can
10:00:4910 hours, 49 secondsconsistently use it in different places and you can easily change it if you change your mind. Let's go ahead and add that here. Sandbox timeout. There we go.
10:01:0010 hours, 1 minuteSo now we know how to increase our sandbox timeout. And I will try this out. I will do build a uh calculator app
10:01:0810 hours, 1 minute, 8 secondshere and you know at the end of this chapter I'll I'll see if it still exists if it manages to do it without errors.
10:01:1610 hours, 1 minute, 16 secondsSo let's see what else do we have to do here. We just learned how to increase our sandbox expiration. Uh I'm going to leave this for last simply because we
10:01:2510 hours, 1 minute, 25 secondsare in the middle of generating. Uh so let's go here. Improving conversation history. So in the previous chapter we
10:01:3310 hours, 1 minute, 33 secondslearned that we can add previous messages and we can add it to the state and I've been experimenting a bit and I
10:01:4010 hours, 1 minute, 40 secondsthink I found kind of a perfect combination.
10:01:4510 hours, 1 minute, 45 secondsSo what I think we have to do is we have to limit our messages history because
10:01:5110 hours, 1 minute, 51 secondsthe longer the history the more confused the model gets. At least that was my experience. So, I limited it to five
10:01:5910 hours, 1 minute, 59 secondsmessages. I'm pretty sure it would work great with 10 messages also, but five was somehow the sweet spot where I was
10:02:0610 hours, 2 minutes, 6 secondsable to keep a conversation going and do some small changes uh constantly. And then the proper one is actually created
10:02:1510 hours, 2 minutes, 15 secondsat descending, but make sure that you do reverse in here. So, it's actually
10:02:2210 hours, 2 minutes, 22 secondsascending. You need ascending here. But since we're limiting the take, we need to offset, right? You can also do the
10:02:3010 hours, 2 minutes, 30 secondsoffset thing. Actually, it is skipped in Prisma, but honestly, I'm not really sure if we need to do that. And we can
10:02:3710 hours, 2 minutes, 37 secondsjust do it descending and then just reverse them here. And this, in my opinion, gave me much much better
10:02:4410 hours, 2 minutes, 44 secondsresults than anything else. So again, I invite you to experiment. But once I did
10:02:5210 hours, 2 minutes, 52 secondsthis, so I keep this at descending. I limit this take to five and I reverse the formatted messages. And this made
10:02:5810 hours, 2 minutes, 58 secondsthe AI understand much better what I'm building. So for example, let me do make it glassy design.
10:03:0710 hours, 3 minutes, 7 secondsI'm going to try and do this. So we're going to see. Okay. So we did that. We improved the conversation history. And
10:03:1610 hours, 3 minutes, 16 secondsnow let's talk about error handling. So, uh, error handling in our app currently doesn't exist outside of TRRPC
10:03:2410 hours, 3 minutes, 24 secondsprocedures, which means that all of our suspense can go wrong. So, here's what
10:03:3010 hours, 3 minutes, 30 secondswe can do. We can do npm install react error boundary.
10:03:3710 hours, 3 minutes, 37 secondsAnd let me show you my version here. So, package.json React error boundary 6.0.0.
10:03:4610 hours, 3 minutes, 46 secondsAnd then let's go ahead and find a random suspense here for example for loading the project. So how about we add
10:03:5410 hours, 3 minutes, 54 secondserror boundary here and wrap it in suspense.
10:04:0110 hours, 4 minutes, 1 secondThis is how you do error handling if you want to do it on a segment level. Nex.js
10:04:0910 hours, 4 minutes, 9 secondsalso comes with its own error boundaries which are written the same as pages. you
10:04:1610 hours, 4 minutes, 16 secondswould have error.tsx. You can of course add this as well, but I want to show you this. So, uh I'm not sure if this is
10:04:2310 hours, 4 minutes, 23 secondserror boundary from react error boundary. Okay, I think it needs to be like this.
10:04:3210 hours, 4 minutes, 32 secondsThere we go. And then in here you would add a fallback error like this. So, first let me just check if this is working. There we go.
10:04:4310 hours, 4 minutes, 43 secondsGlassy design. glassy calculator you can see it understands the context perfect so let me show you this now uh so first
10:04:5110 hours, 4 minutes, 51 secondswithout error boundary so comment out error boundary I'm working inside of project ID let's go inside of uh
10:04:5910 hours, 4 minutes, 59 secondsprojects get one here and in the query I want you to throw new tRPC error here
10:05:0710 hours, 5 minutes, 7 secondswith code bad request and refresh here And in here you can see
10:05:1410 hours, 5 minutes, 14 secondsit's loading project. It's loading project.
10:05:1910 hours, 5 minutes, 19 secondsOh uh yes my apologies. No u uh I I'm trying to demonstrate this but I forgot we commented out error boundary and this happens then this is obviously not good.
10:05:3010 hours, 5 minutes, 30 secondsWe don't want this to happen. That's why we have error boundaries like this. So go ahead and refresh now. And again it
10:05:3810 hours, 5 minutes, 38 secondswill keep trying to do this for 3 seconds for three attempts. one two three and then finally it will hit the
10:05:4710 hours, 5 minutes, 47 secondserror and this is what you can then design as your error page right so what's important is that the error
10:05:5510 hours, 5 minutes, 55 secondsboundary is around suspense now this doesn't make too much sense because I am wrapping the whole page
10:06:0310 hours, 6 minutes, 3 secondshere right but imagine if course let's just remove this TRPC error from here
10:06:1210 hours, 6 minutes, 12 secondsimagine the case where I'm doing where is it UI components where I have the project header here right so let me see
10:06:2110 hours, 6 minutes, 21 secondswhere do I render project header in the project view so go inside of your project view and in here we have suspense so the error boundary from
10:06:3110 hours, 6 minutes, 31 secondsreact error boundary would make a lot of sense here fallback project header error
10:06:4010 hours, 6 minutes, 40 secondslike that or in here error boundary again around this suspense
10:06:4810 hours, 6 minutes, 48 secondswith the fallback messages container error.
10:06:5410 hours, 6 minutes, 54 secondsSo now let's say we go inside of the messages here. Let's go uh inside of messages get many and let me just try
10:07:0310 hours, 7 minutes, 3 secondsand do this. So throw new tRPC error here. code bad request. So something happened here and let's go ahead and
10:07:1110 hours, 7 minutes, 11 secondsrefresh here. You can see that the project has loaded and you can see it's trying to load messages. It's trying to load the messages until eventually it
10:07:2010 hours, 7 minutes, 20 secondsfails. And since we added the boundary, we only see messages container error.
10:07:2510 hours, 7 minutes, 25 secondsBut if you didn't have that here in the project view, if you didn't wrap the error boundary, let's see what would
10:07:3210 hours, 7 minutes, 32 secondshappen then. So let's refresh again. So it's loading messages. It's loading messages and you already know what will
10:07:4010 hours, 7 minutes, 40 secondshappen. The entire screen will error. So just like minimizing the loading state, you can use the error boundary to
10:07:4810 hours, 7 minutes, 48 secondsminimize the error state. So that's what you would do, right? That's why we use the error boundary. So I would recommend, you know, finding all the suspenses that you use in your project.
10:07:5910 hours, 7 minutes, 59 secondsAnd I think these are the only three. So we just added to all of them, right? And you can also do the following. You can
10:08:0610 hours, 8 minutes, 6 secondsalso add inside of source app. You can add a page called error.tsx.
10:08:1210 hours, 8 minutes, 12 secondsNow this has to be a client component and in here make sure to call it error page. Don't call it error. This is a
10:08:1910 hours, 8 minutes, 19 secondsreserved keyword. Call it error. And you can return here global error. You can of course design this however you want. But
10:08:2810 hours, 8 minutes, 28 secondsthis is useful. So this right now doesn't do much. But let's go ahead and do this. Let's go inside of project ID
10:08:3510 hours, 8 minutes, 35 secondsand let's say we forgot to wrap this error boundary here.
10:08:4010 hours, 8 minutes, 40 secondsSo now uh and yes uh also go to project view and comment out the error boundary here.
10:08:5010 hours, 8 minutes, 50 secondsNow the error the global error takes care, right? So that's how the global error works. So if I didn't have this,
10:08:5710 hours, 8 minutes, 57 secondslet me just remove it. Now if I didn't have this, this is what would happen.
10:09:0210 hours, 9 minutes, 2 secondsLet's say we forgot all the inner error boundaries, right?
10:09:0710 hours, 9 minutes, 7 secondsThis happens. So, this is the one thing you don't want to happen. This error just looks ugly. It looks like something really, really broken, right? That's why
10:09:1610 hours, 9 minutes, 16 secondsyou want to make sure that you have the inner error boundaries. You want to make sure that you have your individual page
10:09:2410 hours, 9 minutes, 24 secondserror boundaries and you should also have your app error.tsx the sx simply because it is the last
10:09:3410 hours, 9 minutes, 34 secondsline of defense in case something goes wrong. Perfect. So now let's go back inside of our messages procedures here.
10:09:4410 hours, 9 minutes, 44 secondsLet's just remove the throwing of the error here. There we go. Perfect.
10:09:5010 hours, 9 minutes, 50 secondsNow what I want to do is I just want to go to the usage dsx here component. And I'm really worried about this format duration for a
10:09:5910 hours, 9 minutes, 59 secondssimple reason. Dates can often cause errors and it would be very stupid if our entire app here fails just because
10:10:0910 hours, 10 minutes, 9 secondsthe date is invalid. So here's uh what I think
10:10:1510 hours, 10 minutes, 15 secondswe can do. Let's go ahead and try it. So I'm going to
10:10:2210 hours, 10 minutes, 22 secondsopen a function like this. And let me just close it here.
10:10:2710 hours, 10 minutes, 27 secondsAnd I'm going to open curly brackets here. Let me close that here.
10:10:3410 hours, 10 minutes, 34 secondsAnd I'm going to open Actually, here's what I'm going to do.
10:10:4010 hours, 10 minutes, 40 secondsInstead of trying to do it here, I'm going to just do const reset time use memo
10:10:4910 hours, 10 minutes, 49 secondslike this. Make sure you added use memo from React. And then inside of here, what we're going to do is we're going to open the try and we're going to open
10:10:5710 hours, 10 minutes, 57 secondscatch. And in here, let's add an little error. And let's do console error. And let's do error formatting
10:11:0610 hours, 11 minutes, 6 secondsduration error like that. And let's simply return
10:11:1310 hours, 11 minutes, 13 secondssoon. So it will just say or maybe unknown or whatever you think is better user experience, right? And then in here
10:11:2110 hours, 11 minutes, 21 secondslet's return format duration and then inside interval to duration and then
10:11:2810 hours, 11 minutes, 28 secondsstart new date and let's me just copy it and will be this.
10:11:3810 hours, 11 minutes, 38 secondsAnd then we're just missing the format here.
10:11:4210 hours, 11 minutes, 42 secondsThere we go. And in here let's add ms before next. And then we can use this
10:11:4910 hours, 11 minutes, 49 secondsconstant here. So resets in reset time.
10:11:5810 hours, 11 minutes, 58 secondsLet me just check if it still works.
10:12:0010 hours, 12 minutesThere we go. Resets in 29 days and 20 hours. Because now if you if this MS before next happens to be something like not a number.
10:12:1110 hours, 12 minutes, 11 secondsThere we go. Resets in now doesn't work and it doesn't break the page.
10:12:1710 hours, 12 minutes, 17 secondsThat's what I at least wanted it to happen. Okay, perfect. So, now that we have this
10:12:2610 hours, 12 minutes, 26 secondsactually, I mean, we can try it out by doing throw new error. Whoops. And now it should say resets in unknown.
10:12:3410 hours, 12 minutes, 34 secondsBasically, it cannot block the page. It can still allow the user to work, which is what we wanted. Um, perfect. So, this
10:12:4310 hours, 12 minutes, 43 secondsis very good. Let's see what else we have in the list here. So we learned about improving the error handling and now let's talk about making our E2B
10:12:5010 hours, 12 minutes, 50 secondstemplate private. So if you go inside of your E2B dashboard in here you can see your templates and you can see that my Vibe Nex.js test 2 is currently public.
10:13:0110 hours, 13 minutes, 1 secondThat is because we have published it.
10:13:0310 hours, 13 minutes, 3 secondsThe reason I told you to publish it is because I personally had problems with private uh templates. But what you can do is the following. Open your terminal.
10:13:1410 hours, 13 minutes, 14 secondsgo inside of sandbox templates. Go inside of Next.js and since inside of here
10:13:2110 hours, 13 minutes, 21 secondswe have a E2B TOML file. We can easily just do E2B template unpublish. You
10:13:2810 hours, 13 minutes, 28 secondsdon't have to add any other flags. It will read everything from here including your team ID. And just confirm that you
10:13:3610 hours, 13 minutes, 36 secondswant to unpublish it. And what this does is the following. If you now go back here and refresh,
10:13:4310 hours, 13 minutes, 43 secondsyou will see that my vibe next.js test 2 is now set to private. And that means
10:13:5110 hours, 13 minutes, 51 secondsthat inside of the functions on the ingest here, whenever someone tries to create a sandbox with that, this will
10:13:5910 hours, 13 minutes, 59 secondsfail unless in their environment their E2B API key belongs to my organization.
10:14:0710 hours, 14 minutes, 7 secondsSo what I suggest you do now is definitely try. So let's try make it red.
10:14:1510 hours, 14 minutes, 15 secondsAnd you can see that these sandbox are still going strong. So we def it definitely works what we increased the timeout for. So now what I'm interested
10:14:2310 hours, 14 minutes, 23 secondsin will this still work now that I have made my template private and I think that it does since I can fetch the sandbox ID. For me, it happened that the
10:14:3310 hours, 14 minutes, 33 secondssandbox ID was not able to be fetched once I changed it to private. So, just make sure that it still works here.
10:14:4010 hours, 14 minutes, 40 secondsLet's see. Make it red.
10:14:4410 hours, 14 minutes, 44 secondsThere we go. And you can see how the conversation history is improved. It made it glassy and red. Exactly what we
10:14:5210 hours, 14 minutes, 52 secondswanted. So, we definitely improved the conversation history here. And for me, it seems to still be working. If for whatever reason yours stopped working,
10:15:0010 hours, 15 minutesit shouldn't but you know it happened to me so maybe it will happen to you. You can easily go inside of here inside of next.js and just run E2B template publish. You don't need any arguments.
10:15:1210 hours, 15 minutes, 12 secondsYou can just press publish and then you can confirm.
10:15:1710 hours, 15 minutes, 17 secondsAnd then from here you can go back inside of here, go inside of your templates and see the status. Make sure
10:15:2410 hours, 15 minutes, 24 secondsit's public. And you can even do that from here I think by clicking here if you want to. Um, perfect. Amazing. So I
10:15:3410 hours, 15 minutes, 34 secondsthink that's all we wanted to fix. And there is one thing left to discuss and that is let's just search for to-do.
10:15:4310 hours, 15 minutes, 43 secondsInstead of messages container, we're using refetch interval as the live message update. And I was thinking about
10:15:5010 hours, 15 minutes, 50 secondswhat I should do instead of this. But initially I built a project like this and it worked just fine. So the thing is
10:15:5810 hours, 15 minutes, 58 secondsthis is not a multiplayer chat. This is a single person chat who receives responses from AI and most of the time
10:16:0610 hours, 16 minutes, 6 secondsyou only send one message and then wait for the other message to uh come back.
10:16:1210 hours, 16 minutes, 12 secondsAnd we are not just doing any kind of polling. We are doing polling using the tan stack query. This means that this
10:16:1910 hours, 16 minutes, 19 secondsrefetch interval will ddup it will use cache. It will be an extremely optimized interval. And also, I'm not sure if you
10:16:2610 hours, 16 minutes, 26 secondsknew this, but while right now new requests are being made every 5 seconds,
10:16:3310 hours, 16 minutes, 33 secondsif I change to this page, requests stop being made. So, you don't have to worry that in the background it's constantly
10:16:4010 hours, 16 minutes, 40 secondsgoing to fire. It is a very very optimized polling and it actually makes no problem to use in our type of
10:16:4910 hours, 16 minutes, 49 secondsapplication here and in fact you can even reduce it to 2 seconds if you want to. This will give you a better experience and it will still be very
10:16:5710 hours, 16 minutes, 57 secondsvery optimized. Now in case you're wondering uh okay but does inest offer any uh realtime updates? They absolutely do.
10:17:0910 hours, 17 minutes, 9 secondsYou can go inside the documentation and read about a real time. So in here you can subscribe to a channel and then from
10:17:1610 hours, 17 minutes, 16 secondsthe function you can initialize uh you can publish to that channel. And I explored this option but the problem was
10:17:2310 hours, 17 minutes, 23 secondsI wasn't able uh to synchronize both my Prisma messages and uh the ingest
10:17:3010 hours, 17 minutes, 30 secondssubscription messages. It is absolutely possible uh and it can be a good homework for you if you want to give yourself a challenge and do that. For
10:17:3910 hours, 17 minutes, 39 secondsour use case, polling is more than enough. So I will just remove this from here. And if you want to, you can move this into a constant. So you can change
10:17:4810 hours, 17 minutes, 48 secondsit easily if you're using some polling in multiple places. Uh great. Amazing. So I believe we are now ready to deploy.
10:17:5710 hours, 17 minutes, 57 secondsI don't think there's anything else we have to do here. So let's go ahead now and let's merge this. So 19 bug fixes.
10:18:0710 hours, 18 minutes, 7 secondsI'm going to go ahead and open a new branch. 19 bug fixes.
10:18:1510 hours, 18 minutes, 15 secondsI will stage all of my changes. 19 bug fixes.
10:18:2010 hours, 18 minutes, 20 secondsAnd I'm going to commit. And I'm going to publish the branch. Uh, and since these changes were very very minimal, I
10:18:2810 hours, 18 minutes, 28 secondsthink we can just go ahead and merge them because they were just some very small bug fixes here, we can do our own
10:18:3610 hours, 18 minutes, 36 secondsreview here. So, we added React error boundary. We added global error page.
10:18:4210 hours, 18 minutes, 42 secondsWe added some wrappers here, error boundary.
10:18:4610 hours, 18 minutes, 46 secondsWe added the proper sandbox timeout. We properly uh reverse the messages. So the conversation history is improved.
10:18:5510 hours, 18 minutes, 55 secondsWe use the same sandbox timeout in the utils here. We reduced the refetch interval. We made it safely here to
10:19:0410 hours, 19 minutes, 4 secondsfetch the reset interval. And we just added some more error boundaries. That's it. Nothing else needed here. We can merge this request immediately. Amazing.
10:19:1410 hours, 19 minutes, 14 secondsAmazing job. That marks the end of this chapter. As always, go back to your main branch here and synchronize the changes
10:19:2210 hours, 19 minutes, 22 secondsand then confirm in the source control that you just merged 19 bug fixes.
10:19:2810 hours, 19 minutes, 28 secondsAmazing, amazing job. And see you in the next chapter where we are going to deploy our app.
Chapter 21: 20 Deployment
10:19:3510 hours, 19 minutes, 35 secondsIn this chapter, we're going to go ahead and deploy our app to Verscell.
10:19:4010 hours, 19 minutes, 40 secondsThis will include the initial deployment. After that, we will obtain our app URL. Then we have to update our
10:19:4910 hours, 19 minutes, 49 secondsenvironment variables with that new URL and we have to redeploy and after that we have to connect inest to our versel
10:19:5710 hours, 19 minutes, 57 secondsproject and redeploy once more and after that we are ready to test the app. So let's start with step one deploy to
10:20:0510 hours, 20 minutes, 5 secondsversel. So make sure that you are on your main branch and make sure the last one was 19 bug fixes. You can
10:20:1310 hours, 20 minutes, 13 secondssynchronize your changes if you haven't already. And at this point, you can also shut down your terminal. No point to have this running while you are deploying.
10:20:2310 hours, 20 minutes, 23 secondsNow, let's go ahead and make sure that you have a GitHub repository, right? I don't know if you followed the Git
10:20:3110 hours, 20 minutes, 31 secondsworkflow through this tutorial, but if you have, then you have a GitHub repository. So, head to Verscell and
10:20:3910 hours, 20 minutes, 39 secondsclick add new project. And in here, if you are connected with GitHub, you have your project right here. I'm going to
10:20:4710 hours, 20 minutes, 47 secondsclick import. And then I'm going to open environment variables. And in here, I'm going to go into environment. And I'm
10:20:5510 hours, 20 minutes, 55 secondsgoing to copy all of them. And then I'm just going to paste them inside. So database URL, next public app URL, open
10:21:0310 hours, 21 minutes, 3 secondsAI API key, E2B key, and all of these other ones. And let's click deploy. We are now going to see the result of this.
10:21:1210 hours, 21 minutes, 12 secondsPerhaps it will succeed from the first try or maybe it will fail. I'm going to pause the screen and show you the result.
10:21:2210 hours, 21 minutes, 22 secondsAnd my deployment failed with a bunch of errors and I forgot about the first rule of deploying to Verscell and that is
10:21:3110 hours, 21 minutes, 31 secondsthat you should try building locally first so you don't waste time with failed Verscell deployments. And we also
10:21:3910 hours, 21 minutes, 39 secondsforgot about one more important thing and that is that when we deploy the versel, we need to add a post install
10:21:4710 hours, 21 minutes, 47 secondsscript. So let's go ahead and do a post install script and add it to our package.json here. Let me just add it here.
10:21:5710 hours, 21 minutes, 57 secondsLet me just check where do we add it in the scripts. Okay, so post install prisma generate like this. So now I'm
10:22:0510 hours, 22 minutes, 5 secondsgoing to go ahead and do npm run build locally and I'm going to see if I have any more errors and I'm going to show you how do you trigger a deployment again if your initial one failed.
10:22:1810 hours, 22 minutes, 18 secondsBasically from here you have buttons to go to project or to inspect deployment.
10:22:2210 hours, 22 minutes, 22 secondsYou can click whichever one you like. Uh and from here you basically have your project vibe. You can click here and
10:22:3010 hours, 22 minutes, 30 secondsthere we go. You have deployments. the first deployment was failed and now the way another deployment will be triggered
10:22:3710 hours, 22 minutes, 37 secondsis simply whenever it notices a new push in the GitHub. So now let's go ahead and see what we have here. So I seem to keep
10:22:4610 hours, 22 minutes, 46 secondshaving these errors seemingly coming from here.
10:22:5110 hours, 22 minutes, 51 secondsThese errors seem to be coming from source generated. So it seems to be linting this folder when it should not
10:22:5910 hours, 22 minutes, 59 secondsbe linting this folder. So, I'm going to look into how I can prevent the app uh the build from looking at the generated
10:23:0610 hours, 23 minutes, 6 secondsfolder right here and I'll tell you what I find.
10:23:1210 hours, 23 minutes, 12 secondsOkay, I have managed to find the combination which enables npm run build.
10:23:1810 hours, 23 minutes, 18 secondsSo, just to remind you, the last change we did was we added post install to the scripts. We still need this regardless.
10:23:2610 hours, 23 minutes, 26 secondsSo there are different ways you can fix the failing lint because the failing linting is what's going on here. One solution is to go to the next config
10:23:3410 hours, 23 minutes, 34 secondshere and add slint and enable ignore during builds. Now this isn't exactly
10:23:4210 hours, 23 minutes, 42 secondsrecommended but you can see that once you add this slint will not fire during the build process or at least it won't
10:23:5110 hours, 23 minutes, 51 secondsfire in production. But you can see that in here it works perfectly fine now.
10:23:5610 hours, 23 minutes, 56 secondsWell, whereas if you don't have this feature and you try mpm run build, it is going to fail because it will try to lint our source generated uh folder.
10:24:0810 hours, 24 minutes, 8 secondsThere we go. But I don't really recommend this simply because uh that will turn off linting for your entire
10:24:1510 hours, 24 minutes, 15 secondsproject during the build and there's no need for that because what we can do instead is we can go inside of eslint.lint.config.mjs
10:24:2410 hours, 24 minutes, 24 secondsconfig.mjs here and we can open ignores
10:24:3010 hours, 24 minutes, 30 secondsand in here we can target asterisk asterisk forward slashgenerated and then everything inside of a generated folder.
10:24:3910 hours, 24 minutes, 39 secondsSo basically ignore wherever you can find the generated folder and then everything inside. And I feel like this
10:24:4610 hours, 24 minutes, 46 secondsis a little bit better solution simply because we are still going to lint the rest of our project. But
10:24:5410 hours, 24 minutes, 54 secondswe are not going to lint the source generated one. So if you try this now, it should work. Let's wait a second. And
10:25:0310 hours, 25 minutes, 3 secondsthere we go. Since the linting has passed, everything else seems to be working just fine. So try for yourself and choose one that works, right? If this works for you, sure, then use this.
10:25:1410 hours, 25 minutes, 14 secondsBut I will recommend doing this if possible for you in the estate config mjs. Perfect. Once you have these two,
10:25:2210 hours, 25 minutes, 22 secondslet's go ahead and let's merge them uh like this. And let's go ahead and add
10:25:2910 hours, 25 minutes, 29 secondsdeployment here. We can do this in the main branch. We don't need to branch out. And then just go ahead and synchronize the changes. In case you
10:25:3710 hours, 25 minutes, 37 secondsbranched out, no problem. Just merge the branch to the main. And once it detects a new branch to the main uh it is going
10:25:4710 hours, 25 minutes, 47 secondsto uh trigger a redeployment.
10:25:5210 hours, 25 minutes, 52 secondsThere we go. So in here you can see that it automatically detected a new push and it's going to deploy. So let's see if it succeeds this time.
10:26:0210 hours, 26 minutes, 2 secondsAnd here we have it. This time the build succeeded. And now we have our app deployed. So you can see it's still
10:26:1010 hours, 26 minutes, 10 secondsrunning some final uh things here, but down here you can see that we assigned a custom domain and we have the deployment
10:26:1810 hours, 26 minutes, 18 secondssummary. So what I care about is the custom domain. So what I recommend you do is you click on vibe up here and go
10:26:2610 hours, 26 minutes, 26 secondsinside of overview and in here you will find all of your domains. Do not use the deployment domain. Use this one, the
10:26:3410 hours, 26 minutes, 34 secondsshortest one that is the domain of your project. You can go ahead and visit it if you want to. And what I want you to
10:26:4110 hours, 26 minutes, 41 secondsdo is I want you to copy the URL that
10:26:4810 hours, 26 minutes, 48 secondsyou have and I want you to go back to Verscell and then go inside of settings environment variables and in here find
10:26:5810 hours, 26 minutes, 58 secondsnext public app URL and you now have to modify this to be your new app. Just remove the forward slash like this and
10:27:0610 hours, 27 minutes, 6 secondsclick save. And after you do this, you can see a prompt here to redeploy. So you can click it. If you don't get the prompt to redeploy, you can manually go
10:27:1510 hours, 27 minutes, 15 secondsin your deployments and then you can select the last one and you can click redeploy. So let me just check if uh I'm
10:27:2310 hours, 27 minutes, 23 secondsnot sure if redeployment is now happening or not. So I will just click redeploy myself and just confirm. So every time you change environment
10:27:3110 hours, 27 minutes, 31 secondsvariables, you have to redeploy. So I'm going to pause, wait for the redeployment, and then we have to connect inest to this versel project.
10:27:4210 hours, 27 minutes, 42 secondsAnd here we have the successful uh redeployment here. So now what I suggest you do is just try and use your
10:27:5110 hours, 27 minutes, 51 secondsapplication. If possible, wait out till this shows a success message as well.
10:27:5710 hours, 27 minutes, 57 secondsThere we go. and then go to your main URL here. Always use the main URL and try something simple like signing in. So
10:28:0410 hours, 28 minutes, 4 secondsI'm going to go ahead and use my account here and I will try to just create a simple project. So I will go ahead and
10:28:1210 hours, 28 minutes, 12 secondsdo uh you can see that all of our projects are saved. So our TRPC is working here. Let's try clicking on one of these and let's try sending a
10:28:2110 hours, 28 minutes, 21 secondsmessage. So I would add test here. And what should happen here is the following. You can see the message my message was generated but injust was
10:28:2910 hours, 28 minutes, 29 secondsunable to be fired. That's because we need to connect inest to production. So this will actually never finish. Let's
10:28:3710 hours, 28 minutes, 37 secondsgo ahead and do that now. So use the link you can see on the screen or the link in the description to visit ingest and go ahead and sign up. I suggest
10:28:4610 hours, 28 minutes, 46 secondsusing GitHub simply so you always have access to your repositories if needed.
10:28:5110 hours, 28 minutes, 51 secondsAnd then once you enter here down here at the bottom you can choose to switch organization. I recommend creating a new organization. So I'm going to call this
10:28:5910 hours, 28 minutes, 59 secondsVibe. And I will click create organization.
10:29:0310 hours, 29 minutes, 3 secondsAnd I'm not going to invite any members now. And let's go ahead and click on apps here.
10:29:1110 hours, 29 minutes, 11 secondsAnd let's go ahead and just find oh sorry integrations. I think this is what I'm looking for. And let's click on
10:29:1810 hours, 29 minutes, 18 secondsVersel here to connect. Let's click connect Verscell to ingest and click on
10:29:2510 hours, 29 minutes, 25 secondsadd integration here. And I'm I have multiple accounts. So I'm going to select this one where I just deployed the project and I will click continue.
10:29:3610 hours, 29 minutes, 36 secondsAnd in here go ahead and find your new project. So let me just find Vibe. Here it is.
10:29:4410 hours, 29 minutes, 44 secondsselect it and click save configuration right here and click continue to the ingest uh Verscell dashboard. And now
10:29:5210 hours, 29 minutes, 52 secondssomewhere in here you have all of your Versel projects and you should now find Vibe and you can see it says enabled but
10:30:0010 hours, 30 minutesin here it says deployment protection is enabled. Ingest may not be able to communicate with your application by default. Let's go ahead and click more
10:30:0910 hours, 30 minutes, 9 secondshere. And basically what we have to do is we have to configure protection bypass. So in here let's go ahead and uh
10:30:1910 hours, 30 minutes, 19 secondsI'm never sure how to properly access this. So don't worry I will tell you the exact steps in the versel dashboard but
10:30:2710 hours, 30 minutes, 27 secondslet me just see does this take me to Verscel. It does take me to Versel here. Basically I
10:30:3410 hours, 30 minutes, 34 secondsthink this is where I need to go. Let's go to versel and let's select our new project here.
10:30:4110 hours, 30 minutes, 41 secondsLet's go inside of settings and let's go inside of deployment protection. Here it is. So go inside of your vibe settings
10:30:4710 hours, 30 minutes, 47 secondsdeployment protection. And in here let's go ahead and let's do protection
10:30:5510 hours, 30 minutes, 55 secondsbypass for automation. So I think this is what we need. So let's click add secret. You don't need to add any value and just click save. And then in here
10:31:0410 hours, 31 minutes, 4 secondsyou can copy this bypass secret. And then let me go ahead and go back and click click on configure here.
10:31:1310 hours, 31 minutes, 13 secondsAnd if I remember this correctly, you should now have deployment protection key that you can add here and click save configuration.
10:31:2210 hours, 31 minutes, 22 secondsThere we go. So now inest should be able to access your uh Versell application.
10:31:3110 hours, 31 minutes, 31 secondsAnd let's go ahead and do one more thing here. So now I want to go back here to production.
10:31:3710 hours, 31 minutes, 37 secondsAnd in here, there we go. You can see that my app was already found vibe development on Versel. So this is a good
10:31:4510 hours, 31 minutes, 45 secondssign. And it has found one function code agent. So I think that this means that it's running successfully. I'm just not
10:31:5310 hours, 31 minutes, 53 seconds100% sure. I keep thinking that I need to redeploy.
10:31:5810 hours, 31 minutes, 58 secondsUm so h let's see. Let's try it out. If it doesn't work, it means we have to redeploy. So, go to your uh deployed URL
10:32:0610 hours, 32 minutes, 6 secondsthis time and let's go ahead and do build a calculator app.
10:32:1310 hours, 32 minutes, 13 secondsLet's see if that will work. And let's go inside of Ingest here. Ingest cloud inest runs. And let's see if a new run
10:32:2110 hours, 32 minutes, 21 secondswill appear. And the new run is right here. That would mean that we successfully deployed our project and we connected inest to deployed instance.
10:32:3210 hours, 32 minutes, 32 secondsAnd looks like we didn't need to redeploy at all. Let's just go ahead and wait to see uh if this will actually
10:32:4010 hours, 32 minutes, 40 secondswork, if there are any issues we have to fix, and then we're going to be able to wrap up this project.
10:32:4810 hours, 32 minutes, 48 secondsAnd here I have the result. So, it seems to be working. This is entirely in production. So my URL is vibe-bond.cell.app.
10:32:5910 hours, 32 minutes, 59 secondsAnd if you check the cloud here, there we go. It seems to be working. Uh if it still says running, just do a refresh
10:33:0710 hours, 33 minutes, 7 secondsand it should update the status. Here we go. Amazing, amazing job. You finished
10:33:1310 hours, 33 minutes, 13 secondsan amazing project. I had so much fun building this. Uh I I'm sure you did as well. Make sure to test your app, you know, make sure everything's working.
10:33:2310 hours, 33 minutes, 23 secondsSometimes the easiest fix can actually be for you to redeploy again. And you can see there was obviously a deployment that was running the entire time. So
10:33:3210 hours, 33 minutes, 32 secondsperhaps this happened automatically when we connected inest. You can always, you know, click here and click redeploy and that will just redeploy your latest
10:33:4010 hours, 33 minutes, 40 secondsversion. And now in your settings environment variables, you should now see inest event keys and signing keys.
10:33:4710 hours, 33 minutes, 47 secondsSo that's the trick. That's what made it work. Amazing, amazing job. I think this was an absolutely amazing project. Good
10:33:5710 hours, 33 minutes, 57 secondsjob. See you in the next tutorial. And thank you so so much for watching.

Sync to video time
