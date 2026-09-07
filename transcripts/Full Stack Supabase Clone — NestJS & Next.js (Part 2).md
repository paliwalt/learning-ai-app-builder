https://www.youtube.com/watch?v=iZjVGLNLj2A



Full Stack Supabase Clone — NestJS & Next.js (Part 2)
code with lari
code with lari
8.6k subscribers

Subscribe

72


Share

Ask

Save

1,323 views  20 Jul 2026  #supabase #tailwindcss #nextjs
Part 1:    • Full Stack Supabase Clone — NestJS & Next....  

🔥🔥🔥 Work with me on Upwork: https://www.upwork.com/freelancers/~0...

🚀🚀🚀 Make money online: Sell your digital products at vendlinx.com
🌍 Built for African digital creators.
🔗 Visit Vendlinx: https://vendlinx.com/

Connect with me
X: https://x.com/bright_alaribe
LinkedIn:   / laribright  
YouTube:    / @codewithlari  
Business Email: itslaribright@gmail.com

GitHub Repository: https://github.com/laribright/supavolt
npm Package: https://www.npmjs.com/package/supavolt

---

Build a complete open-source Supabase clone from absolute zero — NestJS backend, Next.js dashboard, and your own JavaScript SDK. We set up a monorepo with pnpm workspaces, build a production-ready API with NestJS and Drizzle ORM on Neon Postgres, ship a full dashboard with auth, orgs, projects, table editor, SQL editor, realtime, storage, and auto-generated REST APIs, then publish a `supavolt` SDK you can drop into any app.

This is a full course. By the end you will have built every major piece of a backend-as-a-service platform — organizations, multi-project isolation, database tools, realtime subscriptions, file storage, auth providers, and a client SDK — then deployed it.

---

🚀 What We Build

Supavolt — an open-source Supabase clone for learning. Create orgs, invite teammates, spin up projects with isolated Postgres schemas, create tables visually, run SQL, upload files, subscribe to live changes, authenticate users with email/Google/GitHub, and query everything from your own apps using the official `supavolt` npm package.

---

📦 What's Inside

✅ Supavolt Auth — email, Google & GitHub OAuth  
✅ Supavolt Database — visual table editor + SQL editor  
✅ Supavolt Realtime — live updates via WebSockets  
✅ Supavolt Storage — file uploads, public & private buckets  
✅ Supavolt SDK — our own `supavolt-js` (like supabase-js, but ours)  
✅ Auto-generated REST API — create a table, endpoints appear instantly 🤯  
✅ Project API keys — anon key + service role key per project  
✅ Org system — admin & developer roles, invite your team  
✅ Full production deploy  

---

🧠 What You'll Learn

How to structure a full stack monorepo with pnpm workspaces  
NestJS modules, controllers, services, guards, and decorators  
Drizzle ORM — schema definition, migrations, and type-safe queries  
JWT authentication with cookies, OAuth handoff, and role-based access  
Next.js App Router — Server Components, Server Actions, and layouts  
Building a multi-tenant org + project system  
Provisioning isolated Postgres schemas per project  
Building a visual table editor on top of `information_schema`  
Auto-generating REST APIs from database tables  
Socket.io realtime with table subscriptions  
File uploads with UploadThing  
Publishing a typed JavaScript SDK to npm  
Deploying NestJS to Railway and Next.js to Vercel  

---

🛠 Tech Stack

NestJS  
Next.js  
TypeScript  
pnpm workspaces  
Drizzle ORM  
Neon Postgres  
JWT  
Socket.io  
UploadThing  
shadcn/ui  
Tailwind CSS  
React Hook Form + Zod  
npm (`supavolt` SDK)  
Railway  
Vercel  

---

⏱ Timestamps

00:00 01-intro
35:08 10-realtime-subscriptions
1:45:59 11-file-storage
2:40:30 12-javascript-sdk
4:09:17 13-supavolt-auth
6:04:54 14-fixes

---

Every section has its own branch on GitHub — numbered and named to match. Clone the repo and check out any branch to see exactly where the project is at that point in the course.

And if you're looking for a developer to build your SaaS, startup, mobile app, AI app, or full stack application, check out my Upwork: https://www.upwork.com/freelancers/~0...  
I'm a 5-star rated freelance software developer helping clients build modern production-ready applications using React Native, Next.js, NestJS, Supabase, and AI integrations.

---

#nestjs #nextjs #typescript #supabase #opensource #fullstacktutorial #drizzleorm #neon #postgres #websockets #realtime #uploadthing #pnpm #monorepo #javascriptsdk #oauth #jwt #vercel #railway #shadcn #tailwindcss #backendaservice #saas #webdevelopment #codewithlari

---------------------------------------------------------------------------------------------------------------------
In this video


Chapters

Transcript
Search transcript
Search transcript

Chapter 1: 01-intro
0:000 secondsOn the 4th of June 226, Superbase announced a $500 million series F raise, $500 million at a $10 billion valuation.
0:1111 secondsStripe invested, Salesforce invested, GIC led around nearly 10 million developers building on their platform
0:1919 secondsdatabase launches growing 600% in a single year. The company that gives developers a database, a rest API, O
0:2929 secondsrealtime file storage, and an SDK all from one dashboard is now worth $10 billion.
0:3737 secondsAnd in this video, we built our own version of Superbase.
0:4141 secondsNot a tutorial on how to use Superbase, not a clone that skips the hard path. We built the whole thing and it is live
0:5151 secondsright now on the internet at a real URL with a real npm package you can install
0:5858 secondsand use in your own projects. Let me show you what we built. And if you're looking for a developer to build your SAS your startup or mobile application,
1:061 minute, 6 secondsAI application or full staff application, don't forget to check out my Upwork. The link is in the description below. I'm a fivestar rated
1:141 minute, 14 secondsfreelance software developer helping clients to build modern production ready applications using react native nextjs superbase nodejs and AI integrations.
1:251 minute, 25 secondsThis is super vote. So I have two browser open. So I have this browser over here and I have this other browser
1:321 minute, 32 secondsover here so that we can go on to send an invite to this user.
1:371 minute, 37 secondsSo let's come over to the dashboard which is going to redirect us to the authentication page if we are not authenticated. So in this case I'm
1:441 minute, 44 secondsauthenticated. I'm just going to sign out and come back to the landing page of the application. Now we're at the landing page. If we try to visit the
1:511 minute, 51 secondsdashboard then we are redirected over to authentication page and over here we have different providers. So we can sign
1:581 minute, 58 secondsup with the email provider, the Google provider and also the GitHub provider.
2:042 minutes, 4 secondsI'm going to sign up with a Google provider or sign in with a Google provider here. And then we're going to be redirected over to our dashboard.
2:122 minutes, 12 secondsNow, for this other user, I'm going to come over to the dashboard. We're redirected over to the sign-in page and I'm going to authenticate with the GitHub provider.
2:222 minutes, 22 secondsOnce you're authenticated, you're going to be directed over to your dashboard.
2:272 minutes, 27 secondsAnd you can see these are the different organizations that we have over here. We can going to create a new organization
2:342 minutes, 34 secondsfrom here. Or you can also click here to switch between organizations or create a new organization.
2:402 minutes, 40 secondsLet's create a new organization. I'm going to call this organization or give it a name of Larry demo like this. And then I'm going to hit on create organization.
2:502 minutes, 50 secondsOnce you have your organization, you can go on to create projects within that organization. And you can also go on to send invite to different colleagues that
2:592 minutes, 59 secondsyou would like to join this organization. and the roles. You have roles such as admin or the role of developer. Let's invite this other user.
3:073 minutes, 7 secondsSo over here, I'm going to type in the user email. And then I'm going to hit on send invite. So let's come over to the
3:153 minutes, 15 secondsother browser. And once you're here, if you check your email, you're going to see you have a new email here which shows like you have been invited to join
3:243 minutes, 24 secondsthis organization. And once you hit on accept invite, you're going to be redirected over to that organization.
3:313 minutes, 31 secondsSo as you can see here this is the organization and if we come over here and we come over to the organization settings as this is developer this user
3:403 minutes, 40 secondsdoesn't have the privilege to update the role of other members within this organization.
3:453 minutes, 45 secondsNow let's head over to the other browser and over here let's give this page a refresh and once we do we can also go on
3:533 minutes, 53 secondsto switch the role of this other user from developer to the role of admin.
3:583 minutes, 58 secondsNow let's come back here and let's create a project. So I'm going to create a project over here and I'm going to give this project a name and let's give it a name of of super vote like this.
4:104 minutes, 10 secondsNow with this supervolt project created let's come into the project and over here in the project if we come over to the API section you see here we
4:194 minutes, 19 secondsautomatically have the project URL the project anon key as well as the project service row keys.
4:274 minutes, 27 secondsThe moment a project gets created, it gets its own isolated progress schema on yon database. It also has its own
4:344 minutes, 34 secondsproject URL, its own key and its own service row key. So it has basically its own everything. Now watch what happens
4:424 minutes, 42 secondswhen I create a table. To create a table, I'm going to come over to this database section and over here we have the table editor which is fully
4:514 minutes, 51 secondsresponsive. As you can see, the entire website is fully responsive both on mobile as well on as desktop devices.
5:005 minutesSo, this is how the application looks like on mobile devices and everything is fully responsive.
5:075 minutes, 7 secondsNow, I'm going to switch back to desktop as it's quite easier for me to explain all the features that we have in the application. Now, let's create a new
5:155 minutes, 15 secondstable. I'm going to hit on this plus section over here to create a new table.
5:205 minutes, 20 secondsAnd you can see we have this side panel over here where we can go on to specify the name of the table and the different columns that we can have in this table.
5:285 minutes, 28 secondsI'm going to create the first table and I'll give it the name of users.
5:325 minutes, 32 secondsNow over here we have different columns such as the ID, the created art which is automatically generated for each table but you can go on to delete them or add
5:415 minutes, 41 secondsnew columns. I'm going to add a new column over here and I'm going to give this column the name of full name like this.
5:495 minutes, 49 secondsNow we have different types just as you would have in superbase or any progressq powered application. So I'm going to click on this type dropdown and you can
5:575 minutes, 57 secondssee we have the type text integer big in boolean time stamp u ID JSON B and numeric.
6:076 minutes, 7 secondsYou can also specify a default value a primary key nullable the foreign key table and also the foreign key column.
6:166 minutes, 16 secondsFor the case of full name, I'm going to leave the nullable checked. Now, let's add a new column. You can click on this plus icon and let's give this column a name. So, let's give it a name of email.
6:266 minutes, 26 secondsThe type is going to be of type text.
6:286 minutes, 28 secondsThe default is null and let's say not null like this. And for now, we do not have any other table. So, we can't really establish the foreign key table
6:366 minutes, 36 secondsand also the foreign key column. Now, we can go on and create this table.
6:426 minutes, 42 secondsOnce you have this table created, you can see here the different columns that were specified. And you can also go on to add a new column over here and give
6:506 minutes, 50 secondsthis column a name and also a type as well as a default value.
6:566 minutes, 56 secondsNow let's create another table. I'm going to click on this new table and let's give this table a name. I'm going to go with the name of memberships like
7:047 minutes, 4 secondsthis. Now for the different columns, I'm going to go with ID. created that and I'm also going to add user id so that we can test the foreign key relationship.
7:147 minutes, 14 secondsNow the type of this is going to be big int. It's not going to have any defaults. It's not going to be the primary key and it's not nullable. And
7:237 minutes, 23 secondsthe primary key table over here we now see the users table and for the column we're going to specify the ID column on
7:297 minutes, 29 secondsthe users table. Let's also click on the add column over here and let's add a plan. So let's say the membership is
7:377 minutes, 37 secondsgoing to have a plan like this. The type of this plan is going to be of type text. There isn't going to be a default value. is not the primary key. Let's say
7:467 minutes, 46 secondsthis could be null. And let's add one more. And let's give this a status name. The type is going to be
7:537 minutes, 53 secondstext. And let's give this a default value. For the default value, I'm just going to go with the text of active like this. And then let's go on to create this new table.
8:048 minutes, 4 secondsNow we have two different columns or two different tables created. The membership table as well as the users table. I want
8:118 minutes, 11 secondsto show you something. Let's come over to this API section.
8:168 minutes, 16 secondsTake a look at this. Automatically, we have endpoints that are generated automatically for every table that we
8:228 minutes, 22 secondscreate. So, we get post, patch, delete, and also get request for each table. And if you click on this, you see the actual
8:318 minutes, 31 secondsC URL that you can use to perform operations on this specific table. Now, let's test it out. Let's start with the users table. Let's go on and insert a
8:408 minutes, 40 secondsnew user. So I'm going to click on this and this is the actual C URL to create a new user. Making use of this rest
8:478 minutes, 47 secondsendpoint. I'm going to copy this and if we come over to the terminal window and we drop this in here, we need to update
8:548 minutes, 54 secondsthis to match the schema that we have specified over here. So if we check the database, we can see a user needs the
9:019 minutes, 1 secondfollowing. So a user needs the ID and the created that. These are automatically generated. We need the full name and the email. The full name is optional but the email is required.
9:129 minutes, 12 secondsLet's test this out. I'm going to come back to the terminal and rather than name of t-shirt like this, remember we
9:199 minutes, 19 secondsspecified full name here and I'm going to go with the full name of Larry over here.
9:269 minutes, 26 secondsNow let's also specify the email and the email here. I'm going to go with this email which is my email. So I'm just going to go with test2@est.com.
9:409 minutes, 40 secondsNow if we send this request like this, we are going to get an error because the service ro key is invalid. So we get a
9:479 minutes, 47 secondsmessage here that says invalid API key unauthorized with a status code of 401.
9:539 minutes, 53 secondsSo now let's run this again but let's make sure we update this service row key over here. So I'm going to come back to application and if you come over to the
10:0210 minutes, 2 secondsAPI and over here in the API we have the service ro key here which gives full access to the server. You can go on to copy this or you can also go on to
10:1010 minutes, 10 secondsreview this service row key. Now we have the service row key. We now have the permission to carry out this operation.
10:1810 minutes, 18 secondsSo I'm going to be updating this service row key text that we have over here to then be equals to the service row key that we got from our application. Now
10:2710 minutes, 27 secondsonce you send off this request you're immediately going to get the response over here. So this is the created user and if we come back to application and
10:3610 minutes, 36 secondsif we check our database if we check our table editor in the users table we are going to see over here the new user. If
10:4410 minutes, 44 secondswe click on this expandable over here you now see the different properties of this user as well. So you see, we're
10:5110 minutes, 51 secondsable to create rows in our database via an endpoint that didn't exist until we created that table about 10 seconds ago.
11:0011 minutesLet's also take a look at the SQL editor. So over here in the SQL editor, this is the Monaco editor, the same
11:0711 minutes, 7 secondseditor as VS Code. So you have things like syntax highlighting, autocomplete, keyboard shortcuts. I'm going to write a query and then once I hit command enter
11:1611 minutes, 16 secondsover here, the result is going to be displayed below. And every query I run gets saved automatically to this history
11:2311 minutes, 23 secondssection that we have over here. Now let's go on and test this out. I'm going to paste this. I'm going to run this query because we have the users table in
11:3211 minutes, 32 secondsour database. And once you run this query, you're going to see the list of all the users that you have over here.
11:3811 minutes, 38 secondsSo we see the results printed out here, the number of rows and the time in milliseconds that this query took. And if you check the history section, you
11:4611 minutes, 46 secondssee you can go on to get more details about this. Now let's go deeper. Let's try something that is much more fun.
11:5311 minutes, 53 secondsLet's try to create a membership. If we check our database over here, we're going to see the memberships table. And
12:0012 minutesthis memberships table has a ID the created that the user ID which has this chain over here because this is a foreign key relationship. We also can
12:0912 minutes, 9 secondsspecify the plan and the status. Now, we're going to create a membership making use of the SQL editor. I'm going
12:1612 minutes, 16 secondsto come over to the SQL editor here and let's update this query to this new query that we can use to create a membership. So, I'm going to drop this
12:2512 minutes, 25 secondsin here and this is going to be inserting into the memberships table that we created. So, we have the user ID, the plan and the use the status
12:3312 minutes, 33 secondscolumns and the values is going to be one which matches the user ID, the plan of pro and the status of active. Now
12:4112 minutes, 41 secondslet's go on and send this query. Now we've sent this query. We see that one rows gets affected. If we come back to the database and let's have a check on
12:4812 minutes, 48 secondsthe memberships table. We're going to click into the memberships table. And over here we can see the new membership that we created for this user. Now let's
12:5812 minutes, 58 secondstry to create two more users making of the SQL editor. I'm going to come back here and let's and let's first try to
13:0613 minutes, 6 secondsselect everything from the memberships table.
13:1013 minutes, 10 secondsI'm going to go and run this query again. Now we should see the result over here which is this membership that we just created. So let's go and create two
13:1813 minutes, 18 secondsnew users. I'm going to create this new users over here with these credentials.
13:2213 minutes, 22 secondsSo insert into the users table the full name and the email. And let's go with these credentials over here. So let's
13:2913 minutes, 29 secondshit on run which is going to send the query. And over here we get two rows affected. And if we check the history, we can see the different queries that we
13:3813 minutes, 38 secondshave sent. And if we try to select all the users and let's run this query, we're going to see now we have three users over here. But we're not just
13:4713 minutes, 47 secondslimited to easy queries like select or insert. We can also have nesting here such as the left join. And you can also
13:5513 minutes, 55 secondsdo things like order and you go on to run this query over here. You're going to see the results printed over here.
14:0214 minutes, 2 secondsSo you can see over here we are selecting everything from the users table and we have this left join on membership and we are going to order
14:0914 minutes, 9 secondsthis by the user ID which is the order over here. So we see the full name the email the plan these users do not have
14:1714 minutes, 17 secondsany plan and we can also see the status this is active whereas this is null because we specified that the status can
14:2414 minutes, 24 secondsbe nullable. We also have super vote real time. Let's check it out. I'm going to place both browsers side by side so
14:3114 minutes, 31 secondsthat we can go on to test the real-time capability of our Super Volt project.
14:3614 minutes, 36 secondsNow we have real time as you can see over here. I've g to place the two browser side by side and I'm going to come over to real time in this other
14:4414 minutes, 44 secondsbrowser that we have over here. So I'm going to select the project and once you're inside the project you can come over to real time and you're going to see the connection is going to be
14:5214 minutes, 52 secondsestablished immediately. So now the connection is established. I'm just going to collapse this so that we can have more space to test. Now, in this
15:0015 minutesother browser, I want to let's say we want to listen for realtime changes on the users table. I'm going to check this
15:0715 minutes, 7 secondstoggle over here. And you can see now we are listening on the users table for events such as the insert, update, or
15:1515 minutes, 15 secondsdelete on a specific row. Let's test this out. I'm going to come over here to the SQL editor. And once we perform an
15:2215 minutes, 22 secondsoperation on this users table, we expect to see the broadcast over here in real time. Remember this isn't going to work
15:3015 minutes, 30 secondsfor select operations. This only is going to work for insert, update or delete operations. Now let's try to create a new user. We have these three
15:3915 minutes, 39 secondsusers over here. I'm going to be creating a new user which is this test realtime at test.com user. Once you go
15:4615 minutes, 46 secondson to send across this query over here, watch what happens over here. The users table is now listening for changes based on these specific events and is
15:5515 minutes, 55 secondsbroadcasting it immediately and you can go on to use this to run certain operations that you want to do or let's say update your application in real
16:0316 minutes, 3 secondstime. Let's try this again. I'm going to try to delete this user that we just created. But first let's go on to select
16:1116 minutes, 11 secondsthe user so that we can see that this user is already in our database. I'm going to click on this history section
16:1816 minutes, 18 secondshere. And if we try to run this history again, you're going to see now we have four users in our database
16:2516 minutes, 25 secondsincluding this realtime user. Now I'm going to try to delete this realtime user that we have over here. So let's go and delete this user. I'm going to
16:3316 minutes, 33 secondsremove this and replace it with this. So delete from the users table where email is equals to this email. I'm going to go and send this. Immediately we send this.
16:4316 minutes, 43 secondsYou see one role affected. And if we select this again, select all the users, we can see now we have three users over here. And over here we can see that this
16:5216 minutes, 52 secondsdelete is being broadcasted here. So we have no refresh, no pulling. We have a progress trigger that gets fired. It
16:5916 minutes, 59 secondscalls PG notify. The NestJS websocket gateway receives notification and it broadcast it to every client that is
17:0617 minutes, 6 secondssubscribed to that room live and in production.
17:0917 minutes, 9 secondsNow let's continue. We actually have a whole lot that we built. Let's take a look at file storage. I'm going to just collapse this so that we can focus on
17:1717 minutes, 17 secondsthis screen over here. Now, if you expand this and if you come over to this storage and in this storage section, we can go on to create a bucket. We can
17:2617 minutes, 26 secondshave a private bucket or a public bucket and we can go on to upload any file from image to video to PDF and you can also
17:3517 minutes, 35 secondsgo on to browse different files that you have uploaded within a bucket. Now, I'm going to create a new bucket here. As you can see here, we have the option to create a private and a public bucket.
17:4717 minutes, 47 secondsPrivate files are going to get a signed URL that expires in an hour. And let's try this out. So, I'm going to give this a name of public. So, let's start with
17:5517 minutes, 55 secondsthe public bucket. And once you hit on create, you're going to be ushered into the bucket here. And you can go on to
18:0218 minutes, 2 secondsupload files. Now, we have this button here to choose the files. I'm going to click on this. And we're going to see the different options here. So for now
18:1118 minutes, 11 secondsI'm just going to select this image that I have over here. Then I'm going to go and click on open.
18:1818 minutes, 18 secondsNow we're also going to get the notification here which shows the progress of the upload. And once this is done, we're going to see the actual
18:2618 minutes, 26 secondsupload over here with a preview. So this is a public bucket. We can also go to copy this and we can also going to visit
18:3418 minutes, 34 secondsthis in the browser. And this is going to load up over here like this. So this is the screenshot that I just uploaded.
18:4118 minutes, 41 secondsLet's give this trial. Let's try to create a a bucket but this time around a private bucket. So I'm going to give this bucket a name of private like this.
18:5018 minutes, 50 secondsAnd then you can go on to create this new bucket. Now as I said earlier, private buckets are going to expire within 1 hour. So if we're going to
18:5818 minutes, 58 secondschoose a file and I'm also going to select the same file and this time around once the upload completes we're going to see that this file is going to
19:0619 minutes, 6 secondshave an uh it's going to have some properties which is the signed URL that expires within an hour. So, I'm going to
19:1419 minutes, 14 secondscopy this as well. And you can see for private buckets, we do not get a preview. And once you load this up here, it's still going to load up. But you can
19:2219 minutes, 22 secondssee this has more details over here, such as the expires as well as a signature. And once you load this, you're also going to see the same
19:3019 minutes, 30 secondsscreenshot that we uploaded. And this is going to expire after an hour.
19:3619 minutes, 36 secondsWe still have more. We still have O, which we're going to take a look at in a moment. is a very huge part of this course. But now I also have this that I
19:4519 minutes, 45 secondsam so proud of and this is Super Volt SDK. This is Supervolt SDK. And if you
19:5119 minutes, 51 secondshave ever used Superbase, the Supervolt SDK will feel so familiar with you right away. It's published to MPM as Super
20:0020 minutesVote, which is one package, one client, our whole back end. You can go on to install it and pass in your project URL
20:0620 minutes, 6 secondsand also your API key from the dashboard and you're done.
20:1020 minutes, 10 secondsWe're going to see how this works in practice. Let's spin up a new project and see how we can make use of supervolt SDK. I did create a new NexJS
20:1920 minutes, 19 secondsapplication. So we can go on to test the supervolt SDK over here. Now if you come over to this new NexJS project, this is
20:2720 minutes, 27 secondswhat we have bare minimum and the application is currently running on port 3000 just as you would have any JavaScript application that you would
20:3520 minutes, 35 secondslike to integrate with superbase. So in this case we are going to test it out with super vault. Let's get started. If we come over here we can copy the
20:4320 minutes, 43 secondsinstallation command and right in here I'm going to open up the new terminal window and I'm going to paste this in but this project makes use of pnpm. So
20:5120 minutes, 51 secondsI'm rather make use of npm. I'm just going to update this so that we can make use of pnpm like this. PNPM install
20:5920 minutes, 59 secondssupervote. Guys, this is our own supervote package being installed straight up in this project and we already have it now as part of the
21:0721 minutes, 7 secondsdependency. If you check your package.json, you have super vote. You you're going to build this. You're going to have your own or learn how to publish
21:1521 minutes, 15 secondsyour own packages to the mpm registry and have other developers install what you have built. Now, we have super vote installed over here. Let's go on to
21:2421 minutes, 24 secondsclear the terminal window and I'm also going to exit this terminal and let's create the super vault client just as you would do with superbase. Now
21:3321 minutes, 33 secondssomewhere in the source folder I'm going to make this real quick. I'm just going to create this lib.ts TS folder and over here let's see what we can import from
21:4021 minutes, 40 secondsthe super vote package and from this package just as you would bring in from superbase guys we have the create client
21:4821 minutes, 48 secondspackage that we can install or import from super vote and the next thing we're going to do over here is to then go on
21:5421 minutes, 54 secondsand export the constant which we're going to call super vote like this and here we're going to have the create client now the create client over here
22:0322 minutes, 3 secondsyou can see this takes the project URL and also the API key. So we get type safety also here as we get from
22:1122 minutes, 11 secondssuperbase. Now you can set this up real quick from your environment variables.
22:1622 minutes, 16 secondsBut just as we are having this demo, I'm going to make it super super quick. I'm going to come over here and the API section. Let's say we want to discuss
22:2322 minutes, 23 secondswith this project over here. I'm going to copy the project URL here like this.
22:2922 minutes, 29 secondsAnd let's make use of this project URL here. And the next and it has to be in quotes because it's a string. So let's wrap it up in quotes. And the next thing
22:3722 minutes, 37 secondsis going to be the API key. Now the API key is the service row key. So let's quickly grab the service row key. And
22:4522 minutes, 45 secondsI'm going to use that value over here like this.
22:5022 minutes, 50 secondsAlso it has to be wrapped up in a string over here. So you can reference this from the environment variables. I'm just keeping this quick and easy for this
22:5722 minutes, 57 secondstutorial basics. And then you can go on to save this. Now this is our own client. Let's go on and test our client.
23:0323 minutes, 3 secondsRemember we have authentication which we are meant yet to test. We're going to test that in a moment. But let's say I want to fetch users. So I'm going to
23:1123 minutes, 11 secondsjust quickly come over to the homepage over here. And in the homepage I'm going to just clear everything we have here.
23:1823 minutes, 18 secondsSo everything inside this main tag and also get rid of this. I'm going to be importing our own super vault client. So
23:2523 minutes, 25 secondslet's import super vault which is going to come from one level up our lib. And let's say I want to fetch the users that belongs to this project. Remember this
23:3423 minutes, 34 secondstook in your project URL. So I'm getting so many autocomplete from um from cursor. So I'm just going to try to make
23:4223 minutes, 42 secondsthis um less distracting. So here let's say we want to dstructure this. So we're going to get this and this is going to
23:4923 minutes, 49 secondsbe coming in from await and then we're going to await our super vote like this.
23:5423 minutes, 54 secondsSo you can see we can already await our own superv client and from the client we can call from. So you can see over here
24:0224 minutes, 2 secondswe also have storage you can interact with. We have real time we have database which is our table. We have authentication but I'm going to say from
24:1024 minutes, 10 secondsand this from is going to take in the table. So you can see over here we have auto completion with typescript and we
24:1624 minutes, 16 secondsalso have this referencing over here this tier docs over here which is going to guide developers um that make use of
24:2424 minutes, 24 secondssuper vote. So I'm going to say from and then you want to pass in a table name which is users and let's go on and select everything from the users table.
24:3124 minutes, 31 secondsI'm quickly going to mark this as an async function and over here let's say we're going to get data like this and we
24:3824 minutes, 38 secondscan also get error just like this. Now let's log data to the console. So console.log data error. And we're going to see we're going to be able to fetch
24:4624 minutes, 46 secondsthese users that we are interacting with. Not quite long. And let's say if we have an error, let's render the error over here. And if we have data, then let
24:5624 minutes, 56 secondsme replace this JSX just quickly with what we have over here. So this is what we're going to return like this. And I'm going to be returning this. So this just
25:0525 minutes, 5 secondsa h1. And over here we're going to JSON stringify the data. And guys, once you give this a save and you come back to your homepage, watch what happens over
25:1325 minutes, 13 secondshere. We have the users being listed here and you're interacting straight up with your own Superbase Super Vote SDK
25:2225 minutes, 22 secondsthat you created over here. So this project, if you check your database, these are the different uses that you have over here. But you're not just
25:2925 minutes, 29 secondslimited to easy queries like um going on to select queries to select um properties or uh to select users that
25:3725 minutes, 37 secondsyou have from specific table. You can actually go on to do pretty much so much over here. You can also go on to insert new users. Let's also try to insert a
25:4725 minutes, 47 secondsnew user. I'm going to drop this query over here. So this is going to run over here and I'm just going to quickly disable this that we don't have the
25:5425 minutes, 54 secondsclash with data and error. Now we are doing an insert on page load which is not something you're going to do typically in an application. This is
26:0226 minutes, 2 secondsjust for demo purposes. Let's try to insert this SDK test user when the page loads. So I'm going to save this and let's give this a moment. We get over
26:1126 minutes, 11 secondshere the result of running this operation. So if you come back here, I'm just going to quickly comment this out so it doesn't run again on page load.
26:1826 minutes, 18 secondsAnd if you bring this back in, you're going to see over here we have this new user. Let's give this a refresh. We now have four users over here. And if you
26:2726 minutes, 27 secondscome over to your super vote project, I'm actually tempted to call this super base right now. If you come over to your users table, you're going to see you
26:3626 minutes, 36 secondshave four users created over here. So this is the user that we just inserted making use of our super vote SDK.
26:4426 minutes, 44 secondsThere's actually so much more you can go with. You can go on doing this. You're not just limited to let's say select. As you can see over here, you have like the
26:5226 minutes, 52 secondsdelete. Yeah, you have equals, execute greater than, greater than or equals, is
26:5826 minutes, 58 secondslike, insert, is like, limit, less than or equals to. You have actually a whole lot which you're going to learn how to
27:0727 minutes, 7 secondsbuild on your own from scratch. So, we did everything from scratch and you're going to learn how to do everything on your own from the ground up. How about
27:1627 minutes, 16 secondsauthentication? Let's also see how we can have authentication or make use of authentication using our super vote
27:2427 minutes, 24 secondsclient. Now this is the point where we're going to test out how we can have GitHub authentication in our
27:3227 minutes, 32 secondsapplication. Now for us to do this you just need to come over to GitHub and create an oath app for GitHub. Now we have different authentication providers
27:4027 minutes, 40 secondsas you see over here in the O signin providers. We have the email, the Google and the GitHub. You see email is automatically enabled. So email and
27:4827 minutes, 48 secondspassword with magic link are always going to be enabled for the project. You do not need to do any extra configuration for that to work. We're
27:5627 minutes, 56 secondsgoing to enable GitHub. The same process actually if you want to enable Google now that I already have created this. No worries. You're going to learn how to
28:0328 minutes, 3 secondscreate this in um in the course. So we're just going to copy the client secret and this is the client ID. You're going to register this over here. So the
28:1128 minutes, 11 secondsclient secret comes over here and the GitHub client ID. You just want to copy this and you want to take the client ID
28:1828 minutes, 18 secondsand register the client ID over here just like this. Now you have all of these. You can see it is enabled but you definitely need to go on and save the
28:2628 minutes, 26 secondssettings. Now you have the set the settings saved. You have GitHub that's already enabled for you. Now you also need to set the authorization call back
28:3528 minutes, 35 secondsURL. I did that. If you come over to the URL configuration, you can see over here you have the different callbacks URL and you also have the site URL. This site
28:4428 minutes, 44 secondsURL you need to make sure it's pointing to local host 3000. This is the homepage of application. In production, you're
28:5128 minutes, 51 secondsgoing to use your production site URL here. You're going to save this and you can copy the different callbacks that you have. The Google call back, the
28:5928 minutes, 59 secondsGitHub call back as well as the magic link call back. So in this case you can copy the GitHub com call back and you
29:0629 minutes, 6 secondscan use the value and you're setting this up as a call back over here.
29:1029 minutes, 10 secondsAuthorization call back URL. You pass this in here. You pass in your home base your homepage URL and you're good to go.
29:1829 minutes, 18 secondsNow let's go on and see how we can work with GitHub. How we can work with super vote authentication making use of our own superv SDK.
29:2929 minutes, 29 secondsSo I did make some changes and right here we have the super vote test application here and over here we have
29:3629 minutes, 36 secondsour super votes application. So we have the project that we have created over here. If we expand this you see that we are currently into this project over
29:4529 minutes, 45 secondshere. So let's check the database and over here we're into this project that we created. Okay. So this Larry demo um supervol project. So what I'm going to
29:5429 minutes, 54 secondsdo now I'm going to come back to authentication. We have already done the linking by updating the signing on providers for GitHub. You can see now
30:0230 minutes, 2 secondsGitHub is enabled. We have the client ID and the client secret. Now we're going to come over to users section. So we can
30:0930 minutes, 9 secondstry to authenticate and see the user over here. Now uh I have already done some clean up here because I had some
30:1630 minutes, 16 secondsissues due to SSR and having to display the sign in button in the server component. So it gave issue. I had to move it over here to this component over
30:2430 minutes, 24 secondshere. And on click I call the spot URL/github which is this URL that we get over here and we can go on to test this right now.
30:3430 minutes, 34 secondsWe have this user batch component which then displays the email of the current authenticated user. So let's go. I'm going to open up my terminal so that we can see everything um update over here.
30:4530 minutes, 45 secondsRight here in the terminal we are just logging the users to the console. And over here in the user badge component
30:5230 minutes, 52 secondsover here we are displaying the current authenticated user. Now we're going to uh come over to application and the
31:0031 minutesapplication is not this application. We need to come over to localhost 3000 which is our nextjs application and we
31:0931 minutes, 9 secondsare going to authenticate over here. Now this is the sign in with github button.
31:1331 minutes, 13 secondsI'm going to click on this button. Let's see what happens. Now you can see we are redirected over to the oorthth flow.
31:2031 minutes, 20 secondsThis is how users making use of superv are going to be redirected over to our own oorthth flow. So we provide users
31:2931 minutes, 29 secondsthe ability to authenticate with Google with GitHub and also with email because if you check the application we have
31:3631 minutes, 36 secondsemail already enabled by default which is over here. So we have um signing and providers. We have email and this email
31:4431 minutes, 44 secondsalready has a magic link. So we have email with password and magic link as well. Now let's come over to our users
31:5231 minutes, 52 secondsand let's create this user. So I'm going to click on this authorize right over here. And once you authorize this, let's see what happens to application. The redirect is going to happen over here.
32:0332 minutes, 3 secondsAnd automatically you see here we have this user now. And let's check our users, our off users. So if you click on
32:1032 minutes, 10 secondsthis you're going to see over here now we have this new user that is making use of super vault and the user is verified
32:1832 minutes, 18 secondsthe prov the provider type is social and this was the time the user was created with this ID now let's this is the
32:2632 minutes, 26 secondsauthentication users remember this is not the users that we have over in our database they're quite different this is the we have all users which is the
32:3532 minutes, 35 secondsinternal authentication users this is where you're going to see this new user Right? You're not going to see this.
32:4132 minutes, 41 secondsYou're not going to see this new user over here in the users table. So the user would not show up here because this is the authenticated user just as you're
32:5032 minutes, 50 secondsgoing to have with Superbase. So guys, this is a project we built together.
32:5432 minutes, 54 secondsDefinitely, we have so much that I can't even show on camera. It's going to be it on course if I attempt to show everything we built on camera because if you come here, we have different things.
33:0433 minutes, 4 secondsWe have different things that we can chain over here. As you can see the different operations, you're not just limited to easy operations like this.
33:1333 minutes, 13 secondsYou're not just limited to let's say select operations. You can also go and do you can see delete operation in um
33:2033 minutes, 20 secondsyou can also do operate operations just like this. You can go on to op update data that we have in your database
33:2833 minutes, 28 secondsmaking use of our own SDK. So this is everything we are going to be building and actually so much more which I am not showing up here and by the end of this
33:3733 minutes, 37 secondseverything is being deployed. So we have the front end being deployed over to Vasel and the back end is being deployed
33:4333 minutes, 43 secondsover to railway. Okay everyone so before we get started I just want to point out that we have all the code over here on
33:5233 minutes, 52 secondsGitHub. So you want to make sure that you grab the code and the code actually as you can see here we have the 01 O23
34:0034 minutesand we have the different branches which are numbered like this that matches a specific section in the course. So we
34:0734 minutes, 7 secondsstart up with the monor repos setup and then we set up um next is the database setup the dashboard of the organization
34:1534 minutes, 15 secondssystem. So this is how it's actually going to be timestamp in the section. So once you start up a section you just visit the different branch over here and
34:2434 minutes, 24 secondsyou would have the code that is just for that specific section. It helps so that you can use it to compare your own code base to my own code base. As we see over
34:3334 minutes, 33 secondshere we have the API app and here we just have limited code that matches what we we we are working on on that specific
34:4134 minutes, 41 secondssection. And if you compare this to what we are working on, let's say when we started working on the table editor, you see now that we have pretty much more
34:4834 minutes, 48 secondscode over here um that matches just what we work with for this specific section.
34:5434 minutes, 54 secondsSo please grab the code. It comes in so handy as we reference or we make reference to the code when we work on
35:0135 minutes, 1 secondspecific sections in the application. So that's pretty much it for me. Without any further ado, let's get started with the course.
Chapter 2: 10-realtime-subscriptions
35:1435 minutes, 14 secondsOkay, so now we are actually done with the SQL editor that we did work on last time out. Now we're going to be working on real time subscription. So real time
35:2335 minutes, 23 secondsis just like a way where in spa volt we're also going to have it work on database level. So they're going to create triggers on each table and then users will be able to enable real time.
35:3335 minutes, 33 secondsSo whenever something changes in your database, they can quickly run an update on another table and get the data updated in real time. So that means real
35:4235 minutes, 42 secondstime is going to fire for changes from anywhere. So the rest API client, the SQL editor, also direct database access,
35:4835 minutes, 48 secondsnot just for one aspect of our code. So let's go on and see how we can do real time. This is what Superbase also makes
35:5635 minutes, 56 secondsuse of internally. And for that we are also going to be making use of um or installing some packages that we need to this that we are going to need for this.
36:0536 minutes, 5 secondsSo we're going to be installing packages just also on the web and also on the front end side of things. So you can just open this up and I'm going to quit
36:1236 minutes, 12 secondsit for now. And over here you want to cd into the apps and into the API. So we're going to be installing NestJS4/boockets.
36:2136 minutes, 21 secondsWe're also going to install the platform socket io. So at NexJS/platform socket.io, we also install the native
36:3036 minutes, 30 secondssocket io client and pg. So to run the installation and while the installation is ongoing, we are going to open up a new terminal window and over here you
36:3936 minutes, 39 secondswant to cd into the web because the web actually is going to need it on socket io client. So once you're into the web,
36:4636 minutes, 46 secondsyou also want to run pnpm add socket io client. Now the socket I io client has
36:5336 minutes, 53 secondsbeen installed on the browser on the API and also on the web. The next thing for us to do is to fix or connect socket io
37:0237 minutes, 2 secondsto the API because NexJS is not going to automatically enable websocket. So we need to add the socket IO adapter and
37:0937 minutes, 9 secondsbefore we go on to listening to connection in our API. So that's going to happen in the source and in the main.ts file over here.
37:1837 minutes, 18 secondsJust before we have our listing over here, maybe somewhere here we need to have this code here. We're going to say
37:2437 minutes, 24 secondsapp dot use web socket adapter. Use web socket adapter. And here we're going to
37:3237 minutes, 32 secondssay, hey, which adapter do you want us to make use of? This is going to be the new IO adapter like this. And this is
37:3937 minutes, 39 secondsgoing to come in from NexJS platform socket io. And here we're just going to then pass this app that we have over
37:4637 minutes, 46 secondshere. And we can go on to save this. Now the installation is done for both. So I'm going to stop this and I would cd
37:5337 minutes, 53 secondsoutside the API folder. And we also need to be at the root which is the super vote route. Now most of the work we're going to be doing here is going to be
38:0138 minutes, 1 secondbased on the back end. But definitely we're going to have work to do on the UI so that we can display a screen to the user. So now this is all we need to do.
38:1038 minutes, 10 secondsAll the change that we need to do in this file. Now we need a real time back end or real time database URL. So for
38:1738 minutes, 17 secondsthat we are going to come here. This real time um database URL doesn't need to make use of connection pooling. So we
38:2538 minutes, 25 secondsnot need any pooling here. It's going to be a direct neon URL and we're going to get this moment from the database. But
38:3238 minutes, 32 secondsin the env or maybe we should get it now. Let's come over to the env. And in the env over here we want to create a new environment variable. So here we can
38:4138 minutes, 41 secondscall this real time database URL and the value for this real time database URL is going to be coming from neon and over
38:5038 minutes, 50 secondshere in yon we just want to come over to the dashboard and in dashboard you want to look for connect. So now it's kind of squashed up but this will say connect
38:5838 minutes, 58 secondsyou click on this and make sure that your connection pooling is not turned on to make sure it's off like this. You want to copy this snippet that we have
39:0639 minutes, 6 secondsover here and we're going to use that as the value over here like this. So, we're going to save this. And now with this saved, now with this here, you want to
39:1439 minutes, 14 secondsgo and give this a save. Now, we have saved this, we can exit out of here.
39:1939 minutes, 19 secondsNow, we also need to update our shared types. And the shared types is going to be here. So, we're going to come over to the packages. So, you can collapse this.
39:2739 minutes, 27 secondsAnd in the packages, you want to look for where you have the types. And in the types, you want to look for the source and the index.ts.
39:3439 minutes, 34 secondsSo over here we're going to have the real time event type which is going to be insert, update, and delete. So let's go on and bring them in here. So we're
39:4339 minutes, 43 secondsgoing to export the type. The real time event type is going to be this string of insert, update, or delete. And now we're
39:5039 minutes, 50 secondsgoing to have the interface for the real time event. So what is the event going to have? This event is going to have the
39:5739 minutes, 57 secondstype, which is this type we listed above here. It's also going to have the table that this event belongs to is a string.
40:0440 minutes, 4 secondsAnd then the record is going to be an object where the key is a string and the value is of unknown. And the old record is also going to be like optional here.
40:1240 minutes, 12 secondsAnd I'm going to leave this comment like this old record is only going to be for the update and delete operation where you have you know new record and the
40:2040 minutes, 20 secondsproject ID is going to be of type string and you also have the time stamp and the time stamp is also going to be of type string. Now we need to also make some
40:2840 minutes, 28 secondsupdate to our constant so that we can have the real time event. So I'm just going to save this. And now we are done with the type. We need to come over to
40:3740 minutes, 37 secondsour constants in the source and in the index.ts file here. So just as we have these operations here, now we're going
40:4440 minutes, 44 secondsto have a new one for real time. So I'm just going to drop this comment here and call this real time just like this. And
40:5140 minutes, 51 secondsin here, oops. Yeah. So maybe uppercase like this. And in here we're going to export the const. We call this real time
40:5840 minutes, 58 secondsevents. And real time event is going to be the object with subscribe, unsubscribe. Um it's going to be the string.
41:0741 minutes, 7 secondsUnsubscribe is also going to be the string of unsubscribe the event and the error. So you see that subscribe event and unsubscribe event. The actual event
41:1641 minutes, 16 secondsand also error here and we're going to say as const. Now we're done with this. Let's go and create our trigger service.
41:2241 minutes, 22 secondsSo what's going to happen is I'm going to exit or close all these files and in our database where we have so in the API
41:2941 minutes, 29 secondsin the source we need a new feature. Now this feature we're going to call this real time like this and in here we're
41:3641 minutes, 36 secondsgoing to have the real time.ts file. Now let's go on and have this service. I'm going to be explaining as we build out the service in case some
41:4441 minutes, 44 secondsthings are a little bit confusing but we can get started already. So we can start by bringing the import. Let's import the
41:5141 minutes, 51 secondsbat request exception which will and also injectable. These are going to come from nestjs common. We are also going to
41:5841 minutes, 58 secondsbe bringing in the drezle service. So we import drizzle service which will come from one level up to the database and
42:0542 minutes, 5 secondsthe drizzle. CS just as all our services we're going to mark it to the injectable decorator and we can have the class
42:1342 minutes, 13 secondsdefinition which we'll call trigger service. We need to initialize the drizzle service right in the constructor. So we say private drizzle is going to be of ty drizzle service.
42:2442 minutes, 24 secondsNow as always we're going to have this private safe identifier assert safe identifier which is going to take in the name and the label and it's going to
42:3242 minutes, 32 secondsreturn void. Now this rejects that we have over here just going to help us to check that the name is actually a safe SQL identifier. So it checks like um it
42:4142 minutes, 41 secondsstart with an upper case and it contains letters and numbers things like that.
42:4542 minutes, 45 secondsAnd if this is not met, it's going to throw the bat request exception that says we have an invalid label and name just like this. Now we're going to have
42:5442 minutes, 54 secondsthe channel name build which is this function that is going to be a static function channel name. It takes the project ID and the table name and then it's going to return a string.
43:0543 minutes, 5 secondsNow this is going to return this string that has project underscore because channel names must go on to match the bg
43:1243 minutes, 12 secondsnotify and also listing hyphones notify and listing and then we also have the hyphens in the UID is going to
43:1943 minutes, 19 secondsbecome underscore. So the channel is actually going to be a valid identifier.
43:2443 minutes, 24 secondsThen this function that we have here this enable realtime function that takes in the database schema the project ID the table name and it's going to be a
43:3243 minutes, 32 secondspromise that returns void. Okay, so this enable realtime function we're going to have the assert save identifier so that
43:4043 minutes, 40 secondswe can assert that the database schema is actually valid and we're going to do the same for the table name.
43:4743 minutes, 47 secondsSo we call this assert save identifier.
43:5043 minutes, 50 secondsWe pass in the table name and then table name label like this. Now let's have the channel name. We're going to say con
43:5743 minutes, 57 secondschannel is going to be equals to the trigger service and then we say dot channel name and then we're going to have the project uh ID and the table
44:0644 minutes, 6 secondsnames. We're making of this static function here. Then the function name is going to be the table name underscore notify. Now we're going to have this
44:1444 minutes, 14 secondsweird looking um SQL which I would explain. So we have pris.db.execute.
44:2044 minutes, 20 secondsWe're going to have this create or replace function. So we are creating this function with this name of database DB schema and the function name. Now
44:2944 minutes, 29 secondsthis is a function. So we have this function like this and this is going to return a trigger. And we have the beginning of the SQL. So we're going to
44:3644 minutes, 36 secondsdeclare payload as JSON here. And then we say after declaring payload we begin by saying if tgop which means if this
44:4444 minutes, 44 secondstrigger operation is equals to delete then we want to assign the payload to this value. The payload is going to
44:5044 minutes, 50 secondsbecome this tg build object where it's going to have the type. The type is going to be this tg_op trigger
44:5844 minutes, 58 secondsoperation. The table is going to be the tg table name. The trigger table name is also going to have the row which is this
45:0745 minutes, 7 secondsrow we're going to cast to JSON and pass in the old and then we're going to also have the old record which is going to be the row to JSON. And we also pass the
45:1545 minutes, 15 secondsold record here. And the project ID is going to match the project ID. So these are just as we defined in our types. And
45:2245 minutes, 22 secondsnow we have the time stamp which is going to be default now like this. We're going to have the now function and we cast to text. Then we're going to then
45:3145 minutes, 31 secondsgo on to perform the bg notify which is actually going to do the actual notify.
45:3545 minutes, 35 secondsAnd then to watch channel we are going to have the channel injected here. And the payload is going to be cast to text like this. And then it's going to return
45:4345 minutes, 43 secondsold. Now we're going to say it like else if like this if pg notify the channel and the payload we're going to then have
45:5145 minutes, 51 secondslike um this object here. So this is more or less like having if the payload we're going to make it equals to this
45:5945 minutes, 59 secondsobject where we have the type of tg operation um trigger operation. The table is going to be the trigger table
46:0646 minutes, 6 secondsname. We're also going to have the record which is row to JSON and we pass in the new record and the old record is going to be like the same where we have
46:1546 minutes, 15 secondsthe row to JSON, we pass in the old record and the project ID is going to have the project ID injected here. Now
46:2446 minutes, 24 secondswe lastly need the time stamp. So for the time stamp we're going to make use of the now function and we cast it to text. And once we are done we're going
46:3146 minutes, 31 secondsto say hey do go and notify. So we're going to say go on and perform the PG notify to this specific channel with
46:3946 minutes, 39 secondsthis payload which will cast to text like this. And once you're done go on and return new then we're going to have
46:4746 minutes, 47 secondsanother else we're going to build a payload which is going to be equals to the JSON build object. The type here is
46:5646 minutes, 56 secondsgoing to be the trigger operation. We're also going to have the name. the table.
47:0147 minutes, 1 secondThe table is going to be the trigger table name. We're also going to have the record and the record is going to be the row to JSON where we have new like this.
47:1247 minutes, 12 secondsThen we also have the project ID. The project ID is going to be equals to this project ID that we're injecting here.
47:1847 minutes, 18 secondsAnd the time stamp is going to make use of the now function which we cast to text. Then we can finally say hey do go on and perform the PG notify. So here
47:2747 minutes, 27 secondswe're going to say perform PG notify to this specific channel with this payload and then you can go on to return new.
47:3747 minutes, 37 secondsOkay. So after this we can go on to end if here like this and actually end the block and wrap up the language which we say the language is plgsql.
47:4847 minutes, 48 secondsThen finally we can go on to await this.
47:5147 minutes, 51 secondsAnd we can call this.rezo db.execute execute. We want to drop this trigger if it exist. So we're going to drop the trigger to this table name. And
48:0048 minutesthen we're going to have underscore realtime trigger. And now it needs a schema. So we say on this database schema dot the table name. We have seen
48:0948 minutes, 9 secondsthis in neon database. And then this is going to also go on to create the trigger on the table name_realtime
48:1848 minutes, 18 secondstrigger. And this is going to be after our operation. So it could be after the insert operation or the update operation
48:2548 minutes, 25 secondsor the delete operation. It needs database schema. So we say on the DB schema table name like this. And we're
48:3248 minutes, 32 secondsgoing to run this operation for each row that we have in the D D D D D D D D D D D D D D D D D D D D D schema to go on and execute the function and this
48:3948 minutes, 39 secondsfunction here is the DB schema dot the function name and we call the function.
48:4448 minutes, 44 secondsSo now we're going to have this async function to disable real time. This is going to be straightforward. is going to take in the database schema which is of
48:5248 minutes, 52 secondstype string and the table name for which you want to disable real time. So it's going to return void promise. First we
49:0049 minutesdo our assert save identifier so that we can have the database schema. So we pass the schema name like this as the label.
49:0649 minutes, 6 secondsAnd then we're also going to have the assert save identifier where we pass the table name and the table name here like
49:1349 minutes, 13 secondsthis. And finally we can go on to execute. We execute by awaiting this. DB
49:2149 minutes, 21 secondsdo.execute and execute what? So want to go and drop the trigger if it exist. And we're running this on the table
49:2849 minutes, 28 secondsnamed_real time trigger. And it needs a DB schema. So we say on the DB schema
49:3549 minutes, 35 secondsdot table name. So now we can close everything up. And this is the service.
49:4249 minutes, 42 secondsSo this is the service we need over here. So the real time service the service um the trigger service. Now
49:5049 minutes, 50 secondswe're going to take a moment review what we've done and then we're going to go over to the actual to the real time service and the real time service is
49:5949 minutes, 59 secondsthen going to be making use of the trigger service that we just created here. Now we're going to be working on the real time gateway.ts.
50:0750 minutes, 7 secondsOkay. So where is this going to be? It's still going to be inside the real time folder here. So over here just like this. So let's come here and in the real
50:1550 minutes, 15 secondstime we need to create a new file. Now this new file we're going to call the real time.gateway.ts file here. So let's get things started.
50:2450 minutes, 24 secondsWe're going to start by importing the connected socket. And connected socket we're also going to bring in the message body. We're also going to bring on
50:3350 minutes, 33 secondsgateway connection. We're also going to bring on gateway disconnect. We also need the subscribe message. We need the
50:4150 minutes, 41 secondswebsocket gateway and uh we also need the websocket server which will come from NestJS websocket. Now from socket
50:5050 minutes, 50 secondsio we are also going to be bringing in some imports. So let's import the server as well as the socket which will come from socket.io.
50:5950 minutes, 59 secondsNow we need our usual suspect that JWT service which will come from NestJSJW.
51:0551 minutes, 5 secondsWe also need our config service which is going to be coming in from the NestJS4/config.
51:1151 minutes, 11 secondsAnd what else do we need now? We also need to bring in the real time which will come from one level up our real time service.
51:2051 minutes, 20 secondsAnd we also need um to bring in the real time events. The real time events is going to be coming in from and it's
51:2851 minutes, 28 secondsgoing to also the project row keys is going to come in from super vault constants. And then we also need the real time event. The real time event is
51:3651 minutes, 36 secondsgoing to come from the types to remember the types we created. This type from super vote for/types. We need to bring it in. Then let's go on and import the type which is our project key payload.
51:4851 minutes, 48 secondsAnd the project key payload is going to come from one level up to the project API and the project key guard.
51:5651 minutes, 56 secondsOkay. So let's have the first type which is the socket call back entry. This socket callback entry is going to take in the project ID which is a string also
52:0552 minutes, 5 secondsthe table name which is a string and the callback function. Now the cover function needs the actual event which is of type realtime event and it returns
52:1452 minutes, 14 secondsvoid. Now we're going to make use of have the at socket gateway decorator. So the name is going to be real time and to
52:2352 minutes, 23 secondsmake sure we do not have any course errors we're going to have it here. This just goes on to tell NestJS that this class we are going to be implementing is
52:3052 minutes, 30 secondsa socket io server with /realtime path and then we also have the course here.
52:3652 minutes, 36 secondsOkay. So we're going to set credentials to true. Now this class definition which we're going to call the real time gateway is going to implement the on
52:4452 minutes, 44 secondsgateway connection and also on gateway disconnect which are hooks that when the clients are going to use to connect and also disconnect. And we're also going to
52:5252 minutes, 52 secondshave the web socket server which is going to inject the socket io server. So here we're going to have the socket IO server and here we are injecting the
53:0153 minutes, 1 secondserver like this. So we have the socket callbacks which is going to be a new object with a string and the call back
53:0753 minutes, 7 secondshistory. So the socket call back history list like this. And in the constructor we're going to be injecting the realtime
53:1453 minutes, 14 secondsservice, the JWT service and the configuration service. All right. So let's do that in here. After the
53:2253 minutes, 22 secondsreal-time service, let's also have the JWT service and also the config service.
53:2853 minutes, 28 secondsThen we're going to have the handle realtime connection because this is going to help us to handle the realtime connection. And in here this async
53:3753 minutes, 37 secondsfunction to handle connection is going to take in the client. The client is going to be of type socket. So here we're going to have the token which is going to be the client handshake. Tken.
53:4753 minutes, 47 secondsSo it's just going to go on and read the API keys that the browser is going to send with the connection o and the anon
53:5453 minutes, 54 secondskey. So here we're going to say if we do not have any token we're going to client emit. We're going to emit an error that we are missing the API key. And after
54:0354 minutes, 3 secondsemitting this error missing API key we also want to go on and disconnect. We're going to call the client.connect
54:1054 minutes, 10 secondslike this. Now if we do have the correct token, we are going to then have our try catch block where we need a payload. Now
54:1854 minutes, 18 secondsthe payload is going to come from this JWT service doverify and we want to have the response which is the project key
54:2554 minutes, 25 secondspayload. So we're going to tell it hey verify this token with this our secret.
54:3054 minutes, 30 secondsTo get our secret we need to call the configuration service get where we get a string and we pass in the project JWT
54:3754 minutes, 37 secondssecret. Now if this payload after destructuring or after verifying this payload if the role doesn't match anon key. So we're going to say the payload.
54:4654 minutes, 46 secondsRO if it's not equals to anon key. If that is true and we're also going to check if the payload row is also not equals to service row key that means there's a problem.
54:5754 minutes, 57 secondsOkay. So what we're going to do here um if it doesn't match like this we're going to throw a new error that we have
55:0355 minutes, 3 secondsan invalid key row. And then if everything is fine, we're going to have the data. So we're going to inject the
55:1155 minutes, 11 secondsproject ID. So we say the client data.p project ID is going to be the payload.
55:1655 minutes, 16 secondsID. We also want to then inject the role into the client. So we say the client data. It's going to be equals to the
55:2355 minutes, 23 secondspayload row. Then we can await the client. Which is the project like this.
55:2855 minutes, 28 secondsAnd then we're going to have the payload dot the project ID.
55:3355 minutes, 33 secondsNow in case something goes wrong and we're not able to verify this then want to emit the realtime events error with
55:4055 minutes, 40 secondsthe invalid API key. And then we are going to go on to also disconnect.
55:4855 minutes, 48 secondsOkay. So let's have this function. This function is going to help us to handle disconnect here. And this handle disconnect is going to take in the
55:5655 minutes, 56 secondsclient. And the client is going to be of type socket. And then it's going to have the callbacks. The callback is going to be this.get,
56:0456 minutes, 4 secondswe're going to pass in the client ID or an empty string. And then let's have the loop. We're going to say for con the
56:1156 minutes, 11 secondsproject ID, the table name, and the call back of callbacks. Then we're going to call this realtime.subscribe.
56:1956 minutes, 19 secondsAnd we are going to also when we unsubscribe want to pass the project ID the project name as well as the call
56:2756 minutes, 27 secondsback cuz this is what our function needs the real time and then we're going to call this dosocket callbacks delete want
56:3456 minutes, 34 secondsto delete the client ID okay so this just happens when a client disconnect the tab is closed you know
56:4256 minutes, 42 secondswant to go and do some cleanup now we have this at subscribe message which is then going to have the real the event of subscribe and we call handle unsubscribe
56:5156 minutes, 51 secondswhich is when a client emcribe with a table name this handler we're going to put them in a socket IO room for that project so we're going to have the
56:5956 minutes, 59 secondsconnected socket and also the message body with the table name so let's get the project ID we're going to say con project ID is going to be equals to
57:0857 minutes, 8 secondsclient data so remember when we did inject the project ID in the client so we're going to retrieve it so it could be a string or undefined and we're just
57:1657 minutes, 16 secondsgoing to have a card if we are not able to retrieve the project ID or when we trim the table name. It is an empty string. We're going to just return.
57:2557 minutes, 25 secondsLet's have the normalized table. So, we're going to call the table name and we're going to trim the table name. I want to have a room. Now, this room is
57:3357 minutes, 33 secondsgoing to be the project, the project ID, and the table is going to be the normalized table just like this. So,
57:4057 minutes, 40 secondsit's going to go on and um broadcast when a row changes to this table. Okay.
57:4557 minutes, 45 secondsOkay, so we're going to have existing is going to be the callbacks get the project the client ID or an empty array.
57:5257 minutes, 52 secondsSo we're going to say if existing. So let's go and map through the existing callbacks. Then we're going to get each entry and we're going to return the
58:0058 minutesentry. project ID. So we're going to have this check if it's equals to project ID. If that is true, then we're going to return the also have the entry
58:0958 minutes, 9 secondstable name if it's equals to normalized um table like this. So this check here is going to check boolean. Then we're
58:1758 minutes, 17 secondsgoing to go on and return. If everything is okay, we're going to await the client join and we pass in the room. Let's
58:2558 minutes, 25 secondscreate this call back. We're going to await callback jojoin room like this.
58:2958 minutes, 29 secondsAnd then we're going to have the we're going to have this server 2 and we're going to pass the room. And what do we want to emit? We want to emit the
58:3858 minutes, 38 secondsreal time_event.event and then we want to have the event.
58:4258 minutes, 42 secondsWe're emitting this event with the actual data and then we can await this realtime service.cscribe which takes in
58:5058 minutes, 50 secondsthe project ID the normalized table and the call back. Okay. So we're going to go on and um start at a listing on that
58:5858 minutes, 58 secondstable channel if it's not already running. So we're going to say existing push where we push the project ID the table name which is the normalized table
59:0659 minutes, 6 secondsas well as a call back. And after doing this, we are then going to set the callbacks to the client.
59:1459 minutes, 14 secondsOkay. So we're going to call this callbacks set. We're going to set the client id and also existing. Now we have
59:2159 minutes, 21 secondsthis subscribe message which is going to take in the real time event.cribe.
59:2759 minutes, 27 secondsSo we are listening to this. So we're going to have the async handle or subscribe which is going to take in the at connected socket. So the client and
59:3659 minutes, 36 secondsalso the message body which will retrieve from the decorator and have it to be the table name. So when the client
59:4459 minutes, 44 secondsemit unsubscribe this is going to go and remove them from the table socket IO room and stop them from listening to callback so they never longer get
59:5159 minutes, 51 secondsevents. So that's where we're going to get the project ID again from the client. And we're also going to have a quick guide that if we're not able to
59:5959 minutes, 59 secondsget the product ID or the table name is an empty string or nullable, we're going to return. But then if we have the
1:00:071 hour, 7 secondsnormalized table, we're going to normalize the table by just streaming to remove any leading and also existing ending white space from the table name.
1:00:151 hour, 15 secondsAnd we also have the room which is still like this. So we have the project, the table name, the project ID, the table, and the normalized table. Then we're
1:00:231 hour, 23 secondsgoing to call the client. leave want to leave this room.
1:00:281 hour, 28 secondsAgain, we're going to check our callbacks which is going to be this dots socket callbacks do get one to get the
1:00:351 hour, 35 secondsclient do ID otherwise it's going to be an empty array.
1:00:401 hour, 40 secondsSo the entry is going to be the callbacks.find find and we're going to have each call back and we're going to return here like saying if the the
1:00:481 hour, 48 secondscallback project ID matches the project ID if that is true and also if the callback table name matches the
1:00:561 hour, 56 secondsnormalized table if this is true so if entry that means the the client is listening we're going to call realtime
1:01:031 hour, 1 minute, 3 secondsservice so that we can unsubscribe and this needs the project ID it also needs a table name which is our normalized table and it also needs the callback which is the entry callback.
1:01:161 hour, 1 minute, 16 secondsThen we're also going to call this dosocket callbacks set and then we're going to pass in the client ID and also
1:01:241 hour, 1 minute, 24 secondsthe callbacks want to filter this actual call back from the callbacks. So we're going to call the callbacks filter.
1:01:311 hour, 1 minute, 31 secondsWe're going to return where the client is not equals to this entry that we have over here. And then we can go to close this up. So whenever the client emits
1:01:391 hour, 1 minute, 39 secondsunsubscribe, we're just going to go and remove them from the table socket room so that they can no longer listen to the callbacks and they will u eventually
1:01:461 hour, 1 minute, 46 secondsstop getting events for that specific table. And we also want to go on and delete the subscription from the sockets callback so that it goes on to
1:01:541 hour, 1 minute, 54 secondsdisconnect them and the cleanup is also going to stay accurate. So let's go on and fix all this that we have. Don't know why we have loads of errors here.
1:02:031 hour, 2 minutes, 3 secondsSo let's see why do we have this and that's because of real time events. So we have these errors and we're having these errors because we do not have the
1:02:111 hour, 2 minutes, 11 secondsrealtime service yet. So we have the trigger service but we are currently missing the realtime service. So that's what we are going to be implementing
1:02:181 hour, 2 minutes, 18 secondsnext. Now we are missing out on the realtime service. So I'm going to take this copy this so that we can create this next. So once you have this copied
1:02:271 hour, 2 minutes, 27 secondsyou're going to come over here and you need to create a new file. So this new file is going to be the real time service.ts
1:02:351 hour, 2 minutes, 35 secondsfile. So let's start. We're going to start by importing injectable also on module destroy which is a life cycle
1:02:421 hour, 2 minutes, 42 secondshook for cleanup in NestJS. We're also going to bring in the configuration service which is going to come in from NestJS for/config.
1:02:521 hour, 2 minutes, 52 secondsNow we need to bring in the PG client.
1:02:541 hour, 2 minutes, 54 secondsSo we're going to import client [clears throat] from PG. We also need to bring in our trigger service from the trigger service file that we created earlier. And we're also going to bring
1:03:031 hour, 3 minutes, 3 secondsin the real-time event from superv/types.
1:03:081 hour, 3 minutes, 8 secondsSo we're importing the type the realtime event from our superv/types.
1:03:141 hour, 3 minutes, 14 secondsNow let's have this type which is the notify call back type. It needs the event which is of type the realtime event and it returns void. We're going
1:03:221 hour, 3 minutes, 22 secondsto mark this class as injectable. And here we're going to export the class the realtime service which is then going to be implementing this life cycle hook of
1:03:311 hour, 3 minutes, 31 secondson module destroy so that we can have a cleanup. We're going to have the private listeners which is going to keep track
1:03:381 hour, 3 minutes, 38 secondsof each active listing channel. So we're going to take in the string and we're also going to have the client which is of type client and also the call back
1:03:461 hour, 3 minutes, 46 secondswhich is this set and then we have the notify call back here. Now in the constructor we're going to inject the
1:03:541 hour, 3 minutes, 54 secondsconfig service. So we're going to say private config service is going to be of type config service.
1:04:021 hour, 4 minutes, 2 secondsNow we're going to have this comment because we want to get the connection string that we can listen into. And that was why we did get the connection string
1:04:091 hour, 4 minutes, 9 secondswithout connection pooling from our neon database. And how can we going to get it? We're going to have this private get the listing connection string. So it's
1:04:181 hour, 4 minutes, 18 secondsgoing to return the string which is the connection string. And then we can construct the URL by making use of our config service. So we'll say this
1:04:261 hour, 4 minutes, 26 secondsdoconfig service.get we are expecting a string want to get the variable with the name of realtime database URL. If that
1:04:331 hour, 4 minutes, 33 secondsis not fine because that is our preference then we're going to fall back to the database URL. But I would you know ensure that you have this always
1:04:401 hour, 4 minutes, 40 secondsset then we can do a quick check. If for some reason we do not find both URL we're going to throw an error that the database URL is not configured.
1:04:501 hour, 4 minutes, 50 secondsBut if we have the URL, then we're going to go on and also do some cleanup in case you forgot to remove the puller from the database URL. So we're going to
1:04:591 hour, 4 minutes, 59 secondsreplace any text with puller with just an empty string. And then we can go on to have function which is the subscribe function. Now this is going to take in
1:05:071 hour, 5 minutes, 7 secondsthe project ID. So these are the functions we are calling from the realtime gateway, the table name and the actual call back. And here the call back
1:05:151 hour, 5 minutes, 15 secondsis going to be the notify call back which is this call back here that takes in the event. So this function is going to return void and let's have the
1:05:221 hour, 5 minutes, 22 secondschannel we're going to call the trigger service dot channel name and then we'll pass in the project ID as well as the table name.
1:05:311 hour, 5 minutes, 31 secondsSo let's have existing like this. So existing is going to be this.lister get channel. Let's check if this an existing
1:05:391 hour, 5 minutes, 39 secondschannel. Now if this is an existing channel we just want to add it to the callback. So we want to add the function that is going to run when this is
1:05:461 hour, 5 minutes, 46 secondscalled. So we say the callbacks add the actual call back and then we're going to return. Now if it is a new channel, if
1:05:531 hour, 5 minutes, 53 secondsit's a new um channel, then we're going to say conclient is going to be this new client. We're going to create a client for this new connection. So the
1:06:021 hour, 6 minutes, 2 secondsconnection string is going to be this.get the connection string which we have set up in our environment. And then we're going to await the client connect.
1:06:111 hour, 6 minutes, 11 secondsThat is not going to be enough because we want to then listen to the actual notification so we can get the message.
1:06:161 hour, 6 minutes, 16 secondsSo we say client on we get a notification and in the call back we get a message.
1:06:221 hour, 6 minutes, 22 secondsIf we do not have a payload we're going to go on and return but if we have a payload then we can have the try catch and the try block we're going to get the
1:06:301 hour, 6 minutes, 30 secondsevent. So remember we cast the payload to a text. We want to pass it back to a string. So we to an object so we use the
1:06:391 hour, 6 minutes, 39 secondsJSON.pass pass method and we're also going to have entry which is going to be this.listers.get channel. Now if for
1:06:461 hour, 6 minutes, 46 secondssome reason um we're going to check the entry callbacks and for each call back we're going to return the call back and
1:06:531 hour, 6 minutes, 53 secondsthe actual event. Now in case of some error that means the payload malfunctioned and JSON.p password not successful we're just going to go on and ignore.
1:07:031 hour, 7 minutes, 3 secondsNow we're going to also go and also have the channel name. want to go and run a query that is going to listen on that specific channel. So here we're going to
1:07:121 hour, 7 minutes, 12 secondsjust leave this comment here because we do not need any double quotes. This comment is just way to you know always refresh whenever you see it. So we're
1:07:191 hour, 7 minutes, 19 secondsgoing to away the client query and we're going to query the listening on this channel like this. And finally we want to set the listeners. So we'll call this
1:07:281 hour, 7 minutes, 28 secondslisteners set the channel and with the data here is going to be the client and the callback is going to be this new set
1:07:361 hour, 7 minutes, 36 secondswhere we have a list of call back like this. Then we're going to have the new function which is the unsubscribe. So
1:07:431 hour, 7 minutes, 43 secondshere we're going to have the project ID which is of type string also the table name which is of type string and the
1:07:501 hour, 7 minutes, 50 secondsactual call back. This call back is going to be of type notify call back and it's going to be returning void.
1:07:581 hour, 7 minutes, 58 secondsSo we say con channel is going to be equals to trigger service dot channel name and we're going to pass in the project ID as well as the table name.
1:08:081 hour, 8 minutes, 8 secondsThen we can say con entry is going to be equals to this.listers do get where we get the channel. So we're trying to
1:08:141 hour, 8 minutes, 14 secondsunsubscribe here. Now if we do not have an entry then that's okay. We're just going to return. But if we have an entry, we're going to call the entry
1:08:221 hour, 8 minutes, 22 secondscallbacks dodelete. And we're going to delete the actual callback.
1:08:271 hour, 8 minutes, 27 secondsAnd then we're going to check if the entry do size is equals to zero. Then we're going to go on to have the entry
1:08:361 hour, 8 minutes, 36 secondsdoclient dotquery where query on listing and then the channel and we're going to have the finally so that we can go on to
1:08:421 hour, 8 minutes, 42 secondsend the connection. So in the finally function here, we're going to have void and we call the entry.client client end
1:08:501 hour, 8 minutes, 50 secondslike this. We also want to go on and delete the channel so that you know um this listener is going to stop. And then
1:08:591 hour, 8 minutes, 59 secondsbecause we are implementing the NexJS on module destroy, we're going to have this async on module destroy here. And we
1:09:061 hour, 9 minutes, 6 secondswant to do some cleanup. So we'll call promise.all and then we'll call this.listers do values and then we call map where we have the client and we're
1:09:151 hour, 9 minutes, 15 secondsgoing to call client end. I want to clear all listeners. So we'll say this.list listeners doclear like this.
1:09:231 hour, 9 minutes, 23 secondsNow this is this function. I'm going to fix this errors that we have here. So why do we have these errors? Let me just
1:09:301 hour, 9 minutes, 30 secondsdouble check we have this because I'm going to come back to this errors in a moment. And I just want to be sure it's not VS Code. So I might have to refresh.
1:09:391 hour, 9 minutes, 39 secondsBut if we come over here, let's delete this. And let's bring it back in because we have most of this implemented. Now we have the real time events and if we
1:09:471 hour, 9 minutes, 47 secondsdouble check real time events we have error here but it still crashes that it doesn't find error. So what I'm going to
1:09:541 hour, 9 minutes, 54 secondsdo I'm just going to refresh my VS code and once we're back if the error still persist then I'm going to check what's wrong or what we have missed. Now I did
1:10:021 hour, 10 minutes, 2 secondsrestart VS Code and that actually did help get rid of some errors that we're having just like this error that we're having over here where it was not able to pick up the realtime events error.
1:10:121 hour, 10 minutes, 12 secondsBut then we still have typescript complaint just like this unsave member access project ID on client. So what we're going to do we're going to create
1:10:211 hour, 10 minutes, 21 secondsa realtime socket types so that we can have real type safety over here. So here we're going to be creating a new file
1:10:281 hour, 10 minutes, 28 secondsstill inside real time and this is going to be the real time socket.types.ts file. So here we're going to have some
1:10:361 hour, 10 minutes, 36 secondstype some type definition. We can import the type which is the default events um map and we're also going to bring in socket which will come from socket io.
1:10:471 hour, 10 minutes, 47 secondsThen we can import the type the project key rows from supervol for/ constants and we're going to export an interface.
1:10:551 hour, 10 minutes, 55 secondsThis interface is then going to hold the realtime socket data that we are going to use. Now this real time socket data
1:11:021 hour, 11 minutes, 2 secondsneeds the project ID which is of type string and then the row. Now we're going to get the row from the project key rows. We're going to set the type of
1:11:111 hour, 11 minutes, 11 secondsproject_key rows under and then we have the key of which is a type of the project key rows.
1:11:181 hour, 11 minutes, 18 secondsThen we can export the type the real time socket is going to be equals to socket. And here we're going to have the default event map. We're also going to have the default events map like this.
1:11:301 hour, 11 minutes, 30 secondsWe're also going to have the default event map and the real-time socket map.
1:11:341 hour, 11 minutes, 34 secondsSo this is just the way it works in the definition.
1:11:381 hour, 11 minutes, 38 secondsNow once we have this we can go on to give this a save and now we can replace what we have in the real time gateway.ts with a real
1:11:471 hour, 11 minutes, 47 secondstime with a real socket realtime socket here. So we're going to come over here and let's look for the fourth function.
1:11:551 hour, 11 minutes, 55 secondsThe first function that we have over here which is the handle connection that we just say is of type socket. We're going to be replacing it with this realtime socket. So I'm going to copy
1:12:041 hour, 12 minutes, 4 secondsthis, come over here and replace this with a realtime socket which needs to be imported from here our realtime socket types. So now this solves most of the
1:12:131 hour, 12 minutes, 13 secondserror that we have but we also have an error here. Now this error here is for is for the handle subscribe where we
1:12:201 hour, 12 minutes, 20 secondsstill have this socket type. We're going to be replacing this with a realtime socket type like this. Now the real time socket should be the client and I do not know why we still have this error. Okay.
1:12:311 hour, 12 minutes, 31 secondsYeah, this assertion is unnecessary. So, we can already get rid of this like this.
1:12:371 hour, 12 minutes, 37 secondsAnd we still have an error here because a reference type, let's see, a type reference in a decorated signature must
1:12:441 hour, 12 minutes, 44 secondsbe imported as type. So, we're just having the error because we're not importing as a type. So, what mean what that means is we can come here and we
1:12:521 hour, 12 minutes, 52 secondscan import this as a type. That fixes the error over there. And that's the same thing we're going to do here for the handle unsubscribe. The handled
1:13:011 hour, 13 minutes, 1 secondunsubscribe client is going to be the real time socket client. We no longer need to do this assession. So we can now get rid of this and we should be good to
1:13:101 hour, 13 minutes, 10 secondsgo. Now this fixes the error that we have in the real time gateway. Let's apply some fixes here to the realtime
1:13:171 hour, 13 minutes, 17 secondsservice where we still have this type of errors. So here let's scroll to the top and we see that this client is coming in
1:13:241 hour, 13 minutes, 24 secondsfrom PG. Now this might be missing the the definition the type definition as we make use of the new client over here. So
1:13:321 hour, 13 minutes, 32 secondswhat we can do we can cd into the apps and into the API so that we can install the types. So we're going to say pnpm
1:13:391 hour, 13 minutes, 39 secondsadd- as a development dependency we want to add a types for /pg.
1:13:461 hour, 13 minutes, 46 secondsSo let's give this moment for the installation to complete and once it's done we're going to see if that resolves the typescript errors that we are having over here. So now this is done but the
1:13:551 hour, 13 minutes, 55 secondserror persist. Now before I debug further and because I have no VS code recently has been playing peekaboo with me, I'm just going to reload my window
1:14:021 hour, 14 minutes, 2 secondsagain and let me see if we still have the same errors before I continue debugging. Now I did refresh VS code and you can see the error is gone. So if the
1:14:101 hour, 14 minutes, 10 secondserror persisted for you, you can just go to refresh VS code. Okay. So now we are done here. I'm going to clear the terminal and I'm going to see you next
1:14:191 hour, 14 minutes, 19 secondswhere we're going to create the realtime controller.ts TS file. I'm going to close all these tabs that we do have open. Now, let's focus on the real time
1:14:271 hour, 14 minutes, 27 secondscontroller file. So, you can open this up and it's still going to be inside real time here. We're going to be creating this file and this is going to
1:14:351 hour, 14 minutes, 35 secondsbe the real time controller.ts file. And after the controller, we're going to have the module. So, let's start. As always, we're going to be bringing in
1:14:431 hour, 14 minutes, 43 secondsthe import. Let's bring in controller also delete not found exception param post. All of these even the use guide
1:14:521 hour, 14 minutes, 52 secondsthey're all going to come from nestjs common. So here let's import all of these and this will come from at nestjs
1:15:001 hour, 15 minutesfor/ common. Now we're also going to be importing and an equals which will come from drizzle o. We also need to bring in
1:15:071 hour, 15 minutes, 7 secondsa drizzle the trigger service which is going to come in from the trigger service and we also need that drizzle service. So the Drizzle service is going
1:15:161 hour, 15 minutes, 16 secondsto come from the database and then we have the DB/DRO.
1:15:221 hour, 15 minutes, 22 secondsThe JWT O guard is going to come from O guards and we have our JWT O guard. And
1:15:301 hour, 15 minutes, 30 secondsafter this we also need our organization row guard which will come from one level up where we have O and then guards the
1:15:381 hour, 15 minutes, 38 secondsorganization row.gard card file and then projects and organizations is going to come in from the database schema.
1:15:481 hour, 15 minutes, 48 secondsThe controller for this the path is going to look like this. So / API/ogs the organization log/ project the
1:15:571 hour, 15 minutes, 57 secondsproject log/real time. We're going to make use of the JW authentication guards as well as the organization rod.
1:16:061 hour, 16 minutes, 6 secondsLet's have the class definition. We're going to export the class the real time controller and in the constructor we're going to have the private trigger
1:16:141 hour, 16 minutes, 14 secondsservice which is going to be of type trigger service and also the private drizzle which is going to be of type drizzle service.
1:16:231 hour, 16 minutes, 23 secondsThe first function we're going to have is a private function and this is an asynchronous function to get a project.
1:16:301 hour, 16 minutes, 30 secondsSo to get a project we need the organization's log of string and the project's log of type string.
1:16:361 hour, 16 minutes, 36 secondsAnd here we can say con row is going to await this drizzle db. We want to select
1:16:441 hour, 16 minutes, 44 secondsthe id which will map to project id like this. Also the db schema which are going to map to projects db schema. And this is going to be coming in from projects.
1:16:551 hour, 16 minutes, 55 secondsWe're going to have inner join based on the organizations where equals and equals the projects.org org ID is matching the organizations ID.
1:17:061 hour, 17 minutes, 6 secondsWe're also going to have where and we're going to have equals where the organization.log
1:17:131 hour, 17 minutes, 13 secondsmatches the or log and also equals where the project log is matching the project's log. We're going to limit our
1:17:211 hour, 17 minutes, 21 secondsresults to one. And if we do this and we are not able to get a row, that means we're not able to find the project. So
1:17:281 hour, 17 minutes, 28 secondswe'll throw a new not found exception that is going to say the project not found and we can go on to return the row.
1:17:361 hour, 17 minutes, 36 secondsNow let's have our first endpoint. We're going to have this post endpoint to the table name for/ enable to enable real time. So we're going to have this async
1:17:451 hour, 17 minutes, 45 secondsenable realtime method which is going to retrieve the param making the slug from the param making use of the param decorator. We're also going to retrieve
1:17:531 hour, 17 minutes, 53 secondsthe project log making use of the param decorator and we store it in this project log variable. And now we need a table name. So again we retrieve the
1:18:011 hour, 18 minutes, 1 secondtable name making use of the pram decorator. We store it in this table name variable and it's going to be a string. Now let's get the project. We're
1:18:091 hour, 18 minutes, 9 secondsgoing to say con project is going to await get project and we're going to pass in this log and the project name.
1:18:161 hour, 18 minutes, 16 secondsThen we can enable real time by calling this trigger service. enable real time.
1:18:221 hour, 18 minutes, 22 secondsIt needs a schema. So we're going to pass a project DB schema. It needs the project ID. We're also going to pass a project ID. It needs the table name here
1:18:311 hour, 18 minutes, 31 secondsjust like this. And now we can go on to return this method with a message which is the real time is going to be enabled
1:18:381 hour, 18 minutes, 38 secondsfor the table name like this. Now let's also have delete operation to disable.
1:18:441 hour, 18 minutes, 44 secondsSo we're going to have a delete endpoint to the table name/ this table and we have the async method which will call
1:18:511 hour, 18 minutes, 51 secondsdisable real time. So we're going to get the slog which is organization log from the params. We're also going to get the
1:18:581 hour, 18 minutes, 58 secondsproject slog which will call project log from the params as well and also the table name. We're also going to have at
1:19:061 hour, 19 minutes, 6 secondsparam table name. We retrieve it to store it in table name of type string.
1:19:111 hour, 19 minutes, 11 secondsLet's get the project for which one to disable real time. We're going to say con project is going to await the this get project with takes in this log and
1:19:201 hour, 19 minutes, 20 secondsthe project log and we're going to call this trigger service.
1:19:251 hour, 19 minutes, 25 secondsSo we await this trigger service delete real time and we're going to pass in the project DB schema as well as the table
1:19:321 hour, 19 minutes, 32 secondsname. And finally we can return a message to the client. This message is going to say the real time has been disabled for this table. So we're going to dynamically have the table name here.
1:19:451 hour, 19 minutes, 45 secondsNow this is the controller. Next step is for us to also have the module. So I'm going to save the content of this file and we're going to come over here and
1:19:541 hour, 19 minutes, 54 secondsstill in the realtime folder we are going to be creating the real time.module.ts file. So I'm going to collapse this and
1:20:011 hour, 20 minutes, 1 secondin the module we're going to start by importing the module decorator. Module decorator is going to come from nestjs common. We're also going to bring in our
1:20:091 hour, 20 minutes, 9 secondsrealtime gateway. The real time gateway is going to come from one level up. The real timegateway file. We're also going to be bringing in the realtime service.
1:20:191 hour, 20 minutes, 19 secondsWe'll import realtime service which will come from one level up. And then we have the real time service file. How about the controller? Let's import the
1:20:281 hour, 20 minutes, 28 secondsrealtime controller which will come from one level up the real time.controller file.
1:20:351 hour, 20 minutes, 35 secondsThen we're going to bring in the trigger service. We import trigger service which will come from one level up and we have the trigger service file. We're also
1:20:441 hour, 20 minutes, 44 secondsgoing to import the authentication module which is going to come from O. And then we have the O doodule file.
1:20:521 hour, 20 minutes, 52 secondsThen we bring in the organization row card which is going to come from O guard and we have the organization row.cat
1:20:591 hour, 20 minutes, 59 secondsfile. Now let's have the module decorator so that we can have the imports array which is going to take in the authentication module. The providers
1:21:081 hour, 21 minutes, 8 secondsis going to take in the realtime gateway, the realtime service, the trigger service and the organization rod. So all this will be in the
1:21:171 hour, 21 minutes, 17 secondsproviders array. And finally we have the controller which is going to take in the real time controller. We can go on to
1:21:251 hour, 21 minutes, 25 secondsexport the class definition. We can export the class which we'll call real time module like this. Now the final thing we need to do is to register this
1:21:331 hour, 21 minutes, 33 secondsin our global module which is our application module. So we'll come over to our app module and over here we need to register the real time module here.
1:21:431 hour, 21 minutes, 43 secondsSo here we're going to bring in the real time module just like this which is going to be imported from the real time module file and we can go on to save the
1:21:511 hour, 21 minutes, 51 secondscontent of this file. So voila this is the API done for real time. So take a moment review the controller go on and
1:21:591 hour, 21 minutes, 59 secondsreview the enable real time which is coming from the trigger service. Go and see how we going to execute this. How we
1:22:061 hour, 22 minutes, 6 secondsgoing to declare the payload and how we going to check leader is self the condition over here based on the trigger
1:22:131 hour, 22 minutes, 13 secondsoperation. We build a we going and build the payload and how we going to call this execute over here and also how we
1:22:211 hour, 22 minutes, 21 secondscan go on to make the different listings which we also have over here in the real time gateway.ts file and how everything
1:22:291 hour, 22 minutes, 29 secondsis connected. So once you're done with this and you feel comfortable, you can then proceed over to the front end where we're going to start by creating the
1:22:371 hour, 22 minutes, 37 secondsrealtime helpers.TTS file. So this is the point where we go back to the front end of our application. So I'm just going to collapse this so we can come back here.
1:22:461 hour, 22 minutes, 46 secondsMaybe we give this a refresh. Okay, so application is not up and running. No worries. We can just close all these tabs and let's start up with the
1:22:531 hour, 22 minutes, 53 secondsrealtime helpers.ts file. So we need a new feature. So, we're going to collapse the API and we need to be in the web and over here in
1:23:021 hour, 23 minutes, 2 secondsthe yeah, I did provide a template which I will show us in a moment. But if you're curious, you can see the real time client which is this we're going to
1:23:091 hour, 23 minutes, 9 secondsuse for the front end. So, I'm going to exit out of this as we are not there yet. And in the source, we're going to we have the features. We are going to be
1:23:171 hour, 23 minutes, 17 secondscreating a new folder and this folder we're going to give it a name of real time. And in here, we're going to have our real time helpers.ts
1:23:271 hour, 23 minutes, 27 secondsTS file. So let's go. Let's have the contents of this file. We'll start by importing redirect which will come from next navigation.
1:23:361 hour, 23 minutes, 36 secondsAnd then we're going to import our API client. So the API client we know is going to come from our lib XIOS as exios
1:23:431 hour, 23 minutes, 43 secondsis our API client. And then we're going to import the retrieve token from cookie. So this also is going to come in
1:23:501 hour, 23 minutes, 50 secondsfrom the server utils. And then we also need a cookie key. So we can import the cookie keys which will come from superv
1:23:581 hour, 23 minutes, 58 secondsconstants and then we also need to bring in the type. Now the type is going to be coming in from superv for/types.
1:24:071 hour, 24 minutes, 7 secondsNow we're going to have two functions.
1:24:091 hour, 24 minutes, 9 secondsThis first one is this async function we are going to export. We're going to say retrieve project for real time. So it's
1:24:181 hour, 24 minutes, 18 secondsgoing to take in the organization log and the project log. And what is this going to return? We're going to make use of typescript promise. So the pick type
1:24:271 hour, 24 minutes, 27 secondshere which will say we're picking the ID and the anon key from the project. So we're going to have the
1:24:351 hour, 24 minutes, 35 secondstoken which we get from retrieve token from cookie so we can attach it to the header and we're going to have the actual request. So we say cons data is
1:24:441 hour, 24 minutes, 44 secondsgoing to await API client get. We're going to get back a project response and the path is /organization. So remember
1:24:521 hour, 24 minutes, 52 secondsorganization log/ project and the project slog we're going to attach the headers. So the cookie is going to be
1:24:591 hour, 24 minutes, 59 secondsthe cookie keys access token and then we're going to have the token and we can go on to return the ID and the anon key
1:25:061 hour, 25 minutes, 6 secondswhich is what this expects. So we're going to be returning the ID which is data do ID and the ankon key is going to
1:25:131 hour, 25 minutes, 13 secondsbe data anon key. If this fails we're just going to redirect user to the projects page. So we're going to redirect to /organizations/organization
1:25:221 hour, 25 minutes, 22 secondslog/ projects. Let's also have this async function which will call retrieve tables for real time. We're going to
1:25:311 hour, 25 minutes, 31 secondshave the organization log which is of type string and we're also going to have the project log and the project log here is
1:25:391 hour, 25 minutes, 39 secondsalso of type string and this is going to return a promise which is going to be a list of string like this. Now let's get
1:25:471 hour, 25 minutes, 47 secondsthe token. As always, we're going to await retrieve token from cookie.
1:25:521 hour, 25 minutes, 52 secondsAnd in the try block, we're going to have con data which is going to be equals to await. So the API client get
1:26:001 hour, 26 minuteswe get a list of string and this is going to be to the tables. So sluggs slash organizations log SL project SL
1:26:081 hour, 26 minutes, 8 secondsproject log and then slashtables and the headers object is going to have the cookie which is the cookie keys
1:26:161 hour, 26 minutes, 16 secondsassess token and then we're going to have the token. So let's go on and return data. We return data and the
1:26:241 hour, 26 minutes, 24 secondscatch block. We're just going to return an empty array. [snorts] So this is everything that we need. Now we're going to create the actual page. So I'll save
1:26:331 hour, 26 minutes, 33 secondsthis. I'll open up the terminal and you need to cd outside the API and into the web and once you're here actually not
1:26:401 hour, 26 minutes, 40 secondshere. So go to cd just to the root of the project. So super vault and here you want to run pnpm dev command. So the API
1:26:481 hour, 26 minutes, 48 secondsis going to start up and same as the front end. So we'll give this a moment for it to start up. We can already refresh this and while that loads up we
1:26:561 hour, 26 minutes, 56 secondsgoing to see the page that we need to create next. Now this page is the real time page. So if you come over here and
1:27:031 hour, 27 minutes, 3 secondsyou come into your app, you come over to the dashboard, the organizations, the organizations log, the project log, we
1:27:111 hour, 27 minutes, 11 secondsneed real time just as we have for API for the database and for SQL. I'm going to give this a refresh so that we can manually go to the page. So we see the
1:27:191 hour, 27 minutes, 19 secondserror and see how we gradually fix the error.
1:27:231 hour, 27 minutes, 23 secondsSo now we give this a moment for for it to load up. And now it loads up. We need to come over to the real time. So we're
1:27:301 hour, 27 minutes, 30 secondsgoing to click over in real time which currently is a 44 page. So let's fix that. We're going to come over here and over here where we have the project log.
1:27:391 hour, 27 minutes, 39 secondsWe need to create a new file. So we're going to create a new file and this new file we can go on to call it real time cuz that is a path that this page is on.
1:27:491 hour, 27 minutes, 49 secondsIf you check here real time like this.
1:27:521 hour, 27 minutes, 52 secondsSo once you have this you can go on to create the actual page.tsx.
1:27:561 hour, 27 minutes, 56 secondsNow this is going to get rid of this error and introduce us to a new error.
1:28:011 hour, 28 minutes, 1 secondNow let's have the content of this page.tsx. We're going to start by importing retrieve project for real time and we're also going to bring in
1:28:091 hour, 28 minutes, 9 secondsretrieve tables for real time the different run realtime helpers that we created. So this is going to come for
1:28:181 hour, 28 minutes, 18 secondsfeatures real time and the real time helpers server file. We also need to bring in the realtime client which we do
1:28:251 hour, 28 minutes, 25 secondsnot have yet. So that was the template I did show you. So this is going to come from features real time and the real
1:28:321 hour, 28 minutes, 32 secondstime client. But we can go on to already export a default async function which we can call the real time page. We're going
1:28:401 hour, 28 minutes, 40 secondsto dstructure the params and we say this is going to be of type object. We're going to get from from the params. It's
1:28:481 hour, 28 minutes, 48 secondsgoing to be a promise that is going to resolve to this log and also the project log. Both are of type string. So let's make a request first. Let's get this log
1:28:571 hour, 28 minutes, 57 secondsand the project from the params. And we're going to then make a request with this log and the project log. So to get the projects and the tables, we're going
1:29:051 hour, 29 minutes, 5 secondsto run promise.all which is going to call the retrieve projects for real time. And retrieve project for real time
1:29:121 hour, 29 minutes, 12 secondsis going to take in the log and the project log.
1:29:161 hour, 29 minutes, 16 secondsWe also have retrieve tables for real time which is going to take in the slog and the project log. And finally we can go on to have our return. So we're going to be returning the realtime client.
1:29:271 hour, 29 minutes, 27 secondsThis realtime client needs the props. The props such as the organization log.
1:29:321 hour, 29 minutes, 32 secondsIt also needs the project log which is going to be the project log. It also needs the project ID which is equals to the project ID. And it's also going to
1:29:411 hour, 29 minutes, 41 secondsneed the anon key. The anon key is going to be equals to the project anon key.
1:29:461 hour, 29 minutes, 46 secondsAnd finally we can have the table here just like this.
1:29:511 hour, 29 minutes, 51 secondsAll right. So now with this done we can go on to save the content of this file and we just need to bring in real time.
1:29:571 hour, 29 minutes, 57 secondsSo I'll save this just like this and we can then come over here and where we have the template we can just copy this
1:30:061 hour, 30 minutes, 6 secondstemplate to the real time client. So you can copy this and you just need to paste it right in here in the features real
1:30:131 hour, 30 minutes, 13 secondstime. You can just paste this in here like this. And that should get rid of the error that we have over here. And we can go on to test it. Now we do not have
1:30:221 hour, 30 minutes, 22 secondsthe switch component. So let's install it. That's the error we have now. So what's going to happen? I would open up a new terminal window. So I can cd into
1:30:301 hour, 30 minutes, 30 secondsapps and into API. And the command is pmppm dlx. And then we could say shad cn
1:30:371 hour, 30 minutes, 37 secondsui or shad cn at latest like this. And then we can say add switch like this. And you send this. This is
1:30:461 hour, 30 minutes, 46 secondsgoing to add the switch into our components UI folder just as we are trying to look for it here. And once this gets added, we are no longer going
1:30:541 hour, 30 minutes, 54 secondsto have the error here. So we'll give this a moment. But in the meantime, we can go on to see like we have the different colors. We also see that we
1:31:021 hour, 31 minutes, 2 secondsare getting the real time socket URL which is coming from our API URL. So ensure you have this here. And then you
1:31:091 hour, 31 minutes, 9 secondssee over here we are removing this because this is not under API. Something you should have in mind this is not under API this if you check the back
1:31:171 hour, 31 minutes, 17 secondsend. So if you see the API and you see the source if you come over to the main.ts you see we added this. So this is not making use of the global prefix.
1:31:261 hour, 31 minutes, 26 secondsSo this is not listening on that API. I must have said that in the past and that was a mismatch on my end. And you can see you need to create a component JSON
1:31:351 hour, 31 minutes, 35 secondsto add the components proceed. Yeah. So I'm going to not proceed because we run this in the API. So sorry about that.
1:31:411 hour, 31 minutes, 41 secondsMaybe you noticed. I'm going to cd outside the API and into the web and then I'm going to run the command over
1:31:481 hour, 31 minutes, 48 secondsthere. So you can see this is just here standalone and that's why we are stripping out the API making use of this
1:31:571 hour, 31 minutes, 57 secondsreplace function here. All right. So this is something you should have in mind. You should always know how your code is working at every point in time.
1:32:051 hour, 32 minutes, 5 secondsSo I'm going to go and remove this terminal. And we can see that the page has finally compiled over here, which is cool. Now we already get an error that
1:32:131 hour, 32 minutes, 13 secondswe are missing an API key. So if we come over to the realtime client on line 71 over here, which is this line, we are
1:32:211 hour, 32 minutes, 21 secondsmissing the real time key and that's why we have this real time error over here.
1:32:261 hour, 32 minutes, 26 secondsOkay, so let's fix this. Let's see why we do have this error. Now this error is coming from one place and that error is
1:32:331 hour, 32 minutes, 33 secondscoming from the helpers. So if we come over to the page I'm just going to bring this and bring it back in. So if we do
1:32:411 hour, 32 minutes, 41 secondscheck here where we have the project. So let's log the project to the console so that we see what we have. So console.log
1:32:481 hour, 32 minutes, 48 secondsproject. You don't have to do this. I'm just going to show you. I already know the fix. And now we save this. So you're going to see over here in console.log is
1:32:571 hour, 32 minutes, 57 secondsactually nested. So we give this a moment for it to compile and we see we get undefined undefined like this and
1:33:031 hour, 33 minutes, 3 secondsthat's why we have the error. Now let's come here which is retrieve project for real time over here. If you log data to
1:33:111 hour, 33 minutes, 11 secondsthe console you're going to see how data looks like. That's why I say it's always good to log to the console. It's always good to take a moment to understand the
1:33:191 hour, 33 minutes, 19 secondscode before you continue so you understand how everything works. So I'm going to log data to the console here like this and give this a save. You're going to see what data looks like.
1:33:301 hour, 33 minutes, 30 secondsSo you see that we needed to do data dot you can see over here data and you can see it's under project. So we're saying return data do ID but it's under data.
1:33:411 hour, 33 minutes, 41 secondsproject id. So this is meant to be data.
1:33:451 hour, 33 minutes, 45 secondsproject like this do ID and now our type has an error that's why we have this error. And also the anon key is meant to be here.
1:33:561 hour, 33 minutes, 56 secondsSo data.proton key. So let's do that. We're going to say data. projects do anonon key like
1:34:041 hour, 34 minutes, 4 secondsthis. And now rather than make use of this project type, we are going to make use of the project by slug response which is going to come from spot types.
1:34:131 hour, 34 minutes, 13 secondsSo here let's have projects by slug response. Project by slug response which is going to come
1:34:211 hour, 34 minutes, 21 secondsfrom spot types. And if you visit this type, you're going to see over here we're expecting projects to be a list of project the organization and
1:34:301 hour, 34 minutes, 30 secondsorganization members which is what we are actually getting here. So we get the projects, we get the organizations and we get the organization members. So we
1:34:391 hour, 34 minutes, 39 secondscan come here and once we give this a save, we are no longer going to have the error and we're going to see our application is going to compile successfully. So it compiles and if we
1:34:481 hour, 34 minutes, 48 secondsgive this a refresh, you can see here everything is working. Now you see the project here and the connection has been established.
1:34:561 hour, 34 minutes, 56 secondsBefore we continue, I'm going to just get rid of this logs that we have over here. So I will get rid of this and give this a save. And I would also come over here to the page where we have this log.
1:35:071 hour, 35 minutes, 7 secondsI would also get rid of this. So where we don't have a clustered terminal window here. So let's go on and enable real time so that we can test this out.
1:35:171 hour, 35 minutes, 17 secondsWe're going to put this side by side.
1:35:191 hour, 35 minutes, 19 secondsYou can see it's also responsive. So it's working fine. And let's also shrink it and see. So we shrink and we see that
1:35:261 hour, 35 minutes, 26 secondsthe application is responsive. Okay. So now we're going to test out the real time. And for that I did place the two browsers side by side. So over here we
1:35:341 hour, 35 minutes, 34 secondshave one browser and over here we have one browser. And we're going to test the real time connection so that we can start seeing the events appear here in
1:35:441 hour, 35 minutes, 44 secondsreal time. So how can we start? So we can start by I'm just going to toggle this event over here so that it goes on
1:35:511 hour, 35 minutes, 51 secondsand it looks like it's taking a while and yeah so we have an error here and the error is the neon error that
1:35:591 hour, 35 minutes, 59 secondscannot insert multiple commands into a prepared statement and this error is coming yeah it's a neon error and it's coming from our
1:36:071 hour, 36 minutes, 7 secondstrigger service. So let's come over to the trigger service here. So this line over here line 72 here. All right. So,
1:36:151 hour, 36 minutes, 15 secondswe're going to split this into multiple um executions and then we're going to delete this. So, I'm just going to comment this out. So, we can see the
1:36:241 hour, 36 minutes, 24 secondsfinal one is just going to be this and also it's going to be this trigger here.
1:36:291 hour, 36 minutes, 29 secondsSo, let's bring them in. Let's have these two. So, we're going to await this drizzle just as we have here.
1:36:351 hour, 36 minutes, 35 secondsDB.execute. And this is just going to be executing this drop trigger if exist where we have the table name underscore
1:36:431 hour, 36 minutes, 43 secondsrealtime_t trigger on the specific database schema dot table name like this. And then we're going to have the next one which is this here over here.
1:36:551 hour, 36 minutes, 55 secondsSo we're going to await the same this.db.execute execute and we're going to be executing this where we create the trigger or
1:37:041 hour, 37 minutes, 4 secondsupdate or yeah the table name here before we have the after insert. So before we have the uh operation which is
1:37:121 hour, 37 minutes, 12 secondsafter insert or update or delete and this is going to be on the DB schema dot the table name which is going to run for
1:37:221 hour, 37 minutes, 22 secondseach row and then we're going to execute the function and the function just as we have here the DB schema dot the function
1:37:301 hour, 37 minutes, 30 secondsname. So let's go on and close this. I'm just going to close this here and I'm also going to close this just like this
1:37:371 hour, 37 minutes, 37 secondsand give this a save. Now we have saved this. We're going to wait for the application to compile to be sure we do not have any errors and we do not have any errors here. So let's try again.
1:37:481 hour, 37 minutes, 48 secondsWe're going to come back here and I'm just going to toggle users so that we can listen to realtime events on the users table. So we get this a moment and
1:37:571 hour, 37 minutes, 57 secondsnow it's listening. All right. So this is working as expected and we see over here we do not get any errors. So let's
1:38:041 hour, 38 minutes, 4 secondstry because we are listening here. As you can see it's listening for changes.
1:38:081 hour, 38 minutes, 8 secondsWe are going to come over here. Let's create an insert um event. So first let's check our database. I should have another user
1:38:161 hour, 38 minutes, 16 secondshere because I did test this earlier. So I should have another user here. If I quickly check my users database, we
1:38:241 hour, 38 minutes, 24 secondsshould see a record here. So I'm just going to expand this. And here we're going to see. Yeah. So this list user
1:38:311 hour, 38 minutes, 31 secondsexample.com. Now I'm going to come over to the SQL and let's try another one.
1:38:371 hour, 38 minutes, 37 secondsOkay. So I'm going to come over to the history. Remember this is going to work for insert, for update or for delete.
1:38:451 hour, 38 minutes, 45 secondsNow let's come over here and let's do another delete. So I'm going to delete this so that I can delete the user over
1:38:521 hour, 38 minutes, 52 secondshere with this email. And once I run this, we should see this over here.
1:38:571 hour, 38 minutes, 57 secondsSince this is listening, we should get it here. So here we get the result and we should see the event being sent here
1:39:041 hour, 39 minutes, 4 secondsbecause this is listening for insert, update or delete on the users table. Now this was successful but we do not see
1:39:131 hour, 39 minutes, 13 secondsthe event listed here. So let's double check our our application. Now we double check and we actually do have an error.
1:39:211 hour, 39 minutes, 21 secondsI think this error we're having over here is a neon something. So neon went on. As we can see here, our connection is not longer established. So I'm just
1:39:291 hour, 39 minutes, 29 secondsgoing to quit this. So what we're going to do, we're going to do things a little bit differently so that we can see some changes. So we're going to be installing
1:39:381 hour, 39 minutes, 38 secondsWS. So what we're going to do from the root here or maybe you see the into the API folder. You can say PNPM add WS. And
1:39:461 hour, 39 minutes, 46 secondsfor us to target the API folder, we say D-filter API like this. Now we'll give this a moment for the installation to complete.
1:39:551 hour, 39 minutes, 55 secondsAnd once the installation completes, we're also going to install the types for websocket.
1:40:021 hour, 40 minutes, 2 secondsNow what we're going to do um to change this. Okay, so it's done. We're also going to say pmppm add let's say dashd as a development dependency.
1:40:111 hour, 40 minutes, 11 secondsWe're going to say at types for/ws like this. So this is what you want to install. And
1:40:191 hour, 40 minutes, 19 secondsdo not forget it that filter flag. So now we have installed this. The next step for us is to go on and have the
1:40:261 hour, 40 minutes, 26 secondsreal time socket connection making use of neon config. So we're going to come right here
1:40:341 hour, 40 minutes, 34 secondsand [snorts] this is not going to be in the trigger service. So let's come over here and let's come over to the real time service
1:40:421 hour, 40 minutes, 42 secondsfile. So over here in real time service let's come to the top where we have the client that comes from PG. This is going
1:40:491 hour, 40 minutes, 49 secondsto change. Now we're going to make use of neon database serverless. So we're going to bring this from at neon database serverless. So we are going to
1:40:581 hour, 40 minutes, 58 secondsget our client and we are also going to bring in the neon config. So now we have the client and the neon config. Just
1:41:061 hour, 41 minutes, 6 secondsbefore here we want to call the neon config. So to we call neon config like this. So neon config and then we're
1:41:121 hour, 41 minutes, 12 secondsgoing to say web soocket connection or uh websocket constructor and this is going to be equal to websocket like this.
1:41:231 hour, 41 minutes, 23 secondsNow, this is what we need to get started and we're going to do a minor change.
1:41:271 hour, 41 minutes, 27 secondsWe're going to do a minor change here so that it can work as expected. What we're going to do, I'm just going to clean this up so that we are going to bring
1:41:361 hour, 41 minutes, 36 secondsthis in because neon listing notifier is going to require a direct um connection to websocket. So, it's pretty much the
1:41:441 hour, 41 minutes, 44 secondssame. This private get listing connection string.
1:41:491 hour, 41 minutes, 49 secondsWe're going to get a real time string making use of our config service. So we say this doconfig service get we get the
1:41:581 hour, 41 minutes, 58 secondsstring. So the real time database URL and we're also going to get database. So the database URL is also going to come
1:42:061 hour, 42 minutes, 6 secondsfrom this config service.get we're expecting a string and we get the database URLs just so that we can clean
1:42:131 hour, 42 minutes, 13 secondsthis up and return the clean string. So to clean it up, we're going to first have the URL. We have the real time or
1:42:201 hour, 42 minutes, 20 secondswe fall back to database. And if for some reason we do not find the URL, they want to throw an error because we really need the database URL to be configured.
1:42:291 hour, 42 minutes, 29 secondsSo we really need this to be in the env.
1:42:321 hour, 42 minutes, 32 secondsNow we can go on and clean it by calling replace so that we replace any hyphen puller that we have to an empty string.
1:42:391 hour, 42 minutes, 39 secondsWe also trim it. And then in the clean mode, we also want to remove any SSL mode or any channel binding. So you
1:42:461 hour, 42 minutes, 46 secondsmight have this when you copied the URL from neon. So we want to make sure we remove all of these. And we're also going to clean again by replacing this
1:42:551 hour, 42 minutes, 55 secondshere. So any parameter we have here like this with an empty string. All right.
1:43:001 hour, 43 minutesAnd then we can go on to return the clean string which is of type string.
1:43:051 hour, 43 minutes, 5 secondsThis is all the change we need to do for this to work. We're going to give this a save. open up your terminal just to be sure that everything is up and running.
1:43:131 hour, 43 minutes, 13 secondsSo in this case, you want to run pnpm dev just to make sure your your API and also your front end application is both
1:43:221 hour, 43 minutes, 22 secondsup and running. And once you confirm they up and running, you just come over to the browser and you just want to refresh this and you also want to
1:43:311 hour, 43 minutes, 31 secondsrefresh this so that we can give this another try. Now if you get the error, you can just refresh and that's because the front end get started before the
1:43:381 hour, 43 minutes, 38 secondsAPI. So this gives us some errors because the API is not ready at that point.
1:43:441 hour, 43 minutes, 44 secondsNow if you double check your API is ready and you can already start seeing logs. That means we are ready to try this out again. So we're going to try
1:43:521 hour, 43 minutes, 52 secondsthis out. I'm just going to quickly toggle this on so that we can establish the connection. We wait for a moment.
1:43:581 hour, 43 minutes, 58 secondsYeah, the toggle is a bit laggy or it doesn't give you instant feedback. But yeah, we are on development. I'm sure production is going to look a little bit
1:44:061 hour, 44 minutes, 6 secondsmore faster. Now we're listening for changes and if we come over here we do not see any errors which is a good sign.
1:44:131 hour, 44 minutes, 13 secondsNow we're going to try to list all the users that we have over here. So I'm going to run this so that we can see the users. So these are the users that I
1:44:211 hour, 44 minutes, 21 secondshave. This user and this code with Larry user. Now you see this is working for only insert update or delete. So let's
1:44:281 hour, 44 minutes, 28 secondsgo on and try to insert a new user. I'm going to come over to my history and I have loads of history here because I've been trying it out. But then I'll try to
1:44:371 hour, 44 minutes, 37 secondsadd a new user to the Alice user with an email of 222 this time around because we already have
1:44:451 hour, 44 minutes, 45 secondsAlice here. So I'm just going to leave it actually at 22. And once we run this, we want to see the real time being
1:44:511 hour, 44 minutes, 51 secondstriggered over here. So we give this and yeah, so I ran the delete operation when we do not have any user. So zero was
1:44:591 hour, 44 minutes, 59 secondsaffected. That's why we do not see anything. And if we come over here, we still do not get any errors, which is a good sign. So let's try to insert and
1:45:071 hour, 45 minutes, 7 secondsnot delete. So I'm going to insert this Alice user 22. I'm going to hit on run.
1:45:121 hour, 45 minutes, 12 secondsAnd now this time around I promise you should see it displayed here. And we do.
1:45:181 hour, 45 minutes, 18 secondsSo this is working as expected. And if you come over to your brow to your terminal, you still do not see any logs.
1:45:241 hour, 45 minutes, 24 secondsSo this is working as intended. Now we can give this another trial. If we try to fetch the user, we are not going to
1:45:311 hour, 45 minutes, 31 secondssee anything because it doesn't listen for fetch operations.
1:45:361 hour, 45 minutes, 36 secondsNow let's try to delete the user. This is the user that we created at this 22.
1:45:411 hour, 45 minutes, 41 secondsI'm going to come over here to delete the user and I would run this. Now we should see this over here in the event feed. So this is working as expected. So
1:45:511 hour, 45 minutes, 51 secondswe see the delete and now we see the new user that has been inserted here. All right. So now we are sure that this is working as expected. We can close up on
Chapter 3: 11-file-storage
1:46:001 hour, 46 minutesthis chapter and move over to the next stage of building our own version of superb base. Okay everyone, welcome
1:46:071 hour, 46 minutes, 7 secondsback. So last time out we achieved real time um on our project. So I'm just going to quit this. As you can see um
1:46:151 hour, 46 minutes, 15 secondsconnection has been disconnected or but 3000 is already in use. So I'm just going to quit this because we're going to need to install some packages in the
1:46:241 hour, 46 minutes, 24 secondsAPI and also in the web. So we need to upload or make use of upload theme. Now you might say hey the idea here is we
1:46:321 hour, 46 minutes, 32 secondsare going to use upload theme as the underlining storage provider but from the user perspective they are working with super volt storage and that's how
1:46:411 hour, 46 minutes, 41 secondsyou have with superbase. uh most of these um industries or most of these providers such as superbase do make use
1:46:501 hour, 46 minutes, 50 secondsof AWS S3 buckets or cloudflare um arutu if that's what it's called for storage
1:46:561 hour, 46 minutes, 56 secondsover there. So in our case and so that we are not battling with payment and everybody can follow in this course we are going to make use of upload thing
1:47:051 hour, 47 minutes, 5 secondsbut then for you in your project you can actually swap this out with anything that you want to swap it out with. We are just making use of upload theme
1:47:131 hour, 47 minutes, 13 secondshere. Any storage choice is going to work. Okay. So, every project automatically is going to have their own storage name space and users can go on
1:47:221 hour, 47 minutes, 22 secondsto create buckets either private or public buckets and they also go on to upload files and they get back a URL.
1:47:281 hour, 47 minutes, 28 secondsThey can delete the files also from the dashboard. So, by the end of this um video we're going to have the storage buckets and also um storage bucket
1:47:381 hour, 47 minutes, 38 secondstables in Drizzle. We're also going to have upload thing where into NestJS making use of the express adapter create
1:47:461 hour, 47 minutes, 46 secondsbucket list bucket delete bucket upload files to a bucket list the files that in a bucket signed URL for private files via upload thing API and the whole lot.
1:47:581 hour, 47 minutes, 58 secondsSo let's get into it already. You can come over to upload thing sign up sign in if you have an account already. Okay, I need to sign in with GitHub. I'm going
1:48:061 hour, 48 minutes, 6 secondsto switch my browser for a moment with the account where I do have my GitHub.
1:48:101 hour, 48 minutes, 10 secondsSo, I'll see you shortly. Okay. So, here we are. As you can see, I'm already authenticated and this is um my upload
1:48:181 hour, 48 minutes, 18 secondsthing. So, do go on and sign up or sign in. They have this team switcher over here, but I'll just leave it out on the dark team. I have couple of projects that I've been working on um on YouTube.
1:48:281 hour, 48 minutes, 28 secondsSo, let's get into it. We're going to need to come back to the application and let's start by installing upload things.
1:48:341 hour, 48 minutes, 34 secondsWe're going to see into the apps and into the API and over here you want to say pmppm add upload thing like this. So
1:48:421 hour, 48 minutes, 42 secondsyou want to upload this in the API and okay so I'm also going to quit this and I'm also going to open up another
1:48:491 hour, 48 minutes, 49 secondsterminal window so I can see the outside the API and into the web and here want to upload PMP add PNPM add
1:49:001 hour, 49 minutesupload thing and also at upload thing - react oops hyphen react. So let
1:49:091 hour, 49 minutes, 9 secondsme close this actually so we can see it in full line react like this.
1:49:161 hour, 49 minutes, 16 secondsNow let's make a change. This change is going to be in the env of the API. So we'll come over here and over here we
1:49:231 hour, 49 minutes, 23 secondsare going to be adding uh a new API package. So this is not really a new API package a new environment variable.
1:49:321 hour, 49 minutes, 32 secondsSo I would leave the comment here and this is for upload thing.
1:49:371 hour, 49 minutes, 37 secondsSo here we're going to have our upload thing token. So let's save this and try to fetch this from upload thing. So
1:49:441 hour, 49 minutes, 44 secondswe're going to come over to upload thing. And over here in upload thing you can create a new application. And we can give this a name which I'll go with the
1:49:521 hour, 49 minutes, 52 secondsname of super volt. And here we have 2 GB of storage for free which is very much okay for testing purpose. And yeah so we can go on to create application.
1:50:031 hour, 50 minutes, 3 secondsOnce we have application created, if you come over to API keys and over here, this is your upload thing token. So you just want to copy this here. You can
1:50:121 hour, 50 minutes, 12 secondsjust hit on copy and you can come back and replace everything that we have here with the upload thing token. Then you
1:50:191 hour, 50 minutes, 19 secondscan give this a save. Now with this saved, the next step is for us to create or update our shared types. And then we're going to also maybe upload um
1:50:281 hour, 50 minutes, 28 secondsupdate the constants. We create the service. We create the controller. the module just our standard practice and
1:50:351 hour, 50 minutes, 35 secondsthen we can go from there. Now let's go on and update our types. So I'm going to collapse the terminal and I would come
1:50:421 hour, 50 minutes, 42 secondsover to our packages and the types in the source and in the index.ts.
1:50:481 hour, 50 minutes, 48 secondsSo here we're going to have a new type which is going to be for storage like this. And we can already import we can already start with the definition.
1:50:591 hour, 50 minutes, 59 secondsWe're going to export the type and this type we're going to call it bucket assets. So it could be public or private. We also going to have an
1:51:081 hour, 51 minutes, 8 secondsinterface for the storage bucket which is going to make use of this assess. So the bucket will have an ID, a project ID
1:51:151 hour, 51 minutes, 15 secondsthat is associated with this bucket, the name of the bucket. We are then going to have the assess type which is this bucket assess and when the bucket was
1:51:241 hour, 51 minutes, 24 secondscreated which is the created at. Then we're going to have this interface which is a storage object. The storage object
1:51:321 hour, 51 minutes, 32 secondsinterface is going to have the ID of type string.
1:51:361 hour, 51 minutes, 36 secondsAlso the bucket ID of type string. We're going to have the name of type string and the size which is of type number.
1:51:441 hour, 51 minutes, 44 secondsThe m type is also of type string and the UT key which is the upload theme key. Now I have I'm going to leave this comment here because this key is going
1:51:521 hour, 51 minutes, 52 secondsto be used to delete or to get a signed URL. Then we have the actual bucket URL or the object URL and this is the public
1:52:011 hour, 52 minutes, 1 secondURL that users will be able to see and see the actual um bucket or maybe the empty string if it's private.
1:52:101 hour, 52 minutes, 10 secondsThen we have the created app and lastly we have this interface which we call the create bucket input. So whenever you're
1:52:161 hour, 52 minutes, 16 secondscreating a bucket you need to um provide the name as well as the access.
1:52:231 hour, 52 minutes, 23 secondsAll right. So now that we have this, the next step for us is for us to create the schema. So we can save this and we're
1:52:301 hour, 52 minutes, 30 secondsgoing to come over here and over to the apps to the API and to the I think is in drizzle. Nope. If we check the source
1:52:381 hour, 52 minutes, 38 secondsthe DB the schema we are going to be creating a new schema here. So let's create a new file and this is the storage
1:52:471 hour, 52 minutes, 47 secondsobject object like this TS file. Now this
1:52:531 hour, 52 minutes, 53 secondsstorage object.ts is going to make use or is our own um schema for how the
1:53:001 hour, 53 minutesstorage object would look like. So let's start by importing um pg enum also pg table the time the
1:53:091 hour, 53 minutes, 9 secondstime stamp and yu ID which will come from drizzg.
1:53:141 hour, 53 minutes, 14 secondsWe also going to import our project because we need it here for the foreign key relationship is going to come from one level up project. Now we can have
1:53:221 hour, 53 minutes, 22 secondsthe bucket access enom and this bucket assess enom is going to be the pg enum for the bucket assess which could be
1:53:291 hour, 53 minutes, 29 secondspublic or private [snorts] and finally we are going to export the con the storage up bucket
1:53:381 hour, 53 minutes, 38 secondswhich is going to pit table. So we give it a name of storage buckets and these are the columns. So it's going to have
1:53:441 hour, 53 minutes, 44 secondsan ID which is of type UID default random and primary key. We're also going to have the project ID which is of type
1:53:531 hour, 53 minutes, 53 secondsEU ID like this. And then we're going to also say is not null and it's going to be referencing the project ID like this.
1:54:021 hour, 54 minutes, 2 secondsSo that's the foreign key relationship that I told you about.
1:54:061 hour, 54 minutes, 6 secondsAll right. And then we have on delete cascade. It's also going to have the name. The name is of type text and not null. The asset snap is going to make
1:54:151 hour, 54 minutes, 15 secondsuse of this enum that we defined and we're going to say is not null. And by default all is going to be public.
1:54:231 hour, 54 minutes, 23 secondsThen we have the created that which is of type timestamps is not null and it's going to be default date time. Now then
1:54:311 hour, 54 minutes, 31 secondswe can export the type of storage bucket and this is going to be a type of the storage bucket. Infer select. We're
1:54:381 hour, 54 minutes, 38 secondsgoing to make use of this type whenever we are selecting the bucket or when we are creating a new storage bucket. We're going to make use of this type of the
1:54:461 hour, 54 minutes, 46 secondsstorage bucket. fair insert. Now that we have this, the next step for us is to go on and create the storage bucket schema.
1:54:541 hour, 54 minutes, 54 secondsNow we're going to come here and we're going to create a new file and this is going to be the storage bucket.
1:55:031 hour, 55 minutes, 3 secondsTS file like this. Now something you should have in mind in the index here you see we have the storage bucket and
1:55:101 hour, 55 minutes, 10 secondshere we have the storage object. Now let's create the storage bucket um schema. Here we're going to be importing
1:55:171 hour, 55 minutes, 17 secondsinteger. We're also going to import pg table. We are going to need to import text the timestamp and u ID which is going to come from drizzle or rpg core.
1:55:291 hour, 55 minutes, 29 secondsWe're also going to import the storage buckets and storage buckets will come from one level up where we have the storage hyphen buckets like this. We can
1:55:381 hour, 55 minutes, 38 secondsgo on to export the constant storage object is going to be equal to pg table.
1:55:441 hour, 55 minutes, 44 secondsThe name of the table is storage object and the different tables are the ID of type U ID default random and primary key.
1:55:531 hour, 55 minutes, 53 secondsWe also have the bucket ID which is of type EU ID bucket ID is not going to be null and this is going to be referencing
1:56:021 hour, 56 minutes, 2 secondsthe storage bucket that we created. So it needs the bucket id. So we say storage buckets id and on delete we call cascade.
1:56:111 hour, 56 minutes, 11 secondsThen for the name, the name is going to be a text and is not going to be null.
1:56:161 hour, 56 minutes, 16 secondsThe size also is going to be of type integer. And then we have size here and is not null. Then we have the mime type
1:56:231 hour, 56 minutes, 23 secondswhich is of type text and not null. We also have the UT key which is the upload thing key which is of type text. We pass
1:56:311 hour, 56 minutes, 31 secondsUT key and not null. So this is the key that we're going to use for the signed URL or for delete. Now the URL here is
1:56:391 hour, 56 minutes, 39 secondsof type text is not null and a default empty string. Now this is the public URL which is going to be set for public bucket.
1:56:471 hour, 56 minutes, 47 secondsAnd finally we have the created art and we can go on to export the type for the storage bucket which is going to be the
1:56:541 hour, 56 minutes, 54 secondstype of the storage object.infair select and then the new storage bucket which is going to be the type of the storage bucket.infair infair insert.
1:57:071 hour, 57 minutes, 7 secondsOkay, so let's go on and give this file a save and then we can proceed. I'm just going to save this file here. And why do we have this error storage bucket? So we
1:57:161 hour, 57 minutes, 16 secondshave some name clashes. So if we come over here, this object that we have here as we can see is the storage bucket. So we need to rename this. Sorry about
1:57:241 hour, 57 minutes, 24 secondsthat. We need to call this storage bucket.ts like this. And now this over here that
1:57:321 hour, 57 minutes, 32 secondswe named the storage bucket we can see this is the storage object. So we just need to rename this to be storage object
1:57:391 hour, 57 minutes, 39 secondslike this. So now once we fix the naming clash that we had we can see that everything is now okay and we are good
1:57:461 hour, 57 minutes, 46 secondsto continue. So the next step for us is to come over to the index.ts file that we have in our
1:57:541 hour, 57 minutes, 54 secondsschema. And here we have the index so that we can go on to export the new types that we have or the new schema. So
1:58:011 hour, 58 minutes, 1 secondI'm going to bring this down two more times and this is going to come from storage like this. So the storage bucket and this is going to be the storage
1:58:101 hour, 58 minutes, 10 secondsobject and we can go on to give this file a save. Now as always we need to run the migration. So I'm going to clear the
1:58:191 hour, 58 minutes, 19 secondsterminal and cd into the apps and into the API. And here we need to say pmppm pnpm db column generate like this. This
1:58:291 hour, 58 minutes, 29 secondsis going to update the drizzle folder that we have here. And you can see here this is stored inside here with this file name o3 the public terror sql which
1:58:381 hour, 58 minutes, 38 secondsyou're going to see over here. Now we're going to apply the migration to our database. We're going to do that by saying pmppm db migrate like this. And
1:58:481 hour, 58 minutes, 48 secondsonce the migration has been fully applied, which currently it is applying.
1:58:521 hour, 58 minutes, 52 secondsIf you come over to your neon database, you're going to see the two types over there. So let's come over to neon and hoping that it has already finished by
1:59:011 hour, 59 minutes, 1 secondthe time we hit on the tables. And over here we can then see that we're going to have the two new tables for the storage object. So we see over here we now have
1:59:101 hour, 59 minutes, 10 secondsour storage buckets and we also have our storage objects which have the different columns that we specified.
1:59:181 hour, 59 minutes, 18 secondsCool. Now the next step for us is for us to work on upload thin router. So in case you're curious, you can always come
1:59:251 hour, 59 minutes, 25 secondsover here and you should see a link to the docs here and you're going to see how you can set things up for the backend adapters. If you look for the
1:59:341 hour, 59 minutes, 34 secondsexpress guide, we are going to make use of the express adapter. So you can see this is how the connection is going to
1:59:401 hour, 59 minutes, 40 secondswork. Now no worries uh that's why you're taking the course. We're going to see how we can set things up ourselves and I'm going to see you in the next
1:59:481 hour, 59 minutes, 48 secondsvideo where we are going to be working on upload file router. Now let's work on upload file router.
1:59:571 hour, 59 minutes, 57 secondsIt's actually as straightforward as maybe it doesn't seem. So going to close all this here and over here in our API.
2:00:052 hours, 5 secondsSo in the source we are going to need a new folder. So we're going to need a new folder for storage feature. And here we're going to start with upload
2:00:142 hours, 14 secondsthing.ts file. So upload thing TS file. Now let's start this. We're going to start by importing the create
2:00:232 hours, 23 secondsupload thing. We're also going to bring in the type of file router which will come from at upload thing for/express.
2:00:322 hours, 32 secondsThen we create a file by having this f which is going to be equals to create upload thing. So the file uploader and we're going to have the storage handler
2:00:412 hours, 41 secondswhich I'll explain in a moment. And in here we're going to have this bucket uploader and this is going to be equal to f that we initialized up and the blob
2:00:502 hours, 50 secondsis going to have a maximum file size of 512 mgaby and also a maximum file count of 10. Then we're going to chain on upload complete where we get the data.
2:01:012 hours, 1 minute, 1 secondThis data is a no operation for us. So we can we can just go on to log it to the console where we say console.log
2:01:082 hours, 1 minute, 8 secondsupload thing upload complete and data.file.name.
2:01:122 hours, 1 minute, 12 secondsAnd we're also going to say that this is going to satisfy the file router.
2:01:182 hours, 1 minute, 18 secondsThen we can export the type our storage router which is going to be equals to the type of storage router like this.
2:01:262 hours, 1 minute, 26 secondsNow I'm going to go and save this file.
2:01:272 hours, 1 minute, 27 secondsAnd why do we have this error here? Now if we inspect the error here is the inf type of the storage router cannot be named the data reference to JSON and
2:01:372 hours, 1 minute, 37 secondsthis is pointing to pmppm uploading shared for this version. Okay and this is likely not portable a type annotation is necessary just like this. All right.
2:01:482 hours, 1 minute, 48 secondsSo, we're going to try to fix this here.
2:01:502 hours, 1 minute, 50 secondsAnd if you see here, it's trying to say con storage router. It should be of this type like this where we have the bucket
2:01:572 hours, 1 minute, 57 secondsuploader. And so, it actually shows us like this. Now, let's try this and see if this works. And if it doesn't work,
2:02:042 hours, 2 minutes, 4 secondsthen we can change this ourself. So, I'm just going to say this is going to be of this type like this. Does it work? And
2:02:112 hours, 2 minutes, 11 secondslet's bring in fire router. Fire router is going to come in from uploading for/types.
2:02:162 hours, 2 minutes, 16 secondsFire route. Sorry. And then JSON, where do we bring JSON from? JSON is going to come in from um it's an object. So what
2:02:262 hours, 2 minutes, 26 secondswe can say is just like a JSON like this. Now maybe we say any maybe we say any. Let's see. Okay. So this works. So
2:02:352 hours, 2 minutes, 35 secondswe can go and give this a save. Now we have saved this and we have fixed the error.
2:02:402 hours, 2 minutes, 40 secondsThe [snorts] next step for us now is to create the upload thing service. Now I know that this doesn't look pretty but you know sometimes the documentation
2:02:492 hours, 2 minutes, 49 secondsjust needs some properties just for to have TypeScript compatibility. So we just have to work with what the documentation says especially when we
2:02:572 hours, 2 minutes, 57 secondsgot the TS hint just like this on how we can go on to fix this. So now we're going to take a moment and when we return our focus is going to be on creating the storage service.ts file.
2:03:092 hours, 3 minutes, 9 secondsLast time out we created this upload thing storage router and now we're going to focus on creating the service. So I'm
2:03:172 hours, 3 minutes, 17 secondsgoing to exit out of this and still inside storage we need a new file and this file is going to be the storage service.ts file.
2:03:272 hours, 3 minutes, 27 secondsI'm going to collapse this and we can already start by importing the bad request exception which is going to come from NestJS common. We're also going to
2:03:352 hours, 3 minutes, 35 secondsbe importing injectable and the not found exception. All of these will come in from at nestjs for/common.
2:03:442 hours, 3 minutes, 44 secondsWe also need to bring on the checkers like and and equals which will come from drizzle-m
2:03:522 hours, 3 minutes, 52 secondsand then we're going to bring in the upload thing api which will come from upload thing for/s server.
2:04:002 hours, 4 minutesThen let's import drizzle service which will come from the database and we have the drizzle service.
2:04:072 hours, 4 minutes, 7 secondsWe can also import projects, organizations, storage buckets as well as a storage object which we are going to be bringing in from our DB schema.
2:04:212 hours, 4 minutes, 21 secondsNow let's bring in the type the type of bucket assess. This bucket assess type is going to come from at superv for/types.
2:04:302 hours, 4 minutes, 30 secondsWe're going to mark the class as injectable and we can export the class storage service and this is going to be
2:04:372 hours, 4 minutes, 37 secondsjust like this. So in here we can have the UT which is uploading API which is a new instance of uploading API and you
2:04:452 hours, 4 minutes, 45 secondswant to inject the Drizzle service in the constructor. We're going to start up by having the helpers. First this private async get project helper which
2:04:552 hours, 4 minutes, 55 secondstakes in the organization log as well as the project log and over here we're going to return a row. So we say con row
2:05:022 hours, 5 minutes, 2 secondsis going to await this drazo db and we want to select the ID which matches this project id.
2:05:112 hours, 5 minutes, 11 secondsThis is going to come in from the projects table and we're going to have the inner join where we're going to join the organizations and in the case where
2:05:202 hours, 5 minutes, 20 secondsit equals. So the project.org id matches the organizations id
2:05:272 hours, 5 minutes, 27 secondsand the wear clause is going to be where equals like this the organizations do slog and is matching the org slug and
2:05:362 hours, 5 minutes, 36 secondsalso equals we're going to have the project slog is going to match the project slog like this and we're going
2:05:442 hours, 5 minutes, 44 secondsto limit this by one. Now if for some reason we did not find the row then we know that hey there's an error we're not
2:05:512 hours, 5 minutes, 51 secondsable to get the project we can throw this new not found exception which is going to say project not found but if everything is good we going to return
2:06:002 hours, 6 minutesthe actual row. Now with buckets we're going to have next we have the get bucket which needs the organization log
2:06:072 hours, 6 minutes, 7 secondsof type string and also the project's log of type string. So we say con project is going to be awaiting this.get
2:06:152 hours, 6 minutes, 15 secondsget project which needs the organization log as well as the project log.
2:06:222 hours, 6 minutes, 22 secondsWe can also return this dreu db and here we're going to dot select we're going to be selecting from the storage bucket and
2:06:302 hours, 6 minutes, 30 secondsthis is going to be dot where equals the storage bucket dot project ID matches
2:06:372 hours, 6 minutes, 37 secondsthis project do ID then we can go on to create the bucket or have this function that creates the
2:06:442 hours, 6 minutes, 44 secondsbucket so we have the organization log which is a string the project log which is a string the name of the bucket which
2:06:522 hours, 6 minutes, 52 secondsis a string and want to know the access type which is this um bucket assets. So public or private.
2:06:592 hours, 6 minutes, 59 secondsSo first let's get the project for which we're going to create this bucket. So project is going to be await this.get project organizations log and the
2:07:082 hours, 7 minutes, 8 secondsproject log and we're going to trim the name. So we say constreamed is going to be equals to name.tream.
2:07:152 hours, 7 minutes, 15 secondsAnd if this is undefined or let's say falsy after trimming we're going to throw a new bad request exception that
2:07:232 hours, 7 minutes, 23 secondswe need the bucket name. So the bucket name is required. Now let's go on and insert the bucket. We're going to say
2:07:302 hours, 7 minutes, 30 secondscon bucket is going to be equals to awaiting this drazo db
2:07:372 hours, 7 minutes, 37 secondsand we can call insert want to insert storage bucket and the value is going to be the project ID which is project ID
2:07:462 hours, 7 minutes, 46 secondsand the name also is going to be equals to dreamed and then the assets as well.
2:07:512 hours, 7 minutes, 51 secondsThen we're going to chain dot returning so that we can go on to return the bucket.
2:07:572 hours, 7 minutes, 57 secondsNow let's have another function and this time around is to delete the bucket and here we're going to take the bucket ID.
2:08:032 hours, 8 minutes, 3 secondsSo the first thing we're going to do is to get all the files in this bucket so that we can delete them from upload theme. So we're going to do that by awaiting drizzle db select the upload
2:08:132 hours, 8 minutes, 13 secondstheme key which is matching the storage bucket upload theme key. This is going to be coming obviously from the storage
2:08:202 hours, 8 minutes, 20 secondsbucket and the wear clause is going to be where equals the storage bucket dot
2:08:272 hours, 8 minutes, 27 secondsbucket id matches the bucket id. Now let's delete from upload thing first. We say if the bucket.length is greater than
2:08:362 hours, 8 minutes, 36 secondszero then we're going to await this the upload thing api delete files where the where we map through the objects we get
2:08:442 hours, 8 minutes, 44 secondseach object matches the object.upload uploading key. Now let's go on to cascade the delete to the storage object via the foreign key. We are waiting this
2:08:542 hours, 8 minutes, 54 secondsresult db.de delete the storage bucket dot where equals the storage buckets do id matches the bucket id and then we can
2:09:032 hours, 9 minutes, 3 secondsreturn a message to the client that says the bucket has been deleted. Now we need a method for the object.
2:09:122 hours, 9 minutes, 12 secondsLet's have this as get object which is going to take in the object ID of that string and we're going to return this.
2:09:192 hours, 9 minutes, 19 secondsDraaso DB where we're going to select everything and this is going to be coming in from the storage object and
2:09:272 hours, 9 minutes, 27 secondswhere which is the wear clause is where equals the storage buckets.bucket id matches the bucket id or the bucket id.
2:09:372 hours, 9 minutes, 37 secondsNow let's have this save bucket method and to save an object we need the bucket ID of type string. We also need the file
2:09:452 hours, 9 minutes, 45 secondsand the file is this object that has a name and also the size of type number.
2:09:512 hours, 9 minutes, 51 secondsThe type is also of type string. The UT key upload thing key is a string and the
2:09:572 hours, 9 minutes, 57 secondsURL is also a string. So this is an object.
2:10:022 hours, 10 minutes, 2 secondsSo first we can select everything. So bucket is going to be our this. DB so that we can go on and select everything
2:10:112 hours, 10 minutes, 11 secondsfrom the storage bucket and we want to know where equals and where equals the storage buckets do ID matches this
2:10:192 hours, 10 minutes, 19 secondsbucket ID here and want to limit this to one. Now if for some reason we're not able to get a bucket then we're going to throw a new
2:10:282 hours, 10 minutes, 28 secondserror. So a new not found exception which is a 44 error that says bucket not found. Now for private buckets over here we're not going to store the public URL.
2:10:392 hours, 10 minutes, 39 secondsSo we say con URL is going to be we check first if the access is public we're going to make use of the file URL otherwise an empty string.
2:10:482 hours, 10 minutes, 48 secondsNow we're going to scale the object by awaiting this. DB and then we're going to call insert. want to insert storage
2:10:562 hours, 10 minutes, 56 secondsbucket and the values we're going to insert is this object that has the bucket ID also the name is going to be the file
2:11:052 hours, 11 minutes, 5 secondsname we have the size and the size is the file do size we also have the mime type the mime type is equals to the file
2:11:132 hours, 11 minutes, 13 secondstype and we have the upload theme key which is going to be the fileut key we also have the URL and then we can have
2:11:212 hours, 11 minutes, 21 secondsdot returning like this and go on to return the object Now let's have the method to delete an
2:11:282 hours, 11 minutes, 28 secondsobject. So here we have this async delete object which takes in the object ID of type string. And here we're going to have the object because we want to
2:11:372 hours, 11 minutes, 37 secondsselect from the storage object. So we are wait this.razer db. We want to select everything that will be coming in
2:11:452 hours, 11 minutes, 45 secondsfrom the storage object. And then we have the wear clause. So we're going to say that where equals the storage object
2:11:532 hours, 11 minutes, 53 secondsdo id matches the object ID and the limit of one.
2:11:592 hours, 11 minutes, 59 secondsSo if we do not find an object, we're going to throw a new not found exception that the file was not found.
2:12:072 hours, 12 minutes, 7 secondsThen we can go on to await this API delete files and we're going to pass in the object. Uut key and we're going to
2:12:162 hours, 12 minutes, 16 secondsthen await this.razer razor db dot delete and we're going to delete the storage object and the wear clause is
2:12:242 hours, 12 minutes, 24 secondswhere equals the storage objects do id matches the object ID and finally to the
2:12:312 hours, 12 minutes, 31 secondsclient we're going to return an object with a message that says the file has been deleted. Now let's have the next
2:12:382 hours, 12 minutes, 38 secondsone a method to get the signed URLs. So get signed URL going to take in the object ID of type string and here we're
2:12:462 hours, 12 minutes, 46 secondsgoing to have the bet want to await this. DB dot select want to select everything
2:12:552 hours, 12 minutes, 55 secondsfrom the storage object and the wear clause is where equals the storage object do ID matches the object ID. I
2:13:052 hours, 13 minutes, 5 secondswant to go on to limit this to one and we're going to check if we do not find an object. Let's throw a new not found exception that the file was not found.
2:13:162 hours, 13 minutes, 16 secondsNow we have been able to we are able to find an object. Let's get URL. So con URL is going to await this UT API dot
2:13:252 hours, 13 minutes, 25 secondsgenerate signed URL where we pass in the object.upload key and here we're going to say it expires in 3,600.
2:13:342 hours, 13 minutes, 34 secondsAnd here we're going to then return the URL like this.
2:13:392 hours, 13 minutes, 39 secondsOkay. So this is everything we need in our service. I'm going to save this file. We do not have any errors or maybe
2:13:462 hours, 13 minutes, 46 secondswe do. And why do we have this error is the URL does not exist here. So we have the UFS URL which is of type string. So
2:13:542 hours, 13 minutes, 54 secondslet's update this. The documentation must have changed and we're going to return this over here like this and give
2:14:022 hours, 14 minutes, 2 secondsthis file a save. Okay. So the next step for us is to work on the storage controller. Okay. Okay, so now we are
2:14:082 hours, 14 minutes, 8 secondsready to implement the controller. Now before we do, I just want to mark this as URL so that we can stay consistent which is then going to be the UFS URL like this.
2:14:202 hours, 14 minutes, 20 secondsNow in here we're going to be creating a new file. So the new file is going to be storage controller.ts
2:14:282 hours, 14 minutes, 28 secondsfile. Now let's start by collapsing this and then we're going to import all.
2:14:342 hours, 14 minutes, 34 secondsWe're also going to bring in body. We're also going to be importing controller, delete, get, next, and param. Also, we
2:14:442 hours, 14 minutes, 44 secondsneed to bring in post, direct for request, the response, the use guard from Nest.js for/common.
2:14:532 hours, 14 minutes, 53 secondsWe're going to be importing the type, the type of next function, the type of request, and response from express.
2:15:022 hours, 15 minutes, 2 secondsThen let's also import the create route handler. The create route handler is going is going to be imported from at from upload thing for /express.
2:15:132 hours, 15 minutes, 13 secondsWe're also going to bring us bring up the enum. So is number is enom is string which will come from class validator.
2:15:212 hours, 15 minutes, 21 secondsNow for our storage service we are importing storage service which will come from one level up our storage service.
2:15:302 hours, 15 minutes, 30 secondsLet's also have our route handler. Our storage router is going to be equals to upload theme. So the upload theme file
2:15:372 hours, 15 minutes, 37 secondswe created. Then we need to bring in our JWT authentication guard which will come from the O the guard the JWT.gard file.
2:15:482 hours, 15 minutes, 48 secondsAnd then we're going to import organization row guard which will come from O the guard the organization
2:15:552 hours, 15 minutes, 55 secondsrow.gard file. And we're going to import the bucket assets which will come from at supervolt for slashtypes.
2:16:052 hours, 16 minutes, 5 secondsWe're going to have the DTO definition here. So the create bucket DTO and this is going to make use of the name which
2:16:112 hours, 16 minutes, 11 secondsis of type string and also the enum which could be public or private. And we're going to call this assess which is going to be of type the bucket assess.
2:16:222 hours, 16 minutes, 22 secondsThen let's have the save object DTO. And the save object DTO is going to also be a string for the name. And the name is
2:16:302 hours, 16 minutes, 30 secondsof type string also is number so that we can have the file size. And then we're also going to have a string for the type.
2:16:392 hours, 16 minutes, 39 secondsAnd this type is of type string. We also have the UT key which is of type string.
2:16:442 hours, 16 minutes, 44 secondsAnd then we also have the URL which is also of type string. We're going to create a handler. So we'll call this
2:16:522 hours, 16 minutes, 52 secondsupload theme handler. is going to be equals to the create handler function.
2:16:562 hours, 16 minutes, 56 secondsSo here we're going to have the router where we pass our storage router.
2:17:022 hours, 17 minutes, 2 secondsThen for the controller the path is going to be /org/organization log/ projects / project log/ storage.
2:17:112 hours, 17 minutes, 11 secondsWe're also going to make use of the JWT guard and the organization row guard.
2:17:172 hours, 17 minutes, 17 secondsNow in the class definition we're going to initialize the storage service in the constructor. So we say private storage
2:17:242 hours, 17 minutes, 24 secondsservice is going to be of type storage service. Then let's have the method to get bucket. So we have the get bucket
2:17:322 hours, 17 minutes, 32 secondsand the method get bucket is going to retrieve the log from the param and also the project log from the param. They are
2:17:402 hours, 17 minutes, 40 secondsboth of type string and the first slog here is the organization log. We can make a call to the service. We're going
2:17:472 hours, 17 minutes, 47 secondsto return this storage service getbucket and this needs the params. So the slug and the project slug here.
2:17:582 hours, 17 minutes, 58 secondsThe next is um post request to bucket.
2:18:012 hours, 18 minutes, 1 secondSo it's going to be a create bucket method. Let's retrieve the slug from the param where we're going to say hey this is of type slog of type string and also
2:18:102 hours, 18 minutes, 10 secondsthe project log. We store it in this project law variable is of type string and because we are creating a bucket we need a DTO which is going to be of type the create bucket DTO.
2:18:222 hours, 18 minutes, 22 secondsNow we can go on to return this story service create bucket and we're going to pass over the slog. We're also going to
2:18:292 hours, 18 minutes, 29 secondspass the project slog and it also needs the name. So the name is gotten from the dto.name and also the assets which we get from the dto.
2:18:392 hours, 18 minutes, 39 secondsNow we need the next one to delete a bucket. So this is going to say delete and now we need the bucket for/ the bucket id and we're going to call this
2:18:472 hours, 18 minutes, 47 secondsdelete bucket method and this method is going to retrieve the bucket ID from the param and we're going to just make a
2:18:542 hours, 18 minutes, 54 secondscall to the service. So return this do story service dot delete bucket and we pass in the bucket ID.
2:19:032 hours, 19 minutes, 3 secondsLet's also have this to get a bucket. So we're going to get the bucket the bucket ID and the object. And there we have the
2:19:092 hours, 19 minutes, 9 secondsget bucket method. And from the param we retrieve the bucket ID and then we're going to make a call to the service. So
2:19:172 hours, 19 minutes, 17 secondslet's return this storage service get object and we're going to pass in the bucket ID. Now we're going to need the
2:19:252 hours, 19 minutes, 25 secondsupload thing endpoint. So I'll leave this comment here and the reason why we do like this is all upload thing is going to handle or proxy the UT protocol
2:19:332 hours, 19 minutes, 33 secondshere. So this endpoint is specifically for upload thing that's [snorts] making of this all param here. So bucket the bucket ID and /upload.
2:19:432 hours, 19 minutes, 43 secondsSo we're going to have the handle upload method. We're going to get the request and this of type request. We're also going to get the response is of type
2:19:512 hours, 19 minutes, 51 secondsresponse and next that we can call next in case something goes wrong. It's going to be of type the next function.
2:20:002 hours, 20 minutesNow this is returning void. Let's first check the original URL. We get that from the request URL and the query index is going to be the original URL index of.
2:20:102 hours, 20 minutes, 10 secondsSo we make use of the question mark here so that I can get the index. So then the query is going to be the index if that is greater or equals to zero. Then we're
2:20:192 hours, 20 minutes, 19 secondsjust going to call the original URL slice where we pass in the query index otherwise an empty string and the request URL is then going to be
2:20:272 hours, 20 minutes, 27 seconds/query like this. Then we can forward this to the UT handler. The request the response and error is going to be of type unknown. And we check that we have
2:20:362 hours, 20 minutes, 36 secondsthe request URL is going to be equals to the original URL. And if we have an error, we call next and we pass across the error.
2:20:462 hours, 20 minutes, 46 secondsNow we have this post endpoint to bucket and bucket ID for/object. So now we're working on bucket and this is the save
2:20:532 hours, 20 minutes, 53 secondsobject. And over here we have the bucket ID which we're going to get from the param. And then we're going to also get
2:21:012 hours, 21 minutes, 1 secondthe body which is of type file and it's going to be the save object DTO and we can go on to return this storage
2:21:082 hours, 21 minutes, 8 secondsservice. And then we can call save object and we're going to pass the bucket ID as well as the file. So we
2:21:162 hours, 21 minutes, 16 secondshave the last two. This is delete to delete object and the object ID. We're going to have the delete object method.
2:21:232 hours, 21 minutes, 23 secondsThe param is going to take in the object ID. And this object ID is of type string. And we're going to be returning
2:21:312 hours, 21 minutes, 31 secondsthis storage service delete object where we pass the object ID. And then we're also going to have this.
2:21:382 hours, 21 minutes, 38 secondsSo at get where we have the object and/object ID for/ sign URL. This is then going to be the get signed URL. And
2:21:462 hours, 21 minutes, 46 secondswe're going to have at par. We pass the object ID. This object ID is of type string. And we can just return this
2:21:532 hours, 21 minutes, 53 secondsstory service.get sign URL where we pass in the object id. All right. So this is our controller file. We have written
2:22:022 hours, 22 minutes, 2 secondsquite a lot of code. Now we're going to continue by creating the module. So you just need to give this a save and the lint is fixed.
2:22:112 hours, 22 minutes, 11 secondsSo let's come over here and we're going to be creating a new file and this new file is the storage.module.ts
2:22:182 hours, 22 minutes, 18 secondsfile. So let's collapse this and we're going to start by importing module.
2:22:232 hours, 22 minutes, 23 secondsModule is going to come from nest js4/mon.
2:22:272 hours, 22 minutes, 27 secondsThen we're going to import the storage service. The storage service is going to come from one level up. We have the storage service file. And then we need
2:22:362 hours, 22 minutes, 36 secondsto bring in the storage controller. So we import storage controller from one level up. And then we have the
2:22:432 hours, 22 minutes, 43 secondsstorage.controller file. And let's also import the O module which you come from to attain one folder level up to O and
2:22:522 hours, 22 minutes, 52 secondsthe OM module. So we have the module decorator and for the imports we have the authentication module. For the
2:23:002 hours, 23 minutesproviders we have the storage service and then for the controllers we are going to have the storage controller.
2:23:082 hours, 23 minutes, 8 secondsAnd finally we can go to export the class definition which we're going to call storage module.
2:23:152 hours, 23 minutes, 15 secondsNow the final step of wrapping up the back end is for us to come over to the application module so that we can register the storage module. So just
2:23:242 hours, 23 minutes, 24 secondsafter real time we're going to have the storage module here like this. So we import the storage module and we can go
2:23:322 hours, 23 minutes, 32 secondson to save the file. Now we are done with the back end. The next step for us is to focus on working on the front end.
2:23:392 hours, 23 minutes, 39 secondsSo something you should already have in mind if you come over here we already have a template for the front end. So over here if you come over to the web so
2:23:492 hours, 23 minutes, 49 secondsI'll collapse the API and if you come over to the web we already have the template here. So this is the storage
2:23:572 hours, 23 minutes, 57 secondsclient. So this is it. And no worries I'm just going to give us a big work brief walk through before we get started. But you can see that this is
2:24:052 hours, 24 minutes, 5 secondsalready over 500 or close to 500 lines of code that we would have to type out ourself. So please just go through the
2:24:122 hours, 24 minutes, 12 secondsum client. We're also going to have a brief review and when you feel comfortable, we can then proceed over to the front end side of things. So I'm
2:24:212 hours, 24 minutes, 21 secondsgoing to see you next where we're going to work on the front end integration. So let's work on the front end integration.
2:24:282 hours, 24 minutes, 28 secondsI'm going to close the API as we are done with the API for now and we are going to focus on the web and over here
2:24:352 hours, 24 minutes, 35 secondswe're going to come into the source and into the features we need a new feature for storage. So let's create this folder here and we're going to call this folder
2:24:442 hours, 24 minutes, 44 secondsstorage like this. Let's start with the helpers. We're going to create this new file and this is going to be the storage helpers
2:24:522 hours, 24 minutes, 52 secondsdo server.ts file. We're going to make use of this in the page. So this helpers, let's start by importing bringing in the imports
2:25:012 hours, 25 minutes, 1 secondthat we need. We're going to import redirect. Redirect is going to come from nestjs for/navigation.
2:25:082 hours, 25 minutes, 8 secondsWe're also going to import our API client which will come from lib/exios.
2:25:142 hours, 25 minutes, 14 secondsNow we need the help function which is the retrieve token from cookie and this is going to come from at our server - utils for/utails.
2:25:242 hours, 25 minutes, 24 secondsThen we import the cookie keys which is going to come from at super vault for/ constants.
2:25:312 hours, 25 minutes, 31 secondsWe're also going to import the type of super storage bucket and the storage object which will come from super volt /
2:25:402 hours, 25 minutes, 40 secondstypes. Now let's go on to export this function. This function is called retrieve bucket from API.
2:25:492 hours, 25 minutes, 49 secondsWe're going to pass the organization slug of type string. We're also going to pass the project slug of type string.
2:25:562 hours, 25 minutes, 56 secondsAnd this is going to return a promise that resolves to storage bucket array.
2:26:002 hours, 26 minutesLet's have the token. So con token is going to be equals to our way to retrieve token from cookie. And in the try block we are going to have const
2:26:092 hours, 26 minutes, 9 secondsdata. and data is going to come by awaiting the API client.get where we get the storage bucket array.
2:26:182 hours, 26 minutes, 18 secondsNow the path is /og and then /organization log/ projects and then /
2:26:242 hours, 26 minutes, 24 secondsproject log/ storage and then /bucket and in the headers we have the cookie
2:26:322 hours, 26 minutes, 32 secondswhich is then going to be the cookie keys access token equals the token. And finally, we can go on to return the
2:26:392 hours, 26 minutes, 39 secondsdata. But if something goes wrong, we're going to have our catch block. And in the catch block, we are just going to perform a redirect to the project. So
2:26:482 hours, 26 minutes, 48 seconds/organizations/organizations log/ project. And then we're going to have another function. This function is
2:26:562 hours, 26 minutes, 56 secondsgoing to help us to retrieve the object from the API. Now to retrieve the object from the API, we need the organization
2:27:032 hours, 27 minutes, 3 secondsslog. We also need the project log of type string. We need the bucket ID which is of type string and this function is
2:27:112 hours, 27 minutes, 11 secondsgoing to return a promise that results to a list of storage object. We're going to get our token by awaiting the retrieve token from cookie function.
2:27:232 hours, 27 minutes, 23 secondsAnd here we are going to dstructure data which is going to be equals to the awaiting API client.get Get where we get
2:27:302 hours, 27 minutes, 30 secondsthe list of storage objects and the path is /organization/organization slugg/ project/ project slugg/
2:27:402 hours, 27 minutes, 40 secondsstorage/bucket the bucket id and / object and then we have the headers which we
2:27:482 hours, 27 minutes, 48 secondshave the cookie so the cookie is going to be the cookie keys token is equals to token and finally we can go on to return data
2:27:572 hours, 27 minutes, 57 secondslike this. So this is it for the helpers. We're going to make use of this helpers when creating the page. I think we can go on to create the page already.
2:28:082 hours, 28 minutes, 8 secondsSo if we come over to our application and over here the page is this page. So this page for storage which currently is
2:28:172 hours, 28 minutes, 17 secondsa 44 page as we see here. So let's fix that. I'm going to close out of here and right into the app, the dashboard, the
2:28:252 hours, 28 minutes, 25 secondsorganizations, the organizations log, the project log. We know that we need a new folder for storage. So, storage like
2:28:322 hours, 28 minutes, 32 secondsthis. And in here, we're going to then create the page.tsx.
2:28:372 hours, 28 minutes, 37 secondsSo, let me fix this typo. This is meant to be page like this. So, we can collapse this. And we're going to have the page definition. now get we get a
2:28:462 hours, 28 minutes, 46 secondsdifferent error that we're not exporting the default export and it's not a react component.
2:28:532 hours, 28 minutes, 53 secondsSo now let's go on and have the definition here. We're going to be importing the retrieve bucket from API.
2:29:002 hours, 29 minutesSo our helpers we're also going to bring in the retrieve object from API. So we're fetching the bucket and the objects and this will come from the
2:29:082 hours, 29 minutes, 8 secondsfeatures the storage the storage helpers dos server file.
2:29:142 hours, 29 minutes, 14 secondsWe are also bringing the storage client which we haven't defined yet. So this is going to come from the features the
2:29:212 hours, 29 minutes, 21 secondsstorage and for/ storage client. And finally we can export to the default async function. This is the storage
2:29:282 hours, 29 minutes, 28 secondspage. So this page is taken in the params and the this is of type this object where we have params is a promise
2:29:362 hours, 29 minutes, 36 secondsthat we can get this log of type string and the project log of type string. And here we're going to retrieve the slog and the project log by awaiting params.
2:29:482 hours, 29 minutes, 48 secondsNext, let's have the bucket. The bucket is going to be awaiting the retrieve bucket from API so that we can pass the slugg as well as the project log.
2:29:592 hours, 29 minutes, 59 secondsLet's also have the initial buckets and the initial bucket is going to be the first item in the buckets array. If that is available, we're going to then await
2:30:072 hours, 30 minutes, 7 secondsthe retrieve object from API so that we can pass in the SLO the project log and the first item ID in the bucket list.
2:30:162 hours, 30 minutes, 16 secondsOtherwise, we have an empty array. Now, finally, we can go on to return the JSX for this page. So, it's a div that has this classes.
2:30:262 hours, 30 minutes, 26 secondsAnd this class, if you've been following the course, you can see other pages also has this class as well. And after this we are going to have the storage client.
2:30:352 hours, 30 minutes, 35 secondsAnd the storage client is going to take in the organization's log which is going to map to this log. Also the project log
2:30:432 hours, 30 minutes, 43 secondsis going to map to the project log from the params. The initial bucket is going to be equals to the bucket that we have there. And the initial object is going
2:30:522 hours, 30 minutes, 52 secondsto be the initial object that we have here. Now we have defined this. All that is left is for us to bring in the storage client inside the features file.
2:31:022 hours, 31 minutes, 2 secondsWe're going to give this a save which is going to lead to another error in the client as it cannot resolve this path.
2:31:082 hours, 31 minutes, 8 secondsSo let's make sure we import it. We're going to come over here and if we scroll further down to the templates, you can
2:31:152 hours, 31 minutes, 15 secondscopy this template we have here this storage client template. Now we're going to drop this right in here in the features the features for storage. We
2:31:242 hours, 31 minutes, 24 secondscan paste in this storage here. Now we have an error and the error is just the file path. So we can fix this. I'm just
2:31:322 hours, 31 minutes, 32 secondsgoing to get rid of this and import this here as well. So that we get the correct file path just like this. Now that fixes
2:31:402 hours, 31 minutes, 40 secondsthe error that we have over here. So you just need to fix in the import file path here and you're good to go. Now let's
2:31:482 hours, 31 minutes, 48 secondssave this and let's also make sure we do not have any errors here by removing this and bringing this back. Now if you
2:31:552 hours, 31 minutes, 55 secondscome over here, you're going to see this is what the UI looks like. Now over here we are meant to have an upload button but because we do not have any bucket
2:32:042 hours, 32 minutes, 4 secondsyet we do not see this. So let's have a quick preview of how what the storage client is doing.
2:32:122 hours, 32 minutes, 12 secondsNow we have the format by which is just for helping us to format the file size.
2:32:182 hours, 32 minutes, 18 secondsWe have the get API URL as you can see here is / API and over here we have the actual JSX. So we store the initial
2:32:262 hours, 32 minutes, 26 secondsbuckets in the client and also the active bucket here. But if you come further down we have the different helpers function to go and end upload
2:32:342 hours, 32 minutes, 34 secondsfetch and this upload fetch is taking the href.in and then is sending a request via fetch with the impute.
2:32:422 hours, 32 minutes, 42 secondsSo the impute over here is what the upload fetch function is going to get.
2:32:462 hours, 32 minutes, 46 secondsSo if you come over here where we are making use of it automatically this is going to get in the input because the upload button is coming in from upload thing react as you see here.
2:32:592 hours, 32 minutes, 59 secondsAll right. So we can exit out of this and now we pass in the different props like the upload URL the endpoint the bucket uploader endpoint in case you
2:33:082 hours, 33 minutes, 8 secondshave forgotten the bucket uploader endpoint was registered in here in the API and under the source in the storage
2:33:162 hours, 33 minutes, 16 secondsthe upload thing. So over here we have the bucket uploader endpoint. So this is the endpoint that is going to be sending
2:33:232 hours, 33 minutes, 23 secondsrequests to and the on upload complete is going to be handled by our react application because if you also come
2:33:302 hours, 33 minutes, 30 secondsback here you're going to see on up on client upload complete this is then where we send the request to our back end to /object.
2:33:392 hours, 33 minutes, 39 secondsSo this upload thing endpoint is going to get called and once it gets called this controller is going to get called over here where we have the all path.
2:33:482 hours, 33 minutes, 48 secondsSo this all path is what we're going to call here when we are actually doing the upload. So upload thing is going to be uploading this and then when we the
2:33:572 hours, 33 minutes, 57 secondsupload is complete which is a note up for the API the front end is then going to make a request to /object
2:34:052 hours, 34 minutes, 5 secondsand if you see over here /object you can come further down here and this is going to be targeting this
2:34:142 hours, 34 minutes, 14 secondsas you see /bucket /bucket id /object and that is what we are targeting here.
2:34:202 hours, 34 minutes, 20 secondsNow we pass in the body which also has the name, the size, the type, the UT key
2:34:262 hours, 34 minutes, 26 secondsand the URL here which is now deprecated but it's fine. We can make use of the USF URL instead.
2:34:342 hours, 34 minutes, 34 secondsAnd if we have any error, we log into the console and we go on to continue and we update our local state.
2:34:422 hours, 34 minutes, 42 secondsSo this is what is going on here and you can study this more to know how everything is working. But now I've given us a brief highle overview. We can
2:34:512 hours, 34 minutes, 51 secondsgo on to test this. So I'm going to come back to the browser and let's create our first bucket. As you can see this is
2:34:572 hours, 34 minutes, 57 secondsfully responsive and we can also inspect this so that we see how it looks on mobile. So I'll open this up and see how
2:35:052 hours, 35 minutes, 5 secondsit is on mobile which for now looks a little bit kind of weird but yeah.
2:35:102 hours, 35 minutes, 10 secondsSo this is it. We have the horizontal scrolling. It's not fully mobile responsive, but we can try and see how it looks like this.
2:35:192 hours, 35 minutes, 19 secondsYeah. So, it's not fully mobile responsive. It depends on the width, but normal devices would most likely be
2:35:262 hours, 35 minutes, 26 secondsaround 360 um width, which would maybe work in a in a way. All right. So, let's try this
2:35:342 hours, 35 minutes, 34 secondsout. And if the if the styling is not okay when you get access to this storage client, the styling would have already
2:35:422 hours, 35 minutes, 42 secondsbeen fixed. And this is the only file that is going to be changed so that the styling works. So you do not have to worry. And when you're viewing this, you
2:35:502 hours, 35 minutes, 50 secondswould already be viewing this with the correct styling updated to match the mobile view both devices.
2:35:582 hours, 35 minutes, 58 secondsI'm going to close this. And when you click on this, you can create a new bucket. So I'll call this bucket super vault like this and you can see the
2:36:062 hours, 36 minutes, 6 secondsassets could be public or private. Now let's start up with a public bucket and I'm going to hit on create. So it's creating and object belongs to bucket.
2:36:172 hours, 36 minutes, 17 secondsSo here we see the super vote object has been created. The files we do not have any files yet but we can go on to choose a file to upload and this is public as
2:36:262 hours, 36 minutes, 26 secondswe see over here. Now if you click here you have the option to delete this bucket here like this.
2:36:332 hours, 36 minutes, 33 secondsSo let's go on to create a file inside this bucket. As we see here, the bucket is currently empty. I'm going to choose file. And so I'm going to be uploading a
2:36:412 hours, 36 minutes, 41 secondsPDF file. I'll just choose this file over here and click on open. We are going to see the progress spinner over here. Not really a spinner, but the
2:36:482 hours, 36 minutes, 48 secondsprogress circle here. So it's currently at 0% because it does some setup. And you can see the progress is on. And now
2:36:552 hours, 36 minutes, 55 secondsit's done. We should see the new bucket over here because it's going to update.
2:37:002 hours, 37 minutesAnd now we see the PDF here. You can copy this link to this PDF. And if you open this as this is a public bucket, we
2:37:072 hours, 37 minutes, 7 secondscan visit this and we're going to see the file here. So this is the file over here. And this is just a test PDF.
2:37:162 hours, 37 minutes, 16 secondsCool. So this is working as expected. So we can go on to close this. And now let's also try to delete. The delete
2:37:232 hours, 37 minutes, 23 secondsobviously is going to work. is going to delete it from upload thing and it's also going to delete it from neon.
2:37:292 hours, 37 minutes, 29 secondsSo now we just wait a moment and if we come over to neon we see the storage object. Let's give this a refresh. We shouldn't see any object here. And if we
2:37:372 hours, 37 minutes, 37 secondscome over to storage bucket we already see zero. We did not have okay we do have an object here. So let's give this a refresh. Yeah the bucket definitely we
2:37:452 hours, 37 minutes, 45 secondshave a bucket but the object we do not have any object here. Now let's verify if the delete also worked in upload thing. I'm just going to come here and
2:37:532 hours, 37 minutes, 53 secondsgive this a refresh in the files section and let's see if we have any files here.
2:37:592 hours, 37 minutes, 59 secondsWe do not see any files here which is great. Our delete is working. We do not have any offand files. Let's create a new file. So I'll choose upload and I'm
2:38:072 hours, 38 minutes, 7 secondsgoing to upload the PDF again and I'll choose on open. And this time around we wait for the uploads for complete. Once the upload completes if we come over
2:38:172 hours, 38 minutes, 17 secondshere we are going to see the new object. So I'm just going to give this a refresh.
2:38:222 hours, 38 minutes, 22 secondsWe should see the new PDF here with the size, the mime type, the key and everything. And if we come over here and also give this a refresh, we are going to see the uploaded PDF here.
2:38:342 hours, 38 minutes, 34 secondsOkay. [snorts] So now this is working.
2:38:362 hours, 38 minutes, 36 secondsNo worries about the status of callback failed. As we have seen, we have the upload working as expected. And we can also over here and choose a PNG file. We
2:38:442 hours, 38 minutes, 44 secondscan see that the PNG file is going to upload. And we can see it here like this.
2:38:512 hours, 38 minutes, 51 secondsSo now the upload should be completed and we're going to see the PNG file here with the actual file preview.
2:38:582 hours, 38 minutes, 58 secondsSo we see the PNG file displayed here.
2:39:002 hours, 39 minutesAnd if you copy this definitely it's going to load over here. And you can see this. So this is just a code snippet. I took a screenshot that I could use to
2:39:082 hours, 39 minutes, 8 secondstest. So I'm going to close this. And now let's also create create a new bucket. And this time around I will call
2:39:152 hours, 39 minutes, 15 secondsthis private bucket. So that this is going to be private which requires the signed URL to access. And I'm going to hit on create.
2:39:252 hours, 39 minutes, 25 secondsNow we're creating this. It's done. And now we need to choose the file. So we're going to choose a file. And I'll also choose the same file over here. And
2:39:342 hours, 39 minutes, 34 secondsclick on open. So this is a PNG. And we're going to see the upload is also going to succeed.
2:39:412 hours, 39 minutes, 41 secondsNow that the upload has succeeded, we see the file over here. and let's try to access the file. So I'm going to copy this and I'm going to open this up here.
2:39:512 hours, 39 minutes, 51 secondsSo let's see if this works. So we can see this time around the string is longer because we have the expires, the time it expires and also the signature.
2:40:002 hours, 40 minutesSo we're going to click on this and we still see the file because we have the actual privilege here. So we have the the sh here over here the signature we
2:40:092 hours, 40 minutes, 9 secondshave the time it expires and after this while this link is going to expire.
2:40:152 hours, 40 minutes, 15 secondsOkay. So now we can close this and we can see now that we have our super bucket. Definitely we can create new bucket. We can see that we have this
2:40:232 hours, 40 minutes, 23 secondsicon here because this is a private bucket. But you can also go on to delete the bucket.
2:40:292 hours, 40 minutes, 29 secondsOkay. Okay, so now that we have this done and this is working as expected, we can now move on to the next phase of building out our project. Last time out
Chapter 4: 12-javascript-sdk
2:40:382 hours, 40 minutes, 38 secondswe built the superb base or super vote storage which as we can see is working as expected. We can go on to create
2:40:452 hours, 40 minutes, 45 secondsbucket and we can actually upload files into the bucket. So it could be public or private bucket like this. So here we
2:40:532 hours, 40 minutes, 53 secondscome here and we're going to see the files that we have uploaded inside this private bucket. All right. So now this is the place or the time where we go on
2:41:022 hours, 41 minutes, 2 secondsto work on super vote SDKs. We're going to have a JavaScript software development kit and so that developers
2:41:102 hours, 41 minutes, 10 secondscan go on to use super vote just as they make use of superbase. So we literally have everything done so the rest API the
2:41:192 hours, 41 minutes, 19 secondsreal time subscription. Now we're going to wrap all of them in a clean JavaScript SDK so that developers can make use of them which is going to be a
2:41:272 hours, 41 minutes, 27 secondssimple import. So they're going to be importing the create client just as we do with superbase. And the create client is going to come from superv.
2:41:362 hours, 41 minutes, 36 secondsSo let's work on that. We're going to start by creating the different folders or package that we need. So right here
2:41:432 hours, 41 minutes, 43 secondsinside the packages folder, I'm just going to collapse these and we want to be in the packages. So we already have this for constants and for types, but we
2:41:522 hours, 41 minutes, 52 secondsneed to create a new folder here which is going to be for superv. And in the we're going to create the source and in this in the source we're going to create
2:42:012 hours, 42 minutes, 1 secondfor that for DB for real time for storage and for off. I'm going to make use of the terminal because it's going to be a little bit faster here. So I'm
2:42:092 hours, 42 minutes, 9 secondsgoing to say make directory /p which is going to be the path. So right here in the packages since this is in the root
2:42:162 hours, 42 minutes, 16 secondsit's going to create these folders for us. So I'm this is the superv and then it's going to create the source folder and inside the source it's going to
2:42:252 hours, 42 minutes, 25 secondscreate all these folders. So the DB the real time the storage and the off.
2:42:312 hours, 42 minutes, 31 secondsSo let's do that. And now we see we have the super volt js folder and in here we have the source and we have the off the
2:42:392 hours, 42 minutes, 39 secondsDB the real time and the storage inside here which are of course empty for now. Now we're going to do the same thing.
2:42:462 hours, 42 minutes, 46 secondsWe're going to create a demo folder still here, but this demo folder is going to be inside just the super
2:42:532 hours, 42 minutes, 53 secondsvault.js like this, not inside the source. So, we're going to make a new directory packages superv.
2:43:032 hours, 43 minutes, 3 secondsSo, if you come over here, you would see we now have this new demo folder here like this. Now we are going to see the
2:43:102 hours, 43 minutes, 10 secondsoops now we're going to come back to the terminal so that we can see the into the packages and the packages want to go into the super votejs. Now the reason
2:43:182 hours, 43 minutes, 18 secondswhy we're here is because this also is going to be required or registered as a workspace package the supervet
2:43:282 hours, 43 minutes, 28 secondswe have the type with it on packet.json we need to initialize the packet.json JSON here like this and we're going to do that by running PNPM in its command
2:43:372 hours, 43 minutes, 37 secondswhich is then going to bootstrap this packet.json.
2:43:412 hours, 43 minutes, 41 secondsNow because we have the packet JSON we can go on to run installation. Now we're going to go on to install packages.
2:43:482 hours, 43 minutes, 48 secondsWe're going to make use of socket io client and we also need to install the super boot constants because here we have the constants and just like before
2:43:552 hours, 43 minutes, 55 secondsif you check the packet.json let's come over to the apps the API and if you check the packet.json JSON here just like this. You're going to see in the
2:44:042 hours, 44 minutes, 4 secondsdependencies we have the constants somewhere here. So we're going to see we have at supervolt/ constants and also we
2:44:112 hours, 44 minutes, 11 secondshave at supervolt for/types. Now we need the same in here. So we can manually add them right here in the packages folder
2:44:182 hours, 44 minutes, 18 secondsor we can run the installation like this. So we can say pmppm add socket io client or and then we can go on to in
2:44:262 hours, 44 minutes, 26 secondsquotes have the supervolt for/stant and this is going to run the installation by taking a look at our workspace and also
2:44:342 hours, 44 minutes, 34 secondsupdating the same linking. So we can go and run this and then we give this a moment we watch the packages update.
2:44:412 hours, 44 minutes, 41 secondsWe're going to have the packages writing here in the package.json.
2:44:472 hours, 44 minutes, 47 secondsSo after this we're going to be installing ts. So we can see here we already have the dependencies update. We have the supervolt constant and we also
2:44:552 hours, 44 minutes, 55 secondshave the socket io client. All right. So let's also install this tsub package.
2:45:022 hours, 45 minutes, 2 secondsWe're also going to install typescript and also the types. So we run the installation and then we're going to see this update over here.
2:45:122 hours, 45 minutes, 12 secondsNow [snorts] wait for this and we're going to be updating this in a moment because we also need to add some extra configuration here. So now it's updated.
2:45:222 hours, 45 minutes, 22 secondsIt's done. And now we see as dev dependencies because we added -d over here. We have the supervol types. We have ts and we also have typescript.
2:45:332 hours, 45 minutes, 33 secondsNow I'm going to clear this. And now we're going to make a little bit of changes here. Now, the version, I'm going to leave the version as it is, but
2:45:402 hours, 45 minutes, 40 secondsthen I'm going to be updating the description. So, rather than leave the description empty, I'm just going to say that this is the official JavaScript SDK
2:45:492 hours, 45 minutes, 49 secondsfor super votes like this. The main now is not going to be index.ts, but the main is going to be one level up to a distribution folder we do not have yet.
2:45:582 hours, 45 minutes, 58 secondsSo, / this dist and index.js.
2:46:022 hours, 46 minutes, 2 secondsNow, we're also going to have the module. We're also going to have the types. Now over here we're going to update this to points to module and the
2:46:102 hours, 46 minutes, 10 secondsmodule is still going to be in the dig but now it's going to be index mjs like this and also we are going to have the
2:46:182 hours, 46 minutes, 18 secondstypes so rather than main let's have the types over here and this types is going to be the index
2:46:262 hours, 46 minutes, 26 secondsd for the index d like this and then we're going to have ts like this.
2:46:342 hours, 46 minutes, 34 secondsNow we also need exports and for exports we can add exports just after types here. So let's bring in this exports.
2:46:422 hours, 46 minutes, 42 secondsWe're going to have exports like this and then we're going to export everything. And then we're going to export the types. The types is going to come from the disc.index.d.ts.
2:46:522 hours, 46 minutes, 52 secondsThe definition the import as well is going to come from the disc.index.mjs.
2:46:562 hours, 46 minutes, 56 secondsAnd then also we're going to have require which is going to come from the disc and then the index.js like this.
2:47:042 hours, 47 minutes, 4 secondsNow in the script section, we currently have this script over here, but this script is the test script. So we're going to be updating this and we're
2:47:112 hours, 47 minutes, 11 secondsgoing to have a build script. So here we have build and build is going to then take make it of ts like this. In case
2:47:192 hours, 47 minutes, 19 secondsyou're not familiar with ts, we can always double check it. Now ts is used to bundle your typescript library so that we do not need any extra config.
2:47:302 hours, 47 minutes, 30 secondsAnd if you check this, if you click into it, you can see that this has over 6,000 weekly downloads here.
2:47:372 hours, 47 minutes, 37 secondsAnd you can see how we can make use of it. We have already installed this. And you can see it helps us to bundle the files. And then you can go to the documentation.
2:47:472 hours, 47 minutes, 47 secondsBut no worries, we are going to see this as we continue make use of this. And something I just noticed now you can see
2:47:542 hours, 47 minutes, 54 secondsis that please consider using ts down instead as this project is no longer actively maintained. So we're going to change something here a bit. I didn't
2:48:032 hours, 48 minutes, 3 secondsnotice this. But now that I see this we are going to be making minor changes to what we have currently. Okay. So now let's make changes. Let's go on with the
2:48:122 hours, 48 minutes, 12 secondsrecommendation which says TS down. All right. So sometimes it's good to check the documentation. I'm going to exit and then I'll come over here. So let's go on
2:48:212 hours, 48 minutes, 21 secondsand let's remove the installation that we have here in the dev dependency. So we can open up your terminal and we're
2:48:282 hours, 48 minutes, 28 secondsgoing to say pmppm remove and we're going to pass in ts like this. All right. So now once this gets removed we're going to add the tsd down package.
2:48:372 hours, 48 minutes, 37 secondsSo now it's removed. We're going to say pmppm add and we're going to be adding the we're still in the superv
2:48:452 hours, 48 minutes, 45 secondsum project. So we're going to be adding as a dev dependency ts down package like this. Okay. So now we have this
2:48:522 hours, 48 minutes, 52 secondsinstalled. I think we are now good to go. All right. So we are just going to double check the package.json and the
2:49:002 hours, 49 minutesbuild command that we have here is no longer going to be making use of ts as we no longer have this package. But now we do have the tsd down package.
2:49:092 hours, 49 minutes, 9 secondsSo the build now is no longer tupp. It's going to be TS down like this. And how about the dev package? So over here for
2:49:172 hours, 49 minutes, 17 secondsthe dev, we're going to make use of ts down. I want to run this in d-watch. So run this in watch mode. That's pretty
2:49:262 hours, 49 minutes, 26 secondsmuch it. That's everything that we need to do here in the TS in the packet.json.
2:49:312 hours, 49 minutes, 31 secondsNow we're going to have a configuration file for TS down. Now this was not required initially when we making of
2:49:392 hours, 49 minutes, 39 secondsTSC. But now that we're making of TS down, we need to have the config file.
2:49:452 hours, 49 minutes, 45 secondsSo right here, still inside superv, we're going to create a new file. And this new file is going to be the tsd down.config.ts
2:49:542 hours, 49 minutes, 54 secondsfile. All right. So let's have the configuration. I'm just going to collapse this. We're going to start by importing the define config. Define
2:50:022 hours, 50 minutes, 2 secondsconfig is going to be brought in from TS down package.
2:50:072 hours, 50 minutes, 7 secondsAnd then we can also go on to export the default define config configuration which is going to take in the entry point. The entry point is the source and
2:50:152 hours, 50 minutes, 15 secondsthe index.ts file which we do not have yet. The format is going to be CJS and also ECMAS script ESM. We're also going
2:50:232 hours, 50 minutes, 23 secondsto have the DTS which is going to be true. We're also going to say clean true. The source map is going to be true and we also need the minify which you're
2:50:302 hours, 50 minutes, 30 secondsgoing to set to false. So let's go on and save this. Let's see if we have a tsconfig.json.
2:50:372 hours, 50 minutes, 37 secondsWe do not have a tsconfig.json. So, we're going to set up a tsconfig for JSON for superv/js.
2:50:452 hours, 50 minutes, 45 secondsSo, let's do that. In here, we're going to be creating a new file. And the new file we're going to be creating here is a tsconfig.json
2:50:532 hours, 50 minutes, 53 secondsfile like this. Now, over here, let's have the configuration starting with the compiler options. The compiler options is going to have the target of ES 2020.
2:51:042 hours, 51 minutes, 4 secondsAnd then the module we're going to make use of is the ES next module. We're also going to have the module resolution to
2:51:112 hours, 51 minutes, 11 secondsbe bundler. We are going to set true sorry strict strict to true. We're also going to have the ES module inter
2:51:192 hours, 51 minutes, 19 secondsoperation which is going to be set to true. We also want to skip the lip check which is set to true. And the declaration is also going to be set to
2:51:282 hours, 51 minutes, 28 secondstrue. and the output is going to be set to the distribution folder. And we also want to go and include the source folder like this.
2:51:382 hours, 51 minutes, 38 secondsNow that we have done all of this, let's just make sure that all our packages are linked together. I'm going to close this and also close this. I'll still leave
2:51:462 hours, 51 minutes, 46 secondsthe package.json file open. And I want to cd outside the superv package. And I also want to cd outside the apps
2:51:542 hours, 51 minutes, 54 secondspackage. And I want to be in the super votejs which which is not in superv sorry I want to cd out here like this.
2:52:012 hours, 52 minutes, 1 secondAnd I want to cd out here like this.
2:52:032 hours, 52 minutes, 3 secondsSorry I forgot the cd command. Yeah. So that's why it didn't work. So I want to cd like this just like this. Change
2:52:112 hours, 52 minutes, 11 secondsdirectory. Now I'm in super vault here which is this. And over here we can run the pmppm install command just to make sure everything is linked together.
2:52:222 hours, 52 minutes, 22 secondsSo now everything is linked. If you come over here, you can see we have some deprecation and it has done resolved, three views, zero downloaded, zero added like this.
2:52:322 hours, 52 minutes, 32 secondsSo now everything is done and everything is okay. The next step is for us to have our DB module so that we can have the query builder. Now we're going to be
2:52:412 hours, 52 minutes, 41 secondsworking on the query builder next. Okay, so we are making progress. Now is the time where we're going to build our different modules. So we start with the
2:52:492 hours, 52 minutes, 49 secondsquery view builder and after the query builder we also have the real time module we're also going to have the storage module. So yeah so we actually
2:52:572 hours, 52 minutes, 57 secondshave a lot to do and let's continue. So what's going to happen is we are going to be doing this still inside the packages the super vult package cuz that's where we're going to be doing the
2:53:062 hours, 53 minutes, 6 secondswork. We're not going to be doing it in the API. We already have the API built out. So in the super volt package we are going to be creating in the source
2:53:132 hours, 53 minutes, 13 secondsfolder the DB. So we can see here these are the different packages. We are then going to have the query builder.ts.
2:53:212 hours, 53 minutes, 21 secondsSo let's have the query hyphen builder ts file. Now this query builder let's go and have the definition. So be with me.
2:53:312 hours, 53 minutes, 31 secondsIt's quite all right. So let's go. We're going to be exporting the type of HTTP module method. Sorry, it could be a get,
2:53:392 hours, 53 minutes, 39 secondsa post, a patch or a delete method. Then let's have the filter clause. This filter clause is an interface and it's going to look like this. is going to
2:53:482 hours, 53 minutes, 48 secondshave the column which is a string, the operator which is a string and the value which is a string.
2:53:542 hours, 53 minutes, 54 secondsNow each query will have a result. So we're going to export the interface for the query result which is a type script like this like a generic type. So the
2:54:032 hours, 54 minutes, 3 secondsdata is going to be t or null and you could have an error which is a string or null. Now let's have the query build that we're going to expose to the user.
2:54:122 hours, 54 minutes, 12 secondsIt's going to take in this T. This T is going to be an object which the value the key is a string the value is unknown. We can have different private
2:54:202 hours, 54 minutes, 20 secondsmethods. So the method here is going to be HTTP method which is going to be equal to get also the body here is going to be the record the string key and the
2:54:302 hours, 54 minutes, 30 secondsvalue unknown or it could be null and we initialize it to null. Same for the filters. The filters could be a list or
2:54:372 hours, 54 minutes, 37 secondsfilter clause or it could be an empty list. We can have the select columns which could be of type string array or
2:54:442 hours, 54 minutes, 44 secondsit could be an empty array. We also have the order columns which could be string or null and we're going to initialize it to null. And the order direction could
2:54:532 hours, 54 minutes, 53 secondsbe ascending. So you want to filter by let's say order by ascending or descending. We're going to have the default to be ascending. And the limit
2:55:012 hours, 55 minutes, 1 secondvalue is going to be of type number or null. And we're going to initialize this to null. And the private offset value is
2:55:092 hours, 55 minutes, 9 secondsalso going to be of type number or null which we initialize to null.
2:55:142 hours, 55 minutes, 14 secondsNow in the query builder constructor, we're going to have the project URL. And the project URL is going to be equals to the of type string. We're also going to have the table which is of type string.
2:55:252 hours, 55 minutes, 25 secondsAnd we're going to have the API key which is of type string. Now let's have select. Select is going to need the columns which are going to initialize to
2:55:342 hours, 55 minutes, 34 secondsstar if nothing is specified and then this is going to return this. So we call this select columns and the columns if
2:55:412 hours, 55 minutes, 41 secondsit's equals to star we return empty array otherwise we're going to split this by comma so that we can chain this.
2:55:482 hours, 55 minutes, 48 secondsSo we call each column and we trim this and going to return this. This is just the same pattern we use for others.
2:55:542 hours, 55 minutes, 54 secondsWe're also going to use the same pattern for equals. We're going to take the column of type string and the value which is unknown. We're going to call
2:56:022 hours, 56 minutes, 2 secondsfilters. So we want to push into filter the column the operator and the value like this. And here we're going to then return this.
2:56:122 hours, 56 minutes, 12 secondsThe same for not equals. So these are the commands that the user is going to chain.
2:56:182 hours, 56 minutes, 18 secondsAnd not equals we're going to call this dot filters dot push. We want to push the column. want to push the operator
2:56:252 hours, 56 minutes, 25 secondsand the value which we're also going to cast to string and return this. We need the same for GT which is greater than.
2:56:332 hours, 56 minutes, 33 secondsSo we're going to have greater than here and this method is going to take in the column and the value is going to return this and then we're going to call this
2:56:422 hours, 56 minutes, 42 secondsdot filters push. When we push the column, the operator which we're going to have to be greater than and the value
2:56:492 hours, 56 minutes, 49 secondsis going to be the value that we cast to string and we can go on to return this.
2:56:532 hours, 56 minutes, 53 secondsThe fact that you're returning this means that the user can go on to chain multiple commands. So we have greater than or equals to we have the column the
2:57:022 hours, 57 minutes, 2 secondsvalue and then we are returning this. So we just call this filters and we push and we push the column the operator
2:57:102 hours, 57 minutes, 10 secondswhich is greater than or equals and then the value which is the string value like this and we're going to return this.
2:57:182 hours, 57 minutes, 18 secondsLet's [snorts] also have less than. So we call it lt and we have the column which is of type string and the value which is unknown. We are returning this.
2:57:272 hours, 57 minutes, 27 secondsSo we call this field test.push. We push the column the operator and we're also going to push LTE LT sorry which is the
2:57:362 hours, 57 minutes, 36 secondsoperator here and we're going to return this. Next we have LTE that's where the confusion came in. We have column which is of type string the value of type
2:57:452 hours, 57 minutes, 45 secondsunknown. We're returning this and it's pretty much the same. So we're going to call this filters push. We're going to push the column the operator which is
2:57:542 hours, 57 minutes, 54 secondsLTE and the value. We also want to give the users this comparison like like and I like like is. So after LTE we're going
2:58:032 hours, 58 minutes, 3 secondsto have like like is going to need a column and the pattern and we're going to return this. So we just call this filters and we want to push into the filters the column.
2:58:152 hours, 58 minutes, 15 secondsWe're also going to push the operator which is like and the value which is pattern and return this. Now I like is
2:58:232 hours, 58 minutes, 23 secondspretty much the same but we're going to have a column and we also need a pattern and we're going to be returning the value of this.
2:58:322 hours, 58 minutes, 32 secondsSo we can call this filters dopush.
2:58:352 hours, 58 minutes, 35 secondsWe're going to push the column the operator which is I like and the value which is the pattern. We also need is.
2:58:432 hours, 58 minutes, 43 secondsSo [snorts] let's have is over here. Now is is going to take the column which is of type string. We're also going to have the value which is null and we're also
2:58:522 hours, 58 minutes, 52 secondsgoing all not null and then we're going to return this. Now this is going to then return the filters push the column
2:59:002 hours, 59 minutesthe operator which is is operator. We're also then going to check the value. We want to check because the value could be null or not null. So if the value is
2:59:082 hours, 59 minutes, 8 secondsnull then we're going to have null otherwise we're going to have not null. And finally we can go on to return this.
2:59:142 hours, 59 minutes, 14 secondsWe also want to support other operations. So we're going to have order and order is pretty much the same. So it takes in the column the direction you
2:59:232 hours, 59 minutes, 23 secondswant to order. Is it ascending or descending? We're going to default to ascending. And we can call this dot order column is going to be equals to
2:59:312 hours, 59 minutes, 31 secondscolumn. And we say this dot order direction is going to be equals to the direction that this order method will receive. And we can finally return this.
2:59:402 hours, 59 minutes, 40 secondsNow we also want to have limit. So you want to limit your results by a certain number. And then we're going to say this limit value is going to be equals to the
2:59:482 hours, 59 minutes, 48 secondsnumber that this method receives. And we can go on to return this also the same for offset. So offset is going to take
2:59:552 hours, 59 minutes, 55 secondsin the number and we can call this offset value is going to be equals to the number and we return this.
3:00:043 hours, 4 secondsThe same happens for insert. Insert takes in the data object. So the key and the value and it returns this. And we
3:00:113 hours, 11 secondscan say hey this do method is going to be equals to post because we are inserting this body is then going to be
3:00:183 hours, 18 secondsequals to data which is the data want to insert and we can return this also for updates we can have the data which is
3:00:263 hours, 26 secondsgoing to be a record which means an object and we're going to return this.
3:00:303 hours, 30 secondsSo the method now is going to be patch because we support patch operations and then we can call this dobody is going to be equals to the data and we can return
3:00:403 hours, 40 secondsthis. Now how about delete? Delete is going to take the value of this and you can call this do method is going to be
3:00:473 hours, 47 secondsequals to delete and we can also return this. Now this is pretty much it but we also need this private get ro ID for
3:00:543 hours, 54 secondsmutation. This is going to take in the string and we can have the ID filter.
3:00:593 hours, 59 secondsThe ID filter is going to be this filters.find so that we can find each filter and we want to return the filter
3:01:073 hours, 1 minute, 7 secondscolumn equals to id and we want to also have the f dot operator which is the filter operator that is equals to equals.
3:01:173 hours, 1 minute, 17 secondsIf we did not find the filter ID, then let's throw a new error because update and delete is going to require a filter
3:01:243 hours, 1 minute, 24 secondslike the equals to ID and also the RO ID before we can go on to execute. And finally, if everything is okay, we want
3:01:323 hours, 1 minute, 32 secondsto return the value. So, we're going to be returning the ID filter value. Now, let's have this private method again to
3:01:403 hours, 1 minute, 40 secondsbuild the URL. Building URL is going to need or return a string. So, we're going to need the base. The base is going to
3:01:473 hours, 1 minute, 47 secondsbe this project URL / rest and then the table. Okay. And then let's check the method. So if the method is equals to
3:01:563 hours, 1 minute, 56 secondspatch or if this do method is equals to delete, then we're going to return this here this string with the base URL for/
3:02:053 hours, 2 minutes, 5 secondsthis get the id for mutation which is this over here.
3:02:113 hours, 2 minutes, 11 secondsNow we're going to also construct the params. So the params is going to be equals to the URL search params like this. And then we're going to say if
3:02:193 hours, 2 minutes, 19 secondsthis do select columns.length if this is equals to zero then let's have params attached here. So we're going to say the
3:02:273 hours, 2 minutes, 27 secondsparams set select param and the value is going to be this select columns dojo join with a comma like this. Now we can
3:02:363 hours, 2 minutes, 36 secondsmap through the different filters that we have. So we can say con column operator. So we're destructuring this
3:02:423 hours, 2 minutes, 42 secondsand value of this filters and this here we're going to set the params. So params set the column the operator dot the value.
3:02:533 hours, 2 minutes, 53 secondsNow the next thing we're going to do is to also have the order column. So we say if this doer column let's call the params set. We're going to set order and
3:03:023 hours, 3 minutes, 2 secondsthe value of the params is going to be this doorder columns do this the other direction.
3:03:083 hours, 3 minutes, 8 secondsSo we're trying to have our query builder here with the query builder URL.
3:03:123 hours, 3 minutes, 12 secondsWe're going to do the same for the limit. We say if the limit is not equals to null, that means user is actually trying to set a limit. So we're going to
3:03:203 hours, 3 minutes, 20 secondshave the string to the value. And we can also do the same for the offset value.
3:03:263 hours, 3 minutes, 26 secondsSo we check if the offset value is not equals to null. We set to the params the string of offset and the value is going to be the string of the offset value.
3:03:343 hours, 3 minutes, 34 secondsAnd finally, we can have the query which is going to be equals to the params dot to string. And then we're going to return the query. If we do have a query,
3:03:423 hours, 3 minutes, 42 secondsthen let's return this base with the query. Otherwise, we're just going to return the base. Now, we also need to execute. Now, execute is going to return
3:03:513 hours, 3 minutes, 51 secondsa promise that is going to result to the query result. And the query result is a generic type like T or it could be the type array like this. So, in the try
3:04:003 hours, 4 minutesblock, let's have our response. Now, we're going to await fetch. and fetch is going to then make a request to the build URL. And then we're going to have
3:04:083 hours, 4 minutes, 8 secondsthe method which is going to be this do method. The headers is going to be the authorization the beer and then the API
3:04:153 hours, 4 minutes, 15 secondskey in the headers. We need to add that else it's going to fail. And then the content type is going to be the application/json.
3:04:263 hours, 4 minutes, 26 secondsNow for the body we're going to either have the body or undefined. So for that we're going to say this body if this is
3:04:343 hours, 4 minutes, 34 secondsavailable then let's JSON stringify this body. Remember we're making a fetch otherwise we have undefined.
3:04:403 hours, 4 minutes, 40 secondsNow if rest okay is false then we're going to have an error. So we say con error is going to be awaiting the
3:04:483 hours, 4 minutes, 48 secondsresponse.json and then we can call catch and then want to return the empty object like this as this object is going to
3:04:553 hours, 4 minutes, 55 secondshave the message which is optional string like this. And then finally we can go on to return this object. This object is going to have data to be null
3:05:043 hours, 5 minutes, 4 secondsand the error is going to be the error dossage. Otherwise if we do not have error the message we're going to have the HTTP which is the error dot response status.
3:05:143 hours, 5 minutes, 14 secondsNow if the response or status is 20 or four then we're going to return data null and then we're also going to return
3:05:223 hours, 5 minutes, 22 secondserror null and we're going to say cons the data is going to then be awaiting the response of JSON which we're going
3:05:293 hours, 5 minutes, 29 secondsto cast to T or T array and finally we can then return the data and the error is going to be null. Now in case
3:05:373 hours, 5 minutes, 37 secondssomething goes wrong in the catch block let's have the message.
3:05:423 hours, 5 minutes, 42 secondsThe message here is going to be first we're going to check if the error is an instance of error. Then we're going to go with the error message. Otherwise
3:05:503 hours, 5 minutes, 50 secondswe'll go with with a network error. And we're going to return data null because it's an error. And then the error is going to be the message here.
3:05:593 hours, 5 minutes, 59 secondsAnd then we're going to have this block here. And this block is going to take the T result one is going to be equals to the query result which is the generic
3:06:073 hours, 6 minutes, 7 secondstype of T or T array. And the t result two is going to be also of type equals to never like this. And we can say
3:06:143 hours, 6 minutes, 14 secondsunfulfilled. We're going to have this function which is going to take the value and it's going to be of type the query result which returns the t results
3:06:223 hours, 6 minutes, 22 secondsone or the promise like or t result one like this or it could be null. Now, how about unrejected? Is still this function
3:06:303 hours, 6 minutes, 30 secondshere that is going to have the reason unknown and then it's going to return the T result two which is promise like the T result two or it could be null and
3:06:403 hours, 6 minutes, 40 secondsthen we're going to have here the promise that's going to return and then it could be returning either T result one or T result two and finally we can
3:06:473 hours, 6 minutes, 47 secondsgo on to return this.execute and on then we want to have unfulfilled and then unrejected in case something goes wrong.
3:06:563 hours, 6 minutes, 56 secondsNow this is a whole lot of code for the query builder and it might take some time for you to study and understand what is going on here. So if you've gone
3:07:043 hours, 7 minutes, 4 secondsthrough this and you feel comfortable the next step now is for us to have the index.ts file. So we're going to have this index.ts file and the idea is for us to export what we have written here.
3:07:153 hours, 7 minutes, 15 secondsSo we're going to come over here and in the DB we're going to be creating a new file. Now this new file is going to be the index.ts file and I'm going to collapse this here.
3:07:253 hours, 7 minutes, 25 secondsSo in here, let's get started. We're going to start by importing the query builder that we just created which will come from one level up the query builder
3:07:333 hours, 7 minutes, 33 secondsfile and then we're going to export the class which will call the super vote DB.
3:07:383 hours, 7 minutes, 38 secondsNow this class is going to have the constructor where we're going to initialize the project URL. So whenever user wants to make use or initialize
3:07:463 hours, 7 minutes, 46 secondssuper DB, they need to press in pass in the project area and the API key which is both of type string. And now we're
3:07:533 hours, 7 minutes, 53 secondsgoing to have this from and this from is going to be this generic type or the T over here which is an object like this.
3:07:593 hours, 7 minutes, 59 secondsSo we're going to have the table and then we're going to return the query builder T like this. So it's going to then return a new query builder which is
3:08:073 hours, 8 minutes, 7 secondsstill this T generic type and we can call this project URL the table and the API key. And finally we can then go on
3:08:153 hours, 8 minutes, 15 secondsto export the query builder which will come from one level up the query builder. And let's also export the type the type of query result which is going
3:08:243 hours, 8 minutes, 24 secondsto come from one level up the query builder. All right. So we need to do the same.
3:08:303 hours, 8 minutes, 30 secondsWe're going to do the same for the real time. But the real time we're just going to simplify it a little bit. We're going to write it all in the index.ts and
3:08:383 hours, 8 minutes, 38 secondswe're going to do the same for the storage and also the authentication module. So let's continue. I'll see you uh in the next video where we're going
3:08:473 hours, 8 minutes, 47 secondsto continue by building on the real time module. So let's close all these tabs that we do have open. And now we're going to be creating a new file because
3:08:553 hours, 8 minutes, 55 secondswe're going to be working on the real time module. So you want to collapse this. And this is then going to be inside the real time. And here we just
3:09:033 hours, 9 minutes, 3 secondsneed the index.ts. And I think we can work on the real time and also the storage module together. So let's start.
3:09:113 hours, 9 minutes, 11 secondsWe're going to start by importing IO and also we're going to also import type and the type of socket is going to come from
3:09:193 hours, 9 minutes, 19 secondssocket io client that we installed. And then the real time event is going to be coming in from our supervolt constant.
3:09:253 hours, 9 minutes, 25 secondsSo remember that. Yeah. And then we also need the type. So we're going to be importing the type as well. The type now
3:09:323 hours, 9 minutes, 32 secondsis going to come from the super vote types. So this is the real time event type. Now after this let's have the real
3:09:403 hours, 9 minutes, 40 secondstime call back. Now we're going to export a type. The real time call back is going to be this function that takes in the event which is of type the real
3:09:493 hours, 9 minutes, 49 secondstime event and returns void. Now let's have this function to get the real time socket URL. So we're going to have the
3:09:563 hours, 9 minutes, 56 secondsproject URL of type string is going to return a string and we can get the origin by having this new URL which
3:10:033 hours, 10 minutes, 3 secondstakes in the project URL origin. And then we can go on to return the origin realtime because NexJS gateway name
3:10:113 hours, 10 minutes, 11 secondsspace is /realtime on the API host. So remember that is not under/ API. I actually explained this previously.
3:10:193 hours, 10 minutes, 19 secondsSo we're going to return the origin and /real time like this. So let's export the class the superv realtime class.
3:10:273 hours, 10 minutes, 27 secondsInside this class, we're going to have the private socket which is going to be of type socket or null. And by default, we're going to have it to be null. And
3:10:363 hours, 10 minutes, 36 secondsalso the private callbacks is going to be a new map. And this map is going to be the string. And the value is going to be a set where we have the realtime call
3:10:443 hours, 10 minutes, 44 secondsback like this. And in the constructor, we're going to have the private project URL which is of type string. And also
3:10:523 hours, 10 minutes, 52 secondswe're going to have the private API key which is of type string. Now let's have the connect method over here. We're
3:10:593 hours, 10 minutes, 59 secondsgoing to have this private connect which is going to return the sockets connection and we're going to check if this connected then let's go and return this socket.
3:11:103 hours, 11 minutes, 10 secondsIf it's not connected then we're going to call this.socket.on connect. Then we have the callback function and before that we're going to
3:11:183 hours, 11 minutes, 18 secondshave the project URL in the get realtime socket URL and the configuration is the O so that we can have the token which is
3:11:253 hours, 11 minutes, 25 secondsgoing to be this API key and the transport is going to be this list that we have websocket or pooling.
3:11:323 hours, 11 minutes, 32 secondsNow finally we can have the on connect.
3:11:353 hours, 11 minutes, 35 secondsSo we're going to call this on on what on connect we're going to have the callback function and we're going to
3:11:423 hours, 11 minutes, 42 secondscheck the table. So we we can say const table of this docallbacks keys over here. Now we're going to call this
3:11:503 hours, 11 minutes, 50 secondsdossocket do emit want to emit the real time subscribe on the table. We're going to pass the table here. We're also going
3:11:583 hours, 11 minutes, 58 secondsto have the event now. So we're going to say this on on the realtime_events
3:12:063 hours, 12 minutes, 6 secondson the doe event. We're going to have the real time which is the real time event like this. Let's have the handlers. So const handlers is going to
3:12:153 hours, 12 minutes, 15 secondsbe equals to this doc callbacks.get we're going to have the event table and we can call the handlers do for each
3:12:233 hours, 12 minutes, 23 secondshandler. We have the call back and we're going to return the call back and the event. We're also going to say this.et
3:12:303 hours, 12 minutes, 30 secondson the realtime event. We're going to have the call back which has the message of type string and we're going to block
3:12:373 hours, 12 minutes, 37 secondsto the console. So we say console error that the supervote JS has a realtime error. I want to just log the message
3:12:453 hours, 12 minutes, 45 secondsover here. Now finally we can go on to return in the connect method this.
3:12:523 hours, 12 minutes, 52 secondsNow we're going to have the subscribe method as well. The subscribe is going to take in the table of type string and also the call back which is going to be
3:13:003 hours, 13 minutesof type realtime call back and it's going to return an fun a function that returns void. So we say this socket is
3:13:073 hours, 13 minutes, 7 secondsgoing to be equals to this.connect and we're going to say if this callbacks has table then we're just going to call this
3:13:163 hours, 13 minutes, 16 secondscallbacks set table to a new set like this and then we can go on to emit the realtime event.subscribe.
3:13:243 hours, 13 minutes, 24 secondsSo we say socket emit the realtime eventscribe on that specific table. We can also say this callbacks.get get
3:13:323 hours, 13 minutes, 32 secondswe're going to pass in the table and we're going to say hey we always have this table do add the call back and we're going to be returning the function
3:13:413 hours, 13 minutes, 41 secondsremember it returns void that calls this unsubscribe the table as well as the call back.
3:13:483 hours, 13 minutes, 48 secondsNow for the unsubscribe method we have the table and we also have the optional call back and the call back is of type
3:13:553 hours, 13 minutes, 55 secondsrealtime call back like this and it returns void. So if we do not have any call back, we're just going to call this callbacks.delete where we're going to
3:14:043 hours, 14 minutes, 4 secondspass in the table and we're going to say this.
3:14:083 hours, 14 minutes, 8 secondsWe're going to be emitting the realtime events.cribe on this specific table and then we can go on to return.
3:14:163 hours, 14 minutes, 16 secondsLet's also have the handlers. We're going to say con handlers and handlers is going to be equals to this callbacks.get get the table and we're
3:14:253 hours, 14 minutes, 25 secondsgoing to say if we do not have any handlers then we're going to return. And now we can also call handlers.delete.
3:14:323 hours, 14 minutes, 32 secondsWe're going to delete the call back.
3:14:343 hours, 14 minutes, 34 secondsLet's also check the size. If handlers do size is equals to zero then we're going to call this callbacks.delete and we're going to pass in the table.
3:14:453 hours, 14 minutes, 45 secondsWe're also going to say this. emit.
3:14:483 hours, 14 minutes, 48 secondsWe're going to emit the real time_event unsubscribe on this specific table. And finally, we're going to have the
3:14:563 hours, 14 minutes, 56 secondsdisconnect method. And disconnect method is just going to return void. So, it's just for cleanup. So, we call this
3:15:033 hours, 15 minutes, 3 secondsdisisconnect like this. And we can say this.
3:15:083 hours, 15 minutes, 8 secondsAnd this callbacks we are going to clear the callbacks there.
3:15:123 hours, 15 minutes, 12 secondsOkay. So now we have done all of this. I think we can continue. I think we can quickly have the storage index.ts.
3:15:203 hours, 15 minutes, 20 secondsSo over here we're going to come over to storage and in storage let's have the index.ts file.
3:15:283 hours, 15 minutes, 28 secondsNow storage is going to have the we're going to be exporting this. This is going to be a class with the storage bucket reference and in the constructor
3:15:363 hours, 15 minutes, 36 secondswe're going to have the project URL initialized. We're also going to initialize the API key and the bucket name.
3:15:463 hours, 15 minutes, 46 secondsSo let's have the different methods. The first method is going to be for upload.
3:15:503 hours, 15 minutes, 50 secondsOkay, let's be done with the bucket name.
3:15:543 hours, 15 minutes, 54 secondsAnd actually after the bucket name, we need to make a change. This change is going to accommodate for this SDK that we are currently building. And we have
3:16:033 hours, 16 minutes, 3 secondssome features that we do not have currently in the service. And also we need to create the project scoped controller. Now let me walk you through
3:16:113 hours, 16 minutes, 11 secondsthat. We're going to make a change in the API. And inside the API, we want to come over to the source and to the storage that we created last time out.
3:16:193 hours, 16 minutes, 19 secondsAnd over here in the storage, we want to locate the storage service.
3:16:243 hours, 16 minutes, 24 secondsIn here, just as we have the save object, the get object, we have all these methods here. We're going to be adding two new method. Now, this is
3:16:323 hours, 16 minutes, 32 secondsgoing to help us to assert the project log and also to get the bucket by name.
3:16:373 hours, 16 minutes, 37 secondsAnd what we're going to do is somewhere around here, we're going to add this two. So I'm going to expand this and the first one we're going to have is going
3:16:443 hours, 16 minutes, 44 secondsto reuse the project URL but we want to go on and check for the storage routes.
3:16:493 hours, 16 minutes, 49 secondsSo here we're going to have this async assert project log and this is going to take in the project ID and also the project log and it's going to return a promise that resolves to void.
3:17:013 hours, 17 minutes, 1 secondThen we can say con project is going to be equals to await this.o Rizo db and we want to select the slug which is going
3:17:093 hours, 17 minutes, 9 secondsto match the project. slugg and this is going to come from the projects table and we want to have this wear clause
3:17:173 hours, 17 minutes, 17 secondswhere equals the project id is matching the project ID that this function receives and we can go on to limit our result by one. If we're not able to get
3:17:263 hours, 17 minutes, 26 secondsa project, then we can throw a new not found exception that is going to say, hey, this project is not found. But if
3:17:343 hours, 17 minutes, 34 secondswe find the project, then let's check if the project.log doesn't match the project log that we have here, then we can go on to throw a new forbidden
3:17:433 hours, 17 minutes, 43 secondsexception that the API key does not match this project URL.
3:17:503 hours, 17 minutes, 50 secondsNow, we're going to have another function and this function is going to be the get bucket by name function. All right, so I'm going to fix this in a
3:17:573 hours, 17 minutes, 57 secondsmoment and this is going to take in the project ID and the bucket name. Now, we're going to look up a bucket by name plus project which is going to be used by the SDK routes. We are with this. DB.
3:18:103 hours, 18 minutes, 10 secondsWe're going to select everything and this is going to come from the storage bucket and the wear clause here. We're going to have where and equals the
3:18:193 hours, 18 minutes, 19 secondsstorage bucket. ID is matching the project ID.
3:18:253 hours, 18 minutes, 25 secondsWe're also going to have another equals here where the storage bucket.name is matching the bucket name. We also want to make sure we limit our result by one.
3:18:353 hours, 18 minutes, 35 secondsNow, if for some reason we do not find any bucket, we're going to throw a new not found exception which is going to say we are not able to find a bucket.
3:18:443 hours, 18 minutes, 44 secondsSo, bucket not found. But if we do find the bucket, we can then go on to return that actual storage bucket.
3:18:513 hours, 18 minutes, 51 secondsNow I'm going to fix this over here by having this async here. And you might have some errors such as the forbidden exception which needs to be imported
3:18:593 hours, 18 minutes, 59 secondsfrom nest js4/ common. Now we can save the content of this file. And we also need to create a project scopes
3:19:073 hours, 19 minutes, 7 secondscontroller. Let's do that. Let's come over here and let's create a new file.
3:19:123 hours, 19 minutes, 12 secondsNow this file is going to be this project storage.controller.ts because over here we're going to need to make use of these two methods that we
3:19:203 hours, 19 minutes, 20 secondshave here. So the assert project by slog, the assert project log and also to get project by name. So that means we
3:19:273 hours, 19 minutes, 27 secondsneed to also import the storage service here. So we're going to come here and first let's bring in all these imports from nest js common. We're going to
3:19:363 hours, 19 minutes, 36 secondsimport all also body controller. We're also going to bring in delete, get,
3:19:423 hours, 19 minutes, 42 secondsnext. We're also going to import param, the post, the request, the response, and use gats, which will come from next.js for/common.
3:19:543 hours, 19 minutes, 54 secondsWe're also going to bring in the type of next function, the request, the response, which is going to be coming in from express.
3:20:043 hours, 20 minutes, 4 secondsLet's also bring in his number and a string which will come from class validator.
3:20:113 hours, 20 minutes, 11 secondsThen let's bring in the project key rows. The project key rows is going to come from at superv/ constants and we're
3:20:183 hours, 20 minutes, 18 secondsalso going to be bringing in the create route handler. The create route handler is going to come from uploadin for/express.
3:20:283 hours, 20 minutes, 28 secondsThen [snorts] let's now bring in the storage service. We're going to be importing the storage service which is going to come from one level up to the storage service file. And then we're
3:20:373 hours, 20 minutes, 37 secondsgoing to bring in the storage handler which is going to be coming in from upload thing. All right. So we're almost there. We also need to bring in the
3:20:453 hours, 20 minutes, 45 secondsproject key guard and we're also going to bring in the type. And now we know this is going to come in from one level
3:20:523 hours, 20 minutes, 52 secondsup into the project API where we have the project key guard. And finally, we can have the forbidding exception which
3:21:003 hours, 21 minuteswill come from Nestjs common. We're also going to inline the DTO right inside this file. So let's have the class which
3:21:093 hours, 21 minutes, 9 secondsis save object DTO is going to have the name which is a string and of type string. We're also going to have the size. So we make use of is number
3:21:183 hours, 21 minutes, 18 secondsdecorator and the size is going to be of type number. We also have the type which is a string. And then we have the UT key
3:21:263 hours, 21 minutes, 26 secondswhich is the upload theme key which is also of type string. And finally the URL is also of type string.
3:21:353 hours, 21 minutes, 35 secondsSo let's have the upload thing handler.
3:21:393 hours, 21 minutes, 39 secondsThis is going to be equals to create route handler. And here we pass the router which is the storage router. Now we're going to have the controller. And
3:21:473 hours, 21 minutes, 47 secondsthis controller is the public facing storage API that is going to mirror what we have on the dashboard. So / project / project log/ storage. We're also going
3:21:563 hours, 21 minutes, 56 secondsto make use of the project key card over here. Now we can export the class the project storage controller. And here we're going to initialize in the
3:22:043 hours, 22 minutes, 4 secondsconstructor the storage service. Now we're going to have different endpoints.
3:22:103 hours, 22 minutes, 10 secondsThe first endpoint that we are going to register here first is to have this YouTube key. So this get project key and
3:22:173 hours, 22 minutes, 17 secondsit's going to take in the request and it's going to return the project key payload and here we can just have the
3:22:253 hours, 22 minutes, 25 secondsrequest project key like this. We are trying to retrieve the project key from the request. We're also going to have the assert write assess which is going
3:22:333 hours, 22 minutes, 33 secondsto take in the request and it's going to return void.
3:22:373 hours, 22 minutes, 37 secondsAnd here we're going to retrieve the role and the role is going to come from this. project get project key. We pass in the request and we're going to check
3:22:463 hours, 22 minutes, 46 secondshey if this row doesn't match the service row key then that means you're not actually um the right operations
3:22:533 hours, 22 minutes, 53 secondsonly requires the service row key. So we're going to throw this forbidden exception that shows the error to the client and something that should know
3:23:003 hours, 23 minutesthat only the service row key can go on to mutate storage. Mutate means either create, update or delete.
3:23:093 hours, 23 minutes, 9 secondsNow we're going to have the bucket over here which is /bocket/ the bucket name / object and we have the get object which is going to take in the wreck which is
3:23:173 hours, 23 minutes, 17 secondsof type request and then also we're going to retrieve the project slog from the param which is going to be attached
3:23:243 hours, 23 minutes, 24 secondsto project log and also the bucket name which is going to be attached to bucket name. So the new objects in the name
3:23:313 hours, 23 minutes, 31 secondsbucket for a project URL that's what we do with this. Now we're going to retrieve the project ID. So we're going to call
3:23:403 hours, 23 minutes, 40 secondswe're going to call the get project key and pass in the request. And once we have the project ID, we can call this
3:23:473 hours, 23 minutes, 47 secondsdot the the storage service. And we can assert the project log by passing the project ID and the project log.
3:23:563 hours, 23 minutes, 56 secondsSo from the bucket we're going to say con bucket is going to be await this story service. And we can call getbucket
3:24:033 hours, 24 minutes, 3 secondsname or get bucket by name. We pass in the project ID and the bucket name. And
3:24:103 hours, 24 minutes, 10 secondsfinally, we can go on to return this story service get object where we're going to pass the bucket ID.
3:24:203 hours, 24 minutes, 20 secondsNow, we also have this upload thing route handler that is going to be under the project URL which is going to be used by the SDK. So, here we're going to
3:24:283 hours, 24 minutes, 28 secondsit's going to be bucket the bucket name and upload. And here we're going to get get the request from the request decorator. Also the response which is of
3:24:373 hours, 24 minutes, 37 secondstype response. The same for next which is of type the next function. We're also going to retrieve from the param the
3:24:443 hours, 24 minutes, 44 secondsproject log. This project log is going to be a string. And then we're also going to be retrieving the bucket name from the param decorator. And the bucket
3:24:533 hours, 24 minutes, 53 secondsname is going to be of type string. And the function which is this handle upload function is going to return a promise
3:25:003 hours, 25 minutesthat results to void. First want to assert the right access by passing the request. And if all is good, we can then
3:25:073 hours, 25 minutes, 7 secondsgo on to get the project key by awaiting this all by calling this get project key. Now for the storage service, we can
3:25:153 hours, 25 minutes, 15 secondsawait this storage service assert project. And then we're going to pass in the project ID as well as the project log.
3:25:263 hours, 25 minutes, 26 secondsWe can also call this the storage service getbucket by name which is going to pass in the project ID and the bucket name. Now let's have the original URL.
3:25:373 hours, 25 minutes, 37 secondsSo con original URL is going to be equals to the dot URL and the query index is going to be the original URL
3:25:453 hours, 25 minutes, 45 secondsdot the index of the question mark. And once we retrieve the query index, we're going to have the query by checking if
3:25:523 hours, 25 minutes, 52 secondsthe query index is greater or equals to zero. Then we're going to call the original URL slice from the query index otherwise an empty string. And the
3:26:013 hours, 26 minutes, 1 secondrequest URL is then going to be for/ query. Also the UT handler can then get the request the response the error which
3:26:093 hours, 26 minutes, 9 secondsis unknown and the callback we can see the record URL is then going to be equals to the original URL here. And if we have any error then we can just call next and forward the error.
3:26:223 hours, 26 minutes, 22 secondsNow we have this function which is going to be like to post or to save metadata after uploading finishes. So here is
3:26:293 hours, 26 minutes, 29 secondsthis async function we call save object and it takes in the request is also going to be taken in the project log
3:26:363 hours, 26 minutes, 36 secondsfrom the param and then it's also going to be taken in the bucket name. So we say at param the bucket name is going to
3:26:443 hours, 26 minutes, 44 secondsbe stored in the bucket name variable which is of type string and finally it also takes in the body which is going to be stored in this file of type the save
3:26:533 hours, 26 minutes, 53 secondsbody dto. We're going to check the right access. So we're going to assert this um right access and then we're also going
3:27:013 hours, 27 minutes, 1 secondto call the project ID by calling this get project key. We pass in the request and then we're going to await this story
3:27:093 hours, 27 minutes, 9 secondsservice asset project slog where we pass in the project id as well as the project slug.
3:27:193 hours, 27 minutes, 19 secondsThen we also say con bucket is equals to our this story service loget bucket by name. We're going to be passing in the project ID as well as the bucket name.
3:27:313 hours, 27 minutes, 31 secondsAnd finally we can go on to return and we're going to be returning this dosstory service dots save object the bucket do ID as well as the file.
3:27:433 hours, 27 minutes, 43 secondsNow finally let's go on and delete the object by ID making use of the project key. So the path is /object/object
3:27:503 hours, 27 minutes, 50 secondsID and we have the async delete object method. This is going to be taken in direct of type request. Also at param we
3:27:583 hours, 27 minutes, 58 secondshave the project log which is going to be project log of type string. We also have the object ID. So at param object
3:28:063 hours, 28 minutes, 6 secondsid is mapping the object ID like this of type string. We can also assert the right access. So we can say this do
3:28:143 hours, 28 minutes, 14 secondsassert write assets we pass the request and we can say con the project id is going to be equals to this do get project key which takes in the request
3:28:233 hours, 28 minutes, 23 secondsand we're going to also go to await this do storage service assert projects log and the asset project log as we have
3:28:313 hours, 28 minutes, 31 secondsseen is going to take in the project ID and the project log and it's going to return this story service dot delete
3:28:393 hours, 28 minutes, 39 secondsobject and we pass in the object ID Now we have the last one which is the
3:28:463 hours, 28 minutes, 46 secondssigned URL. So this is going to make use or the SDK uses to get the signed URL.
3:28:513 hours, 28 minutes, 51 secondsSo we're going to have async get signed URL. We pass in the request which is of type w or request. And then we also have
3:28:593 hours, 28 minutes, 59 secondsthe project log which we're going to retrieve from the param. And the project log is of type string. And we also have the object ID. The object ID is going to
3:29:083 hours, 29 minutes, 8 secondsbe stored in this object ID of type string. And finally we can say cause the project id is equals to that this project key and we pass in the request.
3:29:203 hours, 29 minutes, 20 secondsFinally we can go on to await this story service do assert the projects by log which takes in the project ID as well as
3:29:293 hours, 29 minutes, 29 secondsthe project log. And to wrap it all up, we can then return this storage service get signed URL and we pass in the object ID.
3:29:413 hours, 29 minutes, 41 secondsAll right, so this is what we have going on here. Let's go and save this file.
3:29:453 hours, 29 minutes, 45 secondsThis is the controller. And as always, we know that after the controller, we are going to be having the module. So let's have the module. We already have
3:29:533 hours, 29 minutes, 53 secondsthe storage module. And in the storage module, we just need to make sure the controller is updated to have this new project storage controller we created.
3:30:023 hours, 30 minutes, 2 secondsSo here I'm just going to have this here and we're going to have the project storage controller. So project storage controller which is going to be
3:30:103 hours, 30 minutes, 10 secondsregistered here. Now this is not all because we also make use of JWT now in the O module. So we need to register it
3:30:193 hours, 30 minutes, 19 secondshere. So we're going to call the JWT module and we're going to call dot register just like this and we're going
3:30:253 hours, 30 minutes, 25 secondsto pass in the empty object here. Now in the providers we no longer only make use of the storage provider because if you
3:30:333 hours, 30 minutes, 33 secondstake a look here we are also making use of the project key card. So in case of forgotten you can come over here and you'll see the project key guard here.
3:30:423 hours, 30 minutes, 42 secondsNow I'm actually looking for the project key card guard. So this and if you come here you're going to see this in the guard and you see how this attaches the project key to the request.
3:30:523 hours, 30 minutes, 52 secondsSo I'm going to close this and that means we need to register this in the providers. So over here we're going to have the project key guard and the project key guard is going to be
3:31:013 hours, 31 minutes, 1 secondimported from the project the project key.gard.
3:31:063 hours, 31 minutes, 6 secondsNow this is everything we need. Now we're going to come back to the superv in superv package. So let's come
3:31:153 hours, 31 minutes, 15 secondsover to the package and here in spotjs you want to locate the storage and the index. Now we're going to continue creating this file before we branched
3:31:233 hours, 31 minutes, 23 secondsoff to create the service the controller and link this up in the module. Okay.
3:31:283 hours, 31 minutes, 28 secondsOkay. Okay. So let's go. Let's go. Now we're going to continue working on the storage bucket ref. But now things have changed a little bit. Okay. So we're going to start by bringing some inputs.
3:31:373 hours, 31 minutes, 37 secondsThis is still required. We're going to be expanding this and having the different methods that the client is going to use to discuss. But before then, we're going to bring in some
3:31:453 hours, 31 minutes, 45 secondsimports. Just like the generate uploader, the idea is for us to mirror the storage client upload flow. So upload thing is going to upload the
3:31:533 hours, 31 minutes, 53 secondsbites and then we're going to post the meta data of what has been uploaded over to our API. Now let's see how that's going to work. So we're going to be
3:32:013 hours, 32 minutes, 1 secondimporting the gen gen uploader which will come from at upload thing for/client. We're also going to bring in
3:32:083 hours, 32 minutes, 8 secondsthe storage object type and this type we know is going to come from supervolt for/types.
3:32:143 hours, 32 minutes, 14 secondsNow let's have the type for the storage upload router and this storage upload router is going to take in the bucket
3:32:223 hours, 32 minutes, 22 secondsuploader just as we saw previously. So it's going to take in the input of type undefined and the output is going to be
3:32:283 hours, 32 minutes, 28 secondsnull and uh then we have the result. We are going to have the export or have to export the interface the storage result
3:32:373 hours, 32 minutes, 37 secondswhich is this t generic type here and the data could be t or null. So whatever type is being passed in and the error
3:32:443 hours, 32 minutes, 44 secondscould be a string or now we're going to have the function. This function is the API fetch function which takes in the
3:32:503 hours, 32 minutes, 50 secondsURL the API key and the init which is the request in it.
3:32:553 hours, 32 minutes, 55 secondsNow we expect this API fetch to return a promise that result to the storage result generic type and we can have the
3:33:033 hours, 33 minutes, 3 secondstryat block because we're going to make use of fetch API. So the response is going to be awaiting fetch where we pass the URL and we're going to spread the
3:33:113 hours, 33 minutes, 11 secondsinit and the headers now is going to contain the authorization key and the value is going to be the beer API key.
3:33:193 hours, 33 minutes, 19 secondsWe also have the content type. Now the content type is going to be application JSON and we're going to spread the init headers as well.
3:33:293 hours, 33 minutes, 29 secondsIf this is confusing no worries as we use this you're going to see how we interact with all these that we are creating. We are creating an SDK so it's
3:33:363 hours, 33 minutes, 36 secondsnot meant to look straightforward. Now if the request okay is false then we're going to throw or have the error which we're going to await JSON and catch.
3:33:453 hours, 33 minutes, 45 secondsWe're going to return this object and we're going to say this is going to be as message with this type over here so that we can go on to return data which
3:33:543 hours, 33 minutes, 54 secondsis null and error dossage otherwise we're going to return the HTTP with the status now that's pretty much it before
3:34:013 hours, 34 minutes, 1 secondwe continue we want to go and have our data so that we can await the response JSON as this generic type and then we
3:34:093 hours, 34 minutes, 9 secondscan return the data or we can go on to return the error like this.
3:34:143 hours, 34 minutes, 14 secondsNow in the catch block if we have an error which is of type unknown we're just going to have the message and we first check here is this message an
3:34:233 hours, 34 minutes, 23 secondsinstance of error. If that's the case then we have the error dossage otherwise the network error and then we can return the object which has data null and the error which is the message.
3:34:363 hours, 34 minutes, 36 secondsNow we have all of these. We're going to make use of this in building out the storage pocket. Why do we have this error over here? because we are not
3:34:443 hours, 34 minutes, 44 secondsmaking use of it. So no worries by the time we use it the error would go. So let's continue over here in the storage bucket reference. Now this storage
3:34:523 hours, 34 minutes, 52 secondsbucket reference remember we when we creating this the next is to have or maybe not I think the next is to have the storage the base. So here private
3:35:003 hours, 35 minutesstorage base is going to return a string and con the bucket is going to be equals to the encode uri component where we
3:35:083 hours, 35 minutes, 8 secondspass in the bucket name and then we can go on to return this dot the project URL and then for/ storage the bucket and the
3:35:173 hours, 35 minutes, 17 secondsactual bucket. So this is the storage base. Now to list it we're going to have the async list which is going to return the promise that results with the
3:35:253 hours, 35 minutes, 25 secondsstorage result which is the storage object list. And then we can go on to return the API fetch which returns the
3:35:333 hours, 35 minutes, 33 secondsstorage object array and then it's going to be this storage base for/object
3:35:413 hours, 35 minutes, 41 secondsand then we can go to return this API key like this and we also have the async upload and the async upload needs the
3:35:493 hours, 35 minutes, 49 secondsactual file so it's going to return the storage object. So it's going to return a promise with the storage results which is going to have the storage object and
3:35:583 hours, 35 minutes, 58 secondsthe try block. Let's try the actual upload. So your user is in the SDK to upload. We're going to get the URL which is the storage base for/upload and the
3:36:073 hours, 36 minutes, 7 secondsupload rest the upload files is going to be called or gotten by calling our gen uploader and we're expecting the storage
3:36:163 hours, 36 minutes, 16 secondsupload router. So here the URL is going to be the upload URL. So that's the generic type of this.
3:36:253 hours, 36 minutes, 25 secondsLet's have the uploaded file. We're going to await the upload file. So we pass in the bucket uploader. So remember this is the endpoint. This is the route
3:36:333 hours, 36 minutes, 33 secondsand the files here is going to be the file array and the headers is going to be this header with the authorization key where the value is this be and then
3:36:423 hours, 36 minutes, 42 secondsthe API key. So this API key. Now the UT file is going to be equals to uploaded. So we retrieve the first element here.
3:36:503 hours, 36 minutes, 50 secondsAnd if we are not able to find or get a UT file, then we're going to return this object which is going to have data and
3:36:583 hours, 36 minutes, 58 secondsdata is going to be null and error is going to be like let's say uploaded returned no files. Now finally we can go
3:37:063 hours, 37 minutes, 6 secondson to return the API fetch. So we're returning the result which is the storage object and the path is this
3:37:143 hours, 37 minutes, 14 secondsstorage base for/object. We're going to pass in the API key and then the remember the init. So we're going to be
3:37:213 hours, 37 minutes, 21 secondsspreading out the method which is post and also the body which we're going to call JSON.stringify.
3:37:283 hours, 37 minutes, 28 secondsSo we can have the name which is the UTF file name. We also have the size which is the UTF file size. We also have the
3:37:363 hours, 37 minutes, 36 secondstype and the type here is the UTFT the file type. And then we have the
3:37:433 hours, 37 minutes, 43 secondsapplication. Stream like this. And we also have the UT key which is the UT file key. And finally we have the URL which is the UT file URL.
3:37:543 hours, 37 minutes, 54 secondsSo finally we're going to have the catch block. And as always in the catch block we're going to have the error and we're going to check the error. We say con
3:38:033 hours, 38 minutes, 3 secondsmessage is going to be equals to the error. If that is instance of error. If that is true then we have the error dot message. Otherwise we're going to say
3:38:123 hours, 38 minutes, 12 secondsupload failed. And we can go on to return data. Data is going to be null in case of error. And then we're going to have the error which is this message.
3:38:223 hours, 38 minutes, 22 secondsOkay. So we're almost there. We have the remove which is straightforward. Remove is just going to take in the object ID and it's going to return a promise that
3:38:293 hours, 38 minutes, 29 secondsresult to the storage result which is going to have the message of type string.
3:38:353 hours, 38 minutes, 35 secondsSo we're just going to quickly return the API fetch which we're expecting the message of type string and we're going to pass a path. So the path is this.p
3:38:443 hours, 38 minutes, 44 secondsproject URL/ storage/object/object id and then we return this. We're going
3:38:513 hours, 38 minutes, 51 secondsto also attach this API key and the method is delete.
3:38:563 hours, 38 minutes, 56 secondsSo let's have the last one. The last one here is the get signed URL. to get the send URL you need to provide the object
3:39:043 hours, 39 minutes, 4 secondsID and we're going to return a promise which is this storage result and then we need the URL because that's what the
3:39:103 hours, 39 minutes, 10 secondsuser needs of type string and we're going to await the return the API fetch we pass the URL and uh this is what we
3:39:193 hours, 39 minutes, 19 secondsexpect so in here we pass in the URL which is the project URL storage/object
3:39:253 hours, 39 minutes, 25 secondsthe object id/sign URL and then this API E. Okay, so this is pretty much what we
3:39:333 hours, 39 minutes, 33 secondshave getting started here. Why do we have this error? We still have this error here. And if we hover here, you
3:39:403 hours, 39 minutes, 40 secondscannot find the module upload thing um for/client. So let's just verify if we have installed this. So in the
3:39:473 hours, 39 minutes, 47 secondspackage.json in the dependencies, no, we haven't actually. So let's run the installation. So we're going to say the
3:39:543 hours, 39 minutes, 54 secondswe're going to see the into our packages not apps into the packages and into packages. Oops. We want to go into the
3:40:033 hours, 40 minutes, 3 secondssuperv package and in here want to install upload thing. So we're going to say pmppm add upload thing like this. So let's run the installation.
3:40:143 hours, 40 minutes, 14 secondsAll right. So we're going to see this.
3:40:163 hours, 40 minutes, 16 secondsWait a moment for the installation to complete.
3:40:203 hours, 40 minutes, 20 secondsAnd once the installation completes, we should no longer have this error over here. So [snorts] just give this a moment. The error is going to resolve
3:40:283 hours, 40 minutes, 28 secondsand it does resolve. Now we have errors further down the line. So if we come over here, we have this bucket name
3:40:363 hours, 40 minutes, 36 secondsbucket name. Yeah. So we actually do have some errors here and this over here. So we have these errors. Okay. So let's fix this errors that we have here.
3:40:453 hours, 40 minutes, 45 secondsYeah. So the errors we having here is just because of the project URL also the API key and the bucket name. Okay. So
3:40:533 hours, 40 minutes, 53 secondsthat fixes it and now we are left with this error to resolve. So here what we're going to do to fix this error I think we can drop this. So let's drop this and see if we still have the error.
3:41:053 hours, 41 minutes, 5 secondsSo I'm just going to drop this and I think we are better off without it here.
3:41:103 hours, 41 minutes, 10 secondsLike this. Let me confirm if we have the uploaded files. Yes, we do. We have the uploaded files. the right the route registry and also the create upload all
3:41:193 hours, 41 minutes, 19 secondsthis from our gen uploader which comes from upload think line so so let's give this file a save and now [clears throat] we've saved this file I think we're just
3:41:283 hours, 41 minutes, 28 secondsmissing one more and then I'm going to show you the usage so how we expect users to go on and make use of this so let's export this class which is the
3:41:373 hours, 41 minutes, 37 secondssuper vault storage and this class is going to have the constructor the constructor is going to have the project
3:41:443 hours, 41 minutes, 44 secondsURL is also going to take in the API key. So we want users to use the spot storage like this. And then we are going
3:41:513 hours, 41 minutes, 51 secondsto then we say from from the bucket name we're going to have which is of type string is going to be of type this
3:41:593 hours, 41 minutes, 59 secondsstorage bucket reference and then we're going to return a new storage bucket reference by passing in the project URL
3:42:073 hours, 42 minutes, 7 secondsthe API key and the bucket name. So how will users be able to use super vote storage? Now it's actually
3:42:153 hours, 42 minutes, 15 secondsstraightforward if you think about it because here we're going to say con bucket just to give you an idea. So con bucket and bucket is going to be equals
3:42:243 hours, 42 minutes, 24 secondsto the super vote super vote like this you know we are testing this out but this is the idea super vote for/ storage
3:42:323 hours, 42 minutes, 32 secondsand then we can say from this from that we do have here and from what does from need from needs the bucket name so let's
3:42:413 hours, 42 minutes, 41 secondssay they created a bucket like um test bucket as we created in the front end so from test bucket just like this Now
3:42:503 hours, 42 minutes, 50 secondsthey're going to have access to the bucket and then they can call methods that we have listed here. So we have this list method. We also have this
3:42:583 hours, 42 minutes, 58 secondsupload method. We also have this um method over here which is this remove method. We also have the get signed URL.
3:43:073 hours, 43 minutes, 7 secondsSo they could come here and say something like con this is going to then be equals to await and then they can
3:43:143 hours, 43 minutes, 14 secondsawait bucket.list.
3:43:193 hours, 43 minutes, 19 secondsNow we do not get TypeScript auto completion but this is how users can use it and here they can get data and data they can rename to files. All right so
3:43:273 hours, 43 minutes, 27 secondsI'm just going to comment this out and we're going to see this or you know see it when we need it. All right so now we're going to wrap things up because we
3:43:353 hours, 43 minutes, 35 secondsneed the authentication module which is the module I think that's the only module left. Yep. So that's the only module we have left. The authentication
3:43:433 hours, 43 minutes, 43 secondsmodule is the module we are going to be creating next. Okay. Okay, so this is going to be a very quick one for the authentication because we do not have
3:43:523 hours, 43 minutes, 52 secondsauthentication. If you check our apps, the API, we did not have authentication done yet. We had real time, we had storage. Yeah. So it was kind of, you
3:44:003 hours, 44 minutesknow, we had database. It was kind of easy for us to work on this. But once we do have authentication, we can go on to work on all. But for now, I'm just going
3:44:083 hours, 44 minutes, 8 secondsto have the index.ts file. And in here, we're just going to have placeholders. So the placeholders here is going to be straightforward.
3:44:163 hours, 44 minutes, 16 secondswe're just going to have not implemented which is just going to be like the error we're going to show for all the different features. So first we're going
3:44:253 hours, 44 minutes, 25 secondsto have the class which is the purpose O and the constructor as always we need the project URL and we also need the API
3:44:333 hours, 44 minutes, 33 secondskey and then we're going to have the different methods. So the first one is the async sign up method and the async
3:44:403 hours, 44 minutes, 40 secondssignup method is going to take in the credentials. So users would you know authenticate via email and password and
3:44:493 hours, 44 minutes, 49 secondsfor the credentials we're just going to throw this error. Hey we have not implemented this yet. So we're going to throw a new error which is this not
3:44:563 hours, 44 minutes, 56 secondsimplemented error. So the idea is the same for the sign in sign in also need the credentials which is going to be of
3:45:033 hours, 45 minutes, 3 secondstype object. An object will contain the email and the password and we're also going to throw the error not
3:45:103 hours, 45 minutes, 10 secondsimplemented. Now for signing out and for getting a user, we actually do not want any arguments to the function. So sign
3:45:193 hours, 45 minutes, 19 secondsout, you just call sign out, right? So we're going to throw a new error which is going to say not implemented. I know superbase maybe you can have redirect
3:45:263 hours, 45 minutes, 26 secondsand things like that, but this is okay for our use case. Now get user as well is going to just throw for now not implemented and you want to expand on
3:45:353 hours, 45 minutes, 35 secondsthat. We're going to expand on that as we continue. So I'm going to give this file a save.
3:45:403 hours, 45 minutes, 40 secondsAnd now we're going to come over to supervoltjs here. And in the source file, we need a client.ts.
3:45:483 hours, 45 minutes, 48 secondsSo let's have our client. Our client is then going to import all of these so that we can have a super vote client that we can bundle. So we're going to
3:45:563 hours, 45 minutes, 56 secondscome over here and here we're going to have the client.ts file.
3:46:013 hours, 46 minutes, 1 secondNow in the client.ts file, we're going to start by importing bringing the import. So we're going to import supervolt DB from the DB. Also we're
3:46:093 hours, 46 minutes, 9 secondsgoing to import super volt real time which will come from real time. We also need to import the super vault storage which will come from one level up to the
3:46:183 hours, 46 minutes, 18 secondsstorage. And we also need the O which we haven't implemented yet but yet it's part of super vote package. So the O is
3:46:253 hours, 46 minutes, 25 secondsgoing to come from one level off. And now we can go on to export our class. This class is our superv client class.
3:46:333 hours, 46 minutes, 33 secondsAnd we're going to have read only. Read only the DB is going to be the type superv DB. Also read only real time is going to be of type supervolt real time.
3:46:423 hours, 46 minutes, 42 secondsAnd we also have read only storage. Read only storage is going to be of type supervolt storage. And read only is going to be of type superv.
3:46:543 hours, 46 minutes, 54 secondsAnd here in the constructor we're going to have private project URL is going to be of type string. We also have private
3:47:013 hours, 47 minutes, 1 secondthe API key is also going to be of type string. Now we can await or we can just call this db is going to be equals to
3:47:103 hours, 47 minutes, 10 secondsthe new super db where we pass in the project URL and the API key. Now this is what we're going to do for all in the
3:47:173 hours, 47 minutes, 17 secondsconstructor. This real time is going to be the new super v super vault real time and passing the project URL and the API
3:47:253 hours, 47 minutes, 25 secondskey. Same for the storage. The storage is going to be a new super vote storage which takes in the project URL and the
3:47:323 hours, 47 minutes, 32 secondsAPI key and the O is going to be super vote or the project URL and also the API
3:47:403 hours, 47 minutes, 40 secondskey. And now we're going to have from just as we see. So from this is going to be the record of string value unknown
3:47:473 hours, 47 minutes, 47 secondsand it's going to be the table here which is of type string. And we're going to return this db from that specific table.
3:47:573 hours, 47 minutes, 57 secondsSo this is our superv client. We can go on and give this file a save. Now the next thing we're going to do is to work on the superv
3:48:053 hours, 48 minutes, 5 secondsum source file and the index.ts. Now you might say why index.ts? If we take a look at the packet.json this packet.json
3:48:143 hours, 48 minutes, 14 secondshas the entry point. So let's see we have the export and the export here is having the import the require which is
3:48:223 hours, 48 minutes, 22 secondslooking for the index.js and we have the main and the main is the distribution folder which is the index.ts.
3:48:293 hours, 48 minutes, 29 secondsOkay. So I'm going to close this. And now let's have the so the index.js. So now let's go and have the index.js.ts
3:48:373 hours, 48 minutes, 37 secondsfile. In here, we're going to create a new file and that file is going to be the index.ts file. And we're just going to export everything which is going to be from the client. So, let's do that.
3:48:493 hours, 48 minutes, 49 secondsLet's come over here and we're going to be importing uh supervolt client which will come from the client and we're going to export a function. This
3:48:573 hours, 48 minutes, 57 secondsfunction is going to be the create client function that takes in the project URL as well as the API key and
3:49:043 hours, 49 minutes, 4 secondsit's going to return a type of the super vote client and we're going to return a new super vote client with the project
3:49:133 hours, 49 minutes, 13 secondsURL and the API key. Then finally we can go on to also export the super vote
3:49:193 hours, 49 minutes, 19 secondsclient and the superv client is going to come from the client. We're also going to be exporting the query builder and
3:49:273 hours, 49 minutes, 27 secondsalso the super votes DB which will come from DB. We're also going to export the type and this type is a type of query
3:49:353 hours, 49 minutes, 35 secondsresult which is going to come from one level up DB.
3:49:403 hours, 49 minutes, 40 secondsWe're also going to export the super vote real time which is going to come from one level up real time. And we're going to be exporting the type the real
3:49:493 hours, 49 minutes, 49 secondstime call back which is going to come from one level up real time. And we are going to be exporting super vote
3:49:563 hours, 49 minutes, 56 secondsstorage. Super vote storage is going to come from one level up the storage and we're going to be exporting super volt
3:50:033 hours, 50 minutes, 3 secondswhich is going to come from the o. Now the reason why we export this create client. So remember whenever you make it forbase you can say client or superbase
3:50:123 hours, 50 minutes, 12 secondsis going to be equals to you know create client we need the same functionality here and that's going to be possible by
3:50:193 hours, 50 minutes, 19 secondsthis create client which is going to be returning a new superv client and the superv client we have over here if we just come over to the client definition
3:50:283 hours, 50 minutes, 28 secondswe see is this class here where it goes on to initialize all this so the DB the real time the o and also the storage
3:50:373 hours, 50 minutes, 37 secondsOkay, so now we're going to take a moment. Once we come back, the idea is to build the SDK and let's have a demo.
3:50:443 hours, 50 minutes, 44 secondsLet's see our API work. Now, we are not publishing this to the MPM registry yet.
3:50:493 hours, 50 minutes, 49 secondsThat is left for later part of the video, but we can already test out what we have built and use it in real time.
3:50:553 hours, 50 minutes, 55 secondsNow, to build the SDK, I'm going to open this up and I'm going to clear this and I'm also going to clear all of this so
3:51:033 hours, 51 minutes, 3 secondsthat we can see this. Actually, let's take a look at the packet.json JSON because we're going to be running the build command. So here you're going to
3:51:093 hours, 51 minutes, 9 secondsmake use of TS down here. All right. So let's close this. And you want to make sure you're already inside Superbase.js.
3:51:183 hours, 51 minutes, 18 secondsSo this in the packages you want to make sure you're in here in your terminal.
3:51:223 hours, 51 minutes, 22 secondsAnd while you're in here, we are going to run the PNPM build command. So we're going to expect an output which is going to contain the index.js,
3:51:313 hours, 51 minutes, 31 secondsalso the index.mjs, and also the index. D.TS. Now, we already have an error. Okay. So, I saw
3:51:413 hours, 51 minutes, 41 secondssomething. So, I think it's the this folder with the index. CJS, but we do not need this um for our use case. So,
3:51:483 hours, 51 minutes, 48 secondswe have this error. So, let's go on and fix it. And we try the build again. We have this error here. So, yeah. So, it's
3:51:553 hours, 51 minutes, 55 secondssome import errors and some export errors. So, nothing much. Okay. So, let's fix it. This first one says the
3:52:023 hours, 52 minutes, 2 secondsrealtime event is not exported from from the types the source. So what we
3:52:093 hours, 52 minutes, 9 secondscan do um yeah so let's come over to the TS config or the touchdown config TS
3:52:173 hours, 52 minutes, 17 secondsfile. We have the entry point which is okay. We also have the format the DTS the clean true the source map which is
3:52:253 hours, 52 minutes, 25 secondstrue minify is true. Now we want it to not bundle the types. So we're going to add the deps like this and we're going
3:52:323 hours, 52 minutes, 32 secondsto tell it to never because never bundle and we're going to say at super vault like this
3:52:403 hours, 52 minutes, 40 secondsat super vote. So it needs to be in quotes at super v/
3:52:483 hours, 52 minutes, 48 secondstypes and we can save this. Now we're going to fix the output path. I think that's the next error we had. Missing
3:52:563 hours, 52 minutes, 56 secondsexport. Yeah. So let's fix this output path. We're going to come over to the supervolt packet.json.
3:53:043 hours, 53 minutes, 4 secondsAnd over here where we have the exports, we have the types. So this is okay. The disc index d.ts.
3:53:133 hours, 53 minutes, 13 secondsThis is mjs. I'm just going to change it to cjs to common js. And then this is
3:53:193 hours, 53 minutes, 19 secondsthe import. And this is require. So require is going to be CJS. No, import is going to be JS and require is going
3:53:283 hours, 53 minutes, 28 secondsto be CJS like this. Now, this looks like it's everything. Let's also verify the main entry point is the index dot
3:53:363 hours, 53 minutes, 36 secondsCJS. So, I'm going to update this, not this, not the module. So, the main entry point index.comjs.
3:53:453 hours, 53 minutes, 45 secondsAnd then we're also going to check the module. I want to make sure this is pointing to JS like this. So, save this file. And something else we can do if
3:53:543 hours, 53 minutes, 54 secondsyou check the touchdown documentation it expects TypeScript. So let's say current version six. So let's see if TypeScript
3:54:023 hours, 54 minutes, 2 secondsversion 6 TypeScript version five. Let's see if TypeScript version 6 gives us issues then we might have to
3:54:103 hours, 54 minutes, 10 secondsgo back to TypeScript version 5. But anyways let's run the PNPM build again and let's see this time around if it compiles. So the build is successful.
3:54:223 hours, 54 minutes, 22 secondsCool.
3:54:243 hours, 54 minutes, 24 secondsNow the build passes. We see over here two files. The index um dmpts. We also see the index.d.cts.
3:54:343 hours, 54 minutes, 34 secondsAnd then we see Okay, I think that's pretty much it. So let's come over to these files. They're in the dist folder.
3:54:403 hours, 54 minutes, 40 secondsSo we see the CJS, the MJS, and we also see the CTS. So let's come over to the seat um dist. And we see the different
3:54:493 hours, 54 minutes, 49 secondsoutputs here. So now this is working as expected and we are able to build the file. Now let's see how we can go on to test our own version of super vault js.
3:54:593 hours, 54 minutes, 59 secondsSo I'm so excited. You can just ignore these warnings that we have over here. Um what is this warning over here?
3:55:053 hours, 55 minutes, 5 secondsOutput setting must set um the root them setting. Yeah. So it's just some TypeScript. Maybe it wants also set to
3:55:123 hours, 55 minutes, 12 secondsthe root dire. I don't want to get into a fight with TypeScript at this point in time. And we also have more ts config.
3:55:173 hours, 55 minutes, 17 secondsAnd what is this? The bas area is deprecated. So if you get rid of this, your application will work fine, I guess. So let's fix this. And the error
3:55:263 hours, 55 minutes, 26 secondsis gone. But I wouldn't want to fix that now. Okay. These are fixes that you you do not just do in the middle of a project. You actually want to be sure
3:55:343 hours, 55 minutes, 34 secondsthat it's time for you to make fixes before you proceed to making fixes so that you can also be prepared to fix them. So I'm just going to leave them
3:55:413 hours, 55 minutes, 41 secondslike this. And if they do fight us, then we're going to fight back. Okay, so with that said, let's come back and test out
3:55:483 hours, 55 minutes, 48 secondsour Super VoltJS. So, let's have a quick demo. So, now is the time for us to test. I love testing things out. I'm so
3:55:553 hours, 55 minutes, 55 secondsexcited because we have put in a lot of work creating this Super Vault package.
3:56:003 hours, 56 minutesSo, now our own SDK. Now is the moment of truth. Now, it's time for us to test all the hard work we have done together.
3:56:073 hours, 56 minutes, 7 secondsAnd we can test this by coming over here into Yeah, in the template, I did create this demo index.html html file. So you
3:56:153 hours, 56 minutes, 15 secondswant to make sure you have this index.html file. We're going to need this and actually we can copy it already. And this is going to leave
3:56:223 hours, 56 minutes, 22 secondsright inside this vault.js package. So right here we're going to be creating a new file which we can call demo like
3:56:293 hours, 56 minutes, 29 secondsthis demo. Ah we already have it here demo. And inside this demo we are going to be creating a new file. Now this file
3:56:373 hours, 56 minutes, 37 secondsis going to be the index.html file here. And let's paste this in here. Oops. I copied the path which was here.
3:56:453 hours, 56 minutes, 45 secondsSo let me copy this index.html.
3:56:483 hours, 56 minutes, 48 secondsSo want to copy this and we want to paste this in here. All right. So this is the first step.
3:56:543 hours, 56 minutes, 54 secondsNow is for us to bundle everything. So let's open up our terminal. I'm going to clear this terminal. This terminal is right inside superv.
3:57:053 hours, 57 minutes, 5 secondsBut then a new terminal window is going to be opened up here. And we need to CD out of supervotjs and also CD out of the
3:57:133 hours, 57 minutes, 13 secondspackages. And we need to CD into the apps and into the API application. So that we have the API up and running
3:57:213 hours, 57 minutes, 21 secondswhich is going to be serving this index.html.
3:57:253 hours, 57 minutes, 25 secondsSo here where we have the API running, we want to run PNPmdev API. We don't need we don't need to start up our own
3:57:323 hours, 57 minutes, 32 secondsfront end. Okay, this is going to serve as a client that is trying to make use of um our SDK. So, we're going to say
3:57:403 hours, 57 minutes, 40 secondspmppm dev API and over here, oops, dev column API. Yeah, this needs to be, you
3:57:483 hours, 57 minutes, 48 secondsknow, from the root. So, sorry about that. Or you can just run the pmppm start. Okay, so I'm going to come over to supervolt here. And here I will just
3:57:563 hours, 57 minutes, 56 secondsclose the terminal and run the dev API which is going to start up the API application.
3:58:033 hours, 58 minutes, 3 secondsSo right here we want to now this is inside supervolt package. So this other terminal that we have here and here we want to run the pnpm build command.
3:58:143 hours, 58 minutes, 14 secondsAnd when we build we are going to serve the build. So remember your packet.json the build is complete. If you double check here your packet.json we have the
3:58:233 hours, 58 minutes, 23 secondsdifferent scripts. So this is a build script and after the pmppm build script we need
3:58:303 hours, 58 minutes, 30 secondsto save it. So, we do not have like the um let's see if we can make use of npx.
3:58:353 hours, 58 minutes, 35 secondsWe're going to say npx ser demo like this. And not just demo, we need to go into the index.html.
3:58:443 hours, 58 minutes, 44 secondsNow, this looks like it's building up.
3:58:463 hours, 58 minutes, 46 secondsSo, we're going to collapse this. And now we have an error. So, let's see what the error is. I'm just going to debug
3:58:553 hours, 58 minutes, 55 secondsthis real quick and I'll see you once I'm done debugging this. Now the error is quite straightforward. I typed server. So sorry about that. I'm going
3:59:033 hours, 59 minutes, 3 secondsto go again. It's meant to be MPX serve demo like this.
3:59:103 hours, 59 minutes, 10 secondsSo let's see. This is already running on local host 3000. So let's go to the URL that we're going to see here. I'm going
3:59:173 hours, 59 minutes, 17 secondsto say yes so that it installs this package and then we'll give it a moment.
3:59:243 hours, 59 minutes, 24 secondsAnd it cannot read the configuration that we have over here. Now the error we have here could not read the
3:59:303 hours, 59 minutes, 30 secondsconfiguration file. So um not a directory. So it looks like save needs a
3:59:383 hours, 59 minutes, 38 secondsfolder and not the index file. So let's try again. We're going to say mpx save
3:59:453 hours, 59 minutes, 45 secondsdemo like this. And inside demo we have the index. So we're going we're giving this another try. So now if it is okay
3:59:533 hours, 59 minutes, 53 secondswe're going to get Yeah. So this URL here that we can try this. It picked this because but 3,000 is already in use
4:00:014 hours, 1 secondhere. Okay. So it copied local address to clipboard. Now that would be super great if it did. And so let's try it
4:00:104 hours, 10 secondsout. I'm going to open up a new terminal and I'll just paste. Ah, it actually did copy. So now we see our super vault SDK
4:00:174 hours, 17 secondsdemo. And you're going to open need to open this in two type of tabs so that you can subscribe in one and insert in the other one. So let's open up a tab.
4:00:274 hours, 27 secondsI'm going to see you once I do that. So now I have my browser side by side. But before we can go on to continue testing,
4:00:344 hours, 34 secondswe need to do more setup because I ran into some issues and we need to update our touchdown config.ts file. So over
4:00:434 hours, 43 secondshere the fix is we can just actually get rid of everything here and you're going to replace this with new configuration.
4:00:514 hours, 51 secondsSo let's import define config which will come from touchdown. And then we're going to be exporting the default define config. So the entry point we know is the source index.ts.
4:01:024 hours, 1 minute, 2 secondsThe format is going to be CJS and ESM.
4:01:054 hours, 1 minute, 5 secondsBut now the platform which is so important to avoid cause errors is going to be browser. We're also going to have the TS true, clean true, source map
4:01:144 hours, 1 minute, 14 secondstrue, minify true, and also the dependencies. We had this before. We never want to bundle the types. And we
4:01:224 hours, 1 minute, 22 secondsalways want to bundle the socket io client also the super vote constants upload thing and also upload think line client so we do not have any errors.
4:01:334 hours, 1 minute, 33 secondsNow once you have this set up, we are going to run things. So I'm going to save this and we need to build again. So
4:01:424 hours, 1 minute, 42 secondsright here inside Super VoltJS. So this is inside the packages. That's where you want to be. You want to be straight up in here inside SuperVolt.js.
4:01:524 hours, 1 minute, 52 secondsYou're going to run the build. So pnpm build command like this, which is then going to go on and build. So you're going to wait for the build to complete.
4:02:024 hours, 2 minutes, 2 secondsAnd it's done for me in my case. So I'm going to clear this. And before we going to run the pmppm the mpx s command over
4:02:104 hours, 2 minutes, 10 secondshere in supervolt we are also going to build supervolt. So we're going to say pmppm dev and the reason why we are
4:02:184 hours, 2 minutes, 18 secondsrunning the api and the web is so that we can get our credentials from the web application.
4:02:254 hours, 2 minutes, 25 secondsNow over here I'm going to say pm mpx save dot just like this not server mpm dot like this.
4:02:354 hours, 2 minutes, 35 secondsAnd now this is going to go on and give us the URL where we can visit our build.
4:02:404 hours, 2 minutes, 40 secondsSo we give this a moment. And now we see that this is our build. The URL changes and the local address has already been
4:02:484 hours, 2 minutes, 48 secondscopied to clipboard which is a very convenient tool. So I'm just going to save this and I'll come here and paste
4:02:554 hours, 2 minutes, 55 secondsthis over here and I will choose demo or you can manually go to /demo here and and go to /demo.
4:03:034 hours, 3 minutes, 3 secondsAll right. So this is the content of our index file and then what I'm going to do you need to come over to API and you
4:03:114 hours, 3 minutes, 11 secondswant to copy over your service row key and this is also your project URL which is needed here. So I'm going to come
4:03:184 hours, 3 minutes, 18 secondshere and I'm going to paste in my service row key. And I'll also paste in my service row key here. And for the
4:03:264 hours, 3 minutes, 26 secondsproject URL, you also want to copy your project URL and replace the content that you have over here like this. You click
4:03:354 hours, 3 minutes, 35 secondson connect here which shows the connection. Now this is the this is a demo. So we're not really going to see our database. This is saving the
4:03:444 hours, 3 minutes, 44 secondsindex.ts file. Remember that this is our dog feed application demo. So here we just need to insert into project uh into
4:03:514 hours, 3 minutes, 51 secondsinto products and let's say we want to you know upload feed one. We're going to hit on insert and we get failed to
4:03:594 hours, 3 minutes, 59 secondsfetch. All right. So I'm just going to inspect this and open up the console.
4:04:054 hours, 4 minutes, 5 secondsOkay. So it's a course error that we are currently having. So no worries. Let's fix the course error and let's continue.
4:04:124 hours, 4 minutes, 12 secondsNow let's go on and fix this. to fix this error that we have over here this course error. Let's come back to application and I'll collapse this and
4:04:194 hours, 4 minutes, 19 secondslet's locate the main.ts file. So in the source the API and over here in the
4:04:254 hours, 4 minutes, 25 secondssource the main.ts over here where we have the enable course. So temporarily I'm just going to comment this out and
4:04:344 hours, 4 minutes, 34 secondsbring this in just like this so that we can test successfully. And I'm going to bring this in. Okay. So this is just
4:04:414 hours, 4 minutes, 41 secondsgoing to go and allow our next JS application and actually any local host here like this you know with also our demo port to our demo port to work
4:04:504 hours, 4 minutes, 50 secondswithout having any issues. So I'm going to close this and we see that the API application is restarting so that it
4:04:574 hours, 4 minutes, 57 secondspicks up the latest changes. You don't need to rebuild because we did not make any change in the packages. So I'll clear this and give this another try
4:05:064 hours, 5 minutes, 6 secondsout. So I'm going to click on insert and this time around I still see this. Okay.
4:05:134 hours, 5 minutes, 13 secondsSo now we see a different error internal server error and yeah so the error is coming from the API. The API looks like
4:05:204 hours, 5 minutes, 20 secondsit has an an error. Okay. So now we are seeing this is failing um product. So that's because you know
4:05:294 hours, 5 minutes, 29 secondswe do not have the products table. So we have the issues. Okay. So, I actually did not want to create this, but yes, I
4:05:374 hours, 5 minutes, 37 secondsthink we have to. So, let's come over here and give this a refresh. Now, we're going to create a product table. And
4:05:454 hours, 5 minutes, 45 secondsthis needs a name. So, I think Okay, so let's come over here. This needs a name.
4:05:534 hours, 5 minutes, 53 secondsOkay, so I think it needs a name. So, what we're going to do for this to work, let's come over to the application and we are going to convert to our database.
4:06:024 hours, 6 minutes, 2 secondsLet's actually make use of the SQL editor so we can try this out. Right, I'm going to come over to the SQL and
4:06:094 hours, 6 minutes, 9 secondslet's create a new table over here so that we can try the products. So, we're going to create a table and we're going
4:06:174 hours, 6 minutes, 17 secondsto give this like this table here. So, I'm going to paste this in here. Now, you might be wondering, hey, where do I
4:06:244 hours, 6 minutes, 24 secondsget this project this like this? This is the name of your This is name of your project schema name. So if you come over
4:06:344 hours, 6 minutes, 34 secondsto neon and if you check your database so here where we do have yeah so here the table. Now let's come over to the
4:06:424 hours, 6 minutes, 42 secondsschema and I'm looking for this. So you see this this F466
4:06:514 hours, 6 minutes, 51 secondsthat we have over here. This is your schema. Okay. And in the schema you have the members table and here the membership and here we have this. So
4:06:594 hours, 6 minutes, 59 secondsthis is what you want to take. Okay. So you want to take that number. So which is what I did paste here and then dot
4:07:074 hours, 7 minutes, 7 secondsproducts like this. Okay. So the schema and the products just as we saw over here we have the schema membership the
4:07:164 hours, 7 minutes, 16 secondsschema users. So we are creating a new one here products and the ID is a big int generated always identifier is the
4:07:244 hours, 7 minutes, 24 secondsidentity is the primary key we also have to created that and the name. So this is just going to be enough for our demo.
4:07:294 hours, 7 minutes, 29 secondsI'm going to hit run here and if this is successful we going to see the result printed here. So it returned query
4:07:384 hours, 7 minutes, 38 secondsreturns zero rows. That's quite interesting. Let's come over here and we see products and let's see if we have
4:07:454 hours, 7 minutes, 45 secondsthe different columns here and we have the different columns. So it quite worked but we didn't get a hint to the SQL editor. So that means we can come
4:07:524 hours, 7 minutes, 52 secondsover here and let's try this out. So I'm going to hit on insert again and now we have that it should actually work. We should no longer see the internal server
4:08:004 hours, 8 minuteserror and we see the insert works. And if you come over to your database so if you come over here to your project and
4:08:084 hours, 8 minutes, 8 secondsyou inspect this. So maybe we do not have a refresh functionality. So maybe if I come to users and if I come back to product, does it reload? So give this a
4:08:174 hours, 8 minutes, 17 secondsmoment. Does it reload? It doesn't. So I'm going to actually it did. So I'm going to come back here and yeah. So we
4:08:244 hours, 8 minutes, 24 secondssee the product name and everything working here. So our SDK is working. You can also click here to fetch all the products. You're going to see them
4:08:324 hours, 8 minutes, 32 secondslisted here like this. So you can see now to to test real time you would need to also connect here but with the time
4:08:404 hours, 8 minutes, 40 secondsI'm not really going to test the real time on also storage. So I try to insert again and it works. All right. So this
4:08:474 hours, 8 minutes, 47 secondsis working now. You can try this um you can go on to try this like the real time and you're going to see the real time
4:08:534 hours, 8 minutes, 53 secondsalso work um here by subscribing but I'm not really going to try that now because of time constraints. Now we're going to go over to the next phase of building
4:09:014 hours, 9 minutes, 1 secondout our application. And that next phase is the last phase actually which is the super vault authentication. Now this is one of the big phases of the
4:09:104 hours, 9 minutes, 10 secondsapplication. This is the o. So over here we're going to offer authentication to users that will come over to our
Chapter 5: 13-supavolt-auth
4:09:174 hours, 9 minutes, 17 secondsapplication to register and create accounts. So the project is going to have authentication. So let's work on that next. Hello guys. So now we're
4:09:254 hours, 9 minutes, 25 secondsgoing to be working on superbase authentication because earlier we did introduce authentication but that was for ourself. So that was for users
4:09:344 hours, 9 minutes, 34 secondsauthenticating into our application. So just like going over to superbase and creating an account. Now we want to offer users authentication in our super
4:09:434 hours, 9 minutes, 43 secondsvote project. So users that create a project should be able to also create um or spin up authentication as part of the
4:09:514 hours, 9 minutes, 51 secondsservice that we are offering. Now you can see here I've already had gone to gone on to revert the changes that I had here. So you also want to revert your
4:09:594 hours, 9 minutes, 59 secondschanges and then we can get with building out the authentication. How do we get started? We're going to start by making sure that you have all the
4:10:064 hours, 10 minutes, 6 secondsenvironment variables set. So no changes need to be done there. But we going to be making some changes in the projects table. So over here in authentication in
4:10:144 hours, 10 minutes, 14 secondsyour API folder, you want to come over to the projects and not the projects. So yeah, in your
4:10:224 hours, 10 minutes, 22 secondsDB, in your schema, and in your projects here. So here we're going to be making changes. So somewhere around here, I like the created and at and updated that
4:10:314 hours, 10 minutes, 31 secondsto be the last. So somewhere here, we're going to be adding new features. We're going to be adding the Google client ID, which is of type text. Google client ID
4:10:394 hours, 10 minutes, 39 secondslike this. And we're also going to be adding the Google client secret, which is of type text. Google client secret.
4:10:464 hours, 10 minutes, 46 secondsWe also do have the GitHub client ID. So we're offering users Google client ID or Google off GitHub authentication. So we
4:10:544 hours, 10 minutes, 54 secondsneed the the GitHub client ID and their secret. And lastly, we also need the JWT authentication secret. So this is going
4:11:014 hours, 11 minutes, 1 secondto be of type text just like this. And it's not going to be null. All right. So now the user is going to provide us with
4:11:084 hours, 11 minutes, 8 secondsall of these. We can go on to save the content of this file. Now the next thing we're going to do, we're going to be updating the project service. So you can
4:11:164 hours, 11 minutes, 16 secondsYeah, I know we're going to run the migration in a bit, but let's come out of here and come into projects and into the project service. And here in the
4:11:254 hours, 11 minutes, 25 secondsproject service, I don't know why we have this error. Let me see values.
4:11:304 hours, 11 minutes, 30 secondsYeah, so the value has pretty much changed a bit. No worries. We're going to run um yeah, so no worries. We're going to add this JW JWT secret. Yeah,
4:11:404 hours, 11 minutes, 40 secondsthe JWT secret. No worries. And I'm kind of surprised we have this error here.
4:11:444 hours, 11 minutes, 44 secondsBut that's not issue. So where we have create project here. So here where we do create the project, we need to make sure
4:11:524 hours, 11 minutes, 52 secondswe have the JWT authentication secret here. So let's have the JWT the O JWT secret here like this. Now
4:12:014 hours, 12 minutes, 1 secondthis is looking for the value. We are going to generate the value in a moment.
4:12:054 hours, 12 minutes, 5 secondsSo I'm going to copy this and we can do this somewhere here. Maybe we can do
4:12:124 hours, 12 minutes, 12 secondsthis somewhere here. Let's have cons the o GWT secret. This is going to be equal to random byte. Random byte needs to be
4:12:214 hours, 12 minutes, 21 secondsimported from crypto. So I think we have it here already. Let's see. Yes. So we have random bytes. And here we're going
4:12:274 hours, 12 minutes, 27 secondsto call 32 which is the size and we're going to call to string and we're going to pass string of hex like this.
4:12:404 hours, 12 minutes, 40 secondsAll right. So now that we have this, let's go and give this a save. I'm going to save here like this. We're going to cd into our app so that we can so into
4:12:484 hours, 12 minutes, 48 secondsour apps and that's the API so that we can generate. So we're going to say pmppm db column generate like this. Now
4:12:584 hours, 12 minutes, 58 secondsthis is going to regenerate and once it is done we are going to run the migration. So say pmppm db migrate like
4:13:074 hours, 13 minutes, 7 secondsthis. So give this a moment. it's going to go and apply the migration. And if you double check in your neon database.
4:13:144 hours, 13 minutes, 14 secondsSo let's come over to neon and somewhere in your database. So you want to come over here. Come over to tables. And here
4:13:214 hours, 13 minutes, 21 secondsin tables yeah I'm going to go back to tables. We want to check our projects. And now we should see
4:13:394 hours, 13 minutes, 39 secondsSo now we can focus on our package. So I'll collapse this and you want to come into the packages and you want to come to the types and in the source in the
4:13:484 hours, 13 minutes, 48 secondsindex.ts we're going to be working on authentication. So I'll collapse this and I'll drop a comment here that says O
4:13:574 hours, 13 minutes, 57 secondslike this. Now let's have the types for the O. We're going to be exporting this interface which will call project o
4:14:044 hours, 14 minutes, 4 secondsuser. This interface is going to have the ID of type string also an email of type string and the email verified is
4:14:134 hours, 14 minutes, 13 secondsgoing to be a boolean. We're also going to have the provider. So when users authenticate want to know if the provider is email Google or GitHub.
4:14:214 hours, 14 minutes, 21 secondsWe're also going to have the created that which is of type string.
4:14:264 hours, 14 minutes, 26 secondsNow we can also export the interface the signup impute we're going to need the email and the password and same for the
4:14:344 hours, 14 minutes, 34 secondssignin impute. So whenever users call supervo.orth signup they'll need to provide the email and password and same for the signin they would need to
4:14:434 hours, 14 minutes, 43 secondsprovide the email and password. Now for magic link they would also need to provide just the email. So we have the
4:14:504 hours, 14 minutes, 50 secondsmagic link impute which is going to take in the email of type string.
4:14:564 hours, 14 minutes, 56 secondsNow we're going to export this interface. We'll call this project o of settings. This is going to take the Google client ID. The Google client ID
4:15:054 hours, 15 minutes, 5 secondsis of type string or we also have the Google client secret which is also of type string or we have the GitHub client
4:15:134 hours, 15 minutes, 13 secondssecret which is of type string or so the client ID sorry. And then we have the client secret. So the reason why it's string or not because you could use
4:15:224 hours, 15 minutes, 22 secondsGoogle or GitHub and [snorts] finally we're going to export the interface which is the project authentication response. We are always going to send
4:15:304 hours, 15 minutes, 30 secondsback a response and the response is going to have the user ID of type string and the email as well is going to be of type string and then we also have the access token which is of type string.
4:15:424 hours, 15 minutes, 42 secondsNow we can save this and let's come over to the constants. So I'm going to click here and if we come over to the constants the source and in the index.ts
4:15:514 hours, 15 minutes, 51 secondswe are going to be adding a constant here which is for the project authentication. So I'm going to leave this project o and the reason why I call
4:15:584 hours, 15 minutes, 58 secondsthis project o is so that it is not mistaken with maybe some other o that we have over here. Now this project o is
4:16:064 hours, 16 minutes, 6 secondsgoing to have this o providers and we're going to be exporting this constant for authentication providers which is going to have the email. The email is going to
4:16:154 hours, 16 minutes, 15 secondsbe of type equals to email. We're also going to have Google which is going to be equals to Google and GitHub is going
4:16:224 hours, 16 minutes, 22 secondsto be equals to the string of GitHub and we can say as const. Now we're going to export this con the magic link and we're going to say the magic link is going to expire in 15 minutes.
4:16:344 hours, 16 minutes, 34 secondsAll right. So this is all we have to get started. I'm going to save this file and the next thing we're going to be working on is to create the DTO after which we
4:16:424 hours, 16 minutes, 42 secondscan go on to create the service. Now let's create the different DTO's that we need. We need the DTO for sign up. We need another one for sign in. And we
4:16:494 hours, 16 minutes, 49 secondsneed the last one for the magic link. So I'm going to come over here and in the apps, if we come over to the API over here in the source folder, we need a new
4:16:584 hours, 16 minutes, 58 secondsfolder here. So we have this for project and the project service. What did we change here? Okay, so this is what we changed previously. So I'm going to exit
4:17:074 hours, 17 minutes, 7 secondsout of this. Now we need a new folder here for project authentication.
4:17:114 hours, 17 minutes, 11 secondsSo you want to create a new folder here and we're going to call this folder project o like this. Now this project o
4:17:214 hours, 17 minutes, 21 secondsis going to have a dto folder here. So let's create the first one. This is going to be the sign up the signup
4:17:294 hours, 17 minutes, 29 secondsdto.ts file. Now for a user to use our signup provider they're going to provide the following. Let's first import is
4:17:374 hours, 17 minutes, 37 secondsemail is string and min length which will come from class validator. We're also going to bring in the type. The
4:17:444 hours, 17 minutes, 44 secondstype is going to be the sign up impute which is going to come from our supervolt types. And then we can go on to export the class. The class the sign
4:17:534 hours, 17 minutes, 53 secondsup dto is then going to go on to implement our sign up impute.
4:17:584 hours, 17 minutes, 58 secondsNow the sign up impute is going to take his email which is of type string and then that for the email. We're also going to have the password. The password is a string and the minimum length is 8.
4:18:094 hours, 18 minutes, 9 secondsAnd then we have the password. Now you can adjust this minimum length to your needs. I'm going to save this and we're going to be creating the new file. The
4:18:184 hours, 18 minutes, 18 secondsnew file we'll create here is the signin.do.ts file. Now the signin dto is more or less identical to the signup. So we're going
4:18:264 hours, 18 minutes, 26 secondsto import is email is string class validator and we're also going to bring in the sign-in impute. The sign-in impute is going to come from our super votes types.
4:18:384 hours, 18 minutes, 38 secondsNow just as we did for the sign up we're going to be exporting this class which we call the sign in DTO and this sign in DTO is going to be implementing the sign
4:18:464 hours, 18 minutes, 46 secondsin impute and then we're going to say is email and then we say the email is of type string and then we're also going to say is
4:18:554 hours, 18 minutes, 55 secondsstring for the password which is of type string like this. Now we create the last one before we go over to the service.
4:19:024 hours, 19 minutes, 2 secondsAnd here we're going to create a new file and this is going to be the magic link. DTO.ts file. The magic link is
4:19:104 hours, 19 minutes, 10 secondspretty much straightforward as we need only the email. So let's import the is email from class validator. And then we're going to bring in the type. Now
4:19:194 hours, 19 minutes, 19 secondsthe type we're going to import here is going to be the magic link impute. And this is going to come in from supervolt for/types.
4:19:274 hours, 19 minutes, 27 secondsThen we can export the class the sign in DTO sorry the magic link DTO which is going to be implementing the magic link
4:19:344 hours, 19 minutes, 34 secondsimpute and we only need the email over here. So we say is email the email is of type string.
4:19:424 hours, 19 minutes, 42 secondsOkay. Now we're going to take a moment and then we're going to go on to create the service. Now let's work on the
4:19:514 hours, 19 minutes, 51 secondsservice. I'm going to close all these tabs that we do have open and the service is going to be in the source folder and over here where we have the
4:19:594 hours, 19 minutes, 59 secondsproject off. We are going to be creating the new file but this is not going to be inside the DTO. So this file is going to
4:20:064 hours, 20 minutes, 6 secondsbe the project oservice.ts file. So it has to be outside the DTO.
4:20:124 hours, 20 minutes, 12 secondsI'm going to collapse this and we can get started by bringing in the different imports that we need.
4:20:184 hours, 20 minutes, 18 secondsSo this is actually quite a lot but we can work through it gradually and I'm going to explain every step along the way as we type out. Okay. So let's start by importing the bad request exception.
4:20:304 hours, 20 minutes, 30 secondsWe're also going to be importing the conflict exception, the injectable.
4:20:364 hours, 20 minutes, 36 secondsWe're also going to import the not found exception. We also need the unauthorized exception. They will all coming from nestjs for/common.
4:20:474 hours, 20 minutes, 47 secondsAnd after this we need our JWT service.
4:20:504 hours, 20 minutes, 50 secondsSo let's import the JWT service which is going to come from at nestjs/jwt.
4:20:574 hours, 20 minutes, 57 secondsWe also need our config service or the nest config service. So it's going to come from at nestjs/config.
4:21:054 hours, 21 minutes, 5 secondsWe need resend. Rescend is going to come from resend. And we also need brypt. So we're going to import everything. So
4:21:134 hours, 21 minutes, 13 secondswith this star as brypt which will come from brypt package. We're also going to import equals SQL and drizzle o.
4:21:234 hours, 21 minutes, 23 secondsThen let's import drizzle service.
4:21:264 hours, 21 minutes, 26 secondsDrizzle service is going to be imported from the db/drizzle.
4:21:324 hours, 21 minutes, 32 secondsAnd we need to import the project. So project is going to come from our database schema. We also need the o
4:21:394 hours, 21 minutes, 39 secondsproviders and the magic link expires in and all of these are going to be
4:21:454 hours, 21 minutes, 45 secondsimported from the superv for/ constants and finally we need the last import. So
4:21:524 hours, 21 minutes, 52 secondsthis import are the types importputs. So we'll import the type the signup imputes and the sign in impute which will coming from superv/types.
4:22:044 hours, 22 minutes, 4 secondsOkay. So let's bring them in. And after this, the next step now is for us to have the project o token payload.
4:22:114 hours, 22 minutes, 11 secondsSo we're going to have this interface here which will call the project all token payload. It's going to take in the sub and we know this sub is the user ID, the email as well as the project ID.
4:22:254 hours, 22 minutes, 25 secondsAll right. So once you have all of these, the next step now is for us to have the class. Now the class is going
4:22:324 hours, 22 minutes, 32 secondsto be this injectable here. So I'll just scroll up here and the class is going to be marked injectable and we can export
4:22:394 hours, 22 minutes, 39 secondsthe class which we call the project of service.
4:22:444 hours, 22 minutes, 44 secondsInside the constructor we're going to have drizzle and but we just have this resend variable here so that we can have
4:22:514 hours, 22 minutes, 51 secondsthe constructor where we initialize resend. We're also going to inject the Dreaser service which is going to be of type Daso service and the same for the
4:23:004 hours, 23 minutesJWT service which is going to be of type the JWT service and we have the private config service which is going to be of type config service.
4:23:104 hours, 23 minutes, 10 secondsSo in here we're going to then say this resend. So the variable we have is going to be in equals to this new recent
4:23:184 hours, 23 minutes, 18 secondsclient where we can pass in the configuration so that we pass in the resend API key. So the resend API key
4:23:264 hours, 23 minutes, 26 secondswe're going to get it from the config service like this. So once you have this we can now start defining the different methods that we have right inside this class.
4:23:374 hours, 23 minutes, 37 secondsSo I'm just going to close the class here and we can continue. So let's come down and the next thing we're going to have is this private async method which
4:23:464 hours, 23 minutes, 46 secondsis going to help us to get a project. So we call this private async method get project. So we need the project log
4:23:534 hours, 23 minutes, 53 secondswhich is of type string and we also then we can go on to have the payload sorry the project the project is going to be
4:24:004 hours, 24 minutesawaiting this. DB we're going to be selecting everything which is going to come from the project table. And from
4:24:094 hours, 24 minutes, 9 secondshere we're going to have the where clause where equals the project or log matches the project log this method is
4:24:164 hours, 24 minutes, 16 secondsgoing to receive. We're going to limit this to one and we're then going to say hey if we are not able to find the project then let's go and throw a new
4:24:244 hours, 24 minutes, 24 secondsnot found exception that the project was not found. But then if we able to get a project we can then go on to return the project.
4:24:344 hours, 24 minutes, 34 secondsOkay. So this is the method and after this method we are going to have another method just here.
4:24:424 hours, 24 minutes, 42 secondsNow the next method we're going to have is the method which is going to help us to ensure that the o users table is
4:24:504 hours, 24 minutes, 50 secondsgoing to exist. Now why do we have something like this is because we are going to go on to lazy create the o users because not every project is going
4:24:594 hours, 24 minutes, 59 secondsto need authentication. Now let me show you what we mean over here. So over here I'll leave this comment that not every project needs authentication. So we're
4:25:084 hours, 25 minutes, 8 secondsgoing to go and add lazy create authentication users. So we'll say private async ensure all users table
4:25:154 hours, 25 minutes, 15 secondswhich will take in the DB schema of type string and it's going to return a promise that resolves to void. In here
4:25:224 hours, 25 minutes, 22 secondswe're going to await this.razo dbexecute the SQL.
4:25:284 hours, 25 minutes, 28 secondsAnd now we're going to create the o user or users. So we're going to say create table if not exist on this schema
4:25:384 hours, 25 minutes, 38 secondsusers. Now the different fields in this table or the columns is going to be the ID of type EU ID and we say default gen
4:25:464 hours, 25 minutes, 46 secondsrandom EU ID function. I also mark this as a primary key. The email is going to be of type text is not null and is also
4:25:544 hours, 25 minutes, 54 secondsgoing to be unique. We also have the password hash. The password hash is going to be of type text. The email
4:26:014 hours, 26 minutes, 1 secondverified is going to be a boolean. So here the type is boolean is not null and the default is going to be false.
4:26:094 hours, 26 minutes, 9 secondsThen we have the provider. So remember the Google GitHub or email provider.
4:26:144 hours, 26 minutes, 14 secondsThis is going to be of type text is not null and the default is going to be the email. And lastly we have the created at
4:26:204 hours, 26 minutes, 20 secondswhich is going to be of type timestamps is not null and then it's going to be default now like this. So we can go on
4:26:294 hours, 26 minutes, 29 secondsand close this up here. Now we have this closed. The next step for us is to then create a new function, a new helper
4:26:374 hours, 26 minutes, 37 secondsfunction which is going to help us to sign the token.
4:26:424 hours, 26 minutes, 42 secondsSo further down here we can have this private method which we call sign token and sign token needs the user ID. It
4:26:504 hours, 26 minutes, 50 secondsalso needs the email which is of type string. It needs the project ID. The project ID is of type string and the
4:26:584 hours, 26 minutes, 58 secondssecret is of type string. The sign token method is going to return a string. And here we're going to return this JWT
4:27:074 hours, 27 minutes, 7 secondsservice dot sign where we pass in the object. Now we're passing the sub which is user ID. The email matches the email
4:27:154 hours, 27 minutes, 15 secondsand the project ID matches the project ID. I want to make sure that this satisfies the project or token payload.
4:27:224 hours, 27 minutes, 22 secondsNow the JW service we can also pass the extra configuration like the secret and this is going to expire in 7 days. Now
4:27:304 hours, 27 minutes, 30 secondslet's have the method. Let's have the signup method. Now we're going to say async sign up. The project log is going to be of type string. We're also going
4:27:374 hours, 27 minutes, 37 secondsto have the DTO which is the signup impute and the project here is going to be equals to await this.get project
4:27:454 hours, 27 minutes, 45 secondsbased on this log. Now we're going to go to ensure that the O users table exist.
4:27:524 hours, 27 minutes, 52 secondsAll right. So we're going to await this dot ensure O ensure all users table and we'll pass in the project DB schema.
4:28:014 hours, 28 minutes, 1 secondLet's check if this is already existing.
4:28:034 hours, 28 minutes, 3 secondsSo con existing is going to be a this.razo db.execute and we're expecting to get back the ID which is of type string. We're going to
4:28:124 hours, 28 minutes, 12 secondsbe executing this SQL where we're going to select the ID and the ID is going to come in from the SQL.identifier based on
4:28:194 hours, 28 minutes, 19 secondsthis project schema users where the email matches this specific email.
4:28:264 hours, 28 minutes, 26 secondsSo if we already have an O user for that matches this email that means this user is using our O. We're going to go and check if the existing rows is greater
4:28:354 hours, 28 minutes, 35 secondsthan zero then that means this user has already registered. We're going to throw a new error that conflict exception you know email already exist.
4:28:474 hours, 28 minutes, 47 secondsNow let's have the password hash. Let's assume all is good. We're going to say con password hash is going to be equals to await brypt.ash where we pass in the
4:28:564 hours, 28 minutes, 56 secondsdtol. password and we're also going to pass in 12 which is the result or rounds and then we're going to go on and
4:29:044 hours, 29 minutes, 4 secondsinsert. So we'll get the result and we're going to await this.razer.db.execute.
4:29:084 hours, 29 minutes, 8 secondsexecute. We're going to expect the ID and the email to be returned from this operation. And here we're going to pass
4:29:164 hours, 29 minutes, 16 secondsthe SQL. Now the SQL we're going to execute here is going to say insert into and then the SQL.identifier
4:29:244 hours, 29 minutes, 24 secondsthe the project DB schema users table. So the schema and all uses table and then we have the email the
4:29:334 hours, 29 minutes, 33 secondspassword hash and the provider and the values is going to match here. So the email will match the DTO email. Next to
4:29:414 hours, 29 minutes, 41 secondsthe password hash where is the password hash and next to the provider which was called the o providers email and we're
4:29:484 hours, 29 minutes, 48 secondsgoing to return the id and the email that this function needs.
4:29:534 hours, 29 minutes, 53 secondsNow let's retrieve the user from the results. We're going to say con user is going to be equals to the results rows the first element and the access token
4:30:024 hours, 30 minutes, 2 secondsis going to be awaiting or calling this dot sign token where we'll pass in the user ID. We're also going to pass in the
4:30:094 hours, 30 minutes, 9 secondsuser email as well as the project ID. So it's going to be project ID and we're also going to return the project JWT secret.
4:30:214 hours, 30 minutes, 21 secondsNow finally we can go on to return the object the user object with the ID and the email and as well as the access token.
4:30:304 hours, 30 minutes, 30 secondsAll right. So this is pretty much what we have over here and we can go on to close this.
4:30:354 hours, 30 minutes, 35 secondsNow I'm going to save this and we do have some errors that we can already investigate what's going on here. We have the error which is coming in from
4:30:454 hours, 30 minutes, 45 secondsso the DTO. Yeah. So no worries about this. We are sure that the DTO is this sign in sign up impute and this has the
4:30:524 hours, 30 minutes, 52 secondsemail and password. So you might not have this error that I currently have.
4:30:564 hours, 30 minutes, 56 secondsSo no worries. Let's continue. Now the next we're going to be working on is sign in. So we can take a break and I'll see you while we work on the sign in
4:31:054 hours, 31 minutes, 5 secondstogether. So I'm going to bring this down like this and let's have the code for sign in.
4:31:104 hours, 31 minutes, 10 secondsSo here we're going to have the async method sign in which needs the project's log and the dto which is the sign in
4:31:174 hours, 31 minutes, 17 secondsimpute and here we're going to first try to retrieve the project. So we're going to say con project is going to be await
4:31:254 hours, 31 minutes, 25 secondsthe this get project which receives the projects log and we can also go on to await this ensure the o users table and
4:31:344 hours, 31 minutes, 34 secondswe're going to pass in the the project db schema.
4:31:394 hours, 31 minutes, 39 secondsWe're going to get the result. So con result and result is going to be equals to await this. DB and we're going to
4:31:474 hours, 31 minutes, 47 secondshave the execute where we expect the ID, the email as well as the password hash.
4:31:544 hours, 31 minutes, 54 secondsOkay. So we'll give this a moment and let's have the password hash and the password hash could be a string or null.
4:32:014 hours, 32 minutes, 1 secondSo want to execute this SQL and the SQL here we're going to be selecting the ID the email and the password hash and all
4:32:094 hours, 32 minutes, 9 secondsthese will come from the SQL dot the identifier identifier is the project DB
4:32:164 hours, 32 minutes, 16 secondsschema and then user so the schema and then the table and we're going to say we
4:32:224 hours, 32 minutes, 22 secondsare the email matches the DTO email let's then have the user from the result
4:32:294 hours, 32 minutes, 29 secondsso you con user is going to be equals to the result rows the first element and we can check hey if we do not have any user
4:32:374 hours, 32 minutes, 37 secondsin the password hash let's throw a new unauthorized exception this new unauthorized exception is going to say
4:32:444 hours, 32 minutes, 44 secondsinvalid credentials now I want to check if there's a match if the password matches so we can say
4:32:524 hours, 32 minutes, 52 secondscon match is going to be equals to our way to brypt and we can call the compare method and we pass in the dtol password
4:32:594 hours, 32 minutes, 59 secondsthat we get from the from the client and the user. Hash that is registered in the database. If it doesn't match then we
4:33:074 hours, 33 minutes, 7 secondscan throw a new unauthorized exception that these are invalid credentials.
4:33:134 hours, 33 minutes, 13 secondsBut if everything matches let's go on and sign the token. So we say con the access token is going to be equals to
4:33:204 hours, 33 minutes, 20 secondsthis sign token. And to sign the token we pass in the user ID. We're also going to pass in the user email the project do
4:33:294 hours, 33 minutes, 29 secondsid and lastly we're going to be passing in the project jwt secret.
4:33:364 hours, 33 minutes, 36 secondsAll right. And then finally we can go on to return the object which has the user key and the value is this object with the ID which is the user id the email
4:33:454 hours, 33 minutes, 45 secondswhere the value is the user email and then we have the access token.
4:33:504 hours, 33 minutes, 50 secondsWe're going to have another function to send magic link. the send magic link async function. It needs the project log
4:33:574 hours, 33 minutes, 57 secondswhich is a string. Also the email which is a string.
4:34:024 hours, 34 minutes, 2 secondsWe're going to say con project is going to be equals to await this get project where we pass in the project log.
4:34:104 hours, 34 minutes, 10 secondsAnd then we can go on to await this ensure users table and we're going to pass in the project db schema just like this.
4:34:204 hours, 34 minutes, 20 seconds[snorts] So let's check if it's existing. So we say con existing is going to be equals to await this dot drazzo db dot execute where we have the
4:34:304 hours, 34 minutes, 30 secondsid of type string. We're going to execute the SQL which is going to be selecting the id. The id is going to
4:34:374 hours, 34 minutes, 37 secondscome from the sql.identifier the project db schema users table
4:34:454 hours, 34 minutes, 45 secondsand the wear clause is going to be where the email is equals to email.
4:34:514 hours, 34 minutes, 51 secondsSo let's check. We're going to check if existing.length if this is equals to zero. Then we're
4:34:574 hours, 34 minutes, 57 secondsgoing to go on to await this drizzle db.execute.
4:35:024 hours, 35 minutes, 2 secondsSo want to go and create a new uh o user. So we're going to execute or insert into the sql.identifier
4:35:114 hours, 35 minutes, 11 secondsdot the project dbs schema. users. We're going to insert the email, the provider, and the email verified.
4:35:234 hours, 35 minutes, 23 secondsOkay.
4:35:254 hours, 35 minutes, 25 secondsAnd the values is going to be the email also the O providers email. And we're going to say true.
4:35:344 hours, 35 minutes, 34 secondsAnd then let's have the link token.
4:35:364 hours, 35 minutes, 36 secondsWe're [snorts] going to say con link token. And the link token is going to be equals to the JWT service dots sign. And
4:35:444 hours, 35 minutes, 44 secondsto sign this, we're going to pass in the object which is going to contain the email, the project ID which matches the project ID and the object for
4:35:534 hours, 35 minutes, 53 secondsconfiguration which has a secret which we're going to call get from the project.jworth secret and also the expires in which is
4:36:014 hours, 36 minutes, 1 secondthe magic link expires in. So then we're going to construct the API URL. So here we're going to say con API URL is going
4:36:104 hours, 36 minutes, 10 secondsto be equals to this doconfig service.get get and we're going to get the string in return and we pass in the
4:36:174 hours, 36 minutes, 17 secondsAPI URL. Also for the magic link URL it's going to be the API URL and then we
4:36:234 hours, 36 minutes, 23 secondsgo to / project / project log /agic link and /verify with the create
4:36:324 hours, 36 minutes, 32 secondsparameter where we have the token which is equals to the link token. Now finally we can go on to send the email. We're going to await this.resendemails
4:36:414 hours, 36 minutes, 41 secondssend and the from is going to be the super vote on boarding atresend.dev. So it has to be this. We ran into this
4:36:494 hours, 36 minutes, 49 secondserror earlier. The two is going to be to email. The subject is going to be your magic link. And then the HTML. We're going to write some HTML tag here.
4:37:014 hours, 37 minutes, 1 secondThe HTML is going to have the P tag which is going to say click to sign in.
4:37:054 hours, 37 minutes, 5 secondsAnd we're going to tell the user this expires in 15 minutes. And then we're going to have the anchor tag. The anchor tag is going to have it href pointing to
4:37:144 hours, 37 minutes, 14 secondsthe magic link URL. And then we can have the text of sign in and close this. And finally we can return the object which
4:37:224 hours, 37 minutes, 22 secondsis going to say message magic link sent.
4:37:284 hours, 37 minutes, 28 secondsNow we need another function this time around is to go and verify the magic link and verify magic link needs the
4:37:354 hours, 37 minutes, 35 secondsproject log of type string and it also needs the token of type string.
4:37:424 hours, 37 minutes, 42 secondsWe can say con project is going to be equals to await this get project the project log. Now let's try to construct
4:37:504 hours, 37 minutes, 50 secondsthe payload. We'll select the payload is going to be or type the email of type string and project ID of type string.
4:37:594 hours, 37 minutes, 59 secondsInitially it's undefined. So in the try block we're going to say payload is then going to be equals to this JW the JWT
4:38:074 hours, 38 minutes, 7 secondsservice doverify the token and the secret here is going to be the project
4:38:144 hours, 38 minutes, 14 secondsJWT secret. And in the catch block we can throw a new error. So here in the catch block we're going to throw a new
4:38:224 hours, 38 minutes, 22 secondsbad request exception which is going to say invalid or expired magic link
4:38:314 hours, 38 minutes, 31 secondsand the result. So we say con result is going to be equals to await this dot
4:38:384 hours, 38 minutes, 38 secondsdrizzle db dot execute where we're going to get the object the id of string and the email of string. So here we're going
4:38:464 hours, 38 minutes, 46 secondsto execute this SQL which is going to be selecting the id as well as the email which will come in from the pg the SQL
4:38:564 hours, 38 minutes, 56 secondsidentifier and we have the project dbs schema.
4:39:014 hours, 39 minutes, 1 secondusers where the email is going to be matching the payload email.
4:39:094 hours, 39 minutes, 9 secondsNow we're going to say con user and con user here is going to be equals to the result rows. to the first element and we
4:39:174 hours, 39 minutes, 17 secondscan check if we do not have a user then let's go on and throw a bad a new bad request exception that says the user not
4:39:254 hours, 39 minutes, 25 secondsfound. Um but if we do have the user we're going to go on and sign the token.
4:39:304 hours, 39 minutes, 30 secondsSo we say cons the access token is equals to this dot sign token where we're going to pass in the user ID also
4:39:394 hours, 39 minutes, 39 secondsthe user email the project ID the project JWT the O JWT secret and then we
4:39:484 hours, 39 minutes, 48 secondscan return this object that has the user where the ID is going to point to user
4:39:564 hours, 39 minutes, 56 secondsid also the email is going to point to user email and And then we have the access token like this.
4:40:044 hours, 40 minutes, 4 secondsAll right. So let's stop here for a moment and when we return we're going to create more functions. Now this time around is going to be for oorthth. So
4:40:134 hours, 40 minutes, 13 secondsit's going to be for Google or for GitHub O and then we can wrap up this section before we go over to the controller.
4:40:224 hours, 40 minutes, 22 secondsAll right. So we still have some work to do. Let's continue and I'll see you.
4:40:264 hours, 40 minutes, 26 secondsOkay. So let's get into the next function. So this function is to build Google O URL and also the same for
4:40:344 hours, 40 minutes, 34 secondsGitHub. So we're going to be working on the O authentication. Let's get started by having the function. So build Google O
4:40:434 hours, 40 minutes, 43 secondsURL. It needs a client ID. It also needs the redirect URL which is a string and it's going to return a string. Now the
4:40:504 hours, 40 minutes, 50 secondsredirect URL is hey you know once is done redirect the user to this part of our application. So let's build the params. We're going to say new search
4:40:584 hours, 40 minutes, 58 secondsURL params it's going to take in the client ID which is of type the client ID not of type. So it's matching the client ID and the redirect URI is also going to
4:41:084 hours, 41 minutes, 8 secondsmatch the redirect URI and the response type is going to be code and then the scope is going to be the open ID the
4:41:174 hours, 41 minutes, 17 secondsemail as well as the profile. Now we're going to be returning a string which is this Google oorthth URL. So we're going
4:41:244 hours, 41 minutes, 24 secondsto return https the accounts.google.com/o/orth to the v2 and the o here. Then we have
4:41:344 hours, 41 minutes, 34 secondsthe params to string like this. Let's do the same for GitHub. The idea remains the same. We're going to have the client
4:41:414 hours, 41 minutes, 41 secondsID of type string as well as the redirect URI.
4:41:464 hours, 41 minutes, 46 secondsAnd then this is going to return the string. So let's construct the params as well. We're going to say con params is
4:41:534 hours, 41 minutes, 53 secondsequals to the new URL search params where we pass the client ID which is the
4:41:594 hours, 41 minutes, 59 secondsclient ID the redirect URI which is the redirect URI and the scope. Now the
4:42:064 hours, 42 minutes, 6 secondsscope is going to be user column email just like this. And then we can go on to return the URL. Now the URL is the https
4:42:154 hours, 42 minutes, 15 secondscolumn thegithub.com/lo/auorize and then we have the params to string like this. Now let's have the functions.
4:42:264 hours, 42 minutes, 26 secondsSo this function is to handle the Google call back and this is going to be taken in the project log of type string as
4:42:354 hours, 42 minutes, 35 secondswell as the code. Now with the project log we're going to get the project by awaiting this.get get project where we
4:42:424 hours, 42 minutes, 42 secondspass in the project log and then we're going to ensure that the all users table already exist. So we're going to say a this ensure all users
4:42:524 hours, 42 minutes, 52 secondstable which is going to take in the project DB schema. Now if for some reason if we do not have the project
4:42:594 hours, 42 minutes, 59 secondsGoogle client ID or we do not have the project.g Google client secret then we're going to throw a new error. So
4:43:074 hours, 43 minutes, 7 secondsgoing to throw a new not found exception that Google or O is not yet configured for this project. I don't know if you've seen something like this in superbase.
4:43:164 hours, 43 minutes, 16 secondsThis is exactly how you can go on to build your own version of that. Now let's have the API URL. Now if everything is good, we're also going to
4:43:244 hours, 43 minutes, 24 secondsget the API URL. The API URL we're going to say await or we can get this directly from the config service.get where we get
4:43:324 hours, 43 minutes, 32 secondsa string of API URL. And then the redirect URL is then going to be the API
4:43:384 hours, 43 minutes, 38 secondsURL/ project and then slash the project log slash off slash Google/callback.
4:43:484 hours, 43 minutes, 48 secondsThen let's have the token response. The token response is going to be await fetch and then we're going to go to
4:43:544 hours, 43 minutes, 54 secondshttps and then o2 and then we're going to go to googleis.com/token.
4:44:024 hours, 44 minutes, 2 secondsThe method is equals to post. We're also going to have the headers and the headers object. We're going to have the content type. And the content type is
4:44:104 hours, 44 minutes, 10 secondsgoing to be this X application X www form URL encoded. We then have the body.
4:44:184 hours, 44 minutes, 18 secondsThe body is the new search params object method. And here we're going to have the code. And we're also going to have the
4:44:264 hours, 44 minutes, 26 secondsclient ID which is the project.g Google client ID. We also need or we need to pass the client secret. So we're going
4:44:354 hours, 44 minutes, 35 secondsto await um get the client secret from the project of Google client secret and the redirect URI is going to be coming in
4:44:434 hours, 44 minutes, 43 secondsfrom the redirect URI. We also need a grant type and the grant type that we need is the authorization code.
4:44:534 hours, 44 minutes, 53 secondsNow with this we can go on to get the token data. So we're going to say con the token data is equals to and then
4:45:024 hours, 45 minutes, 2 secondswe're going to aait the token response.json which we're going we can also cast as the access token object which is going to be of type string.
4:45:114 hours, 45 minutes, 11 secondsThen the profile we're going to say con profile response is going to be awaiting fetch and then the URL is https. So we
4:45:214 hours, 45 minutes, 21 secondswant to fetch the profile based on the token data that we have. So we make a request to v3/ user info and in the
4:45:294 hours, 45 minutes, 29 secondsheaders we're going to have authorization key where the bearer token is a token data dot access token.
4:45:374 hours, 45 minutes, 37 secondsSo after this let's go and have the profile. So we're going to say con profile and profile is going to be
4:45:444 hours, 45 minutes, 44 secondsequals to await the profile response dojson as email which is of type string and then we can go on to have this method which which we do not have yet.
4:45:554 hours, 45 minutes, 55 secondsWe're going to return this find or create or user. We're going to pass in the project the profile email and the
4:46:034 hours, 46 minutes, 3 secondsprovider which is the o providers.g Google.
4:46:074 hours, 46 minutes, 7 secondsOkay. So we need to create this once we are done. Now we're going to be working for the handle GitHub call back. So the
4:46:144 hours, 46 minutes, 14 secondsasync function handle GitHub call back needs the project log of type string. We also need the code of type string
4:46:244 hours, 46 minutes, 24 secondsand we're going to get the project. So we say con project is equals to await this dot get project where we pass in
4:46:324 hours, 46 minutes, 32 secondsthe project slug and then we're going to await this ensure the all users table exist. We're going to pass in the project DB schema.
4:46:424 hours, 46 minutes, 42 seconds[snorts] Then we'll do the check just as we did for Google. If we do not have the GitHub client ID or there is no GitHub
4:46:504 hours, 46 minutes, 50 secondsclient secret, we need to go and throw a new batch request exception. So we're going to throw a new bad request
4:46:584 hours, 46 minutes, 58 secondsexception which is going to say the GitHub O is not configured for this project.
4:47:064 hours, 47 minutes, 6 secondsOkay. So next is the API URL. We're going to say con API URL. And the API
4:47:134 hours, 47 minutes, 13 secondsURL is equals to this config service dot get I want to get the string where we
4:47:194 hours, 47 minutes, 19 secondshave the API URL. And the redirect URI is also going to be equals to the API
4:47:264 hours, 47 minutes, 26 secondsURL/ project and then / the project log/ github/callback.
4:47:344 hours, 47 minutes, 34 secondsSo let's have the token response. We're going to say con token response is going to be awaiting fetch and fetch needs
4:47:424 hours, 47 minutes, 42 secondsthis URI. So the https the github.com/lo/ and then the access token. We can
4:47:504 hours, 47 minutes, 50 secondsconfigure fetch so that we have the method. The method here is going to be post. We're also going to have the headers. The headers is going to have
4:47:584 hours, 47 minutes, 58 secondsthis headers object where the content type is application JSON. So not what we had initially with with Google. We're
4:48:054 hours, 48 minutes, 5 secondsalso going to have the accept where we're going to accept application/json and then we need the request body. Now
4:48:134 hours, 48 minutes, 13 secondsfor the body we're going to JSON stringify and we're going to stringify this object we have here. So this object
4:48:214 hours, 48 minutes, 21 secondscontains the client ID which is equals to project.github client ID also the client secret which is going to match
4:48:294 hours, 48 minutes, 29 secondsthe project.github GitHub client secret and then we have the actual code and the code is going to be passed over here.
4:48:384 hours, 48 minutes, 38 secondsSo we're going to have the code and the redirect URI is going to be equals to the redirect URI.
4:48:454 hours, 48 minutes, 45 secondsOkay. So after all of these we can then go on to have the token data. So we're going to say const the token data and
4:48:534 hours, 48 minutes, 53 secondstoken data is equals to await the token response dojson as this object where we
4:49:004 hours, 49 minuteshave the access token of type string and with this we can going to have the profile response. So we say con profile
4:49:074 hours, 49 minutes, 7 secondsresponse is awaiting fetch. So the fetch endpoint is api.github.com/
4:49:154 hours, 49 minutes, 15 secondsuser/ emails. And the header here is going to have this object with authorization with the bearer token. So we have the token data dot access token.
4:49:264 hours, 49 minutes, 26 secondsAnd here we're going to have accept where we're going to be accepting this type. So this type here is going to be
4:49:334 hours, 49 minutes, 33 secondsthe application for/vnd.github plus json.
4:49:404 hours, 49 minutes, 40 secondsSo let's have the emails. I'm going to say con emails is going to be equals to await the profile response.json
4:49:484 hours, 49 minutes, 48 secondsas this array where we have array of object the email is a string and primary is boolean
4:49:564 hours, 49 minutes, 56 secondsand then we can say con primary so that we can have the primary email. So we're going to say con primary is going to be emails.find find where we find each or
4:50:054 hours, 50 minutes, 5 secondswe have each email and we're going to return the email primary otherwise the first email here and if we do not get
4:50:124 hours, 50 minutes, 12 secondsany email any primary email then something is wrong we're going to throw a new part request exception that we
4:50:204 hours, 50 minutes, 20 secondscould not read the email from GitHub and also here once we are good we can also go on to return the find or create
4:50:294 hours, 50 minutes, 29 secondsuser so we're going to return this find or create or o user where we are going
4:50:354 hours, 50 minutes, 35 secondsto pass in the project. We're also going to pass in the primary email and then we are also going to pass in the GitHub provider.
4:50:474 hours, 50 minutes, 47 secondsOkay, so let's finally have this create the find or create or off user. So here we're going to have the private async
4:50:534 hours, 50 minutes, 53 secondsmethod find or create or off user. So this is going to need the project. It's also going to need the project is the
4:51:024 hours, 51 minutes, 2 secondstype of project.infair select. We also need the email which is of type string. We also need the
4:51:094 hours, 51 minutes, 9 secondsprovider which is of type string. And let's check if this is existing. So we say con existing is with this.
4:51:184 hours, 51 minutes, 18 secondsDb.execute.
4:51:204 hours, 51 minutes, 20 secondsAnd what are we going to be executing here? We're going to be having this back where we get the ID and the email. And we're going to be executing this SQL
4:51:284 hours, 51 minutes, 28 secondswhere we want to have a select operation. So we're going to select ID and email. And ID and email is going to
4:51:354 hours, 51 minutes, 35 secondscome from the SQL identifier and we pass in the DB schema on the project users where email is matching email.
4:51:464 hours, 51 minutes, 46 secondsThen again we're going to have the user.
4:51:484 hours, 51 minutes, 48 secondsSo we're going to say let user is equals to existing row. So the first element here. And if for some reason we are not
4:51:554 hours, 51 minutes, 55 secondsable to find a user here like this, we're going to then go on to have the result. The result is going to be with
4:52:034 hours, 52 minutes, 3 secondsthis.razo dbexecute and we expect to get back the ID and the email so that we can go on to insert
4:52:114 hours, 52 minutes, 11 secondsbecause we did not find the user. So we're going to have the SQL which is then going to run the insert into the
4:52:184 hours, 52 minutes, 18 secondsSQL.identifier identifier and we're going to pass the project to the DBs schema users. I want to insert the email. We
4:52:274 hours, 52 minutes, 27 secondsalso want to insert the provider as well as the email verified.
4:52:334 hours, 52 minutes, 33 secondsAnd then we're going to have the values next that want to insert. So the values the email and then we have the provider and true. And then want to go to return
4:52:424 hours, 52 minutes, 42 secondsID as well as email. And then we're going to say the user is then going to be equals to the result that we get here and the first element from the row list.
4:52:554 hours, 52 minutes, 55 secondsAnd after this we can now sign the access token for this user. So we're going to say con access token is going to be equals to this dot sign token. And
4:53:054 hours, 53 minutes, 5 secondssign token is going to take in the user ID, the user email, the project ID and the O JWT secret.
4:53:154 hours, 53 minutes, 15 secondsAll right. So, as always, we can then go on to return the object. We're going to return the object here which has user
4:53:234 hours, 53 minutes, 23 secondsand then it's has the ID which is a type ID. The email is the user email and then the access token like this and we can close this up here.
4:53:354 hours, 53 minutes, 35 secondsOkay. So now we are getting there. The next step we need or what we need to create next is just to method one to get
4:53:424 hours, 53 minutes, 42 secondsyou. Okay. So let's wrap this up and the next method we're going to have is to get users. So here we're going to continue and we're going to have the
4:53:504 hours, 53 minutes, 50 secondsasync get users and this is going to take in the project log. Now as always we're going to try to retrieve the project. So do not mind this
4:53:584 hours, 53 minutes, 58 secondsindentation. I'm going to format this later. So project is going to be await this get project based on the slug. And
4:54:054 hours, 54 minutes, 5 secondsthen we're going to also await this dot ensure users table. And then we're going to have the project db schema.
4:54:144 hours, 54 minutes, 14 secondsThen let's have results. We're going to say con result is going to be await this drizzle db.execute
4:54:224 hours, 54 minutes, 22 secondsand we're going to execute this here where we have the id of type string. We also have the email. The email is of type string. We also have the email
4:54:314 hours, 54 minutes, 31 secondsverified which is a boolean. We also have the provider. The provider is of type string. And then we also have the
4:54:414 hours, 54 minutes, 41 secondscreated at which is of type string. Then we're going to have the SQL. And in the SQL we're going to select ID, the email, email verified provider and the created.
4:54:554 hours, 54 minutes, 55 secondsAnd all of these they're going to come from the SQL identifier where we have the project DBs schema.
4:55:034 hours, 55 minutes, 3 secondsunderscore users and then we're going to order by created at in descending order. Now we can go on
4:55:124 hours, 55 minutes, 12 secondsto return the results. So we're going to be returning the results dot rows dot map and then we have each row and the ID
4:55:214 hours, 55 minutes, 21 secondsis going to be the rows do ID. We're also going to have the email which is the rows do email. We have the email
4:55:284 hours, 55 minutes, 28 secondsverified which is the rows email_verified.
4:55:324 hours, 55 minutes, 32 secondsWe also have the provider which is the row.provider and the created at is the row.creat
4:55:394 hours, 55 minutes, 39 secondscreated at okay so the next one is to get the oorthth settings. Okay. So let's
4:55:464 hours, 55 minutes, 46 secondshave that um let's have the async get off settings based on the project log.
4:55:544 hours, 55 minutes, 54 secondsWe're going to need most of this in the controller. So we're going to say con project is going to be awaiting this.get get project where we can pass in the
4:56:024 hours, 56 minutes, 2 secondsproject log and then we can just going to return the settings. So we're going to return the object which has the Google client ID which is going to point to the project. Google client ID.
4:56:144 hours, 56 minutes, 14 secondsRemember we had all this in the DB. We also have the Google client secret which is going to point to the Google dot the project. Google client secret. We also
4:56:234 hours, 56 minutes, 23 secondshave the GitHub client ID. This is going to point to project.github GitHub client ID and then we have the GitHub client secret.
4:56:344 hours, 56 minutes, 34 secondsThe GitHub client secret is going to point over to the project GitHub client secret.
4:56:414 hours, 56 minutes, 41 secondsThen let's have the method which is to update our settings. Now for this we're going to get the project log. But then
4:56:504 hours, 56 minutes, 50 secondsagain we're going since it's to it's an update we're going to have the settings want to update. So, it's going to be this object with the Google client ID.
4:56:574 hours, 56 minutes, 57 secondsThey're all optional string. We're also going to have the Google client secret, which is also going to be an optional string. We have the GitHub client ID.
4:57:074 hours, 57 minutes, 7 secondsThe GitHub client ID is going to be an optional string. And finally, we have the GitHub client secret, which is going
4:57:144 hours, 57 minutes, 14 secondsto be an optional string. Then, we can go on to fetch the project for which want to run this update. We're going to
4:57:214 hours, 57 minutes, 21 secondssay con project and the project is going to be equals to await this get project where we pass in the project log and
4:57:294 hours, 57 minutes, 29 secondsthen we're going to say const updated and con updated is going to be equals to await this drizzle db where we can call
4:57:394 hours, 57 minutes, 39 secondsupdate and we pass in the project. We're also going to have set which is going to take in the settings and then we have
4:57:474 hours, 57 minutes, 47 secondsdot where equals the project id matches the project ID and then we want to also
4:57:544 hours, 57 minutes, 54 secondshave dot returning and finally we can go on to return updated.
4:58:014 hours, 58 minutes, 1 secondOkay, so this is pretty much everything we need to get started. Now we have just one error and the error is from here
4:58:094 hours, 58 minutes, 9 secondsbecause minimum yeah this is just a VS code error. Sometimes VS Code do this to me and if I reload this I think we're going to be good to go without having
4:58:184 hours, 58 minutes, 18 secondsany other errors. Now let's work on the controller. I'm going to close this and right in here in the project off we are
4:58:254 hours, 58 minutes, 25 secondsgoing to be creating a project of controller.ts ts file and I'm going to collapse this and inside here we're going to be
4:58:344 hours, 58 minutes, 34 secondsbringing in body we're also going to be importing controller we're going to be bringing in get param post query
4:58:424 hours, 58 minutes, 42 secondsresponse all from nextjs common we're also going to be importing response type from express to bring in the config
4:58:494 hours, 58 minutes, 49 secondsservice from nestjs config we're also going to bring in the project authentication service from one level up
4:58:564 hours, 58 minutes, 56 secondsto the project o service file Then we need our DTOS. Let's import the sign up DTO from the DTO signup. DTO
4:59:044 hours, 59 minutes, 4 secondsfile. And the same for the sign in DTO which will come from the sign in DTO file. And lastly, we need the magic link
4:59:124 hours, 59 minutes, 12 secondsDTO which will come from magic link. Now the path is going to be project/ project log/. And in the constructor, so after
4:59:214 hours, 59 minutes, 21 secondsthe class definition, we're going to inject the project project of service and also the config service. So project
4:59:294 hours, 59 minutes, 29 secondso service is of type project o service and config service is of type config service. The first route is for sign up.
4:59:374 hours, 59 minutes, 37 secondsSo from the param we're going to retrieve project log and also this the body which we store in DTO. And here
4:59:444 hours, 59 minutes, 44 secondswe're just going to straight up call the project service signup. As easy as is it. Now the same for sign in. We're
4:59:524 hours, 59 minutes, 52 secondsgoing to retrieve the project log and also the body which will come in from the DTO. And this is going to be of type
4:59:584 hours, 59 minutes, 58 secondssign in DTO. And we can just return this project service signin where we pass in the project log and the DTO.
5:00:075 hours, 7 secondsNext is this post request to magic link.
5:00:105 hours, 10 secondsSo the function get magic link is going to take in the project log and also the DTO and then we're just going to return
5:00:175 hours, 17 secondsthis dot project o service and then we can call send magic link where we pass in the project log as well as the DTO.
5:00:275 hours, 27 secondsNext it is get request to magic link verify. So to verify the magic link we're going to retrieve the project log from the param and also the token is
5:00:365 hours, 36 secondsgoing to be cuten from the query. So we make use of the query decorator.
5:00:415 hours, 41 secondsThen we can recall this project o serviceverify magic link where we pass in the project log as well as the token.
5:00:505 hours, 50 secondsNow the next is for Google Earth. So we're going to have as in Google and the param we get the project log. We're also going to get the response making of the
5:00:585 hours, 58 secondsrest decorator. And first let's have the settings. So settings is going to aid this. project o service dot get oath
5:01:065 hours, 1 minute, 6 secondssettings based on this project ID. If we do not have the Google client ID in the settings then there's an error. We're
5:01:135 hours, 1 minute, 13 secondsgoing to return a status of 400.json which is going to have a message of Google o is not yet configured.
5:01:215 hours, 1 minute, 21 secondsThen the API URL is going to be gotten from the config service get the API URL.
5:01:275 hours, 1 minute, 27 secondsThe redirect URL is going to come from this API URL/ project/ project log and
5:01:345 hours, 1 minute, 34 secondsthen we have / Google/callback and then the URL is going to be the project or service dot build Google URL
5:01:425 hours, 1 minute, 42 secondsbased on the Google client ID and the redirect URL.
5:01:465 hours, 1 minute, 46 secondsThen finally we can go on to return the response redirect to that URL.
5:01:525 hours, 1 minute, 52 secondsNow for Google call back, the Google call back is going to take in the project log from the param. It's also going to retrieve the code and the response.
5:02:025 hours, 2 minutes, 2 secondsThen we're going to have the result and the result over here after the response is going to be equals to this.pro
5:02:105 hours, 2 minutes, 10 secondsservice. We then call the handle Google call back where we pass in the project log and the code. Then the web URL. So
5:02:185 hours, 2 minutes, 18 secondsthe front end is going to be equals to the config service and then we have get where we get the web URL and then we're
5:02:255 hours, 2 minutes, 25 secondsgoing to return the response redirect URL to this web URL and the access token is the result access token. Now we're
5:02:345 hours, 2 minutes, 34 secondsgoing to wrap it up with GitHub. So it's pretty much the same as Google. Now GitHub we're going to take the project log and also the response here making up
5:02:435 hours, 2 minutes, 43 secondsthe rest decorator and then we have the settings. We're also going to call the get oath settings for this project log.
5:02:515 hours, 2 minutes, 51 secondsAnd if the project do not have the GitHub client ID, then they haven't configured GitHub. So we return a status
5:02:585 hours, 2 minutes, 58 secondsof 100 and a JSON message that says GitHub or is not yet configured. But if it is configured, let's construct the
5:03:065 hours, 3 minutes, 6 secondsURL. And the URL is going to be this.config service.get the API URL. The
5:03:125 hours, 3 minutes, 12 secondsredirect URL is API URL/ project/ project log/github/callback.
5:03:205 hours, 3 minutes, 20 secondsAnd finally, we get the URL by calling the project o service build Google GitHub URL. So we pass in the settings
5:03:285 hours, 3 minutes, 28 secondsand the redirect URL. And finally, we can go on to return the response redirect to that URL.
5:03:365 hours, 3 minutes, 36 secondsFor the GitHub call back, we have the async GitHub call back method with takes in the process log the code as well as a
5:03:455 hours, 3 minutes, 45 secondsresponse which is of type response. So finally we can go on to get the result.
5:03:515 hours, 3 minutes, 51 secondsSo the result is going to be our diesel project authentication service handle GitHub callback where we pass in the
5:03:585 hours, 3 minutes, 58 secondsproject ID as well as the code and then the web URL is going to be equals to this doconfig service.get get where we
5:04:065 hours, 4 minutes, 6 secondshave this string and then we're going to return a response redirect to that URL and the query parameter has the access token which is the result access token.
5:04:175 hours, 4 minutes, 17 secondsI'm going to give this a save and now that we have this the next is for us to create the other controller. Now the other controller is pretty much
5:04:265 hours, 4 minutes, 26 secondsstraightforward but this controller here is going to be used for the dashboard route as I said earlier. So let's create this. I'm going to come over here and we're going to be creating a new file.
5:04:365 hours, 4 minutes, 36 secondsThis new file is going to be the project o dashboard controller.ts file like this.
5:04:445 hours, 4 minutes, 44 secondsSo let's lay out the contents of this file. We're going to be importing body controller get param post useguard from
5:04:545 hours, 4 minutes, 54 secondsnestjs common. We also need our project authentication service which will come from one level up to the project o
5:05:015 hours, 5 minutes, 1 secondservice file. Our JWT O card is going to come from the cards the off the card the JWT off. And the organization row card
5:05:105 hours, 5 minutes, 10 secondsis also going to come from the off guard the organization row guard and the controller is going to be and then the
5:05:185 hours, 5 minutes, 18 secondsslug the project ID or the project the project log/off.
5:05:235 hours, 5 minutes, 23 secondsWe're going to make use of our two guards, the JWT og guard and the organization row guard. And in the constructor of the class, the project os
5:05:325 hours, 5 minutes, 32 secondsdashboard controller, we're going to have the project o service. Now the first is this get to get users.
5:05:405 hours, 5 minutes, 40 secondsWe're just going to return a call which is going to call to the project o service dot get user where we pass a
5:05:475 hours, 5 minutes, 47 secondsproject log. The next is just to get the settings. So we're going to have get settings which is going to take the project log from the param and we're
5:05:555 hours, 5 minutes, 55 secondsgoing to be returning a call to the project o service. So this project or service that get all settings based on
5:06:025 hours, 6 minutes, 2 secondsthis project log and finally is the settings and this is going to go to um we're going to have the update settings
5:06:115 hours, 6 minutes, 11 secondsmethod and here we retrieve project log from the param and then the body is just this body which is of this type where
5:06:195 hours, 6 minutes, 19 secondswe're going to have the Google client ID Google client secret the GitHub client ID the GitHub client secret all optional
5:06:275 hours, 6 minutes, 27 secondsand then we can go on to return the O service call.
5:06:325 hours, 6 minutes, 32 secondsSo we're going to return this project O service dot update all settings based on this project log and the settings.
5:06:425 hours, 6 minutes, 42 secondsSo let's give this a save. The next thing we're going to be creating is the project authentication module. To create
5:06:495 hours, 6 minutes, 49 secondsthe project O module, we need to come here and in project O, we're going to be creating a new file which is the project.module.ts
5:06:575 hours, 6 minutes, 57 secondsts file. Now in here we're going to start by bringing in the module decorator and module is going to come from NestJS common. We're also going to
5:07:065 hours, 7 minutes, 6 secondsbe importing the JWT module which is going to come from NexJS JWT. We also need to import our project o service
5:07:145 hours, 7 minutes, 14 secondsfrom one level up the project o service file. We also need the project o controller which will come from the
5:07:205 hours, 7 minutes, 20 secondsproject o controller file. And then we need to bring in the project o dashboard controller which is going to also come
5:07:285 hours, 7 minutes, 28 secondsin from the project but this time the project o dashboard controller and we need the o module which will come from
5:07:355 hours, 7 minutes, 35 secondsthe level up folder o and then the o.m module. Now in the module decorator import we're going to register the JWT
5:07:435 hours, 7 minutes, 43 secondsmodule as well as the module. The providers is going to have the project o service and the controller is going to
5:07:505 hours, 7 minutes, 50 secondshave the project o controller and the project o dashboard controller and we can go on to export the class the project o module.
5:07:595 hours, 7 minutes, 59 secondsNow as we know the next we're going to do is to register this module in our application module. So we're going to
5:08:065 hours, 8 minutes, 6 secondscome to the explorer and locate the app module and in here we're going to have the project earth module like this.
5:08:155 hours, 8 minutes, 15 secondsAnd then we can go on to save the contents of this file. Now we're going to be doing most of our work from henceforth in the front end side of
5:08:225 hours, 8 minutes, 22 secondsthings so that we can connect everything together and give this a test. We are going to start implementing the front
5:08:295 hours, 8 minutes, 29 secondsend side of the application. So this is the web. You need to come into the web and you know we have the source folder
5:08:365 hours, 8 minutes, 36 secondsand inside the app actually not in the app. So let's come over to the features.
5:08:415 hours, 8 minutes, 41 secondsWe need to create a new feature which would have couple of helpers that we're going to be working with. So we're going to create a new folder which is going to
5:08:495 hours, 8 minutes, 49 secondshold the project off code. And in here we're going to then have the project off
5:08:565 hours, 8 minutes, 56 seconds- helpers server.ts file. So these are the helpers that we most likely or we're going to make use of in the home server
5:09:045 hours, 9 minutes, 4 secondspages. Let's start by importing redirect from Nex.js JS/Navigation and after which we're going to be
5:09:115 hours, 9 minutes, 11 secondsbringing in the API client. The API client is going to be coming in from at lib/exios.
5:09:175 hours, 9 minutes, 17 secondsWe also need to bring in the retrieve token from cookie helper function. Our utility function. So we're going to be importing it from at/server
5:09:265 hours, 9 minutes, 26 secondsuts/utis file. We're also going to import the cookie keys which will come from superv/ constants. And then let's
5:09:345 hours, 9 minutes, 34 secondshave the type. We're going to be importing the type and the type which is the project authentication or project o user and also the project o settings
5:09:435 hours, 9 minutes, 43 secondswhich will come from our super votes types. Let's have the first function.
5:09:475 hours, 9 minutes, 47 secondsWe're going to export this async function which will say retrieve project of users from API and this function is
5:09:545 hours, 9 minutes, 54 secondsgoing to take in the organization log of type string also the project log of type string and it's going to return a
5:10:015 hours, 10 minutes, 1 secondpromise that resolves to the project of user list. Then let's have the token.
5:10:075 hours, 10 minutes, 7 secondsWe're going to say con token is going to be equals to await to retrieve token from cookie and we're going to have our try catch block. So in the try block
5:10:165 hours, 10 minutes, 16 secondslet's we have data. So we're going to get data by making our API call. So this call is going to be the API client get
5:10:225 hours, 10 minutes, 22 secondswhere we expect the project or user and then we're going to the path is going to be /og the organization log/ project the project log/ users.
5:10:345 hours, 10 minutes, 34 secondsWe need to pass in the header as it's a get request. Um no no data here. So the cookie is going to be the cookie keys access token which is equals to token.
5:10:435 hours, 10 minutes, 43 secondsAnd then we can go on to return data. Now let's also have a catch block.
5:10:515 hours, 10 minutes, 51 secondsSo in the catch block, we're just going to redirect the user to /organizations the organizations log/ project. Now let's have the next helper function.
5:11:015 hours, 11 minutes, 1 secondThis is also another async function which is retrieve o settings from API.
5:11:075 hours, 11 minutes, 7 secondsSo we're going to need the organization log of type string. We're also going to need the project log of type string. Now
5:11:155 hours, 11 minutes, 15 secondsthis function is going to be returning the promise that resolve to the project or settings type.
5:11:235 hours, 11 minutes, 23 secondsThe token is equals to a way to retrieve token from cookie and then we have our try block and the try block we are going
5:11:305 hours, 11 minutes, 30 secondsto have the request to the endpoint. So we get data and we're going to await the API client.get get we're going to
5:11:385 hours, 11 minutes, 38 secondsretrieve the project or settings type and the path is /og and then
5:11:455 hours, 11 minutes, 45 secondsthe organization log/ project the project log/ settings. Now we're going to have the headers which have cookie
5:11:535 hours, 11 minutes, 53 secondsand the value is going to be the cookie keys access token which is going to be equals to token and then we can go on to return data.
5:12:045 hours, 12 minutes, 4 secondsSo let's have the catch block. And in the catch block here, we're just going to redirect the user to /organizations
5:12:115 hours, 12 minutes, 11 secondsthe organizations log/ project. All right. So now we're going to be creating a UI that tries to map closely with what
5:12:205 hours, 12 minutes, 20 secondswe have in superbase. So we're going to take a moment and be implementing that yet we have loads and loads of files trust me um to you know get that UI. So
5:12:285 hours, 12 minutes, 28 secondswe are not going to be writing all those code ourself. I have already provided us with the different templates that we're going to need. So the templates for the
5:12:365 hours, 12 minutes, 36 secondsaction definitely we're going to walk through all of these. We also have the client schema. We also have the constants that we'll need to work with the project o form. So this is the form.
5:12:485 hours, 12 minutes, 48 secondsWe also need to have the project o provider. So we're going to have different providers. So this is all the code we need and also the server schema,
5:12:575 hours, 12 minutes, 57 secondsthe shell, the URL config page and the author. So as you can see here, these are pretty much lines of code that could
5:13:045 hours, 13 minutes, 4 secondstake, you know, it could be it own course. So let's just save ourselves the energy for typing out all these lines of code ourselves by working through the
5:13:125 hours, 13 minutes, 12 secondstemplates already pre-built. I've tested this. So these are working. Maybe we might do one or two slight changes, but then let's go on and implement this next. Okay, so let's get started.
5:13:255 hours, 13 minutes, 25 secondsActually, the way we're going to approach this, I'm going to exit out of here. If you run the application, say we say pnpm pnpm
5:13:345 hours, 13 minutes, 34 secondsdev, which is going to start up the local dev server by running the API as well as the web. And I'm just going to give this a refresh so that we see the
5:13:425 hours, 13 minutes, 42 secondscurrent state of our application. And the next step, the next thing we're going to be implementing once the API um gets up and running is this project off.
5:13:515 hours, 13 minutes, 51 secondsAnd that project off is currently in this page. I just give this a moment for the API to get started. Do we have any errors? No, we don't. Okay. So now it's up and running. We give this a refresh.
5:14:025 hours, 14 minutes, 2 secondsWe see this page could not be found. So maybe something is wrong. I'm just going to come over to /organization so that we can select the organization.
5:14:105 hours, 14 minutes, 10 secondsAnd yeah. So, and now the layout is broken. No worries. This is going to be the final bug fixes. I know the new
5:14:175 hours, 14 minutes, 17 secondsorganization page. Does it work yet? Do we have this new page? I'm not quite sure. So, it's a 44 page. And over here,
5:14:245 hours, 14 minutes, 24 secondsthe new organization is also broken. So, let's click here. So, we have the
5:14:315 hours, 14 minutes, 31 secondsorganization name. And I'm quite not sure why I see organization name here rather than see the actual name of the organization.
5:14:425 hours, 14 minutes, 42 secondsBut if we come here, maybe I fixed that later. I'm sure we had that fixed, but maybe it got broken while recording. We have the project. So I want to click
5:14:505 hours, 14 minutes, 50 secondsinto this project and write into this project. We can see over here we have the different tables. And there's something I want us to see is this O.
5:14:585 hours, 14 minutes, 58 secondsAnd this off currently is this 404 page.
5:15:015 hours, 15 minutes, 1 secondSo let's go on and create the different page. And then we're going to have the migration gradually. I'm going to come
5:15:075 hours, 15 minutes, 7 secondsover here and collapse this and we're going to come into the app the dashboard organizations the organizations log and
5:15:155 hours, 15 minutes, 15 secondsthe projects log. So over here we want to create the o. So here we're going to have o and here we're going to have like
5:15:235 hours, 15 minutes, 23 secondsusers page the providers page and URL configuration page. So let's have this folder. Let's start up with users and in
5:15:325 hours, 15 minutes, 32 secondsusers we're going to have the page.tsx file. Now, in here, we're going to create another folder, and this is going
5:15:395 hours, 15 minutes, 39 secondsto be for providers. And in here, we're also going to have the page.tss file.
5:15:445 hours, 15 minutes, 44 secondsSo, I'm just going to copy this, and I'll paste this in here.
5:15:495 hours, 15 minutes, 49 secondsWe have one more page, and that is the URL - configuration page. And this is also going to have the page.tsx.
5:16:005 hours, 16 minutesAll right. So, let's get started with the we're also going to have a layout.
5:16:035 hours, 16 minutes, 3 secondsOkay, so let's have that in mind. We're also going to have a layout. So, I think we should have the layouts now. So, I'm going to close all of these. And in here, we're going to have the layout.
5:16:135 hours, 16 minutes, 13 secondsSo, in the O, we're going to have the layout folder. And actually, it's the layout file. So, I'm going to delete
5:16:205 hours, 16 minutes, 20 secondsthis. And this is going to be the layout.tsx file. All right. So, we're definitely going to have errors because we're not
5:16:295 hours, 16 minutes, 29 secondsexporting the default in the in the layout. So that's why we currently have this broken.
5:16:365 hours, 16 minutes, 36 secondsAnd yeah, and also the O page is still, as you can see, we have O, but we do not have the page.t CSS. So the layout is
5:16:425 hours, 16 minutes, 42 secondsgoing to perform a smart redirect, and it's more or less going to redirect the user to the page, which is the users
5:16:525 hours, 16 minutes, 52 secondspage. All right, so let's come back and implement the layout.tsx.
5:16:575 hours, 16 minutes, 57 secondsNext, we're going to be implementing the layout.tsx. Before we do, I want to correct something I said earlier. We're going to have the O page.tsx, but the O
5:17:055 hours, 17 minutes, 5 secondspage is going to be redirecting to the users page as the default. So here we're going to have the page.tsx.
5:17:135 hours, 17 minutes, 13 secondsSo now we're going to have a different kind of error which is very much okay, but we can get started by implementing
5:17:205 hours, 17 minutes, 20 secondsthe layout. So over here we're going to be importing the project authentication shell. We do not have this but this is
5:17:285 hours, 17 minutes, 28 secondsgoing to leave in the features the project o and then we can export the default async function which we're going
5:17:355 hours, 17 minutes, 35 secondsto call the or layout. As always you know this will take in the params and the children props and the children is
5:17:425 hours, 17 minutes, 42 secondsreact node and the params is going to have the slog as well as the project log. Then we can go on to return JSX and
5:17:505 hours, 17 minutes, 50 secondsthis is a very simple JSX but first we're going to retrieve slog and project log from the params. So as I said this
5:17:585 hours, 17 minutes, 58 secondsis going to be a very simple JSX um file. So apart from this having this style in here we're just going to have
5:18:055 hours, 18 minutes, 5 secondsthis project authentication shell which is going to take in the organization log the project log and also going to wrap children just like this.
5:18:165 hours, 18 minutes, 16 secondsDefinitely we have this error because we do not have this yet. But before we fix this, I think we should go on and also
5:18:235 hours, 18 minutes, 23 secondsimplement the page.tsx file which is going to be a very simple and straightforward page. So I'll come back to the page and over here let's start by
5:18:325 hours, 18 minutes, 32 secondsimporting redirect. Redirect is going to come from next navigation and then we're just going to do the simple redirect. So
5:18:405 hours, 18 minutes, 40 secondswe're going to export the default async function. We called this the O index page which is going to receive the
5:18:475 hours, 18 minutes, 47 secondsparams. Now we have seen that these params is going to be this promise that resolves to the slog of type string as well as the project log of type string.
5:18:565 hours, 18 minutes, 56 secondsLet's retrieve these values from the params. We're going to say cons and project log is going to be equals to awaiting the params. And finally we can
5:19:055 hours, 19 minutes, 5 secondsgo on to perform a redirect. So, we're going to redirect to /organizations/organizations log/ project log/ users.
5:19:165 hours, 19 minutes, 16 secondsNow, let's go and give this file a save.
5:19:185 hours, 19 minutes, 18 secondsAnd you're going to see us being redirected. Actually, we're not going to be redirected. And the reason why is because we the layout has a bulk. So, if
5:19:265 hours, 19 minutes, 26 secondswe give this a save, yeah, nothing much is going to happen until we fix the layout. Remember, we've had this issue
5:19:335 hours, 19 minutes, 33 secondsbefore. The layout runs first before any page.
5:19:395 hours, 19 minutes, 39 secondsLet's grab this project or shell from the features from the template. So, we're going to come over to the template
5:19:465 hours, 19 minutes, 46 secondsand you want to look for this project or shell.tsx file. So, we're just going to copy this and this file. We're going to
5:19:555 hours, 19 minutes, 55 secondspaste it right here in the features. So, you want to paste this in here. And this should fix the error that we have. Let's give this a moment. we're going to be
5:20:035 hours, 20 minutes, 3 secondsredirected over to the users page which is another page you see where we have an error. So let's take a look at this. I'm
5:20:125 hours, 20 minutes, 12 secondsjust going to get rid of this and bring this in so that we can understand the code that is going on in this shell before we continue. So I'll remove the templates and I will come over here.
5:20:245 hours, 20 minutes, 24 secondsNow you see here we have different links. We have a link to providers and a link to URL configuration and those are
5:20:315 hours, 20 minutes, 31 secondsthe pages that we created over here. So we created the page for URL configuration. We also pro created a page for providers and the users page is
5:20:395 hours, 20 minutes, 39 secondsgoing to be the default. So here we have the path name which we get from use path name and we have the base URL. We also
5:20:475 hours, 20 minutes, 47 secondsgoing to have it active prop and there we go to render JSX. we display the navigation links and then we're also going to map through the config items.
5:20:575 hours, 20 minutes, 57 secondsSo the config items if we scroll up we can see the config item are these where we have the providers the URL
5:21:065 hours, 21 minutes, 6 secondsconfiguration. So once we see this is going to make more more sense but this is then going to display children over here.
5:21:155 hours, 21 minutes, 15 secondsSo we have this done and the next step now is for us to work on the users page.
5:21:215 hours, 21 minutes, 21 secondsSo this users page is the page we are going to be working on. Next, let's let's fix this error we currently have
5:21:285 hours, 21 minutes, 28 secondsby having the O users page. So we're going to be importing the retrieve project O users which will come from the
5:21:365 hours, 21 minutes, 36 secondsAPI. So we know that this is going to come from the DB and then the project.
5:21:415 hours, 21 minutes, 41 secondsSo that's where we retrieving the O users from API. You can always double check what we did on the back end. And then we're also going to import the
5:21:495 hours, 21 minutes, 49 secondsproject of users which will come from the features the project off and project of users.
5:21:565 hours, 21 minutes, 56 secondsOkay, we're also going to take this in a moment but let's also export the default async function which we're going to call
5:22:045 hours, 22 minutes, 4 secondsthe o users page. And here we're going to dstructure params and then we say this is going to be of type object. So
5:22:135 hours, 22 minutes, 13 secondswe have params and from params we have the slog and the project log they both of type string. We're going to then say
5:22:215 hours, 22 minutes, 21 secondscon this sl is going to be equals to awaiting parents because we are destructuring it here.
5:22:295 hours, 22 minutes, 29 secondsAnd we can say con users is equals to a way to retrieve project or users from API where we pass in this log as well as
5:22:365 hours, 22 minutes, 36 secondsa project log. And finally we can go on to return the project or users which is then going to take in the users that we
5:22:445 hours, 22 minutes, 44 secondsare fetching from the retrieve project authentication users. So again, we are missing this from the template. Let's
5:22:515 hours, 22 minutes, 51 secondsmake sure we have this. So let's come over to the template again. And over in the template, we need the project
5:22:575 hours, 22 minutes, 57 secondsauthentication users. So this can copy this. And we're going to drop
5:23:055 hours, 23 minutes, 5 secondsit right in here like this. And now this should fix the error we have. And we should see this page compile. And voila.
5:23:135 hours, 23 minutes, 13 secondsSo this is what it looks like. Now this is going to show users that are making
5:23:195 hours, 23 minutes, 19 secondsuse of our application to bootstrap their authentication. So they are making use of authentication in super vault
5:23:275 hours, 23 minutes, 27 secondsjust as you have in super base. So they're going to appear here right in this table. Okay. And if you visit this
5:23:355 hours, 23 minutes, 35 secondsyou can see it only goes on to for now we have this filtered here where it filters the user email. case you want
5:23:445 hours, 23 minutes, 44 secondsto check if it includes the query over here because we get the query from the state otherwise we're going to use the user ID to lower the case includes query
5:23:525 hours, 23 minutes, 52 secondslike this and over here we then going to display the users in a table like this all right so that's all that is going on
5:24:015 hours, 24 minutes, 1 secondhere now we can get rid of this and bring this back in and we're good now if you take a look at this page and you
5:24:095 hours, 24 minutes, 9 secondsclick on this you're going to come over to the URL configuration or there's the providers page which also is a 44 page.
5:24:185 hours, 24 minutes, 18 secondsSo this providers page here, this is the page we are going to be working on next.
5:24:245 hours, 24 minutes, 24 secondsSo I'm going to collapse this and we can get started by importing the retrieve o settings from API and this is going to
5:24:345 hours, 24 minutes, 34 secondsthen come in from the features the project o and the project o helpers server file. So remember this helper
5:24:415 hours, 24 minutes, 41 secondsfunction we have this already and then we're going to import the project or providers and then this is going to come
5:24:485 hours, 24 minutes, 48 secondsin from add features and then for/ project o and then we have the project o providers
5:24:565 hours, 24 minutes, 56 secondsthen we can go on to export the default asynchronous function which you call the o providers page and this is going to
5:25:045 hours, 25 minutes, 4 secondstake in params and here we're saying hey this is going to take in this object that has is props and the props is this
5:25:125 hours, 25 minutes, 12 secondsparams that looks like this. So it's going to resolve to a promise that has a slog and the project log. You know we have done this pattern repeatedly now in
5:25:205 hours, 25 minutes, 20 secondsthis project. So we are retrieving the slug and the project log from the params and the settings is also going to be
5:25:275 hours, 25 minutes, 27 secondsawaiting the retrieve all settings from API and this is then going to take in the slog as well as the project slug.
5:25:365 hours, 25 minutes, 36 secondsAnd finally we can go on to return jsx.
5:25:395 hours, 25 minutes, 39 secondsSo we're going to have the project o providers. We're going to retrieve this in a moment which is going to take in the organization log, the project log
5:25:475 hours, 25 minutes, 47 secondsand the initial settings which is going to map to the settings that we are getting in from the API.
5:25:565 hours, 25 minutes, 56 secondsSo as we expected we now see this error over here that we do not have the project o that we do not have the
5:26:035 hours, 26 minutes, 3 secondsproject o here. So let's have it. We're going to come over here and let's come over to the templates and we need to
5:26:115 hours, 26 minutes, 11 secondslook for the project of provider. So this is this. Let's copy this and let's have this rendered here in the features.
5:26:215 hours, 26 minutes, 21 secondsThe page is going to rerender and here we are going to see the content. So this has email which is going to be you know
5:26:295 hours, 26 minutes, 29 secondsenabled for the every project by default. So no extra configuration is needed. But for Google, we need the client ID. We need the client secret.
5:26:385 hours, 26 minutes, 38 secondsUm, yeah. So, we need all of these. Now, if we click this, we are definitely going to have an error because we do not have this set up yet. We do not have the
5:26:485 hours, 26 minutes, 48 secondsclient side um set up just to make sure this is working as expected. We need to have validation and the same for GitHub.
5:26:565 hours, 26 minutes, 56 secondsSo, for GitHub, you need the client ID and you also need the client secret.
5:27:025 hours, 27 minutes, 2 secondsSo let's come back to the application and we're just going to get rid of this and also bring this back in here.
5:27:105 hours, 27 minutes, 10 secondsSo this is our project or providers. Now the next thing we're going to be working on is this other page over here which is the URL configuration page.
5:27:215 hours, 27 minutes, 21 secondsSo let's work on the URL configuration page. So I'm going to come back here and if you come over to the URL
5:27:295 hours, 27 minutes, 29 secondsconfiguration the page.tsx tsx I'm just going to close all that tabs that we have open so that we can get started
5:27:365 hours, 27 minutes, 36 secondswith this page. So let's start by importing the retrieve all settings.
5:27:415 hours, 27 minutes, 41 secondsAgain this is going to come from the API. So the features the project o and then we have the project o helpers
5:27:505 hours, 27 minutes, 50 secondsserver file. We also need the project o configuration.
5:27:565 hours, 27 minutes, 56 secondsThe project o URL config is going to be coming in from the features the project
5:28:025 hours, 28 minutes, 2 secondso and the project o url config file and then we can going to export the
5:28:105 hours, 28 minutes, 10 secondsdefault async function which we're going to call the project o url configuration like this and this from here we're going
5:28:195 hours, 28 minutes, 19 secondsto have the definition which is going to have params and params is going to have promise that resolves to this object. we can retrieve the slog and the project log.
5:28:305 hours, 28 minutes, 30 secondsWe can go on to the structure the the slog and the project log by awaiting params like this. Then let's construct the a the base URL. So we're going to
5:28:395 hours, 28 minutes, 39 secondsstart by having the API base URL which is going to be the process.env public API URL otherwise we're just going to default to localhost 3000/ API.
5:28:505 hours, 28 minutes, 50 secondsWe also have the settings and con settings is going to be equals to await retrieve or off settings from API. So we
5:28:575 hours, 28 minutes, 57 secondscan pass in this log as well as the project log.
5:29:025 hours, 29 minutes, 2 secondsWe also have the fallback site URL. So con fallback site URL is equals to the process envirl
5:29:125 hours, 29 minutes, 12 secondsotherwise it's going to be http localhost 3001 as a fallback. Okay. So finally we can
5:29:195 hours, 29 minutes, 19 secondsgo on to return the project o URL config. We do not have this yet but it takes in the organization log. Also it
5:29:265 hours, 29 minutes, 26 secondstakes in the project log and it also takes in the initial site URL. And the initial site URL is the settings do site
5:29:355 hours, 29 minutes, 35 secondsURL or it's going to be the fallback site URL. And finally we're going to have the API base URL which is going to
5:29:445 hours, 29 minutes, 44 secondsbe the API base URL like this.
5:29:495 hours, 29 minutes, 49 secondsSo, we do have an error. And why do we have this error here? Site URL does not exist on the project O settings. No
5:29:575 hours, 29 minutes, 57 secondsworries. Let's fix that in a moment. If we come over to the settings and if we come over here, we might be missing site
5:30:045 hours, 30 minutes, 4 secondsURL from this O settings type. So, I'm going to come here and come here and that's the case. So, we're missing site
5:30:115 hours, 30 minutes, 11 secondsURL which we're going to add in a moment. Okay. So, that aspect of application broken. I'm just going to leave this tab open and I'm going to
5:30:205 hours, 30 minutes, 20 secondsbring in the project URL config which is going to come from the template. So want to locate the template and that is the
5:30:285 hours, 30 minutes, 28 secondsproject o URL config file. So let's copy this and let's have this here in the features just like this. Now that we
5:30:375 hours, 30 minutes, 37 secondshave this here we are definitely missing all of these which are the things that I told us initially the action the schema the we're also missing the constants. No
5:30:465 hours, 30 minutes, 46 secondsworries, we're going to have that in a moment. So, even if we come here, we still have this error because we do not have these actions. So, the next step
5:30:545 hours, 30 minutes, 54 secondsnow in building or completing this build is to make sure that we fix the errors that we have and we also bring in this
5:31:015 hours, 31 minutes, 1 secondimport over here and also fix the site URL that we do not also have at the moment. So, let's fix all of these next.
5:31:095 hours, 31 minutes, 9 secondsAll right. So, let's make sure we have the site URL. This ITRL is um where users will configure their website URL
5:31:175 hours, 31 minutes, 17 secondsand then we're going to also make use of it for redirect so we can redirect users over to their website. Let's make sure
5:31:255 hours, 31 minutes, 25 secondswe have this defined in the schema. So we're going to come over to the API and in the source the DB we want to look
5:31:325 hours, 31 minutes, 32 secondslook for our projects and over here in the projects maybe just somewhere after the JWT author secret we can duplicate
5:31:415 hours, 31 minutes, 41 secondsthis but this is not going to be not null. So let's get rid of the not like this uh because it's nullable and here we're
5:31:495 hours, 31 minutes, 49 secondsgoing to have the site URL and here we're going to call it the site URL. So that means we need to run
5:31:575 hours, 31 minutes, 57 secondsthe migrations which we're going to do in a moment. But then let's keep on fixing the error. We need to make sure
5:32:045 hours, 32 minutes, 4 secondswe have this in our index here which is the packages types the source the index.ts.
5:32:125 hours, 32 minutes, 12 secondsSo over here where we have the project or settings now we're going to include it in the site URL and this is going to
5:32:195 hours, 32 minutes, 19 secondsbe of type string or null. We are going to be updating the service next because the service also needs to return this
5:32:275 hours, 32 minutes, 27 secondssince we are saying hey we're expecting the project o URL to include this but then we should no longer have error here
5:32:345 hours, 32 minutes, 34 secondsfor the site URL. All right. So let's update the service in the API. So over here in the
5:32:425 hours, 32 minutes, 42 secondsproject and that is the project service we need to add the site URL here. So in
5:32:505 hours, 32 minutes, 50 secondsthe get o settings function. So let me just look for it. The get o and I did not find it here. Oh that's the get yeah
5:32:595 hours, 32 minutes, 59 secondssorry is not in project settings is in project o. So come over to project o and in the project o service we want to look
5:33:065 hours, 33 minutes, 6 secondsfor so find and that is the get or off settings here. Now we're not just going to return this subject. We are also
5:33:155 hours, 33 minutes, 15 secondsgoing to have the site URL. Do we get auto completion? Nope. So we're going to have site URL and site URL is going to be the project do site URL like this.
5:33:265 hours, 33 minutes, 26 secondsNow I get auto completion but if you do not get auto completion no worries we are going to run the migration and once you have this we're going to
5:33:355 hours, 33 minutes, 35 secondsadd two methods below the this method where we have the get oath settings. Now this method is going to be the resolve
5:33:445 hours, 33 minutes, 44 secondssite URL and also to get the site URL for the project.
5:33:495 hours, 33 minutes, 49 secondsSo maybe somewhere here we can add this method which we're going to call the resolve site URL.
5:33:585 hours, 33 minutes, 58 secondsIt's going to take in the project which is the type of the project in fair select and it's going to return a string and we can then go on to return the
5:34:075 hours, 34 minutes, 7 secondsproject site URL. We're going to check hey if this is available. we are going to use it otherwise we're going to get it from the config service which is the
5:34:165 hours, 34 minutes, 16 secondsweb URL otherwise we're just going to default back to the web which is on local host 3001
5:34:245 hours, 34 minutes, 24 secondsnow the next function is this function here which is the get site URL for project and this is going to take in the
5:34:315 hours, 34 minutes, 31 secondsproject lock and return a promise that results to a string and we say con project is going to be awaiting this get
5:34:405 hours, 34 minutes, 40 secondsproject where we pass in the project log and then we can go on to return this resolve site URL and we pass in the project.
5:34:515 hours, 34 minutes, 51 secondsAll right. So let's give this file a save. And do we have any errors here?
5:34:555 hours, 34 minutes, 55 secondsNo, we don't. So we can go on to save the content of this file.
5:35:005 hours, 35 minutesNow we're also going to do the same for the update or settings. So over here we're going to attach the site URL. And the site URL is going to be optional.
5:35:105 hours, 35 minutes, 10 secondsAnd here is going to be of type string.
5:35:135 hours, 35 minutes, 13 secondsAnd we can go on to save this. Okay. So now we're going to be updating the controller. So let's start with the
5:35:205 hours, 35 minutes, 20 secondsproject off dashboard controller.ts file. And over here where we do return this settings for update settings, we
5:35:295 hours, 35 minutes, 29 secondswant to also have the site URL. So we can duplicate this. And then this is going to be site URL like this, which is optional. and also of type string.
5:35:425 hours, 35 minutes, 42 secondsNow we're also going to do the same for the project of controller.ts file and over here where we have the Google call
5:35:515 hours, 35 minutes, 51 secondsback. So and the GitHub call back we're going to making use making changes here.
5:35:575 hours, 35 minutes, 57 secondsSo let's locate the Google call back over here where we going to get the result like this. This is going to remain but then the web URL is now going
5:36:075 hours, 36 minutes, 7 secondsto be calling the get. So we're going to say this not like this. So we're going to then now call this dot the project
5:36:175 hours, 36 minutes, 17 secondso service and then we're going to call the get site URL for project which is then going to take in the project log
5:36:245 hours, 36 minutes, 24 secondslike this and then we can rest redirect to the web URL. And why do we have this
5:36:305 hours, 36 minutes, 30 secondserror here is because we need to await this. So let's await this. So now we
5:36:385 hours, 36 minutes, 38 secondshave the slash this and then the access token and this. So this is going to remain. So let's copy this because we
5:36:455 hours, 36 minutes, 45 secondsare also going to be doing the same for GitHub. So over here where we do go and construct the the web URL. So where do we have it? Over here not GitHub login.
5:36:555 hours, 36 minutes, 55 secondsSo we want to look for the GitHub call back. So this now we're going to replace this with this. Just like this. And we
5:37:025 hours, 37 minutes, 2 secondscan go on to give this file a save. Now finally let's run the migration. So I'm going to quit the dev server here and
5:37:105 hours, 37 minutes, 10 secondsI'll cd into apps and then into API and over here we want to run the pnpm
5:37:175 hours, 37 minutes, 17 secondspnpm db generate which is going to regenerate the client. So just give this a moment
5:37:255 hours, 37 minutes, 25 secondsand we have the migration file here and then we're going to run the pnpm db migrate command which so let's come back
5:37:345 hours, 37 minutes, 34 secondshere and give this a refresh. And now we're still going to have the error that we have here because the URL configuration is missing all of these
5:37:425 hours, 37 minutes, 42 secondswhich we're going to be bringing in next. So let's exit out of this and also exit out of this so that we are here and here we have the errors for the action.
5:37:545 hours, 37 minutes, 54 secondsSo the action is going to be over here.
5:37:565 hours, 37 minutes, 56 secondsSo let's copy the action which is this project off action. So we can copy this
5:38:025 hours, 38 minutes, 2 secondsand we can have this here over here in project off.
5:38:085 hours, 38 minutes, 8 secondsSo I'm going to exit this template and here we should then have the action but it's not called action it's called the
5:38:165 hours, 38 minutes, 16 secondsproject o action. So let's update this to be the project o action and if we visit the project o action we
5:38:255 hours, 38 minutes, 25 secondsare missing the constants and also the server schema and we do not also have this because we're not return anything. So no worries
5:38:335 hours, 38 minutes, 33 secondslet's fix this gradually. Now we need the client schema and we're also going to get the client schema from here.
5:38:425 hours, 38 minutes, 42 secondsSo this is the client schema. We can copy this and we can have this value here like this. So this is our client
5:38:515 hours, 38 minutes, 51 secondsschema. We should fix the error that we have over here for the client schema but we called it the project o client
5:38:585 hours, 38 minutes, 58 secondsschema. So let's bring in the project o client schema. And finally is the constant. So I'll save this and let's
5:39:065 hours, 39 minutes, 6 secondsbring in the constants which is this. So we can just copy this and use the value over here like this. And we can then
5:39:155 hours, 39 minutes, 15 secondsupdate the import path to be the project intent.
5:39:215 hours, 39 minutes, 21 secondsSorry, not the intent. It should be the constants here like this. So I'm going to save this. Oops. And if you visit our
5:39:295 hours, 39 minutes, 29 secondspage, maybe we still have errors because uh of other sub components. So I'm just going to Yeah. So you see we have errors
5:39:375 hours, 39 minutes, 37 secondshere in the action. Now let's fix the action. I'm going to exit out of this and come over here to the action. And
5:39:455 hours, 39 minutes, 45 secondsthis constant is this constant here, the project constants. And the service schema is this.
5:39:535 hours, 39 minutes, 53 secondsUm, so we need to bring in the server schema. So let's do that. I'm going to
5:40:005 hours, 40 minutessave this. And the server schema is this. So let's copy this and have this over here like this.
5:40:105 hours, 40 minutes, 10 secondsAnd then the server schema, we still need to fix things. But before we do, let's just fix this here. This is then
5:40:175 hours, 40 minutes, 17 secondsgoing to be the server schema. So we have the servers schema. We can save this
5:40:245 hours, 40 minutes, 24 secondsand over here we should fix this. So this is the constants and then this is the client schema like this. We give this a save and all the error is gone.
5:40:375 hours, 40 minutes, 37 secondsAnd now we can see the page load with the values. So we see we have this redirect URLs for Google, for GitHub and
5:40:455 hours, 40 minutes, 45 secondsalso for magic link. All right. And everything is super responsive. Okay. So this could have taken us lots of time if
5:40:535 hours, 40 minutes, 53 secondswe were to do this ourselves. But now we get this out of the box. We still see our side navigation bar and everything.
5:40:595 hours, 40 minutes, 59 secondsWe can go on to copy this and we're good to go. All right. So before we go on and test this, we actually did bring in a lot of code. So I would like us to walk
5:41:085 hours, 41 minutes, 8 secondsthrough the different code that we brought in. Starting in from the project O URL config file. This is going
5:41:185 hours, 41 minutes, 18 secondsto be a very brief walk through for the code we have written because this is the same python and standard of the way we have been writing code code so far and I
5:41:275 hours, 41 minutes, 27 secondsjust want to make this as brief as could be. So we have the project of URL config which is this file over here. So this
5:41:365 hours, 41 minutes, 36 secondsline of code and this here we have we are going to bind the action so that we have the bound action which is the project authentication action. So if you
5:41:445 hours, 41 minutes, 44 secondsright click here, this is going to take you straight up to this action. So before we come over to that, we have the redirect URL. So it's the project log
5:41:525 hours, 41 minutes, 52 secondsthat we have here and also the API base URL which is what we are passing from here. So the API base URL and then we
5:42:005 hours, 42 minutesjust go to display data. So everything here is data display. We have the different field group and then we have the button here. This button is to go
5:42:095 hours, 42 minutes, 9 secondsand save the site URL which is this form that we see over here. and every other thing here as we can see here just
5:42:165 hours, 42 minutes, 16 secondsmapping through the redirect URLs and the copy ro which is defined right up here just to copy this to the navigation.
5:42:255 hours, 42 minutes, 25 secondsAnd if we take a look at the action file here, this action is going to be switching based on the intent. Now the
5:42:315 hours, 42 minutes, 31 secondsintent for this is to save the site URL and it just makes a request to the API endpoint with the correct headers and then it goes on to revalidate the path.
5:42:425 hours, 42 minutes, 42 secondsWe're not going to be updating the site URL yet. And then this to get saved the GitHub. If you come over to sign in
5:42:495 hours, 42 minutes, 49 secondsproviders over here, these are the different cases. So we give this a moment for it to load.
5:42:565 hours, 42 minutes, 56 secondsAnd you're going to see over here we have this. So the client ID and also the client secret.
5:43:035 hours, 43 minutes, 3 secondsOkay. So over here when this um the user provides the client ID and the client secret, we're going to save them. And
5:43:105 hours, 43 minutes, 10 secondsthe same for GitHub. All right. So before we continue and go on to test this because this is actually a wrap but
5:43:175 hours, 43 minutes, 17 secondswe haven't actually wrapped things up in the package because over here if we come over to the packages and we come over to
5:43:255 hours, 43 minutes, 25 secondssuperv index we have all these methods which we
5:43:335 hours, 43 minutes, 33 secondshaven't implemented yet. So we're going to be implementing all these methods now and not have this for placeholders. So we can get rid of this and we're going
5:43:425 hours, 43 minutes, 42 secondsto be implementing everything. I'll also get rid of this that we have over here so that we can also go on to define some
5:43:495 hours, 43 minutes, 49 secondsinterface. So I'm going to have this interface here which I'll call O user.
5:43:545 hours, 43 minutes, 54 secondsAnd this interface is just going to take in the ID. The ID is going to be of type string. And we're also going to have the
5:44:015 hours, 44 minutes, 1 secondemail and the email as well is also of type string. And over here we can also export another interface. And this
5:44:095 hours, 44 minutes, 9 secondsinterface is the O result. And this O result is going to be this object here where we have data. And data is this object with the user of type the O user.
5:44:205 hours, 44 minutes, 20 secondsAnd we're also going to have the access token. And the access token is going to be of type string. So we have access
5:44:285 hours, 44 minutes, 28 secondstoken and the access token is of type string like this.
5:44:355 hours, 44 minutes, 35 secondsSo this data could be this object or it could be null. And then we can have error. Error is pretty much straightforward. So error could be of type string or null like this.
5:44:485 hours, 44 minutes, 48 secondsAnd over here we have the super vault class definition. So want to get the current token. At some point we're going to have it here as a private variable
5:44:575 hours, 44 minutes, 57 secondswhich will call the current token. And current token is going to be of type string or null. But we're going to
5:45:045 hours, 45 minutes, 4 secondsdefault this to be equals to null like this.
5:45:095 hours, 45 minutes, 9 secondsAll right. So in the constructor we're going to then initialize the project URL. The project URL is going to be of type string.
5:45:195 hours, 45 minutes, 19 secondsAll right. So now we are set to have the different methods. Let's start with the first method. And the first method is the sign up method.
5:45:285 hours, 45 minutes, 28 secondsSo here we're going to have the async sign up. Signup is going to take in the credentials which is going to have the email of type string and the password of
5:45:365 hours, 45 minutes, 36 secondstype string and it's going to return a promise that results to the authentication result that is this data
5:45:445 hours, 45 minutes, 44 secondsor error. So we're going to have a try catch block because first we want to have the result by awaiting a call to fetch and it's going to go to this.p
5:45:535 hours, 45 minutes, 53 secondsproject URL/signup and the method here is going to be the post method. We're also going to have
5:46:005 hours, 46 minutesthe different headers. The headers is going to have the content type and the content type value is the application JSON.
5:46:095 hours, 46 minutes, 9 secondsWe're also going to have the body and the body we're going to JSON stringify the credentials.
5:46:155 hours, 46 minutes, 15 secondsSo let's say if something goes wrong that means rest okay is false then we're going to have the error which is going
5:46:235 hours, 46 minutes, 23 secondsto be equals to awaiting the response.json.catch catch and then we're going to return empty object like this and we're casting
5:46:325 hours, 46 minutes, 32 secondsit to the message which is optional string like this and finally we can go on to return data data is going to be
5:46:405 hours, 46 minutes, 40 secondsnull and error is going to map to this error dossage but remember it's optional so we can fall back to signup field
5:46:495 hours, 46 minutes, 49 secondsbut if everything is fine and good and we do not fall into this if block we're going to get our data and data is going to be awaiting the response dojson
5:46:585 hours, 46 minutes, 58 secondsas the user which is of type of user and then we have the access token which is of type string
5:47:065 hours, 47 minutes, 6 secondsand finally we can go on to call this current token is equals to the data dot access token and we can return the
5:47:145 hours, 47 minutes, 14 secondsobject which will have data and error which is not like this and in the catch block we are just going
5:47:235 hours, 47 minutes, 23 secondsto have the message. Now the message or the error here or the message is going to be first checking the error. If it's
5:47:305 hours, 47 minutes, 30 secondsan instance of error then we're going to know it's going to have a message property otherwise we're going to say network error and we can also then
5:47:395 hours, 47 minutes, 39 secondsreturn data. Data is null but now error is going to be the message. Okay. So this is the sign up. Let's have the sign
5:47:465 hours, 47 minutes, 46 secondsin method. So async sign in sign in is going to take the credentials as always. So we have the email and we
5:47:545 hours, 47 minutes, 54 secondsalso have the password which is of type string and we return the promise that resolves to the o user type.
5:48:045 hours, 48 minutes, 4 secondsSo in the try block it's pretty much the same. So we're going to make an API call using fetch to this.ro project URL /
5:48:135 hours, 48 minutes, 13 secondssignin where the method is post and also the headers is this object over here where we have the content type to be
5:48:215 hours, 48 minutes, 21 secondsapplication/json and the body is going to be JSON stringify credentials
5:48:315 hours, 48 minutes, 31 secondsthen we can check if rest is not okay so that means we do have an error so we say if res okay is false we're going to say
5:48:395 hours, 48 minutes, 39 secondscon error is going to be equals to await the response.json dot catch and we're going to return this
5:48:475 hours, 48 minutes, 47 secondsobject as this. So where we have message is optional of type string and then
5:48:535 hours, 48 minutes, 53 secondswe're going to return data. Data is null and error is going to then become the error message or we're going to say sign in field like this.
5:49:055 hours, 49 minutes, 5 seconds[snorts] So if we are fine and good and we're not in the if block, we can then have data which is then going to be the awaiting the response.json result as
5:49:145 hours, 49 minutes, 14 secondsthis object where we have the user which is of type or user and the access token is of type string and then we can go on
5:49:225 hours, 49 minutes, 22 secondsto return or just have this current token. The current token is then going to be the data access token and we're
5:49:305 hours, 49 minutes, 30 secondsgoing to return the data and we're also going to say error is no.
5:49:375 hours, 49 minutes, 37 secondsBut if something went wrong, so in the catch block, we're going to retrieve the message. So we're going to say con message is going to be us checking if the error is an instance of the error.
5:49:485 hours, 49 minutes, 48 secondsWe're going to go with error dossage.
5:49:505 hours, 49 minutes, 50 secondsOtherwise, we just fall back to network error and we're going to be returning the data is going to be null and the
5:49:575 hours, 49 minutes, 57 secondserror message. Okay, so every other one like this is just going to be super straightforward because next we have the
5:50:055 hours, 50 minutes, 5 secondssend magic link which just needs only the email and then it's going to return a promise where we have error of type
5:50:125 hours, 50 minutes, 12 secondsstring or it could be no. So it could send or maybe it's not able to send. So in the try block we're going to have con
5:50:195 hours, 50 minutes, 19 secondsresponse is going to be await fetch and fetch is going to go to this.p project URL/magic link. The method is going to be post.
5:50:315 hours, 50 minutes, 31 secondsWe also have the headers and in the headers we're going to have the content type header where the value is application JSON and we have the body.
5:50:425 hours, 50 minutes, 42 secondsThe body we're going to call JSON.
5:50:445 hours, 50 minutes, 44 secondsStringify email. So we're going to check quick real quick if response.
5:50:515 hours, 50 minutes, 51 secondsIs false then we can return error. So remember here we're returning error where we can say send or fail to send
5:50:595 hours, 50 minutes, 59 secondsmagic link and we're going to return error u equals to null if everything is good. And finally in the catch block
5:51:075 hours, 51 minutes, 7 secondswe're just going to do pretty much what we do always. We're going to have the message variable which we're going to try to retrieve from the error if this
5:51:155 hours, 51 minutes, 15 secondsis an instance of the error. So we're going to get the error message otherwise we'll fall back to network error. And then we're going to return error which is the message.
5:51:265 hours, 51 minutes, 26 secondsNow let's have Google Earth. We're going to say sign in with Google. Sign in with Google doesn't need to return anything.
5:51:325 hours, 51 minutes, 32 secondsIt's just going to assign location the window.loation.href to be this. project URL/
5:51:405 hours, 51 minutes, 40 secondsGoogle. It's pretty bit more straightforward like that. And that's the same for signing with GitHub. Now, sign in with GitHub is going to return
5:51:485 hours, 51 minutes, 48 secondsvoid. And we're just going to say the window.location.href is going to be equals to this. URL/
5:51:575 hours, 51 minutes, 57 secondsGitHub and sign out is just going to set the current token to null. So, we're going to call this current token is
5:52:055 hours, 52 minutes, 5 secondsgoing to be equals to null. Now we have to get user and maybe you also want to get the access token. So get user is going to return the authentication user.
5:52:155 hours, 52 minutes, 15 secondsSo we say if we do not have a current token you already signed out. So we turn null. But if we do we're going to return the authenticated user by first having the payload which is JSON stringify.
5:52:265 hours, 52 minutes, 26 secondsThen we're going to make use of this at where we have this token split dot current token.plit by the equals. So the
5:52:345 hours, 52 minutes, 34 secondssecond element as the sub and also the email. So over here the sub we know is the user ID and we know the email is the
5:52:425 hours, 52 minutes, 42 secondsuser email. So we can return the ID and the ID is going to be the payload sub as well as the email which is going to be equals to the payload just like this.
5:52:525 hours, 52 minutes, 52 secondsAnd if something goes wrong we can just go on and return null. So we have the last one and the last one is
5:53:025 hours, 53 minutes, 2 secondsthe get access token which is going to return string on all and then we're just going to return this current token like this.
5:53:125 hours, 53 minutes, 12 secondsOkay. So let's go on and give this file a save. Now the next thing we're going to do is to update the client.ts file.
5:53:205 hours, 53 minutes, 20 secondsAll right. So before we go this attop that we see over here in case it's little bit um confusing this attop that we have here just built in JavaScript
5:53:295 hours, 53 minutes, 29 secondsfunction that goes on to decode a basis for string back into a plain text that we can use.
5:53:375 hours, 53 minutes, 37 secondsAll right. So let's update the client.ts file. So which is this file over here.
5:53:425 hours, 53 minutes, 42 secondsWe need to make sure in here we also have the o. So so we're going to say and I already see this here. So maybe I
5:53:505 hours, 53 minutes, 50 secondsadded this previously but this is going to be equals to the new super v super vote o and we do not need the API key.
5:53:585 hours, 53 minutes, 58 secondsSo we do not need the API key because if we check the super vote O we updated it.
5:54:045 hours, 54 minutes, 4 secondsSo here to just take in the so where is it the constructor the project URL. So we just need the project URL here like
5:54:125 hours, 54 minutes, 12 secondsthis. Now we need to rebuild the SDK. So after you make the change you need to rebuild. So we're going to CD into the packages
5:54:205 hours, 54 minutes, 20 secondspackages and over here in the packages we want to come over to supervoltjs and we're going to call pmppm build.
5:54:285 hours, 54 minutes, 28 secondsSo this is then going to go and rebuild.
5:54:315 hours, 54 minutes, 31 secondsSo we've done this previously and now the build is complete. The next step for us is for us to then test out the
5:54:395 hours, 54 minutes, 39 secondsapplication that we have worked on. So we're going to be testing out the O that we have worked on. And once we are sure that the O is fine and good, we're just
5:54:485 hours, 54 minutes, 48 secondsgoing to have little fixes like this over here to create new organization which is currently broken and also the organizations page which as well is
5:54:575 hours, 54 minutes, 57 secondscurrently broken and also the link the link that sends user to the settings which for now if we have our application
5:55:045 hours, 55 minutes, 4 secondsup and running which for now is also broken. So we need to see the out of here and that's what we are going to be
5:55:115 hours, 55 minutes, 11 secondsworking on next. So the next step is for us to test our application. And once we test that everything is fine and good, we are just going to go on and apply the
5:55:205 hours, 55 minutes, 20 secondslittle fixes that we have pointed out and then we can deploy our application.
5:55:265 hours, 55 minutes, 26 secondsOkay guys, so this is where we go to test out our authentication and yeah so I did make a change here
5:55:335 hours, 55 minutes, 33 secondsjust a very minor change just you know the cause error we usually do have. So I had to comment this out and I had to
5:55:415 hours, 55 minutes, 41 secondsbring this in. so that we can allow connection from any port. So just local host just as we go on to test this.
5:55:495 hours, 55 minutes, 49 secondsSo just make sure you have this so that you can go on to test and once we are done testing we can remove this out of our code. It's not going to make it into
5:55:575 hours, 55 minutes, 57 secondsproduction and then we can comment this back in.
5:56:045 hours, 56 minutes, 4 secondsAll right. So let's come over here. So you want to be in the packages folder and in supervolt js you want to be in
5:56:115 hours, 56 minutes, 11 secondsthe index.html which is the demo folder.
5:56:155 hours, 56 minutes, 15 secondsWe are going to be making changes here so that we can test out the application.
5:56:205 hours, 56 minutes, 20 secondsAnd just after this pretag that we have here we're going to have this H2 and this H2 is going to be like all sign up.
5:56:305 hours, 56 minutes, 30 secondsSo the heading we're going to have different input fields. So we have this impute with the ID of O email. The type is email and the
5:56:385 hours, 56 minutes, 38 secondsplaceholder is email. Then we're going to need another impute for the password.
5:56:455 hours, 56 minutes, 45 secondsSo the ID is all password. The type is going to be equals to password and the placeholder is password. And remember we
5:56:515 hours, 56 minutes, 51 secondshave a minimum of eight. And then we have the button. This button is of type button. And on click we're going to
5:56:595 hours, 56 minutes, 59 secondsactivate sign up. So we call a sign up function which we haven't defined yet and this other button is also of type
5:57:085 hours, 57 minutes, 8 secondsbutton and on click we're going to call sign in function and you're going to have this pre tag
5:57:155 hours, 57 minutes, 15 secondswith the ID of the authentication result which is going to be injected dynamically based on the authentication
5:57:225 hours, 57 minutes, 22 secondsresult. So once we have this we can then come into the script you see
5:57:285 hours, 57 minutes, 28 secondsof type module we have our create client and here we going to create the client.
5:57:345 hours, 57 minutes, 34 secondsSo super vault is going to be equals to create client where we pass in the project URL as well as the anon key.
5:57:425 hours, 57 minutes, 42 secondsSo let's come further down and we can do that somewhere here. So what we're going to do here let's call window onsign in.
5:57:505 hours, 57 minutes, 50 secondsSo the different functions. So remember over here we are calling the sign in function and the sign up function. So
5:57:585 hours, 57 minutes, 58 secondslet's define the functions here. So what we're going to do here we're going to say window do sign up. Let's start with the sign up is going to be this async function and we want to get the email.
5:58:095 hours, 58 minutes, 9 secondsSo con email is going to be the document get element by id. So it has the id of the o email value and we can go on to
5:58:175 hours, 58 minutes, 17 secondstrim the value. So to remove any leading and also any um following white space we do the same for the password. We get the
5:58:255 hours, 58 minutes, 25 secondselement by id which is the o password but then we call that value and then we can get data or error by awaiting
5:58:345 hours, 58 minutes, 34 secondssupervolt signup. So you see the way we making of our SDK here and we're passing the email and the password
5:58:435 hours, 58 minutes, 43 secondsand then we're going to have the document get element by ID the O result and want to inject into the test
5:58:505 hours, 58 minutes, 50 secondscontent. If we have an error we're going to say the error and then we're going to display the error. Otherwise we're going
5:58:585 hours, 58 minutes, 58 secondsto JSON stringify data null and two like this. Now we're going to have the same
5:59:055 hours, 59 minutes, 5 secondsfunction but this time around windows sign in function is this async function. We have the
5:59:135 hours, 59 minutes, 13 secondsemail which we're going to get document.getelement by id of authentication email dov value.
5:59:215 hours, 59 minutes, 21 secondsWe have the password and the password is going to be document getelement by id the off password dot value
5:59:305 hours, 59 minutes, 30 secondsand then we can do the same call. So we're going to say cons data error is going to be equals to await supervo.
5:59:395 hours, 59 minutes, 39 secondsSign in and then we're going to pass in the email and the password.
5:59:435 hours, 59 minutes, 43 secondsSo then the text content just as we did for the sign up we're going to get element by ID the authentication results
5:59:525 hours, 59 minutes, 52 secondsand then the test content is going to be dynamic. So we will have an error. We want to display the error. Otherwise, we're going to JSON stringify the data.
6:00:046 hours, 4 secondsOnce you have all of these, we are now good to go in terms of testing out our O feature. I'm going to save what we have here. And you want to open up your
6:00:136 hours, 13 secondsterminal because we did make a change here. So we need to prebuild the Super VoltJS package. So let's see here into
6:00:216 hours, 21 secondspackages. and into packages we want to come over to supervjs and here we know is pmppm build so that
6:00:296 hours, 29 secondswe can build up the SDK again we'll give this a moment and now we are done with the build we can then save the build by
6:00:376 hours, 37 secondssay mpx ser dot like this you can open up a new terminal window which is then
6:00:456 hours, 45 secondsgoing to run our next nextjs application so our entire application so you want to make sure you're on the root which is
6:00:526 hours, 52 secondsthe supervolt js root and over here you want to then run the npm or pnpm dev
6:01:026 hours, 1 minute, 2 secondscommand. So pn pmde dev command which is concurrently going to start up the API as well as the front end side of code.
6:01:106 hours, 1 minute, 10 secondsSo now you see that this is ready and actually I'm going to quit this because it did start up on local host 3000 and
6:01:176 hours, 1 minute, 17 secondsthat port 3000 is where we do start up our API. So let's make sure our API is up and running. So now it's up and
6:01:256 hours, 1 minute, 25 secondsrunning here. I'm going to save this again so that we can get a different um port that we can save the index.html.
6:01:356 hours, 1 minute, 35 secondsSo where we can save this. As you can see now 3000 is in use. And now we're going to work with 0 53505 which has already been copied to the clipboard.
6:01:466 hours, 1 minute, 46 secondsNow is where the moment of truth where we can test this up. So I'm going to come over here and I'm just going to give this a refresh. Okay. Yeah. So the URL changed.
6:01:576 hours, 1 minute, 57 secondsSo I'm going to drop in this new URL that we have over here and come over to demo. And now we need our project slog.
6:02:076 hours, 2 minutes, 7 secondsSo, let's get our projects lock. I think we can just open one of these that we have here. They're both broken. So, I'm
6:02:156 hours, 2 minutes, 15 secondsjust going to come over to /organization so that we can select the organization.
6:02:206 hours, 2 minutes, 20 secondsThis organization, no worries. This will be the final fixes we are going to make on the project. I'll click into here and
6:02:286 hours, 2 minutes, 28 secondsinto here we are going to clean up or we going to come over to the API.
6:02:346 hours, 2 minutes, 34 secondsAnd over here in the API, we're going to see our credential. So this is our API keys. This is our project URL. You want to copy this
6:02:436 hours, 2 minutes, 43 secondsand we place the value over here. And then for the service row key, we just want to take here and copy this and use
6:02:536 hours, 2 minutes, 53 secondsthe value over here like this. And we hit on connect. Cool. So we are connected. Now if you scroll down here
6:03:016 hours, 3 minutes, 1 secondyou see we have the sign up and the sign in. So we have the two imputes that we did create over here in the index.html.
6:03:116 hours, 3 minutes, 11 secondsSo here we are seeing this imput that we have over here. This um sorry this and then we see the two buttons and we just
6:03:186 hours, 3 minutes, 18 secondssee this dash here which is going to be replaced with the authentication result.
6:03:236 hours, 3 minutes, 23 secondsSo let's start by testing up the sign in. So I'm just going to use a fake email that we do not have yet. So fake
6:03:316 hours, 3 minutes, 31 secondsemail@tes.com and I'm just going to provide a password and I'll hit on sign in. Now
6:03:396 hours, 3 minutes, 39 secondsthis should fail and we should see the result over here. You can see invalid credentials because this user hasn't
6:03:466 hours, 3 minutes, 46 secondsregistered yet. So now let's sign up the user this fake email user here or maybe we can say test2
6:03:556 hours, 3 minutes, 55 secondstest.com and I'll return the password and then I'll hit on sign up. Now we should get the author result here which is the user
6:04:036 hours, 4 minutes, 3 secondsuh object and also the access token. As you can see over here we have the user object which contains the ID and the email and we return the access token as
6:04:136 hours, 4 minutes, 13 secondswell to the user. Now let's try to sign in this user.
6:04:186 hours, 4 minutes, 18 secondsI'm going to hit on sign up again so that we can see like this user has already registered yet. So let's give this a moment. As you can see, email
6:04:266 hours, 4 minutes, 26 secondsalready registered. And now if we hit on sign in, we are going to get back the O token and the user object here. So you
6:04:346 hours, 4 minutes, 34 secondscan see this is working as expected. Now I know we are just testing out the email and the password, but then we have
6:04:426 hours, 4 minutes, 42 secondsothers such as magic link. We also have the Google and we also have the GitHub which we're going to be testing
6:04:496 hours, 4 minutes, 49 secondseverything in full right up uh after now. So um that's pretty much it for the application and congratulations you have
Chapter 6: 14-fixes
6:04:576 hours, 4 minutes, 57 secondswrapped up super vault your own version of Superbase. Now we are done testing out the authentication. Everything is
6:05:056 hours, 5 minutes, 5 secondsworking as expected. We're going to start making fixes to application. Now we can start quickly by fixing this
6:05:136 hours, 5 minutes, 13 secondsorganizations page. So if we come here and we just come over to all organizations. So this Noops. So this
6:05:216 hours, 5 minutes, 21 secondsover here. Yeah. So the organizations page you can see where I'm you know lacking the padding and we also have the organization name hardcoded here. Let's
6:05:306 hours, 5 minutes, 30 secondschange that. Let's come over here. So what I'm going to start with is by removing this. I don't think I'm just
6:05:376 hours, 5 minutes, 37 secondsgoing to comment it out. and then bringing back this which we had by default. So this is the first fix that
6:05:446 hours, 5 minutes, 44 secondswe are doing over here and we can close all the tabs that we do have open. Now if we come over to the dashboard
6:05:526 hours, 5 minutes, 52 secondsorganizations so inside the web we want to be in the source and in the source it has to be in the app in the dashboard
6:06:006 hours, 6 minutesand in the organizations we are going to be making a change here.
6:06:056 hours, 6 minutes, 5 secondsSo we're going to have a new route grouping right in here. So we're going to create just for the new page and that
6:06:126 hours, 6 minutes, 12 secondsis um because we do not have the organization's new page while we also fix this. Okay, that means we're also going to be updating this layout. So I'm
6:06:206 hours, 6 minutes, 20 secondsgoing to leave this layout open here for now. And I'm going to create a new route grouping just inside organizations. So
6:06:296 hours, 6 minutes, 29 secondshere we're going to create a new folder and that folder is going to be the list
6:06:356 hours, 6 minutes, 35 secondspage and then we're going to have the page.tsx.
6:06:416 hours, 6 minutes, 41 secondsSo this is one fix here and then here we are also going to have and sorry not here that's inside the list we're also
6:06:496 hours, 6 minutes, 49 secondsgoing to have the layout tsx here. And I know this might go on to break some things um for us or maybe it
6:06:576 hours, 6 minutes, 57 secondsdoesn't break some things here. doesn't break because the organizations is still like displaying this layout that we have over here. And if you come
6:07:056 hours, 7 minutes, 5 secondsover here, we also have the page.tsx. So this is what is currently displaying.
6:07:106 hours, 7 minutes, 10 secondsAnd we have the organization name hardcoded.
6:07:146 hours, 7 minutes, 14 secondsOkay. So now we have these two new folders, this folder and two new files right in here. Before we fix folder, let's make sure we have the organization
6:07:226 hours, 7 minutes, 22 secondsname here. as is a very straightforward fix. We just need to display organization name. And once we save this, we are
6:07:306 hours, 7 minutes, 30 secondsgoing to see organization name displayed here. All right. So the next fix is um
6:07:386 hours, 7 minutes, 38 secondsto move this page that we have over here. So this page is now going to be inside the list. So what we can do, we
6:07:446 hours, 7 minutes, 44 secondscan just delete this new page.tsx that we created. So this and we're going to then move this organizations page right
6:07:546 hours, 7 minutes, 54 secondsinside the list like this. Now this is when we get our layout broken because we are currently missing um some files in the layout.tsx as you can see over here.
6:08:046 hours, 8 minutes, 4 secondsI'm also going to update the import which is going to update the next cache.
6:08:086 hours, 8 minutes, 8 secondsSo no worries about this. Um yeah so no worries about this. We can always delete this cache and build again. Okay. So
6:08:186 hours, 8 minutes, 18 secondsthen I'm going to just collapse this next folder and this is now the page.tsx.
6:08:256 hours, 8 minutes, 25 secondsNow let's come over to the layout so that our application is not broken. And inside this layout we're going to have this component here. So we're just going
6:08:326 hours, 8 minutes, 32 secondsto export the default function which will call organizations list layout. This is going to take in
6:08:396 hours, 8 minutes, 39 secondsthe children prop which is of type children. You know children is of type react. React node. And then we're going
6:08:466 hours, 8 minutes, 46 secondsto return this main tag. The main tag has this class names for the flex one, the overflow Y of auto, the padding of
6:08:556 hours, 8 minutes, 55 secondssix, and on medium devices the padding of eight. And we can just wrap children like this. Let's give this a save. We know children here is going to be the
6:09:046 hours, 9 minutes, 4 secondsdifferent pages such as this page. And now we see that our spacing has been fixed. And if we inspect this on the
6:09:126 hours, 9 minutes, 12 secondsmobile devices, we see that this also looks good on mobile. All right. So, let's exit out of here.
6:09:196 hours, 9 minutes, 19 secondsAnd now we have the organizations um layout fixed. We need to also fix the
6:09:266 hours, 9 minutes, 26 secondsnew page. So if you come here and you click on new organization, you see this
6:09:336 hours, 9 minutes, 33 secondsis then going to lead us to a 44 page which is this page we're going to be scaffolding right now. So what we can
6:09:406 hours, 9 minutes, 40 secondsdo, let's come over here. Oops, not here. So let's come over here and we have the organizations and then we have
6:09:486 hours, 9 minutes, 48 secondsthe list. Now we also need the new folder just like this. And in here we're
6:09:556 hours, 9 minutes, 55 secondsgoing to have the page.ts. tsx file which is going to be the contents of this page. So over here we can just quickly generate the boiler plate code.
6:10:056 hours, 10 minutes, 5 secondsSo I'm just going to remove this and export default function. So export default function
6:10:136 hours, 10 minutes, 13 secondsand this is our function definition [snorts] and we can call this function the organization
6:10:216 hours, 10 minutes, 21 secondsor new organization page like this. and we can remove the react JS import.
6:10:316 hours, 10 minutes, 31 secondsSo now once we give this a save and we come over here, we are going to see the content of this page just like this. Now
6:10:386 hours, 10 minutes, 38 secondsthis is this page we're going to be working on next. We're going to be working on the features and then we can continue with our fixes. Now we have the
6:10:476 hours, 10 minutes, 47 secondsnew page. What we're going to be working on next is the features so that we can um have this the client navigation. and
6:10:556 hours, 10 minutes, 55 secondswe can have the server actions to create a new organization. Now we're going to come over to the features and in the features we want to locate organization
6:11:036 hours, 11 minutes, 3 secondsand here we just have the organization helper. We're going to have the constants here. So here let's have the constants
6:11:106 hours, 11 minutes, 10 secondslike this. So the constant ts file. Now this is super straightforward because we only need the name to create an organization. So we're going to be
6:11:186 hours, 11 minutes, 18 secondsexporting this organization intent which is going to be the object where we just have create as con just
6:11:266 hours, 11 minutes, 26 secondslike this. Now after the constant we can give this a save. The next file is going to be the client schema. So create a new
6:11:336 hours, 11 minutes, 33 secondsfile and this is going to be the client hyphen or client.s schema.ts file. And here is also the same um idea.
6:11:426 hours, 11 minutes, 42 secondsIt's pretty much straightforward. We are going to import zed from z. And we can export the create organization schema
6:11:516 hours, 11 minutes, 51 secondswhich is going to be this Z.Object where we need a name. Now these are the validations that are going to apply to the name. So it's a string and a minimum
6:12:006 hours, 12 minuteslength of two. So this is the error we show if the name doesn't match the minimum length of two that we are expecting. So let's give this a save.
6:12:096 hours, 12 minutes, 9 secondsNow we're going to create the server schema file. So here we'll create a new file and this is the servers schema.ts
6:12:186 hours, 12 minutes, 18 secondsfile. Now this file is going to be feeding up of the client schema. So we can bring in zed from z and we're also
6:12:276 hours, 12 minutes, 27 secondsgoing to bring in the organization intent which is going to come in from the constants
6:12:346 hours, 12 minutes, 34 secondsand then we also need to import the create organization schema.
6:12:396 hours, 12 minutes, 39 secondsNow we can go on to have the definition the definition for the organization server schema. It's going to have this
6:12:486 hours, 12 minutes, 48 secondsZ.Discriminated union based on the intent and it's going to take in a list.
6:12:536 hours, 12 minutes, 53 secondsSo here we're going to say Z.Object where we have the intent and we can say Z.al.org organization
6:13:006 hours, 13 minutesintent.create create. I want to then pass in the shape of the create organization schema here.
6:13:086 hours, 13 minutes, 8 secondsI'm going to save this. And the next file to create is the server action. So we create a new file here. And this is
6:13:166 hours, 13 minutes, 16 secondsgoing to be the action.ts file. I'm going to collapse this time around so that we can go on with the server definition.
6:13:266 hours, 13 minutes, 26 secondsWe're going to start by marking our use server directive. So server component we can import redirect from next
6:13:356 hours, 13 minutes, 35 secondsnavigation. We also can import revalidate path which will come in from next cache and we need to bring in the
6:13:436 hours, 13 minutes, 43 secondscookie keys which will come in from at superv/ constants. We also have the API
6:13:516 hours, 13 minutes, 51 secondsclient which will come from our lib exus and we can bring in the import retrieve token from cookie which will come from
6:14:006 hours, 14 minutesthe server uts for/utis files and we also need our organization intent. So let's import the organization
6:14:096 hours, 14 minutes, 9 secondsintent from the one level up the constant file and the organization server schema which is going to come in
6:14:186 hours, 14 minutes, 18 secondsfrom one level up the servers schema file.
6:14:236 hours, 14 minutes, 23 secondsWe're also going to export the type the organization action state which is this object and we have an optional error
6:14:306 hours, 14 minutes, 30 secondsfield which is of type string so we're not showing any success message. We can then go on to export the async function
6:14:386 hours, 14 minutes, 38 secondsorganization action which is going to take in the previous state of the type organization action state and the form
6:14:446 hours, 14 minutes, 44 secondsdata which is of type form data and this function is going to return a promise of type organization action state.
6:14:536 hours, 14 minutes, 53 secondsWe're first going to have the raw data which is equals to organization dot from entries we pass in the form data and the
6:15:006 hours, 15 minutespass data is going to be equals to organization server schema safe pass the row and if safe pass is not successful.
6:15:106 hours, 15 minutes, 10 secondsWe're going to return this object that has the error of um the pass error.flattens. We're trying to retrieve
6:15:186 hours, 15 minutes, 18 secondsthe error from making use of um zord otherwise we'll go with invalid impute.
6:15:246 hours, 15 minutes, 24 secondsIf this passes we need to retrieve the token because we need the token to send the request to our back end. So we await retrieve token from cookie and then if
6:15:346 hours, 15 minutes, 34 secondswe have the token we can then have the try block. So want to check if the intent is equals to organization intent create.
6:15:436 hours, 15 minutes, 43 secondsWe're going to d the structure data which is equals to our API client.
6:15:496 hours, 15 minutes, 49 secondsAnd we have this response back which is a slog and then the /organization and the data is the name which is pass
6:15:576 hours, 15 minutes, 57 secondsdata. We already have the server waiting this and the headers is going to take in the cookie key where the value is going
6:16:056 hours, 16 minutes, 5 secondsto be the cookie keys access token equals to the token. Then we can just revalidate the organization's path and
6:16:136 hours, 16 minutes, 13 secondsthen redirect the user to that slog. So we're going to redirect the user to the organizations and then it's going to be
6:16:206 hours, 16 minutes, 20 secondsthe data.slog and / project.
6:16:266 hours, 16 minutes, 26 secondsNow in case of error pretty much um nothing much here. We're just going to return the error back to the client. So
6:16:346 hours, 16 minutes, 34 secondsthat's what we're going to be doing here. We're just going to return the object which has the error property on
6:16:406 hours, 16 minutes, 40 secondsit. All right. So, um now now that we have this, we can continue. And the next
6:16:476 hours, 16 minutes, 47 secondsthing we're going to be building out is the actual form.
6:16:526 hours, 16 minutes, 52 secondsSo, let's close up on this and we return an empty object here. So, I'm going to save this and we can then come over to
6:17:016 hours, 17 minutes, 1 secondthe features. Still in the features, we want to create a new file which is the create - organization
6:17:096 hours, 17 minutes, 9 seconds- form.tsx file. Now let's have the content of this form. We're going to start by bringing
6:17:176 hours, 17 minutes, 17 secondsin or marking as a client component. So we use the use client directive. Let's bring in a different imports like our use action state. Um we also need to
6:17:256 hours, 17 minutes, 25 secondsbring in our zod resolver which will come from our toform/resolvers for/z. We also need to bring in
6:17:326 hours, 17 minutes, 32 secondscontroller as well as use form. They both going to come in from react hook form.
6:17:396 hours, 17 minutes, 39 secondsWe also need to bring in the type of Z from Z.
6:17:446 hours, 17 minutes, 44 secondsOkay. And after this we are going to bring in our button which will coming from our component UI button. And then
6:17:526 hours, 17 minutes, 52 secondswe need to bring in the following from the UI field. So we're going to be importing the field, the field error, the field group. We're also going to
6:18:006 hours, 18 minutesbring in the field label or from at components for slash UI for/field
6:18:086 hours, 18 minutes, 8 secondsand then we import input which will come from components for slash UI for/input also the
6:18:176 hours, 18 minutes, 17 secondsorganization action which will come from one level up our action file. We also need the schema. So import the create
6:18:236 hours, 18 minutes, 23 secondsorganization schema which will come from our clients schema and then we have our organization
6:18:326 hours, 18 minutes, 32 secondsintent which will come from the constants file.
6:18:366 hours, 18 minutes, 36 secondsSo let's have the type of create organization values which is going to set infer from the type of our create organization schema.
6:18:466 hours, 18 minutes, 46 secondsThen we can export the function create organization form. And from here we're going to have the state the form action
6:18:546 hours, 18 minutes, 54 secondsand it's pending which is going to be equals to use action state the organization action. We have the empty
6:19:026 hours, 19 minutes, 2 secondsobject for the initial values and we build up the form by making of use form which is the create organization values.
6:19:106 hours, 19 minutes, 10 secondsThe resolver is going to be the sold resolver for create organization schema and the default values is just going to be name with an empty string.
6:19:216 hours, 19 minutes, 21 secondsThen finally we can return jsx.
6:19:256 hours, 19 minutes, 25 secondsThis is going to be the form. We're going to say action is form action. We also pass no validate so that we can handle the validation. And on submit
6:19:336 hours, 19 minutes, 33 secondscapture we are going to call the async function with the event. And here we're going to say con okay is equals to await
6:19:416 hours, 19 minutes, 41 secondsthe form dot trigger. We pass in undefined and we set should focus to be true. And if it's not okay, we then want
6:19:506 hours, 19 minutes, 50 secondsto prevent default which is going to stop the form from submitting. And we are going to give this this class name over here.
6:19:596 hours, 19 minutes, 59 secondsSo the class name is a maximum width of MD and a space Y4.
6:20:046 hours, 20 minutes, 4 secondsThen we're going to have a hidden input so that we can have the intent or we can also attach this to the button. So maybe we can change this later. But here we
6:20:136 hours, 20 minutes, 13 secondshave the name of intent and the value is the organization intent.
6:20:186 hours, 20 minutes, 18 secondsNow in case we do have an error, we just going to have this P tag over here which is going to show the state.
6:20:296 hours, 20 minutes, 29 secondsNow we can have the field group for the name. So the field group is going to have the controller. So the controller
6:20:376 hours, 20 minutes, 37 secondsname is equals to name and the control is equals to form dot control. And then in the render function here we're going
6:20:466 hours, 20 minutes, 46 secondsto destructure field and field state and we're going to be returning field. Now this field for the data invalid we're
6:20:546 hours, 20 minutes, 54 secondsgoing to pass in the field state invalid and the field label is going to have the HTML 4 which is going to be equals to
6:21:036 hours, 21 minutes, 3 secondsthe name and then we have the organization name and then we're going to have the impute.
6:21:086 hours, 21 minutes, 8 secondsSo remember we gave this HTML for name that means this impute we have here is going to have the ID of name and then we
6:21:166 hours, 21 minutes, 16 secondscan also display a placeholder. So something like my company and we want to spread out the field that we destructured from here
6:21:256 hours, 21 minutes, 25 secondsjust like this. And finally we can go on to display the name.
6:21:306 hours, 21 minutes, 30 secondsNow we're going to have the we're going to close the input and then we're going to say if field state invalid that means if there's an error from the name maybe
6:21:386 hours, 21 minutes, 38 secondsvalidation we're going to display the field error and the errors is going to take in is the field state error. Now we can go on
6:21:476 hours, 21 minutes, 47 secondsto close all of these. Close the condition over here and also close our field and also close the render method and also the field group.
6:21:596 hours, 21 minutes, 59 secondsNow we're going to have this button and this button is going to be of type submit and it's going to be disabled if
6:22:066 hours, 22 minutes, 6 secondswe are currently pending. And here we can go on to dynamically display creating otherwise create organization.
6:22:166 hours, 22 minutes, 16 secondsAll right. So let's go and save this.
6:22:196 hours, 22 minutes, 19 secondsNow we're not going to see anything yet because we haven't imported this into the page. So I'm just going to save
6:22:256 hours, 22 minutes, 25 secondsthis. Our page still shows this over here, but we're going to change that. So let's do that real quick. We're going to
6:22:346 hours, 22 minutes, 34 secondscome over to the page.tsx. So this is the dashboard organizations the list and the new page over here. I'm going to
6:22:416 hours, 22 minutes, 41 secondsremove everything we have just like this and I'm going to replace it with this.
6:22:456 hours, 22 minutes, 45 secondsSo we're going to be importing link from next link and then we have the chevron left which is going to come from Lucid
6:22:536 hours, 22 minutes, 53 secondsReact. We also have the create organization form and the create organization form is going to come from the features. So remember this file over
6:23:026 hours, 23 minutes, 2 secondshere. So features and then we have the organizations and then we have the create organization form. Then we can export the default function the new
6:23:116 hours, 23 minutes, 11 secondsorganization page which is then going to be returning the div.
6:23:176 hours, 23 minutes, 17 secondsAnd here we have the link. The href is just going to be /organizations.
6:23:236 hours, 23 minutes, 23 secondsAnd then we're going to give it you know these many class names that we have over here. And the idea is when the user
6:23:306 hours, 23 minutes, 30 secondsclicks on this then the user would be able to you know go back to the organizations page.
6:23:376 hours, 23 minutes, 37 secondsSo here let's wrap up the class name and then we're going to close this up and have this chevron left which is going to
6:23:446 hours, 23 minutes, 44 secondshave the class name of size of four and then we're going to have a text of back to organizations and then we can close the link.
6:23:536 hours, 23 minutes, 53 secondsThen finally since we are creating a new organization we're going to have this div over here a margin bottom of six and
6:24:016 hours, 24 minutes, 1 secondthen a heading that is going to you know tell the user or new organization. So the heading of this page and we're going
6:24:086 hours, 24 minutes, 8 secondsto have a subheading if you may which is going to be wrapped inside this paragraph.
6:24:146 hours, 24 minutes, 14 secondsNow this subheading is just going to tell the user or display the text of organizations group projects and team members. So just
6:24:226 hours, 24 minutes, 22 secondsto give the user some sort of hint and then we can close up the paragraph and we can also close up um this div and
6:24:306 hours, 24 minutes, 30 secondsfinally we can go on to have the create organization form.
6:24:366 hours, 24 minutes, 36 secondsSo I'm going to save the file and then we're going to see what we have and now we're going to see this update to display the heading the subheading as
6:24:456 hours, 24 minutes, 45 secondswell as the phone. If it doesn't update so here it is.
6:24:506 hours, 24 minutes, 50 secondsOkay. So this is what we have next. In the next video, we're going to be able to test this and we get our validation kicking. So once we test this and we're
6:24:596 hours, 24 minutes, 59 secondsgood to go, we can then continue with other fixes. Let's test that this is working. We already have this code with library organization. So I'm going to
6:25:086 hours, 25 minutes, 8 secondscreate a new organization here which I could call demo organization like this.
6:25:136 hours, 25 minutes, 13 secondsAnd if we going to create organization, we see it's currently creating. And let's wait for this. Remember that we
6:25:216 hours, 25 minutes, 21 secondsare then going to be redirected to that organization page. We see something went wrong. So let's debug this to know what
6:25:286 hours, 25 minutes, 28 secondsactually went wrong. If we come over to the action um so we see this. Let's log the results
6:25:376 hours, 25 minutes, 37 secondsthe console. So console.log the result or the error which is going to map to error.
6:25:476 hours, 25 minutes, 47 secondsAnd yeah, so let's also log data. So we're going to console.log
6:25:546 hours, 25 minutes, 54 secondsdata, which is going to be the past dot data like this. I'm going to save
6:26:036 hours, 26 minutes, 3 secondsthis. So you want to leave your terminal window open and I'm going to send this again and then I'll just be over here on the terminal. Cool.
6:26:146 hours, 26 minutes, 14 secondsSo actually I think it was maybe successful but what happens over here is this redirect throws a special kind of
6:26:246 hours, 26 minutes, 24 secondserror in nextJS now because it does create this error.
6:26:296 hours, 26 minutes, 29 secondsSo that's why we see it comes over to this catch block and then we see something went wrong. So it's actually working fine. But the error we are
6:26:376 hours, 26 minutes, 37 secondsgetting is just due to the fact that the redirect works. is going to throw an error which is going to be you can see
6:26:456 hours, 26 minutes, 45 secondsover here in a route handler or a server action is going to serve a 307 or 303 call to the caller. Now this is going to
6:26:556 hours, 26 minutes, 55 secondsthen come over to the cat block. So it's going to be like an error that has happened and it's going to come over to the catch block and over here in the
6:27:046 hours, 27 minutes, 4 secondscatch block we then see this redirect error here. All right. So, no worries.
6:27:106 hours, 27 minutes, 10 secondsWe're going to be fixing this and then we can continue. So, what I'm going to do, I'm just going to collapse this.
6:27:166 hours, 27 minutes, 16 secondsI'll get rid of this that we have over here. And I'll also get rid of this as we now, you know, as we know the fix.
6:27:246 hours, 27 minutes, 24 secondsSo, what we can do, we can define this log over here. Maybe just after this check or maybe we can do something.
6:27:316 hours, 27 minutes, 31 secondsLet's try to do something just a little bit different. What we can do we can just come here and say let slugg and
6:27:396 hours, 27 minutes, 39 secondsslog is going to be undefined initially and it's going to be of type string.
6:27:456 hours, 27 minutes, 45 secondsSo here when we have everything okay rather than redirect the user here what we're going and also we validate the
6:27:526 hours, 27 minutes, 52 secondspath we're going to move them down here and then we're going to get rid of this.
6:27:586 hours, 27 minutes, 58 secondsSo we can just come here and redirect user to the slog like this. But you can
6:28:056 hours, 28 minutes, 5 secondssee over here um slog is used before being assigned. So we haven't assigned it yet. Now the assignment is going to
6:28:136 hours, 28 minutes, 13 secondshappen over here slog is then going to be equals to data do slog like this. All
6:28:206 hours, 28 minutes, 20 secondsright. So why do we still have the error? Oh, that's because we are inside the if block. So I'm going to bring it
6:28:276 hours, 28 minutes, 27 secondsoutside the if and now we are looking for data and I'm going to get rid of this if block over here and that means
6:28:356 hours, 28 minutes, 35 secondswe do not need or use the intent and that fixes the error here. So that's why I tried adding um that fixes the
6:28:436 hours, 28 minutes, 43 secondserror that we have over here and we are not you know making of the intent at least for now we have one intent we can switch based on the intent and then we
6:28:536 hours, 28 minutes, 53 secondscan go on to redirect but now we just have one intent so it's pretty much okay.
6:29:006 hours, 29 minutesI'm going to give this a save and now once we try this out it's definitely going to work. We have already created the demo organization. So what's going
6:29:086 hours, 29 minutes, 8 secondsto happen is I'm just going to create a demo 2 organization and hit on create organization. And this time around let's
6:29:166 hours, 29 minutes, 16 secondstake a look at our terminal window and we see creating. So we give this a moment and now you see we are redirected over here to the projects.
6:29:276 hours, 29 minutes, 27 secondsAnd now you can go to create a project in here. But what we can do you can see these other organizations got created.
6:29:346 hours, 29 minutes, 34 secondsNow we accept organization with the same name which could be something we just noticed. So that also um is something
6:29:416 hours, 29 minutes, 41 secondsthat can be fixed. But if we come over to organizations, we're going to see the entire organization listed here just as we have with super base.
6:29:526 hours, 29 minutes, 52 secondsAll right. So that has been fixed. The next fix we're going to be working on is the settings page which for now um if we
6:29:596 hours, 29 minutes, 59 secondscome over to an organization and we try to visit the settings page of that specific organization
6:30:066 hours, 30 minutes, 6 secondsyou see is a 44 page. So this is what we're going to be fixing next. Okay. So we're going to fix this settings page
6:30:146 hours, 30 minutes, 14 secondsand let's fix that now. I'm going to close all the styles that we have open and if we come over here. So that is in
6:30:236 hours, 30 minutes, 23 secondsthe dashboard here like this. We can add a new page and this new page is going to be settings. And then we're going to
6:30:316 hours, 30 minutes, 31 secondshave the page. Oops. So here we're going to have the page.tsx page.tsx like this.
6:30:406 hours, 30 minutes, 40 secondsNow this is going to be this page. And then we can go on to have the content
6:30:466 hours, 30 minutes, 46 secondshere. So let's import redirect. redirect is going to coming from next navigation.
6:30:536 hours, 30 minutes, 53 secondsWe're also going to bring in retrieve organizations from API or retrieve my organizations from API which is going to
6:31:016 hours, 31 minutes, 1 secondcome from the features organization. And then we have the organization helpers dos server file and then we can export
6:31:086 hours, 31 minutes, 8 secondsthe default async function which are going to call settings page like this.
6:31:176 hours, 31 minutes, 17 secondsSo we're going to say con organizations is equals to our way to retrieve organizations from API and let's check the length. So if the organization's
6:31:266 hours, 31 minutes, 26 secondslength is equals to zero, we're going to redirect the user to the new organizations page. So they can create
6:31:336 hours, 31 minutes, 33 secondsan organization otherwise we're going to redirect them to just um the forced organization settings and members page.
6:31:426 hours, 31 minutes, 42 secondsOkay. So we are also lacking this page. So, we're also going to do a redirect.
6:31:476 hours, 31 minutes, 47 secondsNow, if we save this over here, you see we're going to be redirected over to the first organization settings page, which is this organization page.
6:31:576 hours, 31 minutes, 57 secondsAnd yeah, so it more or less fixes things a little bit, but this is not the only place like the user can go over to
6:32:046 hours, 32 minutes, 4 secondsthe organizations page or to the settings page because if we come over here to the organizations and we choose this organization. So if
6:32:136 hours, 32 minutes, 13 secondswe come here, it's going to take us to the first organization settings page.
6:32:176 hours, 32 minutes, 17 secondsBut if we choose come over here, then we're going to see the settings link. So let's give this a moment.
6:32:256 hours, 32 minutes, 25 secondsOkay, so we're here. I'm just still going to choose the project within the organization.
6:32:316 hours, 32 minutes, 31 secondsAnd here the setting it still goes to / settings. We're going to be updating the footer nav link in a moment. But then
6:32:386 hours, 32 minutes, 38 secondslet's also come here and organizations page and this log. And here we have the
6:32:456 hours, 32 minutes, 45 secondssettings. And here we should have the page.tsx. So here we're going to have the page.tsx like this.
6:32:556 hours, 32 minutes, 55 secondsIn here we can import redirect from next navigation and then we can go on to export the
6:33:026 hours, 33 minutes, 2 secondsdefault async function which we are going to call the organization settings index page and we're just going to
6:33:106 hours, 33 minutes, 10 secondsretrieve the params which you know is of this object. So we have the params key.
6:33:146 hours, 33 minutes, 14 secondsSo we're destructuring params. So this function is going to take this argument automatically and we're going to retrieve this log from the params and we
6:33:236 hours, 33 minutes, 23 secondsjust want to redirect the user to organizations the organizations log the settings and the members page like this.
6:33:316 hours, 33 minutes, 31 secondsSo we also performing another redirect over here. So let's save this and in the application sidebar so it's already in
6:33:406 hours, 33 minutes, 40 secondsthe components and in the app sidebar we need to make a change here. So let's scroll further down where we have the link to settings in the footer here.
6:33:506 hours, 33 minutes, 50 secondsThis is the link to settings. Now we're going to be updating this and it's going to be dynamic.
6:33:576 hours, 33 minutes, 57 secondsSo as you can see app sidebar takes in the organization and also the user. So what we can do over here so this is then
6:34:056 hours, 34 minutes, 5 secondsgoing to be equals to and here we're going to have back tick. So you go over to /organizations
6:34:136 hours, 34 minutes, 13 secondsorganizations and then we're going to have this check over here. We're going to check the organization log if that is available.
6:34:226 hours, 34 minutes, 22 secondsUh we have slog like this. Uh if that is available then we're going to check the current organization
6:34:316 hours, 34 minutes, 31 secondsdo slog like this and then the path is still slash settings / members. So let
6:34:396 hours, 34 minutes, 39 secondsme collapse this and like this and we can give this a save. So now let's try it out. So we have /organization if we have current organization we have the
6:34:486 hours, 34 minutes, 48 secondscurrent organizations log and then slash settings/members.
6:34:536 hours, 34 minutes, 53 secondsNow let's try if we come here we see the path has been updated and this takes us to this page over here. So we actually
6:35:006 hours, 35 minuteshave four for page and that's because we have a typo here. So, it should be organizations with an S like this. And
6:35:096 hours, 35 minutes, 9 secondsnow, let's save it and let's come back and give this another trial. So, I'm just going to come here and the settings hasn't updated yet. So, let's just give
6:35:176 hours, 35 minutes, 17 secondsthis a quick refresh and let's give this a try now. So, I'll click here and you see now it has updated. You will click
6:35:246 hours, 35 minutes, 24 secondshere. And now, this time around, you see you're over here in the members page.
6:35:316 hours, 35 minutes, 31 secondsSo let's come over just to organizations to see how this is now. So we'll give this a moment and let's see how the
6:35:396 hours, 35 minutes, 39 secondssettings page works. So you see now it's the organizations the code with Larry settings member. So it takes the first organization as we are not currently
6:35:486 hours, 35 minutes, 48 secondsinto any organization. So it just gives us straight up to that organization settings page. Okay. So this is working
6:35:566 hours, 35 minutes, 56 secondsfine and good. Now we're going to be working or fixing the style navigation.
6:36:026 hours, 36 minutes, 2 secondsThere isn't much to fix over here, but I think we can do better. I think we can matchly close what we have in Superbase
6:36:106 hours, 36 minutes, 10 secondsum than what we have currently. So this is what we're going to be fixing next.
6:36:136 hours, 36 minutes, 13 secondsI've already provided some of the fixes which is over here. If you check the templates, we have this new template
6:36:206 hours, 36 minutes, 20 secondswhich I called final application sidebar. So the idea is I'm going to copy and paste this and I'm also going to update some styling um that we have currently. So I'm going to replace this.
6:36:316 hours, 36 minutes, 31 secondsAnd does it have our fix over here? Yes.
6:36:346 hours, 36 minutes, 34 secondsAs you can see here, it already has our fix. So no worries. So I'm just going to copy and paste this in here. And also up the styling and then we can wrap
6:36:426 hours, 36 minutes, 42 secondseverything up. Okay. So we're going to be fixing things and we're going to be fixing the application sidebar. And I
6:36:506 hours, 36 minutes, 50 secondshave some styles or some updated styles for us. So let me collapse this and collapse this. And this is going to be in the app and here in the global CSS.
6:37:026 hours, 37 minutes, 2 secondsSo we need to add new styles. So let's say in the team inline just after this I'm going to bring this in. All right.
6:37:126 hours, 37 minutes, 12 secondsSo I'm just going to copy all of these and I'll have this dropped in here.
6:37:176 hours, 37 minutes, 17 secondsDefinitely this is available in the GitHub. So I'm just going to you know just say um updated something like this
6:37:246 hours, 37 minutes, 24 secondsso that you can have this for reference and we're going to do the same for the roots. So where do we have the roots? So
6:37:326 hours, 37 minutes, 32 secondsover here let me copy this updated that we have here. And I will add it somewhere here.
6:37:406 hours, 37 minutes, 40 secondsNow I'm going to take this and have this here like this.
6:37:486 hours, 37 minutes, 48 secondsNow, let's do the same for here. I'm going to copy the updated and over here in the dark variant. So, you just want
6:37:556 hours, 37 minutes, 55 secondsto paste this in here. And you're going to copy the code from GitHub. You just take this and replace this like this.
6:38:076 hours, 38 minutes, 7 secondsAll right. So, now this is going to take us one step closer to our fix. Let's save this. And this is all styling. I'm not pretty much going to be working
6:38:156 hours, 38 minutes, 15 secondsthrough um the styles that we have defined or the change that we've made here. It's pretty much styling. So if you come here, you can just copy and
6:38:246 hours, 38 minutes, 24 secondsreplace all of these here which you can see the changes. Uh yeah. So this also is to you know have the active
6:38:326 hours, 38 minutes, 32 secondsnavigation item. So this is the class that we apply to the active navigation.
6:38:376 hours, 38 minutes, 37 secondsAnd if you come here you can see we have the side by menu and we pass the classes and it's active. So now this sideback class over here which we have is then
6:38:466 hours, 38 minutes, 46 secondsgoing to check is active which is going to receive and it's of type boolean. All right. So it's pretty much um styling
6:38:536 hours, 38 minutes, 53 secondschanges over here. Now we can save this but this isn't going to 100% give us what we want but it's just going to give
6:39:006 hours, 39 minutesus something closer to what we are expecting. We still have this contrast which is not like really cool. So what
6:39:086 hours, 39 minutes, 8 secondswe can do to fix that is by giving a bg background to the dashboard layout. So
6:39:136 hours, 39 minutes, 13 secondswe're going to come over here to the dashboard and in the layout.tsx.
6:39:216 hours, 39 minutes, 21 secondsSo over here where we have the sidebar insert here, we're going to give it a class name and we're going to give it a
6:39:286 hours, 39 minutes, 28 secondsbg background like this. And once we give this a save, we are going to see this now update to something very much close to what we are trying to achieve.
6:39:396 hours, 39 minutes, 39 secondsIf it doesn't update automatically, you can just give this a refresh. And once it loads, you're going to see it updates over here. So, we're going to come here.
6:39:496 hours, 39 minutes, 49 secondsAnd now you see this update, but something is pretty much off. They are all active.
6:39:556 hours, 39 minutes, 55 secondsNow, we're going to update in the components UI sidebar directly. So let's come over to the components UI and in
6:40:046 hours, 40 minutes, 4 secondsthe sidebar just over here we're going to make a couple of changes here just one change basically. So if you controll
6:40:136 hours, 40 minutes, 13 secondsF you want to look for where you have the data active here and the data active. So I just want to look for this.
6:40:226 hours, 40 minutes, 22 secondsYeah. So over here where you have the sidebar menu sub button or the sidebar menu button. So let's
6:40:316 hours, 40 minutes, 31 secondssearch for the sidebar menu not the sub button. Want to search for the menu button. So this let's search for this.
6:40:416 hours, 40 minutes, 41 secondsYeah. So here where we have the data active is active like this. We are going to be changing this.
6:40:496 hours, 40 minutes, 49 secondsSo, what we're going to do over here is here where we have is active, we're going to change it just a little bit.
6:40:576 hours, 40 minutes, 57 secondsSo, we're going to say if it's active, then we want to spread what we have here. Um, so actually, we're going to
6:41:046 hours, 41 minutes, 4 secondsremove this. So, we're going to have this and then we're going to have this like this so that we can go on to spread where we can then have our condition.
6:41:146 hours, 41 minutes, 14 secondsOops, not the button. So we can spread and by saying is active that's oops is
6:41:226 hours, 41 minutes, 22 secondsactive that's the only time we want to attach this data active attribute. So we're going to attach this which is
6:41:306 hours, 41 minutes, 30 secondsgoing to have the data active data active like this which is going to be set to true otherwise we're just
6:41:386 hours, 41 minutes, 38 secondsgoing to attach the empty object like this.
6:41:426 hours, 41 minutes, 42 secondsNow we can get rid of this and now we're going to give this a save. So this is the change that we made over here. Now with this change changed we can just
6:41:516 hours, 41 minutes, 51 secondscome over here and we do not see anyone active. So cool. Now if you come over to
6:41:586 hours, 41 minutes, 58 secondslet's say database it then becomes active and we should then see home because database is like home. But if you come over to SQL editor
6:42:076 hours, 42 minutes, 7 secondsyou would see the SQL editor then becomes active. So we give this a moment and we are still in project. Yeah, we need to select a project. So I'm just
6:42:166 hours, 42 minutes, 16 secondsgoing to select this project and now if we now we see database is active.
6:42:216 hours, 42 minutes, 21 secondsIf we come over to SQL we going to see that the SQL tab also is going to become active and the same works for the mobile
6:42:326 hours, 42 minutes, 32 secondsview. So over here mobile if we collapse this we see the SQL is active.
6:42:396 hours, 42 minutes, 39 secondsAll right. So this is pretty much all the change that we need to make and now we are done with our project. So we are
6:42:476 hours, 42 minutes, 47 secondsdone with our build. We can then focus on the stage of deployment. So I like the current navigation. I like how
6:42:546 hours, 42 minutes, 54 secondseverything came um came came up together. Yeah. So we have different projects. You can definitely add more projects. We have the organization
6:43:016 hours, 43 minutes, 1 secondswitcher. We can switch into an organization and you're going to see the projects that are listed with organization which for now there are no
6:43:086 hours, 43 minutes, 8 secondsprojects. So cool. Let's go over to the next stage which is then the deployment phase.

Sync to video time
