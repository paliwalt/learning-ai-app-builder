https://www.youtube.com/watch?v=rkfM8rtuE0E&t=5s


Full Stack Supabase Clone — NestJS & Next.js (Part 1)
code with lari
code with lari
8.6k subscribers

Subscribe

409


Share

Ask

Save

9,340 views  20 Jul 2026  #supabase #tailwindcss #nextjs
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
35:08 1-monorepo-setup  
56:33 2-database-setup  
1:14:23 3-dashboard-auth  
3:03:52 4-dashboard  
4:03:48 5-members-roles-invite  
5:29:54 6-multi-project-setup  
6:15:41 7-table-editor  
7:47:24 8-auto-generated-rest-api  
8:56:04 9-sql-editor  

---

Every section has its own branch on GitHub — numbered and named to match. Clone the repo and check out any branch to see exactly where the project is at that point in the course.

And if you're looking for a developer to build your SaaS, startup, mobile app, AI app, or full stack application, check out my Upwork: https://www.upwork.com/freelancers/~0...  
I'm a 5-star rated freelance software developer helping clients build modern production-ready applications using React Native, Next.js, NestJS, Supabase, and AI integrations.
------------------------------------------------------------------------------------------------
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
35:0135 minutes, 1 secondspecific sections in the application. So that's pretty much it for me. Without any further ado, let's get started with the course. Okay, everyone. And so the
Chapter 2: 1-monorepo-setup
35:1035 minutes, 10 secondsfirst thing we want to do is to make sure we have the correct version of node and pmppm installed on our machine. So if you run the node double- version
35:1835 minutes, 18 secondscommand, you need to make sure you're on node version 20 and above. And that's the same for pnpm. So also if you run
35:2535 minutes, 25 secondsthe pnpm double-en version, you need to make sure you're on version 9 and above.
35:3135 minutes, 31 secondsNow if this command gave you an error or you're on a lower version, the command is npm install-g pnpm like this. If you're on Mac OS or
35:3935 minutes, 39 secondsLinux, you need a pseudo command in front of this. I'm not going to run the installation because I already have this installed on my machine with the correct
35:4735 minutes, 47 secondsversion. Okay. So, the next step is for us to create a new folder where we would have our application files. So, this folder should be anywhere on your
35:5535 minutes, 55 secondsmachine. As you can see, I'm already in this YouTube folder. So, right in here, I'm going to be creating another folder.
36:0136 minutes, 1 secondSo, I'll make a new directory and call it super vote, the name of our application. And then I'm going to CD which is change directory right inside
36:0936 minutes, 9 secondsthe super vault application and open it up in Visual Studio Code or whatever coding editor of your choice. I'm going
36:1736 minutes, 17 secondsto see you in VS Code. Okay. So here we are and the next step for us is to
36:2336 minutes, 23 secondsinitialize G right inside this new folder. As you can see it's a black canvas. We're going to start from the ground up. You run the g init command
36:3236 minutes, 32 secondsand this is going to initialize g. You just want to have one g initialization in your whole application because it's a monorreo. So we're going to have sub
36:4136 minutes, 41 secondsapplications. But that's the idea of monorreo having one git that manages multiple applications. So we're also
36:4836 minutes, 48 secondsgoing to have the package.json here. And let's do some setup and customization and some scripts. We're going to start
36:5536 minutes, 55 secondswith the name of super votes. We're also going to mark this as a private and then have the different scripts which I'm going to walk us through in a moment. So
37:0337 minutes, 3 secondswe have the dev API script and this is the command. We also have the dev web script which runs our next JS
37:1037 minutes, 10 secondsapplication and the dev script which makes use of this concurrently package to run both the dev API and the dev web
37:1737 minutes, 17 secondscommand. Now let's go through the different scripts here. You see we have the first one this d- filter here. PMP-
37:2437 minutes, 24 secondsfilter. This means PMPM is going to look for a package that is API package an application that we have and then it's
37:3337 minutes, 33 secondsgoing to run the start dev command. The start dev command is the default for nextjs application and that's the same for the dev web. The default for our next js front end is the rundev command.
37:4637 minutes, 46 secondsSo this is the default and then we are making use of concurrently package which is going to run both simultaneously the
37:5337 minutes, 53 secondsdev API package as well as the dev web package. Now if we try to install this concurrently package we're going to get
38:0138 minutes, 1 secondan error because for now this is not a pmpp workspace. So let's try it. Let's
38:0638 minutes, 6 secondssay pmppm add- d concurrently and then we say hyphen w like this.
38:1338 minutes, 13 secondsYou're going to see this command is going to give us an error that the workspace route may only be used inside a workspace. So how can we convert this
38:2138 minutes, 21 secondsinto a workspace a pmppm workspace? It's quite easy and straightforward. We just need to create a pmppm workspace yamel
38:2938 minutes, 29 secondsfile. Now let's do that. Right here we're going to create the new file which is going to be pmppm workspacey file. And here we're going to define
38:3838 minutes, 38 secondsdifferent packages. So we have the packages definition here which is going to have the apps and also the package.
38:4438 minutes, 44 secondsOkay. So let's do we have the packages here. We have the apps and we have this packages. Now what this means is any
38:5238 minutes, 52 secondsapplication any application with the package.json right inside the apps folder is going to be treated as a pmppm
38:5938 minutes, 59 secondsworkspace. And same for the packages folder. Now that we have this definition, if we try the installation again, you're going to see now we're
39:0739 minutes, 7 secondsgoing to have concurrently installed on our machine on our folder. And if you come over to the package.json, we see it listed here as a development dependency.
39:1739 minutes, 17 secondsAll right. So currently we have over 2k changes as you can see over here. So we need the git ignore file. Let's create a
39:2439 minutes, 24 secondsnew file here and we call it git ignore like this. And here we're going to list the node modules. We also want to um
39:3239 minutes, 32 secondshave the this folder, the next folder, the env.local and any file that just has the env like
39:4039 minutes, 40 secondsthis. All right, so this is our base setup, our basic setup. Please do go and save this file. The next thing we want
39:4739 minutes, 47 secondsto do is to make sure we have the packages, the shared package definition.
39:5239 minutes, 52 secondsThat's what we're going to be working on next. For us to create the types package right here in the root of the
40:0040 minutesapplication, we need to create a new folder and we call this folder packages.
40:0440 minutes, 4 secondsSo remember, if you double check the pnpm workspace yl file, we have this packages folder here. So definitely
40:1240 minutes, 12 secondsanything that we have right here in the packages folder is going to be a workspace pm workspace. So here we're going to have the types folder and in
40:2140 minutes, 21 secondshere we're going to then have the package.json file over here. Now let's bring in the
40:2840 minutes, 28 secondscontent of this packet.json. We're going to start with the name superv/types or we're going to give it a version
40:3540 minutes, 35 secondsnumber. Mark this as private and the main entry point is going to be the source and the index.ts. This source
40:4240 minutes, 42 secondsindex.ts is going to be the main entry point. We're going to create this in a moment. We do not have this yet. And the name over here at supervolt for/types is
40:5140 minutes, 51 secondssomething you can imagine to be an identifier for this types package. And other applications that want to make use of this types are going to add this as a
41:0041 minutesdependency in their package.json which we're going to see um in a moment. So let's start by having the main entry
41:0841 minutes, 8 secondspoint of application. For now you see we have the source the index.ts which we haven't defined. So right here in the types folder we're going to have the
41:1641 minutes, 16 secondssource and in here we're going to have the index.ts and we're going to be exporting different interface. Now something I should say here these are
41:2541 minutes, 25 secondsnot our database schema. These are the different interface that's going to be shared between the back end and the front end of application as we are going
41:3341 minutes, 33 secondsto see. Okay. Okay. So let's start with the user. We're going to export the interface user like this. A user would have an id of a string. An email of type
41:4241 minutes, 42 secondsstring. Also a name which is string or null. Then an avatar URL which is also a string or null type. We also have the
41:5041 minutes, 50 secondscreated art which is a string. And the updated that which is a string. Then we have the organization role. Export type organization role. It's going to be
41:5841 minutes, 58 secondsadmin or developer. And then we're going to export the interface for organization. It's going to have an ID of type string. Also a name of string.
42:0842 minutes, 8 secondsthe slog of string, the created that of type string and the updated that of type string. Then we have the organization
42:1642 minutes, 16 secondsmember export interface or member. It's going to have an ID of string, the organization ID of a string, then the
42:2442 minutes, 24 secondsuser ID of string, the role of the organization role and the created that of type string. We also have the project
42:3242 minutes, 32 secondstype here. We're going to export interface project. The project will have an ID of type string. the organization ID of a string also the name of string
42:4042 minutes, 40 secondsthe log of string the database schema which we're going to explain of type string then we have the project URL of
42:4742 minutes, 47 secondstype string the ankon key of type string and then we have the created that and the updated at then we have the
42:5442 minutes, 54 secondsauthentication impute type the sport interface register impute it's going to have the email of type string and the
43:0243 minutes, 2 secondspassword of type string and also the name of type string Same for the login interface. But now for login we're going to have the email
43:1143 minutes, 11 secondsof type string and just a password of type string. And then lastly the O tokens export interface all tokens.
43:1943 minutes, 19 secondsWe're going to have the access token of type string and the refresh token of type string. Okay. So this is the O
43:2843 minutes, 28 secondstoken type. For this register input and login input. This is what the user would provide whenever they want to register or log into application. This is our
43:3643 minutes, 36 secondsproject type over here. This is the organization member type and this is the type for the organization, the
43:4443 minutes, 44 secondsorganization role and the user. So the next step is for us to set up our NestJS back end. Let's have our NestJS backend.
43:5443 minutes, 54 secondsOkay. So I'm going to close all these tabs that we do have open and we need a new folder. Okay. So this folder is what's going to have our front end code
44:0344 minutes, 3 secondsand also our backend code. So here in the root of the application, we're going to create the apps folder and [clears throat] then we're going to CD
44:1144 minutes, 11 secondsright into the apps folder so that we can create the new NestJS application.
44:1644 minutes, 16 secondsWe need the NestJS CLI. If you do not have it, the command is sudo pmppm add-
44:2344 minutes, 23 secondsglobally and the atjs/ cla do run installation. I already have it installed on my machine. Now I'm going to make use of now run the next
44:3244 minutes, 32 secondscommand. So I'm going to say next new and the name of the application which is API and we can add some flags such as
44:3944 minutes, 39 secondsd-package- manager. We want to choose pnpm over here and we also want to skip git. So we
44:4644 minutes, 46 secondssaid that just skip-ashg like this run the installation and you would notice right now in the apps folder we now have
44:5444 minutes, 54 secondsthe API folder defined in here. So we'll give this a minute to finish. I think I will have this annoying error that I usually get. So now we see the error over here. I think it's a pmppm thing.
45:0545 minutes, 5 secondsI'm not quite sure. But then we need to run this command pmp install drict p dependencies equals to false just so
45:1345 minutes, 13 secondsthat we can see what package is failing or get more details why we have the error. So I'll cd into the API folder
45:2045 minutes, 20 secondsand then I'll paste in this pmppm install strict p dependencies equals to false. Do go and send this if you had
45:2945 minutes, 29 secondsthe same error as I did. And now you see this UN RS resolve package is failing.
45:3545 minutes, 35 secondsWe need to approve it. So we need to say PMPM approved builds which is then going to show us this UN RS resolver package.
45:4345 minutes, 43 secondsSo you need to select it using spacebar and enter. Now you want to say yes.
45:4845 minutes, 48 secondsDon't say false. We'll be back to where we started. So run the installation or approve the installation. And just to be sure that everything is okay, you can
45:5745 minutes, 57 secondsalso run pmppm install and you'll get thumbs up. you will get done. Everything is okay.
46:0346 minutes, 3 secondsAll right. Cool. So now we defined our package earlier. We also need to link our package as a dependency to this API.
46:1046 minutes, 10 secondsSo that's going to happen in the package.json and as a dependency we want to have our super vault types. Okay. So we're going
46:1846 minutes, 18 secondsto say at supervolt/types is going to look for the workspace and asterics like this. Now this is going to
46:2546 minutes, 25 secondssay PMP. Hey, do not look for the for these super votes types in the mpm registry is right here in our workspace.
46:3346 minutes, 33 secondsOkay, now to make sure everything is linked up, we need to run the pmppm install command. So, open up your terminal and this has to be in the root.
46:4146 minutes, 41 secondsSo, we're going to cd outside the API folder and in the root. So, you need to be here right here in supervolt and run
46:4846 minutes, 48 secondsthe pnpm install command which is going to scope all our three workspace and have the same link and link everything
46:5546 minutes, 55 secondsup together. Okay, so now once we have this done, the next step is for us to have our environment variable so that we can have the port definition. We can
47:0347 minutes, 3 secondsalso have our web URL. So right here in the API, we're going to create the EMV file and we're going to have the port which is going to be equals to 3000 and
47:1147 minutes, 11 secondsour web URL which is our front end is going to look for it at localhost column 3001. So let's not forget to update this when we go over to the next JS application.
47:2247 minutes, 22 secondsAll right, now we're going to do extra configuration in the main.ts TS file of our API. So in the main.ts, first thing I'm going to do, I'm going
47:3047 minutes, 30 secondsto add void in front of this so that we can no longer have the warning. And then I'm going to get rid of this line that we have over here. Now I'm going to set
47:3847 minutes, 38 secondsa global prefix. So let's have the configuration here. So we're going to start by saying app set global prefix to be API. I'll explain in a moment. We're
47:4647 minutes, 46 secondsalso going to say app dot use global pipes new validation pipe where we can configure like white list to true forbid
47:5347 minutes, 53 secondsnonwhite listed to true. We can also have transform to true. This just going to help us to validate incoming request.
48:0148 minutes, 1 secondAnd for course we're going to say app.t enable course. The origin is going to be our web URL. So presser envl
48:0848 minutes, 8 secondsotherwise we'll have port 3000 as a fallback. And we also have credential set to true. Now for the port definition we know that it's going to come from our
48:1748 minutes, 17 secondsprocess.v.port otherwise 3000 and app can now listen on that port 3000 which is our API. Okay.
48:2648 minutes, 26 secondsThen we just have this log that our API is running on local host port which is port 3000. Now we need to import the
48:3348 minutes, 33 secondsvalidation pipe. That's why we have this error needs to coming from nests common.
48:3848 minutes, 38 secondsAnd let's walk through. So we have the set global prefix. What this is doing here, it's making sure that request now is going to come to SL API/ health or
48:4748 minutes, 47 secondsslash any resource that we have in our back end. The validation pipe helps us to strip let's say non required field
48:5548 minutes, 55 secondsfrom incoming request. And then we have the course to make sure our front end and back end can have a handshake can go on to you know discourse with each
49:0349 minutes, 3 secondsother. And we are listening on port 3000 here. And we just have some logs over here. Now this is the setup we have in our main. We also need to install extra
49:1349 minutes, 13 secondspackages so that we can do more configuration. So I would clear and cd back into the apps API folder. And here
49:2049 minutes, 20 secondswe are going to run pmppm add at nexs for/config. We also need the class validator and we also need the class
49:2749 minutes, 27 secondstransformer package. Do go and run the installation. We're going to set things up in a moment. And once the installation is done, we can now set
49:3649 minutes, 36 secondsthings up like coming into the application module. We're going to set our config module here. So in the imports array, we're going to bring in
49:4349 minutes, 43 secondsthe config module and we call for roots like this. And we want to cast this as a global module. So we're going to say
49:5049 minutes, 50 secondsit's global to true. What this means uh let me just fix this lint. No worries. Offscreen I'm going to have lint fixed.
49:5849 minutes, 58 secondsWhat this means is any feature in our application that wants to make use of the config module would no longer have to import it in their own module. So
50:0750 minutes, 7 secondsthat's why we have the for root true over here. And config module helps us read environment variables. Now in the app controller, I'm going to clear
50:1550 minutes, 15 secondseverything that we have here so that we can configure everything from scratch.
50:1850 minutes, 18 secondsWe're going to import controller and also get from at nextj for/ common. Then we're going to have our controller
50:2650 minutes, 26 secondsdecorator and we export the class app controller. It's going to have this at get get health path which is going to
50:3450 minutes, 34 secondscome into the health method and we just return this object back to the client with the status as well as the time
50:4250 minutes, 42 secondsstamp. Okay, so this is pretty much straightforward what's going on here. It just means that our application now /
50:4950 minutes, 49 secondsAPI/halth is going to come into the health method and we're going to return this response back to the client and the
50:5650 minutes, 56 secondsapp controller is already registered in the application module. This is our basic setup for our nextjs back end. Up
51:0451 minutes, 4 secondsnext is going to be our next JS front end. Now the focus is going to be on building out our next JS front end. I'm
51:1251 minutes, 12 secondsgoing to close all these tiles that we do have open and I'll also collapse all of these. Now open up your terminal. We need to run the new installation inside
51:2051 minutes, 20 secondsthe apps folder. So we need to see the outside the API and um yeah. So outside the API and here we're going to make use of the MPX
51:2951 minutes, 29 secondscreate next app command. So MPX create next app at latest. The name of the application is web here. Now, we're
51:3851 minutes, 38 secondsgoing to see it right inside the apps, but we need to answer some prompts.
51:4251 minutes, 42 secondsThat's the next JS CLI. Just like having the the prompt, we're going to say no to customize. Yes, for TypeScript, yes for
51:5051 minutes, 50 secondseslint, yes for the React compiler, yes for tailwind, yes for the source directory, yes for the app router. And here we're going to say no. We do not
51:5851 minutes, 58 secondswant to customize the import alias. And we'll say yes for the agents.m MD guide.
52:0452 minutes, 4 secondsOkay, so we'll give the NextJS CLA know some time for it to create the new NextJS application. We already see the
52:1252 minutes, 12 secondsdifferent folders and files right inside the web here. So we have the web application and now that it is done just as we did for the back end the API
52:2252 minutes, 22 secondsapplication we need to have the package scoped in the package.json dependency.
52:2752 minutes, 27 secondsSo we're going to come into package.json JSON and here as a dependency we're going to have the superbolt package.
52:3452 minutes, 34 secondsOkay, so let's do that. We're going to have at super volt for/types which is going to look into our workspace. Okay,
52:4352 minutes, 43 secondsso now we've done the linking. We're going to do the pmppm install later. The next step for us is to also have the scripts here. So for the dev command,
52:5252 minutes, 52 secondsthe port is going to be 3001. That's what the API is expecting. And I'll also add the same to the start over here. So
53:0053 minutesthe same port. Then once you have this done, the next step is for us to have the EMV file right here for the web. So env.
53:1053 minutes, 10 secondsAnd we want to have the expo public API URL. So next public sorry not expo API URL is going to go over to local host
53:1953 minutes, 19 seconds3000/ API which is the endpoint for our API folder. Now this is pretty much it.
53:2653 minutes, 26 secondsSo now we're just going to configure the page the homepage so that we can test the handshake with our back end. So what I'm going to do I'm going to close all
53:3453 minutes, 34 secondsof these. We know that this is our roots page and we can start with the importation. So with the definition so let's mark this as a client component
53:4253 minutes, 42 secondsuse client directive and we can import use state use effect from react and for the page definition we're going to
53:4953 minutes, 49 secondsexport default function home. And in here we're going to have the status stored in the state local state. By
53:5753 minutes, 57 secondsdefault it's going to have the text of checking. And in our use effect we're going to make use of the fetch API to process.env.net public API URL/halth.
54:0854 minutes, 8 secondsAnd we chain dot then where we return response.json and then we have data which we're going to then set status to
54:1654 minutes, 16 secondsdata. status and catch we're going to set status to unreachable. This is where we are not able to discourse with our
54:2354 minutes, 23 secondsback end. Now for the JSX pretty much straightforward. We have this main with these classes flex min height of screen
54:3054 minutes, 30 secondsflex call item center justify center padding of 24 and then we have this h1 with text for XL font bold with text of
54:3954 minutes, 39 secondssuper v and we have the paragraph with the class name of margin top of4 text 500 and the API status here is going to
54:4654 minutes, 46 secondsbe the status from our state. Now we have the page defined the root page of our application. We need to link
54:5454 minutes, 54 secondseverything up together. Okay. So we're going to come out of the apps folder. We need to do this at the root. So not here
55:0255 minutes, 2 secondsI came out too much. So we need to see the back into the spa. And here we're going to run pmppm install command again.
55:1055 minutes, 10 secondsSo we're going to give this a moment for the installation to complete. And then we're going to run the dev command which is going to start up both the back end and the front end of our application.
55:1955 minutes, 19 secondsOkay. So now this annoying error again the build failed. We need to run the pmppm approve build command so that we
55:2655 minutes, 26 secondscan approve the sharp package that is failing for some reason. So pmppm approve- build and I'll select sharp and then I'm going to execute and say yes.
55:3955 minutes, 39 secondsOkay. So now once the installation is done or approved, the next step is for us to verify. So I will just clear the
55:4655 minutes, 46 secondsterminal and run pmppm installed command again. And once we get the thumbs up that everything is fine and good, we just going to run the pnpm dev command.
55:5655 minutes, 56 secondsAnd you see here concurrently package is running the dev API and the dev web application. our back end and our front
56:0456 minutes, 4 secondsend. The front end is running on port 3001 as we configured and the back end is running on port 3000. I'm going to
56:1156 minutes, 11 secondsopen up the browser at this point so that we see the port 3000 currently loading and once it is done we should see the health status which is okay just
56:2156 minutes, 21 secondsas we are returning it from the back end. Now we are done with setting up our next JS front end and also the back end.
56:2856 minutes, 28 secondsWe are going to move forward in setting up our database drizzle OM and neon progress. Last time out we did scaffold
Chapter 3: 2-database-setup
56:3656 minutes, 36 secondsour monorreo. This time around we're going to set up our neon progress database. We're also going to set up our drizzle configured in our NestJS API and
56:4656 minutes, 46 secondsthen we create our four core tables defined in the Drizzle schema. So the users, the organizations, the organization members and also our
56:5456 minutes, 54 secondsproject schema. Then we're going to have Drizzle kit running the migrations against Neon. And then we're also going to have a working database module that
57:0257 minutes, 2 secondsis going to be injectable across our entire API. Okay. So I am over here in console.ne.te.
57:0957 minutes, 9 secondsWe need to create a new project. So make sure you're in console.ne.te. Then you hit in the new project button.
57:1657 minutes, 16 secondsWe give this project the name of our application. So I'm going to go with the name of super votes over here. And then you want to hit on create. This is going
57:2557 minutes, 25 secondsto take you straight up into the project dashboard. And when you're here, you want to hit on the connect button, which is going to show you your connection
57:3357 minutes, 33 secondsstring. Make sure you have connection pooling enabled. And you can copy this snippet. Now, this snippet is going to be registered right here in our
57:4157 minutes, 41 secondsapplication. I'm going to close all these tabs that we do have open. And directly in the web.env, sorry, in the API.env, env we need to
57:5057 minutes, 50 secondshave the database URL which is going to be equals to this value over here. All right. So once you have this the next
57:5857 minutes, 58 secondsstep is for us to install the different packages that we need. So you need to open up your console and come right up into the cd
58:0758 minutes, 7 secondsthe apps the API folder and right in here we're going to go with pmppm add drizzle which is the OM itself. We're
58:1558 minutes, 15 secondsalso going to install at neon database for/serverless which is neon http driver. It works perfectly in nodejs. We
58:2258 minutes, 22 secondsalso need which is going to load the env for dzuk kit outside nest js context. So run the installation. We're going to
58:3158 minutes, 31 secondsgive this a moment for the installation to complete and once it is done we're also going to install drezo kit. So
58:3758 minutes, 37 secondslet's say pmppm add- as a development dependency dz kit. digital kit is the CLI tool that is going to be used for generating and also running migrations.
58:4958 minutes, 49 secondsSo once this is completed, it fails for me again this annoying error. So I'm going to run the pmppm approve build so that I can pick the ES build package.
58:5958 minutes, 59 secondsI'm going to select this package and then I would say yes and this should be done. Remember as I said earlier once
59:0759 minutes, 7 secondsthis completes you always need to test things out. So I'm also going to run pnpm install just to make sure that the installation was proper that it worked.
59:1659 minutes, 16 secondsAnd now I see done we can move on. The next step is for us to create the drizzle kit. So right here in the root of the API folder we're going to create
59:2559 minutes, 25 secondsthe drizzle.config.ts file. So not the drizzle kit. Let's start with importation. We're going to importv/config.
59:3459 minutes, 34 secondsAnd then we're going to import the drizzle config which is going to come from drizzle kit.
59:4059 minutes, 40 secondsWe can export default define config which is going to take the configurations like the schema which is going to point to the source DB schema index.ts.
59:5059 minutes, 50 secondsWe also have the out which is this drizzle folder. The dialect is progressql and the db credentials. It needs the URL. The URL is going to come
59:5959 minutes, 59 secondsfrom our process.env database URL. We have the schema file here which we do not have for now. So we do not
1:00:081 hour, 8 secondshave the schema index.ts. We'll create this in a moment. The output is this drizzle folder is going to be automatically generated whenever we run
1:00:161 hour, 16 secondsthe migration. The dialect is rest and the database credentials takes in our URL. Now we're going to add the
1:00:241 hour, 24 secondsdifferent scripts we need in our package.json.
1:00:271 hour, 27 secondsSo over here we're going to register some drizzle kit script which is going to help us with the migration and stuff like that. So maybe under the node start
1:00:371 hour, 37 secondsbroad script we're going to have the DB generate which is going to run drizzle kit generate command and then we're
1:00:431 hour, 43 secondsgoing to also have the DB migrate which is going to help us to apply the migration once the once it's been generated. DB push is going to push
1:00:521 hour, 52 secondsdirectly to the database. Good for development. And DB Studio Dukit Studio is going to give us a web local web
1:01:011 hour, 1 minute, 1 secondpreview so we can see the current state of our database at any given point in time. Okay. So now we have everything defined.
1:01:101 hour, 1 minute, 10 secondsThe next step is for us to have our schema folder here which we do not have yet. So in the source folder, we're
1:01:171 hour, 1 minute, 17 secondsgoing to create a new folder for DB and then we're going to create another folder for the schema. And right in
1:01:241 hour, 1 minute, 24 secondshere, we're going to have the index.ts file. Okay, so this is our basic setup.
1:01:311 hour, 1 minute, 31 secondsNow we need to define the different schemas that we need to build out our application. Okay, so this is the point where we define the different schemas.
1:01:411 hour, 1 minute, 41 secondsLet's start with the user schema. So we're going to have the users CS file here and we start with the import. We're
1:01:481 hour, 1 minute, 48 secondsgoing to import PG table also text timestamp and UU ID. They will all come from drizzle-m/pcore.
1:01:571 hour, 1 minute, 57 secondsAnd here we're going to export the constant users which is going to be equals to PG table. We pass the table name which is users. And here we have
1:02:051 hour, 2 minutes, 5 secondsthe different columns like the ID. It's of type UID, the default random. So it's automatically generated and we have the primary key. The email is going to be a
1:02:141 hour, 2 minutes, 14 secondstext. We say not null and unique. The name is just going to be a text. We're also going to have the avatar URL which
1:02:211 hour, 2 minutes, 21 secondsis of type text. And then we have the password hash which is also of type text. The password hash could be null
1:02:281 hour, 2 minutes, 28 secondsfor users that sign up with OOTH. And the created that is going to be of type time stamp. We have created at like this
1:02:361 hour, 2 minutes, 36 secondsis not null and the default now. And also for the updated at is going to be of type time stamp updated at not null
1:02:451 hour, 2 minutes, 45 secondsdefault. Now so we're going to have two other types here. We're going to export the type for user which is going to be type of our users do infer select and
1:02:551 hour, 2 minutes, 55 secondsthe type new user is going to be type of our users infer insert. Now this type
1:03:021 hour, 3 minutes, 2 secondsthat we have over here. So exporting the type user whenever we want to have access to a user or what the user looks like this is the type and infer insert
1:03:111 hour, 3 minutes, 11 secondswhenever we want to create a new user we're going to make use of this type now to create a schema here you see we have this users here which is the table
1:03:191 hour, 3 minutes, 19 secondsdefinition and in this object we pass the different columns that we're going to have in the users table so we have
1:03:261 hour, 3 minutes, 26 secondsthe ID field the email the the name and all of these okay so After the users table, we're going to create another table for organization.
1:03:371 hour, 3 minutes, 37 secondsSo, we're going to come here and have the organization.ts file. I actually think it should be called organizations. So, I'm going to rename this to organizations.
1:03:471 hour, 3 minutes, 47 secondsAs always, we start with the imports.
1:03:491 hour, 3 minutes, 49 secondsWe're going to be importing PG enum because we have enum type. Uh we also have PG table, text, time stamp, and UU
1:03:571 hour, 3 minutes, 57 secondsID. They will all come from Drizzle ORM PG core. and we're going to import our users so that we can have this foreign relationship. So we're going to import our user schema from one level up users.
1:04:091 hour, 4 minutes, 9 secondsSo let's have the role definition. We're going to export con organ organization role enum is going to make use of pg enum the name of organization role and
1:04:181 hour, 4 minutes, 18 secondsyou could either be an admin or a developer. Now we export the con for the organizations table is going to be equals to pg table. The table will have
1:04:271 hour, 4 minutes, 27 secondsthe name of organizations and the different columns are going to be the ID which is a of type U ID a default random
1:04:341 hour, 4 minutes, 34 secondsand the primary key. We also have the name which is of type text. We pass name and it's also not null. Then we have the
1:04:421 hour, 4 minutes, 42 secondsslog. The slog is going to be a text and we pass not null and is unique.
1:04:471 hour, 4 minutes, 47 secondsDefinitely slo should be unique. The created art is going to be of type time stamp. We pass in the name created art
1:04:541 hour, 4 minutes, 54 secondsis not null and the default is going to be now. And same for the updated art.
1:04:581 hour, 4 minutes, 58 secondsThe updated art is going to be of type time stamp updated that not null and default now. We're going to have a joint
1:05:061 hour, 5 minutes, 6 secondstable so that one user can belong to multiple organizations with a role. So this is going to be a sportcons organization members. A pg table will
1:05:141 hour, 5 minutes, 14 secondsgive the name of organization members and the different columns for the ID. UID default random primary key.
1:05:221 hour, 5 minutes, 22 secondsWe also have the organization ID which is of type UU ID and it's not going to be not. And now this is going to be referencing the organization that we
1:05:301 hour, 5 minutes, 30 secondsdefined on top. So we say it references this function that returns the organization ID and we're going to pass on delete cascade. Then we also have the
1:05:401 hour, 5 minutes, 40 secondsuser ID. We pass the type UU ID, the user ID and it's not null. And this is also going to be referencing the users
1:05:481 hour, 5 minutes, 48 secondstable ID. So we have the function that returns the user ID and on delete cascade. Now for the role we're going to
1:05:551 hour, 5 minutes, 55 secondshave the organization role enum that we defined right up. It's going to have the name of role is not null and by default everybody's going to be a developer.
1:06:051 hour, 6 minutes, 5 secondsThen we have the created art which is of type time stamp created at like this not null and default now. Okay. So let's
1:06:141 hour, 6 minutes, 14 secondsexport different types. We're going to export the type for organization which is going to be the type of organization
1:06:211 hour, 6 minutes, 21 secondsinfest select. And then we also have the type for new organization. So export type new organization is going to be
1:06:301 hour, 6 minutes, 30 secondstype of our organizations schema infer insert. And then we export the type for
1:06:371 hour, 6 minutes, 37 secondsorganization member which is going to be type of organization members.infair Infair select and the last type here is
1:06:451 hour, 6 minutes, 45 secondsgoing to be export type new organization member is going to be equals type of organization members do infair insert.
1:06:551 hour, 6 minutes, 55 secondsWe have one more type definition to go or schema definition and that is for projects. So right here in the schema
1:07:021 hour, 7 minutes, 2 secondswe're going to create a project.ts file. Let's import pg table and text all of this from drizzle rmppg core. We're
1:07:111 hour, 7 minutes, 11 secondsgoing to import PG table text timestamp UU ID from Drizzle RM PG core. Then we're going to import the organization
1:07:201 hour, 7 minutes, 20 secondsfrom the organization schema because projects belong organ organizations.
1:07:261 hour, 7 minutes, 26 secondsOkay. So now we're going to have the definition export con project is going to be equals to PG table with the name of project the different columns like
1:07:351 hour, 7 minutes, 35 secondsthe ID is going to be of type UU ID default random so it's automatically generated and the primary key then we
1:07:421 hour, 7 minutes, 42 secondshave the organization ID which is a U ID is not null and this is going to be referencing the organization ID. So we
1:07:511 hour, 7 minutes, 51 secondshave the function that returns organizations do id and on delete we call cascade.
1:07:571 hour, 7 minutes, 57 secondsThe project will have a name which is of type text. We pass the name of name and is not null. And then we have the slug.
1:08:041 hour, 8 minutes, 4 secondsThe slug is also going to be of type text not null and is obviously unique.
1:08:091 hour, 8 minutes, 9 secondsAnd then we have the DB schema which is of type text is not null and unique. Now this DB schema is the project schema that is going to be provided or
1:08:181 hour, 8 minutes, 18 secondsprovisioned for this project. Okay. in the progress schema. Then we have the pro project URL is of type text and here
1:08:251 hour, 8 minutes, 25 secondswe pass not null and unique. The anon key which is of type text and not null.
1:08:301 hour, 8 minutes, 30 secondsThis is going to be the JWT that is signed with the project secret. And the service row key is going to be of type text service row key and not null which is going to also give full access JWT.
1:08:421 hour, 8 minutes, 42 secondsThen we have the created at which is of type time stamp created at not null and default now.
1:08:491 hour, 8 minutes, 49 secondsAnd then we have updated at which is also of type time stamp updated at not null and default now.
1:08:581 hour, 8 minutes, 58 secondsOkay. So let's export the two types that we need. We're going to export the type of project which is going to be equal to type of project.infair select. And then
1:09:071 hour, 9 minutes, 7 secondswe're also going to export another type of new project which is going to be equals to type of project dot infer insert. So this is our project schema.
1:09:181 hour, 9 minutes, 18 secondsNow we need to export all of these inside the index. Okay. So right in the index we're going to be exporting
1:09:261 hour, 9 minutes, 26 secondseverything. So we export everything from the user schema. Also we're going to export everything from the organization
1:09:331 hour, 9 minutes, 33 secondsschema. and then we export everything from the project schema.
1:09:391 hour, 9 minutes, 39 secondsSo this is pretty much our setup getting started. The next step is for us to create a Drizzle service. Okay, so
1:09:461 hour, 9 minutes, 46 secondsthat's what we're going to be focusing on next. We're going to create a Drizzle service um a module and also inject the
1:09:531 hour, 9 minutes, 53 secondsmodule right into the application module. Now let's have our Drizzle service. So I'm going to close all these
1:10:001 hour, 10 minutesfiles that we have open and right inside the DB fold that we're going to be creating that drizzle.ts
1:10:081 hour, 10 minutes, 8 secondsfile just like this and let's import injectable injectable and also on module in it. No worries I'm going to explain
1:10:171 hour, 10 minutes, 17 secondswhat on module in it can help us do and they're going to come from atjs for/common. We're also going to bring in the config service from atjs for/config.
1:10:281 hour, 10 minutes, 28 secondsSo remember that at global so we can straight up use the config service here.
1:10:321 hour, 10 minutes, 32 secondsThen we need to bring in drizzle which will come from drizzle o/ neon http.
1:10:381 hour, 10 minutes, 38 secondsThen we're going to import everything as our schema which will come from our schema file. We're going to mark the class as injectable and then we can
1:10:471 hour, 10 minutes, 47 secondsexport the class drizzle service which is going to be implementing on module in it. Now on module in it is going to run
1:10:541 hour, 10 minutes, 54 secondsafter NestJS has fully wired up dependency injection. So here it's safe for us to access the config service and
1:11:011 hour, 11 minutes, 1 secondwe're going to pass the URL directly over to Drizzle. So no worries. Let's see how the unmodule in it function works. So we're going to have the public
1:11:101 hour, 11 minutes, 10 secondsDB which is going to be of type the return type of our type of Drizzle which also is the type of our schema. Then we
1:11:171 hour, 11 minutes, 17 secondshave the constructor so that we can inject the private service the config service. So config is going to be of type config service. So on module in it
1:11:271 hour, 11 minutes, 27 secondshere we're going to say con the database URL is going to be equals to this doconfig.get we're going to have a string returned. I
1:11:351 hour, 11 minutes, 35 secondswant to get the database URL. Then we say this db is going to be equal to drizzle. And here we pass our database URL and we also pass our schema.
1:11:471 hour, 11 minutes, 47 secondsSo this is our uh DR service. We have this error with our DB. If you inspect this, it says the property DB has no
1:11:551 hour, 11 minutes, 55 secondsinitializer and is definitely not assigned in constructor. We're just going to have exclamation mark here which is going to tell TypeScript to relax. Hey, we are sure this is you know
1:12:031 hour, 12 minutes, 3 secondsgoing to be initialized. Now we're going to be creating that database module. So also in the DB root here we're going to create the DB.module.ts.
1:12:161 hour, 12 minutes, 16 secondsSo in here we're going to import module and also global which will come from at nextJS4/mon.
1:12:231 hour, 12 minutes, 23 secondsWe're also going to have the DRO service which is going to come from one level up that DRO service we just created. And
1:12:311 hour, 12 minutes, 31 secondsthen we're going to mark the class as global and also with a module decorator.
1:12:361 hour, 12 minutes, 36 secondsAnd in the module we're going to have the providers. The provider is the DRO service. And we also need to export that DRO service here. And then we can export
1:12:461 hour, 12 minutes, 46 secondsthe class DB module just like this. This at global decorator that we have here means that any module that imports the
1:12:541 hour, 12 minutes, 54 secondsdrizzle the DB module is going to make the drizzle service available everywhere without having or needing to reimpport the DB module every time.
1:13:041 hour, 13 minutes, 4 secondsSo right here in the app module we can just register the DB module here like this and we need to import it one level
1:13:111 hour, 13 minutes, 11 secondsup here like this. Now the last thing we need to do is to run our migration to see you know our database updates with the different schemas that we have
1:13:201 hour, 13 minutes, 20 secondsdefined. You need to be inside the API folder and here we're going to run the pmppm db generate command. This is going
1:13:281 hour, 13 minutes, 28 secondsto give us that you know drizzle folder that I told you about right here in the API as we see it over here and this is
1:13:351 hour, 13 minutes, 35 secondscontaining the SQL. Now we're going to run PNPM DB migrate which is then going to hey check that folder and apply the
1:13:441 hour, 13 minutes, 44 secondsmigration which is like update our database with the changes. So as you see over here it's applying the migration and what migration it has checked and
1:13:521 hour, 13 minutes, 52 secondsit's applying this oh tidy silverf fox.sql SQL. So, it's updating our database with the changes
1:14:001 hour, 14 minutesthat we have over there. Now, let's come over to the browser here. And here, if you then inspect your Neon database and
1:14:071 hour, 14 minutes, 7 secondsyou come over to the tables section, give this a moment. You're going to see you have all the tables that we defined
1:14:141 hour, 14 minutes, 14 secondsright over here. Cool. And we do. Now, the next step in building out our application is for us to focus on the authentication section.
Chapter 4: 3-dashboard-auth
1:14:241 hour, 14 minutes, 24 secondsThe focus for this section is authentication. So we're going to have the email sign up, the Google sign up,
1:14:311 hour, 14 minutes, 31 secondsthe GitHub sign up. And I just want to be clear that this is our own authentication. This is how admin and developers or our own users would be
1:14:401 hour, 14 minutes, 40 secondsable to authenticate into our super vault or into their super vault dashboard. And this is not the authentication that we are of going to
1:14:481 hour, 14 minutes, 48 secondsoffer inside project. So I know you know superb authentication. This is the way our own users are going to be able to authenticate themselves right into our
1:14:571 hour, 14 minutes, 57 secondsapplication. So the focus here is going to be the register and login with email and password. We also have Google O. We also have GitHub O the JWT access token,
1:15:071 hour, 15 minutes, 7 secondsthe JWT authentication guard and the current user decorator. So all these are what we are going to be focusing on
1:15:151 hour, 15 minutes, 15 secondsright inside of this episode. Okay. So now with that explanation out of the way, the first thing we would like to do
1:15:211 hour, 15 minutes, 21 secondsis to create a constant package. So we need to create a new package here. So in the packages folder, we're going to create a new folder for constants. And
1:15:301 hour, 15 minutes, 30 secondshere we're going to start with a package.json file so that we can configure this very own workspace. So let's start with the
1:15:381 hour, 15 minutes, 38 secondsname. We're going to give the name of at supervolt/constant and the version 0.0.1 0.1 mark it as
1:15:461 hour, 15 minutes, 46 secondsprivate and the main entry point here is going to be source and the index.ts file. So now we're going to create this
1:15:541 hour, 15 minutes, 54 secondssource folder and the index.ts file. So here we have the src folder and in there we have the index.ts
1:16:021 hour, 16 minutes, 2 secondsfile. So here we're going to export this constant which we'll call cookie keys is going to be equal to this object. The
1:16:091 hour, 16 minutes, 9 secondsaccess token is going to be equal to access token and also the refresh token is going to be equal to refresh token as constant. Now this is going to be shared
1:16:171 hour, 16 minutes, 17 secondsbetween the back end. The back end is going to read and set the cookie and the front end is going to forward the cookie. So we do not want to manually
1:16:241 hour, 16 minutes, 24 secondshave this you know access token um everywhere in the application. That's how we define it in the constant folder.
1:16:311 hour, 16 minutes, 31 secondsNow we're going to add them to the package.json. So let's start with the API in the package.json. Let's add it as
1:16:371 hour, 16 minutes, 37 secondsa dependency just as we have the super vote types here. We're going to have at super vote for/ constants which is going
1:16:461 hour, 16 minutes, 46 secondsto point to our workspace. So this is for the API and we're going to repeat the same thing for the web application.
1:16:541 hour, 16 minutes, 54 secondsSo right here in the package.json under dependencies just below the types we're going to have the superv constant
1:17:021 hour, 17 minutes, 2 secondsregistered here as well. You know the next thing that follows we need to run pmpm install so that pmpp will be able to link this new package with you know
1:17:111 hour, 17 minutes, 11 secondsthe different applications that we have I'm currently the API folder so I will cd out of the apps the API folder and outside the apps and right here you need
1:17:201 hour, 17 minutes, 20 secondsto be inside the super vault folder then you run pnpm install as you can see it's now scoping all five workspace projects
1:17:271 hour, 17 minutes, 27 secondsand that's because we have two more that we created or one more that we created so now that this is done we also need to update our types. So, we're going to
1:17:361 hour, 17 minutes, 36 secondshave the JWT payload. So, in the packages, the types and in the index.ts file here, let's export the new interface.
1:17:461 hour, 17 minutes, 46 secondsSo, somewhere over here, we're going to be exporting this interface, the JWT payload, which is going to have the sub
1:17:531 hour, 17 minutes, 53 secondsof type string and the email of type string. This sub stands for subject is a standard for JWT payload. And this is going to be the user ID.
1:18:041 hour, 18 minutes, 4 secondsOkay, so the next step is for us to install the different backend packages that we need. So we need to cd into the apps and into the API folder. And we can start by saying pnpm add at nestjs/jwt.
1:18:181 hour, 18 minutes, 18 secondsWe're also going to install bcrypt cookie passer and slogify. Nestjwt is going to help to sign and verify the
1:18:271 hour, 18 minutes, 27 secondsJWT. The bit package is going to help for password hashing. Cookie passer is going to help to pass cookies from incoming requests and sluggify just
1:18:361 hour, 18 minutes, 36 secondsgoing to help us to convert the names to URL friendly slug or URL save slugs. So let's give this a moment for the
1:18:431 hour, 18 minutes, 43 secondsinstallation to complete and once it is done we're going to register the cookie passer. Okay, so it failed for me the
1:18:501 hour, 18 minutes, 50 secondsannoying error. I'm going to say pmppm approved build so I can approve the big crypt package. I would say yes. And once the installation is completed, we're
1:18:591 hour, 18 minutes, 59 secondsalso going to install the types as a dev dependency. So let's say pnpm add-
1:19:061 hour, 19 minutes, 6 secondstypes for/brypt and also at types/cookie passer. So let's install the types and
1:19:131 hour, 19 minutes, 13 secondsonce the installation is done, then we can proceed to registering the cookie passer in the main.ts file. So we're
1:19:211 hour, 19 minutes, 21 secondsgoing to give this a moment for for it to complete. And now that this is done, we can then um go over to the main.ts.
1:19:301 hour, 19 minutes, 30 secondsSo back in the API and in the source, the main.ts file over here, just maybe
1:19:371 hour, 19 minutes, 37 secondssomewhere after the app definition on line six. We can then say app dot use and we're going to pass cookie passer
1:19:461 hour, 19 minutes, 46 secondswhich we need to import. So let's import cookie passer from the top. We're going to import star. to import everything as cookie passer from cookie passer.
1:19:581 hour, 19 minutes, 58 secondsSo we have this error here. Let's inspect the error. Let's see what's wrong. And instead this expression is not callable. It's actually a straightforward fix. So we just need to
1:20:071 hour, 20 minutes, 7 secondsimport default. Okay. So I'm going to remove everything. So we import cookie passa from cookie passa. Also make sure you have this credentials over here.
1:20:151 hour, 20 minutes, 15 secondsIt's going to be required to allow the cookies to be sent cross origin. Okay.
1:20:201 hour, 20 minutes, 20 secondsSo now we have our basic setup done for authentication. The next step is for us to register some environment variables.
1:20:281 hour, 20 minutes, 28 secondsLet's go on and define some values in the environment variable right here in the API folder the env file. We're going
1:20:361 hour, 20 minutes, 36 secondsto have let's start with the JWT um variables. Okay. So over here we're going to have this comment JWT and the
1:20:441 hour, 20 minutes, 44 secondsJWT access secret is going to be you know very long assess secret. It's more secure and the JWT refresh secret is
1:20:531 hour, 20 minutes, 53 secondsalso the same. You want to use something much more secure. Then we're going to have the JWT access_expires. It's going to expire in 15 minutes. And then it's
1:21:021 hour, 21 minutes, 2 secondsgoing the refresh is also going to expire in 7 days. Now for Google we're going to have our Google client ID which is going to be our Google client ID. And
1:21:101 hour, 21 minutes, 10 secondssame for Google client secret. And then we're also going to have the Google callback URL which is our localhost 3000/ API/google/callback.
1:21:211 hour, 21 minutes, 21 secondsNow for GitHub, we're also going to have the client ID and then we're going to have the client secret and we're also
1:21:281 hour, 21 minutes, 28 secondsgoing to have the callback URL. So the GitHub_allback URL which is equals to
1:21:361 hour, 21 minutes, 36 seconds/ API/ GHub/callback. So just keep an you know keep this in mind for the callback URL
1:21:431 hour, 21 minutes, 43 secondsfor both Google and GitHub. I'm going to get rid of this credentials here. We do not need it and no worries. We're going
1:21:501 hour, 21 minutes, 50 secondsto get this um later down the line. Now we have this defined. We're going to create a DTO. So in the source folder we're going to create an O folder and here we're going to create a DTO folder.
1:22:021 hour, 22 minutes, 2 secondsDTO and then we're going to create the register.dto.ts.
1:22:081 hour, 22 minutes, 8 secondsNow before we get started, I would like us to you know take a look at the package definition in the types here for
1:22:141 hour, 22 minutes, 14 secondsthe index.ts. So remember we have the register impute and the login impute.
1:22:191 hour, 22 minutes, 19 secondsNow these are going to come in handy because right here in the DTO we're going to configure the different fields here for our validation. So let's start
1:22:291 hour, 22 minutes, 29 secondswith the imports. We're going to be importing is email. So let's import is email is string and also min length that
1:22:371 hour, 22 minutes, 37 secondswould come from class validator. Now we're going to import the register type.
1:22:421 hour, 22 minutes, 42 secondsSo the import type register imputes which will come from the super vault for/types.
1:22:491 hour, 22 minutes, 49 secondsAnd here we can export the class register dto which is going to be implementing our register impute. Then we have his email for the email which is
1:22:581 hour, 22 minutes, 58 secondsof type string and for the password is also a string and a minimum length of it. So we have the password like this
1:23:051 hour, 23 minutes, 5 secondsand then for the name is also having this a string and the name is going to be a string like this. Now if you have these errors over here it's quite
1:23:141 hour, 23 minutes, 14 secondsstraightforward. You just need to add the exclamation mark here for the email for the password and for the name. Now the same is going to apply for the login
1:23:221 hour, 23 minutes, 22 secondsdto. So here we're going to create another file for the login dto.ts.
1:23:291 hour, 23 minutes, 29 secondsWe're going to import is email and also is string from class validator.
1:23:351 hour, 23 minutes, 35 secondsThen we're going to import the type the login impute and this is going to come from our super vote for/types and then we have the class definition.
1:23:451 hour, 23 minutes, 45 secondsSo export class login DTO is going to be implementing our login input and we have his u is email for the email and we also
1:23:541 hour, 23 minutes, 54 secondshave is string for the password. Okay, so this is pretty much our basic setup here. Let's add the exclamation mark for
1:24:021 hour, 24 minutes, 2 secondsthe email as well as for the password to avoid this error over here. And our next step is where things, you know, gets pretty much interesting. We're going to
1:24:111 hour, 24 minutes, 11 secondsbe creating our authentication service, the controller, the module, the creators. So, I'm super excited for what's to come. I'll see you in the upcoming videos.
1:24:211 hour, 24 minutes, 21 secondsTo create our authentication service, I'm going to close all these tabs that we do have open. And right inside the O
1:24:281 hour, 24 minutes, 28 secondsfolder here, we need to create the Oservice.ts file. So, we need to make sure this is not inside the DTO. This should be in
1:24:361 hour, 24 minutes, 36 secondsthe root of the O here. And we start with the import. We're going to import complete exception. Also bring in injectable unauthorized exception from
1:24:451 hour, 24 minutes, 45 secondsat nestjs/ common. And next we're going to import the JWT service from at nestjs/jwt.
1:24:541 hour, 24 minutes, 54 secondsWe're also going to import the config service from at nestjs/config.
1:24:591 hour, 24 minutes, 59 secondsAnd then we import response from express. I want to import everything. So import star as brypt from brypt. We're
1:25:081 hour, 25 minutes, 8 secondsalso going to import random bytes from crypto and we import slogify from slogify. We're also going to import
1:25:161 hour, 25 minutes, 16 secondsequals from dre o. And then let's bring in the cookie keys which is going to come from our own superv package for/
1:25:241 hour, 25 minutes, 24 secondsconstants. We also have the drezo service which is going to come in from the db drizzle service. And then we also
1:25:321 hour, 25 minutes, 32 secondshave our users, organizations and organization member which will come from our DB schema. And we have our register
1:25:401 hour, 25 minutes, 40 secondsDTO which is going to come from the DTO folder and the register DTO file. And the login DTO is going to come in from
1:25:481 hour, 25 minutes, 48 secondsthe DTO login. DTO file. Now we have these imports. Let's have the injectable
1:25:551 hour, 25 minutes, 55 secondshere. And then we can export the class O service. And we have the constructor so that we can initialize. So we have the private drizzle which is going to be of
1:26:041 hour, 26 minutes, 4 secondstype drizzle service. We're also going to have private JWT service which is of type JWT service. And then we have
1:26:111 hour, 26 minutes, 11 secondsprivate config service which is going to be of type config service. So this is our constructor with the basic initialization.
1:26:201 hour, 26 minutes, 20 secondsI'm going to drop a comment here for cookie helper. So let's have the different methods here. The first method we're going to have is to set the token
1:26:281 hour, 26 minutes, 28 secondscookies. So this set token cookies is going to take in the response and then the token. Token is going to be of this access token type of string and refresh
1:26:371 hour, 26 minutes, 37 secondstoken type of string like this. And we want to check if we're in production. So we say if con is production is going to
1:26:441 hour, 26 minutes, 44 secondsbe this.config service get the node env.cookie
1:26:521 hour, 26 minutes, 52 secondsfrom the cookie keys access token. We're going to pass the tokens assess token and we're going to pass the configuration like HTTP only is going to
1:26:591 hour, 26 minutes, 59 secondsbe true. Secure is going to be production or I'm going to explain. We also have same site of lax. The maximum age is going to be 15 in milliseconds.
1:27:091 hour, 27 minutes, 9 secondsThen we're also going to have the response cookie which is going to be the cookie keys.
1:27:151 hour, 27 minutes, 15 secondsAnd then we have the tokens refresh token here. HTTP only true. The secure is going to be is production. on the
1:27:221 hour, 27 minutes, 22 secondssame site is going to be lax and the maximum age is just going to be different because it's going to be 7 days in milliseconds. Then we have
1:27:301 hour, 27 minutes, 30 secondsanother helper to clear the token. So it's just going to take in the response and then it's going to say response.
1:27:371 hour, 27 minutes, 37 secondsCookie with this name. So the access token name and then response. Cookie with the refresh token name. Okay. So
1:27:471 hour, 27 minutes, 47 secondslet's walk through basic explanation what's going on here. We have the HTTP only um setting here which is means JavaScript would not be able to read
1:27:551 hour, 27 minutes, 55 secondsthis cookie. We also have secure which means HTTPS only in production. Same site lacks is going to prevent from CSRF
1:28:031 hour, 28 minutes, 3 secondscuts cross size reverse surgery protection and the maximum age is 15 minutes but in milliseconds and that's
1:28:111 hour, 28 minutes, 11 secondsthe same for the refresh token that we have over here. Okay. So these are the token helpers. The next is going to be
1:28:181 hour, 28 minutes, 18 secondsthe slug helper. So I'm going to also drop the comment here which is going to be slugg helper like this. And now we're going to have this
1:28:271 hour, 28 minutes, 27 secondsprivate method definition. So private generate organization slug. It's going to take in the username which return a
1:28:341 hour, 28 minutes, 34 secondsstring. So let's have the base. The base is going to be based on sluggify from the name/org and we're going to set lower to true and strict to true. And
1:28:441 hour, 28 minutes, 44 secondsthe suffix is going to be random by three to string hex like this. And then we're going to return the base with the
1:28:511 hour, 28 minutes, 51 secondssuffix. So we're going to concatenate them here cuz this is going to help us to generate the organization slug. And
1:28:581 hour, 28 minutes, 58 secondsnow we're going to have the JWT sign in here like this.
1:29:031 hour, 29 minutes, 3 secondsAnd then let's have the private sign token method. So here we're going to say private sign tokens. It's going to take
1:29:101 hour, 29 minutes, 10 secondsthe user ID and the email. and let's construct the payload. So the payload is going to be this object. So remember the
1:29:171 hour, 29 minutes, 17 secondssub, the user ID and the email. Then we have the access token. We're going to use this JWT service to assign the
1:29:251 hour, 29 minutes, 25 secondspayload. And the payload here we're going to have the secret. So it's going to use the secret which we're going to get from our JWT access secret and it's
1:29:321 hour, 29 minutes, 32 secondsgoing to expire in our JWT access expires in which we get via the config service. Now we also do the same for the
1:29:401 hour, 29 minutes, 40 secondsrefresh token. to con refresh token is going to be equals to this.jwt service sign this payload based on this secret.
1:29:491 hour, 29 minutes, 49 secondsSo this doconfig service get the JWT refresh secret and the expires in is going to be this doconfig service get
1:29:581 hour, 29 minutes, 58 secondsthe JWT expires in and then we're just going to return the function the object which is going to be the access token
1:30:061 hour, 30 minutes, 6 secondsand the refresh token. So this is the object we're going to be returning here.
1:30:101 hour, 30 minutes, 10 secondsSo it's going to be signed with these keys, you know. So we're going to return the object with the JWT. Okay. So up
1:30:171 hour, 30 minutes, 17 secondsnext we have the um email and password authentication. We also have the GitHub, the Google authentication. We are going
1:30:251 hour, 30 minutes, 25 secondsto be creating all these next for the email and password method. Let's
1:30:331 hour, 30 minutes, 33 secondsstart with the register method. Okay. So we're going to have the async register method which is going to take in the DTO
1:30:401 hour, 30 minutes, 40 secondsof type register DTO and first want to check if we have an existing user. So we say con existing is going to be awaiting
1:30:491 hour, 30 minutes, 49 secondsthis dre drizzle db. I want to select from users where equals the user.mmail
1:30:561 hour, 30 minutes, 56 secondsmatches dtomail. So the email that comes from the front end and we limit it to one. Now, if this has a length cuz it's
1:31:041 hour, 31 minutes, 4 secondsan array, that means we have a user. So, we're going to throw a conflict exception that says email already in
1:31:111 hour, 31 minutes, 11 secondsuse. Then, we're going to have the password hash. The password hash is going to be equals to await brypt.hash
1:31:181 hour, 31 minutes, 18 secondsand we're going to pass in the d.pass and assault rounds of 12. So then we're going to say current user is going to be
1:31:251 hour, 31 minutes, 25 secondsawaiting this. Drazzo db. I want to insert users and the values is going to be the email from the DTO.mmail and the
1:31:331 hour, 31 minutes, 33 secondsname is going to be the DTO.name and then we pass the password hash and we have dot return in here. Now we're going
1:31:411 hour, 31 minutes, 41 secondsto auto create a personal organization for this user. So we say con or is going to be equal to this. Drazo db I want to
1:31:491 hour, 31 minutes, 49 secondsinsert into organizations table these values of the name. The name now is going to be the DTO.name name and then
1:31:561 hour, 31 minutes, 56 secondswe have organization like this and the slog is going to be this generate organization slog and we pass in the
1:32:021 hour, 32 minutes, 2 secondsusername. They're also going to chain return in here. And finally, we await this dot drizzle db insight organization
1:32:121 hour, 32 minutes, 12 secondsmembers. And the value is going to be the organization ID. The organization id. The user ID is also going to be the
1:32:191 hour, 32 minutes, 19 secondsuser ID. And the role here is going to be equals to admin. And we just want to return this dot sign tokens to the front
1:32:261 hour, 32 minutes, 26 secondsend. We will pass in the user ID as a subject and the user email. Now before we proceed let's explain what's going on
1:32:331 hour, 32 minutes, 33 secondshere. So the first thing here we are checking if we already have an existing user in our database and if we do then you cannot go on to register with throw
1:32:411 hour, 32 minutes, 41 secondsan error. Then we have the password hash because you never want to store plain password in database. We create the user with the details that comes in from the
1:32:501 hour, 32 minutes, 50 secondsfront end is already validated against our DTO. Then we create an organization for this user.
1:32:581 hour, 32 minutes, 58 secondsWe create an organization based on the username and this log here is going to be based off also the username and finally we create the organization
1:33:071 hour, 33 minutes, 7 secondsmembers with the role of admin. So it's important there the role of admin and we return the sign tokens to the client.
1:33:161 hour, 33 minutes, 16 secondsNext is going to be for login and we have the async login is going to have the DTO of type login DTO and current
1:33:251 hour, 33 minutes, 25 secondsuser is going to be equals to await this drazzo db and want to select and we say
1:33:311 hour, 33 minutes, 31 secondsdot from users table where equals and that's the users email is going to match
1:33:381 hour, 33 minutes, 38 secondsthat dto email I want to limit this to one now we're going to check if we do not find a user or we do not have a user
1:33:451 hour, 33 minutes, 45 secondspassword hash H we're going to throw this new unauthorized exception invalid credential. So we're just vague here and
1:33:521 hour, 33 minutes, 52 secondsit's on is deliberate. Okay. So we're not going to tell the user what's wrong.
1:33:561 hour, 33 minutes, 56 secondsAnd then the same for the password. We have the password match. It's going to be equals to await this await.compare.
1:34:031 hour, 34 minutes, 3 secondsWe pass the password and the user password. Now if this is not a match that means we have a wrong password.
1:34:091 hour, 34 minutes, 9 secondsWe're also going to throw a new unauthorized exception where we still say invalid credentials. So we're not going to say hey your password is wrong.
1:34:161 hour, 34 minutes, 16 secondsWe just throw this response back. If everything is okay then we we sign the token. We call this sign tokens with the
1:34:231 hour, 34 minutes, 23 secondsuser ID as the subject and the user email.
1:34:291 hour, 34 minutes, 29 secondsSo the next we're going to have is our refresh method. So async refresh tokens is going to take in the refresh token
1:34:361 hour, 34 minutes, 36 secondswhich is of type string. And we have this try catch block. So in the try block we're going to construct the payload is going to be equal to this JWT
1:34:451 hour, 34 minutes, 45 secondsservice want to verify and then we're going to get the pass the refresh token here and the secret here is going to be
1:34:521 hour, 34 minutes, 52 secondsthis dotconfig service get the JWT refresh secret okay so we have the payload next we say course users is
1:35:011 hour, 35 minutes, 1 secondgoing to be what await this doz I want to select from the users table
1:35:081 hour, 35 minutes, 8 secondswhere so do here equals the user do id matches the payload sub. So remember the sub is the ID and we limit this to one.
1:35:181 hour, 35 minutes, 18 secondsIf we can find the user, we're going to throw a new unauthorized exception. But if everything is fine, then we want to sign a new token. So we return this sign
1:35:261 hour, 35 minutes, 26 secondstoken and we pass the user ID and the user email. Now in the catch block, we're just going to throw a new unauthorized exception that this is an
1:35:351 hour, 35 minutes, 35 secondsinvalid refresh token. So maybe the JWT service is unable to sign or to verify
1:35:421 hour, 35 minutes, 42 secondsthat. So we have this error here and it's just because here we need to pass in our JWT payload type from our super volt types and the error is gone. Okay.
1:35:531 hour, 35 minutes, 53 secondsSo this is the different helpers we need. Now we're going to create another helper for our handle or O. So we're
1:36:011 hour, 36 minutes, 1 secondgoing to have this oorthth shared helpers which we're going to use for both the Google authentication as well as the GitHub authentication.
1:36:111 hour, 36 minutes, 11 secondsNow whenever a user authenticates via o so either Google or GitHub we want to know if it's a first time user in that case we're going to create a user create
1:36:201 hour, 36 minutes, 20 secondsorganization and then sign the token but if it's a returning user then we just sign the token. Okay, so let's have the
1:36:281 hour, 36 minutes, 28 secondshandle or of user async function handle or off user. It's going to take in the user profile and this of this type. The
1:36:361 hour, 36 minutes, 36 secondsemail string, the name string and the avatar URL could be a string or could be null. So let's have let user because we
1:36:431 hour, 36 minutes, 43 secondsare not sure if we have a user for the first time. It's going to be called with this. drazo db and we're going to select
1:36:501 hour, 36 minutes, 50 secondsfrom the users table where equals the users do email is going to be equal to the profile email that we are receiving
1:36:591 hour, 36 minutes, 59 secondsand we have a limit of one. Now if we do not have a user then we're going to create a new user. So cons new user is
1:37:061 hour, 37 minutes, 6 secondsgoing to be equals to await this. drazo db. We want to insert into the users table the values is going to be this
1:37:141 hour, 37 minutes, 14 secondsobject where we have the email which is going to be the profile email. The name is also going to be the profile name and
1:37:221 hour, 37 minutes, 22 secondsthe avatar URL is going to be the profile.vata URL. Now here we do not have a password hash because o users don't have a
1:37:301 hour, 37 minutes, 30 secondspassword. Then we're also going to chain return in here. Then we're going to assign this new user to the user we defined up above. And we're going to
1:37:391 hour, 37 minutes, 39 secondscreate the organization by awaiting this. Drizzle db insert into organizations the value of the name. So
1:37:471 hour, 37 minutes, 47 secondsthis going to be the profile dot name and then we have the organization like this. And the slug is going to be this
1:37:551 hour, 37 minutes, 55 secondsdot generate organization slog and we pass the profile name and then we have dot returning here. Okay, let's also
1:38:041 hour, 38 minutes, 4 secondscreate the organization members. We're going to await this drezo db insert into organization members and the values is
1:38:111 hour, 38 minutes, 11 secondsgoing to be the object where we have the organization ID also the user id is going to be the user id and the role here very important is going to be the
1:38:201 hour, 38 minutes, 20 secondsadmin then we're going to return this dot sign tokens and then we have the user ID and the email so this is you
1:38:281 hour, 38 minutes, 28 secondsknow for all the case whether you have a user or not now let's have a get google URL is going to be equal to con params.
1:38:371 hour, 38 minutes, 37 secondsWe're going to have this new set params construct here. The client ID is going to come from the config service get. So we're going to get the Google client ID.
1:38:461 hour, 38 minutes, 46 secondsSo remember we had that in that env. And the redirect URL is also going to be this doconfig service get the Google
1:38:551 hour, 38 minutes, 55 secondscallback URL that we also set in the env. The response type is going to be equals to code. The scope is going to be
1:39:031 hour, 39 minutes, 3 secondsthe open ID. the email and the profile of the user and the access type is going to be equals to offline.
1:39:111 hour, 39 minutes, 11 secondsThen we're going to return this URL https col//acounts.google.com/o/orth2/v2/
1:39:221 hour, 39 minutes, 22 secondsand the params is going to be the params.2 string here. Now the handle Google call back function is then going to take in the code of type string and
1:39:311 hour, 39 minutes, 31 secondswe're going to have the token response is going to be called await fetch where we fetch the Google APIs for/ token. The
1:39:401 hour, 39 minutes, 40 secondsmethod is going to be post and the headers here are going to have the content type and the value is going to be this application x www form URL
1:39:481 hour, 39 minutes, 48 secondsencoded. No worries I'm going to explain that. And then we have the body which is this new search params. So we're going
1:39:551 hour, 39 minutes, 55 secondsto have the code also going to have the client ID which is going to come from our config service.
1:40:021 hour, 40 minutes, 2 secondsI want to get with the name of Google client ID and then we have the client secret which is also going to come from
1:40:101 hour, 40 minutes, 10 secondsthis doconfig service.get where we get a string with the Google client secret and then we have the
1:40:181 hour, 40 minutes, 18 secondsredirect URL or URI and this is going to come from the config service get. So we
1:40:241 hour, 40 minutes, 24 secondsget the Google comeback call back URL and the grant type is going to be the authorization code. So I knew this from
1:40:311 hour, 40 minutes, 31 secondsresearch. Okay. Then let's have the conf the token data here. So the token data is going to await the token response we
1:40:411 hour, 40 minutes, 41 secondsget from above.json as this object. So this is what we expect. We expect to get the access token. Then we have the
1:40:481 hour, 40 minutes, 48 secondsprofile response where we call fetch and we're going to make a request to Google APIs/v3/
1:40:551 hour, 40 minutes, 55 secondsuser info and we're going to pass the header so that we can then have the access token here. So the beer token
1:41:021 hour, 41 minutes, 2 secondsdata access token then we're going to get the profile from this profile response. So profile is going to await the profile response.json
1:41:111 hour, 41 minutes, 11 secondsJSON as this object to the email the name and the picture. So the name is a string and the picture is going to be of
1:41:191 hour, 41 minutes, 19 secondstype string or no. And then finally we can just return this handle or user and
1:41:261 hour, 41 minutes, 26 secondsthen we pass in the email the name and the avatar URL. So this is going to take care of if it's a first time user or if
1:41:331 hour, 41 minutes, 33 secondsit's a returning user and then it's going to return the signed token. Okay.
1:41:391 hour, 41 minutes, 39 secondsSo let's have the Google oath. We're going to start again by getting the GitHub URL. So the GitHub O. Let's start
1:41:461 hour, 41 minutes, 46 secondswith the params. So params is going to be equal to new set params where we have the client ID which is going to come from this config service.get where we're
1:41:561 hour, 41 minutes, 56 secondsgoing to get the GitHub client ID and the redirect URI is going to be this config service.get where we get the
1:42:051 hour, 42 minutes, 5 secondsGitHub call back URL. And then we have the scope. the scope. We have the scope defined like read column user like this
1:42:131 hour, 42 minutes, 13 secondsand user column email. Then we're going to return the URL https github.com/lo/orth/
1:42:211 hour, 42 minutes, 21 secondsauthorize and we're going to pass the params object to string like this. Then we have the async handle github call
1:42:291 hour, 42 minutes, 29 secondsback. It's going to take in the code and we want to exchange the code for access token. So we say con token response.
1:42:351 hour, 42 minutes, 35 secondsIt's going to be called to await fetch and the request is going to go over to slash oath/ assets token and this object
1:42:431 hour, 42 minutes, 43 secondshere with a method of post. We're also going to have the headers which is going to have the content type application JSON. We're also going to have accept application JSON like this.
1:42:541 hour, 42 minutes, 54 secondsThen we have the body. In the body here, we're going to call JSON stringify where we have the client ID which is going to
1:43:011 hour, 43 minutes, 1 secondcome from the config service get the GitHub client ID. We also have the client secret which is going to also
1:43:101 hour, 43 minutes, 10 secondscome from this doconfig service get where we get the GitHub client secret and then we pass in the code over here.
1:43:201 hour, 43 minutes, 20 secondsthe code that this function is going to receive and then the redirect URI is also going to come from this config service.get GitHub call back URL.
1:43:321 hour, 43 minutes, 32 secondsSo just as the Google o we're going to have the token data it's going to be called to await the token response JSON
1:43:401 hour, 43 minutes, 40 secondsand we cast it to this object where we have the access token of type string and then we can fetch the user profile.
1:43:481 hour, 43 minutes, 48 secondsSo the profile response is going to be called to our fetch where we send the request to GitHub user and we pass the
1:43:551 hour, 43 minutes, 55 secondsheaders such as the authorization. Now we have the access token we can attach it to the beer token data access token
1:44:031 hour, 44 minutes, 3 secondsand the accept here is going to be looking like this but it's going to be this application/vnd.github
1:44:101 hour, 44 minutes, 10 secondsplus json. Okay. So uh we have the profile now. So the con profile is going to be equal to await the profile
1:44:171 hour, 44 minutes, 17 secondsresponse.json as this object with the email could be a string or null. Um also the name the
1:44:241 hour, 44 minutes, 24 secondsname could be um string or null. The login string and the avatar URL string or null. Now the case where the email
1:44:321 hour, 44 minutes, 32 secondscould be null is where the GitHub hides the user email if it's set to private.
1:44:371 hour, 44 minutes, 37 secondsSo we say let's email equals to profile email and if we do not have an email then we're going to try to fetch the
1:44:441 hour, 44 minutes, 44 secondsuser email by sending a request to github/ user/ emails and then we pass
1:44:511 hour, 44 minutes, 51 secondsthe headers so the beer token so it knows the user so the authorization key and the value is going to be the beer
1:44:581 hour, 44 minutes, 58 secondstoken data dot access token and we're also going to accept the application for/vnd.github
1:45:061 hour, 45 minutes, 6 secondsGitHub plus JSON and we're going to check if we have the user. So con emails is going to be equal to await the email
1:45:141 hour, 45 minutes, 14 secondsresponse.json as this object like this primary boolean email string and verified boolean is
1:45:211 hour, 45 minutes, 21 secondsgoing to be a list. Okay. So I'll collapse this and then email here is going to be equals to the emails do find the email I want to return where it's
1:45:301 hour, 45 minutes, 30 secondsprimary and where the email is verified email otherwise null. Finally, we can then call our this.andle or of user
1:45:391 hour, 45 minutes, 39 secondswhere we pass in the email and we're also going to pass in the username which is the profile.name or the profile.lo
1:45:471 hour, 45 minutes, 47 secondsand the avatar URL is going to be the profile. Avatar URL otherwise it's going to be null.
1:45:561 hour, 45 minutes, 56 secondsSo we have written a bunch of code.
1:45:571 hour, 45 minutes, 57 secondsLet's have a just explanation of what we have done. We are returning the handle or user which is the signed token. And
1:46:051 hour, 46 minutes, 5 secondsover here we are fetching the email because GitHub can hide the user email if it's set to private. So we're going to make a request to / user/ email which
1:46:141 hour, 46 minutes, 14 secondsis a separate request just to get the user email if we do not have the user email at this point. Okay. So that's why we send the request here. And we have
1:46:221 hour, 46 minutes, 22 secondsthe token the access token that we attach to the headers. Now this access token that we attach to the headers remember over here we are fetching the
1:46:311 hour, 46 minutes, 31 secondsprofile here and this is going to give us the user's profile but the actual token data comes from this point. So
1:46:391 hour, 46 minutes, 39 secondsthis here where we exchange the code for the access token. So the code is going to come from this handle GitHub callback. We're going to see how we can
1:46:471 hour, 46 minutes, 47 secondscall it and get the code from here. So no worries about that. And um here once we have the access token, we can use
1:46:551 hour, 46 minutes, 55 secondsthat to then fetch the user profile and also make request for the emails.
1:47:001 hour, 47 minutesOkay. So here we have the get GitHub authentication URL which constructs the URL. And pretty much the same for handle
1:47:091 hour, 47 minutes, 9 secondsGoogle callback. So over here we are also doing the same exchanging the code for the access token. We pass in the
1:47:171 hour, 47 minutes, 17 secondsbody which is also going to contain the code. we have this strange X form URL encoded which is going to our Google
1:47:261 hour, 47 minutes, 26 secondstoken endpoint is only going to accept the form encoded bodies and not JSON. So that's why we do not have application JSON over there and at this point we
1:47:351 hour, 47 minutes, 35 secondsthen get the token data and with that token data we can use it to fetch you know details about the user. So this
1:47:421 hour, 47 minutes, 42 secondserror here is just a false alarm maximum call side exceeded. I'm going to refresh my VS code and now we see the error is
1:47:491 hour, 47 minutes, 49 secondsgone. So we've written out bunch of code. Advise you go through the code before we continue over to the next phase which is the authentication controller.
1:48:011 hour, 48 minutes, 1 secondBefore we go on to create the authentication controller, we first need to create the
1:48:081 hour, 48 minutes, 8 secondsguard and also a current user decorator because we're going to make use of those right inside the decorator. So let's
1:48:161 hour, 48 minutes, 16 secondscome over here and still inside the O, we're going to create this JWT- O.gard.ts.
1:48:251 hour, 48 minutes, 25 secondsSo this is the naming convention here. Okay. So we start with the imports. We're going to import can activate.
1:48:311 hour, 48 minutes, 31 secondsWe're also going to bring in execution context injectable unauthorized exception. We're all coming from at nestjs4/mon.
1:48:421 hour, 48 minutes, 42 secondsWe're also going to need our JWT service which is going to come from at nest.js/jwt.
1:48:491 hour, 48 minutes, 49 secondsThen we have our config service which is going to come from at nest.js/config.
1:48:541 hour, 48 minutes, 54 secondsWe have the request object which is going to come from express. And then we also have our cookie keys which is going
1:49:021 hour, 49 minutes, 2 secondsto come from our own package. So at supervolt/ constants and then we're going to import our type jwt payload
1:49:101 hour, 49 minutes, 10 secondswhich is going to come from at supervolt/types.
1:49:141 hour, 49 minutes, 14 secondsLet's have the injectable decorator. And then we have the class definition export class JWT authentication guard which is going to implement this can activate.
1:49:241 hour, 49 minutes, 24 secondsAnd in the constructor, we're going to have the JWT service which is of type JWT service. And we're also going to have the config service which is of type
1:49:331 hour, 49 minutes, 33 secondsconfig service. Now we're going to implement this can activate method over here which is going to take the context of type execution context and we're
1:49:421 hour, 49 minutes, 42 secondsgoing to return a boolean. So first let's get the request. We say con request is going to be equal to context switch to http.get request and we pass
1:49:511 hour, 49 minutes, 51 secondsin the request type here. And then we have token is going to be equals to request docies and we get the cookie keys do access token. So it could be a
1:50:001 hour, 50 minutesstring or undefined. So you know want to read it from the HTTP only cookie. Then if we do not have a token that means
1:50:071 hour, 50 minutes, 7 secondsthis user is not authorized to visit this specific route or resource in the controller. So we're going to throw this
1:50:151 hour, 50 minutes, 15 secondserror. But if the token is available then we want to have the payload which is going to come from the JWT service doverify. So want to verify this token.
1:50:241 hour, 50 minutes, 24 secondsWe're going to pass a token and we want we have our own secret that we use to sign this token. So that's going to come from the config service.get and that's
1:50:331 hour, 50 minutes, 33 secondsour JWT access secret. Then if everything is okay, we're going to inject the user right into the request.
1:50:401 hour, 50 minutes, 40 secondsSo the request user is going to be equals to payload and we return true.
1:50:441 hour, 50 minutes, 44 secondsNow in case of any error, we're going to throw this unauthorized exception that hey, this is an invalid or expired
1:50:511 hour, 50 minutes, 51 secondstoken. So let's quickly explain, let's walk through what we have here before we continue to to the decorator. First, we
1:51:001 hour, 51 minutesget the request and from the request, we try to read the access token. So we only want to read it from the HTTP token, not from the authorization headers. If we do
1:51:091 hour, 51 minutes, 9 secondsnot find the token, that means you are not authenticated. this is not a public route or a public resource. Then if we have the token, we try to make use of
1:51:171 hour, 51 minutes, 17 secondsour JWT service to verify if this token is actually our token. And once we verify we have the token that the
1:51:241 hour, 51 minutes, 24 secondspayload is going to be injected in the request user. So we know that's going to be the object with the sub and the user email. So just over here like this.
1:51:351 hour, 51 minutes, 35 secondsOkay. So this is our guide. Now we're going to create the decorator. So here we're going to create a new file which
1:51:421 hour, 51 minutes, 42 secondsis going to be our current user decorator. So the idea is the guard is going to run before the decorator inject
1:51:491 hour, 51 minutes, 49 secondsthe user. Now the current user decorator is going to retrieve it. Let's import create param decorator and also
1:51:561 hour, 51 minutes, 56 secondsexecution context from at nest js4/ and then we're going to import request. Request is going to come from express.
1:52:051 hour, 52 minutes, 5 secondsAnd then we're going to also import the type JWT payload which is going to come from at superv for/types.
1:52:131 hour, 52 minutes, 13 secondsSo we export the conurren user is going to be equal to create param decorator.
1:52:181 hour, 52 minutes, 18 secondsWe have the function here where we have the data of type unknown and the context is going to be of type execution context. Then we'll return the JWT
1:52:271 hour, 52 minutes, 27 secondspayload. So in here we're going to get the request from the context. So context switch to HTTP.get request. We pass in
1:52:351 hour, 52 minutes, 35 secondsthe request type here and then we're going to return the request user as the JWT payload. So this is going to run and
1:52:431 hour, 52 minutes, 43 secondsretrieve the user that we are setting right inside our JWT guard. Okay, so that's the connection here for us to get
1:52:501 hour, 52 minutes, 50 secondsthe request and we know that this request user is going to work because in the JWT authentication guard we have
1:52:581 hour, 52 minutes, 58 secondsthis here. So the guard is going to run before that um controller method is going to be called and it's going to inject the user right inside the
1:53:071 hour, 53 minutes, 7 secondsrequest. Okay. So now we have all of these. We are now ready to create our authentication controller.
1:53:151 hour, 53 minutes, 15 secondsWe are going to define our authentication controller. Okay. So right here in the O
1:53:221 hour, 53 minutes, 22 secondsfolder let's create the O.Controller.ts file.
1:53:291 hour, 53 minutes, 29 secondsWe're going to be importing body also controller get um HTTP code post the
1:53:371 hour, 53 minutes, 37 secondsquery the redirect request response and use guards from nextjs common. Then
1:53:451 hour, 53 minutes, 45 secondswe're also going to import request and response from express and the config
1:53:531 hour, 53 minutes, 53 secondsservice is going to come from nextjs for/config.
1:53:581 hour, 53 minutes, 58 secondsThen we also need the cookie um keys. Cookie keys is going to come in from superv/constance.
1:54:061 hour, 54 minutes, 6 secondsWe're also going to be importing the type of our JWT payload from the superv types. And then we need the authentication service which is going to
1:54:151 hour, 54 minutes, 15 secondsgo one level up and into the O service file. Then we're going to import the register DTO from our DTO login um
1:54:241 hour, 54 minutes, 24 secondsregister and same for our login. So the login DTO is going to come from the DTO login and our JWT authentication guard
1:54:341 hour, 54 minutes, 34 secondsis going to come from the guards the JWT authentication guard and then the current user is going to come from the decorators current user.
1:54:461 hour, 54 minutes, 46 secondsSo we can go on to export the class after having the controller decorator O.
1:54:511 hour, 54 minutes, 51 secondsjust means the request coming into our / API/ is going to come straight up into this class we are going to define here. Okay.
1:55:011 hour, 55 minutes, 1 secondSo let's export the class the or controller and here we're going to have the constructor. We're going to initiate instantiate the authentication service.
1:55:101 hour, 55 minutes, 10 secondsIt's going to be of type of service and the config service is going to be of type config service. So this is our
1:55:181 hour, 55 minutes, 18 secondsconstructor. We're going to have the different method starting with the post register method. So /register
1:55:261 hour, 55 minutes, 26 secondsis going to be handled by this method here. So we have the post decorator and the async register is going to have the
1:55:331 hour, 55 minutes, 33 secondsDTO which we're going to extract making of the body decorator and we also have the response where we have the pass
1:55:401 hour, 55 minutes, 40 secondsthrough to true. I'll explain later. And in here we're going to get the tokens.
1:55:451 hour, 55 minutes, 45 secondsis going to make us await this do authentication service dotregister. We pass the DTO and then we can call the O
1:55:531 hour, 55 minutes, 53 secondsservice set token cookie to authenticate the user. We pass the response and the token and then we return the message
1:56:021 hour, 56 minutes, 2 secondsregistered successfully. Then we also have at post login and the HTTP status code of 200 and the async login method
1:56:111 hour, 56 minutes, 11 secondswe extract the DTO from the body which will validate against the login DTO. We also have the response with pass through of true which is going to be this
1:56:201 hour, 56 minutes, 20 secondsresponse here and then cons tokens is also going to be await this service but this time around login we pass the DTO and then we have this.
1:56:311 hour, 56 minutes, 31 secondsdo set token cookie where we have the response and the tokens. We can return the object with the message where we
1:56:381 hour, 56 minutes, 38 secondshave logged in successfully. We also have the logout route. So at post logout which is a HTTP code of 200. So we have
1:56:461 hour, 56 minutes, 46 secondsthe logout method with the response pass true to be true. I'll explain what that means again. And we have the response
1:56:531 hour, 56 minutes, 53 secondsand then we can call this off service just to clear the token cookies. We pass in the response and then we can return
1:57:001 hour, 57 minutesthe message object logged out successfully.
1:57:051 hour, 57 minutes, 5 secondsNext is for refreshing. So at post refresh it's going to have the HTTP code of 200 and async refresh where we have the wreck here and stuff type request.
1:57:171 hour, 57 minutes, 17 secondsWe also have the response pass through to be true which is going to be stored in this rest like this. And then we want to read the token directly from the
1:57:251 hour, 57 minutes, 25 secondscookie. So con refresh token is going to be equals to rec.cookie. We pass the cookie key refresh token and then we can
1:57:331 hour, 57 minutes, 33 secondssay con tokens is going to be equals to our this off service refresh tokens. We pass in the refresh token and then we
1:57:421 hour, 57 minutes, 42 secondssay this off service do set token cookie with the response and the token and then
1:57:481 hour, 57 minutes, 48 secondswe can return the message that the token refreshed. So for the current user routes, we're going to have the guard
1:57:561 hour, 57 minutes, 56 secondsthe JWT O guard and get me route. It's going to have the current user which is
1:58:041 hour, 58 minutes, 4 secondsgoing to be of type JWT payload and we return the user object. So for the Google off so get request to / Google
1:58:131 hour, 58 minutes, 13 secondsit's going to have the redirect decorator and the Google login method which is going to return the URL they're going to get from o service.get get Google URL.
1:58:251 hour, 58 minutes, 25 secondsNow we also have get/g Google/callback which is going to be this async Google callback. We're going to get the code
1:58:321 hour, 58 minutes, 32 secondsfrom the query and then the response over here like this. Then we can have the tokens again. So con tokens is going
1:58:401 hour, 58 minutes, 40 secondsto request await this service handle Google call back where we now pass in that code. So we say this all
1:58:491 hour, 58 minutes, 49 secondsservice set token cookie with the response and the tokens and we can return the response redirect. We're
1:58:571 hour, 58 minutes, 57 secondsgoing to redirect the user to this doconfig service get the web URL/ dashboard. So the front end dashboard
1:59:041 hour, 59 minutes, 4 secondspage and we also do the same for GitHub. We have at redirect GitHub login and we can
1:59:121 hour, 59 minutes, 12 secondsreturn the URL again which is going to come from this.get service.get GitHub authentication URL. Now for the GitHub
1:59:211 hour, 59 minutes, 21 secondscall back is a get request. We're going to have the async GitHub call back. It's going to take in the code from the query
1:59:281 hour, 59 minutes, 28 secondsand it's also going to over here have the response here. So we can do the same con tokens. It's going to be equals
1:59:371 hour, 59 minutes, 37 secondsawait this service handle GitHub call back. We pass the code and we say this.
1:59:451 hour, 59 minutes, 45 secondsservice dot set token cookies. So we pass the rest and tokens like this and we can return the response redirect to
1:59:541 hour, 59 minutes, 54 secondsthe this doconfig service get want to get the web URL/ dashboard.
2:00:022 hours, 2 secondsNow this is our controller. Lots of errors. Let's gradually fix the error.
2:00:062 hours, 6 secondsLet's start with this reference type is in a decorated signature. Yeah, it wants us to import it as a type. So here let's
2:00:152 hours, 15 secondsimport type like this and that fixes that we have the errors here that it cannot find the module.
2:00:232 hours, 23 secondsQuite surprising as we have the module definition. So I think what's going to happen is I'm going to get rid of all of
2:00:302 hours, 30 secondsthese so that we can manually import it ourself. So somewhere here
2:00:382 hours, 38 secondswhere is it? Yeah. So here I'm going to import this which will come from JWT and this is going to come from the decorator.
2:00:452 hours, 45 secondsSo we have this um error over here um any so we can cast this as a string type
2:00:522 hours, 52 secondslike this. So we say as string and the last request here is based of the last error based of this request
2:01:012 hours, 1 minute, 1 secondwhich also needs to be imported as a type. Okay. So right here rather than have both typed like this I'm just going
2:01:082 hours, 1 minute, 8 secondsto add import type request and response from express the errors are gone now we can walk through um the different
2:01:152 hours, 1 minute, 15 secondsmethods that we have right here in the controller we have the register endpoint pretty much straightforward we call reset the
2:01:242 hours, 1 minute, 24 secondstoken we return the response we see the login here with the HTTP code of 200 and here we have this pass through that is
2:01:312 hours, 1 minute, 31 secondsset to true now this is going to let us to the cookies on the response. While we still allow Nex.js to handle sending the
2:01:382 hours, 1 minute, 38 secondsactual response body and if you omit this pass through here, you would have to call response.json
2:01:452 hours, 1 minute, 45 secondsyourself manually. Okay, so that's why we have it there. And we have the logout which is calling the clear token
2:01:522 hours, 1 minute, 52 secondscookies. We have the refresh which is also calling the refresh tokens from the O service. We have me which is quite interesting. In here as you see we have
2:02:012 hours, 2 minutes, 1 secondthe current user decorator and we are returning the user. So over here the user is coming from the request
2:02:082 hours, 2 minutes, 8 secondsdo user over here and this is possible because the guard will run first and the guard is going to inject the user which is going to be equals to this payload.
2:02:182 hours, 2 minutes, 18 secondsSo the ID as well as the email. So then we can return the user. Here we also have our Google O with a redirect
2:02:272 hours, 2 minutes, 27 secondsdecorator which is going to call the get Google authentication URL. The Google callback is going to get the code from
2:02:342 hours, 2 minutes, 34 secondsthe query and then it's going to call the O service to call the handle Google call back and set the tokens and that's pretty much the same for GitHub.
2:02:472 hours, 2 minutes, 47 secondsOkay, so now we have the controller done. The next step is for us to register or have the authentication
2:02:542 hours, 2 minutes, 54 secondsmodule so that we can import the module in the app module. So here inside O we're going to create the O domodule.ts
2:03:042 hours, 3 minutes, 4 secondsfile and we're going to import module. Module is going to be coming in from at nestjs for/mon.
2:03:142 hours, 3 minutes, 14 secondsWe're also going to import the JWT module which is going to come from at nestjs4/jwt.
2:03:222 hours, 3 minutes, 22 secondsAnd then we have the o service which will come from o service. We also have the authentication controller which will come from the o controller.
2:03:332 hours, 3 minutes, 33 secondsAnd we have the module decorator. And the important want to have the JWT module.register just like this. And in the providers,
2:03:432 hours, 3 minutes, 43 secondswe're going to have the O service. And the controller is going to have the O controller. And the exports is going to
2:03:502 hours, 3 minutes, 50 secondshave the JWT module. And we can now have the class definition where we export the class O module.
2:03:592 hours, 3 minutes, 59 secondsThis is our authentication module done.
2:04:022 hours, 4 minutes, 2 secondsWe then need to import the authentication module inside the app module. So let's come over to the app module. And here in the imports array,
2:04:112 hours, 4 minutes, 11 secondswe are going to have the O module like this. So this is pretty much our setup.
2:04:182 hours, 4 minutes, 18 secondsDefinitely we need to test our API to make sure that our API is still building and running before we can continue.
2:04:252 hours, 4 minutes, 25 secondsOkay. So let's open up the terminal and I'm just going to clear here and run the pnpm dev start dev command which is
2:04:342 hours, 4 minutes, 34 secondsgoing to start up our NestJS back end the back end of our application on port 3000. So we'll give this a moment for it
2:04:422 hours, 4 minutes, 42 secondsto compile and no errors found which is good news and then we see finally we have all our authentication routes um
2:04:502 hours, 4 minutes, 50 secondsover here being registered and everything is fine. Now the next step for us is to get the credentials from Google as well as GitHub before we can
2:04:592 hours, 4 minutes, 59 secondsthen go over to the front end uh implementation.
2:05:042 hours, 5 minutes, 4 secondsWe're going to get our credentials for our Google authentication and GitHub authentication. So let's get started with GitHub. You need to come over to
2:05:122 hours, 5 minutes, 12 secondsyour GitHub profile username and in this avatar section here you're going to click on settings. This is going to take
2:05:202 hours, 5 minutes, 20 secondsyou over to your settings page. And if you scroll further down this left side navigation, you would see a section for developer settings. So you want to click
2:05:292 hours, 5 minutes, 29 secondsinto that section and you want to click over to ooth apps over here.
2:05:352 hours, 5 minutes, 35 secondsSo now it loads. We need to create a new oorthth app. So I'll click on new oorthth app and provide the application
2:05:422 hours, 5 minutes, 42 secondsname which is the name of our application. So super vote and the homepage URL is going to be the front
2:05:502 hours, 5 minutes, 50 secondsend homepage over here. So local host on port 3001 for the authorization call back URL.
2:05:572 hours, 5 minutes, 57 secondsThis is going to be our backend API. So / API/orth/ github/callback.
2:06:042 hours, 6 minutes, 4 secondsSo once you have this here, you want to register this application. This is immediately going to provide the client ID. So you want to copy over this client
2:06:132 hours, 6 minutes, 13 secondsID that we have over here. and then come back to the IDE and over here in the env file. So this env over here has to be
2:06:232 hours, 6 minutes, 23 secondsinside the API folder and you want to register the GitHub client ID. So I'll replace what we have here with this and
2:06:322 hours, 6 minutes, 32 secondscome back to the browser and for the client secret over here to the right where we have this generate a new client secret you go on and authenticate
2:06:402 hours, 6 minutes, 40 secondsyourself and then you want to copy over the secret over here.
2:06:452 hours, 6 minutes, 45 secondsSo back to the IDE, I'll replace the GitHub client secret with this secret that we have here. Now to round up GitHub, we just need to come back here
2:06:542 hours, 6 minutes, 54 secondsand then want to save the changes. So down here, we're going to click on update application. And that's it for Google O credentials.
2:07:042 hours, 7 minutes, 4 secondsOkay. So we're going to do the same for G Google. So that was GitHub. So this is Google.
2:07:102 hours, 7 minutes, 10 secondsAnd over here where we have this my first project, you want to create a new project. So you want to click into this here and then you're going to see this
2:07:192 hours, 7 minutes, 19 secondsnew project section. So you're going to click on new project and you're going to provide the project name. So super vault
2:07:272 hours, 7 minutes, 27 secondsthe name of our application and that's it. So you can go on and create um a new project. Now for billing
2:07:352 hours, 7 minutes, 35 secondsmaybe you do not have this error but I have billing set up. So I'm going to click on this and then I'm going to create the project and you should be
2:07:432 hours, 7 minutes, 43 secondsredirected into the project automatically. You can see over here it's creating the new project. If you're not then you want to select the project.
2:07:502 hours, 7 minutes, 50 secondsSo you are right inside the project dashboard. So right here I'm inside the super vault project. Then on this hamburger menu we have to the left.
2:08:002 hours, 8 minutesYou're going to click on it and under APIs and services we have this credentials section here. Okay. So, you
2:08:072 hours, 8 minutes, 7 secondswant to click into credentials and we're going to be setting up our credentials here.
2:08:132 hours, 8 minutes, 13 secondsSo, on this plus create credentials at the top navigation, you want to click on it and we're going to select Oorth client ID.
2:08:222 hours, 8 minutes, 22 secondsSo, wait for the page to load up and we first need to configure the consent screen. So we're going to click on that
2:08:292 hours, 8 minutes, 29 secondsconfigure content screen and then we click on get started to create a Google Earth platform and the application name is going to be
2:08:372 hours, 8 minutes, 37 secondsthe name of our application. So super votes and then we also have the user support email. You want to select your email address here. Hit on next. For
2:08:462 hours, 8 minutes, 46 secondsaudience you want to select external even though we're going to register test user for this to work. So we'll do that in a moment. And then you want to click
2:08:562 hours, 8 minutes, 56 secondson next. For contact information, you want to use your own email address over here. So you want to provide your email address
2:09:032 hours, 9 minutes, 3 secondsand then you want to click on next and just agree to the terms and conditions and click on finish.
2:09:112 hours, 9 minutes, 11 secondsSo now we are going to have a project and inside this project we can go on to configure the oorthth client. So you see over here where it says create or
2:09:192 hours, 9 minutes, 19 secondsclient. We're going to click and it brings us over to this page. So we select the application type. It's a web application. We're going to choose on web application.
2:09:282 hours, 9 minutes, 28 secondsThe name can remain as it is. We're going to come back to authorized JavaScript origins. But for the authorized redirect URLs, it has to be
2:09:352 hours, 9 minutes, 35 secondsour API endpoint. So in here is also going to be / API/ Google/ callback. For the authorized
2:09:432 hours, 9 minutes, 43 secondsJavaScript origins, it's going to be our front end just like this.
2:09:482 hours, 9 minutes, 48 secondsOkay. So once you have all this value checked and confirmed, you can go and hit on create. And this is going to showcase your client ID and the client
2:09:572 hours, 9 minutes, 57 secondssecret. So I'll copy the client ID over here in the IDE. I'm going to replace this with a client ID. And for the client secret, I'm going to come back to
2:10:052 hours, 10 minutes, 5 secondsthe browser and I'll copy this secret and replace the value over here with this new secret.
2:10:142 hours, 10 minutes, 14 secondsSo this is everything but not all. We need to register the test user. So let's come back to the Google console and I'm
2:10:212 hours, 10 minutes, 21 secondsjust going to click on okay. And we need to come over to audience. So you want to click on this audience section here. And
2:10:292 hours, 10 minutes, 29 secondsin this page, if you scroll further down, you'll see this section for test users to add users. So you want to click into there. And here you want to provide
2:10:372 hours, 10 minutes, 37 secondsyour email address that you're going to be testing this application with or any you know other email address. Maybe you want someone else to test. You're going to provide their email address here.
2:10:482 hours, 10 minutes, 48 secondsThen you can go and click on save. And once you click on save, this is pretty much the setup we need for the credentials. Okay, so the next focus is
2:10:572 hours, 10 minutes, 57 secondsfor us to integrate the authentication right into the front end application. We are done for now with the API setup for
2:11:052 hours, 11 minutes, 5 secondsauthentication. So I'm going to close all these tabs that we have open and also collapse all of these folders and
2:11:142 hours, 11 minutes, 14 secondsthese as well. So we want to be inside the web folder. This is where our work is going to be for now. And then let's open up the terminal to install shad cn
2:11:232 hours, 11 minutes, 23 secondsUI. I'm going to cd outside the API and into the web. And right here in the web, we're going to run the pmppm init
2:11:312 hours, 11 minutes, 31 secondscommand for shen. So we say pmppm dlx cn at latest init, which is going to
2:11:382 hours, 11 minutes, 38 secondsinitialize shen UI right into the web application. And then it's going to give us some prompts. So wait a moment so
2:11:462 hours, 11 minutes, 46 secondsthat we can configure the the chart and UI installation. So for the component library we're going to go with radics
2:11:532 hours, 11 minutes, 53 secondsand for the presets we are going to go with nova preset here and then it's going to fail when it tries to run the
2:12:012 hours, 12 minutes, 1 secondinstallation. That's because you see over here it tries to make use of npm.
2:12:052 hours, 12 minutes, 5 secondsSo we have this error code that's on supported protocol because we are in a workspace and the npm install is not
2:12:132 hours, 12 minutes, 13 secondsgoing to work right here which is what it tries to do as you can see over here.
2:12:172 hours, 12 minutes, 17 secondsSo this is failing. We're going to install them manually ourselves making use of pnpm. So we say pmppm add and we
2:12:252 hours, 12 minutes, 25 secondswant to add the clsx also for the wind merge package and the same for class variance authority. We're
2:12:342 hours, 12 minutes, 34 secondsgoing to copy that and paste that in here.
2:12:382 hours, 12 minutes, 38 secondsAnd next for TWW animate CSS, we'll paste it in here. We also have the radics UI. I'll collapse this. And okay,
2:12:472 hours, 12 minutes, 47 secondsso it's here. So I'm going to copy this and paste in radics UI. And same for Lucid React. So you want to copy and paste it here and execute.
2:12:562 hours, 12 minutes, 56 secondsNow you're going to see the installation is going to be successful as we see over here. Cool. So if you're used to Shatn
2:13:042 hours, 13 minutes, 4 secondsUI, you know that Shatn UI has a util lib utios file. So inside the source folder, we are going to be creating this
2:13:132 hours, 13 minutes, 13 secondslib folder so that we can have the CN utility. So right into the source, we're going to create a new folder for lib.
2:13:202 hours, 13 minutes, 20 secondsAnd there we're going to create the utilus.ts file. No worries, I will show you where this is also customized in the components.json.
2:13:282 hours, 13 minutes, 28 secondsOkay, so let's lay out this file. We're going to import clsx and also class variant from clsx. And then we import
2:13:362 hours, 13 minutes, 36 secondstailwind merge from tailwind merge and we can export the function the CN function which we get in the imputes which is going to be an array of class
2:13:452 hours, 13 minutes, 45 secondsvalue and we can return tww merge with then passes clcx and the imputes. So no worries I will show you where this is
2:13:532 hours, 13 minutes, 53 secondscustomized. But for now let's install some components to be sure that our setup is working.
2:13:582 hours, 13 minutes, 58 secondsSo we're going to say pmppm dlx sh cn at latest add button. We also want to add impute label card and form components.
2:14:092 hours, 14 minutes, 9 secondsAnd once this is done we're going to have this right here in the component folder. As we see we have the component folder which contain the different
2:14:172 hours, 14 minutes, 17 secondscomponents. If you visit the button.tlx you see is now making of the CN utils that we created. And how does it know?
2:14:252 hours, 14 minutes, 25 secondsThat's because in the components.json JSON over here the project was customized with this aliases so it knows the utilus is in this folder and the same for the UI the lib and the hooks.
2:14:362 hours, 14 minutes, 36 secondsNow for now you can ignore this warning and if we get into our way we can see to fix it then we can continue building out the authentication section in the front end application.
2:14:472 hours, 14 minutes, 47 secondsWe going to be creating the authentication features. So right into the source folder we're going to create this folder for features and in here we
2:14:562 hours, 14 minutes, 56 secondswant to have the all features which is a clean folder structure by structuring our application based on features. We're going to start with the constants. So
2:15:052 hours, 15 minutes, 5 secondshere we're going to have the constants ts file and here we're going to export the con o intent. So the intent for
2:15:122 hours, 15 minutes, 12 secondsregistering and this is going to request to login for login and register is going to request to register as const. Then we
2:15:192 hours, 15 minutes, 19 secondsalso export the type of intent is going to be equals to the type of O intent which is the key of the type of O intent.
2:15:282 hours, 15 minutes, 28 secondsOkay. So now we have the intent for register and login. Next we're going to create the schema. So the validation schema for the client and also for the
2:15:362 hours, 15 minutes, 36 secondsserver. So here we're going to have the clients schema.ts.
2:15:422 hours, 15 minutes, 42 secondsSo this is going to be used on the client validation. Let's import zed from zod. And then we can also import the
2:15:492 hours, 15 minutes, 49 secondstype of login schema and also register schema which will come from our super vote type. So this is where it comes in
2:15:562 hours, 15 minutes, 56 secondshandy. Then we can export the con login schema is going to be equals to z.object. So we need the email. The
2:16:042 hours, 16 minutes, 4 secondsemail is going to be of type string and the email error here is going to be for invalid email. And for the password
2:16:112 hours, 16 minutes, 11 secondszstring domin one. So password is required. And now this has to satisfy
2:16:182 hours, 16 minutes, 18 secondsthe Z.Zot type of our login schema our login input. We also export the con register schema which is going to be equals to Z.object.
2:16:282 hours, 16 minutes, 28 secondsThe name is going to be a string and a main of one. That means name is required. And the email is also going to be a string. And the email validator we
2:16:372 hours, 16 minutes, 37 secondssay email invalid email. And the password is going to be Z string and a minimum of eight. So password must be at
2:16:452 hours, 16 minutes, 45 secondsleast eight characters. This is what we set up in our DTO also on the server side. And then we say satisfy z.z typeregister input.
2:16:562 hours, 16 minutes, 56 secondsThis is going to be used for our client side validation we're going to create another schema for the server side. So right here still inside the o folder we're going to create a server.
2:17:062 hours, 17 minutes, 6 secondsschema.ts.
2:17:092 hours, 17 minutes, 9 secondsWe can import um zed from z. So import z from z. I want to import the o intent
2:17:162 hours, 17 minutes, 16 secondswhich will coming from our schema constant file sorry. And then let's import the login schema and register
2:17:232 hours, 17 minutes, 23 secondsschema which will come from one level up the client. schema. Then we can export the constant call it server schema. It's
2:17:322 hours, 17 minutes, 32 secondsgoing to be equals to z.discriminated union based off the intent. So the intent here if is this z.object object
2:17:402 hours, 17 minutes, 40 secondsand the intent is Z. literal for O intent.lo, we're going to make use of the login schema shape. Okay. And then
2:17:492 hours, 17 minutes, 49 secondsthe same so Z dot object if the intent is Z.literal the intent.register.
2:17:562 hours, 17 minutes, 56 secondsWe're going to make use of the register schema shape which is still the client.
2:18:002 hours, 18 minutesSo we are extending the client probabilities but we still have the option to add more features if we need more server side validation.
2:18:082 hours, 18 minutes, 8 secondsAll right. So in the env we're going to add the same env to our back end but now it's just going to be API URL. It's
2:18:162 hours, 18 minutes, 16 secondsgoing to be http localhost column 3000/ API. So this is going to be handy for the server side. Nest public is exposed
2:18:232 hours, 18 minutes, 23 secondsto the client with the prefix of next public. This is going to be for the server side. Okay. So before we round
2:18:312 hours, 18 minutes, 31 secondsthis up, I just want us to run some installations that we might need on the front end. So I'm going to close all
2:18:382 hours, 18 minutes, 38 secondsand then if you open up the terminal and also clear over here we can say pnpm add react hook form and also at hookform/resolver.
2:18:482 hours, 18 minutes, 48 secondsSo we're going to need this when we are creating the form on the front end.
2:18:532 hours, 18 minutes, 53 secondsOkay. So wait for the installation to complete and the next focus is now for us to create the action. And once we
2:19:002 hours, 19 minuteshave the action for the serverside um action the serverside request then we're going to create the login form. Okay
2:19:082 hours, 19 minutes, 8 secondseveryone. So now we are going to create the o action. So in the features we're going to be creating a new file which is going to be the actions.ts
2:19:172 hours, 19 minutes, 17 secondsfile. So here we're going to have the action for register for login. Let's start by having the use server directive over here. And then we can import
2:19:252 hours, 19 minutes, 25 secondsredirect from next navigation. And then we can also import our o server schema which is going to come in from the
2:19:342 hours, 19 minutes, 34 secondsschema server schema file. And the o intent is also going to come in from the constant file. Then let's have the type.
2:19:422 hours, 19 minutes, 42 secondsWe're going to export the type of o action state is going to be this object with the error which is optional string
2:19:502 hours, 19 minutes, 50 secondsand also the field errors which is also optional object with the key of string and the value of string array. Now for
2:19:572 hours, 19 minutes, 57 secondsthe actual action we have this function o action which is going to take in the previous state of the o action state and then the actual form data which is going
2:20:062 hours, 20 minutes, 6 secondsto be of form data and then it's going to return a promise that resolves to action or action state. So first we're
2:20:132 hours, 20 minutes, 13 secondsgoing to try to read the values from the form. So we say object do form entries we pass the form data and then we try to use our schema. our server schema safe
2:20:232 hours, 20 minutes, 23 secondspass raw. And if it's not successful, so we say if past success is false, then we're going to return the field errors.
2:20:302 hours, 20 minutes, 30 secondsAnd this field errors object we're returning, we're going to say pass error.flatten.
2:20:352 hours, 20 minutes, 35 secondsAnd then we can have dot field errors as you know this object with the string and the array of string. Now if it's
2:20:432 hours, 20 minutes, 43 secondssuccessful, we're going to get the intent. I want to spread the data which is going to be equal to pass data. We can now switch based of the intents. Now
2:20:512 hours, 20 minutes, 51 secondswe say this case if the case is off intent.login we're going to send a request to the back end. So con response is going to be to await making the fetch
2:21:002 hours, 21 minutesAPI. The process envi URL/ login. And now we have the method which is a post
2:21:072 hours, 21 minutes, 7 secondsrequest. The headers is going to take in the content type key where the value is application/json.
2:21:142 hours, 21 minutes, 14 secondsWe also want to have credentials include and we want to have the body which we're going to say JSON stringify data.
2:21:252 hours, 21 minutes, 25 secondsNow if it's not okay so if not response.
2:21:282 hours, 21 minutes, 28 secondsWe're going to say con body is going to be equals to our response.json and then we want to return the error message here which is going to be body
2:21:372 hours, 21 minutes, 37 secondsdot message otherwise we're going to say login field. Then we have our break here. And the next is going to be the
2:21:442 hours, 21 minutes, 44 secondsnext case which is the register case. So the case for off intent.register.
2:21:492 hours, 21 minutes, 49 secondsWe're also going to make a request to the back end. So con response is going to be equals to await fetch. The process envi URL/ off/register.
2:21:592 hours, 21 minutes, 59 secondsWe're going to configure the method to also be a post request. The headers is also going to have the contents type of
2:22:062 hours, 22 minutes, 6 secondsapplication JSON. We're also going to have the credentials which is going to have include and the body is then going
2:22:142 hours, 22 minutes, 14 secondsto be JSON stringify the data that comes from the client. Okay. So we say if it's not okay. So if not response. So if it's
2:22:232 hours, 22 minutes, 23 secondsfalse we're going to have the body is going to be equals to await response.json and then we can return the object with the error that is the body
2:22:322 hours, 22 minutes, 32 secondsdossage. Otherwise, we say registration failed and we want to have our break just down here like this.
2:22:412 hours, 22 minutes, 41 secondsThen we can close this up and we can redirect the user to the dashboard. So regardless um if you if you do not have
2:22:482 hours, 22 minutes, 48 secondsan error, you go to the dashboard. So let's explain what's happening here. The first thing here is we are getting the form data from the client and then we
2:22:562 hours, 22 minutes, 56 secondsvalidate it against our schema. If it's not successful, we return a response immediately. But if it's successful, we
2:23:032 hours, 23 minutes, 3 secondsget the intent and the data. And based on the intent, we know what method to call. Now if it's to register, we send
2:23:112 hours, 23 minutes, 11 secondsthe request to the back end so that we can register. And if they fail, any of them fail, we send the error. But if
2:23:182 hours, 23 minutes, 18 secondsit's successful, then we redirect to the dashboard. So this is our authentication action. We are going to be creating the
2:23:262 hours, 23 minutes, 26 secondslogin page as well as the register page that we can test this out. Now we have our action. We're going to create the
2:23:352 hours, 23 minutes, 35 secondslogin and register page. So side by side over here I have the browser and here this is where we're going to be typing out our code. We're going to start by
2:23:432 hours, 23 minutes, 43 secondsinstalling this field package. So we're going to say pmppm dlx shen at latest add field. And once you execute this,
2:23:512 hours, 23 minutes, 51 secondsyou're going to see over here in the components, you're going to have the field and also the separator component
2:23:582 hours, 23 minutes, 58 secondsbecause the field makes use of this separator component over here. So we have it here. Okay. So now we have these
2:24:062 hours, 24 minutes, 6 secondstwo components here. The next step is for us to update our globals. CSS. Now if we check our application and inside
2:24:142 hours, 24 minutes, 14 secondsthe globals.t CSS, you would see that our styles is not actually complete. So, I'm going to bring in the remainder of the styles from GitHub and I would
2:24:232 hours, 24 minutes, 23 secondsupdate it manually. So, I'll remove everything we have here and replace it with these updated styles over here. So,
2:24:302 hours, 24 minutes, 30 secondsonce you have the updated CSS, you can save this. And the next step is for us to run our application and start laying out the JSX. I'm going to close this,
2:24:382 hours, 24 minutes, 38 secondsopen up the terminal, and now we need to see the outside the web inside the root of the application. So you want to be
2:24:452 hours, 24 minutes, 45 secondshere the root of your application and you want to run pnpm dev which is going to concurrently start the dev API and
2:24:532 hours, 24 minutes, 53 secondsthe dev web application. Now if you refresh this you're going to see the homepage that we created. So here we
2:25:012 hours, 25 minutes, 1 secondhave the API status which is unreachable and that's because the web application just finished compiling and now once you
2:25:082 hours, 25 minutes, 8 secondsrefresh this you're going to see the API status of okay. Let's start up with the login page. So if we come over to
2:25:152 hours, 25 minutes, 15 secondslocalhost 3000/lo, we do not have this page yet. So it gives us this default 44 page.
2:25:232 hours, 25 minutes, 23 secondsLet's come over to the app. And over here in the app, if we create this folder, we know that Nex.js makes use of this file based routing. And we create
2:25:312 hours, 25 minutes, 31 secondsthe login folder. And in here, we create the page.tsx file. Now we still get an error but it's going to be a different
2:25:382 hours, 25 minutes, 38 secondskind of error that we are not exporting default in this page. Now let's start laying out the login page. I'm going to
2:25:462 hours, 25 minutes, 46 secondsbring in the code gradually here. The first thing we have we have the use client directive and then we have all these imports. So we're bringing in the
2:25:552 hours, 25 minutes, 55 secondsuse action state from React. We're also going to bring in the controller and the use form which is going to come from React hook form. We have the zod
2:26:032 hours, 26 minutes, 3 secondsresolver which is going to come from hook form resolver z. We bring in z from zord the link component the button
2:26:102 hours, 26 minutes, 10 secondscomponent the card component the field and we have the impute the authentication action the authentication intent and the login schema.
2:26:212 hours, 26 minutes, 21 secondsAfter this I'm going to define the login values. If you hover on this, you see this type here, which is just the email and password because Z is aferring the type from our login schema.
2:26:332 hours, 26 minutes, 33 secondsThen we can export the default oops, we can export that default function. And this default function here, we can give
2:26:412 hours, 26 minutes, 41 secondsit the name of um login page. And here we have the content here. If we go to save this, we would no longer see
2:26:502 hours, 26 minutes, 50 secondsanything on the page. And that's because we are not having any return over here for now.
2:26:562 hours, 26 minutes, 56 secondsWe're going to start with our use action state declaration and also building out our form. So here let's have the use
2:27:042 hours, 27 minutes, 4 secondsaction state which is going to take in our authentication action. And here we do not have any default values. But if you try to give a value you see it's
2:27:122 hours, 27 minutes, 12 secondsjust the error and the field errors because in the authentication action that is the type over here. So we do not have any default state like any error
2:27:202 hours, 27 minutes, 20 secondsstate for now. And this use action state you see we are destructuring the different fields that we need. The force is the state which is the type of the
2:27:292 hours, 27 minutes, 29 secondsaction the authentication action state that I just showed us. We have the form action which is going to take in the payload of the form data. And then we
2:27:372 hours, 27 minutes, 37 secondshave is pending which is a boolean type and we can have access to this whenever the form or the use action state is pending.
2:27:462 hours, 27 minutes, 46 secondsThen we build our form with the resolver Z resolver and then the default values is the email and password empty string.
2:27:532 hours, 27 minutes, 53 secondsWe build our form making of the use form hook.
2:27:572 hours, 27 minutes, 57 secondsThen we can have our actual return just in here like this. Now inside this return I'm going to have or start by
2:28:052 hours, 28 minutes, 5 secondsbringing in this div and also this card over here. So here I'm going to bring in this div like this and I will just close
2:28:132 hours, 28 minutes, 13 secondsit up. Close up the card content also close up the card and close up the div and format this properly like this. So
2:28:212 hours, 28 minutes, 21 secondswe have this div which takes in this card and the card header is welcome back sign into your spaolt account and the card content we are displaying any
2:28:292 hours, 28 minutes, 29 secondserrors if we do have an error and once we save this we see welcome back sign into your spaolt account and we do not have any error so we do not see anything.
2:28:392 hours, 28 minutes, 39 secondsSo just below the card content, we're going to have or build our form. I'm going to bring in the form and also the first field group we are going to have
2:28:482 hours, 28 minutes, 48 secondsin here. And let me close this up here like this. The field group and also close oops the form. So let's walk through what we have. We have the form.
2:28:592 hours, 28 minutes, 59 secondsThe action is taken in is the form action. We have no validate because we do not want um default HTML validation.
2:29:062 hours, 29 minutes, 6 secondsThe validation is going to be handled by our JavaScript code here. So on submit capture, we go on to check try to trigger the form and if the form is not
2:29:142 hours, 29 minutes, 14 secondsvalid, we prevent default. Prevent default is going to stop the form action from being called.
2:29:222 hours, 29 minutes, 22 secondsThen we have the field group. The field group here is going to take in the different controllers. So we have this controller for the email. The control is
2:29:302 hours, 29 minutes, 30 secondsthe form control. So here we built out the form. So we pass in the form control. The render function here we can destructure the field and the field
2:29:382 hours, 29 minutes, 38 secondsstate. And then we have the field label which is the HTML 4 which matches the input ID over here. The type is email
2:29:472 hours, 29 minutes, 47 secondsautocomplete email area invalid if the field state is invalid. And if we have any errors we display the errors here
2:29:542 hours, 29 minutes, 54 secondsfor the email and we can save this. Now we see the email field. We're going to also bring in the password field which
2:30:012 hours, 30 minutes, 1 secondis very much alike to this. So here we're going to bring in the field for the password, the controller for the
2:30:082 hours, 30 minutes, 8 secondspassword. So the name, the control and the render. We render the password and the input which is of type password. So
2:30:162 hours, 30 minutes, 16 secondsonce we give this a save, we see the password over here.
2:30:212 hours, 30 minutes, 21 secondsNow the last thing we're going to have here is the button. So just still inside the field group uh outside the field group, but inside the form, we're going
2:30:292 hours, 30 minutes, 29 secondsto have the button component. Now the interesting thing about this button is this button is also serving as a form
2:30:372 hours, 30 minutes, 37 secondsitem because we give it a name and we give it a value. So the name of intent and the value of all intent.lo.
2:30:462 hours, 30 minutes, 46 secondsAn alternative is going to be to have let's say uh an input here which you would declare to be hidden just to make
2:30:542 hours, 30 minutes, 54 secondssure you go and um pass in the name and also the value. But we don't want to do this because um number one it doesn't
2:31:022 hours, 31 minutes, 2 secondsreally make sense just because the form the button can also serve this purpose over here and this is um a clean way of
2:31:092 hours, 31 minutes, 9 secondsdoing it unless maybe you have additional fields then you can go on to have the impute with hidden and you can also use that to send across or let it
2:31:182 hours, 31 minutes, 18 secondsbe part of the form data. So let's save this and now we have our button to sign in. Once we click on this, our validation kicks in. Invalid email and
2:31:262 hours, 31 minutes, 26 secondspassword is required. I'm going to refresh the page. So the error should go. And the next thing we're going to have now outside the form is to give the
2:31:352 hours, 31 minutes, 35 secondsuser to authenticate with their Google or GitHub account. So outside this form here, I'm going to paste this in here.
2:31:422 hours, 31 minutes, 42 secondsAnd we have this all continue with which is going to display this. And just after this, so after this here, still inside
2:31:502 hours, 31 minutes, 50 secondsthe cat content, we're going to have the div, which is going to hold the button for the Google authentication as well as the GitHub authentication.
2:32:012 hours, 32 minutes, 1 secondI'm going to bring in this button here. It's quite a lot, but not really a lot. The SVG here makes it looks like much.
2:32:072 hours, 32 minutes, 7 secondsSo, I'm going to collapse this this SVG that we have over here. So, you see we just have this button here and this div.
2:32:142 hours, 32 minutes, 14 secondsAnd the div is holding this Google button the A tag. And why have we not making use of a link? We are not making use of a link because we want the
2:32:212 hours, 32 minutes, 21 secondsbrowser to be able to handle this. This is going to trigger a redirect. It's not an internal page. So that's why we're not making of a link component from next
2:32:302 hours, 32 minutes, 30 secondslink. So we have this which is then pointing to our API URL/ Google. And once we come over here, so
2:32:382 hours, 32 minutes, 38 secondsthe API, the source, the O, the controller/ Google. So this is the / and then want
2:32:462 hours, 32 minutes, 46 secondsto look for the / google over here. It calls google login and then this just gets the google authentication URL and
2:32:552 hours, 32 minutes, 55 secondswe construct the params on the server side based on the Google client ID we have registered. Same for the redirect URI which is the Google callback URL.
2:33:042 hours, 33 minutes, 4 secondsThe response type is going to be code and this is the scope. scope is like hey these are the values [snorts] I want to be able to read from the user Google
2:33:142 hours, 33 minutes, 14 secondsaccount and the access type is offline and then we go on to return this URL over here
2:33:212 hours, 33 minutes, 21 secondsokay so you see here we're going to then get the response back from Google and Google is going to handle everything from here and Google is then going to
2:33:292 hours, 33 minutes, 29 secondshandle the redirect that we set in our Google cloud console and that redirect is going to come straight up to our
2:33:362 hours, 33 minutes, 36 secondsbackend API/ /g Google/callback. So remember this and it's going to automatically attach the code to the
2:33:442 hours, 33 minutes, 44 secondsquery. So I'm going to show you this and once this code is attached to the query then it's going to call the handle
2:33:512 hours, 33 minutes, 51 secondsGoogle call back and then we set the tokens and we redirect the user straight up to the dashboard.
2:33:582 hours, 33 minutes, 58 secondsOkay. So this is how it's happening and if we check the handle Google call back here you see this is then taking the token response. It sends the request to
2:34:072 hours, 34 minutes, 7 secondsGoogle and it attaches the code that we get from the query parameter over here.
2:34:142 hours, 34 minutes, 14 secondsSo it's important that you study the code and know how your code is working and how things are connected in your application. So this is how things are
2:34:212 hours, 34 minutes, 21 secondsconnected in our application. We have the body over here. we get the token response and with the token response we able to get the access token and with
2:34:292 hours, 34 minutes, 29 secondsthis access token we can then fetch the request to Google to get the user profile and with the profile we're going to create a user in our application so
2:34:392 hours, 34 minutes, 39 secondsthis is a round trip of how everything is connected I'm not going to explain the same for GitHub it's the same idea for GitHub as well so this is our Google
2:34:472 hours, 34 minutes, 47 secondsbutton now we're going to have the same button for GitHub so I'll just bring the button in here and have it displayed
2:34:552 hours, 34 minutes, 55 secondsright over here like this. So, we're going to save this. And now we see our continue with Google and GitHub. I'm not
2:35:032 hours, 35 minutes, 3 secondsgoing to test this yet because we also have our register page. So, we're actually not even done with this page because we need
2:35:102 hours, 35 minutes, 10 secondsthe link to the register page. So, I'm going to bring in this paragraph here.
2:35:142 hours, 35 minutes, 14 secondsAnd outside this div, I'm going to render this P tag which is going to tell the user, hey, don't have an account.
2:35:212 hours, 35 minutes, 21 secondsYou can click over to sign up. Now, once we give this a save, you see here we get a text. And if we click on this, we go
2:35:282 hours, 35 minutes, 28 secondsover to the register page, which we do not have. This is the page we are going to be working on next.
2:35:522 hours, 35 minutes, 52 secondsNow the login page is so identical to the register page and we're going to work with this register page. Okay. So
2:36:002 hours, 36 minuteswhat's going to happen is I'm going to copy every sorry we're going to work with this login page. I'm going to copy everything we have with the login and we're going to customize it gradually to
2:36:092 hours, 36 minutes, 9 secondsfit the register page. So let's start by coming over here and we need to create the page. So in the app we're going to
2:36:162 hours, 36 minutes, 16 secondscreate the register and then we're going to have the page.tsx.
2:36:222 hours, 36 minutes, 22 secondsSo let's paste in the content of the login page here. And the easiest thing to change is the name. Rather than have login page, we're going to have register
2:36:322 hours, 36 minutes, 32 secondspage like this. Now if we save this we definitely going to see the content as we had on the login page. So let's update this gradually. Now we do not
2:36:412 hours, 36 minutes, 41 secondsneed the login schema here. So we can either we can go on to bring in the register schema rather than the login schema. So this register schema is going
2:36:492 hours, 36 minutes, 49 secondsto be used in here and we're going to change this name rather than login form values. Then we can go with register form values.
2:36:582 hours, 36 minutes, 58 secondsNow we just need to update the form over here. is going to make use of our register form values. So register form values and the schema we pass here is going to be the register schema.
2:37:112 hours, 37 minutes, 11 secondsOkay. Now for the default values we also need the name. So it has the email, it has the password. We also going to have the name and the name here is going to be an empty string.
2:37:222 hours, 37 minutes, 22 secondsOkay. So we are missing the name control but over here it says welcome back. We need to update that and also it says
2:37:292 hours, 37 minutes, 29 secondssign into your account. We need to say start building with super vote. I'm going to update this so that it becomes this create an account and start building with super vote.
2:37:412 hours, 37 minutes, 41 secondsThis error state is going to remain and then we have our form. Now for the form we have the field and the first field
2:37:482 hours, 37 minutes, 48 secondswe're going to have is for the name. So let's bring in the controller here for the name. Just like this. I'm going to
2:37:552 hours, 37 minutes, 55 secondsbring it in here. So, right inside the field group, we have the controller for the email and the password. We need one for the name. So, I'll bring this in
2:38:042 hours, 38 minutes, 4 secondshere just like this. And this is taking in the name of name. Okay, it has to be name. If you see autocomplete, it knows because we have configured everything.
2:38:132 hours, 38 minutes, 13 secondsSo, it knows the email, password and um name. So, we need to choose name. The control here is form. And in the render,
2:38:202 hours, 38 minutes, 20 secondswe destructure the field and the field state. We display the name and the input text in the register name. The autocomplete name, the type is text and
2:38:292 hours, 38 minutes, 29 secondswe have the error state. So we can save this and now we're going to see name displayed over here. Now the same is for
2:38:362 hours, 38 minutes, 36 secondsemail. We do not need to make any change here. It works both for the register and the login screen. So we do not need to make any changes here. And for the
2:38:452 hours, 38 minutes, 45 secondspassword over here, we also don't need to make any change here as well.
2:38:502 hours, 38 minutes, 50 secondsAnd then we need to make a very important change for this button here.
2:38:542 hours, 38 minutes, 54 secondsIt says the authentication intent is login. We need to replace this with register.
2:39:012 hours, 39 minutes, 1 secondNow rather than say signing in, we're just going to say creating account.
2:39:052 hours, 39 minutes, 5 secondsCreating account over here. And rather than sign in, we're going to change the text to create account.
2:39:132 hours, 39 minutes, 13 secondsNow we're going to give this a save. And we see create account over here. Now we have all continue with. This is going to remain the same. So over here where we
2:39:222 hours, 39 minutes, 22 secondshave the button for the Google and also for the GitHub, we do not need to make any changes here because our back end is
2:39:292 hours, 39 minutes, 29 secondsgoing to get called and whenever it gets called, it's going to do the same thing.
2:39:332 hours, 39 minutes, 33 secondsSo in the authentication service, whenever this service of handle or user gets called, it's going to check, hey, is it a first time user? And if it's a
2:39:422 hours, 39 minutes, 42 secondsfirst- time user, then it creates the user. It sets up the organization and then it also sets up the organization membership. But if it's not a first time
2:39:502 hours, 39 minutes, 50 secondsuser, then it's just going to go on and sign the token. And also, if it's a first- time user, as you can see, we're not returning in here. It registers, it
2:39:592 hours, 39 minutes, 59 secondscreates the user, the organization, and it also signs the token for the user. So it doesn't matter if you click on this
2:40:062 hours, 40 minutes, 6 secondsbutton on the register page or if you click the button on the login page the is going to be the same. Now also noticed we haven't updated this text over here. This text should say sign in.
2:40:172 hours, 40 minutes, 17 secondsSo we'll come over to the login page and over here we're going to go over to /lo like this and this is going to say sign in.
2:40:282 hours, 40 minutes, 28 secondsNow with all these changes done we click here. We able to toggle between the login page and the register page. The next step is for us to test out the
2:40:362 hours, 40 minutes, 36 secondsfunctionalities and see if all the code we have written out this way is working as expected. Now the login page is so
2:40:432 hours, 40 minutes, 43 secondsidentical to the register page and we're going to work with this register page.
2:40:492 hours, 40 minutes, 49 secondsOkay. So what's going to happen is I'm going to copy every sorry we're going to work with this login page. I'm going to copy everything we have with the login and we're going to customize it
2:40:572 hours, 40 minutes, 57 secondsgradually to fit the register page. So let's start by coming over here and we need to create the page. So in the app
2:41:042 hours, 41 minutes, 4 secondswe're going to create the register and then we're going to have the page tsx.
2:41:112 hours, 41 minutes, 11 secondsSo let's paste in the content of the login page here. And the easiest thing to change is the name. Rather than have login page, we're going to have register
2:41:212 hours, 41 minutes, 21 secondspage like this. Now if we save this, we definitely going to see the content as we had on the login page. So let's update this gradually. Now we do not
2:41:292 hours, 41 minutes, 29 secondsneed the login schema here. So we can either we can go on to bring in the register schema rather than the login schema. So this register schema is going
2:41:382 hours, 41 minutes, 38 secondsto be used in here and we're going to change this name rather than login form values. Then we can go with register form values.
2:41:472 hours, 41 minutes, 47 secondsNow we just need to update the form over here. It's going to make use of our register form values. So register form values and the schema we pass here is going to be the register schema.
2:42:002 hours, 42 minutesOkay. Now for the default values we also need a name. So it has the email, it has the password. We also going to have the name and the name here is going to be an empty string.
2:42:112 hours, 42 minutes, 11 secondsOkay. So we are missing the name control but over here it says welcome back. We need to update that. And also it says sign into your account. We need to say
2:42:202 hours, 42 minutes, 20 secondsstart building with super vote. I'm going to update this so that it becomes this. Create an account and start building with super vote.
2:42:302 hours, 42 minutes, 30 secondsThis error state is going to remain and then we have our form. Now for the form we have the field and the first field
2:42:372 hours, 42 minutes, 37 secondswe're going to have is for the name. So let's bring in the controller here for the name just like this. I'm going to
2:42:442 hours, 42 minutes, 44 secondsbring it in here. So right inside the field group we have the controller for the email and the password. We need one
2:42:512 hours, 42 minutes, 51 secondsfor the name. So I'll bring this in here just like this. And this is taking in the name of name. Okay, it has to be name. If you see autocomplete, it knows because we have configured everything.
2:43:022 hours, 43 minutes, 2 secondsSo it knows the email, password and um name. So we need to choose name. The control here is form control. And in the render we destructure the field and the
2:43:102 hours, 43 minutes, 10 secondsfield state. We display the name and the impute text in the register name. the autocomplete name, the type is text and
2:43:182 hours, 43 minutes, 18 secondswe have the error state. So we can save this and now we're going to see name displayed over here. Now the same is for
2:43:252 hours, 43 minutes, 25 secondsemail. We do not need to make any change here. It works both for the register and the login screen. So we do not need to make any changes here. And for the
2:43:342 hours, 43 minutes, 34 secondspassword over here, we also don't need to make any change here as well. And then we need to make a very important
2:43:412 hours, 43 minutes, 41 secondschange for this button here. It says the authentication intent is login. We need to replace this with register.
2:43:502 hours, 43 minutes, 50 secondsNow rather than say signing in, we're just going to say creating account.
2:43:542 hours, 43 minutes, 54 secondsCreating account over here. And rather than sign in, we're going to change the text to create account.
2:44:022 hours, 44 minutes, 2 secondsNow we're going to give this a save and we see create account over here. Now we have all continue with. This is going to remain the same. So over here where we
2:44:112 hours, 44 minutes, 11 secondshave the button for the Google and also for the GitHub we do not need to make any changes here because our back end is
2:44:182 hours, 44 minutes, 18 secondsgoing to get called and whenever it gets called is going to do the same thing. So in the authentication service whenever this service of handle or user gets
2:44:272 hours, 44 minutes, 27 secondscalled it's going to check hey is it a first time user and if it's a first time user then it creates the user it sets up
2:44:332 hours, 44 minutes, 33 secondsthe organization and then it also sets up the organization membership. But if it's not a first time user, then it's just going to go on and sign the token.
2:44:432 hours, 44 minutes, 43 secondsAnd also, if it's a first- time user, as you can see, we're not returning in here, it registers. It creates the user, the organization, and it also signs the
2:44:522 hours, 44 minutes, 52 secondstoken for the user. So, it doesn't matter if you click on this button on the register page or if you click the button on the login page, the ID is
2:45:002 hours, 45 minutesgoing to be the same. Now, also noticed we haven't updated this text over here.
2:45:052 hours, 45 minutes, 5 secondsThis text should say sign in. So we'll come over to the login page and over here we're going to go over to / login /
2:45:122 hours, 45 minutes, 12 secondslogin like this and this is going to say sign in.
2:45:172 hours, 45 minutes, 17 secondsNow with all these changes done we click here we are able to toggle between the login page and the register page. The next step is for us to test out the
2:45:252 hours, 45 minutes, 25 secondsfunctionalities and see if all the code we have written out this way is working as expected. This is the point where we test out our application. And I'm so
2:45:332 hours, 45 minutes, 33 secondsexcited to test out the login functionality that we have been writing.
2:45:372 hours, 45 minutes, 37 secondsAnd I always want to keep the I always want to keep the logs here so that we can see if anything is broken. Okay. So let's start up with the register route.
2:45:472 hours, 45 minutes, 47 secondsSo with the email and password, I would go with the name of code with Larry and then I would go with the email of test.com. I do not want to use my main
2:45:562 hours, 45 minutes, 56 secondsemail. I'm just reserving that for the Google and also the GitHub authentication. And for the password, I will go with a password of 1 to8. And
2:46:042 hours, 46 minutes, 4 secondsonce we hit on create account, the API is going to get called to register to create a new user. And we should be
2:46:122 hours, 46 minutes, 12 secondsauthenticated. And you see everything works. We are redirected over to the dashboard page. Now let's check our database. If we come over to the neon
2:46:202 hours, 46 minutes, 20 secondsconsole here, and this is our project, our superv project. If you come over to the tables, we want to see that we have
2:46:272 hours, 46 minutes, 27 secondsa new user. we have the organization and we have organization members. So over here for organization members you can
2:46:342 hours, 46 minutes, 34 secondssee we have this user ID with the role of admin which was created at here the organization and the user which are the
2:46:422 hours, 46 minutes, 42 secondsforeign key relationship here. If we check the organizations we see we have the code with lar organization was
2:46:492 hours, 46 minutes, 49 secondscreated of the name and we have the slog here which is this log here unique slog.
2:46:552 hours, 46 minutes, 55 secondsWe have the time it was created, updated, the organization members and the projects. Now for now we do not have
2:47:022 hours, 47 minutes, 2 secondsany project is empty. But if you check the users then we see the ID, the name, the email. And if you see the password
2:47:112 hours, 47 minutes, 11 secondshash over here, no avatar URL. The password hash is not the password that I typed. So this has been hashed over here. Then you see the created that they
2:47:192 hours, 47 minutes, 19 secondsupdated that and this user belongs to this organization membership.
2:47:252 hours, 47 minutes, 25 secondsOkay. So we are sure that the login with the register with email and password is working as expected. So over here on the
2:47:322 hours, 47 minutes, 32 secondslogin page let's also test with the same email we used to register. So test.com and I would also provide my password
2:47:402 hours, 47 minutes, 40 secondshere and hit on sign in. And I should be redirected over to the dashboard. So this is working as expected. So, I'm going to get rid of this. And so, we can
2:47:492 hours, 47 minutes, 49 secondscome over to the come back to the register page. And now I'm going to try to um login with GitHub. So, let's try
2:47:562 hours, 47 minutes, 56 secondsthe GitHub authentication before we try Google authentication because I want to try it with I can't try it with this email. I'm going to need to use another email that I used added as a test.
2:48:072 hours, 48 minutes, 7 secondsActually, I added this user as a test user. So, yeah, let's test the Google.
2:48:112 hours, 48 minutes, 11 secondsSo, I'm going to click on continue with Google. And you see over here we are redirected with the URL param that we set the assess type the client ID. I'm
2:48:202 hours, 48 minutes, 20 secondsgoing to click on my email over here and this is going to respond with the code.
2:48:252 hours, 48 minutes, 25 secondsOur API is going to intercept and then redirect us. So here we have the O user.
2:48:302 hours, 48 minutes, 30 secondsWe have all these values over here like this that is right in here with the client ID. Um the general o flow and for now we do not have the code over here.
2:48:442 hours, 48 minutes, 44 secondsSo I'm going to continue here and you can see the scope that we requested over here. And now we should be redirected
2:48:502 hours, 48 minutes, 50 secondsover to the API. And you see we are now redirected back to the dashboard. We do not see the code over here because it happened on the server side. The server
2:48:582 hours, 48 minutes, 58 secondsside handled the redirect. And now we are redirected to the dashboard page.
2:49:042 hours, 49 minutes, 4 secondsOkay. So let's come back to the login page. Let's also test the I'm going to come back to the login. Let's test the
2:49:132 hours, 49 minutes, 13 secondsfunctionality of the GitHub. But if we check the neon console over here, you will see we should have two users. So we
2:49:212 hours, 49 minutes, 21 secondshave one user here and which is the user that signed in with their email. And let's give this a refresh. And now we see this other user here with the name,
2:49:302 hours, 49 minutes, 30 secondsmy name. We have the avatar URL which is my Google URL. No password hash. We have the created arts, the updated arts and
2:49:382 hours, 49 minutes, 38 secondswe have the organization members and everything here. Same for the organization just as we created.
2:49:462 hours, 49 minutes, 46 secondsOkay. So let's test out the Google authentication. Sorry, the GitHub authentication. I can't really use this
2:49:532 hours, 49 minutes, 53 secondsbecause I do not have GitHub here. So I'm going to test this on my other browser where I do have the GitHub. So over here in this browser where I do
2:50:012 hours, 50 minutes, 1 secondhave the GitHub, I'm going to come over here and I would paste the login page that we can test the sign in with GitHub. So I'm going to click on
2:50:102 hours, 50 minutes, 10 secondscontinue with GitHub and this is going to bring up our GitHub authorization screen and that was authorize labbrite
2:50:172 hours, 50 minutes, 17 secondsover here and we should be redirected over back to the dashboard page and you see we are redirected back to the
2:50:242 hours, 50 minutes, 24 secondsdashboard. Let's double check our back end our database over here. If we come to the neon
2:50:322 hours, 50 minutes, 32 secondsconsole and we give this a refresh, we should have a new organization which is this organization here with you know the
2:50:402 hours, 50 minutes, 40 secondsdifferent slog. But if we check users, we should have this user over here. So this labbrite 8 user and this was the
2:50:472 hours, 50 minutes, 47 secondsuser with the GitHub avatar that joined in via GitHub. You can also add providers if you want to keep track of
2:50:532 hours, 50 minutes, 53 secondshey if the user is signing up via email, via Google, via GitHub. You can add providers to the schema and you know
2:51:012 hours, 51 minutes, 1 secondattach provider so you also always know where your users are coming from. So this is working as expected. Let's
2:51:082 hours, 51 minutes, 8 secondscontinue over to the next stage of building out our application and wrap up the authentication section. So let's do some polishing. We have a bug whenever
2:51:162 hours, 51 minutes, 16 secondswe logged in. We did login on the back end so it works but the cookies were never reaching the browser. So the server actions that run on NodeJS and
2:51:242 hours, 51 minutes, 24 secondsnot in the browser and setting the credentials true in the server action was not doing anything. So if we come over here to the server action itself
2:51:332 hours, 51 minutes, 33 secondsand we go to the definition you see we had this credentials true but it wasn't doing anything. So the cookies from
2:51:402 hours, 51 minutes, 40 secondsNestjs set cookies headers were silently dropped. Now let's go over to the application and if we inspect and go
2:51:482 hours, 51 minutes, 48 secondsover to the application section here so that we can take a look at the cookies.
2:51:532 hours, 51 minutes, 53 secondsFor now we do not have any value and let's try to authenticate. So I'm going to quickly provide my credentials over here my email and password and once I
2:52:012 hours, 52 minutes, 1 secondhit on sign in you see over here no cookie set but this is quite different when we go over to the login page. Now this is another thing we're going to
2:52:102 hours, 52 minutes, 10 secondsfix. So once you authenticated you should not be able to come to this page.
2:52:132 hours, 52 minutes, 13 secondsLet's try out authenticating with Google. So [snorts] once we authenticate with Google because of the browser redirect that happens, you see we have
2:52:212 hours, 52 minutes, 21 secondsour access token and the refresh token set over here. So this is working well for O. So I'm going to go back to the
2:52:292 hours, 52 minutes, 29 secondslogin screen and let's fix this. Now before we go over to the IDE, I just want to clear the cookies so that we can
2:52:362 hours, 52 minutes, 36 secondssee it work once we are done. Okay. So let's come over to the IDE. And the first thing we want to do, let's install a package. We're going to install a Josh
2:52:452 hours, 52 minutes, 45 secondspackage. I'll open a new terminal window and cd into the web. And I would say pmppm add Josh. Josh is a lightweight
2:52:522 hours, 52 minutes, 52 secondsedge compactable JWT library. And we're going to need that in our proxy.ts file, which is our middleware file. Now we can
2:53:002 hours, 53 minutesclose this terminal and let's create a cookies helper, a cookies file inside the authentication features. Over here,
2:53:072 hours, 53 minutes, 7 secondswe're going to create a new file which we'll call cookies.ts. TS we're going to import cookies keys which will come from our constants and then
2:53:162 hours, 53 minutes, 16 secondswe're going to import cookies from next headers and then we can also import type next response which will come from next
2:53:242 hours, 53 minutes, 24 secondsserver. We also need to define this type for the past cookie. So type past cookie is going to be equal to this object with the name of string the value of string.
2:53:342 hours, 53 minutes, 34 secondsThe options object is going to have the path, the maximum age, HTTP only boolean, secure boolean, and the same
2:53:412 hours, 53 minutes, 41 secondssite last strict or none. So this is the type for the cookie pass. And now we're going to have this pass set cookie function which is going to pass a raw
2:53:502 hours, 53 minutes, 50 secondscookie setter into a string. This is going to take the set cookie string and return the past cookie. And inside here,
2:53:582 hours, 53 minutes, 58 secondswe're going to first of all try to get the path and also the name and the attribute from the path. All right. So let's do that. Right inside this
2:54:052 hours, 54 minutes, 5 secondsfunction, we're going to say con path is going to be equal to set cookie.split and we're going to map to it. So we have the array and then we d the structure
2:54:132 hours, 54 minutes, 13 secondsthe name value and the attribute from the paths.
2:54:182 hours, 54 minutes, 18 secondsOkay. So let's go on. Next we're going to get the separator index the name and the value. So we say con separator index is going to be name value dot index of
2:54:272 hours, 54 minutes, 27 secondsequals to and also the name want to slide from zero to the separator index.
2:54:322 hours, 54 minutes, 32 secondsAnd the value is going to be the name value dot slice the the separator index + one. So let's have the options here.
2:54:402 hours, 54 minutes, 40 secondsSo con options which of type pass cookie options is going to be this object with a path http only of force secure force
2:54:482 hours, 54 minutes, 48 secondsand same site of lax. Now we have the attributes that we got from line 19.
2:54:542 hours, 54 minutes, 54 secondsWe're going to go through each attribute. So const attribute of attribute and const separator is going to be the attribute index of equals and
2:55:022 hours, 55 minutes, 2 secondsthe key here is going to be separator if it's equals to minus one we use the attribute otherwise we slice through the attribute from zero to the separator we
2:55:102 hours, 55 minutes, 10 secondscall it lower case and then we also have the value here and the value is equals to minus one like this with the same
2:55:172 hours, 55 minutes, 17 secondscheck then we have the switch based on the key so the case where's the path we're going to inject the path to the options the case where the maximum age,
2:55:262 hours, 55 minutes, 26 secondswe're going to inject the maximum age to the options. And if it's HTTP only, we're also going to inject that to the options. If it's secure, true, we're also going to have that in the options.
2:55:372 hours, 55 minutes, 37 secondsAnd the last four same sites, we're also going to inject that to the options object.
2:55:432 hours, 55 minutes, 43 secondsSo this is the way we are going on to build like this switch over here with the key trying to return the name, the value, and the options once we have been
2:55:512 hours, 55 minutes, 51 secondsable to map through the attributes. So now outside the for loop we need to return this object which is going to have the name the value and the options.
2:56:042 hours, 56 minutes, 4 secondsOkay so over here we have this error not quite sure for the type and that's because function lacks ending return
2:56:122 hours, 56 minutes, 12 secondsstatement. I thought we had the return defined here for the object. Was it outside the for loop? No. So this object
2:56:202 hours, 56 minutes, 20 secondshas to be outside the for loop. I've tested this. You can log but I've tested so I'm sure it's working. So let's have another option which is um is off
2:56:292 hours, 56 minutes, 29 secondscookie. So function is off cookie is going to take in the name and we return boolean. So if the name equals to cookie keys off token or if the name is equals
2:56:382 hours, 56 minutes, 38 secondsto cookie keys do refresh token. Then we're also going to export another async function which is going to apply the o cookies from response. Okay.
2:56:492 hours, 56 minutes, 49 secondsSo we export async function. Apply all cookies from response. It's going to take the response of type response. Want to have access to the cookie store from
2:56:572 hours, 56 minutes, 57 secondscookies and then we can say current header of the response header.get set cookie. Then we can go to pass the
2:57:052 hours, 57 minutes, 5 secondscookie and if is of cookie based on the name we want to continue otherwise we're going to call the cookie store dot set
2:57:122 hours, 57 minutes, 12 secondsthe pass name the pass value and the past options is going to be passed over to the cookie store. Then we're going to
2:57:202 hours, 57 minutes, 20 secondsapply the cookies to the response. So let's have this function which is going to help us apply cookies to the response. It's going to be used in our
2:57:272 hours, 57 minutes, 27 secondsmiddleware file in our proxy file. So we're going to be exporting the function apply cookies to response. Going to take
2:57:352 hours, 57 minutes, 35 secondsthe response and the set cookie headers of type string array. So we say con header of set cookie headers. We're
2:57:432 hours, 57 minutes, 43 secondsgoing to pass it by calling this pass set cookie header. And if it's not an o cookie, want to continue. But if it is, we want to set the response.
2:57:532 hours, 57 minutes, 53 secondsset with the pass.name, the pass value, and the pass options.
2:57:592 hours, 57 minutes, 59 secondsAll right. So that's pretty much our cookies function helpers. Now in the action.ts, we no longer need to have this credentials include. It's not going
2:58:072 hours, 58 minutes, 7 secondsto be working for us. So we can get rid of these. And here further down we just after the redirect we also want to make
2:58:142 hours, 58 minutes, 14 secondssure we await the apply all cookies from response and want to pass rest to it. Now rest is inside the different case.
2:58:222 hours, 58 minutes, 22 secondsSo it's not available outside that block. So I'm going to declare it as a variable here and get rid of this con
2:58:302 hours, 58 minutes, 30 secondsresponse for the register. And I'm also going to do the same for the login and I'm going to have it defined just here.
2:58:372 hours, 58 minutes, 37 secondsSo I will say let's rest like this which is of type response.
2:58:432 hours, 58 minutes, 43 secondsNow this fixes the issue we had when it comes to authenticating. So we can um inspect the apply all cookies and then
2:58:512 hours, 58 minutes, 51 secondswe see what it does. It helps us to set the cookie. So it calls the cookie store and sets the name, the value and the options.
2:59:002 hours, 59 minutes[snorts] Okay. So now we are sure this is working or maybe we are not sure yet.
2:59:032 hours, 59 minutes, 3 secondsWe need to test things out. I'm going to leave the cookie here and try to authenticate myself with the same credential. So, I'll pass my email and I also pass my password and send this.
2:59:142 hours, 59 minutes, 14 secondsNow, you should keep an eye on this cookie section here. And you see we now have the access to cookie as well as the refresh cookie. Now, I'm going to come
2:59:232 hours, 59 minutes, 23 secondsback to login and no worries. This is the bug we're going to be fixing now in our proxy.ts file. Okay. So, let me close all these
2:59:322 hours, 59 minutes, 32 secondstabs that we do have open. and the proxy.ts which is again the previous middleware.ts need to be defined inside
2:59:392 hours, 59 minutes, 39 secondsthe src folder. So here we're going to have the proxy.ts file.
2:59:462 hours, 59 minutes, 46 secondsSo let's bring in the imports. We're going to be importing next response from next server. We also need to import the
2:59:532 hours, 59 minutes, 53 secondstype of next request which will come from next server. And our cookie keys which will come from superv constant. We
3:00:003 hoursneed to import everything as Jaws from Jaws. And then we app we import the apply O cookies to respond from the
3:00:073 hours, 7 secondsfeatures O cookies. We also have our O route which is the login and the register route as our authentication routes. Now we need to call our NestJS refresh endpoint and apply the cookie.
3:00:183 hours, 18 secondsSo we have the asim function refresh session. It's going to take the refresh token and the response and return a promise boolean. So we say con API URL
3:00:273 hours, 27 secondsis gotten from the env. we don't have it to return false. And then cost refresh refresh response is going to be sending
3:00:363 hours, 36 secondsthe request to the response and it's going to pass the method and the headers which is going to have the cookie with this cookie refresh token equals to
3:00:443 hours, 44 secondsrefresh token. Now if we do not get a response we return false. But if we do then we're going to apply the O cookies
3:00:513 hours, 51 secondsto the response with the refresh and also the set cookie that we get from the headers.
3:00:573 hours, 57 secondsNext, we're going to then export the asim function proxy and this is going to take in the path name from the request.next URL. Also, the access token
3:01:053 hours, 1 minute, 5 secondsis going to be the request.cookies.get want to get the access token value and same for the refresh token value.
3:01:133 hours, 1 minute, 13 secondsSo, we're going to check inside the proxy first. Want to check if it's an authent.
3:01:213 hours, 1 minute, 21 secondsSo is route is going to be equals to al routes do sum route if the path name starts with the route and also if it's protected if the path name starts with
3:01:293 hours, 1 minute, 29 secondsorganizations or the dashboard. So these are the two protected routes that we have. Then I want to check if it's a valid access token making use of Josh.
3:01:393 hours, 1 minute, 39 secondsSo we're going to start by having this let is valid false and we say if it's an access token and the process env.jwts JWTs secret. Then we have the try block
3:01:483 hours, 1 minute, 48 secondswhere we get the secret and we have the new texter.
3:01:523 hours, 1 minute, 52 secondsThe JWT assess secret. And then we're going to await judge. Which is going to take in the access token and the secret.
3:02:003 hours, 2 minutesNow in case of any error, I'll just leave this comment here that the token is expired or invalid. So invalid is going to remain declared false.
3:02:093 hours, 2 minutes, 9 secondsAll right. So the next step is to check if it's on an all route and it's valid.
3:02:133 hours, 2 minutes, 13 secondsSo here we're going to check if is all through route and invalid we want to return the next response redirect to this new URL here. So dashboard and the
3:02:223 hours, 2 minutes, 22 secondsrequest URL. Then we're going to check if it's an off route and a refresh token. Then we're going to say con response is going to be equals to await
3:02:313 hours, 2 minutes, 31 secondsnext response.redirect to the dashboard and then we're going to check if await refresh token the refresh and the response then we're going to return the
3:02:403 hours, 2 minutes, 40 secondsresponse. Okay. So you can add some logs. I've tested it and I'm sure it's working. So here we're going to check if it's protected route with no valid
3:02:483 hours, 2 minutes, 48 secondsaccess token. So if it's protected and it's not valid, I want to check if refresh token then want to fetch an update. So we're going to say if I wait
3:02:583 hours, 2 minutes, 58 secondsrefresh session, then we're going to pass the refresh token the response. Then want to return the response.
3:03:033 hours, 3 minutes, 3 secondsOtherwise, we're going to return the next response redirect the user to the login route. And then we return next respond next. So it goes over to the
3:03:123 hours, 3 minutes, 12 secondsnext middleware. And then finally we can just export our config object here with the matcher which is this for this next
3:03:203 hours, 3 minutes, 20 secondsstatic the image the five icon and all of these that we have here. So this is our proxy.ts. And once we give this file
3:03:273 hours, 3 minutes, 27 secondsa save you're going to see we should be redirected over to the dashboard route.
3:03:323 hours, 3 minutes, 32 secondsSo this is working as expected. We have everything now defined clean and um plain in our proxy.ts. If we try to go
3:03:403 hours, 3 minutes, 40 secondsto the register route as well, we are going to be redirected over to the dashboard route.
3:03:473 hours, 3 minutes, 47 secondsSo this is working as expected. Now we can go over and lay out the dashboard page. Okay. So we are done with
Chapter 5: 4-dashboard
3:03:553 hours, 3 minutes, 55 secondsauthentication. The next step is for us to create the organization page uh the organization layout. All right. So I'm going to collapse this and we're going
3:04:023 hours, 4 minutes, 2 secondsto start by creating or updating our impute inside the packages folder. So let's collapse all of these and want to come into the packages types the source
3:04:113 hours, 4 minutes, 11 secondsand inside the index.ts we're going to be exporting the interface to create an organization.
3:04:183 hours, 4 minutes, 18 secondsOkay. So let's export interface and we're going to call this create organization impute and this is going to take in the name. So the name of the
3:04:253 hours, 4 minutes, 25 secondsorganization which is a string and we can also export this interface for organization with meta which extends the organization type that we have. So we're
3:04:343 hours, 4 minutes, 34 secondsgoing to have the member count which is a number. We're also going to have the project count which is a number and the role is going to be our organization role. So the admin or the developer.
3:04:463 hours, 4 minutes, 46 secondsOkay. So now the next step is for us to set up the DTO. So in the API in the source we're going to create a new folder for the organization. So we can
3:04:543 hours, 4 minutes, 54 secondscall this orgs for organization. And then we create another folder for DTO.
3:05:003 hours, 5 minutesAnd here we create the create hyphen organization. DTO.ts file.
3:05:083 hours, 5 minutes, 8 secondsWe're going to be importing the is string and the min length from class validator. And we're also going to
3:05:153 hours, 5 minutes, 15 secondsimport the type and the type of create organization impute which is going to come from our SPA vault types. Then we
3:05:233 hours, 5 minutes, 23 secondshave the DTO. We export the class create organization DTO which implements our create organization input. So we have a
3:05:313 hours, 5 minutes, 31 secondsstring is min length of two and the name is going to be of type string like this.
3:05:363 hours, 5 minutes, 36 secondsNow typescript is complaining. So we're going to have the exclamation mark and the name and now we have the DTO set up for the create organization. We are now
3:05:453 hours, 5 minutes, 45 secondsgoing to have the service for the organization. Now we have the organizations DTO. We're going to create
3:05:533 hours, 5 minutes, 53 secondsthe organization service. So inside the ox folder, we have the ox.ts file
3:06:003 hours, 6 minutesand we're going to start by importing injectable and also not found exception from at NestJS4/.
3:06:093 hours, 6 minutes, 9 secondsWe bring in also and equals is null SQL from drizzle. We're also going to import
3:06:173 hours, 6 minutes, 17 secondsrandom bytes from crypto. We bring in the Slogify that will come from Sloify package. We're going to import Drizzle
3:06:253 hours, 6 minutes, 25 secondsservice which will come from our DB Drizzle.
3:06:293 hours, 6 minutes, 29 secondsAnd then from our database, we'll import the organization. We also bring in organization members, our project from our DB schema. And we bring in the
3:06:373 hours, 6 minutes, 37 secondscreate organization DTO which will come from the DTO. Create organization DTO.
3:06:443 hours, 6 minutes, 44 secondsWe have that injectable decorator and the class definition. And in the constructor, we're going to inject Drizzle, which will be of type Drizzle service. So this is the constructor.
3:06:543 hours, 6 minutes, 54 secondsWe're going to have different methods that would help us to build out the service. So the first method is this one
3:07:023 hours, 7 minutes, 2 secondshere. This private generate organization slog which is going to take in the name and return a string. Let's start with
3:07:093 hours, 7 minutes, 9 secondsthe base. So cons base is going to be to slify the name. We attach org lower true str and for the suffix the suffix is
3:07:183 hours, 7 minutes, 18 secondsgoing to be random byes three and we call to string hex. Now we're going to concatenate the base and the suffix like
3:07:253 hours, 7 minutes, 25 secondsthis. The next function we're going to have is get my organizations. No worries I'll explain later. We have the async get my organizations which takes in the
3:07:343 hours, 7 minutes, 34 secondsuser ID of type string. I want to return this. Drizzle select. We're going to select all of these from the organization members. So we select the
3:07:423 hours, 7 minutes, 42 secondsID. We're also going to select the name, the organization name. We're also going to select the slog which is going to be organizations.log.
3:07:503 hours, 7 minutes, 50 secondsWe also have the created art, which is the organizations.created arts. We have the updated art, which is the organizations.dated
3:07:593 hours, 7 minutes, 59 secondsart. We have the role. The role is going to be organization members.
3:08:043 hours, 8 minutes, 4 secondsWe have the project count, which is this SQL number. So we're going to cast the count which is this things projects do
3:08:113 hours, 8 minutes, 11 secondsid as integer. So which means organizations with no projects return zero. And then we have the same for member count here where we're going to
3:08:193 hours, 8 minutes, 19 secondscast. So we're going to select cast count as integer. From the organization members we have om where the
3:08:263 hours, 8 minutes, 26 secondsom.organization ID is equals to organizations do ID and the OM. That is null.
3:08:343 hours, 8 minutes, 34 secondsOkay. So now we're going to say from organization members. We're going to have this inner join which I will explain in a moment and we're going to join the organizations equals
3:08:433 hours, 8 minutes, 43 secondsorganization members.org organization ID and the organizations id. We also have the left join for the projects equals
3:08:503 hours, 8 minutes, 50 secondsthe projects.org organization ID and organizations do ID and we have this wear clause and equals organization
3:08:583 hours, 8 minutes, 58 secondsmembers do user ID matches user ID is null where the organization members do remove that now we're going to group
3:09:063 hours, 9 minutes, 6 secondsthis and we have this dot group by where we have the organization id and the me organization members do row so this is a
3:09:143 hours, 9 minutes, 14 secondsget organization we have this error for the removed at because currently it doesn't belong or we do not have it in
3:09:213 hours, 9 minutes, 21 secondsorganization members. So if we come over to our database and in the schema the organizations schema
3:09:293 hours, 9 minutes, 29 secondshere we have organization members I'll duplicate the created art so that we can have the same for the removed ads over
3:09:363 hours, 9 minutes, 36 secondshere and then I'm going to rename this created arts we have here also to be removed underscore ads and we can get rid of the not null and the default now.
3:09:463 hours, 9 minutes, 46 secondsOkay. Okay, so we're going to generate our SQL and then we run the migration that's going to happen inside the
3:09:533 hours, 9 minutes, 53 secondspackage of JSON in the API. So right here. Yeah. So let's run the migration script. So first the generate script
3:10:023 hours, 10 minutes, 2 secondswhich is going to generate the SQL as we made a change. So it's going to do its thing. Drizzle kit generate is going to
3:10:093 hours, 10 minutes, 9 secondsrun and it's going to update the drizzle kit folder as we see here. And then we run the migrate. The migrator is then going to apply the change on our
3:10:173 hours, 10 minutes, 17 secondsdatabase. So we wait for this to finish and once this is done if we double check our so now it's done. If we double check
3:10:243 hours, 10 minutes, 24 secondsthe organization service we see that the error is now gone.
3:10:293 hours, 10 minutes, 29 secondsOkay. So the next function is going to be to get organization by slog. So no worries we type out and I'll explain once we are done. We have the async get
3:10:383 hours, 10 minutes, 38 secondsorganization by slog. It takes in the slug and also the user ID. both are of type string and then we get the row. So
3:10:463 hours, 10 minutes, 46 secondsconstru is going to be await this.razer db. We want to select the id organization ID the name organizations.name.
3:10:553 hours, 10 minutes, 55 secondsWe also have the slog organizations.log.
3:10:593 hours, 10 minutes, 59 secondsWe have the created at um we also have the updated which is organizations.updated art and we have the row. So we're
3:11:073 hours, 11 minutes, 7 secondsselecting all of these from the organizations. And then we're also going to have the same inner join which I'll
3:11:143 hours, 11 minutes, 14 secondsexplain in a moment. So we have dot inner join where we have the organization members or members and
3:11:223 hours, 11 minutes, 22 secondswe're going to do some matching over here. The equals organization members id and organization do ID and we also have
3:11:313 hours, 11 minutes, 31 secondsequals for the org members user ID matches user ID and also is null where organization members do removed at.
3:11:393 hours, 11 minutes, 39 secondsWe're also going to have the wear clause where equals the organization.log is going to match this log this function we receive and we limit it by one. We
3:11:483 hours, 11 minutes, 48 secondssay if we do not find the row then we're going to throw this not found exception organization not found and then we can go on to return the row.
3:11:573 hours, 11 minutes, 57 secondsOkay, so we still have one more function to go and that is the create organization function. So we're going to say here async create org. It's going to
3:12:073 hours, 12 minutes, 7 secondstake in the DTO of type create organization DTO and also the user ID and we say con or is going to be await
3:12:143 hours, 12 minutes, 14 secondsthis.razo db want to insert into organizations table and the values we know is just going to be the name and the slug. So the name is going to come
3:12:223 hours, 12 minutes, 22 secondsfrom the DTO and the slug we're going to get it by calling this.generate slug and pass the DTO.name and we chain
3:12:293 hours, 12 minutes, 29 secondsreturning. Then we're also going to insert into organization members this newly created organization.
3:12:353 hours, 12 minutes, 35 secondsSo organiz values. So we're going to have the or ID which is going to match organization ID. Same for the user ID.
3:12:423 hours, 12 minutes, 42 secondsThe role of admin and then we can go on to return the created organization.
3:12:473 hours, 12 minutes, 47 secondsOkay. So now we have some code that we do not understand. We understand create organization. We call out drizzle. We pass in the role. So this is um pretty much self-explanatory.
3:12:573 hours, 12 minutes, 57 secondsThen we can go over to the next one which is um get organization by slug.
3:13:033 hours, 13 minutes, 3 secondsThis is where things get a little bit confusing. Here we select all of these from the organizations and this inner
3:13:103 hours, 13 minutes, 10 secondsjoin that we have here just goes on to join with members so that we verify the user access and then we also go on to retrieve that row. So that's why we have
3:13:193 hours, 13 minutes, 19 secondsthe organization ID the user ID and they remove that to be sure that this user has not been removed from this organization. and so want to verify
3:13:263 hours, 13 minutes, 26 secondstheir assets. So that's what this inner join is doing. So it's helping us to join with members to verify the user assets and then we limit it by one and
3:13:363 hours, 13 minutes, 36 secondsif there's no row then organization not found.
3:13:393 hours, 13 minutes, 39 secondsAnd if you check get my organization we still have all of these. So the select here we're selecting all these properties that we have here from the or
3:13:483 hours, 13 minutes, 48 secondsmembers. And in here we have this um project count which is where things starts getting a little bit confusing.
3:13:563 hours, 13 minutes, 56 secondsNow this is going to help us just to count the unique project that are associated with the organization and then we are casting it as an integer. So
3:14:043 hours, 14 minutes, 4 secondswe always get a get a number. Okay. So that's what we have here and the member count is pretty much the same but this is a scalar sub query that's going to
3:14:123 hours, 14 minutes, 12 secondshelp us to count all the active members for this specific organization.
3:14:173 hours, 14 minutes, 17 secondsThe join, the inner join is going to join the organizations table with organization details. The left join is going to join the project table to
3:14:243 hours, 14 minutes, 24 secondsinclude organizations to this specific user.
3:14:293 hours, 14 minutes, 29 secondsAll right, so this is all that's going on here and we can close this. Before we close up for this, I just want to update
3:14:363 hours, 14 minutes, 36 secondsthe O section pretty much quickly. So the O and I'll create two new folders.
3:14:413 hours, 14 minutes, 41 secondsOne is going to be for DTR, one is for Gats. So let's have the guard folder here and also going to have the
3:14:483 hours, 14 minutes, 48 secondsdecorator folder. So not DTO. So I'm going to move the guard right into the guard folder. And then I'm also going to
3:14:563 hours, 14 minutes, 56 secondsmove the current user. Yeah, say yes to update. Then I'm also going to move the current user decorator. I will save this
3:15:023 hours, 15 minutes, 2 secondsfile and move this right into the decorators folder here just to keep things clean. And I would say yes. And
3:15:103 hours, 15 minutes, 10 secondswe can save. Okay. So now we have the service done for the
3:15:173 hours, 15 minutes, 17 secondsorganization. The next thing we're going to be working on is to then create the controller file for the organization.
3:15:243 hours, 15 minutes, 24 secondsOkay. So we're going to focus on the controller now. So let's create the file which is going to be the or controller.ts file. And we're going to
3:15:323 hours, 15 minutes, 32 secondsdo this real quick. All right. So let's get started with the imports. We're going to be importing body decor um controller get param post use guards
3:15:413 hours, 15 minutes, 41 secondsfrom NexJS common. We also need to bring in the organization service which will come one level up the organization service. We then need our create
3:15:503 hours, 15 minutes, 50 secondsorganization DTO which will come from the DTO folder. We need our guard our JWT authentication guard which will come
3:15:583 hours, 15 minutes, 58 secondsfrom our guards folder. We also need to make use of our current user decorator which will come from the decorators folder. And the last input here is going
3:16:073 hours, 16 minutes, 7 secondsto be the type our JWT payload um JWT payload which will come from super vote types. Now this class is going to be marked with the augs in the controller.
3:16:183 hours, 16 minutes, 18 secondsSo / API/ogs and we're also going to make use of our guard. So we have the controller or like this and the guard we're going to use is our JWT
3:16:263 hours, 16 minutes, 26 secondsauthentication guard. Now inside the organization controller class we are going to instantiate the service which is going to be of type organization
3:16:353 hours, 16 minutes, 35 secondsservice. So then we have we can have the get endpoint to get my organization. So we need the current user decorator here
3:16:423 hours, 16 minutes, 42 secondsand we can call the get my organization method on the organization service and pass in the user ID. We also have this
3:16:503 hours, 16 minutes, 50 secondsget with this log here. So dynamic route here which is going to take the param.
3:16:553 hours, 16 minutes, 55 secondsSo it's going to get rid get the the slog from the param and also the user making use of the current user decorator
3:17:023 hours, 17 minutes, 2 secondshere. So we can call the get organization by slog method. We pass the slog and the user ID. Now the last one here is to create organization. So it's
3:17:113 hours, 17 minutes, 11 secondsgoing to be a post request. We're going to take the body and map it into dto here and also the user makings of the
3:17:193 hours, 17 minutes, 19 secondscurrent user decorator. So we can call the create organization method on the organization service. We pass the DTO
3:17:273 hours, 17 minutes, 27 secondsand the user ID. Now if you have this error here, it's just because we have a typo in the file that is the organization service file. So let's
3:17:353 hours, 17 minutes, 35 secondsrename it rather than or it needs to be or so with an S. So organizations service.ts. Now if the error still
3:17:433 hours, 17 minutes, 43 secondspersist after now, you can just get rid of the import and bring it back in and the error should be gone. Okay. Okay. So
3:17:503 hours, 17 minutes, 50 secondsnow we we need to create the module file, the organization module so that we can group the organization code that we
3:17:583 hours, 17 minutes, 58 secondshave written so far. We're going to have our organization module. So right here in the aux folder, let's have the aug.module.ts
3:18:073 hours, 18 minutes, 7 secondsfile. All right. So now real quick, we're going to start with the import.
3:18:113 hours, 18 minutes, 11 secondsLet's import module. Module is going to come from nest.js common. We also need to bring in the organization service
3:18:183 hours, 18 minutes, 18 secondswhich will come from the aux service. We need the or controller which will come from our augs.controller file and we
3:18:253 hours, 18 minutes, 25 secondsneed our authentication module which will come from the art module. Okay. So now once you're done with the imports let's have our module decorator so we
3:18:343 hours, 18 minutes, 34 secondscan group things. We'll start with the imports. For the imports we need to register the O module. The providers we need our organization service. the
3:18:423 hours, 18 minutes, 42 secondscontrollers we need the organization controller and the exports here we also need the or service and the then we can
3:18:503 hours, 18 minutes, 50 secondshave the class that we can call or module like this now in the import we are making use of the module over here
3:18:583 hours, 18 minutes, 58 secondsthat means we need to also go on and register the JWT O card in the module NJS dependency injection so what we're
3:19:063 hours, 19 minutes, 6 secondsgoing to do in the providers as we have the o service we're going to have our JWT authentication guard right in here and we're also going
3:19:153 hours, 19 minutes, 15 secondsto have it in the export array. We are going to export our JWT authentication guard. Okay. So the last thing we need
3:19:233 hours, 19 minutes, 23 secondsto do now is to register this organization module in our app module.
3:19:293 hours, 19 minutes, 29 secondsSo we're going to come over to the app module and right here in the application module just after module we are going to
3:19:383 hours, 19 minutes, 38 secondshave our organization module over here.
3:19:433 hours, 19 minutes, 43 secondsOkay. So now this is it for the authentication for the organization module. The next step is for us to run the migration. But before we do that
3:19:513 hours, 19 minutes, 51 secondslet's also run a quick check on our organization schema. Our focus now is going to be on the front end. But I just
3:19:583 hours, 19 minutes, 58 secondswanted to make sure that you have this removed at on the organization member.
3:20:023 hours, 20 minutes, 2 secondsSo make sure you have this and you can always double check here in your database that you also have the where do we have it the removed at which is going
3:20:103 hours, 20 minutes, 10 secondsto be null by default. So make sure you have this. This is going to be used as soft delete. So now that we confirm that we have this and you've also run the
3:20:183 hours, 20 minutes, 18 secondsmigration um the next step is for us to work on the front end. So we're going to be working on the web and right inside
3:20:253 hours, 20 minutes, 25 secondsthe web I'm going to see the outside the API folder and into the web folder. So right here inside the web we need to run
3:20:323 hours, 20 minutes, 32 secondspmppm add exios so that we can install the exios client that we can use for making requests over to the back end.
3:20:413 hours, 20 minutes, 41 secondsAnd why do we have this error? Um pmppm install. So let me run pmppm
3:20:473 hours, 20 minutes, 47 secondsinstall again. Maybe I have some um some issues over there. So I just need to run pmppm install so that it recreates the node module. So we give this a moment.
3:20:583 hours, 20 minutes, 58 secondsAnd while that is going on, maybe you do not have the issue and p x installed for you. We are going to come right into the
3:21:053 hours, 21 minutes, 5 secondsweb and we need to create inside the source folder a lib and right here in the lib we need to have one for exios.
3:21:133 hours, 21 minutes, 13 secondsSo here let's have the exios.ts file. Okay. So right in here, let's get started. Let's have the import. We need
3:21:203 hours, 21 minutes, 20 secondsto import xios from exios. And then we're going to have our con. We call it API client, which is going to be equals to x.create.
3:21:293 hours, 21 minutes, 29 secondsAnd you pass the base URL, which is going to come from our env. So the next public API URL
3:21:353 hours, 21 minutes, 35 secondsor we just go with the API URL like this. We also want to have with credentials set to true. And then we can export the API client as the default.
3:21:463 hours, 21 minutes, 46 secondsOkay, so now that this is done for me, yes, we have some errors. I'm going to um say pmppm add x again. So maybe this
3:21:543 hours, 21 minutes, 54 secondstime it is successful and we should no longer have the error. So why do we have this error over here?
3:21:593 hours, 21 minutes, 59 secondsUm yeah, so maybe it's the error that we had previously from the node modules. So that's when uh that's why we have the
3:22:093 hours, 22 minutes, 9 secondserror. So let's just wait for xios to be done. And now once XJS is done, we need to create our UTS that we're going to
3:22:163 hours, 22 minutes, 16 secondsmake use of uh make use on the server side.
3:22:203 hours, 22 minutes, 20 secondsSo let's do that while this is installing. Okay, now the installation has been completed. And I'm just going to move everything here and bring them
3:22:283 hours, 22 minutes, 28 secondsback in. So maybe that gets rid of the XS error, but we still have this error over here. So I'm just going to run the installation from the for the node types
3:22:363 hours, 22 minutes, 36 secondsagain. So I'm going to take this and rather make use of Okay. Yeah. So the error is gone. So let's give this a
3:22:433 hours, 22 minutes, 43 secondssave. And now we've give this um save this. I'm going to exit from here. And inside the source folder, we're going to
3:22:513 hours, 22 minutes, 51 secondscreate another folder which we'll call server utils. This is going to be where we have um some utilities. And in here,
3:22:583 hours, 22 minutes, 58 secondswe're going to be creating a util.ts file. So these are utilities that we'll most likely be using on the server side
3:23:053 hours, 23 minutes, 5 secondshere. So here, let's go on and import cookies. We are going to import cookies from next for/ headers. We also need to
3:23:133 hours, 23 minutes, 13 secondsbring in redirect which will come from next navigation. And then we need to bring in our cookie keys which will come from the super vote constants. So
3:23:223 hours, 23 minutes, 22 secondsremember that. And then we can export this async function. And this async function we call it retrieve token from
3:23:303 hours, 23 minutes, 30 secondscookie which is going to return a string. So a promise that resolves to a string.
3:23:363 hours, 23 minutes, 36 secondsSo first let's have our cookie store. So we're going to say con cookie store is going to be equals to await cookies. And then we can say cons token is going to
3:23:453 hours, 23 minutes, 45 secondsbe equals to our cookie store. And then want to get a cookie with the cookie keys dot assess token name. And then we
3:23:523 hours, 23 minutes, 52 secondsassess the value. So if we do not find the token, let's redirect user to login. So means the user is not authenticated.
3:24:003 hours, 24 minutesThen if we have a token, we can return the token here. [snorts] Okay. Okay, so this is going to help us to retrieve the
3:24:073 hours, 24 minutes, 7 secondsaccess token from the HTTP only cookie and it's going to redirect to /lo if this is missing. All right, so now we
3:24:153 hours, 24 minutes, 15 secondshave this error over here. Okay, so the error is gone. I didn't do anything special. I just had to reload um VS code. So sometimes it happens. Okay, so
3:24:243 hours, 24 minutes, 24 secondsnow let's go on and create the features and the organization features. So right here in the features, we already have one for authentication. We need a new
3:24:313 hours, 24 minutes, 31 secondsone for the organization. So organization or logic that belongs to organization is going to leave right inside the features. So here we're going
3:24:383 hours, 24 minutes, 38 secondsto have the organization like this. And here in the organization we're going to create a new file which is going to be
3:24:453 hours, 24 minutes, 45 secondsthe organization helpers like this dots server file here. TS file. Okay. So this
3:24:523 hours, 24 minutes, 52 secondsis it. Organization helpers. Server.ts file. And this is going to create some logic that we can reuse um over in the
3:25:003 hours, 25 minutesorganization. Okay. So I'm going to collapse this and let's start by bringing in redirect. Redirect will come from next navigation. We also need to
3:25:093 hours, 25 minutes, 9 secondsthen import our API client which will come from our exios. So our lib utios we also need to bring in our retrieve
3:25:173 hours, 25 minutes, 17 secondstoken from cookie which will come from the server utilities. So server at/sut/uts.
3:25:243 hours, 25 minutes, 24 secondsThen we need to bring in the cookie keys which will come from our super vote constants. We also need to bring in the type our organization with meta type
3:25:323 hours, 25 minutes, 32 secondswhich will come from at super vote for/types.
3:25:363 hours, 25 minutes, 36 secondsNow we have this let's export uh async and async function which is retrieve my organizations from API. So this is going
3:25:443 hours, 25 minutes, 44 secondsto return the organization with meta the promise here and we're going to first get the token. So retrieve the token
3:25:533 hours, 25 minutes, 53 secondsfrom cookie. So remember this is going to redirect user to login otherwise we have a token. So in the try block we are going to then make a request. So API
3:26:023 hours, 26 minutes, 2 secondsclient get the response type is the organization with meta list here. So it's /s and then we're going to have in
3:26:093 hours, 26 minutes, 9 secondsthe headers the cookie which is going to be the access token equals to then the token here. Okay. So we want to forward
3:26:173 hours, 26 minutes, 17 secondsthe access token from the cookie manually and then we're going to return our data. Now if something goes wrong, we just want to redirect the user to /lo
3:26:263 hours, 26 minutes, 26 secondspage. And next we're going to have another async function which we call retrieve organization by slog from API.
3:26:343 hours, 26 minutes, 34 secondsSo this is going to also go and take in the slog which is a string. And first we also want to read the token. So we're going to retrieve the token from cookie.
3:26:443 hours, 26 minutes, 44 secondsAnd we're going to have our try catch block. But in the try block we are going to have data by making a request our API
3:26:513 hours, 26 minutes, 51 secondsclient.get so/org. And then we have this log and the headers. We're going to have the cookie which is going to have the
3:26:593 hours, 26 minutes, 59 secondscookie keys assess token. So equals to the token here. And then we're going to return the data. And if something goes wrong that means you're not a member of this organization or it doesn't exist.
3:27:103 hours, 27 minutes, 10 secondswe are going to redirect you to slashorganizations path just like this.
3:27:153 hours, 27 minutes, 15 secondsOkay. So now this is the different helpers that we need. So the next step for us is to work on the dashboard page and then build up the sidebar list the
3:27:243 hours, 27 minutes, 24 secondsorganizations which we're going to be working on next. We are going to be working on our dashboard. Okay. So what I'm going to do I'm going to clear this
3:27:323 hours, 27 minutes, 32 secondsand we are the super vote folder. So if we double check the package.json JSON over here we have the dev command which is going to start up both the API and
3:27:413 hours, 27 minutes, 41 secondsalso our web. So I'm going to say pnpm dev here so that the API and also the front end can start concurrently and we
3:27:503 hours, 27 minutes, 50 secondshave the front end on port 301. So let's refresh this localhost 3001 which is
3:27:573 hours, 27 minutes, 57 secondsgoing to show us the content of our front end page. So it's currently compiling the path and now we see the status. Okay. All right.
3:28:073 hours, 28 minutes, 7 secondsSo let's come over to / login. So if we authenticated you know that we are redirected over to the dashboard. We have an error here in the client.
3:28:163 hours, 28 minutes, 16 secondsschema.ts file. So I wonder why we do have the error. Why it cannot find z. It looks like my dependencies are having some issues.
3:28:253 hours, 28 minutes, 25 secondsSo it can't find zod. So let's install zord manually. So I'm going to CD into the apps and into the web and I would
3:28:323 hours, 28 minutes, 32 secondssay pmppm add z. You shouldn't have this error. I just have some dependencies error. But if you do just as I do, you
3:28:403 hours, 28 minutes, 40 secondscan go on to install zord and the error should be gone. So now that z has been installed or is installing. I'm just
3:28:483 hours, 28 minutes, 48 secondsgoing to give this a refresh. Yeah, we still have the error. So we give this a moment. Now it is done. We see the content of the login page. Now I'm going
3:28:553 hours, 28 minutes, 55 secondsto authenticate myself with Google just real quick over here. And we should be redirected over to the dashboard page.
3:29:043 hours, 29 minutes, 4 secondsJust give this a moment.
3:29:063 hours, 29 minutes, 6 secondsAnd yeah, so we're here in the dashboard page and it says this page cannot be found. So that's the logic we wrote during the authentication
3:29:143 hours, 29 minutes, 14 secondsum side of things. Now I'm going to close all these things that we have here so that we can have this um smart redirect after a user logs in. We do not
3:29:223 hours, 29 minutes, 22 secondswant the user to see this page. We want the user to go straight up to an organization page or a page where they can select their organization. So that logic is going to be right inside the
3:29:313 hours, 29 minutes, 31 secondsapp and then we have a new page for the dashboard just like this and we're going to have the page tsx. So this is the
3:29:403 hours, 29 minutes, 40 secondscontent or it's going to be the content of this page that we have over here. Now if we give this a refresh we still get this page cannot be found or maybe it's
3:29:483 hours, 29 minutes, 48 secondsstill reloading. Now we see that the default export is not a react component because we are not exporting anything here. So let's go on and have the
3:29:573 hours, 29 minutes, 57 secondscontent of this page real quick. We are going to be importing redirect which will come from next navigation and we're also going to import we're also going to
3:30:053 hours, 30 minutes, 5 secondsimport the retrieve my organizations from API which is going to come from the features and we have the organization and then we have the organization helpers.
3:30:153 hours, 30 minutes, 15 secondsSo remember this file is going to help us to retrieve the organization. So here let's export the default async function.
3:30:233 hours, 30 minutes, 23 secondsWe can call this like the dashboard page. And over here we're going to get the organizations and this is going to await the retrieve from my organizations
3:30:313 hours, 30 minutes, 31 secondsfrom API function call and then let's check the length. So if the organization length is equals to one then we're going
3:30:393 hours, 30 minutes, 39 secondsto redirect the user to that organization. to slanizations and then the first organizations log/ projects.
3:30:473 hours, 30 minutes, 47 secondsUm otherwise we're going to redirect the user to just slash organizations. That means you have multiple organizations in this page. This is where you can go on
3:30:553 hours, 30 minutes, 55 secondsto choose an organization here. So let's give this a save. And if we come back here you see that this is going to refresh. I have multiple organization or
3:31:033 hours, 31 minutes, 3 secondsmaybe I don't and I'm redirected over to just a specific organization. That means if we come here and console.log blog
3:31:103 hours, 31 minutes, 10 secondsorganization. We're going to see that we have just one organization here. So, or
3:31:173 hours, 31 minutes, 17 secondslike this. If we give this a save, you open your terminal, you should see this.
3:31:223 hours, 31 minutes, 22 secondsWe should see the list of organizations here. If we do not, yeah, we are not on the dashboard page with the redirect has already happened and that's why we see this. Okay. So, what's going to happen?
3:31:323 hours, 31 minutes, 32 secondsLet's manually come over to dashboard again and then we're going to see the logs printed here. So we see this and I
3:31:393 hours, 31 minutes, 39 secondsbelong to one organization and because I belong to an organization I am redirected to that specific organization. So at what point does the
3:31:483 hours, 31 minutes, 48 secondsorganization get created remember when a user is authenticating. So we have the API and in the source we have the O we
3:31:563 hours, 31 minutes, 56 secondshave the yeah I think that's o service. Yeah, we have the O service and right here in the O service, we have the let's see. Yeah,
3:32:063 hours, 32 minutes, 6 secondsso we have this and this is checking. So the email and password register, you see over here we are creating an organization for this user. So once you
3:32:133 hours, 32 minutes, 13 secondssign up, you immediately going to have an organization and the same happens whenever you also make use of the
3:32:223 hours, 32 minutes, 22 secondshandle o user. So you can see over here we also going to create an organization for the user. Once a user signs into
3:32:293 hours, 32 minutes, 29 secondssigns up or signs in making use of the oorthth provider. So this is what is going on here. The next step for us is
3:32:363 hours, 32 minutes, 36 secondsfor us to install sh CN UI because currently the user is going to go over to this page. So this page which at this point in time we do not have it. So
3:32:453 hours, 32 minutes, 45 secondslet's go on to install shhat CN UI. So what we're going to do now is to come right here and I'll just quit the
3:32:533 hours, 32 minutes, 53 secondsterminal for now. And I would come right into the apps and into the web. And right here into the web, you want to install the sidebar and also the
3:33:023 hours, 33 minutes, 2 secondsdrop-own menu and the avatar. So PMPMDLX shen at latest at sidebar, the drop-own
3:33:093 hours, 33 minutes, 9 secondsmenu as well as the avatar. So once this installation is done for us, the next step is now for us to work on our sign
3:33:173 hours, 33 minutes, 17 secondsout feature. So right here I'm just going to collapse this and I'm coming right into the features O. So right here
3:33:253 hours, 33 minutes, 25 secondsin the web want to come right into the features and into the O. And right here we need one for sign out. So I'm going
3:33:323 hours, 33 minutes, 32 secondsto create this new file which I would call Oops. So I click here create this new file which I would call sign out.ts
3:33:403 hours, 33 minutes, 40 secondslike this. So sign out. I'll have this hyphen here. TS file here. So this sign out is going to help
3:33:493 hours, 33 minutes, 49 secondsus to sign out the user. So first we're going to mark it as a server component making use of the use server and then we
3:33:563 hours, 33 minutes, 56 secondsalso need to bring in redirect from next navigation. We need to bring in cookie which will come from our next headers.
3:34:033 hours, 34 minutes, 3 secondsUm we also need to bring in cookie keys which will come from the super vote constants just like this. And now we can going to have the function and the
3:34:123 hours, 34 minutes, 12 secondsfunction we can call it sign out. So we export async function we call it sign out and here we're going to start by
3:34:193 hours, 34 minutes, 19 secondscalling fetch. So I just want to make use of fetch here which is going to call the API URL/ logout. The method is going to be post
3:34:273 hours, 34 minutes, 27 secondslike this and we want to clear the cookies on the next JS side of things as well. So we say con cookie store is
3:34:343 hours, 34 minutes, 34 secondsgoing to be await cookies and then want to call cookie store.delete. Remember we want to delete the access token as well as the refresh token. So we get the
3:34:433 hours, 34 minutes, 43 secondsaccess token from the cookie keys and we're also going to delete the cookie keys refresh token and we're going to
3:34:503 hours, 34 minutes, 50 secondsredirect the user over to the login route. Okay. So why do we have this error over here? So if we just on maybe
3:34:583 hours, 34 minutes, 58 secondsit's not an error. We see three um files were skipped and the two tip component has been added. Okay. So remember to
3:35:063 hours, 35 minutes, 6 secondswrap your app with the two tip provider component and it gives us an example here like this how we can make use of the totip. Once we get there we're going to update the file to make use of it.
3:35:163 hours, 35 minutes, 16 secondsOkay. So now we're going to be creating or working on the application sidebar.
3:35:203 hours, 35 minutes, 20 secondsNo worries. The way we're going to approach this I'm going to provide us with some templates that we do not have to type most of the JSX. So the next video we're going to have a template
3:35:293 hours, 35 minutes, 29 secondsfolder right inside here. Somewhere here we can have a template and I'll give it a name like let's say the sidebar or something like that and we're going to
3:35:373 hours, 35 minutes, 37 secondsmake use of that template and then make it dynamic so we do not have to type out all the JSX. Okay, so let's um build on
3:35:453 hours, 35 minutes, 45 secondsthat next. Now we're going to be building the dashboard layout. So how do we get started? I'm going to zoom out a little bit. As you can see, we have the
3:35:533 hours, 35 minutes, 53 secondsbrowser and we also have our coding editor side by side so that it's easier for us to see the changes as we apply
3:36:003 hours, 36 minutesthem. I'm going to close all these tabs that we do have open. And there's something new which I'm going to show us in a moment. So, I'm going to CD outside
3:36:083 hours, 36 minutes, 8 secondsthe web so that from the root we can run the pmppm dev command. And if we give this a refresh, we're going to see like this page is not found which is because
3:36:173 hours, 36 minutes, 17 secondswe do not have the organization page yet. Now I want to show something which is new and that is not inside the API
3:36:243 hours, 36 minutes, 24 secondsfolder inside the web. I actually do have a new folder that I created and that new folder is this template folder.
3:36:343 hours, 36 minutes, 34 secondsSo it's actually outside the source. You would see it here and you want to get this from the GitHub. I do not have it
3:36:413 hours, 36 minutes, 41 secondsin a GitHub yet as I'm recording but this templates here you get it from the GitHub. These are the different boiler
3:36:493 hours, 36 minutes, 49 secondsplate code. As you can see, it's quite a lot for us to type or type through this on camera, but we do have some placeholders here like the organization
3:36:573 hours, 36 minutes, 57 secondsname, which we're going to also have some logic.
3:37:023 hours, 37 minutes, 2 secondsSo, you want to grab this um from the you want to grab this from the GitHub.
3:37:093 hours, 37 minutes, 9 secondsWe also have the dashboard layout, which you see is bare minimum for now. You can ignore the warnings this because it's
3:37:153 hours, 37 minutes, 15 secondsnot inside the SRC folder. We also have the organization page, the project page,
3:37:223 hours, 37 minutes, 22 secondsand the top navigation. Okay, so let's see how we can use this.
3:37:283 hours, 37 minutes, 28 secondsUm, yeah. So, let's start with the dashboard layout. So, I'm going to grab this. You want to take this code and you
3:37:353 hours, 37 minutes, 35 secondswant to copy this. And now, this dashboard layout is going to be inside the source. So we have the app and right here in the app we are going to create
3:37:443 hours, 37 minutes, 44 secondsthis route grouping in Nex.js. So we call this dashboard and this is not going to affect the URL.
3:37:533 hours, 37 minutes, 53 secondsOkay. So we call this dashboard and in here we're going to have the layout folder not the file. So it's meant to be a folder layout folder actually a file.
3:38:033 hours, 38 minutes, 3 secondsSo let's have the file layout.tsx file. Now inside this layout.tsx tsx that's what you that's where you want to
3:38:113 hours, 38 minutes, 11 secondspaste in this code from the dashboard layouts okay so I'm going to drop in this code here and we have some errors
3:38:193 hours, 38 minutes, 19 secondsbecause we do not have the sidebar or we do not have the top navigation actually that's the same reason why we have the error over here so no worries we're
3:38:273 hours, 38 minutes, 27 secondsgoing to have that in a moment but currently we also do not have the dashboard page we in the organizations page so we're not even going to see
3:38:353 hours, 38 minutes, 35 secondsthese changes but what we can do I'm just going to comment these two out and we give this a save.
3:38:433 hours, 38 minutes, 43 secondsNow once we give this uh I'm just going to comment these two out and give this okay I'm just going to leave them in so that we do not have the usage errors
3:38:513 hours, 38 minutes, 51 secondsthere as well. And now in this dashboard layout we are going to have a function.
3:38:563 hours, 38 minutes, 56 secondsNow this function is going to help us to get the current user and also going on to decode the JWT payload.
3:39:063 hours, 39 minutes, 6 secondsOkay. So real quick, I'm going to just have it maybe somewhere here.
3:39:113 hours, 39 minutes, 11 secondsI'm [snorts] going to have this async function which we can call get current user and then it's going to get the token. Remember our YouTube retrieve the
3:39:193 hours, 39 minutes, 19 secondstoken from the cookie which we need to import. And then we want to have the payload. So con payload is going to be the JSON.pass.
3:39:293 hours, 39 minutes, 29 secondsI want to pass the buffer from the token. I'm going to split from the equals and take in the second element which is of base 64 convert to string.
3:39:383 hours, 39 minutes, 38 secondsThen want to return the object that's going to have the email that we get from the payload and also the name which is
3:39:443 hours, 39 minutes, 44 secondsgoing to be null like this. Now we have this error because we need to bring in this. So this needs to come from our
3:39:513 hours, 39 minutes, 51 secondsserver utils and the reason we are doing this is because we um have verification that has already happened in our middleware and also in our API card. So
3:40:003 hours, 40 minuteswe just want to go on and decode JWT payload is B 64. So we need to go on and verify it here. So now we have the get
3:40:093 hours, 40 minutes, 9 secondscurrent user which we are not making use of. We're going to use it right inside here. So here we're going to say con
3:40:163 hours, 40 minutes, 16 secondslike this is going to be equals to await. We're going to await promise dot promise.all.
3:40:233 hours, 40 minutes, 23 secondsWe're going to retrieve the token from the cookie. So we're going to call this and this is then going to give us access
3:40:303 hours, 40 minutes, 30 secondsto the oops not this retrieve. So here we're going to retrieve my organizations from API like this. So we need to call
3:40:393 hours, 40 minutes, 39 secondsthis function and the next thing we're going to do here is to get the current user. So we're going to say get current user like this. So here we're going to
3:40:483 hours, 40 minutes, 48 secondshave the organization which is going to be like all the organizations. So we can call it aux and this get current user is
3:40:553 hours, 40 minutes, 55 secondsgoing to give us the user here. So [snorts] now we have this we can then pass it as properties. We're going to
3:41:023 hours, 41 minutes, 2 secondspass it props to the application sidebar. So here we're going to have orgs or it's going to need aux which is going to be equals to or
3:41:113 hours, 41 minutes, 11 secondsalso going to pass in user which is then also going to be equals to user. So this is all the code that we need for this.
3:41:193 hours, 41 minutes, 19 secondsNow the next thing we're going to do is to work on the application sidebar and also the top navigation components.
3:41:273 hours, 41 minutes, 27 secondsActually I think we should work on this page next. I think we should work on this page that we have over here which is currently a 44 page so that we can see the changes as we apply them. So
3:41:363 hours, 41 minutes, 36 secondsright here in the dashboard we are going to be creating a new folder for organizations which is going to be like this organizations part that we have
3:41:443 hours, 41 minutes, 44 secondsover here. And the next we're going to have is the slog because this is the organization slog. It's dynamic. So to have the dynamic route we're going to
3:41:513 hours, 41 minutes, 51 secondsuse the square brackets here. And in here we're going to have the slog. And then in here we want to have this project folder. So right inside the log we're going to have projects like this.
3:42:033 hours, 42 minutes, 3 secondsAnd then we're going to have the page.tsx which is going to be the content of this page over here. It's going to see it's going to be render.
3:42:113 hours, 42 minutes, 11 secondsAnd then we're going to see like we're not exporting the default here. So we're not exporting default. We already have the error that we have from the layout
3:42:183 hours, 42 minutes, 18 secondsbecause this is now coming in here because that's where we have this page.
3:42:223 hours, 42 minutes, 22 secondsSo this layout is already throwing these errors that we do not have the application sidebar and the top navigation component which we are trying
3:42:303 hours, 42 minutes, 30 secondsto use here. So I'm going to comment these out and we're going to bring them in when we do have them and save this so that we can see the content. Now we're
3:42:383 hours, 42 minutes, 38 secondsstill going to have error here because we're not exporting default and that actually shows you the way your page gets rendered. The layout is going to
3:42:453 hours, 42 minutes, 45 secondsget called first. So we seeing the error from the layout. Now we fixed it. We are seeing the error for the page because after the layout then the page component
3:42:543 hours, 42 minutes, 54 secondsis going to get rendered. Now speaking about the page component, let's get the template. The template is going to be right here from the template. We have
3:43:013 hours, 43 minutes, 1 secondthis um project page. So this is what we want to use. So you want to copy everything that we have over here so that we can then make it dynamic. So I'm
3:43:103 hours, 43 minutes, 10 secondsgoing to copy this and paste it in here and let's save. And once we save, we're going to see this rendered. It's going to be rendered, you know, without the
3:43:183 hours, 43 minutes, 18 secondsside navigation and also the top navigation. So this is what we see over here. Okay.
3:43:253 hours, 43 minutes, 25 secondsNow the next thing we need to do is to make this dynamic. So we need to find a way to get the params so that we can retrieve the slog. And to retrieve the
3:43:323 hours, 43 minutes, 32 secondsparams, we're going to come over here like this. And we can oops, we're going to come over here. And inside here, we're going to get access to the params
3:43:413 hours, 43 minutes, 41 secondsobject. And inside here, we can say this is going to be of type object like this.
3:43:463 hours, 43 minutes, 46 secondsSo we can have the params. And the params is going to be of type of promise. And that promise once it resolves is going to resolve to this
3:43:553 hours, 43 minutes, 55 secondsobject here. So that we can have the slug. And the slog is going to be of type string. Oops. Slog like this. Of type string.
3:44:063 hours, 44 minutes, 6 secondsOkay. So now we have access to the params. And from the params we can then have access to the slog. And you might say why slo and that's because we named
3:44:133 hours, 44 minutes, 13 secondsthat folder slog. So this is the folder here. We named it log. And that's why we can use slo over. If you named it ID or whatever you want to use ID here. So
3:44:213 hours, 44 minutes, 21 secondshere we're going to say const and then we're going to dstructure this log which will come from awaiting params. So we're going to await params like this. Now we
3:44:313 hours, 44 minutes, 31 secondsare awaiting params you can see here we have access to this log. Now this log if you log this to the console you're going to see that this log over here is going
3:44:393 hours, 44 minutes, 39 secondsto be this allar bright organization log from the URL which is this. Okay. So now we are sure we are getting this log. The
3:44:463 hours, 44 minutes, 46 secondsnext thing now is to get the membership here. So we want to go and verify the membership. If you're not a member of this organization you're going to be
3:44:533 hours, 44 minutes, 53 secondsredirected to /organizations. This is just to make sure that users are not able to go to organizations that they do not belong to. So we're going to say
3:45:023 hours, 45 minutes, 2 secondshere con org and or is going to be or like this is going to be equal to await and then we could call retrieve my
3:45:113 hours, 45 minutes, 11 secondsorganization or retrieve organization by slog just like this from API and here we're going to pass in the log and give
3:45:183 hours, 45 minutes, 18 secondsthis a save. Now you can always double check this. I would not always double check due to time. But if you double check this, you can see this is sending a request to organization and the slog.
3:45:283 hours, 45 minutes, 28 secondsAnd over there in the API, if we just quickly come over here to the API, to the source, to the organization, and to the organization log, the controller.
3:45:373 hours, 45 minutes, 37 secondsOops, this here we have the SLO. So this is the endpoint and you can see it's calling this service get organization by
3:45:443 hours, 45 minutes, 44 secondsSLOG. And this service is doing all of this just to go on and verify that this user is a member of that organization.
3:45:513 hours, 45 minutes, 51 secondsSo we have this check over here the organization ID as well as user ID and if this user is not there we're going to throw like organization not found. Okay.
3:46:023 hours, 46 minutes, 2 secondsSo that's what we are doing in the front end. We're making sure that the user is a member of the organization and here we are going to then go on and display the
3:46:113 hours, 46 minutes, 11 secondsorganization the organization name. So here where we have the placeholder no project yet in organization name we are
3:46:183 hours, 46 minutes, 18 secondsgoing to replace this to or dot name like this and we can give this a save.
3:46:243 hours, 46 minutes, 24 secondsNow this organization name we have here you see no project yet in Alibrite organization. So this is the empty states which we're going to be improving
3:46:323 hours, 46 minutes, 32 secondson as we go so that users can go on to like create organiz um projects and all. So now this is the content of this page.
3:46:403 hours, 46 minutes, 40 secondsWe're going to continue and the next step is for us to work on the organization page which is like if you
3:46:483 hours, 46 minutes, 48 secondshave multiple organization where you can list or display the different organizations the user belong to. So working on that page is pretty much
3:46:553 hours, 46 minutes, 55 secondsstraightforward. Let's also come here and here we're going to create the new file. So now inside the organization
3:47:033 hours, 47 minutes, 3 secondsthis is the slog but now we need the organization page. So here we're going to have the page.tsx file. Although it's not inside this log, it's this root
3:47:123 hours, 47 minutes, 12 secondsorganizations page here. So that is /organizations like this. Now we're still going to be um we're going to come over here. So this is the page we're
3:47:203 hours, 47 minutes, 20 secondstrying to revisit over here. And you can see here we have this error here just like this. All right. So I'm going to collapse this and let's get the template
3:47:293 hours, 47 minutes, 29 secondsfor this page. So we're going to come to the templates and this template is the organizations page. So this one here,
3:47:363 hours, 47 minutes, 36 secondsthis is what we need. So I'm going to take this. I'm going to copy this and I'll paste it over here like this. Now we can give this a save and we're going
3:47:443 hours, 47 minutes, 44 secondsto see the content of this page over here. So we see where the user can click and this is going to go over to
3:47:513 hours, 47 minutes, 51 seconds/organization/organizations log/ projects over here. So we also need to update this so that we display the
3:47:583 hours, 47 minutes, 58 secondsspecific organization. So the first thing we need to do is to go and fetch the organizations just as we did previously. So right here we need to get
3:48:063 hours, 48 minutes, 6 secondsthe organization. So we call the retrieve my organizations from API and you can always double check what this is going to do. It's sending a request to
3:48:143 hours, 48 minutes, 14 secondsthe API client/organization so that we can retrieve the organization this user belongs to. You can verify what the API
3:48:213 hours, 48 minutes, 21 secondsis doing by checking the back end. And now we have all the organizations we are going to map through the organization.
3:48:283 hours, 48 minutes, 28 secondsSo here rather than just display this link as you can see this is currently hardcoded. We need to fix that. We also need to fix this. And we also need to
3:48:353 hours, 48 minutes, 35 secondsfix this. So I'm going to cut this link that we have over here and replace with this. And we're going to say the aux do
3:48:423 hours, 48 minutes, 42 secondsmap which is then going to give us access to each organization like this.
3:48:473 hours, 48 minutes, 47 secondsAnd we're going to return the link component that we had previously. So I do not know why we have the error.
3:48:543 hours, 48 minutes, 54 secondsIf you hover on this, yeah, we are missing the key prop. We're going to add that in a moment. But now we have the organization which is of type organization with meta.
3:49:043 hours, 49 minutes, 4 secondsSo here let's have the key. The key is going to be the organization id. So that's going to be our key. We have the href and we have the class name which is
3:49:123 hours, 49 minutes, 12 secondswhat we are trying to avoid by having this template. So we do not need to type out all of this. Now the href we are going to be updating this. So this needs
3:49:193 hours, 49 minutes, 19 secondsto be dynamic. I'm going to cut this and oops and replace it with this like this.
3:49:253 hours, 49 minutes, 25 secondsAnd I'll paste this in. So this /organizations and the organizations log is meant to be dynamic. So we can cut this and replace it with this dollar
3:49:333 hours, 49 minutes, 33 secondssign like this. And we also missed our back tick. So let me replace this with a back tick here and also with a back tick
3:49:413 hours, 49 minutes, 41 secondshere like this which is then going to make sure we have this dynamic interpolation here. And in here we want to have the organization because we are
3:49:493 hours, 49 minutes, 49 secondsmapping. So each organization we want to display. We want to have the link go to this log/ project. And here we have the
3:49:563 hours, 49 minutes, 56 secondsbuilding two which is this icon that we have over here. And here rather than have zero projects, zero members, we want this to be dynamic. So once we go
3:50:043 hours, 50 minutes, 4 secondsthrough the we're going to say the organization dot project count like this. And then we're going to have the
3:50:123 hours, 50 minutes, 12 secondsproject count if it's equals to one. So we're going to say organization. Count that is equals to one. We want to say
3:50:193 hours, 50 minutes, 19 secondsproject like this. Otherwise, we are going to say projects. Oops. We're going to say project like this. And then I'm
3:50:283 hours, 50 minutes, 28 secondsgoing to have this slash over here. We also want to do the same for the we save this. We're going to see our project because we do not have any project. Now
3:50:363 hours, 50 minutes, 36 secondswe're going to do the same thing for the member count. So we're going to have the organization dot member count. If that is equals to one
3:50:453 hours, 50 minutes, 45 secondsone like this, we're going to show member member. Otherwise, we're going to show
3:50:513 hours, 50 minutes, 51 secondsmembers here. Otherwise, members like this. So, now we give this a save. We're going to see the member display here,
3:50:593 hours, 50 minutes, 59 secondswhich is going to be like we have one member. So, we need to see like the member count. And the reason why we do not see the member count is because we
3:51:063 hours, 51 minutes, 6 secondsdo not render the member count. So, we need to render the member count here.
3:51:113 hours, 51 minutes, 11 secondsSo, we're going to say the organization domember count like this. And we give this a save. Now we're going to see one
3:51:183 hours, 51 minutes, 18 secondsmember over here and we also need some white space. So which I will just like this and give this a save. Okay. So now
3:51:273 hours, 51 minutes, 27 secondswe have this done. This is the organization page and clicking on this page is going to take us straight up to the project page of that organization.
3:51:363 hours, 51 minutes, 36 secondsThe next thing now we're going to be working on is the layout. So we need to make sure that over here we need to have the application sidebar as well as the
3:51:453 hours, 51 minutes, 45 secondstop navigation. I think we should start with the top navigation. So actually before we do this because we're going to
3:51:533 hours, 51 minutes, 53 secondsmake use of the tool tip, let's not forget to have the layout. So this is our main layout over here. We need to
3:52:003 hours, 52 minutesmake sure we map or have the two tip provider. So remember that two tip provider warning that we got last time.
3:52:063 hours, 52 minutes, 6 secondsLet's make sure we have the tool tip provider here. Else we're going to have an error just like this. And then we have this here. So we can save this.
3:52:153 hours, 52 minutes, 15 secondsThis is in the app layout.tsx. So inside this file here and I'm going to exit from here. Now we can start with the top navigation. I'm going to bring this in.
3:52:253 hours, 52 minutes, 25 secondsI would also bring in the imports here.
3:52:283 hours, 52 minutes, 28 secondsAnd this needs to be inside the component top navigation. So let's have it right there inside the component folder. We are going to not in the UI.
3:52:363 hours, 52 minutes, 36 secondsSo in the component we're going to create the new file which is the top navigation.tsx file. So this is where it is not inside
3:52:453 hours, 52 minutes, 45 secondsthe UI folder. Now let's get the template for this. And the template is here. We have the top navigation here.
3:52:523 hours, 52 minutes, 52 secondsSo you want to bring this in. Just copy this here. And I would get rid of this.
3:52:583 hours, 52 minutes, 58 secondsAnd I'll paste it in here. So this is the top navigation. We can go and give this a save. And we should no longer
3:53:053 hours, 53 minutes, 5 secondshave the error over here. It's going to rebuild. And this is for now. We do not need to make extra work here. This is
3:53:123 hours, 53 minutes, 12 secondsgoing to be like um as you can see here, this button is disabled um because we do not have like the switcher. So we have not implemented
3:53:213 hours, 53 minutes, 21 secondsthat yet. So for now it's just going to be disabled and it's going to be displayed over here. We also have the sidebar trigger and the separator which
3:53:293 hours, 53 minutes, 29 secondswe might not see over here. But if you click on this, it doesn't do anything yet because we do not have the sidebar. That's what we're going to work on next.
3:53:373 hours, 53 minutes, 37 secondsBack to the layout. Let's bring in the sidebar. And we're also going to bring in the application sidebar. And we can save this. Our application would break
3:53:463 hours, 53 minutes, 46 secondsagain. And now let's have the sidebar component. I'm going to copy this. And still inside the component folder, we
3:53:533 hours, 53 minutes, 53 secondsare going to have the sidebar.tsx file. So this is our sidebar.tsx. DSX
3:54:003 hours, 54 minutesfile and we are going to get this from the template. So let's come back to our templates and this is our application
3:54:093 hours, 54 minutes, 9 secondssidebar. We're going to copy everything that we have here. I'll then exit out from here and I'll paste this in here.
3:54:163 hours, 54 minutes, 16 secondsNow something I want to see here already is this form. We have our sign out action. If you come over here, you see
3:54:233 hours, 54 minutes, 23 secondsthat this is our sign out that we did right together. So now this has already been passed over here to the form
3:54:303 hours, 54 minutes, 30 secondsaction. The sign out is something you should know. So once we click on this the sign out functionality is going to work. So now I've saved the file and
3:54:393 hours, 54 minutes, 39 secondswe're going to then see this. If we click here we then see our application sidebar is working as expected.
3:54:483 hours, 54 minutes, 48 secondsOkay. So now we need to do just minor changes here to make sure that it's dynamic and it's not hardcoded. And to
3:54:563 hours, 54 minutes, 56 secondsmake sure it is not hardcoded, we need to get the current organization. So we have the params. We are not making use of the params. So let's say the current
3:55:043 hours, 55 minutes, 4 secondsorganization or current or is going to be equals to the ors and want to call oops not organization. Want to call
3:55:123 hours, 55 minutes, 12 secondsorugs. And the reason why we have or is because we need to set up this error is because we need to set up the props here. So remember if we come over here
3:55:213 hours, 55 minutes, 21 secondsto the layout I'll just bring out these two and bring them back in we can see that this is needs this organization and
3:55:293 hours, 55 minutes, 29 secondsuser prop here. So we're not passing it here. We're not receiving it. That's why we are having the error. We can quickly fix that by coming over here and we can
3:55:383 hours, 55 minutes, 38 secondssay this is going to have the ors and the user. So the orgs and user. So we are destructuring this and we're going
3:55:463 hours, 55 minutes, 46 secondsto say um this is going to be of type the app sidebar props. So sidebar props
3:55:533 hours, 55 minutes, 53 secondslike this. Now this application sidebar props just over here we're going to have the interface and this is going to be this object
3:56:023 hours, 56 minutes, 2 secondswhere we can have the or the over here is going to be equals to the organization with meta. So that's the
3:56:083 hours, 56 minutes, 8 secondstype organization with meta which needs to come from our super votes types and then we're also going to have the user
3:56:153 hours, 56 minutes, 15 secondshere and this user is going to then be this object to the email. The email is going to be a string and we also have the name. The name is going to be you
3:56:233 hours, 56 minutes, 23 secondsknow it's optional so it could be string or null. So we can have the name here which is going to be of type string or
3:56:313 hours, 56 minutes, 31 secondsnull like this. So now we have the organization. Why do we have this error?
3:56:353 hours, 56 minutes, 35 secondsThat's because like we are defining. So we're going to say the ors. No, this should be augs like this organization here. Okay. And we should no longer have
3:56:443 hours, 56 minutes, 44 secondsany error here. Do we? Why do we still have the error? It's missing the following properties. Type. Okay. So no
3:56:513 hours, 56 minutes, 51 secondsworries. We're going to see if the error persist or maybe I just get rid of this and bring this back in. So maybe sometimes this error come. So no worries. Once we are done, I'll just
3:57:003 hours, 57 minutesrefresh VS Code and see if the error persist. So we're going to say the aux.find. I want to find because this aux is going to be a list. It's going to
3:57:093 hours, 57 minutes, 9 secondsbe an array. So okay. So I know why we have the error. That's because we are missing out a list over here. So it needs to be an array. So we have the
3:57:173 hours, 57 minutes, 17 secondsaugs.find. And we want to get each organization. So we can call it organization like this. And want to find
3:57:243 hours, 57 minutes, 24 secondsthe organization where the slog is going to match the param.log. So we can say equals to params dot we can say
3:57:333 hours, 57 minutes, 33 secondsparams.log like this. Otherwise we're going to have the first organization as the current organization that if the user belongs to only one organization.
3:57:423 hours, 57 minutes, 42 secondsSo we're going to say the or0 like this. Now we can save this. It is not going to make any change yet. But we
3:57:493 hours, 57 minutes, 49 secondshave the current organization. And here where we have the organization name we're going to replace this. This is then going to be the current
3:57:563 hours, 57 minutes, 56 secondsorganization.name. So current organization dot name like this and here where we have admin hardcoded we're
3:58:043 hours, 58 minutes, 4 secondsgoing to replace that with the current organization dot row just here like this. Now over here where we have the
3:58:113 hours, 58 minutes, 11 secondsdrop-own content the menu item this is going to be a list. Okay. So what we're going to do we want to display different
3:58:203 hours, 58 minutes, 20 secondsmenu items. I'm going to cut this. So, Ctrl X and here I'm going to say the ors do map where we can have access to each
3:58:283 hours, 58 minutes, 28 secondsorganization and we are going to then return this. Yes, we're going to paste this in here. So, this is the drop-own
3:58:363 hours, 58 minutes, 36 secondsmenu item. We are missing the key. So, we're going to use the organization ID as the key. So, we're going to say org ID as the key. We say as child and the
3:58:453 hours, 58 minutes, 45 secondslink here is going to be this dynamic link. So, we're going to say like this with back tick. And here we're also going to have back tick and close it up
3:58:533 hours, 58 minutes, 53 secondshere like this. And for the organization log we're going to use the dollar sign so that we can inject the or do slog over here just like this.
3:59:033 hours, 59 minutes, 3 secondsNow we have uh we can now save this and we're going to see the changes in a moment. Now rather than have the organization name hardcoded here like
3:59:113 hours, 59 minutes, 11 secondsthis we're going to have the orn name over here. Okay. So let's see further down if we do have any error. we are not
3:59:203 hours, 59 minutes, 20 secondsmaking use of the user. So if we come further down here where we have the content the navigation items. So we map through the navigation items over here.
3:59:293 hours, 59 minutes, 29 secondsSo everything is okay. And here we display the label. Cool. So this map that's going on here is this items that
3:59:373 hours, 59 minutes, 37 secondswe have over here. So this navigation items here. So here we map through them and we displayed the navigation items
3:59:443 hours, 59 minutes, 44 secondshere. And here in the footer we have the user menu. So here you see we have this um placeholder here for the user. Also the same for the avatar. We're going to
3:59:533 hours, 59 minutes, 53 secondsbe fixing that here. Rather than have this U here for the user for the avatar, we're going to cut this and want to
4:00:004 hoursreplace it with this. So we have the username or the user email want to get the first character that is if the user doesn't have a name because it could be
4:00:074 hours, 7 secondsstring or not and we use that as the avatar over here. Now we have this over here and rather than also go with this
4:00:154 hours, 15 secondsuser rather than go with this user example here we're going to display the user email here and also this rather
4:00:244 hours, 24 secondsthan display just the text account we're going to say user name if that is available user name that's available we
4:00:314 hours, 31 secondswant to use that otherwise we're just going to display account over here. All right. So, that's looks like it's pretty much everything that we need to do here.
4:00:404 hours, 40 secondsAnd then we have the sign out. So, I'm going to give this a save. And now, if we double check here, we see this. So,
4:00:484 hours, 48 secondsover here, we see the account. I'm just going to hide this here. So, we see the account because this user do not have a name. This user authenticated via email
4:00:574 hours, 57 secondsand password. So, if you check your Neon database and we check for users, you would see some users do have a name or some do have email here. So you can see
4:01:054 hours, 1 minute, 5 secondsthe name. So actually all the user do have a name. So for some reason we do not see the name over here. We just see account. But if you click here you see
4:01:134 hours, 1 minute, 13 secondsthe settings. So now let's investigate why we do not have the name over there. And we know that this is passed as prop.
4:01:204 hours, 1 minute, 20 secondsSo the user here. So we can just log this user to the console which is this get current user and the name actually we set the name to null. So there was no
4:01:284 hours, 1 minute, 28 secondsway we are going to retrieve the name here. Okay. So to quickly verify that, let's just log to the console.
4:01:344 hours, 1 minute, 34 secondsconsole.log. Let's log payload like this. And here we're going to have the payload like this. And we log this
4:01:424 hours, 1 minute, 42 secondsto the console. Open this up. We just So this is the payload. So we see we do not actually have the username to the payload. So it's our JWT payload. And
4:01:504 hours, 1 minute, 50 secondsthat's why we just set the name to null over here. All right. So that's actually the state of our JWT payload. You can
4:01:574 hours, 1 minute, 57 secondsdefinitely get the user from the organization membership and all of that, but we're not going to go into that now.
4:02:034 hours, 2 minutes, 3 secondsBut what we can do, we can just leave it as account here like this. I think that's actually going to work fine since we already displayed the user email over
4:02:114 hours, 2 minutes, 11 secondshere. So, we can try to sign out. I can click this and um sign out.
4:02:174 hours, 2 minutes, 17 secondsAnd we should be signed out of the application because the action is going to get called and then we're going to be redirected over to login page. So, if we
4:02:244 hours, 2 minutes, 24 secondsopen this up over here, it looks like nothing happened. So, I'm going to click on sign out again. And it looks like the sign out functionality isn't working.
4:02:344 hours, 2 minutes, 34 secondsSo, this isn't working as expected.
4:02:374 hours, 2 minutes, 37 secondsActually, the fix is a very straightforward fix for the dropown menu item. So, we have as child, we just need to have the unselect. We
4:02:464 hours, 2 minutes, 46 secondscall the event.prevent default. So, this is only what we needed to do. So, I'm going to save this now and it's going to work because I did test it out and I
4:02:554 hours, 2 minutes, 55 secondsquickly want to also update the template. So, once you get the template, you wouldn't need to debug this. So, here where we have the menu item here,
4:03:024 hours, 3 minutes, 2 secondswe're just going to have the on select event. Default. Now, let's give this a try. I'm going to click here and hit on
4:03:104 hours, 3 minutes, 10 secondssign out. And you see that we are going to be signed out. And we are. I'm going to log back in with Google and we should
4:03:174 hours, 3 minutes, 17 secondsbe redirected over to the dashboard. And then the dashboard is going to redirect us. As you can see here, we have this log over here. Maybe we get rid of it.
4:03:264 hours, 3 minutes, 26 secondsAnd you can see we are redirected over to the project. All right. So this is working as expected. And we are done with this stage, this phase of the
4:03:344 hours, 3 minutes, 34 secondsapplication. Building out the projects page. We also did build out the organizations page. We also had the
4:03:424 hours, 3 minutes, 42 secondsguard that we did set up. Now we are going to work on the members, the roles as well as the invite system. Hello
Chapter 6: 5-members-roles-invite
4:03:514 hours, 3 minutes, 51 secondseveryone and this is going to be a very short video here. We're going to be in this section we're going to be working on the members the role and also the
4:03:584 hours, 3 minutes, 58 secondsinvite system. So we're going to introduce the organization role guard at some point here. But on this current video, we're just going to make sure we
4:04:074 hours, 4 minutes, 7 secondshave resend, which we're going to use to be able to send um invite because we're also going to be working on the invite
4:04:144 hours, 4 minutes, 14 secondssystem. So, you want to come over to resend.com.
4:04:184 hours, 4 minutes, 18 secondsAnd I just created a new account over here. And now you can have the option to add an API key. This is currently doing
4:04:264 hours, 4 minutes, 26 secondsthe onboarding flow of resend. If you do not have an account yet, if you do have an account, you might already be pass the on boarding. So here I'm going to
4:04:334 hours, 4 minutes, 33 secondsjust click on add API key and this is the API key that we got over here. So I'm just going to copy this API key and
4:04:414 hours, 4 minutes, 41 secondsI'm going to come back to the application and over in the env you want to make sure you come over to env. Now over here I'm just going to add the
4:04:494 hours, 4 minutes, 49 secondsresend API key and then this is going to be equals to this value over here. So
4:04:574 hours, 4 minutes, 57 secondsmake sure you add yours. We're also going to be adding the invite secret now that we are here. So, invite secret and
4:05:044 hours, 5 minutes, 4 secondsthe invite secret should be something random, you know, something random or something like that for you. Something random and secure that only your server
4:05:134 hours, 5 minutes, 13 secondsshould be able to guess. Now, I'm going to save this and the next change. Now, we have resend. We need to make sure we
4:05:204 hours, 5 minutes, 20 secondsinstall resend into application. So, I'm just going to cd into the apps and then into the API. And over here or while we
4:05:284 hours, 5 minutes, 28 secondsare here you need to run a pmppm add resend so that you can install the resend client. Now while that client is
4:05:364 hours, 5 minutes, 36 secondsinstalling we can make changes over here to the packages the constants the source folder and in the index.ts. So over here
4:05:444 hours, 5 minutes, 44 secondslet's go on and export this constant we call organization rows so that we can have the role of admin which is equals to admin and also developer that is
4:05:534 hours, 5 minutes, 53 secondsequals to developer. We're also going to export the constant for when the invite is going to expires. So the time and the
4:06:014 hours, 6 minutes, 1 secondtime over here, we're just going to set this to 24 hours like this. So the user has 24 hours to go and accept the
4:06:084 hours, 6 minutes, 8 secondsinvite. So that's pretty much it for this video. We're just going to make one more change over here and that is for us to create the decorator. So we're going
4:06:164 hours, 6 minutes, 16 secondsto have the require organization row decorator which is a decorator that we are going to be making use of in our controllers.
4:06:244 hours, 6 minutes, 24 secondsSo still come over to the API section and under decorators we want to create a new file and this is the require
4:06:324 hours, 6 minutes, 32 secondsorganization row dot decorator ts file. All right so now that we have this let's go on and have the content of
4:06:404 hours, 6 minutes, 40 secondsthis file. I'm going to start by importing set metadata which is going to come from NestJS common
4:06:484 hours, 6 minutes, 48 secondsand then I'm also going to be importing the type which is the at supervote for/types sorry yeah the organization row type and
4:06:574 hours, 6 minutes, 57 secondsthen let's going to export the key. This is the key we're going to use to set the meta data. So this is organization row and in the guard we're going to retrieve
4:07:054 hours, 7 minutes, 5 secondsit with this key. We're going to call this guard require organization role. So it takes in the actual role here and
4:07:124 hours, 7 minutes, 12 secondsit's going to return the set metadata um function which takes in the organization rook key and the actual role that we would like to set in the meta data.
4:07:234 hours, 7 minutes, 23 secondsOkay. So let's go ahead and save this.
4:07:244 hours, 7 minutes, 24 secondsNow we have all of these saved. The next step for us is to make sure we I'm going to come back to our application and over here in our application we need to
4:07:334 hours, 7 minutes, 33 secondscreate a new guard and this is going to be inside the gut folder. We are going to create this organization role.gardts
4:07:404 hours, 7 minutes, 40 secondsfile. Now what was going to be the content of this file? Let's start by bringing in the import. This is a guard. So we're going to import can activate.
4:07:494 hours, 7 minutes, 49 secondsWe're also going to bring in the execution context. Um the forbidding exception. We also need to bring in injectable the not found exception.
4:07:584 hours, 7 minutes, 58 secondsAll of these will come in from NestJS common. And then we also need to bring in reflector. Reflector will coming from
4:08:054 hours, 8 minutes, 5 secondsnestJS core so that we can go on and check the metadata. That's what we use reflector for to inspect the metadata.
4:08:124 hours, 8 minutes, 12 secondsWe also need to bring in all these checkers. So and equals is null from Drizzle OM. We also need to bring in from Drizzle service. We need to bring
4:08:214 hours, 8 minutes, 21 secondsin our DRO service. Then we also need to bring in the organization members. We also need the organization row key which
4:08:294 hours, 8 minutes, 29 secondswill come in from our decorator. So let's bring in all members first and the O members is coming from our
4:08:374 hours, 8 minutes, 37 secondsschema. Then we need this key. This key is going to coming from our decorator.
4:08:424 hours, 8 minutes, 42 secondsWe need also our cookie keys. And we also need to bring in the
4:08:494 hours, 8 minutes, 49 secondsuh we also need to bring in the type. So the row type and the JWT row type. So all these are coming from super votes.
4:08:554 hours, 8 minutes, 55 secondsSo the cookie keys comes from the constants and this types is going to come from superv types just like this.
4:09:024 hours, 9 minutes, 2 secondsSo this is our import just to get started. The next thing we need to do is to have the or implement can activate.
4:09:094 hours, 9 minutes, 9 secondsNow the way this guard is going to work is always going to run after the JWT authentication guard. So it needs to do some things. It's going to read the
4:09:174 hours, 9 minutes, 17 secondsorganization's log from the request params and it's also going to read the current user from the rec do user. And
4:09:244 hours, 9 minutes, 24 secondsonce it reads that it's going to check the user is an active member of that organization based on that required
4:09:324 hours, 9 minutes, 32 secondsrole. So it's checking two things. First you need to be an active member and the role also needs to match. Okay. So no worries. We're going to see how we can
4:09:414 hours, 9 minutes, 41 secondsum make use of the card. So what we are going to be having here is to have the at injectable so that we can then have the class. We're going to export the
4:09:504 hours, 9 minutes, 50 secondsclass which we can call the organization row class. And we can we need to implement can activate method. And here
4:09:584 hours, 9 minutes, 58 secondswe're going to have the constructor. And inside the constructor we're going to have drizzle. And we're also going to have the reflector. And the reflector is
4:10:054 hours, 10 minutes, 5 secondsgoing to be the type reflector like this. So now what I'm going to do, I'm just going to close this up. And now we
4:10:134 hours, 10 minutes, 13 secondscan go on to have the can activate method. So let's have the can activate method. We're going to have the async
4:10:204 hours, 10 minutes, 20 secondscan activate method here which is going to take in the context of type execution context and it's going to return a promise that resolves to boolean. Okay.
4:10:304 hours, 10 minutes, 30 secondsSo here we're going to have the required role. We're going to use the this reflector.get and this is going to give us the organization role. So we pass in the key
4:10:394 hours, 10 minutes, 39 secondsthe key want to retrieve and then we also pass in the context.get handler here. So let's also have the request.
4:10:454 hours, 10 minutes, 45 secondsWe're going to say con request is going to be equals to context dot switch to http get request. We also want to get
4:10:544 hours, 10 minutes, 54 secondsthe user. The we say cons user is going to be equals to request do user as our JWT payload. And the organization log is
4:11:034 hours, 11 minutes, 3 secondsgoing to be equals to the request.params.lo slog. Now we're going to find this user's membership in the organization by
4:11:104 hours, 11 minutes, 10 secondsawaiting this. Drizzle db. want to select where the role is going to match the organization members dot row and
4:11:194 hours, 11 minutes, 19 secondswe're also going to retrieve this from the organization members and we have this inner join here where we have the organization members and then we're
4:11:274 hours, 11 minutes, 27 secondsgoing to have equals the organization members do user ID which matches the user sub and we're also going to have is
4:11:364 hours, 11 minutes, 36 secondsnull where the organization members do remove that and we then want to limit this to one so what we are doing And we need to get organization ID from the
4:11:454 hours, 11 minutes, 45 secondsorganization's log via the organizations table. But we need to keep the card lan so we can store the organization log on
4:11:524 hours, 11 minutes, 52 secondsrequest. Now if for some reason we're not able to get a member want to say the organization not found. Now we're going
4:11:594 hours, 11 minutes, 59 secondsto check the role. So if a specific role is required let's check it. So if required role and member roll is not
4:12:064 hours, 12 minutes, 6 secondsequals to the required role then we have insufficient permission which is this new forbidden exception we're going to throw that says insufficient permission.
4:12:164 hours, 12 minutes, 16 secondsNow we're going to attach the member row to the request. To do that we're going to say request member row is equals to member roll and then we are going to
4:12:244 hours, 12 minutes, 24 secondsreturn true. Now if this guard that we are making use of here is not going to
4:12:314 hours, 12 minutes, 31 secondsum return like let's say throw this errors over here we're going to get to this point we're going to return true so that it continues and the reason why we
4:12:404 hours, 12 minutes, 40 secondsare attaching the member role over here is so that the controllers can use it without having to make another request
4:12:474 hours, 12 minutes, 47 secondsto refetch the or another query. So we just pass it here. Okay. So let's fix the errors that we are having here.
4:12:554 hours, 12 minutes, 55 secondsLet's start by getting rid of cookie keys. We are not making use of cookie keys here. And the next error that we have here is on the request here. So we
4:13:044 hours, 13 minutes, 4 secondshave the request context switch to http.get request. So here we're going to have the type which is going to be
4:13:114 hours, 13 minutes, 11 secondsrequest like this. So let's have a request here just like this. And this request needs
4:13:184 hours, 13 minutes, 18 secondsto brought in from express. Okay. So let's make sure we bring this in. And it's okay. we have this error that's
4:13:254 hours, 13 minutes, 25 secondsbecause we need to extend this and we do not have use automatically on express and that's why we are having this error
4:13:324 hours, 13 minutes, 32 secondshere. Now what we can do is so here where we have the error is we can come here and let's have a type which is
4:13:404 hours, 13 minutes, 40 secondsgoing to be an interface for authenticated request. So I'm going to bring in this interface here authenticated request. Now it's going to
4:13:484 hours, 13 minutes, 48 secondsextend this from express and now we have the user here which is our JWT payload and we also have the member row here. So
4:13:554 hours, 13 minutes, 55 secondswe can copy this authenticated request and here rather than make use of request like this we're going to make use of authenticated request. Now we make use
4:14:044 hours, 14 minutes, 4 secondsof authenticated request saying hey this is unnecessary because this user is already of this type. So we are casting JWT payload to what is already a JWT
4:14:124 hours, 14 minutes, 12 secondspayload and that means we can just get rid of this like this and we are good to go. Now we have the organization log
4:14:204 hours, 14 minutes, 20 secondshere. So request params and this params object here we can also retrieve this log like this and get rid of this dot
4:14:284 hours, 14 minutes, 28 secondsthat we have over here. So let's fix this error that we have here. Now what I'm going to do is to update the inner join. So I'm just going to remove this
4:14:364 hours, 14 minutes, 36 secondshere. And our inner join is going to be organizations. So organizations you need to import this from the DB schema. And
4:14:444 hours, 14 minutes, 44 secondsthen we're going to have the check over here which is equals. I want to make sure the or members do ID dot
4:14:524 hours, 14 minutes, 52 secondsorganization ID is matching the organizations organizations do ID just like this. [snorts] Now we're going to
4:15:004 hours, 15 minuteshave our wear clause. So dot where and it's going to be where it's going to be where and inside this where we're going to have different checks. So we're going
4:15:094 hours, 15 minutes, 9 secondsto make use of and and we're going to say where equals. So different checks where this is equals to this and this is
4:15:164 hours, 15 minutes, 16 secondsequals to this and this. So that's what we are doing here. So equals we're going to have the organizations that we brought in dot slugg want to make sure
4:15:244 hours, 15 minutes, 24 secondsit's equal to the organization log and we also going to make sure is equals where we have the or members do user ID
4:15:344 hours, 15 minutes, 34 secondsor members do user ID this going to be equals to the user sub which is the user
4:15:414 hours, 15 minutes, 41 secondsID and the last we have here is null so is null want to make sure this is null so what is that We want to make sure
4:15:494 hours, 15 minutes, 49 secondsthat this user is an active member of the user. So we say organization members do the removed at we want to make sure
4:15:564 hours, 15 minutes, 56 secondsthat that is null. Now why do we have this error over here? And this error is because string array is not assible to
4:16:034 hours, 16 minutes, 3 secondstype string. Now this is actually a straightforward fix and the reason why we having this is because this can
4:16:114 hours, 16 minutes, 11 secondsreturn string or string array. So that's what you get from request params by default. So here we have the organization's log and it's saying here
4:16:184 hours, 16 minutes, 18 secondsyou see this will be string or string array. Let's cast it to a string because we know that is a string we're actually going to be retrieving and now the error
4:16:264 hours, 16 minutes, 26 secondsis gone. Now if this member if you're not able to find a member that matches all these criteria here. We're going to say organization not found and then
4:16:344 hours, 16 minutes, 34 secondswe're going to check the row to make sure that this matches the required role. The required role here we are getting it from the meta data. So when
4:16:414 hours, 16 minutes, 41 secondswe make use of our guard over here, our decorator, this decorator is going to attach the role. So whichever role is
4:16:484 hours, 16 minutes, 48 secondsable to visit that current um controller and this is going to then retrieve the role and it's going to then check we're
4:16:564 hours, 16 minutes, 56 secondschecking the role over here with this guard. Now if then if everything is okay, we're going to attach the member role to the request. So we're going to
4:17:044 hours, 17 minutes, 4 secondssee how we can also retrieve this when we need it. Now this is everything we need for the role and guard. The next
4:17:114 hours, 17 minutes, 11 secondsstep is for us to create our DTO for the update role and also the DTO to invite a user and then we can go from there.
4:17:194 hours, 17 minutes, 19 secondsLet's have our different DTOS. So I'm going to close out that we have here and we are going to come right here in the API in the source folder just as we have
4:17:264 hours, 17 minutes, 26 secondsone for all for DB. We are going to create a members here folder. So let's have one for members. And inside this
4:17:344 hours, 17 minutes, 34 secondsmembers, we're going to then have the DTO folder. And the DTO, we're going to have the update update
4:17:424 hours, 17 minutes, 42 secondsrow. And this is then going to be DTO.TS file. Now, this update row DTO is just
4:17:494 hours, 17 minutes, 49 secondsgoing to, you know, oops. So, I'm going to get rid of this here, just like this.
4:17:544 hours, 17 minutes, 54 secondsAnd inside this update row DTO, we're going to import the enum from class validator. And we're also going to bring
4:18:024 hours, 18 minutes, 2 secondsin the organization rows which will come from our per volt constant constant. So remember the the constant we created.
4:18:084 hours, 18 minutes, 8 secondsAnd then we're also going to bring in the type which is the organization row type which is then going to come in from the super types. We're just going to
4:18:164 hours, 18 minutes, 16 secondsexport a simple class here update row DTO which we're going to mark with is enum decorator for the organization rows and we just going to accept the role
4:18:254 hours, 18 minutes, 25 secondswhich is going to be of type organization row like this.
4:18:294 hours, 18 minutes, 29 secondsNow, as always, I'll just add the exclamation mark here so we do not have any errors. And why do we have this warning here? Um, we're going to see if
4:18:364 hours, 18 minutes, 36 secondsthis gives us any issues as we go. But the reason why we did this is so that we can have one type that we use for both the back end as well as the front end.
4:18:454 hours, 18 minutes, 45 secondsNow, we can close this and then we're going to do the same for the invite. So here in the DTO, we're going to create another file which is going to be the
4:18:534 hours, 18 minutes, 53 secondsinvite- member DTO.TS
4:19:004 hours, 19 minutesfile like this. And this is going to be also straightforward. We're going to just bring in his email because we need
4:19:064 hours, 19 minutes, 6 secondsto make use of um his email decorator here. And then we have a simple class which we're going to be exporting over here just like this. The class is going
4:19:154 hours, 19 minutes, 15 secondsto be the invite member DTO. We have is email and then we have the email which is going to be of type string here and
4:19:234 hours, 19 minutes, 23 secondswe add our exclamation mark here. Now let's save this. Our focus is going to be on creating the members service file.
4:19:314 hours, 19 minutes, 31 secondsLet's have the member service. So right here in the members folder not in the DTO. So here we are going to create the
4:19:374 hours, 19 minutes, 37 secondsmembers service.ts file. Now for this member service let's start by importing the bad request
4:19:454 hours, 19 minutes, 45 secondsexception. We're going to also bring injectable. Bring in not found exception. All of these will come in from NestJS common. So we're just like
4:19:534 hours, 19 minutes, 53 secondslaying out the imports that we need here. We also need to bring in the and equals is null which will come in from Drizzle OM. So let's make sure we bring
4:20:014 hours, 20 minutes, 1 secondthem in. And then we're going to bring in the Drizzle service which we're going to instantiate in the constructor. So Drizzle service is going to come in from
4:20:094 hours, 20 minutes, 9 secondsDrizzle service. And then we also need the organization members. We also need to bring in the organizations the users
4:20:184 hours, 20 minutes, 18 secondswhich will come in from our DB schema file and we need the update ro DTO which
4:20:244 hours, 20 minutes, 24 secondswill come in from the DTO update update rot DTO file. So these are everything we
4:20:324 hours, 20 minutes, 32 secondsneed for the imports over here. I'm just going to save this and then let's have the class which we're going to mark making of at injectable decorator. And
4:20:414 hours, 20 minutes, 41 secondsthen we have the export class which I call this organization members service.
4:20:464 hours, 20 minutes, 46 secondsAnd in the constructor we're going to have our drizzle which is going to be of type drizzle service here like this. And we can close up the class here. So this
4:20:554 hours, 20 minutes, 55 secondsclass is going to this service is going to have different methods. We need a method to get the organization. We're also going to need a method to update
4:21:034 hours, 21 minutes, 3 secondsthe role and all of that. So let's start with the first one. We're going to have this async get um members which is going
4:21:114 hours, 21 minutes, 11 secondsto take in the organization log and then it's going to return this u drizzle db select. We want to select ID. We also
4:21:204 hours, 21 minutes, 20 secondswant to select the role. We want to select the created ads. We also want to select the user but not all the user
4:21:284 hours, 21 minutes, 28 secondsproperties that we want to select. We want to select um specific properties from the user. So here we're going to have the user object
4:21:364 hours, 21 minutes, 36 secondsand from the user object we're going to select the ID which is going to be the users do ID. We also need the name and
4:21:434 hours, 21 minutes, 43 secondswe also need the email from the user. So here we have email and we have the avatar URL. Remember this is optional.
4:21:514 hours, 21 minutes, 51 secondsSo we're going to also bring in the avatar URL. And then we are going to close up the object here. And this is going to be coming in from the
4:21:594 hours, 21 minutes, 59 secondsorganization members table. And then we have the inner join. So inner join for organizations equals where the
4:22:074 hours, 22 minutes, 7 secondsorganization members do organization ID is equals to the organizations do ID and also for the inner joint for the users
4:22:164 hours, 22 minutes, 16 secondstable where equals organization members do user ID matches the user ID from the that is in the users table and then we
4:22:234 hours, 22 minutes, 23 secondshave where clause and where the organization.log is equals to organization.log. So we have the equals here and it's null. Want
4:22:314 hours, 22 minutes, 31 secondsto have the organization members do remove that. So I want to make sure that that is null.
4:22:394 hours, 22 minutes, 39 secondsSo this is the get members that we have over here. I think we have one too many here. So let me see. Okay. So I did fix
4:22:484 hours, 22 minutes, 48 secondsit. And this is the async get members function. And after the get members we need another one to update the role. So
4:22:564 hours, 22 minutes, 56 secondson a method here which is this async update ro method is going to take in the organization role and also the member ID
4:23:044 hours, 23 minutes, 4 secondsand also the DTO which is going to be the update ro DTO and then we're going to have this guard here so that you cannot demote this member if this member
4:23:124 hours, 23 minutes, 12 secondsis a last admin. So we're going to have the helper function we save the role this developer want to have this helper function ensure not last admin which
4:23:214 hours, 23 minutes, 21 secondswe're going to be creating um in a moment there. And then we're also going to check con updated is going to be
4:23:284 hours, 23 minutes, 28 secondsequals to await and in await we're going to update the organization members. And then we want to set the role to the new
4:23:364 hours, 23 minutes, 36 secondsrole which we get from the DTO. And then we also going to also have where so that we can have the check where equals the
4:23:424 hours, 23 minutes, 42 secondsorganization members do ID matches the member ID. Then we have returning. And if for some reason updating failed, we
4:23:504 hours, 23 minutes, 50 secondsdo not have updating, then we're going to say throw this exception over here which is going to say not found. And then we are also if everything is okay, we're going to return updated.
4:24:014 hours, 24 minutes, 1 secondNow let's make sure we have this ensure um not last admin helper function is a function that we can create over here.
4:24:094 hours, 24 minutes, 9 secondsSo here we're going to have this private method. Ensure not last admin is going to take in the organization slog and the
4:24:164 hours, 24 minutes, 16 secondsmember ID. So the first thing we're going to do is to count the active admins that we have in the organization.
4:24:214 hours, 24 minutes, 21 secondsWe do that by saying con admin is going to be equals await this.razu db. We want to select ID that matches the
4:24:284 hours, 24 minutes, 28 secondsorganization's ID, organization members ID.
4:24:324 hours, 24 minutes, 32 secondsThat's why we're going to be selecting this from the organization members. And we have our inner join over here. And the inner join is going to be the
4:24:404 hours, 24 minutes, 40 secondsorganizations where equals the organization members.org or id matches the organization's id and then we are
4:24:474 hours, 24 minutes, 47 secondsalso going to say where and so we have three different conditions where the organization log matches the
4:24:544 hours, 24 minutes, 54 secondsorganization's log and also the organization members row matches admin
4:25:024 hours, 25 minutes, 2 secondsand we want to make sure is null where the organization members do remove that that means this member has not been removed okay so we're going to check if
4:25:104 hours, 25 minutes, 10 secondsthe member has been changed or removed as an admin. So we do that by saying target is admin if the admins do sum
4:25:184 hours, 25 minutes, 18 secondsadmin like this. If the admin ID is matching the member id and if we have the target is admin and the admin.length
4:25:264 hours, 25 minutes, 26 secondsis equals to one, we do not want to remove the last user as the admin. So, we're going to throw this error over here just like this, which is going to
4:25:344 hours, 25 minutes, 34 secondsbe this bad request exception, which says cannot remove or demote the last admin of an
4:25:424 hours, 25 minutes, 42 secondsorganization. That's all we want to have there. But if everything is okay, then we can go on to close this up over here.
4:25:494 hours, 25 minutes, 49 secondsNow, the next thing we're going to do is to have another method, which is to remove the admin. So, that'll be the last method we're going to have. And
4:25:564 hours, 25 minutes, 56 secondsthis here is now being used here to update row. Now let's have this method this async method here which is going to
4:26:044 hours, 26 minutes, 4 secondsbe or we can call the remove member. So we have the organization log and we also have the member ID and we're going to
4:26:134 hours, 26 minutes, 13 secondsguard that cannot uh we're going to check here if we're going to await this ensure last not last admin. We pass the organizations log and the member ID. So we're going to do a soft delete here.
4:26:234 hours, 26 minutes, 23 secondsWe're going to await this.razo. razo db we want to update the organization members dot set we want to set the
4:26:314 hours, 26 minutes, 31 secondsremoved that to be a new date so we're not deleting the user from our codebase we are just setting the user remove that
4:26:384 hours, 26 minutes, 38 secondsto be true by having the date so we equals the organization members ID matches the member ID
4:26:464 hours, 26 minutes, 46 secondsand we have return it now if the update fails we're going to say member not found in this um not found exception otherwise we're going to return this
4:26:554 hours, 26 minutes, 55 secondsobject with the message key that's going to say member removed. So this is our members service working fine and good
4:27:044 hours, 27 minutes, 4 secondshere like this. No errors. We can save this. The next step is for us to create our invite service so that we can be able to invite people to our
4:27:124 hours, 27 minutes, 12 secondsorganization. Let's create our invite service. I'm going to close the member service. And right here the invite service is still going to be inside the
4:27:204 hours, 27 minutes, 20 secondsmembers folder. So right here in the members folder, let's have the invite.ts
4:27:284 hours, 27 minutes, 28 secondsfile. As always, we start by bringing in the imports. We import injectable bad request exception from Nest.js common.
4:27:364 hours, 27 minutes, 36 secondsWe're also going to be bringing our JWT service. The JWT service is going to come in from our NestJS JWT. We also
4:27:464 hours, 27 minutes, 46 secondsneed to bring in the config service which will come from Nest.js for/config. And then remember we installed resend.
4:27:534 hours, 27 minutes, 53 secondsSo now we're going to bring in the resend client which will come in from resend. And we need to bring in the different checkers. So matches. So and
4:28:014 hours, 28 minutes, 1 secondequals is null from drizzle o. And then we're also going to bring in organizations or members and users which will come in from our DB schema file.
4:28:124 hours, 28 minutes, 12 secondsAnd let's bring in the invite expires in. So remember it's 24 hours. um after the organizations organization members
4:28:194 hours, 28 minutes, 19 secondsand users which will come from our DB schema. Now let's bring in the invite expires in as I said earlier it expires
4:28:274 hours, 28 minutes, 27 secondsin 24 hours which will come from our supervolt for/stance file. So these are the different imports that we need to get started. The next thing we need to
4:28:364 hours, 28 minutes, 36 secondshave is our invite payload the interface for what our invite is going to look like. So, our invite is going to look like this where we're going to have the
4:28:454 hours, 28 minutes, 45 secondsemail, the string, the organization ID, the string, and the organization name string here like this. So, after the
4:28:534 hours, 28 minutes, 53 secondsinvite payload, we are going to have the invite service class which we're going to mark as injectable here. And then we can export the class invite service.
4:29:034 hours, 29 minutes, 3 secondsNow, in here, we're going to have the private resend, which is going to be of type resend. And in the constructor we are going to have a drizzle. So private
4:29:114 hours, 29 minutes, 11 secondsdrizzle is going to be um of type drizzle service. We also need to do the same for JWT service and do the same for
4:29:184 hours, 29 minutes, 18 secondsour config service here. Okay. So here we're going to have private config service and config service is going to
4:29:264 hours, 29 minutes, 26 secondsbe of type config service. And now we can initialize the resend client by saying this is going to be equals to new
4:29:344 hours, 29 minutes, 34 secondsresend which we can get from the config service where we're going to get the resend API key. Now let's close this up
4:29:414 hours, 29 minutes, 41 secondshere. So this is the constructor and inside the constructor we're going to have our first method which is to send an invite. Now I'm going to also leave
4:29:494 hours, 29 minutes, 49 secondssome comments inside here so that you understand what's going on. So let's go.
4:29:544 hours, 29 minutes, 54 secondsLet's have the method here. Async method you can call send invite. It's going to take in the organization's log of string the email of string. And the first we
4:30:034 hours, 30 minutes, 3 secondswant to do is to go on and get the organization so we can send invite. So we're going to
4:30:094 hours, 30 minutes, 9 secondsawait this drizzle db and then we want to select everything which will come from the organization table or schema
4:30:184 hours, 30 minutes, 18 secondswhere equals the organization dot um slog is going to match the organization log. this function is getting and we're
4:30:274 hours, 30 minutes, 27 secondsgoing to limit this to one. If we do not find an organization for some reason, we want to throw this bad request exception that says the organization not found.
4:30:364 hours, 30 minutes, 36 secondsThe next step for us to do is to check if this user is already an active member of this organization. So we do not send
4:30:434 hours, 30 minutes, 43 secondsinvites to users that are already members of the organization. To do that, we have the existing user constant which we can await this.
4:30:534 hours, 30 minutes, 53 secondsDB want to select id which is going to match the user dot users do id from the users table. So where equals the user
4:31:024 hours, 31 minutes, 2 secondsemail is going to be equals to the email that this function is receiving and want to limit this by one. Now if we do find
4:31:104 hours, 31 minutes, 10 secondsan existing user so if existing user.length is greater than zero that means you're already a member. We're going to say con existing member is going to be equals to await this.
4:31:214 hours, 31 minutes, 21 secondsDB want to select from the organization members and here we are going to check where so now want to check if you're a
4:31:294 hours, 31 minutes, 29 secondsmember of the organization so we're going to check where and the first is going to be this equal so that we can chain multiple checks the organization
4:31:374 hours, 31 minutes, 37 secondsmembers do organization ID matches the organization ID and also where the organization members do user ID matches
4:31:454 hours, 31 minutes, 45 secondsthe existing user user ID the first element Okay. And then we want to also check is null is this. So if all of
4:31:534 hours, 31 minutes, 53 secondsthese conditions are true and we limit this to one, that means you're already a member of this organization, right? So we're going to throw
4:32:014 hours, 32 minutes, 1 secondan error. So we check if existing member.length is greater than zero, then let's throw this new bad request
4:32:084 hours, 32 minutes, 8 secondsexception. The user is already a member of this organization. Okay. Now if everything is okay and everything is
4:32:164 hours, 32 minutes, 16 secondsgood, the next thing we need to do is to sign the invite token which is going to expire in 24 hours. So we can say um I
4:32:244 hours, 32 minutes, 24 secondsalso drop a comment here and then we can say con token is going to be equals to the JWT service and then
4:32:324 hours, 32 minutes, 32 secondswe can call sign. So this is the object okay which is the payload. So the email we're also going to have the organization name which is the org.name
4:32:414 hours, 32 minutes, 41 secondsname and it needs to satisfy the invite payload. Then we're going to have the secret to um configuration for the JWT
4:32:494 hours, 32 minutes, 49 secondssign method. We pass the secret. So it's going to come from our invite secret.
4:32:544 hours, 32 minutes, 54 secondsRemember we store that in the env. And then we're also going to have the expires in which is going to be the invite expires in like this which comes
4:33:024 hours, 33 minutes, 2 secondsfrom our constant. Then let's construct the invite URL. So this is going to be this doconfig service.get. We're going
4:33:104 hours, 33 minutes, 10 secondsto get our web URL slash invite slash accept and then we have the token as part of the param in the URL. Then we're
4:33:194 hours, 33 minutes, 19 secondsgoing to send the actual email via resend and this is going to be like some HTML we going to write here. So we'll call thisresend.mmails.end.
4:33:284 hours, 33 minutes, 28 secondsThe from is going to be from supervote and we're going to write like no reply@youdom domain.com. And then we're
4:33:354 hours, 33 minutes, 35 secondsgoing to have two which is going to be email. The subject is going to be you have been invited to join. And then we have the organization name on super
4:33:444 hours, 33 minutes, 44 secondsvotes. We do not have any domain that's why this is okay for now. No worries.
4:33:484 hours, 33 minutes, 48 secondsAnd then the HTML is going to be this where we can have the template. Okay. So this is what the user is going to see and this is how you can actually
4:33:564 hours, 33 minutes, 56 secondsconfigure emails that you are sending from your back end. In this case we are making use of recent but it could be any um email client that you're using. So
4:34:054 hours, 34 minutes, 5 secondsyou're invited to join and then we're going to have the organization name here as a H2. And then we're going to have a
4:34:124 hours, 34 minutes, 12 secondsparagraph someone has invited you to collaborate on super votes. And we're going to have the anchor tag, which is then going to be the a tag that is going
4:34:214 hours, 34 minutes, 21 secondsto have the href pointing to our invite URL.
4:34:264 hours, 34 minutes, 26 secondsAnd then we can give this some styles and just like this. Just have the style here inline block. Give it some
4:34:334 hours, 34 minutes, 33 secondsbackground. It's quite actually a lot of styles that we're going to give over here. We also have the color. We also have the padding. We also have some
4:34:424 hours, 34 minutes, 42 secondsborder radius. We also have some text decoration.
4:34:474 hours, 34 minutes, 47 secondsWe also have some font weights, you know, um quite a lot of classes that we're passing over here like this.
4:34:564 hours, 34 minutes, 56 secondsNow, we're going to have the text of accept invite and we can close this.
4:34:594 hours, 34 minutes, 59 secondsNow, everything good. We're going to then have this paragraph which is going to also tell this user that the link expires in 24 hours time. Okay. So,
4:35:094 hours, 35 minutes, 9 secondslet's make sure we have that. And after that we are also then going to close this up here. And then want to return
4:35:174 hours, 35 minutes, 17 secondsthat everything went fine which is going to be this object here. And this object here is going to be the invite sent. So
4:35:244 hours, 35 minutes, 24 secondsthis is the way we can go on to send the invite making use of resend API and we are actually customizing the actual
4:35:314 hours, 35 minutes, 31 secondsemail that we are sending to the actual template that we are sending to the user right in here. Now this is the why do we have this error?
4:35:414 hours, 35 minutes, 41 secondsum expires in that's because it's a string I think so. So let's see if we can cast
4:35:494 hours, 35 minutes, 49 secondsthis over to a number. So number like this and we have this here I think it should
4:35:564 hours, 35 minutes, 56 secondsbe a string and the error is gone. So expires in needs a number here. So if we come here this is actually a string like
4:36:054 hours, 36 minutes, 5 secondsthis. So no worries we're going to double check this in a moment. So, but let's just keep this pending. We're just going to have a little to-do over here
4:36:124 hours, 36 minutes, 12 secondsso we can come back to this. And here we're going to have our next method. The next method is for accepting the invite.
4:36:214 hours, 36 minutes, 21 secondsSo, here we're going to have the accept invite async method. So, we need a token so that we can compare. And the payload
4:36:284 hours, 36 minutes, 28 secondshere is going to be of type the invite payload. So, we're going to have our try catch block because we are we are going
4:36:354 hours, 36 minutes, 35 secondsto, you know, test this out. So in the try block here we're going to have the payload is going to be this jw service.verify and we're
4:36:444 hours, 36 minutes, 44 secondsgoing to pass in the token and we also want to pass in other options. So the options we are going to be passing here is the secret and we're also going to
4:36:524 hours, 36 minutes, 52 secondsclose this up here like this. And then in the catch block, we're going to throw a bad request exception, invalid or expired invite. If the JWT service is
4:37:014 hours, 37 minutes, 1 secondnot able to, you know, decode this and we get the payload or verify the token because we signed it. So it should be
4:37:084 hours, 37 minutes, 8 secondsable to verify. So we're going to say let user user is going to be equals to um our this db das db because we want to
4:37:164 hours, 37 minutes, 16 secondsfind the user or we want to create the user. That's why we have let user. So we select from the users table where equals the user email matches the payload
4:37:254 hours, 37 minutes, 25 secondsemail. We want to limit this to one. Now if we do not find the user that means user do not have an account yet. Let's go on and create one without a password.
4:37:334 hours, 37 minutes, 33 secondsThey will set a password or connect o on their first login. So we call this drizzle db and insert users and the
4:37:424 hours, 37 minutes, 42 secondsvalue here is going to be the email which is the payload email.
4:37:474 hours, 37 minutes, 47 secondsAnd then we're going to have returning like this. And then because this is the let we're going to say user is going to be equal to this new user here. Then we
4:37:564 hours, 37 minutes, 56 secondscan also check if you're already a member. Example maybe you click the link twice or something like that. We're going to say this.raz db let's select
4:38:054 hours, 38 minutes, 5 secondsfrom the organization members where equals and the check over here is going
4:38:114 hours, 38 minutes, 11 secondsto be the organization members dot organization ID. We also have the payload.org organization ID equals the
4:38:204 hours, 38 minutes, 20 secondsorganization members do user id matches the user do ID and also is null where we
4:38:274 hours, 38 minutes, 27 secondshave the organization members dot remove that like this and want to limit this to one now if you're already a member so if
4:38:354 hours, 38 minutes, 35 secondsthe existing llength if that is greater than zero then we're going to return an object here so we do not continue and
4:38:434 hours, 38 minutes, 43 secondssay already a member okay maybe you went back to the email you clicked on the invite link again. That is where you have this scenario. But if not, we want
4:38:524 hours, 38 minutes, 52 secondsto add you as a developer. So we say this. DB.insert into organization members the values of
4:38:594 hours, 38 minutes, 59 secondsorganization ID is going to match the payload.org ID. Also the user ID is going to match the user ID. The role is
4:39:074 hours, 39 minutes, 7 secondsgoing to be developer. And we can return this object which is going to have the message property of invite um accepted
4:39:154 hours, 39 minutes, 15 secondsand also the email which is going to point to the user email.
4:39:204 hours, 39 minutes, 20 secondsSo this is pretty much it over here and we do not have any errors. So cool we are doing fine. The next step for us is
4:39:264 hours, 39 minutes, 26 secondsto create the members controller.ts file so that we can register the different endpoints. I'm going to close
4:39:334 hours, 39 minutes, 33 secondsall these tabs that we have open and let's have the members controller. So right here still inside the members we're going to have the members
4:39:414 hours, 39 minutes, 41 secondsdocontroller.ts file and let's start by bringing in the import which will coming from NexJS
4:39:484 hours, 39 minutes, 48 secondscommon. We're going to import the body controller delete get param patch post
4:39:574 hours, 39 minutes, 57 secondsuseg which will coming from nestjs common and we are also going to bring in the members service which will come from
4:40:044 hours, 40 minutes, 4 secondsone level up our member service. Um, we also need our invite service which will come from the invite service. So, let's
4:40:124 hours, 40 minutes, 12 secondsimport it. And after that, we are going to have the um we're going to have the update row DTO which will come from the DTO folder.
4:40:244 hours, 40 minutes, 24 secondsWe also need the invite member DTO. So, let's also have that.
4:40:314 hours, 40 minutes, 31 secondsAnd then we are going to have the JWT authentication guard. And after that we
4:40:384 hours, 40 minutes, 38 secondshave the role the require organization role which is going to come from our decorator. So
4:40:464 hours, 40 minutes, 46 secondsremember that it's going to come from our decorator. Now the way this members controller works is all routes here is going to be require a user to be logged
4:40:544 hours, 40 minutes, 54 secondsin and also a user to be um to be a member of the organization. Okay. So
4:41:014 hours, 41 minutes, 1 secondthat's why we're going to make use of this organization role guard which it's a guard we're going to use on the controller. So let's save everything we
4:41:094 hours, 41 minutes, 9 secondshave here. And now let's come further down here. And the first thing we're going to do is to make use of our controller here. So we're going to have
4:41:174 hours, 41 minutes, 17 secondsat contract decorator sorry. So /organization/dynamics log/members.
4:41:234 hours, 41 minutes, 23 secondsWe're going to make use of the guard which is the JWT authentication guard and also our role organization role guard. And then we can export the class
4:41:324 hours, 41 minutes, 32 secondsorganization members. In the constructor we're going to have the members service and also our invite service. Member service is going to be of type member
4:41:404 hours, 41 minutes, 40 secondsservice and also the invite service is going to be of type the invite service.
4:41:454 hours, 41 minutes, 45 secondsAnd we can close this up here. Now I'm just going to close this here. And the oops like this. And the next thing for
4:41:534 hours, 41 minutes, 53 secondsus is for us to have the different methods or the different endpoints that we can have here. So no worries. I'm going to explain uh why we type it out.
4:42:034 hours, 42 minutes, 3 secondsSo let's go. Let's uh have the first one. So get request which means any member can get. We make use of a slog here
4:42:124 hours, 42 minutes, 12 secondsuh which is a string. So we make it a prime decorator and we return this dot member service dot get members we pass a slug. Now we're going to have this which
4:42:204 hours, 42 minutes, 20 secondsis admin only. So it's going to be an update. So members/ ro. So we need to require role of the role admin. And then
4:42:294 hours, 42 minutes, 29 secondswe need the update role over here. So we need the param. So this is the method and uh we also need the member ID from
4:42:384 hours, 42 minutes, 38 secondsthe param and we also need the DTO which we can make use of the body decorator here like this and we can simply simply
4:42:484 hours, 42 minutes, 48 secondsreturn this members service dot update row and here we're going to pass in the slog the member ID and the DTO which is
4:42:574 hours, 42 minutes, 57 secondswhat the service needs this also is going to be admin only so delete so member ID We also say require
4:43:044 hours, 43 minutes, 4 secondsorganization role of admin. So we are using up decorator here. And the remove member method is going to take at param
4:43:114 hours, 43 minutes, 11 secondsthe slog which is a string and also the param member ID which is a string and we can return this member service. So we
4:43:204 hours, 43 minutes, 20 secondscan call the remove member method and we're going to pass in the slog as well as the member ID.
4:43:284 hours, 43 minutes, 28 secondsNow the last one we have here is also admin only route. So it's a post route to invite. So we need to also make use of the require organization role of
4:43:374 hours, 43 minutes, 37 secondsadmin. We have the send invite method which takes in the param for the slog and we store it in the slug here. And
4:43:444 hours, 43 minutes, 44 secondsalso at body we store it in the DTO which is of type invite member DTO.
4:43:494 hours, 43 minutes, 49 secondsWe're going to return this invite service send invite where we pass in the slog and the DTO email like this. So we
4:43:584 hours, 43 minutes, 58 secondscan save this members controller. Now before we close up on this, we need to make a sub to change to the authentication controller. So /invite
4:44:074 hours, 44 minutes, 7 secondsaccept which is where the user would you know accept the invite. Um [snorts] because if you double check over here so let's check real quick. We have the
4:44:164 hours, 44 minutes, 16 secondsservice we have the accept invite method here. So this here where do we have the accept invite? Yeah that should be in
4:44:244 hours, 44 minutes, 24 secondsthe invite service. So we have the accept invite and over here where we
4:44:314 hours, 44 minutes, 31 secondscreate the URL. So the invite URL you see the web URL/ invite/ accept and we
4:44:384 hours, 44 minutes, 38 secondshave the token over there. We just need to update this. So this is going to be um thisconfig service.get
4:44:474 hours, 44 minutes, 47 secondsand let's just type this out here. So we're going to have a string and here we have the web URL which we're going to
4:44:544 hours, 44 minutes, 54 secondsupdate to be the API URL. So this is going to come into / API URL. So a
4:45:014 hours, 45 minutes, 1 secondrequest is going to come to our back end and in our back end let's have it in /invite
4:45:104 hours, 45 minutes, 10 seconds/ accept and then the token. Now what this means is when the user clicks on this email they're going to send a direct request to the back end and the request is going to come to /invite.
4:45:224 hours, 45 minutes, 22 secondsNow / if we double check the o the o controller we do not have the invite
4:45:294 hours, 45 minutes, 29 secondshere. So maybe somewhere down here we need to add another method which is going or another route handler method
4:45:374 hours, 45 minutes, 37 secondswhich is going to help us handle the invite. So what we're going to do is right here is going to be we're going to have this get request which is going to
4:45:464 hours, 45 minutes, 46 secondsbe / accept /in invite/ accept and we're going to get the token from the query like this which will store in this token
4:45:544 hours, 45 minutes, 54 secondsof type string and also rest which is going to be of type response and then we can await this invite service which we
4:46:014 hours, 46 minutes, 1 secondhaven't injected here dot um then we can call the accept invite and pass the token and we can return this redirect
4:46:094 hours, 46 minutes, 9 secondshere which is then going to redirect the user straight up to the dashboard. So the web URL/ dashboard like this. Now I'm going to
4:46:184 hours, 46 minutes, 18 secondssave this. Definitely we have errors. So in the constructor let's make sure we inject the invite service just here. So
4:46:254 hours, 46 minutes, 25 secondswe're going to have private invite invite service and invite service is going to be of type the invite service.
4:46:364 hours, 46 minutes, 36 secondsSo we're importing it here. Now we no longer have the error here. And the next thing we're going to do is for us to
4:46:434 hours, 46 minutes, 43 secondsalso import the invite module inside the application module because we have the service here inside the module. So right
4:46:504 hours, 46 minutes, 50 secondshere in the module. Now we're going to be creating the members module. So right here let's come back to the members and
4:46:584 hours, 46 minutes, 58 secondsin here we're going to create the members.ts file. Now in here we are going to bring
4:47:064 hours, 47 minutes, 6 secondsin this code. We're going to import module from Nestjs common. We're also going to have the JWT module which will come in from at NestJS/JWT.
4:47:184 hours, 47 minutes, 18 secondsAnd then we also need a members service which will come from members service.
4:47:234 hours, 47 minutes, 23 secondsAnd we need to bring in the invite service. So let's also import invite service which will come from one level
4:47:304 hours, 47 minutes, 30 secondsup invite service and the members controller which is going to come from members. controller. Now we're going to
4:47:384 hours, 47 minutes, 38 secondshave at module decorator here and in the module decorator we're going to have the import. So we need to register the JWT
4:47:464 hours, 47 minutes, 46 secondsmodule. So we say JWT module.register and the providers we need the member service and we also need the invite
4:47:544 hours, 47 minutes, 54 secondsservice. Now for the controllers definitely we need the members controllers here and we need to also export the invite service. So, we're
4:48:034 hours, 48 minutes, 3 secondsgoing to export the invite service so that we can import um you can import it right into the authentication module.
4:48:114 hours, 48 minutes, 11 secondsNow, in the authentication module, we're going to have the members module. We're going to have the members module. So, I'm going to take this and we can have
4:48:204 hours, 48 minutes, 20 secondsthis right into the O module. So, in the import, we're going to also bring in the members module here. And the next step
4:48:294 hours, 48 minutes, 29 secondsis for us to also have the members module inside the app module. So right here into the application module, we are
4:48:384 hours, 48 minutes, 38 secondsgoing to have the imports here and inputs just below the organization module. Let's bring in the members
4:48:454 hours, 48 minutes, 45 secondsmodule just like this. Okay. So now the focus is going to be on the front end.
4:48:504 hours, 48 minutes, 50 secondsUm we're going to be working on the front end side of things so that we can integrate this um invite section um the
4:48:584 hours, 48 minutes, 58 secondsmembers and invite section that we have just worked on the API. So let's have the front end side of the code. So now we're going to fly because we're going
4:49:064 hours, 49 minutes, 6 secondsto be working on two things together on the front end side of our application.
4:49:104 hours, 49 minutes, 10 secondsWe're going to be working on um we're going to be working on the invite and also on the updating the member row at
4:49:184 hours, 49 minutes, 18 secondsthe same time simultaneously just as we have done on the back end. So we have the if we check the members we have the
4:49:244 hours, 49 minutes, 24 secondsinvite and we also have the members role to update the role. Okay. So let's go let's come over to the we're going to
4:49:324 hours, 49 minutes, 32 secondsstart by updating the package. So we need the package and in the package we have the types and in the types we are
4:49:394 hours, 49 minutes, 39 secondsgoing to be updating the source index.ts. So we have all these types over here. Now we're going to add three more types starting with the
4:49:464 hours, 49 minutes, 46 secondsorganization with member type here. So we're going to export this interface organization member with user which is
4:49:544 hours, 49 minutes, 54 secondsgoing to have the ID of string the role of type organization role. We also have the created ads of type string. And then
4:50:024 hours, 50 minutes, 2 secondswe have the user which is this object with the id. The name the name could be a string or null. We also have the user
4:50:104 hours, 50 minutes, 10 secondsemail. The email is of type string. We have the avatar URL which is also string or null.
4:50:174 hours, 50 minutes, 17 secondsThen we're also going to export this interface which is the this is going to just have the email of type string. And lastly, we're going to
4:50:254 hours, 50 minutes, 25 secondsexport this interface for the update role impute, which is just going to take in the role of organization role like
4:50:334 hours, 50 minutes, 33 secondsthis. Now, we're going to create a new folder and this folder is going to be for the members. I'm going to save this
4:50:404 hours, 50 minutes, 40 secondsand I will close this. Now we're going to come right into the web and in the web where we have the source and in the
4:50:484 hours, 50 minutes, 48 secondssource where we have the features we are going to create a new feature for our members. So you can see the format over
4:50:554 hours, 50 minutes, 55 secondshere we have the features for our authentication we have one for the organization and now we have one for the members. So in here we're going to
4:51:034 hours, 51 minutes, 3 secondscreate the constants.ts file. So inside the members constant.ts TS5 we're going to export this constant
4:51:124 hours, 51 minutes, 12 secondswhich is this member intent and the intent could be invite. We're going to make use of this invent intent for our server action or it could be to update
4:51:214 hours, 51 minutes, 21 secondsthe role of the user which is update role or it could be to remove the role here as constant. Now we are also going
4:51:284 hours, 51 minutes, 28 secondsto export this type of members intent which is going to be a type of like this members intent and then we have the key
4:51:364 hours, 51 minutes, 36 secondsof the members intent here. Okay. So let me collapse this so that we can see it in full over here like this. And now the
4:51:454 hours, 51 minutes, 45 secondsnext step for us is to create our client schema. So this is the schema we're going to use for validation on the front
4:51:514 hours, 51 minutes, 51 secondsend before we go on to call the server action. And the server is also going to run its own validation. Now let's see
4:51:584 hours, 51 minutes, 58 secondshow it goes. I'm going to save this and open this up. Now we're going to come right up. Still in the members here.
4:52:054 hours, 52 minutes, 5 secondsThis is our constant. We're going to have the client schema. So we're going to call this clients schema
4:52:134 hours, 52 minutes, 13 secondssc.ts file. So this our client schema.ts file.
4:52:184 hours, 52 minutes, 18 secondsWe're going to make use of zord over here. And here we can import zed from zord. We're also going to have the organization rows which is going to come
4:52:264 hours, 52 minutes, 26 secondsin from the super vote constant. And then we need the impute. So you know we're creating a user. We need the imputes or type of data which is the
4:52:354 hours, 52 minutes, 35 secondsinvite member impute. And we also need the organization role imputes. Now with this we're going to be extending these imputes that we have here. So we can
4:52:444 hours, 52 minutes, 44 secondsexport the constants the invite schema which is going to be the z.object and we have the email which is z.string
4:52:514 hours, 52 minutes, 51 secondsstring dot email we can say invalid email if the validation doesn't match or if it's not an email then we say this is going to satisfy zod type of the invite
4:53:014 hours, 53 minutes, 1 secondmember input we're going to do the same for the update row schema which is going to be equals to this zobject and we're
4:53:084 hours, 53 minutes, 8 secondsgoing to have the role which is enom and the organization role admin or it could be developer and this also needs to
4:53:164 hours, 53 minutes, 16 secondssatisfy the type over here the z type the updates role input. Now the next thing we're
4:53:244 hours, 53 minutes, 24 secondsgoing to do is to create our server schema. So this is the server or the schema we'll use on the server side that is for our action. So we're going to
4:53:314 hours, 53 minutes, 31 secondshave the server dot schema.ts file server dot schema.ts file like this. Now
4:53:394 hours, 53 minutes, 39 secondsthis server schema is pretty much identical to the client schema but we're also going to have the let's see how it goes discriminated union. So we're going
4:53:474 hours, 53 minutes, 47 secondsto make use of the import from Z and we're also going to bring in the members intent which will come in from the constant.
4:53:554 hours, 53 minutes, 55 secondsWe're also going to bring in our schema.
4:53:574 hours, 53 minutes, 57 secondsSo we'll import the invite schema as well as the update ro schema which will come from our client schema. Now let's have the member server schema
4:54:064 hours, 54 minutes, 6 secondsdefinition. So we can export this as a type and you're going to see this is then going to be Z.iscriminated union based on the intent that we have
4:54:154 hours, 54 minutes, 15 secondsover here. This is going to be like the configuration. So we have the intent here which is the member invite intent
4:54:244 hours, 54 minutes, 24 secondsand it's going to take in the shape. So here we're going to spread the invite schema which is coming from the client dot shape here. And we're going to do
4:54:324 hours, 54 minutes, 32 secondsthe same thing for the update row. And you see the beauty of doing this here.
4:54:364 hours, 54 minutes, 36 secondsRather than having only the intent, we can also extend it. So we're going to have the member ID here which is a Z dot
4:54:444 hours, 54 minutes, 44 secondsstring. And now we can spread out the update row schema that is coming from the client. So we can build on the client and have our own schema for the
4:54:524 hours, 54 minutes, 52 secondsserver side. Now the same for the object here for the remove. This is not spreading the shape from the client. So
4:54:594 hours, 54 minutes, 59 secondswe just have the intent here and it's also going to take in the member ID and the member ID here is of type string like this.
4:55:084 hours, 55 minutes, 8 secondsNow we have created the schema for the client and also the schema for the server side with the different actions with the different um constants here
4:55:174 hours, 55 minutes, 17 secondswhich is like the intent. Now we are going to create the server action still inside the members folder here we are
4:55:254 hours, 55 minutes, 25 secondsgoing to be creating a new file and this file is going to be the action.ts.
4:55:304 hours, 55 minutes, 30 secondsSo we're going to come back and lay out the server action file. We're going to start by marking the action as a server
4:55:384 hours, 55 minutes, 38 secondscomponent making of the use server directive. And then we can import revalidate path which we're going to call after an update so that we can
4:55:454 hours, 55 minutes, 45 secondsclear the cache. And then we're going to bring in the member server schema from the server schema file. And then the
4:55:534 hours, 55 minutes, 53 secondsmembers intent which is going to come from the constants file. We also need to bring in our cookie keys from our super vault um constants. So let's import the
4:56:024 hours, 56 minutes, 2 secondscookie keys and then we're going to bring in the retrieve token from the cookie function which is going to come
4:56:114 hours, 56 minutes, 11 secondsfrom our server side utils. So from our server utils the ut file and then we need our API client. So the API client
4:56:194 hours, 56 minutes, 19 secondsis going to come from lib exusios. Now let's have the action state. Okay, we're going to export this type. We can call
4:56:264 hours, 56 minutes, 26 secondsit member action state is an object like this where we have the error of type string. You can see it's optional. Same
4:56:334 hours, 56 minutes, 33 secondsfor the success state is also optional like this. Then we can export the async function. The members action is going to
4:56:404 hours, 56 minutes, 40 secondstake in the slug which is a string and then the previous state which is the member action state
4:56:484 hours, 56 minutes, 48 secondsand we can also pass in the form data like this which is form data. Now this is going to return a promise that
4:56:564 hours, 56 minutes, 56 secondsresolves to this action state. So either error or success. And let's start by passing in the raw object. So we're
4:57:034 hours, 57 minutes, 3 secondsgoing to say object entries. We take the form data. And then we want to pass it based on the member server schema dot
4:57:104 hours, 57 minutes, 10 secondssave pass and we're going to pass row like this. Now that we have this, the next thing we are going to do is to make
4:57:174 hours, 57 minutes, 17 secondssure that um if the pass is success is not successful, we want to try an error.
4:57:234 hours, 57 minutes, 23 secondsBut if it's successful, then we want to retrieve the token and based on different intents, we're going to call the appropriate backend API to perform
4:57:314 hours, 57 minutes, 31 secondsan action. Let's see how that works. So we're going to say if it's not successful, so if pass success is false, we're going to return this object. So
4:57:404 hours, 57 minutes, 40 secondsremember, we need to always return error or success.
4:57:444 hours, 57 minutes, 44 secondsWe're going to have this flattening here. So we're passing the error and we're going to al say invalid impute just like this. If this is not um
4:57:514 hours, 57 minutes, 51 secondsdoesn't give us anything then let's retrieve the token with our retrieve token from cookie and we also want to spread or have the intent and the rest
4:58:004 hours, 58 minutesof the data which will come from pass data.
4:58:044 hours, 58 minutes, 4 secondsNow let's send the request. We have our try block and we're going to switch based on the intent. So let's have the first case. Let's have the case where
4:58:124 hours, 58 minutes, 12 secondsit's an invite. So members in.invite we are going to await our API client post that we can send a post request to
4:58:204 hours, 58 minutes, 20 seconds/organizations/organization log the members the invite route and we want to pass in the data. So the data is
4:58:284 hours, 58 minutes, 28 secondsgoing to be the email. We're going to say data as email of type string like this email or we're going to also have
4:58:354 hours, 58 minutes, 35 secondsthe headers. So the headers is going to have the cookie. So want to always attach a cookie. So we say cookie keys do assess token is going to be equals to
4:58:434 hours, 58 minutes, 43 secondstoken here. And once we are done we're going to revalidate the path and we want to return success.
4:58:504 hours, 58 minutes, 50 secondsSo we're going to revalidate the members path. So organizations log the settings the members and we're going to return
4:58:574 hours, 58 minutes, 57 secondssuccess that invite has been sent. So we have sent an invite to this user. So to update the row case, let's have another
4:59:054 hours, 59 minutes, 5 secondscase here. And this case is going to be for the members intent dot update row.
4:59:124 hours, 59 minutes, 12 secondsAnd we're going to say cons the member ID and the role is going to be equals to data as this object here with the member
4:59:194 hours, 59 minutes, 19 secondsID and the row of they both of type string. So we can send the patch request to our API. So we're going to await our
4:59:254 hours, 59 minutes, 25 secondsAPI client. Patch to this URL. So /organizations the slog the members the member ID / ro
4:59:354 hours, 59 minutes, 35 secondsthen the data is going to be the role we want to update and we're going to also have the headers which is going to be the cookie and here we're going to have
4:59:444 hours, 59 minutes, 44 secondsthe cookie keys dot access token is going to be equals to token like this. We're also going to revalidate the path.
4:59:514 hours, 59 minutes, 51 secondsSo the organizations the slog the settings and the members um page and we're going to return the object which
4:59:584 hours, 59 minutes, 58 secondsis going to say success the role has been updated.
5:00:035 hours, 3 secondsNow let's have the next case which is the remove member intent. So we're going to have the case here which is the
5:00:115 hours, 11 secondsmembers do intent dot remove. Here we're going to get the member ID. So con member ID is going to be equals to data
5:00:195 hours, 19 secondsas the member ID object which is of type string and we can await our API client
5:00:265 hours, 26 secondsdot delete. Remember it's a subdelete so we're not removing a record from our database. So slash organization/log/member/member
5:00:355 hours, 35 secondsid. We also have the headers here and we have the cookie which is the cookie keys access token like this. And we pass in
5:00:445 hours, 44 secondsthe token and we also want to revalidate path. So we're going to revalidate path over here. And the path we're going to
5:00:505 hours, 50 secondsrevalidate is the /organizations/ the slog/ settings/members.
5:00:565 hours, 56 secondsAnd we want to return this object over here which is going to say success member removed.
5:01:045 hours, 1 minute, 4 secondsNow let's have the catch case in case we do have an error. So for catch error which is of type any we can return this
5:01:125 hours, 1 minute, 12 secondsobject here which is going to have error the error.response data dossage.
5:01:175 hours, 1 minute, 17 secondsOtherwise we're going to say something went wrong. Okay. So this is pretty much what we have over here in terms of
5:01:265 hours, 1 minute, 26 secondsgetting started the action that is going we are going to call on the front end.
5:01:305 hours, 1 minute, 30 secondsThese are the different actions. So we do have this error here and unexpected any specify a different type. I'm just
5:01:385 hours, 1 minute, 38 secondsgoing to disable this over here. So I'll say quick fix and okay. So maybe I say unknown like this and then we still have
5:01:455 hours, 1 minute, 45 secondsthe error. So what I'm going to do is I'm just going to say quick fix and I'll dis disable this for this line over
5:01:525 hours, 1 minute, 52 secondshere. So let's save this. This is our action. We're going to be calling this on our front end. Now we're going to
5:02:005 hours, 2 minutescreate our helper file. So the members helper file. So for this let's come over here and we're going to be creating a
5:02:075 hours, 2 minutes, 7 secondsnew file. That file is going to be still inside the members folder. We are going to create the members
5:02:145 hours, 2 minutes, 14 secondslike this. on helpers dots server.ts file. Now in here we're going to import
5:02:225 hours, 2 minutes, 22 secondsredirect which will coming from nextjs for/navigation.
5:02:275 hours, 2 minutes, 27 secondsThe idea here we just want to have a method that's going to help us to retrieve the members from API. So we need our API client um which will come
5:02:355 hours, 2 minutes, 35 secondsfrom our lib exios. We also need to have this retrieve the token from cookie which will come from our server utils
5:02:425 hours, 2 minutes, 42 secondsthe UTS file. And we also need to import the cookie keys. The cookie keys they going to come in from the super vault
5:02:505 hours, 2 minutes, 50 secondsconstants. And we need our type. So the organization member with user which will come from our super vote for /types.
5:02:595 hours, 2 minutes, 59 secondsOnce we have the import, the next thing is for us to export our async function which we call retrieve members from API.
5:03:075 hours, 3 minutes, 7 secondsSo we pass in this log and we're going to say hey this is going to return a promise that is going to resolve to the organization member with user array. And
5:03:165 hours, 3 minutes, 16 secondshere we can going to have the token which we are going to say retrieve the token from the cookie and our try block
5:03:245 hours, 3 minutes, 24 secondslet's have um say con data is going to be equals to await the API client get want to get the organization member with
5:03:325 hours, 3 minutes, 32 secondsuser list. So the endpoint is going to be /og/ slog and the member and then for the headers we are also going to attach
5:03:415 hours, 3 minutes, 41 secondsthe cookie which is going to be the cookie keys access token which is equals to the token that we get here. Then we
5:03:495 hours, 3 minutes, 49 secondscan go on to return the data and for the catch block we just want to redirect the user to the organization route. Okay. So
5:03:575 hours, 3 minutes, 57 secondsI'm going to provide us with the templates that we're going to need. Now the next thing for us to do is to work on the organization settings page which
5:04:065 hours, 4 minutes, 6 secondswe're going to be working on next. So this is the point where we build out the settings page. I'm just going to close
5:04:135 hours, 4 minutes, 13 secondsthis and come out of the API folder and then I want to run the pnpm dev pnpm dev
5:04:215 hours, 4 minutes, 21 secondswhich is going to run this the API and also the web. Now we'll give this a moment for it to build. I'll just
5:04:285 hours, 4 minutes, 28 secondsrefresh this in the meantime while it is compiling. And then we need to create a new page. So why do we have this error somewhere here?
5:04:385 hours, 4 minutes, 38 secondsOkay. So I'm seeing this error here.
5:04:405 hours, 4 minutes, 40 secondsUh-huh. So we see it here. It's coming in from the failed fetch. Yeah, I think that's because the API wasn't up and running
5:04:485 hours, 4 minutes, 48 secondsthen. So now we give this a refresh and the error should be gone. Yeah. So the error should be gone this time around and we should see the content. Yeah. So
5:04:565 hours, 4 minutes, 56 secondsnow it's gone. So what we're going to do, we need to if we check this, we have the settings page or the members page.
5:05:035 hours, 5 minutes, 3 secondsSo this settings page, this is the page we're going to be working on next. As you can see, we do not have any content here. So to work on this page, um, we
5:05:135 hours, 5 minutes, 13 secondsneed the organization log. So I'm going to come here and I actually did register two new templates. So we have the
5:05:205 hours, 5 minutes, 20 secondssettings page. This is the settings page for the members and we have the members client which also is the content of this
5:05:305 hours, 5 minutes, 30 secondsmembers page client that we do have here. So this members client that we have here and you can see uh we need
5:05:375 hours, 5 minutes, 37 secondsselect which we're going to bring in from shad cn UI. So let's run the installation. I'm going to open a new terminal window here and I'll cd into
5:05:465 hours, 5 minutes, 46 secondsthe apps and you want to be into the web and here you want to run this command pmppm dlx shen at latest add badge and
5:05:555 hours, 5 minutes, 55 secondsalso select we're going to make use of the badge component and also of the select component from shot cui we give
5:06:035 hours, 6 minutes, 3 secondsthis a moment for the installation to complete and while it is completing we just need to come right in here into the
5:06:105 hours, 6 minutes, 10 secondsapp and in the app we need to create a new folder. Actually in the dashboard we have the organizations and then we have
5:06:185 hours, 6 minutes, 18 secondsthe organizations log and rather than projects we're going to create a new folder here. This is going to be for settings. So that's organization
5:06:265 hours, 6 minutes, 26 secondssettings and then in here we're going to have a new folder for the members and then we are going to have the page.tsxs. So the page tsx like this.
5:06:385 hours, 6 minutes, 38 secondsNow, to make sure we are not seeing a broken page here, I'm just going to go back here and what I'm going to do, I'm just going to manually copy this. So,
5:06:475 hours, 6 minutes, 47 secondsyou can just manually copy it as we do not have a link that go straight up to that settings page in for for now. So, just manually copy this log that you
5:06:565 hours, 6 minutes, 56 secondshave over here. And once you have that, you want to come back to the settings.
5:07:015 hours, 7 minutes, 1 secondAnd in the settings, so remember this is members. So, you want to come over to actually not just settings like this. So you want to come over to organizations
5:07:105 hours, 7 minutes, 10 secondsand then you want to come over to slash the organizations log. So you want to paste in the organizations log here and
5:07:175 hours, 7 minutes, 17 secondsthen you want to come over to the / settings and then you want to come over to /members page. So this is the page we're going to be working on here. So
5:07:265 hours, 7 minutes, 26 secondsorganization organizations log/ settings/members.
5:07:305 hours, 7 minutes, 30 secondsYou want to hit this and for now we are not exporting anything. So we are going to have an error that we are not exporting a default or having a disport
5:07:385 hours, 7 minutes, 38 secondsdefault export here. Now let's start with the settings page. I'm going to take all of these and we can copy everything we have here and we can replace it with this content over here.
5:07:505 hours, 7 minutes, 50 secondsNow we have this error which is the members client as we do not have this yet. Now this we need to just come here and also copy this and this members client we are going to register it here.
5:08:015 hours, 8 minutes, 1 secondSo right here in the component folder, I think that's where it's looking for it.
5:08:065 hours, 8 minutes, 6 secondsSo let's just double check. This is looking for it one level up the members client. Okay. So we're going to have the members client right in here. Or maybe
5:08:155 hours, 8 minutes, 15 secondswe can change the the import. So what I'm going to do, I'm going to come here to the features to
5:08:235 hours, 8 minutes, 23 secondsthe members and I'm just going to have the membersclient.ts ts file or tsx that as it's going to
5:08:325 hours, 8 minutes, 32 secondshold the JSX for the members client and then I'm going to paste in the content of the template right in here like this.
5:08:415 hours, 8 minutes, 41 secondsThis fixes the error that we have. We can save this but um we still have the import error here. So this needs to come
5:08:485 hours, 8 minutes, 48 secondsin from at/ the features we have the members and then we have the members client tsx
5:08:555 hours, 8 minutes, 55 secondsfile. Once we give this a save, we should then see the content of this page over here and we should no longer have
5:09:015 hours, 9 minutes, 1 secondany errors and that's what we see. So we see the member the content of this page and you can see you can go on to invite
5:09:095 hours, 9 minutes, 9 secondsa member and definitely we haven't fixed the functionality here. You can choose an action, hit save or you can remove a
5:09:175 hours, 9 minutes, 17 secondsmember. Now the next step for us is to make sure that this is no longer hardcoded data and this page. So I'm
5:09:245 hours, 9 minutes, 24 secondsgoing to remove the templates. So this page is now serving dynamic data. Let's have the dynamic data here. I'm going to
5:09:335 hours, 9 minutes, 33 secondsstart by having some props over here. So this is the member settings page. Okay.
5:09:395 hours, 9 minutes, 39 secondsSo this is the Yeah. So here we're going to get in the params which is going to be passed automatically here. So here we can say this is going to be of type
5:09:485 hours, 9 minutes, 48 secondsobject where we're going to have the params like this. And this params here is going to be of type promise. And this promise
5:09:555 hours, 9 minutes, 55 secondsis going to be resolved into this object where we're going to have the slog and the slog is going to be of type string.
5:10:025 hours, 10 minutes, 2 secondsSo that means we can come here and we can get the slog. So we can say this slog is going to be equals to and then
5:10:105 hours, 10 minutes, 10 secondswe await the params like this the params object. Now with this log we're going to fetch the organization and also the members. So we're going to say con we're
5:10:185 hours, 10 minutes, 18 secondsgoing to have the ors or the org and then members is then going to be equal to await and can await promise all which
5:10:265 hours, 10 minutes, 26 secondsis going to parallel fetch every all the promise and just wait for the slowest one to resolve. It's going to take in the list and we can pass in retrieve
5:10:355 hours, 10 minutes, 35 secondsorganization. So organization by slog from API and this is going to
5:10:425 hours, 10 minutes, 42 secondstake in the slog. And the next thing we need uh is for the members. We're going to have retrieve members from API. And we are also going to pass in the slug.
5:10:535 hours, 10 minutes, 53 secondsWe have the organization and we also have the members. So rather than have organization name here like this, we are going to display the organization
5:11:025 hours, 11 minutes, 2 secondsname here. Now the members client is going to need some props. If we save this, we should already see this replaced with the organization name. Now
5:11:095 hours, 11 minutes, 9 secondsfor the member client, we are going to be having some prop over here. So, it's going to take in the slog. And the slug here is going to be equals to the slug.
5:11:185 hours, 11 minutes, 18 secondsOops, not members. It's going to be equals to the slog. We're also going to pass in the members. And the members is going to be equals to the members. And
5:11:265 hours, 11 minutes, 26 secondswe're also going to pass in the current user row. Current user row is then going to be equals to the user row like this.
5:11:345 hours, 11 minutes, 34 secondsUser oops, not user agent. It's going to be equals to the user row like this. Or the organization. Sorry. organization.
5:11:445 hours, 11 minutes, 44 secondsNow let's save this. Definitely we have errors because we are not passing in the different properties that this component needs. So in order for us to do that,
5:11:535 hours, 11 minutes, 53 secondslet's come over to the members client file. And over here we are going to also replace this with dynamic data. We're
5:12:005 hours, 12 minutesgoing to start by defining the interface. So this is taken in the members client props is taking in the string. We also need this organization
5:12:095 hours, 12 minutes, 9 secondsmember with user which is going to come from our super vault types. We also need the organization role which is also going to come in from super vult types.
5:12:185 hours, 12 minutes, 18 secondsNow we can come here and say this is going to take in props and or we can directly destructure these which will be the members client props. Now over here
5:12:275 hours, 12 minutes, 27 secondsthe error is gone and we can destructure slog members and current user row. So here we can bring the currencies row the
5:12:355 hours, 12 minutes, 35 secondsmembers as well as the slug. Now I want to know if this user is an admin and we also want to go and get the bound action
5:12:435 hours, 12 minutes, 43 secondsso that we can go on to bind do some JavaScript which might look new. So um let's do it here. We're going to say con
5:12:515 hours, 12 minutes, 51 secondsis admin is going to be equals to if the current user row is equals to the organization rows admin. We're also
5:12:595 hours, 12 minutes, 59 secondsgoing to have this bound action here. So we're going to have the members action and then we're going to call bind. So we
5:13:055 hours, 13 minutes, 5 secondspass null and the slog and then we're going to have the state the form action and the spending which is going to be equals to the use state action and we're
5:13:145 hours, 13 minutes, 14 secondsgoing to pass in the bound action and an empty object here. So let's make sure we bring in the organization rows. So organization rows is going to come from
5:13:235 hours, 13 minutes, 23 secondssuper vote constants. We also need to bring in the members action. So remember this action that we created last time out this we need to bring this in which
5:13:315 hours, 13 minutes, 31 secondsis going to take in the slug the previous state automatically as well as the form data. So we need to bring in use action state which is a hook that
5:13:395 hours, 13 minutes, 39 secondscomes in from react. So where do we have it use action state over here. I'm just going to move this right up to the top
5:13:465 hours, 13 minutes, 46 secondshere like this. All right. So this is what we have going on so far. We're not making use of the members yet. And we have this bound action over here which
5:13:555 hours, 13 minutes, 55 secondstakes in previous and you see form data here. So what we are going to be doing next right inside here is to build our
5:14:025 hours, 14 minutes, 2 secondsform. We do not have our form yet. So let's go on and build our form making use of use form hook. So just right
5:14:105 hours, 14 minutes, 10 secondsafter here we're going to say con form is going to be equals to our use form which says z.infair
5:14:185 hours, 14 minutes, 18 secondsfrom the type of our invite schema. And we're going to pass in the resolver which is our Z resolver for the invite
5:14:265 hours, 14 minutes, 26 secondsschema. And the default values we're just going to have the email. So for invite um we only need the email address
5:14:335 hours, 14 minutes, 33 secondshere. So let's also make sure we bring in the use form which will come in from react hook form. Z needs to be brought
5:14:405 hours, 14 minutes, 40 secondsin from z here. The invite schema will come from the client schema. Z resolver also is going to come in from at hook
5:14:495 hours, 14 minutes, 49 secondsform for/resolvers for/z and we already have our invite schema that we imported here. So now we have our form we can go
5:14:575 hours, 14 minutes, 57 secondson to fix things. Let's go on and save the content of this file and we should see the form here to send invite which
5:15:045 hours, 15 minutes, 4 secondsis the form we already see. Now this is admin only so we do not want to always display this. So what we are going to do
5:15:115 hours, 15 minutes, 11 secondsis I'm going to cut this card that we have over here. So I'm going to cut it and I would say like is admin. So is
5:15:205 hours, 15 minutes, 20 secondsadmin. If that is true then we're going to display everything that we have over here. Now because we're an admin we are
5:15:275 hours, 15 minutes, 27 secondsgoing to be you know we're always going to see this. So we give this a save. We are still going to see it like nothing is going to change. But for us to see how it's going to look like to a
5:15:355 hours, 15 minutes, 35 secondsnon-admin. If we just invert this you see we are no longer going to be able to see this invite a member form. Okay. So
5:15:445 hours, 15 minutes, 44 secondsif it's admin then we're going to see the form and this form here we have the state errors. So if the state error remember we are either returning error
5:15:525 hours, 15 minutes, 52 secondsor success from the server action we are going to display here and then we have the form which is this here
5:15:595 hours, 15 minutes, 59 secondswhich takes in the form action and here we have the different controller for the email and we have this which is the button that also host the invite and
5:16:085 hours, 16 minutes, 8 secondsit's going to send invite. So it goes on and then it's going to call the action.
5:16:135 hours, 16 minutes, 13 secondsSo we have the form action here. If you come over to the form action, this is the bound action which is the member action here. And it takes in the slugg.
5:16:235 hours, 16 minutes, 23 secondsSo this member action is going to call this invite that we have over here.
5:16:285 hours, 16 minutes, 28 secondsMembers invite. And this member invite is going to then be handled by this case because that's the intent. The intent
5:16:355 hours, 16 minutes, 35 secondswas registered here. And this is the value. and it's going to run this piece of code here. We're going to try that in
5:16:425 hours, 16 minutes, 42 secondsa moment. And the next is for us to check the members list. Now the members list looks like it's already mapped out
5:16:515 hours, 16 minutes, 51 secondswith everything we need because we are mapping through the member. We display the member length. So one member here
5:16:585 hours, 16 minutes, 58 secondsand member or members if it's plural and then we list through the member and then we display the avatar here which is what
5:17:055 hours, 17 minutes, 5 secondswe see. and then the member name and email. And we also have the select dropdown which here is going to go on to
5:17:135 hours, 17 minutes, 13 secondssubmit the form. So we do not need to do anything here. If it's only an admin that should be able to see this over here. So if we toggle this and we give
5:17:205 hours, 17 minutes, 20 secondsthis a save, you see we just see the badge here and remove. So if you're an admin, you'll be able to go on and you
5:17:275 hours, 17 minutes, 27 secondsknow update the role. You can see each user's current role and then you can go on to submit. Now we have the form over
5:17:355 hours, 17 minutes, 35 secondshere as this said it's going to be handled by the select on form submission. So we have the select over here and the button here is going to be
5:17:425 hours, 17 minutes, 42 secondsthe intend um intent.date row. So once we save this this button is going to get called and then it's going to get
5:17:505 hours, 17 minutes, 50 secondssubmitted. So remember this is a form over here and we're passing in the action here and it also needs the slog.
5:17:565 hours, 17 minutes, 56 secondsSo for the slog let's see where we pass in the slog. So we have actually have the member ID here. So this needs the
5:18:035 hours, 18 minutes, 3 secondsmember ID. Okay. And for the log, I think that's what we already binding here as well. So we're already binding this log here. So this is pretty much
5:18:125 hours, 18 minutes, 12 secondswhat we need to test this. And let's see if this is going to work. Now, it's not going to work because we already have um
5:18:195 hours, 18 minutes, 19 secondsone user, which is our member already the admin of the organization. What I'm
5:18:255 hours, 18 minutes, 25 secondsgoing to do is to um we're going to test it out. Okay. So I'm going to log out
5:18:325 hours, 18 minutes, 32 secondshere because this account I am already a user. I am already an admin and I'm still going to be an admin in other
5:18:405 hours, 18 minutes, 40 secondsorganizations. So I'm going to hide this temporarily. And what we can do if we come over here and just quickly log out
5:18:475 hours, 18 minutes, 47 secondsso that I can log in with another user with a different email. So I just want to log in with an email that I used to
5:18:555 hours, 18 minutes, 55 secondscreate the recent account. So test@est.com and I'm going to provide my password here and sign in and I'm going to be redirected over to my organization.
5:19:055 hours, 19 minutes, 5 secondsAnd once I'm redirected over to my organization dashboard, then it redirects me to the organization that I belong to here. Now what we're going to
5:19:135 hours, 19 minutes, 13 secondsdo if you see here um if we come over to the settings now we still do not have the we still do not have the link which
5:19:205 hours, 19 minutes, 20 secondswe're going to fix in a moment. But if we come here, you just want to copy this slug so that we can go there manually.
5:19:275 hours, 19 minutes, 27 secondsAnd if we come over to the settings page and in the settings, we want to come over to I think that's the let me
5:19:345 hours, 19 minutes, 34 secondsquickly verify. So settings and organizations log. So it's actually
5:19:405 hours, 19 minutes, 40 secondsslash organizations and then we have the organizations log which I'll paste this.
5:19:475 hours, 19 minutes, 47 secondsAnd then we have for/ settings. And then we have /members here. So in here I want to invite
5:19:555 hours, 19 minutes, 55 secondsanother user. So we have only one member here which is this member. So I want to invite the user that I used to sign up
5:20:035 hours, 20 minutes, 3 secondsat recent. So I'm going to say this is my email here. And I'm going to send across the invite. Now we're going to
5:20:115 hours, 20 minutes, 11 secondssee success here. The invite has been sent. We'll give this a moment for it to work.
5:20:185 hours, 20 minutes, 18 secondsInternal server error. So let's actually see what went wrong over here.
5:20:275 hours, 20 minutes, 27 secondsExpires in should be a number in seconds. Yeah. So that's our to-do that we did leave out there and it came back for us. So if we come here and we search
5:20:355 hours, 20 minutes, 35 secondsfor to-do, we did leave a to-do over here. So this is it. Now is the time for us to fix this so that we can actually
5:20:425 hours, 20 minutes, 42 secondstest this out. So actually that error wasn't from our code. So what I'm going to do, I'm just going to get rid of this. It was actually a VS code something. So I had to refresh VS Code.
5:20:525 hours, 20 minutes, 52 secondsAnd you can see we no longer have any errors over here. Now I'm going to refresh this as well. Uh quickly, can I copy this? Yeah, I'm just going to
5:21:005 hours, 21 minutesrefresh this as well so that we can give this another trial. Yeah. So let's go. I'm going to bring this up here. Oops.
5:21:075 hours, 21 minutes, 7 secondsJust going to bring this up here and then I'll send invite. I already have my mailbox open here. So I'll just leave it open and then send invite here. So I'm
5:21:155 hours, 21 minutes, 15 secondstrying to invite this user. So remember this is the user that I registered or I used to create my recent um account. So
5:21:225 hours, 21 minutes, 22 secondswe wait for this and you can see success invite sent. So the invite has been sent now. Um if I come over to my email, I'm
5:21:315 hours, 21 minutes, 31 secondsjust going to give this a refresh. Do I see the email? I do not get any email yet. So, let's just be sure that we do not have any errors there whatsoever.
5:21:415 hours, 21 minutes, 41 secondsAnd let me check my terminal. Yeah. So, everything looks like it's okay except the fact that the email did not arrive
5:21:505 hours, 21 minutes, 50 secondsyet. So, I did spot the reason why it wasn't working. This over here, we're making use of recent fre. Um, we haven't
5:21:595 hours, 21 minutes, 59 secondswe do not have our domain link. So, we are not meant to use, you know, this that we have over here, super vote. we are meant to use on boarding at
5:22:065 hours, 22 minutes, 6 secondsresend.dev. So this is what we are meant to use as the from and we can only send email to the email that we registered. I
5:22:145 hours, 22 minutes, 14 secondskeep on emphasizing that. Um so that's going to work for you. Now you give this a refresh. Wait for your API to build. Once it builds, we can test this again.
5:22:235 hours, 22 minutes, 23 secondsSo you can also refresh the browser just to be double sure that your current progress has been saved. And I'm going
5:22:305 hours, 22 minutes, 30 secondsto paste in my email. And this time around, once you hit on send invite, you should see the email actually arrive to
5:22:395 hours, 22 minutes, 39 secondsyour mailbox. We're going to give this a moment. And now we say invite sent. Now once we come over to our mailbox and we
5:22:475 hours, 22 minutes, 47 secondsgive this a refresh over here, you should see the email here. Okay. So now the email doesn't arrive. But if you
5:22:555 hours, 22 minutes, 55 secondsdouble check your spam folder, you can see we have one email here. And if you open this, you can see this email was just sent now 3 p.m. which is my current
5:23:045 hours, 23 minutes, 4 secondstime. And yeah, so it works, but it did come over to the spam folder. We do not have our own um domain yet. So you
5:23:115 hours, 23 minutes, 11 secondsalways want to double check here. And you can see you have been invited to join code with live organization on super vote. Okay, I'm just going to
5:23:195 hours, 23 minutes, 19 secondsreport this at no spam so that it can come over here to our inbox. And yeah, so we have it here. You can see everything just as we did here. And this is going to go over to this invite URL.
5:23:305 hours, 23 minutes, 30 secondsSo we're going to be sending a request to the API URL which is our if you double check the env you would see the
5:23:385 hours, 23 minutes, 38 secondsAPI URL here is this URL. So localhost
5:23:445 hours, 23 minutes, 44 seconds3000/ API which is our API URL here. So we're going to send the request to the back end and it's going to come over to
5:23:525 hours, 23 minutes, 52 seconds/invite/ accept token. Let's see what happens over there. So if we come over to the invite to the o controller we can see
5:24:015 hours, 24 minutes, 1 secondthis last one we added / invite/ accept we're going to attach the token which is this token here and we get the token
5:24:095 hours, 24 minutes, 9 secondsmakings of this query decorator we're able to retrieve the token as we see over here is going to help us to extract the query property from the request
5:24:185 hours, 24 minutes, 18 secondsobject and it's going to populate the decorated parameter with the value of the query. So in this case is this token here is going to be populated with the value of this token query.
5:24:285 hours, 24 minutes, 28 secondsThen we're going to make a request to the invite service and we call the accept invite. Now this is going to come over to the invite service accept
5:24:375 hours, 24 minutes, 37 secondsinvite. It's going to verify the invite based on the secret. So the token and then it's going to check hey are you a
5:24:445 hours, 24 minutes, 44 secondsnew user? If you are a new user here, if you're not able to find a new user, then we're going to create a user. So, if we
5:24:525 hours, 24 minutes, 52 secondsdo not find the user here, we are going to create a new user. We're also going to check, are you already a member of this organization? If you're not a
5:24:595 hours, 24 minutes, 59 secondsmember of this organization, um then you're going to be added to the organization with the role of a
5:25:075 hours, 25 minutes, 7 secondsdeveloper. So, this is how everything works. And once you're done, you can see here the authentication controller is then going to redirect you back to the
5:25:165 hours, 25 minutes, 16 secondsdashboard route. Okay? And the dashboard route is then going to redirect you to the organization. So I hope you understand the flow and how everything
5:25:235 hours, 25 minutes, 23 secondsis working. So let's try it out. I'm going to hit on accept invite and it crashes because here we have ondefine.
5:25:315 hours, 25 minutes, 31 secondsNow the reason we have ondefine is because of here.
5:25:365 hours, 25 minutes, 36 secondsSo let's check. Let's come over here and if we double check the env. So this is our API
5:25:435 hours, 25 minutes, 43 secondsand this is our env. So if we come here, oh, we do not actually have the API URL here. So that's why it broke. Um to fix
5:25:525 hours, 25 minutes, 52 secondsthis, I'm just going to also add the API URL here, which is um localhost 3000 /
5:25:595 hours, 25 minutes, 59 secondsAPI. So you you want to add this / API here. So I'm going to maybe I get rid of the / API here. So or maybe I add it.
5:26:085 hours, 26 minutes, 8 secondsOkay. So we have / API. We just need to know that it's not just the URL. It has SL API. And then here it's now going to
5:26:185 hours, 26 minutes, 18 secondsbe able to read it with / API/. So that's why it broke. Um let's give this another try. I'm just going to exit out
5:26:255 hours, 26 minutes, 25 secondsof this. And then I'm going to delete this so that we can send another invite.
5:26:295 hours, 26 minutes, 29 secondsI'm going to send an invite again. And we didn't um go on to refresh or restart our application as we did update our
5:26:365 hours, 26 minutes, 36 secondsenv. So I'm not sure it's going to pick up the latest changes. Let's give this a try. And once the email arrives, we can always double check um before we click
5:26:455 hours, 26 minutes, 45 secondson it. Normally when you make a change in your just want to start up your development server. Now the email has arrived here. It's no longer going to
5:26:535 hours, 26 minutes, 53 secondsthe spam folder. And if we check the email here, it's still/ undefined here.
5:26:585 hours, 26 minutes, 58 secondsSo I'm going to delete this. And I just want to make sure that I restart my dev server. Remember we didn't restart it
5:27:045 hours, 27 minutes, 4 secondsthen. So um we just want to run pnpm dev which is going to start up the API as well as the front end application. This
5:27:135 hours, 27 minutes, 13 secondstime around the let's just double check here the env.
5:27:195 hours, 27 minutes, 19 secondsSo here we have the API URL. So please make sure you have the API URL here. Uh and now we're sure we do have it this
5:27:275 hours, 27 minutes, 27 secondstime around. Um, I promise it's going to work. So, now we just give this a refresh. Just going to collapse this
5:27:345 hours, 27 minutes, 34 secondsmore. And I'm going to paste in my email address right inside the box here. So,
5:27:425 hours, 27 minutes, 42 secondshere you want to use your own email address.
5:27:465 hours, 27 minutes, 46 secondsAnd this time around, I promise once you give this a send, you should come over here and
5:27:535 hours, 27 minutes, 53 secondsyou should see your email arrive. So, just give this a moment. Now, invite sent. The email has arrived. So, if we come over here, you see the email. We
5:28:025 hours, 28 minutes, 2 secondsclick on the email. And this time around, it's no longer showing /defined.
5:28:065 hours, 28 minutes, 6 secondsSo, we can click on this. We're going to be redirected over to the dashboard. And then we're going to become a member of this organization. So, we give this a
5:28:145 hours, 28 minutes, 14 secondsmoment. You can see we are redirected over to the dashboard. And now we are in the code with Larry organization. This is cool. So, it's working as expected.
5:28:225 hours, 28 minutes, 22 secondsWe can see now the member count is two.
5:28:265 hours, 28 minutes, 26 secondsAnd if we come over to this page and we just give this a refresh, we're going to see we now have two members here. And we're also going to be able to see the
5:28:345 hours, 28 minutes, 34 secondsother member show up here. So now we see this member which is in the code with library organization. And the role of this member is a developer. Now let's
5:28:425 hours, 28 minutes, 42 secondschange things up. Let's make sure we assign this user as an admin. And once we hit on save, we give this a moment.
5:28:495 hours, 28 minutes, 49 secondsThe user role is also going to be updated to admin once this is done. So you can see it's admin role updated. If
5:28:565 hours, 28 minutes, 56 secondsyou also give this an invite, a refresh here, you're still going to see that the role is going to remain as admin. So you see the role remains at admin. We can change the role back to a developer.
5:29:065 hours, 29 minutes, 6 secondsThis is working as expected. Now there's something I want us to try. Remember we can only have one admin. We don't need off organization. That means um organization that do not have any admin.
5:29:195 hours, 29 minutes, 19 secondsSo I'm going to change this user role to a developer. And let's see if we can change my own role from admin to developer if the API is going to let us
5:29:275 hours, 29 minutes, 27 secondsdo that. So I'm going to change this to developer. Hit on save. It shouldn't let us do that. We should have the error. You know our role should not be updated.
5:29:355 hours, 29 minutes, 35 secondsSo we give this a moment because we have the check here. See cannot remove or demote the last admin of an organization. So if we give this a refresh, you should see that we are
5:29:435 hours, 29 minutes, 43 secondsstill on the admin role over here. So cool. This is working as expected. We have been able to set up our invite. We
5:29:515 hours, 29 minutes, 51 secondsare sure that we can now invite members into an organization. Now let's keep on building our application. Hello everyone. So we're going to be working
Chapter 7: 6-multi-project-setup
5:29:595 hours, 29 minutes, 59 secondson our multi- project system. This is where uh super vote you know start goes on to start feeling real because
5:30:065 hours, 30 minutes, 6 secondsorganization is just a container. As you can see over here I went on to create um some dummy organizations. So no worries if your state or if the state of your
5:30:155 hours, 30 minutes, 15 secondsapplication kind of looks and feels different like mine. So this is where the actual work is going to start because you have projects and in
5:30:245 hours, 30 minutes, 24 secondsprojects that's where you can go on to do things that we have over here. So like a database, authentication,
5:30:315 hours, 30 minutes, 31 secondsstorage, API and also real time. So we're going to be working on a multi- project system. So if we click into one
5:30:395 hours, 30 minutes, 39 secondsof these organizations currently and let's open up your terminal. Make sure you have your terminal up and running.
5:30:465 hours, 30 minutes, 46 secondsAs you can see here, we just have this and we click on new project. Nothing happens. So, this is what we are going to be working on. And also this dropdown
5:30:545 hours, 30 minutes, 54 secondsthat we have over here, which doesn't um do anything yet for now. All right. So, we're going to get started up with the API layer. And then we're going to
5:31:035 hours, 31 minutes, 3 secondstransition into the front end of building this out. So, let's come over here and here in the packages system. We
5:31:115 hours, 31 minutes, 11 secondswant to be in the in the packages and then into the types and in the source the index. Here we are going to be adding new. So these are the ones we
5:31:195 hours, 31 minutes, 19 secondshave previously. Now we're going to have two more for create project impute and the project with organization. So let us bring them in. We're going to be
5:31:285 hours, 31 minutes, 28 secondsexporting this interface create project impute which is just going to take in the project name of type string. And then we're also going to export the
5:31:365 hours, 31 minutes, 36 secondsinterface project with organization which is then going to be extending the project type that we have. And then
5:31:435 hours, 31 minutes, 43 secondswe're going to have the organization which is making of this TypeScript pick type. So from organization we're picking in the ID, the name and the slug just
5:31:525 hours, 31 minutes, 52 secondslike this. Then you want to go and give this file a save. Now now we have this saved. We're also going to be updating
5:31:595 hours, 31 minutes, 59 secondsthe constant so that we can have the project key rows. So let's come over here and in the constants in the source
5:32:065 hours, 32 minutes, 6 secondsand in the index.ts we are going to be adding that project key row. So let's make sure we add them.
5:32:135 hours, 32 minutes, 13 secondsLet's export this constant project keys rows. It's going to have the anon key
5:32:205 hours, 32 minutes, 20 secondswhich is equals to anon and also the service row key which is equals to service rows key as constant. So service
5:32:285 hours, 32 minutes, 28 secondsrow like this. And then we can go on to save this. The next thing we're going to do is to go on and update our env file.
5:32:365 hours, 32 minutes, 36 secondsSo what we're going to do is quite straightforward. We're going to come here and you want to come over to the envi
5:32:435 hours, 32 minutes, 43 secondsfolder. And over here we're going to have or add some environment variables.
5:32:485 hours, 32 minutes, 48 secondsSo we want to add a API URL. So somewhere here you can go to add the API URL.
5:32:585 hours, 32 minutes, 58 secondsAnd once you have the API URL added, you also need to add the project JWT secret.
5:33:045 hours, 33 minutes, 4 secondsSo over here maybe somewhere you can just add the project JWT secret. Just add the JWT
5:33:115 hours, 33 minutes, 11 secondsthe project JWT secret over here. And you can go on to save this file. So now we save this. We can exit out of here.
5:33:195 hours, 33 minutes, 19 secondsAnd the next step for us is to create the different DTO's that we're going to need to be able to create the services and also the controller. and we can pick
5:33:275 hours, 33 minutes, 27 secondsit up from there. Hello everyone and welcome back. Now we're going to be working on the create project DTO.TS file. I'm going to close all these tabs
5:33:365 hours, 33 minutes, 36 secondsthat we do have open and we need to make a change. If you come over to the API and in the API, the source folder, if
5:33:455 hours, 33 minutes, 45 secondsyou just expand this, we need a new folder which is going to hold projects.
5:33:505 hours, 33 minutes, 50 secondsAgain, I'm going to create this new folder for projects like this. And in here we're going to start up with the DTO. And inside the DTO, we're going to
5:33:595 hours, 33 minutes, 59 secondshave the create hyphen project DTO.ts file. Now inside the create project DTO.TS file, we're going to have
5:34:085 hours, 34 minutes, 8 secondsa class which is going to be the DTO or mock the kind of object that we expect from the client. In order to create a
5:34:175 hours, 34 minutes, 17 secondsnew project, we can go on to bring in string um a min length, the max length.
5:34:235 hours, 34 minutes, 23 secondsSo these are the validators that we're going to need. So they'll come from class validators. And then we can also bring in the type which is our create
5:34:305 hours, 34 minutes, 30 secondsproject input type which will come from at supervol/types.
5:34:365 hours, 34 minutes, 36 secondsNow we're going to have the class definition and here we're going to be exporting the class which is a create project DTO and this is going to be
5:34:445 hours, 34 minutes, 44 secondsimplementing the create project input type.
5:34:495 hours, 34 minutes, 49 secondsSo here we're going to have a string at main length of two. So a project needs a minimum length of two and a maximum
5:34:565 hours, 34 minutes, 56 secondslength of 50 and the name is required like this. Now we can go on to save this file and next we're going to be creating
5:35:035 hours, 35 minutes, 3 secondsthe project service. So just outside the DTO and still inside the project. Oops.
5:35:105 hours, 35 minutes, 10 secondsInside the project here we're going to be creating a new file and this is the create hyphen project. DTO.ts file. All
5:35:185 hours, 35 minutes, 18 secondsright. So let's go and sorry not the DTO this is the service. So let's go ahead and rename this and this is going to be create project or projects. So let me
5:35:285 hours, 35 minutes, 28 secondsjust change to this project service.ts file. So this is a project service. Let's start by bringing in
5:35:375 hours, 35 minutes, 37 secondsinjectable not found exception from nestjs common. We're then going to bring
5:35:435 hours, 35 minutes, 43 secondsin and um equals and is null which will come from drizzle. We also need to bring
5:35:515 hours, 35 minutes, 51 secondsin random bytes. Random bite is going to come in from crypto. This is going to help us to generate the project slug and
5:35:585 hours, 35 minutes, 58 secondswe also need sluggify as well. Sluggify is going to come in from sluggify. It's going to also help us to generate the project log. Then we need our JWT service which will come from nextjs/jwt.
5:36:115 hours, 36 minutes, 11 secondsWe also bring in the configuration service which will come from atjs for/config. We need a drizzle service.
5:36:205 hours, 36 minutes, 20 secondsThe drizzle service is going to come from dbdrizzle service file. Then we need to bring in our database schemas.
5:36:285 hours, 36 minutes, 28 secondsSo let's import project. We also need organizations. We also need the organization members which will come from the database schema. Uh we also
5:36:365 hours, 36 minutes, 36 secondsneed to bring in our DTO the file we just created. So let's import a create project DTO which will come from the DTO folder. And there we have the create
5:36:445 hours, 36 minutes, 44 secondsproject DTO file. And then lastly we're going to bring in our project key. So remember the project cures which is
5:36:515 hours, 36 minutes, 51 secondsliving in our super constant we're going to mark this class as injectable and for the class definition
5:36:595 hours, 36 minutes, 59 secondswe can export the class project service and in the constructor we're going to instantiate the drizzle service. So here we're going to say private drizzle is
5:37:085 hours, 37 minutes, 8 secondsgoing to be of type drizzle service and the same for the JWT service where we say private JWT service equals or it's
5:37:165 hours, 37 minutes, 16 secondsof type JWT service and lastly we do the same for the configuration service we say this of type config service. Now let's have different utility functions.
5:37:275 hours, 37 minutes, 27 secondsWe're going to have the private function which is generates project slog. This function is going to take in the name string and return a string which is the
5:37:355 hours, 37 minutes, 35 secondsslog. So here let's start by having this base which is making use of slogify. So I want to slugify the name. So we can
5:37:435 hours, 37 minutes, 43 secondspass lower true and also strict true to this config. So slify and then for the suffix we're going to make use of random
5:37:505 hours, 37 minutes, 50 secondsby three so that we can have two string hex like this.
5:37:555 hours, 37 minutes, 55 secondsAnd finally we can go on to concatenated base and then we have a dash and the suffix like this. We're also going to have this private generate database
5:38:035 hours, 38 minutes, 3 secondsschema function which is going to return a string because each project gets it on dedicated database in progress in yon.
5:38:115 hours, 38 minutes, 11 secondsSo we're going to have this project random by four and to string hex like this. Now we need another private
5:38:185 hours, 38 minutes, 18 secondsfunction to assign the project key. This is going to take in the project ID of type string the role of type string and it's going to return a string.
5:38:285 hours, 38 minutes, 28 secondsWe're just going to return this JWT service dot sign where we're going to pass in the object which is the project
5:38:365 hours, 38 minutes, 36 secondsID and the row. Now for the configuration we know that we have the secret which is this config service.get
5:38:435 hours, 38 minutes, 43 secondswhere we expect to get JWT secret. So remember we just added this inpv.
5:38:495 hours, 38 minutes, 49 secondsWe're also going to set an expiration to 100 years and you might wonder why are we doing this and that's because the project keys do not expire. So they're
5:38:575 hours, 38 minutes, 57 secondsgoing to get rotated manually if they get compromised. So that's why we leave it like this.
5:39:045 hours, 39 minutes, 4 secondsNow we're going to have this private async provision schema method which is going to take in the DB schema of string
5:39:125 hours, 39 minutes, 12 secondsand it's going to return a promise because this is going to go and create the schema in the database. So how do we do this? We're just going to go on and
5:39:205 hours, 39 minutes, 20 secondsawait this drizzle. So our drizzle service database doexecute. to want to create schema if the schema doesn't
5:39:285 hours, 39 minutes, 28 secondsexist and that is the database schema this function will take. Now let's have the different queries. We're going to have the first query here which is this
5:39:365 hours, 39 minutes, 36 secondsasync get project for organization. So the project that belongs to an organization. It's going to take in the organization log of type string as well
5:39:455 hours, 39 minutes, 45 secondsas the user ID. Then we can go on to return this. DB. I want to select the ID
5:39:535 hours, 39 minutes, 53 secondswhich is the project ID also the name which is the project name. We're also going to be selecting the slog and the slog is equals to project.slo.
5:40:045 hours, 40 minutes, 4 secondsWe need the project URL. So that is the project. URL. We also need a created at and the created at is equals to
5:40:135 hours, 40 minutes, 13 secondsprojects.created at the same for the updated art. So all these that we are selecting they're
5:40:215 hours, 40 minutes, 21 secondsgoing to be coming in from the projects table. So we're going to say dot from and this is coming from project. I want to have some inner join here. So inner
5:40:305 hours, 40 minutes, 30 secondsjoin on the organizations table where it equals the project.org ID matches the organization ID.
5:40:385 hours, 40 minutes, 38 secondsWe're also going to have another inner join here based of based on organization members. So here we have organization
5:40:455 hours, 40 minutes, 45 secondsmembers. I want to chain multiple checks here. So that's why we're going to make use of and. So we say and equals where the organization member matches the or
5:40:545 hours, 40 minutes, 54 secondsum or ID and the same thing for the organization's ID. And the same thing for the or members do user ID matches the user ID. I want to make sure that
5:41:035 hours, 41 minutes, 3 secondsthis organization member has not been deleted. So we say is null where they removed at is null. And then we're going to have a wear clause. So all this and
5:41:125 hours, 41 minutes, 12 secondschaining need to be true and where equals organization log matches the or log like this.
5:41:195 hours, 41 minutes, 19 secondsNow let's also have this async get project by slog. So we need the organization for which this project belongs and also the project log for
5:41:285 hours, 41 minutes, 28 secondswhich want to retrieve and also the user ID that created this organization this specific project. So we can for
5:41:365 hours, 41 minutes, 36 secondscheck. So I'm going to say this.zo DB I want to select everything and they would come from the project table. We're
5:41:455 hours, 41 minutes, 45 secondsgoing to have the inner join on the organizations also um equals the
5:41:515 hours, 41 minutes, 51 secondsproject.org id matches the organizations id and we're also going to have the inner join where the organization
5:42:005 hours, 42 minutesmembers and then we're also going to have the same check. So we're going to make use of the and operator and we're going to have the equals operator where
5:42:085 hours, 42 minutes, 8 secondsthe organization members id matches the organization ID and the same where the organization members do
5:42:155 hours, 42 minutes, 15 secondsuser ID matches the user ID and we want to make sure that this member is not removed. So we say is null where the organization members do remove that.
5:42:245 hours, 42 minutes, 24 secondsRemember this is of type um time stamp or it could be null. So if it's not it means that user is still a member of that organization.
5:42:325 hours, 42 minutes, 32 secondsSo for the wear clause we say where and equals organizations log matches the or log and also equals project log
5:42:415 hours, 42 minutes, 41 secondsmatches the project log. I want to go and limit this by one and if we're not able to find a row then let's go and
5:42:495 hours, 42 minutes, 49 secondsthrow a new not found exception which is going to say project is not found otherwise we can go on to return the
5:42:555 hours, 42 minutes, 55 secondsrow. Now let's have the next one to create a project. Now in order for [snorts] us to create a project we need the organization slug of type string and
5:43:055 hours, 43 minutes, 5 secondswe also need a DTO and this DTO is going to be of type create project DTO. So here let's first of all try to select the organization.
5:43:145 hours, 43 minutes, 14 secondsSo we say this is going to be equals to a this.rezo db select we want to select from organizations
5:43:235 hours, 43 minutes, 23 secondsand the wear clause where equals the organization.log log matches the aux log. I want to limit this by one.
5:43:335 hours, 43 minutes, 33 secondsIf we are not able to find an organization, let's go and enure a new not found exception that says the organization could not be found. Okay.
5:43:435 hours, 43 minutes, 43 secondsBut if we able to find organization, let's have the project log, the DB schema and the project URL. So we say the project log is equals to this
5:43:515 hours, 43 minutes, 51 secondsgenerate project log based on the name that comes from the DTO. We're also going to say con the DB schema is equals
5:43:595 hours, 43 minutes, 59 secondsto this generate database schema. And finally, we have the project URL.
5:44:045 hours, 44 minutes, 4 secondsProject URL is going to be equals to this doconfig service.getate where we're going to get the API URL. And then we have / project and then the project log.
5:44:165 hours, 44 minutes, 16 secondsFinally, we're going to go on and await this.provision schema where we're going to pass in the database schema. So it's going to create
5:44:245 hours, 44 minutes, 24 secondsthe schema if it doesn't exist. Finally, we can going to create a project. So this is going to be await this. DB. We
5:44:325 hours, 44 minutes, 32 secondswant to insert projects. So the project table and the values we're going to insert here is for the or ID needs to
5:44:405 hours, 44 minutes, 40 secondsmatch the or ID that we f from the database. Also the name is going to be the DTO.name. The SLO is
5:44:495 hours, 44 minutes, 49 secondsthe project SLO. We also have the DB schema which matches the DB schema. We also have the project URL which matches the project URL. The anon key which is
5:44:585 hours, 44 minutes, 58 secondsgoing to be an empty string and the same for the service ro key which is empty string for now. And then we're going to have dot returning like this. Now we're
5:45:075 hours, 45 minutes, 7 secondsgoing to create the anon key. So here we're going to say conon key is going to be equals to this dot sign project key.
5:45:145 hours, 45 minutes, 14 secondswhere we're going to pass in the project ID and also the project key roles do anon key
5:45:225 hours, 45 minutes, 22 secondsand then we can go on to have the service row key which is then equals to this sign project key like this and then we're now going to pass in the project
5:45:305 hours, 45 minutes, 30 secondsID because at this point we didn't have the project ID that's why we had to have an empty string when creating the project and finally we can now going to
5:45:395 hours, 45 minutes, 39 secondsupdate that project so we say con updated is equals to a this db We want to then update the projects
5:45:465 hours, 45 minutes, 46 secondstable and we want to set this anon key and the service row key. So now we have them we are going to set them and on
5:45:545 hours, 45 minutes, 54 secondswhich project it's going to be on this created project. So we say where equals the project id matches the project id
5:46:035 hours, 46 minutes, 3 secondsand want to have returning and finally we are going to return the updated project here. This is our service. This
5:46:115 hours, 46 minutes, 11 secondsis all we needed to do. I'm going to go and give this file a save. And I'm not quite sure why we have this error over here because if we check the project key
5:46:205 hours, 46 minutes, 20 secondsrows here, this is a string. So I'm not quite sure why we have this error. You can ignore this error. It could be from my VS code. If I go on to refresh this,
5:46:285 hours, 46 minutes, 28 secondsI'm sure I'm not going to have these errors anymore. So that's pretty much it. The next step, we are going to be working on the project controller. Now
5:46:375 hours, 46 minutes, 37 secondswe're going to focus on working on the uh project controller. You can see I do not have any errors. So let's do that.
5:46:445 hours, 46 minutes, 44 secondsStill inside the project folder, we're going to be creating a new file and that is a project controller
5:46:525 hours, 46 minutes, 52 secondsts file. So in here we're going to start by bringing the different imports that we need. So let's going import body
5:47:015 hours, 47 minutes, 1 secondcontroller get. So all these decorators the param the pause the use gat from nextjs common. We also need to bring in
5:47:095 hours, 47 minutes, 9 secondsour project service. The project service is going to come from one level up to this project service that we just created.
5:47:195 hours, 47 minutes, 19 secondsWe're also going to bring in the create project DTO and this is going to come from that DTO file. And there we have the create project DTO file. Now we also
5:47:295 hours, 47 minutes, 29 secondsneed the JWT O service. The JWT O service or sorry the O guard is going to come from the O. And then the guards, we
5:47:375 hours, 47 minutes, 37 secondshave the JWT O guard. And then we're going to bring in the organization row guard. The organization row guard needs
5:47:445 hours, 47 minutes, 44 secondsto also coming from all the guards and the organization row. We also need that require organization row. This is going
5:47:535 hours, 47 minutes, 53 secondsto be coming in from the decorator. So there we have the require organization row. Decorator file.
5:48:015 hours, 48 minutes, 1 secondAnd lastly, we need our current user or not. Lastly, we need the current user decorator. So, this is going to also come from the O decorators, the current userdecorator.
5:48:125 hours, 48 minutes, 12 secondsAnd finally, we can going to import the type of our JWT payload, which is going to come in from super votes types.
5:48:205 hours, 48 minutes, 20 secondsNow, the path, the path is going to be /organization, the organization log/ project. We are going to make use of our
5:48:285 hours, 48 minutes, 28 secondsguard the og guard which means you must be authenticated and the organization rod. Now let's export the class the
5:48:365 hours, 48 minutes, 36 secondsproject controller class and in the constructor we're just going to make use of the private project service right in
5:48:435 hours, 48 minutes, 43 secondshere like this which is going to be of type project service. Now for the endpoints we have the get endpoint to go and get project. This is going to make
5:48:515 hours, 48 minutes, 51 secondsuse of the param decorator so that we can get the slog which is going to be of type string and also the current user decorator which is of type the JWT payload.
5:49:025 hours, 49 minutes, 2 secondsWe can then go on to return this.
5:49:045 hours, 49 minutes, 4 secondsproject service and then remember we have the get project organization which takes in the slug and the user ID. So
5:49:105 hours, 49 minutes, 10 secondsthe sub is the ID. We're also going to have this get project slog and here we need the get project method at param
5:49:185 hours, 49 minutes, 18 secondsdecorator so that we can retrieve the slug from the URL and it's of type string and the same for the project slug. So the first log is the
5:49:275 hours, 49 minutes, 27 secondsorganization lo and the next log here is the project log and finally we also use the current user decorator so that we can get the user which is of type jwt payload.
5:49:375 hours, 49 minutes, 37 secondsNow in the service we can return this project service. We know that we have the get projects by slog which then is going to take in the slog the project
5:49:465 hours, 49 minutes, 46 secondslog and the user ID which is user sub and finally we post request require
5:49:535 hours, 49 minutes, 53 secondsorganization role of admin to be able to create a project you don't need to be a developer and we have create project and
5:50:005 hours, 50 minuteswe have the param which we take the slug and also from the body we have the dto which is the create project dto and
5:50:075 hours, 50 minutes, 7 secondswe're just going to return this project service create project. We're going to pass in the slug and also the DTO.
5:50:175 hours, 50 minutes, 17 secondsThis is the project controller. We don't need to make any changes here anymore.
5:50:225 hours, 50 minutes, 22 secondsEverything is pretty much straightforward. Now, we just need the project module. So, in here, we're going to be creating a new file. And this new
5:50:305 hours, 50 minutes, 30 secondsfile is the project dot module.ts file. Now, in the project module is also always straightforward. We can import
5:50:395 hours, 50 minutes, 39 secondsmodule which will come from at nestjs4/ common.
5:50:445 hours, 50 minutes, 44 secondsWe're also going to be importing the JWT module which is going to come from at nest.js/jwt.
5:50:505 hours, 50 minutes, 50 secondsWe also need a project service which is going to come from projects.
5:50:565 hours, 50 minutes, 56 secondsWe then need to import a project controller. So let's import projects controller which is going to come in from projects.controller.
5:51:045 hours, 51 minutes, 4 secondsAnd in here we have at module decorator which is going to take in the import. So
5:51:115 hours, 51 minutes, 11 secondshere we want to import the JWT module register just like this. And in the providers we're going to have the
5:51:185 hours, 51 minutes, 18 secondsproject service and also the controller the project controller and lastly the export. We need to export the service.
5:51:275 hours, 51 minutes, 27 secondsSo in the export array we're going to have the project service. And then we're going to close this up and have the class definition of projects module like this.
5:51:385 hours, 51 minutes, 38 secondsLet's give this file a save. Now remember, we just need to add this or register this in our application module.
5:51:455 hours, 51 minutes, 45 secondsSo if we come over here, if we collapse the source and here in the API folder,
5:51:535 hours, 51 minutes, 53 secondsif we open this up, we have the app module here. So right here in the application module just under members module we need to add a projects module.
5:52:035 hours, 52 minutes, 3 secondsOops projects module over here. And we can go on to give this a save. Now we have this done. The next step for us is
5:52:125 hours, 52 minutes, 12 secondsfor us to focus on the front end implementation of this. So I'm just going to come back here. So let's come over to the organizations list.
5:52:235 hours, 52 minutes, 23 secondsAnd over here in the organizations list, these are the different organization we have. And we do not have the functionality to create a new organization yet. This is currently a 44
5:52:325 hours, 52 minutes, 32 secondspage. We're going to be creating this um towards the end when we have our fixes.
5:52:375 hours, 52 minutes, 37 secondsUm but for now, no worries. We can already go on to um yeah, have the front end side of the project done. Now, we're
5:52:465 hours, 52 minutes, 46 secondsgoing to be transitioning into the front end where we're going to create the UI.
5:52:515 hours, 52 minutes, 51 secondsNow let's start by closing all of these and we're going to start up in the project constant. So we want to locate where we have the constants and here in
5:53:005 hours, 53 minutesthe packages constant the index.ts file we need new constant here based on the intent. So over here actually not here.
5:53:085 hours, 53 minutes, 8 secondsSo let me just get rid of this. Actually this needs to be inside a new features.
5:53:135 hours, 53 minutes, 13 secondsSo let's close the API and close the packages and come into the web. And over here if we open up the source folder and
5:53:205 hours, 53 minutes, 20 secondsin the source folder we have the features and in the features we need one for project. So let's have the project features here so that we can just follow the same pattern as we have so far here.
5:53:315 hours, 53 minutes, 31 secondsAnd in the project we are going to be creating the constants the constants ts file. I'm going to
5:53:395 hours, 53 minutes, 39 secondscollapse this and let's start by having the intent. We're going to export the con the project intent and the intent
5:53:465 hours, 53 minutes, 46 secondshere is going to be equals to this object. So we can have create which is of type create and here we're also going to export the type of project's intent
5:53:565 hours, 53 minutes, 56 secondswhich is now equals to the type of the project intent and the key of the type of the project intent.
5:54:055 hours, 54 minutes, 5 secondsNow that we have this we can going to give this file a save and the next step is for us to create the client schema.
5:54:115 hours, 54 minutes, 11 secondsI'm going to open this up and in here we're going to create the clients schema.ts which is the schema we're
5:54:185 hours, 54 minutes, 18 secondsgoing to use for validation on the client. So this client schema is going to be importing Z from Z. We're also
5:54:275 hours, 54 minutes, 27 secondsgoing to be importing the type of create project impute which is going to come from at
5:54:345 hours, 54 minutes, 34 secondssupervolt for/types and we're going to export a constant of
5:54:415 hours, 54 minutes, 41 secondscreate project schema which is equals to z.object object where the name is equals to Z dot string a minimum of two and we
5:54:515 hours, 54 minutes, 51 secondscan say name must be at least two characters and the maximum of 50 when name must be at most 50 characters and
5:55:005 hours, 55 minuteswe want to make sure that this goes on to satisfy satisfy a certain structured type so we're going to say this satisfy
5:55:075 hours, 55 minutes, 7 secondsthe zot type where we have the create project input we're going to have pretty much something that looks identical to
5:55:155 hours, 55 minutes, 15 secondsthis but on the server side which is going to be extending this because it doesn't make sense for us to retype the properties and if the
5:55:245 hours, 55 minutes, 24 secondsname changes or we need additional fields we can change it here and also the server is going to inherit that by default. So let's see how that works
5:55:325 hours, 55 minutes, 32 secondshere. We're going to have the servers schema.ts file and inside the server.ska.ts TS file. We're going to be
5:55:395 hours, 55 minutes, 39 secondsimporting Z from Z. And we need the project intent which is going to come from one level up. And there we have the constants file.
5:55:495 hours, 55 minutes, 49 secondsWe also need the create project schema.
5:55:525 hours, 55 minutes, 52 secondsSo remember this is going to be coming in from the [snorts] client schema. And
5:55:595 hours, 55 minutes, 59 secondswe are going to export the constant which is project server schema. And the project server schema is going to be
5:56:065 hours, 56 minutes, 6 secondscoming in from or equals to discrimination union where we have the intent zobject and the intent here is
5:56:145 hours, 56 minutes, 14 secondsgoing to be z.lit. So we need the project intent create and here we're going to spread the schema shape. So
5:56:225 hours, 56 minutes, 22 secondswe're going to spread the create project schema shape. So which is the client schema here. Now why do we have this error constant? So maybe I have a typo.
5:56:335 hours, 56 minutes, 33 secondsSo, I'm just going to give this a save and let's have this. Yes, I do have a typo. Let me fix this. This should be constant like this. And we should no
5:56:425 hours, 56 minutes, 42 secondslonger have an error here. If we do, you can just remove this and bring this back in. And the error is gone. Now, we're also going to be creating the action
5:56:505 hours, 56 minutes, 50 secondsfile over here. So, let's have the action ts file by having our use server
5:56:575 hours, 56 minutes, 57 secondsdirective. And then we can import or bring in the imports like rev validate path which will come from nextjs cache.
5:57:055 hours, 57 minutes, 5 secondsWe're also going to bring in the project um server schema which will come from our server schema. We need it to validate the form data. We're also going
5:57:135 hours, 57 minutes, 13 secondsto import the project intent which will be coming in from our constants. And then we need our cookie keys which will
5:57:205 hours, 57 minutes, 20 secondscome from at superv/ constants. And we need a helper function which is the retrieve token from cookie
5:57:295 hours, 57 minutes, 29 secondswhich will come from at and then the server utils for/uts.
5:57:345 hours, 57 minutes, 34 secondsAnd then let's import our API client which will come from at lib for/exio.
5:57:395 hours, 57 minutes, 39 secondsNow let's have the type which is the project action state. We're going to export the type project action state. We can have an optional error which is
5:57:485 hours, 57 minutes, 48 secondsgoing to be a string or an optional success which also is going to be a string.
5:57:535 hours, 57 minutes, 53 secondsThen for the main server action we can export the async function projects action. We are going to dstructure the slog which is going to be of type this
5:58:025 hours, 58 minutes, 2 secondsobject where we have the slug string. We also need the previous state which is going to be of type the project's action state and the form data which is going
5:58:105 hours, 58 minutes, 10 secondsto be of type form data and then we can go to have the promise which is going to resolve to a project action state. Now
5:58:185 hours, 58 minutes, 18 secondscon row is going to be equals to object do from entries. We pass in the form data and we're going to pass it by
5:58:255 hours, 58 minutes, 25 secondssaying past is going to be equals to the project sa schema dot save pass. We're going to then pass in row here. Now if we are not successful that means it
5:58:345 hours, 58 minutes, 34 secondsdoesn't match our schema. We are going to return this error back to the client.
5:58:385 hours, 58 minutes, 38 secondsSo this object that has the error key that says the past error flattening. So we're going to make it form error here.
5:58:455 hours, 58 minutes, 45 secondsOtherwise we say invalid impute.
5:58:495 hours, 58 minutes, 49 secondsNow let's have the token con token is going to be equals to retrieve token from cookie. And then we're going to
5:58:565 hours, 58 minutes, 56 secondsalso spread out the intent and the data which will be coming in from past data like this. Okay. So now we've done all
5:59:045 hours, 59 minutes, 4 secondsof these here like this. The next step for us is to then go on and have our try catch block so that we can call the intent to create. So we're going to have
5:59:135 hours, 59 minutes, 13 secondsour try block and then we're going to switch based on the intent so that we can handle it here for the case of create.
5:59:225 hours, 59 minutes, 22 secondsWe are going to await now sending a request to our back end. So the API client post and we know the endpoint is
5:59:295 hours, 59 minutes, 29 seconds/organization. The organization log/ project and we're going to pass the data which is going to be name is going to be
5:59:365 hours, 59 minutes, 36 secondsof type data as name which is a string dot name like this and the headers is going to be this cookie headers want to
5:59:455 hours, 59 minutes, 45 secondshave the cookie keys dot access token is going to be equals to token like this.
5:59:515 hours, 59 minutes, 51 secondsWe also want to revalidate the path and the path here is going to be the organization organization log/ project.
5:59:575 hours, 59 minutes, 57 secondsSo this is going to revalidate the path and also any sub child path and then we're going to return success project
6:00:056 hours, 5 secondscreated. Now in case of any errors here so we're going to have the catch block and we're going to get the error which
6:00:136 hours, 13 secondsis of type any. We're going to have errors there as we've seen. But we can just return this object where we have
6:00:196 hours, 19 secondserror dot response data message where we say something went wrong. Okay. So this
6:00:276 hours, 27 secondsis the server action. I'm just going to ignore this just like this. Um yeah. So I'll disable this. And now we have our
6:00:366 hours, 36 secondsserver action. Before we go back to the front end, we also need to have some project helpers which is going to help us to retrieve projects from API and
6:00:446 hours, 44 secondsalso retrieve projects by slug from API before we can implement the front end of the application. Yes, file. All right,
6:00:526 hours, 52 secondsso let's get started with the import or with the definition. We're going to bring in redirect. Redirect is going to come in from next for/navigation.
6:01:016 hours, 1 minute, 1 secondWe're also going to bring in the API client which is going to come from at le//exios.
6:01:096 hours, 1 minute, 9 secondsWe're also going to bring in the retrieve token from cookie which is going to be coming in from the server utils file. So from at/server - utils
6:01:196 hours, 1 minute, 19 secondsfor/utils and we need to import the cookie keys which will come from superv/ constants. And we also need to bring in
6:01:276 hours, 1 minute, 27 secondsthe type. Now the type is type project like this. And this is going to come in from the superv types. We're just going
6:01:346 hours, 1 minute, 34 secondsto go and export this async function which is retrieve project from API. And this is going to take in the
6:01:426 hours, 1 minute, 42 secondsorganization log of type string. And here we're going to be returning a promise which is going to be the project
6:01:486 hours, 1 minute, 48 secondslist. And here we can say cons token is equals to await retrieve token from cookie. And in the try block we just
6:01:576 hours, 1 minute, 57 secondswant to send the request to our API. So here we're going to say cons data is equals to await API client
6:02:056 hours, 2 minutes, 5 secondsand get project list and the path is /organization. So / API/organization documentation log/ project and in the
6:02:156 hours, 2 minutes, 15 secondsheaders we're going to have cookie where the value is the cookie keys access token equals to token like this and we
6:02:226 hours, 2 minutes, 22 secondscan go on to return data also in the catch block. Let's go and just redirect the user to organizations.
6:02:326 hours, 2 minutes, 32 secondsNow we're going to have another helper function which is the retrieve project by slo from API and this is going to
6:02:406 hours, 2 minutes, 40 secondstake in the organization slug string and it's also going to take in the project slog
6:02:466 hours, 2 minutes, 46 secondsstring. So here we're going to be returning this promise that resolves to a project and want to get a token. So
6:02:556 hours, 2 minutes, 55 secondswe're going to say cons token is going to be equals to await retrieve token from cookie and let's have the try
6:03:026 hours, 3 minutes, 2 secondsblock. So in the try block we're going to say cons data data is awaiting or equals to awaiting the API client get we
6:03:106 hours, 3 minutes, 10 secondsexpect a project not a list of project just a project and the path is /organization the organization log/
6:03:176 hours, 3 minutes, 17 secondsproject and the project log and also in the headers we're going to have cookie and where the value is equals to the
6:03:246 hours, 3 minutes, 24 secondscookie keys dot access token is equals to token and finally we can go on to
6:03:316 hours, 3 minutes, 31 secondsreturn data and If something goes wrong, we are going to be redirecting user to the organization organization log and the projects page.
6:03:436 hours, 3 minutes, 43 secondsNow we have pretty much everything we need to get started. We are going to focus on creating the different pages
6:03:506 hours, 3 minutes, 50 secondsthat we need. Now when I'm referring to pages, I mean the projects page. And I
6:03:576 hours, 3 minutes, 57 secondshave already I'm just going to close all because I have already provided templates that we're going to be working with which is going to make our life at
6:04:056 hours, 4 minutes, 5 secondshome lots easier. So if we come over here in the templates we're going to see we have these three templates the create
6:04:146 hours, 4 minutes, 14 secondsproject model here we need to install the dialogue as we get these errors. We also have our project grid page and the
6:04:226 hours, 4 minutes, 22 secondstop navigation here. So the top navigation is going to be replaced with what we've got over here.
6:04:306 hours, 4 minutes, 30 secondsSo that's pretty much it. And uh yeah, so let's come back and make sure that we fix all these errors. As you can see, we are missing things like the drop-own
6:04:386 hours, 4 minutes, 38 secondsmenu uh which is creating all these errors. So we're going to be working on the actual UI page next.
6:04:466 hours, 4 minutes, 46 secondsOkay. So let's, you know, start things up. I'm just going to clear this and pnpm dev so that we can start up the API as well as the web of our application.
6:04:566 hours, 4 minutes, 56 secondsAnd here we are in the organizations Ruth page. So we just need to go into one organization. If you have this error, no worries. This is what we are
6:05:056 hours, 5 minutes, 5 secondsgoing to be fixing right now. Uh not not this error because this error is due to the fact that the API is um not yet up
6:05:126 hours, 5 minutes, 12 secondsand running. But if the API is up and running, then we're going to see this.
6:05:166 hours, 5 minutes, 16 secondsSo this is what we see and we have different organizations and um yeah so this is currently broken no
6:05:256 hours, 5 minutes, 25 secondsworries but I have list of you know different organizations here so if you see more organizations that we have that's because I created more
6:05:336 hours, 5 minutes, 33 secondsorganizations during testing and you can see I also have some projects that I also created during testing here but if we click on this then we are redirected
6:05:416 hours, 5 minutes, 41 secondsover to SL projects and this is the page we're going to be working And um next the project grid page. So right here if
6:05:496 hours, 5 minutes, 49 secondsyou come over here and in the in the application this is the dashboard and the organizations. Next is the
6:05:576 hours, 5 minutes, 57 secondsorganization log and next is the projects page. So this is the page over here. Now this is what we have yet and
6:06:046 hours, 6 minutes, 4 secondsthis is just like the dummy state of what we have. Now we're going to be replacing this with actual content and the content for which I have provided
6:06:136 hours, 6 minutes, 13 secondsfor us here. So if we double check the templates, we have the project grid page. So now let's take this. Let's copy
6:06:216 hours, 6 minutes, 21 secondsthis and we're going to be replacing what we do have here to this. So let's drop this in here and let's see if we
6:06:296 hours, 6 minutes, 29 secondshave any errors. We have this error because we are missing the create project model. That's what happens when you click here. But then let's just walk
6:06:366 hours, 6 minutes, 36 secondsthrough this. You can see here we go on to bring in the two helpers where we retrieve the organization by slug from the API. This gives us the organization
6:06:456 hours, 6 minutes, 45 secondsand this then gives us a project that belong to this specific organization and we retrieve the role from here. Now
6:06:526 hours, 6 minutes, 52 secondswe going to check if the role is admin so that we can go on to show the model.
6:06:566 hours, 6 minutes, 56 secondsRemember we also prevent this on the API level where you must be an admin to be able to create a project.
6:07:066 hours, 7 minutes, 6 secondsNow, if the project length is equals to zero, then we're going to be showing no projects yet in the organization name. Do go ahead and create next project.
6:07:156 hours, 7 minutes, 15 secondsOtherwise, we're going to show a list of all the projects here. Now, I'm not going to save this yet because if I do, we're going to have an error. But in the
6:07:246 hours, 7 minutes, 24 secondsmeantime, let's just open up our terminal window. And you can open up a new terminal here so that we can install
6:07:316 hours, 7 minutes, 31 secondsthe dialogue. Now, we need to see into the apps or you can use the filter flag.
6:07:366 hours, 7 minutes, 36 secondsAnd in the web we need to say pmppm dlx chat cn at latest add dialogue.
6:07:446 hours, 7 minutes, 44 secondsNow we're going to give this a moment for the installation to complete. And I have already provided us the dialogue.
6:07:506 hours, 7 minutes, 50 secondsIf we double check the templates we have the create project model. So you want to copy this and you want to make sure you
6:07:576 hours, 7 minutes, 57 secondshave this right here. So I'm just going to bring this. It should be right inside of this file. the features to your
6:08:066 hours, 8 minutes, 6 secondsproject. You just want to drop this in here.
6:08:106 hours, 8 minutes, 10 secondsAll right. So, I'm going to close this terminal window so that we still have the API up and running. And I'm going to come here, come back here in a moment.
6:08:186 hours, 8 minutes, 18 secondsBut if we exit out of this, and if we come back here, we should no longer have this error over here because now we have the project model in this path.
6:08:306 hours, 8 minutes, 30 secondsBefore we save this, I just want to know why we have this error here. I think the error is gone because we have the project's action right in here. Not the
6:08:396 hours, 8 minutes, 39 secondsschema, this action. We have the action here. Okay. So now we sure we have the action. If we come over here, uh let's
6:08:476 hours, 8 minutes, 47 secondsjust walk through the projects model. So what's going on here? We have the open and close state. So let's actually go and save this so that we can walk
6:08:566 hours, 8 minutes, 56 secondsthrough it. So now we have the open and close state of the model which we toggle when we click on this new project button
6:09:036 hours, 9 minutes, 3 secondsand we have the action so that we are binding the slug to the action. The project action needs the slug as we see
6:09:116 hours, 9 minutes, 11 secondsover here. So we are binding and we're passing the slog and here we successful we going to close the model. So if state
6:09:196 hours, 9 minutes, 19 secondssuccess and if open if the model is open we want to go and reset the form and also close the model. And here we just
6:09:256 hours, 9 minutes, 25 secondshave the model and here we have the form which takes in this form action that we have over here. So that's pretty much
6:09:326 hours, 9 minutes, 32 secondseverything that is going on here. And here we have the field group in the controller so that we can register the
6:09:396 hours, 9 minutes, 39 secondsname which is a name of the project that we would like to create. And on button we have just the console.
6:09:486 hours, 9 minutes, 48 secondsAnd here we have the same button that another button that has a value of create where the name is intent.
6:09:566 hours, 9 minutes, 56 secondsNow we have everything we need to be able to create a new project and that's pretty much straightforward. So what we
6:10:046 hours, 10 minutes, 4 secondsare going to do um we need to also update the top navigation. So what's going to happen is if you're having
6:10:116 hours, 10 minutes, 11 secondsaccess to this this is updated. So let's come over here to the top navigation. We just want to make sure we grab all of
6:10:196 hours, 10 minutes, 19 secondsthese and to make sure that we drop this right here in the top navigation because we also need to make a change here in
6:10:266 hours, 10 minutes, 26 secondsthe top navigation before we can go on to test this due to this project switcher that we have over here.
6:10:336 hours, 10 minutes, 33 secondsSo if we come over to the component folder and here where we have the top nav, this was the initial top navigation. So now we're going to be
6:10:416 hours, 10 minutes, 41 secondsreplacing this actually. Um yeah. So let's go and replace this. I
6:10:486 hours, 10 minutes, 48 secondsthink I'm going to create an updated navigation here. So that um when you want to copy this template, you're going
6:10:556 hours, 10 minutes, 55 secondsto not see just a top navigation. You're going to see something like updated um navigation. TSX file something like
6:11:046 hours, 11 minutes, 4 secondsthis. Please do make sure and if you press this here, this is actually going to be the content. And what's going to happen is I'm going to revert all the
6:11:116 hours, 11 minutes, 11 secondschange that I've done here. So that if you're copying this from the first time or from the second time, you would have access to the updated navigation and you shouldn't copy from the top nav. Okay.
6:11:246 hours, 11 minutes, 24 secondsAll right. So that's just um the way we can structure this so that we can have the old code there. But if you come back here to the top navigation, we want to replace everything here with this.
6:11:366 hours, 11 minutes, 36 secondsSo now we can go on to save this. We have the project. We are logged into the console. We can go on to give this a save and everything should be fine. Now,
6:11:456 hours, 11 minutes, 45 secondsif you have this error is because we need to change the position of this top navigation. So, what we're going to do, we're going to be updating the dashboard
6:11:536 hours, 11 minutes, 53 secondslayout. So, I'm going to come over here and here where we have the source, the app, and here we have the dashboard, and
6:12:006 hours, 12 minuteswe have the layout.tsx. This layout.tsx, we need to make an update here. As you can see, we already have an error here.
6:12:096 hours, 12 minutes, 9 secondsSo here we're going to get rid of the we are going to be getting rid of the top navigation here. We're going to get
6:12:186 hours, 12 minutes, 18 secondsrid of this. And also we're going to get rid of the main that we have here. Okay.
6:12:246 hours, 12 minutes, 24 secondsAnd we're also going to get rid of the closing tag here. So this is all we have. And we have the application sidebar just like this. This is
6:12:336 hours, 12 minutes, 33 secondseverything we need to do. We need to remove the top navigation from here. And we're going to give this a save.
6:12:406 hours, 12 minutes, 40 secondsNow we do not have any other error here, but we are missing the top navigation as we see over here. Now we are going to be
6:12:476 hours, 12 minutes, 47 secondsplacing the top navigation inside a new layout that we are going to be creating right now. So in order for us to create
6:12:556 hours, 12 minutes, 55 secondsthis new layout, we need to come over here and here in the dashboard organizations and it has to be inside
6:13:036 hours, 13 minutes, 3 secondsthe organizations log. And here we're going to be creating a new layout.tsx file. So let's have the layout.tsx file.
6:13:136 hours, 13 minutes, 13 secondsAnd in here just like this, we are then going to be having in um this content here. So I'm going to
6:13:206 hours, 13 minutes, 20 secondsdrop in this content here like this. And this is everything we need. Now you see we are importing the top navigation from
6:13:286 hours, 13 minutes, 28 secondsthe component top navigation and also the retrieve project from API helper function. And here in the
6:13:376 hours, 13 minutes, 37 secondsorganization layout we are getting the children and the params from here. And with the structures log by awaiting
6:13:446 hours, 13 minutes, 44 secondsparams we get the projects because now the top nav needs the projects for the switcher. So remember the top navigation
6:13:526 hours, 13 minutes, 52 secondshas a switcher and we going to return the children wrapped in the main tag. So that was why we removed the main tag from here. Now we can just go on to save
6:14:006 hours, 14 minutesthis and everything is going to be fine and good. And if we give this a moment now we see the select project here which
6:14:086 hours, 14 minutes, 8 secondsdo not have a project. Now let's go and create a new project. Hello everyone. So let's give this a test. Let's see if we
6:14:156 hours, 14 minutes, 15 secondsable to create an organization. So make sure you have your oops. So make sure you have No, I think it's up and running
6:14:236 hours, 14 minutes, 23 secondshere. So make sure you have your application up and running. Yes. So we're missing the crucial part which is the actual form action. So we do not
6:14:316 hours, 14 minutes, 31 secondshave the action here. So let's make sure we have the action and the action is going to be our form action like this.
6:14:376 hours, 14 minutes, 37 secondsSo we're missing that. Let's make sure we have our form action. So now we have the action in here. We are also preventing default. um [snorts] if it is
6:14:466 hours, 14 minutes, 46 secondsnot okay otherwise we call our form action and the button is of type submit and we have the intent so let's give this under trial so I'm going to give
6:14:546 hours, 14 minutes, 54 secondsthis a name of super vote like this super votes and then I would hit on create project now the refresh is
6:15:026 hours, 15 minutes, 2 secondsstopped we see creating over here which is our logic if it is pending and now if it is done and we have a success we see
6:15:106 hours, 15 minutes, 10 secondsthe super vote project here this is so wonderful we are able to create our super vote project inside our super vote
6:15:176 hours, 15 minutes, 17 secondsproject. Now, if we click on this, we're going to go to a URL which we do not have currently. So, this is going to try to take us to the database folder of
6:15:246 hours, 15 minutes, 24 secondsthis project. But then we can create projects here and we're going to see the project listed here. Now, once we go into the project, we are going to see
6:15:336 hours, 15 minutes, 33 secondshow we can customize the project and get into the core of building Super Vault, guys. So, um, I'm going to see you in
6:15:406 hours, 15 minutes, 40 secondsthe next episode where we're going to continue building out our project. Hello everyone. So, this is where things get pretty much interesting. This is where
Chapter 8: 7-table-editor
6:15:486 hours, 15 minutes, 48 secondsSuper Volt begins to feel like a real um product. We're going to be working on the table editor, which is like the heart of any database tool you will use.
6:15:576 hours, 15 minutes, 57 secondsSo, users are going to come over to our table editor, and they will create their schema visually and also be able to browse through their data without
6:16:056 hours, 16 minutes, 5 secondswriting any SQL. So that's what we are going to be building today. What you normally see in superbase. So let's close all this work we have done so far.
6:16:136 hours, 16 minutes, 13 secondsAnd we are going to start by coming into the I think that should be into the let me collapse this. So outside the API and
6:16:226 hours, 16 minutes, 22 secondswe are going to come right into the packages and in the packages we have the type the source and in the index.ts
6:16:296 hours, 16 minutes, 29 secondshere. So we're going to be adding new types right in here. Let's start by exporting this type for the column type.
6:16:376 hours, 16 minutes, 37 secondsSo the column type the different columns type we are going to offer to the user could be text integer big in bowling
6:16:446 hours, 16 minutes, 44 secondstime stamp. We also have UU ID. Um we also have like um JSON B and numeric.
6:16:536 hours, 16 minutes, 53 secondsOkay. We're also going to export the interface for the table column. So how the table column is going to look like and the table column is going to have u
6:17:026 hours, 17 minutes, 2 secondsthe name string is also going to have the type which is the column type is nullable is going to be boolean is primary key is going to be boolean. We
6:17:116 hours, 17 minutes, 11 secondsalso have the default value and the default value is going to be a string or could be null. We also have the foreign
6:17:196 hours, 17 minutes, 19 secondskey which is this object here. So the table that's pointing to what column in that table and or it could be null. Then
6:17:276 hours, 17 minutes, 27 secondswe have the interface for the table information and the table information is going to
6:17:346 hours, 17 minutes, 34 secondshave columns which is the table column that we have over here as well as the name. So we're going to export the interface for the create column input.
6:17:436 hours, 17 minutes, 43 secondsSo whenever you want to create a new column you need the name. You also need the type um is nullable is primary key.
6:17:516 hours, 17 minutes, 51 secondsSo is nullable which is a boolean is primary key which is a boolean and optional default value and this is a
6:17:596 hours, 17 minutes, 59 secondsstring. We also have the foreign key table which is an optional string and the foreign key column which also is an optional string.
6:18:096 hours, 18 minutes, 9 secondsAnd then we have the last interface which is the create column impute. The create column imputes is going to take
6:18:166 hours, 18 minutes, 16 secondsin the name and the columns which is going to be equals to this create column imputes type that we have over here. So
6:18:256 hours, 18 minutes, 25 secondsnow we can go on and save these types that we have. The next step is for us to make a little change to our constant the source and the index here.
6:18:356 hours, 18 minutes, 35 secondsSo we also going to have this over here which is like the column types here but in a constant definition. So here we can
6:18:436 hours, 18 minutes, 43 secondsexport the constant column types and column types is pretty pretty much going to be the same as having the integer the
6:18:506 hours, 18 minutes, 50 secondstext the big in the boolean the time stamp the U ID and the JSON B. So that's what we are going to have over there.
6:19:006 hours, 19 minutesSo after this the next step is for us to have our data transfer object. So we're going to or the type of data that we
6:19:076 hours, 19 minutes, 7 secondsneed to pass whenever we are creating a table. So let's save this. Let's then come over to the API. That's where we're going to be doing most of the work now.
6:19:186 hours, 19 minutes, 18 secondsAnd in the API in the source folder we need a new field. So we need a new feature. We already have all database
6:19:266 hours, 19 minutes, 26 secondsmembers organization projects. We need one for our table editor. So here we're going to have the table hyphen editor
6:19:336 hours, 19 minutes, 33 secondslike this. And then we're going to have the DTO which is just right in here. And then we're going to have the create table DTO.ts file. So here let's have
6:19:416 hours, 19 minutes, 41 secondsthe create create table um DTO.TS file just like this. And I'm going to
6:19:506 hours, 19 minutes, 50 secondscollapse this. So the create table DTO.ts file. Let's start by bringing in the imports. We are going to be importing is array. We also need is boolean. We need is in.
6:20:026 hours, 20 minutes, 2 secondsWe also need is optional is string. We need the min length. We need the validate nested because we're going to have nesting of course as we have
6:20:116 hours, 20 minutes, 11 secondsdifferent um schema type. We also have the type which is going to come from class validator. And then we have our
6:20:186 hours, 20 minutes, 18 secondscolumn types which is what I was talking here as we have the column types which will be coming in from our superv constants. And then we also need to
6:20:266 hours, 20 minutes, 26 secondsbring in our own types which will come from super vot type. We're going to import the type create table impute also
6:20:336 hours, 20 minutes, 33 secondscreate column impute. We also need to bring in the column type which is going to come from super vote types. Then we can have the actual class definition. So
6:20:426 hours, 20 minutes, 42 secondslet's export the class create column DTO which is going to be implementing the create column impute.
6:20:506 hours, 20 minutes, 50 secondsSo we're going to have the first property which is the name. So the name is a string and a min length of one. So we're going to have the name string like
6:20:576 hours, 20 minutes, 57 secondsthis. We have the next one for the is in for the column types here. So the type here is going to be the column types just like this. We also have this
6:21:056 hours, 21 minutes, 5 secondsbowling um which is nullable is of type boolean. We also have it primary key.
6:21:126 hours, 21 minutes, 12 secondsHis primary key is going to be um boolean. We also have the default value.
6:21:176 hours, 21 minutes, 17 secondsThe default value is going to be a string. It's optional. So most of these are the types you know you see us using drizzle we are defining our own type
6:21:256 hours, 21 minutes, 25 secondshere and then we also have the foreign key table which is a string and it's optional and we have the
6:21:346 hours, 21 minutes, 34 secondsum we also have the a string and it's optional for the foreign key column we're also going to have the create
6:21:416 hours, 21 minutes, 41 secondstable DTO here which is then going to also implement the create table impute.
6:21:476 hours, 21 minutes, 47 secondsThe create table DTO is going to be implementing the create table impute.
6:21:526 hours, 21 minutes, 52 secondsAnd this is where we have a string and also the main length of one. And then the table is going to have a name. But then the table would have columns and
6:22:016 hours, 22 minutes, 1 secondthe columns is going to be this create table columns. So we have this validated nesting here where each true want to make sure we validate each nested um
6:22:106 hours, 22 minutes, 10 secondstype here. And the type here is going to be the create table DTO. And the columns we're going to have here is a create columns DTO list like this. So this is
6:22:206 hours, 22 minutes, 20 secondsall we have going. If we have this errors here, you just need to have the exclamation mark on these types and you should be good to go.
6:22:296 hours, 22 minutes, 29 secondsAnd the reason you do not have errors here is because these are optional fields. So here we need the exclamation mark as well as here. So this is our create table DTO type that we have here.
6:22:406 hours, 22 minutes, 40 secondsNow we also need another DTO which is going to be for the alter table more or less like to update a table. So over
6:22:496 hours, 22 minutes, 49 secondshere we are going to be creating a new DTO. We're going to call this alter table DTO.ts here like this.
6:23:006 hours, 23 minutesAnd this alter table DTO is just going to be pretty much um straightforward. We are going to be importing the column types which will come first. We're going
6:23:086 hours, 23 minutes, 8 secondsto import is in is optional string which will come from cloud validator. Then we're going to bring in our column type which will come from super vote
6:23:166 hours, 23 minutes, 16 secondsconstants and then we actually bring in the main type which is the column type which also will come in from super votes
6:23:246 hours, 23 minutes, 24 secondstype. So then let's have the class definition.
6:23:286 hours, 23 minutes, 28 secondsWe're going to be exporting the class add column DTO and this add column DTO is going to take in the name which is a
6:23:356 hours, 23 minutes, 35 secondsstring. So is string the name and then we're going to have is in which is the column types and the type here is going
6:23:436 hours, 23 minutes, 43 secondsto be column type and lastly we have is optional is string and that is for the default value.
6:23:526 hours, 23 minutes, 52 secondsSo all this will get us started in making our table editor. Let's not forget to add exclamation mark here and here and give this a save. Now the next
6:24:006 hours, 24 minutesstep is for us to create the table editor service so that we can discuss with database and run operations on our database. Let's close out this previous
6:24:086 hours, 24 minutes, 8 secondswork we've done. And now we're going to be working on the service. Remember the service is always like the longest file.
6:24:156 hours, 24 minutes, 15 secondsSo right here in table editor but outside the DTO folder you want to create a new file. And this is going to be the table editor.ts
6:24:236 hours, 24 minutes, 23 secondsfile. So the service is where you have your business logic. This is where your database um discussions or any calculations is going to be in the
6:24:326 hours, 24 minutes, 32 secondsservice. The controller is always going to be lean. So here we're going to import the bad request exception. We're also going to bring in injectable not
6:24:416 hours, 24 minutes, 41 secondsfound exception. All these will come from NestJS common. Then we need to bring in our checker. So the and the
6:24:486 hours, 24 minutes, 48 secondsequals and the SQL itself which will come from DROM.
6:24:546 hours, 24 minutes, 54 secondsThen we need to bring in our DRO service. The DRO service is going to come in from the DB DU service. We need to bring in
6:25:036 hours, 25 minutes, 3 secondsour projects, our organizations which will come from our database schema.
6:25:086 hours, 25 minutes, 8 secondsAnd then we also need to bring in the create table DTO. The create table DTO is going to come from our DTO. Create
6:25:166 hours, 25 minutes, 16 secondstable DTO. And we also need our U add column DTO. That is to update a column. This is going to come in from our DTO.
6:25:246 hours, 25 minutes, 24 secondsthe alter table DTO and lastly we need to bring in our types from the super votes type. So the type is the table
6:25:316 hours, 25 minutes, 31 secondsinformation the table column and also the column type which will come from super votes types. Now in case you have forgotten what this looks like, you can
6:25:406 hours, 25 minutes, 40 secondsalways like right click go to the definition and you would see like this is the table information, the name, the columns, this is a create table input,
6:25:496 hours, 25 minutes, 49 secondsthis is the table column and this is the yeah the column type here. So let's give this a save. Now we're going to have our
6:25:576 hours, 25 minutes, 57 secondsclass which is going to be marked with the injectable decorator. So let's do it. we have at injectable and we can export the class the table editor
6:26:056 hours, 26 minutes, 5 secondsservice and this class in the constructor we are just going to have the we're just going to initialize Drizzle which is going to be a Drizzle
6:26:146 hours, 26 minutes, 14 secondsservice here. Now we're going to need uh different helpers inside this class here. The first helper we're going to
6:26:236 hours, 26 minutes, 23 secondsneed is this which is going to help us to assert um the the the save identifier. So it's going to take in the
6:26:306 hours, 26 minutes, 30 secondsname and the label and it's going to return void. So here we're just going to have this rejects here and then we want
6:26:366 hours, 26 minutes, 36 secondsto go on and throw a request if it's an invalid label name. So this is what um this is actually going to help us to do
6:26:456 hours, 26 minutes, 45 secondsover here. So it's going to throw this bad request exception that we have an invalid label and then we throw the name
6:26:536 hours, 26 minutes, 53 secondslike this. So this is this private method. We're also going to have a type mapping method. Maybe I leave a comment here. This is going to help us for type mapping like this.
6:27:056 hours, 27 minutes, 5 secondsType mapping like this. And the first one we're going to have is to help us map the PG type to a column type. Okay.
6:27:126 hours, 27 minutes, 12 secondsSo that's the first private method or the next private method we're going to have. So map the PG to column type. So
6:27:196 hours, 27 minutes, 19 secondsit's going to take in the PG type of string and it's then going to help us return a column type over here because we always want to work with a column
6:27:266 hours, 27 minutes, 26 secondstype. So we have this map which is going to take in a string object and the value is going to be a column type. So it's going to be the text is going to be
6:27:356 hours, 27 minutes, 35 secondsequals to text. The character varing is going to be equals to text. The integer is going to be integer. The boolean is going to be boolean. Um big int as well
6:27:446 hours, 27 minutes, 44 secondsis going to be big int. So we're just going to do some p type mapping here to the actual column type. And after this
6:27:526 hours, 27 minutes, 52 secondswe're also going to have the time stamp with um time zone which is going to be time stamp and the same time stamp without time zone is also going to be
6:28:006 hours, 28 minutesmapping to just time stamp like this. We have the UU ID which is going to be of type UU ID. We have the JSON B which is
6:28:106 hours, 28 minutes, 10 secondsgoing to be JSON B type here and the numeric is going to be numeric. So this is our object but then we need to return we're going to be returning the map
6:28:186 hours, 28 minutes, 18 secondswhich is going to then have the PG type otherwise we're just going to have text like this. Now this is one for the type mapping.
6:28:266 hours, 28 minutes, 26 secondsWe're also going to have another private which is also going to now be map type like this. So it's going to take in the
6:28:336 hours, 28 minutes, 33 secondssame just as we have here. So we're going to have this private map type.
6:28:386 hours, 28 minutes, 38 secondsIt's going to take in the type which is a string and then it's going to return a string. So here let's have the object.
6:28:446 hours, 28 minutes, 44 secondsSo let's have our map. So con map is going to be of type record. The string is a the key is a string. The value is a string. And then text is going to map to
6:28:536 hours, 28 minutes, 53 secondstext like this. And same for integer. We do the same for begin for boolean for
6:28:596 hours, 28 minutes, 59 secondstime stamp. Um we also do the same for u ID. So after boolean we do the same for
6:29:056 hours, 29 minutes, 5 secondstime stamp. We do the same for u ID. And then we do the same for JSON B which is
6:29:126 hours, 29 minutes, 12 secondsgoing to be JSON B. We also have numeric and then we are going to go on to return the map which is then going to map based
6:29:206 hours, 29 minutes, 20 secondson the type otherwise we're going to default to text just like this. Now we also have one more and this is going to
6:29:286 hours, 29 minutes, 28 secondshelp us for the format default value. We also need this helpers. We're going to make use of this helpers as we write out
6:29:356 hours, 29 minutes, 35 secondsthe content of this. So let's have this um let's have this private method which we call format default. So it's going to
6:29:446 hours, 29 minutes, 44 secondstake in a value and type string the type and then it's going to return a string.
6:29:496 hours, 29 minutes, 49 secondsNow let's first of all trim the value cuz trimmed is going to be equals to value. And we say hey if trim is um an
6:29:576 hours, 29 minutes, 57 secondsempty string or if it's false then want to return this empty string here. And then we also want to use this reject expression which is this gen random UID
6:30:066 hours, 30 minutes, 6 secondsor the current time stamp. So we want to test it based on this trimmed value and then want to return the trimmed value.
6:30:136 hours, 30 minutes, 13 secondsSo then we're going to say if the type is boolean then we're going to return the trimmed value. If the type is
6:30:206 hours, 30 minutes, 20 secondsinteger or the type is a big int or the type is numeric we are also going to return the trimmed value.
6:30:296 hours, 30 minutes, 29 secondsAnd let's do the same for the JSON B. We are also going to check if the type is
6:30:356 hours, 30 minutes, 35 secondsequals to JSON B. So if we have a JSON B type, we are going to return the trimmed value. But we want to replace this just
6:30:436 hours, 30 minutes, 43 secondsto make sure it matches JSON B with this double column here and then JSON B. And then want to return the trimmed value
6:30:516 hours, 30 minutes, 51 secondsreplace the G over here. And then we're going to have the empty string that we have over here. Now this is the format default method that we are going to use.
6:31:016 hours, 31 minutes, 1 secondNow we need one more. This is going to help us with our project schema lookup before we can go over to having the main method that the table editor is going to
6:31:096 hours, 31 minutes, 9 secondsneed. Okay. So here we're going to have this private method async method get the project schema. So it needs the
6:31:176 hours, 31 minutes, 17 secondsorganization log. It also needs the project log and it's going to return a promise which resolves to a string. So the first thing we're going to do is to
6:31:266 hours, 31 minutes, 26 secondshave the row. So for that we're going to say con row is going to be equals to await this.razo db. So want to select the database
6:31:356 hours, 31 minutes, 35 secondsschema which from database schema projects schema like this. And this is going to come from the projects table.
6:31:446 hours, 31 minutes, 44 secondsThen we're going to have the inner join which is like join the organizations.
6:31:486 hours, 31 minutes, 48 secondsAnd then we have equals the project.org or id matches the organizations id and then the wear clause here is going to be
6:31:566 hours, 31 minutes, 56 secondschained with multiple equals. So we're going to say where and we have equals the organizations slog matches the
6:32:046 hours, 32 minutes, 4 secondsorganization log. We also have equals where the projects slog matches the project slog and then we just want to
6:32:126 hours, 32 minutes, 12 secondslimit our answer to one over here. So we say dot limit like this. Now if for some reason we do not have a row then let's
6:32:196 hours, 32 minutes, 19 secondsgo on and throw a new not found exception which is going to say project not found or if everything
6:32:276 hours, 32 minutes, 27 secondsis okay then we can return the row do the DB schema that we have over here. So now let's format this and the next thing
6:32:356 hours, 32 minutes, 35 secondswe're going to do is to then go on and have the actual queries where we can list the tables where we can get the table structure and things like that. So
6:32:436 hours, 32 minutes, 43 secondsthat's what we are going to be working on next. Okay, so let's continue. And the next method is going to be to list the tables. So let's have those here.
6:32:536 hours, 32 minutes, 53 secondsWe're going to have this comment here, list tables. So it's going to be this async get tables, which is going to take in the organization's log of string also
6:33:016 hours, 33 minutes, 1 secondthe project logo of string. And it's going to return a string array promise.
6:33:056 hours, 33 minutes, 5 secondsSo first we're going to try to get the schema. So let's say cons schema. And the schema is going to be awaiting this get project schema which we're going to
6:33:146 hours, 33 minutes, 14 secondspass in the organization log. and also the project log. Now we're going to get the result of executing
6:33:216 hours, 33 minutes, 21 secondsum some SQL. So the result is going to be await this. DB.execute where we're going to get back the table name as a string.
6:33:306 hours, 33 minutes, 30 secondsWe want to go on and select the table name. So that's why we expecting to get back the table name. And this is going to come in from the information schema
6:33:396 hours, 33 minutes, 39 secondstables. And there we have the wear clause where the table schema is equal to the schema that we are going to
6:33:466 hours, 33 minutes, 46 secondsreceive from here. And we also want to make sure the table type is equals to the base table. And we also want to go on and order this by the table name and in ascending order.
6:33:586 hours, 33 minutes, 58 secondsNow we want to make sure we just get back the table name. For that we're going to return the result rows so that we can map and each result we just want
6:34:056 hours, 34 minutes, 5 secondsto return the result. table name like this. Now the next thing we're going to do is to have the get table structure
6:34:126 hours, 34 minutes, 12 secondsmethod. So we're going to have the async get table information which is going to take in the organization's log of type string and also the project's log of
6:34:206 hours, 34 minutes, 20 secondstype string. We also have the table name which is of type string and then we have u we are going to return a promise
6:34:286 hours, 34 minutes, 28 secondsthat's going to resolve to table information type. Now we're going to first of all do our this save identifier which is going to take in the table name
6:34:376 hours, 34 minutes, 37 secondsand then the tag is going to be table name or the label. Then we're going to have our schema so that we can get uh we can get the project schema. So await
6:34:456 hours, 34 minutes, 45 secondsthis get project schema. We pass in the organization log as well as the project log. Now we also need a column result.
6:34:526 hours, 34 minutes, 52 secondsWe're going to say con column result is going to be equals to await this. Drazzo db and want to call the execute method.
6:34:596 hours, 34 minutes, 59 secondsSo that we're expecting the column name of type string. We're also expecting the data type of type string. So we're going to get back this object that looks like
6:35:086 hours, 35 minutes, 8 secondsthis. We also have is underscore nullable which is of type string and also the column underore
6:35:156 hours, 35 minutes, 15 secondsdefault which is of type string or then we're going to execute this SQL. So we're going to select the column name
6:35:236 hours, 35 minutes, 23 secondsalso the data type. So all these that we're expecting we also select is nullable and the column default which is
6:35:316 hours, 35 minutes, 31 secondsgoing to come from the information schema dot columns and the wear clause
6:35:376 hours, 35 minutes, 37 secondshere is where the table schema is equal to the schema that we receive over here and you also want to go and order this
6:35:466 hours, 35 minutes, 46 secondsby the ordinal position in ascending order like this. Now we're going to have the foreign key results or the primary key result.
6:35:556 hours, 35 minutes, 55 secondsSo after this SQL here, let's get the PK result. The primary key result. So we're going to say con PK result is equals to
6:36:026 hours, 36 minutes, 2 secondsour this drizzle db.execute. We're going to get the column name which is of type string. So I want to get the column name
6:36:096 hours, 36 minutes, 9 secondsthat is the primary key. We're going to select the kcu column name. Normally I'm going to explain what all this means.
6:36:166 hours, 36 minutes, 16 secondsAnd then we're going to select this from the information schema.t constraint.tc.
6:36:246 hours, 36 minutes, 24 secondsAnd then we have the join the information schema dot the column name.
6:36:286 hours, 36 minutes, 28 secondsAnd the usage is the KCU like this. And then we're also going to have this on the TC. No worries, I'm going to explain what all this means in case it's new.
6:36:386 hours, 36 minutes, 38 secondsWhich is equals to the KCU.straint_ame.
6:36:426 hours, 36 minutes, 42 secondsAnd we have the TC.TE table schema which is equals to the kcu.t schema. We also have the wear clause
6:36:506 hours, 36 minutes, 50 secondswhere the TC dot constraint type is equals to primary key. And we also have
6:36:576 hours, 36 minutes, 57 secondsthe TC. Table schema is equals to schema. This is actually an alias which I'll explain in a moment.
6:37:056 hours, 37 minutes, 5 secondsAnd the TC table name is equals to table name. So we're going to say con the
6:37:116 hours, 37 minutes, 11 secondsprimary key or the PK columns and the PK columns is equals to this new set so that we can go on to map through the
6:37:196 hours, 37 minutes, 19 secondsrows. So we say the PK result rows.m map. You can always log this to the console where we're going to return the column name like this and the foreign
6:37:276 hours, 37 minutes, 27 secondskey result is going to be equals to await this.razo db.execute where we expect to get back the column name of type string. We also expect to
6:37:366 hours, 37 minutes, 36 secondsget the foreign table name which is also of type string. And lastly, we also expect to get back the foreign column name which also is of type string.
6:37:486 hours, 37 minutes, 48 secondsThis is the SQL we're going to execute.
6:37:506 hours, 37 minutes, 50 secondsWe're going to select the KCU column name and also the CCU.table
6:37:566 hours, 37 minutes, 56 secondsname as the foreign table name like this. And also we're going to do the
6:38:036 hours, 38 minutes, 3 secondssame for the CCU. name and this is going to be as the forum foreign column name
6:38:116 hours, 38 minutes, 11 secondsand this is going to be coming and this is going to be coming in from the information schema table constraints the
6:38:206 hours, 38 minutes, 20 secondsTC we want to go and join the information schema key_c column usage
6:38:266 hours, 38 minutes, 26 secondsthe KCU and this is going to be on the TC dot constraint name where it is equals to the KCU dot
6:38:356 hours, 38 minutes, 35 secondsthe constraints name and we also have the TC.table schema is equals to the
6:38:426 hours, 38 minutes, 42 secondsKCU.t schema like this. Then we want to go and join the information schema constraint
6:38:526 hours, 38 minutes, 52 secondscolumn usage the CCU just like this on the CCU dot constraint name is equals to the
6:39:016 hours, 39 minutes, 1 secondTC.constraint constraint name where the TC constraint type is equals to the foreign key and
6:39:106 hours, 39 minutes, 10 secondsalso the TC.T schema is equals to the schema.
6:39:156 hours, 39 minutes, 15 secondsI know it's all confusing. No worries, I'm going to explain in a moment. And we have the TC.T name where it is equals to table name.
6:39:246 hours, 39 minutes, 24 secondsNow let's quickly have the foreign key map. So we're going to say con the foreign key map is going to be equals to a new map where we have the foreign key
6:39:326 hours, 39 minutes, 32 secondsresult that we get from here. And then we want to go on to have the rows do map where we have each row and we're going
6:39:396 hours, 39 minutes, 39 secondsto be returning a list because it's a map actually. So the table and then we're going to have the arrow do foreign
6:39:476 hours, 39 minutes, 47 secondstable name and then the column which is the arrow foreign column name like this and then we're going to have the is um
6:39:546 hours, 39 minutes, 54 secondsno. So after the map here the foreign key map the next we're going to have is the columns and the columns is going to be of type table column which is equals
6:40:036 hours, 40 minutes, 3 secondsto the column result dot rows dot map and then we have each column and where we're going to be returning this object
6:40:106 hours, 40 minutes, 10 secondshere where we have the name which is equals to the column name. We also have the type which is equals to this dot map type to column type. And we pass in a
6:40:196 hours, 40 minutes, 19 secondscolumn data type. And we're also going to have it nullable which is the column that is nullable if that is equals to yes. So it's boolean. We also have it
6:40:276 hours, 40 minutes, 27 secondsprimary key which is equals to the primary keys has the column column name and the default value is going to be the
6:40:366 hours, 40 minutes, 36 secondscolumn doc column default. And also we have the foreign key. And the foreign key is equals to the foreign key dot get
6:40:456 hours, 40 minutes, 45 secondsand we expect where we have the column column name otherwise null and then we can go on to return this. So we're going
6:40:526 hours, 40 minutes, 52 secondsto say if the columns.length is equals to zero then let's go on to throw a new not found exception that the table and
6:41:006 hours, 41 minutesthe table name is not found. So we're going to inject the table name here like this. And finally we can go on to return this object where we have the name which
6:41:096 hours, 41 minutes, 9 secondsis the table name as well as the columns. So this is a very big work we've done. I'm going to leave some comments here which is the pre next work
6:41:176 hours, 41 minutes, 17 secondswe're going to do. And when we come back we're going to be working on this. But before we go on to work on this I just want to also spend some time to explain
6:41:246 hours, 41 minutes, 24 secondswhat we I just want to take some time to explain what we're going to do like create table deletes table add column drop column and update row. Okay. Okay,
6:41:336 hours, 41 minutes, 33 secondsso this is all we're going to be working on next. So before we continue to work on all of these, let's just walk through this because we have some um aliases
6:41:416 hours, 41 minutes, 41 secondsthat we might not really understand. So this is what we are going to be working on next. All right, so let's quickly have the explanation. We have tables. So
6:41:496 hours, 41 minutes, 49 secondsthis goes on. So the list tables do go on and fetch the tables. But we want to focus on the get table structure and get
6:41:576 hours, 41 minutes, 57 secondstable structure over here. First we have the column results. So we're going on to get the column result over here. So we're going to fetch the different
6:42:056 hours, 42 minutes, 5 secondscolumns. Want to get all the columns. So this query that we have over here is asking progress for this table. Give me
6:42:126 hours, 42 minutes, 12 secondsevery column. So we are saying give me the name, give me the type. Um also is nullable and also give us the default value here. So that's what we call the
6:42:216 hours, 42 minutes, 21 secondscolumn default. And then we have this PK results. Now this PK result and in case you're seeing things like um over here
6:42:286 hours, 42 minutes, 28 secondsthe TC the KCU you might see somewhere something like the CCU just like this it shouldn't get you confusing these are
6:42:356 hours, 42 minutes, 35 secondsjust aliases the TC stands for the table constraint and it's actually the rule itself which means um is there a primary
6:42:436 hours, 42 minutes, 43 secondskey or in foreign key here so that's the actual rule that's where you're going to see us make things make use of things like the TC and that the same for the
6:42:516 hours, 42 minutes, 51 secondsKCU the KCU stands for the key column usage which means which column does this
6:42:586 hours, 42 minutes, 58 secondsrule specifically sit on and we also have the CCU which is a constraint column usage and that's why we make use
6:43:056 hours, 43 minutes, 5 secondsof that over here and this rule means what the column points to so what is being used as the foreign keys now over
6:43:146 hours, 43 minutes, 14 secondshere where we have the PK results this is just all we're doing over here is to we're asking progress which columns are
6:43:216 hours, 43 minutes, 21 secondsthe primary key so we're going to select from the table constraint. So which is the TC to start which means start with
6:43:296 hours, 43 minutes, 29 secondsthe rules which is going to be nicknamed this TC over here. So that's what this is doing. And in this sentence we're just going on to find the primary key
6:43:376 hours, 43 minutes, 37 secondswhich is the the primary key rule the TC then get is column. So we're going to get is column which is the KCU here. So that's what this primary key is doing.
6:43:496 hours, 43 minutes, 49 secondsAnd it's important that you log this to the console so you can see everything is connected. And then we have these two.
6:43:546 hours, 43 minutes, 54 secondsSo we have this new set that we create over here which is just kind of um a helpful way for us to go and um get the
6:44:026 hours, 44 minutes, 2 secondsprimary key column name. So we can have this like a yes or a no. So that's why we make use of the new set over here.
6:44:096 hours, 44 minutes, 9 secondsAnd then we have the primary key result and this primary key result over here is going to execute this specific
6:44:186 hours, 44 minutes, 18 secondsum query over here. So all or this foreign key result sorry. So all we are doing here is we're asking progress
6:44:256 hours, 44 minutes, 25 secondswhich columns are currently the foreign keys and if you're able to get the columns that are the foreign keys what
6:44:326 hours, 44 minutes, 32 secondsactually are they pointing to. So that's what this is doing and then we just go on to do the last thing over here which is the columns. So all we do here is to
6:44:406 hours, 44 minutes, 40 secondsgo on and build a final column list that we can send back to the UI. So we go and turn the foreign key tables into a map
6:44:486 hours, 44 minutes, 48 secondswhere we can have things like the column name um the table the column it points to everything like this. That's what we then go on to return to the client. All
6:44:576 hours, 44 minutes, 57 secondsright. So um if this isn't clear enough you can also plug this into your favorite large language model get more
6:45:066 hours, 45 minutes, 6 secondsexplanation make sure you understand what's going on and then you can proceed over to the next videos where we are going to be working on these other
6:45:136 hours, 45 minutes, 13 secondsmethods. So let's have the first one here. Um actually we did miss one which is the get table rows. Yeah. So this get
6:45:216 hours, 45 minutes, 21 secondstable rows that we have over here is going to be this async function which we have or we call get table rows. It's going to take in the organization log.
6:45:306 hours, 45 minutes, 30 secondsIt's also going to take in the project log. It's going to take in the project name. The table name and for some pagenation we also need the limit. So
6:45:386 hours, 45 minutes, 38 secondsthe limit is going to be 100 [clears throat] and offset is going to be zero. Now this is going to return a promise. A promise that where we have
6:45:466 hours, 45 minutes, 46 secondsthis object with the rows and the value is going to be um this object where we have the key string the value we do not know. We also need the count of number.
6:45:566 hours, 45 minutes, 56 secondsSo let's start. We're going to call this assert save identifier where we pass in the table name of table name like this.
6:46:036 hours, 46 minutes, 3 secondsAnd then we're going to have our schema which is await this.get the project schema and we pass in the organization name and also the project log. So after
6:46:126 hours, 46 minutes, 12 secondsthis we're going to have the the rows result and the count result because we want to make use of
6:46:206 hours, 46 minutes, 20 secondspromise.all to run this in parallel. So we're going to say promise.all where we say this. Drizzle db.execute.
6:46:296 hours, 46 minutes, 29 secondsWe're going to get the record string and unknown value and want to execute this SQL. So want to execute select everything from the schema that we have
6:46:376 hours, 46 minutes, 37 secondsover here. and also dot table name and want to have the limit is going to be equals to the limit and the offset is going to be the offset. Then we also
6:46:456 hours, 46 minutes, 45 secondswant to have the this dot drizzle db.execute where we're going to get the count which is of type string in this
6:46:536 hours, 46 minutes, 53 secondsobject. So here we're going to select count um everything as count which will
6:46:596 hours, 46 minutes, 59 secondscome from the schema table name and we can close all of these here and we're going to return the object which
6:47:086 hours, 47 minutes, 8 secondsis going to map or match this. So the rows is going to be the rows result rows and the count as we have here is going
6:47:166 hours, 47 minutes, 16 secondsto be a number. We're going to pass int where we have the count rows and then we say dot rows count otherwise we go to
6:47:226 hours, 47 minutes, 22 secondszero and we have pass int like this. So this is for getting the table rows. The next one we have is to create a table.
6:47:346 hours, 47 minutes, 34 secondsSo for creating a table we're going to have this async function method create table. We need the organization for
6:47:416 hours, 47 minutes, 41 secondswhich we are creating the table. We also need the project for which the table belongs. And we need the DTO which is our create table DTO the actual table
6:47:506 hours, 47 minutes, 50 secondsobject we need. So we're going to call again um this dot asset save identifier.
6:47:566 hours, 47 minutes, 56 secondsSo we can going to pass in the DTON name and we can also pass in the table name here like this. So we're going to say
6:48:056 hours, 48 minutes, 5 secondscons the schema is going to be equals to await and we're going to await this project schema and then project slog and
6:48:136 hours, 48 minutes, 13 secondsthe project we have the project log here we also have the pktos which is the dtolc columns filter where we have each
6:48:206 hours, 48 minutes, 20 secondscolumn that is primary key just like this and then we're going to say con the column definition is going to be the
6:48:276 hours, 48 minutes, 27 secondsdtolc columns.map where we have each column and we're going to first call this asset save identifier where we have
6:48:346 hours, 48 minutes, 34 secondsthe column name and the column name just like this. This is just to make sure we avoid SQL injection.
6:48:416 hours, 48 minutes, 41 secondsAnd then we're going to say if the column foreign key table then we're going to call this assert save identifier. So we can pass in the column
6:48:506 hours, 48 minutes, 50 secondsforeign key table and the foreign key table name here like this. And then we want to first check if it's a foreign key column. So it's pretty much the
6:48:586 hours, 48 minutes, 58 secondssame. So if co do is foreign key column we going to do just as we have over here. We're going to say this asset save
6:49:066 hours, 49 minutes, 6 secondsidentifier and we pass in the co and we pass in the foreign key column and we pass in the foreign key just like
6:49:156 hours, 49 minutes, 15 secondsthis. Now the next thing we're going to do is to have the path. So we're going to say path is going to be of type string array and let's have the column
6:49:226 hours, 49 minutes, 22 secondsdefinition which is going to call in the column name and also it's going to call the map type over here and we're going
6:49:306 hours, 49 minutes, 30 secondsto pass in the column type. Then for the primary key, we're going to check if it's a primary key and if the column type is equals to a big int and if there
6:49:386 hours, 49 minutes, 38 secondsis no default value. Then we're going to have the column definition and the column def is going to be plus
6:49:466 hours, 49 minutes, 46 secondsequals to the generated always as identifier. And then we're going to push this column def.
6:49:536 hours, 49 minutes, 53 secondsSo we're going to say path.push the column depth like this. So we have another check if it's a primary key and the primary key.length length is equals
6:50:026 hours, 50 minutes, 2 secondsto one. We also want to push primary key to the different parts. And we're also going to check if it is not the column
6:50:106 hours, 50 minutes, 10 secondsthat is nullable. So if your column is notable and it's not a primary key. So want to push not null. [clears throat]
6:50:176 hours, 50 minutes, 17 secondsAnd then let's also check the default value. So we're going to check also the default value like this. And
6:50:256 hours, 50 minutes, 25 secondsthen we're going to say pass.push. Want to push the default which is this.
6:50:296 hours, 50 minutes, 29 secondsDefault. We are going to pass in the default value as well as the column type there just like this.
6:50:396 hours, 50 minutes, 39 secondsOkay. So then we're going to continue and then we're going to return this dotpath um path join and let's also have
6:50:466 hours, 50 minutes, 46 secondsthe primary constraint which is going to be equals to the primary columns.length.
6:50:516 hours, 50 minutes, 51 secondsLet's check if it is greater than one. A lot of typing. If that's the case, we have primary key which is the primary key columns do map where we're going to
6:50:596 hours, 50 minutes, 59 secondshave each column. So the column name join here like this. We join it with a comma otherwise null. And the same for the foreign key constraint. We also want
6:51:076 hours, 51 minutes, 7 secondsto have the DTO columns. Remember DTO is coming in from the client. Want to filter each column and then we're going
6:51:146 hours, 51 minutes, 14 secondsto return the column. Key table and also check the that is true then the column foreign key column like this.
6:51:246 hours, 51 minutes, 24 secondsone and then map each column where we return the foreign key and the foreign key we're going to then have the column name and then we say this is referencing
6:51:326 hours, 51 minutes, 32 secondsthat schema and then we have the column foreign key table here like this and we also want to have this column dot
6:51:406 hours, 51 minutes, 40 secondsforeign key column just like this here like this and then we're also going to have the alter all definition all depre
6:51:496 hours, 51 minutes, 49 secondsout the column definition. We're also going to spread out the primary key constraint where if it's true, we're going to have
6:51:576 hours, 51 minutes, 57 secondsthe primary key constraint array otherwise an empty array. We're also going to have the foreign key constraint which is going to join by comma and then
6:52:056 hours, 52 minutes, 5 secondswe can finally execute this drizzle db.execute create table on the schema the dto name and all the definition just like this.
6:52:186 hours, 52 minutes, 18 secondsSo this is a lot of typing. Um unfortunately I can't really explain much yet because of time constraints.
6:52:246 hours, 52 minutes, 24 secondsThen we have the delete table. We're going to have this async delete table method. It's quite straightforward. It's just going to take in the organization
6:52:326 hours, 52 minutes, 32 secondslog of string. Also it's going to take in the project log of type string and the table name of type string. And then
6:52:396 hours, 52 minutes, 39 secondswe have a promise. This is going to return a promise that returns to void whenever we delete to return void.
6:52:466 hours, 52 minutes, 46 secondsSo first we're going to call our assert safe identifier. So we can pass in the table name. And then we are going to have our schema. So call schema is going
6:52:546 hours, 52 minutes, 54 secondsto be await this.get project schema. So we can pass in the organization log and the project um slog. And then we can just call await this. Drazzo db.execute.
6:53:076 hours, 53 minutes, 7 secondsSo we can execute um await and say um this um drop table if it exists. And
6:53:146 hours, 53 minutes, 14 secondsthen we pass in the schema and also the table name. Now we still have more to do like adding a column. That's what we're going to be working on now. So let's
6:53:236 hours, 53 minutes, 23 secondscome here for adding a column. Pretty more straightforward as well. So here we're going to have the add column method
6:53:316 hours, 53 minutes, 31 secondswhich is going to take in the organization log of type string. Also the project log of type string. We also have the table name of type string and the DTO because we're adding a column.
6:53:426 hours, 53 minutes, 42 secondsSo we need a data which is going to be of type add column column DTO and this is going to return a
6:53:496 hours, 53 minutes, 49 secondspromise that results to void. So first we call our asset safe identifier so we can pass in the table name and we're
6:53:566 hours, 53 minutes, 56 secondsgoing to call it again the asset save identifier. So we can pass in the DTO name.
6:54:036 hours, 54 minutes, 3 secondsSo let's have our schema. We say con schema is going to be equals to await this.get project schema. So we can pass
6:54:126 hours, 54 minutes, 12 secondsin the organization log as well as the project log. So let's have the column definition. The column definition is
6:54:216 hours, 54 minutes, 21 secondsgoing to be equals to the DTO name. And then we call this dot map type. And then we're going to pass in the DTO dot
6:54:306 hours, 54 minutes, 30 secondsdefault value. And the column definition here is going to be plus equals to default this dot format default where we
6:54:386 hours, 54 minutes, 38 secondspass in the DTO. default value and the DTO type. We are then going to await this. Drizzle db.execute
6:54:476 hours, 54 minutes, 47 secondswhere we're going to execute alter table the schema and then we have the table name and the add column which is then
6:54:546 hours, 54 minutes, 54 secondsgoing to take in the column definition like this. Now the next one we need is to drop a column. So
6:55:026 hours, 55 minutes, 2 secondsthat's what we are going to be working on next here to drop column. So dropping column is pretty much straightforward as well. So for the drop column we have the
6:55:116 hours, 55 minutes, 11 secondsasync drop column which is going to take in the organization log of type string.
6:55:176 hours, 55 minutes, 17 secondsWe also have the project log of type string. We also have the table name which is of type string. We have the column name which also is of type string and the promise that returns void.
6:55:296 hours, 55 minutes, 29 secondsSo again we're going to call our assert safe identifier. Um and then we pass in the table name which is going to be
6:55:366 hours, 55 minutes, 36 secondstable name and we do the same for the column name which is the this asset safe identifier. We pass in the column name and the column name like this. So first
6:55:456 hours, 55 minutes, 45 secondslet's have our schema. We're going to say con schema is going to be our this get project schema and we pass in the
6:55:536 hours, 55 minutes, 53 secondsorganization for which we want to get the schema. So the organization log and the project log and then we just go on to execute. So we're going to await
6:56:016 hours, 56 minutes, 1 secondthis.dris db.execute execute. We want to execute alter table and then the schema
6:56:086 hours, 56 minutes, 8 secondsthe table name. So want to drop column and then we're going to pass in the column name. Now we have the last one here. So the last one is for the update
6:56:176 hours, 56 minutes, 17 secondsro operation. So updating a row is also pretty much straightforward. You can now get the idea of the pattern on how things are working. We have the start
6:56:266 hours, 56 minutes, 26 secondssave identifier to make sure it's safe SQL and then we have the schema and then we're going to execute which is pretty
6:56:336 hours, 56 minutes, 33 secondsmuch the same um pattern that we have over here. Now for updating the row is also like the same. We're going to have
6:56:416 hours, 56 minutes, 41 secondsthe async update row method which is going to get the organization log also the project slog of type string. We also
6:56:506 hours, 56 minutes, 50 secondshave the table name. Table name is a string. We have the primary key column which is of type string. We have the
6:56:586 hours, 56 minutes, 58 secondsprimary key value which is also a string and then we have updates which is the record. So it's an object with a key of
6:57:056 hours, 57 minutes, 5 secondsstring value of unknown and it returns a promise which resolves the void. Now again we're going to call the assert save identifier so we can
6:57:136 hours, 57 minutes, 13 secondspass in the table name and be sure that it's safe. And then we're also going to do the same for the primary key column which is going to be the primary key
6:57:226 hours, 57 minutes, 22 secondscolumn like this. Now we're going to have object keys based on the updates that we can map through it. So object
6:57:296 hours, 57 minutes, 29 secondskeys for the updates which we receive here. So for each column we are going to have here we're going to
6:57:366 hours, 57 minutes, 36 secondsassert the save identifier the column and we have the column name. So now we are sure everything is safe. We can continue by having the schema
6:57:446 hours, 57 minutes, 44 secondsdefinition. schema is going to be our dert get project schema. So we pass in the organization log and the project
6:57:516 hours, 57 minutes, 51 secondslog. Then we also want to set the fragments. We're going to have con set fragments is going to be the object
6:57:586 hours, 57 minutes, 58 secondsentries based on the updates. We can go on to map and when we map we have the key and value in this array. So with the structure and here we're going to get
6:58:076 hours, 58 minutes, 7 secondsthe SQL identifier where we have the column is equals to the value like this.
6:58:126 hours, 58 minutes, 12 secondsAnd then we're going to await this drizzle db.execute.
6:58:176 hours, 58 minutes, 17 secondsWe want to execute the SQL and the SQL here is update. We're going to pass in the identifier name. So the
6:58:246 hours, 58 minutes, 24 secondsSQL identifier schema and then we also have the table name like this. And then we want to set. So what do we want to set? We're going to make use of SQL.in
6:58:336 hours, 58 minutes, 33 secondsjoin the set fragments the SQL and then we're going to have this um comma like this where the SQL identifier is the
6:58:416 hours, 58 minutes, 41 secondsprimary key column is equals to the primary key value. So this is pretty much everything we need to get started
6:58:486 hours, 58 minutes, 48 secondsin the service. Um I know it's a lot as you can see approximately 350 lines of code but yeah it is what it is. The next
6:58:566 hours, 58 minutes, 56 secondsstep for us is to then work on the actual controller. So the controller is going to call these methods we have in the service or advice before you move
6:59:046 hours, 59 minutes, 4 secondsforward. Run this through your favorite LLM. Make sure you understand what's going on. Get the explanations. Get all
6:59:126 hours, 59 minutes, 12 secondsyou need. And once you're confident that you understand what this code is doing, then we can continue over to the controller. So I'll see you in the next
6:59:206 hours, 59 minutes, 20 secondsvideo. Let's give this a save. And now we're going to create the controller. So I'm going to come here and still inside
6:59:276 hours, 59 minutes, 27 secondsthe table editor. We're going to have our table- editor controller ts file. So let's have the controller
6:59:366 hours, 59 minutes, 36 secondsfile. As always, we start by bringing in the imports. We're going to import body
6:59:426 hours, 59 minutes, 42 secondsalso controller delete get um also param. We're going to have patch post
6:59:496 hours, 59 minutes, 49 secondsquery use guards which will come from nest.js common. Now we need to bring in our table editor service which will come
6:59:586 hours, 59 minutes, 58 secondsfrom one level up and then we have our table editor service and then we need the DTO to create the
7:00:067 hours, 6 secondstable. So import create table DTO which will come from the DTO create table DTO.
7:00:147 hours, 14 secondsWe need the add column DTO.
7:00:177 hours, 17 secondsSo we import the add column DTO which will come from the DTO and it come from alter table DTO. We need the JWT
7:00:257 hours, 25 secondsauthentication guard which will come from our off guard. The JWT off um
7:00:317 hours, 31 secondsguard. We also need our role our organization row guard guards the organization row.gard.
7:00:417 hours, 41 secondsSo this is all our imports that we use to get started. Now the controller path is going to be / ai/organization
7:00:487 hours, 48 secondsand then the organization log. We also have / project the project log and tables. And this is going to make use of the JWG offcat. So you need to be
7:00:567 hours, 56 secondsauthenticated and also the organization ro. So let's see how we can make use of this. So here we're going to have the
7:01:047 hours, 1 minute, 4 secondsconstructor which is going to have the organization. And then we're going to have slog project the project log and the tables. And we want to also make use
7:01:137 hours, 1 minute, 13 secondsof our cards. So we're going to make use of our JWT card and our organization row card. And in the table here the table
7:01:217 hours, 1 minute, 21 secondseditor controller. So in the class we're going to inject the service and the constructor. So we're going to say private table editor service is going to
7:01:307 hours, 1 minute, 30 secondsbe of type table editor service like this. Now we're going to have our first method which is get so that we can get
7:01:377 hours, 1 minute, 37 secondstables a get request and then the next one is going to be to get the table name and the rows. So we're going to say at get like this get
7:01:467 hours, 1 minute, 46 secondstables is going to take an a param. So the slug of string and then the project slo. So this first log is the organization log and this over here is
7:01:557 hours, 1 minute, 55 secondsthe project log. So then we're going to return this table um editor service
7:02:037 hours, 2 minutes, 3 secondsand then want to call the get tables method which needs the log and the project log. Now that's the same for
7:02:097 hours, 2 minutes, 9 secondsthis. So to get the table rows like this and in here we're going to have the get table rows method. So the param we're
7:02:177 hours, 2 minutes, 17 secondsgoing to have the slog which is uh and and we will store it in slog the organization slog. Next is the project slog
7:02:267 hours, 2 minutes, 26 secondswhich we're going to have in project log like this. And next is the table name.
7:02:307 hours, 2 minutes, 30 secondsSo the table name is going to be this table name of string. We also have the limit. The limit is optional. So you
7:02:377 hours, 2 minutes, 37 secondswant to get it from the params and it's optional. So here we're going to have the limit like this. So the query, sorry. And the offset is also going to come from the query, not the parents.
7:02:487 hours, 2 minutes, 48 secondsAnd then we can return this table editor service get table rows. And then we're going to pass in everything. So we're
7:02:557 hours, 2 minutes, 55 secondsgoing to pass in the slog. And we're also going to pass in the project slog.
7:02:597 hours, 2 minutes, 59 secondsWe're also going to pass in the table name. We need the limit. If limit is option there, they want to pass
7:03:067 hours, 3 minutes, 6 secondsin otherwise we're going to default to the limit. Same for the offsets which are actually of type numbers. So that's
7:03:137 hours, 3 minutes, 13 secondswhy we make use of pass int just like this.
7:03:187 hours, 3 minutes, 18 secondsAnd the next one we have is to get a table get and then the table name. So not the
7:03:257 hours, 3 minutes, 25 secondsrows. So let me come here and the get table name is going to be just like this. It's a get endpoint. It takes in
7:03:337 hours, 3 minutes, 33 secondsthe table name and then we call get table info. So the table name is dynamic. So we're going to get that from the param. So the param first is the
7:03:417 hours, 3 minutes, 41 secondsslogan organization slog. The next is the project slog and the next param is the table name. So this param over here
7:03:497 hours, 3 minutes, 49 secondswant to retrieve it and we retrieve it like this and store it into table name here. So it's of type string and we can call the table editor service and we can
7:03:587 hours, 3 minutes, 58 secondscall the get table information method which is the log the project log and also the table name.
7:04:067 hours, 4 minutes, 6 secondsThen we have to create table. So create table is a post request create table method. We need the slog. So the organization for which want to create
7:04:157 hours, 4 minutes, 15 secondsthis table. We also need the project log. So we retrieve all these with a param. We take project log of type
7:04:227 hours, 4 minutes, 22 secondsstring. And then we need a body because we're running a create operation. The DTO which is a create table DTO. And we
7:04:297 hours, 4 minutes, 29 secondscan return this table editor service.re create table which is then going to take in the slog the project log and the DTO.
7:04:407 hours, 4 minutes, 40 secondsWe also have this batch request to update the table column. So we have the table name and the column. So we call this add column method which is going to
7:04:497 hours, 4 minutes, 49 secondstake in the param slug. We store it in the slog of type string. We're also going to take the project slog. So the
7:04:567 hours, 4 minutes, 56 secondsproject log we store it in this project log variable of type string. We also have the table name and we get it from
7:05:037 hours, 5 minutes, 3 secondsthe param the table name. So this table name here and then we have the DTO which is going to be retrieved from the body.
7:05:117 hours, 5 minutes, 11 secondsAnd then we can call the add column um this table editor service add column just like this and then the add column
7:05:207 hours, 5 minutes, 20 secondsis going to take in the slog the project log and the table name and the DTO just here like this. So let's then have the
7:05:287 hours, 5 minutes, 28 secondsdelete operation which is going to come just after the patch operation like this. We are going to have the delete
7:05:357 hours, 5 minutes, 35 secondsoperation which is going to take in the table name, the columns and the column name. So we can call this method drop
7:05:427 hours, 5 minutes, 42 secondscolumn. So it needs the param so we can get the slog. We also need the param decorator. So we can get the project slog uh which will store in project log
7:05:527 hours, 5 minutes, 52 secondslike this. We also have the table name which we're going to store in table name like this of type string. We have the
7:06:007 hours, 6 minutescolumn name which we're going to store the column name variable of type string and we can just return
7:06:087 hours, 6 minutes, 8 secondsthis dot the table editor service dot drop column and we are going to pass in the slog. We're also going to pass in
7:06:177 hours, 6 minutes, 17 secondsthe project slog the table name and the column name. So this is for deleting column. We're also going to have delete
7:06:267 hours, 6 minutes, 26 secondswhich is just going to be for the table name. So at delete table name like this is going to be on this delete table. So
7:06:347 hours, 6 minutes, 34 secondsnot column. The init first one was column. So we just need the project log.
7:06:387 hours, 6 minutes, 38 secondsUm the organization log. We need the project log which we'll get from the param. We name it project slog. And then we're also going to need the table name.
7:06:487 hours, 6 minutes, 48 secondsSo we're going to retrieve it here. The table name. table name like this and we can just call this dot the table editor
7:06:557 hours, 6 minutes, 55 secondsservice and we can call delete table which is going to take in the slog the project log and the table name. So this
7:07:037 hours, 7 minutes, 3 secondsis what the service needs and the last one we need here is patch. So to update a row so / table name / row and we have
7:07:127 hours, 7 minutes, 12 secondsslash the primary key value. So we call update row. So we have at param for the slog which is going to be a string. We
7:07:197 hours, 7 minutes, 19 secondsalso have at param for the project log which we are going to name project slog of type string.
7:07:267 hours, 7 minutes, 26 secondsWe also have at param for the table name is going to be table name like this. And we have the param for the primary key
7:07:357 hours, 7 minutes, 35 secondsvalue is going to be the pk value of type string. We also have the body which is going to be a body like this. And we
7:07:427 hours, 7 minutes, 42 secondshave the primary key column which is of type string. We have the updates which is this object with record string and
7:07:507 hours, 7 minutes, 50 secondsvalue unknown. And we can just return this table editor service dot updates row.
7:07:587 hours, 7 minutes, 58 secondsAnd then we are going to pass in the sl name the body primary key column as we
7:08:077 hours, 8 minutes, 7 secondshave here. We're also going to have the primary key value and we are also going to have the body dot update like this.
7:08:177 hours, 8 minutes, 17 secondsSo the update is actually going to be the actual object. So we know it's a key value key string but we do not know the
7:08:247 hours, 8 minutes, 24 secondsvalue. That's why we go with unknown like this. So now we have this. The next is for us to have our table editor
7:08:317 hours, 8 minutes, 31 secondsmodule. So we're going to come right here and over here we're going to be creating a new file just like this and
7:08:397 hours, 8 minutes, 39 secondsthis is the table editor module.ts file. So in the table editor module we're going to import module decorator
7:08:477 hours, 8 minutes, 47 secondsfrom NexJS common. We are also going to bring in our authentication module. This is going to come in from two one level
7:08:557 hours, 8 minutes, 55 secondsup to the OM module. We also need our organization row guard which will come
7:09:017 hours, 9 minutes, 1 secondfrom all guards the organization rowg guard. We also need our table editor
7:09:087 hours, 9 minutes, 8 secondsservice which is going to come in from the table editor service.
7:09:147 hours, 9 minutes, 14 secondsAnd then we need our table editor controller which will come from one level up to our table editor controller.
7:09:217 hours, 9 minutes, 21 secondsOkay. So now once we have all of these the next is for us to have our module decorator.
7:09:277 hours, 9 minutes, 27 secondsSo the module decorator. So we can have the imports. We're going to have the authentication module. We also have the providers. We have the table editor
7:09:357 hours, 9 minutes, 35 secondsservice and organization rod. And then we have the controller which is our table editor controller that we just created.
7:09:457 hours, 9 minutes, 45 secondsAnd that's pretty much it. We can then have the class definition. So we export the class table editor module like this.
7:09:527 hours, 9 minutes, 52 secondsNow we need to register this in the application module. So we're going to come here and let's locate our application module and here just in the
7:10:017 hours, 10 minutes, 1 secondimports after the projects module let's have our table editor module brought in here and we can give this file a save.
7:10:087 hours, 10 minutes, 8 secondsYeah. So let's just give this a quick run. So pnpmdev let's be sure that our back end is still able to compile
7:10:157 hours, 10 minutes, 15 secondswithout any errors. And once we are sure our back end is able to compile, then we're going to go over to the front end side where we are going to start working
7:10:247 hours, 10 minutes, 24 secondson building the actual table editor. So just give this a refresh again and this time around let's see if everything
7:10:327 hours, 10 minutes, 32 secondscompiles is because the back end compiled before the front end. So now just give this a refresh and if you do not see any errors then we are good to
7:10:407 hours, 10 minutes, 40 secondsgo and we can test the rest as we continue to build. So everything is working fine as expected. Now we are going to focus on the front end where we
7:10:497 hours, 10 minutes, 49 secondsare going to be working on the actual table editor. So I'll see you. Okay. So let's go into the front end side of
7:10:567 hours, 10 minutes, 56 secondsthings. Um yeah. So I'm going to quit or maybe I'll open up a new terminal window because now we need to install tanstack
7:11:037 hours, 11 minutes, 3 secondsreact table which is going to help us with our table editor. So we need to see the into the apps and this is into the web. The command is pmppm add
7:11:127 hours, 11 minutes, 12 secondstanstack/react table. So make sure you run the installation and while the installation is ongoing we can start making changes
7:11:217 hours, 11 minutes, 21 secondsfirst up to the constant.ts file. So I'm going to close all that we have open here all the work
7:11:287 hours, 11 minutes, 28 secondsfrom back end and in the constants package. So right here in the packages in the constants in the source the index
7:11:377 hours, 11 minutes, 37 secondswe are going to have new constant registered here. So I'm going to bring this down here and I would also quit this terminal window as the installation
7:11:467 hours, 11 minutes, 46 secondshas been completed. And in here we can import the table editor intent and table editor intent is going to be to create
7:11:547 hours, 11 minutes, 54 secondstable which is going to be of this string create table. We also need the same for the delete table which is going
7:12:027 hours, 12 minutes, 2 secondsto be delete table and fetch table is going to be fetch table like this. And we can
7:12:107 hours, 12 minutes, 10 secondscall this as constant and export the type the table editor intent which is going to be making use of the type of
7:12:187 hours, 12 minutes, 18 secondsthe table editor intent which is the type of the key of the table editor
7:12:257 hours, 12 minutes, 25 secondsintent. Now that we have all of these let's give this a save. We are going to create the schema. So I'm going to close
7:12:327 hours, 12 minutes, 32 secondsthis and just as we have in our web in yeah I have some templates which I'll walk through in a moment but in the
7:12:407 hours, 12 minutes, 40 secondssource in the features just as we have features for all of these we are going to create another feature which is going to be for table iPhone editor like this.
7:12:517 hours, 12 minutes, 51 secondsNow let's have our client schema ts file and inside [snorts] this client schema we're going to be importing zed from z.
7:12:597 hours, 12 minutes, 59 secondsWe're also going to need to bring in column types and the column types we just created right now in the super
7:13:067 hours, 13 minutes, 6 secondsvault constants and we also need to bring in the column type and the create table impute which is going to come from
7:13:147 hours, 13 minutes, 14 secondsthe superv types. Now that we have that let's have the actual constant which is going to be the create column schema. So
7:13:237 hours, 13 minutes, 23 secondsthis is going to be based of z.z Zord uh object sorry and here we need the name the name is going to be of type string a
7:13:327 hours, 13 minutes, 32 secondsmean of one and it's required we also need the type for the enum so the column types are so we're having this casting here so we avoid typescript issues as
7:13:417 hours, 13 minutes, 41 secondscolumn type I want to spread out the column type list here we also have it nullable which is a boolean we have it primary key which is
7:13:507 hours, 13 minutes, 50 secondsalso z boolean we have the default value the default value is ZTS string and is optional. And we have the foreign key
7:14:007 hours, 14 minutestable which is Z dot string dot optional. And we also have the foreign key column which is Z.Tring.optional.
7:14:097 hours, 14 minutes, 9 secondsNow we're going to be exporting a constant which we'll call the create table schema. This create table schema
7:14:177 hours, 14 minutes, 17 secondsis going to have this shape. So the shape is the name and the name is Z.r of one. We say the table name is
7:14:257 hours, 14 minutes, 25 secondsrequired and it's also going to need the columns for which we are creating the table. So the columns is going to be Z dot array. We pass in the create column
7:14:337 hours, 14 minutes, 33 secondsschema and then dot mean of one at least one column that matches all of these is required and this is going to satisfy the Z.ype for the create table input.
7:14:457 hours, 14 minutes, 45 secondsNow we also need the fetch table schema which is going to be Z.object object the table name and the table name is a
7:14:547 hours, 14 minutes, 54 secondsstring and a min of one. So we need the last one which is the delete table schema. The delete table schema is going
7:15:027 hours, 15 minutes, 2 secondsto be Z dot object and we need the table name which is going to be a string with
7:15:097 hours, 15 minutes, 9 secondsa mean of one. So this is this is all our client schema. Now why do we have this error here? Because
7:15:187 hours, 15 minutes, 18 secondsum so let me just get rid of this. I think this casting here is not really going too well with TypeScript. Yeah.
7:15:247 hours, 15 minutes, 24 secondsSo, we can just get rid of the casting that's going on there and we are good to go. So, let's save this. The next is for the server side. I'm going to open this
7:15:327 hours, 15 minutes, 32 secondsup and we're going to have the servers schema.ts file. So, right here we can
7:15:397 hours, 15 minutes, 39 secondsalso import Z from zod. And then we're going to bring in the table editor intent
7:15:477 hours, 15 minutes, 47 secondswhich is going to come in from the constants. And then let's bring in the different client schema as well because we're going to be extending them. So we
7:15:547 hours, 15 minutes, 54 secondsneed the create table schema, the delete table schema and also the fetch table schema which will come from the one
7:16:027 hours, 16 minutes, 2 secondslevel up. So where we have the clients schema. Now we have the table editor server schema
7:16:107 hours, 16 minutes, 10 secondsand as always this is going to be z.discriminate union based on the intent. So we're
7:16:177 hours, 16 minutes, 17 secondsgoing to have z.object and the intent here is going to be z.lit where we have the table editor intent dot create
7:16:267 hours, 16 minutes, 26 secondstable. So whenever we want to create a table we need to have the name. So we're going to have the create table schema dot shape.name. So the name the shape
7:16:357 hours, 16 minutes, 35 secondsover there and the columns is going to be Z string. I want to use transform. So we have the raw and the ctx and we're going to have the try catch block.
7:16:457 hours, 16 minutes, 45 secondsSo we're going to say past is going to be of type unknown is going to be JSON.pass row and the result is going to be the
7:16:537 hours, 16 minutes, 53 secondscreate table schema.shape column. So we want to save pass it here and we're going to have the past. So if
7:17:007 hours, 17 minutesfor some reason the result is not successful. So we're going to say if no result dos success we want to add an
7:17:077 hours, 17 minutes, 7 secondsissue to the context. So we say ctx add issue and the code is going to be costume and the actual message is going
7:17:157 hours, 17 minutes, 15 secondsto be invalid columns. And then we're going to return z never like this.
7:17:237 hours, 17 minutes, 23 secondsAnd we return the result data if everything is okay. Now if for some reason the passing fails and is not able
7:17:307 hours, 17 minutes, 30 secondsto pass, we are also going to add an issue to the context and this is going to have a code of costume and also a
7:17:387 hours, 17 minutes, 38 secondsmessage that is going to say invalid columns JSON and then we're going to return Z never like this. Now we're also
7:17:477 hours, 17 minutes, 47 secondsgoing to have other intents here which is to delete a table. So Z dot object the intent if the intent is Z.literal
7:17:557 hours, 17 minutes, 55 secondstable editor intent.delete The delete table we are going to pass across the table the delete table schema shape just
7:18:037 hours, 18 minutes, 3 secondslike this. And the last one we have is to fetch a table. So the intent is going to be table editor fetch table. And then
7:18:117 hours, 18 minutes, 11 secondswe're going to have the we're going to spread the fetch table schema shape like this.
7:18:207 hours, 18 minutes, 20 secondsOkay. So now this is pretty much what we need to get started in terms of the schema definition and also the constant definition. Why do we have this error
7:18:287 hours, 18 minutes, 28 secondshere? That's because constants I'm just going to get rid of this so that we can let the IDE bring in the import just here. Super vote for/ constants. Yeah.
7:18:387 hours, 18 minutes, 38 secondsSo now we've fixed all of this. The next step is for us to have our action and also our different server
7:18:477 hours, 18 minutes, 47 secondshelpers that we're going to need in creating the actual UI interface. Okay, so let's go into the different action
7:18:557 hours, 18 minutes, 55 secondsthat we need and yeah so let's create the action. So what's going to happen is right here I'm going to close all of these and we are going to have the
7:19:037 hours, 19 minutes, 3 secondsaction file here. So the action ts file and over here we can start by marking this as a server action the making of
7:19:137 hours, 19 minutes, 13 secondsthe use server directive as a server component. We're also going to need to import revalidate path from next cache.
7:19:207 hours, 19 minutes, 20 secondsWe also need to bring in our schema. So the schema the table editor server schema is going to come from one level up where we have the servers schema
7:19:287 hours, 19 minutes, 28 secondsfile. We also need to bring in the intent. The intent is going to come in from our superv constant. So we need to update this and then we need to bring in
7:19:367 hours, 19 minutes, 36 secondsour cookie keys. The cookie keys is also going to come in from the super vault constant.
7:19:437 hours, 19 minutes, 43 secondsThen we need a retrieve cookie retrieve token from cookie helper function which is going to come from our server utilities for/uts.
7:19:537 hours, 19 minutes, 53 secondsThen we need our API client which will come from lib exio. And we also need our table information.
7:20:027 hours, 20 minutes, 2 secondsAnd the table information is going to come in from the superv for/types.
7:20:077 hours, 20 minutes, 7 secondsNow the first thing we're going to do is to export the type the table editor action state. It's going to be equals to
7:20:147 hours, 20 minutes, 14 secondsthis object where we have an optional error of type string. Also the sources could be of type string. We also have
7:20:217 hours, 20 minutes, 21 secondsthe table name which could be of type string. So we expect this sort of response. Same for the table data is an optional object. So the info is the
7:20:297 hours, 20 minutes, 29 secondstable information. The rows is this object with a string and value of unknown. So a list of this type of
7:20:367 hours, 20 minutes, 36 secondsobject. The count is also a number. Now the type for the table editor context is going to be the organization log of type
7:20:447 hours, 20 minutes, 44 secondsstring and also the project's log of type string. So let's have our authentication headers. So we just have this function which we call headers.
7:20:547 hours, 20 minutes, 54 secondsIt's going to take in the token of string and it's going to be returning this object with the headers where we
7:21:017 hours, 21 minutes, 1 secondhave the cookie keys. The cookie keys access token is going to be equals to the actual token. We also want to create the base path. So the base URL we have
7:21:107 hours, 21 minutes, 10 secondsthe organization log of string. We also have the project slog of type string.
7:21:167 hours, 21 minutes, 16 secondsAnd we are going to return /organizations/ theorganizations log/ the projects slash
7:21:227 hours, 21 minutes, 22 secondsthe projects log and the tables. Now we also want to revalidate the database page. We're going to be creating this page before we start the actual page
7:21:307 hours, 21 minutes, 30 secondsdefinition. So it's going to have the organization log and the project log.
7:21:357 hours, 21 minutes, 35 secondsAnd we're going to revalidate the path which is /organizations slash the
7:21:427 hours, 21 minutes, 42 secondsorganizations log and then the project log slash the database. Now let's have the actual action. We're going to export
7:21:507 hours, 21 minutes, 50 secondsthe async function which is the table editor action.
7:21:557 hours, 21 minutes, 55 secondsIt's going to need the organization log which is and the project log which are this type table editor context. We also have the previous state which is the
7:22:047 hours, 22 minutes, 4 secondstable editor action state and the form data. The form data is going to be of type form data and this is going to return a promise that results to the
7:22:137 hours, 22 minutes, 13 secondstable editor action state. So as always we start with the raw data which we get from object from entries. We pass the
7:22:217 hours, 22 minutes, 21 secondsform data and then we're going to pass this. So pass is going to be the table editor schema server dot save pass based
7:22:287 hours, 22 minutes, 28 secondson the data we are receiving which is the raw here. And if this is not successful, we're going to return this error object
7:22:377 hours, 22 minutes, 37 secondsthat's going to say the pass error.flatten form errors the first item. Otherwise, we go with invalid input. So let's go
7:22:467 hours, 22 minutes, 46 secondson. Let's get the token. Let's get the intent and the base path. The token is going to come from awaiting retrieve token from cookie. We also need the
7:22:557 hours, 22 minutes, 55 secondsintent. The intent is also going to be gotten like this where we're going to have the pass data and we are going to
7:23:027 hours, 23 minutes, 2 secondshave the base and the base is going to be the base path and we also need the options which we call ops which will
7:23:107 hours, 23 minutes, 10 secondscome from authentication headers and we pass in the token. So in the try block we want to switch.
7:23:167 hours, 23 minutes, 16 secondsSo based on the intent if the intent is having this case for the table editor intent dot create table we're going to
7:23:247 hours, 23 minutes, 24 secondswrite the logic here. So we're going to dstructure the name and the columns from the past data
7:23:327 hours, 23 minutes, 32 secondsand let's go on to await the API client post where we're going to pass in the base and also this object with the name
7:23:397 hours, 23 minutes, 39 secondsand the columns and the ops just like this. So that's what the back end needs.
7:23:447 hours, 23 minutes, 44 secondsThen we can go on to validate the database path by passing the organization log and the project log. I want to return success table created as well as the table name here like this.
7:23:577 hours, 23 minutes, 57 secondsWe're going to have the same for deleting a table. Now deleting the table case intent like this. We have the table
7:24:047 hours, 24 minutes, 4 secondseditor intent delete table. For the case we need the table name. So we're going to con table name is going to be pass
7:24:127 hours, 24 minutes, 12 secondsdata and we're going to await the API client dodelete. So we're going to then pass the base URL slash the table name and then we pass the options like this.
7:24:247 hours, 24 minutes, 24 secondsWe also want to revalidate the database path and we're going to pass in the organization log and the project log.
7:24:317 hours, 24 minutes, 31 secondsThen finally we can return the table name, the sources, the table deleted as well as the table name. Now we have the last one here which is to fetch a table.
7:24:427 hours, 24 minutes, 42 secondsSo the case where we have the table editor intent do fetch table we need the table name. So we're going to get that from past data
7:24:517 hours, 24 minutes, 51 secondspass the data like this and we're going to get the information result and the rows result. So we want to get the table
7:24:587 hours, 24 minutes, 58 secondsinformation. So this is going to be awaiting promise.all. We're going to send two requests. The first one is the API client.get which will get the table
7:25:087 hours, 25 minutes, 8 secondsinformation. So we have the base path/t name and the options. And the next one is going to be the API client.get where
7:25:167 hours, 25 minutes, 16 secondswe're going to get the object with the rows which is the record. The key is a string and the value is unknown. A list of this object. We're also going to have
7:25:247 hours, 25 minutes, 24 secondsthe count which is a number. And then the path is going to be slash um the base / table name / rows and the limit
7:25:327 hours, 25 minutes, 32 secondsis going to be hardcoded 100 here. So we have the options and finally we can then go on to return this object that's going
7:25:407 hours, 25 minutes, 40 secondsto have the table data. So such as the information the information results do data also the rows is going to be the
7:25:497 hours, 25 minutes, 49 secondsrows result dot data dot rows and we also need the count which is the rows result data count.
7:26:007 hours, 26 minutesNow for the catch block it's pretty much straightforward here because um in the catwork we're also going to disable the error that we usually see. So I'm just
7:26:087 hours, 26 minutes, 8 secondsgoing to add the ES disable next line at TypeScript in lint no explicit any because the error type is going to be of
7:26:167 hours, 26 minutes, 16 secondstype any. So over here we're going to have the catch block the error is of type any. And we're going to return this
7:26:247 hours, 26 minutes, 24 secondsobject with the error key that comes from the response data message. Otherwise we say something went wrong.
7:26:337 hours, 26 minutes, 33 secondsNow let's have the editor help us. It's okay. We have these errors over here.
7:26:387 hours, 26 minutes, 38 secondsFirst is this table editor contents. So remember it comes from superv constant.
7:26:427 hours, 26 minutes, 42 secondsSo I'll get rid of this and I would let the IDE bring this in for me and that should fix the errors that we have over here. So it does and we are good to go.
7:26:527 hours, 26 minutes, 52 secondsWe can then give this a save.
7:26:557 hours, 26 minutes, 55 secondsNow let's have the table editor help us server file. In here we're going to create a new file and this is the table
7:27:037 hours, 27 minutes, 3 secondseditor helpers. java.ts file. Now, this is going to be straightforward. We're going to be importing redirect which
7:27:117 hours, 27 minutes, 11 secondswill come from next navigation. We also need the API client. The API client is going to be coming in from at/le/exios.
7:27:217 hours, 27 minutes, 21 secondsWe also need the retrieve token from cookie which is going to come from at sava- utios/utios.
7:27:297 hours, 27 minutes, 29 secondsWe also have the cookie keys which is going to come in from at superv for/ constants and then we have the
7:27:377 hours, 27 minutes, 37 secondsimport type. So I want to import project which will come from our super vot types. Now the first function we're going to have here is to retrieve the
7:27:467 hours, 27 minutes, 46 secondstables from API. So we're going to export the async function retrieve tables from API where we pass in the
7:27:527 hours, 27 minutes, 52 secondsorganizations log as well as the project log which are both of type string. Now this function is going to return a
7:28:017 hours, 28 minutes, 1 secondpromise that results to an array of strings. So we're going to have the token by retrieving the token from the
7:28:077 hours, 28 minutes, 7 secondscookie and the try block we are going to have the con data. Data is going to be awaiting the API client.get get we are
7:28:167 hours, 28 minutes, 16 secondsgoing to get a result that is a string array like this and the path is /organizations and then we have the organizations log/ project and then the API log/ts.
7:28:297 hours, 28 minutes, 29 secondsNow the headers here is going to be the cookie and we have the cookie keys access token is going to be equals to the token and we go on to return the
7:28:387 hours, 28 minutes, 38 secondsactual data. Now in the catch block we're going to redirect to /organizations
7:28:447 hours, 28 minutes, 44 secondsand then the organizations log for / project. Okay. So this is working in terms of maybe retrieving the tables
7:28:537 hours, 28 minutes, 53 secondsfrom API. Now the next is to retrieve the project DB schema. So we have this async function retrieve project DB
7:29:017 hours, 29 minutes, 1 secondschema. It takes in the organization log and the project's log. They are both of type strings and this is just going to return a promise that results to a
7:29:097 hours, 29 minutes, 9 secondsstring. Now we're going to get the token and we're going to await retrieve the token from the cookie and in the try
7:29:177 hours, 29 minutes, 17 secondsblock we are going to have the data by awaiting the API client get we're going to get project which is going to be of
7:29:267 hours, 29 minutes, 26 secondstype project and we're going to send the request to /orgs the organization log/ project and
7:29:347 hours, 29 minutes, 34 secondsthe project log and for the headers we are going to have the cookie which is the cookie be keys access token is going to be equals to token.
7:29:467 hours, 29 minutes, 46 secondsNow we're going to then return the data results the database schema. Now if something goes wrong, we're just going
7:29:547 hours, 29 minutes, 54 secondsto redirect the user to /organizations and then the organizations log and / projects.
7:30:037 hours, 30 minutes, 3 secondsSo what we're going to do is to give this file a save. Oops, a save like this. And before we go into the, you know, we return for the UI, let's give
7:30:127 hours, 30 minutes, 12 secondsthis a refresh because we need to create the database page for the front end. So I'm going to close this tabs that we do have open. And I will come over here and
7:30:217 hours, 30 minutes, 21 secondsthis is the page we need to create. So right here in the app, if you click here, you can see this is going to try to redirect us to the database page
7:30:297 hours, 30 minutes, 29 secondswhich we do not have yet. So /organizations. So we come here /organizations the organization slog which is here. We
7:30:387 hours, 30 minutes, 38 secondsalso going to have the project slog. So we have organization slog and then this is project slog. So what we can do is to
7:30:477 hours, 30 minutes, 47 secondscreate this new file here like this. And this is going to be project slog like this. So it has to match and in square
7:30:567 hours, 30 minutes, 56 secondsbrackets and also no typo here. So we have the organization organizations log is going to come in here and there we
7:31:057 hours, 31 minutes, 5 secondshave database. So we need to create a new folder which is database like this and then we're going to have the
7:31:117 hours, 31 minutes, 11 secondspage.tsx. Now once we have the pagets this error here should change. We should still have this error but it should be
7:31:197 hours, 31 minutes, 19 secondslike we are not exporting or we do not have a default export as you can see over here. So we have successfully created this page and before we continue
7:31:287 hours, 31 minutes, 28 secondswe need to make sure you take a look at the templates. We have two new templates we are going to make use of by the time
7:31:367 hours, 31 minutes, 36 secondswe return. We have the table editor client which is this. As you can see here we need to install some shat C and UI component. This is the actual code.
7:31:457 hours, 31 minutes, 45 secondsThis is the full code we're going to be working with. So you can spend some time taking a look at it. is going to work with the different methods that we have
7:31:537 hours, 31 minutes, 53 secondsin our actions. Sorry. And we have the create table drawer which is as you can see these are loads of code for us to
7:32:007 hours, 32 minutestype out together. So just take a moment take a look at the templates. We are going to be working with these templates here. They both combined over 700 lines
7:32:097 hours, 32 minutes, 9 secondsof code which could take some time for us to do on camera. So please take a moment to go through them and once you come back we can then go into installing
7:32:177 hours, 32 minutes, 17 secondsthe different packages that we need and having the page laid out. Now before we continue we need to install some
7:32:247 hours, 32 minutes, 24 secondspackages and most importantly we need to fix some bugs that I did notice. So open up your terminal window and let's open
7:32:327 hours, 32 minutes, 32 secondsup a new terminal here. So we're going to CD into the apps and into the web.
7:32:387 hours, 32 minutes, 38 secondsAnd here let's pmppm DLX SH CN at latest. Let's install the checkbox component. We are going to need it. And
7:32:477 hours, 32 minutes, 47 secondsonce installation is completed, we also need to install resizable scroll area
7:32:547 hours, 32 minutes, 54 secondsand also the table component. So we have this already um installed. I had it installed. So u you should go and
7:33:017 hours, 33 minutes, 1 secondinstall this. And you also need to install the resizable the scroll area as well as the table component. So run the
7:33:097 hours, 33 minutes, 9 secondsinstallation for these files. And while the installation is ongoing, we can get started with this page content and then we are going to focus on the bug fixes.
7:33:217 hours, 33 minutes, 21 secondsSo once the installation is completed, you can close this terminal and let's start by importing the table editor client which we do not have yet. But
7:33:307 hours, 33 minutes, 30 secondsthis is going to come in from the features. We have the table editor feature and there we're going to have the table editor client component. And
7:33:397 hours, 33 minutes, 39 secondswe also want to import the retrieve tables from API function and also the retrieve project DB schema. Now all
7:33:497 hours, 33 minutes, 49 secondsthese are going to come from the features the table editor and there we have the table editor helpers dos server file.
7:33:587 hours, 33 minutes, 58 secondsLet's also export default async function. We call this database page.
7:34:037 hours, 34 minutes, 3 secondsIt's going to take in the params and this params is going to be of type this object a promise that is going to
7:34:107 hours, 34 minutes, 10 secondsresolve to the slog as well as the project log which are both of type string. So here let's try to access the
7:34:187 hours, 34 minutes, 18 secondsparams. So the slug and the promise by awaiting params and we're going to make our call. So we're going to get our
7:34:257 hours, 34 minutes, 25 secondstables and also our database schema which is going to await promise.all and we're going to first retrieve the tables
7:34:337 hours, 34 minutes, 33 secondsfrom API where we pass in the slog and the project slog and then we're also going to retrieve the project db schema.
7:34:417 hours, 34 minutes, 41 secondsNow this is going to need the slog as well as the project slog. And then finally we can return jsx.
7:34:497 hours, 34 minutes, 49 secondsWe're going to return this div which has all these class names. So it's also going to display a flex have this um
7:34:567 hours, 34 minutes, 56 secondsheight 100 svhus 3mm 3 ram. And after these classes we are then going to
7:35:037 hours, 35 minutes, 3 secondsreturn or have the table editor client which we're importing here which is then going to give us an error for now. So we
7:35:117 hours, 35 minutes, 11 secondshave the organization slog, we have the project slog and we have our database schema. So we're passing all these as properties to this component and the
7:35:207 hours, 35 minutes, 20 secondsinitial um tables is going to be equals to tables and then we can close this component and also close the div.
7:35:297 hours, 35 minutes, 29 secondsNow before we continue um laying out the front end, I just want to explicitly say that we have this over here. If you come
7:35:387 hours, 35 minutes, 38 secondsover to the templates, actually it's three templates, not two. I did add one. I added the add column dialogue. So this
7:35:467 hours, 35 minutes, 46 secondsis a new template we are going to be making use of. As you can see, this is one error we have because we need to add the add column to the intent. We're going to be adding that in a moment.
7:35:557 hours, 35 minutes, 55 secondsThen we have the create um table drawer.
7:35:587 hours, 35 minutes, 58 secondsI did make some changes here and also to the table editor client as well here. So um let's start by coming over to the
7:36:077 hours, 36 minutes, 7 secondsAPI. So this is where we're going to be fixing a bug and we want to come into the table editor and into the table
7:36:147 hours, 36 minutes, 14 secondseditor service. So this is where we have um a string uh not a string an error starting from here where we have the not
7:36:237 hours, 36 minutes, 23 secondsthe create table where we have the get table structure. So let me search for it the get table structure. So this over
7:36:327 hours, 36 minutes, 32 secondshere what we're going to do is before we have our return over here just here where we return the table name and the columns we are going to first of all
7:36:417 hours, 36 minutes, 41 secondscheck the columns length. So I'm just going to bring in the piece of code.
7:36:457 hours, 36 minutes, 45 secondsWe're just going to check if the columns name is equals to zero. Then we're going to throw this new not found exception that's going to say the table not found.
7:36:557 hours, 36 minutes, 55 secondsSo this is one fix that we're going to do over here. Now the next is we're going to have this is missing table error this private method we're going to
7:37:047 hours, 37 minutes, 4 secondsmake use of it. So let me also bring this in and we can have it just before the get table rows. So somewhere here
7:37:127 hours, 37 minutes, 12 secondslet's go and just bring this in here like this. Now we have this error. I'm just going to get rid of it as this assertion is not necessary and the error
7:37:227 hours, 37 minutes, 22 secondsis gone. So this is the private missing table. Please just take a moment to type it out. And then we're going to make use
7:37:297 hours, 37 minutes, 29 secondsof this right in the get table rows here where we have this promise call. I'm just going to cut this and we're going
7:37:377 hours, 37 minutes, 37 secondsto wrap this in a try catch. So here let's have the try catch block like this. We do not need the error here. So I'm just going to get rid of the error.
7:37:457 hours, 37 minutes, 45 secondsAnd this is what we're going to have right into the try block here. So in the try block you see we are fetching this
7:37:527 hours, 37 minutes, 52 secondsdata and then we're going to return this. So you want to move this you want to cut this and move this right inside
7:38:007 hours, 38 minuteshere in the try block like this. Now for error in case something goes wrong that's where we're going to make use of this private method. We're going to
7:38:097 hours, 38 minutes, 9 secondscheck if it's a missing table error. We want to then pass the error. So here we're going to make use of this now. So
7:38:177 hours, 38 minutes, 17 secondshere in the catch block we want to then paste this in here. So actually we need the error. So let me bring this in here like this.
7:38:277 hours, 38 minutes, 27 secondsOkay. So now this fixes the fix or these are the fixes that we need to make or we needed to make in the save in the
7:38:347 hours, 38 minutes, 34 secondsservice. We can save this and now we're going to make a sub to change in the constants. So let's come over to our
7:38:437 hours, 38 minutes, 43 secondspackage and over here in the packages in the constants in the source in the index.ts over here we need to add a new action
7:38:517 hours, 38 minutes, 51 secondsthat means we're going to be updating our server action. This is going to help us to add a column. So let's say add
7:38:577 hours, 38 minutes, 57 secondscolumn just like this is going to be add column. And I have a typo which I'll fix
7:39:047 hours, 39 minutes, 4 secondsin a moment. Just like this. So now we have this change done here. You can go on to save this file. And the next bug
7:39:137 hours, 39 minutes, 13 secondswe're going to fix is the action. This actual server action. So we know the server action is right in here in the
7:39:217 hours, 39 minutes, 21 secondsweb. And here we have the source and we have the features the table editor the action.ts file. Now we're going to get
7:39:307 hours, 39 minutes, 30 secondsrid of something which is this revalidate database. We don't need this function.
7:39:367 hours, 39 minutes, 36 secondsI actually had issues with it during testing. So I'm going to get rid of this. We do not need this. And as well as this, we do not need this. So this is
7:39:447 hours, 39 minutes, 44 secondsthe major change we need to do here. But now we're going to add another case for the delete functionality. So that is
7:39:527 hours, 39 minutes, 52 secondsjust maybe we can add that somewhere here. Just after this case, we can register a new case. Sorry, which is for
7:39:597 hours, 39 minutes, 59 secondsthe add column. So here we're going to have the new case here. The editor table intent dot add column. And I do not know
7:40:077 hours, 40 minutes, 7 secondswhy we do not have Yeah. So we haven't added the intent yet. We're going to add that in a moment. So to add a column
7:40:137 hours, 40 minutes, 13 secondsthis we get the table name, the name, the type, and the default value. And then we send the request to our API
7:40:207 hours, 40 minutes, 20 secondsendpoint to add a column. And then let's make sure we have the add column part of our intent. So I'm just going to save
7:40:277 hours, 40 minutes, 27 secondsthis. Yeah. So we're having this error which is actually understandable. And that's because in the case here, we
7:40:357 hours, 40 minutes, 35 secondshaven't updated the client. So the server schema. So let's come over to the server schema here. And we also need to
7:40:427 hours, 40 minutes, 42 secondsupdate the client schema. So I'm going to right click here and also open up the client schema. Now we also need to add
7:40:497 hours, 40 minutes, 49 secondsthe case which is like the the add column schema cases. So what's going to happen is somewhere here. I'm just going
7:40:577 hours, 40 minutes, 57 secondsto bring the add column schema case and have it here like this. This is going to help us to add a new um schema. And then
7:41:067 hours, 41 minutes, 6 secondsonce we update the server action, this error we have over here is going to go.
7:41:107 hours, 41 minutes, 10 secondsSo here in the server schema um sorry once we update the server schema so we need to also add the we also need to add
7:41:187 hours, 41 minutes, 18 secondsthe add column intent here. So let's add it here. And now we have this added here. We need to import the add column
7:41:267 hours, 41 minutes, 26 secondsschema which is going to come in from the client. And once we give this a save, you can see the error in the action is now gone. Okay. So these are
7:41:347 hours, 41 minutes, 34 secondsthe sub two changes we needed to make just for our application to work as expected. Now we're going to take a
7:41:427 hours, 41 minutes, 42 secondsmoment and once we return we are going to test things out because we already have the templates. So I'm just going to close orders. We have this template. So,
7:41:517 hours, 41 minutes, 51 secondswe're going to make sure we register these templates where we need them, which is in the features. And then we're going to test out our application. All
7:41:597 hours, 41 minutes, 59 secondsright. So, let's get into it. We need to create this file. So, three files actually. So, the table editor client or
7:42:077 hours, 42 minutes, 7 secondscan we copy this straight up from the template? Yeah. So, let's copy this.
7:42:117 hours, 42 minutes, 11 secondsJust going to copy this. And we're going to paste it right in here. And let's do the same for the add column dialogue. We
7:42:207 hours, 42 minutes, 20 secondsneed it. We're going to see this when we needed to add a column. So, I'm going to paste this in here. And we need this, which is the table editor client.
7:42:317 hours, 42 minutes, 31 secondsUh, actually this the create table drawer. So, let's copy this and let's drop this in here. And the reason why I
7:42:387 hours, 42 minutes, 38 secondsprovide this templates is because if we take a look at this, we can see this table create table drawer is, you know,
7:42:467 hours, 42 minutes, 46 secondsover 500 lines of code. And if we also double check like the add column dialogue, we see this is just about 200 lines of code. And we check this out.
7:42:577 hours, 42 minutes, 57 secondsYou see we are, you know, at 800 lines of code. So this is so many code for us to type out on video. It's going to take some time. And that's why I provide the
7:43:057 hours, 43 minutes, 5 secondstemplate. As much as we understand what the code is doing in terms of our action, our server action and our API clients, all this here is just the UI
7:43:147 hours, 43 minutes, 14 secondslayout. Okay. So let's come over here and let's just get rid of this and bring them back in so that the error fixes
7:43:217 hours, 43 minutes, 21 secondsitself and the error is gone. So now let's try this out in the page also. We can just get rid of this and bring it back in and we no longer have the error.
7:43:307 hours, 43 minutes, 30 secondsSo I'm going to expand this which is cool. Now we see we have our table here.
7:43:367 hours, 43 minutes, 36 secondsIf we collapse this, this is actually collapsible. We saw earlier that this is pretty much responsive. So it works well
7:43:437 hours, 43 minutes, 43 secondson both mobile and desktop devices. This is it on mobile on 360px.
7:43:497 hours, 43 minutes, 49 secondsIf you add a new table, we see the form here. So I want us to see this on the table editor. So I'm going to on the desktop screen. So this is it. You click on add table. Let's add our first table.
7:44:007 hours, 44 minutesUsers in terms of naming conversion. You want to go with users. Maybe if we say users table is going to break because of this space that we have over here. If we
7:44:087 hours, 44 minutes, 8 secondstry it out create table, we're going to get an error for the invalid table name.
7:44:137 hours, 44 minutes, 13 secondsSo we should understand that we just need to pass in table users like this.
7:44:187 hours, 44 minutes, 18 secondsWe see the error. So users and the ID is a big int is the primary key is not null. So you want to make sure this is unchecked and there's no foreign table.
7:44:287 hours, 44 minutes, 28 secondsThe created at also is of type time stamp. The default is now function. And we can add a new table. So let's say a
7:44:367 hours, 44 minutes, 36 secondsuser can have an email is of type text and let's say this is nullable just to mix things up and let's have a name um
7:44:447 hours, 44 minutes, 44 secondsactually I'll say the email is not null so that I can say the name could be null and this is of type text we see the default is null so you want to have a
7:44:527 hours, 44 minutes, 52 secondsdefault value you can provide the default value here you also have a foreign key but we do not have any
7:44:597 hours, 44 minutes, 59 secondsforeign key definition here so um it's going to be null if you click on add table you can see you can remove this and it works fine as expected. Now let's
7:45:087 hours, 45 minutes, 8 secondstry the actual create and once you hit on create table your table is creating and once the table is done we should see
7:45:167 hours, 45 minutes, 16 secondsover here we are going to have a new table. So now you see we have a new users table and we have all the
7:45:237 hours, 45 minutes, 23 secondsdifferent fields that we specify to the different columns over here. So even if you want to add a new one, let's say a user is going to add have an age and
7:45:327 hours, 45 minutes, 32 secondslet's say the age is going to be an integer here and we add the column. So default, let's say default, every user is going to be 10 years old. It doesn't
7:45:407 hours, 45 minutes, 40 secondsmake sense, but let's just say maybe 10 years old. We add a column just to test out the default value. We are going to
7:45:477 hours, 45 minutes, 47 secondssee over here that then we're going to have this is going to refresh and we're going to see this over here now. So we
7:45:547 hours, 45 minutes, 54 secondssee the age is an integer and whenever a record because we do not have a record um created yet in the database in the age table we are going to have it here.
7:46:057 hours, 46 minutes, 5 secondsSo let's also have a new table. This is a bug because we see users. So let's just quick give this a quick refresh refresh. I'm going to trace why we have
7:46:137 hours, 46 minutes, 13 secondsthe error and we're going to fix it. But let's click on new table. And now we see this pops up. And let's say we need a
7:46:197 hours, 46 minutes, 19 secondsuser to have an um let's say member a membership something like this. And over
7:46:267 hours, 46 minutes, 26 secondshere we're going to have the user. So let's say we want to have a foreign key here or user. And now you're going to
7:46:337 hours, 46 minutes, 33 secondssee the type here is going to be um I'm not yeah big int to match with the type.
7:46:397 hours, 46 minutes, 39 secondsSo here we have big int and we're going to say is not nullable and the foreign key table over here is going to see now we have users here. We can select users
7:46:477 hours, 46 minutes, 47 secondsand this is going to be the ID in the users table. So now we can give this uh create. It's going to create table and you're going to see the foreign key
7:46:567 hours, 46 minutes, 56 secondsrelationship now is going to be pointing over to the users table. So now it's been created. We are here in the membership and you can see the ID and
7:47:057 hours, 47 minutes, 5 secondsyou can see the user has this relationship which means this has a foreign key relationship to the users table and this is working as expected.
7:47:137 hours, 47 minutes, 13 secondsSo we can select the table and we're going to see the different fields and inspect the table. So this is working as expected. Now we're going to work on the
7:47:217 hours, 47 minutes, 21 secondsnext phase of our application which is to autogenerate endpoint for each table. Okay everyone,
Chapter 9: 8-auto-generated-rest-api
7:47:297 hours, 47 minutes, 29 secondsso we have been able to create this table. So we had this UI here where we can create our users table, our
7:47:387 hours, 47 minutes, 38 secondsmembership table and have the data displayed here. So that all works as expected and we can also go on to add
7:47:467 hours, 47 minutes, 46 secondsdifferent columns. So this works as expected. Now we're going to be working on the API, the autogenerated rest API
7:47:547 hours, 47 minutes, 54 secondsand the ability to create a table and in the table editor page over here. We are going to have an API tab that is going
7:48:017 hours, 48 minutes, 1 secondto be fully documented and ready to call. So we're going to have four endpoints. The get, the post, the patch, and the delete endpoints. And you're not
7:48:097 hours, 48 minutes, 9 secondsgoing to write any single line of backend code for them. They are just going to exist automatically. So every project in super vote, every project
7:48:177 hours, 48 minutes, 17 secondsthat you're going to create is going to get a dynamic rest API which is going to be automatically generated based on the schema. And it's also going to um
7:48:277 hours, 48 minutes, 27 secondssupport superbase styles like pagenation, ordering, filtering and things like that. And you're going to need to authenticate to this in this via the project anonymous key, the anon key.
7:48:387 hours, 48 minutes, 38 secondsand the service real key and then you're going to see everything on the dashboard because it's going to have the API dogs that's going to show every endpoint for
7:48:477 hours, 48 minutes, 47 secondsevery table. So, I'm super hyped for this. Let's see how we can get started.
7:48:517 hours, 48 minutes, 51 secondsI'm going to collapse this. As always, we're going to start up with the you can also see this back which takes you back to here. We are going to start up with
7:48:597 hours, 48 minutes, 59 secondsthe back end of things, but this time around we're going to start by updating our constants. So let's come over here
7:49:067 hours, 49 minutes, 6 secondsand into the packages. So I will call that the API and the web. So we have the packages and in packages we have the
7:49:127 hours, 49 minutes, 12 secondsconstants, we have the source and we have the index.ts. So here we're going to export con. We're going to start with
7:49:197 hours, 49 minutes, 19 secondsthe reserved query params. So this reserved query params is going to be a new set like this where we're going to
7:49:277 hours, 49 minutes, 27 secondshave the select the order. We're also going to have limit and offset. And after this, we're also going to have the
7:49:347 hours, 49 minutes, 34 secondsdifferent filter operations. So the filter operations are things like the equals. We're going to see them in a
7:49:407 hours, 49 minutes, 40 secondsmoment. And then um we're going to have also the not equals like this. We're
7:49:477 hours, 49 minutes, 47 secondsalso going to have the greater than, the greater than equals, the less than, the less than or equals. We also have the like and I like which is going to be of type I like and also is as like this.
7:49:597 hours, 49 minutes, 59 secondsand we're going to say as constant just like this and we're also going to export the type which is going to be the filter
7:50:067 hours, 50 minutes, 6 secondsoperation which is going to be a key of a type of the filter operations. All right, so that's one thing we needed to
7:50:147 hours, 50 minutes, 14 secondsdo and another thing is the project where do we have the project definition that is in our types. So let's exit out of here and we're going to come over to
7:50:227 hours, 50 minutes, 22 secondsthe types and in the source the index.ts. So where do we have the type for the project? So this maybe somewhere
7:50:307 hours, 50 minutes, 30 secondshere we have the anon key but we are missing the service row key. So let's make sure we add the service row key here and the service row key is going to be of type string like this.
7:50:437 hours, 50 minutes, 43 secondsOkay. So we have the service row key.
7:50:467 hours, 50 minutes, 46 secondsThen we also need a project API endpoint. So somewhere over here we're going to add new types for the project
7:50:537 hours, 50 minutes, 53 secondsAPI endpoint. This is going to be the API docs. So we can just leave this comment here. This comment is going to
7:50:597 hours, 50 minutes, 59 secondssay API docs. So let's have the type over here. We are going to be exporting this interface, the project API
7:51:077 hours, 51 minutes, 7 secondsendpoint. So we're going to have different methods and the method we are supporting the get the post the patch and the delete methods. We're also going
7:51:167 hours, 51 minutes, 16 secondsto have the path which is a string. The description is going to be a string and we're also going to show you an example for the API docs. Then we have the
7:51:257 hours, 51 minutes, 25 secondsproject API docs itself. Now this project API docs is going to have the project URL. It's also going to have the
7:51:337 hours, 51 minutes, 33 secondsanonymous key, the anon key. We also need the service role key which is of type string. We need the different tables and the tables is going to be an
7:51:427 hours, 51 minutes, 42 secondsobject. This object is going to have a name of type string and the endpoint is then going to be this project API
7:51:497 hours, 51 minutes, 49 secondsendpoint type that we have over there and it's going to be a list. Now the next thing we're going to have is the project by slug response. So let's have
7:51:587 hours, 51 minutes, 58 secondsthis. We're going to export this interface. We call this project by slo response is going to be used by drizzle to join shape that we're going to get.
7:52:097 hours, 52 minutes, 9 secondsSo it's going to have the project the organization and the organization member. So as I was saying drizzle is going to join the shape returned by the
7:52:167 hours, 52 minutes, 16 secondsget endpoint. So you're going to have something like /organization/log/ project as well as a project log. So now
7:52:237 hours, 52 minutes, 23 secondswe can go on and save the contents of this file. The next thing we're going to be working on is the project key guard because you want to make sure that we
7:52:317 hours, 52 minutes, 31 secondsgot the key. You need to be authenticated before you can actually make response to a specific table. So here we're going to then come over to
7:52:407 hours, 52 minutes, 40 secondsthe back end. Now the focus is going to be on the API. And in the source folder just as we had folders for every feature we are going to have a new folder here.
7:52:497 hours, 52 minutes, 49 secondsAnd this folder is going to be the project API or project key like this.
7:52:577 hours, 52 minutes, 57 secondsAnd actually we call it project API. So project API like this. And inside the project API we're going to have a new
7:53:047 hours, 53 minutes, 4 secondsfile. And this file is going to be the project key guard. So project project key
7:53:127 hours, 53 minutes, 12 secondsdotguard.ts file. Now this is going to be a guard as we see here based off the name. So let's have the implementation. We are going to
7:53:217 hours, 53 minutes, 21 secondsbe importing can activate and also the execution context. We have created gas before the idea remains the same. We
7:53:287 hours, 53 minutes, 28 secondsalso bring in injectable and also unauthorized exception. All these from nextjs common. We also need to bring in the JWT
7:53:377 hours, 53 minutes, 37 secondsservice which is going to come from nest.js/jwt.
7:53:417 hours, 53 minutes, 41 secondsWe need a configuration service. The config service is going to come from atjs4/config.
7:53:487 hours, 53 minutes, 48 secondsWe also need the request. The request is going to come in from [snorts] express.
7:53:527 hours, 53 minutes, 52 secondsSo we're importing request from express and the project key rows which is going to come from super vault constant. So
7:53:597 hours, 53 minutes, 59 secondsremember this that we just created. Now now let's export an interface which will call the project key payload. Now this
7:54:067 hours, 54 minutes, 6 secondsproject key payload is going to always have the project ID which is a string.
7:54:117 hours, 54 minutes, 11 secondsAnd now the role itself is going to be the type of the project key roles do anonon key or it could be the type of
7:54:197 hours, 54 minutes, 19 secondsthe project key roles do the service ro key. We're going to have the actual guard. So the guard is going to be marked with injectable decorator. We
7:54:287 hours, 54 minutes, 28 secondscall the guard the project key guard which we need to export. It's a class and it's going to implement can activate. Now we need to have in the
7:54:377 hours, 54 minutes, 37 secondsconstructor the JWT service. So we're going to have private JWT service is going to be of type JWT service. We also need to have the configuration service.
7:54:477 hours, 54 minutes, 47 secondsSo the config service is going to be of type config service. Now we know that we must implement the can activate method which takes in the context of type
7:54:567 hours, 54 minutes, 56 secondsexecution context and it's going to return a boolean to have access to the request. We're going to say con request is going to be the context do switch to
7:55:047 hours, 55 minutes, 4 secondsHTTP.get request and we pass the request here.
7:55:087 hours, 55 minutes, 8 secondsNow to get the off headers we going to read it from the request. So we say con off header is going to be request headers do authorization.
7:55:177 hours, 55 minutes, 17 secondsNow this is the off header string. We need to check if it doesn't start with beer. That mean this is an invalid or
7:55:247 hours, 55 minutes, 24 secondsnot contain the string. We're going to throw a new unauthorized exception that the API key is missing because it needs to start with beer.
7:55:337 hours, 55 minutes, 33 secondsNow if it starts with beer let's go on and split it. We're going to get the token which is going to be the o header slice seven to get seven and then we're
7:55:427 hours, 55 minutes, 42 secondsgoing to try first we have the payload which is going to call the JWT service so that we can verify this token and we're going to get the project key
7:55:517 hours, 55 minutes, 51 secondspayload as a response from this verification. Now we're going to pass in the secret configuration here which we're going to get from the config
7:55:597 hours, 55 minutes, 59 secondsservice get we get a string which is a JWT payload the project JWT secret. So
7:56:057 hours, 56 minutes, 5 secondsremember that in the env we're going to attach the project key to the request is now going to be equals to
7:56:127 hours, 56 minutes, 12 secondsthe payload and we want to return true so that we can continue. Now if for some reason we do not is not able to verify
7:56:207 hours, 56 minutes, 20 secondsthis we're going to throw this new unauthorized exception which is going to say invalid API key. Now the next thing we need to do is for us to create a
7:56:287 hours, 56 minutes, 28 secondsquery passer. I'm going to save this file and this query passa is still going to be right inside here for the project API. Now you need to create a new file
7:56:377 hours, 56 minutes, 37 secondsand call this query passa.ts like this. Now in here let's start with the import by bringing in the bad
7:56:447 hours, 56 minutes, 44 secondsrequest exception which is going to be coming in from at nestjs/ common. So we're going to be pretty much fast in this. And we're also going to be
7:56:537 hours, 56 minutes, 53 secondsbringing in the from the constants, we're going to bring in the reserved query params and also the filter operations. And we also need to bring in
7:57:027 hours, 57 minutes, 2 secondsa type which is a filter operator. They would all come from our super vote constant package.
7:57:097 hours, 57 minutes, 9 secondsWe're going to export an interface which we call the past query. So it's going to have select. Select is going to be an
7:57:167 hours, 57 minutes, 16 secondsarray of string. We're also going to have filter which is going to be the filter clause list here. And then we're
7:57:237 hours, 57 minutes, 23 secondsgoing to go and order this by the order clause or type. No, no worries. We're going to have these types. The limit is going to be of number and the offset is
7:57:327 hours, 57 minutes, 32 secondsgoing to be of number. Let's have the interface for the filter clause. The filter clause is going to have the column, the operator and the value of
7:57:407 hours, 57 minutes, 40 secondswhich you want to apply this filter. Now the order clause is going to be the same in terms of the order clause is going to have the column which is a string and
7:57:497 hours, 57 minutes, 49 secondsthe direction because you want to order either by ascending or by descending. So here we have the direction which is ASC
7:57:557 hours, 57 minutes, 55 secondsor DC. Now we're going to also have this assert safe identifier which is going to help us to prevent SQL injection. So the
7:58:047 hours, 58 minutes, 4 secondsname is a string, the label is a string and it returns void. So we have this reject over here based on the name. It wants to verify that the name is safe
7:58:127 hours, 58 minutes, 12 secondsand secure. And if for some reason this name doesn't match this reject here, we're going to throw a bad request exception that says invalid. I want to
7:58:207 hours, 58 minutes, 20 secondsattach the label as well as the name to the response.
7:58:257 hours, 58 minutes, 25 secondsThen want to format the SQL value by taking the operator and the row value and return the formatted string. So
7:58:347 hours, 58 minutes, 34 secondsfirst we're going to get the value. So how do we get the value? We're going to get it from the raw value over here and we're going to replace any semicolon
7:58:427 hours, 58 minutes, 42 secondshere with an empty space. So if the operator is equals to is then we're going to return the value dot to
7:58:507 hours, 58 minutes, 50 secondsuppercase if it equals to null we are going to return null. Otherwise we would say not null. And we're going to do the
7:58:587 hours, 58 minutes, 58 secondssame for like. So if the operator is equals to like or the operator is equals to I like like this
7:59:067 hours, 59 minutes, 6 secondsthen we're going to have this return over here where we're going to replace the value with this string just like this. Now let's also do the same by
7:59:157 hours, 59 minutes, 15 secondsconverting the value to lower case and that if it is true and then we have the value dot to lower case if it's equals
7:59:237 hours, 59 minutes, 23 secondsto false. So in case of boolean we're just going to return the value to lower case like this.
7:59:317 hours, 59 minutes, 31 secondsAnd finally we're going to return the clean value just here.
7:59:367 hours, 59 minutes, 36 secondsAnd then after this we are then going to return the value.replace but we're going to replace this with the quotes just
7:59:457 hours, 59 minutes, 45 secondslike this. Now we're going to export a function now which is going to be the pass query params and this is going to
7:59:527 hours, 59 minutes, 52 secondstake in the actual params record. The key is a string, the value is a string and it's going to return the past query.
7:59:597 hours, 59 minutes, 59 secondsNow we're going to have the filter here which is going to be of type the filter clause and by default it's going to be an empty array and same for the select.
8:00:088 hours, 8 secondsLet select is going to be of type string array is going to by default empty. The same for the order by is going to be of type order clause or null and we start
8:00:178 hours, 17 secondsup with null. The limit is 100 and the offset is zero. So we're going to map through here through the object entries.
8:00:248 hours, 24 secondsSo we say cons the key and the value of object entries where we pass in the params and for each we want to check if
8:00:318 hours, 31 secondsthe reserved key query params if it has this specific key over here we're going to switch. So let's check what case. Now
8:00:408 hours, 40 secondsif the case of the key is equals to select then select is going to be equals to the actual value and we can call
8:00:498 hours, 49 secondssplit by the comma here. I want to map each value here and call the C dot stream I want to filter through here.
8:00:578 hours, 57 secondsWe're also going to run select for each over here where we have the column and want to go and assert the save identifier where we have the column and
8:01:058 hours, 1 minute, 5 secondswe want to select the column like this and we're going to break. Now we're going to do the same for order other
8:01:118 hours, 1 minute, 11 secondsorder other order other order other
8:01:168 hours, 1 minute, 16 secondsSo then we can split it with a question mark with a dot like this. Then we're going to pass this our asset assert safe
8:01:248 hours, 1 minute, 24 secondsidentifier where we pass in the column and also the order column.
8:01:298 hours, 1 minute, 29 secondsWe're going to go on and order this by where we have the object the column is going to be equals to column and then the direction we're first going to be um
8:01:388 hours, 1 minute, 38 secondshave this check over here we're going to say the direction uppercase if it's equals to DC then we're going to offer
8:01:458 hours, 1 minute, 45 secondsDS otherwise we return ascending like this then we can go on to have our break and have the next case which is the
8:01:538 hours, 1 minute, 53 secondslimit. So the case where it's a limit you want to limit by we're going to say limit is going to be equals to math
8:02:008 hours, 2 minutesdomin we're going to pass and pass in the value a value of 10 otherwise we go with 100 and 1,000 we're going to break
8:02:098 hours, 2 minutes, 9 secondsand we also have to check if the case is offset and if this case is offset then we're going to say offset is going to be
8:02:168 hours, 2 minutes, 16 secondsmath domax we pass in the value round of 10 and 0 comma 0 like this and then we
8:02:248 hours, 2 minutes, 24 secondsbreak and continue. The reason why we continue is because we still want to have the asset save identifier here where we pass in the key and the filter column.
8:02:358 hours, 2 minutes, 35 secondsLet's get the dot index. The dot index is going to be equals to the value dot the index of dot and want to check if the dot index is equals to minus one.
8:02:458 hours, 2 minutes, 45 secondsThen we want to go on and continue and after which we can have the operator which is going to be the value slice from zero up to the point of the dot
8:02:538 hours, 2 minutes, 53 secondsindex as a filter operation and then we are going to get the filter value. The filter value is going to be the value
8:03:008 hours, 3 minutesslice based on the dot index + one. Now we can check if there is no dot operator in the filter operations. We want to go
8:03:098 hours, 3 minutes, 9 secondson and continue. Otherwise we're going to push into filter. Remember it's an it's an array. So we say filters dopush.
8:03:168 hours, 3 minutes, 16 secondsWe're going to push this object with the column which is the key and the operator is going to be the filter operators to
8:03:228 hours, 3 minutes, 22 secondsget the actual operator and the value is going to be the filter value over here.
8:03:298 hours, 3 minutes, 29 secondsAnd then we can go on to return the select. We can also return filters. We can also return order by the limit and the offset.
8:03:398 hours, 3 minutes, 39 secondsWe're not done yet. We also have this function which is going to help us to build the wear clause and this is going to take in the actual filters which is
8:03:478 hours, 3 minutes, 47 secondsthe filter clause list and return the string. We can always do this check before we continue based on the filters length. If it's equals to zero we're
8:03:568 hours, 3 minutes, 56 secondsgoing to return an empty string and the different clauses. So where clauses is going to be the filters map we're going to destructure the column the operator
8:04:048 hours, 4 minutes, 4 secondsand the value and we have the object the function definition here. We get the SQL value by running the format SQL value
8:04:138 hours, 4 minutes, 13 secondswhere we can pass in the operator and the value. So we can check if the value is is then want to return the column is
8:04:218 hours, 4 minutes, 21 secondsand then the SQL value like this. And if the operator is equals to like or I like
8:04:298 hours, 4 minutes, 29 secondslike this, we're also going to have a return. And the return here is going to be returning the string here with the
8:04:368 hours, 4 minutes, 36 secondscolumn, the operator, and the SQL value.
8:04:428 hours, 4 minutes, 42 secondsIf it's none of this, we are going to return just the column, the operator, and the SQL value. Still just like this.
8:04:508 hours, 4 minutes, 50 secondsSo these are the clauses. Now we're going to be returning where and where what the clauses do. We want to join it
8:04:578 hours, 4 minutes, 57 secondswith the and operator like this. Now this is what we need to get started. You can go on and save the content of this file and we no longer have any errors
8:05:068 hours, 5 minutes, 6 secondsand we are good to go. Now I'm just going to quit the dev server so I no longer see this error that could be a little bit confusing or distracting. Now
8:05:168 hours, 5 minutes, 16 secondswe're going to focus on creating the project API service. We're going to have the project API service. So let's close
8:05:248 hours, 5 minutes, 24 secondsall these tabs that we do have open. And right here in the project API, now we're going to have the service. So we're going to say the project API do
8:05:338 hours, 5 minutes, 33 secondsservice.ts file. Now, as we know the service is where we have our business logic. So let's import oops, let's go on and
8:05:428 hours, 5 minutes, 42 secondsimport the bad request exception. We're also going to import the forbidden exception injectable and also we're
8:05:518 hours, 5 minutes, 51 secondsgoing to bring in the not found exception. All these both coming from nest jet for/ common. We also need to
8:05:588 hours, 5 minutes, 58 secondsbring in equals from drizzle o and we need to bring in the drizzle service.
8:06:048 hours, 6 minutes, 4 secondsThe drizzle service is going to come in from our database. And there we have the drizzle service just like this. And
8:06:118 hours, 6 minutes, 11 secondsafter the traer service, we also need to go on and import the project. Um the project is going to come in one level up
8:06:188 hours, 6 minutes, 18 secondsthe DB the schema. We also need to bring in a pass query params and we also need to build the wear clause which will come
8:06:258 hours, 6 minutes, 25 secondsfrom our query passer. Now we'll mark it as injectable as always and we're going to have the class definition. We export
8:06:338 hours, 6 minutes, 33 secondsthe class project API service and in the constructor we're going to have the Drizzle being initialized and this is going to be of type drizzle service.
8:06:448 hours, 6 minutes, 44 secondsAgain we're going to have the private start save identifier. Now we are repeating this too much I think in two places already. So this is something you
8:06:528 hours, 6 minutes, 52 secondscan move in one utility file that is used across the back end. Okay. So this
8:06:598 hours, 6 minutes, 59 secondsis the assert safe identifier and if this falls we're going to throw the bad request exception. As always this just
8:07:078 hours, 7 minutes, 7 secondshelps us to make sure that we are protecting or guarding against SQL injection attacks.
8:07:148 hours, 7 minutes, 14 secondsWe're going to have this format literal function helper function which is going to have the value of type unknown and
8:07:218 hours, 7 minutes, 21 secondsreturns a string. We check if the value is equals to null or if the value is equals to undefined. we are going to
8:07:288 hours, 7 minutes, 28 secondsreturn null. We're also going to check if the type of the value is equals to boolean. Let's return the value if it is
8:07:368 hours, 7 minutes, 36 secondstrue. Otherwise, we're going to return false.
8:07:408 hours, 7 minutes, 40 secondsAnd then we're also going to check if the type of the value is equals to a number. Let's return a string and then
8:07:488 hours, 7 minutes, 48 secondshave the value. So, we're casting it to a string. And then we can return the string value dot replace. We're going to
8:07:568 hours, 7 minutes, 56 secondsreplace the quotes with an empty string like this. Now, we want to have this resolve project schema function which is
8:08:038 hours, 8 minutes, 3 secondstaking the project ID and the project log and it returns a promise that results to a string. This is just going to help us to validate the URL log that
8:08:128 hours, 8 minutes, 12 secondsmatches the the JWT payload ID and return the database schema. That's why over here we're going to make a call to
8:08:208 hours, 8 minutes, 20 secondsdrizzle. DB so that we can select the DB schema and we call the we have the project schema and where this log is the project.log.
8:08:328 hours, 8 minutes, 32 secondsSo from the projects table that's where we're selecting the DB schema that matches the project schema and we have the wear clause where equals the project
8:08:408 hours, 8 minutes, 40 secondsid matches the project ID that this resolve project schema function will take. we have limiting one and if for
8:08:478 hours, 8 minutes, 47 secondssome reason we do not find the project then we're going to throw the not found exception that the project not found and we're also going to check if the
8:08:568 hours, 8 minutes, 56 secondsprojects slog is not equals to the project log we are also going to throw a new forbidding exception and this forbidding exception is going to say the
8:09:048 hours, 9 minutes, 4 secondsAPI key does not match this project URL and then we can go on to return the
8:09:128 hours, 9 minutes, 12 secondsproject DB schema Now let's have this function which is going to help us to get the primary key
8:09:198 hours, 9 minutes, 19 secondscolumn. This is a private async function and here we're going to write some SQL.
8:09:258 hours, 9 minutes, 25 secondsSo we're going to take in the schema of type string as well as the table name of type string and the promise that is going to resolve to a string. That's what this function is going to return.
8:09:368 hours, 9 minutes, 36 secondsSo the result is going to be by having the db the drizzle db.execute execute which is going to return the column name
8:09:448 hours, 9 minutes, 44 secondsof type string object and here we want to have the function where we're going to select the KCU dot the column name
8:09:518 hours, 9 minutes, 51 secondsand this is going to be coming in from the information schema table constraint
8:09:588 hours, 9 minutes, 58 secondsand then the TC here like this now we have the join information schema key
8:10:048 hours, 10 minutes, 4 secondscolumn usage and the KCU and this is going to be joined on the TCU the constraint name which is equals to the
8:10:128 hours, 10 minutes, 12 secondsKCU do the constraint name like this and we also want to have the TC do the
8:10:198 hours, 10 minutes, 19 secondstable schema is equals to the TCU the table schema and the wear clause is where the TC do the constraint type is
8:10:288 hours, 10 minutes, 28 secondsequals to the case is equals to primary key sorry and we also have the TC dot the table schema is equals to the schema
8:10:358 hours, 10 minutes, 35 secondsthat this function will receive and same for the table name so where the TC the table name is equals to the actual table
8:10:428 hours, 10 minutes, 42 secondsname and then we also want to go on and order this by the case of do the original position in ascending order and
8:10:508 hours, 10 minutes, 50 secondswant to limit this by one. Now we're going to check from the result the primary key is equals to the result dot
8:10:588 hours, 10 minutes, 58 secondsrows do the column name and if we are not able to get the primary key column we're going to throw a new bad request
8:11:048 hours, 11 minutes, 4 secondsexception that the table with the table name doesn't have any primary key. So
8:11:128 hours, 11 minutes, 12 secondsremember the primary key identifier that we did set up not quite long. Uh if we find the primary key we are going to return the primary key.
8:11:218 hours, 11 minutes, 21 secondsNow we have this function. The get rows function is going to take in the project ID and the project log. It's also going
8:11:288 hours, 11 minutes, 28 secondsto take in the project name of type string and the raw params which is a string that is a record of key object key string and the value of string.
8:11:408 hours, 11 minutes, 40 secondsWe're going to call our assert save identifier. So we can pass in the table name which is table name and the schema
8:11:488 hours, 11 minutes, 48 secondsis then going to be retrieved from this function. So we're going to await this resolve the project schema function that we just defined. We pass in the project
8:11:568 hours, 11 minutes, 56 secondsID as well as the project slog and we want to pass the query params. So we're
8:12:038 hours, 12 minutes, 3 secondsgoing to get select filters order by the limit and the offset from the raw params that we get from here.
8:12:128 hours, 12 minutes, 12 secondsNow let's have the columns. So we'll say cons columns is going to be equals to select and we want to select length if
8:12:198 hours, 12 minutes, 19 secondsthat is equals to zero then want to select map each column and we're going to return the column string like this.
8:12:258 hours, 12 minutes, 25 secondswe want to join into the comma otherwise we just have star which means to select all and then the wear clause is going to build the wear clause based on the
8:12:348 hours, 12 minutes, 34 secondsfilters and the order we're going to check if order by here then we're going to go on to order by order by do column
8:12:448 hours, 12 minutes, 44 secondsand the order by dot direction like this otherwise we'll just go with an empty string so here we have the SQL we say
8:12:528 hours, 12 minutes, 52 secondscon SQL is going to be equals to the select and we pass in the column and we're selecting from the schema the
8:13:008 hours, 13 minutestable name and the we clause. So we have we like this we also want to order. So we're trying to build the SQL and the
8:13:078 hours, 13 minutes, 7 secondslimit is going to be the limit and the offset is going to be the offset. Then we're going to get the result. To get
8:13:148 hours, 13 minutes, 14 secondsthe result we need to run this SQL that we built here. So we're going to await this dbexecute.
8:13:218 hours, 13 minutes, 21 secondsWe're going to get an object with key of string the value of unknown and we are passing our SQL here and then we can
8:13:298 hours, 13 minutes, 29 secondsreturn the result row. Now this is to get we also need down to insert row and insert ro is going to take in the
8:13:368 hours, 13 minutes, 36 secondsproject ID. It's going to take in the project log as well as the table name.
8:13:428 hours, 13 minutes, 42 secondsWe also have the body because we are inserting data. So we need the body and the body is going to be an object of type. The key is a string. The value is
8:13:508 hours, 13 minutes, 50 secondsof none. We always want to run our assert save identifier. So we're going to pass in the table name and the table name string like this.
8:13:598 hours, 13 minutes, 59 secondsTo get our schema, we're going to await this resolve project schema so that we can pass the project ID and the project
8:14:068 hours, 14 minutes, 6 secondslog. Now from the request body, let's get the entries. The entries is going to be equals to the object entries and we
8:14:158 hours, 14 minutes, 15 secondspass in the body like this. Now if this entries length is equals to zero that means the request body is empty. So
8:14:238 hours, 14 minutes, 23 secondswe're going to throw a new bad request exception that says the request body cannot be empty. But if we do have an if
8:14:318 hours, 14 minutes, 31 secondswe do have entries then let's go on and make sure the entries are clean. We're going to say entries do for each we're going to have the column. I want to call
8:14:398 hours, 14 minutes, 39 secondsthis assert save identifier for the column and we'll pass in the column name.
8:14:468 hours, 14 minutes, 46 secondsNow once it's cleaned we're going to have the columns which is going to be equals to the entries.m map and we're going to have each column and return the column so that we can join it with a
8:14:558 hours, 14 minutes, 55 secondscomma just like this. The values as well is going to be the entries do map. We do not need the first value so we need the second value here and this is going to
8:15:048 hours, 15 minutes, 4 secondsbe the format literal where we pass in the value and we join with the question comma like this. Now we just build the
8:15:118 hours, 15 minutes, 11 secondsSQL remember this is an insert. So we say insert into the schema and we need the table name and the columns and the
8:15:198 hours, 15 minutes, 19 secondsvalue is going to be the values and then we want to have returning star like this. So we can return everything and we
8:15:268 hours, 15 minutes, 26 secondscan close this up. Now we're going to get the result cuz the result is going to be equals to this. DB do execute. We
8:15:358 hours, 15 minutes, 35 secondspass in the record the key is a string the value is of none and we have the raw SQL here. Then we're going to return the
8:15:428 hours, 15 minutes, 42 secondsresult rows like this. Now we need the next one which is to update a row.
8:15:488 hours, 15 minutes, 48 secondsUpdating a row is going to take in the project ID which is a string also the project log which is a string and the
8:15:548 hours, 15 minutes, 54 secondstable name which is a string. We also have the role ID which is a string of the role you want to update and the body
8:16:028 hours, 16 minutes, 2 secondsbecause it's an update which is this object. The key is a string. The value is of none. As always the pattern remains the same. We're going to clean
8:16:108 hours, 16 minutes, 10 secondsthis up by calling the assert save identifier so that we can pass a table name just like this. And then we're going to build a schema. The schema is
8:16:198 hours, 16 minutes, 19 secondsgoing to be our this resolve project schema which takes in the project ID as well as the project log.
8:16:268 hours, 16 minutes, 26 secondsWe're also going to get the primary key column. The PK column is going to await this gen get primary key column so that
8:16:348 hours, 16 minutes, 34 secondswe can pass in the schema and the table name. And just as before we are going to check the entries which is going to be equals to the object do entries and we
8:16:438 hours, 16 minutes, 43 secondspass in the body. So after the entries we're going to check the length. If the length is equals to zero that means
8:16:508 hours, 16 minutes, 50 secondsyou're passing an empty request body which is going to make us throw a new b request exception that says request body
8:16:578 hours, 16 minutes, 57 secondscannot be empty. Now is the time where we're going to map through each entry.
8:17:028 hours, 17 minutes, 2 secondsSo we say for each entry where we have each column we want to assert the safe identifier for that column and pass in the column name.
8:17:138 hours, 17 minutes, 13 secondsSo let's have our set clause. So cons the set clause is going to be the entries do map because we want to update the different columns. So we get the
8:17:218 hours, 17 minutes, 21 secondscolumn we get the value and we're going to have the column like this which is then going to be equals to this do format literal and it takes in the value and we join this with a comma.
8:17:328 hours, 17 minutes, 32 secondsThen the actual SQL is going to be the um update where we have the schema table name. And now the set is going to be our
8:17:418 hours, 17 minutes, 41 secondsset clauses that we just defined. And the wear clause is going to be where the primary key is going to be equals to
8:17:488 hours, 17 minutes, 48 secondsthis format lit format literal that takes in the role id and is returning everything.
8:17:558 hours, 17 minutes, 55 secondsSo the next thing we're going to have here is the result. The result is going to be this. DB.execute execute. So once we run this SQL, it's going to execute
8:18:048 hours, 18 minutes, 4 secondsthe and we get in the object record and we have the SQL pass here. Now if there are no result rows, that means the
8:18:128 hours, 18 minutes, 12 secondsresult was not successful. We're going to throw this um not found exception which is going to say not found. But if everything is fine, let's go and return
8:18:218 hours, 18 minutes, 21 secondsthe updated row. So we're going to have the result rows the first element. Now the last one we have is a delete row.
8:18:298 hours, 18 minutes, 29 secondsThe delete role is going to take in the project ID, the string, project log which is of type string, the table name
8:18:378 hours, 18 minutes, 37 secondswhich is a string as well as the row ID which is a string.
8:18:438 hours, 18 minutes, 43 secondsAgain, we're going to clean it up by starting the save identifier which is going to take the table name as well as the table name. And we have the schema
8:18:528 hours, 18 minutes, 52 secondswhich is going to be resolved by awaiting this.resolve project schema. We pass the project ID and the project log.
8:19:028 hours, 19 minutes, 2 secondsAgain, for the primary key column, the ID remains the same. We're going to get this by awaiting this to get the primary key column. We pass in the schema and
8:19:118 hours, 19 minutes, 11 secondsthe table name. So, let's build the actual SQL. This is going to be the delete from and we pass in the schema
8:19:188 hours, 19 minutes, 18 secondstable and we're also going to have the wear clause. Now the wear clause over here is going to be where the primary
8:19:278 hours, 19 minutes, 27 secondskey column is going to be equals to this dot format literal and we pass in the role id. I want to return everything.
8:19:368 hours, 19 minutes, 36 secondsThen we can have the result. The result is going to be equals to and we get the result by awaiting this. Db and execute
8:19:458 hours, 19 minutes, 45 secondsthe actual SQL that we built here. Now let's check the result rows. um the first element if it's empty then we're
8:19:548 hours, 19 minutes, 54 secondsgoing to throw the not found exception which is going to say row not found and we're going to finally return the result
8:20:028 hours, 20 minutes, 2 secondsrows the first element and we can close this up. So this is our function as you can see it's quite a lot of code that we
8:20:108 hours, 20 minutes, 10 secondsdid right out here and we have an error here. So what is this error over here? The value. So this error that we have here that the value
8:20:188 hours, 20 minutes, 18 secondswe use object default stringification format here when stringified. So we're going to fix this. I'm just going to temporarily get rid of this so that we
8:20:268 hours, 20 minutes, 26 secondscan type it with the updates here. So here we're going to have this private format literal which takes in the value and this is going to return a string.
8:20:368 hours, 20 minutes, 36 secondsNow we're still going to perform our previous check by checking if the value is equals to null or the value is equals to undefined. Then in that case we want
8:20:438 hours, 20 minutes, 43 secondsto just go on and we want to go and return null like this. And we're also going to check if the value is equals to
8:20:508 hours, 20 minutes, 50 secondsboolean. Then want to return the value true otherwise false. I want to check if the value is equals to number. And I
8:21:008 hours, 21 minuteswant to check if it's infinite. So number is we pass in the value. Then we want to return string with a value. And
8:21:088 hours, 21 minutes, 8 secondsthen we can always check the same for the string. So with the type of value is equals to string.
8:21:168 hours, 21 minutes, 16 secondsThen we're going to return the value dotreplace with this quotes here with an empty string just like this. And we're
8:21:248 hours, 21 minutes, 24 secondsgoing to check if the type value is equals to object. Then we're going to JSON stringifier object and cast it to a JSON byte object format.
8:21:358 hours, 21 minutes, 35 secondsAnd the last one we have is if after this case we still have let's say some errors we're going to throw um if it
8:21:428 hours, 21 minutes, 42 secondscomes to this case we're going to throw a bad request exception that we have an unsupported column value. So now we have
8:21:508 hours, 21 minutes, 50 secondsthis we no longer have any errors we can save this. This video is long enough already. The next stage for us to do is
8:21:588 hours, 21 minutes, 58 secondsto go on and have our controller. Let's go on to have our controller. So now I'm going to exit from the service and right
8:22:048 hours, 22 minutes, 4 secondsin here we're going to have the project APIC controller.ts file. Now this controller is quite not
8:22:128 hours, 22 minutes, 12 secondsreally quite a lot as we have from the service obviously. So let's start off by importing body and also controller
8:22:198 hours, 22 minutes, 19 secondsdelete the forbidden um exception. We're also going to bring in get all this is going to come in from we also need to
8:22:288 hours, 22 minutes, 28 secondsbring in the params. We also need to bring in the patch, the post, the query, direct, the use guard from NestJS
8:22:368 hours, 22 minutes, 36 secondscommon. We also need to bring in express. Express is going to come sorry request is going to come in from express. We also need to bring in our
8:22:458 hours, 22 minutes, 45 secondsproject key rows which will come from the super constant. We need the project API
8:22:528 hours, 22 minutes, 52 secondsservice which is going to come from the API service. Okay. So just like this and
8:22:598 hours, 22 minutes, 59 secondsafter this we also need to bring in the project key guard. So we're going to import the project key guard and the
8:23:078 hours, 23 minutes, 7 secondsproject key payload from the project key.guard.
8:23:128 hours, 23 minutes, 12 secondsThen let's have the controller. The controller is going to be so / ai/ project the project log/rest
8:23:208 hours, 23 minutes, 20 secondsand we're going to make use of the guard which is the project key guard. So remember the project key card here that's the catch. Now we have the
8:23:298 hours, 23 minutes, 29 secondsproject API controller and here we're going to have the constructor so that we can have the service. We need to make API calls to our database and this is going to be of type project API service.
8:23:418 hours, 23 minutes, 41 secondsNow let's have the private method to get the API key. It's going to take in the request record of type request and it's going to return the project key payload.
8:23:518 hours, 23 minutes, 51 secondsSo here let's return the request. We get the project key. So remember the guard is acting this here and this is going to
8:24:008 hours, 24 minutesbe of this type like this and we're going to assert the right access. So we're going to have request which is going to be of type request if you don't
8:24:088 hours, 24 minutes, 8 secondsvoid and the role is going to be the project this get project key. We pass in the request. Now if the role is the
8:24:178 hours, 24 minutes, 17 secondsproject key roles service row key then we are going to throw a new request exception that write a forbidden
8:24:258 hours, 24 minutes, 25 secondsexception sorry that write operations require the service row key. So if the role is not equals to service row key
8:24:348 hours, 24 minutes, 34 secondsthen we're going to have the first endpoint this is to get request to / table. So / project the project log /
8:24:408 hours, 24 minutes, 40 secondsrest / table. So want to insert row. So that's why we going to first try to make use of the get rows and here we're going
8:24:488 hours, 24 minutes, 48 secondsto make use of rag also param to get the project log also another param decorator so that we can get the table which will
8:24:568 hours, 24 minutes, 56 secondsstore in this table of type string and the query is going to be an object the key is going to be a string and value is
8:25:038 hours, 25 minutes, 3 secondsgoing to be a string now we can say con the project ID so that we can get so we call this get project ID we pass in the
8:25:128 hours, 25 minutes, 12 secondsw and we're going to return this project API service get rows and we're going to
8:25:198 hours, 25 minutes, 19 secondspass the project id the project log the table and the query now after get we're
8:25:268 hours, 25 minutes, 26 secondsgoing to have for insert now insert is going to be a post request to the tables we have insert rows so we're going to
8:25:338 hours, 25 minutes, 33 secondsget the request which is request of type request same for the param which is the project slog and we store in this
8:25:418 hours, 25 minutes, 41 secondsproject slog of type string we also I have the param table which is this table type of type string and we have the body
8:25:498 hours, 25 minutes, 49 secondswhich is the body here. So the is an object the key is a string and the value is a string. So want to first of all say
8:25:558 hours, 25 minutes, 55 secondsthis do assert write um access to make sure we have write access. So we pass the request. We're also going to get the
8:26:028 hours, 26 minutes, 2 secondsproject ID from this get project ID where we get pass in the request. We know this is going to be from our guard.
8:26:108 hours, 26 minutes, 10 secondsAnd we're going to finally call the project API service dot insert row where we're going to insert the pass the
8:26:178 hours, 26 minutes, 17 secondsproject ID, the project log, the table as well as the body.
8:26:238 hours, 26 minutes, 23 secondsWe do have two more. One is for patch and the other is for delete. So patch needs this table and table ID. So we
8:26:308 hours, 26 minutes, 30 secondscall this update row which is going to then take the request of type request.
8:26:358 hours, 26 minutes, 35 secondsIt's also going to take in the param project slog we store in this project log of type string and then we have the
8:26:438 hours, 26 minutes, 43 secondstable which is going to be the table variable here of type string we also need the ID the ID is going to be of
8:26:518 hours, 26 minutes, 51 secondstype string and we have the body which is going to be this body object the key is a string and the value is of unknown
8:26:588 hours, 26 minutes, 58 secondsagain we want to make sure we have the right assess so we're going to call this assert write assess which takes in the request the project ID is going to be
8:27:078 hours, 27 minutes, 7 secondsequals to this get project key which takes in the request and finally we can go on to return this dot project API
8:27:168 hours, 27 minutes, 16 secondsservice dot update row and we pass in the project ID the project slug the
8:27:238 hours, 27 minutes, 23 secondstable the ID and the body so once you're done with the update row
8:27:298 hours, 27 minutes, 29 secondsthe last one we have is for delete so it's a delete um decorator to table the table ID delete row delete is also going to take in the request of type request.
8:27:418 hours, 27 minutes, 41 secondsWe also need the param where we can access or abstract the project log and then we need the table. We also going to
8:27:498 hours, 27 minutes, 49 secondsmake use of param decorator so we can get the table which is of type string and here we also need the id. The id is
8:27:568 hours, 27 minutes, 56 secondsgoing to be id of type string and finally we can call this dot assert write assess. We pass in the request and
8:28:048 hours, 28 minutes, 4 secondsthen we're going to have the project ID by calling this get project key which is going to take in the request and finally
8:28:128 hours, 28 minutes, 12 secondswe can call our service. So return this project API service dot delete row which is going to take in the project ID the project log the table and the id. Okay.
8:28:258 hours, 28 minutes, 25 secondsSo this is our constructor and why do we have this error? because request um request was imported here. So do we have
8:28:348 hours, 28 minutes, 34 secondsanother request type? Maybe it's clashing. Okay, so we have this error here. So let's just rename this as
8:28:418 hours, 28 minutes, 41 secondsexpress request and see if maybe we have another request import somewhere that I cannot find for now. So we can copy this
8:28:508 hours, 28 minutes, 50 secondsand we can use this here. So here where we have the request is going to be express request and this also is going to be express request and over here
8:28:598 hours, 28 minutes, 59 secondswhere we have request we're going to be updating all of these to match the express request. Why do we have this error here? Yeah, because we need to
8:29:078 hours, 29 minutes, 7 secondsimport it as a type. No worries. Let's just fix this real quick. This also is going to be of type express request like
8:29:158 hours, 29 minutes, 15 secondsthis. Now we need to just import this as a type. So over here where we import request as express request, we can
8:29:238 hours, 29 minutes, 23 secondsimport type since that's the only import we have here and the error is gone. So now let's give this a save. And now that
8:29:318 hours, 29 minutes, 31 secondswe have saved this, we can then proceed to creating the project API module file.
8:29:378 hours, 29 minutes, 37 secondsSo let's do that real quick. We're going to come here and we're going to create a new file. This is a project API module.ts file. And the project API
8:29:468 hours, 29 minutes, 46 secondsmodule is just going to be straightforward where we can group everything together. We're going to import module from at NestJS for/common.
8:29:558 hours, 29 minutes, 55 secondsWe're also going to be bringing in the JWT module which is going to come from NestJS/JWT.
8:30:028 hours, 30 minutes, 2 secondsWe also need to bring in the project API service so that we can have this as a provider and this will come in from one level up to the project API.
8:30:128 hours, 30 minutes, 12 secondsWe also need the project API controller which is going to come from one level up the project APIC controller file. And then we need our project key card.
8:30:248 hours, 30 minutes, 24 secondsThe project key card is going to come from one level up the project key.gard.
8:30:308 hours, 30 minutes, 30 secondsSo let's have the module decorator. And here we'll have the import. We're going to call the JWT module.register.
8:30:378 hours, 30 minutes, 37 secondsAnd we also have the providers which is going to be the project API service. And we pass in the project key card like this. And in the controllers we're going to have the project API controller.
8:30:508 hours, 30 minutes, 50 secondsThen finally we can export the class.
8:30:528 hours, 30 minutes, 52 secondsYou can export class the project API module just like this. Now we have the module. We need to register the module
8:31:008 hours, 31 minutesin the application module. So I'm going to come here and you want to locate your app module. And here in the app module
8:31:088 hours, 31 minutes, 8 secondsjust after the table editor module we want to register the project API module here. So the project API module and now
8:31:188 hours, 31 minutes, 18 secondsyou can give this a save. As you know this wraps up the back end um functionality side of things. Just make
8:31:248 hours, 31 minutes, 24 secondssure that you have in your env the the project the WT service which you are referencing from the guide.
8:31:328 hours, 31 minutes, 32 secondsSo if you come over here to the project key card if you come over here. So just make sure that here you have the
8:31:418 hours, 31 minutes, 41 secondsJ project JWT secret. So we've added this in the past. So you just want to confirm and double check that you have this. Now once you confirm you have this
8:31:508 hours, 31 minutes, 50 secondsjust to just you know blow this up. You can see here that the request project key is being attached based on this payload that we have over here. Once
8:31:598 hours, 31 minutes, 59 secondsthis has been able to verify this, it attaches this to the payload. Now this that has been attached here you can see
8:32:078 hours, 32 minutes, 7 secondsover here in the controller where we have the get project key and over here we are trying to get the project key
8:32:148 hours, 32 minutes, 14 secondsfrom the request based on this payload type and if you visit the payload type you can see we expect a project ID and
8:32:218 hours, 32 minutes, 21 secondsthe row so that's the project ID that we are getting from here whenever we call this here and we pass it to the project
8:32:288 hours, 32 minutes, 28 secondsAPI service and the project API service let's use get roles as an example The get rose method is going to get the
8:32:368 hours, 32 minutes, 36 secondsproject ID and based on the project ID here, it's going to resolve the project schema. And if you double check the resolve project schema, you're going to
8:32:438 hours, 32 minutes, 43 secondssee it also testing the project ID and over here it is using for this red clause. So that's how things are connected. It definitely needs some time
8:32:528 hours, 32 minutes, 52 secondsfor you to go through you understand the flow and once you understand the flow, the next path is going to be the front end and that's where you can see all our
8:33:008 hours, 33 minuteschanges work life. So now we are done with the back end. We're going to be focusing on the front end side of the application, specifically this API page.
8:33:098 hours, 33 minutes, 9 secondsNow, we do not have this page yet, but there's something you can see. This link is currently broken. So, I'm just going to give this a refresh. The links that we have over here, more or less broken.
8:33:198 hours, 33 minutes, 19 secondsSo, if we try to go over to the API, this just goes to /organizations, the organizations log, and the API. Okay.
8:33:288 hours, 33 minutes, 28 secondsBut the actual route is organizations organizations log slash the project log/
8:33:368 hours, 33 minutes, 36 secondsdatabase. So API is going to be SL API like this. Now to fix this is actually straightforward and that's because I
8:33:428 hours, 33 minutes, 42 secondshave provided us with um I have provided us with the template that fixes this. So I called it updated sidebar because we
8:33:518 hours, 33 minutes, 51 secondshave some changes and we have the previous application sidebar which was the previous one. So I did not want to update this. in case you um had this
8:34:008 hours, 34 minutesversion, you're just going to take this and update what we have currently. So this is in the dashboard layout. So we
8:34:088 hours, 34 minutes, 8 secondshave the dashboard layout and not this over here. And that is the dashboard layout here.
8:34:178 hours, 34 minutes, 17 secondsWe have the layout.tsx.
8:34:208 hours, 34 minutes, 20 secondsSo over here we have this application sidebar and we just need to go to the definition. And once you're here, you just need to replace everything here.
8:34:318 hours, 34 minutes, 31 secondsOops. You just need to replace everything here with this content. So if you inspect the content, we have over
8:34:378 hours, 34 minutes, 37 secondshere, we have the organization nav items and we have the project nav item where we got rid of the organization nav item
8:34:468 hours, 34 minutes, 46 secondsand then we had we introduced this function that helps us to build the href and then we just loop through it here
8:34:538 hours, 34 minutes, 53 secondsand we display it here. So here we map to it and we display and over here we display the button which is going to go
8:35:008 hours, 35 minutesover to the organization nav label. So now we save this and this is going to point to the actual link. So if we
8:35:088 hours, 35 minutes, 8 secondsinspect the API and you're going to see it's going to be /organization and you see and then we have the organizations
8:35:158 hours, 35 minutes, 15 secondslog and we have / API uh sorry /organizations the organizations log the projects log and
8:35:238 hours, 35 minutes, 23 secondsthe routes. Okay, so that's what we wanted to achieve. Now let's focus more on the front end build. How do we approach this? We are lacking the page.
8:35:328 hours, 35 minutes, 32 secondsSo, but you know the way we normally approach this is by first going on to define the helpers. So we're going to
8:35:398 hours, 35 minutes, 39 secondsdefine the helpers of this which is going to make us introduce new features into this application. So over here we
8:35:478 hours, 35 minutes, 47 secondsare going to come over to the web and in the web in the
8:35:548 hours, 35 minutes, 54 secondsfeatures we need a new feature and this is for API docs. So we're going to have API docs like this and then we're going
8:36:028 hours, 36 minutes, 2 secondsto have a new file. This new file is going to be API docs - helpers and then
8:36:088 hours, 36 minutes, 8 secondswe have server.ts file. All right. So let's go because we actually have some work to do here. Let's start by importing the redirect which will come
8:36:178 hours, 36 minutes, 17 secondsfrom next navigation. We're also going to import the API client, our Exio API client which will come from lib for/exios.
8:36:268 hours, 36 minutes, 26 secondsAnd what else do we need? We need the retrieve token from cookie that is going to be coming in from
8:36:338 hours, 36 minutes, 33 secondsthe server utils the UTS file. And then we're also going to be bringing in the cookie keys which will come from super vault constants.
8:36:438 hours, 36 minutes, 43 secondsWe also need to import the type the project API docs. We also need to import the project API endpoint. We also need
8:36:528 hours, 36 minutes, 52 secondsto bring in the project by slug response. All these will come from super vote for/types.
8:36:598 hours, 36 minutes, 59 secondsNow we need this function to build endpoints. that this function is going to take in the project URL which is a
8:37:068 hours, 37 minutes, 6 secondsstring, the table name which is a string and it's going to return the project's API endpoint list.
8:37:148 hours, 37 minutes, 14 secondsNow we need the base. The base is going to be the / project URL and / rest and the table name. So this is the endpoint that we need to hit in our back end.
8:37:258 hours, 37 minutes, 25 secondsWe're going to return a list based on the method. So in this case get the path is going to be this base path. We're going to add some description that we're
8:37:348 hours, 37 minutes, 34 secondsgoing to render in the UI which is like fetch the rows from the table name and we're going to say you know we're telling the user here that this supports
8:37:428 hours, 37 minutes, 42 secondsfilters ordering pagenation and on key okay and then we're going to
8:37:498 hours, 37 minutes, 49 secondshave an example with a C URL. So we're going to show this an example here. So we have the base URL we have the limit
8:37:568 hours, 37 minutes, 56 secondswhich is going to be equals to 10. The order is going to be created at we have some line break and then the headers here the beer and the unknown key.
8:38:068 hours, 38 minutes, 6 secondsWe're going to do the same for get. So the method sorry this method yeah is still going to be get but the path now is the column and equals to the value.
8:38:158 hours, 38 minutes, 15 secondsAnd here we want to have the description. So the description is going to be this string where we tell the user you can filter rows operators
8:38:248 hours, 38 minutes, 24 secondsum equals not equals greater than greater than equals because these are the operators that we have actually written in our back end and also the
8:38:338 hours, 38 minutes, 33 secondsexample is going to be this URL where the name is equals to shared and the price is less than 100 and we have the
8:38:408 hours, 38 minutes, 40 secondsheaders where we have the authorization the beer and on key like this. Now the next method is post and the path is
8:38:508 hours, 38 minutes, 50 secondsgoing to be the base path. The description we're going to offer to the user is you can go on to insert a row
8:38:598 hours, 38 minutes, 59 secondsinto this table name and we're telling the user that this is going to require the service row key and we want to show the user an example. Now this is a post request. So we need data.
8:39:118 hours, 39 minutes, 11 secondsSo we're going to say the C URL X post like this to the base and the authorization the beer service row key
8:39:208 hours, 39 minutes, 20 secondsadd some line break the headers the content type header which is application JSON and we also want to have the data
8:39:288 hours, 39 minutes, 28 secondssource dash D where we have the name and t-shirt like this no worries I'll format this later now the next method is patch
8:39:378 hours, 39 minutes, 37 secondsand here we can also have the path which is this base ID. The description here is
8:39:448 hours, 39 minutes, 44 secondsgoing to be update a row by primary key in the table name. And we tell the user
8:39:518 hours, 39 minutes, 51 secondsthis requires the service row key like this. Now we also show an example with the C URL and the X path is the base URL
8:40:008 hours, 40 minuteslike this. We have the line break. We tell the user the headers which is the beer the service row key more line bras
8:40:108 hours, 40 minutes, 10 secondsand we have / h for the headers the content type the application JSON. Now for the data the data is going to be the name of hoodie like this.
8:40:228 hours, 40 minutes, 22 secondsThe last one we have is the delete. So we have the method for delete and we have the path which is going to be the
8:40:288 hours, 40 minutes, 28 secondsbase id and then we're going to have the description. So the description here is um like delete a row by primary key from
8:40:378 hours, 40 minutes, 37 secondsthis table and we tell the user this is going to require the service row key.
8:40:428 hours, 40 minutes, 42 secondsAnd then we also want to offer these an example which is going to be the C URL.
8:40:478 hours, 40 minutes, 47 secondsUm the X delete which is the operator operation. And then we have the line break for the authorization headers
8:40:558 hours, 40 minutes, 55 secondswhich is the beer service row key. Now we're going to have this function which is going to then help us to retrieve the
8:41:038 hours, 41 minutes, 3 secondsAPI docs from the API. So we're going to have the organization log which is a string and also the project slug which
8:41:128 hours, 41 minutes, 12 secondsis a string and we're going to return a promise which is going to resolve to the project API docs.
8:41:198 hours, 41 minutes, 19 secondsSo let's say token the token is going to come by awaiting the response and the response is retrieve token from
8:41:288 hours, 41 minutes, 28 secondsthe cookie and then we're going to get the headers. The headers is also going to be the cookie key access token. And
8:41:368 hours, 41 minutes, 36 secondswhat else do we need? We are also going to get our try catch block. Now in the try catch block, we're going to start by
8:41:438 hours, 41 minutes, 43 secondshaving the project response the table because I want to await promise.all where we call the API client get. We're
8:41:508 hours, 41 minutes, 50 secondsgoing to get back the project by slog response and the path is slash organization
8:41:578 hours, 41 minutes, 57 seconds/organization slog/ project and the project slog and we attach the headers.
8:42:058 hours, 42 minutes, 5 secondsNow the second request is going to be the API client get where we're going to get a string array and the path is
8:42:138 hours, 42 minutes, 13 seconds/organizations/organization log/ project and the project log/tables and then we have the headers.
8:42:238 hours, 42 minutes, 23 secondsSo let's have the project the project is going to be equals to the project response data dot project like this. And then we can say cause the table names.
8:42:358 hours, 42 minutes, 35 secondsThe table names is going to be equals to the table response data.
8:42:418 hours, 42 minutes, 41 secondsAnd now we can return this object that has the project URL which is the project.p project URL. We also have the
8:42:488 hours, 42 minutes, 48 secondsanon key which is the project anonymous key. We have the service row key which is the project service row key. And then
8:42:578 hours, 42 minutes, 57 secondsfor the tables, we have the table names dot map one of map to the table names where we have each name and we're going
8:43:058 hours, 43 minutes, 5 secondsto return this object with the name and the end points. So the name here and the endpoint is then going to call the build endpoint function where we pass in the
8:43:148 hours, 43 minutes, 14 secondsproject URL and the name. So this is pretty much it. Now we're just going to have the catch block and in case something goes wrong, we want to just redirect the user to the project route.
8:43:258 hours, 43 minutes, 25 secondsSo, we're going to redirect to SL organization organizations log/ project just like this. Now, we're going to give
8:43:338 hours, 43 minutes, 33 secondsthis a save and let maybe I collapse this. But this is the full content here.
8:43:408 hours, 43 minutes, 40 secondsOkay. So, now we're going to work on the actual API page.
8:43:458 hours, 43 minutes, 45 secondsNow, as always, we're just going to get started and we'll come back and complete the page. But if you take a look here, this is the API. So once you click on
8:43:548 hours, 43 minutes, 54 secondsthis we are going to be redirected over to this page which we do not have yet.
8:43:598 hours, 43 minutes, 59 secondsSo let's see how we can map or bootstrap this page. So the page is over here in the app in the dashboard organizations
8:44:088 hours, 44 minutes, 8 secondsorganizations log and then inside of project log where we have database we need a new one. We need to create a new
8:44:158 hours, 44 minutes, 15 secondsfile which is the API and in here we're going to have the page.tsx.
8:44:218 hours, 44 minutes, 21 secondsSo this is the page and once we return we're going to fill this page with life and we're no longer going to have the error which we which we currently have
8:44:298 hours, 44 minutes, 29 secondson the screen. Okay. So let's have the page content. We're going to be importing the retrieve API docs from API
8:44:368 hours, 44 minutes, 36 secondsand this is going to come in from the features the API docs and now the API docs.h helpers server.ts file. We're
8:44:458 hours, 44 minutes, 45 secondsalso going to bring in the API docs client which I have provided a template.
8:44:498 hours, 44 minutes, 49 secondsWe're going to see that in a moment. But this will come from the features, the API docs and the API docs client file.
8:44:568 hours, 44 minutes, 56 secondsAnd now we can export the default async function, the API docs page. And this is going to take in the params where the
8:45:038 hours, 45 minutes, 3 secondsstructuring params here. And params is going to be of this object type where we have params and promise. We have the slog which is a string and also the
8:45:118 hours, 45 minutes, 11 secondsproject log which is a string. We're going to await the params. So we say con the slug and the project log is going to
8:45:188 hours, 45 minutes, 18 secondsbe equals to await params and the docs is going to be equals to await retrieve API doc. So we pass in the log as well
8:45:278 hours, 45 minutes, 27 secondsas the project log and finally we can go on to return the API docs where we pass in the docs here.
8:45:368 hours, 45 minutes, 36 secondsNow let's pay this um let's go back to our templates. As you can see this is currently throwing us an error which is the error we also see here. So if we
8:45:448 hours, 45 minutes, 44 secondscome here and if we come over to our features not the features if we come over to our templates I just added the API docs client here which is this page.
8:45:538 hours, 45 minutes, 53 secondsSo we just need to take all of these over 200 lines of code. So that's why I always provide this. I just not like saying this so that we can always know
8:46:018 hours, 46 minutes, 1 secondwhy. So I'm going to take this and copy this and exit out of this. And we need
8:46:088 hours, 46 minutes, 8 secondsto create the page. So right here in the features, I actually like it being in the features. So here we're going to be
8:46:168 hours, 46 minutes, 16 secondscreating the component here. So we'll create a new file and this is the API - docs and then hyphen client
8:46:248 hours, 46 minutes, 24 secondstsx file. So I'll collapse this and I'll paste this in here. So once you have this here, you do not need to make any
8:46:328 hours, 46 minutes, 32 secondschange at least for now. Then we're going to save the content of this file.
8:46:378 hours, 46 minutes, 37 secondsWe just come here and we need to update the import or maybe yeah the import is the correct import. I'll just remove this and bring it back in. So now we see
8:46:478 hours, 46 minutes, 47 secondseverything. So we can open this here. We can see the API keys. This is a project
8:46:538 hours, 46 minutes, 53 secondsURL. So the local host 300 which is the back end and then / API/ project and the project ID.
8:47:038 hours, 47 minutes, 3 secondsSo this is our project URL and the anon key is read only. So if you click on this it's going to be visible and you
8:47:118 hours, 47 minutes, 11 secondscan copy your anon key. We also have the service row key which is going to give full access to the server only and you
8:47:188 hours, 47 minutes, 18 secondscan see this and you can also copy this service row key. Now we have the different endpoints here as I showed you. If you click on this it expands and
8:47:268 hours, 47 minutes, 26 secondsyou see the C URL which you can copy. We also have this forget which is going to show you the different endpoints based
8:47:348 hours, 47 minutes, 34 secondson this current organization that you belong to. So this organization and also
8:47:418 hours, 47 minutes, 41 secondsthis um project. So now if you click on this you see the same for this you see the same for patch and you see the same
8:47:488 hours, 47 minutes, 48 secondsfor delete and same for the users table which have all these endpoints that we can run queries on.
8:47:568 hours, 47 minutes, 56 secondsNow, we're going to be testing this out to see if these endpoints actually do as they behave and our styling is off, which I'm going to be fixing in a
8:48:048 hours, 48 minutes, 4 secondsmoment. And actually, by the time you have access to the API docs client, this would have already been fixed. So, no,
8:48:118 hours, 48 minutes, 11 secondsyou don't need to worry about this. So, I'm going to um collapse this. Where do we have the collapsible? I think that is also broken.
8:48:218 hours, 48 minutes, 21 secondsYes. So, that looks like it's also broken. So, let's see.
8:48:268 hours, 48 minutes, 26 secondsYeah, that's broken. So, um yeah, but let's go and test this and if Okay.
8:48:328 hours, 48 minutes, 32 secondsYeah. So, here it is. It doesn't look like our UI was broken or maybe it's broken on some view path. Okay. So,
8:48:398 hours, 48 minutes, 39 secondslet's test this out. I have this over here. And if we check our table, so our database, the current state of our
8:48:478 hours, 48 minutes, 47 secondsdatabase, you would see over here that we have, just give this a moment. Yeah.
8:48:528 hours, 48 minutes, 52 secondsSo we have membership table which is currently empty. So if we try to fetch the membership, we're going to get an empty string. Let's also have the user
8:49:018 hours, 49 minutes, 1 secondrelationship here in mind. We also have the users table. The users table is also currently empty. So I think we should
8:49:088 hours, 49 minutes, 8 secondstry by you know having some data here in the users table. Yeah. So let's come over to our API and see the C URL.
8:49:188 hours, 49 minutes, 18 secondsSo this is our API endpoint. I see this finally and I'm able to collapse this and it's still broken I guess. So it's still broken. It doesn't look broken.
8:49:298 hours, 49 minutes, 29 secondsThat's the UI. When this is collapsed but when this is not collapsed then it looks broken. Yeah. So no worries. I'm
8:49:378 hours, 49 minutes, 37 secondsgoing to fix this off screen and by the time you copy the API doc client you're going to have the updated version and you shouldn't see the error or have the
8:49:458 hours, 49 minutes, 45 secondserror. Yeah. So let's try by creating a user. We have the anon key. We have the service role key. We have the project
8:49:528 hours, 49 minutes, 52 secondsURL. Now this is for membership and this is for user. So this is post to create the user and this is the example
8:50:008 hours, 50 minutesendpoint. So we can copy this and we can save this. We can paste this in here. So this is the endpoint. Okay, which is our
8:50:098 hours, 50 minutes, 9 secondsproject URL. And then we have slash um we have the authorization the service row key. So let's copy the service the
8:50:178 hours, 50 minutes, 17 secondsanon key. Oh yeah, that's a service row key. So we're going to copy this and let's update the service row key that we
8:50:258 hours, 50 minutes, 25 secondshave over here and this is going to be pointing to this service row key. Now we have the content
8:50:348 hours, 50 minutes, 34 secondstype application JSON but we're not going to pass in the name of t-shirt just as the example here. the what we're
8:50:418 hours, 50 minutes, 41 secondsgoing to pass here if we just quickly double check our database we need to pass in the following fields. So a user
8:50:508 hours, 50 minutes, 50 secondsin application if we click on users is going to or currently has the ID the ID should be automatically generated as a
8:50:588 hours, 50 minutes, 58 secondsprimary key. The time stamp also is automatically generated. So we just need to pass in the name and the email.
8:51:058 hours, 51 minutes, 5 secondsRemember the age we gave it a default value of 10. So for now I'm just going to leave that. So for the name I'm going to go with the name of code with Larry
8:51:158 hours, 51 minutes, 15 secondslike this. And we're also going to pass in the email. So here let's pass in the email. And the email here is going to be
8:51:248 hours, 51 minutes, 24 secondsthis value. So code with larest.com.
8:51:308 hours, 51 minutes, 30 secondsAnd then we are going to I think that's about it. Yeah. So let's send this off.
8:51:358 hours, 51 minutes, 35 secondsAnd let's see the new field here. if we have done everything correctly. So I'm just going to expand this a little and then I'm going to send the across this
8:51:438 hours, 51 minutes, 43 secondsrequest. So let's see the response that we do get back. Now you see we get this back. So the ID is one. The created art
8:51:518 hours, 51 minutes, 51 secondsalso is automatically generated and we have the email the name and you see the age is 10. So it respects our default
8:51:598 hours, 51 minutes, 59 secondsvalue and that's because we did not overwrite the default value. We're going to give this a refresh and we should see this populated now with the value. So
8:52:088 hours, 52 minutes, 8 secondsthat was the users. So we're going to click on users and here we should see our new user here and which is cool. So
8:52:168 hours, 52 minutes, 16 secondswe click on this it expands and we see the view um the row from the user the created ads we see the email the age and
8:52:258 hours, 52 minutes, 25 secondseverything is working fine just here like this. I'm so excited about this.
8:52:308 hours, 52 minutes, 30 secondsAnd let's now try this. Let's try the membership. Remember the membership is having this foreign key. So this foreign
8:52:398 hours, 52 minutes, 39 secondskey here with one. So here we're going to do that. And if we come back to the API, so this is the API section.
8:52:488 hours, 52 minutes, 48 secondsWe are going to try to create a new membership. So here where we have membership, we want to get a membership.
8:52:568 hours, 52 minutes, 56 secondsWe also have this filter operation. So I'm just going to click on this so that we can copy this. This is make use of the anon key because it's not like
8:53:038 hours, 53 minutes, 3 secondsprotected everybody. Um but to create the resource then you're going to need the service row key. So I'll paste this in here. And this is then all just going
8:53:128 hours, 53 minutes, 12 secondsto need the oops actually we're trying to get so I'm just going to remove this. I want us to try to create a membership.
8:53:218 hours, 53 minutes, 21 secondsSo we need to go for the post and not the get. So I'm just going to delete everything that we have here. And now it is gone. I'm going to come over here and
8:53:298 hours, 53 minutes, 29 secondsclick on post. So let's copy this and let's paste this over here. Now we need
8:53:368 hours, 53 minutes, 36 secondsthe service row key because it's um an update mutation. It's a it's an operation we want to perform. So we need
8:53:448 hours, 53 minutes, 44 secondsthe service row key not the anon key. So we can copy this and use this value here.
8:53:528 hours, 53 minutes, 52 secondsSo for the data now we have to switch back to the database. Now for the data
8:53:588 hours, 53 minutes, 58 secondswe can access the type of data that we need to pass for the membership. So in the membership table we are going to be
8:54:068 hours, 54 minutes, 6 secondspassing over the ID the created art and the user. So the ID and the created automatically generated. So for the user
8:54:148 hours, 54 minutes, 14 secondswe just need to pass in the ID. So I'm just going to pass in one. So I have the user and pass in one like this which is
8:54:228 hours, 54 minutes, 22 secondsthe user that we just created. So remember this user here with the ID of one. So I'm going to send this off.
8:54:298 hours, 54 minutes, 29 secondsLet's see if we can create a membership without um extra work. Now you see this membership have been created based on
8:54:378 hours, 54 minutes, 37 secondsthis user. So I would clear this. And now if you give this a refresh and the membership loads again, you're going to see we have a new membership. Now the
8:54:468 hours, 54 minutes, 46 secondsreason why it clears is because we are not persisting like this and let's say the URL that's why it refreshes but now
8:54:538 hours, 54 minutes, 53 secondswe see the user and this is linked to this user here. If you expose this you can see the foreign key here big which
8:55:008 hours, 55 minutesmaps to the user with this ID. Now you can go further by let's say you want to list the user details. It's pretty much easy to do as much as you have the user ID.
8:55:108 hours, 55 minutes, 10 secondsSo this is working fine and I'm super super excited about this and the same for the users. You see that the membership also persist over here and
8:55:188 hours, 55 minutes, 18 secondsit's going to load the users table and cool. I'm really impressed about this.
8:55:238 hours, 55 minutes, 23 secondsNow you can try out more. I'm definitely not going to test out all the endpoints but if you come over to API now if you try to retrieve a membership you're
8:55:318 hours, 55 minutes, 31 secondsgoing to see the membership here. So you have get. You can also try out the filter. So I'm just going to quickly just paste this in here and copy the
8:55:408 hours, 55 minutes, 40 secondsanon key and I will replace this anon key with this value over here. So paste this in here. Send across this request.
8:55:488 hours, 55 minutes, 48 secondsYou're going to see the list returned which is going to be this over here.
8:55:528 hours, 55 minutes, 52 secondsThis is working fine. This is working super. This is the membership we just created. Now you can try out more. You can try out patch delete. But this is
8:56:018 hours, 56 minutes, 1 secondworking as expected. Now we're going to move over to the next phase of building out our own version of Superbase. All
Chapter 10: 9-sql-editor
8:56:088 hours, 56 minutes, 8 secondsright. So I did fix this. Now if you double check this is now fixed and that's from the API. Yeah. So if you come over to the API page you will see
8:56:178 hours, 56 minutes, 17 secondsthat everything is now properly fixed and everything is now properly aligned.
8:56:218 hours, 56 minutes, 21 secondsAs you can see here, even if it is expanded and here if this is collapsed.
8:56:268 hours, 56 minutes, 26 secondsI think I don't really like this glass effect that we have here on mobile, but maybe it can be fixed later
8:56:348 hours, 56 minutes, 34 secondstowards the end. It's not priority for now. But then we have all of these working nice and good. So you can see we
8:56:418 hours, 56 minutes, 41 secondshave the API page which is not fully responsive. And something I haven't really showed us, if we come over to neon and neon, if we come over to let's
8:56:498 hours, 56 minutes, 49 secondssay we come over to the schema. So let's click on schema. We can see over here if we just go back to the to the tables for
8:56:568 hours, 56 minutes, 56 secondsthe project, we can see each project has a DB schema. And where do we have it? So DB schema. So for this project, this is
8:57:048 hours, 57 minutes, 4 secondsthe database schema over here. You can always copy this. And if you double check here, if you come over to schema, you would see you have this. So if we
8:57:128 hours, 57 minutes, 12 secondsjust search for this we can see we have this in the schema we have the user schema. So the schema and then the table
8:57:198 hours, 57 minutes, 19 secondswhich is the users table and this uses table is this table that we created here. So in our database we have this
8:57:278 hours, 57 minutes, 27 secondstable over here which is the users table and also the membership table. Now these are the tables. So this schema the users table if you click on this you can see the different fields that we specified.
8:57:388 hours, 57 minutes, 38 secondsSo we see them here. the default value, the constraints, we have the indexes which is the primary key over here. So
8:57:478 hours, 57 minutes, 47 secondsthe unique index, the users key over here and you can also double check the members. I'm just going to get rid of this and then you can see everything
8:57:558 hours, 57 minutes, 55 secondshere, the different columns that we specified here. So that's how we are provisioning database for each project
8:58:028 hours, 58 minutes, 2 secondsand then the user will be able to manage it in their schema. So this is the schema here. So yeah, so let's continue and now we're going to focus on the next
8:58:118 hours, 58 minutes, 11 secondsphase which is our own SQL editor. Now we're going to work on the SQL editor.
8:58:158 hours, 58 minutes, 15 secondsSo let's collapse all of these. And let's also quit this for now. And do we have an error here? Uh no, we do not have an error. Yeah. Okay. So let's
8:58:248 hours, 58 minutes, 24 secondsclear this. And now we are going to open up this new tab and expand this. And we are going to start working in the packages. So here in the packages we
8:58:328 hours, 58 minutes, 32 secondswant to come over to the types and the source the index.ts. We are going to have another type this time. This time
8:58:398 hours, 58 minutes, 39 secondsaround is going to be for the SQL editor like this. So SQL editor here. Now the SQL editor is going to have this
8:58:488 hours, 58 minutes, 48 secondsinterface which is the query result interface and the query result is going to have the row. So the rows is going to
8:58:558 hours, 58 minutes, 55 secondsbe the record string key the unknown value an array and the columns is just going to be an array of string. The row
8:59:038 hours, 59 minutes, 3 secondscount is going to be the number. The execution time milliseconds is going to be a number. And then we're also going to have the interface for the query
8:59:118 hours, 59 minutes, 11 secondshistory item. The query history item is going to take the ID. The ID is a string. We also have the project ID
8:59:198 hours, 59 minutes, 19 secondswhich is a string. We have the SQL which is a string. We have the execution time milliseconds which is of type number. We also have the row count which is of type
8:59:288 hours, 59 minutes, 28 secondsnumber and the created at which is of type string. Now we're going to have the schema in the database because we do not
8:59:358 hours, 59 minutes, 35 secondshave the query history schema. So let's do that. Let's save this file and then let's come over to our source. So the
8:59:438 hours, 59 minutes, 43 secondsAPI, the source and in the database we need the schema. And now we need a query
8:59:498 hours, 59 minutes, 49 secondshistory.ts. So we're going to have the query history like this and then TS
8:59:598 hours, 59 minutes, 59 secondsfile. Now in the query history file we can start by importing PG table and PG table we also need to bring in
9:00:089 hours, 8 secondstext the time stamp U ID integer will come from diesel RM PG core we also need to bring in project which will come from
9:00:159 hours, 15 secondsone level up our project and then we're going to have our query history the query history is going to be equals to the pg table and then we're going to
9:00:259 hours, 25 secondsgive it the table name of the table name is going to be the query history and then the different tables is going to or
9:00:339 hours, 33 secondsthe different columns is going to be the ID the type U ID and it's going to be the primary key like this and after this we're also going to have the project ID
9:00:429 hours, 42 secondswhich is the project ID not null and this is going to be referencing the projects do ID and on delete we can call
9:00:499 hours, 49 secondscascade we also have the SQL the SQL is going to be of type text we pass SQL and not null
9:00:579 hours, 57 secondswe need the execution and time milliseconds which is the integer and we pass the execution time ms which is not
9:01:049 hours, 1 minute, 4 secondsnull. We also have the row count which is an integer row count and not null.
9:01:109 hours, 1 minute, 10 secondsAnd finally we have the created we have the created at which is
9:01:179 hours, 1 minute, 17 secondstime stamp created at not null and the default is going to be now like this.
9:01:239 hours, 1 minute, 23 secondsLet's also export the type for the query history item which is going to be the type of the query history.infer
9:01:319 hours, 1 minute, 31 secondsselect and we also have the type which is the new query history item and this is going to be the type of the query
9:01:389 hours, 1 minute, 38 secondshistory infer insert. Now we just need to update the type over here. So let's save this. Let's come over here and yeah
9:01:479 hours, 1 minute, 47 secondsthe index.ts TS where we are exporting projects. We now need to export the next one which is query history. So we export
9:01:549 hours, 1 minute, 54 secondseverything from one level up and we export the query history like this. Now we need to run the migration because we have made changes. So you need to CD
9:02:039 hours, 2 minutes, 3 secondsinto apps. Oops. Yeah. And also CD into API. And here we want to run the pmppm db generate which is going to regenerate
9:02:129 hours, 2 minutes, 12 secondsthe client and update the drizzle folder. We see no schema changes, nothing to migrate, which is strange because we actually do have changes here.
9:02:229 hours, 2 minutes, 22 secondsSo, um, query history six columns. So, I do not know why I see this, but let's double check. Let's run the DB. Oops.
9:02:329 hours, 2 minutes, 32 secondsYeah, we meant to run the DB generate command. So, that was the command. So um let's run the pmppm db migrate command
9:02:419 hours, 2 minutes, 41 secondsjust to be double sure why we do not see this because it doesn't update. It said no schema changes whereas we do have some schema changes. So let's wait for
9:02:499 hours, 2 minutes, 49 secondsthis. We see the migration has been applied successfully. Now let's just confirm if we come over to non we need to see the new query history because we
9:02:589 hours, 2 minutes, 58 secondshave the table if we have done everything correctly which looks like we have and let's come over to the tables and over here in tables we want to have
9:03:069 hours, 3 minutes, 6 secondsa look at we need to have a new table which is the query history and we don't let me just give this a refresh
9:03:149 hours, 3 minutes, 14 secondssomewhere I'm just going to I thought I saw refresh here yeah let me just refresh here and see yeah so after refreshing we see the query history
9:03:229 hours, 3 minutes, 22 secondsOkay. So, um yeah. So, it looks like it worked even though the migrate command or the generate command wasn't giving us
9:03:299 hours, 3 minutes, 29 secondsum so much hint. Now that this is working for us, we are going to work on the SQL editor service file. So, let's
9:03:369 hours, 3 minutes, 36 secondswork on that. So, in here we're going to be creating the new folder. So, we'll create a new folder and we'll call this
9:03:429 hours, 3 minutes, 42 secondsSQL - editor like this. So, SQL - editor like this. and then we're going to
9:03:519 hours, 3 minutes, 51 secondscreate the service. So we're going to create the SQL editors service.ts file.
9:03:579 hours, 3 minutes, 57 secondsNow inside this SQL editor service.ts file. Let's start by importing bad request exception. We're also going to
9:04:059 hours, 4 minutes, 5 secondsbring in injectable. We bring in not found exception which will come from at nextjs for/ common and from drizzle we
9:04:149 hours, 4 minutes, 14 secondsneed to bring in the matches. So and the the sending equals um needs to come from JUR RM. We also need to bring in our DRO
9:04:239 hours, 4 minutes, 23 secondsservice which will come from the database DRO service and then we need our database schema. So we're going to
9:04:309 hours, 4 minutes, 30 secondsbe importing projects al organizations the query history which will come from
9:04:379 hours, 4 minutes, 37 secondsthe the DB schema and we also need to bring in our query
9:04:449 hours, 4 minutes, 44 secondstype which will come from super vote types. Now let's have the class definition. We're going to mark the class at injectable as injectable and
9:04:529 hours, 4 minutes, 52 secondswe're going to export the SQL editor service. Now in the constructor we're going to have the Drizzle service
9:05:009 hours, 5 minutesinitialized here and we're going to have a private method. So the private method is an async method that we call get
9:05:079 hours, 5 minutes, 7 secondsproject and we're going to pass the organization log of type string. We're also going to pass in the project log of type string. Now we want to select some
9:05:179 hours, 5 minutes, 17 secondsthings for project. So we say row is going to be await this.razo db. want to select the ID which is the project id
9:05:269 hours, 5 minutes, 26 secondsand then we are also going to get the DB schema which is the project DB schema.
9:05:319 hours, 5 minutes, 31 secondsNow this is going to come from the projects table and we're going to have the inner join here.
9:05:399 hours, 5 minutes, 39 secondsSo in inner join we're going to have the organization and we're going to have equals where the projects.org or id
9:05:469 hours, 5 minutes, 46 secondsmatches the organization id and we're going to also we have the wear clause where we can chain different equals so
9:05:539 hours, 5 minutes, 53 secondsand equals the organization log is going to match the aux log and also the project slog so the project slog is
9:06:029 hours, 6 minutes, 2 secondsgoing to match the project log we can go on to limit our result by one and let's have a quick check if we do not find the
9:06:099 hours, 6 minutes, 9 secondsrole we're going to throw a new not found exception this not found exception is going to say hey we are not able to
9:06:179 hours, 6 minutes, 17 secondsfind the project otherwise we are going to return the row now let's also have this async execute query method and this
9:06:279 hours, 6 minutes, 27 secondsexecute query method needs the organization ID of string the project ID of string and the SQL which is going to
9:06:359 hours, 6 minutes, 35 secondsbe a string then we're going to get the query results this is going to help us to execute the SQL now we're going to
9:06:439 hours, 6 minutes, 43 secondshave the project here which is the project we're going to get and we need a basic guard which is going to block dangerous statements in production.
9:06:519 hours, 6 minutes, 51 secondsWe're going to use a read only role for non-service key requests. So that's why we have this normalized want to trim the SQL to upper case like this and it's
9:07:009 hours, 7 minutesgoing to be blocked if there are requests like drop database or drop schema or truncate. So we just have a basic guard over here. So in production
9:07:099 hours, 7 minutes, 9 secondsas I said you need a read only role for non-service key request. Now we say if blocked sum and if normalize if it
9:07:189 hours, 7 minutes, 18 secondsstarts with the blocked here we want to throw a new b request exception that this statement is not allowed. So you're not allowed to run queries that will
9:07:259 hours, 7 minutes, 25 secondsblock drop the database or drop the schema or things like this. Now we are sure that the query is okay to pass.
9:07:329 hours, 7 minutes, 32 secondsWe're going to have the start which is the date now. So we want to get the time in milliseconds. So in the start here we're going to await this.razu
9:07:399 hours, 7 minutes, 39 secondsdb.execute which is then going to set the search path to the project db schema. So remember we just saw this in yon and it's the public like this.
9:07:519 hours, 7 minutes, 51 secondsNow we're going to get the result by awaiting this.razo db.execute.
9:07:569 hours, 7 minutes, 56 secondsOnce you execute the SQL we are going to get back the object which is the key of a string and the value of unknown. Now
9:08:039 hours, 8 minutes, 3 secondsthis over here where we search the path is just so that unqualified tables name can resolve to the project schema. Now
9:08:119 hours, 8 minutes, 11 secondswe're going to get the execution time in milliseconds which is the date now minus start and the rows is going to be the result rows and same for the columns is
9:08:209 hours, 8 minutes, 20 secondsgoing to be the rows.length if it's greater than zero otherwise we're going to have the object keys where we pass in the first result from the row otherwise
9:08:289 hours, 8 minutes, 28 secondsan empty array. Now let's save this to history. We're going to say this drazo db.insert into the query history table
9:08:369 hours, 8 minutes, 36 secondsthe values of the project ID which now matches the project ID. We also want to have the SKL command which was executed.
9:08:449 hours, 8 minutes, 44 secondsWe also want to start the execution time in milliseconds and the row count which is the rows.length.
9:08:509 hours, 8 minutes, 50 secondsAnd after insert we can then go on to return this object. The object will have the rows. It's also going to have the
9:08:579 hours, 8 minutes, 57 secondscolumns. is also going to have the rows count which is going to go over to the rows.length and also the execution in milliseconds.
9:09:079 hours, 9 minutes, 7 secondsNow for the catch case, remember we're in a try catch block. If something goes wrong, we are going to have the error which is going to be of type unknown. So
9:09:159 hours, 9 minutes, 15 secondslet's get the error message. The message is going to be the error. If it's an instance of an error, we are going to go with the error message. Otherwise, we're
9:09:239 hours, 9 minutes, 23 secondsgoing to say something like query failed. Then we can going to throw a new bite request exception that contains the message.
9:09:329 hours, 9 minutes, 32 secondsWe are going to have another function here which is the last function that is going to help us to get the history. So it's a straightforward function that
9:09:399 hours, 9 minutes, 39 secondstakes in the organization's log of string and the project's log of type string. So we say con project going to
9:09:469 hours, 9 minutes, 46 secondsbe awaiting this.get project where we get the pass the organization log and the project log.
9:09:549 hours, 9 minutes, 54 secondsWe can then go on to return this. DB. So we are returning the result of this dot select where we going to select
9:10:019 hours, 10 minutes, 1 secondeverything from the query history. Now when we have our wear clause so where equals the query history project ID
9:10:099 hours, 10 minutes, 9 secondsmatches the project ID. We are also going to order this by descending order.
9:10:159 hours, 10 minutes, 15 secondsWe have the query history created at and we just also want to limit this to 50.
9:10:229 hours, 10 minutes, 22 secondsThis is our service for the SQL editor. And you're just going to save this file.
9:10:299 hours, 10 minutes, 29 secondsNow we are done with the service. We are going to take a moment take a moment to go through this code. And then we're going to work on the DTO as well as the
9:10:379 hours, 10 minutes, 37 secondscontroller. Now let's have our DTO. I'm going to close all these files that we have open. And uh inside here where we
9:10:459 hours, 10 minutes, 45 secondshave the SQL editor, we are going to create a new file for the DTO. So here we have the DTO and inside the data transfer object we're going to have the
9:10:539 hours, 10 minutes, 53 secondsexecute - query and this is going to be DTO TS file. Now this is just pretty
9:11:029 hours, 11 minutes, 2 secondsmuch straightforward where we have the actual SQL. So we're going to import a string and also min length which will come from the class validator and we can
9:11:119 hours, 11 minutes, 11 secondsthen export the class the execute query um DTO which is going to take a string and at min length and also the SQL
9:11:209 hours, 11 minutes, 20 secondsbecause to to execute a query you need the actual SQL and the SQL is going to be of type string. Now we can go on to
9:11:279 hours, 11 minutes, 27 secondssave this file and the next step is we have our controller. I'll open this up and the controller is going to leave right in here in the SQL editor. We're
9:11:369 hours, 11 minutes, 36 secondsgoing to create a new file. This is going to be the SQL editor.Controller.ts file. Now the controller is going to
9:11:449 hours, 11 minutes, 44 secondsdiscuss with the service. So let's import the body, the controller, the get the param, the post, the use from NestJS common.
9:11:569 hours, 11 minutes, 56 secondsWe are then going to bring in the SQL service. So the SQL editor service which will come from one level up where we
9:12:039 hours, 12 minutes, 3 secondshave the SQL editor service file. We also have the execute query DTO which is
9:12:109 hours, 12 minutes, 10 secondsgoing to come in from the DTO folder and then we have the execute query DTO. So over there we have the SQL and the JWT
9:12:199 hours, 12 minutes, 19 secondsauthentication guard which is going to come from O guard JWT.
9:12:259 hours, 12 minutes, 25 secondsWe also have the role the organization row guard which will come from o guards organization rowgard.
9:12:339 hours, 12 minutes, 33 secondsNow the controller path is going to be / ai/orgs and then the dynamics log the project
9:12:409 hours, 12 minutes, 40 secondsand then the dynamic project uh slog and the actual/sql not the actual but that's the path. We're going to make use of the
9:12:489 hours, 12 minutes, 48 secondsJW card and the organization row card here. So the class is going to be the SQL editor controller and we're going to
9:12:579 hours, 12 minutes, 57 secondshave the service which is the SQL editor service of type SQL editor service in the constructor. The first request is a
9:13:069 hours, 13 minutes, 6 secondspost request. We also have execute query which is the method. So we taking in the slog from the param. We're also going to
9:13:139 hours, 13 minutes, 13 secondstake in the project slog. Again the first slug is the organization log.
9:13:199 hours, 13 minutes, 19 secondsAnd after retrieving the project log from the param, we're also going to get the DTO which is the execution execute query DTO.
9:13:289 hours, 13 minutes, 28 secondsThen we're going to return a simple line of code here by calling this SQL editor service query. We give it a log the project log and the DTO.SQL.
9:13:399 hours, 13 minutes, 39 secondsWe're going to have get which is /history and this is the get history method. The param is going to be used to retrieve the slug and we're also going
9:13:489 hours, 13 minutes, 48 secondsto make it of the param to retrieve the project slug. Now we're just going to return quickly over here by calling the SQL service.get
9:13:569 hours, 13 minutes, 56 secondshistory method. So we're going to return this SQL service.get history which is then going to take in the slug and also
9:14:059 hours, 14 minutes, 5 secondsgoing to take in the project slug. Now this is everything we need over here in the controller. We now need to create the module. So you're going to save this
9:14:149 hours, 14 minutes, 14 secondsfile and you come over here still inside the SQL editor we are going to have the SQL - editor.module.ts
9:14:239 hours, 14 minutes, 23 secondsfile. As we know module is used to group related code. So we're going to bring in module from NestJS4/.
9:14:319 hours, 14 minutes, 31 secondsWe're also going to bring in the SQL editor service.
9:14:359 hours, 14 minutes, 35 secondsThis service is going to come in from one level up where we have the SQL editor service file. And then we also
9:14:439 hours, 14 minutes, 43 secondsneed to bring in the SQL editor controller. So this is going to come from one level up the SQL editor
9:14:509 hours, 14 minutes, 50 secondscontroller like this. Now we need the O module. We import the O module from / the domodule.
9:15:009 hours, 15 minutesAnd we need the organization row guard.
9:15:039 hours, 15 minutes, 3 secondsSo this is going to come in from the O the guards and the organization row.gard.
9:15:099 hours, 15 minutes, 9 secondsLet's have the module decorator and in here we're going to have the imports array where we have the o module. We also have the providers array where
9:15:189 hours, 15 minutes, 18 secondswe're going to pass the SQL editor service and also the organization row guard. We also have the controllers where we're going to pass the SQL editor
9:15:279 hours, 15 minutes, 27 secondscontroller. And finally we can export the class. The class is the SQL editor module. We are exporting the class. That
9:15:359 hours, 15 minutes, 35 secondsmeans we need to import it into the application module. So open up your terminal here, your side drawer, your explorer, and you want to locate the
9:15:449 hours, 15 minutes, 44 secondsapplication module. So I'll collapse this and in here we need to bring in the SQL editor module like this. So do go on
9:15:549 hours, 15 minutes, 54 secondsand import this here and you can save this file. Now with this saved, we then need to work on the front end side of this SQL feature of our application.
9:16:059 hours, 16 minutes, 5 secondsNow, we're going to get started with the front end side of this application, this feature. So, I'm going to close all these tabs. And how do we locate this?
9:16:139 hours, 16 minutes, 13 secondsBecause currently, we have the home, the database, the off storage API real time, but we do not have a way to locate or go
9:16:229 hours, 16 minutes, 22 secondsover to the SQL feature. So, that means we need to update the project navigation items. So let's come here and let's come
9:16:329 hours, 16 minutes, 32 secondsover to the web and in the source we have the app the dashboard we have the layout over
9:16:409 hours, 16 minutes, 40 secondshere and this takes us to the application sidebar. So over here maybe just somewhere here. So let me come here
9:16:479 hours, 16 minutes, 47 secondsgo to the definition and if you come up here where we have the project navigation items. So we need
9:16:559 hours, 16 minutes, 55 secondsa new item for SQL. So you can just duplicate this. Bring this database down. The segment the path segment is
9:17:029 hours, 17 minutes, 2 secondsgoing to be SQL. And here the label is also going to be SQL.
9:17:089 hours, 17 minutes, 8 secondsSQL like this. Now for the icon we can make use of this terminal icon. So let's replace this terminal like this which
9:17:169 hours, 17 minutes, 16 secondswill coming from Lucid React. Maybe we can explicitly call it terminal icon. So let's save this. And now if you come
9:17:239 hours, 17 minutes, 23 secondsover here, you're going to have the path for SQL like this. So we give it a moment for it to refresh. And yeah, it's
9:17:319 hours, 17 minutes, 31 secondsdone. So now this is going to take us over to / application/organization,
9:17:389 hours, 17 minutes, 38 secondsthe organization ID, the project ID or the project log, and we have the SQL. So this is the organization log, the project log, and the SQL like this.
9:17:509 hours, 17 minutes, 50 secondsOkay, so this is where we want to be.
9:17:529 hours, 17 minutes, 52 secondsAnd the next step for us is to install the Monaco editor React. So I'm just going to open up my terminal and I will
9:18:009 hours, 18 minutesjust clear this for now. And I'll cd outside the API and into the web application and over there the command is pmppm add at monaco editor for/react.
9:18:139 hours, 18 minutes, 13 secondsOnce this installation is completed, the next step for us is to create our SQL editor feature on the front end, which is then going to have the SQL editor
9:18:229 hours, 18 minutes, 22 secondshelpers.ts file. Now, we're going to wait for this.
9:18:269 hours, 18 minutes, 26 secondsAnd it looks like it's completed already. But in the meantime, we can come over here and over here where we have the features folder, we need to
9:18:359 hours, 18 minutes, 35 secondscreate a new feature. So, we're going to create a new folder and this is going to be SQL editor like this.
9:18:429 hours, 18 minutes, 42 secondsNow the installation is complete. So what I'm going to do is to just clear this terminal window because we already have this terminal window running here.
9:18:519 hours, 18 minutes, 51 secondsSo I'll collapse this and I'll also get rid of this. And right in here in the features where we have the SQL I thought
9:19:009 hours, 19 minutesI created it here somewhere. So did I create it in the wrong path?
9:19:049 hours, 19 minutes, 4 secondsUh yeah. So here we have it the SQL editor. And here I'm going to create a new file. And this is then going to be the SQL editor helpers server.ts file.
9:19:149 hours, 19 minutes, 14 secondsSo we can have server actions that can help us to retrieve SQL history from API and things like that.
9:19:219 hours, 19 minutes, 21 secondsSo let's wire up the content of this file. We're going to be importing the redirect which will come from next next
9:19:289 hours, 19 minutes, 28 secondsnavigation. We're also going to import our API client which will come from at lib/exs.
9:19:349 hours, 19 minutes, 34 secondsWe're also going to bring in the retrieve token from cookie which is going to come from at server- utils for/uts and we also need the cookie keys.
9:19:459 hours, 19 minutes, 45 secondsThe cookie keys is going to come in from the superv/ constants and we also need the query history item which will come
9:19:549 hours, 19 minutes, 54 secondsfrom superv/ types. So this is a type import. Now we just have one function here which is the retrieve SQL history
9:20:039 hours, 20 minutes, 3 secondsfrom API. So we're exporting an async function called retrieve SQL history from API which needs the organization's
9:20:109 hours, 20 minutes, 10 secondslog of string and also the project log of type string. This is going to return a promise that is going to resolve to the query history item array.
9:20:239 hours, 20 minutes, 23 secondsSo over here let's get the token. It's going to be equals to our way to retrieve token from cookie. We are then going to have the try block so we can
9:20:319 hours, 20 minutes, 31 secondsget data and data is going to come by having a call to our API client.get get we are expecting the query history item
9:20:399 hours, 20 minutes, 39 secondsarray and the path is /organizations and then the organization log/ projects
9:20:469 hours, 20 minutes, 46 secondsthe project log/sql/history and then we're going to attach the header config here which is the cookie
9:20:539 hours, 20 minutes, 53 secondsobject and the value is the cookie keys access token is going to be equals to the token value and then if everything
9:21:019 hours, 21 minutes, 1 secondis done and good we are going to return this here the data but If we have an error, we're going to redirect the user
9:21:099 hours, 21 minutes, 9 secondsto /organizations/organization log and / projects.
9:21:159 hours, 21 minutes, 15 secondsNow, this is all we need to do to get started. We're going to give this a save and we'll take a moment when we return. We are going to be creating the page.
9:21:239 hours, 21 minutes, 23 secondsNow, as we always do, if you come over here, we are going to see the page is in the dashboard, organizations, the slog,
9:21:309 hours, 21 minutes, 30 secondsthe project log. We already have API and um database here. We are going to create a new folder which is the SQL
9:21:399 hours, 21 minutes, 39 secondsand inside here we are then going to create the page.tsx.
9:21:439 hours, 21 minutes, 43 secondsNow let's give this a moment and by the time we are back we're going to have some boiler plate code which is going to be inside our template for us to get
9:21:519 hours, 21 minutes, 51 secondsstarted with. So now we're going to have the page content. But before we do I just want us to see this template that I
9:21:589 hours, 21 minutes, 58 secondsintroduced. So let's come over here. If we take a look at the templates, we would see that we have a new template here, which is this SQL editor client
9:22:079 hours, 22 minutes, 7 secondstemplate. So, we want to copy this and we're going to make use of this here.
9:22:129 hours, 22 minutes, 12 secondsSo, we're going to put it right here in the features. Now, we have this here. I can just close the templates and we can just have a quick tour. When it's loading, we're going to show loading.
9:22:209 hours, 22 minutes, 20 secondsWe're making of the Monaco editor. We're having the dynamic imports over here. We have SSR set to false. We also have the
9:22:289 hours, 22 minutes, 28 secondsprops we're going to pass in from the page. And here we have some values that we set in state. And by default, this is
9:22:369 hours, 22 minutes, 36 secondsa default SQL that we display whenever we render the page. Now we have the use query over here which is then going to
9:22:449 hours, 22 minutes, 44 secondssend the result or a request to our back end the method post the headers credentials true and then we're going to
9:22:519 hours, 22 minutes, 51 secondsJSON or stringify the query. And here we have the query. And then it's going to check query to run. And then if that is true then we're going to use that
9:23:009 hours, 23 minutesotherwise we'll just use the SQL that we have by default. So this is the way it's working and then we're going to pass the actual SQL over here. So this is the
9:23:099 hours, 23 minutes, 9 secondsMonaco editor that we have here and you can see over here we're also setting the history with the previous state to this state and we spread the previous state.
9:23:179 hours, 23 minutes, 17 secondsWe're updating the local state. Okay. So this is what is going on here and um here we then have the JSX. So let's go on and build the content of this page.
9:23:289 hours, 23 minutes, 28 secondsNow this page is going to be importing the retrieve SQL history from API because we need to pass the history over
9:23:359 hours, 23 minutes, 35 secondsto the SQL editor client. And this is going to come from the SQL editor and the SQL editor server. So they help us.
9:23:449 hours, 23 minutes, 44 secondsAnd then we're also going to bring in the SQL editor client which is going to come from the features. And there we
9:23:519 hours, 23 minutes, 51 secondshave the SQL editor and the SQL editor client file.
9:23:579 hours, 23 minutes, 57 secondsNow we can export the default async function which we call SQL editor page.
9:24:029 hours, 24 minutes, 2 secondsNow this is going to take in the params which is this object. So the params and there's a promise that's going to have the slug which is this string and also the project log which is of type string.
9:24:149 hours, 24 minutes, 14 secondsNow we can go on to fetch the the slog and also the project log by awaiting params. Okay. So let's go on and get the
9:24:229 hours, 24 minutes, 22 secondshistory. The history is going to be equals to our way to retrieve SQL history from API which is going to need
9:24:299 hours, 24 minutes, 29 secondsa log and also the project log and then we can go to return the JSX. Finally this JSX [snorts] is going to have this div with a class
9:24:389 hours, 24 minutes, 38 secondsname of MX6 - 6 a margin top of minus 6. Same for the margin button. Flex is going to have
9:24:459 hours, 24 minutes, 45 secondsthis height just as we have for other pages. A mean height of zero, a flex score, and an overflow of hidden. And finally, we're going to display the SQL
9:24:549 hours, 24 minutes, 54 secondseditor client and want to pass the props. So, we pass the organization log.
9:24:589 hours, 24 minutes, 58 secondsWe also pass a project log. And we also pass the initial history, which is going to be equals to this history that we get
9:25:069 hours, 25 minutes, 6 secondsfrom the API helper. And finally, we can close the SQL editor client. And we can also close this div like this. So once
9:25:139 hours, 25 minutes, 13 secondswe go on to save this, we can then see this renders on the screen like this. Okay guys, so we're going to test this.
9:25:199 hours, 25 minutes, 19 secondsAs you can see, I've already gone on to test this and I noticed an error, which is going to mean we're just going to have a quick fix of the service file.
9:25:289 hours, 25 minutes, 28 secondsWe're going to just quickly fix the yeah the service file for the SQL service. So let's come over to the API and in the
9:25:379 hours, 25 minutes, 37 secondssource where we have the SQL editor. So here in the SQL editors service file, we're going to actually fix this. Okay,
9:25:469 hours, 25 minutes, 46 secondsso I'm going to get rid of everything that we do have here and let's quickly type out the fix. I'm going to be little bit fast about this. So let's go and
9:25:549 hours, 25 minutes, 54 secondsimport the bad request exception. We're also going to be importing injectable.
9:25:589 hours, 25 minutes, 58 secondsJust again, you should already have this import. So all this will come from NexJS common. Now we are going to be updating the import from diesel rm. So and
9:26:079 hours, 26 minutes, 7 secondsdescribe the des the descending equals SQL. So I think SQL is new.
9:26:139 hours, 26 minutes, 13 secondsWe're also going to bring in Drizzle service from the Drizzle service file.
9:26:179 hours, 26 minutes, 17 secondsAnd let's also import the projects from our database. We also need organizations, the query history which will come from DB schema. And we have
9:26:269 hours, 26 minutes, 26 secondsthe type. So the query results which will come from super votes types. Now the class as always going to marked as
9:26:339 hours, 26 minutes, 33 secondsinjectable. and we're going to export the class which will call the SQL editor service and in the constructor we're going to initialize DROM.
9:26:449 hours, 26 minutes, 44 secondsNow we're going to have this our checker over here. You should already have this the private assert save identifier. So
9:26:529 hours, 26 minutes, 52 secondsthis method which takes in the name and the label and then it's going to return void.
9:26:589 hours, 26 minutes, 58 secondsSo over here we have this rejects. If this reject is false based on the name, we're going to throw the invalid label
9:27:079 hours, 27 minutes, 7 secondsand name. Okay. So after this, we're going to then have the get project uh yeah the async function get project
9:27:169 hours, 27 minutes, 16 secondswhich is going to take the organization's log as well as the project's log. So we're going to be calling drizzle. I want to select um the
9:27:269 hours, 27 minutes, 26 secondsID as well as the so the ID which is the project ID. We also want to select the DB schema which is the project DB
9:27:359 hours, 27 minutes, 35 secondsschema. Now we're going to be selecting this from the projects table and we have the inner join which is
9:27:429 hours, 27 minutes, 42 secondsgoing to be the organizations and we also have equals the project.org id and organizations id. Now for the
9:27:509 hours, 27 minutes, 50 secondswear clause it's going to be where and then we're also going to have equals the organization. log the or log the equals
9:28:009 hours, 28 minutesthe organiz the project's log as well as the project's log here and we want to go on to limit this by one. Now if we do
9:28:079 hours, 28 minutes, 7 secondsnot have any row we're going to throw this new not found exception that the project was not found and we're going to
9:28:149 hours, 28 minutes, 14 secondsreturn the row like this. Now we're going to have the execute query function method which takes the organization's
9:28:239 hours, 28 minutes, 23 secondslog, the project's log and the query SQL. Now it's going to be returning a promise that is going to result to a query result.
9:28:349 hours, 28 minutes, 34 secondsOkay, so now we're going to have the project which is going to be this.get project. So we pass in the organizations log and the project log. We're going to
9:28:439 hours, 28 minutes, 43 secondsnormalize the query SQL by trimming and also covering to upper case. We're also going to have our validation so that we
9:28:519 hours, 28 minutes, 51 secondscan block it. So this is um operations we want to make sure we reject. And if it's a blocked operation, we want to
9:28:589 hours, 28 minutes, 58 secondsthrow a new bad request exception over here. Okay.
9:29:049 hours, 29 minutes, 4 secondsSo we check if it starts with this and then we're going to return throw a new by request exception. And then if everything is okay the next step now is
9:29:139 hours, 29 minutes, 13 secondsfor us to if everything is okay in terms of the operation we also going to assert the save identifier which is going to
9:29:219 hours, 29 minutes, 21 secondstake in the project the DB schema and the project schema. Now as always as we did before we are going to have the
9:29:289 hours, 29 minutes, 28 secondsstart and here this is the comment of the issue we had. So neon http is stateless. So we are making use of
9:29:359 hours, 29 minutes, 35 secondssearch path and it now has to be inside the same transaction as the user query or else we're going to have the error or
9:29:439 hours, 29 minutes, 43 secondsissues that I was actually running to before. So this is kind of how we fix it. So we're going to use this batch transaction here. We say const results
9:29:529 hours, 29 minutes, 52 secondsis going to be equal to await this.zo db andbatch.
9:29:579 hours, 29 minutes, 57 secondsWe're going to call this drezo db.execute. And now we're going to have the SQL.
9:30:049 hours, 30 minutes, 4 secondsWhere we set local search path and this is going to be the project db schema which we saw in not quite long.
9:30:129 hours, 30 minutes, 12 secondsAnd then we're going to call this db.execute where we pass in the SQL. And also the
9:30:199 hours, 30 minutes, 19 secondsquery SQL. Like this. Now we're going to have the execution time milliseconds and that is going to be the date now minus
9:30:269 hours, 30 minutes, 26 secondsthe start time. And then we can go on to um also have the query result. The query result is going to be the result the
9:30:349 hours, 30 minutes, 34 secondsquery result.length minus one. And the rows is going to be the rows.length. If it's greater than zero, we're going to
9:30:419 hours, 30 minutes, 41 secondsget um otherwise the empty array. Sorry, like this. That was for the columns. So the columns if the length is greater than zero, we're going to go with
9:30:499 hours, 30 minutes, 49 secondsobject.s. The first um result here otherwise an empty array.
9:30:559 hours, 30 minutes, 55 secondsNow the row count is going to be query result row count otherwise we go with the rows.length.
9:31:019 hours, 31 minutes, 1 secondNow finally we can await this db.insert and the into the query history we want
9:31:089 hours, 31 minutes, 8 secondsto insert the values. So the project ID the SQL the execution time milliseconds
9:31:159 hours, 31 minutes, 15 secondsas well as the row count. And then we are also going to have we're also going to have to return this
9:31:239 hours, 31 minutes, 23 secondsobject with the rows. We're also going to have the columns. We're also going to have the rows count. And we're also going to have the execution time. And we're also going to close this up here.
9:31:339 hours, 31 minutes, 33 secondsAnd in the catch block, if something goes wrong, we're just going to have the message, which is going to be the error.
9:31:399 hours, 31 minutes, 39 secondsWe're going to check if this is an instance of error. We're going to go with error message. Otherwise, we just say query failed. And then want to throw
9:31:479 hours, 31 minutes, 47 secondson bad request exception that then carries the message. All right. So now the last function we have here is the get history. Pretty much straightforward
9:31:559 hours, 31 minutes, 55 secondsis just to query the history from the history table. So we need the organization's log and the project log.
9:32:029 hours, 32 minutes, 2 secondsSo first we try to get the project by awaiting this.get project where we pass in the organization's log and the project's log.
9:32:119 hours, 32 minutes, 11 secondsThen we can return this. DB select from the query history table. We want to select where equals the query history.
9:32:239 hours, 32 minutes, 23 secondsProject ID matches the project ID. We also we also want to order in descending order. The query history created at and we're just going to limit this by 50.
9:32:369 hours, 32 minutes, 36 secondsOkay. So now this is the update that we have over here. I'm going to give this a save just like this. And now we can go on to test this. Okay. So I've already
9:32:449 hours, 32 minutes, 44 secondstested this out. I'm just going to refresh this like this so that we are good to go.
9:32:519 hours, 32 minutes, 51 secondsAll right. So, which operation do we start um start with first? First, let's verify that uh we're on the right schema. So, we're going to verify that
9:33:009 hours, 33 minutesin a moment. And um if we come over to SQL here, sorry, not to SQL. If we come over
9:33:079 hours, 33 minutes, 7 secondsto database, for one, we do not want to be on the public schema. So, let's check
9:33:139 hours, 33 minutes, 13 secondsusers. and users here we see the users table being returned here. So we see this and we can collapse this and it's
9:33:219 hours, 33 minutes, 21 secondsfine. So this is the user I have here and let's come over to the SQL editor and over here in the SQL editor we are
9:33:309 hours, 33 minutes, 30 secondsgoing to first let's verify where we are at. So we want to make sure that we are on the public. We are not uh we do not
9:33:389 hours, 33 minutes, 38 secondswant to be on the so we do not want to be on the public. So if you double check your neon, you see over here in the
9:33:469 hours, 33 minutes, 46 secondsproject. So this is a project. So I'll collapse this. You see your database schema. So this is the schema you want to be on. And this query helps us
9:33:549 hours, 33 minutes, 54 secondsvalidate that. So you want to run this query and you want to make sure that you get uh you're not getting the public back over here. So you want to make sure
9:34:039 hours, 34 minutes, 3 secondsyou get the schema which is cool. So once you on this schema, everything is going to work as expected. Now the first thing we can do is to get all the users.
9:34:129 hours, 34 minutes, 12 secondsSo all the project users and you can also test the history. Now this is fully responsive like this as we see over here. If you click on the history I've
9:34:219 hours, 34 minutes, 21 secondstested this quite a lot. So I have lots of history here but you should see your history over here working. Cool. So you can see I am just I just ran it again by
9:34:299 hours, 34 minutes, 29 secondsmistake and you're going to see the results printed over here. Cool. So let's go on and let's run more tests.
9:34:389 hours, 34 minutes, 38 secondsNow this time around I'm going to replace this with this. I want to select everything from the users table. We only have one user there on that on this
9:34:479 hours, 34 minutes, 47 secondsschema. So we should see this user printed here. So this is working as expected. Now we can also try this with
9:34:549 hours, 34 minutes, 54 secondslimit. We can also try to try with the count. So you can click here and send this. And if you hold control and hit enter here, it's also going to run the query. So that's the shortcut I used.
9:35:059 hours, 35 minutes, 5 secondsNow we're still going to see one because we do not have the limit over here. You can also run the count which is going to go on and um count the data that you
9:35:149 hours, 35 minutes, 14 secondshave inside the table. So in this case we have one. So we're going to see one row over here and also the time it took.
9:35:219 hours, 35 minutes, 21 secondsI work with users because I have users table. If you have another table here you want to work with that table. Now you can also do the same thing for
9:35:299 hours, 35 minutes, 29 secondsmembership. We can go on to select everything for membership. But we're not just limited to select operations. So if you select everything from membership
9:35:379 hours, 35 minutes, 37 secondsand you run this, you're going to see it's going to work as expected. Now let's go on and as you can see we have one membership here. Now let's go and
9:35:459 hours, 35 minutes, 45 secondsrun insert operation. And yeah, so I'm going to insert into the users table the a the email the name and the age and
9:35:549 hours, 35 minutes, 54 secondsthis is the value. So the default um previously is 10, but now I'm going to overrite this and say returning. And now
9:36:029 hours, 36 minutes, 2 secondsif we run this query, we are going to see the result printed out here.
9:36:079 hours, 36 minutes, 7 secondsAnd now we see the result printed out here. And guys, take a look at this. If you come back to the database and you see your database table, you're going to
9:36:159 hours, 36 minutes, 15 secondssee now this users is going to be populated with the user that we just filled over here. So you see, so this is
9:36:229 hours, 36 minutes, 22 secondsworking as expected. Now that this is working, we are going to go over to the next phase of using our application. I'm super super excited guys. Do let me know
9:36:319 hours, 36 minutes, 31 secondsif you experience any issues and we can take a look at it together. Okay. So while we are testing this, I did notice a bug in the users table. So over here I
9:36:419 hours, 36 minutes, 41 secondscreated a new user and so just waiting for this to load up. So I created this new user. I deleted the previous user.
9:36:509 hours, 36 minutes, 50 secondsSo I had an issue updating this user. So let's copy this or let's try to update this user. So, I'm going to come over
9:36:569 hours, 36 minutes, 56 secondshere and let's try to update this um Alice user that we have over here. So, I'm going to come here and update users.
9:37:069 hours, 37 minutes, 6 secondsI'm going to set the age to 26. So, remember the age was 30 and the email is at least two like this. And once we run this, this is not going to work as
9:37:159 hours, 37 minutes, 15 secondsexpected. So, we'll give this a moment for it to complete. And then we're going to see the result here. So, we see 26.
9:37:229 hours, 37 minutes, 22 secondsNow, it works. So the behavior is not really um consistent and if we try for 30. So we also update the age back to 30. Let's see if this works.
9:37:349 hours, 37 minutes, 34 secondsSo we'll give this a moment and the edge update. So I was having the
9:37:419 hours, 37 minutes, 41 secondsinconsistency with this but I'm not able to show this again the incon inconsistency we are facing. So maybe we're going to try to select all users. So we see 30.
9:37:529 hours, 37 minutes, 52 secondsYeah, actually the update uh I'm not sure if it worked or if we try to update it to 26 or 30, but now we see 30. So,
9:37:599 hours, 37 minutes, 59 secondslet's give this one trial. Let's fetch all the users so that we can try to replicate the error. We see here the user age is 30 and I'm going to try to
9:38:089 hours, 38 minutes, 8 secondsupdate the user age. So, there's at least two user here. So, I'm going to say at least two atample.com and I'm going to hit run. So, give this
9:38:169 hours, 38 minutes, 16 secondsa moment and let's see what happens here. If the age updates to 26. So we see 26 and let's come over here to verify in the database and if we come
9:38:259 hours, 38 minutes, 25 secondsover to users we see 26. So it looks like it's working. I'm not able to replicate it but I I had that experience. So since I had the
9:38:329 hours, 38 minutes, 32 secondsexperience I actually have a fix for the for it so it doesn't um surface again.
9:38:379 hours, 38 minutes, 37 secondsSo this is the SQL editor service ts file and over here where we have the template. Now I provided a template for
9:38:459 hours, 38 minutes, 45 secondsthe back end code. It's not something we usually do. So this over here and I'm going to copy this and use it over here.
9:38:539 hours, 38 minutes, 53 secondsSo let's update this and I'll just paste this in here. So we're going to see the change here. Now we have this error due to command and we
9:39:029 hours, 39 minutes, 2 secondsdo not have the command over here. So I'm going to save this and we're going to fix this in a moment. So this can easily be fixed. So let's come over to
9:39:109 hours, 39 minutes, 10 secondsthe types and the types is right here in our packages. So in the packages we have the types and we have the index here. So
9:39:189 hours, 39 minutes, 18 secondsover here where we have this for the SQL editor we want to add command here. Now command is going to be optional and command is going to be of type string.
9:39:279 hours, 39 minutes, 27 secondsSo we can go on and give this a save. Now we've done these two changes.
9:39:319 hours, 39 minutes, 31 secondsThere's another change that we need to make and that change needs to be here.
9:39:369 hours, 39 minutes, 36 secondsSo here where I provided the template and that is in the SQL editor. So you want to also take this. So let's copy
9:39:449 hours, 39 minutes, 44 secondsthis. And if you copy this for the first time, you already have the update. So you don't need to worry about the SQL
9:39:509 hours, 39 minutes, 50 secondseditor here. So we just need to come over to the source and we check the features. We check the SQL editor, the
9:39:589 hours, 39 minutes, 58 secondsSQL editor client. I'm going to bring in the update over here. So now we can give this a save. And that's pretty much all the changes that we needed to do. Okay.
9:40:109 hours, 40 minutes, 10 secondsSo now we can continue try testing this out. If we come back to the API, not the API actually, if we come over to the SQL
9:40:179 hours, 40 minutes, 17 secondseditor. Yeah. So, if we come over here, let's try to delete a user. So, I'm going to click on this and I'm going to try to delete the at least two user. And
9:40:269 hours, 40 minutes, 26 secondsI'll hit on run. And we should get the result that the user has been deleted.
9:40:309 hours, 40 minutes, 30 secondsSo, this is working as expected. We can use the terminal to create user. So, we see it works. The user has been deleted and this is working. Super super cool.
9:40:409 hours, 40 minutes, 40 secondsSo, that's pretty much it. We also have aggregates and certain. So now we've deleted a user. If we go and run this, we going to see all the users that we
9:40:489 hours, 40 minutes, 48 secondshave. For now, we just have only one user. So let's create a new user. We're going to create this Alice user again.
9:40:559 hours, 40 minutes, 55 secondsWe're going to hit run. And now the user should be right in here. Now let's also have aggregates and sorting. So we see
9:41:029 hours, 41 minutes, 2 secondsthe user has been created. We can verify by checking the history. And if we select everything from users again and
9:41:099 hours, 41 minutes, 9 secondswe run this, we are going to see the two users here. Now this user has age of 10.
9:41:159 hours, 41 minutes, 15 secondsThis has age of 25. So let's go and have aggregate and sorting. We should see this work. We're trying to select age count from users. So we can group by age
9:41:249 hours, 41 minutes, 24 secondsand also order by age. So we're going to run this query here and we're going to see the results printed out. So you see we get age and we get count. So this
9:41:339 hours, 41 minutes, 33 secondsuser now we returned only age. So you can see we are selecting age as counts here from the users table. So we want to
9:41:409 hours, 41 minutes, 40 secondsorder by group by age and also order by age. So we see age here and then we see the different counts which is pretty much cool. We also have sorting. So you
9:41:499 hours, 41 minutes, 49 secondswant to select the email the name and the age from the users table. So you can also have your wear clause where age is
9:41:569 hours, 41 minutes, 56 secondsnot null and you also want to order by descending order like this. So this is pretty much the possibilities that you
9:42:039 hours, 42 minutes, 3 secondshave um with your SQL editor. The beautiful things that you can go on to do. So now we see it works in descending order just as we prescribed. And you can
9:42:129 hours, 42 minutes, 12 secondsalso say ascending like this. And if you run this you're going to see the user with the age of 10 is going to be the first user and the second user with the
9:42:209 hours, 42 minutes, 20 secondsage of 25 is going to be here. So this is working super super cool. Now we can proceed over to the next step of building out our application.

Sync to video time
---

#nestjs #nextjs #typescript #supabase #opensource #fullstacktutorial #drizzleorm #neon #postgres #websockets #realtime #uploadthing #pnpm #monorepo #javascriptsdk #oauth #jwt #vercel #railway #shadcn #tailwindcss #backendaservice #saas #webdevelopment #codewithlari
