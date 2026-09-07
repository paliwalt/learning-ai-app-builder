https://www.youtube.com/watch?v=AQj4wT4K39M



Let's Build a Production-Ready Monitoring SaaS Like Datadog / Sentry (Part 1/2)
Becodemy
Becodemy
56.8k subscribers

Join


388


Share

Ask

Save

8,508 views  26 Jun 2026
In this series, we’re building a production-ready Application Monitoring SaaS from scratch — similar to platforms like Datadog or Sentry.

🔗 Useful Links
• Part 2:    • Let's Build a Production-Ready Monitoring ...  
• Brilliant: https://oneminute.run/brilliant
• Superhuman Mail: https://oneminute.run/superhuman
• TestSprite: https://oneminute.run/testsprite
• Clerk: https://oneminute.run/clerk-logs
• OneMinute Logs: https://oneminutelogs.com
• Project Starter Code: https://github.com/shahriarsajeeb/one...
• Source Code: https://www.becodemy.com/source-codes...

Throughout the project, I’ll explain not only how we build each feature, but also why we’re building it this way, what alternatives exist, and the trade-offs behind every technical decision.

In Part 1, we cover:

• System Design & Architecture
• Authentication
• Production-Ready API Key Management
•  High-Performance AuthGuard (Redis + Local LRU Cache)
• Database Design with PostgreSQL & Drizzle ORM
• ClickHouse for Log Storage
• High-Throughput Log Ingestion Architecture
• NATS JetStream Message Queue
• Server-Sent Events (SSE)

By the end of this series, you’ll understand not only how to build a monitoring platform, but also how modern backend systems are designed from the ground up.

Tech Stack
• NestJS
• Next JS
• PostgreSQL
• Drizzle ORM
• ClickHouse
• Redis
• NATS JetStream
• Docker
• TypeScript

📚 Timestamps
00:00 Introduction
01:05 Project Overview
10:00 System Design & Architecture
29:48 Authentication Setup
49:50 Production-Ready API Key Module
02:39:02 Building the AuthGuard
03:17:31 Infrastructure Setup
03:54:34 Building the OneMinute Logs SDK (Log Ingestion)
04:38:36 Log Storage Module
05:14:25 Real-Time Log Broadcasting
06:15:32 Live Logs & Dynamic Log Viewer
07:02:37 Wrap Up & Part 2 Preview

💙 Support the Channel
--------------------------------------------------------------------------------------
In this video


Chapters

Transcript
Search transcript
Search transcript

Chapter 1: Introduction
0:000 secondsHave you ever wondered what happens after your application goes live? You deploy your app, everything looks fine,
0:077 secondsusers start signing up, and then something breaks. But the problem is you have no idea what broke. Was it the
0:1515 secondsdatabase or was it an API? This is exactly why companies spend billions of dollars every year on monitoring
0:2323 secondsplatform tools like data do, Neurelik or Century. These tools help developers understand what's happening inside their
0:3131 secondsapplications in real time. They collect logs, track errors, monitor request, and alert you before things get out of
0:3939 secondscontrol. And today in this video, we're going to build our own production ready monitoring SAS platform from scratch. A
0:4747 secondsplatform which is capable of ingesting thousands of logs, streaming them in real time, searching them instantly,
0:5454 secondstracking usages, and sending alerts when something goes wrong. By the end of this video, we'll have a complete monitoring
1:011 minute, 1 secondplatform that looks and feels like a real SAS product. All right, welcome back to 1 minute locks. This is the
Chapter 2: Project Overview
1:091 minute, 9 secondslanding page of our application monitoring SAS tools and the name is one minute locks. But why the name is one
1:171 minute, 17 secondsminute locks? The name is one minute locks because the target of this monitoring tool says is that you can set
1:251 minute, 25 secondsup our platform under a minute. That's the main goal of these applications.
1:301 minute, 30 secondsThere are already so many application monitoring tools on the market such as data do or sentry and many more and most
1:391 minute, 39 secondsof them are actually targeting the advanced level projects or the advanced developers. And on the other hand, we
1:461 minute, 46 secondsare targeting the smallcale applications or the new startups who just want to track their applications without
1:541 minute, 54 secondsheadache. And you can easily understand that by watching our landing page. You can see this is the first section or the
2:022 minutes, 2 secondssecond section. It's not the first section. First one is hero. In the second section, we are saying why unmake
2:082 minutes, 8 secondslogs exist. So logging should not feel like a whole other job. Most div don't have time to babysit logging stack ELK
2:172 minutes, 17 secondsrandom dashboards or the YML jungles all just to answer one question and that is what went so if you're shipping fast or
2:262 minutes, 26 secondsif you're junior indie or side project or small team and you don't want to spend days wearing locks you just want errors request and latency in one place
2:362 minutes, 36 secondsinstantly and then for all of you one minute locks remove all the overhead drop in a small SDK Okay, deploy and your log start streaming under a minute.
2:462 minutes, 46 secondsNo servers, no cluster tuning or no 40page docs before anything works. So you can easily understand why we are
2:552 minutes, 55 secondsmaking on logs and whom we are targeting. After that which features we're having. So we are having the capture and store instantly. It's like
3:043 minutes, 4 secondsyou can store your logs instantly. And interestingly we're having a very high ingest capability. You can see 2 million
3:123 minutes, 12 secondsplus logs per minute. It means our platform is capable of handling more than 2 million logs within every minute.
3:213 minutes, 21 secondsSince we are a startup, this is definitely a very big number for us. And you can see less than 50 millisecond average search time, which is also
3:303 minutes, 30 secondsanother very good number. And after that, if you come back to here, we have live log stream like the log tail. You
3:383 minutes, 38 secondscan see in here the same you will basically get the live lock streaming.
3:423 minutes, 42 secondsYou don't have to wait for any like milliseconds. It's it's literally like the live streaming for your locks and
3:493 minutes, 49 secondssmart alerts and web hook very very important features. It's like when like let's say there are an X errors if it's
3:573 minutes, 57 secondscoming let's say more than 50 times or like set number then you can basically
4:044 minutes, 4 secondsgo to our dashboard and you can set some alerts that if this error is coming more than this number then send us an alert and we will basically send the alert
4:134 minutes, 13 secondsthrough the web hooks and that's why here smart alerts and web hook and this is the setup requirement you just have to install the package initialize the
4:224 minutes, 22 secondslogger like this and then start to sending logs. That's how much easy setting up one minute locks actually is.
4:294 minutes, 29 secondsNow these are some like reviews and some like our pricing which is also very like affordable and after that it's like get
4:394 minutes, 39 secondsstarted and view. So let's go back here and let's hit get started and let's sign up. All right, here you go. Sign up is
4:454 minutes, 45 secondsactually done right now. I can click here and you can see dashboard bill link settings and support. So, I'm hitting this dashboard button from here. It's
4:544 minutes, 54 secondstaking me to another tab. And here you go. This is the dashboard. It's currently looking completely empty
5:025 minutes, 2 secondsbecause we don't have any data yet. This is a very new account. Definitely there's not going to be any data. Here
5:095 minutes, 9 secondsyou can see the last 24 hours logs. Your error rate in that logs. Ingest rate. So
5:165 minutes, 16 secondsingest rate is basically like how much logs we're ingesting in every seconds active alerts like your alerts when
5:235 minutes, 23 secondsyou're having some alerts you'll be able to see the number in here the average latency of storing the logs the Q backlog the amount of logs currently
5:325 minutes, 32 secondslike in your message broker so you'll probably not understand all the cards in here but don't worry I will explain it
5:395 minutes, 39 secondsmore clearly in the system design part and in this top sources it's like the source of your logs the error trend like
5:475 minutes, 47 secondsit's on chart. Same for the logs of our time. This is the top activity from the last 24 hours and this is like our internal service like the inest service,
5:565 minutes, 56 secondsalerting service, the database and public API. And these are like the recent alerts. This is the live logs.
6:026 minutes, 2 secondsNow you're probably going to think why we are having here some data. We're having some data because when I was testing this application, I already
6:106 minutes, 10 secondsadded this data. I can show you how I was testing it. You have to go something like this on 3001/AP/
6:176 minutes, 17 secondstest. And here you go. You can see user ABC logged in and it's instantly in here without any reload because it's fully
6:246 minutes, 24 secondsreal time. Now how it's working? It's working because in our API test and route.ts you can see in our project here
6:326 minutes, 32 secondswe added on get endpoint and we're saying logger.info and send this message that user ABC logged in. just for
6:406 minutes, 40 secondstesting purpose so that we can test it perfectly from here and after that from here we can basically run some queries.
6:476 minutes, 47 secondsLet's say you want to filter out only the type error and you can hit run query. You can see we're having all the errors in here. We can again clear the
6:556 minutes, 55 secondsquery. So you can write like your app name or type or anything like for queries. It's just like an statement for finding out some data from your blocks.
7:057 minutes, 5 secondsAnd then this is the alerting system. We can basically create a new alert from here. These are the integration. You can set up it with NexJS, ExpressJS, NestJS
7:147 minutes, 14 secondsis actually working. It's saying coming soon, but it will work at the end of this video series. And API keys. This is another important part. By using this
7:227 minutes, 22 secondsAPI keys, you can set up our application inside your project and you must need this API keys. And after that we have settings in here like you can change
7:317 minutes, 31 secondsyour billing plan and like the project project setting account account and security and the danger zone like for deleting the account and that's all it
7:407 minutes, 40 secondslooks very small on the front end side because the SAS itself is application monitoring tools. So the maximum amount of work is actually in the back end like
7:497 minutes, 49 secondswe need to have a proper injection setup. We have to work with event-driven architecture and so many things. And I'm super excited to show you how we're
7:577 minutes, 57 secondsgoing to make this application and how the real world application monitoring tools says actually work under the hood.
8:038 minutes, 3 secondsSo this was the short demo. I definitely don't want to waste a lot of time by showing up the project. I want to give the time for building the project. But
8:128 minutes, 12 secondsbefore starting to coding, you should definitely understand how this application is actually working behind the scene like with a system design
8:208 minutes, 20 secondspattern. So the next module is going to be the system design for this application. So let's start it. But before starting the system design
8:298 minutes, 29 secondsmodule, one thing I would like to let you know, we everyone know that AI has changed how we work in almost every area of software engineering. Now we use AI
8:388 minutes, 38 secondsto write code, review code, and automate most of our repetitive tasks. But when it comes to email, most people are still
8:468 minutes, 46 secondsdoing everything manually. And that's a problem because work doesn't stop when you leave your desk. Email follows you everywhere. Whether you are traveling,
8:558 minutes, 55 secondsworking from a coffee shop, or taking a few days off, your inbox keeps growing.
8:598 minutes, 59 secondsThat's one of the reasons I recently started to using superhuman mail.
9:039 minutes, 3 secondsSuperhuman mail is a part of the superhuman productivity suite and it helps remove a lot of friction that
9:109 minutes, 10 secondsnormally comes with managing email. For example, instead of manually digging through old conversations, I can use Ask
9:189 minutes, 18 secondsAI to quickly find informations from my inbox, it can also help with things like scheduling meetings, checking calendars
9:259 minutes, 25 secondsavailability, and keeping track of important conversations without spending time searching through everything myself. Another feature I like is write
9:349 minutes, 34 secondswith voice. I can describe what I want to say in my own style and tone. And Superhuman Mail turns it into a polished
9:419 minutes, 41 secondsemail draft that's ready to review and send. What I like most is that it helps me spend less time managing email and
9:489 minutes, 48 secondsmore time focusing on actual work. If you'd like to try it by yourself, just head over to superhum.com/picodme and you will get an online free trial.
9:579 minutes, 57 secondsNow, let's back to building one locks.
Chapter 3: System Design & Architecture
10:0010 minutesAll right. In this part of this video, I'm going to talk about the system design for one minute locks. Yeah, it's very very important for you to
10:0810 minutes, 8 secondsunderstand the system design before starting the application because otherwise at the end of this video or in the middle of this video, you'll feel
10:1510 minutes, 15 secondslike what the hell you are doing and where actually you will end up like in the video like sorry not the video how you will end up the application. What's the like main goal for this application?
10:2710 minutes, 27 secondsSo first of all you have to understand that we are not making it for users.
10:3310 minutes, 33 secondsYeah it's different like let's say if you're thinking about an application which based on users like an e-commerce
10:4010 minutes, 40 secondsapplication or a tech platforms all of them are for users but one minute logs it's not for users it's for application
10:5010 minutes, 50 secondsso it's for your application. So logically you are our user. No, it's not true. Your application is our user or
10:5810 minutes, 58 secondslike the client we can say for for our this project. So your application is like our users we can say when but the
11:0911 minutes, 9 secondsquestion is how you are using it inside your application. How you are going to use one minute locks inside your application? You're going to use one
11:1611 minutes, 16 secondsminute locks SDK which is something like an npm package you can say.
11:2311 minutes, 23 secondsNow the the question is when you're using the one minute locks SDK what is the goal of this npm library? You can
11:3011 minutes, 30 secondsalready like see it on the name it's 1 minute meanings you can set up logs under a minute. So in this SDK our main
11:3911 minutes, 39 secondsgoal is going to be or not only in SDK in this full application our main goal is to be that you can set up this
11:4711 minutes, 47 secondsapplication under a minute and that's why the name is one minute locks otherwise there is already like data dog
11:5411 minutes, 54 secondsthere is already so many big companies like u like I was explaining I was giving example in the intro partert there is data dog there is centry there
12:0212 minutes, 2 secondsare so many applications on the market but our target is different. We are like offering that you can set up this
12:1012 minutes, 10 secondslogging applications under a minute but definitely it's not an easy task which completely makes sense because logging
12:1612 minutes, 16 secondsis not a simple thing but my point is yeah it's not a simple thing but we can make it simple we can make it simple we
12:2612 minutes, 26 secondscan make it complex also it depends on your application for a small application for an early stage SAS definitely they
12:3512 minutes, 35 secondsdon't need to create or write like on schema for setting up their logging mechanism. They don't want they probably
12:4212 minutes, 42 secondsjust want to like track info errors and warning. That's all they want. They don't want to write like a complicated
12:5012 minutes, 50 secondsschema and set up it just read the documentation waste a let's say full day for setting up on logging application. They don't
12:5812 minutes, 58 secondswant it and that's where one minute logs will work. Now inside this SDK you can see we will have some methods that's why
13:0613 minutes, 6 secondslike info error or warning you can just say like uh logs do info and you can import logs from one minute locks SDK
13:1513 minutes, 15 secondsand you can just write your message and any other properties if you're having you can just add that and then we will
13:2213 minutes, 22 secondssend that to our injection API. Now why injection API and what is the meaning of this injection API? It could be also
13:3013 minutes, 30 secondsrest API or it could be also middleware because the first stage definitely should be the middleware and logically
13:3813 minutes, 38 secondsour first stage is still middleware or the guard but then why I'm saying here injection
13:4513 minutes, 45 secondsthe reason behind it we are actually following here on injection mechanism what is the meaning of injection mechanism we're following here on
13:5413 minutes, 54 secondseventdriven architecture what's the reason because think about it since application is our like user. It can
14:0214 minutes, 2 secondshappen that we're having 10 or 20 applications. I'm saying a small number.
14:0714 minutes, 7 secondsLet's say 100 or 500 applications. They are using on minute locks in their application. And when they are having
14:1514 minutes, 15 secondsusers, let's say they are having for an example, let's say 1,000 users on average, they're having 1,000 users on
14:2314 minutes, 23 secondsaverage. and 50 or like 500 then it meanings like uh probably 50,000 or more
14:3014 minutes, 30 secondsthan that users request are coming to our API because when their users are doing something those requests are
14:3914 minutes, 39 secondscoming into our one minute locks SDK through our API it means our API must need to be highly scalable because it's
14:4814 minutes, 48 secondsreceiving a lot of pressure and the interesting thing is that 1 minute log one minute logs can easily handle millions of logs within every minute.
14:5914 minutes, 59 secondsYet it's that much powerful. It can easily handle more than millions of logs. But how is that even possible?
15:0615 minutes, 6 secondsIt's not an easy thing that it can easily like handle millions of logs. We definitely have to follow some pattern
15:1215 minutes, 12 secondsbecause on highly scalable application there are so many things which are hidden until you are publishing or
15:2015 minutes, 20 secondslaunching the application. I'll explain that one by one like the hidden things which you will never know without like
15:2815 minutes, 28 secondsmaking the application live. You will never realize that it can happen your in your application when you're going to
15:3515 minutes, 35 secondslive it or after making it live. All right. Now let's come back to here. Uh I couldn't I still didn't finish the
15:4315 minutes, 43 secondsinjection API. So injection API meanings it's basically sending the request to masses broker. Okay. First it's sending
15:5015 minutes, 50 secondsrequest to here uh to our og guard which is basically like a middleware before our like API endpoint. The guard is
15:5915 minutes, 59 secondsbasically validating your API key very quickly and checking your project access and also checking the users limit which
16:0716 minutes, 7 secondsis very important because end of the day we are still a SAS so we have to track your uses and it must needs to be within
16:1616 minutes, 16 secondsa very short time otherwise we never can process millions of logs within a minutes and for that's why we're using
16:2316 minutes, 23 secondshere some caching mechanism you can see fast validation cache we're using here local l audio cache and radius cache.
16:3016 minutes, 30 secondsWith that caching mechanism, we can almost verify your request within a 0 to 1 milliseconds latency. So we can verify
16:3816 minutes, 38 secondsyour request within a very very short time. If the cache is miss like for not non-active application it can happen
16:4616 minutes, 46 secondsthen we are checking it from postql which is like the source of truth for our data or like the main database. And
16:5316 minutes, 53 secondsin that case like we're taking it from our postgrad school database and we're refreshing the sync we're updating our cache again so that second time we can
17:0217 minutes, 2 secondslike provide the data from to our cache and definitely in our cache we need to work with the latency because inside
17:0917 minutes, 9 secondscache you cannot store all the data because there is definitely a limitation for storing data into caching mechanism
17:1617 minutes, 16 secondsand that's where most of the beginners like do mistake some of them they like don't store the important data into
17:2417 minutes, 24 secondscaching mechanism and like some of them do the opposite they store everything inside caching mechanism and end of that
17:3117 minutes, 31 secondsthey like the radius or the cache just like crash somehow and it's a very like simple problem not simple problem it's a
17:3917 minutes, 39 secondsvery common mistake but there are some mechanism which you can follow to like get rid of these problems now here you
17:4717 minutes, 47 secondscan see we also have an alerting engine which is the most important part of our application because when there is let's
17:5417 minutes, 54 secondssay something wrong that's why you're using like our platform right when let's say there is uh 50 weird error from your
18:0318 minutes, 3 secondsback end if there is like more than 50 errors from that same thing then you can like set up on logic inside our
18:1118 minutes, 11 secondsdashboard that yeah there when there is this error for more than 50 times then send us an alert and the alert will be
18:2018 minutes, 20 secondsbasically go with an wave web hook request. So you can set up a web request inside your application. We will send you an post request that yes something
18:2918 minutes, 29 secondsis wrong. Please check it out what's wrong inside our application. We will show you the live logs which I'm uh which I'm coming after some time. Now
18:3818 minutes, 38 secondshere after the ogurt I explained it how we're going to validating the API key the project access and the users limit.
18:4418 minutes, 44 secondsNext step is net jetream. Net jet jetstream is the masses broker. Now why
18:5218 minutes, 52 secondsmessage broker? Because the amount of logs that's a lot we cannot process that
18:5918 minutes, 59 secondswithin a very short time by using our rest API. It will usually crash. That's why the rest API for ourself we still we
19:0819 minutes, 8 secondsare having a rest API but that's going to act like a message broker producer.
19:1419 minutes, 14 secondsSo the task for the API endpoint is receive the event. Yeah, this locks this
19:2119 minutes, 21 secondslike info error or warning. We're going to count that as events. So we are basically our API endpoint is going to
19:2919 minutes, 29 secondsreceive the events after passing the middleware or the guards and that will forward that event to this net jetstream
19:3719 minutes, 37 secondsconsumer. Now what is consumer? Consumer meanings the message broker like which is going to process the event that's
19:4619 minutes, 46 secondscalled the consumer or the processing layer. Here you can see we're using net state stream because it's high throughput and durable queue. We can
19:5619 minutes, 56 secondsreplay the cube. There is a very very important thing you have to understand like most of the people usually don't
20:0420 minutes, 4 secondsunderstand until they're going to the production and that is called uh sorry I forgot the name let me remember the name just a minute uh it's called ID
20:1320 minutes, 13 secondsimportant problem yeah so ID important meanings when you are sending a data let's say you're we are having every
20:2220 minutes, 22 secondssecond 1,000 request since the request 1,000 is not a small number it can happens sometimes we are processing on
20:3020 minutes, 30 secondsevent for twice. Definitely that's a bad thing because let's say your users are getting one error but somehow our
20:3820 minutes, 38 secondsapplication is processing that for twice so it's like getting stored at twice which is a wrong thing. So for solving
20:4720 minutes, 47 secondsthat problem we can like in here where in in netjet stream we have like acknowledgement or like the important uh
20:5520 minutes, 55 secondschecking solution which we can like add an filter and we can check it that is it already processed or not and on highly
21:0321 minutes, 3 secondsscale it's very very critical to like filter it within a very short time because that's a like big amount of logs but we will do that and I'll show you in
21:1221 minutes, 12 secondsthe video that how can we do that after that we're having the log log workers which I was explaining the consume process and batch but this is a little
21:2021 minutes, 20 secondsdifferent inside our consumer we cannot like store the logs every second
21:2721 minutes, 27 secondsdefinitely it's going to crash which is completely normal because on every second let's say there are 10,000 request we cannot store all of that
21:3521 minutes, 35 secondsbecause definitely the database throughput it is not that much high that's why we're following here on batch
21:4421 minutes, 44 secondsinsert after a certain time. So the logic is something like this. In this consumer, we're storing our logs for 5
21:5221 minutes, 52 secondsseconds. All the logs and after every 5 seconds, our log workers is going to
21:5921 minutes, 59 secondsstore the logs into click house. Now what is click house? Why click house?
22:0522 minutes, 5 secondsWe're using we could use here postql, and there are so many database in the world, right? But click house is
22:1322 minutes, 13 secondsdifferent. And the interesting thing is Clickhouse is used by companies like uh Cloudflare, Netflix
22:2122 minutes, 21 secondslike these type of big companies. They also use Clickhouse under like inside their infrastructure. But why? Because
22:2822 minutes, 28 secondsClickhouse is not like a traditional database. In Clickhouse, people usually store the bulk data or high volume data.
22:3722 minutes, 37 secondsThat's how they made Clickhouse. Inside Click House, inserting data is very fast. You can insert data very fast and
22:4722 minutes, 47 secondsit made for things like Google Map or Google Analytics or this type of critical thing where you need to store a
22:5422 minutes, 54 secondslot of data and it's fast injection. You can see fast injection and powerful queries also. So even though I I added
23:0323 minutes, 3 secondshere powerful queries still it's definitely slower than like the traditional database and that's why that's why we are having here SSE
23:1223 minutes, 12 secondsgateway. What's that? I'm explaining after some time. So basically we are using here click house because it built
23:1823 minutes, 18 secondsfor storing logs. Now you might be thinking or you you can ask me a question like then why people going to
23:2623 minutes, 26 secondsuse one minute locks? They could also use click house for storing their logs.
23:3023 minutes, 30 secondsDefinitely they can and big companies they use it they use click house for storing logs but working with click
23:3823 minutes, 38 secondshouse it's definitely not easy you have to create schema you have to understand the click house mechanism then only you
23:4623 minutes, 46 secondscan work with it and most of the early stage SAS they definitely don't have time for like work with their logging
23:5423 minutes, 54 secondsmechanism for let's say one week they definitely don't have time like that that's Why? They're going to use one locks because it's making their lives
24:0324 minutes, 3 secondseasier and it's not expensive. End of the day, Clickhouse is not free. You're you're probably going to think, yeah,
24:1024 minutes, 10 secondsit's open source. Yeah, it's open source, but you have to store it somewhere, right? You have to host the database to somewhere and that's where
24:1824 minutes, 18 secondsthe money is going to cost because you have to store sorry you have to host this database let's say to any server and click house always requires a good
24:2824 minutes, 28 secondsRAM and good processing power so you're going to like spend around $30 or $40 every month but your application is
24:3624 minutes, 36 secondsstill let's say the basic level you don't need that much computing power you don't need that so definitely then you should use on network logs because it's cheaper for
24:4424 minutes, 44 secondsYeah, it's actually cheaper for you for us. Then how we are doing it? Because we're doing it on a high volume. That's
24:5124 minutes, 51 secondswhy our cost is less than yours because you're just a new early stage SAS. But for us, we're doing business with this.
25:0025 minutesSo that's why our expansion expenses is definitely less than yours. Yeah, that's why we're basically using click. Now for
25:0925 minutes, 9 secondsClickhouse, fine, we're using it. Now we need on query API to show you the logs.
25:1325 minutes, 13 secondsAnd another important like the log tails like what you usually see like always like coming up the logs those are real
25:2125 minutes, 21 secondstime logs and how then we are doing it we're storing the logs in here and we are sending that through this SSE
25:2925 minutes, 29 secondsgateway s SSE meanings server side events I guess server uh server send
25:3625 minutes, 36 secondsevent not server side events server send events it's something similar like uh
25:4425 minutes, 44 secondssomething similar like the like what we say web hooks no not web hooks it's like we use in the messaging app I really
25:5225 minutes, 52 secondsforget this type of things websocket sorry I really forgot the word so we already used websocket in so many of our
25:5925 minutes, 59 secondsapplications right in like in the past tutorial series but there is different between websocket and s there's a very
26:0626 minutes, 6 secondsbig difference websocket is made for multiple layer communication Meanings from the front end you can send data to
26:1526 minutes, 15 secondsthe websocket server and from the server you can again send data to the front end like two way or multiple way
26:2326 minutes, 23 secondscommunications the websocket network is going to have but on the other hand server send events it cannot receive
26:3126 minutes, 31 secondsdata from front end it just oneway realtime data it meanings from the back end it just going to stream the data it
26:4026 minutes, 40 secondscannot receive anything from the front end that's the major difference in SACE otherwise almost everything is same but
26:4726 minutes, 47 secondsthat's the major difference that's why when you are storing the data when we are storing the data in click house
26:5526 minutes, 55 secondsinstantly after that we're forwarding that same data again we're forwarding we're not we're not fetching it from
27:0227 minutes, 2 secondsclick house that's why it's real time and zero latency we are forwarding from here actually not zero latency because
27:1027 minutes, 10 secondstill end of the day this is hosted to let's say another server and from that server to the front end application it's
27:1727 minutes, 17 secondsgoing so there is still a little latency but definitely it's not a big number it's definitely going to be very fast so
27:2627 minutes, 26 secondswe are basically forwarding those logs from this workers to this sec gateway that's why our one net logs dashboard is
27:3427 minutes, 34 secondsvery highly real time that's why we can make it real time for the query API yeah that time we're basically like querying
27:4227 minutes, 42 secondsfrom a click house because you're adding some filters into query that's why so that's how our one minute log dashboard
27:5027 minutes, 50 secondsis going to work so this was the simple system design I was trying my best to add all the
27:5827 minutes, 58 secondspoints in here still I don't know probably I added let's say 95% or almost all points in here and I hope you
28:0728 minutes, 7 secondsunderstand everything in this chapter If you're having any question, feel free to ask me in the comment section. I'll definitely I would love to clear your confusion. So yeah, this was the part.
28:1828 minutes, 18 secondsSee you in the next one. You probably didn't understand every part of the system design. And honestly, that's completely normal. Building systems like
28:2628 minutes, 26 secondsone minute locks requires understanding a lot of difficult concepts. Things like caching strategies, distributed systems,
28:3428 minutes, 34 secondsmasses cues, and system design are not hard because the code is complicated.
28:3928 minutes, 39 secondsThey are hard because it's often difficult to build the right mental model and that's actually one of the reason I've been recommending Brilliant
28:4628 minutes, 46 secondsfor years. I like how they teach difficult concept through interactive problem solving instead of pure memorization. And recently they
28:5428 minutes, 54 secondsintroduced something new that caught my attention. It's brilliant new tutor.
28:5928 minutes, 59 secondsInstead of just watching another tutorial or reading documentation, the tutor sits right alongside you while you are learning. It can see what you are
29:0729 minutes, 7 secondsworking on as guiding questions, draw diagrams, and help you understand concepts step by step. What I like most is that it doesn't just give you
29:1629 minutes, 16 secondsanswers, it helps you figure things out by yourself. For example, if you're learning algorithms, probability, programming fundamentals, or even system
29:2529 minutes, 25 secondsdesign concepts like the ones we're discussing in this video, it feels much closer to having a personal tutor than
29:3229 minutes, 32 secondssimply following a course. If you'd like to try Brilliant's new tutor for yourself, head over to brilliant.org/pademmy.
29:3929 minutes, 39 secondsYou'll be able to try it for free for the first month and you'll also get 20% off an annual subscription. That's it.
29:4629 minutes, 46 secondsNow we can let's back to building 1 minute locks. All right. From this part, we're going to start to coding right now. At first, we have to set up the
Chapter 4: Authentication Setup
29:5529 minutes, 55 secondsauthentication mechanism. Now, first of all, I want to explain you a few things.
30:0030 minutesWhy authentication? Because authentication is should be the like entry point for our application and it's the most important thing for our
30:0830 minutes, 8 secondsapplication. It's like it must need to be highly secured. And for the authentication I'm going to use a third party platform and it's called clerk.
30:1930 minutes, 19 secondsRight now I know you will ask me a lot of questions because in my last video I I I saw a lot of comments that why I'm using clerk, why I'm not making the authentication mechanism by myself.
30:3030 minutes, 30 secondsClerk is like making you vendor lock and so many comments. Now I'm going to answer you all of those questions. First
30:3830 minutes, 38 secondsof all, why clerk? And before answering that, why actually third party authentication library? Why we're not
30:4630 minutes, 46 secondsmaking it by ourself? So authentication is it's not just a very small or simple thing like you were just making the
30:5430 minutes, 54 secondsauthentication. Let's say the social authentication, you are just verifying the token. and just letting the user to log in. It's it's not that much simple.
31:0431 minutes, 4 secondsYeah, if you are making it that much simple, fine. But it's not highly secure. If you want to make a highly
31:1131 minutes, 11 secondssecure authentication mechanism, you have to spend a very long time only for making the authentication.
31:1931 minutes, 19 secondsAnd for any SAS like this, for early stage SAS, you never should waste time like that for making the authentication
31:2731 minutes, 27 secondslayer. Why? Because in that time you can focus on the other part of your application and that's why we can use
31:3731 minutes, 37 secondsthird party layer or third party provider especially for the authentication. Now there are some questions like when you are using third
31:4531 minutes, 45 secondsparty applications definitely it's not going to be free makes sense but even when you are making it it's still not
31:5231 minutes, 52 secondsfree. you are giving your time and that's where the things actually comes in because for SAS it's more important
32:0032 minuteshow much fast you are launching your product that's very important so for the
32:0732 minutes, 7 secondsauthentication it's nothing wrong to use on third party library especially for the MVP layer or for the first few
32:1432 minutes, 14 secondsversion because later on definitely you can like check it I mean sorry you can change it back to your authentication an
32:2332 minutes, 23 secondsinternal mechanism right you can make it by yourself but at the first time you never should do it you never should waste time for something like this now
32:3132 minutes, 31 secondswhy clerk there are so many options but clerk is one of the most famous authentication provider and I would say
32:3832 minutes, 38 secondsnot famous I'd say the trust worthy authentication provider you can see companies like inest or even open router
32:4632 minutes, 46 secondsor as I know like there are some big more famous companies they're using clerk inside their application even like
32:5332 minutes, 53 secondscompanies like upstach. So the reason is clerk is easy to set up. Clerk is
33:0033 minutestrusty. You can use clerk easily. You can set up it like within a very short time and the pricing is not crazy. I
33:0933 minutes, 9 secondsmean when you are starting a s definitely you're not having a lot of active users. You can see 50,000 active users limit free. When you are having
33:1833 minutes, 18 seconds50,000 users, it means definitely you're not an early stage SAS. You're at least earning some money and then you can
33:2533 minutes, 25 secondschange to pro or even you can like download your data and you can like change it. There is another famous or I
33:3333 minutes, 33 secondswould not say famous there is a very like everyone say this that clerk or this type of platform they're going to
33:3933 minutes, 39 secondsvendor lock you in reality it's not true like that. If we talk about vendor locking the same thing we're also doing
33:4833 minutes, 48 secondsone minute lock is also doing the same thing when you're implementing this application inside your infrastructure you cannot change it within one day
33:5733 minutes, 57 secondsbecause you added this everywhere inside your API gateway and everywhere you cannot change it like overnight same
34:0534 minutes, 5 secondsthing for clerk but at the same time it doesn't mean it's impossible definitely you can download back your data and you
34:1334 minutes, 13 secondscan again like store that data into your database. You can convert that to the format you want. Everything is possible.
34:2134 minutes, 21 secondsSame for one minute locks. You can also export data and you can like change it to another application. It's possible
34:2834 minutes, 28 secondsbut it requires time and this type of SAS we are not like targeting or even
34:3534 minutes, 35 secondsone minute locks itself. We're not targeting the enterprise applications.
34:4034 minutes, 40 secondsThe enterprise business we're not targeting them. They have money, they have engineers, they can do whatever they want. But for for for the early
34:4834 minutes, 48 secondsstage SAS definitely they're they don't have the money or that so many team members. So they should focus more on
34:5734 minutes, 57 secondsspeeding the application or speeding up the service like for one minute locks what we're doing or not just like saying
35:0535 minutes, 5 secondsthat hey you can store log by using our application. There are so many application like that like data do entry they're also doing the same thing we're
35:1235 minutes, 12 secondssaying you can set up it under a minute and that's what we are selling our selling point is ease of usees same for
35:2235 minutes, 22 secondsclark they're also doing the same thing so when you are like setting up authentication under a minute definitely you have to sacrifice few things same
35:3035 minutes, 30 secondslike in one minute locks so that was about clear confusion if you still have any confusion let me know in the comment section I'll definitely I'd love to
35:3835 minutes, 38 secondsshare it with you but don't say it like that why I'm using clerk again and again because it's easy to use and for the MVB
35:4635 minutes, 46 secondsversion it's actually makes sense. Now for going to clerk you should go to the link you're currently watching on the
35:5435 minutes, 54 secondslike screen or you can also go to 1 minute.run/cler run/clerk logs like this and it will redirect you to the
36:0136 minutes, 1 secondappropriate page where you have to right now go from here you can like create an account if you're for the first time and
36:0936 minutes, 9 secondsif you have an account then you can hit sign in and do the login from here and here you go after doing login or
36:1836 minutes, 18 secondscreating your account for the first time you can click this create application or if you're for the first time it will not take you here it will ask you for
36:2636 minutes, 26 secondscreating an application something like this and for your application name we can say 1 minute logs and for the
36:3536 minutes, 35 secondsauthentication we can set up email and Google and that's all that's good for us we don't need anything else uh
36:4336 minutes, 43 secondsorganization we can create it like sometimes we probably need this since we're making
36:5036 minutes, 50 secondslike logging mechanism application we should add the billing we can definitely add we and like add some subscription in
36:5736 minutes, 57 secondshere and it's easy to like work with clerk like with the subscription so we can add it and you can see define and
37:0537 minutes, 5 secondsmanage plans and subscription in clerk no additional fees required so you don't have to pay any extra additional fees it just like you're using stripe it's kind
37:1437 minutes, 14 secondsof same but it's more easy to set up so we can definitely use the billing from here and we can click this create
37:2037 minutes, 20 secondsapplication button from here after that it's going to create our application This is inside. We're inside development
37:2837 minutes, 28 secondsmode. And it's giving us an installation prompt for our AI, but we don't need to use AI. Yeah, because I'm not going to
37:3737 minutes, 37 secondsuse AI for this because it's very easy to set up. And I know how to do it. So, I'm just showing you what to do. Just
37:4437 minutes, 44 secondscopy this comment. Come back to our project again. Open a new terminal. We
37:5137 minutes, 51 secondshave to go to our apps and the landing page here. Let's install cleric nextjs
38:0138 minutes, 1 secondthis library. And after this we have to copy this. Let's come back here again.
38:1138 minutes, 11 secondsAnd in our enenv in landing page env you can see we're already having on
38:1938 minutes, 19 secondscleric uh publishable key and cler secret key.
38:2538 minutes, 25 secondsYeah, which was definitely the older one. We need the new one.
38:3438 minutes, 34 secondsAll right. All ready. Now what we have to do? We have to come back here again.
38:4038 minutes, 40 secondsThis is ready. We don't need any cleric middleware for now. So we can come back here. We we just need
38:4838 minutes, 48 secondsto import the cleric provider and show sign in button and everything. But we don't need that. So let's copy the suggestion and let's come back here.
39:0039 minutesLet's import it. Uh sorry I already set up clerk in here.
39:0539 minutes, 5 secondsOh yeah. So there is already cleric provider in here because I was like setting up it for the weight list.
39:1239 minutes, 12 secondsThat's why you can see cleric provider and I'm even passing the UI in here from cler UI library. Be make sure that you
39:1939 minutes, 19 secondsare installing this library cler UI library and probably you don't have to do it because you are already having this library in your codebase when you
39:2739 minutes, 27 secondsare cloning the starter project. Now uh after this let's create our sign in page. So sign
39:3739 minutes, 37 secondsin and something like this.
39:4539 minutes, 45 secondsSo sign in sign in
39:5439 minutes, 54 secondsactually I think we can add any endpoint in here. Yeah that that makes sense. So sign in and something like this.
40:0640 minutes, 6 secondsYou might be thinking why how the weight list in here because this is already cleric setup weight list for the production one. But right now since
40:1440 minutes, 14 secondswe're making it, we don't need the weight list anymore. So let's make the real uh like logged in authentication
40:2240 minutes, 22 secondspage. So we can copy this weight list code. We can come back here. We can paste everything. Instead of weight list, we're going to import here sign in.
40:3340 minutes, 33 secondsAnd we don't need this. And here we need sign up URL, I guess. Sign up URL, which is going to be sign up.
40:4440 minutes, 44 secondsThat's it. We can save it. We can come back here. We don't need to do anything in here. Let's come back here and go to
40:5240 minutes, 52 secondsslash sign in.
40:5740 minutes, 57 secondsAnd here you go. You can see our sign in form is ready. Yeah, that's how easy we can set up authentication. You can see
41:0641 minutes, 6 secondscontinue uh sign in to one network or application name and it's like the sign in page. We can hit sign up. It will take us to the sign up. Let's come back here. Let's copy everything.
41:1841 minutes, 18 secondsUh I I think we should copy this folder, this app. Let's paste it again. And let's rename this to sign up.
41:3041 minutes, 30 secondsUh yeah. And inside here same just rename to sign up.
41:3841 minutes, 38 secondsAnd inside here instead of sign in do it sign up.
41:4541 minutes, 45 secondsSign up and sign in which is going to be sign in. Simple.
41:5541 minutes, 55 secondsJust save everything and let's come back here. Give on reload. Hit sign up and here you go. Create your account.
42:0542 minutes, 5 secondsEverything is in here and everything makes sense. You can just add your email address and password and you can create an account or even you can continue with
42:1342 minutes, 13 secondsGoogle. So after doing the authentication actually our authentication is ready. That's that's how you can set up authentication. But
42:2142 minutes, 21 secondsin here, let's do one thing. Let's do login. So, we have to change the code a little bit. Now, let's come back here.
42:3242 minutes, 32 secondsWe don't need the weight list anymore.
42:3542 minutes, 35 secondsSo, we can basically we can uncomment this. We don't need this actually with
42:4342 minutes, 43 secondsthe one click. Yes, we're having here for the log in we are going to redirect to sign in. for the get started sign up.
42:5342 minutes, 53 secondsThat's it. Now in the drop-down we can definitely uncomment it and here we were saying something but
43:0243 minutes, 2 secondslet's do one thing. Let's cut it. Let's come back here. This is already use client. Okay. So we can use here our use
43:1143 minutes, 11 secondsuser hook from clerk nextjs and this is our user and is loading.
43:2143 minutes, 21 secondsSo is loaded and it signed in. We need all of this. When the is loaded
43:2843 minutes, 28 secondsis true then everything fine but if it's false then return null.
43:3743 minutes, 37 secondsYeah. Uh then user here we can say
43:4543 minutes, 45 secondsjust a minute where is the header sorry the dropdown
43:5543 minutes, 55 secondsno we did we shouldn't delete. So did you delete something? Wait let me press command C. Where's the header?
44:0744 minutes, 7 secondsYeah, somehow I delete it. So, we don't have to delete. We make sure that we're not deleting. And then again, we can add that in here. Use user. Now, let's come back here.
44:1844 minutes, 18 secondsLet's cut this and let's say that if our user is available or we don't need that.
44:2844 minutes, 28 secondsLet's say is sign in true than this one otherwise this link.
44:3644 minutes, 36 secondsSo, let's cut this, add it in a fragment, and let's paste it in here.
44:4244 minutes, 42 secondsWe can save it.
44:4544 minutes, 45 secondsNow, you can see it's showing login and get started because we're not logged in yet. So, let's hit continue with Google.
44:5644 minutes, 56 secondsAnd I'm doing on Google log in.
45:0645 minutes, 6 secondsAnd it's asking us for an authent organization which is definitely very good because in the future it can happen
45:1345 minutes, 13 secondsthat in one minute locks we will support multiple projects. That's why we you like for that type of thing you must
45:2145 minutes, 21 secondshave to set up an organization. So we are adding that feature from right now so that in the future we don't need to worry about like changing our mechanism
45:3045 minutes, 30 secondsinternally. So we can hit continue and here we go. It's showing the GitHub logo
45:3845 minutes, 38 secondsfine because we we are adding here like an static value that's why but here we can say
45:4645 minutes, 46 secondswhen there is user data then user dot
45:5545 minutes, 55 secondsuh profile or I forgot the value so I think has no user dot avatar
46:0346 minutes, 3 secondsuh set profile image age. Uh just a minute. There's so many parameters here.
46:1246 minutes, 12 secondsOkay, fine. Let's let's do one thing for now. Let's go back and since I
46:2046 minutes, 20 secondsforgot it, let me do one thing. Let me cancel log the user.
46:2646 minutes, 26 secondsLet's come back here. We don't need to go anywhere. You can see it in here.
46:3146 minutes, 31 secondsSo for the avatar avatar it's in here image URL. Okay. So
46:3846 minutes, 38 secondsis it in any array? Yeah. External accounts and this is the image URL. Okay. So image URL.
46:4846 minutes, 48 secondsNo it's already in here. User and image URL. Okay. Makes sense. So if there is user then user image URL
46:5946 minutes, 59 secondsor something with this user then user image URL otherwise empty. Yeah.
47:1447 minutes, 14 secondsSo the clerk uh we have to set up this host name in our nextjs nextjs
47:2247 minutes, 22 secondsuh app config sorry nextjs config here let's set it up we can say protocol
47:3247 minutes, 32 secondshttps and host name something like this we can save it we
47:4047 minutes, 40 secondscan save it here as well let's come back here now and here we go everything makes sense this is for dashboard this is for
47:4847 minutes, 48 secondsbilling this is for settings and this is for support and for log out let's make the log out dynamic as well so for the
47:5647 minutes, 56 secondslog out if anyone press here or one click
48:0348 minutes, 3 secondsit's going to call the log out or I think sign out
48:1348 minutes, 13 secondsSign out. Uh, okay. One minute. Log out handler.
48:1848 minutes, 18 secondsIt's the best option. So, we we're going to call on function logout handler which is going to do the log out for us.
48:3048 minutes, 30 secondsWe can say aait and then we can add here async sign out.
48:3848 minutes, 38 secondsUh, okay. I forgot the syntax. So let's search sign out sign out button or no sign out button.
48:4948 minutes, 49 secondsAll right, I just remember it. We can basically use here on hook like this that use clerk and we can use the sign
48:5748 minutes, 57 secondsout from here and then we can call that in here. Right now if you come back here and let's say come back here give on
49:0449 minutes, 4 secondsreload just click here and hit log out and here you go. We're logged out right now. We can again do login and do the log out. So the authentication is ready.
49:1549 minutes, 15 secondsYeah, that's how simple it is. Right now our next task is we have to start to work in dashboard. We'll start to work
49:2349 minutes, 23 secondswith the API key. Right now like the verifying the API key, verifying the access and also at the same time like we have to make the guard in our back end.
49:3449 minutes, 34 secondsFirst we're going to set up the front end. I mean the front end is already ready. You can already check it out in the GitHub repo. You already have code
49:4349 minutes, 43 secondsfor the main dashboard. We're going to just modify it and we're going to start the main backend work right now. So, let's get started. All right. Welcome
Chapter 5: Production-Ready API Key Module
49:5249 minutes, 52 secondsback to a new port. Right now, we'll start to work with our back end. So, we can clear everything and you have to go
50:0050 minutesto the services. However, since I restarted the VS Code, that's why I have to actually go to the landing page like
50:1050 minutes, 10 secondsthis. Let's open another terminal and go to our main dashboard.
50:2050 minutes, 20 secondsNow, the next one is basically our services. Yeah, we can clear everything
50:2750 minutes, 27 secondsand you can see in services it's completely empty. No problem. We're right now going to create on NestJS project. So for creating NestJS project, I have to check it. Nestjs.
50:3950 minutes, 39 secondsWhat's the like command? I forget it. No problem. We can say first step. Uh we don't need this. Sorry, not first step.
50:5150 minutes, 51 secondsGetting started. Yeah, wait. Getting started. You didn't say codes.
51:0151 minutes, 1 secondOkay, fine. No problem. So, first of all, you have to install the NestJ CLA.
51:0551 minutes, 5 secondsBut for me, for my laptop, I do have NestJ CLA. So, I don't need to do anything. I will just come here and say
51:1151 minutes, 11 secondsnest new and a dot. So that it will create the project inside the services npm. I'm selecting as the package
51:1851 minutes, 18 secondsmanager. It's right now creating everything. You can see yeah, everything is in here.
51:2651 minutes, 26 secondsUh one thing I just want to have I just want to quit the MongoDB.
51:3251 minutes, 32 secondsI don't need to turn that one. Yeah, already we can hit clear. I mean we can
51:3951 minutes, 39 secondswrite clear. So you can see in here note modules and everything is in here.
51:4451 minutes, 44 secondsHowever, it's definitely like the boilerplate codebase. We have to do lot of work in here. We will do one by one.
51:5151 minutes, 51 secondsIf we come back here and this is our main like TS uh what it's saying like okay fine ignore this it's probably
52:0052 minutesgiving us on warning that add void operator to ignore it okay fine no problem the TS
52:0952 minutes, 9 secondsconfig B URL is deprecated okay so the boiler plate code B is
52:1852 minutes, 18 secondsgiving error which is definitely a funny thing But no problem. Base URL is deprecated. Seriously, I didn't know it
52:2452 minutes, 24 secondsearlier. However, if I change it, I mean if you remove the void, is it similar?
52:3152 minutes, 31 secondsYeah. So, it's definitely not connected with each other. Okay. B URL is right now deprecated and will stop
52:4052 minutes, 40 secondsfunctioning in Typescript 7.0. Please specify compiler options.
52:4752 minutes, 47 secondsSo what what we're right now then we're supposed to do in here. Let's go to here in this documentation because this base
52:5652 minutes, 56 secondsURL is not something small. It's important thing. Let's see what's wrong.
53:0453 minutes, 4 secondsSo migration issue here base URL was required in order to use paths. Yeah, there's no longer this is no longer the
53:1253 minutes, 12 secondscase in many projects. You cancel remove base URL especially if it's like the root directory dot means otherwise depend base URL
53:2253 minutes, 22 secondsuh value to each path entry okay fine then I think we should remove it no problem
53:2953 minutes, 29 secondsyeah we can come back here we have to change the port we will do that let's
53:3653 minutes, 36 secondscreate env at first in our services env we're going to make it Hat
53:4753 minutes, 47 secondsand the fallback should be also same at a okay app module service everything looks
53:5553 minutes, 55 secondsgood in the services let's add a new folder by giving them modules inside this modules we will have all of our modules however the modules should be
54:0354 minutes, 3 secondsinside the src folder not outside
54:0954 minutes, 9 secondsyep and we also need our configs Then
54:1754 minutes, 17 secondsuh controllers uh okay fine and we can add another folder for GS
54:2454 minutes, 24 secondsgirds then infra for like docker related things docker or or net stage stream or
54:3054 minutes, 30 secondsclick house and database for setting up the database.
54:3654 minutes, 36 secondsYeah that's all I guess we should have. Yeah, for now it's it's good enough.
54:4454 minutes, 44 secondsNow in this config it's basically like the variables throughout this all like the full project. So you can add just on
54:5454 minutes, 54 secondsindex.ts here for database fine everything should be empty for now no problem at all. in the modules. Let's
55:0055 minutesstart our first module which is API keys or
55:0955 minutes, 9 secondsactually for the API keys there should not be any modules. Now you might be thinking then how how the thing will work right?
55:1955 minutes, 19 secondsYeah. So the thing will work because in here uh or wait I think we should create a
55:2655 minutes, 26 secondsmodule. Yeah, we should create because in the last project we didn't do it. But for this one, let's create a new module
55:3355 minutes, 33 secondsby giving them API key. Inside here, we can add our API key dot controller.ts
55:4455 minutes, 44 secondsAPI key dot service.ts.
55:5055 minutes, 50 secondsAnd finally, wait, all is going to be inside here. This is not folder. It should be file.
56:0056 minutesLet's delete the folder and make it a file.
56:0556 minutes, 5 secondsYeah. Now we need our API key module.
56:1456 minutes, 14 secondsYeah. And inside modules, let's create another modules. Let's say something like we can say that billing. Yeah. for
56:2456 minutes, 24 secondsbilling we'll have definitely different modules. Yeah. So for now this is fine.
56:3056 minutes, 30 secondsLet's come back here in API key controller and inside gs we are going to make our like authentication gir. So we
56:3956 minutes, 39 secondscan say o dotg.ts for database we have to set up database.
56:4756 minutes, 47 secondsSo we should do it right now because our API key mechanism and everything it highly depends on like it's connected
56:5556 minutes, 55 secondswith the database. So we should set up the database right now and for this project we're going to use postgraql.
57:0257 minutes, 2 secondsNow we can set up postgradsql locally but that's like added some complexity and secondly like you have to like be
57:1157 minutes, 11 secondsmake sure that the database is always up to date and it it it has like you are hosting it somewhere close to the like
57:1957 minutes, 19 secondsyour user server. So for the version one we should avoid it. We should use third party services like neon or superbase
57:2757 minutes, 27 secondsbut for this project we're going to use neon. Now let's hit log in and from here I'm
57:3557 minutes, 35 secondscreating a new project. I'm giving it name to let's say 1 minute logs and I'm hitting create.
57:4557 minutes, 45 secondsHere you go. We're having our connection string here. I'm just copying the snippet and I'm coming back
57:5457 minutes, 54 secondsto our env. I just want to show you one thing. So you're probably watching it blur right now because I'll definitely
58:0358 minutes, 3 secondsmake it blur for the security reason. I don't want to expose the database value.
58:0958 minutes, 9 secondsSo here I'm creating on variable by giving them database uri like on env variable or sorry database URL not I
58:1858 minutes, 18 secondsthen on equals to and then the postsql value. So when you're copying that be make sure that you are removing this
58:2758 minutes, 27 secondspsql. Okay, just keep this. Okay, do not add all of this at the value as like the
58:3458 minutes, 34 secondsdatabase uh URL value. That's it. And you don't need any first on single quotation. You don't need any single
58:4258 minutes, 42 secondsquotation or double quotation. Just add the value. That's the best practice.
58:4658 minutes, 46 secondsYeah. So database URL is ready. Right now we have to install Drizzle. Why Drizzle? because we're actually using
58:5558 minutes, 55 secondsDrizzle as our OM for connecting Neon.
59:0059 minutesSo for uh Drizzle, you have to come back here and let's search for it because to
59:0759 minutes, 7 secondsbe honest, I usually forget a lot of things which not only me, every engineers, we forget things. We're like definitely not remembering everything.
59:1759 minutes, 17 secondsSo how can we set up Drizzle? Just come here and read the documentation. You can hit neon and drizzle from here. This is this is the comment. So let's copy this.
59:2859 minutes, 28 secondsCome back here and paste it.
59:3259 minutes, 32 secondsThis is the like setting up codebase. So let's copy
59:3959 minutes, 39 secondsand come back here into our database.
59:4659 minutes, 46 secondsThere should be a database module actually. database domodule.ts
59:5559 minutes, 55 secondsand and let's do one thing for here.
1:00:031 hour, 3 secondsIt's basically going to be a global module. So use the global decorator from NJS common and module decorator because it's a module.
1:00:141 hour, 14 secondsHere for the providers we're going to add we're going to provide the drizzle
1:00:241 hour, 24 secondsuh drizzle yeah spelling is correct drizzle db now what is drizzle db it's basically a like variable something like
1:00:331 hour, 33 secondsthis then let's use the use factory method it's like a callback function and
1:00:401 hour, 40 secondsinside here we're going to add our connections string the database connection string which is going to be
1:00:471 hour, 47 secondsprocess envatabase URL.
1:00:561 hour, 56 secondsIf there is no connection string then we can throw an error that database
1:01:041 hour, 1 minute, 4 secondsURL is not set yet. You have to set it otherwise here we can add con pool not
1:01:121 hour, 1 minute, 12 secondspeel. It should be pool new
1:01:191 hour, 1 minute, 19 secondspool from neon database server lace and let's pass the connection string in here. However, I did a small mistake.
1:01:281 hour, 1 minute, 28 secondsLet's add it in here.
1:01:301 hour, 1 minute, 30 secondsYeah. And after this we can return drizzle
1:01:371 hour, 1 minute, 37 secondsfrom our drizzle basically from our postgraq 1 minute. So where is that?
1:01:441 hour, 1 minute, 44 secondsYeah neon serverless. I guess we can import it from neon serverless. Yeah.
1:01:501 hour, 1 minute, 50 secondsAnd here we have to pass the pool and schema.
1:01:561 hour, 1 minute, 56 secondsYeah. Now schema is basically coming from here. Let's create our schema.ts
1:02:051 hour, 2 minutes, 5 secondsand import everything as schema from dot / schema.
1:02:111 hour, 2 minutes, 11 secondsYeah. Now after this we can add the exports and we can export that result DB
1:02:201 hour, 2 minutes, 20 secondsand we have to export our class that database module
1:02:281 hour, 2 minutes, 28 secondsclass. Yeah, that's it. This is giving some weird weird warnings. The reason is simple.
1:02:351 hour, 2 minutes, 35 secondsJust delete the East Line. I I really don't want it. Yeah, all looks good.
1:02:411 hour, 2 minutes, 41 secondsRight now, we don't need this one because this this this setup was basically for like uh ExpressJS or basic
1:02:491 hour, 2 minutes, 49 secondslike NodeJS. But here since we're using NestJS, our setup is a little bit different. So that's why we basically made this database module like a global
1:02:581 hour, 2 minutes, 58 secondsmodule. so that we can use it anywhere we want. That's why our setup is a little bit different. Yeah, fine. Uh
1:03:051 hour, 3 minutes, 5 secondscreated table all good. But we need this drizzle config.ts file, the most important file. Let's come back here
1:03:151 hour, 3 minutes, 15 secondsin our services folder and let's add the drizzle.config.ts
1:03:241 hour, 3 minutes, 24 secondsfile. So in this drizzle.config.ts TS file we have to paste everything. Uh
1:03:321 hour, 3 minutes, 32 secondshowever in here env uh I think we should add it like this
1:03:381 hour, 3 minutes, 38 secondsimport everything as enenv from enenv again we are using nestj so sis like the
1:03:481 hour, 3 minutes, 48 secondslike the setup is a little bit different here and we have to call this env.config config.
1:03:541 hour, 3 minutes, 54 secondsNow schema is going to be at first add the schema which is going to be source then
1:04:031 hour, 4 minutes, 3 secondsuh inside source what's the folder name database so database and schema.ts TS
1:04:131 hour, 4 minutes, 13 secondsyeah and out dot site dot /drizle it's fine dialect postgresql very good and
1:04:191 hour, 4 minutes, 19 secondscredentials database URL all looks good it's fine actually we can save it after
1:04:261 hour, 4 minutes, 26 secondsthis we don't need anything this is perfect
1:04:321 hour, 4 minutes, 32 secondsyeah now what what we have to do we can come back to our schema
1:04:401 hour, 4 minutes, 40 secondsuh like schema.ts and inside here we can create our first like table which is going to be for our
1:04:481 hour, 4 minutes, 48 secondsAPI key. So we can say con API key pg table
1:04:571 hour, 4 minutes, 57 secondsAPI key and id something like this u id from our
1:05:071 hour, 5 minutes, 7 secondsdrim and postql core we we will have an user id which is going to be like text
1:05:151 hour, 5 minutes, 15 secondsand cannot be null import text from same like the postgress scale core uh we should keep it in same import.
1:05:261 hour, 5 minutes, 26 secondsYeah. After this we need prefix like on short value.
1:05:351 hour, 5 minutes, 35 secondsThen value the value for the API key which is definitely going to be hashed
1:05:421 hour, 5 minutes, 42 secondsvalue. Now created at like when the API key basically created the date
1:05:501 hour, 5 minutes, 50 secondsand last used at very very important one then revoked at if you were revoking the
1:05:581 hour, 5 minutes, 58 secondsAPI key yeah that's all we need
1:06:061 hour, 6 minutes, 6 secondsuh for now that's all we need if you need to change anything we'll definitely do that but yeah let's come back here
1:06:121 hour, 6 minutes, 12 secondsNow let's clear everything and we have to set a few things in our package.json in the scripts.
1:06:211 hour, 6 minutes, 21 secondsSo let's add few new scripts here like db generate.
1:06:321 hour, 6 minutes, 32 secondsWe can say npx drizzle uh kit and generate
1:06:411 hour, 6 minutes, 41 secondsthen db migrate for the migration.
1:06:471 hour, 6 minutes, 47 secondsWe can basically copy this instead of generate it should be right now migrate. We can again copy this and
1:06:561 hour, 6 minutes, 56 secondsthis time this is for push ink. So, npx drizzle db push. We can save this now. npm run db generate.
1:07:081 hour, 7 minutes, 8 secondsGreat. Npm run db migrate.
1:07:191 hour, 7 minutes, 19 secondsYeah. And npm run db push. Very very important.
1:07:261 hour, 7 minutes, 26 secondsNow after this if you come back here and in this tables here we go I think we're having the API
1:07:341 hour, 7 minutes, 34 secondskeys. Yeah here you go you can see the API key table is in here. So if it's coming like same exactly like this for
1:07:431 hour, 7 minutes, 43 secondsyou then congratulations our database setup is done. Right now we can start to work for the API key feature since the
1:07:501 hour, 7 minutes, 50 secondsAP uh the database setup is done. I'm mistly deleted but we have to come back here. Yeah. So let's close the
1:07:591 hour, 7 minutes, 59 secondspackage.json schema database module and in this API key service we're going to start to work now first in this API key
1:08:061 hour, 8 minutes, 6 secondsmodule. Let's finish this. It's going to be very very basic like
1:08:141 hour, 8 minutes, 14 secondslike a normal module. We can come back in our this app module and we can copy everything
1:08:241 hour, 8 minutes, 24 secondsand we can paste it. Now for the controller it's going to be API key controller but we're not having it. Same
1:08:321 hour, 8 minutes, 32 secondsfor the service we're not having it. So let's delete it. Let's delete it and make it API key module.
1:08:431 hour, 8 minutes, 43 secondsYeah. Fine.
1:08:451 hour, 8 minutes, 45 secondsNow controller at first we need to make service then we can make the controller.
1:08:491 hour, 8 minutes, 49 secondsOkay. Now let's start the API key service. All right. At first at first we can add here on injectable decorator.
1:08:591 hour, 8 minutes, 59 secondsAfter this we can export or you can create our API key
1:09:061 hour, 9 minutes, 6 secondsservice class and inside here sorry inside here let's
1:09:121 hour, 9 minutes, 12 secondsadd our constructor and let's inject that drizzle DB. So inject
1:09:201 hour, 9 minutes, 20 secondsfrom this common our drizzle db let's give it a name that private
1:09:281 hour, 9 minutes, 28 secondsread only db and type we can make it any now we have
1:09:351 hour, 9 minutes, 35 secondsto add radius. Now why do we actually need radius? We need radius because for
1:09:421 hour, 9 minutes, 42 secondsAPI key service especially for things like uh the last scene sorry not last scene the last uses time and this type
1:09:511 hour, 9 minutes, 51 secondsof everything we must need to have radius and not only for that I already explained it in the system design that
1:09:581 hour, 9 minutes, 58 secondswhy we're actually using radius for our API keys because of validation because of like faster query and for handling a
1:10:071 hour, 10 minutes, 7 secondslarge scale of request within in a very short time we are using radius right now
1:10:131 hour, 10 minutes, 13 secondswe have to set up radius so let's let's set up it and not only radius we're we're right now going to set up our
1:10:201 hour, 10 minutes, 20 secondscaching mechanism it's very simple setting up is not hard in this infra folder let's add our cache
1:10:291 hour, 10 minutes, 29 secondsmodule ts and the radius module ts these two things First for the
1:10:391 hour, 10 minutes, 39 secondscache let's add here to first on variable that l cache like on
1:10:481 hour, 10 minutes, 48 secondsexport cons variable which value is l cache on interface for our caching that we the caching will have on user ID
1:10:561 hour, 10 minutes, 56 secondspublic id and last used. Now we can use here on global decorator because this is
1:11:021 hour, 11 minutes, 2 secondsa global module and the module decorator then providers we can provide the LRU cache from here.
1:11:151 hour, 11 minutes, 15 secondsYou can use your use factory and return
1:11:211 hour, 11 minutes, 21 secondsthe new LRU cache actually LRU cache. Now LRU cache is coming from our
1:11:301 hour, 11 minutes, 30 secondsLU cache library which we haven't installed I think so or we have to install the type. So let's come back
1:11:381 hour, 11 minutes, 38 secondshere and let's install the L cache types.
1:11:451 hour, 11 minutes, 45 secondsHowever, it's giving error because the spelling is wrong.
1:11:531 hour, 11 minutes, 53 secondsI don't know. Still it's giving that warning.
1:11:591 hour, 11 minutes, 59 secondsI don't know. I think this is on built-in module still. Let me install.
1:12:031 hour, 12 minutes, 3 secondsIf it's not then that can cause some error. Yeah, it was not. So, right now it's giving no warning. So, everything is fine now. Now
1:12:121 hour, 12 minutes, 12 secondshere LRU cache we're importing it from basically we're importing it from our LRU cache. So yeah it's already in here.
1:12:241 hour, 12 minutes, 24 secondsSorry we already imported it. Uh string string is not be capital string
1:12:331 hour, 12 minutes, 33 secondsand the cache interface this is the type. Now we have to set here some values that maximum cannot be more than 10,000 entries.
1:12:451 hour, 12 minutes, 45 secondsThe TTL which is going to be 5 minutes. So 560 mult*ly 1,000. This is like the default
1:12:521 hour, 12 minutes, 52 secondsvalue. Update agents on get make it true. Update agent on has make it false.
1:13:021 hour, 13 minutes, 2 secondsAnd hello still make it false as well.
1:13:071 hour, 13 minutes, 7 secondsUh from here we can export the LRO cache.
1:13:161 hour, 13 minutes, 16 secondsYeah. And here we can export the cache module.
1:13:251 hour, 13 minutes, 25 secondsPerfect. So we can save it right now. We can come back to our radius module and we can start to work with the radius
1:13:331 hour, 13 minutes, 33 secondsmodule as well. So sorry in radius module at first we can copy the cache module then we don't need to write a lot
1:13:401 hour, 13 minutes, 40 secondsof things again and again instead of l cache this is right now going to be radius client and for like interface we
1:13:481 hour, 13 minutes, 48 secondsdon't need anything for the radius client interface because it's going to be simple and small but we have to install a new library called IO radius
1:13:571 hour, 13 minutes, 57 secondsso we can say npm IO radius yeah done
1:14:041 hour, 14 minutes, 4 secondsand import radius from IO radius. We don't need L cache and we need the global and module for
1:14:111 hour, 14 minutes, 11 secondsthe providers. Provide is going to be this time radius client and here let's
1:14:181 hour, 14 minutes, 18 secondsadd our config service because we need the radius like value.
1:14:241 hour, 14 minutes, 24 secondsSo config service config service is basically coming from our
1:14:321 hour, 14 minutes, 32 secondsuh NestJ/config I don't know why it's not giving suggestion okay so we have to install it that's why
1:14:401 hour, 14 minutes, 40 secondslet's install the NestJS/config library yeah done radius is going to be like
1:14:481 hour, 14 minutes, 48 secondsthis so config service ready now in here let's remove And let's add con radius.
1:15:011 hour, 15 minutes, 1 secondNew radius new radius.
1:15:091 hour, 15 minutes, 9 secondsThe host is going to be the config service and
1:15:181 hour, 15 minutes, 18 secondsradius host value is going to be localhost by default. The port is going to be
1:15:271 hour, 15 minutes, 27 secondssame. We're getting it from our env password sim. And here let's delete. And
1:15:351 hour, 15 minutes, 35 secondsafter password we also need the db. the radius TV are by default zero and retry
1:15:411 hour, 15 minutes, 41 secondsstrategy for like connecting radius if the times more than three then return null otherwise math mini like after
1:15:491 hour, 15 minutes, 49 secondscertain time we're pulling it so that if like the radius value is not available or it's not warm up yet then we can like add here and retry strategy so it will
1:15:581 hour, 15 minutes, 58 secondsstart the radius database somehow if the value is available then after this we can add radius do one we
1:16:061 hour, 16 minutes, 6 secondscan connect our radius right now. So connect and we can add on console log that radius connected.
1:16:191 hour, 16 minutes, 19 secondsYeah.
1:16:201 hour, 16 minutes, 20 secondsAnd if if it catch any error we can basically console log the error message. Yeah. And
1:16:291 hour, 16 minutes, 29 secondsfinally we can return radius.
1:16:331 hour, 16 minutes, 33 secondsYeah. And we can inject actually we have to inject our config service otherwise
1:16:401 hour, 16 minutes, 40 secondsthis will give error and we have to export our radius client and we have to
1:16:471 hour, 16 minutes, 47 secondschange this name from cache module to our radius module. Yeah all done but one
1:16:551 hour, 16 minutes, 55 secondsthing is not done and that is setting up radius. So as I said earlier we're going to use docker compost for setting up radius. Right now you can tell me we
1:17:041 hour, 17 minutes, 4 secondscould use upstach. Yeah, we definitely could use upstach for setting up radius.
1:17:101 hour, 17 minutes, 10 secondsBut still when you're using radius you know one machine the there there are definitely some pros and pros and cons
1:17:171 hour, 17 minutes, 17 secondslike the pros are definitely it's going to be like highly scalable or more faster than upstach one because that's
1:17:241 hour, 17 minutes, 24 secondsin a different server and when you're setting up radius into the same server by using docker it's going to be more fast because it's already in the same
1:17:311 hour, 17 minutes, 31 secondsmachine. So for the version one we can use it in our own machine but when in
1:17:391 hour, 17 minutes, 39 secondsthe future we're having probably multiple server then using it in the same machine it's going to be a problem that time we can definitely like use
1:17:481 hour, 17 minutes, 48 secondsanother service or we can like host radius to another different machine and we can like make that for our project
1:17:561 hour, 17 minutes, 56 secondsbut definitely for the version one for right now for the MVP we can set up radius in our local server. server.
1:18:031 hour, 18 minutes, 3 secondsYeah. So, we can say services radius.
1:18:091 hour, 18 minutes, 9 secondsWe're going to use here our radius 7 alpine image.
1:18:211 hour, 18 minutes, 21 secondsContainer name we can say 1 minute logs and radius.
1:18:301 hour, 18 minutes, 30 secondsenvironment we have to pass our radius password.
1:18:361 hour, 18 minutes, 36 secondsSo environment and radius
1:18:441 hour, 18 minutes, 44 secondspassword let's set the value in here right now for like for at this moment I mean for
1:18:521 hour, 18 minutes, 52 secondsdevelopment mode we can set the value in here but for the production we'll inject the value we'll not push it like this because this is risky. So for the
1:19:001 hour, 19 minutesrelease password we can say something like this that 1 minute locks for now.
1:19:071 hour, 19 minutes, 7 secondsAfter this we need our ports. So for the ports
1:19:141 hour, 19 minutes, 14 secondswe can use 6379 and 6379
1:19:221 hour, 19 minutes, 22 secondsport. Now volumes radius
1:19:291 hour, 19 minutes, 29 secondsunderscore data slash data something like this. Now for comment like for
1:19:361 hour, 19 minutes, 36 secondssetting up this we can say radius server and use our require pass flag. The
1:19:431 hour, 19 minutes, 43 secondspassword is one minute logs and use append only flag again.
1:19:521 hour, 19 minutes, 52 secondsAppend only and another flag that maximum or max
1:20:001 hour, 20 minutesmemory policy. These are very very important and all keys
1:20:101 hour, 20 minutes, 10 secondsLRU. Yeah. So it's quite big but this is like the comments after this
1:20:171 hour, 20 minutes, 17 secondsrestart unless stopped
1:20:281 hour, 20 minutes, 28 secondsand held check C cannot be capital actually we're in docker compose uh now test
1:20:371 hour, 20 minutes, 37 secondsfor testing the comment like is CLI
1:20:461 hour, 20 minutes, 46 secondsand the radius password.
1:20:541 hour, 20 minutes, 54 secondsUh actually I did a small mistake. Yeah, here it's going to be
1:21:021 hour, 21 minutes, 2 seconds1 minute locks. Yeah.
1:21:081 hour, 21 minutes, 8 secondsAnd for testing we can add that pingpong. So ping uh sorry
1:21:151 hour, 21 minutes, 15 secondsthen interval let's add an interval
1:21:211 hour, 21 minutes, 21 seconds10 seconds. Time out 5 second and retries for connection five. Yeah that's
1:21:311 hour, 21 minutes, 31 secondsit. Our ready setup is ready. Now we can add on volumes.
1:21:401 hour, 21 minutes, 40 secondsSo volumes radius data. Yeah, we can set up it.
1:21:551 hour, 21 minutes, 55 secondsThe volumes I think we have to keep it here. Yeah.
1:22:011 hour, 22 minutes, 1 secondSo our docker compose is ready. We can right now come back here and be make sure that you are having docker in your device. So for me I do have docker. I'm just opening it.
1:22:121 hour, 22 minutes, 12 secondsHere you go. Now I we can say docker compose up and hyphen d. And we have to allow the network access.
1:22:231 hour, 22 minutes, 23 secondsIt's basically pulling the uh ima image. However, oh I added a wrong spelling.
1:22:301 hour, 22 minutes, 30 secondsAlpine. Yeah, Alpine.
1:22:351 hour, 22 minutes, 35 secondsThat's why it gave error which completely makes sense. Now recreated and started. If you come back here, if you give on reload,
1:22:441 hour, 22 minutes, 44 secondsit's actually working because there is already on radius uh image already there. So it's basically restarted and
1:22:511 hour, 22 minutes, 51 secondsfor you it's should work right now. Now uh everything is set up done. Just one
1:22:581 hour, 22 minutes, 58 secondsthing is not done that is we have to add our radius like host port password and the DV value.
1:23:101 hour, 23 minutes, 10 secondsYeah, something like this. Okay. So I'm showing this to here to you so that you can just add it in the MV because I'll
1:23:171 hour, 23 minutes, 17 secondsnot show you the env value which I'm adding right now. So just a minute I cannot show you that's why I'm taking it to another screen.
1:23:281 hour, 23 minutes, 28 secondsYeah, I should not show env in the video.
1:23:341 hour, 23 minutes, 34 secondsAll good. Now, let me clear everything from here. And our radius module is ready.
1:23:421 hour, 23 minutes, 42 secondsEverything is ready. Now, let's come back to our API key service again and let's finish it.
1:23:511 hour, 23 minutes, 51 secondsAfter that drizzle db injecting here we can give a comma and we can say inject
1:24:011 hour, 24 minutes, 1 secondour radius client and private read only radius.
1:24:131 hour, 24 minutes, 13 secondsYeah. Now after this inside here we can add our first private
1:24:211 hour, 24 minutes, 21 secondsmodule that create API key. This is not private module. We're going to use it inside our controller also. But yeah for
1:24:291 hour, 24 minutes, 29 secondscreating the API key this is the module it's going to receive user ID because for creating an API key must have to be
1:24:361 hour, 24 minutes, 36 secondson user and we're receiving that as a parameter in here. Now we are forcing our user to create five limits right
1:24:451 hour, 24 minutes, 45 secondslike like the highest limit for one user is five one user cannot create more than five API keys if you're creating more
1:24:541 hour, 24 minutes, 54 secondsthan five API keys you have to contact like support to get approval which is very very important to like prevent our
1:25:031 hour, 25 minutes, 3 secondsapplications or protect our applications from spamming. So here we can say this db dot select
1:25:121 hour, 25 minutes, 12 secondsand count let's import count from drizzle
1:25:191 hour, 25 minutes, 19 secondsand from our API key table where
1:25:291 hour, 25 minutes, 29 secondsthe API key dot user ID is matching with our user ID.
1:25:381 hour, 25 minutes, 38 secondsYeah. Now if the result is or not result count
1:25:451 hour, 25 minutes, 45 secondsis like less equals to than five. If it's five or more than like less than five
1:25:531 hour, 25 minutes, 53 secondssorry more than five then we have to throw an error in here that you have reached the maximum limit of
1:26:011 hour, 26 minutes, 1 secondfive API keys. Please contact support for more. and bad uh request exceptions from next next common. Now we have to
1:26:111 hour, 26 minutes, 11 secondsgenerate on API key. So for our API keys we are basically following on strategy our API keys is going to be something
1:26:191 hour, 26 minutes, 19 secondslike this that OMC then means one uh not OMC basically uh one lock. OML and after
1:26:301 hour, 26 minutes, 30 secondsthis underscore and there is going to be on public ID like on UU id it can be on
1:26:361 hour, 26 minutes, 36 secondsUU ID and then later one the last part is going to be on secret key. Now why
1:26:431 hour, 26 minutes, 43 secondsthis structure we are following we we are following this structure because after creating the API key we are not
1:26:501 hour, 26 minutes, 50 secondsstoring it inside our database. So since we're not storing it inside our database, we are storing the hashed
1:26:581 hour, 26 minutes, 58 secondsversion and when the user is like giving the API key to us when like during the verification or the validation,
1:27:071 hour, 27 minutes, 7 secondswe have to again like hash that API keys which user is giving us and we have to compare it compare from where from our
1:27:151 hour, 27 minutes, 15 secondsdatabase. So definitely it's not an small thing it will take a long time and
1:27:221 hour, 27 minutes, 22 secondsin our application since we're having a lot of users since we're planning like that that's why we cannot make it this
1:27:311 hour, 27 minutes, 31 secondsway and to prevent this problem to solve this problem I basically designed it in
1:27:381 hour, 27 minutes, 38 secondsthis way so here there is on UU ID so first one is called flag this is the flag like the unique flag for one minute locks UU ID. This part is the public ID.
1:27:501 hour, 27 minutes, 50 secondsNow the interesting part is this public ID and our API keys public ID
1:27:561 hour, 27 minutes, 56 secondshere. This ID completely same but this secret key is not same. So if you're probably thinking okay since this is
1:28:051 hour, 28 minutes, 5 secondspublic value this U ID it's not public but we have this value in here. So since we're having the UU ID in our database,
1:28:131 hour, 28 minutes, 13 secondswe can verify it very fast and we can store it into the cache. We cannot do that same thing for like hashing value
1:28:231 hour, 28 minutes, 23 secondsbecause for hashing on like like on API key it takes time it's slower than
1:28:321 hour, 28 minutes, 32 secondsverifying from cache. That's why we are doing this UUID verifications so that we can speed up the process and with this
1:28:411 hour, 28 minutes, 41 secondsstrategy we can like speed up this verification process more than three times fast. Yeah. So that's why we're
1:28:481 hour, 28 minutes, 48 secondsbasically following this strategy. Now let's let's do it. Let's coding let's do the coding which I was explaining you.
1:28:551 hour, 28 minutes, 55 secondsSo here we're going to add a new private module for this like the generate key which is going to generate
1:29:031 hour, 29 minutes, 3 secondsthe key with that strategy which I was explaining you. So generate key it's going to return the plain
1:29:121 hour, 29 minutes, 12 secondstext key like the raw value string and the key id like the public uu ID. Now
1:29:211 hour, 29 minutes, 21 secondsfor the key ID, we're going to use here crypto dot random U ID and then dotreplace.
1:29:311 hour, 29 minutes, 31 secondsLet's use here and reject pattern like this.
1:29:371 hour, 29 minutes, 37 secondsYeah. So basically it's removing all the hyphens if I'm not wrong and then secret
1:29:441 hour, 29 minutes, 44 secondsthe most important part. So this one is going to be completely different like random bytes just add on 32 bytes random
1:29:531 hour, 29 minutes, 53 secondslike secret and let's make it B 64 URL so that we can like make it more secure.
1:30:041 hour, 30 minutes, 4 secondsNow the plain text key or the like the main key which is going to be something
1:30:111 hour, 30 minutes, 11 secondslike this underscore our key ID underscore the secret
1:30:211 hour, 30 minutes, 21 secondsso secret yeah so this is the API key value and we can return the plain text
1:30:301 hour, 30 minutes, 30 secondskey and the key ID Yeah. Now let's receive it in here. So we're receiving
1:30:381 hour, 30 minutes, 38 secondsthe plain text key and the key ID in here. Now we have to hash it because we cannot store this plain text into our database.
1:30:491 hour, 30 minutes, 49 secondsWe can say ait and for hashing we're going to use argon to the most secure on
1:30:561 hour, 30 minutes, 56 secondsor the industry standard right now. We can use argon to. So let's install npmi argon 2
1:31:041 hour, 31 minutes, 4 secondsand we can say argon 2. Let's import argon 2 from
1:31:111 hour, 31 minutes, 11 secondsargon 2 and argon 2 dot hash.
1:31:191 hour, 31 minutes, 19 secondsWe have to pass the plain text key and the type of the hashing is going to be argon 2 dotaron to id.
1:31:281 hour, 31 minutes, 28 secondsSo argon 2 ID not 2D 2 ID time cost is going to be three
1:31:371 hour, 31 minutes, 37 secondssorry three not two then memory cost is going to be one and something like this
1:31:441 hour, 31 minutes, 44 seconds16 and parallelism is going to be one yeah that's it now let's make an prefix
1:31:511 hour, 31 minutes, 51 secondsfor showing to our database like value like the first 18 characters from
1:31:581 hour, 31 minutes, 58 secondsthe API key to show the database sorry to show into the like uh in our client side in the
1:32:071 hour, 32 minutes, 7 secondsfront end side yeah the prefix is ready and after that like the dot dot dot like the ellipses now we can store it so we
1:32:151 hour, 32 minutes, 15 secondscan say this db dot insert we can insert into API key the values
1:32:261 hour, 32 minutes, 26 secondsare going to be ID value is going to be the key ID. User ID is going to be user ID. User underscore ID actually.
1:32:411 hour, 32 minutes, 41 secondsThen value it's going to be the hash value and prefix the prefix.
1:32:531 hour, 32 minutes, 53 secondsYeah. And finally we can return the key to the front end for once so
1:33:011 hour, 33 minutes, 1 secondthat the user can like copy it and save it save it somewhere safe.
1:33:071 hour, 33 minutes, 7 secondsNow next module let's uh let's add all it right now so that we don't need to come back again in here. Now this is for
1:33:151 hour, 33 minutes, 15 secondslisting all the API keys the user is having. It's very easy just some queries.
1:33:211 hour, 33 minutes, 21 secondsSo we can just run on query. We can say this dot db dot select and ID.
1:33:321 hour, 33 minutes, 32 secondsWe need the API key ID. The ID value. We need a prefix
1:33:391 hour, 33 minutes, 39 secondswhich is going to be the API key prefix created at
1:33:471 hour, 33 minutes, 47 secondsthe API key dot created at last used at very very important.
1:33:561 hour, 33 minutes, 56 secondsWe can say API key dot last used ad and revoked at
1:34:041 hour, 34 minutes, 4 secondsAPI_key dot revoked at
1:34:111 hour, 34 minutes, 11 secondsnow dot from API key
1:34:191 hour, 34 minutes, 19 secondsfrom the API key table. Yeah. where the
1:34:271 hour, 34 minutes, 27 secondsuh one minute where we have to use here and operators and from result or
1:34:351 hour, 34 minutes, 35 secondsthe API key dot user id is matching with the user ID. Yeah, something like this
1:34:411 hour, 34 minutes, 41 secondswe can save it. Now next one is for deleting our
1:34:501 hour, 34 minutes, 50 secondsAPI key. So we can say delete API key.
1:35:011 hour, 35 minutes, 1 secondIt's going to also receive the user ID and the key ID.
1:35:121 hour, 35 minutes, 12 secondsNow for deleting we are basically doing this await this dot db dot update because we're not logically deleting the
1:35:211 hour, 35 minutes, 21 secondsAPI key we're updating it we're saying API key and we're setting that revoked at the API key is basically revoked now
1:35:291 hour, 35 minutes, 29 secondsso revoked at new date yeah
1:35:371 hour, 35 minutes, 37 secondswhere our user ID sorry API key user ID is
1:35:451 hour, 35 minutes, 45 secondsmatching with the logged in user ID. Yeah.
1:35:531 hour, 35 minutes, 53 secondsAnd next step very very important after deleting an API key we must have to delete it from our caching mechanism
1:36:001 hour, 36 minutesalso. So we can say this dot radius dot delete
1:36:091 hour, 36 minutes, 9 secondsand wait I am outside but I should be inside. Yeah.
1:36:161 hour, 36 minutes, 16 secondsSo this dot reduce radius.delete here we're going to say api_key.
1:36:241 hour, 36 minutes, 24 secondsThen the version.
1:36:271 hour, 36 minutes, 27 secondsSo version is like a version management system we're going to use. So for the version let's add on
1:36:341 hour, 36 minutes, 34 secondsglobal variable here so that in the future we can easily change it.
1:36:391 hour, 36 minutes, 39 secondsYeah version and this is important for like versioning it in the future like when you're adding the version two you can
1:36:471 hour, 36 minutes, 47 secondseasily revalidate revalidate the caching easily.
1:36:521 hour, 36 minutes, 52 secondsUh after version we can add here our key ID.
1:37:011 hour, 37 minutes, 1 secondYeah. So now I know you're right now going to ask me we haven't added the radius key we're deleting it. Yeah we didn't do it. We will do inside the
1:37:091 hour, 37 minutes, 9 secondsguard but since we haven't make the guard yet that's why we don't have the radius like key right now yet. This is
1:37:171 hour, 37 minutes, 17 secondslike we're doing it before even creating the radius key. But fine in the future in the G we'll definitely add this OML
1:37:261 hour, 37 minutes, 26 secondsAPI keys for like when user is like trying to or using an API key then we
1:37:341 hour, 37 minutes, 34 secondswill definitely add that but after deleting the API key we have to instantly remove it from the cache.
1:37:391 hour, 37 minutes, 39 secondsThat's why we're deleting it from the cache so that it doesn't conflict in there.
1:37:461 hour, 37 minutes, 46 secondsAnd we also have to delete it from local cache. Now local cache is on variable something like this on new LRU cache.
1:37:571 hour, 37 minutes, 57 secondsWe can say LU cache and cached key. This is giving error because we can set it up
1:38:071 hour, 38 minutes, 7 secondsactually inside our this config index.ts something like this. Definitely it's the
1:38:131 hour, 38 minutes, 13 secondssame from our this caching module. It's the same thing. Uh no no it's not same.
1:38:181 hour, 38 minutes, 18 secondsIt's different. See user ID, API key, digest and expires at in here.
1:38:251 hour, 38 minutes, 25 secondsThis was different. User ID, public ID and last used. Yeah. So uh just add this uh new type in here. And then in here we can import and we can save it.
1:38:381 hour, 38 minutes, 38 secondsOur delete API key is also ready. Okay, the next one is the regenerate API key.
1:38:461 hour, 38 minutes, 46 secondsUh, sorry, not ready. We have to delete I forgot it.
1:38:501 hour, 38 minutes, 50 secondsDelete the version and
1:38:591 hour, 38 minutes, 59 secondsthe key ID as sync regenerate
1:39:091 hour, 39 minutes, 9 secondsAPI key user ID which is going to be string
1:39:171 hour, 39 minutes, 17 secondsand key ID which is also a string.
1:39:211 hour, 39 minutes, 21 secondsAnd here for regenerating API key we have to do few things not one thing.
1:39:281 hour, 39 minutes, 28 secondsFirst we have to regenerate a new key like this like what we did for creating an API key. The same thing we're doing
1:39:351 hour, 39 minutes, 35 secondshere and this time the key ID is a new key ID because it's for like new one.
1:39:401 hour, 39 minutes, 40 secondsThen we have to hash it again as like always. Then we have to make the prefix.
1:39:451 hour, 39 minutes, 45 secondsIt's basically like we're creating the API key again and we are updating our database instead of creating. Right now
1:39:541 hour, 39 minutes, 54 secondsyou can see this db.tupdate API key value is this one prefix this one and created at new time and we are updating
1:40:031 hour, 40 minutes, 3 secondsit instead of creating instead of insert. Yeah, this time it's update and we also have to
1:40:111 hour, 40 minutes, 11 secondsupdate our radius key or the local cache key. We have to delete it because this is a new one, new API key that's why and we have to return the plain text key.
1:40:231 hour, 40 minutes, 23 secondsNow after this the most important that is our API key last use time.
1:40:321 hour, 40 minutes, 32 secondsSo last used this is a very very critical thing. Why I'm saying it's critical because API key last used it's
1:40:401 hour, 40 minutes, 40 secondslike a very frequently changing value and we cannot like fetch this type of things for a long time. We never can do
1:40:481 hour, 40 minutes, 48 secondsthat. So that's why we are actually sending this data from our caching mechanism. from our caching mechanism meanings from radius we're fetching it
1:40:571 hour, 40 minutes, 57 secondsso that it it doesn't have any problem like whenever someone is like asking for it but otherwise for database query it's
1:41:061 hour, 41 minutes, 6 secondsdefinitely going to be slower and frequently we cannot do it and database value is also not going to be always up
1:41:121 hour, 41 minutes, 12 secondsto date like every second when the user is when our applications they're using
1:41:191 hour, 41 minutes, 19 secondsour application when application using our application.
1:41:241 hour, 41 minutes, 24 secondsYeah, means our client or our users they are using uh our SDK inside the application every time we cannot update
1:41:321 hour, 41 minutes, 32 secondsthe last use from the database. We can update radius and after a certain time let's say after 30 seconds or 1 minute then we can only update the database
1:41:411 hour, 41 minutes, 41 secondswith an like batch update which is explaining in that system design. The same thing we'll do it in here. So
1:41:481 hour, 41 minutes, 48 secondsthat's why since the radius one is real time we will forward or fetch uh the
1:41:551 hour, 41 minutes, 55 secondsdata from radius and we'll forward it to the front end.
1:42:001 hour, 42 minutesSo here we can say this radiush get the last used hash.
1:42:091 hour, 42 minutes, 9 secondsSo here we're going to use an variable so that we can use it everywhere without having any problem because let's say I'm
1:42:181 hour, 42 minutes, 18 secondsusing here on value in the G it can happen that mistakenly I added unpaling mistake then that's going to be disaster
1:42:251 hour, 42 minutes, 25 secondsbecause for this type of variable if you're doing any mistake it will definitely not work. Now uh here let's
1:42:321 hour, 42 minutes, 32 secondscome back our less used hash which is going to be OMC sorry OML
1:42:391 hour, 42 minutes, 39 secondsAPI key list
1:42:461 hour, 42 minutes, 46 secondsused and the version.
1:42:511 hour, 42 minutes, 51 secondsYeah, we can save it. We can come back here.
1:42:541 hour, 42 minutes, 54 secondsWe can import it and we can add the normalized key in here like the reax for normalizing the key.
1:43:061 hour, 43 minutes, 6 secondsThen if there is radius value then we're going to return it the simple option like most of the case it will happen
1:43:131 hour, 43 minutes, 13 secondsthat there is the last used at inside our radius and we're forwarding it to the front end then this is going to be
1:43:201 hour, 43 minutes, 20 secondsvery real time and very fast. Second option if it's not in radius then it means we have to fetch it from the database. This is the slowest one. So we
1:43:301 hour, 43 minutes, 30 secondsare basically fetching it from our database the last used ad and then we're returning it from here. Yeah that's all our API key service is actually ready.
1:43:431 hour, 43 minutes, 43 secondsNow we can come back to our API key controller and we can add all of these route on by one.
1:43:511 hour, 43 minutes, 51 secondsSo API key controller
1:44:001 hour, 44 minuteslet's come back here let's add our controller
1:44:071 hour, 44 minutes, 7 secondsuh decorator and here we can say API keys and use girts for now we don't have any
1:44:161 hour, 44 minutes, 16 secondsgirth so let's don't add it we don't need to add it but API bearer o
1:44:241 hour, 44 minutes, 24 secondswhich is coming from swagger. Uh okay fine we don't need to even add swagger for now. We don't need that. Just add
1:44:331 hour, 44 minutes, 33 secondsour class name that API key controller
1:44:411 hour, 44 minutes, 41 secondsand let's add our AP service the constructor import it.
1:44:471 hour, 44 minutes, 47 secondsNow post endpoint. The first one is going to be this is for creating on API
1:44:551 hour, 44 minutes, 55 secondskey. So we can add here on a sync create API key. It's going to receive request
1:45:021 hour, 45 minutes, 2 secondswhich type is going to be any and then gate for basically
1:45:091 hour, 45 minutes, 9 secondsgetting the all or list the all API keys.
1:45:141 hour, 45 minutes, 14 secondsthen gate and here I think list API keys.
1:45:201 hour, 45 minutes, 20 secondsYeah. The next one for like API key last used. So this is going to be something
1:45:271 hour, 45 minutes, 27 secondslike this API keys/ the ID for the API keys and we can say API key last used.
1:45:351 hour, 45 minutes, 35 secondsThe ID basically we're going to receive from param and param is from this JS common. Now delete for deleting on API
1:45:431 hour, 45 minutes, 43 secondskey same we're also receiving here the ID from the so we can add async delete
1:45:511 hour, 45 minutes, 51 secondsAPI key and we can return the AP service and delete API key now for regenerating
1:45:581 hour, 45 minutes, 58 secondsuh another API key something like this it's kind of like the same but we still we are having here on fire however
1:46:081 hour, 46 minutes, 8 secondsregenerate API key is giving error seriously why it should give error. Regenerate AP uh oh spelling mistake.
1:46:161 hour, 46 minutes, 16 secondsRegenerate API key. Yeah, now we can save it and everything is actually ready. Let's close it. This one
1:46:241 hour, 46 minutes, 24 secondsas well. Now in this imports in our API key module or actually we have to
1:46:331 hour, 46 minutes, 33 secondsadd our uh here in the imports
1:46:411 hour, 46 minutes, 41 secondsour our API key module
1:46:491 hour, 46 minutes, 49 secondssorry not here we don't need imports here basically we need the controllers which is going to be API key controller
1:46:571 hour, 46 minutes, 57 secondsand provider API key module I mean service not module. Yeah, we can save it.
1:47:081 hour, 47 minutes, 8 secondsWe can come back to our app module and in here in this imports we can right now add the
1:47:161 hour, 47 minutes, 16 secondsconfig module at first the most important one config module dot for root and make it global. So is global. Make it true.
1:47:251 hour, 47 minutes, 25 secondsAnd now we can import our API key module. We can save it. We can run our server.
1:47:331 hour, 47 minutes, 33 secondsWe can say npm run start div.
1:47:411 hour, 47 minutes, 41 secondsHere you go. It's giving some error. What it's saying? Invalid or unexpected token. Where?
1:47:521 hour, 47 minutes, 52 secondsAll right. So I fixed the problem. It was definitely not any coding issue at all. It was just like caching problem.
1:47:591 hour, 47 minutes, 59 secondsCaching problem means not our project caching problem. NextJS caching problem.
1:48:051 hour, 48 minutes, 5 secondsJust delete this disc folder. Delete like the Nest folder and clear everything. And then again write this
1:48:141 hour, 48 minutes, 14 secondsnpm run start div. And this time you will see something different a new error. And the error is saying that
1:48:221 hour, 48 minutes, 22 secondsDrizzle DB provider and everything like API key module you cannot use it like that which actually makes sense. After
1:48:291 hour, 48 minutes, 29 secondsAPI key module let's add here our other modules for an example the database
1:48:351 hour, 48 minutes, 35 secondsmodule. Let's import the database module the caching mechanism or the cache module
1:48:431 hour, 48 minutes, 43 secondsuh radius module and then we can save it. Now here you go. You can see it's actually working.
1:48:501 hour, 48 minutes, 50 secondsThere's no error right now. Red is connected. Everything is perfectly working. So it's really interesting and everything is working. So our back end
1:48:591 hour, 48 minutes, 59 secondsis ready. Right now we can start to work for the front end and we can make our API keys dynamic in front end. So let's
1:49:061 hour, 49 minutes, 6 secondscome back to our main dashboard a uh app and API keys and this page.tsx.
1:49:131 hour, 49 minutes, 13 secondsLet's come back here. When we're clicking this generate API key, the form is different. Here we are having scope
1:49:201 hour, 49 minutes, 20 secondsexpiry. But for the version one, we're not going to have all of these. So we have to modify this form a little bit.
1:49:271 hour, 49 minutes, 27 secondsAnd we're going to do it right now. Uh first of all, in here actually one thing is very important.
1:49:331 hour, 49 minutes, 33 secondsWhen we're hitting this generate new API key, we should not like add fields like this like key name, scope or expiry. We can completely delete it. We should make
1:49:421 hour, 49 minutes, 42 secondsit as simple as possible for the version one. So we can do one thing. We can completely delete this generate new API key model.
1:49:561 hour, 49 minutes, 56 secondsYeah, we don't need we need this one time secret revol dialog. We need this one. But we don't need
1:50:051 hour, 50 minutes, 5 secondslet's come back here. We don't need this generate open set generate open reveal open. That's fine. New name, new scope.
1:50:131 hour, 50 minutes, 13 secondsWe don't need anything like that.
1:50:211 hour, 50 minutes, 21 secondsWe can come back here. We can delete this the inputs also.
1:50:311 hour, 50 minutes, 31 secondsFor creating key, we don't need to send any of these. So, let's delete.
1:50:391 hour, 50 minutes, 39 secondsJust refresh the keys. That's it. Yeah. And from here, generate new key.
1:50:471 hour, 50 minutes, 47 secondsOkay. We will change it later. One thing, let me see. This is the last error. Okay. So, this is the only one.
1:50:541 hour, 50 minutes, 54 secondsNow, for generating uh the API key, for generating new key here,
1:51:021 hour, 51 minutes, 2 secondswe're going to call this create key function.
1:51:101 hour, 51 minutes, 10 secondsSo let's call the create key function inside here. It's going to send a post request to our / API/v1.
1:51:191 hour, 51 minutes, 19 secondsHowever, why await fetch? So we we don't need to do it. We need to make it
1:51:251 hour, 51 minutes, 25 secondsa gios. Actually fetch is also fine. No problem. But here is something different we have to do.
1:51:341 hour, 51 minutes, 34 secondsWe have to add here our process env
1:51:441 hour, 51 minutes, 44 secondsserver uri slash wait server uri
1:51:561 hour, 51 minutes, 56 secondsslash api keys we can say for the headers this is the important part in headers
1:52:051 hour, 52 minutes, 5 secondsthe content type application JSON fine but we have to pass
1:52:121 hour, 52 minutes, 12 secondsour authorization token so authorization
1:52:191 hour, 52 minutes, 19 secondsand beer token. Yeah. So token is basically
1:52:281 hour, 52 minutes, 28 secondscoming from our clerk hook.
1:52:361 hour, 52 minutes, 36 secondsHere we can say con con
1:52:441 hour, 52 minutes, 44 secondstoken equals to get token from cleric nextjs and we can pass the token inside here.
1:52:551 hour, 52 minutes, 55 secondsWe don't need to send anything to the body because this token itself is like doing the authentication for us. And then we'll have the response.
1:53:041 hour, 53 minutes, 4 secondsInside the response we will have our key.
1:53:101 hour, 53 minutes, 10 secondsYeah. But still let me check one thing from the back end.
1:53:151 hour, 53 minutes, 15 secondsSo source and modules and API key API key service.
1:53:241 hour, 53 minutes, 24 secondsSo we are basically returning the key.
1:53:281 hour, 53 minutes, 28 secondsYeah, we're we're receiving that in here. Yeah, everything makes sense. Now, uh let me check again the endpoint.
1:53:371 hour, 53 minutes, 37 secondsThis is / API keys. Yep. Now let's add it in our environ.
1:53:491 hour, 53 minutes, 49 secondsNext public server URI it's going to be http localhost
1:53:571 hour, 53 minutes, 57 secondsat80 / ai/v1 okay / ai/v1
1:54:041 hour, 54 minutes, 4 secondsno slash after v1 be make sure that you are doing it if you're doing any small mistake it's not going to work something
1:54:111 hour, 54 minutes, 11 secondslike this yeah uh now after this after this here everything is going to
1:54:191 hour, 54 minutes, 19 secondswork just a revoked selected this is not okay otherwise otherwise let me see
1:54:261 hour, 54 minutes, 26 secondsfor fetching the API keys this is wrong let's delete
1:54:331 hour, 54 minutes, 33 secondsall of these and we can use here our
1:54:431 hour, 54 minutes, 43 secondswe can use here our use query so that we don't need to write a lot of
1:54:521 hour, 54 minutes, 52 secondscode. We can say API keys and is loading use query.
1:55:041 hour, 55 minutes, 4 secondsSo use query is coming from our tanstack react query which we are using
1:55:121 hour, 55 minutes, 12 secondsbut we have to install it. So let's come back into main dashboard. Stop the server.
1:55:181 hour, 55 minutes, 18 secondsCopy this. Right. NPMI trans query. I think we have to add this then in like the provider.
1:55:311 hour, 55 minutes, 31 secondsHere we go. In provider we have to add our query provider.
1:55:401 hour, 55 minutes, 40 secondsSomething like this. So query provider correct query.
1:55:461 hour, 55 minutes, 46 secondsuh query provider is basically not that query client provider because all right
1:55:531 hour, 55 minutes, 53 secondslet's do one thing since we we have to add some we have to add some like parameters so
1:56:011 hour, 56 minutes, 1 secondwe should create here another folder by giving them providers and we can add our
1:56:081 hour, 56 minutes, 8 secondsquery provider ts in here
1:56:171 hour, 56 minutes, 17 secondsand we can add our export default function query provider. It's going to receive
1:56:261 hour, 56 minutes, 26 secondschildren which type is going to be
1:56:321 hour, 56 minutes, 32 secondsthe react and react node.
1:56:411 hour, 56 minutes, 41 secondsNow inside here we can say con something from use state hook. So use state from
1:56:481 hour, 56 minutes, 48 secondsreact it's going to be a callback that new query client
1:56:551 hour, 56 minutes, 55 secondsfrom tstack react query. Here we have to add some default options like queries.
1:57:021 hour, 57 minutes, 2 secondsHere we have to add on stale time like by default caching time which is going to be 5 minutes.
1:57:111 hour, 57 minutes, 11 secondsSo these are front end cache not backend cache. This is different definitely.
1:57:161 hour, 57 minutes, 16 secondsDon't get confused here. Now why you're doing twice? We are not definitely doing it twice. This is for preventing our
1:57:241 hour, 57 minutes, 24 secondsfront end side to fetch data for multiple time from our backend side.
1:57:291 hour, 57 minutes, 29 secondsYeah. So refetch on window focus we have to make it false. Otherwise like when you're going from one tab to another tab it will again refetch the data which we
1:57:371 hour, 57 minutes, 37 secondsdon't want. Retry just one. Yeah.
1:57:441 hour, 57 minutes, 44 secondsThen after this here we're getting the query client.
1:57:531 hour, 57 minutes, 53 secondsThen from here we can say return query client provider
1:58:011 hour, 58 minutes, 1 secondnot provider props. It's just query client provider.
1:58:071 hour, 58 minutes, 7 secondsJust copy this name. Query client provider.
1:58:111 hour, 58 minutes, 11 secondsQuery client provider. All looks good though. What's wrong here?
1:58:171 hour, 58 minutes, 17 secondsWe have to pass client which is going to be the query client. All right. So I found the problem why the error is
1:58:241 hour, 58 minutes, 24 secondscoming. First of all in here B make sure to change it to tsx not ts. Secondly there's a syntax mistake in here. Right
1:58:321 hour, 58 minutes, 32 secondsnow you can see there's no error and we can return the children from here. We can save it. We have to must make it use
1:58:411 hour, 58 minutes, 41 secondsclient otherwise it will give some error. So make it use client. That's it. Let's come back here.
1:58:501 hour, 58 minutes, 50 secondsImport our query provider. And here we go. We can save it. We can come back here now again.
1:58:561 hour, 58 minutes, 56 secondsAnd now in here we can say query key which is going to be API keys
1:59:051 hour, 59 minutes, 5 secondsand query fn. In this query in query function let's add as sync function because this is going to be as sync
1:59:121 hour, 59 minutes, 12 secondsfunction and we can say con token await
1:59:191 hour, 59 minutes, 19 secondsget token con response
1:59:271 hour, 59 minutes, 27 secondsawait fetch the process env V dot
1:59:361 hour, 59 minutes, 36 secondsnext public server URI
1:59:441 hour, 59 minutes, 44 secondsslash API keys. This is the endpoint and we have to pass here
1:59:541 hour, 59 minutes, 54 secondsthe authorization tokens. So something like this same like this one.
2:00:002 hoursAnd after this after this we can say con
2:00:062 hours, 6 secondsrace equals to await response dojson and we can return this race and here we
2:00:152 hours, 15 secondscan say enabled if the is loaded is true
2:00:232 hours, 23 secondsand the is signed in is true then now is loaded is signed in these are basically coming from our hook.
2:00:342 hours, 34 secondsLet's come back here.
2:00:392 hours, 39 secondsUh from here before this use query we can say con something from use user hook
2:00:452 hours, 45 secondsfrom clerk nextjs and inside here we can add the is loaded
2:00:522 hours, 52 secondsand our is signed in and we can come back here now all good in this API keys
2:01:002 hours, 1 minutefunction. This is ready. This is for like the dynamic data.
2:01:032 hours, 1 minute, 3 secondsNow in this refresh keys we don't have that that's why. So for like creating uh on API keys we can do one thing in here.
2:01:172 hours, 1 minute, 17 secondsWe have to just add this line to refetch the data. We can call query client from
2:01:252 hours, 1 minute, 25 secondstan react query and invalid queries and we have to pass the query key which is the API keys for our query key. Now
2:01:342 hours, 1 minute, 34 secondsquery client query client I did one small mistake query client is going to be a variable
2:01:442 hours, 1 minute, 44 secondswhich is basically coming from this use query client here. Now let's come back here again.
2:01:542 hours, 1 minute, 54 secondsAfter creating the key, we're revalidating it.
2:01:592 hours, 1 minute, 59 secondsOkay. Now here, scroll down and let's see where is the next error. So the next error is in here I guess. Revoked selected.
2:02:112 hours, 2 minutes, 11 secondsYeah. So here we can add the same line.
2:02:192 hours, 2 minutes, 19 secondsSo this is for revoking the key. So for uh for this project we have definitely revoking features like the delete API
2:02:272 hours, 2 minutes, 27 secondskey or revoke. It's the same thing for now. Let's keep it empty
2:02:362 hours, 2 minutes, 36 secondsfor now. Let's keep it empty. We don't need to do anything in here.
2:02:462 hours, 2 minutes, 46 secondsYeah, we will work here later one. That's it.
2:02:532 hours, 2 minutes, 53 secondsNow we can come back here. We can give on reload. It's loading, loading, loading forever.
2:03:002 hours, 3 minutesWhy? Let's try to see.
2:03:052 hours, 3 minutes, 5 secondsSo, it's giving on codes error. Okay, it makes sense because we're giving request from local host 3001. That's why. No
2:03:132 hours, 3 minutes, 13 secondsproblem. Now let's come back to our services source main.ts and we have to do here some configuration
2:03:222 hours, 3 minutes, 22 secondslike we have to set up here code. So we can do one thing after this app here we
2:03:292 hours, 3 minutes, 29 secondshave to make body purser false by default. Why? So that like we will have web hook feature in the future. And for
2:03:372 hours, 3 minutes, 37 secondsweb way we have to keep it like the body body personal so that that can reach out to our server. However, for the other
2:03:452 hours, 3 minutes, 45 secondsparts we'll definitely make it true. For now let's say app dot set global prefix
2:03:532 hours, 3 minutes, 53 secondsAPI. So like we're setting on global prefix. So that's why our endpoint is going to be the AT80 like localhost
2:04:012 hours, 4 minutes, 1 seconduh http localhost at80/ ai then slash we have to set here on versions we can say
2:04:102 hours, 4 minutes, 10 secondsenable versioning the version type is going to be version type dot uri and
2:04:172 hours, 4 minutes, 17 secondsdefault version is going to be one yeah and the next line the important one that
2:04:242 hours, 4 minutes, 24 secondsappenable force origin make it true
2:04:332 hours, 4 minutes, 33 secondsand the methods just add all the methods like get hate uh put patch post delete
2:04:392 hours, 4 minutes, 39 secondsand options and credentials make it true so that we can like receive the service
2:04:452 hours, 4 minutes, 45 secondsside only cookies. Yeah. And after this for now it's fine but we have to write some more code. Uh but for now it's
2:04:542 hours, 4 minutes, 54 secondsfine. uh when we have to write more code when we will set up the web hook that time and uh one more thing we can say
2:05:012 hours, 5 minutes, 1 secondapp dot use global pipes
2:05:072 hours, 5 minutes, 7 secondshere we can add new validation type white list make it true
2:05:172 hours, 5 minutes, 17 secondsfor uh for bit unknown sorry for bit nonwhite listed make it true
2:05:242 hours, 5 minutes, 24 secondsand transform make it true as well.
2:05:312 hours, 5 minutes, 31 secondsYeah, we can save it.
2:05:342 hours, 5 minutes, 34 secondsThat's it for now. It's fine. If we come back here again, wait, it's saying class validator
2:05:422 hours, 5 minutes, 42 secondspackage is missing. Okay, so because we're using the validation pipe, that's why I think we have to install this. So,
2:05:492 hours, 5 minutes, 49 secondsnpmi class validator inside our services. We make sure to install this library.
2:05:572 hours, 5 minutes, 57 secondsHowever, I think I did some spelling mistake. Class validator could not be found. What class validator JS?
2:06:112 hours, 6 minutes, 11 secondsYeah. So, just copy this and paste. Yeah, that's it. ready.
2:06:202 hours, 6 minutes, 20 secondsSo I added a wrong sping that's why now we can again start the server npm run start.
2:06:322 hours, 6 minutes, 32 secondsAnd here you go. All good. Let's come back to here again. Give on reload.
2:06:432 hours, 6 minutes, 43 secondsInternal server error. Okay. Let's see what's wrong. It's saying cannot read properties of undefined reading ID.
2:06:562 hours, 6 minutes, 56 secondsUh okay, no worries. Let me see one thing from controllers modules API key controller reading ID.
2:07:082 hours, 7 minutes, 8 secondsWe're listing the all API keys from here and it's saying canary properties ID. I
2:07:172 hours, 7 minutes, 17 secondsthink that the reason is in here the user ID is not available and we
2:07:262 hours, 7 minutes, 26 secondsdidn't add here like our guard yet that's why. However, if you console lock like this request user id you will
2:07:342 hours, 7 minutes, 34 secondsdefinitely notice it's fully empty. So what what is the solution in here? Can we create the API key like this?
2:07:442 hours, 7 minutes, 44 secondsCan we create the API key? We cannot because we have to pass the user ID and
2:07:502 hours, 7 minutes, 50 secondsuser ID. We don't have it in here. We have to create our O guard to retrieve
2:07:572 hours, 7 minutes, 57 secondsthe user ID from the from the token we are sending in here.
2:08:032 hours, 8 minutes, 3 secondsYou can see we're sending the bearer token. From here we can add it and however for the API keys
2:08:122 hours, 8 minutes, 12 secondshow we we're doing map from keys what why we don't need to do that we will do
2:08:212 hours, 8 minutes, 21 secondsmap from this API keys not keys same here
2:08:342 hours, 8 minutes, 34 secondsand all good in here. Instead of keys, make it API keys
2:08:512 hours, 8 minutes, 51 secondsand the type is giving error which is very natural because we don't have we
2:08:582 hours, 8 minutes, 58 secondsstill don't have any type for keys that's why here you can see key row which is in here. We're not having fields like this.
2:09:112 hours, 9 minutes, 11 secondsSo, we can delete the key rows.
2:09:212 hours, 9 minutes, 21 secondsLet me see here. We don't have keys. So, we let's make it API keys.
2:09:282 hours, 9 minutes, 28 secondsAnd anything else? Let me check.
2:09:312 hours, 9 minutes, 31 secondsThe code base is like older. I mean, uh it was the previous codebase. So that's why we're updating a lot.
2:09:412 hours, 9 minutes, 41 secondsWe're fine. No problem. We can fix all of this status color. Cannot find status color because we deleted the status color.
2:09:522 hours, 9 minutes, 52 secondsYeah, we don't need to delete it. Let's make it any.
2:09:572 hours, 9 minutes, 57 secondsAnd here change it to API keys.
2:10:062 hours, 10 minutes, 6 secondsYeah. And still mode six errors we can easily fix but that's not any solution if we add here any for the API keys.
2:10:142 hours, 10 minutes, 14 secondsHowever, we cannot define type like this in here.
2:10:192 hours, 10 minutes, 19 secondsCan we type like this? No, I don't think so. Okay. Fine.
2:10:232 hours, 10 minutes, 23 secondsBut uh and and one more thing the is loading. So here we must have to add on line that
2:10:332 hours, 10 minutes, 33 secondsif the is loading is true then return null.
2:10:432 hours, 10 minutes, 43 secondsNow API key is dot map let's say any
2:10:522 hours, 10 minutes, 52 secondsnumber the index one problem solving done definitely it's
2:11:002 hours, 11 minutesjust temporary solution like we're adding any for the type we don't know the status or even it has the status
2:11:082 hours, 11 minutes, 8 secondsfield or not we're kind of like blindly doing it because we don't have the data yet however No problem.
2:11:152 hours, 11 minutes, 15 secondsJust two more type errors here and here. Just make it any and same in here. Any.
2:11:242 hours, 11 minutes, 24 secondsWe can save it. But it's not going to solve any problem. You can see AP keys.
2:11:282 hours, 11 minutes, 28 secondsIt's giving error. API keys. Is not a function. All right. I found uh I find out the problem. I mean the solution also. And first of all we have to come
2:11:382 hours, 11 minutes, 38 secondsback to our API key controller from this list API key which one is giving error because the request do user do ID is not
2:11:472 hours, 11 minutes, 47 secondsavailable. So just add it something like this just a temporary value for now.
2:11:522 hours, 11 minutes, 52 secondsOkay definitely it's not going to be the final one just for now just a static value like this. Now even if we try you
2:11:592 hours, 11 minutes, 59 secondswill see another error and the error will be basically from our
2:12:072 hours, 12 minutes, 7 secondsbackend side 1 minute. So network
2:12:162 hours, 12 minutes, 16 secondssee 500 error and it's not showing here but it will definitely like it's it's giving another
2:12:232 hours, 12 minutes, 23 secondserror for database connection problem and the solution is we have to come back to our this database module and after
2:12:332 hours, 12 minutes, 33 secondsthis drizzle DB we have to add this line neon config and websocket constru contractor and WS WS means the
2:12:422 hours, 12 minutes, 42 secondswebsocket. Import WS from websocket. Be make sure that you are installing this WS library like this that npmws and then we can start our server again.
2:12:562 hours, 12 minutes, 56 secondsAnd this time you will notice after adding this ABC in here just API keys just give on reload
2:13:042 hours, 13 minutes, 4 secondsthe API keys. It should not give error this time but still it's giving error. Okay fine. Let's come back here. Let's do one
2:13:132 hours, 13 minutes, 13 secondstemporary thing for now that is API keys. Make it API keys data
2:13:212 hours, 13 minutes, 21 secondsand con API keys is going to be for now empty array.
2:13:322 hours, 13 minutes, 32 secondsYeah. What what's it saying?
2:13:352 hours, 13 minutes, 35 secondsOkay. Yeah. So for the type let's say any we can save it. Here you go it's fully empty because the is loading that's why.
2:13:482 hours, 13 minutes, 48 secondsHowever this time you can see API keys is giving 304 and 200. It means we're getting an empty array in here. Perfect.
2:13:562 hours, 13 minutes, 56 secondsSo we can add here API keys data or an empty array.
2:14:042 hours, 14 minutes, 4 secondsYou can see no error.
2:14:072 hours, 14 minutes, 7 secondsHowever, we have to add here on loader which we will do. But first here this is saying loaded saved API keys.
2:14:172 hours, 14 minutes, 17 secondsAll right. Let me do one thing. Let's delete this and scroll down in here.
2:14:252 hours, 14 minutes, 25 secondsThe loading uh loaded side API key it's coming from here. Let's delete this state. We don't need that at all
2:14:332 hours, 14 minutes, 33 secondsbecause we are having our is loading and there is another error because it's
2:14:402 hours, 14 minutes, 40 secondsloading keys. It's going to be is loading.
2:14:462 hours, 14 minutes, 46 secondsYeah. So when you're giving a reload see loaded loading API keys and no API keys created yet. So right now we can create
2:14:532 hours, 14 minutes, 53 secondsone. However, even if we create, let me check one thing from the codebase.
2:15:022 hours, 15 minutes, 2 secondsSo, the creation create API key or generate.
2:15:182 hours, 15 minutes, 18 secondsYeah, generate a new key button. So, create key.
2:15:242 hours, 15 minutes, 24 secondsAll looks good but one thing is not okay in here and that is this API keys. So uh for creating the API key we are still passing the user ID. Let's do one thing.
2:15:352 hours, 15 minutes, 35 secondsLet's check our user ID from cleric dashboard. So let's come back inside here in cleric dashboard.
2:15:432 hours, 15 minutes, 43 secondsThen we can find out the user ID. Here you go. We can copy the user ID for now.
2:15:482 hours, 15 minutes, 48 secondsJust paste it in here since we're not having the guard yet. So we can do it.
2:15:532 hours, 15 minutes, 53 secondsIt's the only option now. Let's come back here. Let's hit generate a new key. What's happening?
2:16:012 hours, 16 minutes, 1 secondOkay. So, when we are hitting the generate API key, you can see your new API key. This is basically the API key.
2:16:082 hours, 16 minutes, 8 secondsYou can hit the copy button from here to copy the API key. If you come back here, you will notice it's already in here.
2:16:172 hours, 16 minutes, 17 secondsSo, it's breaking. It's not like that.
2:16:192 hours, 16 minutes, 19 secondsIt's not breaking. We have to copy this and we can say I stored it safely.
2:16:232 hours, 16 minutes, 23 secondsHowever, this time it's showing nothing which makes sense. We have to update few things, not view a lot of things. But
2:16:302 hours, 16 minutes, 30 secondsit's it's working which is a good for a good news for us. We can store this API
2:16:362 hours, 16 minutes, 36 secondskey somewhere safely. Let's say in here secret.txt just for now.
2:16:442 hours, 16 minutes, 44 secondsLet's paste our paste our API key. Okay.
2:16:482 hours, 16 minutes, 48 secondsAll right. Now these values are not showing here. So we have to make it visible. We can do it. First we have to
2:16:562 hours, 16 minutes, 56 secondscheck our API keys. So we are basically getting the
2:17:042 hours, 17 minutes, 4 secondsID prefix last used at and revoked at
2:17:122 hours, 17 minutes, 12 secondsthe API key name. We're not having any name. We're basically having prefix instead of name.
2:17:212 hours, 17 minutes, 21 secondsSo we can say prefix K dot prefix we don't have scope we have
2:17:332 hours, 17 minutes, 33 secondscreated it last use and status and actions yeah we don't have scope
2:17:412 hours, 17 minutes, 41 secondsso here we can see the prefix in here now created at where is the created at here you go
2:17:492 hours, 17 minutes, 49 secondscreated add. So created add.
2:17:562 hours, 17 minutes, 56 secondsHere we go. However, it's not looking good because we we have to use an library. I like the library. It's called
2:18:042 hours, 18 minutes, 4 secondstime ago.js. So npmi time ago.js and start our server again. This is
2:18:122 hours, 18 minutes, 12 secondsinside main dashboard. Now in here we can cut this. We can add
2:18:202 hours, 18 minutes, 20 secondsformat and we can pass this. Now for the format
2:18:302 hours, 18 minutes, 30 secondswe have to wait. Yeah, it should be something like this.
2:18:352 hours, 18 minutes, 35 secondsNow format we have to import it from time ago JS. import format from time agojs.
2:18:452 hours, 18 minutes, 45 secondsYeah, we can save it. There you go. You can see created 3 minutes ago. Last used ad.
2:18:532 hours, 18 minutes, 53 secondsThis is completely empty now because it's null. So when the last used ad is null, we can check one thing.
2:19:092 hours, 19 minutes, 9 secondsScope, we don't need scope. Let's delete scope name.
2:19:192 hours, 19 minutes, 19 secondsThis is for key detail drawer. Uh okay, we are having here key detail drawer. We even don't need the key detail drawer.
2:19:282 hours, 19 minutes, 28 secondsHowever, you can see it has no problem.
2:19:312 hours, 19 minutes, 31 secondsNow, uh after the key dot created at in here, last used, it's going to be less used like this.
2:19:412 hours, 19 minutes, 41 secondslast used add or like no uses yet or something like that
2:19:502 hours, 19 minutes, 50 secondswe can say yeah no uses yet let's make the N to
2:19:582 hours, 19 minutes, 58 secondscapital no users yet status for the API key we're not having any status like
2:20:062 hours, 20 minutes, 6 secondsthat but if the revoked at is uh not true. Okay, we can say one thing
2:20:132 hours, 20 minutes, 13 secondsrevoked at is not null.
2:20:192 hours, 20 minutes, 19 secondsRevoked spelling is wrong. It should be something like this. So revoked at if
2:20:272 hours, 20 minutes, 27 secondsit's not null then status going to be active.
2:20:382 hours, 20 minutes, 38 secondsOtherwise revoked. Yeah. Same here. We can copy
2:20:462 hours, 20 minutes, 46 secondsthis. We can add it in here.
2:20:512 hours, 20 minutes, 51 secondsLet's come back here. You can see status. It's showing revoked which is funny. Okay. It should be done then opposite revoked at is not null.
2:20:592 hours, 20 minutes, 59 secondsIf null then active otherwise revoke. Yeah.
2:21:072 hours, 21 minutes, 7 secondsNow it's active because it's originally active. Now for revoking it's not going to work. However, in active keys, let's
2:21:162 hours, 21 minutes, 16 secondschange to active keys in here. Active keys active count.
2:21:232 hours, 21 minutes, 23 secondsWe can say uh one minute revoked.
2:21:312 hours, 21 minutes, 31 secondsI have to copy this line again. Yeah.
2:21:392 hours, 21 minutes, 39 secondsAnd here we can say k dot status instead of k. status kre revoked at if it's null.
2:21:502 hours, 21 minutes, 50 secondsWhat the hell we're doing bro?
2:21:552 hours, 21 minutes, 55 secondsYeah this is this is actually makes sense. I can see revoked.
2:22:002 hours, 22 minutesIt's not null. Then yeah and same thing for here instead of K dot status equals to active
2:22:092 hours, 22 minutes, 9 secondsmake it K. revoked at equals to null then yeah active key is one revoked zero less generated time.
2:22:192 hours, 22 minutes, 19 secondsThis is for created at yeah 6 minutes ago. Perfect.
2:22:322 hours, 22 minutes, 32 secondsOkay, all looks good. Just we don't need this drawer or even if you're having it that's fine. Let's say like new feature
2:22:402 hours, 22 minutes, 40 secondswe can say. But we have to change the values because it's right now not showing us the values which makes sense.
2:22:472 hours, 22 minutes, 47 secondsIt's going to be created underscore add format.
2:23:032 hours, 23 minutes, 3 secondsYeah. Created add key row selected. No, it's going to be any.
2:23:102 hours, 23 minutes, 10 secondsWe don't need this key row. So you can see created it 7 minutes ago.
2:23:192 hours, 23 minutes, 19 secondsPerfect.
2:23:232 hours, 23 minutes, 23 secondsUh now next one I'm losing the code very fast because it's a very big code base.
2:23:302 hours, 23 minutes, 30 secondsAll right. Last use it's going to be less used at or null. But we have to add
2:23:382 hours, 23 minutes, 38 secondsit inside format
2:23:472 hours, 23 minutes, 47 secondsexcept this because null cannot be formatted.
2:23:522 hours, 23 minutes, 52 secondsYeah, last used sorry. So since it's null that's showing just now let's do one thing. If selected
2:24:012 hours, 24 minutes, 1 secondlist used at available then this
2:24:082 hours, 24 minutes, 8 secondsnot available we can say if not null then this otherwise
2:24:182 hours, 24 minutes, 18 secondsno uses yet but in a double quotation.
2:24:272 hours, 24 minutes, 27 secondsYeah. No uses yet. And status for the status here.
2:24:362 hours, 24 minutes, 36 secondsLet's copy this and let's add it.
2:24:452 hours, 24 minutes, 45 secondsYes. So K instead of K we have to add here. Select it.
2:24:542 hours, 24 minutes, 54 secondsAnd same here.
2:25:022 hours, 25 minutes, 2 secondsYeah, we can save it. Here we go. Status active. Now revoke.
2:25:082 hours, 25 minutes, 8 secondsIf we hit revoke, what's going to happen? Let's see.
2:25:142 hours, 25 minutes, 14 secondsFor revoke, revoke slated. Okay. So the function is
2:25:242 hours, 25 minutes, 24 secondsempty right now. So nothing will happen but what we will basically call in here we will do nothing we will just call the
2:25:312 hours, 25 minutes, 31 secondsdelete API key this one and then this will just revoke the API
2:25:392 hours, 25 minutes, 39 secondskey and if you hit this generate a new key it will create another new key for you
2:25:472 hours, 25 minutes, 47 secondsbut one thing I would like to check generate API key
2:25:562 hours, 25 minutes, 56 secondssorry new key here when we're clicking here
2:26:062 hours, 26 minutes, 6 secondsthe create key set is creating yeah
2:26:122 hours, 26 minutes, 12 secondshere we can say if the set like
2:26:212 hours, 26 minutes, 21 secondsset is creating is true then generating
2:26:312 hours, 26 minutes, 31 secondsotherwise generate is creating not say okay is creating if it's true then generating or generate
2:26:392 hours, 26 minutes, 39 secondsnew key same in here disabled if is creating is true or limit reach is true then so by default it's false when we're
2:26:492 hours, 26 minutes, 49 secondsclicking to create a new key it's getting true and at the end it's also false. Perfect. All makes sense.
2:26:572 hours, 26 minutes, 57 secondsEven if you right now hit this generate epic, you can see it's perfect. It's generating. And here we go. We can copy
2:27:052 hours, 27 minutes, 5 secondsthis. We can hit that I stored it safely. And yeah, this one is the new one. Just one thing is not looks good
2:27:142 hours, 27 minutes, 14 secondshere that this data should be above and this one should be down.
2:27:202 hours, 27 minutes, 20 secondsAnd one more thing about the format. So format here here we can say capitalize.
2:27:332 hours, 27 minutes, 33 secondsYeah. Done.
2:27:372 hours, 27 minutes, 37 secondsOkay. All good. Now what next? The revoking one. We're going to make it. No problem.
2:27:472 hours, 27 minutes, 47 secondsWe just have to copy this try catch simply
2:27:552 hours, 27 minutes, 55 secondsand set is creating again make it true.
2:28:012 hours, 28 minutes, 1 secondNo will open 1 minute. Let me check the code base a little bit.
2:28:072 hours, 28 minutes, 7 secondsSo when we are hitting the revoke uh my brain is confused. One minute the
2:28:172 hours, 28 minutes, 17 secondsrevoking let me see revoke
2:28:252 hours, 28 minutes, 25 secondsand anyone will be confused in here like a big code base like this.
2:28:312 hours, 28 minutes, 31 secondsthe confusion is coming because it's been a very long time I write this code and right now I'm just like fixing
2:28:382 hours, 28 minutes, 38 secondsthings in here that's why writing code is easier than fixing a code base uh here when someone is clicking the
2:28:482 hours, 28 minutes, 48 secondsrevoke button we're selecting it yeah that's why like it's showing in here but if we click here
2:28:562 hours, 28 minutes, 56 secondsrevoke okay and from here we have to revoke the Okay, interesting.
2:29:042 hours, 29 minutes, 4 secondsAnd here we don't need this logic that if it's default then blah blah blah blah because we are not having any default key like
2:29:122 hours, 29 minutes, 12 secondsthis. It was the older version older version of 1 minute clocks. Okay, let me delete.
2:29:242 hours, 29 minutes, 24 secondsYeah.
2:29:262 hours, 29 minutes, 26 secondsNow if selected name and true then active count. Yeah. Fine.
2:29:352 hours, 29 minutes, 35 secondsRevoked from here. Revoke revoke
2:29:452 hours, 29 minutes, 45 secondsdialogue is this state connected with this state.
2:29:532 hours, 29 minutes, 53 secondsOkay. Side drawer side. Side gray.
2:30:142 hours, 30 minutes, 14 secondsYeah, this one.
2:30:172 hours, 30 minutes, 17 secondsHere is the revoked button. Okay. So we are basically again calling the revoke selected
2:30:252 hours, 30 minutes, 25 secondsand wait is it creating another API key?
2:30:312 hours, 30 minutes, 31 secondsNo. Okay. That's great. So revoke lake date from here.
2:30:442 hours, 30 minutes, 44 secondsIf we are clicking the revoke button and active count is more than like less
2:30:512 hours, 30 minutes, 51 secondsthan one then selected name we don't need this one.
2:31:012 hours, 31 minutes, 1 secondAll right. Now in here for deleting the API keys
2:31:092 hours, 31 minutes, 9 secondsit's delete and we just have to pass the ID
2:31:172 hours, 31 minutes, 17 secondswhich is the selected dot ID I guess
2:31:242 hours, 31 minutes, 24 secondsmethod is going to be delete and this things we don't need anything
2:31:342 hours, 31 minutes, 34 secondsjust revalidate the query key. Yeah. And set is creating it's not need to be true
2:31:422 hours, 31 minutes, 42 secondsbecause we're not making the set is creating. We we can add another state if we want or even instead of making one
2:31:502 hours, 31 minutes, 50 secondsfunction like this we could make it also query function which would also work but fine for now let's add here
2:32:002 hours, 32 minutesanother state by giving them something like is revoking
2:32:062 hours, 32 minutes, 6 secondsand set is revoking
2:32:142 hours, 32 minutes, 14 secondsyour Eight initially false at first after selecting make it true.
2:32:282 hours, 32 minutes, 28 secondsAnd finally in here make it false.
2:32:342 hours, 32 minutes, 34 secondsOkay. Selected do ID I just want to check it here. Selected do ID then return.
2:32:432 hours, 32 minutes, 43 secondsNow, now again come back to the revoke button and disabled
2:32:502 hours, 32 minutes, 50 secondsfirst if the is revoking state is true and then the rest of the logic. Yeah.
2:33:022 hours, 33 minutes, 2 secondsAnd here we can say if the is revoking is true then revoking otherwise revoke.
2:33:152 hours, 33 minutes, 15 secondsYeah, we can save it. Now let's come back here. Let's hit revoke button
2:33:222 hours, 33 minutes, 22 secondsand cannot revoke the only active API keyword. Okay, let me see the active count.
2:33:362 hours, 33 minutes, 36 secondsCannot what is the error message?
2:33:422 hours, 33 minutes, 42 secondsWhere is this? Okay, here it is. The active count selected name. There is no name.
2:34:032 hours, 34 minutes, 3 secondsI keep count.
2:34:062 hours, 34 minutes, 6 secondsThis
2:34:212 hours, 34 minutes, 21 secondswe don't need this at all. Just delete the tool tip content.
2:34:292 hours, 34 minutes, 29 secondsOkay. Cannot found api/v1/delete. Oh, sorry, sorry, sorry, sorry, sorry.
2:34:382 hours, 34 minutes, 38 secondsOh, my brain is getting exhausted now this time. Yeah, things are going well.
2:34:442 hours, 34 minutes, 44 secondsHere we have to add this API keys. This was
2:34:512 hours, 34 minutes, 51 secondslike the entry entry point. Yeah. Now, if we hit revoke internal server error, what is saying?
2:35:012 hours, 35 minutes, 1 secondselected do ID cannot read property of this what why
2:35:082 hours, 35 minutes, 8 secondsconsole lock selected yeah there is ID in here what's wrong in
2:35:192 hours, 35 minutes, 19 secondsback end what's the error it's saying cannot read undefined it's ah yeah because in in delete uh here in delete
2:35:272 hours, 35 minutes, 27 secondsrequest user do ID is not available that's by.
2:35:322 hours, 35 minutes, 32 secondsSo just make it like this. Yeah, now it will work. Revoking done. I think it should be deleted now.
2:35:432 hours, 35 minutes, 43 secondsYeah.
2:35:482 hours, 35 minutes, 48 secondsLet me give reload one minute here.
2:36:012 hours, 36 minutes, 1 secondRevoke at they both have revoked. Yeah, you can see that's why it's saying revoked.
2:36:162 hours, 36 minutes, 16 secondsAnd when the status is revoked, you cannot revoke it again.
2:36:472 hours, 36 minutes, 47 secondsOkay, that revoked I guess. Uh, no.
2:36:572 hours, 36 minutes, 57 secondsYeah, no actions button because it's revoked already.
2:37:032 hours, 37 minutes, 3 secondsYou cannot revoke it again, bro. Okay, fine. So, let me just
2:37:102 hours, 37 minutes, 10 secondscopy this in the drawer. Let me add it in here again.
2:37:282 hours, 37 minutes, 28 secondsYeah, you can see no revoked ad option right now because it's already revoked.
2:37:352 hours, 37 minutes, 35 secondsYeah, uh while working but it's not definitely like the way we wanted. We can right now generate a new
2:37:432 hours, 37 minutes, 43 secondsone like let's hit generate new one. We can copy and we can hit that I stored it safely and here you go. It's in here and
2:37:532 hours, 37 minutes, 53 secondseverything is fine. But one thing is not fine and that is we have to make our o guard. Right now without the o guard this is not going to work perfectly.
2:38:042 hours, 38 minutes, 4 secondsYeah it's very very important. So yeah right now our this work is done. Just one thing I would like to change in here
2:38:122 hours, 38 minutes, 12 secondsthat revoke selected here we have to close the like side drawer.
2:38:212 hours, 38 minutes, 21 secondsSo the side drawer is in here selected.
2:38:232 hours, 38 minutes, 23 secondsIf it's true then we have to make it a null basically. Yeah.
2:38:302 hours, 38 minutes, 30 secondsSo set selected null we can make it then that will be like close and
2:38:382 hours, 38 minutes, 38 secondsyeah that's that's all we don't need to do anything else. Yeah right now even if you try this you can see revoking.
2:38:482 hours, 38 minutes, 48 secondsYeah here you go. All good.
2:38:512 hours, 38 minutes, 51 secondsThat's it. So right now our next task is to start to work with the Ogard and it's very very important. So
2:38:592 hours, 38 minutes, 59 secondsright now don't waste any time. Let's start to work with Ogard.
Chapter 6: Building the AuthGuard
2:39:032 hours, 39 minutes, 3 secondsAll right, welcome back to a new part and in this part we're going to start to work with our og guard and it's going to be a fun work. So let's get started.
2:39:142 hours, 39 minutes, 14 secondsLet's come back inside services folder and source folder or src folder and inside gs we have to create a new file
2:39:222 hours, 39 minutes, 22 secondsby giving them o g inside here we have to start to work right now and first of all in here
2:39:302 hours, 39 minutes, 30 secondswe're going to add our injectable decorator from nestjs / common and we
2:39:372 hours, 39 minutes, 37 secondscan say export class o gird
2:39:462 hours, 39 minutes, 46 secondsand implements our can activate from nestjs common and let's use your constructor we have to
2:39:542 hours, 39 minutes, 54 secondsinject our drizzle db we can say private db the type
2:40:052 hours, 40 minutes, 5 secondsuh let's add type it's like neon http database this
2:40:152 hours, 40 minutes, 15 secondstype of schema. Now schema is coming from our database schema.
2:40:242 hours, 40 minutes, 24 secondsSo we can say import uh everything as
2:40:342 hours, 40 minutes, 34 secondsschema from dot dot slash database and schema.
2:40:432 hours, 40 minutes, 43 secondsUh, regarding the neon database, let's import our neon database.
2:40:542 hours, 40 minutes, 54 secondsimport neon database from drizzle o/neon http.
2:41:032 hours, 41 minutes, 3 secondsYeah.
2:41:052 hours, 41 minutes, 5 secondsAfter this, we have to inject our radius client something like this. And let's import the array client.
2:41:182 hours, 41 minutes, 18 secondsYeah, we can come here now and we can start
2:41:242 hours, 41 minutes, 24 secondsour async can activate and context is going to be execution
2:41:312 hours, 41 minutes, 31 secondscontext. Very good. But here don't need to make it long like this. Let's say it's going to be a promise. It's going to return a promise.
2:41:422 hours, 41 minutes, 42 secondsand it type is going to be boolean. So it's basically going to return a boolean. Now
2:41:482 hours, 41 minutes, 48 secondswe're going to receive our request in here. So we can say context then dot switch to HTTP dot get request like the
2:41:582 hours, 41 minutes, 58 secondsheader request or yeah we're basically going to check the headers. So here we
2:42:042 hours, 42 minutes, 4 secondscan say API key which we're getting from request dot headers
2:42:122 hours, 42 minutes, 12 secondsand it's something like this that X API key.
2:42:192 hours, 42 minutes, 19 secondsYeah. So if you are like passing the API key then we're getting that in here and however let's import radius from IO
2:42:262 hours, 42 minutes, 26 secondsradius. After this if there is API key
2:42:342 hours, 42 minutes, 34 secondsthen we have to check that is the API key valid or not. So we can use here on function on helper function that extract
2:42:422 hours, 42 minutes, 42 secondskey id which is basically going to extract the public ID from our API key.
2:42:482 hours, 42 minutes, 48 secondsExtract key ID it's going to be a helper function in this utils folder. So let's create a new folder by giving name utils
2:42:572 hours, 42 minutes, 57 secondsand here we can say let's say API key verifier dot keys actually.
2:43:102 hours, 43 minutes, 10 secondsYeah. And we can write here our extract key id function which going to
2:43:162 hours, 43 minutes, 16 secondsreceive the plain key which is string and going to return
2:43:232 hours, 43 minutes, 23 secondsstring or um null. Yeah.
2:43:302 hours, 43 minutes, 30 seconds[snorts]
2:43:302 hours, 43 minutes, 30 secondsIf there is no plain key or the plain key dot starts with
2:43:382 hours, 43 minutes, 38 secondsour ml and underscore meaning one locks and underscore then return null.
2:43:472 hours, 43 minutes, 47 secondsNow we need the parts of the API key. So we can say plain key dotsplit
2:43:552 hours, 43 minutes, 55 secondsand underscore if the parts dot length is more than
2:44:032 hours, 44 minutes, 3 secondsthree then return the null. Now we can say con key id
2:44:112 hours, 44 minutes, 11 secondswords and let's get the first index from our like words from first index means
2:44:192 hours, 44 minutes, 19 secondsbasically the like uh public ID because again try to remember this is our API
2:44:262 hours, 44 minutes, 26 secondskey OML the flag and first index doesn't mean this one okay I think you know this is the basic JavaScript this is the
2:44:332 hours, 44 minutes, 33 secondsfirst meanings actually zero and one meanings the public ID and
2:44:422 hours, 44 minutes, 42 secondspublic ID and last one is like the secret key. So we are basically targeting the public ID which we need to
2:44:482 hours, 44 minutes, 48 secondstarget. That's basically the key ID. Now we're going to check the key ID with an
2:44:552 hours, 44 minutes, 55 secondsreax pattern. Very very important. We're going to check that is it really an EU ID or it's something like a random value. So we can check that with this
2:45:042 hours, 45 minutes, 4 secondsthat if it's an real EU id then very good otherwise return null if it's not then return null otherwise return the
2:45:132 hours, 45 minutes, 13 secondskey ID that yeah it's valid. So it's just like a validation layer where valid we're validating it that the API key is valid or not especially the the key ID.
2:45:242 hours, 45 minutes, 24 secondsYeah. So this is the first layer of security and we can say if the key ID is not somehow valid then we can say
2:45:332 hours, 45 minutes, 33 secondsinvalid API key we can throw on new unauthorized exemption error and after
2:45:412 hours, 45 minutes, 41 secondsthis if it's valid then we have to digest the API key now we're not going to eat the API key it's basically
2:45:492 hours, 45 minutes, 49 secondsmeaning we are just like changing the API key spec ially this key id into a format
2:45:582 hours, 45 minutes, 58 secondswhich format we will like add in inside our radius because we don't want to add the raw data like the raw value into
2:46:072 hours, 46 minutes, 7 secondsradius that's dangerous that's why we're going to use this digest this digest is nothing it just like on helper function
2:46:142 hours, 46 minutes, 14 secondsin this utils we can create our key digests
2:46:212 hours, 46 minutes, 21 secondsit's going to use the crypto library, the built-in library of NodeJS to change
2:46:272 hours, 46 minutes, 27 secondsthe value to a different like hash value. Not hash, it's like an encrypted
2:46:352 hours, 46 minutes, 35 secondsvalue because hash means you cannot hash means you cannot like check it sorry you
2:46:422 hours, 46 minutes, 42 secondscannot take it back to the raw version but encryption means you can take it back into the raw version. So there is different in hashing and encryption. And
2:46:512 hours, 46 minutes, 51 secondshere we are going to like encrypt this with an secret key. So
2:46:572 hours, 46 minutes, 57 secondswe can say process.env.ra key secret. Very very important. We still don't have this. We will create.
2:47:072 hours, 47 minutes, 7 secondsNow if the radius key secret is not available then we can return an error for our internal service that yeah radius key
2:47:162 hours, 47 minutes, 16 secondsenvironment is must required and otherwise we can basically hash sorry we can like use the shadow 56
2:47:252 hours, 47 minutes, 25 secondswe can encrypt the data we're using this one the like we're desting it in the hexadimal value I
2:47:342 hours, 47 minutes, 34 secondsthink so hx means hexadimal it should We can save it. We can come back here. Let's import digest.
2:47:422 hours, 47 minutes, 42 secondsWe can save it. Now for the radius key secret, let's do one thing.
2:47:492 hours, 47 minutes, 49 secondsLet's use open SSL and random random hexodimal 32 characters value. So just
2:47:572 hours, 47 minutes, 57 secondscopy this and add it as the radius key secret in our env. I'm not doing it inv.
2:48:042 hours, 48 minutes, 4 secondsI created actually an envamp example for you so that I can show you that how I'm adding the value. So something like this
2:48:112 hours, 48 minutes, 11 secondsand the radius key secret just add that in here. Yeah. But let me
2:48:222 hours, 48 minutes, 22 secondsadd in the real env right now from another screen. Yeah.
2:48:312 hours, 48 minutes, 31 secondsAnd we make sure to use a different value for the radius key secret by using open SSL. Even if if the open SSL is not
2:48:392 hours, 48 minutes, 39 secondsworking for your laptop, be sure that you are having open SSL in your device.
2:48:432 hours, 48 minutes, 43 secondsSo you can say open SSL for Windows or for like Mac, which one you are using.
2:48:492 hours, 48 minutes, 49 secondsIf I'm using Mac, so I can say OpenSSL for Mac. You can see this is the comment to install OpenSSL, pre-install OpenSSL.
2:48:582 hours, 48 minutes, 58 secondsFor Windows, it might be different. So you can definitely check it out and install it if it's not in your like device or even you can use like any
2:49:062 hours, 49 minutes, 6 secondsapplication that let's say secret key generator there are so many applications like random key gen you can use on all of these to generate it.
2:49:172 hours, 49 minutes, 17 secondsYeah. Now after this after this we can come back into our og again and from here after our digest we're basically
2:49:272 hours, 49 minutes, 27 secondsgetting our d in here like the digested version then we can say const lu key
2:49:352 hours, 49 minutes, 35 secondsand we can store the version and our key id
2:49:432 hours, 49 minutes, 43 secondsas like the lu key. Now key id is coming from here. K is not going to be capital.
2:49:502 hours, 49 minutes, 50 secondsYep. And we can say con. Now we need a date. So we can say date dot.
2:49:582 hours, 49 minutes, 58 secondsNow after this we can add a try catch statement. And inside here we can say const
2:50:062 hours, 50 minutes, 6 secondsc and local cache. So local cache is our LRU setup.
2:50:162 hours, 50 minutes, 16 secondsSo we have to pass here the LU key. Now local cache is in here.
2:50:232 hours, 50 minutes, 23 secondsLet's add our local cache that new LRU cache from LU cache
2:50:302 hours, 50 minutes, 30 secondsand cached key. So this is our cached key from the config this one. And what
2:50:382 hours, 50 minutes, 38 secondsis this observable doing here? We don't need that. Now come back again in here after the C.
2:50:452 hours, 50 minutes, 45 secondsThis is basically we are trying to checking the data from the cache if it's if the like API key is having in our
2:50:532 hours, 50 minutes, 53 secondslocal cache. So if the C and C dot expires and is more than now
2:51:032 hours, 51 minutes, 3 secondsand C. API key digest is matching with D then we can set the request user value
2:51:122 hours, 51 minutes, 12 secondsthat ID is going to be C dot user ID and the key ID. Yep. And after this we can
2:51:222 hours, 51 minutes, 22 secondsvoid the this dot track API key last used. Now this is an
2:51:312 hours, 51 minutes, 31 secondsinteresting function uh not function it's basically private module which we're going to create right now. This is
2:51:382 hours, 51 minutes, 38 secondsjust going to check or track our API key last uses. So after every time when you were like doing something with the API
2:51:462 hours, 51 minutes, 46 secondskey it's going to track the last use time. So let's add the private module in here. We can say private
2:51:542 hours, 51 minutes, 54 secondsasync track API key last used. It's going to receive the key id which is
2:52:012 hours, 52 minutes, 1 secondgoing to be string and we can check for the lock key. Yeah, there are going to be locking mechanism.
2:52:112 hours, 52 minutes, 11 secondsIf there is like any suspicious activity detected then we can say oml on minute locks. Uh one thing I would like to
2:52:192 hours, 52 minutes, 19 secondscheck for one time that is inside our confixl see here it's not capital.
2:52:272 hours, 52 minutes, 27 secondsSo okay fine here also then we can make it not capital. Yeah let's keep it OML like this.
2:52:372 hours, 52 minutes, 37 secondsThen API key then list used lock.
2:52:462 hours, 52 minutes, 46 secondsWe can pass the version and the key ID.
2:52:532 hours, 52 minutes, 53 secondsNow con okay await this dot radius dot set
2:53:022 hours, 53 minutes, 2 secondsset the lock key make the make it one and expire it's going to be list
2:53:112 hours, 53 minutes, 11 secondsused debounce seconds another variable so last use debounce second it's going
2:53:202 hours, 53 minutes, 20 secondsto be basically 60 let's come back to our uh utils sorry not util configs and let's add it in here at last use
2:53:292 hours, 53 minutes, 29 secondsdebounce second it's going to be 60 let's import it
2:53:362 hours, 53 minutes, 36 secondsafter this the next one we can add n x yeah that's
2:53:442 hours, 53 minutes, 44 secondsit now if the okay is not true
2:53:522 hours, 53 minutes, 52 secondsThen we can return the method. Otherwise
2:53:582 hours, 53 minutes, 58 secondswe can say await this dot radius.h set
2:54:042 hours, 54 minutes, 4 secondsthe list used hash the key id and date dot now dot to string.
2:54:172 hours, 54 minutes, 17 secondsYeah. Done.
2:54:202 hours, 54 minutes, 20 secondsThat's about our track API key last used. So it's basically tracking our API key last used. It's doing nothing else.
2:54:282 hours, 54 minutes, 28 secondsAfter this we can return true from here.
2:54:322 hours, 54 minutes, 32 secondsNow otherwise R key digest from radius when the local A is doesn't have the
2:54:402 hours, 54 minutes, 40 secondsdata then we're going to check it inside radius. So we can say OML API key
2:54:492 hours, 54 minutes, 49 secondsthe version and the key id.
2:54:582 hours, 54 minutes, 58 secondsYeah. Now our digest this is different our digest we're going
2:55:052 hours, 55 minutes, 5 secondsto call await this dot radius.h H get all with this R key digest.
2:55:162 hours, 55 minutes, 16 secondsIf the R digest invalid equals to
2:55:252 hours, 55 minutes, 25 secondsone then we can throw a new error that unauthorized
2:55:322 hours, 55 minutes, 32 secondsexemptions that we error message like this that unauthorized
2:55:412 hours, 55 minutes, 41 secondsYep. Next one. If our R digest API key digest and our digest API key digest is not like the key then same unauthorized.
2:55:532 hours, 55 minutes, 53 secondsWe're basically verifying the key digest. If it's not matching then it's like something is wrong. It's
2:56:002 hours, 56 minutesunauthorized. Yeah. If it's matching then R digest dot user ID. If there is user
2:56:092 hours, 56 minutes, 9 secondsID then we're going to set up it again in our local cache
2:56:182 hours, 56 minutes, 18 secondslike R digest dot user ID the API key digest going to be the D
2:56:272 hours, 56 minutes, 27 secondsand expires at now plus our LRU
2:56:352 hours, 56 minutes, 35 secondssoft TGLMS ms another variable and this TTL is basically 5 minutes. So let's do
2:56:442 hours, 56 minutes, 44 secondsone thing. Let's come back to our config file again and let's add it in
2:56:542 hours, 56 minutes, 54 secondshere. Yeah, we can import it. We can save it after expires.
2:57:022 hours, 57 minutes, 2 secondsAfter this we can set our request user value with this
2:57:122 hours, 57 minutes, 12 secondsuser ID user ID sorry r digest
2:57:182 hours, 57 minutes, 18 secondswrong spelling yeah then the key ID and
2:57:242 hours, 57 minutes, 24 secondsvoid this dot track API last used and pass the key ID in here and return true.
2:57:372 hours, 57 minutes, 37 secondsYeah. Now finally if it's not even in radius then we have to check it from the
2:57:432 hours, 57 minutes, 43 secondsdatabase. So we can say this db dot query dot API key dot find first
2:57:522 hours, 57 minutes, 52 secondswhere our let's use and operator from dalm
2:58:012 hours, 58 minutes, 1 secondwhere an eq from dalm the akid is matching with the key id and
2:58:112 hours, 58 minutes, 11 secondsour ak dot revoked at is null
2:58:172 hours, 58 minutes, 17 secondsthen it means the API key is ready to use then we can like add the
2:58:272 hours, 58 minutes, 27 secondsvalue then user ID we can like fetch it and we can return
2:58:342 hours, 58 minutes, 34 secondsthis then revoked at true yeah we're selecting basically these fields
2:58:432 hours, 58 minutes, 43 secondsUh that's it. Now if no record then we can throw an error that this is
2:58:522 hours, 58 minutes, 52 secondsunauthorized. The data is not valid. Now if is after this we have to must check
2:58:592 hours, 58 minutes, 59 secondsthe signature right the hashing. So that's why we're going to use here argon to again. So argon 2 let's import it
2:59:102 hours, 59 minutes, 10 secondsin here that import everything as argon 2 from argon 2. Now here if it's valid
2:59:202 hours, 59 minutes, 20 secondsthen good. If it's not valid then definitely this is an spamming. So when this is not
2:59:272 hours, 59 minutes, 27 secondsvalid, we're going to add something to our radius to prevent the user to send multiple request again. We're going to add the R key digest and invalid.
2:59:402 hours, 59 minutes, 40 secondsWe're going to make it on. So the user is temporarily locked for certain time for sending request to our server
2:59:482 hours, 59 minutes, 48 secondsbecause it he was trying to doing something unethical thing that's why. So this is a good security and after this
2:59:562 hours, 59 minutes, 56 secondswe can say this.expire and we can add the ar digest and we can add here radius hard tail which is I
3:00:053 hours, 5 secondsthink again 5 minutes or I think it should be more it should be 10 minutes.
3:00:093 hours, 9 secondsYeah. So we can add it 10 minutes
3:00:163 hours, 16 secondsand TTL we can save it and finally we can throw the error that unauthorized.
3:00:253 hours, 25 secondsSo we're not letting the front end side to know that what's wrong. We're just saying yeah it's it's wrong. Otherwise like it can happen the hackers is always
3:00:343 hours, 34 secondschecking the error message or or like who is spamming they're checking the error message. That's why in here everything is like the same message that unauthorized unauthorized.
3:00:443 hours, 44 secondsYeah, just for a little bit hard security because the thing is that in here the user is not doing anything. It's
3:00:523 hours, 52 secondscompletely automated. This gu is not for like manual field. It's just like an automated thing. So when there is
3:00:593 hours, 59 secondssomething different it's definitely it meanings it's not a normal request. It's something like spamming request. And for those users we're very strict. We're not
3:01:083 hours, 1 minute, 8 secondsletting anyone to spam with our application. After this, we're seeking our key digest with a user ID and like
3:01:173 hours, 1 minute, 17 secondsAPI key digest. If everything is fine, if it's valid, then if it's not valid, then we're like locking the user. And
3:01:253 hours, 1 minute, 25 secondsfinally, we are expiring. We're adding an expiry in here with the R digest. And let's add
3:01:343 hours, 1 minute, 34 secondsour this information into request do user. And finally track the last use of the API key. Yeah. And return true.
3:01:473 hours, 1 minute, 47 secondsIf it's catch any error then console log the error and throw the same message again that unauthorized.
3:01:563 hours, 1 minute, 56 secondsYeah. So this was for API key. But since we are using the same thing inside in
3:02:033 hours, 2 minutes, 3 secondshere, we're not sending API key when we're sending request from here. We're sending bearer token. And for bearer
3:02:123 hours, 2 minutes, 12 secondstoken, we have to follow an different approach which is easy by the way, not hard. Like after this if API key then
3:02:203 hours, 2 minutes, 20 secondseverything is good. If I mean if API key then our logic if it's not API key then we're going to check the token the beer
3:02:293 hours, 2 minutes, 29 secondstoken. So we can say request dot headers dot authorization
3:02:403 hours, 2 minutes, 40 secondsand dotsplit the first index. So basically we're getting the token from here.
3:02:483 hours, 2 minutes, 48 secondsIf no token then missing authentication token.
3:02:553 hours, 2 minutes, 55 secondsIf there is token then we can use another try catch statement. We can verify that token. So
3:03:023 hours, 3 minutes, 2 secondsa verify token await verify
3:03:103 hours, 3 minutes, 10 secondstoken. So verify token is basically coming from clerk since we're using clerk as our authentication provider and
3:03:173 hours, 3 minutes, 17 secondswe have to install this library. Let's go to services like if you're inside services you don't
3:03:253 hours, 3 minutes, 25 secondsneed to go anywhere since as outside that's why I came back into services now npmi clerk back end
3:03:353 hours, 3 minutes, 35 secondsclerk is really lifesaver for this type of thing. You can see how easily we're setting up the middleware. We're doing literally nothing. We're just letting
3:03:423 hours, 3 minutes, 42 secondsthe cleric to verify its token and we just have to pass the token and
3:03:493 hours, 3 minutes, 49 secondsdefinitely the secret key otherwise like anyone can check it without the secret key. So cleric secret key we make sure
3:03:563 hours, 3 minutes, 56 secondsthat you are having it inv the ID and like the verified token.
3:04:063 hours, 4 minutes, 6 secondsYeah. And then we can return true.
3:04:113 hours, 4 minutes, 11 secondsYeah. If it's catch any error, we can throw on unauthorized extensions that something
3:04:203 hours, 4 minutes, 20 secondswent wrong. Please upload your file by using our SDK.
3:04:253 hours, 4 minutes, 25 secondsSo this is saying please upload your file. We can say something went wrong.
3:04:303 hours, 4 minutes, 30 secondsPlease use our SDK. We can use something like this. Yeah, we can save it.
3:04:403 hours, 4 minutes, 40 secondsUh, cler secret key.
3:04:433 hours, 4 minutes, 43 secondsLet's check our env example. Cler secret key. So, we have to add it. Let me add it from another screen.
3:04:543 hours, 4 minutes, 54 secondsCleric secret key. You already have cleric secret key inside main dashboard.v.
3:05:003 hours, 5 minutesSo you can copy it from there and paste it in here.
3:05:083 hours, 5 minutes, 8 secondsYeah, I'm again coming back inv.
3:05:143 hours, 5 minutes, 14 secondsAll right. And I'm closing that one. And here I'm just saying your clerk env secret.
3:05:243 hours, 5 minutes, 24 secondsAnd here let me write the comment that open SSL
3:05:333 hours, 5 minutes, 33 secondsUh what is that? And this random or use
3:05:433 hours, 5 minutes, 43 secondsa password or use something to generate a secret key.
3:05:573 hours, 5 minutes, 57 secondsYeah, that's it. All ready. So, our author GR is actually ready right now. We can use it properly. Let me show you.
3:06:063 hours, 6 minutes, 6 secondsSince it's ready, I want to do one thing. Let's come back to our modules and API key and API key controller here.
3:06:173 hours, 6 minutes, 17 secondsLet's delete all of this horrible thing.
3:06:203 hours, 6 minutes, 20 secondsWe really don't want to add static value for sure.
3:06:283 hours, 6 minutes, 28 secondsWe just have to add here our o.
3:06:333 hours, 6 minutes, 33 secondsSo o gird we have to add in here.
3:06:393 hours, 6 minutes, 39 secondsWe can say use gs and og guard actually.
3:06:473 hours, 6 minutes, 47 secondsYeah, we can save it and let me run our service says npm run
3:06:553 hours, 6 minutes, 55 secondsstart dave. I think it will give an error. What's wrong? Unexpected token where?
3:07:023 hours, 7 minutes, 2 secondsUh I hate this cache related error.
3:07:073 hours, 7 minutes, 7 secondsIt's for sure not any real error. Just do one thing. Delete the disc folder.
3:07:143 hours, 7 minutes, 14 secondsClear everything and in our app module I think we have to use the G. No, this is a G. This is not
3:07:223 hours, 7 minutes, 22 secondsany like module I guess. O G. Yeah. So we don't need to use it anywhere. Just write the command again.
3:07:313 hours, 7 minutes, 31 secondsWhat the hell do nest?
3:07:463 hours, 7 minutes, 46 secondsLet's say npmi again and npm run start div. Very weird.
3:07:583 hours, 7 minutes, 58 secondsThere is even not any disc folder. I don't know what the hell is happening.
3:08:063 hours, 8 minutes, 6 secondsAll good. All looks good.
3:08:153 hours, 8 minutes, 15 secondsYou're saying what's it? What you saying?
3:08:213 hours, 8 minutes, 21 secondsunexpected token equals to in where
3:08:303 hours, 8 minutes, 30 secondsI don't know just save it and somehow run it again and here you go it's breaking so yeah sometime if you're even
3:08:393 hours, 8 minutes, 39 secondsexperiencing the same error just fix the syntax it's definitely not our mistake if we delete the uh like node env sorry
3:08:463 hours, 8 minutes, 46 secondsnode modules and re reinstall everything it will not give any weirder like that.
3:08:513 hours, 8 minutes, 51 secondsHowever, right now you can notice without even our like static value, it's working.
3:09:003 hours, 9 minutesWe're fetching the data. It means our guard is actually working. And again, let me show you that yeah, it's actually
3:09:073 hours, 9 minutes, 7 secondsworking from here from our list API keys. We can console lock the user ID
3:09:153 hours, 9 minutes, 15 secondsand come here. Give reload. Here you go. You can see our user ID is in here. It means
3:09:223 hours, 9 minutes, 22 secondsit's actually working. So our guard is perfectly working. At this moment, we're going to start to work with our click
3:09:303 hours, 9 minutes, 30 secondshouse setup. But before that, I want to show you something because I did some mistake in our API key service. So let's come back to our delete API key module.
3:09:433 hours, 9 minutes, 43 secondsin here in this API key service API key modules in here we make sure to add this equals to API key do ID and key ID
3:09:513 hours, 9 minutes, 51 secondsotherwise when we are deleting API key it's going to delete all the API key for the logged user so we must have to delete the selected API key so be make
3:10:003 hours, 10 minutessure to add this line in here another mistake I did somewhere and the mistake is we have to delete OML
3:10:093 hours, 10 minutes, 9 secondsAPI key not VMX so this is a mistake Take B make sure that
3:10:163 hours, 10 minutes, 16 secondswhere is VMX just change that with OML don't do the mistake okay yeah and after updating
3:10:253 hours, 10 minutes, 25 secondsthese two things we're good to go I'm glad we found this bug during development but imagine if something like this reached production in this
3:10:333 hours, 10 minutes, 33 secondscase revoking a single API key would have accidentally revoked all API keys belonging to that users that's exactly
3:10:403 hours, 10 minutes, 40 secondsthe kind of issue that's easy to miss when a project starts growing. As more features get added, manually testing every workflow becomes harder and
3:10:493 hours, 10 minutes, 49 secondsharder. And that's where automated testing tools like Test Sprite comes in.
3:10:543 hours, 10 minutes, 54 secondsTest sprite starts by analyzing your applications and identifying important user workflows and use cases that should
3:11:013 hours, 11 minutes, 1 secondbe tested. Based on those workflows, it's automatically generates a test plan that you can review, edit, and refine
3:11:103 hours, 11 minutes, 10 secondsbefore execution. And after the test runs, it provides a detailed step-by-step walkthrough showing exactly
3:11:173 hours, 11 minutes, 17 secondswhat happened during each test, making it easier to understand failures and investigate issues before they reach
3:11:243 hours, 11 minutes, 24 secondsproduction. What I like is that instead of only looking at source code, it focuses on validating how the application actually behaves from a
3:11:323 hours, 11 minutes, 32 secondsuser's perspective. It supports both MCP integrations and their web portal workflow depending on how your team prefers to work. But since currently
3:11:413 hours, 11 minutes, 41 secondswe're in the development mode, we're still developing our product. We cannot use their web portal at this moment. So we can use their MCP server for testing
3:11:513 hours, 11 minutes, 51 secondsour this full application again. And after testing our project, we can ensure that everything is fine in our API key service and module. So let's start it.
3:12:013 hours, 12 minutes, 1 secondAnd you'll find our test sprite website link in my video description box. You can click from there or you can also type the link you're currently watching
3:12:083 hours, 12 minutes, 8 secondson the screen. And after coming back to test sprite website you can click this get started for free if you're for the first time and if you have an account
3:12:163 hours, 12 minutes, 16 secondsthen you can click sign in from here since I do have account that's why I did sign in after doing sign in you can see
3:12:233 hours, 12 minutes, 23 secondsthere is MCP test in here but we have to right now set up test sprite MCP server into our code editor and it's very easy
3:12:323 hours, 12 minutes, 32 secondsjust click this documentation from here and after that from here hit this installation and from Here you can see
3:12:403 hours, 12 minutes, 40 secondsyou can set up test sprite to your any ID. It can be VS code or cursor or tree
3:12:463 hours, 12 minutes, 46 secondsAI or whatever you are using. So since we're using VS Code, we will right now going to set up it in our VS code. And
3:12:543 hours, 12 minutes, 54 secondsto set up test sprite, the first step is come back to our test sprite again in here and click this API keys. From here,
3:13:023 hours, 13 minutes, 2 secondswe can actually create an API key. I already do have an API key but I'm going to revoke it and I'm going to create
3:13:093 hours, 13 minutes, 9 secondsanother one again by giving name let's say one minute locks. We can hit create from here. We can copy this. We can hit
3:13:173 hours, 13 minutes, 17 secondsclose button and after that we can come back to our project again and paste the API key somewhere like this. We need
3:13:253 hours, 13 minutes, 25 secondsthis after some time. And after that you can see the next step is like installation in your code editor. So
3:13:323 hours, 13 minutes, 32 secondssince we're using VS code, you can select VS code. We have to press commandshiftp or control shiftp if
3:13:403 hours, 13 minutes, 40 secondsyou're using Windows. So let's say I'm pressing command shiftp and be make sure that you're having this GitHub copilot
3:13:483 hours, 13 minutes, 48 secondsextension installed in your VS code otherwise it will probably not work for me. You can see it's already installed.
3:13:553 hours, 13 minutes, 55 secondsAfter installing you will see an button like this in here that open in agents and this is like my chat GPT because I
3:14:033 hours, 14 minutes, 3 secondsconnected codex model in here that's why so after that let's press command shiftp and from here you can see mcp add server
3:14:123 hours, 14 minutes, 12 secondsand here choose the type of mcp server to add for us we need to select the studio installation type so we can
3:14:203 hours, 14 minutes, 20 secondsselect s studio this one that command studio you run a local command and here we have to write a command and the
3:14:283 hours, 14 minutes, 28 secondscommand is going to be actually this one. So we can copy this comment. We can come back here again and we can press enter. Now here we have to give a name for our MCP server like an identifier.
3:14:403 hours, 14 minutes, 40 secondsWe can say test sprite and for the workspace you can select global or you can select workspace. Workspace means
3:14:483 hours, 14 minutes, 48 secondsit's going to target your this individual project. So we can select workspace. After selecting workspace, you can see it's automatically creating
3:14:573 hours, 14 minutes, 57 secondsa new folder in our project by giving them VS code. And there is one MCP.json file in here. We have to give here on
3:15:053 hours, 15 minutes, 5 secondscomma. And after that you can see we have to add here our env file. So env.
3:15:173 hours, 15 minutes, 17 secondsSo something like this after this args.
3:15:203 hours, 15 minutes, 20 secondsYeah. here for the API key. Your API key instead of your API key. Let's paste our
3:15:273 hours, 15 minutes, 27 secondsAPI key. So we can cut this. We can come back here and we can paste it. After that we can save it. And that's it. Our
3:15:363 hours, 15 minutes, 36 secondswork is actually ready right now. From here we can click this start button and it means our MCP server is right now
3:15:443 hours, 15 minutes, 44 secondsrunning. But even MCP server when it's running be make sure to restart our uh like the window. So you can type this
3:15:533 hours, 15 minutes, 53 secondsthat developer and reload window and let's click that again and then hit start button. That's it. So right now
3:16:023 hours, 16 minutes, 2 secondsthe MCP server is ready. We can click our like any model which you are using.
3:16:073 hours, 16 minutes, 7 secondsSo for me currently I'm using codeex. So I'm opening codex in here and I'm saying
3:16:123 hours, 16 minutes, 12 secondstest our API key service
3:16:183 hours, 16 minutes, 18 secondsby using test sprite MCP server and when you're writing this
3:16:263 hours, 16 minutes, 26 secondscommand into codeex be make sure that you are inside this mcp.json JSON file and then we can hit enter. And right now
3:16:343 hours, 16 minutes, 34 secondsit's going to actually use this test sprite MCP server to test our project.
3:16:463 hours, 16 minutes, 46 secondsAll right, you can see this is the testing results. The first few tests are failed which is very normal because you
3:16:553 hours, 16 minutes, 55 secondscan see here it's regenerating the API key with Clark JWT but we didn't provide any Clark JWT that's why it failed which
3:17:033 hours, 17 minutes, 3 secondsis very normal because we wanted it to be failed when we're not providing any JWT keys in here access API key
3:17:113 hours, 17 minutes, 11 secondsmanagement with invalid token it's working it's fine actually everything is working in here this MCP results if you
3:17:183 hours, 17 minutes, 18 secondseven go inside here we can see the past results and they're basically giving us some results from here. So all of them
3:17:253 hours, 17 minutes, 25 secondsare actually perfectly working and right now we can start to work into our next module. Right now we will start to work
Chapter 7: Infrastructure Setup
3:17:333 hours, 17 minutes, 33 secondswith our the main like infrastructure layer for this application and that is like setting up click house and start to
3:17:423 hours, 17 minutes, 42 secondsstoring logs and we also have to set up net state stream like the message broker which I was explaining in the system
3:17:503 hours, 17 minutes, 50 secondsdesign part. So right now let's start to do it. In this services folder, in this source folder, we can create a new
3:17:583 hours, 17 minutes, 58 secondsfolder by giving them click house. Yeah, in this click house we can create our
3:18:063 hours, 18 minutes, 6 secondsclick house client. So we can say client.ts.
3:18:123 hours, 18 minutes, 12 secondsNow we have to install a new library. So we have to go to services and we can say
3:18:193 hours, 18 minutes, 19 secondsnpmi Click house slashclient.
3:18:283 hours, 18 minutes, 28 secondsAnd here you go. It's ready. Now here we can import something
3:18:343 hours, 18 minutes, 34 secondsuh from our click house /client. We have to import our create client from here.
3:18:423 hours, 18 minutes, 42 secondsAfter this we can say we can create an object something like this that required envir
3:18:523 hours, 18 minutes, 52 secondsvariables for this we need our click house and URL the database URL
3:19:023 hours, 19 minutes, 2 secondsURL and it's going to be process envouse _ URL.
3:19:153 hours, 19 minutes, 15 secondsYeah. And next one is click house user like the username. So it's going to be process
3:19:233 hours, 19 minutes, 23 secondsdo env.clickhouse user. Next one is click house password like the password for the user.
3:19:343 hours, 19 minutes, 34 secondsSo sorry it's going to be password. Yeah. Next one click house db.
3:19:413 hours, 19 minutes, 41 secondsIt's going to be TB. Yeah. Ready. After this, we can add
3:19:493 hours, 19 minutes, 49 secondshere on validation layer by saying missing words. We can say object dot entries at the required env.
3:19:593 hours, 19 minutes, 59 secondsAnd we can add here an filter something like this.
3:20:123 hours, 20 minutes, 12 secondsYeah. So the value when there is no value and map with the key
3:20:223 hours, 20 minutes, 22 secondsand return the key from here. Yeah. So these are the missing variables. If the missing variables dolength is
3:20:313 hours, 20 minutes, 31 secondsmore than zero or even zero then we have to throw an error. We can throw this inside our console.log
3:20:393 hours, 20 minutes, 39 secondsor console dot error so that we can understand yeah there is something wrong. We can say missing required click house environment variables
3:20:483 hours, 20 minutes, 48 secondsand then we can also add another console error something like this that using default values this may cause
3:20:553 hours, 20 minutes, 55 secondsconnections issues in production. Yeah after this we can export our click
3:21:033 hours, 21 minutes, 3 secondshouse. So click house the main function we can use the create
3:21:093 hours, 21 minutes, 9 secondsclient in here we can pass the URL which is going to be our
3:21:193 hours, 21 minutes, 19 secondsprocess env.clickhouse URL or http
3:21:263 hours, 21 minutes, 26 secondslocalhost 8123.
3:21:303 hours, 21 minutes, 30 secondsThis is the port for click house and username we have to pass. So user name
3:21:383 hours, 21 minutes, 38 secondswe can copy this instead of click house URL we're going to pass here
3:21:473 hours, 21 minutes, 47 secondsthe user name. Yeah or by default we can set it to default.
3:21:563 hours, 21 minutes, 56 secondsNow the password we can pass process.z PNZ dot click
3:22:053 hours, 22 minutes, 5 secondshouse password or empty string and next one is the
3:22:153 hours, 22 minutes, 15 secondsdatabase which is going to be process envirouse db or we can say logs.
3:22:293 hours, 22 minutes, 29 secondsYeah, that's it. So our click house client setup is ready. Right now the next task is we have to create on schema
3:22:383 hours, 22 minutes, 38 secondsfor our click house database. So let's come back in this uh schema.ts new file
3:22:453 hours, 22 minutes, 45 secondsin this clickhouse folder and let's create our create lock
3:22:523 hours, 22 minutes, 52 secondsuh locks table. We can call here async because this is going to be an async function. then await click house
3:23:023 hours, 23 minutes, 2 secondsfrom dot /client dot comment we can add here an query comment now we
3:23:093 hours, 23 minutes, 9 secondsare basically going to write here the raw SQL as I know this is the only options there might be some other
3:23:163 hours, 23 minutes, 16 secondsoptions but yeah we're going to write here raw SQL code like create table if not exist
3:23:263 hours, 23 minutes, 26 secondsthe table name is going to be logvent ments inside here we're going to first pass
3:23:343 hours, 23 minutes, 34 secondsthe key id which is going to be string user ID which is going to be string as
3:23:433 hours, 23 minutes, 43 secondswell and type which is going to be low cardality
3:23:523 hours, 23 minutes, 52 secondsand string. Now what is the meaning of this low cardality? The meaning is that basically low cardinality is a click
3:23:593 hours, 23 minutes, 59 secondshouse data type modifier that optimizes query and storage performance for columns with replicated values. So
3:24:083 hours, 24 minutes, 8 secondsreplicated values meanings like let's say we are adding this low cardinality for type and for things like uh message or app name or these type of things. Now
3:24:173 hours, 24 minutes, 17 secondswhere to use it and what what are the benefits for using this low cardinality instead of string? Why we're using this low cardinality? Basically when you are
3:24:263 hours, 24 minutes, 26 secondsusing it, it's going to take less disk space. It's going to replace the all
3:24:333 hours, 24 minutes, 33 secondslong strings with eight or 16 or 32bit integers references. And because of this, we can have a very fast queries
3:24:423 hours, 24 minutes, 42 secondsbecause of this. And since we're it's like taking uh like replacing the long strings with a shorter value, it's going
3:24:483 hours, 24 minutes, 48 secondsto use lower memory. That's why all of these are very beneficial for this type of like things. So yeah, that's why we
3:24:573 hours, 24 minutes, 57 secondsare using low cardality for these fields. Now message we should keep it string because this is going to be
3:25:043 hours, 25 minutes, 4 secondsunique. Low cardinality is good when the value is not going to be always unique like this one type is it can be same
3:25:123 hours, 25 minutes, 12 secondsmost of the time. That's why we are using this one. Same for the app name.
3:25:163 hours, 25 minutes, 16 secondsApp name can be like similar for so many logs. So that's why we should use low cardality in here as well. Same for the
3:25:243 hours, 25 minutes, 24 secondsenvironment like which environment uh like production or like development. So it also can be same for a long time. Now
3:25:343 hours, 25 minutes, 34 secondsimportance like how much importance the log value is. We can add here a null level value and it's going to be integer
3:25:423 hours, 25 minutes, 42 seconds32 like on a one scale how much important this log is.
3:25:493 hours, 25 minutes, 49 secondsThen subsystem it's basically useful for micros service. So we can say nullable meanings it can be actually like null
3:25:573 hours, 25 minutes, 57 secondsit's an optional field we can add here string because this is basically a string. Now service this is also helpful
3:26:043 hours, 26 minutes, 4 secondsfor micros service like from which service this logs is coming from. So same string nullable string operation
3:26:143 hours, 26 minutes, 14 secondswe can add something like this that operation nullable and string.
3:26:213 hours, 26 minutes, 21 secondsYeah. So this is like uh which operation it was doing like deleting something or like which type of operation the log is
3:26:293 hours, 26 minutes, 29 secondsfor. Uh after this we need our truck. So this is basically like no one is going to pass it but we're going to
3:26:383 hours, 26 minutes, 38 secondsadd it automatically for tracking internally. This is going to be string as well. S is going to be capital.
3:26:463 hours, 26 minutes, 46 secondsUh after this security this is going to be again nullable
3:26:543 hours, 26 minutes, 54 secondsstring and matrix like analytics related thing. So nullable and string. Now the
3:27:033 hours, 27 minutes, 3 secondstime stamp of that lock so it's going to be date time and
3:27:103 hours, 27 minutes, 10 secondsdefault is going to be now yeah an injest state at very very important what is the meaning of
3:27:193 hours, 27 minutes, 19 secondsinjection it's like a weird word we're using from the beginning right in so yeah I'm going to explain it right now
3:27:283 hours, 27 minutes, 28 secondswhat is the meaning of this injection so ingested at meanings like when the user user, let's say our user who whoever
3:27:353 hours, 27 minutes, 35 secondsusing our application, they're sending the logs and when we are receiving the logs inside our application. Listen
3:27:443 hours, 27 minutes, 44 secondsagain when we are receiving the log in our application not including the latency because there are definitely
3:27:503 hours, 27 minutes, 50 secondsgoing to be latency from on application it's coming to our application that application can be somewhere in the world it can be in the Europe it can be
3:27:593 hours, 27 minutes, 59 secondsin the Asia or it can be anywhere so there isn't latency so we are not calculating that latency this ingested
3:28:063 hours, 28 minutes, 6 secondsat meanings whenever the locks is landing into our backend system and our
3:28:133 hours, 28 minutes, 13 secondsbackend system processing it and storing it to the database. That time is called ingested at not ingested at that time is
3:28:223 hours, 28 minutes, 22 secondscalled injection time. Basically let's say the users are sending logs toward locks/locks endpoint whenever it's
3:28:293 hours, 28 minutes, 29 secondsreceiving like we are receiving the locks in here and when our consumer like the message
3:28:363 hours, 28 minutes, 36 secondsbroker consumer is processing the logs in between this time is called injest time and this ingested ad is basically
3:28:443 hours, 28 minutes, 44 secondshere from the consumer when it's like ingesting it when the log processing done then we're adding that ingested at
3:28:523 hours, 28 minutes, 52 secondswith This we can understand the backlog pressure inside our application. Now again what is backlog? Backlog means how
3:29:003 hours, 29 minutesmuch pressure our application is going on at this time. Because if you go back to our dashboard you will notice here
3:29:063 hours, 29 minutes, 6 secondsthere is an q backlog average latency and ingest rate. So there are so many
3:29:133 hours, 29 minutes, 13 secondsinternal like analytics we're showing to the dashboard for making the users understand like how is our server health
3:29:213 hours, 29 minutes, 21 secondsright now. Like for example this ingest rate is basically the injection rate. Now injection rate it sounds very weird.
3:29:293 hours, 29 minutes, 29 secondsIt's basically when our application or the producer is receiving the logs the number of that logs that's basically the
3:29:373 hours, 29 minutes, 37 secondsingest rate. When there is a lot of ingest rate that's going to be in here like in 1 second how many logs our uh the producer is receiving that's the
3:29:463 hours, 29 minutes, 46 secondsingest rate. The average latency is when the ingestion logs is getting processed
3:29:523 hours, 29 minutes, 52 secondsthat in between time is the average latency. Q backlog meanings which locks are waiting into the message broker at
3:30:013 hours, 30 minutes, 1 secondthat time. Let's say when there there there are like 10,000 logs in like every 10 seconds then we're probably not uploading all the data into our database
3:30:113 hours, 30 minutes, 11 secondswithin like within after every 5 seconds. So there will be then some Q backlog. Q backlogging meanings which logs are still waiting into our masses
3:30:203 hours, 30 minutes, 20 secondsbroker those logs are Q backlog. Now after ingested add we have to add here engine which is going to be merge tree.
3:30:333 hours, 30 minutes, 33 secondsYeah and this is all from like click house. So you don't need to worry for any of these. Then partition we have to add here in partition. There is also
3:30:413 hours, 30 minutes, 41 secondspartition in click house as like the if if you ever ever used uh Kafka. Yeah, we we had in partition in Kafka. I think
3:30:503 hours, 30 minutes, 50 secondsyou also have partition in net state stream. Now by to
3:30:583 hours, 30 minutes, 58 secondsyear, month and date.
3:31:023 hours, 31 minutes, 2 secondsThis is like the format timestamp and order
3:31:083 hours, 31 minutes, 8 secondsby it's going to be a key id and timestamp. Now we have to
3:31:183 hours, 31 minutes, 18 secondsset our TTL. So we can say timestamp plus interval.
3:31:263 hours, 31 minutes, 26 secondsThere is a very another important thing you have to understand. 30day delete we're writing here. Why this 30-day delete? What is the meaning of this?
3:31:343 hours, 31 minutes, 34 secondsVery very important. You have to must understand this because this is also another business like model for any
3:31:413 hours, 31 minutes, 41 secondslogging application. The thing is that no monitoring tools stored the data
3:31:483 hours, 31 minutes, 48 secondsforever. If you come to our pricing, you will also notice it in here. 7-day retention. What is the meaning of
3:31:563 hours, 31 minutes, 56 secondsretention? 30-day retention, 90-day retention. The retention meaning is that after this day, the data will be deleted.
3:32:063 hours, 32 minutes, 6 secondsWe will not store your data forever. And no like monitoring tools does it. No one stored it for forever. The reason is
3:32:143 hours, 32 minutes, 14 secondsdefinitely like when you are adding a lot of data, it's definitely you have to pay money for that for the storage. So that's why no one basically store it for
3:32:233 hours, 32 minutes, 23 secondsa long time and like you don't need that because logs are not like all usefuls.
3:32:303 hours, 32 minutes, 30 secondsSometimes it's like the repated data a lot. But it's also helpful because when there is something wrong logs is the only way you can easily track that
3:32:383 hours, 32 minutes, 38 secondswhat's going on what's the what's wrong or where which service is having this problem. So that's why after a certain
3:32:463 hours, 32 minutes, 46 secondstime the logs will be deleted. That's why you can see in here in our pricing we always uh already we added here the
3:32:533 hours, 32 minutes, 53 secondsretention date that after 30 days your data will be deleted after 90 days your data will be deleted.
3:33:013 hours, 33 minutes, 1 secondYeah. But here we are saying 30-day delete because this is a by default value for now. In here we are setting up
3:33:073 hours, 33 minutes, 7 secondsor we are saying to click house that whatever data you are storing after 30day deleted automatically. We will not
3:33:163 hours, 33 minutes, 16 secondswrite any note crown or something to delete the data. It will be automatically deleted after this 30 days.
3:33:243 hours, 33 minutes, 24 secondsAnd we can add here on settings that index and granularity.
3:33:313 hours, 33 minutes, 31 secondsSo granularity is going to be 8192.
3:33:363 hours, 33 minutes, 36 secondsNow this is basically a index granularity in settings uh settings.
3:33:423 hours, 33 minutes, 42 secondsYeah, we can save it. All right, our click house schema setup is ready but we have to fix few things in here because
3:33:503 hours, 33 minutes, 50 secondsit's not fully ready yet. I mean it's ready but we have to fix few things in here. First of all in this partitions I
3:34:003 hours, 34 minutessaid it's similar like Kafka or net state stream but in reality it's not.
3:34:053 hours, 34 minutes, 5 secondsThe message broker partition is different than click house partition.
3:34:093 hours, 34 minutes, 9 secondsMessage broker partitions meaning is like it's about message distribution and parallel consumptions. But on the other
3:34:163 hours, 34 minutes, 16 secondshand click house partitions meanings how data is physically grouped on disk for storage management. like how we are
3:34:243 hours, 34 minutes, 24 secondsplanning to store the data on the disk on the click house disk on each group.
3:34:293 hours, 34 minutes, 29 secondsSo the partition is basically the group in click house. Here we said 30 days like uh for 30 days interval we're
3:34:373 hours, 34 minutes, 37 secondssaying partition for every day. It means for every day we're adding on group but for our scale of the application like
3:34:463 hours, 34 minutes, 46 secondswe're not definitely making it for billions of logs at the first level. For this type of stage we should not make it
3:34:543 hours, 34 minutes, 54 secondsfor daily partition. We should make it monthly. So here daily partition will create about 30 partitions for 30 days
3:35:023 hours, 35 minutes, 2 secondswhich is not terrible but it's basically unnecessary for let's say 100k or 10 million locks for the scale we're
3:35:093 hours, 35 minutes, 9 secondsplanning to make. So for that's why we can make it monthly partition because monthly partitions are better unless you
3:35:163 hours, 35 minutes, 16 secondsare ingesting huge volumes or we need to drop like exact days manually. So
3:35:233 hours, 35 minutes, 23 secondsbasically we just have to delete the date from here then it's right now becoming monthly partitions which we
3:35:293 hours, 35 minutes, 29 secondsneed. And in this order by I did small mistake it should be time stamp first and key ID second. the query is then
3:35:383 hours, 35 minutes, 38 secondsgoing to be like faster because it was opposite be earlier. Yeah. So basically the time stamp since like most of the
3:35:463 hours, 35 minutes, 46 secondslogs we will filter by the time stamp that's why we should add the time stamp first and key ID at the second. Yeah
3:35:533 hours, 35 minutes, 53 secondsthat's it. Now everything is okay in here. Our click house setup is ready.
3:35:583 hours, 35 minutes, 58 secondsRight now we're going to start work for saking up net jet stream because we need our message broker right now because
3:36:053 hours, 36 minutes, 5 secondswithout the message broker like nothing is going to work because the logs are at first going to be sent through the message broker and the message broker
3:36:143 hours, 36 minutes, 14 secondsconsumer will use this click house to store everything. So in this net folder we can create a new file by giving name index.ts.
3:36:243 hours, 36 minutes, 24 secondsInside here we can export our async function
3:36:333 hours, 36 minutes, 33 secondslike get nets by giving them something like this.
3:36:373 hours, 36 minutes, 37 secondsAnd inside here we can say actually we have to add here an lat
3:36:433 hours, 36 minutes, 43 secondsvariable like let nets connection which is going to be any or
3:36:523 hours, 36 minutes, 52 secondsnull and in here let's add JC means uh
3:36:593 hours, 36 minutes, 59 secondsbasically our JSON codec. So JSON codec which we are importing from net library.
3:37:083 hours, 37 minutes, 8 secondsSo import JSON codec from nets net is not here because we have to install the library. We can come back here again.
3:37:183 hours, 37 minutes, 18 secondsHowever, somehow my VS code got restarted. That's why I have to again go to the apps
3:37:273 hours, 37 minutes, 27 secondsand landing page and npm run Dave. Open new terminal.
3:37:333 hours, 37 minutes, 33 secondsCD apps CD main dashboard and npm run Dave
3:37:403 hours, 37 minutes, 40 secondsour services and npm run start. Yeah, all good. And
3:37:483 hours, 37 minutes, 48 secondsagain services and we can say npmi nats.
3:37:533 hours, 37 minutes, 53 secondsThere we go. That's the command we need to write. Yeah. After this we can also
3:38:003 hours, 38 minutesimport connect from nets. Now inside here we can say if there is no net connection
3:38:073 hours, 38 minutes, 7 secondsmeanings there is no like active connections available then we can say await connect. We're going to connect our net stage stream with the servers
3:38:163 hours, 38 minutes, 16 secondswhich is going to be process dot env
3:38:233 hours, 38 minutes, 23 secondsnets url or our nets and local
3:38:343 hours, 38 minutes, 34 secondshost 42.
3:38:383 hours, 38 minutes, 38 secondsYeah. and name it's going to be let's say OML surfer.
3:38:463 hours, 38 minutes, 46 secondsYeah. After connecting we can add here and console log that connected to
3:38:543 hours, 38 minutes, 54 secondsnets. Yeah. And we can return this net connection and that JSON codec. Yeah. That's it.
3:39:063 hours, 39 minutes, 6 secondsOur index.ts is ready. After this, we have to uh create another file for producer.
3:39:153 hours, 39 minutes, 15 secondsWe could add that in here also, but it's better to add the producer in a different file so that later on we can
3:39:223 hours, 39 minutes, 22 secondseasily modify the code. Here we can create another async function by giving name publish
3:39:323 hours, 39 minutes, 32 secondslog batch because it's going to publish the all locks. We can add here key id
3:39:403 hours, 39 minutes, 40 secondswhich is going to be the parameter is going to be an string and locks
3:39:473 hours, 39 minutes, 47 secondswhich type is going to be any and server
3:39:543 hours, 39 minutes, 54 secondsreceived at very very important because based on this we can find out the
3:40:003 hours, 40 minuteslatency. So received at we can calculate the latency not find out
3:40:083 hours, 40 minutes, 8 secondsand here we need to import few things from aid get nets.
3:40:173 hours, 40 minutes, 17 secondsSo get nets and we can import our NC and JC from here. Here we
3:40:253 hours, 40 minutes, 25 secondscan say conjs nc
3:40:323 hours, 40 minutes, 32 secondsdot jet stream. Wait why the NC's NC does not exist on type NC any and JC code unknown.
3:40:423 hours, 40 minutes, 42 secondsAll looks good. What's wrong in here? I don't know. We will check it later. Let's call the J stream in here.
3:40:503 hours, 40 minutes, 50 secondsNow await js.public. publish.
3:40:573 hours, 40 minutes, 57 secondsWe're going to publish it into logs ingest and JC.inccode
3:41:063 hours, 41 minutes, 6 secondsJSON codec encode the key id the server received at the time stamp which is
3:41:133 hours, 41 minutes, 13 secondsgoing to be date dot now and the locks. Yeah. Now here
3:41:223 hours, 41 minutes, 22 secondsit's giving the error. Let me check why it's giving the error. Get nets
3:41:313 hours, 41 minutes, 31 secondsn cgn here. All right. The mistake is actually in here. I found it. We cannot return it
3:41:393 hours, 41 minutes, 39 secondslike that. We have to return it outside from here because this was inside this if block. It's definitely need to be outside from here. That's it. After
3:41:473 hours, 41 minutes, 47 secondstaking it outside, you can see no error anywhere. It's everything is perfectly working. Yeah, great. We can come back
3:41:553 hours, 41 minutes, 55 secondsto our uh here again and after the producer and like setting up night jet
3:42:033 hours, 42 minutes, 3 secondsstream. What next? The next is we have to write now initialize the stream. So we can say init stream.ts TS a new file
3:42:103 hours, 42 minutes, 10 secondsand inside here we can again export on async function by giving name something
3:42:193 hours, 42 minutes, 19 secondslike init stream and here we don't need any
3:42:253 hours, 42 minutes, 25 secondsparameter here we can say con something from our get nets
3:42:343 hours, 42 minutes, 34 secondshere dot slash index and here we can receive the NC
3:42:423 hours, 42 minutes, 42 secondsand we can say cons JSM the jetream await NC means the net connections
3:42:493 hours, 42 minutes, 49 secondsclient and we can call the jetream sorry jetream
3:42:583 hours, 42 minutes, 58 secondsmanager so jetream manager now await jsmstreams
3:43:063 hours, 43 minutes, 6 secondsdo add We can pass the name in here which is going to be OML and locks.
3:43:153 hours, 43 minutes, 15 secondsThe subjects it's going to be locks dot ingest
3:43:233 hours, 43 minutes, 23 secondsand the retention it's going to be uh work Q.
3:43:353 hours, 43 minutes, 35 secondsIt's basically like message will be deleted after the acknowledgement the retention work Q meanings and storage
3:43:453 hours, 43 minutes, 45 secondsit's going to be file maximum age going to be zero and maximum
3:43:523 hours, 43 minutes, 52 secondsmessage is going to be minus one yeah we can add here another console log that jet stream
3:44:023 hours, 44 minutes, 2 secondsstreaml L logs initiated. Sorry, initialized. Not initiated, initialized. We can save it.
3:44:143 hours, 44 minutes, 14 secondsOur init stream is also ready. Now the last one or the most important one is the consumer or like the main function which is going to do everything for us.
3:44:243 hours, 44 minutes, 24 secondsThe consumer.ts.
3:44:263 hours, 44 minutes, 26 secondsHere we have to do a lot of work. We have to set up the consumer. Inside the consumer we will like check for
3:44:343 hours, 44 minutes, 34 secondseverything and we will store the data one by one. But before the consumer let's do one thing. Let's create the
3:44:413 hours, 44 minutes, 41 secondsfunction in here and we will work here later. We can say export async function
3:44:483 hours, 44 minutes, 48 secondsstart locks consumer and we can just call the function like
3:44:563 hours, 44 minutes, 56 secondsthis. Yeah. And we can import our get nets from index. And we
3:45:033 hours, 45 minutes, 3 secondsneed the NC and JSON code. And we need our jet stream connections and
3:45:113 hours, 45 minutes, 11 secondsJS MJ stream manager. Yeah. And uh we need our durable subject and stream name
3:45:193 hours, 45 minutes, 19 secondsbecause without that we cannot like connect with the producer with this consumer like this is the consumer. So we need a durable name, the subject name
3:45:283 hours, 45 minutes, 28 secondsand the stream name. And we need the options. We can say consumer options import it from nets and options to
3:45:353 hours, 45 minutes, 35 secondsdurable. Let's pass this in the manual acknowledgement. We're going to
3:45:433 hours, 45 minutes, 43 secondsmanually acknowledge the data and the acknowledge explicit and deliver to our
3:45:503 hours, 45 minutes, 50 secondsOML locks worker. Yeah, that's it right now. For now it's fine because we have to set up NATS and Kafka which we we
3:45:583 hours, 45 minutes, 58 secondsalready did but we have to set up in our docker file. It's just radius and yeah it's just radius in here but we have to
3:46:063 hours, 46 minutes, 6 secondsset up Kafka and our sorry not Kafka click house and net state. So at [snorts] first start for click house
3:46:143 hours, 46 minutes, 14 secondsafter this radius. So on this level uh yeah
3:46:213 hours, 46 minutes, 21 secondswe can say click house click house and image
3:46:303 hours, 46 minutes, 30 secondswe're going to use here click house slash clickhouse server
3:46:393 hours, 46 minutes, 39 seconds25.7 alpine this image for container name.
3:46:483 hours, 46 minutes, 48 secondsWe can say click house restart
3:46:563 hours, 46 minutes, 56 secondsunless stopped ports
3:47:023 hours, 47 minutes, 2 secondslike 8123 and 8123 which is like the HTTP interface and we also need our
3:47:093 hours, 47 minutes, 9 secondsclient native interface. So for that we can uh assign the port like 9,000. So 9,000.
3:47:173 hours, 47 minutes, 17 secondsYeah. And volumes we can say click house
3:47:273 hours, 47 minutes, 27 secondsunderscore data and where uh sorry
3:47:353 hours, 47 minutes, 35 secondslib click house we have to pass some environment variable. So environment
3:47:433 hours, 47 minutes, 43 secondsenvironment yeah I think correct spelling environment yeah we have to pass here
3:47:503 hours, 47 minutes, 50 secondsour click house db which is going to be locks our click
3:47:583 hours, 47 minutes, 58 secondshouse user which is going to be default click house password which is going to
3:48:063 hours, 48 minutes, 6 secondsbe empty string click house default access management which is going to be one and
3:48:163 hours, 48 minutes, 16 secondsyou limits uh yeah
3:48:263 hours, 48 minutes, 26 secondsno file 262 144 it's basically a limit uh we also
3:48:343 hours, 48 minutes, 34 secondsneed our clickouse UI so click house UI meanings with that we can see the database is like value. This is just for
3:48:423 hours, 48 minutes, 42 secondsdevelopment purpose so that we can check it out. Yeah. So here we can add another
3:48:493 hours, 48 minutes, 49 secondsimage like this. So ch UI we just need another space in here I guess or wait.
3:48:573 hours, 48 minutes, 57 secondsYeah we can add here image our
3:49:053 hours, 49 minutes, 5 secondsuh another space. Yep.
3:49:103 hours, 49 minutes, 10 secondsgcr.io and
3:49:173 hours, 49 minutes, 17 secondssomething like this. You can also copy the name. It's basically a name and cs ui latest
3:49:263 hours, 49 minutes, 26 secondsthe click house ui latest and it depends on click house.
3:49:373 hours, 49 minutes, 37 secondsIt depends on click house environment.
3:49:453 hours, 49 minutes, 45 secondsWe need our click house URL. So we can say v click house because here we have to pass the v click house url
3:49:533 hours, 49 minutes, 53 secondswhich is going to be http host docker internal our 8123 port.
3:50:063 hours, 50 minutes, 6 secondsThen white click house user which is going to be default
3:50:163 hours, 50 minutes, 16 secondsand the white click house pass empty string. Yeah. And ports
3:50:273 hours, 50 minutes, 27 seconds5521 5521/TCP. This is on TCP port.
3:50:373 hours, 50 minutes, 37 secondsThat's all for our click house and click house UI. Now after this we need to set up nets jetstream. So we can say nets
3:50:463 hours, 50 minutes, 46 secondsbut something like this. Yeah let's add the image for nets.
3:50:533 hours, 50 minutes, 53 secondsWe're going to use here nets 2.10 10 Alpine
3:51:023 hours, 51 minutes, 2 secondsimage and container name is going to be 1 minute
3:51:093 hours, 51 minutes, 9 secondslog snacks restart unless stopped
3:51:183 hours, 51 minutes, 18 secondsports 4 triple 2 and
3:51:253 hours, 51 minutes, 25 seconds4 triple 2. Yeah, this is like the client connections and for the monitoring web uh the UI 82
3:51:333 hours, 51 minutes, 33 seconds82 volumes
3:51:433 hours, 51 minutes, 43 secondsuh yeah we can say nets data and data like this then
3:51:523 hours, 51 minutes, 52 secondscomment it's going to be at server
3:52:013 hours, 52 minutes, 1 secondJSM and 8 triple 2. That's the comment. Yep.
3:52:103 hours, 52 minutes, 10 secondsUh in volumes, let's add our click house
3:52:173 hours, 52 minutes, 17 secondsunderscore data and our nets underscore data.
3:52:263 hours, 52 minutes, 26 secondsWe can save it. And here you go. Our Docker setup for now. It's ready. It should be good enough. Let's write our Docker compost app.
3:52:383 hours, 52 minutes, 38 secondsIt's going to restart all of our image.
3:52:403 hours, 52 minutes, 40 secondsDocker image. Let's come back here. Give it. Here you go. You can see our ch UI.
3:52:453 hours, 52 minutes, 45 secondsThe click house nix everything is working. Now to get access to our click house UI, we just need to go to 8123
3:52:543 hours, 52 minutes, 54 secondsport if I'm not wrong. Let me see. Local host 8123.
3:53:003 hours, 53 minutesHere you go. You can check the UI and here from here we can go to dashboard.
3:53:043 hours, 53 minutes, 4 secondsYou can see the queries CPU uses queries running merge running selected bytes and everything from here.
3:53:123 hours, 53 minutes, 12 secondsOkay, we can come back to dashboard again or we can go to here.
3:53:203 hours, 53 minutes, 20 secondsYeah. And this is the WebSQL UI.
3:53:253 hours, 53 minutes, 25 secondsYeah. So from here you can basically write something.
3:53:293 hours, 53 minutes, 29 secondsAnd this is the cloud. This is the merge visualizer and everything. For now it's fine. Let's come back here again. Since
3:53:363 hours, 53 minutes, 36 secondsour net state stream and our uh click house both are working properly, we can close all of these and
3:53:453 hours, 53 minutes, 45 secondswe can start our next work or new module. So next work is basically setting up our npm SDK for one minute
3:53:543 hours, 53 minutes, 54 secondslocks. Why the next work is setting up npm SDK because with that npm SDK only with that npm SDK you can send logs.
3:54:033 hours, 54 minutes, 3 secondsWithout sending the logs, we have nothing to do in our back end. Right?
3:54:083 hours, 54 minutes, 8 secondsAfter sending logs from the SDK, after that from our this back end, in this modules, we can start to work for logs
3:54:163 hours, 54 minutes, 16 secondsmodule and that logs module will call the producer. The producer will call this NS consumer and the consumer will process the log. So this is the setup.
3:54:263 hours, 54 minutes, 26 secondsRight now we will work for our npm SDK.
3:54:303 hours, 54 minutes, 30 secondsSo yeah, let's start to work for the npm SDK.
3:54:333 hours, 54 minutes, 33 secondsAll right, welcome back to our setting up SDK, our one minute locks SDK module.
Chapter 8: Building the OneMinute Logs SDK (Log Ingestion)
3:54:393 hours, 54 minutes, 39 secondsFrom here, let's come back inside our SDKs folder. And inside here, we can create our one minute locks next npm
3:54:503 hours, 54 minutes, 50 secondsSDK. After this, we can create here on src folder. Inside this src folder, we can create on index.ts.
3:55:023 hours, 55 minutes, 2 secondsAnd inside this one logs uh hyphen next we can add our package dot JSON
3:55:113 hours, 55 minutes, 11 secondsuh readme dot md and our g ignore
3:55:193 hours, 55 minutes, 19 secondsand that's it for now it's fine and one more thing very important that is our tsconfig dot json yeah that's all for
3:55:293 hours, 55 minutes, 29 secondsnow now let's come back to our package dojson Inside here, let's add name for our package.
3:55:363 hours, 55 minutes, 36 secondsIt's going to be 1 minute 1 minute locks slash next because it's
3:55:443 hours, 55 minutes, 44 secondsfor next JS that's why. And for the version we're going to use here 1.0.0 for now. However,
3:55:523 hours, 55 minutes, 52 secondsthe npm library is already live. So, here the version is 1.0.0 for development purpose file. when you're
3:56:013 hours, 56 minutes, 1 secondgoing to like make it live, we must have to change it to the accurate version because currently the uh onelog/n next version is 1.0.2.
3:56:113 hours, 56 minutes, 11 secondsSo for production, it's going to be something like this. But for now, it's fine since we're going to run it in local development mode. That's why for
3:56:193 hours, 56 minutes, 19 secondsthe description we can add something like this that a lightweight npm package
3:56:263 hours, 56 minutes, 26 secondsfor working with one minute logs setting up your logging pipeline within on minute.
3:56:333 hours, 56 minutes, 33 secondsHere for the type we can say it's basically module and after this we can add the main file which is going to be
3:56:413 hours, 56 minutes, 41 secondsdist /index.js JS then types it's also going to be dist
3:56:493 hours, 56 minutes, 49 seconds/index.t.ts TS files.
3:56:563 hours, 56 minutes, 56 secondsWe're going to add the dist folder uh scripts.
3:57:043 hours, 57 minutes, 4 secondsThere is going to be build script.
3:57:073 hours, 57 minutes, 7 secondsHowever, let me turn on the do not distract mode. Here the build con is going to be tsc.
3:57:163 hours, 57 minutes, 16 secondsThe clean command is going to be rm minus rf dist and prepare
3:57:253 hours, 57 minutes, 25 secondsfor like updating it or uploading it to npm. This is the command. It should be npm run clean and npm run build.
3:57:373 hours, 57 minutes, 37 secondsAfter this we can add the repository block. Inside here type is going to be URL. Uh no type is going to be G
3:57:483 hours, 57 minutes, 48 secondsURL is going to be our basically the npm package URL something like this for you
3:57:553 hours, 57 minutes, 55 secondsdefinitely you have to change it because it's you cannot use the same repository URL because it's unique value and
3:58:033 hours, 58 minutes, 3 secondskeywords something like this that locks
3:58:113 hours, 58 minutes, 11 seconds1 it stack.
3:58:163 hours, 58 minutes, 16 secondsThen some other keywords like we can add something like this that structure logging, monitoring, observability, audit and security.
3:58:263 hours, 58 minutes, 26 secondsAfter this we have to add our author name. So we should add here
3:58:333 hours, 58 minutes, 33 secondsthe name to our like company name which is 1 minute tech. The license is going
3:58:403 hours, 58 minutes, 40 secondsto be ISC license and bugs for bugs
3:58:503 hours, 58 minutes, 50 secondshere is the like bugs URL. If there any bug then you can create an issue to the npm package something like this. Sorry
3:58:583 hours, 58 minutes, 58 secondsto not the npm package to the GitHub repository. Now homepage it's going to be our basically the
3:59:053 hours, 59 minutes, 5 secondsdocumentation page. However, it's currently if you click here it's not going to work. You can see it's not
3:59:133 hours, 59 minutes, 13 secondsworking because it's the URL is not available after making like after deploying it. It will be available.
3:59:203 hours, 59 minutes, 20 secondsNow div dependencies type slash node and we need this version.
3:59:343 hours, 59 minutes, 34 secondsWe need our ts uh node library.
3:59:393 hours, 59 minutes, 39 secondsWe're going to use this one and type script
3:59:513 hours, 59 minutes, 51 secondstype script this one. Yeah.
3:59:583 hours, 59 minutes, 58 secondsAfter this the dependencies let's add react
4:00:074 hours, 7 secondsuh this 19.2.7. Yeah.
4:00:134 hours, 13 secondsAll good. After this we can come back here again. We can clear it.
4:00:214 hours, 21 secondsWe can go to our SD case. Sorry.
4:00:264 hours, 26 secondsour SDKs like this and our one minute locks next and we can write on npmi
4:00:364 hours, 36 secondsto install all of these dependencies and and dev dependencies. Now let's come back to our tsconfig.json in here. Let's add our compiler options.
4:00:494 hours, 49 secondsOur directory is going to be test and root directory is going to be actually source folder. So src
4:00:594 hours, 59 secondsmodule our module is going to be node. Uh next target
4:01:074 hours, 1 minute, 7 secondsit's going to be 2020 actually not 2025 module regulations it's going to be
4:01:154 hours, 1 minute, 15 secondsagain node next and es module interrupt
4:01:234 hours, 1 minute, 23 secondsit's going to be actually true not false and declaration it's going to be also also true.
4:01:354 hours, 1 minute, 35 secondsFinally, in here, we have to include our source folder. That's it. We can save
4:01:424 hours, 1 minute, 42 secondsit. RTS config is also ready. After this, we can come back here. You can see
4:01:494 hours, 1 minute, 49 secondsthere is an index.gs which is fine. We can delete that. But here, this is our index.ts.
4:01:574 hours, 1 minute, 57 secondsAnd inside this src folder, let's start to work. Now let's create our config folder
4:02:044 hours, 2 minutes, 4 secondsand core mechanism and types folder.
4:02:114 hours, 2 minutes, 11 secondsThen one for utils. Yeah, that's it. Now in this config folder, we can add our index.ts.
4:02:234 hours, 2 minutes, 23 secondsSo basically here we're going to add our interface
4:02:294 hours, 2 minutes, 29 secondsfor env config. Here we can add on base URL which is going to be string.
4:02:414 hours, 2 minutes, 41 secondsThen export con get env config.
4:02:494 hours, 2 minutes, 49 secondsWe can call the env config type in here.
4:02:534 hours, 2 minutes, 53 secondsWe can return our base URL from here which is going to be http/localhost
4:03:024 hours, 3 minutes, 2 secondsat80/ api/v1.
4:03:064 hours, 3 minutes, 6 secondsYeah, for now something like this we can save it. Our config is ready. We can come back to our core. We can create
4:03:154 hours, 3 minutes, 15 secondshere actually an on index.ts. That's fine.
4:03:194 hours, 3 minutes, 19 secondsAnd in this types we need actually multiple types. First one index.ts.
4:03:254 hours, 3 minutes, 25 secondsSecondly for log so log.ts. Then for matrix matrix.ts for security.ts.
4:03:374 hours, 3 minutes, 37 secondsAnd for tracking so track.ts.
4:03:404 hours, 3 minutes, 40 secondsYeah that's all. Now in this index.ts at first let's do one thing. Let's try to work from this log. Then we will
4:03:494 hours, 3 minutes, 49 secondsfinally start in this index.ts. So here basically this is our log interface. We
4:03:564 hours, 3 minutes, 56 secondscan say export interface log timestamps
4:04:034 hours, 4 minutes, 3 secondsand it's going to have our event time which is going to be string and the ingest
4:04:104 hours, 4 minutes, 10 secondstime which is definitely optional string because the value is going to be set from back end. Now export interface
4:04:214 hours, 4 minutes, 21 secondslog message and type which is going to be this log
4:04:304 hours, 4 minutes, 30 secondstype. Now log type is not available here. We have to actually create our log type. We're going to create that in here.
4:04:404 hours, 4 minutes, 40 secondsThe log type is going to be something like this export
4:04:504 hours, 4 minutes, 50 secondsuh type log type. It's going to be error
4:04:574 hours, 4 minutes, 57 secondsor uh warning or info
4:05:054 hours, 5 minutes, 5 secondsor audit or metric or debug or success.
4:05:174 hours, 5 minutes, 17 secondsYeah, that's all. Well, if you want, you can add some more types as well. If you're feeling that, yeah, we should add anything anything more. Then we need
4:05:254 hours, 5 minutes, 25 secondsanother one for importance. Something like this importance.
4:05:324 hours, 5 minutes, 32 secondsSo, export type importance critical high, medium or low. Then another one for subsystem.
4:05:394 hours, 5 minutes, 39 secondsSubsystem user role and finally our o status.
4:05:464 hours, 5 minutes, 46 secondsSo we make sure to add all of this type.
4:05:504 hours, 5 minutes, 50 secondsNow come back to our wait I mistakenly added it in index.ts in core folder. No we have to add it in
4:05:584 hours, 5 minutes, 58 secondsthis types not in core. Yeah. Now we can come back here. We can import our log type. There you go. After the type
4:06:064 hours, 6 minutes, 6 secondswe need message the log message which is going to be string. the importance
4:06:154 hours, 6 minutes, 15 secondswhich is going to be the importance importance import the type from index.js JS subsystem
4:06:234 hours, 6 minutes, 23 secondswe make sure that this is JS not TS okay it's important because after building the project our like NodeJS it doesn't
4:06:334 hours, 6 minutes, 33 secondsunderstand TypeScript it understand JS JavaScript so that's why we have to make the extension like this do JS then
4:06:404 hours, 6 minutes, 40 secondsoperation operation optional string
4:06:484 hours, 6 minutes, 48 secondstrack it's going to be log log track. So this is also something we have
4:06:554 hours, 6 minutes, 55 secondsto create right now. So log track it's basically here we can say export
4:07:044 hours, 7 minutes, 4 secondsinterface log track and user id
4:07:114 hours, 7 minutes, 11 secondsstring role is going to be user role
4:07:194 hours, 7 minutes, 19 secondsip. The user IP this is going to be auto filled from the request basically. So IP
4:07:244 hours, 7 minutes, 24 secondsstring, user agent same string and go like the location which is going to be string as well. Yeah, we can save it.
4:07:374 hours, 7 minutes, 37 secondsAfter the track we can import it. After track we need
4:07:454 hours, 7 minutes, 45 secondssecurity. So security which is going to be log security. We
4:07:524 hours, 7 minutes, 52 secondshave to actually create the log security.
4:07:574 hours, 7 minutes, 57 secondsLet's come back to our security.ts and we can say export interface log security o status.
4:08:074 hours, 8 minutes, 7 secondsIt's going to have our o status. So o status from our index.js
4:08:134 hours, 8 minutes, 13 secondsand the suspicious level. So suspicious which is going to be boolean.
4:08:234 hours, 8 minutes, 23 secondsThe tax it's going to be an array of string. You can add like tax for your security
4:08:324 hours, 8 minutes, 32 secondsuh object in here. So security type is going to be log security after this matrix.
4:08:404 hours, 8 minutes, 40 secondsSo matrix is going to be log matrix. Now log matrix we have to create in our matrix.
4:08:504 hours, 8 minutes, 50 secondsSo log matrix let's add our interface
4:08:574 hours, 8 minutes, 57 secondslog matrix we basically need the latency ms which is going to be a number and db
4:09:064 hours, 9 minutes, 6 secondsquery count which is also going to be a number. We can save it. We can come back here again. We can import it. Then
4:09:154 hours, 9 minutes, 15 secondsfinally we need the timestamp which is going to be log timestamps and this one we can save it. So our log message type
4:09:244 hours, 9 minutes, 24 secondsis ready. And not only that our metric security track all of these ready except this index.ts here we have to do some
4:09:334 hours, 9 minutes, 33 secondsmore work. Now in our index.ts TS in this type. At first
4:09:404 hours, 9 minutes, 40 secondsbefore this log type, we need to create our log level.
4:09:474 hours, 9 minutes, 47 secondsIt can be info or warning or error. Yeah.
4:09:564 hours, 9 minutes, 56 secondsThen let's create another interface that logger config
4:10:054 hours, 10 minutes, 5 secondsand API key which is going to be string
4:10:134 hours, 10 minutes, 13 secondsapp name which is going to be also string.
4:10:174 hours, 10 minutes, 17 secondsenvironment which is going to be string as well.
4:10:274 hours, 10 minutes, 27 secondsAfter this, we're going to add our log payload
4:10:374 hours, 10 minutes, 37 secondsuh interface like like the log payload which we have to send. We have to send the log type
4:10:464 hours, 10 minutes, 46 secondsthe message which is going to be string as well. The importance it's going to be actually optional.
4:10:594 hours, 10 minutes, 59 secondsThen subsystem optional again and we can import
4:11:064 hours, 11 minutes, 6 secondssubsystem operation
4:11:144 hours, 11 minutes, 14 secondsagain optional string truck log truck
4:11:224 hours, 11 minutes, 22 secondssecurity uh log security then our metrics.
4:11:344 hours, 11 minutes, 34 secondsYou might be thinking why we are adding a lot of types because types is very very important because uh when like the
4:11:414 hours, 11 minutes, 41 secondsdevelopers are using our npm SDK or npm SDK needs to give them suggestion like what they should do and what they should
4:11:494 hours, 11 minutes, 49 secondsnot do because like for an npm SDK types is very very important. We cannot skip
4:11:554 hours, 11 minutes, 55 secondsit at all. There's no scope to skip types for an npm SDK.
4:12:024 hours, 12 minutes, 2 secondsSo time stamp it's going to be log timestamps. Now in state add it's going to be number
4:12:124 hours, 12 minutes, 12 secondsand the app name string and the environment
4:12:224 hours, 12 minutes, 22 secondsstring. You might be thinking how then I'm writing all of these types. So it's basically based on the like our click
4:12:294 hours, 12 minutes, 29 secondshouse schema but on a extended version like this is the final version. This is how you can store your logs all the
4:12:374 hours, 12 minutes, 37 secondstypes here and in in future we will definitely extend it to more like there will be
4:12:454 hours, 12 minutes, 45 secondssome more more options in here which I am at this moment I'm not watching probably but in the future it can happen
4:12:514 hours, 12 minutes, 51 secondsthat we need some more like fields. So we will definitely add that in the future in the like in the upcoming versions.
4:12:594 hours, 12 minutes, 59 secondsThat's it. Our types ready. It was definitely not small but it's done. Now in our core we can come back here and
4:13:084 hours, 13 minutes, 8 secondshere basically we can create our function. So we can say
4:13:154 hours, 13 minutes, 15 secondsexport function create logger and config
4:13:224 hours, 13 minutes, 22 secondswe can call it we can call our logger config we need to add here on transport.
4:13:274 hours, 13 minutes, 27 secondsSo transport is going to be newl transport. So OML transport what is the
4:13:364 hours, 13 minutes, 36 secondsmeaning of this transport is basically coming from our utils folder. Let me show you. It's
4:13:434 hours, 13 minutes, 43 secondsbasically a class. Nothing else. This utils we can add on index.ts.
4:13:514 hours, 13 minutes, 51 secondsAnd here we can add our export class transport. There is going to be on base
4:13:584 hours, 13 minutes, 58 secondsURL like by default it's required. We need API key. We need our app name.
4:14:074 hours, 14 minutes, 7 secondsWe need our environment. We need headers.
4:14:144 hours, 14 minutes, 14 secondsWe need like the buffer value. We need the timer.
4:14:234 hours, 14 minutes, 23 secondsSo timer and finally we need on flash interval because we're not going to add all the logs instantly to our like back end.
4:14:334 hours, 14 minutes, 33 secondsWe're we're in here also we are doing something. I'm explaining it after some time. At first let me import the log pay
4:14:414 hours, 14 minutes, 41 secondsload and nodejs dot timeout is giving error because the types is not installed yet. However, this will not give error.
4:14:484 hours, 14 minutes, 48 secondsJust a minute headers base URL declared but never read. Okay, fine. And it's flashing false. Now it's basically
4:14:584 hours, 14 minutes, 58 secondslike we're creating a new transport instance with this with this logger configurations. We can basically like we
4:15:064 hours, 15 minutes, 6 secondscan cue all of the logs in a single time. For an example, it can happen in like every 5 seconds there. Let's say
4:15:154 hours, 15 minutes, 15 secondshere, not actually 5 seconds. We're sending logs after every 2 seconds.
4:15:184 hours, 15 minutes, 18 secondsWe're like batching all the logs and sending that to our back end. It's very very helpful. It's like another filter
4:15:264 hours, 15 minutes, 26 secondslayer from our npm SDK for organizing the locks because locks are really very messy things. it can happen that we're
4:15:354 hours, 15 minutes, 35 secondsreceiving like thousands of logs in every minutes. So that's why we're basically adding that in a batch so that
4:15:444 hours, 15 minutes, 44 secondslike our API can again send that to our like message broker. This is definitely optional. This is not a mandatory thing
4:15:514 hours, 15 minutes, 51 secondsbut we are just doing it to improve the like to improve the scalability we can
4:15:584 hours, 15 minutes, 58 secondssay. That's it. Now here we can add on constructor we can say private config
4:16:064 hours, 16 minutes, 6 secondsand we can call our logger config and inside here we need to pass our env
4:16:144 hours, 16 minutes, 14 secondsconfig. So envig which is going to be the get envig call it then this dot basl
4:16:234 hours, 16 minutes, 23 secondsit's going to be envigbasurl this API key is going to be again config
4:16:314 hours, 16 minutes, 31 secondskey this app name it's going to be config dot app name
4:16:414 hours, 16 minutes, 41 secondsand this dot environment ment it's also going to be config environment
4:16:504 hours, 16 minutes, 50 secondsthis dot headers here we have to pass the content
4:16:574 hours, 16 minutes, 57 secondstype which is going to be application/json and xoml API key so actually x API key
4:17:074 hours, 17 minutes, 7 secondsnot xom api key x api key which is going to
4:17:144 hours, 17 minutes, 14 secondsuh config API key then we can spread the config API key
4:17:214 hours, 17 minutes, 21 secondssorry app name or our
4:17:264 hours, 17 minutes, 26 secondsuh actually it's fine this is fine
4:17:344 hours, 17 minutes, 34 secondslike empty object it's basically we're setting in the headers but we don't need to set up the app name inside the headers.
4:17:464 hours, 17 minutes, 46 secondsWe can send it through our body also. But I think for faster validation we need it somewhere. So we
4:17:554 hours, 17 minutes, 55 secondscan set it XML app name which is going to be config.app name.
4:18:064 hours, 18 minutes, 6 secondsuh here we have to add it inside the second bracket
4:18:124 hours, 18 minutes, 12 secondsotherwise another empty object. Yeah, after this here actually not OML transport we don't
4:18:214 hours, 18 minutes, 21 secondsneed that. That was the mistake. Yeah, another spread operator and we don't need OML transport. config environment
4:18:324 hours, 18 minutes, 32 secondsxl env config environment.
4:18:424 hours, 18 minutes, 42 secondsSee, I didn't delete that second bracket. Somehow it's automatically deleted itself.
4:18:494 hours, 18 minutes, 49 secondsYeah, now it's fine.
4:18:524 hours, 18 minutes, 52 secondsAfter this we can call this dot setup graceful shutdown.
4:19:034 hours, 19 minutes, 3 secondsSo this dot setup graceful shutdown.
4:19:134 hours, 19 minutes, 13 secondsIt's basically another module we have to create. We can create that in here. We can say private setup graceful shutdown.
4:19:244 hours, 19 minutes, 24 secondsIt's going to register the process level handlers. Yeah, we can say con shutdown
4:19:324 hours, 19 minutes, 32 secondshandler as sync
4:19:384 hours, 19 minutes, 38 secondssignal. It's going to be string.
4:19:464 hours, 19 minutes, 46 secondsAnd if this starting down then return
4:19:524 hours, 19 minutes, 52 secondsit otherwise this start shutting down make it first true.
4:19:594 hours, 19 minutes, 59 secondsThen we can add here and try catch statement and the try part. We can say await this dot flash
4:20:104 hours, 20 minutes, 10 secondsuh flash.
4:20:144 hours, 20 minutes, 14 secondsSo flash is giving error because here
4:20:254 hours, 20 minutes, 25 secondsthe flash is missing that's why uh actually I think for flashing yeah so
4:20:344 hours, 20 minutes, 34 secondsbecause flashes is like the in-memory buffer to the server as a single batch we are basically flashing the DB uh the
4:20:414 hours, 20 minutes, 41 secondsdata so let's do one thing Let's add an private module like flash. It's going to be actually as sync.
4:20:514 hours, 20 minutes, 51 secondsAnd here we can say if this dot is flashing then return otherwise this dot is flashing make it true.
4:21:024 hours, 21 minutes, 2 secondsAnd if our this dot timer then clear the time out pass the this dot timer.
4:21:144 hours, 21 minutes, 14 secondsWait why like this? Delete it. Yeah. Then after this we can call this dot timer again and we can make it null. Yeah.
4:21:254 hours, 21 minutes, 25 secondsAfter this we can add here our batch. So con batch this dot buffer dotslice
4:21:364 hours, 21 minutes, 36 secondszero and this dot buffer dotlength.
4:21:444 hours, 21 minutes, 44 secondsAnd here we can say if our batch dotlength
4:21:524 hours, 21 minutes, 52 secondsequals to zero then this dot is flashing.
4:21:574 hours, 21 minutes, 57 secondswe can make it false and we can return it.
4:22:024 hours, 22 minutes, 2 secondsOtherwise here we can add an catch statement which is the like the final statement which is going to
4:22:104 hours, 22 minutes, 10 secondssend this data. So this bay URL
4:22:164 hours, 22 minutes, 16 secondsslash send. So actually not / send the endpoint is going to be / a/v1 / lock/ send.
4:22:264 hours, 22 minutes, 26 secondsYeah.
4:22:274 hours, 22 minutes, 27 secondsAnd method is going to be post headers over this dot headers.
4:22:404 hours, 22 minutes, 40 secondsthe body which is going to be JSON.stringify the locks and the batch.
4:22:484 hours, 22 minutes, 48 secondsYeah. Now keep alive make it true.
4:22:554 hours, 22 minutes, 55 secondsThen if it's catch any error then we can console log the error
4:23:024 hours, 23 minutes, 2 secondsthat OML transport flash failed and then here we can call the is flashing and we can make it false that yeah flashing
4:23:114 hours, 23 minutes, 11 secondsactually done. Yeah. Now let's come back here again in our this uh setup uh like the setup graceful
4:23:194 hours, 23 minutes, 19 secondsshutdown in here after this this dot flash here if it's catch any error
4:23:284 hours, 23 minutes, 28 secondswe can console log the error let's do one thing console error the error message that flash during shutdown
4:23:364 hours, 23 minutes, 36 secondsfailed and finally finally Finally,
4:23:454 hours, 23 minutes, 45 secondsfinally we can call our process dot exit and we can make it zero.
4:24:004 hours, 24 minutesSo this is giving an uh warning because we have to install our types node.
4:24:084 hours, 24 minutes, 8 secondsSo npmi type / node if we install it I think the
4:24:144 hours, 24 minutes, 14 secondspointing will be you also see it in here.
4:24:224 hours, 24 minutes, 22 secondsYeah, the running should be done.
4:24:294 hours, 24 minutes, 29 secondsNow it's saying add node in the types.
4:24:394 hours, 24 minutes, 39 secondsUh then add note to the types field in our TS config.
4:24:494 hours, 24 minutes, 49 secondsWe can say node Come back here and here you go. No error right now. Uh after this we can say
4:24:574 hours, 24 minutes, 57 secondsprocess dot on before exit.
4:25:054 hours, 25 minutes, 5 secondsWe can call the shutdown handler and we can pass the before exec here and process dot on
4:25:154 hours, 25 minutes, 15 secondsthe sign int we can call again the shutdown handler and we can pass this sign. Yeah.
4:25:274 hours, 25 minutes, 27 secondsAfter this uh next one is this is the last one process dot on
4:25:354 hours, 25 minutes, 35 secondsthis is for site term and shutdown handler and pass this.
4:25:474 hours, 25 minutes, 47 secondsYeah. All done. I know it sounds a bit weird what we're doing. It's basically like we're working with a node handler.
4:25:554 hours, 25 minutes, 55 secondsThat's why it's looking a little bit weird. You don't need to understand all of these. Some here might be a little bit different and complicated for you
4:26:044 hours, 26 minutes, 4 secondsbut fine you can use it. uh after this after our this setup graceful shutdown
4:26:124 hours, 26 minutes, 12 secondsone important thing you have to understand in here that like when we are making this npm SDK we're not making it
4:26:204 hours, 26 minutes, 20 secondsfor front end at this time because you're not going to store logs from front end right you're definitely going to do it from the back end side that's
4:26:274 hours, 26 minutes, 27 secondswhy we're doing it like we're sending the request from here because this is going to be like publicly so like the developers who are using our
4:26:354 hours, 26 minutes, 35 secondsapplications this this infamous G especially this part they're going to use it like from backand side not from the front end side
4:26:444 hours, 26 minutes, 44 secondsuh yeah now it's not definitely done yet this is our just like the setup grace
4:26:504 hours, 26 minutes, 50 secondsshutdown now after this here after this what we have to do
4:27:004 hours, 27 minuteswe have to create our send
4:27:074 hours, 27 minutes, 7 secondsuh with payload is going to be actually log payload.
4:27:184 hours, 27 minutes, 18 secondsYeah. Now inside here this is basically Q a single log payload for sending.
4:27:244 hours, 27 minutes, 24 secondsThat's it. If this dot shutting down is true then return.
4:27:314 hours, 27 minutes, 31 secondsIt's basically going to ignore the new locks during the shutdown. And then this dotbuffer dot push
4:27:384 hours, 27 minutes, 38 secondswhich is going to spread the payload the all payload and it's going to add the ingested ad with the new date dot now.
4:27:484 hours, 27 minutes, 48 secondsYeah, let's see. And after this it's going to remove the like flash size. So if sorry
4:27:564 hours, 27 minutes, 56 secondsif this dot timer is not here then this dot timer
4:28:064 hours, 28 minutes, 6 secondslet's call the set timeout and
4:28:124 hours, 28 minutes, 12 secondsthis dot flash and this dot flash interval. Yeah.
4:28:224 hours, 28 minutes, 22 secondsAll right. All actually ready. Flash is also ready. Now, let me see if anything else missing or not. So, for getting the
4:28:304 hours, 28 minutes, 30 secondslogs, we haven't set it up yet because we don't have to do yet. We still don't have we're still not like storing the
4:28:394 hours, 28 minutes, 39 secondslogs. So, there's no need to set up the logs right now.
4:28:444 hours, 28 minutes, 44 secondsBut in this constructor config and everything, okay, it's fine.
4:28:494 hours, 28 minutes, 49 secondsthat API key and app name and environment these three things are not used yet.
4:28:584 hours, 28 minutes, 58 secondsSo here this start API key we already used it
4:29:064 hours, 29 minutes, 6 secondsapp name same and environment same here also. Okay,
4:29:204 hours, 29 minutes, 20 secondsmakes sense. All makes sense. So it's basically giving some error which is very natural because the API key app name and environment we're going to also
4:29:284 hours, 29 minutes, 28 secondsuse it in the get u get method which we have we haven't created yet which we will do after some time after we are
4:29:354 hours, 29 minutes, 35 secondsstoring logs then we will work for that like ss streaming and also the get logs.
4:29:424 hours, 29 minutes, 42 secondsSo yeah our this our this basically the main file in here not mail file main file the OML transport is ready. We can
4:29:514 hours, 29 minutes, 51 secondscome back to our core again and from here we can finish this. So it's going
4:29:584 hours, 29 minutes, 58 secondsto receive the ML transport. We're going to call here and we have to pass the config in here.
4:30:054 hours, 30 minutes, 5 secondsNow we have to send the log payload. So we can say constant as sync
4:30:134 hours, 30 minutes, 13 secondspayload is going to be log payload
4:30:204 hours, 30 minutes, 20 secondshere con something from the payload we're going to receive the
4:30:284 hours, 30 minutes, 28 secondstype which is going to be info then message
4:30:364 hours, 30 minutes, 36 secondsthen importance and subsystem like this is the sub default value. Okay. Operation
4:30:454 hours, 30 minutes, 45 secondsservice and track security
4:30:524 hours, 30 minutes, 52 secondsmetrics timestamps app name and environment all be receiving from payload.
4:31:014 hours, 31 minutes, 1 secondThen we can make an final payload. So final payload which is going to be also the
4:31:084 hours, 31 minutes, 8 secondslog payload type message or importance then
4:31:154 hours, 31 minutes, 15 secondssubsystem then uh operation service
4:31:244 hours, 31 minutes, 24 secondstrack our metrics the timestamps and the app name. App name is going to be app
4:31:314 hours, 31 minutes, 31 secondsname or config.app name or default.
4:31:404 hours, 31 minutes, 40 secondsIf it's empty then environment environment or config dot environment
4:31:494 hours, 31 minutes, 49 secondsor process do envode
4:31:584 hours, 31 minutes, 58 secondsenv like by default we're going to take it otherwise if there is nothing then development
4:32:054 hours, 32 minutes, 5 secondsyeah then here we can call our transport
4:32:134 hours, 32 minutes, 13 secondsand the send method and we can pass this final payload.
4:32:194 hours, 32 minutes, 19 secondsYeah. Then after this we need to create our
4:32:264 hours, 32 minutes, 26 secondstype method like log type which type is going to be
4:32:334 hours, 32 minutes, 33 secondsthis then payload we're going to here our log payload
4:32:444 hours, 32 minutes, 44 secondsand the type and we can call send
4:32:514 hours, 32 minutes, 51 secondsthe payload and type. Yeah, this is our type method. Now we have to return all
4:32:584 hours, 32 minutes, 58 secondsof these. So return return
4:33:044 hours, 33 minutes, 4 secondssend info we can say create type method. info
4:33:134 hours, 33 minutes, 13 secondsthe error create type method and error
4:33:224 hours, 33 minutes, 22 secondsmetric create type method and metric
4:33:324 hours, 33 minutes, 32 secondsthen audit create type method and audit create uh warning.
4:33:474 hours, 33 minutes, 47 secondsIt's going to be create type method and warning.
4:33:524 hours, 33 minutes, 52 secondsYeah. And the get like the function it's going to receive the filters
4:34:004 hours, 34 minuteswhich type is going to be record string and any
4:34:094 hours, 34 minutes, 9 secondsand transport dot get the filters. Yeah.
4:34:194 hours, 34 minutes, 19 secondsSo transport.getate kit.
4:34:234 hours, 34 minutes, 23 secondsUh here all looks good but transport is here.
4:34:364 hours, 34 minutes, 36 secondsOkay, because the gauge is missing still that's why that's why the error is here for now. Let's comment it. We still have
4:34:434 hours, 34 minutes, 43 secondsanother one which is stream but it will also not work because we don't have it yet. That's why filters
4:34:514 hours, 34 minutes, 51 secondssame record string and any the transport dot string
4:35:004 hours, 35 minutesand we're going to pass the filters as well in here. But let's comment it for now because we will uncomment it when we
4:35:074 hours, 35 minutes, 7 secondswill have like logs inside our uh click house database and then we can like create endpoint for get and stream and then we can uncomment it and finish this
4:35:164 hours, 35 minutes, 16 secondspart. finish this SDK actually. Uh that's it. Create logger is also ready.
4:35:224 hours, 35 minutes, 22 secondsIt's not definitely bigger. Main work is in the utils for now. Everything is ready. We can come back to index.ts.
4:35:304 hours, 35 minutes, 30 secondsThis source index.ts and we can export everything from here like the create logger from our dot /core/index.js.
4:35:444 hours, 35 minutes, 44 secondsthe create logger something like this then get logs sorry it's not available yet but we have
4:35:524 hours, 35 minutes, 52 secondsthe OML transport something like this but let's add it in
4:35:594 hours, 35 minutes, 59 secondshere no import it should be export uh then we need to export the type from
4:36:074 hours, 36 minutes, 7 secondsour basically the dot /types and our index
4:36:154 hours, 36 minutes, 15 secondsdot js. Yeah, the types we have to import uh export it's going to be the logger config, the
4:36:234 hours, 36 minutes, 23 secondslog payload and the log level. Yeah, we can save it for now. For now, it's actually ready.
4:36:334 hours, 36 minutes, 33 secondsSo, our SDK is for now fully perfect. We can come back here.
4:36:384 hours, 36 minutes, 38 secondsWe can clear everything. We can write this that npm run build.
4:36:464 hours, 36 minutes, 46 secondsHere you go. It's created a new disc folder and everything is in here. It's fully readyate code. For now, it's fine.
4:36:564 hours, 36 minutes, 56 secondsBut definitely we're going to use here on another library and that library is
4:37:024 hours, 37 minutes, 2 secondscalled I forgot the name actually. It's for like uh converting all of this folder into
4:37:104 hours, 37 minutes, 10 secondsone file. And that's very very important so that like no one can understand what's going on in the npm SDK. You
4:37:184 hours, 37 minutes, 18 secondscannot read the code base which is very good for security reason and we will definitely do that. For now our npm SDK
4:37:254 hours, 37 minutes, 25 secondsis ready and it's actually going to work. So the next step should be for us
4:37:324 hours, 37 minutes, 32 secondshere actually no gate ignore. Why? Let's let's set it up. The gate ignore I'm basically going to copy it. You can also
4:37:404 hours, 37 minutes, 40 secondscheck it slowly. Note modules, no npm debug, no yarn debug or pnpm. Then leave build source. No source. Yeah, we're not
4:37:504 hours, 37 minutes, 50 secondsgoing to like uh we are not going to add this s folder into our g into our github. We're just going to send this
4:37:594 hours, 37 minutes, 59 secondsdist folder. No env, no vs code or anything like that. You can just check.
4:38:044 hours, 38 minutes, 4 secondsYeah, that's it. G ignore is ready. And for the uh readme, we're going to add that later because we still haven't
4:38:114 hours, 38 minutes, 11 secondsfinished the npm library yet. That's why. So since it's ready, we can right now make the back end. And after that,
4:38:184 hours, 38 minutes, 18 secondswe can try to use this npm SDK for sending logs. So yeah, let's start our next module right now. All right, let's come back in our services folder again.
4:38:314 hours, 38 minutes, 31 secondsAnd in this source folder, in this modules folder, we can create our logs folder right now. And in here we can say
Chapter 9: Log Storage Module
4:38:394 hours, 38 minutes, 39 secondslogs dot controller.ts, logs dot module.ts and logs dot service.ts.
4:38:514 hours, 38 minutes, 51 secondsYeah. And then we can start to work inside this. First we can start to work in our locks module which is going to be
4:39:004 hours, 39 minutesvery simple. We're going to use that module decorator again in here and controllers for now empty array services
4:39:104 hours, 39 minutes, 10 secondssorry providers not services which is going to be empty array and finally we have to export our locks module class. Yeah we can save it.
4:39:244 hours, 39 minutes, 24 secondsWe can come back to the controller.
4:39:274 hours, 39 minutes, 27 secondsWe can use here our controller decorator.
4:39:334 hours, 39 minutes, 33 secondsAnd inside this we can add locks.
4:39:384 hours, 39 minutes, 38 secondsWe're going to use here GS. So use girds and o gird
4:39:454 hours, 39 minutes, 45 secondsexport class locks controller
4:39:544 hours, 39 minutes, 54 secondsuh class. So after this in here we need a constructor. We can say private read
4:40:014 hours, 40 minutes, 1 secondonly lock service and log service. No problem. We will create the lock service right now.
4:40:134 hours, 40 minutes, 13 secondsSo let's come back in our service and use our injectable decorator
4:40:204 hours, 40 minutes, 20 secondsinjectable and export our class log service actually lock service
4:40:294 hours, 40 minutes, 29 secondsand constructor keep it empty and as sync send logs. We're going to
4:40:364 hours, 40 minutes, 36 secondsbasically receive here body and the key id.
4:40:414 hours, 40 minutes, 41 secondsBody is going to be any and key id is going to be string.
4:40:454 hours, 40 minutes, 45 secondsYeah. Now we can come back again in here we can import our log service. And after this we can add our first
4:40:544 hours, 40 minutes, 54 secondsendpoint which is going to be post endpoint for sending the logs. We can say as sync send logs.
4:41:054 hours, 41 minutes, 5 secondsThe request decorator request type is going to be any we need the body access
4:41:174 hours, 41 minutes, 17 secondsuh body from just common and body any. So we actually don't need this in here. Yeah.
4:41:284 hours, 41 minutes, 28 secondsAnd here it should be a comma inside this we can return this dot lock
4:41:344 hours, 41 minutes, 34 secondsservice dot send locks the body and request dot user dot
4:41:424 hours, 41 minutes, 42 secondskey id. Yeah we can save it all good in here. Now one thing very very important
4:41:514 hours, 41 minutes, 51 secondssince we're sending the raw body in here right now the JSON stringify body we have to come back to our main.ts again
4:41:594 hours, 41 minutes, 59 secondsand the body purchase should be true right now because if it's false it's not going to work actually so we make sure to go to the main.ts file again inside services and make the body purser true.
4:42:124 hours, 42 minutes, 12 secondsYeah. Now we can come back in the send locks because we're going to receive the locks in here. From here we can say
4:42:214 hours, 42 minutes, 21 secondsthat uh we can basically call our publish
4:42:294 hours, 42 minutes, 29 secondslog batch. We can pass the key id the locks.
4:42:384 hours, 42 minutes, 38 secondsThe locks is going to be basically body dot locks and the server received at
4:42:474 hours, 42 minutes, 47 secondstime. So server received at time is going to be like the date dot now when
4:42:544 hours, 42 minutes, 54 secondsit's receiving in here in our like service. Then after this we can send like we can
4:43:034 hours, 43 minutes, 3 secondspublish the log. That's what this is it's supposed to do. And then we can return that message.
4:43:144 hours, 43 minutes, 14 secondsOkay. Yeah, that's it. Yeah, very simple and small because rest of the work this
4:43:214 hours, 43 minutes, 21 secondspublish log batch is going to do because it's going to right now publish it into our consumer and the consumer is right
4:43:294 hours, 43 minutes, 29 secondsnow going to do the rest of the work which we will do. But first we have to come back to our app module and we have to add our locks module.
4:43:424 hours, 43 minutes, 42 secondsWe can add in locks module. Let's add the lock controller and locks service.
4:43:524 hours, 43 minutes, 52 secondsYeah, great. Everything is perfect. Now we can come back to our publish log
4:43:594 hours, 43 minutes, 59 secondsbatch and from here we are basically calling our this consumer and we have to start to work mainly in this consumer right now basically we're going to process the log from here.
4:44:124 hours, 44 minutes, 12 secondsSo from here from this consumer after this we can basically add on try
4:44:204 hours, 44 minutes, 20 secondscatch statement we can check for the existing
4:44:274 hours, 44 minutes, 27 secondsuh like JSM the jet stream consumers the existing consumers
4:44:344 hours, 44 minutes, 34 secondsinfo we have to pass the stream name and the durable then cons CFG
4:44:434 hours, 44 minutes, 43 secondswhich type is going to be any and existing as any dot config.
4:44:514 hours, 44 minutes, 51 secondsIf config meaning CFC and if config deliver
4:44:594 hours, 44 minutes, 59 secondssubject is not available then we can add in console dot actually warning that jetstream durable
4:45:094 hours, 45 minutes, 9 secondsuh is pool based missing deliver subject recreation as push consumer after this
4:45:174 hours, 45 minutes, 17 secondsif it's me missing then JSM consumer dot delete actually consumers consumers
4:45:254 hours, 45 minutes, 25 secondsdelete we have to pass the stream name and the durable yeah if it's catch any error then it's
4:45:324 hours, 45 minutes, 32 secondsbasically the 404 not found we can proceed it to create so we can keep it empty for now we can say con sub
4:45:404 hours, 45 minutes, 40 secondsawait js dot uh subscribe
4:45:474 hours, 45 minutes, 47 secondswe can pass the subject and the options and we can add an console log that OML
4:45:554 hours, 45 minutes, 55 secondslocks consumer started. Yeah.
4:46:024 hours, 46 minutes, 2 secondsNow after starting we have to write on for loop for all the message of the sub.
4:46:114 hours, 46 minutes, 11 secondsSo const message of sub we can add here and try
4:46:164 hours, 46 minutes, 16 secondscatch statement. We can say counts data jet stream sorry JSON encoded decode
4:46:274 hours, 46 minutes, 27 secondsmessage dot data message dot data uh
4:46:374 hours, 46 minutes, 37 secondsokay and data basically okay I I think it's fine after this const key id
4:46:464 hours, 46 minutes, 46 secondsand logs And the server received ad
4:46:554 hours, 46 minutes, 55 secondsit's going to we're going to receive this from data and we can say data as any now const now date dot now.
4:47:064 hours, 47 minutes, 6 secondsSo this date dot now and this server received a date now. This like in between time is the latency
4:47:144 hours, 47 minutes, 14 secondsand meta we can use our radius right now. So radius
4:47:214 hours, 47 minutes, 21 secondsuh we need our radius client. So, so basically the problem is that radius we already do
4:47:284 hours, 47 minutes, 28 secondshave a radius client but that's inside this module but in our net since it's not a NestJS service we cannot import
4:47:384 hours, 47 minutes, 38 secondsthat global module inside here directly if we want to do that we have to also make it another injectable service but
4:47:484 hours, 47 minutes, 48 secondswe don't want to do it right now we can do one thing to just uh like for this file This is like on shortcut we can use. We
4:47:574 hours, 47 minutes, 57 secondscan again say constant radius and new radius
4:48:054 hours, 48 minutes, 5 secondsand we can pass here the host which is going to be basically our radius host.
4:48:124 hours, 48 minutes, 12 secondsWe can say process dot env dot radius host.
4:48:194 hours, 48 minutes, 19 secondsfor the port same process env
4:48:264 hours, 48 minutes, 26 secondsdot radius port and we also need to reduce password
4:48:334 hours, 48 minutes, 33 secondsand db. So password we can copy this and copy from here as well.
4:48:424 hours, 48 minutes, 42 secondsNext one is the DB.
4:48:444 hours, 48 minutes, 44 secondsJust copy this, paste it in here and radius DB.
4:48:544 hours, 48 minutes, 54 secondsYeah, what it's saying?
4:48:584 hours, 48 minutes, 58 secondsOkay, 1 minute. After this, we need our max retries per request, which is going to be five.
4:49:084 hours, 49 minutes, 8 secondsthen reconnect on error.
4:49:134 hours, 49 minutes, 13 secondsWe can basically like show the error message something like this.
4:49:214 hours, 49 minutes, 21 secondsAnd then the retry strategy
4:49:294 hours, 49 minutes, 29 secondstimes what's what's is giving this uh error that radius DB
4:49:444 hours, 49 minutes, 44 secondsOkay, one minute. Let's comment that and let's come here and times we're basically doing an back off like after every 10 second try on retry to connect
4:49:534 hours, 49 minutes, 53 secondsthe DB again. Yeah, it's fine but radius is giving a warning.
4:50:014 hours, 50 minutes, 1 secondWe don't need AI to fix it. Let's do one thing. Let's uncomment it or
4:50:084 hours, 50 minutes, 8 secondsadd DB. Okay, I understand why it's giving the uh warning because it can happen that this is null. That's why I
4:50:184 hours, 50 minutes, 18 secondsthink so. What's the what's the problem in here? Okay, we have to pass host
4:50:254 hours, 50 minutes, 25 secondsuh TV password.
4:50:374 hours, 50 minutes, 37 secondsNo. What's wrong in here?
4:50:454 hours, 50 minutes, 45 secondsActually, it's a number.
4:50:474 hours, 50 minutes, 47 secondsThat's the problem. So, we have to say zero.
4:50:514 hours, 50 minutes, 51 secondsbecause it should be a number and same for radius port. Let's do one thing. Let's cut this.
4:51:004 hours, 51 minutesWe can say 6379 here. We can put it in a number.
4:51:094 hours, 51 minutes, 9 secondsOkay. So this was basically the type warning and same same for our DB. We can cut it and add it in a number.
4:51:214 hours, 51 minutes, 21 secondssomething like this and we can save it.
4:51:234 hours, 51 minutes, 23 secondsYou can see right now no error or nothing is wrong in here. Yeah, everything makes sense. Now we can come back here.
4:51:314 hours, 51 minutes, 31 secondsWe can start to work with radius since we have right now access to our radius DB. We can say h get all
4:51:404 hours, 51 minutes, 40 secondsour oml and key meta the version
4:51:484 hours, 51 minutes, 48 secondswhich is basically the version is version one and after this
4:51:564 hours, 51 minutes, 56 secondswe can pass the key ID. Yeah. So this is for fetching the meta data.
4:52:064 hours, 52 minutes, 6 secondsYeah. And after fetching metadata, we can say if the meta doesn't have any key ID actually key ID,
4:52:144 hours, 52 minutes, 14 secondswhat's that? Uh I forgot it. Fine. For now, it's fine.
4:52:204 hours, 52 minutes, 20 secondsWe can add here organization. Sorry, not organization ID. We're not having organization ID for the version one. So user id we can say meta
4:52:304 hours, 52 minutes, 30 secondsdot user id and we have to right now transform the
4:52:374 hours, 52 minutes, 37 secondslocks. So we can say const transformed
4:52:444 hours, 52 minutes, 44 secondslogs dot map log any
4:52:514 hours, 52 minutes, 51 secondsand const now date dot now.
4:52:594 hours, 52 minutes, 59 secondsAfter this we need our latency. So latency value it's going to be now minus
4:53:064 hours, 53 minutes, 6 secondsthe server received at and radius we can use l push
4:53:154 hours, 53 minutes, 15 secondsand the ingest latency this is basically for our dashboard
4:53:224 hours, 53 minutes, 22 secondsvalue. So latency we can pass here and radius. L trim
4:53:304 hours, 53 minutes, 30 secondsthe ingest latency. Another one. This is for 0 to 59.
4:53:414 hours, 53 minutes, 41 secondsYeah, like an average latency.
4:53:444 hours, 53 minutes, 44 secondsThen const ts which is going to be log time stamps
4:53:524 hours, 53 minutes, 52 secondsand event time if it's available then date dot sorry new
4:54:004 hours, 54 minutesdate and we can pass log dot
4:54:064 hours, 54 minutes, 6 secondstimestamps dotvent time
4:54:124 hours, 54 minutes, 12 secondsdot get time function. Yeah. Otherwise date dot now. This is not function. This
4:54:214 hours, 54 minutes, 21 secondswas a method. I fine. Uh after this date dot now after the ts we need to convert
4:54:294 hours, 54 minutes, 29 secondsour time stamp seconds to milliseconds because click house date time is milliseconds in milliseconds format. So
4:54:374 hours, 54 minutes, 37 secondswe can say timestamp seconds when use math dot floor the ts divided
4:54:464 hours, 54 minutes, 46 secondsby 1,000 we will get milliseconds to seconds like the seconds value
4:54:534 hours, 54 minutes, 53 secondsthen we can return our key id then user id
4:55:004 hours, 55 minutestype which is going to be log type the Message
4:55:094 hours, 55 minutes, 9 secondslog dot message then service
4:55:164 hours, 55 minutes, 16 secondslog dot service app name
4:55:224 hours, 55 minutes, 22 secondslog dot app name environment
4:55:294 hours, 55 minutes, 29 secondslog dot environment and Importance
4:55:404 hours, 55 minutes, 40 secondslog dot importance subsystem
4:55:484 hours, 55 minutes, 48 secondslog dot sub system.
4:55:554 hours, 55 minutes, 55 secondsYeah. Next one is our operation. So 1 minute in here log subsystem since it's optional we can say this or either null.
4:56:054 hours, 56 minutes, 5 secondsNow uh for the importance level we have to right now use here on helper function something like this that tool
4:56:154 hours, 56 minutes, 15 secondsimportance and we have to pass this log importance in here. So it's basically an helper function. We can create it in here.
4:56:234 hours, 56 minutes, 23 secondsWe can say function to importance. It's going to receive the input which type is going to be actually
4:56:314 hours, 56 minutes, 31 secondsunknown number or null. It can be actually any not
4:56:404 hours, 56 minutes, 40 secondsunknown. Yeah. Then inside this we can say if type of uh the input
4:56:494 hours, 56 minutes, 49 secondsequals to number then return the input.
4:56:574 hours, 56 minutes, 57 secondsIf our type of input is string
4:57:074 hours, 57 minutes, 7 secondsthen const v the importance no importance
4:57:164 hours, 57 minutes, 16 secondsmap we have to pass the input dot to lower case
4:57:254 hours, 57 minutes, 25 secondsand then we can return the V or null
4:57:314 hours, 57 minutes, 31 secondsor we can return normally null. Yeah, importance map. It's basically
4:57:404 hours, 57 minutes, 40 secondsan object type is going to be something like this
4:57:474 hours, 57 minutes, 47 secondslike critical meanings from our like the SDK we are
4:57:554 hours, 57 minutes, 55 secondshaving critical, high, medium, low value. So we are basically changing it to number right now. High means three,
4:58:044 hours, 58 minutes, 4 secondsmediums means no. Uh two, low means one.
4:58:094 hours, 58 minutes, 9 secondsYeah, that's it.
4:58:134 hours, 58 minutes, 13 secondsAfter this, after operation, we can uh track we can add the track that log track or JSON string signify if
4:58:224 hours, 58 minutes, 22 secondsit's available then make it JSON. Ify otherwise null. Same for security.
4:58:294 hours, 58 minutes, 29 secondsSame for matrix and for time stamp it should be the time stamp seconds.
4:58:354 hours, 58 minutes, 35 secondsYeah. Now the next step is we have to insert all of these into click house. So we can say it click house dot insert.
4:58:444 hours, 58 minutes, 44 secondsThe table is going to be locks and events values is going to be the transformed value.
4:58:564 hours, 58 minutes, 56 secondsformate it's going to be JSON each row. Yeah.
4:59:044 hours, 59 minutes, 4 secondsAfter this we have to like acknowledge the message. We can say there is definitely some more work. We can add some to in here.
4:59:154 hours, 59 minutes, 15 secondsWe have to check or we have to check the uses accumulate. We have to accumulate the
4:59:234 hours, 59 minutes, 23 secondsusers and we have to update the user uses which we will do later on and we
4:59:294 hours, 59 minutes, 29 secondshave to broadcast the live logs from here directly and then we can acknowledge the message. After
4:59:374 hours, 59 minutes, 37 secondsacknowledging the message we can say if the now and last backlog update. So this backlog update
4:59:464 hours, 59 minutes, 46 secondsis basically like late variable in here we can add something like this that zero. So if now
4:59:554 hours, 59 minutes, 55 secondsand last backlog update is
5:00:035 hours, 3 secondsactually more than 1,000 meanings we are basically updating our
5:00:095 hours, 9 secondsjet stream backlog once per second. We can say last uh list backlog update now.
5:00:185 hours, 18 secondsNow const JSM
5:00:255 hours, 25 secondsconsumers info. We have to pass the stream name
5:00:335 hours, 33 secondsand the variable and the backlog.
5:00:415 hours, 41 secondsWe can set info as any
5:00:475 hours, 47 secondsand num ping. So the number pinging info
5:00:525 hours, 52 secondsor info as any num
5:01:035 hours, 1 minute, 3 secondsacknowledge painting.
5:01:065 hours, 1 minute, 6 secondsSo num painting and num acknowledge painting it's different definitely. And another one info
5:01:165 hours, 1 minute, 16 secondswe can set this time num acknowledge pending.
5:01:215 hours, 1 minute, 21 secondsSo basically we are adding here all the possible backlog value. It can happen that info
5:01:295 hours, 1 minute, 29 secondsas nonpending or let's say num acknowledge pending or num pending like this. Yeah. After this we have to call
5:01:385 hours, 1 minute, 38 secondsradius dot set and we have to set the ingest backlog with this backlog value
5:01:485 hours, 1 minute, 48 secondsthat how many logs still in in like we're ingesting how many logs still are in like backlog. If it's catch any error
5:01:585 hours, 1 minute, 58 secondswe can console dot error the message that
5:02:065 hours, 2 minutes, 6 secondsconsumer error and we can check the error from here.
5:02:125 hours, 2 minutes, 12 secondsThat's it. Our consumer is actually ready right now. It's going to store the logs into our database. How can we check it that it's working or not? No problem.
5:02:245 hours, 2 minutes, 24 secondsLet's come back to our main dashboard. Before that, let's come back to our SDK.
5:02:295 hours, 2 minutes, 29 secondsIn our TS config, we have to do some modifications. We make sure that you are adding this include like this. Include
5:02:365 hours, 2 minutes, 36 secondscannot be on the source. We have to add something like this. Otherwise, it's not going to work properly. Yeah. After
5:02:435 hours, 2 minutes, 43 secondsthat, let's come back to our SDK. We can clear it. We can write this npm run
5:02:515 hours, 2 minutes, 51 secondsbuild npm link and the name one minute lock/ next. We can come back to our main
5:02:595 hours, 2 minutes, 59 secondsdashboard stop it. We can again say npm link one minute locks next.
5:03:045 hours, 3 minutes, 4 secondsWe can clear everything we can write npm runde.
5:03:105 hours, 3 minutes, 10 secondsHere you go. Now to check it or to test it uh one more thing in app module. Okay logs module is already there. So
5:03:185 hours, 3 minutes, 18 secondseverything should work right now. Now uh let's come back to our apps main dashboard in this li folder. Let's
5:03:265 hours, 3 minutes, 26 secondscreate our locks.ts and we have to check the documentation.
5:03:305 hours, 3 minutes, 30 secondsI mean our documentation we still don't have it but I know how to set up on minute locks perfectly. I already like
5:03:395 hours, 3 minutes, 39 secondsmade this application earlier so I know how to set up. You have to basically write this code snippet and no worries
5:03:475 hours, 3 minutes, 47 secondsyou will find out it on the documentation. So here we need our one minute locks API key. So be make sure
5:03:545 hours, 3 minutes, 54 secondsthat you are coming to your envying it in here. I'm in the example because I can't show you the env. But for me
5:04:025 hours, 4 minutes, 2 secondsactually it's already ready. And after that sorry somehow I came outside.
5:04:095 hours, 4 minutes, 9 secondsYeah, after that app name is going to be let's say B code Emmy. It's optional but it's fine to add this and node DN is fine. We can keep it development. Yeah.
5:04:215 hours, 4 minutes, 21 secondsNow let's try to add some locks. So we can create an API in here. Let's say test
5:04:315 hours, 4 minutes, 31 secondsactually test. Yeah, we can add here on route.ts.
5:04:375 hours, 4 minutes, 37 secondsWe can say export uh function
5:04:465 hours, 4 minutes, 46 secondssomething like our uh 1 minute something like we can say
5:04:535 hours, 4 minutes, 53 secondsexport as sync function.
5:04:585 hours, 4 minutes, 58 secondsWe should not say post because we're just going to test it. We don't need to receive anything.
5:05:045 hours, 5 minutes, 4 secondsWe're going to just say await logs or log
5:05:125 hours, 5 minutes, 12 secondsor whatever logger actually logger dot error.
5:05:195 hours, 5 minutes, 19 secondsWe can add the message that something went wrong.
5:05:265 hours, 5 minutes, 26 secondsAnd now importance we can say medium.
5:05:325 hours, 5 minutes, 32 secondsThen like app name we already have an app name so we don't need to add that we can add anything else let's think about it what are the options in here you can
5:05:395 hours, 5 minutes, 39 secondssee these are the options service we can say something just for testing purpose definitely service let's
5:05:485 hours, 5 minutes, 48 secondssay testing yeah we can do one thing we can cut it we can add here and try catch statement on the
5:05:575 hours, 5 minutes, 57 secondstripod we can add this on the catch you can console log the error and from here we should definitely send a next
5:06:055 hours, 6 minutes, 5 secondsresponse dot uh next response.json
5:06:165 hours, 6 minutes, 16 secondssuccess true. Yeah, that's it. Now what will happen? One thing again be make sure
5:06:245 hours, 6 minutes, 24 secondsthat you are having your one metlock API key. If you're not having it just come here create a new one. as already the
5:06:325 hours, 6 minutes, 32 secondstest. So come here, create a new one from here, copy that, add it in your env. And then come back here. Go to slash test.
5:06:445 hours, 6 minutes, 44 secondsUh sorry, not slash test slash API/ test. Let's come back here.
5:06:525 hours, 6 minutes, 52 secondsOh, that should be error actually because on the first time no one should like fix I mean it's natural. We're not
5:07:005 hours, 7 minutesgoing to screw it properly. It's giving a net error 503. Okay, we have to check it why it's giving a net error. All
5:07:085 hours, 7 minutes, 8 secondsright, so I find out why all of those errors were coming. First of all in here in our producer in our net producer it
5:07:165 hours, 7 minutes, 16 secondsshould be logs ingest not log ingest because when we are creating the subject you can see the name is actually
5:07:265 hours, 7 minutes, 26 secondssorry in here the name is logs inest the subject name so when you're producing the message it must need to be the same
5:07:345 hours, 7 minutes, 34 secondsname so be make sure that you are also having here locks inest this is the first fix second fix We have to come
5:07:425 hours, 7 minutes, 42 secondsback to our schema in our clickhouse schema. Here we are saying that everything is like uh create on click
5:07:515 hours, 7 minutes, 51 secondshouse comment but we have to create on table when there is no table available.
5:07:575 hours, 7 minutes, 57 secondsWe must have to create on table. So we can add here another comment. I mean another comment that await click house
5:08:055 hours, 8 minutes, 5 secondsdot comment and query we can say create database
5:08:145 hours, 8 minutes, 14 secondsif not exist locks very very important this line okay we make sure that you're adding this
5:08:225 hours, 8 minutes, 22 secondsline after this uh most important work is our inside this maints file because
5:08:315 hours, 8 minutes, 31 secondsbasically we have to we uh set up net jet stream we set up click house everything but we didn't call it here we
5:08:395 hours, 8 minutes, 39 secondshave to call it for an example here we can say await init stream and that's it
5:08:465 hours, 8 minutes, 46 secondsactually for now I think it should be good enough we can save it
5:08:545 hours, 8 minutes, 54 secondsnow if we come back here if we give on reload the like The logs should be inside the
5:09:035 hours, 9 minutes, 3 secondsdatabase. Just wait a little bit. Come back here. We have to write here on command to check it. The command is
5:09:105 hours, 9 minutes, 10 secondssomething like this that select uh select everything from logs.vent
5:09:175 hours, 9 minutes, 17 secondslimit is 100. So there are no message here because I think here this init
5:09:245 hours, 9 minutes, 24 secondsuh net stream. All right. I find out the mistake. The mistake is in this line.
5:09:295 hours, 9 minutes, 29 secondsthis await net stream we have to add this line instead that starts our log consumer we don't
5:09:375 hours, 9 minutes, 37 secondshave to initialize the net stream in here if we add this and if we save it you can see connected to net and OML
5:09:445 hours, 9 minutes, 44 secondslock consumer started right now if we hit run you can see there are already three logs because we tried it to store
5:09:525 hours, 9 minutes, 52 secondsfor three times right now if you come back here and give on reload you can notice there will be actually four you can see locks uploaded to TV. If we run
5:10:005 hours, 10 minutesagain, four logs in here and uh here is the type, message, app name
5:10:075 hours, 10 minutes, 7 secondsand everything. However, the user ID is somehow missing. Why? I don't know. Let let me see why it's missing. So, user ID missing. User ID.
5:10:205 hours, 10 minutes, 20 secondsUser ID. It's underscore ID. But I don't think we're adding it as underscore ID.
5:10:265 hours, 10 minutes, 26 secondsLet me check again from our wait. We're not adding the user ID.
5:10:325 hours, 10 minutes, 32 secondsWe're adding the key ID. So user ID is meta dot user ID
5:10:405 hours, 10 minutes, 40 secondsuh from the key ID. Let me do one thing.
5:10:465 hours, 10 minutes, 46 secondsIf we console log the meta, we will probably get the value. But if I'm not wrong, it should be actually user ID. So let's try again.
5:10:585 hours, 10 minutes, 58 secondsSo meta is empty object that's why it's not working.
5:11:025 hours, 11 minutes, 2 secondsIt's basically OML key meta this version and key ID.
5:11:075 hours, 11 minutes, 7 secondsWe are using this for getting the user ID. However, we don't need this.
5:11:135 hours, 11 minutes, 13 secondsActually we can get the user ID without even that user ID. We can receive it in here if we want like this user ID.
5:11:275 hours, 11 minutes, 27 secondsWe can save it. And here the user ID.
5:11:325 hours, 11 minutes, 32 secondsLet's do one thing. Let's come back to our locks controller.
5:11:395 hours, 11 minutes, 39 secondsFrom here, let's send our request dot user do ID as well.
5:11:475 hours, 11 minutes, 47 secondsAnd here we're going to receive the user ID. We can say string
5:11:545 hours, 11 minutes, 54 secondsnet producer no something like this. Yeah.
5:12:045 hours, 12 minutes, 4 secondsSo here key ID server receipt. Wait user ID we have to pass. So
5:12:115 hours, 12 minutes, 11 secondswe will pass here user id after key id which is going to be string and here we can pass the user ID.
5:12:265 hours, 12 minutes, 26 secondsNow in our consumer it's going to receive the user ID like this and yeah we're storing it. So if we come back
5:12:335 hours, 12 minutes, 33 secondshere if we give reload come here hit run. Here we go. This time you can see the user ID is in here. So
5:12:415 hours, 12 minutes, 41 secondswe are getting the user ID and everything which is very important for us. Now you might be thinking how then we can delete it. Since this is click
5:12:495 hours, 12 minutes, 49 secondshouse you don't have access to like traditional database like that in especially in local in local server. We
5:12:585 hours, 12 minutes, 58 secondscan do one thing we can actually trunate. I forgot the comment. We have to I have to check uh actually
5:13:065 hours, 13 minutes, 6 secondsdocumentation. Yeah, it's something like this. The truncate tableable locks event. Here you go. Nothing is available
5:13:135 hours, 13 minutes, 13 secondsnow. Even if you run it, you can see it's empty completely. If you give reload, here we go. There will be one error.
5:13:225 hours, 13 minutes, 22 secondsYeah, you can see one message in here.
5:13:235 hours, 13 minutes, 23 secondsIf you give another reload and you hit run.
5:13:275 hours, 13 minutes, 27 secondsYeah, two rows. So, it's actually working perfectly as we expected.
5:13:345 hours, 13 minutes, 34 secondsAnd yeah, app name environment development the message the type and everything. Now what next? This was just
5:13:425 hours, 13 minutes, 42 secondsfor testing purpose that is it working properly or not. And the interesting thing is that we were using our one
5:13:505 hours, 13 minutes, 50 secondsminute locks library throughout this right we were using our on minute locks
5:13:565 hours, 13 minutes, 56 secondslibrary inside our this main dashboard right we're testing it with our logger
5:14:035 hours, 14 minutes, 3 secondsand logger is coming from here so everything is working right now it's time for broadcasting the logs from this
5:14:115 hours, 14 minutes, 11 secondslive logs so we can make that at first we will finish the back end and then we will start to work for the npm SDK and
5:14:195 hours, 14 minutes, 19 secondswe'll finish it. So let's come back to our lock service and from here we can start to work for it. All right. After
Chapter 10: Real-Time Log Broadcasting
5:14:265 hours, 14 minutes, 26 secondsthis async send locks we can create here a new function or new module we can say
5:14:325 hours, 14 minutes, 32 secondsstart s meaning start the server side events server sync events actually it's
5:14:405 hours, 14 minutes, 40 secondsgoing to receive request. It's very very important because we need access into that or wait let me see actually we need
5:14:485 hours, 14 minutes, 48 secondsaccess into that and response we also need access into that so
5:14:545 hours, 14 minutes, 54 secondsresponse we can give it type to any
5:15:025 hours, 15 minutes, 2 secondsand that's all we need access after this we can
5:15:095 hours, 15 minutes, 9 secondswrite our user ID which is going to request dot user id. Let's extract our user id from here. After this we need
5:15:185 hours, 15 minutes, 18 secondsour limit like how many data we can send from here. So we can say request dot query
5:15:265 hours, 15 minutes, 26 secondsdot sorry query dot limit
5:15:345 hours, 15 minutes, 34 secondsor by default 500 and con type request dot query
5:15:435 hours, 15 minutes, 43 secondsdot type as string or undefined
5:15:525 hours, 15 minutes, 52 secondsconst env the request dot query.env as string or undefined.
5:16:035 hours, 16 minutes, 3 secondsThen we also need the app name again as a query request query dot app
5:16:125 hours, 16 minutes, 12 secondsname as string or it can be undefined as well. Same for the search value. So we
5:16:205 hours, 16 minutes, 20 secondscan say search request dot query dot search
5:16:295 hours, 16 minutes, 29 secondsuh search as string or undefined.
5:16:355 hours, 16 minutes, 35 secondsNow we need to set up the sse header. So we can say race dot set header. However, set header option is not coming here
5:16:445 hours, 16 minutes, 44 secondsbecause we have to use here express response or nest response.
5:16:535 hours, 16 minutes, 53 secondsI think we're using here wrong response.
5:16:595 hours, 16 minutes, 59 secondsUh let's do one thing. Let's copy the name. Let's come back here and let's say import response from
5:17:065 hours, 17 minutes, 6 secondsactually express. Yeah, right now you can see we have our set uh rest dot set header right now and
5:17:155 hours, 17 minutes, 15 secondshere we can say content type and we can set the content type to text
5:17:235 hours, 17 minutes, 23 seconds/vent stream. You can see it's different. It's not that normal content type we set like application/ application/json.
5:17:335 hours, 17 minutes, 33 secondsIt's not like that. It's text/eventst stream because it's an event stream.
5:17:385 hours, 17 minutes, 38 secondsIt's not a normal response. And we have to set actually some more headers as well like cache control. We have to must make it no cache.
5:17:505 hours, 17 minutes, 50 secondsUh no cache.
5:17:555 hours, 17 minutes, 55 secondsSame for our connection. So rest dot set header
5:18:015 hours, 18 minutes, 1 secondconnection we have to keep it alive. So we can say keep alive. After this we have to flush the headers.
5:18:105 hours, 18 minutes, 10 secondsJust call it. Yeah. And then we have to make on conditions for our click house
5:18:175 hours, 18 minutes, 17 secondsqueries. We can say conditions and here
5:18:235 hours, 18 minutes, 23 secondsthe user ID is going to be the user ID and it's going to be actually string.
5:18:325 hours, 18 minutes, 32 secondsYeah, but we don't need this because we're actually going to use it as a condition.
5:18:385 hours, 18 minutes, 38 secondsThen we can say if our type then conditions dot push
5:18:475 hours, 18 minutes, 47 secondswe're going to push the type and type is going to be string like this s must
5:18:555 hours, 18 minutes, 55 secondsneed to be capital we make sure this and if there is env
5:19:055 hours, 19 minutes, 5 secondsconditions dot push push environment. We have to push the
5:19:125 hours, 19 minutes, 12 secondsenvironment in here. Environment and env
5:19:215 hours, 19 minutes, 21 secondsstring. Yeah. After this if there is app name then conditions dot
5:19:295 hours, 19 minutes, 29 secondspush app name and app name is going to be string as
5:19:385 hours, 19 minutes, 38 secondswell. After this we can say if search then conditions dot
5:19:465 hours, 19 minutes, 46 secondspush and message
5:19:515 hours, 19 minutes, 51 secondsI like and here we have to say search which is going to be string as well.
5:19:595 hours, 19 minutes, 59 secondsYeah that's it. Now we have to build the query comment the SQL comment.
5:20:075 hours, 20 minutes, 7 secondsIt's going to be something like this.
5:20:085 hours, 20 minutes, 8 secondsSelect everything from locks dots table where
5:20:185 hours, 20 minutes, 18 secondsthe conditions dot join join it with and something like this.
5:20:265 hours, 20 minutes, 26 secondsThen order by time stamp
5:20:335 hours, 20 minutes, 33 secondsthe descending way and limit let's keep it uh limit
5:20:435 hours, 20 minutes, 43 secondsu integer 32. Yeah that's it. After this
5:20:525 hours, 20 minutes, 52 secondslet's run the real query. We can call click house dot query
5:20:595 hours, 20 minutes, 59 secondsand here we have to pass the query format is going to be JSON each row and query params.
5:21:135 hours, 21 minutes, 13 secondsIt's going to be organization sorry not organization ID user id
5:21:205 hours, 21 minutes, 20 secondstype env app name search and limit. Yeah that's
5:21:295 hours, 21 minutes, 29 secondsit. Then con initial rows it's going to be the
5:21:365 hours, 21 minutes, 36 secondsawait rs.json and then we need to write the response.
5:21:425 hours, 21 minutes, 42 secondsSo we can say rest dot write and dot data
5:21:505 hours, 21 minutes, 50 secondsdata let's call JSON dot stringify
5:21:585 hours, 21 minutes, 58 secondsand type is going to be initial locks which is going to be the initial
5:22:065 hours, 22 minutes, 6 secondsrows dot reverse. So we are basically reversing it and then
5:22:125 hours, 22 minutes, 12 secondswe can add this that slash n slash n like forward slash n and forward slashn
5:22:215 hours, 22 minutes, 21 secondsand then we have to call here on helper function called add client which is basically going to add this as a client and user
5:22:305 hours, 22 minutes, 30 secondsID we have to pass here type env app name and search let's create this add
5:22:375 hours, 22 minutes, 37 secondsclient. So we can come back here the source folder we can create a new folder by giving them s
5:22:465 hours, 22 minutes, 46 secondsinside here we can say sse registry. So it's basically we're registering the sse in
5:22:535 hours, 22 minutes, 53 secondshere and here for the add client let's add our add client. So export function
5:23:025 hours, 23 minutes, 2 secondsat client it's going to receive the race which is going to be response and the filters
5:23:115 hours, 23 minutes, 11 secondsthe filters which is a interface. So let's add our filter interface in here.
5:23:195 hours, 23 minutes, 19 secondsLet's come back here. Let's say export interface the filters
5:23:285 hours, 23 minutes, 28 secondshere we can say user id which is going to be string
5:23:345 hours, 23 minutes, 34 secondstype string env optional string app name
5:23:415 hours, 23 minutes, 41 secondsstring and search string Yeah. Now we can come inside and
5:23:515 hours, 23 minutes, 51 secondsfor the response we have to actually import response from express library.
5:23:585 hours, 23 minutes, 58 secondsYeah, we can come back here. We can call the add client from here. And there you go.
5:24:065 hours, 24 minutes, 6 secondsNo error right now. Now inside this add client, we have to call clients variable which we have to create now. So let's call the clients variable which type is
5:24:155 hours, 24 minutes, 15 secondsgoing to be S SE client an empty array. So SS client is
5:24:225 hours, 24 minutes, 22 secondsbasically another interface. We can say export interface
5:24:295 hours, 24 minutes, 29 secondsS SSE client and race. It's going to response uh
5:24:375 hours, 24 minutes, 37 secondsfilters the filters. That's it.
5:24:425 hours, 24 minutes, 42 secondsThat's our clients. Now here we can say clients dot push and push the race and the filters.
5:24:545 hours, 24 minutes, 54 secondsThat's all. We can save it now.
5:24:575 hours, 24 minutes, 57 secondsI should I think there should not be an error. Yeah, there's no error. Now after the at client
5:25:045 hours, 25 minutes, 4 secondswe have to call the request dot on and we have to close the request and here on call back and then rest dot send from here.
5:25:145 hours, 25 minutes, 14 secondsAll good. Now we can copy this start sec. We can come back here. We can say get
5:25:215 hours, 25 minutes, 21 secondsfrom nest common. The endpoint is going to be something like uh stream the get
5:25:295 hours, 25 minutes, 29 secondsendpoint and uh here after this we can say async start sse
5:25:365 hours, 25 minutes, 36 secondswe need the request so request which type is going to be any uh here we don't need anything here and
5:25:455 hours, 25 minutes, 45 secondswe need rest which type is going to be actually response from race.
5:25:525 hours, 25 minutes, 52 secondsThat's it. And let's call it Yeah.
5:25:565 hours, 25 minutes, 56 secondsAnd let's pass it in here. So, race and we can import race from there. And
5:26:055 hours, 26 minutes, 5 secondsresponse from express what it's saying?
5:26:115 hours, 26 minutes, 11 secondsUh, quick fix. Okay. Express response now makes sense. Yeah. Fine. Now here we can
5:26:195 hours, 26 minutes, 19 secondsreturn and call this dolog service. SSE we have to pass the request and the response I guess.
5:26:285 hours, 26 minutes, 28 secondsYeah, that's all. And then rest of the work the SSE starts it's going to do by itself.
5:26:365 hours, 26 minutes, 36 secondsExactly. Because from here we already writing the response.
5:26:405 hours, 26 minutes, 40 secondsAll good. Our backend site is actually ready for now. But one more thing very
5:26:465 hours, 26 minutes, 46 secondsvery important from our consumer this is for like fetching the data but for
5:26:525 hours, 26 minutes, 52 secondsrealtime data when we are like adding the data or storing the data
5:26:595 hours, 26 minutes, 59 secondsinside our consumer after storing this you can see here we said broadcast live logs. So we have to actually right now
5:27:075 hours, 27 minutes, 7 secondscall that function it's going to broadcast the live logs from here. We can come here. We can remove this. We
5:27:155 hours, 27 minutes, 15 secondscan say broadcast uh locks. It's a new function. And we
5:27:225 hours, 27 minutes, 22 secondshave to pass the transform in here. So broadcast logs. Let's copy the name.
5:27:285 hours, 27 minutes, 28 secondsCome back in our SS registry again. S SS registry. And we're going to create the function in here. Export function broadcast logs. It's going to receive
5:27:375 hours, 27 minutes, 37 secondsthe new logs which type is going to be any. We can save it. We can come back here.
5:27:445 hours, 27 minutes, 44 secondsWe can import it. There you go. Now inside here we have to deliver the locks one by one or in chunks of 50. So we can
5:27:525 hours, 27 minutes, 52 secondssay con chunk size which is going to be 50. Then since it's an array so we can write on
5:28:005 hours, 28 minutesfor loop. So for const rays and filters of the clients
5:28:075 hours, 28 minutes, 7 secondswe have to look for the matched log because we we we don't want to add same logs for multiple times like twice or multiple
5:28:155 hours, 28 minutes, 15 secondstimes. So we have to filter it. We can filter out with the like new locks to avoid that mutating the colors array.
5:28:245 hours, 28 minutes, 24 secondsThen we have to reverse. So reverse and then we can write the filter logic filter
5:28:325 hours, 28 minutes, 32 secondslet's say log and if the log dot user id
5:28:405 hours, 28 minutes, 40 secondsis not matching with our filters dot user id then return false.
5:28:525 hours, 28 minutes, 52 secondsCopy this. And this time if the filters dot type
5:28:585 hours, 28 minutes, 58 secondsand our log dot type uh sorry log dot type is
5:29:095 hours, 29 minutes, 9 secondsnot matching with filters dot type then return false. Yeah, we can copy this. We can come back here. This one
5:29:175 hours, 29 minutes, 17 secondsfor env. So, env uh not env it's a mistake. It should be
5:29:255 hours, 29 minutes, 25 secondsenvironment as we are adding the value like that.
5:29:285 hours, 29 minutes, 28 secondsEnvironment and this one envy this. This one is for app name. So, app
5:29:355 hours, 29 minutes, 35 secondsname here app name and here as well the app name. Yeah. Now, this one is for
5:29:435 hours, 29 minutes, 43 secondssearch. So, search we can call the search. Now this one is a little bit different. Let's
5:29:515 hours, 29 minutes, 51 secondsdelete this. And we can say and if the log dot messages
5:29:595 hours, 29 minutes, 59 secondsdot includes the filters dot search then like return false. Yeah. Otherwise
5:30:085 hours, 30 minutes, 8 secondsreturn true like for normal blocks. Yeah.
5:30:155 hours, 30 minutes, 15 secondsNow here we can say if our match.length is zero then continue the function. So
5:30:235 hours, 30 minutes, 23 secondscontinue otherwise break the match locks. So for
5:30:315 hours, 30 minutes, 31 secondslet I equals to zero then if the I is more than the matched
5:30:375 hours, 30 minutes, 37 secondsdot length sorry less than what we have to do we have to add it into our chunk size
5:30:455 hours, 30 minutes, 45 secondsand then we have to slice it. So con slice the match dot slice
5:30:525 hours, 30 minutes, 52 secondsI plus chunk size. Yeah. And have to write it as response. So race.right
5:31:015 hours, 31 minutes, 1 seconddata JSON dot stringify
5:31:085 hours, 31 minutes, 8 secondsand type which is going to be actually live. Yeah. And the logs itself in here we can say slice.
5:31:205 hours, 31 minutes, 20 secondsAnd then after this we can add a forward slashn forward slashn. That's all. We can save it right now. We can come back
5:31:265 hours, 31 minutes, 26 secondshere. All still looks good. So consumer is also working perfectly. The users
5:31:345 hours, 31 minutes, 34 secondsaccumulate which is still not possible because we have to work with the billing uh mechanism then it's possible. So we will do it later on and we don't need
5:31:415 hours, 31 minutes, 41 secondsthe console log anymore at this time because everything is breaking. So we don't need that one to check it. Yeah.
5:31:475 hours, 31 minutes, 47 secondsAfter uploading logs to our database we were basically console logging in there.
5:31:515 hours, 31 minutes, 51 secondsBut we don't need that since everything is working properly right now. All good.
5:31:575 hours, 31 minutes, 57 secondsWhat we can do now since our back end is actually ready. It's definitely not fully ready yet. We have some others
5:32:055 hours, 32 minutes, 5 secondslike uh function or other module we can say like uh for this is for broadcasting
5:32:125 hours, 32 minutes, 12 secondsthe logs live. Sorry, not here. I mean here this SSC we have also another
5:32:195 hours, 32 minutes, 19 secondsfunction another module for parsing the filters and basically like running the
5:32:255 hours, 32 minutes, 25 secondslocks. I mean you can do a query to get the locks. So let's add that right now.
5:32:325 hours, 32 minutes, 32 secondsThen we can like we don't need to come back again. We can finish it at the same time. So we can say async get locks.
5:32:395 hours, 32 minutes, 39 secondsIt's also going to receive the request and response.
5:32:445 hours, 32 minutes, 44 secondsBut since this is not any server send events, we don't need the response in here. We can just return it. But for get
5:32:525 hours, 32 minutes, 52 secondslocks, we probably need the request access. Actually we need so for now we
5:32:595 hours, 32 minutes, 59 secondscan come here and we can say cons user id which is going to be the
5:33:065 hours, 33 minutes, 6 secondsrequest dot user do id and after this we can say const
5:33:165 hours, 33 minutes, 16 secondsso we have to purse the field the filters not the field because for searching for searching logs definitely
5:33:255 hours, 33 minutes, 25 secondsyou are adding some filters. So we are going to parse the filters from your language to our like understandable
5:33:325 hours, 33 minutes, 32 secondslanguage. We can say here we need to make uh on private as sync module that filters which is
5:33:415 hours, 33 minutes, 41 secondsgoing to receive the query object which type is going to be any. Then we can say const filters.
5:33:515 hours, 33 minutes, 51 secondsWe can set here unlimit which is going to be number
5:33:585 hours, 33 minutes, 58 secondstype which is going to be string and all of them are actually like optional
5:34:055 hours, 34 minutes, 5 secondsbecause it can happen or it it can happen that it's not like inside the
5:34:125 hours, 34 minutes, 12 secondsquery because it like all of them are optional that's why. So search which is
5:34:185 hours, 34 minutes, 18 secondsgoing to be string and the range same string and by default an empty
5:34:245 hours, 34 minutes, 24 secondsobject. Now we need the raw request the raw query data. So query object query
5:34:335 hours, 34 minutes, 33 secondsas string or undefined.
5:34:395 hours, 34 minutes, 39 secondsIf raw then we can check the parts. So
5:34:445 hours, 34 minutes, 44 secondswe can say parts then draw dot split uh on redex pattern something like this.
5:34:545 hours, 34 minutes, 54 secondsIt's basically for looking for the and and is
5:35:025 hours, 35 minutes, 2 secondsthen and we can use here on plus and something like this and you can see it's going to basically check our the
5:35:115 hours, 35 minutes, 11 secondsquery like you can write query something like this that type uh error env let's say development.
5:35:225 hours, 35 minutes, 22 secondsSo these are basically the normal queries which you can write. Let's say app name like code.
5:35:315 hours, 35 minutes, 31 secondsSo you can set up your queries like this and then we're taking the parts from here. Now we can write here a for loop
5:35:375 hours, 35 minutes, 37 secondsfor con P of parts
5:35:445 hours, 35 minutes, 44 secondsof parts and con uh K and V.
5:35:525 hours, 35 minutes, 52 secondsThen P dotsplit we're going to removing all of these I don't know this sign I forgot usually
5:35:595 hours, 35 minutes, 59 secondsthis name so if there is no key or no V actually it should be opposite if there
5:36:075 hours, 36 minutes, 7 secondsis V uh and it it's if it's undefined actually then continue
5:36:145 hours, 36 minutes, 14 secondsyeah continue and otherwise con key
5:36:205 hours, 36 minutes, 20 secondsand for the value const v or value we can say then vtrain. Yeah.
5:36:295 hours, 36 minutes, 29 secondsIf our key equals to type then filters dot
5:36:385 hours, 36 minutes, 38 secondstype val like this. Else if if our the
5:36:465 hours, 36 minutes, 46 secondskey equals to env uh or are very very important or if our
5:36:555 hours, 36 minutes, 55 secondskey equals to environment then filters env
5:37:055 hours, 37 minutes, 5 secondsbut it should be actually outside. Oh Yeah, like this filters envy
5:37:155 hours, 37 minutes, 15 secondsthe else if and here we can change it to app or let's say app name
5:37:235 hours, 37 minutes, 23 secondsthere can be two names. So that's why we are basically adding these filters and filters dot app name which is going to
5:37:295 hours, 37 minutes, 29 secondsbe the value. Yeah, let's add again and this time for search. So search
5:37:395 hours, 37 minutes, 39 secondsand actually only search so we don't need to add it for twice and filter search value we can again copy it and
5:37:475 hours, 37 minutes, 47 secondsthis time it's for range and it's actually same everywhere. So we can say range and next one is for limit.
5:37:575 hours, 37 minutes, 57 secondsSo it's also should be limit but here we have to change it to number because the
5:38:045 hours, 38 minutes, 4 secondstype is only number. Yeah that's it. It's actually ready. However,
5:38:135 hours, 38 minutes, 13 secondswhat is this? This is actually the for loop.
5:38:185 hours, 38 minutes, 18 secondsUh yeah. So we can come back here and we can add this that if query object dot type
5:38:275 hours, 38 minutes, 27 secondsthen filters dot type string and the query object dot type we're
5:38:355 hours, 38 minutes, 35 secondsbasically setting up to the correct type right now we can copy it again and this time it should be for the envo
5:38:455 hours, 38 minutes, 45 secondsstring so env Okay, same for the app name. App name. So app name and app name.
5:38:545 hours, 38 minutes, 54 secondsAnd this one is for search. So search, search and search.
5:39:035 hours, 39 minutes, 3 secondsNext one is for range.
5:39:065 hours, 39 minutes, 6 secondsSo range, range and range.
5:39:105 hours, 39 minutes, 10 secondsAnd last one is for limit. So limit limit and limit filters do limit it should be actually number.
5:39:215 hours, 39 minutes, 21 secondsYeah. Then returns the filters. We can save it.
5:39:285 hours, 39 minutes, 28 secondsNow we need some like variable some default variable like maximum limit
5:39:355 hours, 39 minutes, 35 secondsfor the query. It should be 500 not more than that. I think we're already having the maximum query somewhere. Oh, we actually inside that's why the error is
5:39:445 hours, 39 minutes, 44 secondshere. We can cut this and we can actually purse filters this dope filters. Yeah, because this is a private
5:39:525 hours, 39 minutes, 52 secondsmodule inside this. However, let's come back here and we can do one thing. We can come back to our
5:39:595 hours, 39 minutes, 59 secondsconfig here. We can say export the max limit something like this. We
5:40:075 hours, 40 minutes, 7 secondscan save it. We can come back here again. And we need our query coold down.
5:40:155 hours, 40 minutes, 15 secondsBasically we're using here on caching mechanism. It's important. Why the
5:40:225 hours, 40 minutes, 22 secondsimportant is because like think about it in like SSE it's fine. It's not there's not any problem of spamming or sorry I'm consumer I should be in this service.
5:40:335 hours, 40 minutes, 33 secondsYeah in start sec there's no problem of scaling because we're already limiting here. But for our query there is scaling
5:40:425 hours, 40 minutes, 42 secondsproblem. It can happen that someone like doing spamming let's say running on for loop on our queries. So our server will
5:40:495 hours, 40 minutes, 49 secondscrash because of that because that's a lot of query request which are not true.
5:40:555 hours, 40 minutes, 55 secondsSo that's why we are basically making some caching mechanism for those queries so that we can prevent like the crashing
5:41:025 hours, 41 minutes, 2 secondsproblem. I mean we can speed up the query more fast and for that reason we have to make an query sorry we have to
5:41:105 hours, 41 minutes, 10 secondsmake a caching mechanism. So we're going to do that let's come here and actually let's come outside I guess.
5:41:205 hours, 41 minutes, 20 secondsYeah, we have to actually come outside and we can say con query
5:41:265 hours, 41 minutes, 26 secondscool down and new LRU
5:41:335 hours, 41 minutes, 33 secondscache. We're going to use Lu cache. This is the fastest and number string and number the type.
5:41:435 hours, 41 minutes, 43 secondsSo we are going to add here a maximum number which is going to be 50,000. 50,000 by 5 million by 500k actually.
5:41:515 hours, 41 minutes, 51 secondsYeah, 50,000. And let's add our result cache in here. Result cache which is
5:41:585 hours, 41 minutes, 58 secondsgoing to be new lu cache and string.
5:42:055 hours, 42 minutes, 5 secondsAnd the rows type is going to be like any the total count which is going to be number
5:42:155 hours, 42 minutes, 15 secondsand the GS it's going to be number as well.
5:42:255 hours, 42 minutes, 25 secondsYeah. Then here we can add the max which is going to be 20,000.
5:42:325 hours, 42 minutes, 32 secondsYeah. All good.
5:42:345 hours, 42 minutes, 34 secondsAnd we need another private module in here.
5:42:405 hours, 42 minutes, 40 secondsAfter this we can say private async build
5:42:485 hours, 42 minutes, 48 secondscache key which is going to receive the user id which is going to be string and the
5:42:565 hours, 42 minutes, 56 secondsfilters which is any. So basically for same type of filter we are making it cache. That's the secret in here. User
5:43:065 hours, 43 minutes, 6 secondsID and JSON dot stringify the filters.
5:43:185 hours, 43 minutes, 18 secondsYeah. And we also need another function for cooling down. is cooling
5:43:265 hours, 43 minutes, 26 secondsdown and it's for user ID. So we are basically limiting on user from sending
5:43:355 hours, 43 minutes, 35 secondsmultiple like let's say spamming amount of request from one ID. So we can say get dot now
5:43:465 hours, 43 minutes, 46 secondsconst query cooldown dot gate we can pass the user id
5:43:545 hours, 43 minutes, 54 secondsif the list and now
5:44:015 hours, 44 minutes, 1 secondminus lust more than 2,000 milliseconds then return true.
5:44:085 hours, 44 minutes, 8 secondsYeah. Then what we have to do? Query equal down dot set the user ID. And now then we can return false.
5:44:195 hours, 44 minutes, 19 secondsYeah, that's it. Now uh here we can come back after this part. Let's add a limit limit
5:44:295 hours, 44 minutes, 29 secondswhich is going to be parts dot limit or if it's not available then by default we're going to think it 100. Yeah, if
5:44:395 hours, 44 minutes, 39 secondsthe limit is more less than the max limit then the limit should be max limit.
5:44:515 hours, 44 minutes, 51 secondsIf the limit is more than one then limit should be one. Yeah. Now we have to add
5:45:005 hours, 45 minutesthe time stamp filter. So we can say let timestamp from this is basically for those like filters like you were saying last one week logs or last 3 days log.
5:45:115 hours, 45 minutes, 11 secondsSo we have to transfer it to the real format. So like the light sorry time
5:45:185 hours, 45 minutes, 18 secondsstamp from to timestamp to so number or undefined.
5:45:285 hours, 45 minutes, 28 secondsIf our first row dot range then const match
5:45:365 hours, 45 minutes, 36 secondsfirst dot range dot match
5:45:445 hours, 45 minutes, 44 secondsuh we have to use basically here reax pattern again something like this
5:45:525 hours, 45 minutes, 52 secondslooks a bit weird and reax patterns always looks weird so no worries you don't have to write it you can just check it by yourself and actually you
5:46:015 hours, 46 minutes, 1 secondhave to write it if you're not having the source code if you're having the source code then just copy it but still I'm writing it it's really hard to write
5:46:095 hours, 46 minutes, 9 secondsreax pattern like this yeah but yeah it's done we can say if the match if there is something with this pattern
5:46:165 hours, 46 minutes, 16 secondsthen const value we can call number
5:46:245 hours, 46 minutes, 24 secondsand the match and the first index Second index not the first not index the second value from the array which logical index.
5:46:375 hours, 46 minutes, 37 secondsSo unit which is going to be the third one now. Now second
5:46:465 hours, 46 minutes, 46 secondsmath dot floor date dot now to divide it with 1,000 then we'll
5:46:545 hours, 46 minutes, 54 secondsbasically get the seconds from the milliseconds. Now we can say con second
5:47:035 hours, 47 minutes, 3 secondsthe s is going to be value m going to be value multiply
5:47:115 hours, 47 minutes, 11 seconds60 h is going to be value mult*ly 3,600
5:47:195 hours, 47 minutes, 19 secondsand d the value multiply it's basically second minutes hour and day we are converting ing into seconds.
5:47:305 hours, 47 minutes, 30 secondsYeah. And the unit.
5:47:355 hours, 47 minutes, 35 secondsPerfect. After this, we can set the time stamp from equals to now second minus the seconds and time stamp 2 to the now
5:47:445 hours, 47 minutes, 44 secondssecond. So we basically changed the format so that our query can understand it easily. Now if the first dot from
5:47:545 hours, 47 minutes, 54 secondsthen const if we can call number
5:48:015 hours, 48 minutes, 1 secondfirst dot from and time stamp from if it's like more
5:48:085 hours, 48 minutes, 8 secondsthan less than this 2 e12 it means if milliseconds then convert to
5:48:145 hours, 48 minutes, 14 secondsseconds then math dot floor f /
5:48:215 hours, 48 minutes, 21 seconds1,000 or the f itself. Yeah.
5:48:295 hours, 48 minutes, 29 secondsUh then we have to come outside and we have to say if the first dot two
5:48:365 hours, 48 minutes, 36 secondsthen con t call the number dot 2
5:48:445 hours, 48 minutes, 44 secondsand time stamp 2 t then 2 e 1 2
5:48:515 hours, 48 minutes, 51 secondsand math.flow it's basically a pattern which is like checking if it if it's milliseconds or not. Here we can say
5:48:595 hours, 48 minutes, 59 secondsmath dot floor t /ed by 1,000 or the t itself. T means
5:49:085 hours, 49 minutes, 8 secondst means nothing that that true shortcut form. Okay. F means from.
5:49:165 hours, 49 minutes, 16 secondsAfter this we have to check for basically like if there is no timestamp from or no time stamp to then by default
5:49:265 hours, 49 minutes, 26 secondswe will make it 30 then we have to make it 30 by default.
5:49:325 hours, 49 minutes, 32 secondsSo we can say now second math dot floor
5:49:395 hours, 49 minutes, 39 secondsdate dot now sorry date dot now divided by 1,000
5:49:475 hours, 49 minutes, 47 secondsuh then time stamp two we can set this now second and time stamp from now second minus 30
5:49:565 hours, 49 minutes, 56 secondsthen we can multiply it with 86,400 which is 30 days into seconds format.
5:50:045 hours, 50 minutes, 4 secondsThis one.
5:50:065 hours, 50 minutes, 6 secondsYeah. And finally we can extract this type envir.
5:50:195 hours, 50 minutes, 19 secondsYeah.
5:50:215 hours, 50 minutes, 21 secondsNow for the rate limiting which we were setting up, we can call it now that this dot is cooling down.
5:50:315 hours, 50 minutes, 31 secondsWe have to pass the user id.
5:50:365 hours, 50 minutes, 36 secondsNow inside here we can say con ball back.
5:50:445 hours, 50 minutes, 44 secondsWe can call the result cache dot get build cache key. Pass the user
5:50:515 hours, 50 minutes, 51 secondsID and parsed uh build cache key. I guess these are giving error because we added here async and we don't need to add here async.
5:51:015 hours, 51 minutes, 1 secondYeah, now no error. It's not an async function. After this we can say if there is any fall back
5:51:105 hours, 51 minutes, 10 secondsthen something is wrong. So fall back then we can return the race dot
5:51:175 hours, 51 minutes, 17 secondsuh we have to return we have to return something. So we can say return
5:51:245 hours, 51 minutes, 24 secondsthe fall back true the cached
5:51:325 hours, 51 minutes, 32 secondstrue the count which is going to be fallback dot
5:51:395 hours, 51 minutes, 39 secondsrows.length length total count but fallback dot total count and the
5:51:485 hours, 51 minutes, 48 secondslocks fallback dot rows.
5:51:545 hours, 51 minutes, 54 secondsYeah, that's all. Now after this uh after this one it's basically ending here.
5:52:065 hours, 52 minutes, 6 secondsYeah. See sometimes you feel confused like I'm feeling.
5:52:135 hours, 52 minutes, 13 secondsYeah. This one here we have to make right now the cache key. So filters
5:52:205 hours, 52 minutes, 20 secondswe can add the limit the type the env
5:52:295 hours, 52 minutes, 29 secondsstamp from the time stamp to yeah then con our cacheed key
5:52:385 hours, 52 minutes, 38 secondswe can call the build cache key then the user ID and filters
5:52:455 hours, 52 minutes, 45 secondsand con cached our result cache dot get with this cache key. We're basically like checking the
5:52:535 hours, 52 minutes, 53 secondscache data. If there is cached and minus cache. TS if it's more than
5:53:035 hours, 53 minutes, 3 seconds1,000 then inside here we can say the cached hit. And we can basically return our
5:53:125 hours, 53 minutes, 12 secondscache true and the count which is going to be the
5:53:205 hours, 53 minutes, 20 secondscache do.length post.length and the total count
5:53:295 hours, 53 minutes, 29 secondsit's also going to be the cache dot total count for locks.
5:53:375 hours, 53 minutes, 37 secondsUh locks it's going to be the cache dot rows.
5:53:415 hours, 53 minutes, 41 secondsYeah, that's all. Now we have to write the query comment. The most important part.
5:53:495 hours, 53 minutes, 49 secondsAfter this we can write it. So still we're inside right? If I'm not wrong.
5:53:555 hours, 53 minutes, 55 secondsOh no somehow I went outside. So actually here
5:54:025 hours, 54 minutes, 2 secondsconst uh where the user ID
5:54:095 hours, 54 minutes, 9 secondsthe user ID is our user ID.
5:54:175 hours, 54 minutes, 17 secondsUh we have to basically add a type in here like string.
5:54:225 hours, 54 minutes, 22 secondsThen if the time stamp from then where dot push our
5:54:315 hours, 54 minutes, 31 secondstimestamp more or equals to from
5:54:395 hours, 54 minutes, 39 secondssorry mistakenly press comma is okay from UI integer it's like the type 32
5:54:475 hours, 54 minutes, 47 secondsinteger integer 32 but since we're writing SQL command so that's why something like this that UI integer 32.
5:54:545 hours, 54 minutes, 54 secondsIf our time stamp two then where dot push we have to push the comment like the SQL comment
5:55:025 hours, 55 minutes, 2 secondstimestamp less equals to our two that same u
5:55:095 hours, 55 minutes, 9 secondsinteger u integer 32 the type is going to be now
5:55:165 hours, 55 minutes, 16 secondsif our type then we have to push the type and the type type is actually string.
5:55:305 hours, 55 minutes, 30 secondsAnd now if env then we have to push the environment if app name we have to push the app name
5:55:375 hours, 55 minutes, 37 secondslike this that string and if search we have to push the search. Yeah that's all. And we need our query logs comment.
5:55:475 hours, 55 minutes, 47 secondsNow it's the SQL comment. So select everything from our locks dot event
5:55:565 hours, 55 minutes, 56 secondssorry events where our
5:56:035 hours, 56 minutes, 3 secondswhere the join join with this and and order by
5:56:115 hours, 56 minutes, 11 secondstime stamp descending uh descending
5:56:185 hours, 56 minutes, 18 secondsand limit limit it's going to be the EU integer
5:56:285 hours, 56 minutes, 28 seconds32 that's all then again we need our now second math
5:56:375 hours, 56 minutes, 37 secondsdot floor I know we're writing a lot of code in here because basically this uh this module is for so many like queries
5:56:455 hours, 56 minutes, 45 secondsSo we are validating it one by one and const from 24h that's why it's a little
5:56:535 hours, 56 minutes, 53 secondsbit like uh bigger than the normal code base
5:57:005 hours, 57 minuteswe are basically checking the from 24 we're transforming the time
5:57:075 hours, 57 minutes, 7 secondsso it's just like last 24 hours in second format and 2 24 hour is this Now second.
5:57:175 hours, 57 minutes, 17 secondsYeah. Now con where our 24h
5:57:255 hours, 57 minutes, 25 secondsthe user ID and string.
5:57:355 hours, 57 minutes, 35 secondsNow where 24.h H uh push like where 24 hours start push
5:57:445 hours, 57 minutes, 44 secondstimestamp uh sorry something like this that more or
5:57:515 hours, 57 minutes, 51 secondsequals to from 24h you integer 32. Yeah.
5:58:035 hours, 58 minutes, 3 secondsand where 24h.push timestamp
5:58:105 hours, 58 minutes, 10 secondsour 224 hui
5:58:175 hours, 58 minutes, 17 secondsinteger I mean u integer 32 again that's it now we need our query count comment
5:58:245 hours, 58 minutes, 24 secondsso query count for the query count we can write this SQL comment let's
5:58:315 hours, 58 minutes, 31 secondsselect Select count
5:58:385 hours, 58 minutes, 38 secondsas total from our logs.vents table where
5:58:505 hours, 58 minutes, 50 seconds24hin yeah that's all and then we can execute this
5:58:595 hours, 58 minutes, 59 secondsquery. So RS logs and RS count
5:59:065 hours, 59 minutes, 6 secondsa promise dot all here we can write the clickhouse query.
5:59:145 hours, 59 minutes, 14 secondsSo click house dotquery.
5:59:185 hours, 59 minutes, 18 secondsWe have to pass the query comment which is going to be the query key sorry query logs. The format is going to be
5:59:285 hours, 59 minutes, 28 secondsuh JSON each row query params it's going to be the user
5:59:385 hours, 59 minutes, 38 secondsID the type the env search and from is going to be
5:59:475 hours, 59 minutes, 47 secondsour time stamp from and two is going to be our time stamp two and limit the
5:59:535 hours, 59 minutes, 53 secondslimit value. Yeah. Then uh from here we can again say click house dotquery
6:00:026 hours, 2 secondsand the query is going to be this query count. This is for the query count like
6:00:096 hours, 9 secondsfor the full length. So this is not a normal query. We're basically adding an query call something like that in here.
6:00:176 hours, 17 secondsWe're checking for our query count and query params.
6:00:266 hours, 26 secondsWe have to pass the user ID here. The from 24 H to 224. Yeah, like last one day query
6:00:366 hours, 36 secondscount. That's it. Then con rows await that RSL.json.
6:00:466 hours, 46 secondsThen con total it's going to be a bit array count dot
6:00:556 hours, 55 secondsJSON and as any now we have to cache for 1 second. This
6:01:046 hours, 1 minute, 4 secondsis funny we are doing it so that the repeated uh like request
6:01:106 hours, 1 minute, 10 secondsgoes from the cache. So we can pass the total and the t is which is going to be date dot now.
6:01:216 hours, 1 minute, 21 secondsYeah.
6:01:236 hours, 1 minute, 23 secondsAnd finally we can return our
6:01:316 hours, 1 minute, 31 secondscount which is going to be rows.length length total count
6:01:386 hours, 1 minute, 38 secondsthe total from the time stamp from to the time
6:01:456 hours, 1 minute, 45 secondsstamp two and logs the rows. Yeah,
6:01:516 hours, 1 minute, 51 secondsthat's it. And we still have to write some more code but for now for now actually it's fine.
6:02:016 hours, 2 minutes, 1 secondIt's ready for now. We can say for the getting logs it's fine because for like rest of the work we still need
6:02:106 hours, 2 minutes, 10 secondsto make this analytics which is not hurt but yeah we have to write some other lines of code. We will do that but not definitely not because we're currently
6:02:196 hours, 2 minutes, 19 secondsworking with logs module not with the analytics module at all. Yeah. So our back end is actually ready.
6:02:266 hours, 2 minutes, 26 secondsLet's come back to controller and here we have to add this this uh new controller
6:02:336 hours, 2 minutes, 33 secondsI mean not controller new endpoint like gate and here we can say
6:02:426 hours, 2 minutes, 42 secondsthat our uh simple locks okay sorry locks and I
6:02:506 hours, 2 minutes, 50 secondsthink simple locks is fine so here here gate is going to be empty we don't need to add anything in here and we can say async
6:02:596 hours, 2 minutes, 59 secondsget blocks and it's going to receive
6:03:066 hours, 3 minutes, 6 secondsour request. Yeah. So we just need to send the request
6:03:156 hours, 3 minutes, 15 secondsrequest. Let's use a request decorator request any
6:03:236 hours, 3 minutes, 23 secondsand resppon response.
6:03:356 hours, 3 minutes, 35 secondsYeah.
6:03:376 hours, 3 minutes, 37 secondsUh we have to call it. Yep. Then here we can return this dot our lock service dot
6:03:446 hours, 3 minutes, 44 secondsget locks and we have to pass the request in here. That's it. We can save it. We can actually cut this and we can
6:03:516 hours, 3 minutes, 51 secondsadd it at the first which will looks actually good and it makes sense that first this empty gate
6:03:596 hours, 3 minutes, 59 secondsmeans / locks is going to get these logs. However, since you're already protecting it with ogard so first thing is going to be the ocard. If you're not
6:04:076 hours, 4 minutes, 7 secondslogged in, you're definitely not going to get the logs from here.
6:04:126 hours, 4 minutes, 12 secondsYeah, our back end is ready. Right now, we have to start to work back again for our npm SDK. We have to finish it right now
6:04:216 hours, 4 minutes, 21 secondssince we're having the data. We can finish it for sure right now. We will come back here again and we'll finish
6:04:286 hours, 4 minutes, 28 secondsthe SDK. So, yeah, let's start to work for the SDK now. All right, welcome back. Let's go to our SDKs and one
6:04:376 hours, 4 minutes, 37 secondsminute logs next library. From here let's go to utils and index.ts. We have to start to work from here. After this
6:04:456 hours, 4 minutes, 45 secondsprivate async flash uh module from here we have to add our async and gate. This
6:04:536 hours, 4 minutes, 53 secondstime for retrieving the historical logs from the server. Here it's going to receive the filters
6:05:016 hours, 5 minutes, 1 secondfor basically the query and the type is going to be record string and any
6:05:096 hours, 5 minutes, 9 secondsand it's going to return uh get is
6:05:166 hours, 5 minutes, 16 secondswhich lacks return type and okay fine it will be fine after some time we have to return something uh here
6:05:246 hours, 5 minutes, 24 secondswe mistakenly forgot to finish it. Yeah, not here. Now inside here we can set up
6:05:316 hours, 5 minutes, 31 secondsthe headers. So headers which is going to be record string and string the type.
6:05:416 hours, 5 minutes, 41 secondsAnd here we can pass our X API key
6:05:496 hours, 5 minutes, 49 secondswhich is going to be this dot API key and we can spread this with sorry spread
6:05:576 hours, 5 minutes, 57 secondsthis with this dot app name or our
6:06:056 hours, 6 minutes, 5 secondslike if it's available then XML app name. We are setting up this value
6:06:146 hours, 6 minutes, 14 secondsto this dot app name otherwise empty object. Yeah. And we can
6:06:216 hours, 6 minutes, 21 secondscopy this this time. Same for environment and xom this time and environment.
6:06:336 hours, 6 minutes, 33 secondsNow we have to set up the queries. So const QS and filters
6:06:426 hours, 6 minutes, 42 secondsand object so object dot keys
6:06:496 hours, 6 minutes, 49 secondsfilters dot length if it's less than zero then
6:07:006 hours, 7 minuteswe have to build this query so we can say new URL L search params from the
6:07:076 hours, 7 minutes, 7 secondsfilters then dot to string or
6:07:166 hours, 7 minutes, 16 secondsempty string however the first bracket I mean the back or
6:07:246 hours, 7 minutes, 24 secondslike this quotes will end in here and otherwise empty string this is the queries now
6:07:316 hours, 7 minutes, 31 secondslet's send this to our API so we can say a fetch uh
6:07:386 hours, 7 minutes, 38 secondsthis dot base URL / locks and we have to pass this QS the query the query and the headers.
6:07:526 hours, 7 minutes, 52 secondsYeah, that's it.
6:07:546 hours, 7 minutes, 54 secondsIf race do okay is not true, it means there is something wrong there. There is some
6:08:026 hours, 8 minutes, 2 secondserror. Then cons text await
6:08:106 hours, 8 minutes, 10 secondsrace.ext and we can throw a new error
6:08:186 hours, 8 minutes, 18 secondssomething like this that OML get failed
6:08:266 hours, 8 minutes, 26 secondswith our uh actually let's do one thing. Let's add here
6:08:366 hours, 8 minutes, 36 secondsthis package and we can say rest dot status
6:08:476 hours, 8 minutes, 47 secondsand then for the text we can add the text dot slice the first
6:08:556 hours, 8 minutes, 55 seconds200 value. Yeah. And then we can return the race.json.
6:09:076 hours, 9 minutes, 7 secondsAfter this the most important one that is our streaming endpoint. So we can say public stream. This is going to open a
6:09:166 hours, 9 minutes, 16 secondsserver send event stream of like the live logs.
6:09:216 hours, 9 minutes, 21 secondsHere it's going to also receive the filters which is going to be same record string
6:09:286 hours, 9 minutes, 28 secondsand any uh no this one is string and string both it's going to return body which is going
6:09:366 hours, 9 minutes, 36 secondsto be readable string and type is going to be u integer 32
6:09:456 hours, 9 minutes, 45 secondsactually u integer 8 array yeah the type then here let's come inside the function
6:09:556 hours, 9 minutes, 55 secondsand we can say con qs equals to new our URL search pms we have to pass the filters
6:10:046 hours, 10 minutes, 4 secondsand let's make it string let's
6:10:116 hours, 10 minutes, 11 secondsmake our URL right now so we can set this dot base url
6:10:176 hours, 10 minutes, 17 seconds/ locks and stream QS.
6:10:266 hours, 10 minutes, 26 secondsYeah, the query string.
6:10:296 hours, 10 minutes, 29 secondsNow, const headers, we have to pass headers in here as well.
6:10:366 hours, 10 minutes, 36 secondsString string, our X API key, which is going to be this API key.
6:10:476 hours, 10 minutes, 47 secondsAnd let's copy this the app name and the environment.
6:10:576 hours, 10 minutes, 57 secondsYeah, that's it. Now most important after this we need an abboard
6:11:056 hours, 11 minutes, 5 secondscontroller which is going to be new abboard controller and con readable.
6:11:166 hours, 11 minutes, 16 secondsNew readable stream type is going to be u
6:11:256 hours, 11 minutes, 25 secondsinteger 8 array and here let's call the start
6:11:336 hours, 11 minutes, 33 secondsit's going to be an async function like controller let's return our race
6:11:416 hours, 11 minutes, 41 secondsawait create fetch
6:11:496 hours, 11 minutes, 49 secondspass the URL and the headers and the signal which is the abboard controller dot signal.
6:11:596 hours, 11 minutes, 59 secondsYeah, if our arrays do body has any error
6:12:086 hours, 12 minutes, 8 secondsthen controller dot error new error and we can say upstream
6:12:186 hours, 12 minutes, 18 secondsstream unavailable. Yeah.
6:12:276 hours, 12 minutes, 27 secondsAfter this we can return the function something like this
6:12:336 hours, 12 minutes, 33 secondsand then we need on reader for our response. So restbody get reader
6:12:436 hours, 12 minutes, 43 secondsand let's add a try at statement while true then con done and value we can extract
6:12:516 hours, 12 minutes, 51 secondsit from our this reader dot sorry reader dot read. Yeah.
6:13:046 hours, 13 minutes, 4 secondsIf done then break 1 minute something is wrong
6:13:106 hours, 13 minutes, 10 secondshere let's cut this let's add a second bracket yeah if done
6:13:166 hours, 13 minutes, 16 secondsthen break if there is value then controller dot nq and pass the
6:13:246 hours, 13 minutes, 24 secondsvalue in here and controller dot close
6:13:326 hours, 13 minutes, 32 secondsyeah we can save If it catch any error controller error
6:13:396 hours, 13 minutes, 39 secondspass the error if it's cancel it get cancel
6:13:486 hours, 13 minutes, 48 secondsabort controller doabort we can call this that's it and finally we can return the body
6:13:566 hours, 13 minutes, 56 secondswhich is going to be this readable we can save it our transport is ready
6:14:046 hours, 14 minutes, 4 secondsand since transport is ready it means everything is ready we can come back again into our core from here we can unblock I mean
6:14:136 hours, 14 minutes, 13 secondsuncomment this however this one uh because of wrong
6:14:226 hours, 14 minutes, 22 secondsbecause of wrong uh one minute wrong syntax and why it's
6:14:296 hours, 14 minutes, 29 secondsgiving error for uh filters 1 minute stream.
6:14:386 hours, 14 minutes, 38 secondsSo here filters and gate.
6:14:466 hours, 14 minutes, 46 secondsOkay, we can copy the same type in here and we can paste that in here as well.
6:14:516 hours, 14 minutes, 51 secondsSo instead of string and string let's say any then the error will begin.
6:14:566 hours, 14 minutes, 56 secondsThat's it. Our everything is ready. So you don't need a security or just keep that in there. No problem. That's it.
6:15:046 hours, 15 minutes, 4 secondsOur everything is ready. Let's come back to here.
6:15:116 hours, 15 minutes, 11 secondsLet's write this comment again in frame build. Here we go. Now we would like to
6:15:176 hours, 15 minutes, 17 secondssee the send locks inside our like front end. How can we do that? We have to
6:15:286 hours, 15 minutes, 28 secondsright now make our the like live logs dynamic. So let's go let's come back
Chapter 11: Live Logs & Dynamic Log Viewer
6:15:346 hours, 15 minutes, 34 secondsinto our apps main dashboard app live logs and from here
6:15:426 hours, 15 minutes, 42 secondswe can try to do it we can basically come back down into
6:15:516 hours, 15 minutes, 51 secondshere and here uh where is our main function? Yeah,
6:15:596 hours, 15 minutes, 59 secondsthis one here we can do one thing. We can say con something from our gate stream.
6:16:096 hours, 16 minutes, 9 secondsSo gate stream is coming from
6:16:196 hours, 16 minutes, 19 secondsour one minute locks next. So we have to import it from our one minute locks next.
6:16:276 hours, 16 minutes, 27 secondsUh okay the error is natural. Let's do one thing. Let's come back to our
6:16:346 hours, 16 minutes, 34 secondsindex.ts and from here we have to export everything. There's the problem. That's why it is not working. So if you're not
6:16:426 hours, 16 minutes, 42 secondsexporting it from our this one logs like next then nothing is going to work. So let's come back here and let's say
6:16:506 hours, 16 minutes, 50 secondsexport our get logs from dot /utils/index.js.
6:17:006 hours, 17 minutesWhat it saying? What? No, there should be on gate logs.
6:17:126 hours, 17 minutes, 12 secondsUh 1 minute.
6:17:216 hours, 17 minutes, 21 secondsUh actually I did I think something wrong here. This is the transport not the get logs or get stream. So for get logs and get stream we have to use it.
6:17:346 hours, 17 minutes, 34 secondsThat's the problem. So let's create here a file by giving them getstream.ts ts and get logs.ts. It's not done yet.
6:17:446 hours, 17 minutes, 44 secondsExactly. Now, since this is for nextj, we have to use your use client and we're going to add here and type for
6:17:536 hours, 17 minutes, 53 secondsthe filters type for our the logs results where
6:18:006 hours, 18 minuteswe're going to receive like the data is loading. The type is going to be error
6:18:106 hours, 18 minutes, 10 secondsuh error and refage like for refing the locks. Yeah.
6:18:196 hours, 18 minutes, 19 secondsThen we need to make an inflight fetch promises by the query key to prevent the
6:18:276 hours, 18 minutes, 27 secondsduplicate request. So we can add on map like this in here. then unsimple response cache key by the filters drift
6:18:376 hours, 18 minutes, 37 secondsquery string. That's why we're adding another map in here.
6:18:436 hours, 18 minutes, 43 secondsThen we can start our main function that get
6:18:506 hours, 18 minutes, 50 secondslocks which type is going to be t any filters.
6:18:596 hours, 18 minutes, 59 secondsWe can call the filters. It's going to return the get logs result the key. And here we need some use state hooks like this.
6:19:126 hours, 19 minutes, 12 secondsSo let's import use state from our react like we need all of these hooks. So we
6:19:206 hours, 19 minutes, 20 secondscan say import use effect use state use call back use memo from react. However, it's saying we need to install the types for React.
6:19:326 hours, 19 minutes, 32 secondsOkay, let's do it. Let's add our types for React.
6:19:426 hours, 19 minutes, 42 secondsOkay, now no error. Now, after this, we need our key. we have to use the
6:19:516 hours, 19 minutes, 51 secondsbuild key to create a stable key for like the doping or the caching
6:19:576 hours, 19 minutes, 57 secondsmechanism. So we can say use memo and we can use a function actually and
6:20:056 hours, 20 minutes, 5 secondshelper function called build key where we'll pass this filters and we can add the filters as the dependency array. Let's come back here.
6:20:176 hours, 20 minutes, 17 secondsLet's say build key and params which type is going to be record
6:20:286 hours, 20 minutes, 28 secondsstring and any yeah now inside here
6:20:386 hours, 20 minutes, 38 secondswe need our URL search params and
6:20:456 hours, 20 minutes, 45 secondsif the params or like the empty object then we're running here for like for each loop because this params is basically is an
6:20:536 hours, 20 minutes, 53 secondsarray from the object and then if the v is not undefined or v is not null and it's string length is more than zero
6:21:006 hours, 21 minutesthen we are basically appending it and making it string and then finally we are returning it to unstable key which is
6:21:096 hours, 21 minutes, 9 secondsuseful for like usable for as a query string.
6:21:156 hours, 21 minutes, 15 secondsNow we can come back here. These are basically our query keys. Then like the build key which we can use to create an
6:21:236 hours, 21 minutes, 23 secondsstable key for like the caching. Now here we can say fetch ons. This is for the callback async k is going to be string.
6:21:386 hours, 21 minutes, 38 secondsIf cache dot has our K then return the cache.getate the K.
6:21:506 hours, 21 minutes, 50 secondsNow we have to at first this is basically for the cache like when there is caching result then we're serving the
6:21:566 hours, 21 minutes, 56 secondscache result and otherwise let p equals to our inflight dot get
6:22:046 hours, 22 minutes, 4 secondsthe k meaning we are reusing the inflight promise for the identical filters which is going to prevents the
6:22:116 hours, 22 minutes, 11 secondsdouble fetch in strict mode because when you're using the react strict mode it fetch data for twice which we want to avoid in here.
6:22:206 hours, 22 minutes, 20 secondsIf no P then cons URL which is going to be SL API/1
6:22:286 hours, 22 minutes, 28 secondsminuteit logs/logs which you have to set up actually I mean not you our developers will give a
6:22:356 hours, 22 minutes, 35 secondssuggestion for it that you have to set up this because this thing you we cannot run it from front end side because this is a front end and we don't want that
6:22:436 hours, 22 minutes, 43 secondsyou write like run this type of query from front end because it's going to expose your API key which is dangerous.
6:22:496 hours, 22 minutes, 49 secondsSo that's why we will recommend you or not recommend we will tell you that you have to create an API key in your like nextj project something like this that
6:22:586 hours, 22 minutes, 58 secondsone minute locks and then /logs and we will give you the code you just have to copy paste nothing else like we will give the code to the users like for the
6:23:076 hours, 23 minutes, 7 secondsdevelopers who are using our application here we can say fetch we have to pass the URL cache uh it's
6:23:166 hours, 23 minutes, 16 secondsgoing to actually no cache Uh sorry, no store, not no cache.
6:23:226 hours, 23 minutes, 22 secondsAnd then async race
6:23:316 hours, 23 minutes, 31 secondsif no race do okay then cons text await.ext.
6:23:416 hours, 23 minutes, 41 secondsNow we can throw a new error that failed to pitch locks
6:23:566 hours, 23 minutes, 56 secondsour race dot status on the text. Yeah.
6:24:046 hours, 24 minutes, 4 secondsAnd then finally we can return the rage.json JSON and inflight dot set we can set the K
6:24:146 hours, 24 minutes, 14 secondsand sorry K and and the P. That's it.
6:24:226 hours, 24 minutes, 22 secondsFinally, we just need on try catch statement in here and we can call con result.
6:24:306 hours, 24 minutes, 30 secondsWe can add that average P and we can set it to cache. So case uh cache dot set K and the result and we can return the result from here.
6:24:426 hours, 24 minutes, 42 secondsFor catch we don't need anything. So we can say one thing we can say finally in here.
6:24:506 hours, 24 minutes, 50 secondsFinally we have to make the inflight dodelete. We have to delete the K from here.
6:24:586 hours, 24 minutes, 58 secondsAnd let's add our dependency array. Yeah.
6:25:056 hours, 25 minutes, 5 secondsbecause this fetch uh once it doesn't use call back here
6:25:146 hours, 25 minutes, 14 secondsthis is our everything and however wait let me check one thing try catch yeah everything is
6:25:236 hours, 25 minutes, 23 secondsfine actually we need to make another page logs use call back function now
6:25:316 hours, 25 minutes, 31 secondssomething like Please here let's add a dependency array
6:25:396 hours, 25 minutes, 39 secondsinside here we can at first add on try catch statement and here we can say set is loading at first make it true the
6:25:486 hours, 25 minutes, 48 secondsstate then set is uh set error make it null then we can
6:25:556 hours, 25 minutes, 55 secondssay count JSON a fetch on and we can pass the key in here key as any.
6:26:056 hours, 26 minutes, 5 secondsNow after this we need our rules. So we can say array dot is array. We can pass
6:26:136 hours, 26 minutes, 13 secondsthe JSON JSON as t and empty array or JSON
6:26:236 hours, 26 minutes, 23 secondsdot locks or JSON or an empty array.
6:26:296 hours, 26 minutes, 29 secondsThen finally we can set the data into this set data state. I mean in our set
6:26:366 hours, 26 minutes, 36 secondsdata state we can set the rows data or empty array. If it's catch any error, if
6:26:456 hours, 26 minutes, 45 secondsthe error name is not
6:26:526 hours, 26 minutes, 52 secondsaboard error here, let's add a type for the any I
6:26:576 hours, 26 minutes, 57 secondsmean for the error then set error E and after this sorry error not E after
6:27:076 hours, 27 minutes, 7 secondsthis set data null Yeah. And finally,
6:27:166 hours, 27 minutes, 16 secondsfinally we can say set is loading which is going to be false.
6:27:256 hours, 27 minutes, 25 secondsAnd in the dependency array we have to add the key and the fetch ons.
6:27:326 hours, 27 minutes, 32 secondsYeah. And then at the end let's use our use effect snippet. And here we're going to call the fetch locks in the
6:27:426 hours, 27 minutes, 42 secondsdependency array. We're going to also pass the fetch locks.
6:27:486 hours, 27 minutes, 48 secondsThen finally we have to return the data that is loading the error and another function which is called refitchet.
6:27:576 hours, 27 minutes, 57 secondsSo refetch actually yeah use call back
6:28:066 hours, 28 minutes, 6 secondsand sync and let's call the refet in here.
6:28:146 hours, 28 minutes, 14 secondsNow inside this we have to clear the cache. So we can delete the key from
6:28:226 hours, 28 minutes, 22 secondsthe cache and then ait fetch log. So we can call the fage locks function from here. And regarding the
6:28:306 hours, 28 minutes, 30 secondserror about this key, you can see it's saying argument of type void is not assignable to parameter of the type
6:28:386 hours, 28 minutes, 38 secondsstring. The reason is very simple. In this build key, we did an small mistake. The return should be outside from here.
6:28:476 hours, 28 minutes, 47 secondsYeah, after fixing it, you can see no error. And in that case, we don't even need to add this as any. It's going to work as well. No problem at all.
6:28:576 hours, 28 minutes, 57 secondsSo that's it. Our get locks is ready.
6:29:016 hours, 29 minutes, 1 secondOur get locks is ready. And we don't need that. Open editors. Yeah. And uh next one is get stream. Very very
6:29:106 hours, 29 minutes, 10 secondsimportant. Get stream is we have to set up it. It's also going to be a little big like this one. Actually more bigger
6:29:196 hours, 29 minutes, 19 secondsbecause streaming is the like beginning like biggest setup in here. So let's start at first we have to create here
6:29:286 hours, 29 minutes, 28 secondsour like the filters the same filters and
6:29:346 hours, 29 minutes, 34 secondsour log level. These are our log level and we have to add another type for our
6:29:416 hours, 29 minutes, 41 secondsstreaming the log into normalized version like IDTS level source message and payload. Then
6:29:496 hours, 29 minutes, 49 secondswe need our another type for stream log row. Stream
6:29:576 hours, 29 minutes, 57 secondslog raw not row. We have to pass the key ID in here. We need our user ID.
6:30:066 hours, 30 minutes, 6 secondsWe need the type.
6:30:106 hours, 30 minutes, 10 secondsThen some like other fields which we're always adding something like this message app name
6:30:196 hours, 30 minutes, 19 secondsenvironment important subsystem operation track security metrics and then timestamp and the ingested ad.
6:30:316 hours, 30 minutes, 31 secondsYeah, all of these and after this we need another actually type. This is for
6:30:386 hours, 30 minutes, 38 secondsgetting our stream result something like this.
6:30:426 hours, 30 minutes, 42 secondsAnd that's all but at first we have to add here actually this import statement
6:30:506 hours, 30 minutes, 50 secondsthat import our use effect use ref and use state from react and let's add use
6:30:566 hours, 30 minutes, 56 secondsclient in here. Now after this we can come to our main functions. We can say
6:31:056 hours, 31 minutes, 5 secondsexport function the get stream it's also going to receive the filters
6:31:146 hours, 31 minutes, 14 secondsand it's going to return the get stream result and we can say con
6:31:226 hours, 31 minutes, 22 secondsdata and set data loading and is loading then error and sec error connected and
6:31:306 hours, 31 minutes, 30 secondsset connected and es like the reference use riff and these are the types You can just pause it and write it by yourself
6:31:366 hours, 31 minutes, 36 secondsjust like some state which we need. Then we have to write here an use effect.
6:31:426 hours, 31 minutes, 42 secondsSo use effect snip and in here
6:31:506 hours, 31 minutes, 50 secondslet's delete everything from inside and conqs like the queries. So we can say filters
6:31:586 hours, 31 minutes, 58 secondsand object dot keys we can pass the filters dot length
6:32:066 hours, 32 minutes, 6 secondsif it's more than zero then our new URL
6:32:156 hours, 32 minutes, 15 secondssearch params then object dot entries we have to pass the filters
6:32:236 hours, 32 minutes, 23 secondsdot reduce record string and string as a type.
6:32:356 hours, 32 minutes, 35 secondsThen here we can add our type something like this. I know it's
6:32:436 hours, 32 minutes, 43 secondslooking a bit weird but this is how we have to work in here. It's going to actually objects.
6:32:506 hours, 32 minutes, 50 secondsYeah.
6:32:536 hours, 32 minutes, 53 secondsUh no no actually object not objects it's fine.
6:32:586 hours, 32 minutes, 58 secondsUh let me again check it's actually fine and entries filters reduce all looks good though no problem.
6:33:146 hours, 33 minutes, 14 secondsWe can come back here and here we can say if our v equals to not undefined
6:33:256 hours, 33 minutes, 25 secondsthen something like this string and let's pass the v in here and return
6:33:336 hours, 33 minutes, 33 secondsthe ac see I think somehow I finished the statement
6:33:436 hours, 33 minutes, 43 secondsUh yeah, crazy syntax.
6:33:506 hours, 33 minutes, 50 secondsLet me again check from the beginning.
6:33:536 hours, 33 minutes, 53 secondsSo here we said if the object do keys let me take it in the next line then I can easily read
6:34:016 hours, 34 minutes, 1 secondand after this new URL search params
6:34:116 hours, 34 minutes, 11 secondslet's take it next line object entries and filters reduce record string and string
6:34:206 hours, 34 minutes, 20 secondsall good but here I I think we have to add another first bracket
6:34:286 hours, 34 minutes, 28 secondsand actually it should be K. Yeah, K and V.
6:34:366 hours, 34 minutes, 36 secondsIf V equals 25 then this is fine and return AC. This is also fine. This part
6:34:436 hours, 34 minutes, 43 secondslooks good. However, here we have to add another first bracket actually two then dot two
6:34:536 hours, 34 minutes, 53 secondsstring and then finish it otherwise an empty string. Now you can
6:35:016 hours, 35 minutes, 1 secondagain check it. It is definitely not easy syntax to follow up but yeah we can
6:35:076 hours, 35 minutes, 7 secondsjust check it now. Then we have to check for our the event stream. So new event stream
6:35:166 hours, 35 minutes, 16 secondswe can call event source not event stream and it's going to be slash API/1
6:35:236 hours, 35 minutes, 23 secondsminute logs /ash stream and the QS we can pass
6:35:326 hours, 35 minutes, 32 secondshowever we have to must change it to the backage then and then es dot current
6:35:406 hours, 35 minutes, 40 secondsequals to es then we can call So set connected and we can pass the true set is loading. Let's make it true. And set is error.
6:35:536 hours, 35 minutes, 53 secondsLet's make it null and es on message. This is basically the
6:36:036 hours, 36 minutes, 3 secondsserver event setup. Server send event setup. It's going to receive the event.
6:36:116 hours, 36 minutes, 11 secondsWe can add here on try catch statement on the try part. Let's receive the payload.
6:36:206 hours, 36 minutes, 20 secondsWe can say JSON.pars event dot data.
6:36:276 hours, 36 minutes, 27 secondsNow we can add the set data value in here.
6:36:336 hours, 36 minutes, 33 secondsWe can select incoming which is going to be stream log normalized array.
6:36:416 hours, 36 minutes, 41 secondsAnd by default value is going to be an empty array.
6:36:446 hours, 36 minutes, 44 secondsNow we have to handle the different shapes like type blocks and everything.
6:36:506 hours, 36 minutes, 50 secondsSo something like this. Let let me write it quickly.
6:36:576 hours, 36 minutes, 57 secondsIf the payload and array is array the payload locks then incoming let's set the payload locks and two log entry.
6:37:066 hours, 37 minutes, 6 secondsThis two log entry is basically on helper function which we have to create.
6:37:126 hours, 37 minutes, 12 secondsSo let's do it. Let's come outside from here.
6:37:186 hours, 37 minutes, 18 secondsLet's create our two log entry function which going to receive the l meanings log type is going to be the stream log
6:37:266 hours, 37 minutes, 26 secondsrow and it's going to return the strip log normalized.
6:37:326 hours, 37 minutes, 32 secondsNow we need our raw type something like this then the level
6:37:396 hours, 37 minutes, 39 secondsand based on the level like the raw type if it's warning then warning if it's success then success if
6:37:466 hours, 37 minutes, 46 secondsit's error then error debug then debug then audit then audit and metric then metric otherwise by default info and we
6:37:546 hours, 37 minutes, 54 secondshave to set on ts ISO time and then we can say if Our
6:38:026 hours, 38 minutes, 2 secondstype of the L time stamp is number then we're setting it twin here as the time stamp value otherwise else
6:38:126 hours, 38 minutes, 12 secondswe're basically handling like the JSON row each row value which the like
6:38:196 hours, 38 minutes, 19 secondsin in in our click house DB the time stamp is stores like this like year
6:38:266 hours, 38 minutes, 26 secondsmonth and date format and something like this hour, minutes and second format.
6:38:366 hours, 38 minutes, 36 secondsSo we're basically formatting it in here. And then finally we can return ID
6:38:476 hours, 38 minutes, 47 secondscrypto.random EU ID GS ISO. The level source is going to be L
6:38:566 hours, 38 minutes, 56 secondsdo app name or default
6:39:056 hours, 39 minutes, 5 secondsmessage is going to be ill dot message
6:39:126 hours, 39 minutes, 12 secondsand the payload itself something like this we can save it
6:39:226 hours, 39 minutes, 22 secondsnow After this our this uh two log entry function is ready. We
6:39:296 hours, 39 minutes, 29 secondscan again come back here where we were using the two log entry.
6:39:346 hours, 39 minutes, 34 secondsNow here we can say else if if our the payload is an
6:39:446 hours, 39 minutes, 44 secondslike array in here then incoming
6:39:516 hours, 39 minutes, 51 secondswe're basically adding the stream lo uh log raw in here
6:39:586 hours, 39 minutes, 58 secondsand else if if the payload and payload key ID then we're again adding that in here
6:40:066 hours, 40 minutes, 6 secondslike that. Uh after this if our payload type is initial
6:40:146 hours, 40 minutes, 14 secondsthen the next equals to going to be the incoming and set is loading is going to be false. The next length if it's more than 5,000 then we're basically slicing
6:40:236 hours, 40 minutes, 23 secondsit slicing the array. For the next we're adding the previous and incoming
6:40:326 hours, 40 minutes, 32 secondsand if the next is more than 5,000 then we are showing like less data. So it's basically meaning when the live
6:40:406 hours, 40 minutes, 40 secondsstreaming is having more than 5,000 locks then we are basically like filtering it not filtering we are like
6:40:486 hours, 40 minutes, 48 secondssplice we are using a splice method so that we can remove the older locks and we can show the updated 5,000 logs
6:40:566 hours, 40 minutes, 56 secondsotherwise definitely the server sorry the client side is going to be very heavy and somehow the application will
6:41:046 hours, 41 minutes, 4 secondscrash like the front end application that's we have to ensure that we're not streaming more than 5,000 logs at all like at once. Not at all.
6:41:146 hours, 41 minutes, 14 secondsYeah, that's why if it's more than 5,000, we're we're like slicing the last 500. Sorry, last 5,000 and rest of the previous lock, we're deleting those.
6:41:246 hours, 41 minutes, 24 secondsAnd then finally, we can return next.
6:41:286 hours, 41 minutes, 28 secondsIf it's catch any error, we are basically setting the value.
6:41:356 hours, 41 minutes, 35 secondsAnd here we have to say any as the type.
6:41:396 hours, 41 minutes, 39 secondsAnd we can add here on console.log that OML stream. This is for debugging purpose.
6:41:506 hours, 41 minutes, 50 secondsFailed to parse SSE message with the error message.
6:41:586 hours, 41 minutes, 58 secondsYou're done. After this, After this, I'm getting exhausted. I'm recording for a long time. However, we're very close.
6:42:086 hours, 42 minutes, 8 secondsSo, let's finish it.
6:42:116 hours, 42 minutes, 11 secondsHere, we can add another console.log. If it's catching another error, we can say OML string
6:42:206 hours, 42 minutes, 20 secondss error and we can pass the error message in here. We can call the set error
6:42:296 hours, 42 minutes, 29 secondserror in case of the error or the error itself and new error we can
6:42:376 hours, 42 minutes, 37 secondspass the sse error message in here.
6:42:446 hours, 42 minutes, 44 secondsYeah. And finally we can return our es.c close
6:42:526 hours, 42 minutes, 52 secondsand the set connected we can make it false. In the dependency array we have to say JSON dot stringifi and filters or empty object.
6:43:056 hours, 43 minutes, 5 secondsYeah.
6:43:076 hours, 43 minutes, 7 secondsAnd we have to add another one for disconnecting it. So disconnect it's kind of similar like the websocket
6:43:146 hours, 43 minutes, 14 secondssetup but it's not fully same because I already explained it what the difference between websocket and service events
6:43:226 hours, 43 minutes, 22 secondsit's it's not the same thing and here escar
6:43:306 hours, 43 minutes, 30 secondswe can add here null we can call the set connected and we can set false and at the end we can return this get
6:43:396 hours, 43 minutes, 39 secondsstream function we can send the data the is loading the error the connected and
6:43:466 hours, 43 minutes, 46 secondsthe disconnected now see no error here at all everything is ready our get stream is ready now
6:43:556 hours, 43 minutes, 55 secondsin this index.ts ts it should not give actually error still it's giving the error
6:44:036 hours, 44 minutes, 3 secondsbecause it's looking from the index.js JS that's why if it's go to our get logs then it should not get any error. Yeah.
6:44:156 hours, 44 minutes, 15 secondsSame for our like the get stream. So get stream and get stream no error. We can save it. We can come back here. We can again build.
6:44:276 hours, 44 minutes, 27 secondsAfter building if we come back here it should not give us any error. And you
6:44:336 hours, 44 minutes, 33 secondscan see it's breaking perfectly. So we can save it.
6:44:396 hours, 44 minutes, 39 secondsWe can call the hook because this is actually on hook.
6:44:446 hours, 44 minutes, 44 secondsAnd we can take our data from here and we can give it name like nothing because data is also fine.
6:44:536 hours, 44 minutes, 53 secondsWe can cancel out the data. Definitely it's not going to work. If you go there, it's going to get an error because there is some requirement for setting up this.
6:45:026 hours, 45 minutes, 2 secondsWe have to come back to our API folder again. And in our API folder, we have to create one minute locks
6:45:116 hours, 45 minutes, 11 secondsfolder one minute locks. And here we have to create another dynamic folder like this that
6:45:206 hours, 45 minutes, 20 secondstypes. You don't have I'm not doing it like blindly. There is these things are already mentioned in
6:45:276 hours, 45 minutes, 27 secondsthe documentation. You just have to go to the documentation for you. We don't have it yet, but we will create the documentation page where we will mention
6:45:356 hours, 45 minutes, 35 secondsall of this. You just have to copy the code base like this and paste it. That's it. However, in here we were using the
6:45:436 hours, 45 minutes, 43 secondslike next o which we don't we're not using in here. O options we don't need.
6:45:506 hours, 45 minutes, 50 secondsGet API key. I don't think we need any of these. However, get API key. what
6:45:566 hours, 45 minutes, 56 secondsit's it's it's doing uh okay this was basically for our o
6:46:046 hours, 46 minutes, 4 secondswe don't need any of this since we're using actually clark API key
6:46:116 hours, 46 minutes, 11 secondsfor the API key value it should be actually an env value so we don't need this at all we can just check
6:46:196 hours, 46 minutes, 19 secondsfor the o and for checking the o we don't need all of this code case we can delete this next o because we're
6:46:286 hours, 46 minutes, 28 secondsnot using next o we can use your clark we can simply import here get token from
6:46:386 hours, 46 minutes, 38 secondsour o hook from clark nextjs and specially clark nextj/s server we
6:46:456 hours, 46 minutes, 45 secondshave to say here if there is no token it meanings like user is not logged in and token is
6:46:536 hours, 46 minutes, 53 secondscoming from here that our like get uh token this hook and after this if there
6:47:006 hours, 47 minutesis no token we can say unauthorized yeah after this the API key most important part API key is going to be process
6:47:096 hours, 47 minutes, 9 secondsenvi and be make sure that you are adding
6:47:226 hours, 47 minutes, 22 secondsthis one minute locks API key in your like env like this and actually one it
6:47:296 hours, 47 minutes, 29 secondslocks something like this. So I think I should change it to yeah so I already do have this you just
6:47:366 hours, 47 minutes, 36 secondscreate an API key and paste it in your env example for you I'm showing it in example but for me I like already added
6:47:446 hours, 47 minutes, 44 secondsin env. And you also have to follow the same thing you also have to add it in your env file. Uh after this
6:47:546 hours, 47 minutes, 54 secondsI think everything should work after this. So we can test it right now. Everything we can test.
6:48:026 hours, 48 minutes, 2 secondsHow to check? Let's come back to our live locks. Actually let's inspect at first.
6:48:106 hours, 48 minutes, 10 secondsLet's make it small. Let's come to live locks. And it's showing empty array.
6:48:196 hours, 48 minutes, 19 secondsOh, here you So you can see we are having two logs in here. Wow, interesting. It means it's actually
6:48:266 hours, 48 minutes, 26 secondsworking. That's really great. So now we can set up this. We can change our this page.tsx
6:48:346 hours, 48 minutes, 34 secondsto a dynamic value because we don't need this static logs anymore right now.
6:48:406 hours, 48 minutes, 40 secondsSince we're having our dynamic logs, we can delete all of these except the types.
6:48:486 hours, 48 minutes, 48 secondsYeah.
6:48:506 hours, 48 minutes, 50 secondsLet's make it dynamic now. So first of all in here we can cut this. We can add
6:48:576 hours, 48 minutes, 57 secondsit in here. We don't need this locks and set locks right now because we can call it locks
6:49:066 hours, 49 minutes, 6 secondsand we need on state for our auto scroll filter level and everything is fine.
6:49:166 hours, 49 minutes, 16 secondsWe can delete this use effect. Here stream refine and use effect. Actually
6:49:236 hours, 49 minutes, 23 secondshere we have to write on logic that if no auto scroll then return
6:49:316 hours, 49 minutes, 31 secondsotherwise this yeah and locks then the auto scroll as the dependency
6:49:396 hours, 49 minutes, 39 secondsarray for filtered locks it's actually already fine I guess.
6:49:476 hours, 49 minutes, 47 secondsYeah, it's fine. For stats, I think it's also fine. Now for live logs.
6:49:576 hours, 49 minutes, 57 secondsAll of these should be good enough. So still there are two errors especially the level color and level color is
6:50:056 hours, 50 minutes, 5 secondsgiving error because it's saying cannot find level color. I mistakenly deleted the level color from here. So we we have
6:50:136 hours, 50 minutes, 13 secondswe don't have to delete it. con level color record log level and string.
6:50:226 hours, 50 minutes, 22 secondsYeah, what's wrong in here? Okay, because we have to add something in here. Record level color
6:50:306 hours, 50 minutes, 30 secondsinfo is going to be this one blue. Warning is going to be yellow or amber.
6:50:396 hours, 50 minutes, 39 secondsThe error is going to be definitely the gray. debug is going to be the purple color. The success is going to be our
6:50:496 hours, 50 minutes, 49 secondsgreen audit same and metric is going to be the scan color. H sorry.
6:50:596 hours, 50 minutes, 59 secondsYeah, now no error. We can come back here. Everything is fine. Let's come back to our live locks. And here you go.
6:51:076 hours, 51 minutes, 7 secondsYou can see it's actually real locks.
6:51:106 hours, 51 minutes, 10 secondsEven if we click here, it's showing us the real data. Now I want to do one thing again. Let's come back to our this
6:51:206 hours, 51 minutes, 20 secondstest because we were basically testing our live locks from here. If we go
6:51:266 hours, 51 minutes, 26 secondslocalhost 3001 / test sorry/ API/ test, you can see there will
6:51:346 hours, 51 minutes, 34 secondsbe one new logs. You can instantly see it's automatically coming and it's updating every 1 seconds because it's a real log. So let's try something new.
6:51:436 hours, 51 minutes, 43 secondsInstead of error let's say success or actually not success let's say info
6:51:516 hours, 51 minutes, 51 secondsuser ABC logged in
6:51:596 hours, 51 minutes, 59 secondsand services we can say o importance uh we can say low let's save it let's
6:52:086 hours, 52 minutes, 8 secondscome back here give on reload we can come back here again and here you go it's real time. We're not giving any
6:52:156 hours, 52 minutes, 15 secondsreload still. It's in here. So, it's definitely really very interesting and very beautiful. We can even change this.
6:52:226 hours, 52 minutes, 22 secondsYou can see it's actually working.
6:52:256 hours, 52 minutes, 25 secondsYou can change from here and it's all going to work and it's all
6:52:336 hours, 52 minutes, 33 secondsfully real time. You can check from here as well the all data, the raw JSON and everything from here. It's really great.
6:52:446 hours, 52 minutes, 44 secondsNow the next one we can finish this queries since we're having our log data.
6:52:496 hours, 52 minutes, 49 secondsWe can make the queries. After that what next? After that we have to make this like our this logs error rate inest rate
6:52:596 hours, 52 minutes, 59 secondslike the analytics. This is very very important and at the end we will start to work for the alerts and then everything will be actually done because
6:53:076 hours, 53 minutes, 7 secondsintegration it's basically the documentation alerts a new feature and queries we already have it everything we just have to make it dynamic. So let's
6:53:166 hours, 53 minutes, 16 secondsdo it. Let's come back to our page.tsx
6:53:226 hours, 53 minutes, 22 secondsin main dashboard app and the queries.
6:53:286 hours, 53 minutes, 28 secondsExactly. Now in here let's make it dynamic in here at first after this filters and say filters we can say con
6:53:386 hours, 53 minutes, 38 secondssomething from our get logs hook so on log/ next and here we're going to
6:53:456 hours, 53 minutes, 45 secondsreceive the data the is loading add the error so error and is loading let's make
6:53:516 hours, 53 minutes, 51 secondsit dynamic now after this next task is the next step is we and come down in
6:53:596 hours, 53 minutes, 59 secondshere and before this normalize query we have to create another use call back function actually not another it's the
6:54:076 hours, 54 minutes, 7 secondsprobably the first one so let's say normalize our logs so we're basically going to
6:54:146 hours, 54 minutes, 14 secondsnormalize the logs type so normalize locks we can say react
6:54:216 hours, 54 minutes, 21 secondsdot use callback we're going to receive input which type is going to be any it's going to return
6:54:306 hours, 54 minutes, 30 secondsthe result row which is going to be an array.
6:54:346 hours, 54 minutes, 34 secondsNow inside here in the dependency array you can keep it empty now. Now if no input
6:54:436 hours, 54 minutes, 43 secondsthen return on empty array if array dot is array the input let's
6:54:516 hours, 54 minutes, 51 secondspass the input in here. If the input is an array, then return the input
6:55:016 hours, 55 minutes, 1 secondas a result row an array.
6:55:086 hours, 55 minutes, 8 secondsWhy it's saying if the array is uh uh okay, we have to finish the last bracket in there.
6:55:156 hours, 55 minutes, 15 secondsYeah. Now here we can again copy this and this time actually in between we can
6:55:216 hours, 55 minutes, 21 secondssay con object input as locks
6:55:306 hours, 55 minutes, 30 secondsand type is going to be any. Now here instead of input we have to pass object.loss.
6:55:376 hours, 55 minutes, 37 secondsYeah. And return object.logs.
6:55:416 hours, 55 minutes, 41 secondsThat's it. And finally return an empty array. If not any of these then now normalize query. It's fine. We don't
6:55:506 hours, 55 minutes, 50 secondsneed to do anything in here. Uh this one also perfect parts looks good to me.
6:56:006 hours, 56 minutesAnd this one also fine. The results in this rows it's different because right now we're having the dynamic data.
6:56:096 hours, 56 minutes, 9 secondsSo we don't need any of these actually. Yeah. So we can do one thing.
6:56:176 hours, 56 minutes, 17 secondsWe can delete everything from here since we're having
6:56:236 hours, 56 minutes, 23 secondsthe dynamic data. So let's delete everything and let's add our rows
6:56:326 hours, 56 minutes, 32 secondsvariable in here and let's call the normalize logs. pass the data
6:56:396 hours, 56 minutes, 39 secondsand then we can return the rows or empty array. In the dependency array, we need the data and the normalized logs.
6:56:526 hours, 56 minutes, 52 secondsYeah, all good. Stats looks good to me. If we save it here, it's giving some warning.
6:57:026 hours, 57 minutes, 2 secondsYou can just change it with like the sision it just tell you CSS sision not
6:57:096 hours, 57 minutes, 9 secondsany big deal but if you change it then the will not give any warning yeah and there is one
6:57:186 hours, 57 minutes, 18 secondsmore somewhere okay here this one what it's saying
6:57:256 hours, 57 minutes, 25 secondsno not not AI features sorry where's that where's that
6:57:336 hours, 57 minutes, 33 secondsthe class can be written as W1 but it's already that fine ignore it it's not any big deal and we don't need this static
6:57:426 hours, 57 minutes, 42 secondsquery results then and yeah we actually don't need that and regarding filters
6:57:516 hours, 57 minutes, 51 secondsour get logs we have to pass the filters in here yeah very very important Now we can come back here and queries.
6:58:026 hours, 58 minutes, 2 secondsIt's fully empty given reload and let's see if it's
6:58:096 hours, 58 minutes, 9 secondshaving any data. It's actually showing pending. There is something wrong.
6:58:186 hours, 58 minutes, 18 secondsI don't think so. Why it's still pending pending pending forever?
6:58:266 hours, 58 minutes, 26 secondsand get logs from our log/next.
6:58:316 hours, 58 minutes, 31 secondsLet's console lock the data.
6:58:436 hours, 58 minutes, 43 secondsUh it's null. Okay, there is something wrong for sure then. And what's the is loading?
6:58:536 hours, 58 minutes, 53 secondsIt's true. True. True. true. It's forever true.
6:58:586 hours, 58 minutes, 58 secondsOkay. Interesting. So, there is something wrong in our git locks. We have to check it out.
6:59:046 hours, 59 minutes, 4 secondsWhat's wrong? So, we can go back to our SDK again. It's indicating that there is something wrong in here.
6:59:116 hours, 59 minutes, 11 secondsI'd like to check the set is loading. It's true. Then set or null.
6:59:166 hours, 59 minutes, 16 secondsAnd here the finally set is loading false.
6:59:216 hours, 59 minutes, 21 secondsWe say fetch once and fetch once is here. Where is the fetch once? Yeah, this one.
6:59:336 hours, 59 minutes, 33 secondsUh actually I think we have to add here slash.
6:59:366 hours, 59 minutes, 36 secondsThat was the mistake. If we give and reload now. Oh, we have to update. I mean since we updated something just rebuild it again.
6:59:456 hours, 59 minutes, 45 secondsGive and reload. Oh, still weird.
6:59:556 hours, 59 minutes, 55 secondsIt's calling the on locks.
6:59:596 hours, 59 minutes, 59 secondsYeah. And preview nothing. It's load like loading forever.
7:00:057 hours, 5 secondsAll right. So, I found the bugs in our code base. It was definitely not any big mistake. But yeah, at the same time, it
7:00:127 hours, 12 secondscan be a big mistake. First of all, in here we are calling the response but we're not sending it response from here.
7:00:197 hours, 19 secondsSo we just have to delete that. We don't need to call that at all when you're not using it because we're not sending that from here. So we need to just delete
7:00:277 hours, 27 secondsthat. Secondly, it's a minor mistake but it can be a big mistake and that is in our
7:00:347 hours, 34 secondslike this uh sorry not here scroll down not the result cache
7:00:417 hours, 41 secondsbut in our parse filters if you notice we're not using a anywhere when we're calling the purse filters but in here
7:00:487 hours, 48 secondswe're using async so it's actually going to load forever because of the mistake.
7:00:537 hours, 53 secondsSo just delete the async from here. Now from here if you come back here you can already see the data but if I'm giving reload you can see the data are coming
7:01:027 hours, 1 minute, 2 secondshere properly and it's actually working even if we see type error and hit run query here you go the three errors in
7:01:117 hours, 1 minute, 11 secondshere if we delete and if you hit clear you can see the four data in here so it's perfectly working and right now we
7:01:217 hours, 1 minute, 21 secondscan delete all the console logs we don't need that which we added for like debugging purpose. We don't need to open
7:01:307 hours, 1 minute, 30 secondsany of these files in here also. We don't need this logs console log
7:01:387 hours, 1 minute, 38 secondsin here. All good. But one more place I guess in here somewhere
7:01:477 hours, 1 minute, 47 secondsespecially in like our utils get logs.
7:01:537 hours, 1 minute, 53 secondsYeah, let's delete it from here.
7:01:587 hours, 1 minute, 58 secondsAnd that's it. I think everything we deleted. Now, let's come back here. Give reload. And let's check our console.
7:02:057 hours, 2 minutes, 5 secondsNo, it's still there somewhere. Uh the somewhere is in our page. So, it's fine.
7:02:127 hours, 2 minutes, 12 secondsLet's close all of these.
7:02:167 hours, 2 minutes, 16 secondsAnd let's come back to our page.tsx in this queries. And the logs is in here.
7:02:247 hours, 2 minutes, 24 secondsWe don't need that. We're already having the dynamic data. So we even don't have to change anything. We're very lucky that everything is perfectly working in
7:02:317 hours, 2 minutes, 31 secondshere. If you run this query, no data because that's we don't have any data like that in here. You can see everything is perfectly working in here.
Chapter 12: Wrap Up & Part 2 Preview
7:02:417 hours, 2 minutes, 41 secondsAnd it's interesting everything is clearly working. Now what next? The next
7:02:487 hours, 2 minutes, 48 secondsstep is we have to setting up the billing and billing is very very important. We have to make another card
7:02:547 hours, 2 minutes, 54 secondsfor that. And this analytics it's also very very important and at the end we can do our alerting mechanism like you
7:03:037 hours, 3 minutes, 3 secondscan set up alert from here. By using this alert you can like set up some custom light system conditions that if
7:03:117 hours, 3 minutes, 11 secondsthere any this type of error more than this amount then please notify the admin like send web hook request and then you
7:03:197 hours, 3 minutes, 19 secondscan do any whatever you want. You can like send and slide notification or send an email or whatever you want to do
7:03:267 hours, 3 minutes, 26 secondsafter receiving that like web hook notifications. And these things we will do in our next part that's going to be the last part of this like one minute
7:03:357 hours, 3 minutes, 35 secondslocks video series for our this monitoring SAS application because this first part is already very long I am
7:03:427 hours, 3 minutes, 42 secondsrecording it for a long time and since it's a very big application that's why I'm dividing it into two parts and the next part we will finish it and deploy
7:03:507 hours, 3 minutes, 50 secondsit. If you have any question feel free to ask me in the comment sections I'd love to answer that. See you in the next video. Till then, take care and bye-bye.

Sync to video time
If you enjoy these deep-dive engineering videos, consider subscribing. It helps me continue building real-world production systems and sharing the entire development process.

Part 2 will cover the remaining production features, including advanced log processing, alerting, analytics, and the remaining infrastructure required to launch OneMinute Logs as a real SaaS.
