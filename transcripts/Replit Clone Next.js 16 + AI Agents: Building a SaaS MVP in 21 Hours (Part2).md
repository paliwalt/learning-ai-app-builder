https://www.youtube.com/watch?v=zX_1KZrH7SY



Next.js 16 + AI Agents: Building a SaaS MVP in 21 Hours | Part 2/2
FullStack SaaS Architect
FullStack SaaS Architect
891 subscribers

Subscribe

84


Share

Ask

Save

1,778 views  2 Aug 2026  #Nextjs #reactjs #AI
Learn how to build a SaaS MVP in just 21 hours using Next.js 16 and AI agents in this comprehensive tutorial. Ali Murtaza will guide you through the process of creating a scalable SaaS architecture using TypeScript, Tailwind CSS v4, and Neon PostgreSQL. 

This tutorial covers everything from system design and database design to Stripe integration and authentication. By the end of this video, you will have a solid understanding of how to build a web app with AI and deploy it using Next.js. 

Whether you are a beginner or an experienced developer, this tutorial is perfect for learning TypeScript, React, and software architecture. You will also learn how to use Claude code to build a SaaS application and how to design a robust database using PostgreSQL. This is part 2 of a 2-part series, so be sure to watch the first part before diving into this video. 

With this tutorial, you will be able to build a SaaS MVP quickly and efficiently, and learn the best practices for SaaS development and deployment.


🚀 Get the source code: https://github.com/aalleejustadev/Rep...
👾 Join my discord community at:   / discord  

Timestamps:-
0:00:00 - Intro
0:01:00 - Prisma
0:18:00 - Authentication
2:34:40 - Home prompt
4:21:00 - Projects
5:17:08 - Project editor
7:41:40 - User profile
8:05:55 - Settings
8:21:03 - Trash
8:35:15 - Refinements
8:49:30 - Preview API route
9:19:06 - Stripe

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

#Nextjs #reactjs #SaaS #Fullstack #WebDevelopment #AI #TypeScript #CodingMasterclass
Ask
Get answers, explore topics and more








------------------------------------------------------------------------------------------------------------------------


In this video


Chapters

Transcript
Search transcript
Search transcript

Chapter 1: Intro
0:000 secondsHello everyone, welcome back to the part two of our replicate clone series. And as you guys know in the part one, we
0:088 secondsbuilt this landing page. This very good-looking landing page. We completed it. We made sure that it is completely
0:1515 secondsresponsive and looks really good on all screen sizes. Everything is functional.
0:2222 secondsAnd we also built this slash app uh screen as well where we have
0:3131 secondsa nice looking prompt input area as well as a sidebar. And now I would like to
0:3737 secondsget started working on the Prisma and database integrations. And for that I
0:4444 secondswould go to my code editor. First of all, I'm going to open my terminal here.
0:5252 secondsAnd I'm going to close everything. Clear.
0:5656 secondsThere you go. And here I'm going to say npm install
Chapter 2: Prisma
1:021 minute, 2 secondsPrisma. And then I'm going to say add Prisma/Client
1:091 minute, 9 secondsalso. add prisma/ adopter-pg
1:151 minute, 15 secondsalso pg and also env. So we have this
1:211 minute, 21 secondsone 2 3 four and five packages that we're going to install. So I'm going to hit enter.
1:321 minute, 32 secondsThat has been installed. And the next thing that I'm going to do is npm install dash d. And I'm going to go for types_pg.
1:421 minute, 42 secondsAnd that is a package that we're going to install only for the dev dependencies. And that's been done. The next thing that
1:501 minute, 50 secondsI'm going to do is npx prisma in it. There you go.
1:571 minute, 57 secondsAnd this has created a few files for us.
2:022 minutes, 2 secondsSo first of all, we have Prisma config.ts file. And then we have this Prisma folder which includes this uh
2:102 minutes, 10 secondsschema.prisma file and that is what we're going to apply a little bit of configurations in a minute.
2:192 minutes, 19 secondsSo first of all I'm going to open up my prisma.config.ts file. And here I'm going to need to import a few things. I'm going to get
2:282 minutes, 28 secondsrid of these comments and I'm going to import config from env. There you go. Then we
2:382 minutes, 38 secondshave also define config here which is coming from Prisma config. And then here I'm also going to import path from path.
2:492 minutes, 49 secondsThere you go. Let me format everything.
2:522 minutes, 52 secondsAnd this import is is not needed any more. So I'm going to get rid of that.
2:582 minutes, 58 secondsAnd here we have So basically the next um I mean the Prisma CLI does not load
3:063 minutes, 6 secondsthe env.lo file automatically in version 7. And that is why we need this env
3:133 minutes, 13 secondshere. And I'm going to say config. And here we have first of all path which is
3:203 minutes, 20 secondsgoing to be path dot resolve. And that's going to be process docwt
3:283 minutes, 28 secondsand open that. I add a comma here. And second value here is going to be env.lo.
3:363 minutes, 36 secondsAnd I'm going to duplicate that. And just here this is going to be env.
3:423 minutes, 42 secondsThere you go. Let me format that and then save that. All right. So, that is done. And now the next thing that I'm
3:493 minutes, 49 secondsgoing to do is I'm going to need to open our env. Well, that does not exist. And
3:563 minutes, 56 secondsfor that reason, first of all, I'm going to get rid of this env.
4:054 minutes, 5 secondsNext, I'm going to create a new file env.lo.
4:104 minutes, 10 secondsAnd there you go. Here we're going to write a few things. So first of all we're going to have a
4:184 minutes, 18 secondsdatabase URL. There you go. That's going to go
4:234 minutes, 23 secondsthere. And then we also need direct URL and that's going to go there. And of course now we need both of these things.
4:344 minutes, 34 secondsAnd for that I'm going to go to my browser and here I'm going to say neon
4:414 minutes, 41 secondspostresql. Let's go to the neon. Let's go log in
4:484 minutes, 48 secondshere. I'm going to use my Google account.
4:574 minutes, 57 secondsI'm going to continue and here first of all organization name
5:085 minutes, 8 secondslet's say I'm going to name it full stack SAS
5:155 minutes, 15 secondsarchitect my channel name personal projects email address no needed next and project name for this one is going
5:245 minutes, 24 secondsto be replet 18 leave Everything same create project the project has been
5:325 minutes, 32 secondsinstalled and now the next thing that I'm going to go is I'm going to go to project and here we have this connection
5:385 minutes, 38 secondsstring I'm going to click on that and I'm going to change this from this connection string to Prisma and in here
5:475 minutes, 47 secondsI'm going to go to the envy the snippet then instead here I'm going to paste that and actually we can get
5:555 minutes, 55 secondsrid of this or we and just copy that from here and I can put I can uncomment this one and change this to the direct
6:046 minutes, 4 secondsURL and that's pretty much it. So with that we have database URL as well as we
6:116 minutes, 11 secondshave our our direct URL. I'm going to close this file and next thing to test everything I'm going to do is here we
6:206 minutes, 20 secondshave clear and then I'm going to say npx prisma migrate.
6:276 minutes, 27 secondsLet's run that and make sure that everything works and let's see if it did or gave us the errors.
6:396 minutes, 39 secondsSo here I'm going to need to update my command that's going to be npx prisma
6:466 minutes, 46 secondsmigrate. I'm going to say dev dash dash name and it's going to be in it. Let's run that.
6:546 minutes, 54 secondsAnd seems like it is working in Prisma schema loaded from Prisma schema. There you go. Data source. And we should have the result really soon.
7:087 minutes, 8 secondsAnd there you go. Already in sync. No schema change or pending migrations was found. And that is because we almost
7:157 minutes, 15 secondshave nothing here in the to create uh the tables or things like that. So here
7:227 minutes, 22 secondsI'm going to say npx prisma generate. There you go. Generated plasma client.
7:327 minutes, 32 secondsAnd that's going to be under lib folder.
7:357 minutes, 35 secondsSo we have app well not in the app
7:457 minutes, 45 secondsthere you go we have lib folder then we have this generated and there you go we have everything here perfect awesome and
7:527 minutes, 52 secondsnow let's check the npx prisma studio real quick so we make sure that
8:008 minuteswe have everything working nicely prisma studio And there you go, working
8:078 minutes, 7 secondsperfect. So with that guys, we have perfectly integrated our Prisma and Neon database to our app. And now it is time
8:158 minutes, 15 secondsfor us to create and initiate the migration of the tables that we're going to need. I'm going to go to the code
8:228 minutes, 22 secondseditor and I'm going to minimize this here a little. And then I'm going to go to my Prisma dot well not that schema.
8:328 minutes, 32 secondsPrisma. There you go.
8:348 minutes, 34 secondsAnd in here I would like to give you this all of the tables for the Prisma
8:428 minutes, 42 secondsbasically. So here I'm going to paste this code and let me explain what is happening basically. So first of all we
8:508 minutes, 50 secondshave a model user where we have ID, name, email, email verified, image and all this bunch of little rows for that
8:598 minutes, 59 secondstable columns for that table and uh some things are strings some things are boolean and we have ID set to default
9:089 minutes, 8 secondsand that's going to be an automated system generated ID and that's going to be very similar situation for all of the
9:159 minutes, 15 secondstables ID default CU ID And there you go for the account as well and for the
9:229 minutes, 22 secondssession as well. And then we have this connections and relations between the user and with the session. And then with the
9:319 minutes, 31 secondsverification uh there we have uh if we go to our there's going to be the stripe
9:389 minutes, 38 secondsevents that are going to be used once we use that. So there's are also these links attached that you guys can go to
9:479 minutes, 47 secondsand learn about that specific thing that's been used here. The reference and workspaces. There you go. And yeah,
9:579 minutes, 57 secondsthat's that's pretty much it. I'm going to save that. And here I'm going to close everything here. And once again, I'm going to go for npx Prisma migrate.
10:0810 minutes, 8 secondsLet's say updated here. So I'm going to
10:1510 minutes, 15 secondsit's applying the migration. It's going to take some time because we have a lot of tables to work. And yeah, let's wait a little.
10:2510 minutes, 25 secondsAnd there you go. Your database is now in sync with your scheme schema. And here I'm going to go for npx Prisma generate.
10:3410 minutes, 34 secondsAnd I'm going to go for npx Prisma studio. Actually, let's check that actually. Yeah. So, here
10:4410 minutes, 44 secondswe have all of our tables that we just created through the schema.prisma file.
10:5010 minutes, 50 secondsWe have accounts, agent conversations, agent messages, artifacts, deployments, and all bunch of these tables across all the way to the workspaces. Excellent.
11:0111 minutes, 1 secondAll right. So, the next thing that I'm going to do is I'm going to create a singleton file. basically in an adopter
11:0911 minutes, 9 secondsplus lazy singleton proxy file for the Prisma. So that can be imported in all
11:1711 minutes, 17 secondsof our for throughout the app for the query databases basically.
11:2411 minutes, 24 secondsSo I'm going to close this file and everything from here I'm going to go to the lib folder and in here I'm going to
11:3111 minutes, 31 secondscreate a new file that is going to be prisma prisma.ts
11:3911 minutes, 39 secondsts and here we have first of all import I'm going to say prisma png there you go
11:4811 minutes, 48 secondsand then I'm going to need import prisma
11:5711 minutes, 57 secondsclient and that is going to be from the generated Prisma there you go excellent now here
12:0612 minutes, 6 secondsI'm going to have a const Global for
12:1212 minutes, 12 secondsPrisma is equal to global this as unknown as this code block where we have
12:2212 minutes, 22 secondsPrisma is going to be either Prisma client or undefined.
12:2912 minutes, 29 secondsExcellent. Now here I'm going to say function create Prisma client. Open that. And
12:3712 minutes, 37 secondshere we have const connection string is equal to process.env
12:4612 minutes, 46 secondsdatabase URL. There you go. And then here I'm
12:5312 minutes, 53 secondsgoing to say if connection string is not available, it's not true. Then we
13:0213 minutes, 2 secondshave throw new error which is going to be database URL is not set.
13:1413 minutes, 14 secondsNext up here I'm going to say const adopter is equal to new
13:2013 minutes, 20 secondsprisma pg. And here I'm going to add here I have this connection string.
13:3213 minutes, 32 secondsThere you go. Let me format and save that. And then here I'm going to have return new Prisma client.
13:4113 minutes, 41 secondsAnd I have this adapter.
13:4513 minutes, 45 secondsThere you go. Excellent. I'm going to go down here and I have a function get Prisma client.
13:5513 minutes, 55 secondsOpen that. And here we have if global for Prisma
14:0214 minutes, 2 secondsis not true. Basically if global for Prisma dot Prisma is not true and we
14:0914 minutes, 9 secondshave global for Prisma dot Prisma is equal to create Prisma client.
14:1714 minutes, 17 secondsThere you go. Excellent. Here [snorts] we have actually before that here we
14:2214 minutes, 22 secondshave X uh sorry return global for Prisma dot Prisma. Once we have that either is
14:3214 minutes, 32 secondsthat's available then either when that's not available and we create that and then we return that Prisma and that's
14:4114 minutes, 41 secondshere we have export const Prisma is equal to new proxy and here I'm going to have this
14:5114 minutes, 51 secondsempty object as Prisma client I'm going to add a comma here and here I have this
14:5714 minutes, 57 secondssecond value where I'm going to say that I have this target and property and then
15:0515 minutes, 5 secondsI'm going to open this function and there we have const client is equal to
15:1015 minutes, 10 secondsget prisma client and then we have const value is equal to client and then we
15:2015 minutes, 20 secondshave property here as key of prisma client there you go so I'm going
15:2815 minutes, 28 secondsto say If type of value is equal to
15:3515 minutes, 35 secondsfunction only in that case we're going to return value dot
15:4215 minutes, 42 secondsbind sorry very lebbind and here I'm going to bind the client to that
15:5015 minutes, 50 secondsthere you go let me format that and then after this if statement here eventually I'm going to return the value So that's
15:5915 minutes, 59 secondspretty much it for this file and we have completed our singleton Prisma that we can use throughout this app. There is
16:0716 minutes, 7 secondsthis one small slight adjustment that I would like to do and that is if I go to this package.json file sorry not
16:1616 minutes, 16 secondspackage.json but uh next.config.ts file. So here I would like to add server
16:2416 minutes, 24 secondsexternal packages and for that we're going to add as
16:3016 minutes, 30 secondsbuild here. There you go. And then here I'm going to add images and that's going
16:3616 minutes, 36 secondsto be here I have remote pattern and that's going to be an array where I have this object which is going to be
16:4616 minutes, 46 secondsprotocol that's going to be https and there you go. Then we have host name which is going to be replet.com.
16:5916 minutes, 59 secondsAnd then here we have path name which is going to be slash CDN-
17:0817 minutes, 8 secondsCGI slash image slash star. There you go.
17:1617 minutes, 16 secondsAnd that's pretty much it. I'm going to close this file and this one as well.
17:2017 minutes, 20 secondsOkay. So now before I work on any other stuff regarding the database, basically the database integration is done.
17:2817 minutes, 28 secondsPrisma, Neon, everything is done and everything is in place. But of course, we're going to need to create the UI
17:3717 minutes, 37 secondsfields and stuff like that in order to make sure that we are pulling and sending and creating uh queries in the database through our server actions and
17:4617 minutes, 46 secondsall that. But all that's going to come later. But before that I would like to get into the
17:5317 minutes, 53 secondsuh routes protection and for that of course we need the authentication and I'm going to use this better o for that.
Chapter 3: Authentication
18:0218 minutes, 2 secondsSo first of all I'm going to open my terminal. I'm going to make sure that everything is closed.
18:0818 minutes, 8 secondsThere you go. Clear. And I'm going to say npm install better dash.
18:1618 minutes, 16 secondsThere you go. And also we have add better-prisma-
18:2418 minutes, 24 secondsadopter. These two packages are are the two that we need. So I'm going to click enter.
18:3218 minutes, 32 secondsAll right. So that has been installed.
18:3518 minutes, 35 secondsI'm going to go to my env.local file here and I'm going to let's make sure
18:4118 minutes, 41 secondsthat this is the database. And then we also have here I'm
18:4818 minutes, 48 secondsgoing to add authentication. There you go. And here basically specifically we're going to work on the better oath. For better o
18:5718 minutes, 57 secondswe're going to need two things. So first of all we need a better
19:0519 minutes, 5 secondssecret. There you go. And then we need a better
19:1219 minutes, 12 secondsURL. There you go. And in order to get both of these things, first of all, here in my terminal, I'm going to do open SSL
19:2219 minutes, 22 secondsspace rand for the random space. And then here I have dash base 64 and 32
19:3119 minutes, 31 secondshere. That's going to give me this random uh string that I'm going to put into the better o secret. And then after
19:4019 minutes, 40 secondsthat I'm going to need my localhost URL in the better o URL that is going to be
19:4719 minutes, 47 secondshttp slash localhost colon 3000. There you
19:5419 minutes, 54 secondsgo. Let me save that. Let me format. No need for format here. So let me save that here.
20:0120 minutes, 1 secondAnd I guess that's pretty much it. But uh not just that. We're going to need a few more things as well. So, I'm going to go to my code uh my browser here and
20:1020 minutes, 10 secondsI'm going to go to console.cloud.google.com
20:2220 minutes, 22 secondsand here I'm going to have enable well no need. So, for the project I'm going to select YouTube here.
20:3120 minutes, 31 secondsNo project YouTube. Okay. No organization. So, first of all, I'm going to go here and APIs,
20:3920 minutes, 39 secondsenable APIs and services. I'm going to go to my credentials
20:4920 minutes, 49 secondsaccess blocked as we're going to enforce a twostep verification. Okay, so I guess I'm going to need to do that. I'll meet you after that.
20:5820 minutes, 58 secondsAll right, guys. So I have enabled the two setup authentication. Of course we
21:0621 minutes, 6 secondsare in the YouTube. Actually for this one I'm going to create a new project.
21:1121 minutes, 11 secondsI'm going to name that project as let's say full
21:1821 minutes, 18 secondsstack SAS architect. So I I can I can always use that for whatever project I work on. I'm going to click create.
21:3221 minutes, 32 secondsIt's going to take a few seconds. So, I'm just going to hold that's done.
21:3621 minutes, 36 secondsSelect project and that notifications are gone. And then here I'm going to first of all
21:4421 minutes, 44 secondsconfigure consent screen for this one as this is a new project. So, I'm going to get started.
21:5321 minutes, 53 secondsI'll meet you after the consent.
21:5621 minutes, 56 secondsSo, the consent is done. I'm going to go to create O client. So make sure you have one O for the Google and one O for
22:0422 minutes, 4 secondsthe GitHub. I'm going to create one for the Google now. So there you go. I have both of my client ID and client secret.
22:1222 minutes, 12 secondsI'm going to copy my client ID and that's going to go under here. [snorts] So first of all, I'm just going to put that make that comment. I'm going to get
22:2122 minutes, 21 secondsback here. Copy the client secret as well. and just Okay, let's get back here. And there you go. So, we have both
22:2922 minutes, 29 secondsof these. So, for this one, I'm going to say http and that's going to be localhost
22:3722 minutes, 37 seconds3000 /allback slash GitHub. That's going to be what's
22:4422 minutes, 44 secondsgoing to go inside the authorization call back URL. And that's pretty much it. So I'm going to comment that and of
22:5422 minutes, 54 secondscourse comment that as well and yeah let me close this file. We're done with this one. The next thing that I'm going to
23:0023 minuteswork on is the O server configuration basically and for that I'm going to go to the lib and here create a new file o.ts.
23:1223 minutes, 12 secondsHere first of all I have import I'm going to import Prisma adapter from
23:1923 minutes, 19 secondsbetter o Prisma adapter there you go and then here I have import
23:2723 minutes, 27 secondsbetter o from better o and then also here I have next cookies from better o
23:3623 minutes, 36 secondsnextjs also here I'm going to import Prisma
23:4323 minutes, 43 secondsand hold on Prisma. There you go. From our Prisma file. Excellent.
23:4923 minutes, 49 secondsHere I'm going to say const use database is equal to boolean process.env
23:5923 minutes, 59 secondsdot database URL.
24:0424 minutes, 4 secondsNow I'm going to say export const O is equal to better O. And here
24:1124 minutes, 11 secondsI'm going to open this object where I have base URL which is going to be
24:1724 minutes, 17 secondsprocess env URL and then here I have secret and for
24:2924 minutes, 29 secondsthat I'm going to say process env
24:3724 minutes, 37 secondssecret and now here I'm going to say dot dot dot dot and I'm going to add use
24:4424 minutes, 44 secondsdatabase. I'm going to open that. And here I have this uh true and here I have this else. And in case of not true
24:5324 minutes, 53 secondsstatement, I'm going to return an empty object. And there let me bring this up. And in case of
25:0225 minutes, 2 secondstrue, I'm going to uh return this object where I have database which is going to be Prisma adopter. Here I'm going to add
25:1125 minutes, 11 secondsPrisma and then second value here is going to be another object which is going to add a provider
25:1825 minutes, 18 secondsposress SQL. Let me format and save that and uh yeah that what it is going to be for both either when that's true or when
25:2725 minutes, 27 secondsthat's false. After that here I'm going to add social providers and that's going to be another object where I have first
25:3625 minutes, 36 secondsof all Google that's going to be object itself and I'm going to add client id for that which is going to be
25:4525 minutes, 45 secondsprocess.env google_client id or it's going to be an empty array so
25:5325 minutes, 53 secondswe the app does not crash or something like that. Then we have client secret.
25:5925 minutes, 59 secondsThat's going to be process.env Google_client secret and an empty object here.
26:1126 minutes, 11 secondsSorry, empty string here. And then after that here we have GitHub. That's going to be another object on its own where I
26:2026 minutes, 20 secondshave a client ID. There you go. Process. env dot
26:2826 minutes, 28 secondsgithub_client id or it's going to be an empty string.
26:3426 minutes, 34 secondsThen we have and we also have client secret which is going to be process.env
26:4226 minutes, 42 secondsgithub_client secret and an empty string there. And
26:5026 minutes, 50 secondsafter that here I'm going to add user open that object and that's going
26:5726 minutes, 57 secondsto be additional fields and I'm going to open that object where I have username open that object type for that is going
27:0627 minutes, 6 secondsto be a string and then it's going to be required which is going to be set to false because it is not required.
27:1627 minutes, 16 secondsAll right.
27:1827 minutes, 18 secondsNow here after this user here I'm going to add plugins and that's going to be
27:2627 minutes, 26 secondsnext cookies and here I'm going to add yeah actually
27:3327 minutes, 33 secondsI'm going to call that there you go and after that here finally here we have
27:3827 minutes, 38 secondsexport type session is equal to type of
27:4427 minutes, 44 secondso and I'm going to add dot dollar sign
27:4927 minutes, 49 secondsinfo dot session. There you go. So this file is not done yet as we still need to
27:5727 minutes, 57 secondsdo a little bit things for the uh provision of of the new user when we
28:0328 minutes, 3 secondsare going to work with the uh workspaces but that's coming later. All right, I'm going to close this file now and uh
28:1128 minutes, 11 secondsbasically we have done the server configuration but now we need to do for the client and plus for the API routes.
28:1928 minutes, 19 secondsSo first of all I'm going to go to this lib and going to create a new file which is going to be o-client.ts.
28:2728 minutes, 27 secondsVery minimal file but very important one. This is going to be import and I'm going to import create o client from
28:3528 minutes, 35 secondsbetter o uh client but not client here better o slash this is going to be
28:4328 minutes, 43 secondsreact. There you go. And then here we have export const client is equal to create o client.
28:5228 minutes, 52 secondsThat's pretty much it. That's just all that we're going to do in this file. And next up, I'm going to close this one.
29:0029 minutesAnd I'm going to need to go to the app here. And uh in the not not this app,
29:0829 minutes, 8 secondsbut this main app. And in here I'm going to create a new folder API.
29:1229 minutes, 12 secondsIn there I have another folder which is going to be O. Then another folder which is going to be these square brackets.
29:2229 minutes, 22 secondsThen dot dot dot and then all. And then in there I have this a new file which is going to be route.ts.
29:3129 minutes, 31 secondsAnd here I'm going to import this is going to be to nextjs handler. There you
29:3829 minutes, 38 secondsgo. And then we have import o from our lib o. And then we also I'm
29:4629 minutes, 46 secondsgoing to export here con. I'm going to say get and post. That's going to be equal
29:5529 minutes, 55 secondsto two nextjs handler and I'm going to provide the in that. And that's pretty much it. I'm going to go to the browser
30:0430 minutes, 4 secondshere and here I'm going to get rid of this app and I'm going to add API/
30:1130 minutes, 11 secondsand let's do slash okay here and pick hit enter and there you go. Okay, true.
30:1930 minutes, 19 secondsEverything is good. So yeah, so basically our o is working which is fantastic. All right. So now I'm going
30:2630 minutes, 26 secondsto work on the session provider plus o model shell. And for that I'm going to go back to my code editor and the very
30:3530 minutes, 35 secondsfirst file that I need is I'm going to go to my components. Then here I'm going to create a new folder that's going to
30:4230 minutes, 42 secondsbe called o. And here I have a new file which is going to be session dot uh
30:5030 minutes, 50 secondssession dashp provider.tsx. This is going to be a client component.
30:5930 minutes, 59 secondsAnd then here I have I'm going to say import type react node. There you go. And also here
31:0931 minutes, 9 secondsI'm going to say export function o session
31:1831 minutes, 18 secondsprovider and that's going to take a children which is going to be a type of
31:2531 minutes, 25 secondsthis where we have children type of react node and I'm going to open that function here. We simply going to return our children. That's it. Simple.
31:3931 minutes, 39 secondsThe next thing that I need is I'm going to collapse everything in here. I'm going to go under lib, create a new folder, name it types. And here I'm
31:4831 minutes, 48 secondsgoing to create a new file. I'm going to name it account.ts.
31:5531 minutes, 55 secondsAnd uh there you have our types. So basically we have connected account provider string provider account ID is
32:0332 minutes, 3 secondsgoing to be string. Then we have we're exporting another ONAV user name and email both are optional. So that's why
32:1132 minutes, 11 secondswe have the options for the null. So then we also have O mode here. Either it's going to be login or register. Then
32:1932 minutes, 19 secondswe have O provider which is going to be Google or GitHub of course as we have that along with the login credentials.
32:2832 minutes, 28 secondsAnd then here, of course, we have account profile where ID, name, email, username, image, and the rest of the
32:3532 minutes, 35 secondsthings that we need for that specific type. Next, I'm going to close this file and I'm going to go to this O folder inside the components. And here, I'm
32:4432 minutes, 44 secondsgoing to create a new file, which is going to be O-model- provider.tsx.
32:5332 minutes, 53 secondsAnd here first of all let's make sure it's a client component. Then we are going to import a few things like
33:0333 minutes, 3 secondscreate context from react. Also we need
33:0833 minutes, 8 secondsuse call back. We also need use context and use memo.
33:1833 minutes, 18 secondsThere you go. and also use state and import actually
33:2733 minutes, 27 secondsfor that I'm going to say here type
33:3433 minutes, 34 secondsreact node there you go let me format that and then after that here we also
33:4133 minutes, 41 secondsare going to need our o mode nope or this one import
33:5033 minutes, 50 secondstype O mode from slash lib slash types slash account.
34:0334 minutes, 3 secondsThere you go. The one that we just created a little ago. And then here I'm
34:0934 minutes, 9 secondsgoing to say type O model context value is equal to this code
34:1634 minutes, 16 secondsblock where we have is open is going to be boolean
34:2334 minutes, 23 secondsmode is going to be O mode open model is going to be a function which is going to
34:3134 minutes, 31 secondstake a mode which is optional and that itself is going to be mode type and it's
34:4034 minutes, 40 secondsnot going to return anything as it's a void. Then we have also close model function
34:4834 minutes, 48 secondsvoid. Then we also have set of mode function
34:5834 minutes, 58 secondsvoid. And in here it expects a mode argument which is going to be o mode of type. Awesome.
35:0735 minutes, 7 secondsNow here I'm going to say con o model
35:1335 minutes, 13 secondscontext is equal to create context and in here I'm going to provide o model
35:2035 minutes, 20 secondscontext value or null and it's going to be initiated by null as well. There you go. And here
35:3035 minutes, 30 secondsexport function o model provider and it's going to take
35:3935 minutes, 39 secondschildren as an argument and which is going to be children
35:4635 minutes, 46 secondsreact node and I'm going to open that function body. Here we have const
35:5335 minutes, 53 secondsis open and set is open is equal to use state and false
36:0236 minutes, 2 secondsand here we have con mode set mode is equal to use state and
36:1036 minutes, 10 secondshere I'm going to say o mode and here we have here by default I'm going to go for the login one.
36:2236 minutes, 22 secondsExcellent.
36:2336 minutes, 23 secondsI'm going to say const open model is going to be equal to use call back.
36:3436 minutes, 34 secondsAnd here we have first of all this is a function. So let's open that here. So it's easier for you guys to understand.
36:4236 minutes, 42 secondsAnd now this expects an argument which is going to be here next mode
36:5036 minutes, 50 secondswhich is going to be o mode type and by default equal to login
36:5836 minutes, 58 secondsand then here I'm going to add set mode which is going to be next mode
37:0637 minutes, 6 secondsand also set is open to true and provided the second argument that it expects and that is empty array here.
37:1837 minutes, 18 secondsAwesome. Come down here and I'm going to say con close model
37:2537 minutes, 25 secondswith a capital M is equal to use call back. We have this function here and
37:3237 minutes, 32 secondssecond argument here goes empty array again. And here I'm going to say set is open to false. There you go.
37:4337 minutes, 43 secondsAfter that here I'm going to say con value is equal to use memo.
37:5037 minutes, 50 secondsAnd here we have this function once again.
37:5837 minutes, 58 secondsAnd as a second arguments here I'm going to add is open mode
38:0538 minutes, 5 secondsopen model and close model and here I'm going to add actually this whole code
38:1338 minutes, 13 secondsblock I'm going to wrap this within this parentheses and then here I'm going to
38:2038 minutes, 20 secondssay is open mode Open O model and close O model.
38:3238 minutes, 32 secondsAlso, I'm going to say set O mode.
38:3638 minutes, 36 secondsThat's going to be set mode type. There you go. And that's pretty much it for
38:4238 minutes, 42 secondsthe value here. And now after the value here, I'm going to say return.
38:5238 minutes, 52 secondsOpen that. And here we have o model context dot provider. There you go. And
39:0039 minutesI'm going to open that. Here I'm going to add value which is going to be value.
39:0539 minutes, 5 secondsAnd here I'm going to add children. There you go. Awesome. At the
39:1339 minutes, 13 secondsI mean after the children here we're going to need another o model component which we have not
39:2039 minutes, 20 secondscreated yet. And I will get to that after this component. So here I'm going
39:2639 minutes, 26 secondsto say export function use of model open
39:3439 minutes, 34 secondsthat function body and here I have con context is equal to use context
39:4339 minutes, 43 secondso model context. There you go. And I'm I'm going to say if context does not exist.
39:5239 minutes, 52 secondsAnd then I'm going to throw new throw new error which is going to be use o
40:0340 minutes, 3 secondsmodel must be used within
40:0940 minutes, 9 secondso model provider. There you go. And after this here, I'm finally returning
40:1840 minutes, 18 secondscontext. Awesome. Next, I'm going to need a few icons. And for that, inside the components, uh, under o, I'm going
40:2640 minutes, 26 secondsto create a new file. I'm going to name it O-icons.tsx.
40:3240 minutes, 32 secondsAnd here we have this code. So, basically, we have this type icon props.
40:3940 minutes, 39 secondsThen we have export Google icon. That's the SVG for that. And then we have GitHub icon and that's the SVG for that.
40:4840 minutes, 48 secondsAnd then close icon and that's the SVG for that. Eventually these are going to be used for the models that we are designing for the login and register.
40:5840 minutes, 58 secondsAll right. The next file that I need is here o-ashbutton.tsx.
41:0641 minutes, 6 secondsAnd here I'm going to import type O
41:1341 minutes, 13 secondsprovider from our types account. And after that I'm going to import CN as well. And after that I'm going to import
41:2141 minutes, 21 secondsGitHub icon from our O icons as well as Google icon from our O icons. Then here
41:2941 minutes, 29 secondsI'm going to need type or O button props is equal to this where we
41:3841 minutes, 38 secondshave provider or O provider and then we have on click which is
41:4541 minutes, 45 secondsoptional and a function which is going to be void. Then we also need a class
41:5241 minutes, 52 secondsname which is going to be a string and disabled which is going to be a boolean.
42:0042 minutesAfter that we have const provider config and here I'm going to say record and
42:0942 minutes, 9 secondsthis one is going to be all provider and here I'm going to add
42:1742 minutes, 17 secondslabel which is going to be a string icon which is going to be a type of
42:2542 minutes, 25 secondsGoogle icon. There you go. And eventually this whole thing is going to be a type of this where we have
42:3542 minutes, 35 secondsGoogle which is going to be label continue with Google
42:4442 minutes, 44 secondsand icon is going to be Google icon and then we have GitHub which is for that we
42:5242 minutes, 52 secondshave a label of continue with GitHub. UB and icon is going to be GitHub icon.
43:0343 minutes, 3 secondsAnd I guess that's pretty much it.
43:0643 minutes, 6 secondsThere you go. And then after that here I'm going to say export function o
43:1443 minutes, 14 secondsbutton. Open that. And here we have a provider that it expects also on click.
43:2243 minutes, 22 secondsthen also class name and also disabled and this whole thing is going to be a type of or
43:3143 minutes, 31 secondsbutton props. Let's open the function body here and that's going to be const.
43:3743 minutes, 37 secondsI'm going to extract label and icon from the provider config
43:4743 minutes, 47 secondsprovider. There you go. And then here I'm going to finally return which is going to be a button. I'm going to
43:5543 minutes, 55 secondsprovide it a type of a type of but type button. And then we have on click
44:0544 minutes, 5 secondswhich is going to be on click. Then we also have disabled and that's going to be disabled.
44:1544 minutes, 15 secondsThen we also need class name. And for that I'm going to use CN here. And I'm
44:2244 minutes, 22 secondsgoing to paste these classes here. And I guess that's pretty much it. After that, I'm going to need another one which is going to be class name. There you go.
44:3344 minutes, 33 secondsLet me format that. So we have these bunch of classes and then these ones and of course these
44:4144 minutes, 41 secondsones. And then we finally have the class name from our props. And then inside this button here, I'm going to say
44:5144 minutes, 51 secondsicon. And that's going to be class name H-5 and width dash five. Hold on.
45:0245 minutes, 2 secondsThere you go. And we also need shrink zero. After the icon, we need the label.
45:0945 minutes, 9 secondsThere you go. Fantastic. All right, I'm going to close this file.
45:1445 minutes, 14 secondsAnd now comes the most important part for this. And that is this O model. And for the O model, what I'm going to do is
45:2245 minutes, 22 secondsI'm going to create a new file under this O folder. That is going to be O-model.tsx.
45:3145 minutes, 31 secondsAnd this one is going to be a client component. Use client. And then we're going to need use effect
45:4045 minutes, 40 secondsalso use ID also use ref also use state awesome and then we of
45:5045 minutes, 50 secondscourse need o client as well and then I'm going to import type
45:5945 minutes, 59 secondsthat's going to be o mode also o provider there you
46:0646 minutes, 6 secondsI'm going to need CN as well. And then I'm going to need close icon from our O icons. Also use O
46:1646 minutes, 16 secondsmodel. And then also O button. There you go. Here I'm going to add actually I'm
46:2446 minutes, 24 secondsgoing to get rid of this space from here. And here I'm going to add condeal
46:3546 minutes, 35 secondsto slash app. There you go. And here we have const
46:4146 minutes, 41 secondsmode copy is going to be a record in which we have so I'm going to break
46:4946 minutes, 49 secondsit down here and here we have o mode. First of all, let me bring it up here. And then we
46:5846 minutes, 58 secondsalso have this little code block where we have title string
47:0647 minutes, 6 secondssubtitle string submit string
47:1247 minutes, 12 secondsswitch prompt which is going to be a string and then switch action which is
47:2047 minutes, 20 secondsgoing to be a string. [snorts] All right. And then after that here I'm going to add this another code block and
47:2847 minutes, 28 secondsthis is going to be login this and register this and inside login we
47:3747 minutes, 37 secondshave title that's going to be welcome back
47:4347 minutes, 43 secondssubtitle which is going to be log into
47:5047 minutes, 50 secondscontinue building on replet and then here I'm going to need a
47:5947 minutes, 59 secondssubmit which is going to be log in and then I'm going to need a
48:0748 minutes, 7 secondsswitch prompt which is going to be double quotes here so don't
48:1448 minutes, 14 secondshave an account and then switch action which is going to create
48:2248 minutes, 22 secondsaccount. There you go. All right. And then for the register, I'm going to need a title, of course, which is going to be create your account.
48:3548 minutes, 35 secondsThen we have subtitle that's going to be start building apps
48:4248 minutes, 42 secondswith replet agent in minutes. And then here I'm going to need a submit. Submit.
48:5348 minutes, 53 secondsThere you go. Which [snorts] is going to be create account. And then we have switch prompt
49:0249 minutes, 2 secondswhich is going to be already have an account question mark. And then finally
49:0949 minutes, 9 secondswe have switch action. That's going to be log in. Let me format and save that.
49:1649 minutes, 16 secondsAnd after everything here I'm going to say function o
49:2349 minutes, 23 secondsdivider that's going to be a function and I'm going to return in which we have a div
49:3149 minutes, 31 secondsclass name relative py1 open that another div which is going to be
49:3849 minutes, 38 secondsself-closing class name absolute insert x0 then we We have top 1 slash2,
49:4849 minutes, 48 secondswe have h-px, we have minus translate y 1 slash2, we have border uh sorry bg dash border
49:5849 minutes, 58 secondslight and that's pretty much it. After [snorts] that here we have p tag I'm going to say or
50:0650 minutes, 6 secondscontinue with email and to that p tag I'm provide some class names relative
50:1650 minutes, 16 secondsMX- auto then we have dash fit and then we have bg surface white we
50:2350 minutes, 23 secondsalso have px 3 and text xs also
50:3050 minutes, 30 secondstext text muted let me format and save that
50:3650 minutes, 36 secondsnow here I'm going to say type field props is equal to
50:4450 minutes, 44 secondsthis and here we have ID which is going to be a string
50:4950 minutes, 49 secondslabel string. Then we have type string
50:5650 minutes, 56 secondsauto complete which is going to be a string.
51:0251 minutes, 2 secondsAnd then we have placeholder that's going to be a string as well. And
51:0851 minutes, 8 secondsvalue as a string and on change is going to be a function but void and that's
51:1651 minutes, 16 secondsgoing to expect a value which is going to be a string. Awesome. Here I'm going to say function o field
51:2651 minutes, 26 secondsand here I'm adding a few arguments. So we have id label type
51:3651 minutes, 36 secondsauto complete then we have placeholder and then we have value then we have
51:4551 minutes, 45 secondson change and I'm going to come down here and make sure that it is a type of o field props
51:5351 minutes, 53 secondsopen that function body let me pull it up and here I'm going to say return And
52:0052 minutesin the return, we have a div class name space y1.5.
52:0852 minutes, 8 secondsOpen that div. We have a label. And I'm going to get rid of the HTML 4. And
52:1452 minutes, 14 secondsactually, I'm going to give it an ID here. There you go. Then here we have a class name.
52:2252 minutes, 22 secondsAnd I'm going to add block text small font medium text text secondary. Open that label. And here we have that label.
52:3652 minutes, 36 secondsLet me format that.
52:3952 minutes, 39 secondsAnd then get under that label. Here we have this input.
52:4352 minutes, 43 secondsWe have type here. That's going to be dynamic type ID
52:5152 minutes, 51 secondsID. So it matches to the label. Auto complete. Here we have auto complete.
53:0053 minutesThen we have placeholder. Placeholder. And then we have value.
53:1053 minutes, 10 secondsAnd then here we have on change event. And that's going to be on change
53:2053 minutes, 20 secondsevent.target. target dot value.
53:2553 minutes, 25 secondsThere you go. And then we also have a class name. And for that I'm going to be using CN. Open that here. And I'm going to paste these classes there. Awesome.
53:3653 minutes, 36 secondsAnd I guess that's pretty much it. Uh, this one is done. Yeah, let's get under
53:4353 minutes, 43 secondshere. Now finally here I'm going to write export function o model
53:5253 minutes, 52 secondsand here this is going to be the function body we have const is open
54:0054 minutesmode close model set o mode is equal to use o model.
54:1054 minutes, 10 secondsThere you go. Then we have const title id is equal to use id.
54:1954 minutes, 19 secondsconst description id is equal to use id.
54:2654 minutes, 26 secondsAnd then here we have con panel reference is equal to use ref. I'm
54:3554 minutes, 35 secondsgoing to say HTML div element and we have default value as null. All
54:4454 minutes, 44 secondsright. [snorts] And then here we have const I'm going to say name set name is equal to use state
54:5554 minutes, 55 secondsempty con email set email
55:0255 minutes, 2 secondsis equal to use state empty con
55:0955 minutes, 9 secondspassword set password is equal to Use state empty
55:1855 minutes, 18 secondscon is loading
55:2355 minutes, 23 secondsset is loading is equal to use state
55:3055 minutes, 30 secondsfalse by default. And then we have const
55:3655 minutes, 36 secondserror set error is equal to use state either string
55:4655 minutes, 46 secondsor null and default value is null.
55:5555 minutes, 55 secondsAwesome. Here I have const copy is equal to mode copy
56:0456 minutes, 4 secondsand I'm going to add mode there const alternate
56:1356 minutes, 13 secondsmode is going to be o mode is equal to
56:2256 minutes, 22 secondsmode when that is equal to login
56:3056 minutes, 30 secondsthen it's going to be register otherwise it's going to be login
56:3756 minutes, 37 secondsall right and here we have con call back URL is equal to
56:4656 minutes, 46 secondslet me get down here type of and I'm going to say here window is not equal to undefined.
56:5756 minutes, 57 secondsThen here I'm going to add new URL search params. There you go.
57:0857 minutes, 8 secondsWindow dot location dot search
57:1657 minutes, 16 secondsand I'm going to dot get call back
57:2257 minutes, 22 secondsURL. There you go. And then otherwise this is going to be null. There you go.
57:3057 minutes, 30 secondsAwesome. [snorts] I'm going to get down here. This is going to be const redirect
57:3757 minutes, 37 secondshint is equal to callback URL. And when that is equal to slash app
57:4657 minutes, 46 secondsthen we have either then it's going to say sign in to open your workspace
57:5557 minutes, 55 secondsand otherwise it's going to say call back URL and that's going to be dot
58:0258 minutes, 2 secondsstarts with hold on starts with and here I'm going to add slash
58:1158 minutes, 11 secondsOtherwise, nope.
58:1558 minutes, 15 secondsHere I'm going to say sign in to continue.
58:2158 minutes, 21 secondsOtherwise, it's going to say null. There you go. Awesome. I'm going to also add here
58:3058 minutes, 30 secondsconst router is equal to use router. And there you go. That's gets added through
58:4058 minutes, 40 secondswhere is that next router? Nope, not from next router.
58:4758 minutes, 47 secondsAnd that needs to come from next navigation. There you go. Awesome.
58:5458 minutes, 54 secondsAnd here I'm going to add con handle close is equal to use call
59:0459 minutes, 4 secondsback. Here we have this function. I'm going to open that. And this is going to be close of model first of all. Then we
59:1359 minutes, 13 secondshave con params is equal to new URL search
59:2059 minutes, 20 secondsparams and I'm going to say window dot location
59:2859 minutes, 28 secondsdot search. Awesome. After that here I'm
59:3459 minutes, 34 secondsgoing to say if params dot has o
59:4059 minutes, 40 secondsand that is not true means params does not have the o and
59:4959 minutes, 49 secondsparams dot has call back url then we return from this
59:5859 minutes, 58 secondsfunction and here I'm going to say actually before that I'm going to add dependency array that's going to be
1:00:061 hour, 6 secondsclose on model also router here. So we can get rid of the
1:00:131 hour, 13 secondserror from here. All right. Now here I'm going to say params
1:00:221 hour, 22 secondsparams dot delete and this is going to be o and params dot delete
1:00:321 hour, 32 secondscall back url with a capital u and yes it looks good as well. So here
1:00:391 hour, 39 secondsI'm going to say const query is equal to params dot to string
1:00:471 hour, 47 secondsand here I'm going to add router dotreplace and I'm going to add if query is true
1:00:551 hour, 55 secondsthen it's going to be this function here and that's going to
1:01:011 hour, 1 minute, 1 secondbe window dot location dot path name
1:01:071 hour, 1 minute, 7 secondsquestion mark And I'm going to add that query here as well. Otherwise, this is
1:01:151 hour, 1 minute, 15 secondsgoing to be window.loation dot path name. Awesome.
1:01:241 hour, 1 minute, 24 secondsAnd I guess that's pretty much it for this handle close function. I'm going to bring it up. Now here I'm going to add use effect.
1:01:341 hour, 1 minute, 34 secondsAnd that's going to be a function here.
1:01:381 hour, 1 minute, 38 secondsOpen that up. Add dependency array which is going to be is open in this case. And
1:01:441 hour, 1 minute, 44 secondsI'm going to add if is open is not true then we're going to return
1:01:521 hour, 1 minute, 52 secondsfrom this use effect. And I'm going to say const previous overflow is equal to document dot body dot style dot overflow.
1:02:071 hour, 2 minutes, 7 secondsThere you go. And then I'm going to say document dotbody dotstyle dot overflow
1:02:161 hour, 2 minutes, 16 secondsis going to be equal to hidden here and then I'm going to return. So on the
1:02:241 hour, 2 minutes, 24 secondsdismount I I can change that to return here. Okay. So document dotbody
1:02:331 hour, 2 minutes, 33 secondsdotstyle dot overflow is going to be equal to previous overflow.
1:02:441 hour, 2 minutes, 44 secondsAnd that's pretty much it. Let's pull this up a little here. And here I'm going to add another use effect
1:02:531 hour, 2 minutes, 53 secondsand a function. Let's add the dependency array which is going to be is open and
1:03:001 hour, 3 minutesalso handle close.
1:03:061 hour, 3 minutes, 6 secondsThere you go. And here I'm going to add if is open is not true then we return.
1:03:171 hour, 3 minutes, 17 secondsThis is basically going to be for the escape button uh a keyboard shortcut key. So for that I'm going to add const
1:03:261 hour, 3 minutes, 26 secondshandle key down is equal to event event which is going to be keyboard
1:03:341 hour, 3 minutes, 34 secondsevent open that function body and this is going to be if event dot key
1:03:431 hour, 3 minutes, 43 secondsis equal to escape then we handle close. There you go.
1:03:521 hour, 3 minutes, 52 secondsAnd after that here I'm going to say window dot add eventlister
1:03:591 hour, 3 minutes, 59 secondskey down and I'm going to add candle key down function here and eventually I'm
1:04:071 hour, 4 minutes, 7 secondsgoing to return and make sure to remove the event listener on the dismount. So for that window dot remove event
1:04:161 hour, 4 minutes, 16 secondslistener and it's going to remove the key down on handle key down.
1:04:261 hour, 4 minutes, 26 secondsThere you go. And that's pretty much it for this.
1:04:311 hour, 4 minutes, 31 secondsAnd yeah, all good. I'm going to pull this up. And here I'm going to add another use effect.
1:04:411 hour, 4 minutes, 41 secondsAnd this is going to be for resetting all of the state. So I'm going to say if
1:04:491 hour, 4 minutes, 49 secondsis open is not true then we return right. And
1:04:551 hour, 4 minutes, 55 seconds[snorts] here I'm going to say const reset is equal to this function
1:05:021 hour, 5 minutes, 2 secondswhere we have set name empty, set email
1:05:101 hour, 5 minutes, 10 secondsempty, set password empty, set error null,
1:05:181 hour, 5 minutes, 18 secondsand set is loading to false. There you go. And here I'm going to add I'm going
1:05:261 hour, 5 minutes, 26 secondsto basically call that reset here and the dependency that goes that's is open.
1:05:341 hour, 5 minutes, 34 secondsExcellent. Here I'm going to say if is open is not
1:05:421 hour, 5 minutes, 42 secondstrue then we return null as eventually we are going only going to
1:05:501 hour, 5 minutes, 50 secondsreturn this when the model is open. So we have a div. Give it a class name
1:05:571 hour, 5 minutes, 57 secondsfixed insert zero. Z d- 100 flex items center justify center.
1:06:081 hour, 6 minutes, 8 secondsThere you go. And we have P4. Open that div. And here we have a button which is going to be in this case self-closing button.
1:06:191 hour, 6 minutes, 19 secondsSo I'm going to add type button area label that's going to be
1:06:261 hour, 6 minutes, 26 secondsclose authentication model and then here we have class name
1:06:341 hour, 6 minutes, 34 secondswhich is going to be absolute inside zg-1
1:06:421 hour, 6 minutes, 42 seconds91818 and then here we have actually /45 five.
1:06:491 hour, 6 minutes, 49 secondsThen we have backdrop blur. I'm going to change that to two pixels.
1:06:561 hour, 6 minutes, 56 secondsAnd then eventually here we have on click which is going to be handle close. Create a div. Here I'm going to
1:07:041 hour, 7 minutes, 4 secondsgive it a reference that is going to be panel reference. There you go. We also
1:07:121 hour, 7 minutes, 12 secondsneed a ro dial log. And then we also need area model which is going to be true. And
1:07:211 hour, 7 minutes, 21 secondsthen we also need the area labeled by which is going to be
1:07:281 hour, 7 minutes, 28 secondstitle ID. Then we also area description by
1:07:341 hour, 7 minutes, 34 secondshere description ID and here I'm going to add class name which is going to be this that I'm going
1:07:431 hour, 7 minutes, 43 secondsto paste here. And uh after that I'm going to open that div. Here we have another div. I'm going to give it class
1:07:511 hour, 7 minutes, 51 secondsname flex items dash start justify between we have gap of four border
1:08:011 hour, 8 minutes, 1 secondbottom and then we have border dash black slash this is going to be 0.06 06
1:08:101 hour, 8 minutes, 10 secondspx 6 and then we have pb5 and pt6.
1:08:161 hour, 8 minutes, 16 secondsLet me format that. Open that div here.
1:08:201 hour, 8 minutes, 20 secondsAnother div inside that which is going to be just empty without any class name zh2 in there. And I'm going to open that.
1:08:321 hour, 8 minutes, 32 secondsAnd here we have ID which is going to be title ID.
1:08:391 hour, 8 minutes, 39 secondsThen we have class name. I'm going to say font display text dash 28 pixels
1:08:471 hour, 8 minutes, 47 secondsfont dashn normal leading tight. And we have tracking that goes
1:08:561 hour, 8 minutes, 56 secondsminus0.04 04 em text dash text dash agent heading. And
1:09:041 hour, 9 minutes, 4 secondsthere you go. And [snorts] this H2 is going to say copy dot title. So I guess
1:09:131 hour, 9 minutes, 13 secondsthat's pretty much it for now. Actually, you know what? Let's add another P tag here. So P ID
1:09:231 hour, 9 minutes, 23 secondsdescription ID. There you go. And then we need class name I'm going to say margin top-1.5
1:09:321 hour, 9 minutes, 32 secondstext small leading relaxed and text dash text dashmuted
1:09:391 hour, 9 minutes, 39 secondsand here I'm going to add redirect hint
1:09:451 hour, 9 minutes, 45 secondsotherwise just copy that dot subtitle there you go and that's pretty much it I guess now we should round it 24 pixels.
1:09:561 hour, 9 minutes, 56 secondsLet me see that rounded dash. Yeah, right. That's good. So, I guess now we
1:10:031 hour, 10 minutes, 3 secondsshould see that here in action. So, I'm going to add that here. Oodel.
1:10:121 hour, 10 minutes, 12 secondsAwesome.
1:10:141 hour, 10 minutes, 14 secondsAll right. Next, I need you to go to the app slash layouts.tsx file here, the
1:10:211 hour, 10 minutes, 21 secondsmain one. And here I'm going to need you to add under the
1:10:271 hour, 10 minutes, 27 secondsbody here. We're first of all adding O session provider. There you go.
1:10:391 hour, 10 minutes, 39 secondsMake sure this whole thing is inside.
1:10:421 hour, 10 minutes, 42 secondsThen here I'm going to add o model provider and make sure it's set up like that.
1:10:541 hour, 10 minutes, 54 secondsAnd right now the next file that I need you to create is under this o folder create a new file which is going to be
1:11:041 hour, 11 minutes, 4 secondso-urlsync.tsx tsx
1:11:101 hour, 11 minutes, 10 secondsand this is going to be a use client as a client component. Then we have import
1:11:181 hour, 11 minutes, 18 secondsuse router from next navigation. We also need use search params. We also need o
1:11:271 hour, 11 minutes, 27 secondsclient also suspense from react also use effect from
1:11:361 hour, 11 minutes, 36 secondsreact and use o model from o model provider as well and here I'm going to
1:11:431 hour, 11 minutes, 43 secondssay function o url sync inner open function body here
1:11:521 hour, 11 minutes, 52 secondswe have const search params is equal to use search params
1:12:011 hour, 12 minutes, 1 secondand I'm going to make sure it's a small s. There you go. Here we have const
1:12:071 hour, 12 minutes, 7 secondsrouter is equal to use router and then here we have const
1:12:151 hour, 12 minutes, 15 secondsdata which is going to be session and is
1:12:201 hour, 12 minutes, 20 secondspending going to come from o client dot use session. There you go. Then we have
1:12:291 hour, 12 minutes, 29 secondsconst open model and also that's going to come from use o model. Awesome. Here
1:12:391 hour, 12 minutes, 39 secondsI'm going to have a use effect function a dependency array is going to
1:12:461 hour, 12 minutes, 46 secondshold search params also open
1:12:521 hour, 12 minutes, 52 secondsmodel also session and is pending and finally router as well inside this use
1:13:011 hour, 13 minutes, 1 secondeffect I'm going to say if is
1:13:071 hour, 13 minutes, 7 secondspending Then we return from this. And here I have const O is equal to search
1:13:151 hour, 13 minutes, 15 secondsparams dot get O. And const call back URL is equal to
1:13:241 hour, 13 minutes, 24 secondssearch params.get call back URL. And here I have const
1:13:341 hour, 13 minutes, 34 secondscall back is equal to call back URL
1:13:411 hour, 13 minutes, 41 secondsdot starts with slash and
1:13:501 hour, 13 minutes, 50 secondscall back URL dot starts with double slash. In that case, this is
1:13:581 hour, 13 minutes, 58 secondsgoing to be call back URL otherwise just null. And in here I have if
1:14:081 hour, 14 minutes, 8 secondssession dot user is already there. Let me pull it back here.
1:14:181 hour, 14 minutes, 18 secondsAnd if call back is true, then we have router dotreplace
1:14:271 hour, 14 minutes, 27 secondssave call back and we return. Simple. That means it's
1:14:351 hour, 14 minutes, 35 secondsalready signed in. Here we have if O is equal to login
1:14:421 hour, 14 minutes, 42 secondsor O is equal to register then here we have
1:14:531 hour, 14 minutes, 53 secondsif session
1:15:021 hour, 15 minutes, 2 secondsdot user does not exist. only then we open
1:15:081 hour, 15 minutes, 8 secondsmodel and we do o let me format that and yes that's pretty much it and after
1:15:181 hour, 15 minutes, 18 secondsthat here I'm going to say return null
1:15:251 hour, 15 minutes, 25 secondsI guess that's it yeah the [snorts] inner return null here
1:15:331 hour, 15 minutes, 33 secondsI'm going to add export function o url sync
1:15:401 hour, 15 minutes, 40 secondsand that's going to be return open that here and here we have first of
1:15:481 hour, 15 minutes, 48 secondsall suspense and I'm going to add a fall back which is going to be
1:15:561 hour, 15 minutes, 56 secondsnull and then here I'm going to add o url sync inner there you there
1:16:051 hour, 16 minutes, 5 secondsand of course I no longer need to keep this file open. I can close that but
1:16:121 hour, 16 minutes, 12 secondsnow inside this root uh providers here above the children I'm going to add o url sync.
1:16:241 hour, 16 minutes, 24 secondsThere you go. Excellent.
1:16:281 hour, 16 minutes, 28 secondsNow I would like to do a little bit test. I would like to display this on screen. So we get to see that here on the app page.
1:16:381 hour, 16 minutes, 38 secondsSo I'm thinking maybe we can put a link here. So if I can go to the app then app
1:16:461 hour, 16 minutes, 46 secondshere. Then we go to the dashboard and then page.tsx.
1:16:501 hour, 16 minutes, 50 secondsWe have this app home. If I go there and then here we have this little text
1:16:571 hour, 16 minutes, 57 secondshere. So what about if I come here and here actually yeah let's actually do
1:17:051 hour, 17 minutes, 5 secondsthat. So here I can create a I can bring button here but actually
1:17:121 hour, 17 minutes, 12 secondslet's not bring that. So testing only
1:17:211 hour, 17 minutes, 21 secondsand I'm going to testing ends here. So there you go. Here I'm
1:17:271 hour, 17 minutes, 27 secondsgoing to add a button. I'm going to give it a let's say type which is going to be button. And then here I'm going to make
1:17:361 hour, 17 minutes, 36 secondssure that it has an on click which works something like that. Open o
1:17:441 hour, 17 minutes, 44 secondsmodel. And that is what we need actually.
1:17:481 hour, 17 minutes, 48 secondsSo for that I'm going to copy that. Go above the return here. And let's actually actually yeah let's do that
1:17:551 hour, 17 minutes, 55 secondsactually here. So I'm going to go here testing only
1:18:041 hour, 18 minutes, 4 secondstesting ends here. So here I'm going to add con
1:18:121 hour, 18 minutes, 12 secondsopen model and that's going to be equal to use o model which is going to come from
1:18:201 hour, 18 minutes, 20 secondsour file that we just created and there you go use o model. Now this gets used
1:18:281 hour, 18 minutes, 28 secondshere. So on click open model and for this one I'm going to say login and the button is going to say open login model.
1:18:401 hour, 18 minutes, 40 secondsRight? I guess there's no need for the classes. So let's just use that for that as we just want to display there is some
1:18:471 hour, 18 minutes, 47 secondssort of error I guess on changes missing in type value and string but required in prompt
1:18:571 hour, 18 minutes, 57 secondsprops okay and let's actually go there if I click on this one and there you go we
1:19:041 hour, 19 minutes, 4 secondshave the model [snorts] and we will handle that issue as well so do not worry about that please so that's pretty
1:19:121 hour, 19 minutes, 12 secondsmuch it Now I would like to go back to the close this one and this one and of
1:19:201 hour, 19 minutes, 20 secondscourse I would like to get back to this O model file so I can keep on building our O model.
1:19:271 hour, 19 minutes, 27 secondsSo now after the P tag here we have this div tag closing. After that div I'm going to create a button here. I'm going
1:19:341 hour, 19 minutes, 34 secondsto give it a type button. And then we have an on click
1:19:411 hour, 19 minutes, 41 secondshandle close. And then we have area label close. We also have a class name.
1:19:501 hour, 19 minutes, 50 secondsThere you go. And then we also have in the button here I'm going to display clause icon. And for that we have class name H dash five and width dash five.
1:20:041 hour, 20 minutes, 4 secondsFormat that. Let's get back here.
1:20:061 hour, 20 minutes, 6 secondsDisplay that. And there you go. We have this little If I click on that, it goes away. If I click here, it goes away. So
1:20:131 hour, 20 minutes, 13 secondswe have both the backdrop as well as the ax as well as the escape key button working correctly. Let's get back here.
1:20:241 hour, 20 minutes, 24 secondsI'm going to bring it up. And after this button, we have this tab. I'm going to get under that uh div. Sorry, not tab.
1:20:331 hour, 20 minutes, 33 secondsAnd create another div here. Give it a class name px-6 and py 5. Open that div. Here we have
1:20:411 hour, 20 minutes, 41 secondsanother div. And I'm going to give it a ro and that's going to be tab list.
1:20:491 hour, 20 minutes, 49 secondsAnd then we have area label. That's going to be authentication
1:20:561 hour, 20 minutes, 56 secondsmode. And then we have class name margin bottom dash five grid grid calls two gap
1:21:061 hour, 21 minutes, 6 secondsis going to be one rounded full and then we have bg picture surface and padding
1:21:141 hour, 21 minutes, 14 secondsone. And here we have in this div, I'm going to bring this code up. And we have
1:21:221 hour, 21 minutes, 22 secondsthis little parenthesis basically a function like that.
1:21:301 hour, 21 minutes, 30 secondsThere you go.
1:21:331 hour, 21 minutes, 33 secondsAnd in here we have this square brackets where I'm going to say login basically
1:21:391 hour, 21 minutes, 39 secondsan array and register as const and then on that I'm going to run a map function.
1:21:501 hour, 21 minutes, 50 secondsThere you go. And then here actually let's get rid of that from here. And
1:21:571 hour, 21 minutes, 57 secondshere under the inside the map here we have single individual tab on that I'm going to run this function where we are
1:22:061 hour, 22 minutes, 6 secondsdisplaying a button to which I'm attaching a key which is going to be that tab itself and then we have a type
1:22:141 hour, 22 minutes, 14 secondswhich is going to be button and then we have roll tab we also have area selected
1:22:221 hour, 22 minutes, 22 secondsthat's going to be mode when that is equal to tab true or false and then on click is going to be this function. So
1:22:311 hour, 22 minutes, 31 secondswhat I'm going to do is I'm going to set o mod to the tab and of course then we
1:22:381 hour, 22 minutes, 38 secondshave class name class name there you go not here sorry here class name
1:22:471 hour, 22 minutes, 47 secondsand for that I'm going to use cn bring that down and here we have first of all hash9
1:22:551 hour, 22 minutes, 55 secondsrounded full we have text small font medium transition colors get down here
1:23:031 hour, 23 minutes, 3 secondsand I'm going to say if mode is equal to tab then I'm going to get down here
1:23:121 hour, 23 minutes, 12 secondsotherwise this is going to be the case so in case of true this is going to be bg surface white we also have text dash
1:23:201 hour, 23 minutes, 20 secondstext- primary then we have shadow small and then here we have text dash
1:23:271 hour, 23 minutes, 27 secondstext-muted we tab on hover is going to be text- text secondary. Let me format and save
1:23:351 hour, 23 minutes, 35 secondsthat. And inside this button here, I'm going to say tab. When that is equal to login, then this is going to be log in.
1:23:471 hour, 23 minutes, 47 secondsOtherwise, this is going to be sign up.
1:23:501 hour, 23 minutes, 50 secondsThere you go. This needs to be question mark. Awesome.
1:23:551 hour, 23 minutes, 55 secondsFantastic. Let's go here. And there you go. We have sign we have sign up create your account and we have logged in.
1:24:031 hour, 24 minutes, 3 secondsWelcome back. Excellent.
1:24:061 hour, 24 minutes, 6 secondsSo now we need to get under this div here and create another div here. So I'm
1:24:151 hour, 24 minutes, 15 secondsgoing to give it a class name space dashy dash three. There you go. Open that div. And here we have first of all
1:24:241 hour, 24 minutes, 24 secondso button and to which I'm going to add a provider. This is going to be for the
1:24:321 hour, 24 minutes, 32 secondsGoogle and then here I'm going to add a disabled that is going to be is loading.
1:24:401 hour, 24 minutes, 40 secondsExcellent. I'm going to duplicate that.
1:24:431 hour, 24 minutes, 43 secondsThis is going to be for the GitHub now and disabled when it's loading. Let me format that and save that. Let's get
1:24:501 hour, 24 minutes, 50 secondsback here. Click on that. And there you go. [snorts] Continue with Google and continue with GitHub. Awesome.
1:24:581 hour, 24 minutes, 58 secondsAfter that div here, I'm going to create a code block. So error when error is true, then we have this create a P tag.
1:25:111 hour, 25 minutes, 11 secondsGive it a class name which is going to be margin top-3 rounded XL. And we have bzg-relet orange slash10.
1:25:221 hour, 25 minutes, 22 secondsWe have px-3.
1:25:241 hour, 25 minutes, 24 secondsAnd we have py2 text small text replet orange.
1:25:301 hour, 25 minutes, 30 secondsAnd there you go. Inside there we have the error itself. Save that. Excellent.
1:25:381 hour, 25 minutes, 38 secondsAnd now after this here I'm going to display o divider.
1:25:461 hour, 25 minutes, 46 secondsExcellent. If I go here and this is the device or continue with email and this is where I'm going to create the fields.
1:25:551 hour, 25 minutes, 55 secondsSo here now I'm going to create a form where we have
1:26:021 hour, 26 minutes, 2 secondsclass name which is going to be space-y and we're going to need an onsubmit. So, we're going to need to create a couple
1:26:111 hour, 26 minutes, 11 secondsof actions. One for the form and like a handle submit ups function and a couple
1:26:181 hour, 26 minutes, 18 secondsone for the maybe a couple maybe one for the all button here. So, when they get clicked they they can initiate the O
1:26:271 hour, 26 minutes, 27 seconds[snorts] request from there. Yeah. So, here I'm going to open that form for
1:26:331 hour, 26 minutes, 33 secondsnow. And first of all we have mode when that is equal to register
1:26:411 hour, 26 minutes, 41 secondsonly then we're doing this. So we have O fieldailed.
1:26:491 hour, 26 minutes, 49 secondsThen we have ID O dash name. We have label full name.
1:26:581 hour, 26 minutes, 58 secondsType is going to be text and we have auto autocomplete and that's going to be
1:27:061 hour, 27 minutes, 6 secondsname. Then we have placeholder. That's going to be Ada Love Lens
1:27:161 hour, 27 minutes, 16 secondsactually. Ada Love Lace. Yeah. And then we have value just an imaginary name
1:27:221 hour, 27 minutes, 22 secondsthere. Value. We have name there. And then we have on change.
1:27:291 hour, 27 minutes, 29 secondsThis is going to be set name. Awesome.
1:27:331 hour, 27 minutes, 33 secondsSo if I go if I save that and go there and well I do not see anything yet
1:27:401 hour, 27 minutes, 40 secondsbecause we are in the login mode yet. If I go to this sign up there you go a love list. This is the full name. Excellent.
1:27:491 hour, 27 minutes, 49 secondsWonderful. Let's go back here and under this o field I'm going to create another O field.
1:27:581 hour, 27 minutes, 58 secondsAnd for that, of course, actually, no, not there.
1:28:041 hour, 28 minutes, 4 secondsWe're going to need to create that under here. Yeah. So, that is going to be ID O
1:28:111 hour, 28 minutes, 11 secondsdash email. Then we have label email. Then we have type email. We also
1:28:201 hour, 28 minutes, 20 secondshave auto complete which is going to be email. We have placeholder. I'm going to say you add company.com.
1:28:321 hour, 28 minutes, 32 secondsThen we have value which is going to be email and then we have on change which
1:28:401 hour, 28 minutes, 40 secondsis going to be set email. Let me format that. Let's get back here. So now we do get the email here as well and we get both here in the sign up mode.
1:28:541 hour, 28 minutes, 54 secondsAwesome.
1:28:551 hour, 28 minutes, 55 secondsSo after that here going to create a div. Give it a class name space-y-1.5.
1:29:041 hour, 29 minutes, 4 secondsOpen that div. And here we have another div. Going to give it some class names.
1:29:091 hour, 29 minutes, 9 secondsFlex items center justify between and gap of three. Open
1:29:161 hour, 29 minutes, 16 secondsthat div. And here we have label and this is o dash password.
1:29:231 hour, 29 minutes, 23 secondsThen we have class name. This is going to be text- small font dash medium text- text dash secondary.
1:29:321 hour, 29 minutes, 32 secondsAnd here I'm going to add password. There you go.
1:29:391 hour, 29 minutes, 39 secondsLet's go back here. And yeah, we we do see that. So after that label here I'm
1:29:461 hour, 29 minutes, 46 secondsgoing to say if mode is equal to login only then I'm going to display
1:29:541 hour, 29 minutes, 54 secondsthis. I have a button to which I'm going to provide a type of button. Then we
1:30:021 hour, 30 minutes, 2 secondshave a class name text- access font medium text dashrelet orange
1:30:101 hour, 30 minutes, 10 secondstransition dash colors and then we have on hover text dash #
1:30:181 hour, 30 minutes, 18 secondse 03 6 0 0. Let me format that. And inside
1:30:261 hour, 30 minutes, 26 secondsthis button here, I'm going to say forgot password. Let me format that. Let's get back here. And there you go. We see that.
1:30:361 hour, 30 minutes, 36 secondsAnd if I go to the sign up, that's no longer there. That's only inside this log in. Excellent.
1:30:441 hour, 30 minutes, 44 secondsSo here after this one, we have this little div.
1:30:491 hour, 30 minutes, 49 secondsI'm going to get under that div. Here I'm going to create an input. Here we have ID O dash password.
1:30:591 hour, 30 minutes, 59 secondsWe have type and that's going to be uh sorry type
1:31:051 hour, 31 minutes, 5 secondsthat needs to be ID here and this needs to be the type which is going to be
1:31:121 hour, 31 minutes, 12 secondspassword here. And we have auto complete.
1:31:191 hour, 31 minutes, 19 secondsAnd for that I'm going to say mode when that is equal to login
1:31:271 hour, 31 minutes, 27 secondsthen it's going to say current dash password otherwise it's going to be new dash password. Awesome.
1:31:391 hour, 31 minutes, 39 secondsAnd here I'm going to have a placeholder.
1:31:431 hour, 31 minutes, 43 secondsSo for that we have a dynamic value as well mode is equal to
1:31:491 hour, 31 minutes, 49 secondslogin then we have enter your password
1:31:561 hour, 31 minutes, 56 secondsotherwise it's going to be create a password let me format that
1:32:031 hour, 32 minutes, 3 seconds[snorts] pull that up and here I'm going to add value which is going to be password and then on change is going to
1:32:121 hour, 32 minutes, 12 secondsbe this event for that I'm going to say set password and that's going to be event dot target
1:32:201 hour, 32 minutes, 20 secondsdot value there you go and here I have a
1:32:271 hour, 32 minutes, 27 secondsclass name for that I'm going to use CN here
1:32:331 hour, 32 minutes, 33 secondsand there you go awesome and now if I go back here we have the field for the password forget password as In the sign up we get three fields.
1:32:451 hour, 32 minutes, 45 secondsIn the login we get two fields. Awesome.
1:32:481 hour, 32 minutes, 48 secondsGet back here. And after this one we have this div ending. I'm going to get
1:32:541 hour, 32 minutes, 54 secondsdown there. And here I'm going to create a [snorts] code block where I have mode.
1:33:011 hour, 33 minutes, 1 secondWhen that is equal to register only then I'm going to display this where I
1:33:091 hour, 33 minutes, 9 secondshave this P tag. I'm going to give it a class name text- access leading relaxed and text- text muted.
1:33:191 hour, 33 minutes, 19 secondsThis is going to say by creating an account you agree to R.
1:33:291 hour, 33 minutes, 29 secondsI'm going to create a space here. There you go. Get down here and create an anchor tag here. I'm going
1:33:381 hour, 33 minutes, 38 secondsto say slash terms and this is going to be class name text- text dash secondary
1:33:481 hour, 33 minutes, 48 secondsunderline underline offset two and for this I'm going to say terms of service
1:33:551 hour, 33 minutes, 55 secondslet me format that and under that actually here I'm going to create another space after that here I'm going
1:34:031 hour, 34 minutes, 3 secondsto and and create another space here and then here I'm going to have another anchor tag which is going to say slash
1:34:121 hour, 34 minutes, 12 secondsprivacy and here I'm going to say privacy policy privacy.
1:34:231 hour, 34 minutes, 23 secondsYeah, don't mess up the spellings.
1:34:261 hour, 34 minutes, 26 secondsSo here we have class name and I'm going to say text dash text dash secondary and we have underline and underline offset
1:34:351 hour, 34 minutes, 35 secondstwo. We format that. And I guess after this anchor here, I'm gonna add a little
1:34:441 hour, 34 minutes, 44 secondsdot here. That's it. Let's get back here and sign up. And there you go. We have by creating an account, you agree to a terms of service and privacy policy.
1:34:561 hour, 34 minutes, 56 secondsExcellent.
1:34:591 hour, 34 minutes, 59 secondsPull this up a little. And here I'm going to create a button.
1:35:051 hour, 35 minutes, 5 secondsI'm going to give it a type submit and disabled
1:35:141 hour, 35 minutes, 14 secondsis loading. There you go. And we have a class name.
1:35:201 hour, 35 minutes, 20 secondsThere you go. And I'm going to open that button. And here I'm going to say copy dot submit. Let me format and save that.
1:35:301 hour, 35 minutes, 30 secondsAnd that should be it. After the form we have a div get under that div and here I'm [snorts] going to have another div.
1:35:411 hour, 35 minutes, 41 secondsSo to that I'm going to provide a class name. We have border dash top. Then we also have a border black slash
1:35:511 hour, 35 minutes, 51 seconds0.06 06 px 6 py 4 text center text small text
1:36:021 hour, 36 minutes, 2 secondstext text muted and that div is going to display
1:36:101 hour, 36 minutes, 10 secondscopy dot switch prompt and here I'm going to need a space then
1:36:171 hour, 36 minutes, 17 secondsafter that here need a button let me format that. So that button here
1:36:261 hour, 36 minutes, 26 secondsis going to be a type button. Then we have on click which is
1:36:341 hour, 36 minutes, 34 secondsgoing to be this function set of mode which is going to be alternate mode. There you go.
1:36:421 hour, 36 minutes, 42 secondsAnd then I'm going to need a class name which is going to be font dash medium text replet orange transition colors.
1:36:531 hour, 36 minutes, 53 secondsAnd on hover it's going to be text dash hash
1:37:001 hour, 37 minutese 0 3 6 0 0. There you go. And I'm going to
1:37:081 hour, 37 minutes, 8 secondsopen that button here. We have copy dot switch action. Let me [snorts]
1:37:151 hour, 37 minutes, 15 secondsformat and save that. Let's go back here. And there you go. Create an account and log in. There you go. Create
1:37:231 hour, 37 minutes, 23 secondsaccount. Basically, it's changing that uh I mean the tab here. Either you can do that by here or you can create an
1:37:321 hour, 37 minutes, 32 secondsaccount and log in using this link. This changes the dialogue. Awesome.
1:37:391 hour, 37 minutes, 39 secondsSo now I'm going to get up here. Let me make sure that we are Yeah. So here we're going to need a couple of things.
1:37:491 hour, 37 minutes, 49 secondsSo I'm going to go here. I'm going to write function get call back URL.
1:37:571 hour, 37 minutes, 57 secondsThere you go. This is going to be a function where we have con params is equal to new URL search params.
1:38:071 hour, 38 minutes, 7 secondsWe have window dot location dot search and then we have const call back is
1:38:151 hour, 38 minutes, 15 secondsequal to params dot get callback
1:38:211 hour, 38 minutes, 21 secondsURL. There you go. If call back exists and then and it starts with slash then we return call back. Simple.
1:38:361 hour, 38 minutes, 36 secondsAnd we have by default return default call back URL. There you go. After that
1:38:441 hour, 38 minutes, 44 secondshere I'm going to say function handle o click.
1:38:521 hour, 38 minutes, 52 secondsIt's going to take a provider which is going to be o provider. There you go.
1:38:581 hour, 38 minutes, 58 secondsOpen function body. [snorts] And here we have set error to null.
1:39:051 hour, 39 minutes, 5 secondsThen we have set is loading to true. And
1:39:121 hour, 39 minutes, 12 secondswe have void o client dot sign in dot social.
1:39:211 hour, 39 minutes, 21 secondsAnd in this one I'm going to add provider then call back URL which is
1:39:271 hour, 39 minutes, 27 secondsgoing to be get call back URL and that's going to be a function. Then we have fetch options.
1:39:371 hour, 39 minutes, 37 secondsHold on.
1:39:391 hour, 39 minutes, 39 secondsFetch options. And that's going to be an object where we have on editor. It's going to be a function. Let's run that.
1:39:481 hour, 39 minutes, 48 secondsIt's going to take an argument which is going to be let's say cdx.
1:39:521 hour, 39 minutes, 52 secondsAnd here I'm going to say set is loading to false. And set error. This is going
1:40:011 hour, 40 minutes, 1 secondto be cdx dot error dot message otherwise I mean if that error is there
1:40:091 hour, 40 minutes, 9 secondsof course it's going to display that otherwise it's going to display sign in failed
1:40:171 hour, 40 minutes, 17 secondsplease try again there you go and now just one small another function
1:40:261 hour, 40 minutes, 26 secondswhich is going to be function handle submit event react dot form event and here I'm
1:40:371 hour, 40 minutes, 37 secondsgoing to add HTML form element open function body we have event dot prevent
1:40:461 hour, 40 minutes, 46 secondsdefault and then here I'm going to say set error which is going to be email
1:40:561 hour, 40 minutes, 56 secondssign in is not configured heard yet, please use Google or GitHub.
1:41:091 hour, 41 minutes, 9 secondsThere you go. Awesome. Let me put a little dot here at the end. Excellent.
1:41:161 hour, 41 minutes, 16 secondsLet's scroll down and uh let's go to the buttons. There you go. Here I'm going to
1:41:231 hour, 41 minutes, 23 secondssay on click. This is going to be a callback function handle or o click and
1:41:311 hour, 41 minutes, 31 secondsthis is going to take Google and this is going to take on click
1:41:391 hour, 41 minutes, 39 secondshandle of click. This is going to take GitHub. There you go.
1:41:481 hour, 41 minutes, 48 secondsThat's the function name, right? Yeah.
1:41:501 hour, 41 minutes, 50 secondsJust making sure. And uh where is the form? Let me find the form. There you
1:41:571 hour, 41 minutes, 57 secondsgo. The form is going to take an onsubmit.
1:42:011 hour, 42 minutes, 1 secondAnd for that handle submit is there. Excellent. We have a
1:42:101 hour, 42 minutes, 10 secondscouple of issues here. So we have the class. Well, no problem for that. Property unchanged. No problem. O what?
1:42:191 hour, 42 minutes, 19 secondsSo yeah, no problem for that. So that that that we can live with I guess.
1:42:261 hour, 42 minutes, 26 secondsSo we do have the complete form and we have the complete uh model for both the login and sign up functionality.
1:42:361 hour, 42 minutes, 36 secondsAnd I guess now this is time for us to start working on the navbar and make sure that this can be configured through
1:42:451 hour, 42 minutes, 45 secondsour navbar both on the landing page as well as here.
1:42:491 hour, 42 minutes, 49 secondsAnd uh this really works. All right, let's get back to our code editor. And
1:42:561 hour, 42 minutes, 56 secondshere I'm going to create a new file. So inside this components, we have this o
1:43:041 hour, 43 minutes, 4 secondsfolder. In here I'm going to create a new file which is going to be o-ndevactions.tsx.
1:43:161 hour, 43 minutes, 16 secondsAnd it's a client component. So use client and here we have a link from next
1:43:241 hour, 43 minutes, 24 secondslink. We also have o client from our lib. Then we have use o model. We also
1:43:331 hour, 43 minutes, 33 secondshave use mounted. Then we have o nav user. Actually that's a type of nav user.
1:43:451 hour, 43 minutes, 45 secondsThere you go. Not bringing it that way.
1:43:481 hour, 43 minutes, 48 secondsSo import type o nav user there you go and then we also
1:43:551 hour, 43 minutes, 55 secondsneed cn there here as well const nav coast class is equal to this where we have
1:44:041 hour, 44 minutes, 4 secondsthis class uh different classes and here we have type of nav actions props is
1:44:131 hour, 44 minutes, 13 secondsequal to this initial user a nav user
1:44:221 hour, 44 minutes, 22 secondsor null class name optional string.
1:44:291 hour, 44 minutes, 29 secondsWe also have create account class name
1:44:351 hour, 44 minutes, 35 secondsstring. Here we have function o nav skeleton.
1:44:421 hour, 44 minutes, 42 secondsThis is going to be class name type of this where we have class name optional and it's going to be a string.
1:44:531 hour, 44 minutes, 53 secondsOpen that. Here we have return in which
1:45:001 hour, 45 minuteswe have a div. Give it a class name CN and that's going to be flex
1:45:091 hour, 45 minutes, 9 secondsitems dash center and gap of two and we also have class name as well. Open that
1:45:181 hour, 45 minutes, 18 secondsdiv. And here we have a span tag. Give it a class name height dash 8 width dash
1:45:251 hour, 45 minutes, 25 seconds16 animate pulse.
1:45:311 hour, 45 minutes, 31 secondsThere you go. And then we have rounded MD. We have BG dash
1:45:391 hour, 45 minutes, 39 secondshash E8 E7 E3
1:45:451 hour, 45 minutes, 45 secondsand here I'm adding area hidden and in the span span is going to be actually uh
1:45:521 hour, 45 minutes, 52 secondsself-closing as just for the animation of pulse.
1:45:561 hour, 45 minutes, 56 secondsAll right, I'm going to pull this up and here I'm going to say function o nav signed
1:46:061 hour, 46 minutes, 6 secondsin and that's going to take a few components few arguments. So we have user
1:46:131 hour, 46 minutes, 13 secondsclass name and that's going to be a type of
1:46:221 hour, 46 minutes, 22 secondsuser or nav user. There you go. And we have also class name which is going to
1:46:301 hour, 46 minutes, 30 secondsbe a string. Let's open the function body. Let's format everything. And here we have const label is equal to user dot
1:46:391 hour, 46 minutes, 39 secondsname otherwise user dot email otherwise just account.
1:46:471 hour, 46 minutes, 47 secondsHere we have return.
1:46:501 hour, 46 minutes, 50 secondsWe have a div class name CN
1:46:551 hour, 46 minutes, 55 secondsflex items dash center gap two items flex
1:47:031 hour, 47 minutes, 3 secondsitems as center gap of two and we have a class name here open that div here we
1:47:121 hour, 47 minutes, 12 secondshave first of all a link I'm going to give it a href slash app.
1:47:211 hour, 47 minutes, 21 secondsThere you go. And then here we have class name. I'm going to give it C name C. And here as well, nav coast class.
1:47:321 hour, 47 minutes, 32 secondsAnd then we have text dash small. All right. And here I'm going to add
1:47:401 hour, 47 minutes, 40 secondslabel. Let me format that. And here we have button to which I'm going to provide a type button. And we have on click.
1:47:521 hour, 47 minutes, 52 secondsThis is going to be a function where I'm going to fetch options. Hold on.
1:48:041 hour, 48 minutes, 4 secondsSo here I have void o client dot sign out. And here I'm going to say
1:48:131 hour, 48 minutes, 13 secondsfetch options. And for that on success there's going to be another function
1:48:221 hour, 48 minutes, 22 secondswindow.loation.href is going to be this slash.
1:48:291 hour, 48 minutes, 29 secondsAnd let's put an equal sign there. And that's pretty much it.
1:48:351 hour, 48 minutes, 35 secondsSo after this one here uh not this one but this here I'm going to say class name
1:48:431 hour, 48 minutes, 43 secondsthat's going to be uh CN for this one as well nav coast class
1:48:521 hour, 48 minutes, 52 secondsand also I'm going to add text dash 13 pixels let me format that
1:49:001 hour, 49 minutesinside the butt let me say sign out. Let me format and save that. Excellent. I'm going to bring it up here and let's
1:49:091 hour, 49 minutes, 9 secondswrite function o nav signed out. There you go.
1:49:191 hour, 49 minutes, 19 secondsYeah, all seems good. Function body here. And but before that open that this one class name. Then we also have create
1:49:291 hour, 49 minutes, 29 secondsaccount class name.
1:49:341 hour, 49 minutes, 34 secondsAnd here this is going to be a type of this where we have class name optional string
1:49:431 hour, 49 minutes, 43 secondscreate account class name optional and string inside the function body we have const
1:49:521 hour, 49 minutes, 52 secondsI'm going to say open model is equal to use o model awesome let me format that
1:50:001 hour, 50 minutesbring it top here we have return I have a div give it a class name and
1:50:091 hour, 50 minutes, 9 secondshere I have CN flex and items dash center and gap of two and
1:50:171 hour, 50 minutes, 17 secondsafter that here I also have a class name open that div we have a button here give
1:50:241 hour, 50 minutes, 24 secondsit a type which is going to be button and on click here is going to be open
1:50:321 hour, 50 minutes, 32 secondsmodel which is going to be log in and then here I'm going to also add class
1:50:401 hour, 50 minutes, 40 secondsname where I have CN so I'm going to say nav coast class and for this one I'm
1:50:471 hour, 50 minutes, 47 secondsgoing to say text dash 13 pixels let me format that and inside the button let me
1:50:531 hour, 50 minutes, 53 secondssay log in just like that after that I'm going to Need another button here.
1:51:031 hour, 51 minutes, 3 secondsThere you go. Give it a type of button also on click for this one is going to
1:51:111 hour, 51 minutes, 11 secondsbe open on model. This is going to be register.
1:51:181 hour, 51 minutes, 18 secondsAnd yeah, give it a class name. We have a CN here. So I'm going to add create account class name. Let me format that.
1:51:301 hour, 51 minutes, 30 secondsAnd here inside the butt, I'm going to say create account. Let me format that. Awesome.
1:51:381 hour, 51 minutes, 38 secondsPull this up a little. And here I'm going to say export function o nav actions.
1:51:471 hour, 51 minutes, 47 secondsAnd here I'm going to add a nav actions. Yeah. And here I'm going to say
1:51:561 hour, 51 minutes, 56 secondsinitial user which is going to be equal to null by default
1:52:021 hour, 52 minutes, 2 secondsclass name. Then we have create account class name. There you go. This is going
1:52:101 hour, 52 minutes, 10 secondsto be type of o nav action props. Open this body here where initial user. Let's
1:52:181 hour, 52 minutes, 18 secondsmake sure we have a capital U here. And we have const mounted is equal to use mounted.
1:52:261 hour, 52 minutes, 26 secondsThere you go. We have const data session is
1:52:341 hour, 52 minutes, 34 secondspending is equal to o client dot use session.
1:52:421 hour, 52 minutes, 42 secondsThere you go. And here we have const user is equal to mounted. If that is true
1:52:501 hour, 52 minutes, 50 secondsthen we have then we we're going to check session dot user if that is available wonderful otherwise we're
1:52:571 hour, 52 minutes, 57 secondsgoing to have initial user and otherwise we have initial user for the whole case
1:53:051 hour, 53 minutes, 5 secondsas well here we have if mounted and is pending both are true we
1:53:151 hour, 53 minutes, 15 secondsreturn o nav skeleton and I'm going to add class name
1:53:241 hour, 53 minutes, 24 secondsas class name here let me format that and uh after this if so if user
1:53:331 hour, 53 minutes, 33 secondsexists then return o nav signed in and
1:53:401 hour, 53 minutes, 40 secondshere I'm going to have this user as user and also So I'm going to
1:53:471 hour, 53 minutes, 47 secondshave class name which is going to be class name. There you go.
1:53:551 hour, 53 minutes, 55 secondsOkay. So we have this issue here. I guess I know the reason. And uh yeah. So here this needs to be user not session.
1:54:051 hour, 54 minutes, 5 secondsSo session dot user. Yeah. And after that here this is going to be return.
1:54:111 hour, 54 minutes, 11 secondsAnd in here we have o nav signed out.
1:54:171 hour, 54 minutes, 17 secondsAnd for that we have a class name which is going to be class name. And we have a
1:54:231 hour, 54 minutes, 23 secondscreate account class name which is going to be create account class name as well. Let me format and save that.
1:54:321 hour, 54 minutes, 32 secondsAnd I guess we are done with this whole actions file and we are ready to move on to the navbar I guess.
1:54:431 hour, 54 minutes, 43 secondsSo I'm going to open navbar file and the very first two things that I need is two
1:54:501 hour, 54 minutes, 50 secondsfiles. So, o nav actions this one and also import type
1:55:001 hour, 55 minuteso nav user this one. Excellent.
1:55:061 hour, 55 minutes, 6 secondsOkay. So, I'm going to go to let's search for contact sales. There you go.
1:55:121 hour, 55 minutes, 12 secondsThis thing. Let's get rid of that. And here we need o nav actions.
1:55:191 hour, 55 minutes, 19 secondsThere you go. where we need initial user first of all. So initial user and then
1:55:261 hour, 55 minutes, 26 secondswe need create account class name and I'm going to paste this classes there.
1:55:321 hour, 55 minutes, 32 secondsLet's go to our browser here and well it does not show up here but if we go and inspect
1:55:391 hour, 55 minutes, 39 secondsgo to the mobile view bring it to the right side and go for the let's say iPhone 14 Pro Max and here
1:55:481 hour, 55 minutes, 48 secondsclick the menu it's not showing up here either but if you click on the login button here there you go if you click on
1:55:561 hour, 55 minutes, 56 secondsthe create account button and awesome so it works from this from this and from this as well. And now of course we need
1:56:041 hour, 56 minutes, 4 secondsto make sure that these uh show up here and uh on especially on the desktop menu here.
1:56:131 hour, 56 minutes, 13 secondsSo let's go back to our code editor.
1:56:161 hour, 56 minutes, 16 secondsI'm going to pull this up and here I'm going to make sure that this initial user equal to null is a type of
1:56:261 hour, 56 minutes, 26 secondsinitial user which is going to be o nav user or null.
1:56:381 hour, 56 minutes, 38 secondsAll right.
1:56:401 hour, 56 minutes, 40 secondsAnd then keep going down here and I'm going to look for the contact soils.
1:56:451 hour, 56 minutes, 45 secondsThere you go. I'm going to get rid of this. And here I need a nav actions
1:56:521 hour, 56 minutes, 52 secondsand this is going to be initial user which is going to be initial user and we
1:56:581 hour, 56 minutes, 58 secondsalso have create account class name. So there you go. These are the class names for that. If we go here, there you go.
1:57:081 hour, 57 minutes, 8 secondsWe do have that on the desktop now.
1:57:101 hour, 57 minutes, 10 secondsLogin shows that and create account shows that. Excellent.
1:57:161 hour, 57 minutes, 16 secondsAnd of course if I am going to click on inspect and uh here if I go to the mobile view. So that is exactly that's
1:57:251 hour, 57 minutes, 25 secondsbeing used for the mobile as well. So here click that that brings us the dialogue. This one as well this one too.
1:57:341 hour, 57 minutes, 34 secondsAnd of course that's the same thing being used on the desktop. So that that's the that does the job as well.
1:57:401 hour, 57 minutes, 40 seconds[snorts]
1:57:411 hour, 57 minutes, 41 secondsSo with that we have perfectly connected our navbar with [snorts] o actions and
1:57:481 hour, 57 minutes, 48 secondsnow we need to create the proxy.ts file to make sure that we protect our routes and then finally test the
1:57:561 hour, 57 minutes, 56 secondsauthentication for everything. Now if we go to our code editor and if you take a look at the mobile nav menu initial user
1:58:041 hour, 58 minutes, 4 secondsit says that it cannot be it's not assignable to type only null while it should be this. So for that we're going
1:58:131 hour, 58 minutes, 13 secondsto go to this one and here I'm going to make sure that we have o user o
1:58:211 hour, 58 minutes, 21 secondsnav user or null something like that. If we go down now and that issue is resolved.
1:58:301 hour, 58 minutes, 30 secondsAwesome. I'm going to close this one and this one. And we have app home. And in
1:58:371 hour, 58 minutes, 37 secondsthe app home we have this testing code only. I'm going to get rid of that from here and also from here.
1:58:491 hour, 58 minutes, 49 secondsAnd I'm going to make sure that this import is gone as well. And there's this
1:58:551 hour, 58 minutes, 55 secondsuse effect which is not being used 100% yet but that will be eventually. So for
1:59:031 hour, 59 minutes, 3 secondsnow we are not going to make any further changes to this app home and o model that's going to go away as
1:59:111 hour, 59 minutes, 11 secondswell. And this this is going to and this one as well. So let's collapse everything.
1:59:171 hour, 59 minutes, 17 secondsAnd now I'm going to create a new file which is going to be proxy.ts.
1:59:241 hour, 59 minutes, 24 secondsThis is a very important file and uh it's basically the goal for this one is
1:59:301 hour, 59 minutes, 30 secondsthe redirect unauthenticated users away from the app/ app page. So we have
1:59:391 hour, 59 minutes, 39 secondsimport headers from next slash
1:59:481 hour, 59 minutes, 48 secondsheaders. There you go. Then we have import next request from next server as well as next response from next server.
1:59:591 hour, 59 minutes, 59 secondsThen we also need o from our lib o.
2:00:032 hours, 3 secondsThere you go. And here I'm going to say export async function proxy. And here I
2:00:102 hours, 10 secondsneed a request which is going to be next request type. And I'm going to open the function body con. Here I have next URL which is going to be equal to request.
2:00:222 hours, 22 secondsSo I'm extracting that from there.
2:00:242 hours, 24 seconds[snorts] Next URL. There you go. Const path name is equal to next URL. Path
2:00:342 hours, 34 secondsname. There you go. And here we have if path name dot starts with
2:00:422 hours, 42 secondsslash API/ then in that case we return next response dot next.
2:00:522 hours, 52 secondsif path name dot starts with slash API/
2:00:592 hours, 59 secondsweb hooks and in that case we return next response dot next
2:01:072 hours, 1 minute, 7 secondsif path name is equal to slash means the root
2:01:142 hours, 1 minute, 14 secondsdirectory then we return next response dot next account. And here we have if
2:01:242 hours, 1 minute, 24 secondspath name dot starts with there you go slashp slash
2:01:342 hours, 1 minute, 34 secondsreturn next response dot
2:01:412 hours, 1 minute, 41 secondsnext. There you go. So if path name dot
2:01:482 hours, 1 minute, 48 secondsincludes slash API slash projects
2:01:552 hours, 1 minute, 55 secondsand make sure it has a trailing slash as well and path name
2:02:042 hours, 2 minutes, 4 secondspath name dotinccludes slash preview slash
2:02:132 hours, 2 minutes, 13 secondsThen in that case we're going to return next response dot next again
2:02:212 hours, 2 minutes, 21 secondsand uh this thing needs to be removed from here and added here. There you go. [snorts] Awesome.
2:02:312 hours, 2 minutes, 31 secondsAfter that here we have const session is equal to await oapi
2:02:382 hours, 2 minutes, 38 secondsdot get session and here we have headers await headers there you go awesome and
2:02:472 hours, 2 minutes, 47 secondsthen after that here I'm going to say if session is not true then we have const
2:02:552 hours, 2 minutes, 55 secondslogin url is equal to new url L
2:03:012 hours, 3 minutes, 1 secondhomepage comma next URL dot origin
2:03:072 hours, 3 minutes, 7 secondsand here I'm going to say login URL dot search params dot set
2:03:152 hours, 3 minutes, 15 secondso login there you go and then we have login url dot search params dot set and
2:03:252 hours, 3 minutes, 25 secondshere I'm going to say call back URL and second value is going to be here
2:03:332 hours, 3 minutes, 33 secondspath name and then once again here is going to be next URL dot search. There you go.
2:03:432 hours, 3 minutes, 43 secondsAwesome. And finally after that here I'm going to return next response dot next. There you go.
2:03:552 hours, 3 minutes, 55 secondsExcellent. And here after this if statement here I'm going to return once
2:04:012 hours, 4 minutes, 1 secondagain actually. Yeah this needs to be here and here we need to say we need to
2:04:092 hours, 4 minutes, 9 secondssay something like return next response dot redirect and this is going
2:04:172 hours, 4 minutes, 17 secondsto be login without the quotes login URL. There you go. Excellent.
2:04:262 hours, 4 minutes, 26 secondsAnd now here after that we're going to need this generic config this whole reax
2:04:332 hours, 4 minutes, 33 secondsbasically that you can find on the better o website. I'm going to format everything and save everything and we
2:04:412 hours, 4 minutes, 41 secondsare done with this proxy.ts file as well. [snorts] And now it's time for us to test the protected routes. So now
2:04:502 hours, 4 minutes, 50 secondshere if I go to slash app click there you go it redirect us back to the slash
2:05:002 hours, 5 minutesquestion mark o is login and call back URL to the app and of course we can sign in as well. Let me make sure that in the
2:05:102 hours, 5 minutes, 10 secondsenv.lo local file. Yes, we do have all of the uh ids and secrets. There is one thing secret. Yes.
2:05:222 hours, 5 minutes, 22 secondsSo, we have better o secret, better o URL ID and secret. Yeah, everything is good.
2:05:292 hours, 5 minutes, 29 secondsLet's go back here. Refresh. So, what I'm going to do now is I'm going to click on log in button. Continue with Google and let's see what it says.
2:05:402 hours, 5 minutes, 40 secondsSo, it redirected me to this login of uh Google. I'm going to click on that.
2:05:482 hours, 5 minutes, 48 secondsLet's see if we if we get back to Yes, it is so far working good.
2:05:582 hours, 5 minutes, 58 secondsAnd there you go. We are back to the login page, back to the app page now.
2:06:042 hours, 6 minutes, 4 secondsAnd we are logged in. And of course now we need to make sure that we are displaying
2:06:122 hours, 6 minutes, 12 secondsthe lockedin version, the account panel and the name and the avatar if user has one. Awesome.
2:06:202 hours, 6 minutes, 20 secondsAll right. So now we're going to need a couple of files. I'm going to get back to my code editor. And in here I'm going to make sure that I go to the li folder.
2:06:312 hours, 6 minutes, 31 secondsThen we have a new folder here. I'm going to call it o and then in there I'm going to create a new file that's going to be cached.ts.
2:06:452 hours, 6 minutes, 45 secondsSo there you go. Here I'm going to import headers from next headers also cach a
2:06:522 hours, 6 minutes, 52 secondsfrom react and then I'm going to also import o from our o. All right. And then
2:07:002 hours, 7 minuteshere I'm going to say export const get cached
2:07:062 hours, 7 minutes, 6 secondssession is equal to cache. And here we have a sync.
2:07:142 hours, 7 minutes, 14 secondsThen I'm going to open that function.
2:07:162 hours, 7 minutes, 16 secondsHere I'm going to say return oapi.get session. And this is going to be headers
2:07:262 hours, 7 minutes, 26 secondsand await then headers here. Awesome. And that's pretty much it for this file for now.
2:07:362 hours, 7 minutes, 36 secondsNow I'm going to go to the app/page.tsx file here. [snorts] And I'm going to need a couple of things. So first of all
2:07:442 hours, 7 minutes, 44 secondsI'm going to need to import get cacheed session. There you go. from the newly
2:07:532 hours, 7 minutes, 53 secondscreated file and then in the here actually before the return I'm going to
2:07:592 hours, 7 minutes, 59 secondssay const session is equal to await get cached session
2:08:082 hours, 8 minutes, 8 secondsand there you go of course now we're going to need to export default async function because we have a wait in here
2:08:172 hours, 8 minutes, 17 secondsand then here I'm going to say con initial user is equal to session. If that is available then we get the user
2:08:252 hours, 8 minutes, 25 secondsout of that. And here if that is true then this is going to be an object where
2:08:322 hours, 8 minutes, 32 secondsI have a name session dot user dot name and email
2:08:412 hours, 8 minutes, 41 secondse mail which is going to be session do user do email. Awesome. Otherwise, this
2:08:502 hours, 8 minutes, 50 secondsis going to be simply null. There you go. And of course, now we need to use
2:08:572 hours, 8 minutes, 57 secondsthat in here. So, initial user the is the component is the argument that this component expects. So, for that prop, we're going to add initial user here.
2:09:092 hours, 9 minutes, 9 secondsSave that. And now, if I go here, well, we do have this little issue here. So you're importing a model that depends on
2:09:172 hours, 9 minutes, 17 secondsthe next header if only available in the server components. Okay, hold on. So this needs to be this use
2:09:262 hours, 9 minutes, 26 secondsclient needs to go away from here as no longer. All right, I'm going to save that. Let's go to our browser here and I'm going to go to the homepage.
2:09:362 hours, 9 minutes, 36 secondsAnd there you go. We get to see our name now, Ali Martisa, which is going to take to our app page. And also we get a sign out button. So if I click on sign out.
2:09:472 hours, 9 minutes, 47 secondsThere you go. I'm signed out. And if I click on log in, continue with Google, it's going to log me in as that's already been configured with this one.
2:09:562 hours, 9 minutes, 56 secondsI'm redirected to the app. If I go back to the homepage, there you go. We have our name. Perfectly perfectly done.
2:10:052 hours, 10 minutes, 5 secondsEverything. Beautiful work.
2:10:082 hours, 10 minutes, 8 secondsThere's one more file that I'm going to need to create and that is going to be used throughout the application.
2:10:152 hours, 10 minutes, 15 secondsBasically a couple of files but for now I'm just going to create one. So if I go to
2:10:232 hours, 10 minutes, 23 secondsthe li folder and then o here I'm going to create a new file. This is going to be require user.ts.
2:10:322 hours, 10 minutes, 32 secondsSo here get cached session first of all there you go then we have Prisma from
2:10:402 hours, 10 minutes, 40 secondsour Prisma file then here I'm going to say we have this type and then here I have
2:10:482 hours, 10 minutes, 48 secondsexport async function require user id open function
2:10:562 hours, 10 minutes, 56 secondsbody const session is equal to await Get
2:11:022 hours, 11 minutes, 2 secondscast session. There you go. [snorts] Here we have const user id is equal to
2:11:092 hours, 11 minutes, 9 secondssession. If that is available then user if that is available then ID from there.
2:11:162 hours, 11 minutes, 16 secondsIf user ID is not true then we return
2:11:222 hours, 11 minutes, 22 secondserror. You must be signed in as const user ID is going to be null.
2:11:342 hours, 11 minutes, 34 secondsThere you go. [snorts] If process env
2:11:422 hours, 11 minutes, 42 secondsURL is not true then in that case we're going to return error
2:11:512 hours, 11 minutes, 51 secondsdatabase is not configured as const user id is null
2:12:012 hours, 12 minutes, 1 secondthere you go then after that here I'm going to return user
2:12:082 hours, 12 minutes, 8 secondsid which is user id and then adder as null.
2:12:142 hours, 12 minutes, 14 secondsAll right. After that here I have export async function require user. I'm going
2:12:222 hours, 12 minutes, 22 secondsto put an s here. So extends require user select
2:12:302 hours, 12 minutes, 30 secondsand here I'm going to add select which is going to be that s type here we have
2:12:372 hours, 12 minutes, 37 secondsconst session is equal to await get cached session
2:12:442 hours, 12 minutes, 44 secondsthere you go and const user id is equal to session dot user
2:12:522 hours, 12 minutes, 52 secondsdo ID there you here if well I'm just going to bring this
2:13:002 hours, 13 minuteshere if user ID user ID this one doesn't exist then we have you must be signed in
2:13:082 hours, 13 minutes, 8 secondsright and I'm going to use the same thing
2:13:152 hours, 13 minutes, 15 secondshere as well all right now after that here I'm going to say const user is equal to await Prisma dot
2:13:252 hours, 13 minutes, 25 secondsuser.find Find unique here we have where
2:13:322 hours, 13 minutes, 32 secondsID is user ID and I'm going to select
2:13:372 hours, 13 minutes, 37 secondsthat simple here we have if user
2:13:432 hours, 13 minutes, 43 secondsuser does not exist then we return error
2:13:522 hours, 13 minutes, 52 secondsuser not found as const user is null.
2:13:592 hours, 13 minutes, 59 secondsLet me format and save that. Make change that to return.
2:14:042 hours, 14 minutes, 4 secondsAll right. And then finally after that here I'm going to return user and error
2:14:112 hours, 14 minutes, 11 secondsas null. Let me format and save that. So that file is done. Okay. So we are logged in and we can go to the app page.
2:14:212 hours, 14 minutes, 21 secondsIf we click on this, let me refresh.
2:14:292 hours, 14 minutes, 29 secondsIf I click on my name here, it takes me to the app page. And of course, there's one more thing that I would like to
2:14:372 hours, 14 minutes, 37 secondsimplement now that basically provisioning the new user. So the goal is basically autocreate personal
2:14:442 hours, 14 minutes, 44 secondsworkspace on the very first sign in. And for that, we're going to need a couple of files to work with. So, first of all,
2:14:522 hours, 14 minutes, 52 secondsI'm going to uh close this one and this one and this one as well. Collapse everything in here. And the very first
2:15:012 hours, 15 minutes, 1 secondfile that I'm going to need is I'm going to need to go to the lib folder. And here I'm going to create a new file. I'm
2:15:082 hours, 15 minutes, 8 secondsgoing to name it app dash utils.ts.
2:15:142 hours, 15 minutes, 14 secondsThere you go. And here we have export function
2:15:222 hours, 15 minutes, 22 secondsslugify that's the function it's going to take a value which is going to be a string and
2:15:292 hours, 15 minutes, 29 secondsmax length which is going to be exactly 48 uh like that
2:15:372 hours, 15 minutes, 37 secondsall right and now here I have a return I'm going to say value
2:15:462 hours, 15 minutes, 46 secondsdot to lowerase then on that dot trim
2:15:522 hours, 15 minutes, 52 secondsdot it's going to be replace but for that I'm going to actually paste these
2:15:592 hours, 15 minutes, 59 secondsvalues here so we have first replace for the dash and we have second replace to
2:16:062 hours, 16 minutes, 6 secondsremoving any sort of dashes or spaces and with an empty space and then on that
2:16:132 hours, 16 minutes, 13 secondswe We have slice which is going to be from zero to max length. Let me format
2:16:212 hours, 16 minutes, 21 secondsand save that. So this is how it's going to look. After that here we have export function slugify
2:16:312 hours, 16 minutes, 31 secondsuser name. It's going to take an input which is going to be a string. Open that and return slugify. And it's going to
2:16:402 hours, 16 minutes, 40 secondstake input and I'm going to give 40 here. All right. Here we have export
2:16:482 hours, 16 minutes, 48 secondsfunction. I'm going to say actually do you know what I'm going to give you these functions here. So basically we
2:16:572 hours, 16 minutes, 57 secondshave export function format file size which is uh going to take the bytes which is going to be number and we have
2:17:042 hours, 17 minutes, 4 secondsan if condition here. So based on that it returns this and based on that it returns this and based on and by default
2:17:122 hours, 17 minutes, 12 secondsit returns this. Then we have unique slug with suffix and that's the function
2:17:192 hours, 17 minutes, 19 secondsthat that's basically pure typescript there JavaScript TypeScript code and then we have another format relative
2:17:272 hours, 17 minutes, 27 secondstime and that's the different if statements and variables and some some simple logic going on here. All right.
2:17:362 hours, 17 minutes, 36 secondsSo I'm going to format and save that.
2:17:402 hours, 17 minutes, 40 secondsAnd I'm going to need a new file which is going to be inside this lip folder.
2:17:442 hours, 17 minutes, 44 secondsSo I'm going to create a new file. Name it work space dash slug.ts.
2:17:532 hours, 17 minutes, 53 secondsSo here first of all I'm going to import slugify from app utils. Then I'm going
2:18:002 hours, 18 minutesto need to import slugify username and then unique slug with suffix. There you
2:18:062 hours, 18 minutes, 6 secondsgo. And next I'm going to need to import prisma. There you go. And here I'm going to say let's say this. We have export
2:18:152 hours, 18 minutes, 15 secondscon workspace lug pattern. And this is going to be the reix for that. And then we have export function normalize
2:18:222 hours, 18 minutes, 22 secondsworkspace slug which is going to take an input which is supposed to be a string and then it returns this username which
2:18:302 hours, 18 minutes, 30 secondsis coming from the app utils file and it takes this input that we're going to put into this function eventually.
2:18:382 hours, 18 minutes, 38 secondsAnd now here I'm going to say type work space slug user is equal to this type where we
2:18:472 hours, 18 minutes, 47 secondshave username optional it's going to be string or null name optional it's going to be a string
2:18:562 hours, 18 minutes, 56 secondsor null format and save that and then here we have export function
2:19:042 hours, 19 minutes, 4 secondsdefault workspace slug L from
2:19:122 hours, 19 minutes, 12 secondsuser. It's going to take a user which is going to be workspace log user. There you go. Open function body here.
2:19:212 hours, 19 minutes, 21 secondsAnd this is what we are doing here basically. So we're creating a constant a variable from username. It's going to
2:19:282 hours, 19 minutes, 28 secondstake the user from here and username out of that. If that is true, it's going to run this function here and going to
2:19:362 hours, 19 minutes, 36 secondsprovide that user's username into that function which is which then again it's going to use this logify username on
2:19:442 hours, 19 minutes, 44 secondsthat which is coming from app util. So it's all connected and then here we have from name of course uses the same
2:19:522 hours, 19 minutes, 52 secondspattern and uh it slices that and then we have if the length is more than three or equals to then it returns just from
2:20:002 hours, 20 minutesname and we have return we are returning either from username or from name. If both does not exist then we simply return workspace.
2:20:122 hours, 20 minutes, 12 secondsNow here we're going to need another function basically. So we have export function validate workspace slug.
2:20:202 hours, 20 minutes, 20 secondsThis expects a slug which is going to be a string and if slug is not available or the slug.length length is less than
2:20:292 hours, 20 minutes, 29 secondsthree then it's going to say it's going to return workspace URL must be at least three characters right and if the
2:20:362 hours, 20 minutes, 36 secondsworkspace slug pattern dot test slug is not true which pattern is here then in
2:20:442 hours, 20 minutes, 44 secondsthat case use lowerase letters numbers and hyphens cannot start or end with a hyphen so that's the pattern that it
2:20:522 hours, 20 minutes, 52 secondsneeds to follow and eventually it returns null and now here I'm going to say export port async function
2:21:012 hours, 21 minutes, 1 secondunique workspace slug. It's going to take a base which is going to be a string and
2:21:092 hours, 21 minutes, 9 secondsexclude workspace id which is optional and going to be a string as well. Open
2:21:152 hours, 21 minutes, 15 secondsfunction body here exclude workspace ID. Yeah. Now here we have
2:21:242 hours, 21 minutes, 24 secondsconst normalized is equal to normalize workspace slug. It's going to
2:21:322 hours, 21 minutes, 32 secondstake the base and or it's going to be simple
2:21:392 hours, 21 minutes, 39 secondsworkspace. There you go. Here we have return unique slug with suffix and
2:21:472 hours, 21 minutes, 47 secondsthat's going to be I'm going to open that. The first argument here is going to go normalized. There you go. And the
2:21:542 hours, 21 minutes, 54 secondssecond argument here goes async candidate candidate
2:22:032 hours, 22 minutes, 3 secondsopen that function body here and then here I'm going to say
2:22:092 hours, 22 minutes, 9 secondscon existing is equal to await prisma.workspace
2:22:162 hours, 22 minutes, 16 secondsdotfind unique and I'm going to open that here. Here I'm going to say where
2:22:232 hours, 22 minutes, 23 secondsthis is going to be slug candidate and select
2:22:302 hours, 22 minutes, 30 secondsID is true. There you go. And then eventually after that here I'm going to say return
2:22:392 hours, 22 minutes, 39 secondsboolean existing and existing do ID
2:22:482 hours, 22 minutes, 48 secondswhen that is not equal to exclude workspace ID. There you go. And of
2:22:552 hours, 22 minutes, 55 secondscourse, we need a third argument here, and that's going to be here, which is going to be work space. There you go.
2:23:052 hours, 23 minutes, 5 secondsAll done. So, we have normalize in the suffix. Then, we have this async
2:23:122 hours, 23 minutes, 12 secondsfunction. And then we have workspace as the last argument for this one. And that's done.
2:23:192 hours, 23 minutes, 19 secondsNow, I'm going to collapse everything in here. And I'm going to go to our lib.
2:23:242 hours, 23 minutes, 24 secondsThen we have o and in there I'm going to create a new file that is going to be provision dash user.ts.
2:23:362 hours, 23 minutes, 36 secondsThere you go. And here we have slugify username first of all. Then I'm going to need unique slug with suffix. And then I'm going to need prisma.
2:23:482 hours, 23 minutes, 48 secondsAnd then I'm going to need default workspace. Hold on.
2:23:552 hours, 23 minutes, 55 secondsI'm going to get down here and I'm going to open workspace slug. And yeah, this needs to be default workspace slug from
2:24:032 hours, 24 minutes, 3 secondsuser. Save that. Close that. So default workspace slug from user. There you go.
2:24:122 hours, 24 minutes, 12 secondsAnd the next one that I need is unique workspace slug. Awesome. Here I'm going to say type provision.
2:24:212 hours, 24 minutes, 21 secondsProvision user input is going to be equal to this code block where we have ID optional and
2:24:292 hours, 24 minutes, 29 secondsit's going to be a string. We have name optional and it's going to be a string or null.
2:24:382 hours, 24 minutes, 38 secondsWe have email string or null. Then we have username
2:24:462 hours, 24 minutes, 46 secondsoptional string or null. Awesome. Now here I'm going to say async function
2:24:532 hours, 24 minutes, 53 secondsunique username. It's going to take a base which is going to be a string open function body. So return
2:25:022 hours, 25 minutes, 2 secondsunique slug with suffix and it's going to take base. Then second as sync
2:25:112 hours, 25 minutes, 11 secondscandidate error function body consting
2:25:172 hours, 25 minutes, 17 secondsis equal to await prisma dot user dot find unique.
2:25:242 hours, 25 minutes, 24 secondsOpen that object and here we are targeting where username is candidate
2:25:332 hours, 25 minutes, 33 secondsand we are going to select that with ID true and eventually here I'm going to
2:25:422 hours, 25 minutes, 42 secondsreturn boolean existing and of course now we need the third argument which is going to be
2:25:502 hours, 25 minutes, 50 secondsuser. Let me format and save that. Now after that here we're going to need to ensure every new account gets a personal
2:25:582 hours, 25 minutes, 58 secondsworkspace matching replet model basically. So for that here we have export
2:26:052 hours, 26 minutes, 5 secondsasync function provision new user
2:26:112 hours, 26 minutes, 11 secondsuser provision [snorts] user input open function body and here we have if user
2:26:192 hours, 26 minutes, 19 secondsdo ID is not available then we simply return
2:26:242 hours, 26 minutes, 24 secondsconst user id is equal to user do ID there you go and we We have const
2:26:332 hours, 26 minutes, 33 secondsbase username is equal to slugify username and that is
2:26:402 hours, 26 minutes, 40 secondsgoing to take user dot username. If that is true then that's that's what it's going to be.
2:26:482 hours, 26 minutes, 48 secondsOtherwise it's going to target user dot name. If that is available wonderful otherwise it's going to target user
2:26:572 hours, 26 minutes, 57 secondsemail or otherwise sorry email. And if that is available then it's going to
2:27:032 hours, 27 minutes, 3 secondstake that and then split on that it's going to get rid of the ad or basically
2:27:102 hours, 27 minutes, 10 secondswe are taking the ad and then we have the first it's splitting that into an
2:27:172 hours, 27 minutes, 17 secondsarray let's say and [snorts] whatever comes before the ad that becomes the first index which is zerobased and then the second one becomes uh second index
2:27:272 hours, 27 minutes, 27 secondswhich is one and we're targeting the first index and if that is available.
2:27:312 hours, 27 minutes, 31 secondsWonderful. Otherwise, it's just simply going to say user.
2:27:352 hours, 27 minutes, 35 secondsThere you go. Let me format and save that. And now here I'm going to say const username is equal to user dot username.
2:27:462 hours, 27 minutes, 46 secondsAnd here we have await unique username and it's going to take a base username there. Format and save
2:27:552 hours, 27 minutes, 55 secondsthat. And here we have const workspace slug is equal to await unique workspace
2:28:032 hours, 28 minutes, 3 secondsslug and this is going to be default workspace slug from user and this is going to be username.
2:28:132 hours, 28 minutes, 13 secondsThen name is going to be user dot name. There you go. Let me format and
2:28:192 hours, 28 minutes, 19 secondssave that. And now here I'm going to say if user dot username does not exist
2:28:282 hours, 28 minutes, 28 secondsthen we have await prisma dot user dot update
2:28:362 hours, 28 minutes, 36 secondshere. Hold on. Open that. Where ID is user ID
2:28:442 hours, 28 minutes, 44 secondsand we're going to target data which is going to be user name.
2:28:532 hours, 28 minutes, 53 secondsAwesome. Excellent. Now here after that I'm going to say const existing workspace
2:29:002 hours, 29 minutesis equal to await prisma dot workspace dot find first and here I'm going to say
2:29:102 hours, 29 minutes, 10 secondswhere we have this object where I'm going to say owner id is going to be user ID and
2:29:182 hours, 29 minutes, 18 secondswe have type personal. There you go. And then after that here I'm going to say
2:29:262 hours, 29 minutes, 26 secondsuh select which is going to be ID set to true. All right. Formatting and saving that. Now after that here I'm going to
2:29:352 hours, 29 minutes, 35 secondssay if existing workspace is true then we return. Awesome.
2:29:442 hours, 29 minutes, 44 secondsAnd otherwise here we have await prisma dotworkspace create
2:29:522 hours, 29 minutes, 52 secondsand I'm going to say data this is going to be the data where we have name template literal where we have
2:30:012 hours, 30 minutes, 1 seconduser dot name if that is available hold on not here but here wonderful otherwise it's going
2:30:092 hours, 30 minutes, 9 secondsto be username and here I'm going to add a quote and this is going to be workspace
2:30:182 hours, 30 minutes, 18 secondsfor example Ali's workspace something like that [snorts] then here we have slug workspace slug there you go and
2:30:272 hours, 30 minutes, 27 secondsthen here we have type which is going to be personal then we have owner ID which
2:30:342 hours, 30 minutes, 34 secondsis going to be user ID we have members and that's going to be another object where we have create another object and
2:30:432 hours, 30 minutes, 43 secondswe we have user ID then role is going to be the admin.
2:30:492 hours, 30 minutes, 49 secondsExcellent. So with that we have officially completed our provision user.ts file and now I'm going to go and
2:30:582 hours, 30 minutes, 58 secondsopen a new file which is going to be lib /.ts file. And now here
2:31:062 hours, 31 minutes, 6 secondsso basically under this user here I'm going to add dot dot
2:31:192 hours, 31 minutes, 19 secondsand here I'm going to add a comma so I no longer get this error here in inside
2:31:262 hours, 31 minutes, 26 secondsthis parenthesis I'm going to say use database then I'm going to enter and in case of
2:31:342 hours, 31 minutes, 34 secondstrue this and in case of false this. So this is something
2:31:432 hours, 31 minutes, 43 secondsthat I have. Okay. Now in here I'm going to say this object where I'm going to add
2:31:512 hours, 31 minutes, 51 secondsdatabase hooks and this is going to be an object where I'm going to say user object
2:32:012 hours, 32 minutes, 1 secondcreate object after async this is going to be user
2:32:102 hours, 32 minutes, 10 secondsthen function body here and then I'm going to say await provision new user. There you go. Open the object.
2:32:212 hours, 32 minutes, 21 secondsAnd here I have ID. User dot ID. Then we have name. User dot name.
2:32:302 hours, 32 minutes, 30 secondsEmail user dot email. And we have user
2:32:362 hours, 32 minutes, 36 secondsname which is going to be type of user dot user name
2:32:442 hours, 32 minutes, 44 secondsis equal to string or user dot username
2:32:522 hours, 32 minutes, 52 secondssimply null. Let me format that and save that. This username doesn't look good. Okay.
2:33:022 hours, 33 minutes, 2 secondsUnknown is not assignable to type string. Okay.
2:33:092 hours, 33 minutes, 9 secondsString null or undefined.
2:33:132 hours, 33 minutes, 13 secondsAnd I guess I know the reason that that could be this e here. Yeah, there you go. User dot username. Uh if that is
2:33:222 hours, 33 minutes, 22 secondsavailable to string then it's going to be user dot username otherwise it's going to be null. Let me format and save that. And now
2:33:312 hours, 33 minutes, 31 secondsafter this we have this. Okay, I guess everything is done. All right, I'm going to go to my browser and uh here
2:33:402 hours, 33 minutes, 40 secondscreate account and let's say login or sign up continue with Google
2:33:482 hours, 33 minutes, 48 secondsand here I'm going to use my another account as make sure to use a new account as this is going to work only for the first time users.
2:33:572 hours, 33 minutes, 57 secondsSo continue.
2:34:022 hours, 34 minutes, 2 secondsI'm going to go to the Prisma Studio here and here I'm going to go under workspaces and there you go. We have Ali Mortis's
2:34:112 hours, 34 minutes, 11 secondsworkspace on our ID slug type and everything is there. Fantastic.
2:34:172 hours, 34 minutes, 17 secondsAwesome. So the workspaces work is done and are both odd sign in are working end
2:34:252 hours, 34 minutes, 25 secondsto end and we're we are ready to move on to work on the hero prompt section of this thing and eventually we will be
2:34:332 hours, 34 minutes, 33 secondsworking on this account this thing and workspace like uh module and all that sort of stuff uh step by step. All
Chapter 4: Home prompt
2:34:422 hours, 34 minutes, 42 secondsright. So, in order to get started working on this prompt area, we need to go back to our code editor. And I'm
2:34:502 hours, 34 minutes, 50 secondsgoing to close this one as no longer needed. And also close this one. And
2:34:572 hours, 34 minutes, 57 secondshere, basically, the very first file that you're going to need to check is the hero-prompt-draft.
2:35:072 hours, 35 minutes, 7 secondsYou should have this save hero prompt.
2:35:102 hours, 35 minutes, 10 secondsuh save heromp draft, load Heroprompt draft and clear Heroprompt draft these
2:35:162 hours, 35 minutes, 16 secondsfunctions with you. The next file that you're going to need is the under the lib
2:35:242 hours, 35 minutes, 24 secondswe're going to create a new folder. I'm going to call it hooks. And in there we
2:35:302 hours, 35 minutes, 30 secondsneed a new file which is going to be use-hero- prompt-draft.ts.
2:35:382 hours, 35 minutes, 38 secondsts it's going to be a client component and then we're going to import use
2:35:462 hours, 35 minutes, 46 secondseffect from react also use state from react then we're going to need a
2:35:552 hours, 35 minutes, 55 secondsload hero prompt draft there you go we also need project categories from our
2:36:032 hours, 36 minutes, 3 secondslanding data and then we also need import type here.
2:36:092 hours, 36 minutes, 9 secondsI'm going to say prompt attachment.
2:36:132 hours, 36 minutes, 13 secondsThere you go. And then also need import type project
2:36:222 hours, 36 minutes, 22 secondscategory from the types. Awesome.
2:36:282 hours, 36 minutes, 28 secondsI'm going to come down here and here we have export function. [snorts] And I'm going to say use hero prompt draft restore. Open the function body.
2:36:402 hours, 36 minutes, 40 secondsAnd here we have a few variables a little store basically. So we have
2:36:472 hours, 36 minutes, 47 secondsvalue set value is equal to use state empty
2:36:542 hours, 36 minutes, 54 secondscon attachments set attachments and this is going to be
2:37:022 hours, 37 minutes, 2 secondsequal to use state here I define the prompt attachment type and
2:37:102 hours, 37 minutes, 10 secondsthere you go gets initiated by empty array simple uh Uh here actually this needs to
2:37:172 hours, 37 minutes, 17 secondsbe an array as well. [snorts] And then here we have const plan mode. Nope.
2:37:252 hours, 37 minutes, 25 secondsPlan mode and set plan mode is [snorts] equal to use state false by default.
2:37:342 hours, 37 minutes, 34 secondsConst selected category set selected category is equal to use state.
2:37:482 hours, 37 minutes, 48 secondsHere we have project category type or null and this gets initiated by null as
2:37:562 hours, 37 minutes, 56 secondswell. Then here we have const ready ready set ready is equal to use state false.
2:38:082 hours, 38 minutes, 8 secondsThere you go.
2:38:102 hours, 38 minutes, 10 seconds[snorts] Now here I'm going to say use effect function body. Uh the dependency array
2:38:192 hours, 38 minutes, 19 secondsis empty array. And here I have async function restore. open that and this is
2:38:272 hours, 38 minutes, 27 secondsgoing to be const draft is equal to load hero prompt draft then here I'm going to
2:38:352 hours, 38 minutes, 35 secondssay const stored attachments is equal to empty array for now eventually this is
2:38:432 hours, 38 minutes, 43 secondsgoing to be coming from another file which we do not have yet so sync aait that's why aait is here I'm going to
2:38:512 hours, 38 minutes, 51 secondsleave the aait here and then here I'm going to say If draft is there then we have set value.
2:39:022 hours, 39 minutes, 2 secondsThis is going to be draft dot value.
2:39:062 hours, 39 minutes, 6 secondsSet plan mode. This is going to be a draft dot plan mode. Then we have if
2:39:142 hours, 39 minutes, 14 secondsdraft dot category id is true means available. Then we have const category
2:39:222 hours, 39 minutes, 22 secondsis equal to project categories dot find item
2:39:302 hours, 39 minutes, 30 secondsitem do ID and that is equal to draft dot category id awesome
2:39:392 hours, 39 minutes, 39 secondsand then after that after that const actually I'm going to say if category exists then we have set
2:39:482 hours, 39 minutes, 48 secondsselected category set to that category. Awesome.
2:39:542 hours, 39 minutes, 54 secondsNow after this if here I'm going to say if stored attachments.length
2:40:022 hours, 40 minutes, 2 secondsis more than zero which of course is not going to be true as we [snorts] only have an empty array for now. It will become true eventually.
2:40:112 hours, 40 minutes, 11 secondsAnd uh here this is going to be set attachments to stored attachments.
2:40:192 hours, 40 minutes, 19 secondsAwesome. And after that here I'm going to say set ready to true. Awesome. And
2:40:262 hours, 40 minutes, 26 secondsthen after that here I have void restore.
2:40:332 hours, 40 minutes, 33 secondsExcellent.
2:40:352 hours, 40 minutes, 35 secondsAnd now one thing that I need to do is after this here I'm going to return
2:40:462 hours, 40 minutes, 46 secondsI'm going to return value set value attachments set attachments
2:40:562 hours, 40 minutes, 56 secondsplan mode set plan mode uh selected category and Set selected category and ready.
2:41:082 hours, 41 minutes, 8 secondsReady. There you go.
2:41:122 hours, 41 minutes, 12 secondsUh, red. No. Yep. There you go. So, that's all. And now we need to use this file, of course.
2:41:202 hours, 41 minutes, 20 secondsAll right. So, now I'm going to open a file which is going to be prompt area.tsx.
2:41:292 hours, 41 minutes, 29 secondsThere are going to be a lot of things that we haven't done yet and we are going to do them now. So first of all,
2:41:372 hours, 41 minutes, 37 secondswe're going to need to bring our o client as that is going to be used here. Second, we're going to need use o model.
2:41:462 hours, 41 minutes, 46 secondsThere you go. And then we need use hero prompt draft restore. Awesome.
2:41:542 hours, 41 minutes, 54 secondsAll right. So now I'm going to get to the hero prompt area. Here [snorts] we
2:42:012 hours, 42 minutes, 1 secondhave con router and after that here I'm going to say const data is going to be session and then we
2:42:102 hours, 42 minutes, 10 secondsneed is pending that's all coming from oclient
2:42:162 hours, 42 minutes, 16 secondsdot use session. There you go. And then after that here I'm going to say const
2:42:242 hours, 42 minutes, 24 secondsOpen o model is going to be brought from use o model.
2:42:322 hours, 42 minutes, 32 secondsAwesome. And then here we have of course our test uh toast. And then after that here I'm going to say const. I'm going
2:42:412 hours, 42 minutes, 41 secondsto bring value set value also attachments.
2:42:512 hours, 42 minutes, 51 secondsActually, do you know what is equal to use hero prompt? There you go. I think now it will give me suggestion. There
2:42:582 hours, 42 minutes, 58 secondsyou go. Attachments. Then we need set attachments. And then I'm going to need plan mode.
2:43:082 hours, 43 minutes, 8 secondsSet plan mode. Then selected category.
2:43:132 hours, 43 minutes, 13 secondsSet selected category. And ready. There you go. and the selected category. There
2:43:202 hours, 43 minutes, 20 secondsis some sort of issue. Yep. It's because it's coming from here. I set this up uh
2:43:282 hours, 43 minutes, 28 secondshere temporarily. So, this needs to go away. There you go.
2:43:362 hours, 43 minutes, 36 secondsAwesome.
2:43:372 hours, 43 minutes, 37 secondsOne another thing that I'm going to need is I'm going to go to the very top here and I'm going to say const app auto
2:43:462 hours, 43 minutes, 46 secondsstart URL is equal to slash app question mark auto start is equal to 1. Awesome.
2:43:572 hours, 43 minutes, 57 secondsI'm going to scroll down. Eventually these icons will be moved from here as we're going to bring another component
2:44:032 hours, 44 minutes, 3 secondsinto this one. And uh so here actually
2:44:092 hours, 44 minutes, 9 secondshere I'm going to write function handle select this is going to take a text which is
2:44:182 hours, 44 minutes, 18 secondsgoing to be a string open function body and this is going to be set value which
2:44:252 hours, 44 minutes, 25 secondsis going to be text. There you go. And we have handle category toggle. Okay.
2:44:332 hours, 44 minutes, 33 secondsYeah. This all looks good. Okay, fantastic.
2:44:382 hours, 44 minutes, 38 secondsI'm going to scroll down to the very bottom and here we have example prompts and on that I'm going to say on select
2:44:472 hours, 44 minutes, 47 secondswhich is going to be handle select and here we have category cursel selected
2:44:532 hours, 44 minutes, 53 secondscategory ID okay null on category toggle handle category toggle which
2:45:012 hours, 45 minutes, 1 secondis here yeah all good okay so now I'm going open another file which is let me
2:45:102 hours, 45 minutes, 10 secondsfind that. So, nope. This is going to be app
2:45:172 hours, 45 minutes, 17 secondsprompt input and let me Okay, so we have app prompt input props
2:45:252 hours, 45 minutes, 25 secondscategory tag there app prompt input component itself and uh
2:45:322 hours, 45 minutes, 32 secondsokay this will come later and let me check where we are using
2:45:392 hours, 45 minutes, 39 secondsthat. So I'm going to say app prompt input and we are using that
2:45:482 hours, 45 minutes, 48 secondsin the app home. Okay. So that is being used there. Okay.
2:45:542 hours, 45 minutes, 54 secondsAnd this expects what on changes missing in type. Okay. String value string but required type of props declared here value string. Okay.
2:46:072 hours, 46 minutes, 7 seconds[snorts] So I'm going to go to the prompt area. I'm going to get rid of this thing here.
2:46:162 hours, 46 minutes, 16 secondsAnd this whole thing is going to be be replaced with that. So this code, let me actually do one more thing
2:46:242 hours, 46 minutes, 24 secondshere. I'm going to copy this one. Go to the this page and search for this code which I cannot find.
2:46:342 hours, 46 minutes, 34 secondsSo, we have max width out of uh Okay, hold on.
2:46:422 hours, 46 minutes, 42 secondsSo, what I'm going to do is I'm going to keep this div, but from this div to all
2:46:502 hours, 46 minutes, 50 secondsthe way here, I guess I'm going to get rid of everything. There you go. Actually, do
2:46:582 hours, 46 minutes, 58 secondsyou know what? I'm going to just copy that for now. So, in case I lose something, then I have that instead of
2:47:072 hours, 47 minutes, 7 secondsgone. So, I'm going to copy that. Get rid of that from here. Get to the very bottom. Paste that over here. And I'm going to comment that out.
2:47:172 hours, 47 minutes, 17 secondsThere you go. So, make sure everything is commented. Yes, it is. And
2:47:232 hours, 47 minutes, 23 secondshold on. [snorts] There you go. Excellent.
2:47:322 hours, 47 minutes, 32 secondsAll right. So now here inside this div here I'm going to need app prompt input
2:47:412 hours, 47 minutes, 41 secondsand that's going to take a variant. In this case that is going to be landing. Then it expects a value which
2:47:502 hours, 47 minutes, 50 secondsis going to be value. Then this is going to be a on change which is going to be set value.
2:48:012 hours, 48 minutes, 1 secondAnd now before I write rest of the props here for this component I would like to create a new file actually. So for that
2:48:102 hours, 48 minutes, 10 secondsI'm going to go to the lib folder and here I'm going to create a new file hero dash prompt dash attachments.ts.
2:48:222 hours, 48 minutes, 22 secondsThere you go. And first of all we have create prompt create create prompt attachment
2:48:312 hours, 48 minutes, 31 secondscoming from prompt attachments. And also we need a here actually I'm going to say type prompt attachment. There you go.
2:48:442 hours, 48 minutes, 44 secondsAwesome. And then here I'm going to say let's actually let me paste this code here. So there you go. Let me tell you
2:48:522 hours, 48 minutes, 52 secondswhat's going on. So basically we have a DB name here replet your prompt. We also have a store. This is a type here simply
2:49:002 hours, 49 minutesand then we have a function open DB which is um here we have a promise and then we are returning a new promise. We
2:49:092 hours, 49 minutes, 9 secondshave both arguments resolve and reject and we are creating this request open and DB. Here there's one and then here
2:49:182 hours, 49 minutes, 18 secondswe have another request here going on to the database and eventually we have on success and we have on error methods
2:49:272 hours, 49 minutes, 27 secondshere on the request as well. We have another async function read all and then we have another function uh async
2:49:352 hours, 49 minutes, 35 secondsfunction write all. So both for the read only and read write and then here we
2:49:412 hours, 49 minutes, 41 secondshave file to stored that's basically after the processing that's when the
2:49:482 hours, 49 minutes, 48 secondsfile name and type and last modify all this information is going to be saved uh for that specific attachment and then we
2:49:562 hours, 49 minutes, 56 secondshave stored attach little small functions here and there just and uh stored to attachment uh another function
2:50:062 hours, 50 minutes, 6 secondshere save her a prompt attachment and if the basically window is going to be undefined then it's going to return
2:50:132 hours, 50 minutes, 13 secondsotherwise it's going to do its thing here and we have lastly a couple of functions here load hero prompt
2:50:202 hours, 50 minutes, 20 secondsattachments and that's going to load uh on the let's say if there's already an attachment that's a user already
2:50:292 hours, 50 minutes, 29 secondsattached to the prompt and for some reason he needed to refresh and then it's going to check those attachments and make sure that those are still
2:50:382 hours, 50 minutes, 38 secondsattached to the prompt instead of them uh just going away. So, clear prompt
2:50:462 hours, 50 minutes, 46 secondsattachment, of course, that's there as well. And yeah, that's pretty much it for this.
2:50:532 hours, 50 minutes, 53 secondsAnd now I need you to go to the hero prompt draft.ts file. So right now we have a save hero draft load prompt draft
2:51:032 hours, 51 minutes, 3 secondsand clear hero prompt draft and right now I need you to have this function as well which is persist hero prompt state.
2:51:132 hours, 51 minutes, 13 secondsSo this is basically this is going to be used when uh user already has submitted uh already
2:51:222 hours, 51 minutes, 22 secondshas written a prompt on the homepage and that needs to be carried to the app page
2:51:292 hours, 51 minutes, 29 secondsjust by clicking on the landing page. So that's the connection between both the landing page and app page in order to
2:51:362 hours, 51 minutes, 36 secondsinitiate a project just by using the prompt.
2:51:402 hours, 51 minutes, 40 secondsDoesn't matter if he writes the function on writes the prompt on the landing page or on the app page.
2:51:492 hours, 51 minutes, 49 secondsAnd of course we need to bring both of these. So I'm going to click on this one. Click here and add import prompt attachments. That's going to come from
2:51:562 hours, 51 minutes, 56 secondsthere. And this one also needs to come import. There you go. And yeah, that's done. That's that's coming as well. And that too. Okay.
2:52:082 hours, 52 minutes, 8 secondsAnd similarly here we need another small function which is basically this clear hero prompt straight where we have uh
2:52:162 hours, 52 minutes, 16 secondswe're just doing doing this async and aait where basically running that function which of course is going to come from this import file that we just
2:52:252 hours, 52 minutes, 25 secondscreated here. Uh sorry not here but if I can go there. Yeah there you go here.
2:52:322 hours, 52 minutes, 32 secondsAwesome. Now I'm going to close this file. I'm going to get back to this prompt area file and here I'm going to
2:52:392 hours, 52 minutes, 39 secondsneed a couple of functions. So first of all here I'm going to say use effect.
2:52:462 hours, 52 minutes, 46 secondsHere we have this. So I'm going to say let's say actually let's actually add the dependency array first. We have
2:52:542 hours, 52 minutes, 54 secondsvalue selected category plan mode attachments
2:53:012 hours, 53 minutes, 1 secondand ready. Not read but ready. There you go. And now inside this function here,
2:53:082 hours, 53 minutes, 8 secondsI'm going to say if ready is not true, then we simply return from
2:53:172 hours, 53 minutes, 17 secondsthis use effect function and otherwise we have void persist hero prompt state. I'm going to open
2:53:262 hours, 53 minutes, 26 secondsthat object from that function. Here we add value category id which is going to be selected category if that is
2:53:352 hours, 53 minutes, 35 secondsavailable then ID from there otherwise just null and then here I'm going to say
2:53:432 hours, 53 minutes, 43 secondslet's say plan mode then here I'm going to add attachments and then here I have
2:53:512 hours, 53 minutes, 51 secondsauto start is going to be false by default there you go [snorts] I think that's pretty much it For this one,
2:54:002 hours, 54 minutesI'm going to scroll up here and uh let's say after the handle category toggle here, I'm going to create another
2:54:082 hours, 54 minutes, 8 secondsfunction open login and here I'm going to say void persist
2:54:142 hours, 54 minutes, 14 secondshero prompt state and in there I have value category ID which is going to be
2:54:232 hours, 54 minutes, 23 secondsselected category. If that is available then ID from there otherwise just null
2:54:292 hours, 54 minutes, 29 secondsand then we have plan mode. We also have attachments and auto start is going to
2:54:352 hours, 54 minutes, 35 secondsbe auto start is going to be true here by default
2:54:432 hours, 54 minutes, 43 secondsand then after that here I'm going to say const params is equal to new URL search params and we have window.loation
2:54:532 hours, 54 minutes, 53 secondslocation dot locationation dot search there you go and we have
2:55:012 hours, 55 minutes, 1 secondparams dot set o and then here we have login then here
2:55:082 hours, 55 minutes, 8 secondsI'm going to say params dot set callback
2:55:162 hours, 55 minutes, 16 secondsURL and second argument is going to be app auto dot URL. Then here we have con
2:55:242 hours, 55 minutes, 24 secondsquery is equal to params dot to string
2:55:312 hours, 55 minutes, 31 secondsfunction window dot history dotreplace state. There you go. Null empty.
2:55:422 hours, 55 minutes, 42 secondsAnd then we have query. If that is true then we are doing slash uh question u slash question mark.
2:55:502 hours, 55 minutes, 50 secondsAnd then here we have query otherwise this is going to be a simple root
2:55:572 hours, 55 minutes, 57 secondsdirectory. There you go. We have open o model log in. Awesome. So that's pretty much
2:56:062 hours, 56 minutes, 6 secondsit for this one. And right now here under I'm going to say async function handle start. This is going to
2:56:162 hours, 56 minutes, 16 secondstake a prompt which is going to be a string. Open that function body. And here we have await persist hero prompt state.
2:56:272 hours, 56 minutes, 27 secondsOpen function body. And here here we have sorry object body. And in the in there we have value
2:56:352 hours, 56 minutes, 35 secondswhich is going to be prompt. Then we have category ID which is going to be selected category
2:56:422 hours, 56 minutes, 42 secondsdo ID otherwise just null. And then here we have plan mode
2:56:492 hours, 56 minutes, 49 secondsattachments and then auto start which is going to be true here.
2:56:552 hours, 56 minutes, 55 secondsAnd here I'm going to say if is pending is true then we return and if session do
2:57:042 hours, 57 minutes, 4 secondsuser is not available in that case we're going open login and we return.
2:57:142 hours, 57 minutes, 14 secondsAll right. And then here we router dotpush we do
2:57:222 hours, 57 minutes, 22 secondsapp auto start URL. Awesome. [snorts] So that's pretty much it for this one. For the handle start as well.
2:57:312 hours, 57 minutes, 31 secondsAnd now we need to make sure that we wire this all stuff into our app prompt input. And for that here I'm going to
2:57:402 hours, 57 minutes, 40 secondssay on change and then we have onsubmit
2:57:462 hours, 57 minutes, 46 secondswhich is going to be handle start. Then we have selected category that's going
2:57:542 hours, 57 minutes, 54 secondsto be selected category. Then we have on remove category. This is going to be a
2:58:002 hours, 58 minutesfunction. We have set selected category and set that to null. And then we have attachments.
2:58:112 hours, 58 minutes, 11 secondsSo hold on, let me get that out of this block here. This is going to be attachments as well. Then we have on
2:58:192 hours, 58 minutes, 19 secondsattachment change. This is going to be set attachments.
2:58:252 hours, 58 minutes, 25 secondsAll right. And then here we have plan mode. This is going to be plan mode there. And we have on plan
2:58:332 hours, 58 minutes, 33 secondsmode change. This is going to be set plan mode. Then we have finally on error
2:58:402 hours, 58 minutes, 40 secondswe have toast error. Let me format and save that. And that's pretty much it for
2:58:472 hours, 58 minutes, 47 secondsthis one as well. And if we go to our homepage, our landing page basically.
2:58:562 hours, 58 minutes, 56 secondsSo if I write yes, I can write that. And this changes its height based on that.
2:59:032 hours, 59 minutes, 3 secondsIf I click on that, of course, it does not bring us the attachment dialogue yet. If I click on that, that's gets
2:59:102 hours, 59 minutes, 10 secondsadded there. I can remove that by adding this clicking this one as well. If I click on the plan mode, it gets
2:59:172 hours, 59 minutes, 17 secondsactivated by clicking it twice. That's removed from here and also from here as well. This works as well. If I click on
2:59:252 hours, 59 minutes, 25 secondsthis one, that gets added as well. So basically everything is eventually working just like the way it was
2:59:332 hours, 59 minutes, 33 secondssupposed to work. Awesome. Fantastic job.
2:59:382 hours, 59 minutes, 38 secondsAnd now similarly just like this prompt area I'm going to where is that actually
2:59:442 hours, 59 minutes, 44 secondsno? Yeah no longer need for the mic icon and plan icon here. We can get rid of that. We have hero prompt area here.
2:59:542 hours, 59 minutes, 54 secondsEverything is being used. Let me just verify. Yeah, this can go away as well.
3:00:023 hours, 2 secondsUh, yeah, I think so. Yep, no error.
3:00:083 hours, 8 secondsExcellent. Everything is formatted correctly. And now I would like to get this value from here.
3:00:193 hours, 19 secondsAnd let me copy that. And I'm going to open app-home.tsx tsx file and now here I'm going to add I
3:00:303 hours, 30 secondshave this search params then I have this error uh okay so we have error and set error
3:00:383 hours, 38 secondsand then we have error toast error coming from there so after this one here
3:00:463 hours, 46 secondsI'm going to say I'm going to paste that value here and I'm going to import that here as well okay let me format that.
3:00:563 hours, 56 secondsAnd once again, before I start writing the rest of the code for this file, I'm going to need another little piece of
3:01:043 hours, 1 minute, 4 secondscode for the hero dashprompt-draft file. And let's actually add that here.
3:01:133 hours, 1 minute, 13 secondsSo I'm going to paste that code here. So basically this is a build project from data. We are going to take a prompt, a
3:01:223 hours, 1 minute, 22 secondsplan mode, category ID and attachments whatever is going to be written here basically prompt attachment ID and
3:01:303 hours, 1 minute, 30 secondswhether it's a plan mode or not. So based on that this is going to build the project and [snorts] uh the form data is
3:01:383 hours, 1 minute, 38 secondsgoing to be saved here into this one and then we're going to append the prompt into that. We're also appending whether
3:01:453 hours, 1 minute, 45 secondsit's a plan mode or not. And if the if there's a category attached to that, we are also appending that to the form
3:01:533 hours, 1 minute, 53 secondsdata. And whether it's attachment or not, then we are appending every single attachment with its index and that
3:02:003 hours, 2 minutesattachment file name to that uh form that as well. And finally, we're returning that form data. And based on that, we're going to create a project.
3:02:113 hours, 2 minutes, 11 secondsThis basically function creates a project. So I'm going to close this one here.
3:02:173 hours, 2 minutes, 17 secondsAnd here I'm going to write another function. Function submit project.
3:02:253 hours, 2 minutes, 25 secondsAnd here's the function. I'm going to give it some uh arguments. So let's say we have prompt which is going to be a
3:02:343 hours, 2 minutes, 34 secondsstring. Then we have next attachment.
3:02:413 hours, 2 minutes, 41 secondsNext attachments which is going to be a type of attachments and then we have next plan mode. This is going to be a boolean.
3:02:553 hours, 2 minutes, 55 secondsThen we have next category and this is going to be a project
3:03:013 hours, 3 minutes, 1 secondcategory or it's simply going to be null. There you go. And here I'm going to open the
3:03:103 hours, 3 minutes, 10 secondsfunction body where we have set error to null initially.
3:03:173 hours, 3 minutes, 17 secondsThen we have start transition also coming from react that's going to
3:03:243 hours, 3 minutes, 24 secondstake an async function and run on that. And this is going to be const
3:03:323 hours, 3 minutes, 32 secondsdata is equal to build project from data which is also imported. And then here I'm going to add prompt.
3:03:443 hours, 3 minutes, 44 secondsThere you go. [snorts] Plan mode which is going to be next plan mode. Then we have category ID which is going to be
3:03:533 hours, 3 minutes, 53 secondsnext category. If that is available then ID from there. Then we have attachments which is going to be next attachments.
3:04:033 hours, 4 minutes, 3 secondsNext attachments. There you go. Awesome. I'm going to come down here and here I have
3:04:103 hours, 4 minutes, 10 secondscon result and this is going to take basically of bas this basically is going
3:04:173 hours, 4 minutes, 17 secondsto be an action which we do not have yet. We're going to work on that later.
3:04:233 hours, 4 minutes, 23 secondsSo for now maybe I'm going to let's say action simple something like that we are going to replace that with the real
3:04:313 hours, 4 minutes, 31 secondsaction later and that action is basically is going to be create project action. So that's what
3:04:403 hours, 4 minutes, 40 secondsit's going to be. I'm going to Yeah. Now here if result
3:04:483 hours, 4 minutes, 48 secondsand error in result
3:04:543 hours, 4 minutes, 54 secondsand result dot error if any of this is true
3:05:013 hours, 5 minutes, 1 secondand here it says that type string is not assignable to type object. Well, how about something like this?
3:05:143 hours, 5 minutes, 14 secondsAnd uh let's say we have action and then we have action here as well.
3:05:263 hours, 5 minutes, 26 secondsThere you go. Something like that. And now here I'm going to say set error.
3:05:343 hours, 5 minutes, 34 secondsThis is going to be result dot error.
3:05:383 hours, 5 minutes, 38 secondsAnd then here we have toast toast error. This is going to be result
3:05:473 hours, 5 minutes, 47 secondsdot error as well. And we finally return from here. And here I'm going to say
3:05:543 hours, 5 minutes, 54 secondsawait clear hero prompt state. There you go. Let me format and save that. And since we have this error
3:06:033 hours, 6 minutes, 3 secondshere. So what I'm going to do is I'm going to add error here as well as a second argument. So we do have that
3:06:113 hours, 6 minutes, 11 secondserror in this uh exampler object that eventually is going to be
3:06:183 hours, 6 minutes, 18 secondsremoved and get replaced by the real action create project action. [snorts] Awesome.
3:06:253 hours, 6 minutes, 25 secondsLet me scroll up a little. And here in the handle category toggle we have category project category. I'm going to
3:06:333 hours, 6 minutes, 33 secondssay set selected category. This is going to take a current category.
3:06:403 hours, 6 minutes, 40 secondsThere you go. And run a function on that. So what it's going to do is it's going to make sure that current if that
3:06:473 hours, 6 minutes, 47 secondsis available then get the ID from there and make sure when that is equal to category do ID then it's going to make
3:06:563 hours, 6 minutes, 56 secondssure it's null otherwise it's going to add the category there. Awesome. So that's handle category toggle. And now
3:07:043 hours, 7 minutes, 4 secondshere we're going to need a function handle submit which is going to take a prompt and
3:07:133 hours, 7 minutes, 13 secondsthat's going to be a string of course and here I'm going to say submit
3:07:223 hours, 7 minutes, 22 secondsproject and that's going to be taking a prompt attachments
3:07:283 hours, 7 minutes, 28 secondsplan mode and selected category. There you go.
3:07:343 hours, 7 minutes, 34 secondsAnd of course now we need one for the examples as well. So function handle example select.
3:07:423 hours, 7 minutes, 42 secondsThis is going to be a text which is string open function body. We have set value set to text. Awesome. Excellent.
3:07:543 hours, 7 minutes, 54 secondsSo now here finally in the value I'm going to change this from testing to
3:08:013 hours, 8 minutes, 1 secondvalue. Then here we have on change this is going to be set value on submit
3:08:093 hours, 8 minutes, 9 secondshandle submit. Then we have selected category selected category. Then we have on
3:08:173 hours, 8 minutes, 17 secondsremove category. This is going to be a function set selected category. This is going to be null. Let me format and save
3:08:263 hours, 8 minutes, 26 secondsthat. So we have set selected category set to null. All right. After that, I'm
3:08:333 hours, 8 minutes, 33 secondsgoing to say on actually attachments, which is going to be attachments on attachment change. This is going to
3:08:413 hours, 8 minutes, 41 secondsbe set attachments. Then here we have plan mode. There you go. Plan mode. Then
3:08:513 hours, 8 minutes, 51 secondswe have on plan mode change. Set plan mode. Then we have on error. This is
3:08:583 hours, 8 minutes, 58 secondsgoing to be toast error. And then we have disabled. This is going to be disabled when it's paddling. Let me
3:09:083 hours, 9 minutes, 8 secondsformat and save that. And I guess we are done with this one. Let me get rid of this comment.
3:09:163 hours, 9 minutes, 16 secondsAnd yeah, I'm going to scroll down. Uh here in the category carousel
3:09:243 hours, 9 minutes, 24 secondswe have selected category ID which is going to be selected category ID if that exists then ID from there otherwise it's
3:09:323 hours, 9 minutes, 32 secondsgoing to be null and then here we have on category toggle we have handle category toggle okay
3:09:393 hours, 9 minutes, 39 secondsexcellent then in the example prompts variant still stays app and then we have on select that changes to handle example
3:09:503 hours, 9 minutes, 50 secondsselect. I think that's pretty much it for this one. If I go to the app page
3:10:003 hours, 10 minutesand uh if I write there you go this becomes active. Of course, this will not bring the model yet. I can select
3:10:093 hours, 10 minutes, 9 secondsunselect a category. I can activate deactivate plan mode. I can
3:10:163 hours, 10 minutes, 16 secondsmake the category carousel work. I can click on this one. This gets added to the prompt area and the button becomes
3:10:243 hours, 10 minutes, 24 secondsavailable accordingly. Excellent. So everything is working as expected both on the landing page as well as on this
3:10:323 hours, 10 minutes, 32 secondsapp page when it comes to the this prompt area. Excellent job guys. There is only one thing that is left for this
3:10:423 hours, 10 minutes, 42 secondsfile and that is basically let's say you are on the landing page and you actually
3:10:503 hours, 10 minutes, 50 secondsyou know what I'm going to open that in the incognito window and let's test if this works if this brings us the login
3:10:583 hours, 10 minutes, 58 secondsmodel what if we are not logged in click the start it does not because we have no
3:11:063 hours, 11 minutes, 6 secondsaction yet yes I can understand once the action is there then that will be working perfectly. Okay. So let's
3:11:133 hours, 11 minutes, 13 secondsimagine that you already have written a prompt here something whatever and then you click the start button but it brings
3:11:233 hours, 11 minutes, 23 secondsthe login model because you are not logged in yet and once it basically it's going to redirect you to the Google or
3:11:313 hours, 11 minutes, 31 secondsGitHub page for the redirection for the authentication. Once you're authenticated, you are back at the
3:11:373 hours, 11 minutes, 37 secondslanding page. Then it gets the prompt that you already wrote before being
3:11:463 hours, 11 minutes, 46 secondsredirected to the authentication services and then it's going to take that prompt to the app page. So
3:11:533 hours, 11 minutes, 53 secondsbasically what we need is the connection between the landing page to the app page. So whether you write a prompt here
3:12:013 hours, 12 minutes, 1 secondand you click start if you're logged in it's going to take you to the app page itself and then create a project there
3:12:093 hours, 12 minutes, 9 secondsand uh yeah that's what it needs to be done and for that I'm going to give you this little function here. So in the app
3:12:183 hours, 12 minutes, 18 secondshome we have this handle category toggle. So here I'm going to add that function.
3:12:263 hours, 12 minutes, 26 secondsNope not this one. So above this handle category toggle I'm going to add that
3:12:333 hours, 12 minutes, 33 secondsfunction here let's say and [snorts] there you go.
3:12:393 hours, 12 minutes, 39 secondsSo here we have auto started reference we have this cannot find it you mean auto started ref. Well yeah I did
3:12:463 hours, 12 minutes, 46 secondsmisspel that. So this should be where is that auto started reference.
3:12:553 hours, 12 minutes, 55 secondsThere you go. So, we have start transition is being used here, but that's not there. Start transition.
3:13:063 hours, 13 minutes, 6 secondsYeah, I misspelled it here. So, that needs to go there as well. So, yeah, I messed up with the spellings all over the places, but no problem.
3:13:143 hours, 13 minutes, 14 secondsWe're going to figure that out. So, we have form data here, here, here, and that form data is eventually going to be
3:13:213 hours, 13 minutes, 21 secondsused here. So that's why it's a little blurry. And uh yeah, we have load hero
3:13:283 hours, 13 minutes, 28 secondsprompt draft. Cannot find that. Okay, if I click on that update import from there you go.
3:13:373 hours, 13 minutes, 37 secondsAnd now if I can go to the start transition from React. Yep. No longer needed.
3:13:513 hours, 13 minutes, 51 secondsOkay. So yeah that is gone and function submit project after that here we have
3:13:573 hours, 13 minutes, 57 secondsthis use effect. So we are checking basically when this is not ready or the auto started reference current
3:14:063 hours, 14 minutes, 6 secondsuh is true means we are already on the app page or it's pending we simply return then should auto start is
3:14:153 hours, 14 minutes, 15 secondsdepending on the auto start is set to one or not and we did do that
3:14:253 hours, 14 minutes, 25 secondshere in the app auto start URL and we are using that in all over the places.
3:14:313 hours, 14 minutes, 31 secondsUh, auto start, not here. Auto start. There you go.
3:14:403 hours, 14 minutes, 40 secondsSo, okay.
3:14:453 hours, 14 minutes, 45 secondsWhen that is equal to one, then it's going to load her prompt and from there and it's going to go otherwise it's going to just return. We have draft
3:14:533 hours, 14 minutes, 53 secondsprompt has content these uh check marks and then if the content is not true if there's no content then we simply return
3:15:033 hours, 15 minutes, 3 seconds[snorts] and um there are of course some ready search params value attachments all of these [snorts] dependencies that
3:15:103 hours, 15 minutes, 10 secondswe already have been using on this page and uh for now this little code has no effect on the UI or functionality yet as
3:15:183 hours, 15 minutes, 18 secondswe this [snorts] is going to take place when we already have the action and when we can basically click this button and
3:15:273 hours, 15 minutes, 27 secondsit takes us from this landing page to the app page when we already have written a prompt. All right. So, so far
3:15:363 hours, 15 minutes, 36 secondswe have almost completed our prompt area. Of course, there are still a few
3:15:433 hours, 15 minutes, 43 secondsthings that are remaining and those are going to be finished by the end of the project eventually, but before finishing
3:15:523 hours, 15 minutes, 52 secondsthat, there are a few more things. Of course, there's a lot of stuff left for this project to be completed and I would like to work on the rest of the stuff.
3:16:023 hours, 16 minutes, 2 secondsSo, basically, right now, we're going to work on the like projects editor, account, and trash. So basically the
3:16:113 hours, 16 minutes, 11 secondsgoal for this one is to create projects from prompt open editor manage account
3:16:173 hours, 16 minutes, 17 secondssettings trash works things like that and the very first thing that I'm going to do is here in my code editor I'm
3:16:263 hours, 16 minutes, 26 secondsgoing to close this one clear and I'm going to say npm install zord code.
3:16:393 hours, 16 minutes, 39 secondsAll right, I'm going to run npm rundev again. I'm going to close this one. And that should be pretty much it. All
3:16:473 hours, 16 minutes, 47 secondsright, so very first thing that I would like to do now is to make sure that we have all of the types. And for that, I'm going to go under our lip folder here.
3:16:563 hours, 16 minutes, 56 secondsI'm going to create a new file. I'm going to name it sorry a folder actually that's going to be agent and there I'm
3:17:063 hours, 17 minutes, 6 secondsgoing to have a new file which is going to be types ts and I'm going to give you
3:17:133 hours, 17 minutes, 13 secondsthis code so basically we have these types agent action step and we have
3:17:203 hours, 17 minutes, 20 secondsagent text step we have also this export type agent step which is equal to either
3:17:283 hours, 17 minutes, 28 secondsthis or this this or this. We also have agent file write snapshot.
3:17:343 hours, 17 minutes, 34 secondsWe have a few like four items there. And then we have agent message metadata. Of
3:17:423 hours, 17 minutes, 42 secondscourse, this is a some sort of big uh type. Here we have steps. This is going to be this another type is being used
3:17:503 hours, 17 minutes, 50 secondshere as an array file rights and a few other things here. Then we have agent
3:17:573 hours, 17 minutes, 57 secondsstream event type along type and then we also finally have the export type agent
3:18:063 hours, 18 minutes, 6 secondsrun result. So these are the types that you need to have. Make sure you have them. You can grab them from the link in the description which is basically the GitHub repo.
3:18:163 hours, 18 minutes, 16 secondsAll right. Now I'm going to give you the code for the next file which is basically going to be under the lib folder. And that's going to go a new
3:18:243 hours, 18 minutes, 24 secondsfolder here. Publish. And then in there I have a new file. I'm going to name it visibility.ts.
3:18:333 hours, 18 minutes, 33 secondsThere you go. And that's the code there.
3:18:363 hours, 18 minutes, 36 secondsAnd of course you're going to need to make sure that you address as we have that in the lib. Then we have this generated here in the lib. So I'm going
3:18:443 hours, 18 minutes, 44 secondsto put uh slash lib there and it should be good. Yeah, we should be good with
3:18:523 hours, 18 minutes, 52 secondseverything here with that visibility file. So here basically we have this export function to deployment visibility where we have
3:19:003 hours, 19 minutesone argument visibility which is going to be type of publish visibility which we have already defined here also which
3:19:083 hours, 19 minutes, 8 secondsis being exported as a private or workspace or public. And then here of course we have a switch statement for
3:19:163 hours, 19 minutes, 16 secondseach individual type of that. We also have a from deployment visibility almost
3:19:223 hours, 19 minutes, 22 secondsvery similar and uh we also have a switch statement for that as well. And then eventually we have export function
3:19:293 hours, 19 minutes, 29 secondspublished path. This is going to generate the path with /p/workspace slug and slash project slug. And this is
3:19:393 hours, 19 minutes, 39 secondsgoing to be sharable that can be shared with anyone uh to to whom you want to display your project to. So yeah, I'm
3:19:483 hours, 19 minutes, 48 secondsgonna remove that and that as well. I'm going to close all of those files. And now the next file that you need to open
3:19:553 hours, 19 minutes, 55 secondsthat's going to be under lib folder. And here we have our let me find that app types. There you go. This is the file.
3:20:033 hours, 20 minutes, 3 secondsI'm going to bring this down and let me give you this little piece of code and adjust the spacing here. So
3:20:113 hours, 20 minutes, 11 secondsbasically here let's add / lib here as well as Prisma client is generated in the lib folder. All right. So we are
3:20:213 hours, 20 minutes, 21 secondsbringing our artifact status and artifact type from a Prisma client. Then we also have agent
3:20:283 hours, 20 minutes, 28 secondsmessage metadata type from our types within the agent folder that we just
3:20:353 hours, 20 minutes, 35 secondscreated a minute ago. Then here we have publish visibility that also we created just very recently. And then we have
3:20:433 hours, 20 minutes, 43 secondsproject category that we already had from a long time. And there's these types project sort project build filter.
3:20:523 hours, 20 minutes, 52 secondsAnd we have this uh app project deployment with URL visibility published at and we have app project with a few
3:21:003 hours, 21 minutesbunch of uh parameters here. We have ID, names, slug and all that. App agent
3:21:073 hours, 21 minutes, 7 secondsmessage app project file. Very simple stuff. Path string updated string. They don't want to type that all at all. I
3:21:153 hours, 21 minutes, 15 secondsjust gave it to you and you can use that. And then we have app project detail. And of course, all that can be grabbed from the GitHub repo. Link is
3:21:233 hours, 21 minutes, 23 secondsavailable in the description. All right, let me save that.
3:21:293 hours, 21 minutes, 29 secondsI'm going to close this file. And now here under the lib I'm going to create a new file which is going to be
3:21:373 hours, 21 minutes, 37 secondsrtact dash types.ts.
3:21:433 hours, 21 minutes, 43 secondsAnd here first of all I'm going to import my prompt attachment
3:21:513 hours, 21 minutes, 51 secondsdirectory. There you go. And then I'm going to import type import type artifact artifact status.
3:22:023 hours, 22 minutes, 2 secondsThere you go. Also I'm going to import artifact type. There you go. And here I
3:22:093 hours, 22 minutes, 9 secondsalso have import type. I'm going to say project category from the types. And
3:22:173 hours, 22 minutes, 17 secondsthen here I'm going to say import
3:22:243 hours, 22 minutes, 24 secondsartifact type labels and also here I'm going to say type app agent message.
3:22:323 hours, 22 minutes, 32 secondsExcellent. Here at the bottom I have export const this is going to be max
3:22:403 hours, 22 minutes, 40 secondsartifacts_par project is equal to 7 and then here I
3:22:473 hours, 22 minutes, 47 secondshave export const max sorry min
3:22:553 hours, 22 minutes, 55 secondsartifacts_par project is equal to 1. Awesome. All right. Now here I'm going to give you
3:23:033 hours, 23 minutes, 3 secondsthis code where we have these three functions. Uh all of them are being exported. So first we have agent
3:23:113 hours, 23 minutes, 11 secondsbuildable artifact types where we have web, mobile and design. Then we have artifact
3:23:173 hours, 23 minutes, 17 secondssupports agent build and then we have artifact has files and of course it run
3:23:243 hours, 23 minutes, 24 secondssome operations on that. Uh here we have types and then we finally return here.
3:23:313 hours, 23 minutes, 31 secondsAnd now here after that I'm going to add these couple of functions as well where we have first of all artifact has
3:23:393 hours, 23 minutes, 39 secondspreview content where we have these three arguments artifacts files messages. This expects uh these three and this is supposed to be an object.
3:23:503 hours, 23 minutes, 50 secondsThis is supposed to be an array and this is supposed to be an array uh of app agent message type which is being
3:23:573 hours, 23 minutes, 57 secondsimported from app type. So this is going to be either that the app agent message array or an empty array initially is
3:24:063 hours, 24 minutes, 6 secondsbasically initially this is going to be an empty array and u then we have get artifact
3:24:133 hours, 24 minutes, 13 secondsempty state message and of course this is going to be for making sure when there is no artifact supported agent
3:24:203 hours, 24 minutes, 20 secondsbuild then this is going to be the description and this is going to be the hint and uh we then have a switch
3:24:283 hours, 24 minutes, 28 secondsstatement Where we have in case of design we are showing this description and we have this int. In case of mobile
3:24:353 hours, 24 minutes, 35 secondsapp we have this and then by default which is going to be running for the design. This is going to be the case.
3:24:413 hours, 24 minutes, 41 secondsAnd finally here we have build types that user can add from plus button in the editor. That's going to be this add
3:24:493 hours, 24 minutes, 49 secondsbuild artifact types. This is going to it's going to expect a type a label and an icon. And of course, each is going to
3:24:573 hours, 24 minutes, 57 secondsbe an array which holds a type, a label for that, and also an icon for that. I'm going to close this file and I'm going to create a new one in the lip folder,
3:25:063 hours, 25 minutes, 6 secondswhich is going to be project dash status.ts.
3:25:113 hours, 25 minutes, 11 secondsAnd here I'm going to import type. And here I'm going to say artifact status. And there you go. And this is
3:25:193 hours, 25 minutes, 19 secondsgoing to come from the add /lib/generated Prisma. And here I have client.
3:25:283 hours, 25 minutes, 28 secondsAll right. After that, I'm going to need actually let me check the last file that we worked on. Yes, this should be fixed
3:25:363 hours, 25 minutes, 36 secondsas well. So this should be add lib generated Prisma and this should be client.
3:25:443 hours, 25 minutes, 44 secondsThere you go. Save that. And uh let me check what was before that. And uh yeah, this seems good. What was before that?
3:25:563 hours, 25 minutes, 56 secondsOh, I accidentally closed that.
3:25:593 hours, 25 minutes, 59 secondsThere you go. We are back. And uh I'm going to close this file also this file.
3:26:043 hours, 26 minutes, 4 secondsAnd now in here I'm going to say import type app
3:26:123 hours, 26 minutes, 12 secondsproject from app types. Then we have import type
3:26:203 hours, 26 minutes, 20 secondsand this is going to be publish visibility. There you go from our
3:26:263 hours, 26 minutes, 26 secondspublish visibility. And then here I have this these two types which I'm exporting. So we have a project status
3:26:363 hours, 26 minutes, 36 secondsvariant and which either is going to be uh success info orange or muted. And then we have project status info. Here
3:26:453 hours, 26 minutes, 45 secondsthis is variant and this is info. And after that here I'm going to say export
3:26:513 hours, 26 minutes, 51 secondsfunction get project status. It expects a project which is going to be app
3:26:583 hours, 26 minutes, 58 secondsproject and this is going to return a project status info. Let me open the
3:27:053 hours, 27 minutes, 5 secondsfunction body here. If project dot deployment
3:27:123 hours, 27 minutes, 12 secondsthen we return this object where we have label live variant. This is going to be success.
3:27:233 hours, 27 minutes, 23 secondsAnd then we have detail publish visibility
3:27:303 hours, 27 minutes, 30 secondslabel. And this is going to be project dot deployment dot visibility. There you go.
3:27:383 hours, 27 minutes, 38 secondsAnd then next here after this if statement here I'm going to add if project.artifacts
3:27:483 hours, 27 minutes, 48 secondsdo.length length is equal to zero. Then we have return this object where we have label
3:27:563 hours, 27 minutes, 56 secondsempty. Then we have variant muted and then we have detail which is
3:28:033 hours, 28 minutes, 3 secondsgoing to be no artifacts yet. There you go. And then after this
3:28:113 hours, 28 minutes, 11 secondsif statement here I'm going to say con ready
3:28:183 hours, 28 minutes, 18 secondscount is equal to project dot artifacts dot filter where we have
3:28:273 hours, 28 minutes, 27 secondsartifact and on each individual I'm going to say artifact dot status is equal to
3:28:353 hours, 28 minutes, 35 secondsready and then from that I'm going to at the length. There you go. Let me format and
3:28:433 hours, 28 minutes, 43 secondssave that. After that here we have if ready content ready count
3:28:513 hours, 28 minutes, 51 secondsuh if ready count is equal to project dot artifacts dot length then we
3:29:003 hours, 29 minuteshave return this where we have label ready and I'm going to say
3:29:083 hours, 29 minutes, 8 secondsvariant which is going to be info and detail which is going to be all artifacts built.
3:29:193 hours, 29 minutes, 19 secondsAnd there you go. Awesome.
3:29:223 hours, 29 minutes, 22 secondsAnd right now since we have this little error here, this is saying because we have no return statement here and that
3:29:303 hours, 29 minutes, 30 secondswill be added eventually. Right now we're just doing conditional return in the statements. But uh for in order to
3:29:373 hours, 29 minutes, 37 secondsfix this one, let's go to the very bottom and say function publish visibility label. And this is going to
3:29:463 hours, 29 minutes, 46 secondsexpect a visibility which is going to be publish visibility type. And this is going to be if
3:29:523 hours, 29 minutes, 52 secondsvisibility is equal to public then return public.
3:30:013 hours, 30 minutes, 1 secondIf visibility is equal to workspace
3:30:073 hours, 30 minutes, 7 secondsthen return work space. There you go.
3:30:143 hours, 30 minutes, 14 secondsAnd finally we return private if both above are not the case.
3:30:223 hours, 30 minutes, 22 secondsAnd uh I guess let me put a little yeah this thing here actually. Hold on.
3:30:313 hours, 30 minutes, 31 secondsSo yeah that error is gone. This one is resolved. So is this one and this if is
3:30:393 hours, 30 minutes, 39 secondsbeing closed where we have this return and the issue here is this here. Let me
3:30:473 hours, 30 minutes, 47 secondschange that to comma. Awesome. Now after this if statement here I'm going to say
3:30:553 hours, 30 minutes, 55 secondsif ready count is more than zero then we have this return in which we have label
3:31:033 hours, 31 minutes, 3 secondswhich is going to be in progress. Then we have variant which is
3:31:103 hours, 31 minutes, 10 secondsgoing to be orange. And we have detail which is going to be
3:31:163 hours, 31 minutes, 16 secondsthis where we have ready count of
3:31:223 hours, 31 minutes, 22 secondsproject dot artifacts dotlength artifacts ready. There you go. And then
3:31:313 hours, 31 minutes, 31 secondshere we have if project dot file count is more than zero then we go for the
3:31:393 hours, 31 minutes, 39 secondsreturn here where we have label draft and then we have variant is going
3:31:463 hours, 31 minutes, 46 secondsto be muted and then we have detail
3:31:533 hours, 31 minutes, 53 secondsthat's going to be not started. Let me format and save that.
3:32:003 hours, 32 minutesAnd I think that's pretty much it. Now after this function here, I'm going to say export function
3:32:083 hours, 32 minutes, 8 secondsartifact status label which expects a status which is going to be artifact status.
3:32:163 hours, 32 minutes, 16 secondsThere you go. And this is going to be returning a status. If that is equal to ready, then it's going to be ready.
3:32:263 hours, 32 minutes, 26 secondsOtherwise, this is going to say draft.
3:32:293 hours, 32 minutes, 29 secondsThere you go. And here I'm going to say export function artifact status variant.
3:32:393 hours, 32 minutes, 39 secondsAnd uh I'm going to open that. There you go. And then eventually uh actually here
3:32:463 hours, 32 minutes, 46 secondsI'm going to say status is going to be our defect status. And then we have actually here I'm going to say this is a
3:32:543 hours, 32 minutes, 54 secondstype of project status variant. Let me open the function body and this is going
3:33:013 hours, 33 minutes, 1 secondto be returned where I have status hold on
3:33:093 hours, 33 minutes, 9 secondsstatus is equal to ready then it's going to be info
3:33:173 hours, 33 minutes, 17 secondsotherwise it's going to be muted. Let me format and save that. And uh we have an issue here
3:33:253 hours, 33 minutes, 25 secondsand that issue is here in the project here in this part. All right. And for
3:33:323 hours, 33 minutes, 32 secondsthat Oh yeah, I got it. So basically this
3:33:393 hours, 33 minutes, 39 secondsdraft muted and not started thing this return should be out of this if statement here and that error is gone.
3:33:493 hours, 33 minutes, 49 secondsBut we are missing one for this one here. And for that we [snorts] have a kind of very similar. So I'm going to
3:33:563 hours, 33 minutes, 56 secondscopy that from here to here as well. and change this not started to something
3:34:043 hours, 34 minutes, 4 secondshere where we have project dot file count and file and then here I have
3:34:123 hours, 34 minutes, 12 secondsproject dotfile count is equal to one then empty otherwise it's going to say s
3:34:203 hours, 34 minutes, 20 secondsand I guess that's pretty much draft muted and detail otherwise we have draft muted and not started and we are Done.
3:34:293 hours, 34 minutes, 29 secondsThe next thing that I'm going to work on is going to be a file in the lib folder.
3:34:343 hours, 34 minutes, 34 secondsI'm going to create a new folder. This is going to be server in which I have a new file. I'm going to name it project dash slug.ts.
3:34:473 hours, 34 minutes, 47 secondsSo I'm going to import sluggy from our app utils. Then also
3:34:543 hours, 34 minutes, 54 secondsunique slug with suffix also from appodels. And then here I have
3:35:013 hours, 35 minutes, 1 secondimport prisma from our prisma. Awesome. Let me format and save that. And then here we
3:35:103 hours, 35 minutes, 10 secondshave const project slug_max_length
3:35:173 hours, 35 minutes, 17 secondswhich is equal to 28. Here we have export function
3:35:253 hours, 35 minutes, 25 secondsproject slug from prompt and I'm going to add prompt in there which is going to
3:35:323 hours, 35 minutes, 32 secondsbe a string and then open function body const words is equal to prompt dot trim
3:35:403 hours, 35 minutes, 40 secondsthen dotsplit and then here I have slash backslash s + slash
3:35:493 hours, 35 minutes, 49 secondsdot slide ice here I'm going to add 0 to 4 and then on that join with a space
3:35:573 hours, 35 minutes, 57 secondsthere you go and then here I'm going to say const slug is equal to slugify
3:36:053 hours, 36 minutes, 5 secondswords dot slice where we have zero and then project slug
3:36:123 hours, 36 minutes, 12 secondsproject slug max length there you go awesome next I have return where I'm going going to return
3:36:203 hours, 36 minutes, 20 secondsslug or untitled. Yeah, if I can spell that correctly.
3:36:283 hours, 36 minutes, 28 secondsHere I have export async function unique project slug. It expects a workspace
3:36:383 hours, 36 minutes, 38 secondsworkace ID which is going to be a string and a base which is going to be a string.
3:36:463 hours, 36 minutes, 46 secondsfunction body return unique slug with suffix and here I'm going to
3:36:533 hours, 36 minutes, 53 secondsopen that it expects three arguments so first one is going to be base second one is going to be async where I have
3:37:013 hours, 37 minutes, 1 secondcandidate run the function where I have const
3:37:083 hours, 37 minutes, 8 secondsexisting is equal to await prisma dot project dotfind
3:37:153 hours, 37 minutes, 15 secondsunique PE and here I have where I'm going to say workspace id slug
3:37:243 hours, 37 minutes, 24 secondsis going to be this object workspace id and slug is going to be candidate
3:37:313 hours, 37 minutes, 31 secondsand then finally here this sync ends here after that here and
3:37:393 hours, 37 minutes, 39 secondsafter this ver here I'm going to add select which is going to be ID And I'm going to select that with the ID true
3:37:483 hours, 37 minutes, 48 secondsand after that here I'm going to add return boolean existing. Awesome. And
3:37:553 hours, 37 minutes, 55 secondsfinally here after where is that? The first one is base here and the second one is this one
3:38:023 hours, 38 minutes, 2 secondswhich ends here and the third one becomes untitled dash project. Let me format and save
3:38:113 hours, 38 minutes, 11 secondsthat. And there you go. first argument, second argument, and third argument.
3:38:183 hours, 38 minutes, 18 secondsLet me format and save. Excellent.
3:38:213 hours, 38 minutes, 21 secondsAnd now after that, I'm going to close this file, collapse everything, and going to create a new one. So we have
3:38:293 hours, 38 minutes, 29 secondslib and then here I'm going to create a new folder which is going to be projects. And in there I have a new file
3:38:393 hours, 38 minutes, 39 secondswhich is going to be access.ts. ts and let me give you this little code here and let me add a lib there as well.
3:38:493 hours, 38 minutes, 49 secondsAwesome. So basically we are bringing Prisma and we also importing Prisma from our Prisma. We also have the type and
3:38:583 hours, 38 minutes, 58 secondsthe Prisma itself. We have one function project member access or
3:39:053 hours, 39 minutes, 5 secondsanother function project access where it expects a couple of arguments and then
3:39:123 hours, 39 minutes, 12 secondsit returns a prisma.p project where input type and this is the return. And then here we have another one get
3:39:213 hours, 39 minutes, 21 secondsaccessible project which uses generic where we have s here and that select s
3:39:273 hours, 39 minutes, 27 secondshere and we have all these types that it expect uh expects and we have string string s generic here and this object
3:39:373 hours, 39 minutes, 37 secondshere and finally it returns a prisma.pro.find find first and then of course we have the Prisma aware and
3:39:463 hours, 39 minutes, 46 secondsselect here as well then we have export async function has project access this is just to check whether this has access
3:39:533 hours, 39 minutes, 53 secondsor not so it's going to take project ID user ID and opts included trashed basically this is going to be another
3:40:023 hours, 40 minutes, 2 secondsobject is it included in the trash or not and uh we have here we have const
3:40:093 hours, 40 minutes, 9 secondsproject get accessible project which we are using this function for and of course in that we are running project ID
3:40:173 hours, 40 minutes, 17 secondsuser ID and ID which is going to be true and these three types that we just uh defined here and finally we return the
3:40:263 hours, 40 minutes, 26 secondsboolean whether it's project uh true or not so yeah so that's pretty much it I'm
3:40:353 hours, 40 minutes, 35 secondsgoing to close this one and this whole thing that we just did that is just the foundation. Basically, there's going to
3:40:433 hours, 40 minutes, 43 secondsbe no visible change on the screen or anything at all. This is just the foundation for the project types and
3:40:503 hours, 40 minutes, 50 secondsslug helpers in order to help us for further stuff that we're going to work on.
3:40:573 hours, 40 minutes, 57 secondsAwesome. All right. Now, here comes the very important part that we are going to
3:41:043 hours, 41 minutes, 4 secondscreate a project action. This is going to be basically a server action which is going to create a project in the database.
3:41:143 hours, 41 minutes, 14 secondsAnd for that we're going to go to our lib folder. Then here I'm going to create a folder. Let me check if we do
3:41:233 hours, 41 minutes, 23 secondsnot have that already. So there's going to be a folder called actions. And then in there we have a new
3:41:313 hours, 41 minutes, 31 secondsfile which is going to be projects.ts. Simple.
3:41:393 hours, 41 minutes, 39 secondsNow in here we have export async function create project
3:41:483 hours, 41 minutes, 48 secondsaction which is going to take a form data which is going to be a type of form data. Open function body. We have const
3:41:583 hours, 41 minutes, 58 secondssession is equal to await get cached session. There you go. Which is also
3:42:063 hours, 42 minutes, 6 secondsgoing to get imported. Then we have const user id is equal to session dot
3:42:143 hours, 42 minutes, 14 secondsuser do ID. And then here we're going to say if user ID does not exist
3:42:243 hours, 42 minutes, 24 secondsthen we redirect. Hold on. We redirect.
3:42:303 hours, 42 minutes, 30 secondsThis is basically going to come from next navigation.
3:42:343 hours, 42 minutes, 34 secondsAnd let me quickly add a couple of more imports. So one another is going to be Z from zod. There you go.
3:42:443 hours, 42 minutes, 44 secondsAnd then after that we also need revalidate path from next cache. And also we need
3:42:543 hours, 42 minutes, 54 secondsRM from our FS. RM FS actually this is going to be
3:43:023 hours, 43 minutes, 2 secondsnode and then we have FS slash promises.
3:43:083 hours, 43 minutes, 8 secondsThere you go. That's what we need. I'm going to make it to the top. And then also update this here redirect. And then
3:43:173 hours, 43 minutes, 17 secondswe have zod here. Awesome. [snorts] And uh this also gets added as well. All
3:43:233 hours, 43 minutes, 23 secondsright. So this redirect here I'm going to add
3:43:303 hours, 43 minutes, 30 secondsslash question mark slashquest mark dash is equal to login. Then we have emberand
3:43:403 hours, 43 minutes, 40 secondscallback URL is equal to slash app. All right. And make sure that this is a
3:43:483 hours, 43 minutes, 48 secondsserver component where use server and also let's actually
3:43:563 hours, 43 minutes, 56 secondsimport path as well. And for that I'm going to say import path from node path.
3:44:033 hours, 44 minutes, 3 secondsAwesome. Yeah. Let me format and save that. Excellent.
3:44:083 hours, 44 minutes, 8 secondsAnd now after this if statement here I'm going to say const prompt is equal to string where we have
3:44:173 hours, 44 minutes, 17 secondsform data dot get this is going to be prompt and here I'm going to say an empty and
3:44:263 hours, 44 minutes, 26 secondson that dot trim and make sure this is string not string then we have const
3:44:333 hours, 44 minutes, 33 secondscategory id is equal to form data dot Get category ID. There you go. Then we
3:44:423 hours, 44 minutes, 42 secondshave const plan mode is equal to form data dot get plan mode is equal to true.
3:44:523 hours, 44 minutes, 52 secondsThere you go. Here we have const attachment files is equal to sorry is a
3:45:003 hours, 45 minutestype of file array which is equal to an empty array. And here I'm going to say for
3:45:083 hours, 45 minutes, 8 secondsconst key value of form data dot entries. And
3:45:153 hours, 45 minutes, 15 secondsthen on that I'm going to say if key dot starts with
3:45:233 hours, 45 minutes, 23 secondsattachment dash and then this is going to be here.
3:45:283 hours, 45 minutes, 28 secondsI'm going to say and value instance of file and
3:45:363 hours, 45 minutes, 36 secondsvalue dot size is more than zero then in that case we have attachment files
3:45:443 hours, 45 minutes, 44 secondsdot push hold on hold on this one attachment files dotpush
3:45:543 hours, 45 minutes, 54 secondsand we push the value there you Awesome.
3:46:003 hours, 46 minutesAnd now after this four here, I'm going to say if prompt does not exist
3:46:103 hours, 46 minutes, 10 secondsand attachment files dot length is equal to zero. Then in that case we have
3:46:183 hours, 46 minutes, 18 secondsreturn this object header. This is this is going to be describe what you want to build or
3:46:283 hours, 46 minutes, 28 secondsattach a file first. Awesome. Here I'm going to say
3:46:363 hours, 46 minutes, 36 secondsfor const file of attachment files. Then I'm going
3:46:443 hours, 46 minutes, 44 secondsto say const validation error is equal to validate prompt
3:46:523 hours, 46 minutes, 52 secondsattachment and here I'm going to add file that validate prompt attachment also gets imported from the prompt attachment.
3:47:023 hours, 47 minutes, 2 secondsThen here I'm going to add if validation error is true then we have return
3:47:123 hours, 47 minutes, 12 secondserror. This is going to be validation error. There you go. Let me format and save that. And now after this four here,
3:47:203 hours, 47 minutes, 20 secondsI'm going to say const workspace is equal to await get default workspace. Get
3:47:293 hours, 47 minutes, 29 secondsdefault workspace. And this is going to be user ID. And there you go.
3:47:403 hours, 47 minutes, 40 secondsAnd right now before I move on to any further code, I would like to create this await default workspace function.
3:47:493 hours, 47 minutes, 49 secondsAnd that's going to go under lib. Then here we're going to create a new folder that's going to called curies
3:47:583 hours, 47 minutes, 58 secondsdot sorry curies and then in there we have a new file which is going to be project.ts.
3:48:083 hours, 48 minutes, 8 secondsAnd here first of all I'm going to import type which is going to be artifact
3:48:173 hours, 48 minutes, 17 secondstype. There you go. And I'm going to make sure that it is coming from
3:48:243 hours, 48 minutes, 24 secondslib slash uh generated slashprisma/client.
3:48:323 hours, 48 minutes, 32 secondsAwesome. And not only that but also artifact status and also deployment
3:48:403 hours, 48 minutes, 40 secondsvisibility as well. All right. And then after that here I'm going to also
3:48:483 hours, 48 minutes, 48 secondsimport from deployment visibility also. I'm going to import um
3:48:583 hours, 48 minutes, 58 secondsproject access where there you go. Let me format. And then here finally I'm going to give you this little code. So
3:49:063 hours, 49 minutes, 6 secondsbasically uh here we have actually I forgot to import Prisma. So Prisma there you go. So basically we have export
3:49:153 hours, 49 minutes, 15 secondsasync function get default workspace that expects a user ID which is going to be a string and then it returns that
3:49:233 hours, 49 minutes, 23 secondsPrisma workspace find first. It is going to find that workspace within that Prisma database where the owner ID is
3:49:313 hours, 49 minutes, 31 secondsuser ID and the type is personal and it's going to select that. All right. So that is available to us. Now I'm going to click here and I'm going to import.
3:49:423 hours, 49 minutes, 42 secondsAll right.
3:49:443 hours, 49 minutes, 44 secondsAnd now here I'm going to say if workspace does not exist in that case we're going to return editor. And this
3:49:533 hours, 49 minutes, 53 secondsis going to be no work space found.
3:49:593 hours, 49 minutes, 59 secondsTry signing in again. Let me format and save. And then after that here I'm going
3:50:073 hours, 50 minutes, 7 secondsto say const billing user is equal to await
3:50:143 hours, 50 minutes, 14 secondsget user billing fields. And this is going to expect a user ID. And just like this
3:50:233 hours, 50 minutes, 23 secondsone, of course, we're going to need to use bring this one and create this one as well. Let me format and save.
3:50:303 hours, 50 minutes, 30 secondsAll right. So for that, I'm going to go and in the lip folder going to create a new folder which is going to be billing.
3:50:403 hours, 50 minutes, 40 secondsAnd in there I have a new file called anti.ts.
3:50:483 hours, 50 minutes, 48 secondsThere you go.
3:50:503 hours, 50 minutes, 50 secondsN T I T L E M. Yeah, seems good. All right, I'm going to paste this code here. So, we have basically export type
3:50:583 hours, 50 minutes, 58 secondsapt. Here we have guest free pro export type user billing fields and uh there we have export type agent limits and these
3:51:063 hours, 51 minutes, 6 secondstrue exports as well. I'm going to close this file now.
3:51:113 hours, 51 minutes, 11 secondsAnd now I'm going to collapse everything once again lib. And then I'm going to go to the queries and create a new file.
3:51:193 hours, 51 minutes, 19 secondsThis is going to be billing.tm. ts and here I'm going to first of all import get cast session there you go then also
3:51:283 hours, 51 minutes, 28 secondsI'm going to import uh type this is going to be user billing fields
3:51:363 hours, 51 minutes, 36 secondsand then here I'm going to say prisma as well and let me
3:51:443 hours, 51 minutes, 44 secondsgive you this little piece of piece of code here so basically we have a get user billing fields function here that
3:51:533 hours, 51 minutes, 53 secondsexpects a user which is supposed to be a string and it returns a promise with the type of user billing fields or null.
3:52:023 hours, 52 minutes, 2 secondsThen of course it's going to return a user from the Prisma. It's going to find that based on the user ID and it's going to select subscription plan and
3:52:113 hours, 52 minutes, 11 secondssubscription status. All right, I'm going to close that. And here let me import that here as well. All right.
3:52:213 hours, 52 minutes, 21 secondsAnd now once again, I'm going to get back to the billing entitlements. There you go. And here I'm
3:52:303 hours, 52 minutes, 30 secondsgoing to give you this little code. So basically here we have I'm going to check if the user is pro or
3:52:393 hours, 52 minutes, 39 secondsnot based on user building fields which we already have here. Then we have get app tier export function. we check
3:52:483 hours, 52 minutes, 48 secondswhat's the apt here and if the user does not exist we then uh assume that it's going to be a guest and then here we're
3:52:583 hours, 52 minutes, 58 secondsgoing to say get agent limits and it expects a pro agent limits all right and
3:53:053 hours, 53 minutes, 5 secondsfor that here I'm going to add this code I'm going to close this one let me format and save so basically we have con
3:53:133 hours, 53 minutes, 13 secondspro agent limits here And all right
3:53:213 hours, 53 minutes, 21 secondsand here I'm going to paste this code here. So basically I'm checking if the user is pro or not and then here
3:53:303 hours, 53 minutes, 30 secondsI'm checking get appear as well. So based on uh user agent fields user billing fields basically we are going to
3:53:383 hours, 53 minutes, 38 secondscheck the apt tier. If the user does not exist, then we simply just uh assume that it's going to be a guest. All right.
3:53:493 hours, 53 minutes, 49 secondsAnd now here I have a couple of other functions as well. So I'm checking publish visibility. Okay. Let me import
3:53:563 hours, 53 minutes, 56 secondsthat as well. There you go. Awesome. So basically can publish visibility. This
3:54:033 hours, 54 minutes, 3 secondsis going to be only for the tier pro users. Free users cannot be published a project.
3:54:103 hours, 54 minutes, 10 secondsuh publicly they can in the workspace or in the for themsel for themselves but
3:54:173 hours, 54 minutes, 17 secondsnot publicly and uh otherwise it's just going to be private like for themselves and export function get project limit is
3:54:263 hours, 54 minutes, 26 secondshere as well and let me format and save so I think that should be it for this file for now we're going to be adding a
3:54:333 hours, 54 minutes, 33 secondsfew more functions into this file and I'm just uh pasting code for you guys just to follow me because this project
3:54:403 hours, 54 minutes, 40 secondsis a lot longer and I don't want to write the code for the 60 hours and for you guys to get tired of this project.
3:54:493 hours, 54 minutes, 49 secondsSo that's why I'm just doing it this way.
3:54:533 hours, 54 minutes, 53 secondsAnd actually before I close this file I would like to add a couple of more functions. So here basically just some
3:55:023 hours, 55 minutes, 2 secondssmall text nothing special there. public upgrade message that's going to take a visibility which is going to be type of
3:55:093 hours, 55 minutes, 9 secondspublish visibility and it's going to return a string and string here is going to be this and uh then uh same if the
3:55:173 hours, 55 minutes, 17 secondsvisibility is workspace then this is going to be the string and otherwise simply it's going to be for the private
3:55:243 hours, 55 minutes, 24 secondsand here we have project limit message it's it expects a limit which is supposed to be number returns a string and this is a string that it returns pre
3:55:333 hours, 55 minutes, 33 secondsfree plan features and then we have pro pro plan features and that's pretty much it. Nothing nothing major here. Yeah,
3:55:413 hours, 55 minutes, 41 secondsI'm going to close this file get back to this one and here I'm going to say con project
3:55:483 hours, 55 minutes, 48 secondslimit is equal to get project limit and I'm going to get app tier here as well and billing user is going to go there.
3:56:013 hours, 56 minutes, 1 secondAll right. Then here I'm going to say if project limit is not equal to null
3:56:113 hours, 56 minutes, 11 secondsthen we have const active active
3:56:203 hours, 56 minutes, 20 secondsproject count is equal to await prisma
3:56:273 hours, 56 minutes, 27 secondsdot project dot count and here I'm going to say where this object
3:56:363 hours, 56 minutes, 36 secondsdeleted at this is going to be null and or capital and array and this is going
3:56:443 hours, 56 minutes, 44 secondsto be an object where I'm going to say created by ID and this is going to be
3:56:513 hours, 56 minutes, 51 secondsuser ID and workspace this is going to be owner ID
3:56:593 hours, 56 minutes, 59 secondsis going to be user ID ID and then here we have members. This is going to be some user
3:57:083 hours, 57 minutes, 8 secondsID. Let me format and save that. And now let me get out of this Prisma block. And
3:57:163 hours, 57 minutes, 16 secondshere I'm going to say if active project count is more than or equal to project limit
3:57:233 hours, 57 minutes, 23 secondsthen in that case we're going to return error project limit message which is
3:57:313 hours, 57 minutes, 31 secondsgoing to be project limit. Let me format and save. And that should be it.
3:57:383 hours, 57 minutes, 38 secondsAnd now after this if statement here I'm going to say this where we have const effective prompt is going to be equal to
3:57:463 hours, 57 minutes, 46 secondseither prompt or this review the attached file attachment files dolength that is coming from the top if that is
3:57:543 hours, 57 minutes, 54 secondsequal to one then the empty otherwise it's going to attach one uh I mean s and help me plan next steps. All right. Now,
3:58:033 hours, 58 minutes, 3 secondshere we have this little code block. And of course, uh here we have two things that
3:58:113 hours, 58 minutes, 11 secondsare expected. I'm going to click on that. Import that. And uh unique project slug.
3:58:183 hours, 58 minutes, 18 secondsAll right, that should be available, I guess.
3:58:233 hours, 58 minutes, 23 secondsAll right, I'm going to get back to that. So basically we have a base name and that's equal to effective prompt here dot if that is length is more than
3:58:323 hours, 58 minutes, 32 seconds48 then this is going to be the case otherwise this is just simple effective prompt and here we're creating slug
3:58:393 hours, 58 minutes, 39 secondsagain aware unique project slug and uh that's going to expect two arguments here first is workspace do ID and the
3:58:483 hours, 58 minutes, 48 secondssecond one is project slug from prompt which is taking effective prompt here into it as the argument. All right, I'm going to save that.
3:58:583 hours, 58 minutes, 58 secondsI'm going to get to the very top. And here, let's try actually adding
3:59:053 hours, 59 minutes, 5 secondsunique project slug. There you go. And also, we need project slug
3:59:133 hours, 59 minutes, 13 secondsfrom prompt. Awesome. So, those have been added. Unique project slug. All right. If I go there. Yep. The spelling
3:59:223 hours, 59 minutes, 22 secondsis not correct. Should be u unique. Actually, let's let's keep it that way.
3:59:313 hours, 59 minutes, 31 secondsAnd uh you know what? Actually, let's change that to unique. And I'm going to copy that. Get back here. Change it
3:59:393 hours, 59 minutes, 39 secondshere. And that's going to be changed here. I'm going to search for this one without the UE. And I'm going to see if
3:59:473 hours, 59 minutes, 47 secondsthat's being used. Nope, it's not being used anywhere else. And we're good.
3:59:533 hours, 59 minutes, 53 secondsAll right. And now after this here, I'm going to say const
4:00:014 hours, 1 secondRT fact type. This is going to be an RT fact type coming from Prisma is equal to category ID. There you go.
4:00:144 hours, 14 secondsAnd type of category ID is equal to string.
4:00:224 hours, 22 secondsAnd category ID in category
4:00:294 hours, 29 secondscategory 2 artifact type.
4:00:364 hours, 36 secondsIf that is true, then this is going to be category 2 artifact type. get a 42
4:00:444 hours, 44 secondsartifact type here and I'm going to select
4:00:494 hours, 49 secondscategory ID as key of type of category 2
4:00:564 hours, 56 secondsartifact type and otherwise this is going to be simply just
4:01:034 hours, 1 minute, 3 secondsweb app and of course we need to make sure that
4:01:104 hours, 1 minute, 10 secondsuh one second where is that uh there you go that this is coming from /lib/generated
4:01:184 hours, 1 minute, 18 secondsprisma and here client awesome so yeah that's done let me
4:01:274 hours, 1 minute, 27 secondsformat and save and now here on the bottom I'm going to give you this code here basically so
4:01:344 hours, 1 minute, 34 secondsthis is we are creating a project and in the Prisma project create this is the data that we're providing ing name base
4:01:424 hours, 1 minute, 42 secondsnames logo description and workspace ID and everything in the preferences we have this in the artifacts we have this
4:01:494 hours, 1 minute, 49 secondsin the conversations we have all these different things and of course we need plan mode system prompt that is not
4:01:564 hours, 1 minute, 56 secondsavailable yet I will get that available to you and then we finally select that here and of course there's going to be
4:02:054 hours, 2 minutes, 5 secondssome things after that here code here. So I'm going to format and
4:02:134 hours, 2 minutes, 13 secondssave that for now. And let's make sure that we have this one. And of course for that I'm going to take you to another
4:02:194 hours, 2 minutes, 19 secondsfile which is going to be lib. Then we have agent. And there we have a new file prompt.ts.
4:02:284 hours, 2 minutes, 28 secondsIn there I'm going to give you these two code lines of code. First of all we are exporting plan mode enabled marker. This
4:02:384 hours, 2 minutes, 38 secondsthen we have are exporting export con plan mode system report prompt sorry and then where we have this enable marker
4:02:474 hours, 2 minutes, 47 secondsfrom here and then you are in planning phase only do not write code or file files yet so that's that and I'm going
4:02:564 hours, 2 minutes, 56 secondsto click on that here and import that there and that's been imported and the file has been turned green. Awesome.
4:03:064 hours, 3 minutes, 6 secondsAll right, there's going to be some code for the attachments here, but we cannot write that yet because we we need a few
4:03:144 hours, 3 minutes, 14 secondsdependency files for the attachment code to work. And for that, I'm going to go to the lib folder and here create a new
4:03:214 hours, 3 minutes, 21 secondsfile which is going to be project-files.ts.
4:03:274 hours, 3 minutes, 27 secondsAnd here I'm going to give you actually hold on actually import this is going to
4:03:324 hours, 3 minutes, 32 secondsbe make directory from fs also read file
4:03:404 hours, 3 minutes, 40 secondsalso write file. So this is going to be node fs slash promises. Then after that
4:03:494 hours, 3 minutes, 49 secondsI'm going to need import path from node path. And then after that I'm going to need Prisma as well. And then here I'm going to give you this little code here.
4:04:024 hours, 4 minutes, 2 secondsSo where we have project workspace root and here then we have artifact
4:04:094 hours, 4 minutes, 9 secondsworkspace directory and then we have mime by extension
4:04:164 hours, 4 minutes, 16 secondsHTML htm CSS and all that. We have get mime type. basically a few functions
4:04:234 hours, 4 minutes, 23 secondsthat are going to be very hard to write uh from the keyboard in the video that's
4:04:314 hours, 4 minutes, 31 secondsgoing to take a lot of time and there's a lot of physics in there and that's why this code is there already given to you that you can grab from the GitHub repo
4:04:394 hours, 4 minutes, 39 secondslink is available in the description and please use that file and so we can move along. So I'm going to close this one
4:04:494 hours, 4 minutes, 49 secondsand similarly I'm going to create a new folder a new file in the lib folder which is going to be
4:04:574 hours, 4 minutes, 57 secondsuh project dash attachments.ts ts a new file here we are going to
4:05:044 hours, 5 minutes, 4 secondsimport again import make directory then we also need read file also write file
4:05:134 hours, 5 minutes, 13 secondsthat's going to come from node fs/ promises and then I'm going to import
4:05:214 hours, 5 minutes, 21 secondspath as well then here I'm going to need format file size from our app utils I'm
4:05:304 hours, 5 minutes, 30 secondsgoing to also O need build db path from our project files code that we just added. Then also here I'm going to need
4:05:394 hours, 5 minutes, 39 secondsget m type also list project files also normalize relative path those all
4:05:484 hours, 5 minutes, 48 secondsfunctions are coming from there and then here we need something like prisma.
4:05:564 hours, 5 minutes, 56 secondsThere you go. And one more thing that we need is the prompt
4:06:034 hours, 6 minutes, 3 secondsprompt attachment directory. There you go. Excellent. And of course, now I'm going to I'm going to
4:06:124 hours, 6 minutes, 12 secondsgive you that code that is going to be way hard to write.
4:06:174 hours, 6 minutes, 17 secondsSo here we have text extensions. I don't want to just keep writing them. Then we have image extensions and a few
4:06:254 hours, 6 minutes, 25 secondsconstants here. Start prompt attachments, get workspace directory here, and then again we have get
4:06:334 hours, 6 minutes, 33 secondsabsolute attachment path and a few more functions to make sure that we can move along further and continue building our
4:06:424 hours, 6 minutes, 42 secondsproject uh as fastest as possible because there there's some also code. Let me
4:06:504 hours, 6 minutes, 50 secondsshow you that where we are doing some Prisma project file create. We are also basically adding those project files to
4:06:574 hours, 6 minutes, 57 secondsthe database as well. Basically same sort of uh code over and over again that's being written all over the places. We already have written project
4:07:064 hours, 7 minutes, 6 secondsfile uh I mean the create object from the Prisma in a lot of places. So yeah some a few little things are changed but
4:07:144 hours, 7 minutes, 14 secondsthe code is kind of similar. So that's why I kind of got gone with the approach that I don't want to spend too much time
4:07:214 hours, 7 minutes, 21 secondson writing the files [snorts] uh too many files and just make sure and end up with like 60 hours of video tutorial.
4:07:314 hours, 7 minutes, 31 secondsNobody would watch that. So that's why I just kind of wanted to uh collapse the time as less as possible. Yeah, there
4:07:404 hours, 7 minutes, 40 secondsyou go. I'm going to close this one. And here now I'm going to say const main artifact
4:07:494 hours, 7 minutes, 49 secondsis equal to project dot artifacts select the zero and here I'm going to say let
4:07:574 hours, 7 minutes, 57 secondsstored attachments is equal to awaited
4:08:054 hours, 8 minutes, 5 secondsawaited and here I'm going to say return type and then here I'm going to say
4:08:124 hours, 8 minutes, 12 secondstype of save prompt attachment to artifact. There you
4:08:194 hours, 8 minutes, 19 secondsgo. And here I have this equal to an empty array. Awesome.
4:08:264 hours, 8 minutes, 26 secondsAnd now here I'm going to say if attachment files dolength is more than zero
4:08:354 hours, 8 minutes, 35 secondsand main artifact is true then here I'm going to write this code where I have stored attachments is equal to save
4:08:424 hours, 8 minutes, 42 secondsprompt attachment artifact again where I have this object all right
4:08:504 hours, 8 minutes, 50 secondsand here I'm going to say const user message
4:08:574 hours, 8 minutes, 57 secondscontent is equal to effective prompt
4:09:034 hours, 9 minutes, 3 secondsplus format attachment manifest that's also imported and here
4:09:104 hours, 9 minutes, 10 secondsI'm going to say stored attachments let me format and save and then after that here I'm going to say const
4:09:204 hours, 9 minutes, 20 secondsconversation is equal to await pris ma dot aagent conversation dotfind
4:09:284 hours, 9 minutes, 28 secondsfirst and here I have where I'm going to say project id is equal to project do ID
4:09:384 hours, 9 minutes, 38 secondsand order by is created at which is going to be ascending and then here I'm going to
4:09:474 hours, 9 minutes, 47 secondsselect ID true let me format and save and then after that here I'm going to have if
4:09:564 hours, 9 minutes, 56 secondsconversation is true and then here I'm going to say con user message is equal
4:10:034 hours, 10 minutes, 3 secondsto await prisma dot agent message dotfind first
4:10:124 hours, 10 minutes, 12 secondsand here we have the object where we have conversation id is going
4:10:184 hours, 10 minutes, 18 secondsto be conversation do ID and the role All is going to be user and then here we
4:10:254 hours, 10 minutes, 25 secondshave order by which is going to be created at just like before with ascending and then here we have select
4:10:344 hours, 10 minutes, 34 secondswhich is going to be ID and set to true. There you go. Let me format and save that. And then after
4:10:444 hours, 10 minutes, 44 secondsthis object here being inside the if statement I'm going to say if user message is true.
4:10:544 hours, 10 minutes, 54 secondsNow we do a wait Prisma dot agent message and here we
4:11:004 hours, 11 minuteshave dot update object where id is going to be user message do ID
4:11:094 hours, 11 minutes, 9 secondsand here I'm going to say data which is going to be this object where I have content user message content and then
4:11:184 hours, 11 minutes, 18 secondsI'm going to say meta data which is going to be attachment ment attachments which is going to be stored
4:11:274 hours, 11 minutes, 27 secondsattachments. Let me format and save. And we are done except for one thing
4:11:354 hours, 11 minutes, 35 secondsand that's going to go under this main if statement here that redirect
4:11:444 hours, 11 minutes, 44 secondsslash app. Hold on. Yeah.
4:11:494 hours, 11 minutes, 49 secondsslash app slash projects slash this is going to be project.workspace workspace
4:11:584 hours, 11 minutes, 58 secondsslash slug and after this here I'm going to say slash and one more time I'm going to say
4:12:064 hours, 12 minutes, 6 secondsproject dot slug let me format and save that
4:12:124 hours, 12 minutes, 12 secondsand now since our action is ready I would like to go to the app dashometsx
4:12:204 hours, 12 minutes, 20 secondsfile and here first of all I'm going to get that here So, create project action. There you go.
4:12:304 hours, 12 minutes, 30 secondsThat's there. And now I'm going to need to use that if I can find the spot.
4:12:384 hours, 12 minutes, 38 secondsWhere is handle submit? Okay, this is handle submit app home.
4:12:484 hours, 12 minutes, 48 secondsAnd where is submit project?
4:12:544 hours, 12 minutes, 54 secondsThere you go. And we have to find the result. And there you go. So for this one, I'm going to say con result is
4:13:034 hours, 13 minutes, 3 secondsequal to await create project action. And here I'm
4:13:094 hours, 13 minutes, 9 secondsgoing to add the form data. And that should do the job. Let me format and save everything. All right. Now there's
4:13:184 hours, 13 minutes, 18 secondsone important thing that I would like to work on and that is that I want to be able to submit this button this form and
4:13:274 hours, 13 minutes, 27 secondsso this can create a project for me. For that reason, I will go to my code editor. And here after this is
4:13:364 hours, 13 minutes, 36 secondslistening, I'm going to create a new function here, which is going to be function handle submit. And that's going
4:13:454 hours, 13 minutes, 45 secondsto be if can submit is not true
4:13:514 hours, 13 minutes, 51 secondsor it's disabled then in that case we're going to return otherwise we have simply
4:14:004 hours, 14 minutesonsubmit if that exists then on that we grab the value and then we trim that
4:14:084 hours, 14 minutes, 8 secondssimple this is what we have handle submit and now First of all, I will go to the
4:14:164 hours, 14 minutes, 16 secondstext area. Let me find that text area. There you go. And for that
4:14:264 hours, 14 minutes, 26 secondshere, I'm going to go and create an onkey down event. And for that there's event.
4:14:344 hours, 14 minutes, 34 secondsI'm going to run this function.
4:14:384 hours, 14 minutes, 38 secondsAnd here I'm going to say if event dokey is equal to enter
4:14:464 hours, 14 minutes, 46 secondsand event dot shift key is not the case.
4:14:514 hours, 14 minutes, 51 secondsThen we're going to event dot prevent default and we're going to handle
4:14:584 hours, 14 minutes, 58 secondssubmit. There you go. That's there. And now we're going to need to go to the
4:15:034 hours, 15 minutes, 3 secondsbutton. I'm going to scroll down and at the bottom somewhere here we have is
4:15:114 hours, 15 minutes, 11 secondslanding button can submit disabled and here I'm going to add let's say
4:15:204 hours, 15 minutes, 20 secondson click and this is going to be handle submit there you go and not just that
4:15:294 hours, 15 minutes, 29 secondsbut also here as well so here on click handle submit.
4:15:374 hours, 15 minutes, 37 secondsAwesome.
4:15:384 hours, 15 minutes, 38 secondsLet's go back to our browser here. And now we have this my test app. I will
4:15:454 hours, 15 minutes, 45 secondsclick enter and see if anything happens. Yep.
4:15:514 hours, 15 minutes, 51 secondsCreating your project. It redirected us to here. We have auto start one. And there you go. Awesome. It did create a
4:15:594 hours, 15 minutes, 59 secondsproject. took us to projects alert one which is the uh workspace then my test
4:16:064 hours, 16 minutes, 6 secondsapp is the project name and right now since that is not available to us it's giving us a 404 once we have a page tsx
4:16:144 hours, 16 minutes, 14 secondsfile for that route it's going to display that amazing wonderful guys excellent job all right let's go back to
4:16:224 hours, 16 minutes, 22 secondsour code editor and now I'm going to first of all collapse everything go to lib
4:16:304 hours, 16 minutes, 30 secondsAnd here we have queries and then we have projects.ts file. All right. So on this file here I'm going to give you
4:16:384 hours, 16 minutes, 38 secondsthis little code here. Not little that's like maybe like 90 lines of code. So
4:16:464 hours, 16 minutes, 46 secondsthat code basically is going to be like get project by slug. So first of all we have this user ID workspace slug and
4:16:544 hours, 16 minutes, 54 secondsproject slug. These are the three things that this project expects. And then we create the project on Prisma. We already
4:17:024 hours, 17 minutes, 2 secondshave Prisma that we are importing. And then of course that's where slug workspace and project access is also
4:17:094 hours, 17 minutes, 9 secondsbeing imported there already. Then we include all of these things artifacts files and preferences and conversations
4:17:164 hours, 17 minutes, 16 secondsand all that. Max agent messages. I will get to that in a minute. And then we
4:17:234 hours, 17 minutes, 23 secondshave deployments. All of this is for the Prisma database. If the project does not exist then it's going to create the
4:17:314 hours, 17 minutes, 31 secondspreference last open that uh should record open and uh if that should record
4:17:404 hours, 17 minutes, 40 secondsopen is available then based on that it's going to uh upsert this user project preference based on that given
4:17:484 hours, 17 minutes, 48 secondsdata here and then we have conversations all messages plan mood and then of course if the message is available then
4:17:564 hours, 17 minutes, 56 secondsthe message roll if that is also available uh I mean equal to system and is plan mode message is true then of
4:18:064 hours, 18 minutes, 6 secondscourse it's it's returning that all right and then we have const message all
4:18:124 hours, 18 minutes, 12 secondsmessages uh all I mean this messages is being generated based on the all
4:18:194 hours, 18 minutes, 19 secondsmessages and then on the all messages we have slice reverse filter and map all of these working al together in order to uh
4:18:274 hours, 18 minutes, 27 secondsand whatever returns from that all messages that is stored into the messages which of course is going to be
4:18:354 hours, 18 minutes, 35 secondsused here and then finally at the very end we have this return that is [snorts] basically a
4:18:424 hours, 18 minutes, 42 secondscomplete uh object that we're returning for the project that whatever the ID for the project is name slug description and
4:18:504 hours, 18 minutes, 50 secondsall that and that's a very giant uh function and Mostly work is there for
4:18:574 hours, 18 minutes, 57 secondsthe Prisma database. All right, let me get these things done. Let me make sure if we Yep, we do have that project app detail. So that's fixed.
4:19:084 hours, 19 minutes, 8 secondsAnd is plan mode message? Let me check. Missing function. Okay, I will add that.
4:19:154 hours, 19 minutes, 15 secondsUh last opened still MS. Okay, that's also missing. That's missing. And yeah,
4:19:224 hours, 19 minutes, 22 secondsthat's pretty much it. So at the top here, not actually here, but here I'm
4:19:304 hours, 19 minutes, 30 secondsgoing to create these two variables, these two constants. So last open stillms MS and then max agent messages
4:19:384 hours, 19 minutes, 38 secondsto 50. And now let's make sure that if we have everything done or we still have this little issue is plan mode message.
4:19:504 hours, 19 minutes, 50 secondsAnd for this one, I'm going to go to the lib slash agent slashprompts this file where
4:19:584 hours, 19 minutes, 58 secondswe already have these two one and I'm going to add this third one which we have export function is plan mode
4:20:054 hours, 20 minutes, 5 secondsmessage and there you go this is being used there as well actually let me give you this little piece of
4:20:134 hours, 20 minutes, 13 secondscode as well so basically uh plan mode block plan mode workflow
4:20:204 hours, 20 minutes, 20 secondsthis 1 2 3 4 just simple text and at the very end. It's joined with a new line.
4:20:264 hours, 20 minutes, 26 secondsAnd that simple, just that. So, I'm going to close this file. And now here, I'm going to make sure that I import
4:20:344 hours, 20 minutes, 34 secondsthat file. There you go. And seems like everything has been fixed for this projects.TTS file in the queries folder.
4:20:434 hours, 20 minutes, 43 secondsI'm going to close that. And now, all right. So now basically the one
4:20:514 hours, 20 minutes, 51 secondsthing that I would like to do is I would like to get back to projects here and this project is our goal in here. So
4:20:594 hours, 20 minutes, 59 secondsbasically that app/ appro should display cards from the database.
Chapter 5: Projects
4:21:054 hours, 21 minutes, 5 secondsThat's our goal for this one now. And for that I'm going to close this one, this one, this one and this one.
4:21:134 hours, 21 minutes, 13 secondsEverything actually. And in here, the very first thing that I'm going to need to create is a new file inside components app. And in there, I have a
4:21:224 hours, 21 minutes, 22 secondsnew folder dashboard.
4:21:274 hours, 21 minutes, 27 secondsAnd in there, I have a new file, which is going to be project dash list-layout.ts.
4:21:394 hours, 21 minutes, 39 secondsAnd there you go. Here I'm going to say artifact type labels.
4:21:454 hours, 21 minutes, 45 secondsThen I'm also going to need import type artifact
4:21:524 hours, 21 minutes, 52 secondstype from our there you go lab generator Prisma
4:21:594 hours, 21 minutes, 59 secondsclient. Awesome. And then here I'm going to say export const
4:22:094 hours, 22 minutes, 9 secondsproject list grid something like that is equal to
4:22:164 hours, 22 minutes, 16 secondsthis grid this uh CSS classes from the
4:22:234 hours, 22 minutes, 23 secondstailwind CSS and I'm going to save that and format that here I'm going to say
4:22:304 hours, 22 minutes, 30 secondsexport function function project display subtitle. This is going to take a
4:22:374 hours, 22 minutes, 37 secondsproject which is going to be a type of this object
4:22:434 hours, 22 minutes, 43 secondswhich includes a name string description which is going to be a
4:22:504 hours, 22 minutes, 50 secondsstring or null. There you go. And here let's open that project um in the function body.
4:23:014 hours, 23 minutes, 1 secondI'm going to say if project doescription does not exist then we return null and in the other
4:23:114 hours, 23 minutes, 11 secondscase we say const description is equal to project dot description dot trim dot
4:23:194 hours, 23 minutes, 19 secondsto lowerase. There you go. const name is equal to project dot name dot trim
4:23:284 hours, 23 minutes, 28 secondsdot to lower case. Awesome. Here if description is equal to name
4:23:374 hours, 23 minutes, 37 secondsthen we return null. And here we say if description dot starts with
4:23:454 hours, 23 minutes, 45 secondsname dot slice zero comma and second argument is going to be math dot min. And here we have
4:23:544 hours, 23 minutes, 54 secondsname dotlength and 48 here. And here finally return null.
4:24:044 hours, 24 minutes, 4 secondsAwesome. Let me format and save that.
4:24:064 hours, 24 minutes, 6 secondsAnd then after that here I'm going to say return project do.escription.
4:24:124 hours, 24 minutes, 12 secondsThere you go. And after this if statement I'm going to say export function. I mean after this uh function
4:24:214 hours, 24 minutes, 21 secondshere export function project meta line. This is going to take
4:24:294 hours, 24 minutes, 29 secondsa project which is going to be this object which
4:24:354 hours, 24 minutes, 35 secondsincludes workspace name string
4:24:414 hours, 24 minutes, 41 secondsartifacts type artifact type
4:24:494 hours, 24 minutes, 49 secondsand then we have file count which is going to be number and then
4:24:564 hours, 24 minutes, 56 secondsthis whole thing here. We have a function body and we have const types is equal to
4:25:064 hours, 25 minutes, 6 secondsarray where we uh do the spread operator data dot new set and we have project dot
4:25:144 hours, 25 minutes, 14 secondsartifacts dot map and then here we have artifact individual and then we go for
4:25:204 hours, 25 minutes, 20 secondsartifact dot type. Let me format and save that. After that here we have const
4:25:284 hours, 25 minutes, 28 secondstype label is equal to types.length But length when length
4:25:364 hours, 25 minutes, 36 secondswhen that is equal to zero then we go for no
4:25:434 hours, 25 minutes, 43 secondsartifacts otherwise we have types dotlength when that is equal to one then we go for
4:25:524 hours, 25 minutes, 52 secondsartifact type labels and here we have types then those first index and then exclamation mark here go
4:26:014 hours, 26 minutes, 1 secondunder and then Here we have uh template literal. I'm going to say types dotlength. And then I'm going to say
4:26:104 hours, 26 minutes, 10 secondshere types. Let me format and save. And now under here [snorts] I'm going to say
4:26:164 hours, 26 minutes, 16 secondsconst files is equal to project dot file count. When that is equal to zero then we have no files.
4:26:294 hours, 26 minutes, 29 secondsOtherwise this is going to be template literal project dotfile count and here we have file
4:26:384 hours, 26 minutes, 38 secondsand if project dotfile count is equal to one then it's going to be empty
4:26:464 hours, 26 minutes, 46 secondsotherwise it's going to take an s and here finally we return
4:26:554 hours, 26 minutes, 55 secondsprojectworkspace name and then a dot here and here I'm
4:27:014 hours, 27 minutes, 1 secondgoing to say type label and then space dot space and then here I'm going to say
4:27:094 hours, 27 minutes, 9 secondsfile hold on this is going to be files let me format and save and it it's done
4:27:194 hours, 27 minutes, 19 secondsthe next file that I would like to create is going to be inside components then we have UI and here I'm going to
4:27:264 hours, 27 minutes, 26 secondscreate a icon-button.tsx and I'm going to give you this code. So
4:27:354 hours, 27 minutes, 35 secondsbasically we are importing UI theme also importing focus visibility ring styles icon button go styles icon button
4:27:434 hours, 27 minutes, 43 secondsoutline styles from our UI theme which we already have here uh in the beginning of this project in the part one. And
4:27:514 hours, 27 minutes, 51 secondsthen we have CN. And finally here we have type icon button props which is going to have four arguments button size
4:27:594 hours, 27 minutes, 59 secondsvariant and theme. So icons uh size styles are there. Then we have icon button eventually label size variant
4:28:074 hours, 28 minutes, 7 secondstheme class name children and rest of the props is added there for the icon button and that is going to be used
4:28:164 hours, 28 minutes, 16 secondsthroughout the application. And eventually we return our button with a type button area label class names are
4:28:234 hours, 28 minutes, 23 secondsthere and focus [snorts] visibility uh focus visible ring style is there also size styles for this one and of course
4:28:324 hours, 28 minutes, 32 secondswe have the props and eventually we display our children inside the button. So that's that.
4:28:404 hours, 28 minutes, 40 secondsAll right. So right now I would like to work on this one. Basically uh page that can be created inside app
4:28:484 hours, 28 minutes, 48 secondsthen app and then dashboard here. Here we have app. I'm going to need to create this dashboard page and in there I can
4:28:574 hours, 28 minutes, 57 secondscreate a project folder and then in the project we have a page.tsx file. But
4:29:044 hours, 29 minutes, 4 secondsthat file is dependent on a few more files and a few more components and
4:29:104 hours, 29 minutes, 10 secondsthose needs to be built first. So for that reason I'm going to go open lib slash
4:29:184 hours, 29 minutes, 18 secondsqueries and I'm going to open the project file here and
4:29:254 hours, 29 minutes, 25 secondsabove this get project by slug I'm going to come here and I'm going to give you this code let me show you that what is
4:29:344 hours, 29 minutes, 34 secondsit that we're doing. So we have get project options. First of all, this is a type. I will get to all of these and
4:29:444 hours, 29 minutes, 44 secondsthese all will be update import from app types. Okay, that's done. Let's make sure update. Okay, that's done as well.
4:29:534 hours, 29 minutes, 53 secondsAnd there you go. That's done as well.
4:29:554 hours, 29 minutes, 55 secondsLet me format and save. And then here we have app project app types. There you go.
4:30:044 hours, 30 minutes, 4 secondsLet me check uh project sort app project or yeah let me go there. Yeah that's
4:30:124 hours, 30 minutes, 12 secondsavailable there. Awesome. So then here we have get project from uh for user that takes a user ID workspace ID
4:30:204 hours, 30 minutes, 20 secondsworkspaces which is going to be type of provided workspaces and then we have search build filter initially set to
4:30:284 hours, 30 minutes, 28 secondsall. Then we have sort last opened and there you go and get user workspaces
4:30:374 hours, 30 minutes, 37 secondsadd missing. Okay, that needs to be added. I'm going to get to that and let me have a look. This is all Prisma project. Uh this is going to find that
4:30:464 hours, 30 minutes, 46 secondsproject based on the workspace ID and uh let me check map list projects.
4:30:554 hours, 30 minutes, 55 secondsYeah, that needs to be added as well. Yeah, only those two. So, this one and this one.
4:31:064 hours, 31 minutes, 6 secondsAnd in order to fix this get user workspace function, I'm going to go up here and I'm going to create this
4:31:164 hours, 31 minutes, 16 secondsfunction here. There you go. And we have this cache here. Okay. Can I find did you mean cache?
4:31:264 hours, 31 minutes, 26 secondsOkay, so that cache basically needs to be imported.
4:31:334 hours, 31 minutes, 33 secondsImport cache from React.
4:31:394 hours, 31 minutes, 39 secondsThere you go. Something like that in the parenthes. Let me format and save. All right. So that cache is there now. And
4:31:494 hours, 31 minutes, 49 secondsyes we have get work get user workspaces and that function is also being used here. Now that issue has been solved.
4:31:594 hours, 31 minutes, 59 secondsAnd the next thing is map list map listed project.
4:32:064 hours, 32 minutes, 6 secondsSo for the map list uh map listed project here I'm going to
4:32:134 hours, 32 minutes, 13 secondshere actually yeah after this one I'm going to add this little code here where
4:32:214 hours, 32 minutes, 21 secondswe have this type uh type listed project where we have ID name slc description and rest of the stuff and then here we
4:32:304 hours, 32 minutes, 30 secondshave function map listed project and here we returning basically the same
4:32:374 hours, 32 minutes, 37 secondsthing that we have typed for and that's pretty basically pretty simple and uh
4:32:454 hours, 32 minutes, 45 secondsnow if I go to and see the file has been turned green and uh all of those issues
4:32:524 hours, 32 minutes, 52 secondsare gone now for this file basically for that purpose is done actually there is one more function that
4:33:004 hours, 33 minutesI would like to add here so we have get projects for user And uh okay, get user workspaces.
4:33:134 hours, 33 minutes, 13 secondsOkay, that's there. And uh okay, I'm going to go to the let me check what's the last function in here
4:33:224 hours, 33 minutes, 22 secondsthat is get project by select. Okay. Yes.
4:33:264 hours, 33 minutes, 26 secondsBefore that here I'm going to add this function and here we have get trashed project for user basically. So I'm going
4:33:354 hours, 33 minutes, 35 secondsto click on this one and import the update as appraashed project should be
4:33:424 hours, 33 minutes, 42 secondsthere. There you go. And then uh also do we have any errors? Nope. Seems like
4:33:514 hours, 33 minutes, 51 secondswe have no errors. Everything is being used.
4:33:544 hours, 33 minutes, 54 secondsAll the types are here. Let me do one thing. I am going to bring this type to the top here.
4:34:064 hours, 34 minutes, 6 secondsAnd let me check where is any other type. And seems like yeah all good. Okay, let me
4:34:164 hours, 34 minutes, 16 secondsformat and save everything. And we are done with this file. Awesome. Right, I'm going to close everything and collapse everything here. And now I'm going to go
4:34:244 hours, 34 minutes, 24 secondsto the components in the UI. And here I'm going to create a new file which is going to be empty-state.tsx.
4:34:354 hours, 34 minutes, 35 secondsHere first of all I'm going to need import type UI theme. Then I'm going to need empty state description style. There you go.
4:34:484 hours, 34 minutes, 48 secondsAnd UI theme that's coming from there. Yeah.
4:34:514 hours, 34 minutes, 51 secondsAwesome. Okay. Okay. And let me bring this to the first. And here now I'm going to
4:35:004 hours, 35 minutesalso need empty state styles also empty state title styles and also muted text
4:35:104 hours, 35 minutes, 10 secondsstyles. Let me format and save that. And here I'm going to need CN.
4:35:164 hours, 35 minutes, 16 secondsI'm going to say type empty state props is equal to this object. This type where we have title is going to be string.
4:35:274 hours, 35 minutes, 27 secondsDescription is going to be string. Then we have action which is going to be
4:35:344 hours, 35 minutes, 34 secondsoptional. And react dot react node. Then we have icon
4:35:444 hours, 35 minutes, 44 secondsreact dot react node. And then we have class name
4:35:524 hours, 35 minutes, 52 secondsstring. And then we have theme which is going to be UI theme.
4:35:584 hours, 35 minutes, 58 secondsThere you go. Let me format and save that. Here we have export function empty
4:36:054 hours, 36 minutes, 5 secondsstate and there's title description
4:36:144 hours, 36 minutes, 14 secondsaction icon class name is going to be light and this whole
4:36:224 hours, 36 minutes, 22 secondsthing is going to be type of empty state props. Let me open function body. And here it's going to return
4:36:314 hours, 36 minutes, 31 secondsa div which is going to have a class name which is going to be CN.
4:36:384 hours, 36 minutes, 38 secondsThere you go. And I'm going to open that div here and it's going to have first of all if icon is true then there's going to be a div. Hold on.
4:36:504 hours, 36 minutes, 50 secondsJust like that. And that div is going to have some class name. So first of all we have CN here as well. I'm going to say margin bottom dash4.
4:37:024 hours, 37 minutes, 2 secondsThen we have muted text styles and here I'm going to add theme and in there this
4:37:114 hours, 37 minutes, 11 secondsis going to be icon and otherwise it's going to be null. Let me format and save
4:37:184 hours, 37 minutes, 18 secondsthat. After this icon here, we have an H3 and I'm going to give it a class name which is going to be
4:37:284 hours, 37 minutes, 28 secondsCN. And in there I have font dash display and we have text XL and then I'm
4:37:364 hours, 37 minutes, 36 secondsgoing to add empty state title styles and here I'm going to add theme and then in here I have this title.
4:37:474 hours, 37 minutes, 47 secondsAfter the H3 we have P tag class name CN and this is going to be margin 2-2
4:37:564 hours, 37 minutes, 56 secondsmargin top-ash2 max width small and then we have text small
4:38:034 hours, 38 minutes, 3 secondsand here we have empty state description styles and here we have
4:38:124 hours, 38 minutes, 12 secondstheme let me format and save that inside the page tag T here we have description.
4:38:204 hours, 38 minutes, 20 secondsLet me format and save once more time.
4:38:244 hours, 38 minutes, 24 secondsAnd here I'm going to add action. If that is available then we have this div.
4:38:304 hours, 38 minutes, 30 secondsAnd that div is going to have a class name argin top dash 6. And I'm going to add action here. And eventually after
4:38:394 hours, 38 minutes, 39 secondsthe div here we have now let me format and save. And our empty state component is done.
4:38:474 hours, 38 minutes, 47 secondsThe next file that I'm going to create that's going to be inside components we have app and then in there we have shell
4:38:544 hours, 38 minutes, 54 secondsand I'm going to have a new file page dash header tsx
4:39:024 hours, 39 minutes, 2 secondswe have cn that's I'm going to import then we have type page header props is
4:39:084 hours, 39 minutes, 8 secondsequal to this where we have title string
4:39:144 hours, 39 minutes, 14 secondschildren is going to be react dot react node and then we have class name which
4:39:224 hours, 39 minutes, 22 secondsis going to be string. Here we have export function page header
4:39:314 hours, 39 minutes, 31 secondsand we have title children class name and I'm going to say this is
4:39:394 hours, 39 minutes, 39 secondsgoing to be a type of page header props open that and [snorts] I'm going to return
4:39:474 hours, 39 minutes, 47 secondsand we have a header tag here I'm going to give it a class name which is going to be CN open that and there's a class
4:39:554 hours, 39 minutes, 55 secondsname. Let me format and save. Open this header. And here we have H1. I'm going to display title there. And that H1 is
4:40:044 hours, 40 minutes, 4 secondsgoing to have a class name font display text XL. Then we have text app text.
4:40:124 hours, 40 minutes, 12 secondsAfter the H1, we have children here. Let me format and save. And that should be it.
4:40:214 hours, 40 minutes, 21 secondsAfter this one, I'm going to go and create a new file. Inside components, we have UI. And then in there, we have a
4:40:304 hours, 40 minutes, 30 secondsfile which is going to be search dashinput.tsx.
4:40:374 hours, 40 minutes, 37 secondsAnd here first of all, I'm going to import type which is going to be UI theme. Then we also have muted text
4:40:464 hours, 40 minutes, 46 secondsstyles. And then we also have CN. And I'm going to say also import
4:40:534 hours, 40 minutes, 53 secondsinput from our input. And then we have type search input props is equal to this
4:41:034 hours, 41 minutes, 3 secondswhere we have value is going to be string on change is going to be a function which is going to be void and
4:41:114 hours, 41 minutes, 11 secondsit expects a value which is going to be a string.
4:41:184 hours, 41 minutes, 18 secondsAfter that here we have a placeholder which is going to be a string then class
4:41:264 hours, 41 minutes, 26 secondsname also string then theme is going to be UI theme. There you go. And now here we
4:41:354 hours, 41 minutes, 35 secondshave export function search input and this is going to be
4:41:414 hours, 41 minutes, 41 secondsvalue on change placeholder which is going to be
4:41:494 hours, 41 minutes, 49 secondssearch projects by default. And then we have theme which is going to be light by
4:41:574 hours, 41 minutes, 57 secondsdefault. And this whole thing is going to be type of search input props open function body.
4:42:054 hours, 42 minutes, 5 secondsAnd we return a div to which we provide a class name
4:42:124 hours, 42 minutes, 12 secondsclass name which is going to be CN and I'm going to say relative and here I'm going to say class name class name.
4:42:264 hours, 42 minutes, 26 secondsThere you go. Let me format and save. So this uh here we missed a class name. There you go.
4:42:374 hours, 42 minutes, 37 secondsNow inside this div here I'm going to give you this SVG. Let me forward and save that.
4:42:444 hours, 42 minutes, 44 secondsAnd after the SVG here we have the input. And for that I'm going to say
4:42:504 hours, 42 minutes, 50 secondsvalue is going to be value on change is going to be event. And then we have on change event dot target dot value.
4:43:034 hours, 43 minutes, 3 secondsThere you go. And here we have placeholder which is going to be placeholder.
4:43:134 hours, 43 minutes, 13 secondsLet me format and save. And then after that we have a class name. I'm going to
4:43:204 hours, 43 minutes, 20 secondssay adding left is going to be nine. And we also have area label which is going
4:43:274 hours, 43 minutes, 27 secondsto be placeholder. And then finally we have theme which is going to be theme.
4:43:324 hours, 43 minutes, 32 secondsLet me format and save. And that component is done. The next component that I'm going to create is inside this
4:43:404 hours, 43 minutes, 40 secondsUI folder. I'm going to create a select.tsx.
4:43:464 hours, 43 minutes, 46 secondsAnd here I'm going to import type UI theme. Then I'm going to import focus ring styles.
4:43:564 hours, 43 minutes, 56 secondsAnd here I'm going to import input styles and also muted text styles.
4:44:054 hours, 44 minutes, 5 secondsThat's imported. And then I'm going to import chevron icon and also CN. And
4:44:144 hours, 44 minutes, 14 secondsthen after that I'm going to say type select props
4:44:224 hours, 44 minutes, 22 secondsis equal to react dot select HTML attribute and here I'm going to say HTML select
4:44:314 hours, 44 minutes, 31 secondselement and and here open the block where we have theme and this is
4:44:404 hours, 44 minutes, 40 secondsgoing to be UI theme. Let me format and save. And then here I'm going to say con Howard styles
4:44:494 hours, 44 minutes, 49 secondsrecord and this is going to be UI theme. Then we have string and equal to this where we have light and app.
4:45:014 hours, 45 minutes, 1 secondAnd after that here I'm going to have export function select and here we have class
4:45:104 hours, 45 minutes, 10 secondsname children theme what did okay team
4:45:184 hours, 45 minutes, 18 secondsis equal to light by default and then we have dot props let's make sure it's a
4:45:254 hours, 45 minutes, 25 secondstype of select props and open function body We return here and in there we have a
4:45:344 hours, 45 minutes, 34 secondsdiv tag class name C and this is going to be relative and inline flex and width full and then here
4:45:434 hours, 45 minutes, 43 secondswe have class name. I'm going to open that div and here we have first of all a select tag.
4:45:524 hours, 45 minutes, 52 secondsI'm going to get rid of the name. I'm also going to get rid of the ID and we're going to need a class name.
4:46:014 hours, 46 minutes, 1 secondThere you go.
4:46:034 hours, 46 minutes, 3 secondsAnd for this class name, I'm going to use CN. Let me format and save that. And then, of course, we also are going to
4:46:124 hours, 46 minutes, 12 secondsmake sure that we have all of the other attributes for the select as well. So, I'm going to use props here. And then in there, we have children.
4:46:214 hours, 46 minutes, 21 secondsJust like that. Let me format and save.
4:46:234 hours, 46 minutes, 23 secondsAnd after this select here, I'm going to create a span. give it a class name which is going to be CN again. And here
4:46:334 hours, 46 minutes, 33 secondswe have these classes and then also I'm going to add area hidden which is going
4:46:404 hours, 46 minutes, 40 secondsto be true and I'm going to open that span. Here we have chevron icon and I'm
4:46:474 hours, 46 minutes, 47 secondsgoing to add direction which is going to be down and size which is going to be 14. Let me format and save. And that should be inside this.
4:47:014 hours, 47 minutes, 1 secondSo that is done as well, I guess. Let me make sure. Nope, we are not missing anything. Done.
4:47:084 hours, 47 minutes, 8 secondsNext, I'm going to create a new component that is going to go inside components. Then we have app. And then we have dashboard.
4:47:184 hours, 47 minutes, 18 secondsAnd that's going to be project d-filters.t.
4:47:244 hours, 47 minutes, 24 secondstsx and first of all it's going to make sure I'm going to make sure that it is a client component then we have then we're
4:47:334 hours, 47 minutes, 33 secondsgoing to import select we just created and then we also have build filter
4:47:404 hours, 47 minutes, 40 secondsoptions also sort options and then we need also import type
4:47:494 hours, 47 minutes, 49 secondsproject build filter also So project sort there you go and here I'm
4:47:594 hours, 47 minutes, 59 secondsgoing to have a type project project filter props is equal to this type where we have build filter is going to be
4:48:084 hours, 48 minutes, 8 secondsproject project build filter
4:48:164 hours, 48 minutes, 16 secondsthen we have sort project sort Hold on. Project sort. Yeah. And then
4:48:254 hours, 48 minutes, 25 secondshere we have on build filter change. We have value and it's going to be void.
4:48:334 hours, 48 minutes, 33 secondsAnd in the value we have uh project build filter.
4:48:424 hours, 48 minutes, 42 secondsThere you go.
4:48:444 hours, 48 minutes, 44 secondsAnd here I'm going to have on sort change which is going to be a function as well void.
4:48:534 hours, 48 minutes, 53 secondsAnd here I'm going to say value project sort. Let me format and save.
4:49:014 hours, 49 minutes, 1 secondAnd then after that we have project count which is going to be a number. And
4:49:084 hours, 49 minutes, 8 secondsthen here I'm going to say export function project filters.
4:49:184 hours, 49 minutes, 18 secondsOpen this one.
4:49:214 hours, 49 minutes, 21 secondsBuild filter. And then we have sort on build
4:49:284 hours, 49 minutes, 28 secondsfilter change. And then we have on sort change. We also have project
4:49:364 hours, 49 minutes, 36 secondscount. There you go. And this whole thing is going to be type of project filter props. Open that. We have this
4:49:454 hours, 49 minutes, 45 secondsissue here. So this one is on build filter change on. Yep.
4:49:524 hours, 49 minutes, 52 secondsBuild filter change. All right. Now here we have a return in which we have a div.
4:50:004 hours, 50 minutesI'm going to give it a class name flex.
4:50:034 hours, 50 minutes, 3 secondsFlex dash call gap of pre tablet up is going to be
4:50:114 hours, 50 minutes, 11 secondstablet up is going to be flex row tablet up is going to be items center and
4:50:184 hours, 50 minutes, 18 secondstablet up is going to be justify between. I'm going to open that div.
4:50:244 hours, 50 minutes, 24 secondsHere we have a p tag that's going to say project count. And here we have project
4:50:324 hours, 50 minutes, 32 secondsand then I'm going to say project count project count
4:50:404 hours, 50 minutes, 40 secondsif that is equal to one then it's going to be empty otherwise it's going going to say s and let me put this question
4:50:484 hours, 50 minutes, 48 secondsmark here let me format and save and this p tag should have a class name text- small and also text- app-ext-muted
4:50:584 hours, 50 minutes, 58 secondsLet me format and save. After that P tag, we're going to have a div tag here.
4:51:054 hours, 51 minutes, 5 secondsGoing to have a class name. These are the class names. And then we have a select.
4:51:134 hours, 51 minutes, 13 secondsAnd that select is going to have a value which is build filter. And then we also
4:51:214 hours, 51 minutes, 21 secondshave on change which is going to be event. And then on that we have on build
4:51:284 hours, 51 minutes, 28 secondsfilter change event.target dot value
4:51:344 hours, 51 minutes, 34 secondsas project build filter. Let me format and save that.
4:51:404 hours, 51 minutes, 40 secondsAnd then after that here we have area label which is going
4:51:464 hours, 51 minutes, 46 secondsto be filter by build type. We also have class name that's going to be tablet up
4:51:564 hours, 51 minutes, 56 secondsthat's going to be width dash 52 and finally here we have theme which is
4:52:034 hours, 52 minutes, 3 secondsgoing to be app and then in the select here I'm going to say build filter options dot map we have
4:52:124 hours, 52 minutes, 12 secondsindividual option on that I'm going to have this return direct return without the keyword word
4:52:204 hours, 52 minutes, 20 secondsI'm going to have option there you go and in that I have a key
4:52:274 hours, 52 minutes, 27 secondswhich is going to be option do value and then we have value which is going to be option do value and in there we have
4:52:374 hours, 52 minutes, 37 secondsoption dot label let me format and save that and that select after the select we have
4:52:454 hours, 52 minutes, 45 secondsanother select here And I'm going to have a value
4:52:534 hours, 52 minutes, 53 secondswhich is going to be sort. And then we have on change. We have event on sort
4:53:014 hours, 53 minutes, 1 secondchange event.target dot value as project sort. There you go. Let me
4:53:104 hours, 53 minutes, 10 secondsformat and save. And then here I'm going to say area label sort projects
4:53:214 hours, 53 minutes, 21 secondsand also class name table hold on class name tablet dash up and that's
4:53:304 hours, 53 minutes, 30 secondsgoing to be width- 56 and then we have theme which is going to be app open the
4:53:374 hours, 53 minutes, 37 secondsselect we have sort options do app
4:53:434 hours, 53 minutes, 43 secondsoption and here we're going to add
4:53:504 hours, 53 minutes, 50 secondsoption and I'm going to say key which is going to be option dot value and value
4:53:574 hours, 53 minutes, 57 secondswhich is going to be option dot value here and I'm going to say option dot
4:54:044 hours, 54 minutes, 4 secondslabel here let me format and save that and I think with that this whole component is done. Let me make sure we
4:54:134 hours, 54 minutes, 13 secondsare using everything. There's nothing that's not being used. So yeah, that's done I guess. All right, I'm going to
4:54:224 hours, 54 minutes, 22 secondsclose all of these files and I'm going to create the next very important file which is going to be used as a very
4:54:314 hours, 54 minutes, 31 secondsimportant component in the projects page uh projects page. So I'm going to go to
4:54:374 hours, 54 minutes, 37 secondsour components then app here and then I'm going to go to the dashboard and here's going to be the file which is
4:54:464 hours, 54 minutes, 46 secondsgoing to be project dashlist dash item.tsx tsx and first of all it's
4:54:544 hours, 54 minutes, 54 secondsa client component and then we have link that I'm importing then also use router
4:55:024 hours, 55 minutes, 2 secondsfrom next navigation then also use state and use
4:55:094 hours, 55 minutes, 9 secondstransition and then here I'm importing category icon as well let me import
4:55:194 hours, 55 minutes, 19 secondscateory icon. There you go. And then after that,
4:55:254 hours, 55 minutes, 25 secondsI also have external link icon. There you go. Also
4:55:344 hours, 55 minutes, 34 secondsopen project icon and also trash icon. Awesome. After that, I also
4:55:424 hours, 55 minutes, 42 secondshave bash that I need to import also icon button.
4:55:484 hours, 55 minutes, 48 secondsAnd after that I also need focus visible ring styles and also
4:55:564 hours, 55 minutes, 56 secondsartifact type label and artifact type category ID
4:56:054 hours, 56 minutes, 5 secondsand also format relative time that needs to be imported as type. So import type app project. There you go. Awesome.
4:56:174 hours, 56 minutes, 17 secondsAnd then after that, we're going to need a few more. So, I'm going to need artifact status label. There you go.
4:56:274 hours, 56 minutes, 27 secondsAlso going to need artifact status variant. And also going to need get
4:56:334 hours, 56 minutes, 33 secondsproject status. Let me format and save that. And then I'm also going to need CN.
4:56:414 hours, 56 minutes, 41 secondsAwesome. Here, finally, we have type.
4:56:444 hours, 56 minutes, 44 secondsI'm going to say project list item props is equal to this type where we have project app project.
4:56:554 hours, 56 minutes, 55 secondsThere you go.
4:56:584 hours, 56 minutes, 58 secondsLet's also make sure to import these files as well.
4:57:054 hours, 57 minutes, 5 secondsAnd then here I'm going to export function project list item which is going to take a project.
4:57:174 hours, 57 minutes, 17 secondsThere you go. Project which is going to be a type of project list item
4:57:264 hours, 57 minutes, 26 secondsprops and open that. And here I'm going to give you this code where we have
4:57:334 hours, 57 minutes, 33 secondsrouter use router success toast use toast make sure to import that as well.
4:57:404 hours, 57 minutes, 40 secondsThen we have trash dial dialogue open set and this one and then we have pending hf status and basically these
4:57:494 hours, 57 minutes, 49 secondsvariables that we have created that are those are going to be used in this component.
4:57:564 hours, 57 minutes, 56 secondsNow here I'm going to create a return in which we have this empty fragment. I'm going to create an ally.
4:58:054 hours, 58 minutes, 5 secondsAlly has this class name here. Let me format and save that. Let me open the ally. And we have another div which is going to have some class names as well.
4:58:174 hours, 58 minutes, 17 secondsSo CN this is going to be flex flex call and gap of four.
4:58:254 hours, 58 minutes, 25 secondsThere you go. And then we have project list grid. Let me format and save that. Open
4:58:344 hours, 58 minutes, 34 secondsthat div. And now there is the project.
4:58:424 hours, 58 minutes, 42 secondsFor the project itself, we have this div. Let me format and save that. So we have this div with minimum width zero
4:58:484 hours, 58 minutes, 48 secondsspace y1. We have a link which holds a few classes. HF title is going to be the project name and span which holds the
4:58:574 hours, 58 minutes, 57 secondsproject name for the display and then we have a P tag with metal line and then if the subtitle is available then we are
4:59:044 hours, 59 minutes, 4 secondsdisplaying the subtitle with a few children CSS classes. Awesome. After the
4:59:104 hours, 59 minutes, 10 secondsproject here I'm going to display our facts and that's going to be here this div. So basically we have a minimum
4:59:204 hours, 59 minutes, 20 secondswidth zero of div. Then we have a p tag with the title artifacts is some uh static text. Then we are looping we are
4:59:294 hours, 59 minutes, 29 secondschecking that if the project's artifacts.length is more than zero then we have this div where we are looping
4:59:364 hours, 59 minutes, 36 secondsthrough that those artifacts and for the each individual artifact we have this return div and in case of false we are
4:59:444 hours, 59 minutes, 44 secondsjust displaying this dash. That's pretty much it.
4:59:504 hours, 59 minutes, 50 secondsAnd let me find so after the artifact here we're going to have status and that's going to be this div where we
4:59:584 hours, 59 minutes, 58 secondshave space y1 a p t tag displaying status static text and then we have a batch icon being used variant status is
5:00:085 hours, 8 secondsgoing to be variant theme is going to be app and class name fit we display the dble here and then we check if the
5:00:165 hours, 16 secondsproject deploy deployment is true then we Display the status details plus the format re relative time with the project
5:00:245 hours, 24 secondsdeployment published at otherwise we just display the status detail. All
5:00:305 hours, 30 secondsright the next thing that I need is that is here actually
5:00:385 hours, 38 secondsnext component here. So here I'm going to add let's say last opened and for that we
5:00:475 hours, 47 secondshave this div where we have a simple P tag then another P tag with the opened label and then another P tag with the
5:00:555 hours, 55 secondsupdated updated label and then after that we have here actions
5:01:025 hours, 1 minute, 2 secondsso basically fixed icon slots and for that I'm going
5:01:085 hours, 1 minute, 8 secondsto paste this div here And we have a div that includes another contains another
5:01:155 hours, 1 minute, 15 secondsdiv that has a link lot of CSS classes there and that's going to open project
5:01:235 hours, 1 minute, 23 secondsicon. And then we have another div which holds an anchor tag and a lot of CSS classes again. And then this is external
5:01:325 hours, 1 minute, 32 secondslink icon to for the preview. Then we have icon button that's for the delete.
5:01:395 hours, 1 minute, 39 secondsAnd that's pretty much it I guess. And now let me get rid of this thing from here. Let me format and save everything.
5:01:465 hours, 1 minute, 46 secondsAnd after the li here I'm going to use this confirm dialogue component.
5:01:535 hours, 1 minute, 53 secondsBasically that we are going to create.
5:01:575 hours, 1 minute, 57 secondsSo just before that we have these uh handle confirm trash. Of course for that
5:02:035 hours, 2 minutes, 3 secondswe need a server action and that we're going to create as well. In order to create this component, we're going to
5:02:115 hours, 2 minutes, 11 secondsneed to create a couple of more. And for that reason, I'm going to go to the components and then UI. And here I'm going to create a new file, which is going to be app-model.tsx.
5:02:245 hours, 2 minutes, 24 secondsAnd here we have to make sure it's a client component. Then use effect. Let's bring that also CN. And then we have
5:02:335 hours, 2 minutes, 33 secondsthis type where we have app model backdrop props. And then here we have export
5:02:425 hours, 2 minutes, 42 secondsfunction app model back drop. There you go. And in there I'm
5:02:515 hours, 2 minutes, 51 secondsgoing to need a few things like open on close children
5:02:585 hours, 2 minutes, 58 secondsclass name panel class name. There you go. And then I'm going to need backdrop
5:03:065 hours, 3 minutes, 6 secondsclass name. Awesome. This is going to be type of app model backdrop props open function body.
5:03:155 hours, 3 minutes, 15 secondsAnd here we have first of all I'm going to say return and in there we have a div
5:03:265 hours, 3 minutes, 26 secondswhich has a class name. I'm going to use zn fixed. Then also insert zero. And
5:03:345 hours, 3 minutes, 34 secondsthen we have z 50. And then we have class name and I'm going to say ro for this one is presentation.
5:03:465 hours, 3 minutes, 46 secondsAll right, open that. And then we have button here and another div here. And of
5:03:535 hours, 3 minutes, 53 secondscourse we need one more thing and that is going to be a use effect.
5:03:595 hours, 3 minutes, 59 secondsAnd in there, there you go. That's the use effect that we need. So if it's not open then it's going to return get out
5:04:075 hours, 4 minutes, 7 secondsof this use effect and then function key down in case of escape we also closing this one and also we are making sure
5:04:175 hours, 4 minutes, 17 secondsthat we are resetting the state on the dismount of this component. All right.
5:04:265 hours, 4 minutes, 26 secondsAnd then eventually if this is not I mean open then we return null. And if that's not the case then we return this backdrop that we already have.
5:04:375 hours, 4 minutes, 37 secondsAll right. So now in the UI folder I'm going to create a new file which is going to be confirm dialogue.tsx.
5:04:475 hours, 4 minutes, 47 secondsAnd here make sure it's a client component. And then we are bringing app model backdrop that we just created.
5:04:565 hours, 4 minutes, 56 secondsAlso our button component also our trash icon also CN and then we have this type
5:05:045 hours, 5 minutes, 4 secondsconfirm dialogue props where we have open on close confirm and a bunch of other.
5:05:125 hours, 5 minutes, 12 secondsI'm going to scroll up and here I'm going to say export function confirm dialogue
5:05:205 hours, 5 minutes, 20 secondsand here I have all of these uh properties for this one
5:05:275 hours, 5 minutes, 27 secondsall of these arguments that it needs and then we have confirm dialog props make sure to open the function body
5:05:355 hours, 5 minutes, 35 secondsin there first of all I'm going to create a function which is going to be handle close And that's going to be if
5:05:445 hours, 5 minutes, 44 secondsis pending then we return otherwise we do on close. There you go. After that we
5:05:525 hours, 5 minutes, 52 secondshave return and in which we have app model backdrop and in there we have here
5:06:035 hours, 6 minutes, 3 secondsopen that's going to be open and then we have on close where we have handle close.
5:06:175 hours, 6 minutes, 17 secondsThere you go. Let me format and save that. And then after that, we're going to need panel class name, which is going to be fixed insert dash zero.
5:06:275 hours, 6 minutes, 27 secondsThere you go. And Z-10 flex items dash center also justify
5:06:365 hours, 6 minutes, 36 secondsdash center and padding dash4. Let me format and save. Open that. And we also
5:06:425 hours, 6 minutes, 42 secondsneed one more class name which is going to be Z dash
5:06:495 hours, 6 minutes, 49 seconds100 here. Let's open that. And here I'm going to give you this div here. And in
5:06:575 hours, 6 minutes, 57 secondsthat div we have ro alert dialogue area model is going to be true uh labeled
5:07:065 hours, 7 minutes, 6 seconds[snorts] by description. And then inside there we have another div with a few classes. Another div classes, another div classes, and then eventually we have
5:07:155 hours, 7 minutes, 15 secondstrash icon. Then we have another div for the H2 for the title of the dialogue box. And then we have a p tag for the
5:07:225 hours, 7 minutes, 22 secondsdescription. And then eventually here we have item name. And then finally we have
5:07:295 hours, 7 minutes, 29 secondstwo buttons, one for the cancel and one for the confirmation.
5:07:355 hours, 7 minutes, 35 secondsAnd there you go. So that is done.
5:07:395 hours, 7 minutes, 39 secondsLet me close that and let me get back. Let me actually close this one as well and get back
5:07:465 hours, 7 minutes, 46 secondshere. Now let's import this one. And now we need handle confirm trash uh server action.
5:07:555 hours, 7 minutes, 55 secondsSo this basically that handle confirm trash is going to be put here. Let me
5:08:035 hours, 8 minutes, 3 secondsactually yeah write that down there. And here this is not a server component. So
5:08:115 hours, 8 minutes, 11 secondsserver action server action is going to be this one which is move project to the trash action. And this one is just a
5:08:195 hours, 8 minutes, 19 secondsfunction for that to be used for. And right now we need to create a server action that is going to be used here.
5:08:295 hours, 8 minutes, 29 secondsThis one. All right. So now I'm going to go to the lib/actions
5:08:365 hours, 8 minutes, 36 secondsslash projects and in there I'm going to under this one going to create a new
5:08:435 hours, 8 minutes, 43 secondsaction which is this one move project to the trash icon. First of all it expect
5:08:525 hours, 8 minutes, 52 secondsexpects this one and that needs to be created. We will do that. Then we have project ID schema. All right. And then
5:09:015 hours, 9 minutes, 1 secondwe have get accessible projects. So if I click on that, yes, we can import that
5:09:075 hours, 9 minutes, 7 secondsand revalidate project paths. And uh yes, we also are going to need to work on that now. So first of all, I'm going
5:09:175 hours, 9 minutes, 17 secondsto get to the very top of this file after the imports. And in here, I'm going to give you this code where we
5:09:245 hours, 9 minutes, 24 secondshave first of all project ID schema Z do. object and that where where we have project ID and we are making sure that
5:09:325 hours, 9 minutes, 32 secondsstring and also minimum connector one and we have authorize project for action select that is an object where we have
5:09:415 hours, 9 minutes, 41 secondsthis information and then we have function revalidate p project path where
5:09:475 hours, 9 minutes, 47 secondswe using revalidate path simple and uh that's pretty much it and then finally here we have remove project files from
5:09:555 hours, 9 minutes, 55 secondsdisk and for that we have this smaller function here.
5:10:015 hours, 10 minutes, 1 secondLet's get to the very bottom and make sure that there are no errors. The file has been turned green.
5:10:085 hours, 10 minutes, 8 secondsAnd let me format and save everything.
5:10:115 hours, 10 minutes, 11 secondsLet's close this one. And now let's bring that file here as an import. And there you go. Let me format and save.
5:10:215 hours, 10 minutes, 21 secondsThat is done. Awesome.
5:10:255 hours, 10 minutes, 25 secondsAll right. So, I'm going to close this one. Collapse everything. And the next thing that I'm going to work on is going to be components, then app, and then
5:10:345 hours, 10 minutes, 34 secondsdashboard. And then here I'm going to create a new file, which is going to be project-page.tsx.
5:10:465 hours, 10 minutes, 46 secondsAnd here I'm going to make sure that it's a client component.
5:10:515 hours, 10 minutes, 51 secondsAnd here, let me give you this code here. basically. So we have importing use memo use state from react. We also
5:11:005 hours, 11 minutesimporting page header button empty state search input add project CN and project filters and a few other things. And then
5:11:095 hours, 11 minutes, 9 secondswe have type and then here we have export function project page. This takes projects which is going to type which is going to be a type of projects page
5:11:185 hours, 11 minutes, 18 secondsprops. We have search set search build filter set build filter our little store here. Then here we have sorted product
5:11:265 hours, 11 minutes, 26 secondsuh sorted projects which is going to be using use memo and then that's ending
5:11:345 hours, 11 minutes, 34 secondshere and on the dependency it uses projects search build
5:11:415 hours, 11 minutes, 41 secondsfilter and sort and uh after that here we have finally return
5:11:475 hours, 11 minutes, 47 secondswhere we have main page header div that contains project filters the compon components that we are building so far.
5:11:565 hours, 11 minutes, 56 secondsAnd then we have sorted projects and in there we have div and then we have project list grid and bunch of other CSS
5:12:035 hours, 12 minutes, 3 secondsclasses there as well. And then finally here we have empty state and that is
5:12:095 hours, 12 minutes, 9 secondsthere by let me yeah when the sorted projects are length is more than zero
5:12:165 hours, 12 minutes, 16 secondsthen we display this otherwise we just display an empty state. So I'm giving you this code all the way here without
5:12:245 hours, 12 minutes, 24 secondswriting the code single by single that is because this project is uh lengthy
5:12:335 hours, 12 minutes, 33 secondsand is taking way more than I anticipated in the beginning and I don't want the videos to be too long. So
5:12:425 hours, 12 minutes, 42 secondsthat's why I'm trying my best to sum up the project in the shortest time possible yet I just uh write the code
5:12:525 hours, 12 minutes, 52 secondswhere I feel necessary and otherwise just explain what's going on. So I'm going to close this one and now I'm
5:13:005 hours, 13 minutesgoing to go to the app and then we have app here then dashboard here and then in there I am going to create a new folder
5:13:095 hours, 13 minutes, 9 secondswhich is going to be projects and then in there I have a new file which is going to be page.tsx.
5:13:175 hours, 13 minutes, 17 secondsSo if I put hello there actually no RFC.
5:13:235 hours, 13 minutes, 23 secondsThere you go page. If I go here and refresh, there you go. We have the little page here. And now if I get back
5:13:305 hours, 13 minutes, 30 secondshere and just let me replace everything here. First of all, we have a project
5:13:365 hours, 13 minutes, 36 secondspage that we just created. And let me just do one thing there. Let me
5:13:465 hours, 13 minutes, 46 secondsgo back here. Put slash. Nope. This is not working that way. Slash. Then we
5:13:525 hours, 13 minutes, 52 secondshave components slash. And then here we have app slashdashboard slash projects
5:14:025 hours, 14 minutes, 2 secondspage. There you go. Basically the same thing. Let me actually do one thing. Let me reload
5:14:095 hours, 14 minutes, 9 secondsthe window. That way it is going to Yeah. get all of those things automatically except for get cached user workspaces.
5:14:195 hours, 14 minutes, 19 secondsSo for that I'm going to go to the lib slash slashcast
5:14:265 hours, 14 minutes, 26 secondsand in there I'm going to need okay get cache session there you go okay
5:14:335 hours, 14 minutes, 33 secondsnow here I'm going to need a import
5:14:405 hours, 14 minutes, 40 secondsget user workspaces there you go and now after here I'm going to say export const
5:14:495 hours, 14 minutes, 49 secondsGet cached user work
5:14:555 hours, 14 minutes, 55 secondsspaces is equal to cache. Then here I'm going to say get user work spaces work
5:15:035 hours, 15 minutes, 3 secondsspaces. Let me format and save. And that should be it. Let me close that. Now here that should come from that. Let me
5:15:125 hours, 15 minutes, 12 secondsreload the window one more time and that should get fixed. But it is not get cached workspaces. Let me reopen that file. Let me copy this one.
5:15:245 hours, 15 minutes, 24 secondsAnd we have cached.
5:15:275 hours, 15 minutes, 27 secondsThere you go. We have get cached user work spaces. We have spelling issue. It found that get back. And there you go. That error [snorts] is gone.
5:15:395 hours, 15 minutes, 39 secondsAwesome. And now if I go here and there you guys can see. So basically you got
5:15:465 hours, 15 minutes, 46 secondsto see whole thing at once. We built this
5:15:535 hours, 15 minutes, 53 secondsseparately but I did not show you the result. We built this separately but I also did not show you the result. We
5:16:005 hours, 16 minutesbuilt this and this and of course there's going to be the preview once the
5:16:075 hours, 16 minutes, 7 secondsproject is published. Last opened 5 hours ago. Is it draft or not? Is it
5:16:145 hours, 16 minutes, 14 secondsmain artifact or what? What's the project name and all that? And of course, this project page is completely
5:16:225 hours, 16 minutes, 22 secondsfinished. And uh again, I've been telling you this again and again that this project is taking way longer than I anticipated originally. So that's why
5:16:315 hours, 16 minutes, 31 secondsI'm trying my best to save time where possible. So that's why I'm kind of
5:16:385 hours, 16 minutes, 38 secondscoding and coding and coding and also giving you the code for a lot of files.
5:16:425 hours, 16 minutes, 42 secondsSo you can just use that right away that you can grab from the uh GitHub repo.
5:16:475 hours, 16 minutes, 47 secondsLink is available in the description instead of me writing every single file and line by line and uh I will take care
5:16:565 hours, 16 minutes, 56 secondsof those sort of things in the next videos. But for this project, I guess I want to just make sure that it gets
5:17:045 hours, 17 minutes, 4 secondscompleted as soon as possible. All right. So, the next thing that we're going to work on is the editor route
Chapter 6: Project editor
5:17:105 hours, 17 minutes, 10 secondsshell. And goal for this one would be full screen editor route outside dashboard shell. And for that, I'm going
5:17:195 hours, 17 minutes, 19 secondsto go to my code editor. And in there, I'm going to collapse everything. I'm going to go to the app then app and then
5:17:275 hours, 17 minutes, 27 secondsin there I'm going to go to uh I have this I'm going to create a new folder here
5:17:365 hours, 17 minutes, 36 secondsthat is going to be projects and then in there I have a new folder that's going to be
5:17:455 hours, 17 minutes, 45 secondsthese square brackets and I'm going to say workspace slug and then in there I have
5:17:525 hours, 17 minutes, 52 secondsanother new folder which is going to be project slug and then in there I have a new file
5:17:595 hours, 17 minutes, 59 secondswhich is going to be page.tsx tsx and if I say rfcee page, let me format and save. And if I
5:18:075 hours, 18 minutes, 7 secondsgo back here, refresh and let me hide this one. If I click on
5:18:165 hours, 18 minutes, 16 secondsthis one, my test app, it's going to take me to that. So here we have app
5:18:235 hours, 18 minutes, 23 secondsprojects, uh this workspace slug, and then the project slug.
5:18:305 hours, 18 minutes, 30 secondsThen we have finally page.tsx. All right.
5:18:345 hours, 18 minutes, 34 secondsAnd it seems like we Okay. So, we missed something. And if I go here. Yeah, I'm going to need to rename that. And that
5:18:435 hours, 18 minutes, 43 secondsshould contain the square brackets as well. So, we have Yes. So, we have workspace slug and we have project slug.
5:18:525 hours, 18 minutes, 52 secondsAnd then we have page.tsx. And let me just format everything and save everything. Let's go back here. Refresh.
5:19:015 hours, 19 minutes, 1 secondAnd there you go. We have our page. And that's coming from that. If we go back here, and now we need to edit this page.
5:19:105 hours, 19 minutes, 10 secondsI'm going to get rid of everything. And I'm going to get note found from next navigation. Also redirect from next
5:19:185 hours, 19 minutes, 18 secondsnavigation. Then I'm going to need get cached session.
5:19:255 hours, 19 minutes, 25 secondsThere you go. also going to need a get app tier and also get user billing
5:19:345 hours, 19 minutes, 34 secondsfields and also get project by slug. There you go.
5:19:445 hours, 19 minutes, 44 secondsHere I have this type project page props is equal to this type where we
5:19:525 hours, 19 minutes, 52 secondshave params is equal to promise
5:19:575 hours, 19 minutes, 57 secondsand here I'm going to say workspace slug that's going to be a string then we have
5:20:055 hours, 20 minutes, 5 secondsproject slug that's also going to be a string let me format and save that
5:20:135 hours, 20 minutes, 13 secondsand that Should be it. Promise. There you go. And then after that here I have
5:20:205 hours, 20 minutes, 20 secondsexport default async function project page. This is going to take a
5:20:295 hours, 20 minutes, 29 secondsparams which is going to be type of project page props. Open function body
5:20:355 hours, 20 minutes, 35 secondshere. And we have con session is equal to await get cached session. Then we
5:20:445 hours, 20 minutes, 44 secondshave const user id which is going to be equal to session dot user dot id. Hold on.
5:20:545 hours, 20 minutes, 54 secondsID. There you go. Let me format and save. And now here I'm going to say if user ID does not exist then I'm going to
5:21:035 hours, 21 minutes, 3 secondsredirect slash question mark o-ash login
5:21:105 hours, 21 minutes, 10 secondso equals login amp% call back url equal to / app. Let me
5:21:185 hours, 21 minutes, 18 secondsformat and save. And here now I have if
5:21:245 hours, 21 minutes, 24 secondsprocess env URL
5:21:325 hours, 21 minutes, 32 secondsdoes not exist. In that case we're going to say not found.
5:21:385 hours, 21 minutes, 38 secondsAll right. And then after that here I'm going to say const workspace slug also project slug is
5:21:475 hours, 21 minutes, 47 secondsgoing to be coming from equal to await params. There you go. Const project is
5:21:565 hours, 21 minutes, 56 secondsequal to await project slug.
5:22:035 hours, 22 minutes, 3 secondsOkay. workspace slug work space slug and then project slug expected okay yes
5:22:105 hours, 22 minutes, 10 secondscomma and then here we have await get project by slugs and here I'm going
5:22:175 hours, 22 minutes, 17 secondsto say user id then also workspace slug then also project slug let me format and
5:22:265 hours, 22 minutes, 26 secondssave and then after that here I'm going to say if project is not found then we're going to
5:22:355 hours, 22 minutes, 35 secondssay not found here as well. Awesome. And then finally here I'm going to have a
5:22:445 hours, 22 minutes, 44 secondsreturn and actually before that I have const billing user is equal to await get
5:22:545 hours, 22 minutes, 54 secondsuser billing fields and I'm going to provide user ID there and for this return here I'm going to uh return a
5:23:035 hours, 23 minutes, 3 secondscomponent that we do not have yet but we're going to work on that in a minute.
5:23:085 hours, 23 minutes, 8 secondsSo first of all I'm going to say project editor that's the component and that's
5:23:155 hours, 23 minutes, 15 secondsgoing to take a few components a few props. So for that we have a project and I'm going to say it's going to be project.
5:23:245 hours, 23 minutes, 24 secondsThen we have a app tier and that's going to be we have get app
5:23:345 hours, 23 minutes, 34 secondstier and I'm going to add billing user. There you go. So that's that. And of course now we need to create this
5:23:425 hours, 23 minutes, 42 secondsproject editor component in order to make sure that that get displays here.
5:23:485 hours, 23 minutes, 48 secondsAnd uh I don't know why this keeps this takes a lot more time to load for some reason but we will get to that. And
5:23:565 hours, 23 minutes, 56 secondsright now we have this error which will be fixed once we do have this component.
5:24:025 hours, 24 minutes, 2 secondsNow before I work on the project editor I would like to create a actually let me
5:24:105 hours, 24 minutes, 10 secondsput this to comment so that error is gone. And now let me create a new file inside lib. Then we have actions.
5:24:195 hours, 24 minutes, 19 secondsThere's going to be this new file RT effects.ts.
5:24:245 hours, 24 minutes, 24 secondsAnd let me give you this little code here for that. And let me explain that what is happening. Basically, this
5:24:315 hours, 24 minutes, 31 secondsshould be lib here. Let me format and save. First of all, we're bringing rm then relative path from next cache. Get
5:24:405 hours, 24 minutes, 40 secondscache session also. We already have that. And we are bringing all of these imports that we do have existing in this
5:24:485 hours, 24 minutes, 48 secondsworkspace that we already have in this codebase. Then there's this edit editable project select and we have
5:24:585 hours, 24 minutes, 58 secondsid slug workspace and then count for that each we have created this object.
5:25:045 hours, 25 minutes, 4 secondsWe have async function remove artifact from disk and for that takes a project ID and artifact slug and then removes
5:25:125 hours, 25 minutes, 12 secondsthat. And then we have async function unique artifact slug that also takes a project ID and base and then we are
5:25:225 hours, 25 minutes, 22 secondsusing slugify here in order to u assign that to the candidate. And then we have
5:25:295 hours, 25 minutes, 29 secondsthis while loop here where we have this Prisma code where we're going to look for that specific artifact. And uh after
5:25:385 hours, 25 minutes, 38 secondsthat here we have export async function create artifact action and that is very important as that is going to be used uh
5:25:475 hours, 25 minutes, 47 secondswe basically have a Prisma artifact that a Prisma code basically that is going to
5:25:535 hours, 25 minutes, 53 secondscreate that artifact in the database and then we have delete artifact action and after that
5:26:025 hours, 26 minutes, 2 secondswe have also select active artifact act preference action. That's all basically
5:26:095 hours, 26 minutes, 9 secondsis we are uh for the initial part of for each function initially we are making sure that the user is logged in and and
5:26:185 hours, 26 minutes, 18 secondsor not and then we are running our checks if the user is logged out or guest user or something like that then we redirect user to something else or we
5:26:265 hours, 26 minutes, 26 secondsjust return out of that function and once we make sure that everything exists a project the user and everything then
5:26:335 hours, 26 minutes, 33 secondswe do the Prisma and we find that and we do If that is there of of course wonderful otherwise we also add that
5:26:425 hours, 26 minutes, 42 secondsspecific information to the database as per the need. So that's pretty much it for that one. I'm going to close this
5:26:495 hours, 26 minutes, 49 secondsfile. Now one another file that I would like to create now is inside this
5:26:575 hours, 26 minutes, 57 secondsprojects and then we have here I'm going to create a new file which is going to be loading.tsx tsx and I'm going to import global loading.
5:27:095 hours, 27 minutes, 9 secondsThere you go. And then here I'm going to say export default function loading. And here we
5:27:185 hours, 27 minutes, 18 secondshave return global loading and I'm going to provide theme
5:27:255 hours, 27 minutes, 25 secondswhich is going to be app. Then we make sure that it's a full screen. Let me format and save. And that's done. And
5:27:325 hours, 27 minutes, 32 secondsnow finally I'm going to collapse everything and I'm going to go to the components. Then I'm going to go to the
5:27:385 hours, 27 minutes, 38 secondsapp and here we have a new folder editor. And in there I'm going to create
5:27:475 hours, 27 minutes, 47 secondsa new file which is going to be project dash editor.tsx.
5:27:545 hours, 27 minutes, 54 secondsThat is going to be a client component.
5:27:575 hours, 27 minutes, 57 secondsAnd then we have a use call back also use effect also use memo and also use
5:28:075 hours, 28 minutes, 7 secondsstate. After that, I'm going to need a few a few more imports. But for that,
5:28:145 hours, 28 minutes, 14 secondsI'm going to go to the lib and then I'm going to go to the agent. And in here, I have a new file
5:28:225 hours, 28 minutes, 22 secondswhich is going to be agent dash activity activ
5:28:315 hours, 28 minutes, 31 secondsthere you go. TS and in there I have this code. So basically we have one type
5:28:385 hours, 28 minutes, 38 secondsagent activity is working boolean artifact ID and then we have idle agent
5:28:455 hours, 28 minutes, 45 secondsactivity and then that's a type this one and then we have this object then we
5:28:525 hours, 28 minutes, 52 secondshave file name from agent path which takes the path as a string and then it split using slash and then we have
5:29:005 hours, 29 minutesdifferent returns in segments. There you go. And then we have artifact slug from
5:29:075 hours, 29 minutes, 7 secondsagent path which also takes a path split. And then we have is agent working
5:29:145 hours, 29 minutes, 14 secondson artifact function. And then we have is agent working on file. And that is
5:29:215 hours, 29 minutes, 21 secondsgoing to be used here. So I'm going to say idle agent activity and also
5:29:305 hours, 29 minutes, 30 secondsI'm going to import type agent activity. There you go.
5:29:395 hours, 29 minutes, 39 secondsImport type app project detail. There you go. And then we're going to need
5:29:475 hours, 29 minutes, 47 secondsimport type app tier. And then we are going to need set active artifact preferences action and then use toast.
5:30:025 hours, 30 minutes, 2 secondsThen we're going to need here a type. So for that I'm going to say project
5:30:085 hours, 30 minutes, 8 secondseditor props is equal to this where we have project
5:30:155 hours, 30 minutes, 15 secondsapp project detail then app tier and this is going to be app tier. Let me
5:30:235 hours, 30 minutes, 23 secondsformat and save. And this app tier is going to be this app tier
5:30:315 hours, 30 minutes, 31 secondswith a capital A. Awesome. Afterwards, we have a function. I'm going to say get
5:30:375 hours, 30 minutes, 37 secondsinitial active artifact ID. That's going to take a project and app
5:30:465 hours, 30 minutes, 46 secondsproject detail and then open function body. And
5:30:535 hours, 30 minutes, 53 secondshere we have const saved is equal to project dot last active artifact ID. And
5:31:025 hours, 31 minutes, 2 secondsI'm going to say if saved is there and project dot project dot artifacts
5:31:115 hours, 31 minutes, 11 secondsdot sum artifact and artifact do ID is equal to saved
5:31:205 hours, 31 minutes, 20 secondsthen we have return saved let me format and save and after this if statement here I'm
5:31:275 hours, 31 minutes, 27 secondsgoing to say return project.artifact artifacts and I'm going to select the first one if that exists of course then
5:31:375 hours, 31 minutes, 37 secondsID from there otherwise we simply have null that we are returning from this
5:31:445 hours, 31 minutes, 44 secondscome on let me format and save there you go and now after that we have a function
5:31:515 hours, 31 minutes, 51 secondsget initial preview version project that's going to be app Project detail. Open that.
5:32:055 hours, 32 minutes, 5 secondsConstant messages is equal to project dot messages dot filter.
5:32:165 hours, 32 minutes, 16 secondsAnd here we have message to each. I'm going to say message dot roll is equal
5:32:235 hours, 32 minutes, 23 secondsto assistant. Let me format and save that. And then after that here I have con last
5:32:325 hours, 32 minutes, 32 secondsassistant is equal to assistant message dot at minus one. And there you go. Here
5:32:415 hours, 32 minutes, 41 secondswe have if last assistant is there then we get the metadata from that. And if
5:32:485 hours, 32 minutes, 48 secondsthat metadata is there then we get the preview version from there. And if that is true then we return a last assistant
5:32:585 hours, 32 minutes, 58 secondsdo metadata dot preview version. There you go.
5:33:045 hours, 33 minutes, 4 secondsAfter this if statement I'm going to say const active slug is equal to project dot artifacts
5:33:135 hours, 33 minutes, 13 secondsget this 01 and here we have dot slug and I'm going to say if active slug
5:33:235 hours, 33 minutes, 23 secondsthere you go is not available then we simply return zero
5:33:305 hours, 33 minutes, 30 secondsand here we have turn project dot files
5:33:385 hours, 33 minutes, 38 secondsdot filter we have individual file and then I'm going to say file dotpath
5:33:475 hours, 33 minutes, 47 secondsdot starts with and here I'm going to have a active
5:33:565 hours, 33 minutes, 56 secondsslug and then after that here I'm going to add a slash let me format and save that.
5:34:055 hours, 34 minutes, 5 secondsAnd then at the very bottom, I'm going to say dotlength. There you go. Done.
5:34:115 hours, 34 minutes, 11 secondsNext up here, I'm going to create another export function project editor,
5:34:195 hours, 34 minutes, 19 secondswhich expects a project and app tier.
5:34:245 hours, 34 minutes, 24 secondsIt's going to be a type of project editor props.
5:34:295 hours, 34 minutes, 29 secondsThere you go. function body and we have this code basically a store where we
5:34:375 hours, 34 minutes, 37 secondshave error toast error we're getting the our toast then we have a use state for the library open and set artifacts and
5:34:455 hours, 34 minutes, 45 secondsset for the use state then another use state for the files and set files we have a couple of uh you see we basically
5:34:535 hours, 34 minutes, 53 secondswe have this store and then we have this use memo for the editor project and then we have this function for the handle preview view version change
5:35:025 hours, 35 minutes, 2 secondsit's going to use call back and on delta which is going to be number and then current change that to current plus
5:35:095 hours, 35 minutes, 9 secondsdelta something like that with a empty dependency array.
5:35:145 hours, 35 minutes, 14 secondsNext up here after that I have another function basically a use call back sync project files and then here we have try
5:35:245 hours, 35 minutes, 24 secondsand cach block cach block is empty of course and then in the try we take the response we fetch API projects then the
5:35:315 hours, 35 minutes, 31 secondsproject id/files and then here if the response is not okay we simply return out of this use
5:35:385 hours, 35 minutes, 38 secondscallback function otherwise we have the data that we already await from the response do.json as the files here as
5:35:475 hours, 35 minutes, 47 secondsthis object and then we eventually set files that we have in the store here and
5:35:535 hours, 35 minutes, 53 secondsdata do files and of course here we have nothing and after that I'm going to say use effect and here we have this
5:36:025 hours, 36 minutes, 2 secondsfunction and as a dependency for that I'm going to add project ID and I'm going to open
5:36:115 hours, 36 minutes, 11 secondsthe function here I'm going to say if preview version is equal to zero then we
5:36:195 hours, 36 minutes, 19 secondssimply return and then here I'm going to say set time out and here I have this where
5:36:295 hours, 36 minutes, 29 secondsthe time out just 10 milliseconds and I'm going to say void sync project files
5:36:375 hours, 36 minutes, 37 secondsproject files there you go and that's pretty much it
5:36:445 hours, 36 minutes, 44 secondsfor the dependency for this one. I guess uh yeah, this should not be the case.
5:36:505 hours, 36 minutes, 50 secondsBut there I should add preview version and also sync project files. There you
5:36:575 hours, 36 minutes, 57 secondsgo. Now it's done. After that here I'm going to have a const persist
5:37:065 hours, 37 minutes, 6 secondsactive artifact is equal to use call back use call back and here
5:37:165 hours, 37 minutes, 16 secondswe have this function and in the first arguments parenthesis here I'm going to
5:37:235 hours, 37 minutes, 23 secondsadd RT fact id which is going to be a string and now in there I'm going going to say
5:37:315 hours, 37 minutes, 31 secondsvoid set active artifact preference action and here I'm going to provide project do ID and also artifact
5:37:405 hours, 37 minutes, 40 secondsid and um here I'm going to add project id
5:37:475 hours, 37 minutes, 47 secondsas a dependency array that's it next up after that we have a couple of more functions first that we have handle
5:37:575 hours, 37 minutes, 57 secondsartifact change uh as use call back. And then second we have handle agent activity change. And
5:38:055 hours, 38 minutes, 5 secondsfinally here we have handle agent run complete. And uh we have a few issues here.
5:38:145 hours, 38 minutes, 14 secondsPersist active artifact and uh change spelling to persist. Okay.
5:38:225 hours, 38 minutes, 22 secondsSeems like persist.
5:38:345 hours, 38 minutes, 34 secondsSo basically persist.
5:38:395 hours, 38 minutes, 39 secondsYep. Team is missing. Persist active artifact. Yes. All right. That's been resolved. And now after that here I'm
5:38:495 hours, 38 minutes, 49 secondsgoing to have a return for this one.
5:38:545 hours, 38 minutes, 54 secondsI'm going to create a div here and to that I'm going to give a class name.
5:38:585 hours, 38 minutes, 58 secondsThese are the classes and here first of all we're going to have a editor top
5:39:065 hours, 39 minutes, 6 secondsbar. That's the component. Then after that we're going to need for now I'm just going to say editor top bar. There
5:39:155 hours, 39 minutes, 15 secondsyou go. Then we're going to need another div. And to that div here, I'm going to add some class names. Flex minimum
5:39:245 hours, 39 minutes, 24 secondsheight zero and flex one. That includes a library
5:39:325 hours, 39 minutes, 32 secondssidebar. That's another component that we are going to build.
5:39:375 hours, 39 minutes, 37 secondsAnd after that here, actually let me put library sidebar. There you go.
5:39:485 hours, 39 minutes, 48 secondstop bar. And after that, we're going to need one another div. And I'm going to
5:39:545 hours, 39 minutes, 54 secondssay class name flex minimum width zero and flex one. And that's going to be
5:40:065 hours, 40 minutes, 6 secondsagent panel and p agent
5:40:145 hours, 40 minutes, 14 secondspanel. And then after that, we're going to need a preview panel and P.
5:40:265 hours, 40 minutes, 26 secondsThere you go. Let me format and save.
5:40:295 hours, 40 minutes, 29 secondsAnd that's pretty much it for this component basically. So we're again left with one, two, three, and four
5:40:375 hours, 40 minutes, 37 secondscomponents that we need to create. And before that if I go there refresh
5:40:475 hours, 40 minutes, 47 secondsthe loading is there and it's just an empty screen now okay and the reason for that is because if we go there
5:40:565 hours, 40 minutes, 56 secondsthis needs to be come back and here if I click on that add import format and save
5:41:025 hours, 41 minutes, 2 secondslet's go back and there you go loading and there you go we have editor toolbar
5:41:095 hours, 41 minutes, 9 secondswe We have library sidebar. Then we have agent panel preview and everything there.
5:41:185 hours, 41 minutes, 18 secondsAll right. So now we need to get started working on the top bar. And for that I'm going to get back here and I'm going to
5:41:265 hours, 41 minutes, 26 secondsgo and create that file inside components app. And then here we have
5:41:325 hours, 41 minutes, 32 secondseditor. I'm going to click create editor dashtopar.tsx
5:41:445 hours, 41 minutes, 44 secondsclient component and then we have a link. We also have use router. We also
5:41:525 hours, 41 minutes, 52 secondshave from not next router but navigation.
5:41:565 hours, 41 minutes, 56 secondsThen we need use effect, use state, use transition. And then we
5:42:045 hours, 42 minutes, 4 secondshave batch button also confirm dialogue
5:42:135 hours, 42 minutes, 13 secondsalso icon button also select and also I'm going to need use toast.
5:42:235 hours, 42 minutes, 23 secondsI'm going to also need move project to trash action. Also going to
5:42:315 hours, 42 minutes, 31 secondsneed import type appear.
5:42:385 hours, 42 minutes, 38 secondsThen also going to need import type app
5:42:455 hours, 42 minutes, 45 secondsproject detail. And then I'm going to need import type app. Nope. Publish visibility.
5:42:575 hours, 42 minutes, 57 secondsThen I'm going to need focus visibility ring styles and CN here. There you go.
5:43:045 hours, 43 minutes, 4 secondsAnd and then after that here I'm going to need all of these
5:43:125 hours, 43 minutes, 12 secondsSVG files. So basically we have a back icon, more icon, we have home icon,
5:43:225 hours, 43 minutes, 22 secondsprojects and trash icon and finally external link icon.
5:43:305 hours, 43 minutes, 30 secondsAll right, let me format and save that.
5:43:365 hours, 43 minutes, 36 secondsNow here I'm going to give you this code where we have editor toolbar props project apt here on publish which is a
5:43:455 hours, 43 minutes, 45 secondsfunction and then we have this uh array where we have two objects uh link menu
5:43:515 hours, 43 minutes, 51 secondsitems and then we have back to top and all projects. All right. After that here
5:43:585 hours, 43 minutes, 58 secondswe have export function editor top bar and in there we have project
5:44:085 hours, 44 minutes, 8 secondsappear and on published which is going to be type of editor top bar props
5:44:175 hours, 44 minutes, 17 secondsfunction body and here we have our store and our variables. First of
5:44:245 hours, 44 minutes, 24 secondsall where we have router success for coming from the toast we have menu open set menu open trash dialogue open set
5:44:335 hours, 44 minutes, 33 secondsvisibility set is pending transition is published start and is pro there you go
5:44:415 hours, 44 minutes, 41 secondsafter that here I'm going to say use effect and here we have this function as
5:44:495 hours, 44 minutes, 49 secondsa dependency I'm going to add project dot deployment if that exists then we get
5:44:565 hours, 44 minutes, 56 secondsvisibility out of that and here we have set time out and we have only 10 here open that and
5:45:065 hours, 45 minutes, 6 secondsI'm going to say set visibility which is going to be project deployment and then I'm going to get
5:45:135 hours, 45 minutes, 13 secondsvisibility otherwise it's going to be private let me format and save that
5:45:205 hours, 45 minutes, 20 secondsafter that here we have two more use effect functions. So in the first one we have we're checking if the user is not
5:45:295 hours, 45 minutes, 29 secondspro and also the visibility is not equal to private then we set time set visibility to private and then we have
5:45:385 hours, 45 minutes, 38 secondsuse effect again then menu if the menu uh open is not true then we simply return and uh in case of escape we close
5:45:485 hours, 45 minutes, 48 secondsthat menu and eventually on the uh component dismount we remove that event listener for that menu open.
5:45:595 hours, 45 minutes, 59 secondsAnd after that here we have these two functions. Handle move to trash click where we set menu open to false and set
5:46:095 hours, 46 minutes, 9 secondstrash dialogue open to true. And then we have handle confirm move to trash where we have start transition async function.
5:46:185 hours, 46 minutes, 18 secondsWe get the result of it from move project to trash action that we created a few minutes ago. And then we have
5:46:255 hours, 46 minutes, 25 secondsresult and error. And then if the I mean if the error is there then we toast error we display that error. Otherwise
5:46:325 hours, 46 minutes, 32 secondswe just simply set trans trash dialog open to false and we success and router. push into the projects and router.
5:46:415 hours, 46 minutes, 41 secondsRefresh. And I guess that's pretty much it for this one. And now here I'm going
5:46:485 hours, 46 minutes, 48 secondsto say actually this and let me check what's this.
5:46:565 hours, 46 minutes, 56 secondsOkay, we're good. So here I'm going to say con is published is equal to boolean
5:47:045 hours, 47 minutes, 4 secondswhere we have project dot deployment format and save. Then here we have return in which we have a header tag.
5:47:155 hours, 47 minutes, 15 secondsI'm going to give it a class name all of these classes for that open that we have a div class name flex minimum width
5:47:255 hours, 47 minutes, 25 secondszero we have items center and we have gap of two items center there you go open that div and
5:47:335 hours, 47 minutes, 33 secondshere we have link I'm going to give it an hf which is going to be slash app and
5:47:405 hours, 47 minutes, 40 secondsthen we have a class name there you go and then in the link we have a back icon
5:47:495 hours, 47 minutes, 49 secondsand that's pretty much it. After that, we put this here and I guess now we are ready to use this inside our project. So
5:47:585 hours, 47 minutes, 58 secondshere instead of this I'm going to display this and I'm going to
5:48:065 hours, 48 minutes, 6 secondseditor top bar. There you go. Format and save.
5:48:125 hours, 48 minutes, 12 secondsAnd now here I'm going to give it a project which is going to be editor project.
5:48:175 hours, 48 minutes, 17 secondsThen we have app tier. I'm going to provide it app tier. And then we have on publish list. So for that I'm going to
5:48:265 hours, 48 minutes, 26 secondssay next deploy. Nope. Uh a function call back. And here we have set
5:48:355 hours, 48 minutes, 35 secondsdeployment. I'm going to set that to next deploy.
5:48:405 hours, 48 minutes, 40 secondsHold on. here. Let me put that next deployment. And that next deployment is
5:48:485 hours, 48 minutes, 48 secondsgoing to be used here. Let me format and save. And that's done. And now if we go here, refresh,
5:48:575 hours, 48 minutes, 57 secondsit's loading. And there you go. We have this little button here. Fantastic.
5:49:015 hours, 49 minutes, 1 secondLet's go back. Go to this screen. And after this link here, we have a few other elements. So I'm going to give you
5:49:105 hours, 49 minutes, 10 secondsthat there. So let me explain. So after that link here we have a span tag a few classes simple. Then we have another
5:49:195 hours, 49 minutes, 19 secondslink for the projects. A few classes project. Then another there's I think this is going to be displayed as a
5:49:295 hours, 49 minutes, 29 secondsuh breadcrumbs. There you go. And project slash my test app. Then this is a draft. And that is the button batch
5:49:385 hours, 49 minutes, 38 secondsfor the draft or published. Awesome. Now after that I'm going to get under this div and create another div. I'm going to
5:49:465 hours, 49 minutes, 46 secondsgive it a class name flex shrink zero items dash center and gap of two. Open that div. And here first of all we have
5:49:545 hours, 49 minutes, 54 secondsthis select where we have value visibility on change. We are setting the set visibility to as uh I mean event
5:50:035 hours, 50 minutes, 3 secondstarget value as publish visibility area label theme we have options if if that is not pro then we say pro otherwise
5:50:115 hours, 50 minutes, 11 secondsjust empty workspace only and let me format and save let's go back here and there you go only you and these are not
5:50:205 hours, 50 minutes, 20 secondsthere because it this user is not pro only you awesome let's get back and
5:50:285 hours, 50 minutes, 28 secondsafter they select here I'm going to give you this code where we have if the user is node pro then we have a link app
5:50:355 hours, 50 minutes, 35 secondsbilling upgrade for public publish I'm going to format and save that let's go back and there you go this is the link
5:50:445 hours, 50 minutes, 44 secondsfor that upgrade for public publish awesome and let's get back here after
5:50:525 hours, 50 minutes, 52 secondsthis link here we have a button I'm going Give it a variant which is going to be primary
5:51:015 hours, 51 minutes, 1 secondand then we have a size which is going to be small team app. Then we have on click which is going to be handle
5:51:105 hours, 51 minutes, 10 secondsactually we can leave the on click for now and we have disabled and for that we have is
5:51:205 hours, 51 minutes, 20 secondspublishing is published. Nope. Sorry. Is publishing. It should be is publishing.
5:51:275 hours, 51 minutes, 27 secondsLet me check. Yep, there you go.
5:51:375 hours, 51 minutes, 37 secondsAnd now I'm going to come inside that button. And here we have is publishing.
5:51:445 hours, 51 minutes, 44 secondsThen we have let me bring this down.
5:51:475 hours, 51 minutes, 47 secondsThen it's going to say publishing dot and otherwise it's going to be if it's
5:51:545 hours, 51 minutes, 54 secondsgoing to check if published already then it's going to be saying rep
5:52:045 hours, 52 minutes, 4 secondspublish and otherwise publish something like that. Let's go there and check. There you go. We have a
5:52:125 hours, 52 minutes, 12 secondspublish and I would like to change that a little bit. So this our underline accent blue
5:52:205 hours, 52 minutes, 20 secondstext white. Let me format and save that. Yeah, this looks good.
5:52:285 hours, 52 minutes, 28 secondsAll right. Upgrade and upgrade.
5:52:335 hours, 52 minutes, 33 secondsSimple. Let's keep it simple. Let's go back. And yeah, it looks good. We have publish here. Upgrade here. And uh our
5:52:425 hours, 52 minutes, 42 secondstop bar seems to be working really really good. And now after that button
5:52:485 hours, 52 minutes, 48 secondshere we have a code block. So basically this is this is going to be displayed
5:52:565 hours, 52 minutes, 56 secondswhen something is published as that is not going to be displayed here now. You will be able to see that later. So when
5:53:045 hours, 53 minutes, 4 secondssomething is published and project deployment is true then we have this link to basically see that project as
5:53:125 hours, 53 minutes, 12 secondsview live. So basically if I can just get rid of this code block and we have
5:53:195 hours, 53 minutes, 19 secondsproject.deployment URL. Go back. We have this error. Let me change that to something like hash for
5:53:295 hours, 53 minutes, 29 secondsnow. Save that. Let's go back. Refresh.
5:53:345 hours, 53 minutes, 34 secondsWe still have that error. Yep, there you go. That's going to go now. Let's go back. And there you [snorts] go. This is
5:53:435 hours, 53 minutes, 43 secondsthe view live button, but that is only going to be displayed when something is published. I'm going to undo here a few times.
5:53:525 hours, 53 minutes, 52 secondsAnd we're good. Let me format and save. And we're ready to move on.
5:53:575 hours, 53 minutes, 57 secondsAnd after that, now here we have this div. Let me format that. So basically in that div we have this class name
5:54:065 hours, 54 minutes, 6 secondsrelative. Then we're checking if the menu open is true. Then we have this button to set menu open false. This is
5:54:135 hours, 54 minutes, 13 secondsbasically to close menu. Then and if the menu is open then this is the menu itself where we have a few links a button and at the end we are displaying
5:54:225 hours, 54 minutes, 22 secondsan icon button there as well. Let me format and save. Let's go back there.
5:54:275 hours, 54 minutes, 27 secondsAnd there you go. If you click on that, that's the menu. Back to uh back to talk uh back to app. All projects, move to
5:54:355 hours, 54 minutes, 35 secondstrash. All these live here in this menu, which is fantastic. So with that, we can
5:54:435 hours, 54 minutes, 43 secondshappily move after the app here. And here, of course, we're going to have a confirm dialogue.
5:54:525 hours, 54 minutes, 52 secondsThere you go. Something like that.
5:54:565 hours, 54 minutes, 56 secondsSo I'm going to give you that dialogue here now. Something like that. And make sure that this whole thing is a part of
5:55:055 hours, 55 minutes, 5 secondsthe empty fragment. Something that way. There you go. Confirm dialogue
5:55:125 hours, 55 minutes, 12 secondsopen and all that. So now if I go there, refresh.
5:55:205 hours, 55 minutes, 20 secondsAnd if I click there, move to trash.
5:55:225 hours, 55 minutes, 22 secondsThere you go. That's our confirm dialogue. We have the icon move to trash title. Little text here and the name of the project that's going to go away.
5:55:335 hours, 55 minutes, 33 secondsThen we have confirm button and cancel button. I'm going to cancel for now and we can move on.
5:55:425 hours, 55 minutes, 42 secondsNow one thing that I would like to do further before I move on to the next component is to make sure that we are
5:55:505 hours, 55 minutes, 50 secondscompletely done with this file with this component and only thing left so far is the server
5:55:565 hours, 55 minutes, 56 secondsaction. So I'm going to go to the lip folder actions and in there I have a new
5:56:035 hours, 56 minutes, 3 secondsfile. I'm going to name it publish.ts and in there we have this code. Let me explain. First of all, we're making sure
5:56:125 hours, 56 minutes, 12 secondsthat this is a server component. We're bringing revalidated path also Z from zod and get cached from our cache file.
5:56:205 hours, 56 minutes, 20 secondsAll of these imports from our pre-existing uh pre-existing components that we already have. All right. Then we
5:56:275 hours, 56 minutes, 27 secondshave publish schema where we have two things project ID and visibility.
5:56:325 hours, 56 minutes, 32 secondsProject ID is a string collector one and visibility has an enum which is going to be either private, workspace or public.
5:56:405 hours, 56 minutes, 40 secondsThen we have publish project action and in there we have session we're checking we're making sure that we have the user
5:56:475 hours, 56 minutes, 47 secondswe also have the session if the user is not there or the session is not there then we redirect the user or we return out of this with an error something like
5:56:545 hours, 56 minutes, 54 secondsthat then we also get that here and we also check if the user can publish visibility based on the I mean if the
5:57:025 hours, 57 minutes, 2 secondsuser is not pro then he cannot publish public so things like that and then we eventually have this project here that
5:57:095 hours, 57 minutes, 9 secondswe get accessible project with the project ID and user ID and we have this little object for that and if the
5:57:165 hours, 57 minutes, 16 secondsproject is not available then we do this error then [snorts] we also check the files for that and artifact paths and
5:57:245 hours, 57 minutes, 24 secondsartifact files count and everything and we basically have these different checks for everything and based on that we throw different errors for each and
5:57:325 hours, 57 minutes, 32 secondseverything and then at the very bottom here eventually we create a tx.deployment deployment.create
5:57:405 hours, 57 minutes, 40 secondsthat's the data for that and once that is done updated to the database then we rewate path with the app projects app
5:57:485 hours, 57 minutes, 48 secondsprojects to the workspace lo and then project slug and then we have URL path and finally we return an object where we
5:57:565 hours, 57 minutes, 56 secondshave success url and visibility so now when that is done I'm going to close this file and I'm going to go to
5:58:055 hours, 58 minutes, 5 secondshere let's say and here I need function handle publish and there open
5:58:135 hours, 58 minutes, 13 secondsthat and here I have start publish transition and here I have async
5:58:205 hours, 58 minutes, 20 secondsfunction open that and I'm going to say con result is equal to
5:58:285 hours, 58 minutes, 28 secondsawait published project action import that where we provide project do ID also
5:58:355 hours, 58 minutes, 35 secondsvisibility that it expects And then after that we make sure that if
5:58:415 hours, 58 minutes, 41 secondsresult dot error is true then toast error then toast
5:58:495 hours, 58 minutes, 49 secondserror is there and then we give it result dot error and then here we have return.
5:59:005 hours, 59 minutesAfter that if statement here we have another if result dot success is true and result
5:59:095 hours, 59 minutes, 9 secondsdot URL is true and we have con deployment is equal to this object
5:59:225 hours, 59 minutes, 22 secondswhere we have URL result dot URL and we have visibility is equal to result dot
5:59:315 hours, 59 minutes, 31 secondshold on result dot visibility if that is there otherwise we have visibility then we have published
5:59:415 hours, 59 minutes, 41 secondsat pub list at and that's going to be new
5:59:495 hours, 59 minutes, 49 secondsdate dot to ISO string and then after that here we have on
5:59:595 hours, 59 minutes, 59 secondspublished that's going to be deployment
6:00:066 hours, 6 secondsand then here we have success and in the success I'm going to say visibility if that is equal to
6:00:156 hours, 15 secondspublic then we have published publicly
6:00:236 hours, 23 secondsand otherwise it's kind of if visibility is equal to workspace then it's going to say
6:00:326 hours, 32 secondspublished to workspace otherwise it's going to say
6:00:416 hours, 41 secondspublished privately let me format and save and then after this here I'm going to say router dotrefresh
6:00:516 hours, 51 secondsthere you go and now of course we need to use this handle publish function Let me get that button
6:01:016 hours, 1 minute, 1 secondonly you there. So here in that button I'm going to have let's say here I'm
6:01:096 hours, 1 minute, 9 secondsgoing to have on lick this is going to be and publish. Let me format and save
6:01:176 hours, 1 minute, 17 secondsand we are done. So this thing is done and if I go here refresh
6:01:236 hours, 1 minute, 23 secondsonly you and now if I click on publish it's
6:01:336 hours, 1 minute, 33 secondspublishing and build your project before publishing awesome so we do have these errors and
6:01:416 hours, 1 minute, 41 seconds[snorts] uh the toast and everything is working of course we need to build a project first and of course that's a long way because for that we're going to
6:01:486 hours, 1 minute, 48 secondsneed to complete the UI. Once the UI is completed, then we're going to need to work on the Enthropic SDK integrate the agent into this and once that ready, the
6:01:576 hours, 1 minute, 57 secondsproject is completed and built, then we can publish. Awesome. All right. So, the next file that we are going to work on
6:02:046 hours, 2 minutes, 4 secondsis about the indicator.
6:02:086 hours, 2 minutes, 8 secondsAnd for that, I'm going to go to our components app. And then here we have
6:02:156 hours, 2 minutes, 15 secondsour editor. And in there, this is going to be agent dash activity dash indicator.tsx.
6:02:286 hours, 2 minutes, 28 secondsIt's going to be a client component.
6:02:326 hours, 2 minutes, 32 secondsAnd I'm going to import CN, not DN, but CN. There you go. And here we have a
6:02:406 hours, 2 minutes, 40 secondstype agent activity pulse props. And here I have export
6:02:466 hours, 2 minutes, 46 secondsfunction agent activity pulse and in there we have a class name also size
6:02:546 hours, 2 minutes, 54 secondswhich is going to be equal to small by default and label which is going to be equal to agent is working
6:03:046 hours, 3 minutes, 4 secondsand then here we have agent activity pulse props and I'm going to say const
6:03:156 hours, 3 minutes, 15 secondsdot size is equal to size when that is equal to small then it's going to be
6:03:236 hours, 3 minutes, 23 secondshash-2 and width dash2 otherwise this is going to be h-2.5 and width-2.5
6:03:326 hours, 3 minutes, 32 secondslet me format and save after that we have a return and in there we have a span
6:03:406 hours, 3 minutes, 40 secondsclass name CN that's going to be relative and we have inline
6:03:486 hours, 3 minutes, 48 secondsinline dash flex also we have shrink zero and I'm going to provide dot size
6:03:566 hours, 3 minutes, 56 secondsalso last name there as well I'm also going to attach
6:04:036 hours, 4 minutes, 3 secondsro which is going to be status and then area label which is going to be label Then in the span we have another span.
6:04:146 hours, 4 minutes, 14 secondsAnd in there I'm going to have a class name CN. And that's going to be the class
6:04:216 hours, 4 minutes, 21 secondsname. There you go. And I'm going to open that span. And in there actually
6:04:296 hours, 4 minutes, 29 secondsalso to this one I'm going to add dot size. There you go. And now inside
6:04:356 hours, 4 minutes, 35 secondsthe span we have one more span which is going to be self-closing. And this one is going to be class name CN.
6:04:466 hours, 4 minutes, 46 secondsThere you go. And we have the dot size as well. Let me format and save. And
6:04:536 hours, 4 minutes, 53 secondsthat is done. After that we have one more type which is agent working badge
6:05:016 hours, 5 minutes, 1 secondprops with label and class name both strings and then that's the function agent working batch that expects a label
6:05:086 hours, 5 minutes, 8 secondsand a class name and that's the span which includes another agent activity pulse
6:05:166 hours, 5 minutes, 16 secondscomponent which we already have defined here and that's being used there. Awesome. So that's saved.
6:05:266 hours, 5 minutes, 26 secondsAnd now I'm going to create a new file here which is going to be library dash project dash files.tsx.
6:05:396 hours, 5 minutes, 39 secondsThere you go. It's going to be a client component. And then we have use call back that we're bringing. also use
6:05:476 hours, 5 minutes, 47 secondseffect also use memo and use state.
6:05:546 hours, 5 minutes, 54 secondsAfter that we have icon button. There you go. We also need artifact slug from
6:06:026 hours, 6 minutes, 2 secondsagent path. Also need is agent working on file. also need
6:06:096 hours, 6 minutes, 9 secondsimport type and this is going to be agent activity. There you go.
6:06:186 hours, 6 minutes, 18 secondsFrom the same agent activity file or we could just put that here in there. That could work as well. Then here we have
6:06:276 hours, 6 minutes, 27 secondsimport type app project detail. After that, we also
6:06:346 hours, 6 minutes, 34 secondsneed CN. And then I'm going to define a type here which is going to be project file entry is equal to this object where
6:06:436 hours, 6 minutes, 43 secondswe have this type. Awesome. Next up, we have a couple of more functions as well.
6:06:506 hours, 6 minutes, 50 secondsAnd one type library project file props. And then we have function format bytes.
6:06:566 hours, 6 minutes, 56 secondsThen another one file name from path.
6:07:006 hours, 7 minutesAnd then another one artifact slug from path. Let me format and save that. After that here I'm going to say export
6:07:086 hours, 7 minutes, 8 secondsfunction library project files. In there we need project also
6:07:186 hours, 7 minutes, 18 secondspreview version and then also agent activity and that is going to be type of library project files props. Open that.
6:07:316 hours, 7 minutes, 31 secondsAnd here we have this function and our store basically files set files loading set loading error set error use state
6:07:406 hours, 7 minutes, 40 secondsfor all of these and then we have fetch files where we are using call block and we have set loading set to true and set
6:07:496 hours, 7 minutes, 49 secondserror set to null. Then we have try and catch block. In the try we have response and we are fetching from API project
6:07:576 hours, 7 minutes, 57 secondsproject id/files and then if response is not okay we are throwing this error otherwise we have
6:08:036 hours, 8 minutes, 3 secondsthis data that we after waiting uh response.json JSON we use that as files project file entry array and then we
6:08:136 hours, 8 minutes, 13 secondseventually file set that data dot files using the set files and that saved into
6:08:196 hours, 8 minutes, 19 secondsthe files are store and then in case of catch we have fetch error and we are displaying that here eventually finally
6:08:286 hours, 8 minutes, 28 secondswe are setting the loading to false and we have as as a dependency we have projectid here and now after that here
6:08:366 hours, 8 minutes, 36 secondswe have a couple of functions more. So first of all we have a use effect. So that for that we're using uh using time
6:08:456 hours, 8 minutes, 45 secondsset time set time out where we are using fetch file size and we have these dependencies. Then we have grouped
6:08:536 hours, 8 minutes, 53 secondsfiles. We're using use memo. We have groups and then for each individual file out of those files we are doing some
6:09:016 hours, 9 minutes, 1 secondoperation on that. And then we have here agent activity.working. If that is
6:09:076 hours, 9 minutes, 7 secondstrue and also agent activity.active file path is true then we are getting the slug relative path. And if both are true
6:09:176 hours, 9 minutes, 17 secondsthen we are running this operation where we have when we are checking if existing groups do.get luck and then already
6:09:236 hours, 9 minutes, 23 secondslisted basically here and uh if already listed is not true then we have existing
6:09:316 hours, 9 minutes, 31 secondsdot unshift basically we are removing these things and then eventually we have return groups here. All right.
6:09:436 hours, 9 minutes, 43 secondsAnd now after that here I'm going to use return where I have a section. I'm going
6:09:506 hours, 9 minutes, 50 secondsto open that. I have a div. I'm going to add class name margin bottom dash two flex items center justify between gap is
6:10:006 hours, 10 minutesgoing to be two. Open that div. Have an h3 class name text dash 111 pixels. And
6:10:076 hours, 10 minutes, 7 secondsthen we have font- medium. We also have upperase here and tracking is going to
6:10:146 hours, 10 minutes, 14 secondsbe wide and then we have text- app-ext-muted and I'm going to open that where we have
6:10:226 hours, 10 minutes, 22 secondsfiles after the H3 we have this icon button where we have this refresh icon which is missing and I'm going to add
6:10:316 hours, 10 minutes, 31 secondsthose icons here now. So at the very end we have refresh icon with the SVG and we
6:10:386 hours, 10 minutes, 38 secondsalso have a file icon with a SVG. Let me format and save that. So that has been
6:10:466 hours, 10 minutes, 46 secondsadded there. And now after this div here. All right. So now after this div here I'm going to have a P tag as well
6:10:546 hours, 10 minutes, 54 secondsas this conditional P tag. So in the first one we simply have just some text
6:11:006 hours, 11 minutesand a span and some text again and then we have if we are checking when it's
6:11:066 hours, 11 minutes, 6 secondsloading and files.length is equal to zero only then we are displaying loading
6:11:146 hours, 11 minutes, 14 secondsfiles. Simple let me format and save that.
6:11:206 hours, 11 minutes, 20 secondsAnd let me add these two conditional code blocks here as well. So this one we are checking if there is an error then
6:11:286 hours, 11 minutes, 28 secondswe're displaying this P tag with the replet text or text replete orange text uh color and there's this error
6:11:356 hours, 11 minutes, 35 secondsotherwise just it's going to be null and we are checking if when it's not loading also there's no error and project dot
6:11:436 hours, 11 minutes, 43 secondssize f project file dot size is equal to zero then we have generated source files will appear here as agent builds your
6:11:526 hours, 11 minutes, 52 secondsproject basically these Few texts are conditional. They display depending on a different situation and you will get to
6:12:006 hours, 12 minutessee them in action when we get to the agent.
6:12:056 hours, 12 minutes, 5 secondsAll right. Now after that here I have this div and in there we have a class name space-y
6:12:146 hours, 12 minutes, 14 secondsdash4. There you go. Open that div. And here we have dot dot dot group files.n
6:12:236 hours, 12 minutes, 23 secondsentries and on that we are running a loop I mean a map and then in there we
6:12:316 hours, 12 minutes, 31 secondshave another array and that array is going to hold
6:12:366 hours, 12 minutes, 36 seconds[snorts]
6:12:386 hours, 12 minutes, 38 secondsartifact slug artifact slug also artifact files
6:12:486 hours, 12 minutes, 48 secondsyou got these two things this should be artifact
6:12:556 hours, 12 minutes, 55 secondsslug something like that and then we are going to run our arrow function
6:13:026 hours, 13 minutes, 2 secondsthere you go and of course here first of all we need a return and before that here I'm going to need a const artifact
6:13:116 hours, 13 minutes, 11 secondsis equal to project dot artifacts dotfind
6:13:186 hours, 13 minutes, 18 secondsdotfind and here we have item and then on each individual item
6:13:256 hours, 13 minutes, 25 secondsdot slug is equal to artifact slug. There you go. And now here in the return we have a div.
6:13:386 hours, 13 minutes, 38 secondsI'm going to add some classes to that.
6:13:416 hours, 13 minutes, 41 secondsActually no, there's no need for the classes. I'm going to add a key for this one only. That is going to be artifact
6:13:486 hours, 13 minutes, 48 secondsslug. And then here we have an H4 with these classes. And that H4 is going
6:13:566 hours, 13 minutes, 56 secondsto display artifact artifact.
6:14:046 hours, 14 minutes, 4 secondsIf that is there, then we get the name from there. Otherwise, it's going to be artifact slug. Let me format and save.
6:14:126 hours, 14 minutes, 12 secondsAfter the H4, we have a ul here. I'm going to give it a class name space y-1
6:14:196 hours, 14 minutes, 19 secondsopen that ul and there we have artifact files.m map and on that we run an iteration for each individual.
6:14:316 hours, 14 minutes, 31 secondsThere you go. We have a const download URL is equal to
6:14:376 hours, 14 minutes, 37 secondsslash API/ project slash this is going to be project. ID slash
6:14:466 hours, 14 minutes, 46 secondspreview slash artifact slug and then we have slash
6:14:536 hours, 14 minutes, 53 secondsagain we have file.path path we have question mark and then I'm going to add
6:14:596 hours, 14 minutes, 59 secondsa download that download equals to one and then after that here I'm going to
6:15:066 hours, 15 minutes, 6 secondssay const is working is equal to is agent working
6:15:146 hours, 15 minutes, 14 secondson file and there we have agent activity
6:15:206 hours, 15 minutes, 20 secondsalso artifacts log also file dot path and after that let me format and save
6:15:296 hours, 15 minutes, 29 secondsafter that here we eventually have a return in which we have an ally I'm
6:15:366 hours, 15 minutes, 36 secondsgoing to add a key which is going to be artifact slug and then here we have dash
6:15:456 hours, 15 minutes, 45 secondsand this is going to be file path let me format and save class name
6:15:546 hours, 15 minutes, 54 secondsCN and here I'm going to get down and there you go these are some conditional
6:16:006 hours, 16 minutesclasses that we have is working spelling should be correct there you go
6:16:086 hours, 16 minutes, 8 secondsand now we need to open the alli I'm going to open that and here we have a div I'm going to give it the class name
6:16:166 hours, 16 minutes, 16 secondsflex items start and then we have gap of to open that div and here we have is
6:16:256 hours, 16 minutes, 25 secondsworking then we have this otherwise it's going to be another file
6:16:336 hours, 16 minutes, 33 secondslet's say null for now that's simpler we will change that later and this one is going to be agent
6:16:416 hours, 16 minutes, 41 secondsactivity pulse there you go and for that I'm going to say class name margin top-0.5
6:16:506 hours, 16 minutes, 50 secondsand we have label which is going to be yeah this one agent writing
6:16:596 hours, 16 minutes, 59 secondsand I'm going to say file name from path there you go and I'm going to say
6:17:066 hours, 17 minutes, 6 secondsfile dot path here format and save that and now in this case of null here I have
6:17:166 hours, 17 minutes, 16 secondsthis file icon and I'm going to a class name margin top-0
6:17:246 hours, 17 minutes, 24 secondsfive height dash 3.5 and width dash 3.5
6:17:326 hours, 17 minutes, 32 secondsshrink zero then we have text app text muted let me format and save and I guess
6:17:406 hours, 17 minutes, 40 secondsthat should be it for this part after this file icon here I mean after
6:17:476 hours, 17 minutes, 47 secondsthis condition I'm going to have another div here which is going to be this where
6:17:536 hours, 17 minutes, 53 secondswe have P tag file name from path and then we have another p tag conditional when it's working it's writing otherwise
6:18:026 hours, 18 minutes, 2 secondsit's going to say new file something like that and now after this div remember remember the one that we just added now after
6:18:106 hours, 18 minutes, 10 secondsthis div here we have this conditional text where we are checking when it's not working then we have an anchor tag with
6:18:196 hours, 18 minutes, 19 secondsthe download URL which gives us the download and for that we have this path we have area label we have class name
6:18:276 hours, 18 minutes, 27 secondsand this little icon here I mean the downward
6:18:346 hours, 18 minutes, 34 secondsyou can either grab that this one from the GitHub or you can try adding it
6:18:416 hours, 18 minutes, 41 secondsthrough your down let's say whatever yeah this one yeah you use that on
6:18:486 hours, 18 minutes, 48 secondsWindows I'm not sure how you how you how to get that but yeah you you can get that yeah
6:18:566 hours, 18 minutes, 56 secondsand just like that this file is done and now we are ready to work on the library
6:19:046 hours, 19 minutes, 4 secondssidebar component which is going to get displayed on the I mean this sidebar component this
6:19:126 hours, 19 minutes, 12 secondslibrary sidebar that is basically that we're going to work on next let's go to our code editor and the Next file that
6:19:196 hours, 19 minutes, 19 secondswe're going to create is going to be inside components app. Then we have
6:19:266 hours, 19 minutes, 26 secondseditor and that is going to be library dash sidebar.tsx.
6:19:346 hours, 19 minutes, 34 secondsHere first of all it's going to be a client component. Then we have a category icon.
6:19:436 hours, 19 minutes, 43 secondsCateory. There you go.
6:19:486 hours, 19 minutes, 48 secondsAnd then after that we need icon button. After that is agent working on artifact.
6:19:596 hours, 19 minutes, 59 secondsThen we also need here type agent activity.
6:20:066 hours, 20 minutes, 6 secondsAfterwards we need artifact type to category ID. There you go. And we
6:20:146 hours, 20 minutes, 14 secondsalso need import type app project detail.
6:20:226 hours, 20 minutes, 22 secondsAnd then we need CN. And afterwards we need agent
6:20:286 hours, 20 minutes, 28 secondsactivity pulse. And we also need library project files.
6:20:356 hours, 20 minutes, 35 secondsThere you go. And here we have this type where we have library sidebar props. We
6:20:436 hours, 20 minutes, 43 secondsneed project preview version agent activity open and on toggle.
6:20:496 hours, 20 minutes, 49 secondsNow here I'm going to export function library
6:20:566 hours, 20 minutes, 56 secondssidebar and here we have project preview version and then we have agent
6:21:056 hours, 21 minutes, 5 secondsactivity and then here we have open and then on
6:21:126 hours, 21 minutes, 12 secondstoggle and here we have library sidebar props
6:21:196 hours, 21 minutes, 19 secondsAnd I'm going to say return have a div class name
6:21:266 hours, 21 minutes, 26 secondsCN. And there you go. We have these classes. I'm going to open this div where we have another div.
6:21:366 hours, 21 minutes, 36 secondsAnd we have class names for that. I'm going to open that div. And here we have open. If that is true, then we do this.
6:21:466 hours, 21 minutes, 46 secondsOtherwise, it's going to be null for now. And in here, we have a span. I'm going to give it a class name, which is
6:21:546 hours, 21 minutes, 54 secondsgoing to be px- 2 text small font medium text app dash text. And here we have
6:22:036 hours, 22 minutes, 3 secondslibrary. Let me format and save. This needs to be fixed. And now after that,
6:22:096 hours, 22 minutes, 9 secondshere we need an icon button. There you go. And I'm going to form it. and save
6:22:176 hours, 22 minutes, 17 secondsthat. And I'm going to open project dash editor.
6:22:266 hours, 22 minutes, 26 secondsThere you go. And now in here we are going to have a library sidebar. There you go.
6:22:396 hours, 22 minutes, 39 secondsAnd of course here we need a project which is going to be editor project.
6:22:476 hours, 22 minutes, 47 secondsThen we need a preview version which is going to be preview version. And then we
6:22:546 hours, 22 minutes, 54 secondshave agent activity agent activity. And we have open which is going to be library open. And then we
6:23:046 hours, 23 minutes, 4 secondshave on toggle where we have set library open. We have an individual
6:23:146 hours, 23 minutes, 14 secondsvalue on that we have we are reversing its value here basically
6:23:216 hours, 23 minutes, 21 secondsif that's true make it false if that is false make it true something like that and that's saved and let's go here and
6:23:296 hours, 23 minutes, 29 secondsthere you go so if I click on that that's library that collapses and expanded depending on the click which is
6:23:376 hours, 23 minutes, 37 secondsperfect I'm going to get back here to the library sidebar
6:23:446 hours, 23 minutes, 44 secondsand now I'm going to get under this div and here we have this code. So basically
6:23:526 hours, 23 minutes, 52 secondswe are checking when the sidebar is open then we have this another div where we have artifacts and then we're bringing
6:24:026 hours, 24 minutes, 2 secondsproject.artifacts dom and then for each individual artifact we are making sure we have the icon and we are gathering is
6:24:096 hours, 24 minutes, 9 secondsworking. Is that true or false? And depending on that we are returning li for each individual item. And at the very end we have library project files.
6:24:196 hours, 24 minutes, 19 secondsIf I format and save that go there and there you go. We have main artifact.
6:24:256 hours, 24 minutes, 25 secondsThis is the files and could not load project files because of course there is no
6:24:336 hours, 24 minutes, 33 secondsuh project files yet. So that is working wonderfully and yeah that that thing is done and now
6:24:426 hours, 24 minutes, 42 secondswe are ready to move on to the agent panel. All right now in order to work on the agent panel of course just like the
6:24:506 hours, 24 minutes, 50 secondssidebar we're going to need to create on a few files that are needed in order to work on the panel file. So for that
6:24:596 hours, 24 minutes, 59 secondsreason I'm going to go to the components let's actually here in the editor components app editor and there I'm
6:25:066 hours, 25 minutes, 6 secondsgoing to create a file agent- plan dash question
6:25:166 hours, 25 minutes, 16 secondstsx and there we have this component. So let me explain what's happening. First of all this is a client component. We're
6:25:246 hours, 25 minutes, 24 secondsbringing you CN. This is the type that we have. Then agent plan question is the component that we are exporting from
6:25:316 hours, 25 minutes, 31 secondsthis file. Here it expects four arguments options on select disabled
6:25:386 hours, 25 minutes, 38 secondswhich is false by default and class name and that's the type and returning a div where [snorts] we are looping through
6:25:466 hours, 25 minutes, 46 secondsthe options and for the each single option we are displaying a button. We have key type disabled on click which is
6:25:556 hours, 25 minutes, 55 secondson select select and then we have a lot of CSS classes for that and just like that that project that component is simply done very simple one.
6:26:086 hours, 26 minutes, 8 secondsAll right. Now the next file that goes that that is going to go to the where is the lib folder lib then we have
6:26:166 hours, 26 minutes, 16 secondsagent and in there we have stream dashclient
6:26:236 hours, 26 minutes, 23 secondsdot ts there you go and there we have this where we have first of all we're
6:26:306 hours, 26 minutes, 30 secondsimporting agent stream event that's the type that we already have then we are defining another type this one and first
6:26:396 hours, 26 minutes, 39 secondsof all we are exporting a one function which is stream agent request that expects a few arguments where we have
6:26:466 hours, 26 minutes, 46 secondsproject ID artifact ID content conversation ID initial reply and on event this is the type this sends a
6:26:556 hours, 26 minutes, 55 secondsrequest a fetch and for that that is stored into the response and based on that if the response is not okay we
6:27:036 hours, 27 minutes, 3 secondsdisplay these errors if the response body is not okay then And we display these errors and depending on the
6:27:116 hours, 27 minutes, 11 secondsdifferent situations we handle our errors. And then here we have a while loop which is always going to be true
6:27:186 hours, 27 minutes, 18 secondswhich done which does a few operations like buffering and then it uh creates chunk out of bigger chunks and splits
6:27:276 hours, 27 minutes, 27 secondsline and things like that. And finally that is parsed and that is displayed on
6:27:356 hours, 27 minutes, 35 secondsevent par. And of course that on event is going to be displayed by using a function on the other file where this
6:27:426 hours, 27 minutes, 42 secondscomponent is going to be displayed. All right. So after this one I'm going to create a new file inside the lib agent
6:27:506 hours, 27 minutes, 50 secondsfolder. This is going to be step dash utils.ts. And here we have the 60 lines of code.
6:27:596 hours, 27 minutes, 59 secondsFirst of all we're bringing these two types. Then we have this one constant.
6:28:036 hours, 28 minutes, 3 secondsThen we have we are exporting one is file related action function and that takes a step and then this is the type.
6:28:136 hours, 28 minutes, 13 secondsThen we have hide redundant file read write read rows when file cards are shown. That's a function for that. And
6:28:216 hours, 28 minutes, 21 secondsthen we have keep the latest step per path label to avoid duplicate keys and
6:28:286 hours, 28 minutes, 28 secondsrows. There's this function for that reason. And then eventually we have keep one snapshot per file path latest wins
6:28:376 hours, 28 minutes, 37 secondssomething like that. So these are the mandatory files and functions that we need in order to work on the agent to
6:28:466 hours, 28 minutes, 46 secondsthe panel uh component and these are not done yet as we are still going to create a few more. The next file that we need
6:28:556 hours, 28 minutes, 55 secondsis in going to be inside component app editor. We're going to create a new file here and that is agent-file-
6:29:066 hours, 29 minutes, 6 secondswrite dash stream.tsx.
6:29:116 hours, 29 minutes, 11 secondsLet me give you the code here and it's a client component. We're bringing use effect use state from react. Also
6:29:196 hours, 29 minutes, 19 secondsbringing the type from agent types and normalize file content from step utils. the one the
6:29:276 hours, 29 minutes, 27 secondsfile that we just created a few minutes ago, right? And then here we have CN we
6:29:336 hours, 29 minutes, 33 secondshave a type here preview lines of con uh con constant then we have file name from path that's the function and then we
6:29:426 hours, 29 minutes, 42 secondshave status label function file write card and that's a big one where we are returning a div and then another div
6:29:506 hours, 29 minutes, 50 secondsinside and a few conditional if file status is equal to streaming then we do this otherwise we do this and we also
6:29:586 hours, 29 minutes, 58 secondshave a check good sign And uh bunch of other span and other things we have also. If this is mounted then we do
6:30:076 hours, 30 minutes, 7 secondsdisplay this pre-tag otherwise we just display a div tag and is long and also file set is equal to done then we do
6:30:146 hours, 30 minutes, 14 secondsthis otherwise just going to be null and eventually we have agent file right stream that takes that type and returns
6:30:236 hours, 30 minutes, 23 secondsbasically that file white card component that we have here the bigger one
6:30:316 hours, 30 minutes, 31 secondsand after that the next file that we need is inside the components app editor and this is going to be agent dash
6:30:406 hours, 30 minutes, 40 secondsmessage dash content.tsx tsx agent message
6:30:476 hours, 30 minutes, 47 secondscontent. Yes. And here first of all we have use client
6:30:546 hours, 30 minutes, 54 secondsand here we have a few arguments that a few imports that are giving us some errors for now.
6:31:026 hours, 31 minutes, 2 secondsSo for that we are going to first of all install those dependencies that we need.
6:31:086 hours, 31 minutes, 8 secondsSo, we're going to need to I'm going to clear. And then here I have a npmi
6:31:166 hours, 31 minutes, 16 secondsreact dash markdown also rehype dash sanitize
6:31:256 hours, 31 minutes, 25 secondsand uh after that remake-gm.
6:31:316 hours, 31 minutes, 31 secondsLet's go install that.
6:31:376 hours, 31 minutes, 37 secondsOkay, we have the error and seems like I misspelled there. Rem mark. It should be
6:31:466 hours, 31 minutes, 46 secondsremark GFM.
6:31:516 hours, 31 minutes, 51 secondsYes, it seems good. Now, let's try again.
6:31:576 hours, 31 minutes, 57 secondsAnd there you go. It's done. Let's do npm rundev once more. Close that. And
6:32:046 hours, 32 minutes, 4 secondsthose errors are gone. Awesome. So here we have type agent message content props. Then we are exporting this
6:32:126 hours, 32 minutes, 12 secondsfunction agent message content that expects two arguments content and class name. This return a div where we have a
6:32:216 hours, 32 minutes, 21 secondsreact markdown uh component coming from the react markdown package
6:32:286 hours, 32 minutes, 28 secondsthat where we have react plugins uh remark plugins and rehype plugins and then in the components we have h1 h2
6:32:386 hours, 32 minutes, 38 secondsthree and then we have p tag strong u and a few other code and all that these are going to be displayed inside the
6:32:476 hours, 32 minutes, 47 secondsstream and uh yeah that that's all that's all for this one.
6:32:536 hours, 32 minutes, 53 secondsThe next file that we need that is new file here we have agent-action
6:33:016 hours, 33 minutes, 1 seconddasheps.tsx tsx and I'm going to give you this code here that you can find in the github uh
6:33:096 hours, 33 minutes, 9 secondsgithub repo link is available in the description and as I have been telling you again and again that I am giving you
6:33:176 hours, 33 minutes, 17 secondsthe code without writing here on the screen because this project is basically
6:33:246 hours, 33 minutes, 24 secondsuh is over my anticipation. I thought that this is going to take me about 20
6:33:306 hours, 33 minutes, 30 secondshours or so. But looking at that how gigantic this project has become, this
6:33:386 hours, 33 minutes, 38 secondswould take me like maybe 50 60 hours and uh nobody is going to watch that hours longer videos.
6:33:506 hours, 33 minutes, 50 secondsuh also except YouTube only allows you to upload the video which is maximum 12 hours long. So this project would end up
6:33:586 hours, 33 minutes, 58 secondswith like five six bars and I don't want that kind of series on my channel. So that's why I'm trying my best to give
6:34:066 hours, 34 minutes, 6 secondsyou the code and also along with that I'm explaining things so that is easier
6:34:136 hours, 34 minutes, 13 secondsfor you guys to understand. Okay. So we have agents tab the dube action steps and then we have CN
6:34:216 hours, 34 minutes, 21 secondsagent activity pulse all of these are being imported. Then we have type here function step icon a simple one returns
6:34:316 hours, 34 minutes, 31 secondsthis and then we have main function agent action step expects these five things and then here we have action
6:34:386 hours, 34 minutes, 38 secondssteps. We have also show list running count and on the return here we have if
6:34:476 hours, 34 minutes, 47 secondsit's not live and on toggle is true then we have this button otherwise if this is live then we display this and otherwise
6:34:556 hours, 34 minutes, 55 secondsjust an null. If the show list is true then we are displaying a ul tag which of course in there then we are running
6:35:036 hours, 35 minutes, 3 secondsthrough running a loop on action steps and then for each step and index we're making sure that we have a ally for every single one where we have a step
6:35:126 hours, 35 minutes, 12 secondsicon as well as step label as well displayed for every single ally. So that's pretty much it for this one as
6:35:196 hours, 35 minutes, 19 secondswell. The next file that we need here now is in the editor folder. I'm going to go for
6:35:276 hours, 35 minutes, 27 secondstask dashboard dash drawer.tsx
6:35:346 hours, 35 minutes, 34 secondsand here use client and then use memo. Let's bring that actually I'm
6:35:426 hours, 35 minutes, 42 secondsgoing to give you the code. So we have use client then we have use memo agents tab is also being brought here and agent
6:35:516 hours, 35 minutes, 51 secondsactivity pulse also we have a type then we have a array columns then we have a
6:35:596 hours, 35 minutes, 59 secondsdistribute steps a function where we are returning dropped active ready and done
6:36:076 hours, 36 minutes, 7 secondsempty array as agent step here this type then here in the return we We have a div
6:36:146 hours, 36 minutes, 14 secondsthat contains a div, a few other dives and H3 and basically a a skeleton, a JSX code most mostly here.
6:36:266 hours, 36 minutes, 26 secondsAnd then we have working indicator action which takes an action which is supposed to be a number that returns a
6:36:356 hours, 36 minutes, 35 secondsdiv and working if action count is more than zero then it does this otherwise it's just going to be null. me format
6:36:446 hours, 36 minutes, 44 secondsand save that. And that is done. Also close this one, this one, this one. And here we are. And now I'm going to create
6:36:536 hours, 36 minutes, 53 secondsthe most important file for the panel, which is the panel file itself. That is going to be agent-p.
6:37:046 hours, 37 minutes, 4 secondsAnd here we have this code where I am making sure that this is a client component. We are bringing our stream
6:37:126 hours, 37 minutes, 12 secondsrequest that we the components that we recently created. And here we have action step agent action steps. I think we created that.
6:37:266 hours, 37 minutes, 26 secondsAnd seems like we have a spelling issue here. So this should be a dash dot.
6:37:346 hours, 37 minutes, 34 secondsThere you go. Save that. Let me reload now. This should fix the issue. Yep,
6:37:416 hours, 37 minutes, 41 secondsthat issue is gone. All the imports are there. And now down here we have these
6:37:476 hours, 37 minutes, 47 secondstwo types agent panel props and live run state. All right. After that here I have
6:37:566 hours, 37 minutes, 56 secondsthese three functions where basically we have artifact is ready and that is being used here in the third one and then we
6:38:046 hours, 38 minutes, 4 secondshave is unanswered plan question that's a function then we have should auto run initial reply
6:38:146 hours, 38 minutes, 14 secondsthat's also a function and after that here now I'm going to create export
6:38:226 hours, 38 minutes, 22 secondsfunction agent panel and here we have project. Then we have active artifact
6:38:326 hours, 38 minutes, 32 secondsID. Then we have on preview version change. We also have on agent run
6:38:416 hours, 38 minutes, 41 secondscomplete. We also have on agent active change activity change. And then this is
6:38:486 hours, 38 minutes, 48 secondsgoing to be a type of agent panel props open function body. And here we have this store input set input messages
6:38:576 hours, 38 minutes, 57 secondsexpanded step four task bar task board open and a few other ones here.
6:39:046 hours, 39 minutes, 4 secondsNow after that here we have a couple of more functions active artifact and then we have a use
6:39:146 hours, 39 minutes, 14 secondseffect here and also active artifact buildable.
6:39:196 hours, 39 minutes, 19 secondsAll right. And now after that here I'm going to say async function run agent
6:39:266 hours, 39 minutes, 26 secondsstream. And here we have options. This is going to be an object which is going to be content optional and string a
6:39:366 hours, 39 minutes, 36 secondssync. There you go. And this is going to be a string. And then we have initial
6:39:476 hours, 39 minutes, 47 secondsreply boolean. And then we have optimistic
6:39:526 hours, 39 minutes, 52 secondsuser message. This is going to be app agent message. There you go. Let me
6:40:006 hours, 40 minutesformat and save. And now this whole thing is going to be a function body.
6:40:066 hours, 40 minutes, 6 secondsHere I'm going to say if
6:40:126 hours, 40 minutes, 12 secondsactive artifact is not true or is streaming
6:40:196 hours, 40 minutes, 19 secondsis streaming then in that case we return.
6:40:256 hours, 40 minutes, 25 secondsLet me format and save. And now after that here I have this code block. So basically where we have optimistic user
6:40:346 hours, 40 minutes, 34 secondsmessage. Let me copy that. And
6:40:396 hours, 40 minutes, 39 secondslet me check where did I mess up. So there you go.
6:40:486 hours, 40 minutes, 48 secondsFormat and save. So basically we have run agent stream function and where we have this if if either active artifact
6:40:576 hours, 40 minutes, 57 secondsis missing or a stream is true then we return also artifact support agent build
6:41:046 hours, 41 minutes, 4 secondsis not true then we also return we also have this where we have uh a condition
6:41:116 hours, 41 minutes, 11 secondsthere as well set is streaming true set live run and then after that now here
6:41:186 hours, 41 minutes, 18 secondsand now Under here, I'm going to give you this try catch. And finally, block that you can grab from the GitHub repo
6:41:286 hours, 41 minutes, 28 secondsand use that there. And after that, I'm going to get to the main code block. And
6:41:366 hours, 41 minutes, 36 secondshere, I'm going to paste this one where we have a user fact, simple one. And then we have
6:41:446 hours, 41 minutes, 44 secondsanother use effect. And then we have a initial reply shared. There you go.
6:41:516 hours, 41 minutes, 51 secondsBasically one single one use effect that holds this code. Now here
6:41:586 hours, 41 minutes, 58 secondsI'm going to create this handle send function here. And there you go. We that expects a content which is supposed to
6:42:076 hours, 42 minutes, 7 secondsbe a string. We have trimmed. If either not trimmed or streaming or is not active artifact we return content is
6:42:156 hours, 42 minutes, 15 seconds[snorts] not there then setup set input is to empty state and of course then we have our ID roll this whole object here
6:42:236 hours, 42 minutes, 23 secondsas well format and save and now after this function handle send here we're
6:42:306 hours, 42 minutes, 30 secondsgoing to need a few more functions as well as this panel file is a very gigantic and very big file
6:42:416 hours, 42 minutes, 41 secondsAll right. And uh here we have after that actually after the handle send we
6:42:506 hours, 42 minutes, 50 secondshave a handle plan optional select which uses that handle send function and then
6:42:576 hours, 42 minutes, 57 secondswe have live nonfile steps. There you go. Live activity
6:43:056 hours, 43 minutes, 5 secondslabel. And then we have a use memo here as well. Build status label.
6:43:136 hours, 43 minutes, 13 secondsAnd we have live streaming file count.
6:43:166 hours, 43 minutes, 16 secondsThat's the constant. That's the arrow function that we have here as well. And now finally here we have a one final uh user fact basically.
6:43:306 hours, 43 minutes, 30 secondsThere you go.
6:43:336 hours, 43 minutes, 33 secondsAnd now after that here I'm going to have a return in there we have a section.
6:43:436 hours, 43 minutes, 43 secondsThis has a class name all of these classes for that and inside there we have a div. Let me
6:43:516 hours, 43 minutes, 51 secondsactually get that div here just like that. And here we have a div where we have another div and an H2 tag P class a
6:44:006 hours, 44 minutesP tag if it's streaming and also live activity label is there then we display this otherwise it's going to be null and
6:44:096 hours, 44 minutes, 9 secondsuh we also have a button here agent task board and a badge agent 4. Let me format and save everything. And now get back
6:44:186 hours, 44 minutes, 18 secondshere. Get rid of this one. And here we have agent panel. There you go.
6:44:256 hours, 44 minutes, 25 secondsAnd now in there we have a project which is going to be editor project. We have a
6:44:326 hours, 44 minutes, 32 secondsactive artifact ID which is going to be active artifact ID. We have on preview
6:44:396 hours, 44 minutes, 39 secondsversion. I'm going to say handle preview version change. And then we have on
6:44:466 hours, 44 minutes, 46 secondsagent run complete which is going to be handle agent run complete. And then we
6:44:536 hours, 44 minutes, 53 secondshave on agent activity change which is going to be handle agent activity change. Let me format and save that. And
6:45:016 hours, 45 minutes, 1 secondnow if we go there that little sidebar here. Let me hide this one. This is the
6:45:086 hours, 45 minutes, 8 secondsagent panel here basically. And uh let me get back to the agent panel file.
6:45:176 hours, 45 minutes, 17 secondsAnd now here I'm going to get under the batch we have div and then another div and make sure you get under that and
6:45:256 hours, 45 minutes, 25 secondshere we have this div. Let me format and save everything. Let me get to the top.
6:45:326 hours, 45 minutes, 32 secondsSo basically we have a div where we have flex one space y4 overflow y auto px4 py4 and on the messages length if that
6:45:416 hours, 45 minutes, 41 secondsis zero then we have this otherwise we display none. And then if the messages I mean on the messages we run a loop and
6:45:496 hours, 45 minutes, 49 secondsfor the each iteration of message we do a const steps and uh if the steps are found that's
6:45:586 hours, 45 minutes, 58 secondswonderful otherwise it's going to be just an empty array and we here have a return which return a div and of course
6:46:076 hours, 46 minutes, 7 secondsthere are some till CSS classes and p tag uh if the user ro is equal to user
6:46:156 hours, 46 minutes, 15 secondsSo you otherwise agent and then we have message ro if that is equal to assistant then we display this empty fragment
6:46:236 hours, 46 minutes, 23 secondswhere we have a div and a few other things to display and uh otherwise this is going to be an empty div I mean a div
6:46:326 hours, 46 minutes, 32 secondswith the message content. So let me format and save everything and get back here. Sorry I could not reach the agent
6:46:406 hours, 46 minutes, 40 secondsright now. agent request failed. And yes, that is true because we haven't
6:46:476 hours, 46 minutes, 47 secondsconfigured the agent yet. And that part is still coming. I'm going to get back here.
6:46:556 hours, 46 minutes, 55 secondsAnd there is going to be one another div here. So, I'm going to paste that div here. I'm going to format and save that.
6:47:046 hours, 47 minutes, 4 secondsMake sure you grab the entire file agent-p.tsx.
6:47:096 hours, 47 minutes, 9 secondsthat's going to be easier for you guys to follow. And after that here we have another component here which is going to
6:47:166 hours, 47 minutes, 16 secondsbe task board draw that we created a few minutes ago. So if we go back here that's everything we have this thing
6:47:256 hours, 47 minutes, 25 secondsworking here economy. So basically right now the thing that we need is the integration between the agent and our
6:47:346 hours, 47 minutes, 34 secondsapp and that is only possible when we have integrated our the anthropic SDK into our application and that part is uh
6:47:436 hours, 47 minutes, 43 secondscoming later as be as right now like I've been telling you guys again and again and again that this project turned
6:47:516 hours, 47 minutes, 51 secondsout to be a lot more lengthier than I anticipated in the beginning. So that's why I'm just pasting a few lines of
6:48:006 hours, 48 minutescode, sometimes a lot of code, sometimes a whole file in there and I'll explain a little bit and sometimes may maybe not
6:48:086 hours, 48 minutes, 8 secondseven explaining it. That is only because I want to cut time into short as much as possible.
6:48:156 hours, 48 minutes, 15 secondsAll right. So with that the panel thing is done and the next thing that we are going to work on is the preview panel
6:48:246 hours, 48 minutes, 24 secondsplus the I frame shell. Right now I would like to get started working on the preview panel which is going to be
6:48:306 hours, 48 minutes, 30 secondsdisplayed basically here on the right side. There you go. That's the preview panel. But before I get started working
6:48:386 hours, 48 minutes, 38 secondson that, there is one more file that I would like to complete first. And that is going to be inside the dashboard. We have a layout.tsx file.
6:48:506 hours, 48 minutes, 50 secondsAnd in there, first of all, I'm going to import a redirect from our next navigation.
6:48:576 hours, 48 minutes, 57 secondsAnd let me bring that to the top. And then after that here, I'm going to need get cached session. And also I'm going
6:49:076 hours, 49 minutes, 7 secondsto need a get cacheed user workspaces.
6:49:136 hours, 49 minutes, 13 secondsAnd now of course we have user uh export default async function app dashboard layout. And in here we have children.
6:49:256 hours, 49 minutes, 25 secondsThere you go. And now in there I'm going to have a con session is equal to await
6:49:326 hours, 49 minutes, 32 secondsget cached session. And then I'm going to say if session
6:49:426 hours, 49 minutes, 42 secondsdot user do id is not available then we redirect user to slash question mark o
6:49:526 hours, 49 minutes, 52 secondsd-ash login and uh here I have an amperand I'm going to say
6:50:016 hours, 50 minutes, 1 secondcall back url is equal to slash app and after that here I'm going to have a
6:50:116 hours, 50 minutes, 11 secondslet work spaces is equal to awaited here I have a return type
6:50:216 hours, 50 minutes, 21 secondsand I'm going to have a type of
6:50:276 hours, 50 minutes, 27 secondsthere you go get cacheed user workspaces and this whole thing is going to be
6:50:346 hours, 50 minutes, 34 secondsequal to an empty array for now. There you go.
6:50:406 hours, 50 minutes, 40 secondsAnd this should not be here.
6:50:466 hours, 50 minutes, 46 secondsAnd I would like to remove this one. And yes, this should be used as a type.
6:50:526 hours, 50 minutes, 52 secondsThere you go. That has been fixed. And then I'm going to say if process env
6:51:026 hours, 51 minutes, 2 secondsURL then we have workspaces is equal to a bit get cacheed user
6:51:096 hours, 51 minutes, 9 secondsworkspaces session do user do ID let me format and save that and now in the appshell here
6:51:186 hours, 51 minutes, 18 secondsI'm going to have a workspaces which is going to be workspaces then here have a user which is going to be name.
6:51:306 hours, 51 minutes, 30 secondsI'm going to say session dot user dot name. Then we have email which is going to be session do user do email. And then
6:51:396 hours, 51 minutes, 39 secondswe have image which is going to be session do user dot image. Let me format and save that. And with that we have completed our layout.tsx file.
6:51:546 hours, 51 minutes, 54 secondsAnd right now I'm going to go to the dashboard. And in the dashboard
6:52:006 hours, 52 minuteshere we have a page.tsx file. That's not the dashboard. Okay. We have app app.
6:52:086 hours, 52 minutes, 8 secondsAnd then we have dashboard and projects. Nope. Not this one.
6:52:146 hours, 52 minutes, 14 secondsSo we have this page.tx. Yes, this is the one. App then app and then dashboard. And then we have page.tsx tsx
6:52:226 hours, 52 minutes, 22 secondsfile and here I'm going to bring first of all we have app home I'm going to also bring get cast session there you go
6:52:326 hours, 52 minutes, 32 secondsand here now I'm going to have a const session is equal to await get cached
6:52:396 hours, 52 minutes, 39 secondssession and this should be sync now there you go and in the return here in
6:52:466 hours, 52 minutes, 46 secondsthe app home we have a user where we have this object I'm going to Say name is going to be session
6:52:546 hours, 52 minutes, 54 secondsdot user dot name and let me put that there as well question mark. Then we
6:53:016 hours, 53 minutes, 1 secondhave email which is going to be session dot user
6:53:076 hours, 53 minutes, 7 secondsdot email. Then we have image session dot user dot
6:53:166 hours, 53 minutes, 16 secondsimage. Let me format and save. And uh we have an issue here. Spelling error that's gone. So with that, this little component is completely done as well.
6:53:286 hours, 53 minutes, 28 secondsI'm going to close this file also this one. And now I'm going to collapse everything. You go to the components app
6:53:356 hours, 53 minutes, 35 secondseditor and in here create a new file which is going to be add-artifact- dialogue.tsx.
6:53:466 hours, 53 minutes, 46 secondsFirst of all, it's going to be a use client. Then we have a use transition
6:53:546 hours, 53 minutes, 54 secondsthat we're bringing from React. Also category icon also app model backdrop
6:54:036 hours, 54 minutes, 3 secondsalso create artifact action addable artifact type. And not only
6:54:136 hours, 54 minutes, 13 secondsthat, but I also need max artifact per project.
6:54:196 hours, 54 minutes, 19 secondsAfter that, I'm going to need import type artifact status. There you go. And this should be coming from the client.
6:54:306 hours, 54 minutes, 30 secondsAnd then after the status here, we also need artifact type. There you go. And I'm going to also need CN.
6:54:406 hours, 54 minutes, 40 secondsAnd that's pretty much it. I guess if there's anything else that's left and needs needed, I will do that later. And
6:54:496 hours, 54 minutes, 49 secondshere we have this type add artifact dialogue props where we have open on
6:54:556 hours, 54 minutes, 55 secondsclose project ID current count on created which is supposed to be a function and have its own object
6:55:036 hours, 55 minutes, 3 secondsbasically arguments ID type in ID type name slug and status and we also have
6:55:106 hours, 55 minutes, 10 secondsthe on adder and after that here we have export function add
6:55:186 hours, 55 minutes, 18 secondsartifact dialogue where we have all of the variables here. I mean all of the
6:55:266 hours, 55 minutes, 26 secondsarguments here and this whole thing is going to be a type of add artifact
6:55:356 hours, 55 minutes, 35 secondsdialog props and I'm going to open function body and here we have const is pending and
6:55:456 hours, 55 minutes, 45 secondsstart transition which is going to be equal to use transition.
6:55:516 hours, 55 minutes, 51 secondsThere you go. And now here we have this code. Basically we have at limit. We're
6:55:586 hours, 55 minutes, 58 secondschecking if the current count is more than or equal to the max artifacts per project. This is going to be true or
6:56:056 hours, 56 minutes, 5 secondsfalse. And then we have a function handle close which basically check is if it's pending then it return and simply
6:56:126 hours, 56 minutes, 12 secondsit closes uses the on close here. And then we have handle select which takes a
6:56:196 hours, 56 minutes, 19 secondstype which is supposed to be an artifact type if it's pending or at limit returns otherwise it runs it uh runs it start
6:56:276 hours, 56 minutes, 27 secondstransition a sync of weight where we have create artifact action it takes the project ID and the type and if there's
6:56:346 hours, 56 minutes, 34 secondsan error it shows that and otherwise simply we have on created we have
6:56:416 hours, 56 minutes, 41 secondsresulted artifact and eventually it closes the dialogue and that's pretty much it for this function.
6:56:506 hours, 56 minutes, 50 secondsAnd now after this function here, we have a return. I'm going to open and we
6:56:566 hours, 56 minutes, 56 secondshave a app model backdrop. And there you
6:57:026 hours, 57 minutes, 2 secondsgo. Open that. And we have an open which is supposed to be open. And then we have
6:57:096 hours, 57 minutes, 9 secondson close which is going to be handle close. There you go.
6:57:156 hours, 57 minutes, 15 secondsAnd then we have a panel class name which is this. And then we have a class name which is going to be Z dash 100.
6:57:286 hours, 57 minutes, 28 secondsThere you go. And eventually inside there we have a div. Going to open that.
6:57:356 hours, 57 minutes, 35 secondsThe div has a role which is going to be dialogue. And then we have area model
6:57:426 hours, 57 minutes, 42 secondswhich is going to be true. Then we have area label which is going to be add artifact.
6:57:516 hours, 57 minutes, 51 secondsAnd then we have a class name and that's going to be this class. And we also have
6:57:586 hours, 57 minutes, 58 secondsan on click. I'm going to take the event and then on that event dot stop. Hold on.
6:58:096 hours, 58 minutes, 9 secondsevent. Yes. Event dot stop propagation. There you go.
6:58:186 hours, 58 minutes, 18 secondsYes, seems good. And that's pretty much it.
6:58:236 hours, 58 minutes, 23 secondsOn click, we have that error. Let me reload the window.
6:58:306 hours, 58 minutes, 30 secondsLet me format everything. And we're good. And now I'm going to open that div. Here we have another div. I'm going
6:58:376 hours, 58 minutes, 37 secondsto create a class. We have this class name and I'm going to open this div. We have another div. Open that. In this div, we have a H2 as well as a P tag.
6:58:506 hours, 58 minutes, 50 secondsBasically, add artifacts.
6:58:536 hours, 58 minutes, 53 secondsAnd at limit, if that is true, then we do this. Otherwise, we do this.
6:58:596 hours, 58 minutes, 59 secondsAnd now after this div, we have a button here where we have a
6:59:066 hours, 59 minutes, 6 secondsclose icon. Of course, we need to bring that icon here. And I'm going to get to the very bottom of this file. And here,
6:59:136 hours, 59 minutes, 13 secondslet me paste that. We have a close icon here with the SVG. And that is being used there. Awesome. So now we have this
6:59:226 hours, 59 minutes, 22 secondsbutton and then this div. I'm going to get out of that div.
6:59:276 hours, 59 minutes, 27 secondsAnd we have in another div here basically. So this grid this div is a
6:59:346 hours, 59 minutes, 34 secondsgrid with two column and we have here we are doing the addable artifact types.
6:59:426 hours, 59 minutes, 42 secondsThen we are running a map on that. For each option we have a button. We have key type disabled on click and then we
6:59:506 hours, 59 minutes, 50 secondshave these bunch of class names for that. We also have a span inside the button and that span contain a category
6:59:576 hours, 59 minutes, 57 secondsicon and then also a span for the label as well. All right. And let me find the
7:00:067 hours, 6 secondsending div which is here. And after that here we have we're going to say if is pending then we are displaying this
7:00:137 hours, 13 secondsotherwise it's going to be null. And in case of true here we have a p tag which is going to say creating artifact. dot
7:00:227 hours, 22 secondsdot and here we have a class name which is this. Let me format and save. And we
7:00:317 hours, 31 secondshave completed this add artifact dialogue component.
7:00:377 hours, 37 secondsI'm going to close this file. And the next file that I'm going to need to create is here inside the editor new file
7:00:457 hours, 45 secondseditor dash preview.tsx.
7:00:497 hours, 49 secondsAnd this is going to be a use client client component. Then we have use call back. We have use effect also use memo.
7:01:027 hours, 1 minute, 2 secondsThen we have use reference. We also have use state. And then we also need is
7:01:097 hours, 1 minute, 9 secondsagent working on artifact. also here I'm going to say
7:01:177 hours, 1 minute, 17 secondstype agent activity agent activity there you go and after that here I'm going to
7:01:247 hours, 1 minute, 24 secondsneed a get artifact empty state message also need import type app project detail
7:01:357 hours, 1 minute, 35 secondsand after that I'm going to need artifact type labels also I'm going to need icon button.
7:01:447 hours, 1 minute, 44 secondsThere you go. And also here I'm going to need a CN. There you go. And also a few more things like agent activity pulse.
7:01:577 hours, 1 minute, 57 secondsThere you go.
7:01:597 hours, 1 minute, 59 secondsSo right now the very first thing that I would do is I'm going to create this type where we have artifact preview props project ID artifact preview
7:02:087 hours, 2 minutes, 8 secondsversion has files and agent activity class name and then we have preview canvas padding after that here. And now
7:02:177 hours, 2 minutes, 17 secondsI'm going to need a couple of more icons that we need for this file. So I'm going to paste those icons here. Let me format
7:02:247 hours, 2 minutes, 24 secondsand save. First, we have a refresh icon and then we have a open icon. All right.
7:02:317 hours, 2 minutes, 31 secondsNow, before I move on and start working on the rest of the functions for this file, there are a few more components.
7:02:397 hours, 2 minutes, 39 secondsMaybe not components, but a few files that hold some functionality that we need for this plugin, this component to
7:02:487 hours, 2 minutes, 48 secondswork. And uh let's do that. First the file that I need is I'm going to go to
7:02:557 hours, 2 minutes, 55 secondsthe lib folder and there I'm going to create a new folder which is going to be
7:03:017 hours, 3 minutes, 1 secondpreview and in there we have a hold on hold on did I mess up? Nope. It's there
7:03:107 hours, 3 minutes, 10 secondspreview. And then in there I have a new file preview dash device dash sizes.ts.
7:03:237 hours, 3 minutes, 23 secondsAll right. Now here is the code for this file. So basically we have a export type preview device ID. It's going to be
7:03:317 hours, 3 minutes, 31 secondseither any of these. And then we have export type preview device preset. This one. And then we have export const
7:03:407 hours, 3 minutes, 40 secondspreview device preset that takes the array of this type where we have these objects 1 2 3 4 basically for every
7:03:497 hours, 3 minutes, 49 secondssingle uh device and then we have get preview device preset that uses that
7:03:557 hours, 3 minutes, 55 secondssame u type. Here we also have is preview device ID. key then we also is device framed preview and then we have
7:04:057 hours, 4 minutes, 5 secondspreview device storage key I'm going to close this one and now I'm going to need to bring those
7:04:127 hours, 4 minutes, 12 secondshere so we have a get preview device preset then here I'm also going to need
7:04:207 hours, 4 minutes, 20 secondsis device frame preview then also need is preview
7:04:277 hours, 4 minutes, 27 secondsdevice id also need a type preview device ID. Let me format and save.
7:04:367 hours, 4 minutes, 36 secondsAnd the next file that I'm going to need is going to be inside the same folder lib preview. Then we have a new file.
7:04:437 hours, 4 minutes, 43 secondsThat's going to be hide dash device- preview dashcroll bars.ts.
7:04:517 hours, 4 minutes, 51 secondsAnd there you go. We have a style ID.
7:04:557 hours, 4 minutes, 55 secondsThen we have a hide scroll bar CSS. for that. We have a hide device preview scroll bar. And that's pretty much it.
7:05:047 hours, 5 minutes, 4 secondsLet me format and save. Close that.
7:05:087 hours, 5 minutes, 8 secondsAnd now here I'm going to need to add hide device preview scroll bar. There you go. And now there is only one file
7:05:167 hours, 5 minutes, 16 secondsthat is left for us to create in order to get started working on the editor preview. So basically for that here in
7:05:257 hours, 5 minutes, 25 secondsthe same editor folder in the components app editor I'm going to create a new file preview device- menu.tsx tsx
7:05:357 hours, 5 minutes, 35 secondsthere you go where basically we have first of all it's a client component uh we are bringing these from react then I
7:05:437 hours, 5 minutes, 43 secondsalso icon button and our preview device preset preview device preset and also the type then we also have CN first of
7:05:527 hours, 5 minutes, 52 secondsall we have a type preview device menu props which takes a value and on change properties and then we have a export
7:06:007 hours, 6 minutesfunction preview device menu which as value and on change. Then we have this our little store. Here we have this
7:06:097 hours, 6 minutes, 9 secondsoperation uh use effect if it if it is not open it returns and otherwise handle point down and things like that. And
7:06:177 hours, 6 minutes, 17 seconds[snorts] here we have a return with a div icon button. If it's open then this is going to be the menu. And then we
7:06:257 hours, 6 minutes, 25 secondsfinally here we have the device icon which is being used here. And then we
7:06:327 hours, 6 minutes, 32 secondsalso have a check icon which is being used here. So that's pretty much it for
7:06:397 hours, 6 minutes, 39 secondsthese little files. Let me format and save. Close that. And of course now we need to bring that here.
7:06:477 hours, 6 minutes, 47 secondsSo I'm going to say preview device menu. There you go. And
7:06:547 hours, 6 minutes, 54 secondswe're ready to move on. And for that I'm going to get under this one here. We have a function read stored
7:07:037 hours, 7 minutes, 3 secondsdevice ID and this is going to take a project ID and which is supposed to be a
7:07:107 hours, 7 minutes, 10 secondsstring string and that's going to return a preview device ID. There you go. Open function body and here we have if type
7:07:207 hours, 7 minutes, 20 secondsof window is equal to undefined then we return follow. There you go.
7:07:297 hours, 7 minutes, 29 secondsAnd here I'm going to say try and also catch. And in the try I have
7:07:397 hours, 7 minutes, 39 secondsconst stored is equal to window.lo storage dot get item and that is going
7:07:477 hours, 7 minutes, 47 secondsto be preview device storage key and also this is going to be project ID. Let
7:07:557 hours, 7 minutes, 55 secondsme format and save that. And here I'm going to say if stored
7:08:027 hours, 8 minutes, 2 secondsand is preview device ID stored. Both of these are true. Then here we return stored.
7:08:147 hours, 8 minutes, 14 secondsAnd in the case of catch we just do nothing empty. And then after that here we have return full. Let me format and save. Return.
7:08:257 hours, 8 minutes, 25 secondsYep. That's pretty much it.
7:08:287 hours, 8 minutes, 28 secondsLet's scroll up here. And here I'm going to create the export function artifact
7:08:367 hours, 8 minutes, 36 secondspreview. And here we need project ID also artifact
7:08:447 hours, 8 minutes, 44 secondsalso preview version. Then we also need
7:08:487 hours, 8 minutes, 48 secondshas files and agent activity also class
7:08:557 hours, 8 minutes, 55 secondsname. This whole thing is going to be type of artifact.
7:09:017 hours, 9 minutes, 1 secondRT fact preview props. There you go. Open that. And here we have this. So first of
7:09:117 hours, 9 minutes, 11 secondsall we have this store user ref. Then we have use state and then we have get
7:09:177 hours, 9 minutes, 17 secondspreview device preset where we're using use memo and device ID here as an argument
7:09:257 hours, 9 minutes, 25 secondsis full size is frame device we're doing whole bunch of checks here then we have
7:09:317 hours, 9 minutes, 31 secondspreview path uh frame scale again use memo for that and uh that's pretty much
7:09:397 hours, 9 minutes, 39 secondsit and now in there inside after that we have this code. I'm going to format
7:09:467 hours, 9 minutes, 46 secondsand save. We seems like we have an issue somewhere which we will fix. So first of
7:09:537 hours, 9 minutes, 53 secondsall here we have is agent working and then here we have
7:10:007 hours, 10 minutesa use effect for the set device ID. Then we have another use effect for the set refresh key and set is building. Then we
7:10:097 hours, 10 minutes, 9 secondshave another use effect for the canvas and update size and up set canvas size. And then we have observer here for that.
7:10:187 hours, 10 minutes, 18 secondsThat's I mean the use effect all in there. Then we have another use call back function here. notify I frame size
7:10:287 hours, 10 minutes, 28 secondsand then after that we have another use effect for the has file size and another use effect for the has file size and
7:10:367 hours, 10 minutes, 36 secondstimer where we have hide device preview scroll bars and I'm going to try and catch here and then we have handle
7:10:457 hours, 10 minutes, 45 secondsrefresh all right and by do we have the error let me check that.
7:10:567 hours, 10 minutes, 56 secondsSo this one seems like this needs to be closed here. Yep, we are good. After
7:11:027 hours, 11 minutes, 2 secondsthat here we have a return and here we have a div. I'm going to display that. And so basically what we
7:11:117 hours, 11 minutes, 11 secondsare doing here this return actually should be inside this if statement here. Let me
7:11:187 hours, 11 minutes, 18 secondsformat and save. So here we have a div, another div and another div and empty
7:11:277 hours, 11 minutes, 27 secondsstate. Yes, all of those errors are gone. If there if uh the editor preview has no files, then this is going to be
7:11:367 hours, 11 minutes, 36 secondsthe case. And of course now we need to get here and we need to display how it
7:11:437 hours, 11 minutes, 43 secondsshould be when there are files. And for that I'm going to open this return here.
7:11:517 hours, 11 minutes, 51 secondsAnd we have a div. Open that. I'm going to give it a class name which is going to be CN. Then here we have flex minimum
7:12:007 hours, 12 minutesheight zero. Then we have flex one. Then flex call. Flex dash call. And here we have
7:12:097 hours, 12 minutes, 9 secondsclass name. And then we have another div with a class name of this. Then we have another span in there.
7:12:207 hours, 12 minutes, 20 secondsGive it a class name this. And it's going to say canvas. After that span, we have another one. Give it a class name.
7:12:297 hours, 12 minutes, 29 secondsText- small text- app-ext. And this is going to be artifact.
7:12:377 hours, 12 minutes, 37 secondsLet me format and save. After that span, we have another div. Open that. I'm going to give it a class name which is going to be this. And then we have another div inside there class name.
7:12:507 hours, 12 minutes, 50 secondsThere you go. We have these class names.
7:12:527 hours, 12 minutes, 52 secondsAnd then in there we have a span. Going to give it another class name truncate.
7:13:007 hours, 13 minutesAnd text-xs.
7:13:027 hours, 13 minutes, 2 secondsWe have text- app text muted. And that span is going to display
7:13:097 hours, 13 minutes, 9 secondsartifact. Lug. And then we have dot replet. dev something that we have replicated from the replet.
7:13:217 hours, 13 minutes, 21 secondsAll right. Then we have this div after the span I'm going to get under that div here and we have a
7:13:297 hours, 13 minutes, 29 secondspreview device menu and that's going to be value which
7:13:367 hours, 13 minutes, 36 secondsis going to be device ID. Then we have on change which is going to be handle device change. Let me format and save.
7:13:477 hours, 13 minutes, 47 secondsAnd now here we have a icon button and a anchor. Simple stuff. All right. Now
7:13:547 hours, 13 minutes, 54 secondsafter the anchor we have a div and another div. I'm going to get under that and create a div here. Give it a class
7:14:027 hours, 14 minutes, 2 secondsname and a reference here which is going to be canvas reference. Class name is
7:14:117 hours, 14 minutes, 11 secondsgoing to be this. I'm going to open that div. We have another div. And [snorts] here we have another class name. I'm
7:14:187 hours, 14 minutes, 18 secondsgoing to use CN. Open that. And these are the classes for that. And open that.
7:14:257 hours, 14 minutes, 25 secondsWe have another div. Here we have a class name. I'm going to use CN for that
7:14:317 hours, 14 minutes, 31 secondsone as well. There are the classes that we're going to use. And then I'm going to open that div again. Actually,
7:14:407 hours, 14 minutes, 40 secondsbefore that, we have a style and that has is full size. Actually, no. Here we
7:14:507 hours, 14 minutes, 50 secondshave is full size. And if that is the case then we have undefined
7:15:007 hours, 15 minutesotherwise we have this object where we have this code this custom CSS work and then
7:15:087 hours, 15 minutes, 8 secondsI'm going to open that div here and then in there I'm going to have this div inside let me format and save that.
7:15:177 hours, 15 minutes, 17 secondsSo basically we have another some CSS code and then another style work and then we have I frame where we have
7:15:247 hours, 15 minutes, 24 secondsreference the iframe key is refresh key title source sandbox is going to be this where we have class name again uh
7:15:327 hours, 15 minutes, 32 secondsanother style work and on load this is going to load set is building and notify
7:15:397 hours, 15 minutes, 39 secondsiframe size let me format and save that all right and now I'm going to scroll up and I'm going to find for this div where
7:15:487 hours, 15 minutes, 48 secondsthat is ending. There you go. And I'm going to get under that. And here we have this code. So if it's building and
7:15:567 hours, 15 minutes, 56 secondsalso agent is working then I mean if it's building or agent is working. If either is true then we have this div
7:16:057 hours, 16 minutes, 5 secondswhere we are saying if agent is working then we say agent activity pulse and we have the label agent working
7:16:127 hours, 16 minutes, 12 secondsand otherwise this is going to say building preview or something like that and then after this one here we have another div here
7:16:217 hours, 16 minutes, 21 secondsand I'm going to give it a class name which is going to be this and here we have is full size if that is not true
7:16:307 hours, 16 minutes, 30 secondsthen we start doing this otherwise it's going to be null and here I'm going to display I'm going to give
7:16:397 hours, 16 minutes, 39 secondsyou this span tag where we have some classes and then it's going to display device label and if frame scale is less
7:16:477 hours, 16 minutes, 47 secondsthan one then we are doing this otherwise we have just an empty string all right now after this thing here here
7:16:577 hours, 16 minutes, 57 secondswe have another span I'm going to give it class name which which is going to be this. And I'm going to open that span.
7:17:047 hours, 17 minutes, 4 secondsAnd here we have artifact type labels. Artifact type labels.
7:17:117 hours, 17 minutes, 11 secondsUh, and here I'm going to add artifact.
7:17:167 hours, 17 minutes, 16 secondsLet me format and save that. And that should be it. And we are ready to use this file in the project editor. All
7:17:267 hours, 17 minutes, 26 secondsright. So now I'm going to work on the preview panel which is going to be used here in this space. So first of all I'm
7:17:337 hours, 17 minutes, 33 secondsgoing to go to the components app editor and here we have a new file which is going to be preview- panel.ts
7:17:447 hours, 17 minutes, 44 secondsand here I'm going to give you this code that first of all we're checking making sure that this is a client component. We
7:17:517 hours, 17 minutes, 51 secondsare bringing this from React and then this should come from
7:17:587 hours, 17 minutes, 58 secondshold on category icon. There you go. That has
7:18:047 hours, 18 minutes, 4 secondsbeen imported at the end. Here we have artifact preview. So
7:18:117 hours, 18 minutes, 11 secondslet me artifact preview. There you go. That has been added. Uh this is editor preview. Okay.
7:18:247 hours, 18 minutes, 24 secondsAnd uh that file has been named wrong. I mean we still can use that but let's rename that. And this should be
7:18:337 hours, 18 minutes, 33 secondsuh RTC dash preview use up. Okay. Yes. And that has been
7:18:427 hours, 18 minutes, 42 secondsupdated. Let me check artifact preview props and artifact preview. Yes, that seems good. Close that. And now yes that
7:18:527 hours, 18 minutes, 52 secondshas also been updated. And this is going to come from lib/generated.
7:18:577 hours, 18 minutes, 57 secondsSo everything imported here. And now here we have this type preview panel
7:19:057 hours, 19 minutes, 5 secondsprops where we have project active artifact ID preview version agent activity on artifact change and a bunch
7:19:147 hours, 19 minutes, 14 secondsof other stuff. And now here we have export function preview panel and this
7:19:217 hours, 19 minutes, 21 secondsis going to take project active artifact ID. Then we have preview
7:19:317 hours, 19 minutes, 31 secondsuh version and then we have agent activity and then
7:19:387 hours, 19 minutes, 38 secondswe have on artifact change also on artifact created also on artifact
7:19:467 hours, 19 minutes, 46 secondsdeleted also on error and this whole thing is going to be type of preview
7:19:537 hours, 19 minutes, 53 secondspanel props and let's open the function body and the very first thing that I'm going
7:20:007 hours, 20 minutesto do is this. So basically we have a store success is coming from use toast
7:20:067 hours, 20 minutes, 6 secondsthat we have and then we have add dialogue open set delete and set and
7:20:137 hours, 20 minutes, 13 secondsthen here we have is deleting set at limit it's coming from this max artifact per project and here we have highest
7:20:217 hours, 20 minutes, 21 secondsfiles a use memo and then we have handle confirm delete if that is not target then we return and otherwise we start
7:20:307 hours, 20 minutes, 30 secondsdelete transition ition that's the and then delete artifact action is the server action that we already have in
7:20:377 hours, 20 minutes, 37 secondsplace and now after this function here I'm going to have a return open
7:20:457 hours, 20 minutes, 45 secondsthat in the return here I am going to have a section
7:20:527 hours, 20 minutes, 52 secondsjust like nope section there you go something like that and
7:21:017 hours, 21 minutes, 1 secondWhy do I have error? Let me check. Preview panel. It's opening from here and closing here.
7:21:127 hours, 21 minutes, 12 secondsEverything seems good. It says that cannot find name section.
7:21:187 hours, 21 minutes, 18 secondsDid you mean selection? No. Let me use section.
7:21:277 hours, 21 minutes, 27 secondsOh, I got it. because we did not name it TSX that's why now we can bring our
7:21:357 hours, 21 minutes, 35 secondssection there you go and here now we have a class name which is going to
7:21:417 hours, 21 minutes, 41 secondsbe this and in there we have add artifact dialogue
7:21:487 hours, 21 minutes, 48 secondsopen that's going to be add dialogue open and we have on close
7:21:557 hours, 21 minutes, 55 secondsthat's going to be a project which is uh a function which is going to be set add dialogue open and we have a false here.
7:22:057 hours, 22 minutes, 5 secondsLet me format and save. And then after that we have a project id which is going
7:22:117 hours, 22 minutes, 11 secondsto be project do ID and we also have current count which is going to be
7:22:187 hours, 22 minutes, 18 secondsproject dot artifacts dot length. Then we have on created which is going to be
7:22:257 hours, 22 minutes, 25 secondson artifact created. And we have on adder that's going to be on error. Let
7:22:327 hours, 22 minutes, 32 secondsme format and save. And then after this one we have a confirm dialogue which is
7:22:387 hours, 22 minutes, 38 secondshere. Let me format and save that. And uh what issue do we have?
7:22:477 hours, 22 minutes, 47 secondsOkay. did category icon. There you go. And we also need lib/generated.
7:22:577 hours, 22 minutes, 57 secondsThis is going to be client. And yeah, everything seems good.
7:23:067 hours, 23 minutes, 6 secondsOkay. Now, here at the bottom, let's actually bring that here. Now, in the
7:23:147 hours, 23 minutes, 14 secondsproject editor, I'm going to close this one. Here we have preview panel
7:23:217 hours, 23 minutes, 21 secondsand there are a lot of props that we need to add. So first of all we have a project which is going to be editor project.
7:23:307 hours, 23 minutes, 30 secondsThere you go. We also have active artifact ID which is going to be active artifact ID. Then we have preview
7:23:397 hours, 23 minutes, 39 secondsversion which is going to be preview version. Then we also have agent activity.
7:23:477 hours, 23 minutes, 47 secondsAgent activity and we have on artifact change which is going to be handle
7:23:567 hours, 23 minutes, 56 secondsartifact change. There you go. Let me format and save. And then after that I'm going to need on artifact created.
7:24:057 hours, 24 minutes, 5 secondsThat's going to be an arrow function where we have artifact.
7:24:107 hours, 24 minutes, 10 secondsAnd I'm going to open the function body here where we have set artifact first of all that's going to take current. And
7:24:177 hours, 24 minutes, 17 secondsthen on that this is going to be an array dot current. And then we have artifact here.
7:24:257 hours, 24 minutes, 25 secondsAfter that we have set artifact set active artifact ID and that's going to
7:24:327 hours, 24 minutes, 32 secondsbe artifact oop artifact do ID and then we have
7:24:397 hours, 24 minutes, 39 secondspersist active artifact that's going to be artifact hold on
7:24:487 hours, 24 minutes, 48 secondsartifact do ID as well let me format and save and then after that here I'm going to add on artifact deleted.
7:24:567 hours, 24 minutes, 56 secondsThis is going to take artifact again single artifact not artifacts and on that we have a arrow function.
7:25:057 hours, 25 minutes, 5 secondsAnd so I'm going to say set files. It's going to take a current file. And then
7:25:117 hours, 25 minutes, 11 secondson that we have a current dot filter dot filill
7:25:187 hours, 25 minutes, 18 secondswhere we have a file and then on that we have another arrow function. So going to
7:25:267 hours, 25 minutes, 26 secondssay file dopath dot starts with slash not slash but
7:25:337 hours, 25 minutes, 33 secondstemplate literal here. And I'm going to say artifact dot slug. And we have a slash
7:25:427 hours, 25 minutes, 42 secondshere. Let me format and save. That's pretty much it for that. And then after that here, I'm going to say set
7:25:517 hours, 25 minutes, 51 secondsartifact. This is going to take current and then run a function on that where we
7:25:597 hours, 25 minutes, 59 secondshave a cost uh const remaining is equal to current dot filter
7:26:077 hours, 26 minutes, 7 secondsand we have an individual item there and I'm going to say
7:26:137 hours, 26 minutes, 13 secondsitem do ID is not equal to artifact do ID let me format and save that
7:26:227 hours, 26 minutes, 22 secondsnow here after that I'm going to say set active artifact id and here we have
7:26:307 hours, 26 minutes, 30 secondsactive id and I'm going to run a function which is going to be this and here I'm going to say const next is
7:26:387 hours, 26 minutes, 38 secondsequal to active id if that is equal to artifact
7:26:477 hours, 26 minutes, 47 secondsdo ID then this is going to be a remaining
7:26:547 hours, 26 minutes, 54 secondszero dot id otherwise it's just going to be null and uh else this is going to be
7:27:047 hours, 27 minutes, 4 secondsactivate active id there you go let me format and save and now after that here
7:27:117 hours, 27 minutes, 11 secondsI'm going to say if next is available then we're going to say persist active artifact
7:27:207 hours, 27 minutes, 20 secondsAnd here I'm going to provide the next value here. And eventually return next.
7:27:287 hours, 27 minutes, 28 secondsAnd then after that here one more time I'm going to say return remaining. Let me format and save everything.
7:27:367 hours, 27 minutes, 36 secondsAnd uh yeah there is one more thing that I would like to do that after this here I'm going to say
7:27:437 hours, 27 minutes, 43 secondson error this is going to be toast error. Let me format and save. And this has been implemented. Let's go here.
7:27:527 hours, 27 minutes, 52 secondsRefresh. And uh we do not see anything yet.
7:27:577 hours, 27 minutes, 57 secondsLet's let it's loading. Let's wait a little. Yes, there is nothing that can be seen yet, but there will be eventually once we have a few more things, right? Add artifact dialogue.
7:28:107 hours, 28 minutes, 10 secondsThen we have confirm dialogue. After the confirm dialogue here, I'm going to create a div. And I'm going to give it a
7:28:167 hours, 28 minutes, 16 secondsclass name with these classes. Open that div.
7:28:217 hours, 28 minutes, 21 secondsAnd here I have a project dot artifacts dot map. I have an individual artifact
7:28:297 hours, 28 minutes, 29 secondshere. And on that I'm going to run a function where I have this. And then finally I'm going to return here a div
7:28:397 hours, 28 minutes, 39 secondsto which I'm going to provide a key which is going to be artifact id and then also have a class name which is
7:28:477 hours, 28 minutes, 47 secondsgoing to be cn.
7:28:517 hours, 28 minutes, 51 secondsThere you go. And after that I'm going to open that div here. And I'm going to have these two buttons. So,
7:29:007 hours, 29 minutesfirst of all, I'm going to have this button. And then I'm going to have if I can delete, then I'm going to have this second button. And of course, we need
7:29:097 hours, 29 minutes, 9 secondsthe SVG icon for that, which I'm going to paste here. There you go. We have the close icon here. If I go to the browser
7:29:187 hours, 29 minutes, 18 secondshere, there you go. We have the main artifact here. Let's go back.
7:29:257 hours, 29 minutes, 25 secondsAnd now after this whole code block here,
7:29:347 hours, 29 minutes, 34 secondswe also have another button here which I'm going to paste. And if I go here, there you go.
7:29:427 hours, 29 minutes, 42 secondsWe have this plus icon. If I click on that, I get to say this add artifact where I have web app, mobile app, and
7:29:497 hours, 29 minutes, 49 secondsdesign. These are the artifacts that I can pick. I can close. Let's go back here. And now after this button, we have
7:29:577 hours, 29 minutes, 57 secondsthis div. I'm going to get out of that div. Create a new one here. And actually now I'm going to replace this div with
7:30:047 hours, 30 minutes, 4 secondsthe one that I have. So basically we have this div. Then we have another div inside and another inside we have a
7:30:117 hours, 30 minutes, 11 secondsbatch. And if the artifact u artifact active artifact is true then we display this otherwise none. And here we have a
7:30:207 hours, 30 minutes, 20 secondsart uh if the active artifact is true, we display the active uh artifact preview here. Let me format and save.
7:30:287 hours, 30 minutes, 28 secondsLet's go back. And there you go. We have a preview here. Web app here. And this is the web app artifact coming from here. Then this is the main artifact. It
7:30:377 hours, 30 minutes, 37 secondssays select this tab and tell agent what to build. And this tab is by default selected. So with that we have officially completed our preview panel.
7:30:497 hours, 30 minutes, 49 secondsAll right. So now when we have preview panel completed I would like to close out all of these files. Collapse everything from the sidebar. And the
7:30:577 hours, 30 minutes, 57 secondsnext thing that we're going to work on is these user layout I mean user area layout plus the account page shell. And
7:31:067 hours, 31 minutes, 6 secondsgoal for this one is going to be tabbed user area for account settings billing and trash. And for that I'm going to go
7:31:147 hours, 31 minutes, 14 secondsand create a account- menu.tsx file which is going to go inside components.
7:31:217 hours, 31 minutes, 21 secondsThen we have app. And then here we are going to have a shell folder. And then in there we have a account- menu.tsx.
7:31:337 hours, 31 minutes, 33 secondsAnd here first of all it's a client component. Then we have a link. Then also we have O client.
7:31:437 hours, 31 minutes, 43 secondsWe also have avatar and we also have account icon, billing icon.
7:31:557 hours, 31 minutes, 55 secondsThere you go.
7:31:577 hours, 31 minutes, 57 secondsAnd after that we also have settings icon and trash icon. After that we also
7:32:067 hours, 32 minutes, 6 secondsneed CN. And after the CN we have a type here account menu panel props as well as
7:32:147 hours, 32 minutes, 14 secondsa constant array where we have menu items and each one we have four 1 2 3 4
7:32:217 hours, 32 minutes, 21 secondsand every single one is a object where we have label and hrf and icon for them.
7:32:277 hours, 32 minutes, 27 secondsHere I'm going to say export function account menu panel
7:32:357 hours, 32 minutes, 35 secondsand here I'm going to have a user on close
7:32:417 hours, 32 minutes, 41 secondsclass name and this whole thing is going to be type of account menu panel props open function body and here we have a return.
7:32:537 hours, 32 minutes, 53 secondsSo this is going to be a div here and let me explain.
7:32:597 hours, 32 minutes, 59 secondsSo basically we have a div here with a ro menu area label is going to be account menu and a few classes. Then we
7:33:067 hours, 33 minutes, 6 secondshave another div. Then we have avatar in there. And we have a class name. Um I mean another div where we have the
7:33:137 hours, 33 minutes, 13 secondsaccount if the user already is if the user is there already and then we get the name from that. Otherwise we simply
7:33:207 hours, 33 minutes, 20 secondsgo for display account. And same goes for the email. If the email is there, we display that otherwise it's just not
7:33:277 hours, 33 minutes, 27 secondsgoing to be displayed. And uh on the menu item we run a map. And for the each item we display that in ALI where we
7:33:357 hours, 33 minutes, 35 secondshave a link and we provide the HR for that. And on link we also close the account menu panel as well. And we also
7:33:447 hours, 33 minutes, 44 secondshave a button here. And that button basically uh there you go sign out. That button is
7:33:527 hours, 33 minutes, 52 secondsfor the sign out. And of course now we need the sign out icon as well. So I'm going to come down here. And there you
7:34:007 hours, 34 minutesgo. We have the sign out icon and everything is done for this component.
7:34:077 hours, 34 minutes, 7 secondsAll right. Now after that the next file that I need is inside the shell folder.
7:34:127 hours, 34 minutes, 12 secondsI'm going to create a workspace dash selector.tsx and it's going to be a client component.
7:34:247 hours, 34 minutes, 24 secondsWe also bring use effect also use state.
7:34:307 hours, 34 minutes, 30 secondsWe also have avatar and then also get workspace label also
7:34:387 hours, 34 minutes, 38 secondsimport type and this is going to be app workspace.
7:34:447 hours, 34 minutes, 44 secondsAfter that I'm going to need CN as well.
7:34:497 hours, 34 minutes, 49 secondsAnd right now the very first thing that I'm going to do here I'm going to paste a chevron icon basically an SVG icon here.
7:34:597 hours, 34 minutes, 59 secondsAnd then here now I have a type workspace selector props. And then after
7:35:067 hours, 35 minutes, 6 secondsthat here I'm going to have an export function workspace selector. And I'm going to make sure
7:35:137 hours, 35 minutes, 13 secondsthat I have a workspaces then also active workspace
7:35:207 hours, 35 minutes, 20 secondsslug. Then also user and also class name. This is going to be
7:35:287 hours, 35 minutes, 28 secondstype of workspace selector props open function body. And here we have a let me format and save first.
7:35:407 hours, 35 minutes, 40 secondsWe have a label uh which is coming from get workspace label. Then we also have a open set open for use state also has a
7:35:487 hours, 35 minutes, 48 secondsuse effect which checks if the if this is not open the workspace selector. If that window is not open, then it
7:35:557 hours, 35 minutes, 55 secondsreturns. Otherwise, just can close that with the escape key. And uh we also handle the dismount part here as well.
7:36:047 hours, 36 minutes, 4 secondsAnd let me fix this one. Let me format and save. We eventually have a con avatar user name and user email here.
7:36:147 hours, 36 minutes, 14 secondsAnd that part after that part, we have a return as we're going to use this avatar name eventually.
7:36:227 hours, 36 minutes, 22 secondsI'm going to create an empty fragment here and in there I have this. So if the open is true then we have this button to
7:36:317 hours, 36 minutes, 31 secondsclose that right close workspace menu and then after that here we have a div.
7:36:387 hours, 36 minutes, 38 secondsLet me actually replace that with this div. And in this one we have
7:36:457 hours, 36 minutes, 45 secondsfirst of all if I mean if the workspace selector is open then we have workspace name panel and of
7:36:537 hours, 36 minutes, 53 secondscourse this cannot be found yet it cannot find that name and we're going to bring that and then we have this button
7:37:017 hours, 37 minutes, 1 secondwhere we have the avatar plus the label and chevron icon. Okay.
7:37:087 hours, 37 minutes, 8 secondsAnd for the workspace name panel now I'm going to get under this function and here I'm going to paste this. So we have this function workspace name panel where
7:37:167 hours, 37 minutes, 16 secondswe have label class name. Label is going to be string in class name is also string. We're returning a div with the real uh with the ro menu. A real label
7:37:257 hours, 37 minutes, 25 secondsis going to be workspace name. We have a class name and a bunch of class names for that. And in there we are displaying only a p tag which is [snorts]
7:37:347 hours, 37 minutes, 34 secondsdisplaying the label. And let me format and save. And that should be it for this component as well.
7:37:437 hours, 37 minutes, 43 secondsI'm going to close this file now. And the next one that I'm going to need is inside the shell folder again. That is going to be command dash pallet.tsx.
7:37:567 hours, 37 minutes, 56 secondsAnd here first of all it's a client component. And then use effect, use memo,
7:38:057 hours, 38 minutes, 5 secondsuse ref, use state, and then link,
7:38:127 hours, 38 minutes, 12 secondsuse router, and app model backdrop
7:38:197 hours, 38 minutes, 19 secondsCN. And I'm going to paste these SVG icons here where we have chevron icon,
7:38:267 hours, 38 minutes, 26 secondsaccount icon, and trash icon. And now after that here I have these types. We have type app
7:38:347 hours, 38 minutes, 34 secondscommand. Then we have for the app. Then we have basically app command which is uses the app command as an array where
7:38:417 hours, 38 minutes, 41 secondswe have each individual is an object inside that array. ID, keyword, title, description all based on that. And then
7:38:497 hours, 38 minutes, 49 secondswe have a command pallet props type here as well. And then after that here we have export
7:38:577 hours, 38 minutes, 57 secondsfunction command pallet and here I'm going to say
7:39:037 hours, 39 minutes, 3 secondsopen on close and this is going to be command pallet props open function body
7:39:117 hours, 39 minutes, 11 secondsand then in there we have this. So basically we have router, we have input reference, we have query and set query.
7:39:197 hours, 39 minutes, 19 secondsWe have a use effect which is basically for the set query and we have also the
7:39:257 hours, 39 minutes, 25 secondstimer and here we have filtered commands of course uh which uses use memo and
7:39:327 hours, 39 minutes, 32 secondsthen we have eventually app commands. We run a filter and for every single command we match the keyword if that
7:39:397 hours, 39 minutes, 39 secondsincludes a normalized or the title includes normalized or the description to lower case includes basically we're
7:39:467 hours, 39 minutes, 46 secondstargeting for the normalized that we are here basically which is basically is going to be query trimmed and to
7:39:547 hours, 39 minutes, 54 secondslowerase and then here we have function navigate which take a href which is supposed to be a string and then it runs
7:40:037 hours, 40 minutes, 3 secondsa router.put push on that given href and after this one here we have a return
7:40:127 hours, 40 minutes, 12 secondsand in the return we have this. So basically we have app model backdrop where we have open open on close on
7:40:217 hours, 40 minutes, 21 secondsclose and panel classes. Then we have a div inside that which is supposed to be a dialogue area model is going to be true search and commands and class name.
7:40:307 hours, 40 minutes, 30 secondsThere you go. We have another div one another div and SVG in there. After that we have an input
7:40:387 hours, 40 minutes, 38 secondswhere we have the reference as a input reference and value is going to be the query which we have here in our store.
7:40:457 hours, 40 minutes, 45 secondsThen we have on change and for that we're going to going to use the set query. We have placeholder class names, some uh custom static text and here we
7:40:557 hours, 40 minutes, 55 secondshave another div with so a bunch of with a bunch of CSS classes and then we have P tag and then here we are running
7:41:027 hours, 41 minutes, 2 secondsfiltered commands on if the length is more than zero then on that we have a ul tag and then for the each individual L
7:41:107 hours, 41 minutes, 10 secondstag li is based on every single command in that filtered commands list and then
7:41:177 hours, 41 minutes, 17 secondsfor the every li we I have a button inside and of course we have command title and command description there and
7:41:247 hours, 41 minutes, 24 secondsuh pretty much some simple text uh here and there and yeah let me format and save that and let me close this file as
7:41:337 hours, 41 minutes, 33 secondswell. All right I'm going [snorts] to collapse everything and I'm going to go and create the layout for the user area.
Chapter 7: User profile
7:41:417 hours, 41 minutes, 41 secondsFor that I'm going to go to the app and then app again and here I'm going to go to the dashboard. going to create a new
7:41:487 hours, 41 minutes, 48 secondsfolder in there which is going to be in the parentheses which is going to be user dash area and in there we have a
7:41:577 hours, 41 minutes, 57 secondsnew file layout.tsx tsx and first of all I'm going to bring user area layout and
7:42:057 hours, 42 minutes, 5 secondsthen here I'm going to export default function layout
7:42:157 hours, 42 minutes, 15 secondsand here we have a children this is going to be a type of children
7:42:227 hours, 42 minutes, 22 secondsand react dot react node and here we
7:42:287 hours, 42 minutes, 28 secondshave a return user area layout in which I'm going to display our
7:42:367 hours, 42 minutes, 36 secondschildren. Let me format and display and that is done. And along with that I'm going to create one more file
7:42:457 hours, 42 minutes, 45 secondsand that is going to be a loading.tsx tsx and here we have first of all a
7:42:527 hours, 42 minutes, 52 secondsglobal loading then I'm going to export default function loading and here we
7:43:017 hours, 43 minutes, 1 secondhave return global loading and for that we have a theme app and class win height
7:43:117 hours, 43 minutes, 11 secondsfull and we have flex one let me format and save and that is done let me close both of these files files and let's work on the page.tsx file.
7:43:237 hours, 43 minutes, 23 secondsSo now in the user area folder I'm going to create a new folder and I'm going to name it account and in there we have a
7:43:347 hours, 43 minutes, 34 secondsnew file page.tsx not paid but page page.tsx.
7:43:427 hours, 43 minutes, 42 secondsThere you go. And the first of all here the only thing that I'm going to do here is the import
7:43:507 hours, 43 minutes, 50 secondsaccount page from add slash components slash app
7:44:007 hours, 44 minutesslash dashboard slash account- page and I know this does not exist yet and we're
7:44:077 hours, 44 minutes, 7 secondsgoing to work on that in a minute. We have export default function page here and I'm going to return account page.
7:44:177 hours, 44 minutes, 17 secondsThere you go. So now in order to create this component I'm going to go to the components. Then we have app and then we
7:44:267 hours, 44 minutes, 26 secondshave dashboard and then in there I'm going to create a account dash page.tsx.
7:44:347 hours, 44 minutes, 34 secondsLet me format and save. And here first of all I'm going to bring redirect from next navigation also empty state also
7:44:447 hours, 44 minutes, 44 secondsget cached session. There you go.
7:44:497 hours, 44 minutes, 49 secondsSo after this one here we have I'm going to export async function
7:44:557 hours, 44 minutes, 55 secondsaccount page and here I'm going to say con session is equal to a wait
7:45:057 hours, 45 minutes, 5 secondsand get cached session. There you go. If
7:45:097 hours, 45 minutes, 9 seconds[snorts]
7:45:107 hours, 45 minutes, 10 secondssession dot user
7:45:177 hours, 45 minutes, 17 secondsdo id does not exist then we redirect and we go for the slash question mark o
7:45:267 hours, 45 minutes, 26 secondsis equal to login emperand callback url is equal to slash app slash account.
7:45:367 hours, 45 minutes, 36 secondsLet me format and save. And now before we move on further for this one, we're going to need to work on a few more.
7:45:447 hours, 45 minutes, 44 secondsActually before that, let me make sure that we are bringing this. So we have account page. Let me format and save.
7:45:537 hours, 45 minutes, 53 secondsAnd that has been added here.
7:45:567 hours, 45 minutes, 56 secondsAnd this is giving us a error because we do not have a return in this one. If I give it div something like that then
7:46:067 hours, 46 minutes, 6 secondsthat has turned green. I'm going to close this one and work on this one. But before that we're going to need a couple
7:46:137 hours, 46 minutes, 13 secondsof more files as those are going to be needed for this one to make further progress. So first of all I'm going to
7:46:217 hours, 46 minutes, 21 secondscollapse everything. I'm going to go to the lib and then here we have queries.
7:46:267 hours, 46 minutes, 26 secondsis in there. I'm going to create a new file that's going to be account.ts
7:46:347 hours, 46 minutes, 34 secondsand here we have this file. So we are bringing Prisma also account profile from our lib types account and we are
7:46:437 hours, 46 minutes, 43 secondsexporting a function get account profile where we take a user ID and we return a promise or just an empty uh just null
7:46:527 hours, 46 minutes, 52 secondsand if the database URL does not exist we return from this and we create the we have this user where we get the uh
7:47:027 hours, 47 minutes, 2 secondsPrisma user find unique we get that based on the ID and we select that and if that user does not exist we still
7:47:097 hours, 47 minutes, 9 secondsreturn and if that is available then we create this object and that's for the
7:47:167 hours, 47 minutes, 16 secondsaccount I'm going to close this one and now in here I'm going to need that I'm going to say const profile is equal
7:47:257 hours, 47 minutes, 25 secondsto a get account profile and that also autoimp imports here we have a session
7:47:337 hours, 47 minutes, 33 secondsdot user do ID And I'm going to say if profile does not exist then we have
7:47:427 hours, 47 minutes, 42 secondsreturn in which we have a div class name flex width dash full flex one items
7:47:517 hours, 47 minutes, 51 secondscenter justify center px6 py8 I'm going to open that div and here we
7:47:597 hours, 47 minutes, 59 secondshave an empty state and in there we have a theme which is going to be app also class name xwidth-md.
7:48:097 hours, 48 minutes, 9 secondsWe also have a title account unavailable.
7:48:157 hours, 48 minutes, 15 secondsThere you go. And then we have a description which is going to be connect
7:48:227 hours, 48 minutes, 22 secondsa database to load and edit your profile. Let me format and save. And let
7:48:317 hours, 48 minutes, 31 secondsme put the dot here. I think that's pretty much it for this one. And now this is in the case when the profile is does not available is not available but
7:48:397 hours, 48 minutes, 39 secondswhen the profile is available then we need another return here this one basically and in that case we're going
7:48:467 hours, 48 minutes, 46 secondsto need one more file and as that is going to be returned in case the profile is available. All right so the one file
7:48:557 hours, 48 minutes, 55 secondsthat I'm going to create now that is going to be for the server action and we're going to use that in a bit. So I would like to create that now. So I'm
7:49:037 hours, 49 minutes, 3 secondsgoing to go to the lib folder and after the lib we have actions and here I'm going to have a new file account.ts.
7:49:167 hours, 49 minutes, 16 secondsI'm going to give you this code here. So let me explain first of all this is a server component a server file. We're bringing revalidate path also write file make directory from the fs promises.
7:49:277 hours, 49 minutes, 27 secondsThen we have bringing also path from the node path with require user ids likeify username and prisma from our prisma.
7:49:357 hours, 49 minutes, 35 secondsThen we have this username pattern and uh yes just go with it whatever it is.
7:49:417 hours, 49 minutes, 41 secondsAnd then we have max avatar bytes allowed avatar bytes. And then here we have export async function update
7:49:507 hours, 49 minutes, 50 secondsaccount field action. And here we it requires a field as well as a value. And
7:49:577 hours, 49 minutes, 57 secondsthen after that one we also have a upload account avatar action.
7:50:087 hours, 50 minutes, 8 secondsAnd uh here we have basically first of all we are getting the extension of the
7:50:157 hours, 50 minutes, 15 secondsuploaded file. And then we have uploads directory either public or uploads or avatars.
7:50:227 hours, 50 minutes, 22 secondsAnd then here we have file name file path bytes await write file that's the function and then eventually we have
7:50:317 hours, 50 minutes, 31 secondsthis here prisma do user.update update and we update where the ID matches then
7:50:387 hours, 50 minutes, 38 secondswe update the image URL based on that and we have reed revalidate path eventually and return success true value
7:50:477 hours, 50 minutes, 47 secondsis going to be image URL and we have the remove account avatar action as well just like we have the upload account
7:50:547 hours, 50 minutes, 54 secondsavatar action I'm going to close this file the next file that I need before I work on the component that is going to
7:51:027 hours, 51 minutes, 2 secondsbe uh that is going to be returned And here the next file is going to be inside components and then it's going to be
7:51:107 hours, 51 minutes, 10 secondsinside app. After the app, it's going to be inside the
7:51:197 hours, 51 minutes, 19 secondslet me minimize this one. After the app, we have the shell home editor and dashboard. Here I'm going to create a new folder which is going to be account.
7:51:317 hours, 51 minutes, 31 secondsAnd in the account, that's going to be a new file connected dash accounts dash section.tsx.
7:51:427 hours, 51 minutes, 42 secondsThere you go. I'm going to import a type which is going to be connected
7:51:527 hours, 51 minutes, 52 secondsconnected account. There you go. Then here we have this uh provider label and
7:51:597 hours, 51 minutes, 59 secondsthat's we also have a type here Google for this one we this needs a Google icon plus a GitHub icon. Let me bring that
7:52:087 hours, 52 minutes, 8 secondshere. I'm going to get down here and let me paste these values. I have Google icon plus a GitHub icon plus a default
7:52:177 hours, 52 minutes, 17 secondsprovider icon. Let me format and save everything. And now under here I'm going to create a function
7:52:267 hours, 52 minutes, 26 secondsbasically a export function connected account
7:52:337 hours, 52 minutes, 33 secondssection and here I'm going to add account accounts and this is going to be a type of
7:52:427 hours, 52 minutes, 42 secondsconnected account section props open function body and here we have a return
7:52:527 hours, 52 minutes, 52 secondsand in the return we have this. Let me format and save that. So basically
7:52:577 hours, 52 minutes, 57 secondsin the return there you go yes what am I doing wrong? Left side of
7:53:067 hours, 53 minutes, 6 secondscomma operator is unused and has no side effects.
7:53:147 hours, 53 minutes, 14 secondsYep, that comma needs to go away. And now here we have a section a div and h2 basically all static u jsx context here.
7:53:267 hours, 53 minutes, 26 secondsThen we have accounts.length if that is more than zero. Then we have the ul and then for every single individual account
7:53:347 hours, 53 minutes, 34 secondswe have this label and then for the every single one we have an alli and
7:53:407 hours, 53 minutes, 40 secondsthen of course we have a JSX context for that where we're displaying an icon connected label and is if it's active
7:53:497 hours, 53 minutes, 49 secondsand something like that and no connected providers found if there are the length
7:53:567 hours, 53 minutes, 56 secondsis not more than zero right and let me form Go ahead and save. And that's pretty much it for this one.
7:54:037 hours, 54 minutes, 3 secondsI'm going to close this file. And the next file that I'm going to need is going to be inside account folder here.
7:54:117 hours, 54 minutes, 11 secondsAnd I'm going to create a new file inline-edit dash field.tsx.
7:54:217 hours, 54 minutes, 21 secondsI'm going to make sure that it's a client component and then it's let's bring use effect
7:54:297 hours, 54 minutes, 29 secondsuse state use transition and then input
7:54:377 hours, 54 minutes, 37 secondsalso use toast and CN and here we have the type which is inline edit field
7:54:467 hours, 54 minutes, 46 secondsprops id label value and a bunch of other uh things And here
7:54:527 hours, 54 minutes, 52 secondsI'm going to say export function inline edit field. And here we have all of the
7:55:027 hours, 55 minutes, 2 secondsarguments. ID label value placeholder
7:55:097 hours, 55 minutes, 9 secondsint prefix disabled saved message and on save. This is going
7:55:197 hours, 55 minutes, 19 secondsto be a type of inline edit field props open function body. And here we have this code and but before that
7:55:297 hours, 55 minutes, 29 secondsprefix let me fix that. Here we have a store where we have success uh that we are bringing from our use to and then we
7:55:387 hours, 55 minutes, 38 secondshave draft set draft is pending s start transition and for the use effect here we are setting the draft and we have a
7:55:477 hours, 55 minutes, 47 secondsfunction commit which is checking if this is disabled or it's pending then it returns and then we
7:55:547 hours, 55 minutes, 54 secondshave con next is equal to draft dot ttrim current valuetrim if next is equal to current it returns. Otherwise, we
7:56:027 hours, 56 minutes, 2 secondshave a start transition where we have a sync of it for the onsave which of course we have as a prop in the
7:56:107 hours, 56 minutes, 10 secondscomponent and eventually basically we have a success saved message the label saved and in this here we have a set
7:56:207 hours, 56 minutes, 20 secondsdraft as well and then basically we display the toast once the draft is set
7:56:277 hours, 56 minutes, 27 secondsand now after this function here I'm going to have a return in which I have
7:56:347 hours, 56 minutes, 34 secondsthis div. So let me format and save where we have a div another div and then we label HTML for id which of course is
7:56:427 hours, 56 minutes, 42 secondscoming from the props from here. Then we have a class name all of these we're displaying label here. If the hint is
7:56:507 hours, 56 minutes, 50 secondstrue we display this p tag and if prefix is there then we display this prefix otherwise null. We have an input. All of
7:56:587 hours, 56 minutes, 58 secondsthese are coming from the props. And then if is pending then we say saving otherwise press enter or click away to
7:57:057 hours, 57 minutes, 5 secondssave. Let me format and save. Close this one. I'm going to go ahead and create the last file that I need in order to create the account page client.
7:57:187 hours, 57 minutes, 18 secondsSo for that I'm going to go to the components app account here and I'm going to create a new file that's going
7:57:257 hours, 57 minutes, 25 secondsto be profile-foo dash section.tsx.
7:57:327 hours, 57 minutes, 32 secondsThere you go. Use client and then here we have use ref,
7:57:407 hours, 57 minutes, 40 secondsuse transition, use router, we have avatar,
7:57:487 hours, 57 minutes, 48 secondswe have use toast, remove account avatar action,
7:57:557 hours, 57 minutes, 55 secondsupload account avatar action CN. And then after that we have this type profile photo section props name
7:58:047 hours, 58 minutes, 4 secondsemail image and then after that we have export function profile photo section and I'm
7:58:137 hours, 58 minutes, 13 secondsgoing to say name email image type of profile photo action props open function
7:58:227 hours, 58 minutes, 22 secondsbody and here we have const router is equal to use router And then here we have this. Let me
7:58:307 hours, 58 minutes, 30 secondsformat and save. So we have a success coming from the use to input reference and is pending and start transition
7:58:387 hours, 58 minutes, 38 secondscoming from the use transition. We have a handle file change which takes an
7:58:447 hours, 58 minutes, 44 secondsinput and then we have a con form data coming from the from data and then we
7:58:507 hours, 58 minutes, 50 secondsappend avatar and we have start transition a sync with upload that basically is taking that from the action
7:58:597 hours, 58 minutes, 59 secondsand then if there is no if there is error it displays that and otherwise we have a success and router dot refresh
7:59:077 hours, 59 minutes, 7 secondsand eventually we set the target value to in empty string. Then we have a handle remove where we have start
7:59:147 hours, 59 minutes, 14 secondstransition and we use the another action for the remove account avatar from avatar action. If there's error we toast
7:59:227 hours, 59 minutes, 22 secondsthat if otherwise we have a success toast and we refresh the router. Let's
7:59:287 hours, 59 minutes, 28 secondsget an out here and we have a return here.
7:59:367 hours, 59 minutes, 36 secondsNow in the return we have this code. Let me format and save. So basically we have a section where we have a div and then
7:59:457 hours, 59 minutes, 45 secondswe have avatar and profile photo and these extension names. Then we have a
7:59:527 hours, 59 minutes, 52 secondsdiv where we have input and we use the on change handle file change here. Then we have a button with all of these
8:00:008 hoursclasses uploading and change photo. So then we have if the image is available then we have the button to remove that
8:00:088 hours, 8 secondsimage. That is pretty much it. I guess that is for the profile photo section.
8:00:148 hours, 14 secondsAnd now we are ready to work on the next main page which is going to be in the components
8:00:238 hours, 23 secondsapp account dash page dashclient.tsx.
8:00:328 hours, 32 secondsThere you go. And it's going to be a client component.
8:00:388 hours, 38 secondsUse router input update account field action
8:00:488 hours, 48 secondsimport type account profile.
8:00:568 hours, 56 secondsconnected account sections section inline edit field
8:01:038 hours, 1 minute, 3 secondsand we also need a profile photo section. Here we have this type and
8:01:108 hours, 1 minute, 10 secondsanother function format member since very simple profile here uh type here.
8:01:168 hours, 1 minute, 16 secondsLet me format and save. And then here we have export function account page client
8:01:258 hours, 1 minute, 25 secondsand here we have a profile which is going to be equal uh type of
8:01:338 hours, 1 minute, 33 secondsaccount page client props. Open that. And we have a const
8:01:408 hours, 1 minute, 40 secondsrouter is equal to use router. Then we have async function
8:01:508 hours, 1 minute, 50 secondssave field which takes a field which is supposed to be either name or username.
8:01:578 hours, 1 minute, 57 secondsThen we have a value which is supposed to be a string. And then here we have a con. Result is equal to a weight.
8:02:068 hours, 2 minutes, 6 secondsI'm going to say update account field action and where we have a field and value
8:02:148 hours, 2 minutes, 14 secondsand if result dot error is there then we return
8:02:218 hours, 2 minutes, 21 secondsan object where we have error is equal to result dot error and here we have
8:02:308 hours, 2 minutes, 30 secondsreturn let me format and save after that if here we have router dot refresh And then we have a return object where
8:02:398 hours, 2 minutes, 39 secondswe have value results dot value otherwise it's just going to be simple value. Let me format and save. So that
8:02:478 hours, 2 minutes, 47 secondssave field is done. After that here we have a return
8:02:558 hours, 2 minutes, 55 secondsand in the return here we have this JSX basically. So what we have here
8:03:038 hours, 3 minutes, 3 secondsfirst of all we have this div then another div and then we have this JSX here we have profile photo section and
8:03:118 hours, 3 minutes, 11 secondsthen we here we have inline edit field and seems like add import from inline edit field. I did add that I guess
8:03:218 hours, 3 minutes, 21 secondsinline get. Okay, that needs to be removed. Inline edit field. And then
8:03:288 hours, 3 minutes, 28 secondshere we have connected account section that says change spelling to connected account section.
8:03:378 hours, 3 minutes, 37 secondsConnected account.
8:03:418 hours, 3 minutes, 41 secondsWhere did I mess up? So I'm going to go here.
8:03:468 hours, 3 minutes, 46 secondsconnected account section. Everything seems good to me.
8:03:548 hours, 3 minutes, 54 secondsOkay, hold on. Yeah, this seems good.
8:04:048 hours, 4 minutes, 4 secondsConnected accounts section and but here we have a different
8:04:138 hours, 4 minutes, 13 secondsconnected accounts section. Okay, got it. So, let's use without the S here.
8:04:208 hours, 4 minutes, 20 secondsLet me format and save.
8:04:238 hours, 4 minutes, 23 secondsAnd yes, then we have another section with some JSX. Pretty much it. Nothing
8:04:298 hours, 4 minutes, 29 secondsspecial here. And now if I close this one, go back here. And now here I would like to display that.
8:04:398 hours, 4 minutes, 39 secondsSo, account page client. And here we have a profile which is going to be profile. Let me format and save that.
8:04:498 hours, 4 minutes, 49 secondsLet's go here. And now if I go back to the app
8:04:568 hours, 4 minutes, 56 secondsand in there if I go to the account I should see that
8:05:038 hours, 5 minutes, 3 secondsthere you go. We have this is the photo section and then this is the hold on.
8:05:138 hours, 5 minutes, 13 secondsWe have connected accounts section. This one we have the profile section and then we have the account info here and profile I mean the photo section here.
8:05:258 hours, 5 minutes, 25 secondsWe can change photo. There you go. And of course we cannot go to the settings yet. That will give us 404 because that
8:05:338 hours, 5 minutes, 33 secondsdoes not exist yet. And now if I reload, we should see the loader there that we see. Awesome. Excellent job, guys.
8:05:438 hours, 5 minutes, 43 secondsWonderful. All right. Now, when we have our account page ready, I would like to go to the settings page and I'm going to
8:05:498 hours, 5 minutes, 49 secondsgo here and I'm going to go back to my code editor. Close everything here. Collapse
Chapter 8: Settings
8:05:578 hours, 5 minutes, 57 secondsthis one here. And the one file that I'm going to create is lib. Then I'm going to go to the actions. And here we have a settings.ts.
8:06:108 hours, 6 minutes, 10 secondsIn this file, we have this code. So first of all, I'm going to make sure that we are getting it from the lib. I'm going to format and save everything.
8:06:178 hours, 6 minutes, 17 secondsThis is a server file. We are bringing revalidate path require user ID also the type default start page and also Prisma
8:06:268 hours, 6 minutes, 26 secondsnormalize workspace slug and unique workspace slug and validate workspace slug. We have this type settings update
8:06:348 hours, 6 minutes, 34 secondswhere we have default start page and show.
8:06:398 hours, 6 minutes, 39 secondsThen we have export async function update user setting action. A action basically to update the user settings.
8:06:468 hours, 6 minutes, 46 secondsThen we have a update workspace log action. We also have uh here that unique workspace slug.
8:06:548 hours, 6 minutes, 54 secondsBasically we're using that which is being imported here. And basically in this one we have two. We have update
8:07:018 hours, 7 minutes, 1 secondworkspace slug and we have a update user setting action. I'm going to format [snorts] and save everything.
8:07:098 hours, 7 minutes, 9 secondsAnd right now the next file that we need is going to be inside this queries where I'm going to have a new file
8:07:178 hours, 7 minutes, 17 secondssettings.ts. TS I'm going to give you this code where we make sure that app user settings
8:07:248 hours, 7 minutes, 24 secondshold on. So basically we need to create this app user settings. This is the type that we need. And for that I'm going to collapse everything in here. I'm going
8:07:338 hours, 7 minutes, 33 secondsto go to the lip folder. And then here we have the types. Where is the types? There you go.
8:07:418 hours, 7 minutes, 41 secondsAnd here we have a settings.ts ts file in which I'm going to give you this export type app user settings and
8:07:498 hours, 7 minutes, 49 secondsdefault and default start page options. So I'm going to format and save everything.
8:07:558 hours, 7 minutes, 55 secondsClose this one. And right now I'm going to make sure that we have slash settings. There you go. That's imported.
8:08:058 hours, 8 minutes, 5 secondsHere we have a find or create user settings one function for that. Then we have get user settings one function for
8:08:138 hours, 8 minutes, 13 secondsthat. And I'm going to close this file also this one. Let me close that. And
8:08:208 hours, 8 minutes, 20 secondsright now just like the account page, I'm going to go to the app and then app again dashboard user area. And here I'm
8:08:288 hours, 8 minutes, 28 secondsgoing to create a new folder. I'm going to name it settings. And here we have a page.tsx.
8:08:378 hours, 8 minutes, 37 secondsFirst of all, I'm going to import a settings page from
8:08:458 hours, 8 minutes, 45 secondsslash components slash app slashdashboard slash settings page. This page does not
8:08:548 hours, 8 minutes, 54 secondsexist yet. We're going to create that in a minute. Export default function page.
8:09:028 hours, 9 minutes, 2 secondsAnd here we open the function body where we return let me get down here where we return
8:09:118 hours, 9 minutes, 11 secondssettings page. There you go. Let me format and save. And of course this is going to give us the error because that page does not exist yet. So for that I'm
8:09:208 hours, 9 minutes, 20 secondsgoing to create this page now. I'm going to collapse everything from here. we have components and here we have app and
8:09:278 hours, 9 minutes, 27 secondsthen in there we have a dashboard and this is where I would like to create a settings-page.tsx
8:09:358 hours, 9 minutes, 35 secondstsx file. In this one, we have a redirect that I'm going to need. Also a
8:09:428 hours, 9 minutes, 42 secondsempty state and also get cached session also get cached user
8:09:528 hours, 9 minutes, 52 secondsget cached user settings. Actually, I need that file
8:09:588 hours, 9 minutes, 58 secondshere. Let me create that one now. So, first of all, I'm going to collapse everything in here. I'm going to go to
8:10:058 hours, 10 minutes, 5 secondsthe lib and then we have queries and in there we have a settings.ts file. Okay, get user settings. We already have that.
8:10:168 hours, 10 minutes, 16 secondsAnd now I'm going to open our lib/cached
8:10:238 hours, 10 minutes, 23 secondsfile. And here I'm going to import get user settings. There you go. And I'm
8:10:308 hours, 10 minutes, 30 secondsgoing to need that. So after this one here we have export const get cacheed user
8:10:408 hours, 10 minutes, 40 secondssettings is equal to cach a and here I'm going to need get user settings. There you go. Let me format and save that. And that is done. And now we need that here.
8:10:528 hours, 10 minutes, 52 secondsSo for that I'm going to go here and I'm going to add get cacheed user settings.
8:10:578 hours, 10 minutes, 57 secondsThere you go. That's been added. And now here I'm going to say export is sync
8:11:048 hours, 11 minutes, 4 secondsfunction settings page. And here we have a const
8:11:118 hours, 11 minutes, 11 secondssession is equal to await get cached
8:11:178 hours, 11 minutes, 17 secondssession. And here I'm going to say if session
8:11:258 hours, 11 minutes, 25 secondsdot user do id does not exist. In that case we redirect and that's going to be
8:11:348 hours, 11 minutes, 34 secondsslash question mark o is equal to login emperson%
8:11:428 hours, 11 minutes, 42 secondscallback url is equal to slash app slash settings let me format and save and
8:11:498 hours, 11 minutes, 49 secondsafter that here I'm going to say uh const settings is equal to await get
8:11:578 hours, 11 minutes, 57 secondscached user user settings and here we have session dot user do ID
8:12:068 hours, 12 minutes, 6 secondsand now I'm going to say if settings are not available then we have a return
8:12:148 hours, 12 minutes, 14 secondswhere we have a div going to give it a class name flex with dash full flex dash
8:12:218 hours, 12 minutes, 21 secondsone items center justify center px 6py8 open that div and here we have empty
8:12:298 hours, 12 minutes, 29 secondsstate in which we have theme app also class name max width-md and also title
8:12:398 hours, 12 minutes, 39 secondsis going to be title is going to be settings unavailable.
8:12:488 hours, 12 minutes, 48 secondsThen we have description.
8:12:518 hours, 12 minutes, 51 secondsDescription which is going to be connect a database to save your
8:13:008 hours, 13 minutespreferences. Let me format and save. And that is done. And of course now we need a return that is going to be return
8:13:098 hours, 13 minutes, 9 secondssomething from this component. So we have a return div for now. Let me format and save. And here
8:13:198 hours, 13 minutes, 19 secondssettings page. There you go. That's been added. Now if we go here, there is nothing here yet. But the 404 error is
8:13:268 hours, 13 minutes, 26 secondsgone. And now here we need that component that is going to display the stuff in here.
8:13:348 hours, 13 minutes, 34 secondsAll right. So first of all, I'm going to create a component toggle. And for that I'm going to collapse everything in
8:13:418 hours, 13 minutes, 41 secondshere. Inside components inside UI create a new file toggle.tsx.
8:13:498 hours, 13 minutes, 49 secondsAnd there you go. We are bringing scene from our utils. This is the type toggle pro props where we make sure that we
8:13:568 hours, 13 minutes, 56 secondshave checked on change disabled and label. We have export function toggle where we return a button. Type is
8:14:048 hours, 14 minutes, 4 secondsbutton. Ro is switched. Area checked is checked. Area label is labeled. Disabled disabled. And on click we use the on
8:14:118 hours, 14 minutes, 11 secondschange and reverse its current state. We make it false. So if that's true, it reverses that to false. If that is
8:14:198 hours, 14 minutes, 19 secondsfalse, it reverses that to true. And we have all of these classes. And we have this span inside the button which
8:14:278 hours, 14 minutes, 27 secondsbasically is a self-closing tag. So that is basically pretty much it. I'm going to close this one.
8:14:358 hours, 14 minutes, 35 secondsAfter that, I'm going to collapse everything here. Once again, I'm going to go to the components app. And here I
8:14:418 hours, 14 minutes, 41 secondsneed one more folder which is going to be settings. And in there we have a new
8:14:518 hours, 14 minutes, 51 secondsfile which is going to be settings page dashclient.tsxs.
8:14:598 hours, 14 minutes, 59 secondsFirst of all, it's a client component and then after that we have use router
8:15:068 hours, 15 minutes, 6 secondsthat we need also use a state use transition also inline edit field
8:15:168 hours, 15 minutes, 16 secondsalso select and toggle also use toast and update user settings action.
8:15:298 hours, 15 minutes, 29 secondsand also update workspace slug action.
8:15:348 hours, 15 minutes, 34 secondsAlso need import type and I'm going to need app user
8:15:418 hours, 15 minutes, 41 secondssettings and also need default start page options.
8:15:508 hours, 15 minutes, 50 secondsI think that's pretty much it. Default start page options. Yeah. And then after that here we have this. So basically we
8:16:008 hours, 16 minuteshave a type settings page client props where we have settings which is supposed to be this type coming from the type
8:16:088 hours, 16 minutes, 8 secondssettings. Then we have settings key. We have a function settings section which takes three arguments title description
8:16:168 hours, 16 minutes, 16 secondsand children. And with simple JSX here and eventually inside the div we have children displayed. Let me format and
8:16:258 hours, 16 minutes, 25 secondssave. And now the next thing that we need is this function where we have a settings row which takes label a
8:16:338 hours, 16 minutes, 33 secondsdescription and children again some JSX and it displays the label. If description is there is it displays that
8:16:418 hours, 16 minutes, 41 secondsas well and simply it returns uh displays the children here as well. Let me format and save once again. Come down
8:16:498 hours, 16 minutes, 49 secondshere. And now here I'm going to say export function settings page client.
8:16:588 hours, 16 minutes, 58 secondsAnd here it expects a settings which is going to be initial.
8:17:058 hours, 17 minutes, 5 secondsThere you go. Initial. I'm going to add a comma here. Maybe not there's no need for that. And then here I'm going to say
8:17:138 hours, 17 minutes, 13 secondssettings page client props open function body here. And now here we have this.
8:17:208 hours, 17 minutes, 20 secondsLet me format and save. We have a router also success from the toast settings setting is padding from the use
8:17:298 hours, 17 minutes, 29 secondstransition. Then we have a function update settings which has this generic type which extends settings key which we
8:17:368 hours, 17 minutes, 36 secondsalready are defining here. And then here we it expects a key value and saved
8:17:438 hours, 17 minutes, 43 secondsmessage. We have set settings here for our store. And then we have basically this start transition
8:17:528 hours, 17 minutes, 52 secondswhich is also doing the await from the update user settings action and based on the result if there are errors it set
8:18:018 hours, 18 minutes, 1 secondsettings to that initial and also displays the error otherwise simply it just give us the success saved message.
8:18:098 hours, 18 minutes, 9 secondsAll right.
8:18:118 hours, 18 minutes, 11 secondsNow after this function which is ending here, I'm going to have a return.
8:18:198 hours, 18 minutes, 19 secondsSo here first of all I have a div. I'm going to give it a class name which is this. Open this div. And here we have
8:18:268 hours, 18 minutes, 26 secondsthis div. Let me format and save. And now here let me bring that
8:18:348 hours, 18 minutes, 34 secondssettings page client. There you go. That's the
8:18:428 hours, 18 minutes, 42 secondscomponent that we need. Settings page client.
8:18:488 hours, 18 minutes, 48 secondsAll right. And is missing a type. Okay.
8:18:538 hours, 18 minutes, 53 secondsAnd that is going to be settings. Here we have settings. Let me format and save. Let's go back to our settings
8:19:008 hours, 19 minutespage. And there you go. Now let's go back here. We can close this one. I guess there's no need to add anything
8:19:068 hours, 19 minutes, 6 secondselse to this file. And that's gone. And page that can be closed here as well.
8:19:138 hours, 19 minutes, 13 secondsAnd now after this div here, I'm going to have this div. And let me explain what is happening. So first of
8:19:218 hours, 19 minutes, 21 secondsall, we have a div. Then we have a settings section which is also a component that we just created a few
8:19:298 hours, 19 minutes, 29 secondsminutes ago. Right? And uh basically yes that same component lives
8:19:378 hours, 19 minutes, 37 secondsin the same file. Here we have settings section and settings row here in the same file. And then here we have inline
8:19:478 hours, 19 minutes, 47 secondsedit field which was a separate component. And that settings section is
8:19:548 hours, 19 minutes, 54 secondsclosing here. Let me go here and refresh.
8:20:018 hours, 20 minutes, 1 secondAnd there you go. So this basically each one is a section where we have workspace and workspace URL. So and then here we
8:20:108 hours, 20 minutes, 10 secondshave another uh section where we have settings section title general. That's for this one. And of course here we have
8:20:178 hours, 20 minutes, 17 secondsa settings row where we have this select and we are running a map method on the
8:20:258 hours, 20 minutes, 25 secondsdefault start page options for every single option we have this option uh element that we're using and we are
8:20:338 hours, 20 minutes, 33 secondsdisplaying that options label there. All right. And then finally we have the settings section again that component for the editor as well which is here.
8:20:458 hours, 20 minutes, 45 secondsAnd this one is the toggle that we are using. And that has been saved. Shortcut preference saved. If I enable that back, that has been saved once again. Awesome.
8:20:588 hours, 20 minutes, 58 secondsAll right. So now when both account and settings page are ready, I'm going to go and create the trash page. For that,
Chapter 9: Trash
8:21:058 hours, 21 minutes, 5 secondslet's go to our code editor, close everything, and collapse everything in here. I'm going to go to the app hidden
8:21:138 hours, 21 minutes, 13 secondsapp again. dashboard user area and then here I'm going to create a new folder
8:21:198 hours, 21 minutes, 19 secondswhich is going to be trash and in there we have a new file page.tsx tsx first of
8:21:288 hours, 21 minutes, 28 secondsall I'm going to import a component that we do not have created yet that we have not created yet and that is
8:21:378 hours, 21 minutes, 37 secondstrash page is from slash components slash slashdashboard
8:21:468 hours, 21 minutes, 46 secondsslash crash d-page let me format and save then we have export default
8:21:548 hours, 21 minutes, 54 secondsfunction page and Here I'm going to say return trash page. There you go. Let me
8:22:018 hours, 22 minutes, 1 secondformat and save. All right. So the next file that I need before I create the trash page that is going to go inside
8:22:108 hours, 22 minutes, 10 secondsthe components app dashboard. Here we have new file that's going to be trash-page-client.tsx.
8:22:218 hours, 22 minutes, 21 secondsAnd here we have this. So first of all we have a
8:22:288 hours, 22 minutes, 28 secondsit's a client component use router we're bringing that from max navigation use state use transition we're also bringing
8:22:358 hours, 22 minutes, 35 secondsbutton confirm dialogue and use toast and of course these two actions seems like they are not available we will get
8:22:438 hours, 22 minutes, 43 secondsto them in a minute and um import type is app trash project which we already have available and then format relative
8:22:528 hours, 22 minutes, 52 secondstime we have a type trash page client props which takes projects and then this
8:23:008 hours, 23 minutesis supposed to be a app trash project type array of that export function trash
8:23:068 hours, 23 minutes, 6 secondspage client which expects projects and this return this trash page client props. All right. Then here we have our
8:23:158 hours, 23 minutes, 15 secondsstore. We have router success coming from use to project set projects pending id set pending id delete set delete is pending coming from the use transition.
8:23:258 hours, 23 minutes, 25 secondsThese are all use states. Then we have handle restore. That's where we are setting our hand uh set pending id and
8:23:338 hours, 23 minutes, 33 secondswe also have a start transition here where we use the fun uh the action and based on that if that is not available
8:23:408 hours, 23 minutes, 40 secondsif there are errors we display that and also the toast and if that is available we uh refresh the router and things like
8:23:488 hours, 23 minutes, 48 secondsthat and then here we have handle confirm permanent delete of course it uses that which of course is not
8:23:558 hours, 23 minutes, 55 secondsavailable to us yet I will provide that in a minute and And then here we finally have the return where we have a div a ul
8:24:038 hours, 24 minutes, 3 secondsin there we loop through the projects and then for every single project we have a ally in which we have a div
8:24:118 hours, 24 minutes, 11 secondsanother div h2 which displays the project name and then here we have project if the
8:24:188 hours, 24 minutes, 18 secondsdescription is available we display that otherwise just we do not want to display the p tag there in the dom and then we
8:24:258 hours, 24 minutes, 25 secondshave another p tag for the deleted and we We have another div tag which contains a button for the restore and a
8:24:338 hours, 24 minutes, 33 secondsbutton for the delete permanently. And finally, here we have the confirm dialogue which of course is going to be displayed when somebody clicks on the delete icon.
8:24:448 hours, 24 minutes, 44 secondsAll right, let me format and save that.
8:24:468 hours, 24 minutes, 46 secondsAnd let's make sure we do have these ones. So for that I'm going to go to the lib/actions
8:24:558 hours, 24 minutes, 55 secondsand there I'm going to go to the projects. This is the file and here under that we need these two functions.
8:25:038 hours, 25 minutes, 3 secondsFirst we have restore project action and then second we have permanently delete project action. Please refer to the
8:25:138 hours, 25 minutes, 13 secondsGitHub repo link is available in the description. You can get all of the code from the repo exactly the same as I'm
8:25:218 hours, 25 minutes, 21 secondsgiving you guys here. And I'm only giving you guys code here instead of writing myself because again I've been
8:25:288 hours, 25 minutes, 28 secondstelling this for so many times that the project is taking way longer than I anticipated for the video. The first
8:25:368 hours, 25 minutes, 36 secondspart of the project is already uploaded on YouTube which is about 12 hours long.
8:25:418 hours, 25 minutes, 41 secondsAnd now this one is also going to be about 11 or 12 hours long. And I do not
8:25:488 hours, 25 minutes, 48 secondswant to create a third or the fourth part for this project which is again going to be each 12 hours long part. And
8:25:588 hours, 25 minutes, 58 secondsuh that's why I'm just trying to give you the code and take as minimum time on
8:26:058 hours, 26 minutes, 5 secondsthe project as possible and still give you guys the code and also explain where I can. And yeah, let's move on.
8:26:168 hours, 26 minutes, 16 secondsAnd I'm going to close this one. And that has been added here. Let me form ahead and save everything. I'm going to
8:26:238 hours, 26 minutes, 23 secondsclose this one here as well. And of course, now is the part to create this one. And for that, we're going to go back to the components app dashboard.
8:26:328 hours, 26 minutes, 32 secondsHere we need that trash-page.tsx.
8:26:418 hours, 26 minutes, 41 secondsSo in the trash-page.tsx, So tsx we have this and let me show you
8:26:478 hours, 26 minutes, 47 secondscrash page client. Okay. So I'm going to get here dashboard slash trash hold on
8:26:558 hours, 26 minutes, 55 secondsapp slash dashboard slashtrash page client. There you go. And here we have
8:27:038 hours, 27 minutes, 3 secondsredirect also our trash page client button empty state get cached and get trash project for user coming from the
8:27:128 hours, 27 minutes, 12 secondsqueries of user. Here we have export asyncing function trash page and in there we have we're checking if the
8:27:198 hours, 27 minutes, 19 secondssession I mean the user ID is not there we do redirect that back to the trash and then we have projects that is also
8:27:288 hours, 27 minutes, 28 secondscoming checking whether the database available or not if that is available then we're getting get trash project for
8:27:358 hours, 27 minutes, 35 secondsuser where we're giving the ID to that otherwise it's just an empty string uh empty array we finally return a div h1
8:27:438 hours, 27 minutes, 43 secondsand some text in there. And if the project's length is more than zero, then we have trash cl page client. Otherwise,
8:27:518 hours, 27 minutes, 51 secondswe have an empty state. And of course, now if we go there, we are not going to see anything on the trash page
8:28:008 hours, 28 minutesyet. So this is a loading here. And now back to projects here. If I because there are no maybe there are projects.
8:28:118 hours, 28 minutes, 11 secondsHold on. Let me go to the projects page here. There there is one project available I think and that should be displayed there.
8:28:218 hours, 28 minutes, 21 secondsThe reason is yes that is available there but only the reason is because we are not displaying the projects yet. We are only displaying the empty state here. So now here we have trash page.
8:28:338 hours, 28 minutes, 33 secondsI'm going to say slash trash page. Let me format and save everything. Let's go back here. Refresh.
8:28:468 hours, 28 minutes, 46 secondsOh, it's it's good. Actually, trash is actually empty. I forgot because the project is available. But that is available in the projects. I haven't
8:28:558 hours, 28 minutes, 55 secondsdeleted that yet. So, if I delete that, move that to the trash. My test app.
8:29:028 hours, 29 minutes, 2 secondsLet's see if that project moved to the trash. It's gone from here. And now if I go to the trash page, it's loading. And
8:29:108 hours, 29 minutes, 10 secondsthere you go. Fantastic. If I restore that. Let's see if this goes back to our project. Project restored. Let's go back to projects.
8:29:218 hours, 29 minutes, 21 secondsAnd there you go. Fantastic.
8:29:248 hours, 29 minutes, 24 secondsNow, here are a few things that I would like to work on like polishing stuff there. For example, there's workspace selector. There's also command pallet.
8:29:328 hours, 29 minutes, 32 secondsSo, for that, I'm going to go back to my code editor. Close everything in here and I'm going to go to the components
8:29:398 hours, 29 minutes, 39 secondsapp. Then we have shell and in there we have a app shell.tsx.
8:29:478 hours, 29 minutes, 47 secondsSo here I'm going to say command pallet. There you go. Found that. And now we need to display that.
8:29:568 hours, 29 minutes, 56 secondsSo for that here I'm going to say command pallet and I'm going to say open. It's going to
8:30:058 hours, 30 minutes, 5 secondsbe command open. Hold on.
8:30:108 hours, 30 minutes, 10 secondsAnd here I'm going to say on close. This is going to be set command open. And I'm
8:30:188 hours, 30 minutes, 18 secondsgoing to change that to actually this is this should be a callback function here. And here I can
8:30:268 hours, 30 minutes, 26 secondssay false. Let me format and save. And now there is one more thing that we need that is a use effect.
8:30:378 hours, 30 minutes, 37 secondsSo for that after this open command here I'm going to give you that use effect here where you guys can see that where
8:30:468 hours, 30 minutes, 46 secondswe have use effect function handle key down and we're missing one thing here basically. So event dot meta key or
8:30:528 hours, 30 minutes, 52 secondsevent control key and event key to lower case. Basically command K and that's
8:31:008 hours, 31 minutesgoing to do the set command open current and then basically it can if that's closed it's going to open that. If that's open it's going to close that.
8:31:098 hours, 31 minutes, 9 secondsAnd we need to add this one.
8:31:138 hours, 31 minutes, 13 secondsAnd let me check. So yes we have some spelling issues. So set command open here. Set command open here and set
8:31:228 hours, 31 minutes, 22 secondscommand open here. There you go. Yeah, all seems good. Let me format and save.
8:31:278 hours, 31 minutes, 27 secondsAnd let's go back here. I'm going to refresh once. And if I enter command K, there you go.
8:31:378 hours, 31 minutes, 37 secondsWe have our account page that we can go to. We have our trash page that we can go to. We can use the search here. Account. Awesome.
8:31:478 hours, 31 minutes, 47 secondsFantastic. I can either hit uh escape key or uh double press the command key.
8:31:528 hours, 31 minutes, 52 secondsIt's going to go away. Excellent. So next I'm going to go to my code editor.
8:31:578 hours, 31 minutes, 57 secondsClose this one and I am going to open app dash sidebar.tsx
8:32:048 hours, 32 minutes, 4 secondsfile. Here we have avatar. Also I'm going to bring account menu panel. Also I'm going to bring workspace.
8:32:148 hours, 32 minutes, 14 secondsworkspace selector. There you go. Awesome.
8:32:218 hours, 32 minutes, 21 secondsAnd now the workspace selector is going to be used here. I'm going to get rid of this. And here we have workspace
8:32:288 hours, 32 minutes, 28 secondsselector. I'm going to say workspaces which is going to be workspaces. Then we have active workspace slug. That's going
8:32:378 hours, 32 minutes, 37 secondsto be here. Active workspace slug. And here I'm going to add user which of
8:32:448 hours, 32 minutes, 44 secondscourse is going to be the user. Let me format and save. Let's go back here. And there you go.
8:32:518 hours, 32 minutes, 51 secondsIf I click on that, there is there is my workspace. And I also my avatar is there as well. Excellent. And now we need to
8:33:008 hours, 33 minuteswork on the account menu panel. Let's go back here.
8:33:058 hours, 33 minutes, 5 secondsAnd here I'm going to look for something like There you go. account menu panel
8:33:128 hours, 33 minutes, 12 secondsand here I'm going to say account menu panel and this is going to be user user
8:33:198 hours, 33 minutes, 19 secondsthen we have on close a callback function set account open and this is going to be false and then we
8:33:288 hours, 33 minutes, 28 secondshave class name I'm going to say absolute also bottom full and then we
8:33:368 hours, 33 minutes, 36 secondshave left zero z 50 and then we have margin bottom two width dash full and format and save. If
8:33:468 hours, 33 minutes, 46 secondsI go back here now it's refreshing and now if I click on this one there you
8:33:558 hours, 33 minutes, 55 secondsgo we have name, avatar, email, account, settings, billing, trash and everything.
8:34:018 hours, 34 minutes, 1 secondIf I can go to the trash from here I can sign out from here. Excellent.
8:34:068 hours, 34 minutes, 6 secondsWonderful. Wonderful job. And now there are a couple of little adjustments that I would like to make. For example, it says account here that should be
8:34:168 hours, 34 minutes, 16 secondsupdated. So here I'm going to go to this and instead of this I'm going to have this. There you go. If user name is
8:34:258 hours, 34 minutes, 25 secondsavailable then we're going to display that. Otherwise it's going to be account and view menu. If user email is available we're going to display that.
8:34:348 hours, 34 minutes, 34 secondsOtherwise view menu. Let's go back here.
8:34:378 hours, 34 minutes, 37 secondsAnd there you go. my name and my email is here. My initials are here and I think we can do something about that as
8:34:468 hours, 34 minutes, 46 secondswell. Uh we have the avatar here. We have size name and the one thing that I need to add
8:34:548 hours, 34 minutes, 54 secondsthat is image user dot image. Let me format and save. Let's go
8:35:008 hours, 35 minutesback here and there you go. My image, my name, my email. Click on that.
8:35:058 hours, 35 minutes, 5 secondsEverything is there and everything is here as well. Wonderful.
8:35:118 hours, 35 minutes, 11 secondsI'm going to go back to my code editor as there are a couple of more files that I would like to address create before we
Chapter 10: Refinements
8:35:198 hours, 35 minutes, 19 secondsmove on to the anthropic SDK integration. So those files are I'm going to go to the lib and here we have
8:35:298 hours, 35 minutes, 29 secondsour hooks folder. In there, I'm going to create a new file that's going to be use speech dashreation.ts.
8:35:398 hours, 35 minutes, 39 secondsThere you go. Recognition. Yes. All good. Let me for paste that. And here we
8:35:478 hours, 35 minutes, 47 secondshave a few things. First of all, it's a client file. We are bringing this from React. Then we have this type. And then
8:35:548 hours, 35 minutes, 54 secondswe have function get speech recognition constructor.
8:35:588 hours, 35 minutes, 58 secondsAnd we have speech recognition does not exist on type window and type of global list. Do you mean recognition
8:36:068 hours, 36 minutes, 6 secondsevent? Okay, that is a TypeScript type error basically. So for that yes I
8:36:158 hours, 36 minutes, 15 secondsremember that we need to create a file in the types. Hold on let me get the new folder here. That's going to be types.
8:36:278 hours, 36 minutes, 27 secondsAnd in there we have a new file. I'm going to name it speech dash recognition d.ts.
8:36:388 hours, 36 minutes, 38 secondsAnd there you go. This is our type where we have speech recognition alternative speech recognition result and a few
8:36:468 hours, 36 minutes, 46 secondsmore. You can go through that and that is available in the GitHub repo as well.
8:36:518 hours, 36 minutes, 51 secondsI'm going to close this one. So that error has been gone. It's resolved and we can use use speech recognition hook
8:37:008 hours, 37 minutesin our project. I'm going to close this one as well. All right. Now, the next file that we need is in order to make
8:37:078 hours, 37 minutes, 7 secondssure that we're completely done before the enthropic SDK. That's going to go inside the components app. And in there
8:37:158 hours, 37 minutes, 15 secondswe have home. And I'm going to create a new file. I'm going to name it prompt dash attachment dash dialogue.tsx.
8:37:298 hours, 37 minutes, 29 secondsLet me give you this code here. First of all, this is a client component. We're bringing this from React. This is app
8:37:378 hours, 37 minutes, 37 secondsmodel backdrop and these are the things that we are importing from prompted attachment and CN from the utils. This is the type that we have open on closed.
8:37:468 hours, 37 minutes, 46 secondsThese are the options that we have for that type. and prompt attachment dialogue is the component that we're
8:37:528 hours, 37 minutes, 52 secondsexporting from here. These are the props that it expects based on the given type
8:38:008 hours, 38 minutesthat we have defined here. Then this is the store where we have also a reset function where we use call use call back
8:38:088 hours, 38 minutes, 8 secondsit set pending files to empty and set is dragging to false and things like that.
8:38:148 hours, 38 minutes, 14 secondsWe also have a processing files function and also we have a handle confirm. And finally in the return we have a app
8:38:228 hours, 38 minutes, 22 secondsmodel backdrop that's going to cover the entire screen which holds a div which is supposed to be a dialogue basically. There we have
8:38:308 hours, 38 minutes, 30 secondsarea label upload files and things like that. And then we have another div where if it's a landing page then we display
8:38:378 hours, 38 minutes, 37 secondsthe border separately otherwise for the app it's a different color. We have another div which holds a H2 add files P
8:38:458 hours, 38 minutes, 45 secondstag with different um conditional styles and of course we have images documents and some text here as well button for
8:38:548 hours, 38 minutes, 54 secondsthe close icon and also we have a div for the where we have on drag enter basically for the drop zone where we can
8:39:018 hours, 39 minutes, 1 seconddrag and drop our files to a lot of CSS classes here we have also upload icon and if it's landing then we use this one
8:39:108 hours, 39 minutes, 10 secondsotherwise we have this color that we're using and of course this is just all some simple JSX that we're using here
8:39:188 hours, 39 minutes, 18 secondsand there with some conditional styles and some conditional texts. All right, I'm going to format and save everything.
8:39:258 hours, 39 minutes, 25 secondsI'm going to close this one and I'm going to open the app prompt input file.
8:39:308 hours, 39 minutes, 30 secondsI'm going to get to the very top of this file and here I'm going to need both use
8:39:368 hours, 39 minutes, 36 secondsspeech recognition also prompt attachment
8:39:448 hours, 39 minutes, 44 secondsdialogue and now of course we need to use this.
8:39:488 hours, 39 minutes, 48 secondsSo first of all I'm going to get to the function and in the app prompt input
8:39:558 hours, 39 minutes, 55 secondsafter the can submit here basically I am going to get rid of the is listening here and I'm going to change this to
8:40:048 hours, 40 minutes, 4 secondsthis function here where we have basically where uh we are extracting is listening is supported toggle listening
8:40:128 hours, 40 minutes, 12 secondsand stop listening from the use speech recognition hook And here we have speech
8:40:208 hours, 40 minutes, 20 secondsprefix reference. Okay, I guess we have a spelling issue for that speech
8:40:268 hours, 40 minutes, 26 secondspre. Let me copy that and change that all over the places. Let me make sure.
8:40:328 hours, 40 minutes, 32 secondsYes, prefix also. Let me check where is that being used.
8:40:388 hours, 40 minutes, 38 secondsSo there only. So that's going to change to prefix. Something like that.
8:40:468 hours, 40 minutes, 46 secondsAll right, that's fixed. And uh we have a use effect another one here basically actually no that was there already. This one did not bring that or maybe it did.
8:40:578 hours, 40 minutes, 57 secondsYes it did. So we have a con text area text area. And if text area is not there with then we return and otherwise we are
8:41:068 hours, 41 minutes, 6 secondsstyling its height and if it's landing page basically it's just some simple styling based on if the text area is selected or not and whether we are on
8:41:148 hours, 41 minutes, 14 secondsthe landing page or on the app page and here in the
8:41:228 hours, 41 minutes, 22 secondsuse effect stop listening here in the handle submit here I would like to do one thing so after can submit and I
8:41:298 hours, 41 minutes, 29 secondscannot submit and when or it's disabled after they return here I'm going to add stop listening there you go and we also
8:41:388 hours, 41 minutes, 38 secondshave onsubmit value trim here too awesome and now I would like to have one more
8:41:468 hours, 41 minutes, 46 secondsfunction which is basically handle my click when it's not supported we display this error and we simply return from
8:41:538 hours, 41 minutes, 53 secondsthis and when it's not listening then we have this and toggle listening this the this is the only thing that this function is going to do. Let me format
8:42:028 hours, 42 minutes, 2 secondsand save that. And now in here we need that prompt attachment dialogue. Prompt attachment dialogue.
8:42:118 hours, 42 minutes, 11 secondsI'm going to close. I'm going to get rid of this one. And here we have open. I'm going to add
8:42:188 hours, 42 minutes, 18 secondsattachment dialogue open. Then we also have on close. This is going to be call back function. Set attachment dialogue
8:42:268 hours, 42 minutes, 26 secondsopen. Uh I'm going to change that to false here. Let me format and save. And then after that here I'm going to say
8:42:358 hours, 42 minutes, 35 secondscurrent count which is going to be attachments attachments uh dotlength.
8:42:438 hours, 42 minutes, 43 secondsAnd then we also have a variant which is going to be hold on there you go variant. Let me
8:42:508 hours, 42 minutes, 50 secondsfrom save. And then we also need on add which is going to be this next
8:42:588 hours, 42 minutes, 58 secondsattachments. And for that I'm going to have this on attachment change. And on
8:43:068 hours, 43 minutes, 6 secondsthat we have dot dotattachments and as a second value I'm going to add
8:43:138 hours, 43 minutes, 13 secondsdot dot next attachments. Let me format and save. And then finally here I'm going to add on error which is going to
8:43:208 hours, 43 minutes, 20 secondsbe on error here as well. Let me format and save. And that should be it for the prompt attachment.
8:43:288 hours, 43 minutes, 28 secondsIf I go to my browser and if I can go to the homepage let's say for now. And if I
8:43:358 hours, 43 minutes, 35 secondsclick on this one. Nope. It cannot trigger that yet. And I know why.
8:43:428 hours, 43 minutes, 42 secondsAnd uh if I can go there, click on this one. Nope, it does not.
8:43:508 hours, 43 minutes, 50 secondsLet's go back to this one. And here. Now I'm going to scroll up and I'm going to
8:43:578 hours, 43 minutes, 57 secondsget to the text area. There you go. And after the text area, we have this div.
8:44:048 hours, 44 minutes, 4 secondsAnd yes, this is the button. So for this button here, I'm going to add on click.
8:44:108 hours, 44 minutes, 10 secondsAnd this is going to be set attachment dialogue open. I'm going to set that to true. Let me format and
8:44:188 hours, 44 minutes, 18 secondssave. And we also have a disabled. But that's actually is already there. Let me
8:44:268 hours, 44 minutes, 26 secondsformat and save. Let's go back here. I'm going to refresh one more time. Just precautionary.
8:44:348 hours, 44 minutes, 34 secondsAnd let's click on that. And there you go. Fantastic. If let's test the homepage. If I click on that and this is
8:44:438 hours, 44 minutes, 43 secondsthe white one, the light one for the homepage. Excellent. Wonderful job, guys. The next thing that we need to
8:44:508 hours, 44 minutes, 50 secondstest is the mic. I'm going to click on this one.
8:44:558 hours, 44 minutes, 55 secondsNope. Seems like we need to provide add the link on I mean the click effect here to
8:45:048 hours, 45 minutes, 4 secondsthat mic icon as well. Let's get back here.
8:45:088 hours, 45 minutes, 8 secondsSo, I'm going to scroll down and I'm going to get to plan mode. After that, here we have a this is plan mode change.
8:45:188 hours, 45 minutes, 18 secondsAnd uh seems like this is the Yep, this is the mic one. So, here we have an on
8:45:258 hours, 45 minutes, 25 secondsclick and I'm going to say handle mic click. Let me format and save. Let's go back here and let's click on the mic icon here.
8:45:358 hours, 45 minutes, 35 secondsThere you go. microphone in use. Okay. What will you build?
8:45:428 hours, 45 minutes, 42 secondsFantastic. It's listening to me. Awesome.
8:45:468 hours, 45 minutes, 46 secondsSo, that's it for this one, guys. I think that right now we have officially completed the app the app without the
8:45:558 hours, 45 minutes, 55 secondsSDK and right now we are ready to move on to the SDK integration. Wonderful job guys. All right. Now when we have our
8:46:038 hours, 46 minutes, 3 secondsapp completed and ex obviously except the enthropic agent plus the preview. So for that we're going to work on the
8:46:128 hours, 46 minutes, 12 secondsenthropic. Now I'm going to go to my code editor. I'm going to close everything. And now in here the very first thing that I'm going to do is I'm
8:46:208 hours, 46 minutes, 20 secondsgoing to close my session here. There you go. Clear. And now in [snorts] here I'm going to say
8:46:288 hours, 46 minutes, 28 secondsnpm install at Enthropic- AI slash SDK and install that.
8:46:418 hours, 46 minutes, 41 secondsAll right, that has been installed. I'm going to do npm run dev. There you go. And I'm going to
8:46:488 hours, 46 minutes, 48 secondsclose this window. And now the very first thing that I need to do is I'm going to go to my env.lo and I'm going
8:46:558 hours, 46 minutes, 55 secondsto paste these values here. There you go. First of all, we have a server only. That's going to be entropic API key.
8:47:018 hours, 47 minutes, 1 secondYou're going to you're supposed to get yours from the uh console.anthropic.com
8:47:098 hours, 47 minutes, 9 secondssomething. Hold on a second. So there you go. Something like that. So console.anthropic.com
8:47:168 hours, 47 minutes, 16 secondsyou are going to get there. Create an account uh top up with the credit and then you create an API key. You paste
8:47:238 hours, 47 minutes, 23 secondsthat API key here and also you get the entropy model. [snorts] This is the cheaper one. That's why I'm using this
8:47:308 hours, 47 minutes, 30 secondsone. And that's pretty much it. I'm going to format and no need to format. Save everything here and close this one.
8:47:378 hours, 47 minutes, 37 secondsAll right. So, the next thing that I'm going to do is I'm going to go to the lip folder and in there I'm going to create a new file which is going to be anthropic.ts.
8:47:478 hours, 47 minutes, 47 secondsThere you go. I'm going to give you this code here. So, first of all, we're bringing entropic from the entropic SDK.
8:47:538 hours, 47 minutes, 53 secondsThen we have also we are creating a variable let client which is either going to be entropic or null and null is
8:48:008 hours, 48 minutesdefault to null by default equal to export function get entropic client and here we have the API key that we're
8:48:078 hours, 48 minutes, 7 secondsbringing from our env file if API key does not available we throw the error if client is not available we create a new
8:48:148 hours, 48 minutes, 14 secondsclient and we finally return that client from there right I'm going to format and
8:48:218 hours, 48 minutes, 21 secondssave that and close this on the next file that I'm going to work on is going to be lib lib and then agent
8:48:298 hours, 48 minutes, 29 secondsand in there we have a new file I'm going to create constants
8:48:358 hours, 48 minutes, 35 secondsts constants.ts FTS there you go and here I'm going to give you this code where we have first of all a constant
8:48:438 hours, 48 minutes, 43 secondsdefault max tokens and default max turns we also have entropic max tokens that we have created here that's based on these
8:48:518 hours, 48 minutes, 51 secondsvalues that we have constants above then we also have this export con maxed turns
8:48:588 hours, 48 minutes, 58 secondsand we also have here a max agent continue nudges basically there are also the default model here we are using a
8:49:078 hours, 49 minutes, 7 secondsnew functions here to create the constants for our entropic workaround. All right,
8:49:168 hours, 49 minutes, 16 secondsI'm going to close this one and the next thing that I'm going to do is I'm going to close the server and I'm going to do
8:49:238 hours, 49 minutes, 23 secondsnpm install es build. There you go. And install that.
Chapter 11: Preview API route
8:49:318 hours, 49 minutes, 31 secondsSo that has been installed. I'm going to clear everything here. npm rundev.
8:49:368 hours, 49 minutes, 36 secondsThere you go. And I'm going to close this one.
8:49:408 hours, 49 minutes, 40 secondsI'm going to collapse everything from here. And I'm going to go to the lip folder. And then we have a
8:49:478 hours, 49 minutes, 47 secondspreview here. And in there we have a new file that is going to be list dashwork space dash paths.ts.
8:49:578 hours, 49 minutes, 57 secondsAnd there you go. Now in here, first of all, we are getting a read directory from the FS promises. Then we have path
8:50:058 hours, 50 minutes, 5 secondsfrom node path. And then we have artifact workspace directory from our lib project files which we have here.
8:50:128 hours, 50 minutes, 12 secondsThen we are creating a function and also exporting that list workspace relative paths. It takes a project ID and a
8:50:198 hours, 50 minutes, 19 secondsartifact slug. Right? And that's basically it that we are doing from this function. And I'm going to close this
8:50:288 hours, 50 minutes, 28 secondsone. And the next thing that I'm going to do is I'm going to go to the public folder. And in there I'm going to create a new folder. which is going to be
8:50:378 hours, 50 minutes, 37 secondsproject dash workspace. And in there I'm going to need one more file which is
8:50:438 hours, 50 minutes, 43 secondsgoing to be dot get key. That's pretty much it. No need for anything else. No
8:50:518 hours, 50 minutes, 51 secondsneed to write anything. And yeah, that's all. Now next I'm going to collapse everything in here once again. And I'm
8:50:578 hours, 50 minutes, 57 secondsgoing to go to the lip folder. And there we have this preview folder. I'm going to create a new file which is going to be CSS-induct-plugin.ts.
8:51:108 hours, 51 minutes, 10 secondsNow here we have a read file. We also have the import type ES build that we're bringing from ES build. And then finally
8:51:198 hours, 51 minutes, 19 secondswe have export function CSS inject plugin and that basically inline CSS
8:51:268 hours, 51 minutes, 26 secondsimports as runtime style injection works with write false. So basically we have
8:51:328 hours, 51 minutes, 32 secondsthe con uh contents here const CSS and these are going to be appended to the
8:51:388 hours, 51 minutes, 38 secondsdocument head eventually. So yeah that's for that. Let me format and save that.
8:51:458 hours, 51 minutes, 45 secondsClose that as well. The next one is going to be create a new file inside the preview folder. That's going to be detect- preview-mode.ts.
8:51:588 hours, 51 minutes, 58 secondsAnd here we have this code. Let me explain what's happening. So first of all, we are have read file and path being imported. We are also importing
8:52:078 hours, 52 minutes, 7 secondsthese artifact workspace directory and list workspace relative path from the list workspace pass file that we just
8:52:148 hours, 52 minutes, 14 secondscreated a few minutes ago. We also have this extensions. Then these react entry candidates. We also have this ESM entry
8:52:238 hours, 52 minutes, 23 secondscandidates. There you go. And we have project stack either static or ES build react or ES build ASM normalized path.
8:52:318 hours, 52 minutes, 31 secondsWe also have a script tag which is being used here here and here of course.
8:52:398 hours, 52 minutes, 39 secondsBasically these all these all are functions that are being used for the uh
8:52:468 hours, 52 minutes, 46 secondsdetection of the mode when let's say when I provide a prompt to the AI and AI
8:52:548 hours, 52 minutes, 54 secondsstarts building work on that and the it depends whether I asked AI to create a react app or some other sort of app and
8:53:018 hours, 53 minutes, 1 secondbased on that this is the file which is going to detect whether it's react what what sort of files are being imported
8:53:088 hours, 53 minutes, 8 secondsand then it's going to use uh the build process based on those files. So basically this is for that. Let me close
8:53:158 hours, 53 minutes, 15 secondsthat. The next one is going to be in in the same folder. I'm going to name it ensure- react- entry.ts.
8:53:258 hours, 53 minutes, 25 secondsAnd here we have the code access read file and write file are being imported from the promises path from the node path. And then we have write project
8:53:348 hours, 53 minutes, 34 secondsfile from the project files. We have these are the component order navbar header hero featured categories product and footer and file exists. This is a
8:53:438 hours, 53 minutes, 43 secondsfunction for that. We have a try and cache block and then we have a component name from path which takes a relative
8:53:508 hours, 53 minutes, 50 secondspath which is supposed to be a string and then it returns that basically path and then here we have sort components.
8:54:008 hours, 54 minutesAnd now here we have sort components.
8:54:028 hours, 54 minutes, 2 secondsThis is basically is going to be used for let's say when there's a react project that is being built through AI
8:54:098 hours, 54 minutes, 9 secondsagent and uh this is going to be used for sorting the components of that project in each landing page something
8:54:188 hours, 54 minutes, 18 secondslike that then here we have build app source and here we have basically agent sometimes write the main.jsx plus
8:54:278 hours, 54 minutes, 27 secondscomponents slash but forget the app.jsx JSX synthesize a root app from flat
8:54:348 hours, 54 minutes, 34 secondscomponent file so preview can bundle. So yeah that's for that and of course we have some rejects going on and a few other things.
8:54:468 hours, 54 minutes, 46 secondsAnd now I'm going to create a one more file which is going to be bundle dash artifact.ts.
8:54:568 hours, 54 minutes, 56 secondsHere we have this function whole code basically where we are bringing these from the fp promises uh fs promises and
8:55:058 hours, 55 minutes, 5 secondsalso from node path CSS inject plug-in that we created earlier all of these functions that we are getting from the
8:55:128 hours, 55 minutes, 12 secondsdetect preview mode. We also have ensure react entry files and also artifact workspace directory. Here we have type
8:55:208 hours, 55 minutes, 20 secondsbundle cache entry which is going to take a bundlejs fingerprint and also build at we have a bundle cache uh which
8:55:308 hours, 55 minutes, 30 secondsis basically a new map which is which takes a string and also the bundle cache entry and then we also have this react
8:55:378 hours, 55 minutes, 37 secondsasm import map. We have react domact dom client and a few things more. We have a
8:55:448 hours, 55 minutes, 44 secondscach a key here. We have also a fingerprint workspace. And we also have a bundle artifact here which takes a project ID, artifact slug, relative
8:55:538 hours, 55 minutes, 53 secondspaths and stack. And of course, we have a few extensions that it takes care of.
8:55:598 hours, 55 minutes, 59 secondsAnd yeah, and of course we have a few like tags based on the default styling.
8:56:068 hours, 56 minutes, 6 secondsAnd also we have also scripts being attached to that. That's all what this all bundle artifact does. And of course,
8:56:148 hours, 56 minutes, 14 secondsthere is the basic HTML skeleton that's going to being you that's going to be used for the preview. Of course, I'm
8:56:228 hours, 56 minutes, 22 secondsgoing to close this one. And now I'm going to create a new file inside the preview. And that is going to be format
8:56:308 hours, 56 minutes, 30 secondsdashbundle dash error error.ts. Format-bundle-er.ts.
8:56:398 hours, 56 minutes, 39 secondsYeah, looks good. Now here we have this.
8:56:438 hours, 56 minutes, 43 secondsSo basically we are exporting a function format bundle error which takes the error which is supposed to be unknown because we don't know what kind of error
8:56:508 hours, 56 minutes, 50 secondsthat could be. And here we in the if statement we check if error is there and the type of error is equal to object or
8:56:598 hours, 56 minutes, 59 secondsand also errors is available in the error and then we create this constant errors and here of course we return that
8:57:088 hours, 57 minutes, 8 secondserror and we run a loop through every single item from that error. Basically we do a map on that. Moving on, I'm
8:57:178 hours, 57 minutes, 17 secondsgoing to close this file and I'm going to need to create one more which is going to be in the same folder in the preview and that is going to be
8:57:268 hours, 57 minutes, 26 secondspreview dash error dash
8:57:348 hours, 57 minutes, 34 secondshtml.ts and there you go. Basically this whole thing is a return where we have this
8:57:428 hours, 57 minutes, 42 secondsHTML skeleton where we have given a default styling for the body for the panel for the H1 P1 pre-tax and that is
8:57:528 hours, 57 minutes, 52 secondsgoing to be displayed in the preview window in the right side. If we go here
8:58:018 hours, 58 minutes, 1 secondwe are in the app right now. If we go to the projects, there you go. This is the project.
8:58:128 hours, 58 minutes, 12 secondsAnd this whole thing is going to be displaying that preview. So that's for that. I'm going to close this one. And the next file that I need is new file.
8:58:238 hours, 58 minutes, 23 secondsHere we have serve dash preview.ts.
8:58:318 hours, 58 minutes, 31 secondsAnd here we have this code. Let me format and save. We have access read file and stat coming from fs promises
8:58:398 hours, 58 minutes, 39 secondspath from path. We have all these three imports coming from our build artifact.
8:58:448 hours, 58 minutes, 44 secondsAnd then resolve project stack format bundle error artifact workspace directory and build preview error html. Also
8:58:538 hours, 58 minutes, 53 secondsimporting some things these three things from the project project files. And here we have export function async function
8:59:018 hours, 59 minutes, 1 secondserve act artifact index. And of course this is a longer function and it takes
8:59:088 hours, 59 minutes, 8 secondsfirst of all here we have a constant HTML which awaits the build bundle
8:59:168 hours, 59 minutes, 16 secondspreview HTML. Based on that we have a project ID project log base bundle URL and the stack. It returns that HTML in
8:59:248 hours, 59 minutes, 24 secondsthe in the body. Then we have content type which is going to be this index.html.
8:59:318 hours, 59 minutes, 31 secondsAnd here we have constant label which is going to be stack is equal to as builder react then this otherwise we have this
8:59:388 hours, 59 minutes, 38 secondswe finally return a body and a content type. We have absolute path the join and here we have artifact workspace
8:59:458 hours, 59 minutes, 45 secondsdirectory where we get a where we provide a project ID as well as a artifact slug. We have try in cache block. In there we try we use the access
8:59:548 hours, 59 minutes, 54 secondsabsolute and we have in the cache block we return that body build preview adder HTML where we provide some information for that error basically some static
9:00:029 hours, 2 secondstext and then we have content type which is going to be here again index.html HTML for the get name type.
9:00:109 hours, 10 secondsAnd here we have export asyncing function server server artifact file.
9:00:159 hours, 15 secondsThis expects a project ID, artifacts log, relative path and options. And we
9:00:229 hours, 22 secondsalso have a few more. I mean we have workspace root and we have a file stat
9:00:309 hours, 30 secondshere which expect that stat from coming from the fs promises and then we have content which uh expects read file and
9:00:389 hours, 38 secondsthen we have beam type also and then if that starts with text/html then we have this otherwise I mean only
9:00:469 hours, 46 secondsin that case we have this raw html which is going to be returned here and finally we return a body content and
9:00:559 hours, 55 secondscontent type to me. Let me format and save. I'm going to close this one as well and I'm going to create a new one
9:01:029 hours, 1 minute, 2 secondsthat is going to be access.ts TS and here we have that we're first of all bringing Prisma then we have has project
9:01:119 hours, 1 minute, 11 secondsaccess and project access where coming from the project access then here we have export async function authorize
9:01:189 hours, 1 minute, 18 secondspreview access and in there we have first of all we have public deployment and that is based on the prisma
9:01:269 hours, 1 minute, 26 secondsdeployment find first uh it's going to be found based on the project ID is current is true status is live and
9:01:349 hours, 1 minute, 34 secondsvisibility is public and then we have project deployment. If that is true then we return allowed true as constant and
9:01:419 hours, 1 minute, 41 secondsthen if user ID is available then we also provide the user ID as well here in the project access
9:01:489 hours, 1 minute, 48 secondsand [snorts] uh if project uh if workspace project is available then we return allowed true as constant and finally we return allowed false as
9:01:569 hours, 1 minute, 56 secondsconstant. Uh that's pretty much it. I'm going to close this one as well. Next, I'm going to collapse everything from
9:02:029 hours, 2 minutes, 2 secondshere and I'm going to go to the app folder, then the API, and then in there, I'm going to create a new folder. Going
9:02:119 hours, 2 minutes, 11 secondsto name it projects. Then inside projects, I'm going to create one more folder, which is going to be square
9:02:189 hours, 2 minutes, 18 secondsbrackets project ID. And then in there going to create one more folder. I'm going to name it
9:02:279 hours, 2 minutes, 27 secondspreview. And then in there going to create one more folder. And I'm going to name it artifact slug inside this uh
9:02:379 hours, 2 minutes, 37 secondssquare brackets. And then in there create a new file that's going to be route.ts and I'm going to provide this code here.
9:02:469 hours, 2 minutes, 46 secondsLet me format and save. So basically bring we're bringing the headers from next headers. Next response also from the next server. We have o authorize
9:02:569 hours, 2 minutes, 56 secondspreview access and server artifact index async function get user id and then here
9:03:039 hours, 3 minutes, 3 secondsin the export async function get which is ending at the very end in there this expects a request as well as a context.
9:03:119 hours, 3 minutes, 11 secondsThe context itself is a object where we have a pram which is supposed to be a
9:03:189 hours, 3 minutes, 18 secondsbasically a promise and of course that has a project ID itself and artifact
9:03:249 hours, 3 minutes, 24 secondsslug also. We get the user ID, project ID, artifact slug and access and if
9:03:309 hours, 3 minutes, 30 secondsaccess is not allowed we return and we do a try in cache block in the try. We get the served out of this serve
9:03:389 hours, 3 minutes, 38 secondsartifact index where we provide the project ID and artifact slack that we are getting here from the get session user. And finally here as you guys can
9:03:489 hours, 3 minutes, 48 secondssee that we return a next response the server body and the header contains the content type served.content type and
9:03:569 hours, 3 minutes, 56 secondscache control no control. Let me format and save that. I'm going to close this one. And the next thing that we need is
9:04:049 hours, 4 minutes, 4 secondsI'm going to right now I am inside the artifact slug folder.
9:04:119 hours, 4 minutes, 11 secondsAnd now in there I'm going to create one more folder and I'm going to name it dot dot dot path. And then in there create a new file same route.ts.
9:04:229 hours, 4 minutes, 22 secondsThere you go. We have this code for that where we have headers next to response and we're bringing almost everything identical for this one as well. a
9:04:309 hours, 4 minutes, 30 secondsnormalized relative path here as well and we get the user session. Then based on that we have a get request and of
9:04:399 hours, 4 minutes, 39 secondscourse we provide a context. Then we have the user ID and if the user ID is available and also success is allowed.
9:04:479 hours, 4 minutes, 47 secondsHere we return an X response I mean is not allowed. We return a next response with the error unauthorized and uh we
9:04:569 hours, 4 minutes, 56 secondshave the relative path here and eventually here once we have the download and the file name we do a try
9:05:049 hours, 5 minutes, 4 secondsin the try we have served that we're getting out of served artifact file and here we have project ID artifact slug
9:05:139 hours, 5 minutes, 13 secondsand relative path and uh we return that next response with the served body and headers and in case of catch patch we
9:05:229 hours, 5 minutes, 22 secondsalso get that error that file is not found. Let me format and save that. All right. Next, I'm going to go to this
9:05:309 hours, 5 minutes, 30 secondsprojects and here we have project ID and in there I'm going to create a new folder. I'm going to name it files.
9:05:419 hours, 5 minutes, 41 secondsFiles. Let me rename.
9:05:449 hours, 5 minutes, 44 secondsAnd in there I'm going to need a new file which is going to be route.ts.
9:05:529 hours, 5 minutes, 52 secondsLet me provide this code here. Basically similar functionality here. We're getting the user ID. We also authorize
9:05:599 hours, 5 minutes, 59 secondsthe project and then we have the request and context based if the user is not available we throw an error. We make
9:06:079 hours, 6 minutes, 7 secondssure we have the project ID. project if project is not there we also throw an error and we for the files we also get
9:06:139 hours, 6 minutes, 13 secondsthat from the Prisma based on the project ID and eventually we return the
9:06:209 hours, 6 minutes, 20 secondsnext response which has the files and uh basically everything that we have grabbed here so far let me format and
9:06:289 hours, 6 minutes, 28 secondssave that now I need you to open the promptts file and here first of all at
9:06:379 hours, 6 minutes, 37 secondsthe very beginning I'm going import a few things like this lib slashgenerated
9:06:449 hours, 6 minutes, 44 secondsclient then we also have enthropy coming from the enthropic SDK we are also bringing detect preview mode with stack
9:06:529 hours, 6 minutes, 52 secondsand type here also and then we have export these ones here and now here I'm going to come down here
9:06:599 hours, 6 minutes, 59 secondsand I'm going to provide this code where basically we have a readonly tools basically we have object where we have
9:07:079 hours, 7 minutes, 7 secondsname description Input schema try uh type properties and required basically
9:07:149 hours, 7 minutes, 14 secondsuh some text and objects nothing special here nothing else code some static text here and there and that's pretty much it
9:07:239 hours, 7 minutes, 23 secondsand now since we have this agent tools error I'm going to make sure that we do have that so I'm going to get to the bottom of this file and provide this let
9:07:329 hours, 7 minutes, 32 secondsme format and save so basically again it's just some object objects with uh some static text and with some properties. That's pretty much it.
9:07:429 hours, 7 minutes, 42 secondsExport con agent tools. Here we have that. And now above the agent tools here I'm going to provide few more code that
9:07:519 hours, 7 minutes, 51 secondsis exactly the same as well. We have a bunch of uh com we have basically arrays in there. We have text. We also have
9:07:599 hours, 7 minutes, 59 secondsobjects in there. We have text. Here we have build agent system prompt that expects a few arguments and based on
9:08:059 hours, 8 minutes, 5 secondsthat it if something is true then we have this otherwise we have we check something and next and then you see we
9:08:149 hours, 8 minutes, 14 secondshave different joins basically this whole thing is a typescript code where
9:08:209 hours, 8 minutes, 20 secondswe have a mostly arrays and uh objects and some most like 95% of this whole file is some static text. That's it.
9:08:339 hours, 8 minutes, 33 secondsLet me format and save that. I'm going to close this file and close everything here. I'm going to go to the lib folder and under the lib here we have agent.
9:08:459 hours, 8 minutes, 45 secondsAnd inside agent, I'm going to create a new file that's going to be tool-input
9:08:529 hours, 8 minutes, 52 secondsdash parser.ts file. And there you go. Let me format and save. So basically we have a
9:09:009 hours, 9 minutesfunction that we're exporting for the extract write file partial. Then uh we also have another function that we're
9:09:079 hours, 9 minutes, 7 secondsexporting for the extract complete build partial. And we have one more function un
9:09:159 hours, 9 minutes, 15 secondsescape JSON string. We have a few rejects here and there. Then we have a few extensions here. And that is
9:09:249 hours, 9 minutes, 24 secondslanguage from path that is going to detect that. Let me format and save that and close that. And now I'm going to go
9:09:339 hours, 9 minutes, 33 secondsto the same agents folder. And here we have a new file which is going to be
9:09:399 hours, 9 minutes, 39 secondsbuild dash artifact context.ts and I'm going to save I'm going to
9:09:479 hours, 9 minutes, 47 secondsprovide that code here. So first of all let me explain that we are bringing prompt attachment directory also read
9:09:549 hours, 9 minutes, 54 secondsproject file from the project files. We have a couple of constants here. One for the correctors and one for the priority.
9:10:029 hours, 10 minutes, 2 secondsThen we have relative path from the DB.
9:10:069 hours, 10 minutes, 6 secondsAnd then here we have a score path. We have truncate content. And we have build artifact context snapshot.
9:10:149 hours, 10 minutes, 14 secondsAnd of course it expects a few arguments. We provide that.
9:10:209 hours, 10 minutes, 20 secondsAll right. I'm going to save everything here and close this one as well. The next file that I need to open is that is
9:10:279 hours, 10 minutes, 27 secondsgoing to be entitlements inside the building folder. And first of all here I'm going to import a few things like
9:10:349 hours, 10 minutes, 34 secondshere we have entropic max tokens max agent turns and get entropic model. And let me yeah use this one. And now the
9:10:449 hours, 10 minutes, 44 secondsnext thing that we need here is after the free project limit here
9:10:529 hours, 10 minutes, 52 secondsthat is going to be this. Let me format and save.
9:10:569 hours, 10 minutes, 56 secondsAnd now under the get apt here, I'm going to need one more thing and that's going to be this get agent limits. So
9:11:049 hours, 11 minutes, 4 secondsthat's it for the entitlements file, I'm going to format everything and save everything. Let's close this one too. So
9:11:129 hours, 11 minutes, 12 secondsnext under the lib folder and inside the agent folder going to create a new file that's going to be apply-file-edit.ts.
9:11:239 hours, 11 minutes, 23 secondsI'm going to provide that code here. We have a exporting type apply file addit result. We have a function count
9:11:319 hours, 11 minutes, 31 secondsoccurrences and then we have export function apply file addit which expects a content all string new string and replace all.
9:11:409 hours, 11 minutes, 40 secondsAnd yeah finally return okay true content is going to be next content which we have here that we are bringing
9:11:479 hours, 11 minutes, 47 secondsif replace all is true then we use normalize content split all text and going to join the new one and otherwise
9:11:559 hours, 11 minutes, 55 secondsgoing to be replace all text with the new one. All right I'm going to format and save that. I'm going to close this one as well. All right. So now comes the
9:12:049 hours, 12 minutes, 4 secondsvery important file and that is a very big and giant file. I will not be explaining the file. Just going to give you the code. And again, I've been
9:12:139 hours, 12 minutes, 13 secondstelling you again and again that this project is taking way more longer than I anticipated in the original in the
9:12:209 hours, 12 minutes, 20 secondsbeginning. So that's why I'm kind of giving you guys the code for almost every file now instead of writing the file myself because I want to just
9:12:299 hours, 12 minutes, 29 secondscomplete this project and I want to move on to something new that I want to bring to this channel. something agentic
9:12:369 hours, 12 minutes, 36 secondscoding that is the way that you guys are going to learn the most and that is what I would like to do. So for that I don't
9:12:439 hours, 12 minutes, 43 secondswant to end up um this project in the middle I just want to complete that but
9:12:509 hours, 12 minutes, 50 secondsat the same time I don't want to spend too much time on this one. So that's why I'm I'm doing it this way. So here now I'm going to go to the lip folder. I'm
9:12:599 hours, 12 minutes, 59 secondsgoing to go to the agent and here we have a new file. I'm going to call it run- agent.t. TS I'm going to provide
9:13:069 hours, 13 minutes, 6 secondsthis file where we have get artifact or project.
9:13:119 hours, 13 minutes, 11 secondsOkay, seems like we have a issue with this one. No, it is available but run agent.
9:13:229 hours, 13 minutes, 22 secondsOkay, so get artifact project. Let me format and save. We have lib agent and
9:13:299 hours, 13 minutes, 29 secondsaccess. So in there we do not have the access file. Let me create that real quick. So in the same folder in the agent, I'm going to create a new file.
9:13:409 hours, 13 minutes, 40 secondsI'm going to name it access.ts.
9:13:439 hours, 13 minutes, 43 secondsAnd there you go. This is the access code. The file that we have, I'm going to close this one. And now in here, I'm
9:13:509 hours, 13 minutes, 50 secondsgoing to go agent /ac. Let me format and save. And that is done. We are we are bringing a lot of imports in here. And
9:13:579 hours, 13 minutes, 57 secondswe have a lot of functions in here. This is a very giant file. We have so many types in there. Like I like I said earlier, I'm not going to explain this.
9:14:059 hours, 14 minutes, 5 secondsThe link is available in the description. You can grab the code and the entire file, even the entire project from the GitHub repo. And you're ready to move on. I'm going to close this
9:14:149 hours, 14 minutes, 14 secondsfile. And right now, the one thing that I need to do is I'm going to open my terminal here. And I'm going to close
9:14:209 hours, 14 minutes, 20 secondsthe session. Clear out everything. And now here we have a package that I need
9:14:289 hours, 14 minutes, 28 secondsto install. So I'm going to do npm install react-markdown also remark-gm.
9:14:399 hours, 14 minutes, 39 secondsI think that we already have that package.json. So we have remark gfm.
9:14:489 hours, 14 minutes, 48 secondsYes, that is there. And one more thing that we need is a react-down.
9:14:569 hours, 14 minutes, 56 secondsYes, that is already there. and one another is react dash rehype
9:15:049 hours, 15 minutes, 4 secondsreact sorry not react but rehype dashanitize yes I guess we already have all those
9:15:139 hours, 15 minutes, 13 secondsthree packages so there's no need to install any hold on and I'm going to close this one also got
9:15:219 hours, 15 minutes, 21 secondsrid of everything from here and npm rundev here I'm going to go to the app
9:15:289 hours, 15 minutes, 28 secondsAPI. Then here we have projects project ID and here we have I'm going to
9:15:359 hours, 15 minutes, 35 secondsbasically create one more folder that's going to be agent and then in the agent we have a route.ts file where we have
9:15:449 hours, 15 minutes, 44 secondsthis code. Let me format and save. We are bringing headers also Z from Zod O from our Liba O. We have an short
9:15:549 hours, 15 minutes, 54 secondsconversion get artifact for project and also another one from the agent access.
9:15:599 hours, 15 minutes, 59 secondsWe have run agent loop. From here basically we have all these imports.
9:16:049 hours, 16 minutes, 4 secondsHere we have a body schema where we have content artifact ID, conversation ID and initial reply. Then here we have a
9:16:129 hours, 16 minutes, 12 secondsfunction encode s another export async function post which takes a request and
9:16:209 hours, 16 minutes, 20 secondscontext. And uh here we have let me scroll down.
9:16:279 hours, 16 minutes, 27 secondsBasically uh eventually here we are sending a type message ID summary preview version and a bunch of other
9:16:349 hours, 16 minutes, 34 secondsthings. And eventually we return the response where we have a stream and the headers has content type and cache
9:16:429 hours, 16 minutes, 42 secondscontrol and connection. I'm going to format and save everything and close this one. All right. Now when that is
9:16:499 hours, 16 minutes, 49 secondsdone, I'm going to go to my browser here and I'm going to refresh here once.
9:17:009 hours, 17 minutesI'm going to close this one. Let's hide that. and my test app. There's no need for that. It's actually working. I'll
9:17:109 hours, 17 minutes, 10 secondscreate a polish test app for you. Let me build a clean interactive web app to get you started. As you guys can see that
9:17:179 hours, 17 minutes, 17 secondsthe agent is working. Our API is connected. I basically wanted to send something uh I mean uh build something
9:17:269 hours, 17 minutes, 26 secondselse, but since we already had this in the prompt, this is what it's just giving us to work on. whatever that's
9:17:339 hours, 17 minutes, 33 secondsgoing to build there's going to be eventually a page and uh yeah a test app. Let's wait for that.
9:17:419 hours, 17 minutes, 41 secondsAll right. So the style CSS is also done and this is what it has built so far. I cannot do anything else as uh the script.js file is not completed yet.
9:17:549 hours, 17 minutes, 54 secondsAll right. So the script dojs is also done. And we also have the message here
9:18:019 hours, 18 minutes, 1 seconduh that here's your published my test app and this is the design functionality whatever basically we only gave it my
9:18:089 hours, 18 minutes, 8 secondstest app and it just give us something random. So now if I click on the counter there you go increment decrement and yes
9:18:179 hours, 18 minutes, 17 secondsuh reset wonderful let's go to the homepage notes uh learn next JS add there you go it
9:18:259 hours, 18 minutes, 25 secondsgets added it gets removed well it's pretty good something that it came up on its own just by using my test tab the
9:18:339 hours, 18 minutes, 33 secondspoint is that our agent is working and it is bringing uh I mean it is sending request to the anthropic SDK and also
9:18:439 hours, 18 minutes, 43 secondsonce it confirms the API is there and there are credits in your account, it starts working on that and you get to
9:18:509 hours, 18 minutes, 50 secondssee the results here. Awesome. Let's get back to the code editor. And now in here, I'm going to
9:18:589 hours, 18 minutes, 58 secondsopen my terminal. Close everything in here. And let's do clear. And then here I'm going to say npm install stripe.
Chapter 12: Stripe
9:19:099 hours, 19 minutes, 9 secondsLet's do that. Let's get started working on the stripe thing now.
9:19:159 hours, 19 minutes, 15 secondsThat is done. And let me do npm rundev once again and close this one. I'm going to go open my env.local file. I'm going
9:19:249 hours, 19 minutes, 24 secondsto scroll down to the bottom. And here now I have this stripe here. So you're supposed to go to the dashboard.stripe.com.
9:19:339 hours, 19 minutes, 33 secondsTest API keys. Basically, you should have a Stripe secret key. You should have a stripe web hook secret also
9:19:409 hours, 19 minutes, 40 secondsstripe pro price ID and also next public stripe publishable key here. Make sure
9:19:499 hours, 19 minutes, 49 secondsyou have all of these then save the file and close it. I'm going to open my terminal. Close the server here and I'm
9:19:579 hours, 19 minutes, 57 secondsgoing to go for this where we have stripe listen-forward- localhost 3000 API web hooks and stripe.
9:20:059 hours, 20 minutes, 5 secondsI'm going to hit enter.
9:20:089 hours, 20 minutes, 8 secondschecking new, getting ready and everything. All right. Uh, everything seems good. And now I'm going to close this file.
9:20:169 hours, 20 minutes, 16 secondsNow I'm going to go to the lib folder. There you go. Now this one, this one.
9:20:239 hours, 20 minutes, 23 secondsAnd here I'm going to create a stripe.ts file. And I'm going to give you this code. Let me format and paste. And save.
9:20:329 hours, 20 minutes, 32 secondsAnd here we have stripe. Coming from stripe. Also we create a variable stripe client. We also have this type pro plan
9:20:409 hours, 20 minutes, 40 secondsinfo function is get stripe secret key is stripe configured get stripe client
9:20:479 hours, 20 minutes, 47 secondsand then we have get appbased URL. There you go. If things are provided here awesome otherwise we're giving it here.
9:20:559 hours, 20 minutes, 55 secondsThen here we have get configured product or price ID. There you go. And then we
9:21:039 hours, 21 minutes, 3 secondshave resolve price id from product and basically this whole file is needed and
9:21:129 hours, 21 minutes, 12 secondscompulsory for us to move forward. So make sure that you bring this file from the GitHub repo. The link is available in the description for that. I'm going
9:21:199 hours, 21 minutes, 19 secondsto close this one right now. The next file that we need is I'm going to go to the lip folder and then go to the let me
9:21:279 hours, 21 minutes, 27 secondsfind there you go actions. And in here we have a billing.ts.
9:21:349 hours, 21 minutes, 34 secondsThere you go. This is the code for that.
9:21:379 hours, 21 minutes, 37 secondsAnd here first of all, yes, we're going to work on that. We also have a require user. I think we have that o/require
9:21:479 hours, 21 minutes, 47 secondsuser, but seems like that is not what we have. So I'm going to get to this file.
9:21:579 hours, 21 minutes, 57 secondsSo require user ID. Then we have require users.
9:22:049 hours, 22 minutes, 4 secondsYes, with the double s. There you go.
9:22:089 hours, 22 minutes, 8 secondsAnd this should be fixed. And I think this is being used in a lot of other files as well. So maybe I'm going to
9:22:179 hours, 22 minutes, 17 secondsform save uh find here require usser. I can't find anything. Let's go back here.
9:22:279 hours, 22 minutes, 27 secondsGet to this one and require user still require user.
9:22:399 hours, 22 minutes, 39 secondsOkay. And the user ID and R E quu I r e user. I think it's good
9:22:479 hours, 22 minutes, 47 secondsnow. There you go. That problem is solved. We will get to that in a minute.
9:22:529 hours, 22 minutes, 52 secondsHere [snorts] we have these imports from the stripe and then we have const billing user select. We have a bunch of other functions like get stripe client
9:23:009 hours, 23 minutesand also we're updating the Prisma and like the customer ID stripe customer ID
9:23:079 hours, 23 minutes, 7 secondsand uh here we have create pro checkout session action and that is of course that is the most important one that we
9:23:159 hours, 23 minutes, 15 secondsneed in order to make sure that billing is in place. Let me work on this file which is stripe subscription. So for
9:23:239 hours, 23 minutes, 23 secondsthat I'm going to go to the lib and in the lib we have also a billing and in there we have a new file. I'm going to
9:23:319 hours, 23 minutes, 31 secondscreate stripe dash subscription.ts.
9:23:389 hours, 23 minutes, 38 secondsAnd there you go. Let me format and save everything here. Obviously, we're going to need a bunch of other files as well for in order to make sure that this
9:23:479 hours, 23 minutes, 47 secondseverything is configured correctly. So, I'm going to format and save everything.
9:23:529 hours, 23 minutes, 52 secondsAnd next, let's work on this thing. So, I'm going to go and in the lib and the billing folder going to create a new
9:23:599 hours, 23 minutes, 59 secondsfile. And that's going to be sub subscription dash display.ts.
9:24:099 hours, 24 minutes, 9 secondsThere you go. And there is the code for this file. And here we have import type.
9:24:159 hours, 24 minutes, 15 secondsThen we have export type subscription display info. We also have this subscription variant styles. And here we
9:24:239 hours, 24 minutes, 23 secondshave a bunch of uh different options for different scenarios. And then here we have format subscription date. We'll
9:24:319 hours, 24 minutes, 31 secondsalso have a display styles and a few other things. Let me format and save that. Close this one. And now let me go
9:24:409 hours, 24 minutes, 40 secondsand add subscription display. There you go. That is there. I'm going to close this one as well. And now here we have
9:24:499 hours, 24 minutes, 49 secondsstripe subscription. And there you go. Let me format and save. And that is done. Close
9:24:579 hours, 24 minutes, 57 secondsthis one. And now the next thing that I need is I'm going to go and find queries
9:25:049 hours, 25 minutes, 4 secondsslash billing. There you go. And here I'm going to paste this code. And of course it expects a few arguments. First of all
9:25:139 hours, 25 minutes, 13 secondswe have f plan info. I am going to import that from stripe. Then we also
9:25:209 hours, 25 minutes, 20 secondshave f user display info. I'm going to also import that also is pro user also
9:25:279 hours, 25 minutes, 27 secondsimport that. And just like that this file is done as well. I'm going to close this file and I'm going to collapse
9:25:359 hours, 25 minutes, 35 secondseverything here. Go to app API and then in here going to create a new folder name it web hooks and then in there
9:25:449 hours, 25 minutes, 44 secondscreate a new folder name it stripe and then we have a new file name it route.ts
9:25:519 hours, 25 minutes, 51 secondsTS and here we have the code for this one. We have next response and import stripe Prisma sync user subscription and
9:26:009 hours, 26 minutesalso get stripe client. We have mark event process function here also resolve user id from the customer. We also have
9:26:099 hours, 26 minutes, 9 secondsa post which expects a request and uh at the end we have a try in CA we also have
9:26:169 hours, 26 minutes, 16 secondsa switch statement event type in case of different options we return different things and uh yeah in case of error we
9:26:269 hours, 26 minutes, 26 secondsalso display that in the console using the console error also we have next response that we use in order to return
9:26:359 hours, 26 minutes, 35 secondsthe error as well. Let me format and save that. And let's close this one as well.
9:26:429 hours, 26 minutes, 42 secondsIt's time for us to create and uh create the billing page and get started working on the billing page UI. I'm going to go
9:26:499 hours, 26 minutes, 49 secondsto the app then app then dashboard user area and then create a new page here
9:26:569 hours, 26 minutes, 56 secondsbilling and in there we have a new file which is going to be page.tsx.
9:27:039 hours, 27 minutes, 3 secondsAnd there you go. This is the code for that. We are basically importing a component that we have not created yet.
9:27:099 hours, 27 minutes, 9 secondsIt's a simple type and then we simply return that component also provide the search params in there. I'm going to
9:27:189 hours, 27 minutes, 18 secondsformat and save that. Then furthermore, I'm going to collapse everything from here. Going to go to the components app
9:27:279 hours, 27 minutes, 27 secondsand here I'm going to go to the dashboard and there we have a new file. Name it billing-page.tsx.
9:27:349 hours, 27 minutes, 34 secondstsx and this is the code for that. I'm going to format and save everything.
9:27:399 hours, 27 minutes, 39 secondsBasically, we have suspense redirect from navigation and we have this type and we have this export as function
9:27:469 hours, 27 minutes, 46 secondsbilling page which kind of very similar like the settings page and the trash page that we have done also as per the
9:27:539 hours, 27 minutes, 53 secondsprofile page. And uh here if the billing is not available we have this state and if the billing is available then we have
9:28:009 hours, 28 minutesthe suspense and billing page contient and of course this page does not exist yet and now let's work on that. So for
9:28:099 hours, 28 minutes, 9 secondsthat I'm going to go to the app and then I'm going to go to the
9:28:169 hours, 28 minutes, 16 secondsin the app we have a new folder. I'm going to call it
9:28:249 hours, 28 minutes, 24 secondsbilling. And in there I'm going to create a new file that's going to be billing-page-client.tsx.
9:28:349 hours, 28 minutes, 34 secondsAnd this is the code for that. Let me format and paste that. uh save that.
9:28:399 hours, 28 minutes, 39 secondsBasically, this is very similar to like we have settings page client and profile page client component and uh we have a
9:28:479 hours, 28 minutes, 47 secondsbilling page client component that we are exporting from here. It exports all of the UI with all the tailwind CSS
9:28:559 hours, 28 minutes, 55 secondsclasses and the static text and eventually after all that static text and
9:29:039 hours, 29 minutes, 3 secondseverything basically this gets used in the let me format and save that. Close this one. This gets used here. So I'm
9:29:129 hours, 29 minutes, 12 secondsgoing to go here and say billing page client that has been updated. Close this one. And now here
9:29:209 hours, 29 minutes, 20 secondsI'm going to go and billing dashboard slash hold on let me format and save
9:29:289 hours, 29 minutes, 28 secondsapp dashboard slash billing page. There you go. That has been updated. And now if I go here and I'm going to get to the
9:29:379 hours, 29 minutes, 37 secondsprojects. Let's say let me hide that as well. And now I'm going to get to the billing page either from here.
9:29:499 hours, 29 minutes, 49 secondsAnd there you go. We have a starter and we have a $25 a month as a test. And this is the current plan for that. And
9:29:589 hours, 29 minutes, 58 secondswe're going to use the upgrade pro in a minute just to make sure that the stripe functionality is working and everything. I'm going to go back to my code editor.
9:30:069 hours, 30 minutes, 6 secondsAnd now in here I'm going to open the components
9:30:129 hours, 30 minutes, 12 secondsslash landing slash pricricing/ section.tsx and here I'm going to need a few things.
9:30:219 hours, 30 minutes, 21 secondsFirst of all here I'm going to say const pro plan is equal to await fetch aait fetch pro plan info. There you go.
9:30:349 hours, 30 minutes, 34 secondsAnd since we're using a weight, we need to add async here. Export hold on
9:30:429 hours, 30 minutes, 42 secondsasync function. There you go. And of course, now we need to use that.
9:30:499 hours, 30 minutes, 49 secondsSo for that here, I'm going to say pro plan dot display monthly price.
9:30:579 hours, 30 minutes, 57 secondsDisplay monthly price. If that is there, awesome. Otherwise, we have a 25 that we were using before. So, that is for that.
9:31:089 hours, 31 minutes, 8 secondsSo, now I'm going to get to the browser here. I'm going to refresh here once. Just precautionary.
9:31:149 hours, 31 minutes, 14 secondsAnd now I'm going to click on the upgrade to pro. Let's click on that. It's redirecting.
9:31:229 hours, 31 minutes, 22 secondsAnd connecting to Stripe. We should be redirected. Yes, we have. This is the payment that it says. Let's go for the
9:31:319 hours, 31 minutes, 31 secondsUSD here. And uh here we are going to use some test card. So for that I'm going to say
9:31:399 hours, 31 minutes, 39 seconds42 42 42 42 42 42 42 until it's done.
9:31:469 hours, 31 minutes, 46 secondsThen I'm going to say let's say 12 then 28.
9:31:509 hours, 31 minutes, 50 secondsAny future date then we have one two three CBC here. I'm going to say Ali Mortza. Then I'm going to say Pakistan
9:31:589 hours, 31 minutes, 58 secondsis my country. And then I'm going to save my information. No. And I'm going to click on subscribe. Let's see what happens.
9:32:079 hours, 32 minutes, 7 secondsAnd there you go. The subscription has been placed.
9:32:119 hours, 32 minutes, 11 secondsIt's redirecting us to somewhere like back to our application. Upgrade one.
9:32:189 hours, 32 minutes, 18 secondsWelcome to Pro. Your subscription is active. This is active. This one has become active. And now we can click on the manage subscription. If I click on that, it's opening connecting to Stripe.
9:32:309 hours, 32 minutes, 30 secondsAnd now here we can either cancel our subscription or we can upgrade if we have if we like
9:32:389 hours, 32 minutes, 38 secondsadd more tiers to our uh payment plan in the future. Something like that.
9:32:449 hours, 32 minutes, 44 secondsThere you go. You can cancel your subscription. You can add another payment method or something like that.
9:32:509 hours, 32 minutes, 50 secondsAnd you can always return to the fullstack sad sandbox which of course is the one that I'm using for our project
9:32:589 hours, 32 minutes, 58 secondshere. So I'm going to return. It's going to take me back to our application. And it's loading and we are back here. So
9:33:079 hours, 33 minutes, 7 secondswith that the entire project is officially done. The landing page, the app page, projects page, uh every single
9:33:169 hours, 33 minutes, 16 secondsindividual project page. We can update our account info. We can update settings. We have the billing. We can we
9:33:249 hours, 33 minutes, 24 secondstested the trash functionality is working very good. Every single functionality is working. And we have Prisma and everything connected.
9:33:329 hours, 33 minutes, 32 secondsEverything is up to date into the database. And we also have made sure that the security is in place.
9:33:409 hours, 33 minutes, 40 secondsEverything that code has given to you guys. First of all, I apologize that I
9:33:469 hours, 33 minutes, 46 secondscould not keep recording way longer just to type the code manually. I know that
9:33:559 hours, 33 minutes, 55 secondswas the best way if I could write the code myself just like my previous projects. That is that way you guys were
9:34:029 hours, 34 minutes, 2 secondsgoing to learn the most. But I needed to end this project because it was I mean look at the length of this project guys.
9:34:119 hours, 34 minutes, 11 secondsIt already has taken us about 10 11 hours just to finish the video uh just by giving you the code. If I would have
9:34:209 hours, 34 minutes, 20 secondswritten the code myself for every single file, this would have been like maybe 12 or 15 hours more, maybe part three or
9:34:289 hours, 34 minutes, 28 secondsmaybe there would be even like part four as YouTube only allows to maximum upload
9:34:359 hours, 34 minutes, 35 secondsa 12 hours long video. Anyway, so that is the project which is done and uh obviously now I'm I'm I'm thinking to
9:34:449 hours, 34 minutes, 44 secondschange my strategy for the videos. I want to do something that you guys can learn the most and for that reason I'm bringing agentic coding to the channel.
9:34:569 hours, 34 minutes, 56 secondsSo you guys are going to need a subscription either like uh with open claw or chat gbt or claude or something.
9:35:059 hours, 35 minutes, 5 secondsI'm going to be using claude in the VS code and then with that I'm going to be building
9:35:129 hours, 35 minutes, 12 secondseverything through AI but that won't be vive coding that will be agent coding where we'll be debugging and I will be
9:35:209 hours, 35 minutes, 20 secondsdoing everything on the camera and you will learn the most that how you can use the power of AI to make your life easier
9:35:309 hours, 35 minutes, 30 secondsin order to build applications and get hired by bigger companies and more paying clients. Actually guys, I just
9:35:389 hours, 35 minutes, 38 secondsrealized that the project is not completed yet. I'm so sorry for that.
9:35:439 hours, 35 minutes, 43 secondsThere is still a few things left. For example, for the published uh stuff like for publishing a project and for that there is a few things left.
9:35:549 hours, 35 minutes, 54 secondsSo I'm going to come back here, collapse everything in here. And now I'm going to go to the lib and then here I'm going to
9:36:039 hours, 36 minutes, 3 secondsgo to the queries and create a new file that's going to be published.ts. I'm going to give you this code here.
9:36:109 hours, 36 minutes, 10 secondsLet me format and paste save here. So first of all, we have this lib generated client. We also have from deployment
9:36:199 hours, 36 minutes, 19 secondsvisibility and Prisma. We're exporting a function get published project by slug.
9:36:259 hours, 36 minutes, 25 secondsAnd uh we also have a can access published project. I'm going to format and save everything. Close this one. The
9:36:349 hours, 36 minutes, 34 secondsnext thing that I need is I'm going to collapse everything in here. I'm going to go to the app. Then I'm going to create a new folder in here. That's
9:36:429 hours, 36 minutes, 42 secondsgoing to be P. And uh that in P I'm going to create a new one that's going
9:36:509 hours, 36 minutes, 50 secondsto be work space work space slug and then in
9:36:589 hours, 36 minutes, 58 secondsthere I'm going to create a new one that's going to be project slug and then in there I have a
9:37:079 hours, 37 minutes, 7 secondsnew file that's going to be page.tsx and this is the code that I need in there. Of course, there is one component
9:37:149 hours, 37 minutes, 14 secondswhich is missing which I'm going to create now. So, I'm going to format and save everything.
9:37:209 hours, 37 minutes, 20 secondsAnd I'm going to collapse everything here once more. Go to the components and go to the app. Create a new folder
9:37:289 hours, 37 minutes, 28 secondspublished. And then in there, create a new file published dash project dash viewer.tsx.
9:37:429 hours, 37 minutes, 42 secondsThere is the code for that. We have a type and a published project viewer function which is being exported.
9:37:509 hours, 37 minutes, 50 secondsNothing fancy here. So that is going to be used here. Let me use that published. Awesome. So that is there.
9:38:029 hours, 38 minutes, 2 secondsAll right. And now in the P folder here I'm going to create a new file. I'm going to name it loading.tsx.
9:38:119 hours, 38 minutes, 11 secondsAnd this is a loading that we need in there. And with that now the project is done.
9:38:189 hours, 38 minutes, 18 secondsBasically we have made sure that everything is in place. There's only one thing that I'm also skipping from this
9:38:259 hours, 38 minutes, 25 secondsproject and that is the deployment to our cell and uh I will make sure that I
9:38:339 hours, 38 minutes, 33 secondsdo that on the next video that I already have planned. I do have a design for
9:38:409 hours, 38 minutes, 40 secondsthat and I will be working on that. The video is coming in about about 10 days.
9:38:479 hours, 38 minutes, 47 secondsAnd u yeah stay tuned for that. And uh if you liked that video, if there's any part that you like the
9:38:569 hours, 38 minutes, 56 secondsmost, if there's any part that you need help with, please give me send me a comment on the video below. And also if
9:39:059 hours, 39 minutes, 5 secondsyou guys have any suggestions that you have a project that you want to request and you want me to build, send me that
9:39:129 hours, 39 minutes, 12 secondslist and let's build together. I will be using agent decoding in order to build those projects and let's do that. All
9:39:209 hours, 39 minutes, 20 secondsright, guys. See you guys in the next

Sync to video time
