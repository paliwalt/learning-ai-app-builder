https://www.youtube.com/watch?v=l_FJrkAKy7M&t=78s


Let's Build a Production-Ready Monitoring SaaS Like Datadog / Sentry (Part 2/2)
Becodemy
Becodemy
56.8k subscribers

Join


229


Share

Ask

Save

4,319 views  21 Jul 2026
In this series, we’re building a production-ready Application Monitoring SaaS from scratch — similar to platforms like Datadog or Sentry.

🔗 Useful Links
• Brilliant: https://oneminute.run/brilliant
• Superhuman Mail: https://oneminute.run/superhuman
• TestSprite: https://oneminute.run/testsprite
• Clerk: https://oneminute.run/clerk-logs
• OneMinute Logs: https://oneminutelogs.com
• Project Starter Code: https://github.com/shahriarsajeeb/one...
• Source Code: https://www.becodemy.com/source-codes...
Deployment Guide: Coming soon..,

Throughout the project, I’ll explain not only how we build each feature, but also why we’re building it this way, what alternatives exist, and the trade-offs behind every technical decision.

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
coming soon

💙 Support the Channel
If you enjoy these deep-dive engineering videos, consider subscribing. It helps me continue building real-world production systems and sharing the entire development process.

------------------------------------------------------------------
Search transcript
Search transcript

0:000 secondsHave you ever wondered what happens after your application goes live? You deploy your app, everything looks fine.
0:066 secondsUsers start signing [music] up and then something breaks. But the problem is you have no idea what broke. Was it the
0:1414 secondsdatabase or was it an API? This is exactly why companies spend billions of dollars every year on monitoring platform tools like datadri or sentry.
0:2626 secondsThese tools help developers understand what's happening inside their applications in real time. They collect
0:3333 secondslogs, track errors, monitor request, and alert you before things get out [music] of control. And today in this video,
0:4141 secondswe're going to build our own production ready monitoring SAS platform from scratch. A platform which is capable of
0:4848 secondsingesting [music] thousands of logs, streaming them in real time, searching them instantly, tracking usages, and sending alerts when something goes
0:5757 secondswrong. By the end of this video, we'll have a complete monitoring platform that looks and feels like a real SAS product.
1:051 minute, 5 secondsAll right, welcome back. Welcome back to OneMet Locks again. Right now, we're going to start to work with our users
1:121 minute, 12 secondscard. So let's go to our services folder and src folder and this gs folder. Let's create our ugj.g.ts.
1:241 minute, 24 secondsAnd inside our ugj we have to write now at our injectable
1:321 minute, 32 secondsdecorator since this is an guard that's fine. Then we can say export class uses
1:381 minute, 38 secondsG and it's going to implement implements actually implements our can
1:461 minute, 46 secondsactivate which is going to return boolean. So can activate from list common uh no first bracket something like this. Yeah, here we have to add our
1:551 minute, 55 secondsconstructor where we have to inject our result DV and the radius client because
2:012 minutes, 1 secondwe're going to use our database. We need our database access in here and we also need our radius client access. So let's import all of these and then call it.
2:132 minutes, 13 secondsYeah. And we also have to import our inject from our nests and / common.
2:202 minutes, 20 secondsYeah. After this it's still giving error which is very natural because we have to return something. If we return if we say
2:272 minutes, 27 secondsthat return sorry no we have to add here a module first. Let's say
2:352 minutes, 35 secondsour uh sorry not module since this is our uses uh can activate. We have to call
2:432 minutes, 43 secondsour can activate here and we have to pass the context which is
2:512 minutes, 51 secondsgoing to be the execution context. It's going to return just on promise boolean don't need lot of types like this
2:582 minutes, 58 secondsexactly and inside here we can check receive the like request something
3:053 minutes, 5 secondslike this and then we will have a user ID inside the request if no user ID we can return an error from here that
3:143 minutes, 14 secondsunauthorized you must have to be authorized for like passing this usage card then we can say have it this dot is
3:253 minutes, 25 secondshard locked. So for like spamming users which users are spamming with this G for
3:323 minutes, 32 secondsmultiple time we will lock their account for a certain time. So we just have to create that in here. It's in private
3:403 minutes, 40 secondsmodules. So we can say private is hard locked. It's going to receive the user
3:463 minutes, 46 secondsID which is going to be string and it's going to return.
3:533 minutes, 53 secondsIt's going to return boolean
3:593 minutes, 59 secondsand here we can say return sorry return await this dot radius dotexist. So we
4:094 minutes, 9 secondsare basically checking with our hard locked hard lock radius key. So we we're
4:184 minutes, 18 secondsbasically using a variable. Just a minute. Let me finish. Then I'm showing you the variable.
4:244 minutes, 24 secondsUh if it's matching then yeah. And this okay. Yeah. Yeah. I think it's
4:324 minutes, 32 secondsokay. Now return is giving error. The boolean is wait private. It should be actually async.
4:424 minutes, 42 secondsYeah. Now we need this hard lock radius key which we have to create inside our confix index.ts because it's going to be
4:504 minutes, 50 secondsa global value. That's why we can create here something like this that export con
4:574 minutes, 57 secondsour hard lock radius key where which is going to receive the user ID and user user ID and locked. That's it. So now we
5:065 minutes, 6 secondscan import it and here we go. Here it's giving also an error schema. No problem.
5:115 minutes, 11 secondsLet's come back here and let's say import everything as schema from
5:205 minutes, 20 secondsour database and schema. Done. That's it. So our hard lock is ready.
5:295 minutes, 29 secondsNow what next? Next one more thing very very important.
5:345 minutes, 34 secondsWe have to like this usage g is not going to
5:425 minutes, 42 secondslike do something. I mean do something means like this this uses g ro rule is just to tell which plan the user is
5:505 minutes, 50 secondshaving right now. Is it free user or pro user or let's say business user or the starter plan which plan the user is
5:585 minutes, 58 secondshaving and based on the plan how many like this is just going to check the uses. So we have to store the uses
6:066 minutes, 6 secondsinside our database like how many logs or the events the user is already sent how many left. So this is just going to
6:136 minutes, 13 secondstake a decision based on the uses that is the user can again store more events or logs or not. If the user can store
6:216 minutes, 21 secondsmore, it will just return true. It will not update the database or do anything.
6:266 minutes, 26 secondsBut there isn't very important thing in here. It's not going to update any database thing. Yeah. But when the user is for the first time, it's a free user.
6:356 minutes, 35 secondsThe user is sending log for the first time. Then we don't have the user uses inside our database. For that case, we
6:436 minutes, 43 secondshave to create the uses. So that's why here we can say we can create an like private module that get or create uses.
6:516 minutes, 51 secondsSo for only the first time user it's going to create the users table and for second time or like next time users it
6:596 minutes, 59 secondscan just fetch from our database if it's not available in cache then so here we can say user ID which is we must need
7:077 minutes, 7 secondsuser ID to create uh on users and we also need the plan defaults
7:147 minutes, 14 secondswhere we have to receive our events limit for that specific plan which is going to be number.
7:227 minutes, 22 secondsYeah. And it's going to return. So promise we can say promise.
7:297 minutes, 29 secondsIt's going to return our cached uses.
7:357 minutes, 35 secondsOur cache uses interface. So cached users is basically a type simple type. We can add that in here.
7:437 minutes, 43 secondsSomething like this. We also need another type called cache plant where we're just going to have our plant here
7:507 minutes, 50 secondsname. So plant here we also have to import this uh plant here. It's basically on enum
7:597 minutes, 59 secondsfor all of our plants. We can save it in here like this. So plant here let me show you again. Plant here free starter
8:098 minutes, 9 secondspro or business so that you don't mistake the spelling somewhere mistakenly. That's why we're using here enum.
8:178 minutes, 17 secondsUh now uh one more things we also going to use here our the lu cache. So we are basically adding that in here that new lu cache.
8:308 minutes, 30 secondsWe need our plan luttl ms which is going to be actually our
8:388 minutes, 38 secondsvariable for storing the like it's it's basically the qtl for storing the uses
8:448 minutes, 44 secondsplan for the user. So for for our l it's right now 5 minutes and for radius it's
8:528 minutes, 52 secondsactually going to be 6 minute 1 minute extra and that's it. So, we could do one thing. We could cut this and we could add it here.
9:049 minutes, 4 secondsNo, cut and add it here. Yeah,
9:129 minutes, 12 secondsperfect. Now we can come back here again and we can import it. After plan cache, the next cache is the uses cache because
9:219 minutes, 21 secondswe need both. We need the user plan and the users. Yeah, that's it.
9:289 minutes, 28 secondsNow here inside this get or create uses, let's come back inside.
9:389 minutes, 38 secondsHere we are first going to check the LRU key and I mean we're going to check that is
9:459 minutes, 45 secondsthe users or the user ID available in our LU or not. If cached then we can simply return it. If not cached then we
9:549 minutes, 54 secondshave to check it from our radius key. So uses radius key this is also basically on variable
10:0310 minutes, 3 secondsbecause again we are going to use it in so many places. So that's why we should use this type of thing as like our
10:1010 minutes, 10 secondsconfig variable. Yeah. So here we can add it the plan key and uses radius key something like this that ml plan the version and the user ID. We can save it.
10:2010 minutes, 20 secondsNow we can come back down and we can basically sorry we can basically import it. That's it.
10:3110 minutes, 31 secondsYeah. So uses radius key basically we're getting our radius key in here and then
10:3810 minutes, 38 secondswe're checking our radius like the uses if it's available in radius or not. If it's not undefined meanings if it's
10:4610 minutes, 46 secondsavailable then we are expiring it the events used
10:5410 minutes, 54 secondswith this and we are basically updating our radius cache that's what we're doing in here we're updating the TTL I guess
11:0111 minutes, 1 secondfrom here events use okay no no sorry it means if there is no uses like this then we are basically adding it to radius
11:0911 minutes, 9 secondsthat's what we are doing and after that the most important part since We added it to radius. We also have to add it to our database. That's why we're saying a
11:1811 minutes, 18 secondsthis dv.query dot users table. So users table is a new table. We have to create the users table and we are checking it from our database. If it's available very good.
11:2911 minutes, 29 secondsIf it's not then we have to create it
11:3511 minutes, 35 secondssomething like this. If not available plan default. So this is also very very important. plan defaults is basically
11:4311 minutes, 43 secondsour uses for that specific plan. So again we can come back our config
11:5011 minutes, 50 secondsindex.ts and here we can add our plan defaults. We make sure to add it exactly like this for the free plan. Event limit
11:5811 minutes, 58 secondsis 1,000 starter uh sorry it's 10,000 starter 100,000 pro 500,000 and business
12:0512 minutes, 5 seconds1 million. That's it. So now we can come back here and we can import our plan defaults. So if no record we're
12:1312 minutes, 13 secondsbasically making here on entry for storing it to our database. We're inserting it and on conflict we're doing nothing and then we're updating our
12:2112 minutes, 21 secondsradius at the same time. Yeah, that's it. This is very very important. After this
12:2812 minutes, 28 secondsuh after this we also have to check for the events used.
12:3512 minutes, 35 secondsSo we have to update it with our database. Sorry, not database. We have to update it with our radius. This is the plan. Okay, this is different. This
12:4412 minutes, 44 secondsis different. This is the uses. Uses and plans are different thing. And then we are returning the entry from here. Now
12:5112 minutes, 51 secondsstill we have to do one thing which is very very important. We have to create our uses table. So let's come back to
12:5712 minutes, 57 secondsour database schema.ts TS and inside here inside our database
13:0413 minutes, 4 secondsschema.ts we have to right now add our two table. First one is uses.
13:1513 minutes, 15 secondsSo we can say pg table uses and the id is going to be something like
13:2413 minutes, 24 secondsthis. then user ID then events used
13:3113 minutes, 31 secondsevents limit like why we're using here uh big integers big integer because the number
13:3913 minutes, 39 secondscan be lot and we're importing big integer from actually our postql core since we're using postrql so yeah user
13:4713 minutes, 47 secondsID we need to check that which user uses is this event used how many events he already stored and how many events the
13:5413 minutes, 54 secondslimit ities. So events and logs they both are actually same as for our application they are actually same
14:0214 minutes, 2 secondsand then created and updated at that's it very small table and next one is our
14:0814 minutes, 8 secondsplan table so export con plan PG table plan
14:1814 minutes, 18 secondsand here we can add the ID the user ID the name
14:2614 minutes, 26 secondssorry name for the plan this is basically plan name not
14:3214 minutes, 32 secondsthe username then the stripe customer ID the stripe customer actually
14:3914 minutes, 39 secondssubscription ID stripe price ID and the created ad
14:4614 minutes, 46 secondsand our updated at that's all we can save it plan is ready usage is the plan table and uses table
14:5514 minutes, 55 secondsstill we have to do some more work which we will do after actually some time which is connected with our billing
15:0215 minutes, 2 secondsmechanism for now it's fine we can come back here we can stop our server we can say npm
15:1015 minutes, 10 secondsrun db generate
15:1615 minutes, 16 secondsthen db push
15:2915 minutes, 29 secondsUh it's taking a little time which is natural sometimes it takes time basically it's right now doing network
15:3615 minutes, 36 secondsconnection with neon h so it's saying that alerts table okay so it's actually going to work it's
15:4315 minutes, 43 secondsgiving a warning but that's not any big warning sorry just a minute npm run
15:5215 minutes, 52 secondsstart div so it was giving an error because I'm also having some other tables on the current database but no worries for you it will not give any
16:0116 minutes, 1 seconderror it will like make the database up to date and you can see here the uses table no giving no error so why then
16:0916 minutes, 9 secondsthis this one is giving error this is natural this will give error it will fixed after some time however our get or
16:1616 minutes, 16 secondscreate uses module is ready now Next what after this we can actually
16:2416 minutes, 24 secondscome back here again and we can stop the error now it's actually very easy to stop the error so here [snorts] if the
16:3316 minutes, 33 secondshard lock is true I mean if the user is locked then we have to send an error that your account has been locked you
16:4116 minutes, 41 secondshave exceed uh the exceeded the users limit for your current plan please upgrade your one minute locks account plan to continue to continue uploading.
16:5116 minutes, 51 secondsNo to continue up. Yeah, it's actually like true because end of the day you are uploading logs. So fine after this we can check back our plan.
17:0017 minutesNow we have I think ready this dot resolve plan. Uh no result plan is not ready yet. We have to make this module.
17:0817 minutes, 8 secondsWe have to pass the user ID in here. And let me fix the error. See no error now. So result plan.
17:1617 minutes, 16 secondsLet's come back here after this or before this. Let's add our private resolve plan. It's also going to be actually an async module.
17:2817 minutes, 28 secondsSo resolve plan. Uh I don't think as no it's it's it needs to be async actually.
17:3517 minutes, 35 secondsuser ID which is going to be string and it's going to receive a promise
17:4417 minutes, 44 secondswhich type is going to be the cached plan con l
17:5117 minutes, 51 secondskey plan
17:5817 minutes, 58 secondsand our let's pass our user ID in And then con cached
18:0918 minutes, 9 secondsplan cache dot gate l key if it cached then return the cache.
18:1918 minutes, 19 secondsYeah.
18:2118 minutes, 21 secondsOtherwise con r key we need our plan radius key and the user
18:3118 minutes, 31 secondsID let's pass then we're getting our r key in here the radius key then we need to check the radius plan by using the h
18:3918 minutes, 39 secondsget all and if the plan dot plan our plan radius planname available then we're basically normalizing the plant
18:4718 minutes, 47 secondshere. Okay, so this is also an helper function. But let me explain this first.
18:5018 minutes, 50 secondsWe're using a void so that it works in background. It's also kind of like an ait but it's going to work background without like stopping the next step.
19:0019 minutesThat's why we're using a void. Then this ready dot radius.expire we're adding the key and plant radius ttl second. So for
19:0919 minutes, 9 secondsthe entry we have to normalize the plant here name. So we are basically like changing it to our normal name again
19:1619 minutes, 16 secondsbecause it can happen again. It can happen sometimes you're mistakenly adding an like spelling mistake and then it this will do like serious problem in
19:2519 minutes, 25 secondsthe system because because let's say this free and this free is same for us
19:3319 minutes, 33 secondsbut not same for our server for our database. That's how we're normalizing the plant here all the time so that like we can avoid those normal like those common mistakes.
19:4419 minutes, 44 secondsSo this is also on helper function. We can add it in here in our config folder in our config index.ts file. Here you
19:5219 minutes, 52 secondscan see we're basically checking the lower and rather [clears throat] to lower case. We're making it to lower case and if if object values has plant
20:0020 minuteshere then like return the lower otherwise by default plant here dot free. Yeah. So we can import it now. We
20:0820 minutes, 8 secondscan save it. Now next one if not available then com record we have
20:1520 minutes, 15 secondsto check for the plan. So we can say this dv.query dot plan dot find first
20:2520 minutes, 25 secondswhere uh the plan. So you can say equals to P dot
20:3320 minutes, 33 secondsuser id and the user id. So we are basically fetching the logged in user id
20:3920 minutes, 39 secondsplan and we can just specify the named column. So we can say column name
20:4620 minutes, 46 secondsand make it true. We don't need other fields.
20:5020 minutes, 50 secondsAnd then we need the plan name. So we can say plan name normalize plant here record name. We need the entry.
21:0021 minutesThen we have to update our radius database with the name and we
21:0721 minutes, 7 secondshave to expire the plan radius TTL second and then we're saying plan cache sets set. We're adding this LQ and entry
21:1521 minutes, 15 secondsto our caching again. And if we return the entry the all error will be gone.
21:2121 minutes, 21 secondsI know you're happy now because no error but it is not any error since we added here promise cached plan. It meanings if
21:2821 minutes, 28 secondsyou're not returning the name it will give us error that hey please return something please return the name that's why it was giving error but in real
21:3621 minutes, 36 secondsworld it is not any real error uh that's it we can come back to down here again after plan right now we're getting our
21:4421 minutes, 44 secondsplan what next one important thing in here I don't know you notice this or not when
21:5321 minutes, 53 secondsthe user is not having any plan it can happen the user is not having any plan. We're not creating it into database.
22:0022 minutesWhy? Because this users guide is not going to create any plan. And for the free users, we're not storing their plan
22:0722 minutes, 7 secondsinto our database. If the user is a free plan, it means the user will not have any plan. That's what we're doing in here.
22:1522 minutes, 15 secondsHope you're understanding it. That's why we're not creating because for free users, we don't want to waste our database storage. That's why we're not storing the plan.
22:2422 minutes, 24 secondsYeah. After plan we can set this to our request. So request plan so that next
22:3222 minutes, 32 secondstime we can easily like fetch I mean we don't need to like check even the cache we can just say request.plan plan. We
22:3822 minutes, 38 secondscan check the plan and the plan defaults here. We can call our plan defaults. We
22:4722 minutes, 47 secondscan pass the plan name or the plan defaults and plant here dot free. Yeah, this is
22:5622 minutes, 56 secondsthe plan defaults. If the user has any plan, very good otherwise free. That was as what I was explaining. Then con uses.
23:0523 minutes, 5 secondsWe need to check our uses now. So this now get or create uses now the uses. So we need the users table
23:1423 minutes, 14 secondsbecause we have to store the users that's why even for free users we have to store it and then plan defaults
23:2123 minutes, 21 secondsthen the logic the like if you if you build the vidmox with me the another s the previous which I was working with
23:3023 minutes, 30 secondsyou on the YouTube then you know this logic we we are basically doing here in comparison that effective uses limit we
23:3723 minutes, 37 secondsare checking the uses dot events limit if it's more than zero It's like I'm just filtering then uses do events limit
23:4623 minutes, 46 secondshow much events limit the user has and plan defaults actually do event limit.
23:5323 minutes, 53 secondsSo for the like same plan what is the events limit sorry uh if the uses but events limit
24:0224 minutes, 2 secondsnot available then plan defaults which is free free events limit. Now the logic if the uses dot events used is
24:1224 minutes, 12 secondsless sorry more equals to no no I think more equals to less less equals to then effective uses limit. So effective uses
24:2224 minutes, 22 secondslimit let's say uh 5,000 and this event uses 4,999 very good you can still send one more
24:3024 minutes, 30 secondsbut if it's even 5,000 this is 5,000 then you have reached your users quota please upgrade your 1 minute locks
24:3924 minutes, 39 secondsaccount plan to upload more events. Yeah that's what you will get and then finally we can actually return the true which is already in here and that's it.
24:4824 minutes, 48 secondsOur users gird is ready to use. Not a big girth but this gird is like the gird
24:5624 minutes, 56 secondscannot be big. This is very important when you are designing a guard like make it specific like work specific. Work
25:0425 minutes, 4 secondsspecific meanings. Uses guard is not for updating the uses. It's just for checking the uses. It's just for saying
25:1225 minutes, 12 secondstrue or false. The user can upload the event or not. Nothing else. And when the user is uploading the event inside our
25:2125 minutes, 21 secondsconsumer like since we're working with an event-driven architecture we have the consumer after uploading it to database we can update the cache and after
25:3025 minutes, 30 secondsupdating the cache after a certain time we can basically run on like a scheduleuler or notep which is going to update our database that's the best
25:3925 minutes, 39 secondsapproach in here but what we can do yes our grid is ready let's use it now
25:4525 minutes, 45 secondseverywhere we can come back to our locks module
25:5225 minutes, 52 secondsand we can copy the uses guard we can paste it in here and we can say usage g so forget locks
26:0126 minutes, 1 secondfor checking the locks I don't think we need an usage guard here because this is just for checking the lock but for storing locks definitely we need our
26:1026 minutes, 10 secondsusage card so let's add that in here usage curt
26:1926 minutes, 19 secondsWhere is the uses? Sorry. Uses scrut.
26:2726 minutes, 27 secondsYeah, copy this for stream. We don't need for get dashboard logs. We don't need the uses
26:3626 minutes, 36 secondsor even we can add because it's just going to like check the plan and everything. But let me see what I'm doing for the production one. And I can
26:4526 minutes, 45 secondslike basically do the same thing. So yeah, for the production I'm just using it in here because we don't want to block the streaming even if the plan is expired.
26:5426 minutes, 54 secondsExactly.
26:5626 minutes, 56 secondsYeah. So for send locks you must have to pass this user script. That's it. Our users is ready right now. If we come back here in live locks.
27:1027 minutes, 10 secondsWait. Yeah. Here you go. Our live locks.
27:1227 minutes, 12 secondsYou might be watching here more events right now. But no worries. This is because I added like I was testing our
27:1927 minutes, 19 secondssystem. You can check our click house database also. We are having actually a lot. We're having 70 rows right now. 70 events or logs which is fine for now.
27:2927 minutes, 29 secondsNow what next? Our users gr is ready. We are basically like
27:3727 minutes, 37 secondscollecting the uses guard. But we also have to change few things. and a few things in inside send locks.
27:4427 minutes, 44 secondsSo when we are sending the locks from here you can see we're basically adding here some uh like
27:5327 minutes, 53 secondssome limitation. I don't know I probably didn't add this in the first part but be make sure that you're also adding this
27:5927 minutes, 59 secondsit's having on like batch limits you cannot store any amount of log
28:0728 minutes, 7 secondslike you want within a certain time you can store only 100 logs for free free plan so it's basically like we're
28:1328 minutes, 13 secondslimiting the user from abusing our system or abusing our backend service that's what this part is doing if you're having the source code you can check it.
28:2628 minutes, 26 secondsIt's just checking the limits for your plan and then like if you're sending more than that logs then too many logs
28:3328 minutes, 33 secondsin one batch you cannot send that and otherwise we're publishing the logs to our consumer and right now the next break is basically inside our consumer.
28:4328 minutes, 43 secondsSo we can go to our next consumer. Here you go. And we have to do break in here. This uses accumulate.
28:5228 minutes, 52 secondsSo after this uses accumulate in here we can say that con uses key we basically
28:5928 minutes, 59 secondsneed our users key we can call here our uses radius key and we can pass our user
29:0529 minutes, 5 secondsid and we can say await radius dot
29:1129 minutes, 11 secondslike increment the uses key events used
29:1929 minutes, 19 secondsand just change it to the transform dot length. Yeah. Then we have to expire now. So we can again copy the line and
29:2729 minutes, 27 secondswe can change it. Then again expire uses key and let's add our plan radius TTL second. Yeah that's it.
29:4029 minutes, 40 secondsAfter this very very important we are going to add here radius dot set like this. So this is basically going to do
29:4729 minutes, 47 secondsone thing. I'm explaining at first let me finish. It's an interesting thing. So here we saying OML uses and dirty
29:5929 minutes, 59 secondsand the version and actually not slash it's going to be
30:0630 minutes, 6 secondsthe user ID. So here we're adding this s ag meanings we are basically saying when
30:1430 minutes, 14 secondssomeone updating not someone when our scheduleuler actually updating our database with this updated uses then
30:2230 minutes, 22 secondsradius will automatically delete this key it's basically going to delete the user ID uses after like we are
30:3130 minutes, 31 secondsacknowledging it something like that and then here after this we have to call our LRU key
30:4030 minutes, 40 secondswhere we have to pass the U.js and user id. Yeah. Then con cacheed
30:5230 minutes, 52 secondswe can call uses cache dot gate we can pass the lu key. We can save it. So this is the cached.
31:0131 minutes, 1 secondIf it's available in cache then like in our L cache we have to update the L cache as well. So LU key and spread our
31:1031 minutes, 10 secondscache then the events used this is the new one we need to change it the cache doevent used plus our transform dot
31:1931 minutes, 19 secondslength that's it after this we can broadcast our transformed blocks. Yeah that's it. Our work is actually ready in here.
31:3031 minutes, 30 secondsNow this line the complicated one let's do one thing now I added this line
31:3831 minutes, 38 secondsbecause we have to use here on a scheduleuler so let me create on scheduleuler uh wait where so inside our
31:4731 minutes, 47 secondsservices we can create a new folder by giving nameulers something like this inside here we can
31:5531 minutes, 55 secondssay u db sync in.ts.
32:0132 minutes, 1 secondHere we can inject our scheduleuler. So we can say inject tableable and export. We're basically making it a
32:0932 minutes, 9 secondsmodule. So we can say export class our uses DB sync.
32:1732 minutes, 17 secondsLet's add the constructor here. We need our database and radius client access.
32:2332 minutes, 23 secondsSo database and client access something like this.
32:2732 minutes, 27 secondsour Drizzle DB then neon HTTP database then schema for schema we're going to
32:3532 minutes, 35 secondsimport everything as schema from our database and schema then after this
32:4232 minutes, 42 secondsthe radius client and radius yeah now what next the next is we're
32:4932 minutes, 49 secondsgoing to use here chrome so chrome so chrome is basically coming from our NestJS schedule library. We have to
32:5732 minutes, 57 secondsinstall this library. We can stop our server. We can say npmi this NestJS
33:0533 minutes, 5 seconds/ schedule. Yeah, we can hit enter. And here you go. It's ready to use. Then uh
33:1333 minutes, 13 secondsafter this in the crown right now in the crown, we can say basically it's for 5 minutes. So we can set five minutes.
33:2133 minutes, 21 secondsFive actually four star. Yeah, as I know for a minute then we can say as sync flash
33:3133 minutes, 31 secondsuh not flash sync flash uses
33:3933 minutes, 39 secondsthen we can say con processing key
33:4633 minutes, 46 secondsand we have to add here our uses dirty key. So what is the uses dirty key? Now the interesting part is coming. So this
33:5433 minutes, 54 secondsuses dirty key is basically our this same
34:0234 minutes, 2 secondsthis one. Okay. So we can copy this. We can paste that in here inside this.
34:1034 minutes, 10 secondsYeah. And version. Let's import version from our configs.
34:1434 minutes, 14 secondsPerfect. And after processing key here still we have to add the processing
34:2134 minutes, 21 secondsand the processing date. So date dot uh actually g will be capital date
34:2834 minutes, 28 secondsdot now or we can call it yeah this is our processing key and then we need our
34:3534 minutes, 35 secondsrenamed so renamed we have to rename this dot radius dot rename we have to
34:4134 minutes, 41 secondsrename this key now so we can say users key and this processing key
34:4834 minutes, 48 secondsand if it's catch any error then just return null
34:5734 minutes, 57 secondsactually null. Yeah, that's it. After renaming, we can say if no renamed,
35:0435 minutes, 4 secondsthen just return. Otherwise we have to check for the user id is
35:1235 minutes, 12 secondsawait this dot regist members with this processing key
35:2235 minutes, 22 secondsand we can select sync users. So it's basically like which users are synced with our database. So by default it's
35:3135 minutes, 31 secondsgoing to be zero and we can write here in for loop because this user id is basically is an array. This is members
35:3635 minutes, 36 secondsis going to return an array. So con user id of user id is
35:4735 minutes, 47 secondsand con uses a radius. radius.h get all and we can call the users radius key in
35:5635 minutes, 56 secondshere and we can pass our user ID. That's it. Now if the uses doevents used is not available then continue.
36:1136 minutes, 11 secondsAfter this we can say actually we can update our database after this. So we can say this TV dv.update
36:1936 minutes, 19 secondsour users table and set a new value for our users table.
36:2536 minutes, 25 secondsSo we have to change the events used which is going to be a number and u dot events used. So we're basically passing
36:3336 minutes, 33 secondsevents used. This is number we everyone know but here we are using this number because radius is storing it as a string. So that's why we're like
36:4236 minutes, 42 secondstransforming it to a number. And same for events limit. We have to transform it to a number.
36:4936 minutes, 49 secondsUvents limit. Yeah that's it.
36:5536 minutes, 55 secondsAnd then here we can say where
37:0337 minutes, 3 secondsour schema dot uses dot user id is matching with the user ID there exactly
37:1337 minutes, 13 secondsand then we can add it with our sync users. So we can basically like increment the sync users with this
37:2237 minutes, 22 secondsone and then later one we can update sorry we can delete our processing key
37:3037 minutes, 30 secondsfrom radius. Yeah that's it. That's all about this our TB
37:3737 minutes, 37 secondssync. So it's basically after 5 minutes sorry for the message notification.
37:4337 minutes, 43 secondsYeah sorry. So yeah, what I was say what I was saying that after every 5 minutes however we have to actually use this
37:5037 minutes, 50 secondschrome inside our like main JTS right now because it's on scheduleuler it's not going to work automatically
37:5937 minutes, 59 secondsno problem let's come back to our app module first and here let's add schedule
38:0638 minutes, 6 secondsmodule dot for root and inside here we have to actually pass nothing just like
38:1338 minutes, 13 secondsthis and we can save Right. And after uh like this one, I think we're good to go.
38:1938 minutes, 19 secondsBut still, just a minute. Let me check the main.ts a little.
38:2438 minutes, 24 secondsUh here all looks good.
38:3138 minutes, 31 secondsI think all looks good in here. Yeah. So right now we can start our server again.
38:3638 minutes, 36 secondsWe can run our server and after every 5 minutes it's going to
38:4538 minutes, 45 secondsbasically update our database. This one.
38:5238 minutes, 52 secondsYeah. So our uses accumulation is also done. Now what next? Our uses is ready.
38:5938 minutes, 59 secondsEverything is ready. The next one is live locks working. Quer is breaking.
39:0539 minutes, 5 secondsNext one is alerts. But before that, we have to actually work for the billing. And billing is very very important.
39:1039 minutes, 10 secondsWe're going to remove this. We're going to just add here another billing card.
39:1639 minutes, 16 secondsAnd billing is also like related to this project. I mean, if you are using it as for your project, then you don't need
39:2439 minutes, 24 secondsbilling at all. You can just like store logs right right now like the way it's working. And for alerts,
39:3239 minutes, 32 secondsyeah, we have to start to work for the alerts and billing. These two things is the only remaining part. Otherwise, everything is ready. So, we we're going
39:3939 minutes, 39 secondsright now going to finish the billing and then we'll finish the alerts. Alerts is a little bit bigger because we have to again make another like uh consumer.
39:4939 minutes, 49 secondsWe have to add here basically our another consumer that alert consumer and alert will also have another actually uh no no alert alert is completely event.
40:0140 minutes, 1 secondSo we don't need to like add anotheruler for alert that's why we're using here another consumer but that's that's like
40:0940 minutes, 9 secondsan upcoming thing. So right now we don't need to worry about that. Right now let's start to work for the billing and after finishing the billing we can
40:1740 minutes, 17 secondsfinish the alerts and then basically our SAS will be ready to deploy. So let's start the billing part right now. All right. So let's come back to our
40:2640 minutes, 26 secondsservices folder and from here in this src folder in our modules in this
40:3340 minutes, 33 secondsbilling modules let's create our billing and module.ts ts then billing
40:4240 minutes, 42 secondsour controller.ts and billing our service.ts Yes.
40:5140 minutes, 51 secondsAnd next work. Uh let's come back to our billing module. Let me add the boiler plate code base.
40:5840 minutes, 58 secondsSomething like this. But we don't have the billing service and controller. So we can delete that. Otherwise, this is our module code. It's fine. Now for
41:0741 minutes, 7 secondscontroller, we can actually work later on controller. We should start to work on our billing service. So let's come
41:1441 minutes, 14 secondsback here and in here we can say inject table from NJS common and we're going to use your stripe. So stripe we have to install the stripe library.
41:2641 minutes, 26 secondsLet's come back here stop our server and we can say npmi stripe.
41:3441 minutes, 34 secondsDone. And we can import stripe from stripe. Yeah. After this we can add our
41:4341 minutes, 43 secondsconstructor and then we can finish
41:5041 minutes, 50 secondsit like this and this. Yeah. So stripe what it's saying we it's it's declared but it's never uh
41:5841 minutes, 58 secondsis it's never been used yet. It's okay no problem. It's just been warning inside this constructor. We have to
42:0442 minutes, 4 secondsright now inject our database and basically radius client. So we can say
42:1342 minutes, 13 secondsdrizzle db radius client and radius. Yeah. And next one we need our
42:2142 minutes, 21 secondsconfig service. Very very important. So config service that's it. Now inside this constructor actually we have to
42:3142 minutes, 31 secondsload our stripe secret key. Now for stripe secret key you must need stripe account. How can you create an stripe
42:3842 minutes, 38 secondsaccount? It's very simple. Just go to stripe dashboardstripe.com and from here you can create a stripe account. If you're not having it if you're having it
42:4742 minutes, 47 secondslike me you can just do login. I'm not showing you the login part because I assume you know how can do login to
42:5442 minutes, 54 secondsstripe. But still uh one very important thing you have to do let me take it here then you can understand it. So here from
43:0243 minutes, 2 secondshere be make sure that you are clicking test mode. Okay after creating on stripe account be make sure that you're
43:1043 minutes, 10 secondsclicking test mode not sandbox. Very very important. After clicking test mode and search for API keys and after that
43:1843 minutes, 18 secondsyou'll find out your stripe publishable key and secret key. So just copy that secret key and then sorry just a minute
43:2643 minutes, 26 secondsand then come back to our env. I'm not showing this to you. Let me come back to the
43:3343 minutes, 33 secondsexample and then here we have to add our stripe secret key and the value. So for
43:4043 minutes, 40 secondsme let me add it inside the env secret key value. It's like an private thing that's why.
43:5043 minutes, 50 secondsBut just a minute. My Stripe secret key is in here. And Stripe secret key.
44:0044 minutesYeah, that's it. It's ready. So, Stripe secret key.
44:1244 minutes, 12 secondsYeah. Here you go. All good. Now, let me take it back to here again.
44:2044 minutes, 20 secondsYeah. Now after stripe secret key, after stripe secret key, if it's not available, we can basically return an error that stripe secret key is not set.
44:3044 minutes, 30 secondsPlease set your stripe secret key.
44:3244 minutes, 32 secondsOtherwise, we can set this to this stripe with this new stripe and we can pass the stripe secret key in here.
44:3944 minutes, 39 secondsYeah. And uh after this we need our like some private module. We can say one like get current plan. It's not private.
44:4944 minutes, 49 secondsIt's basically connected with on with uh with on actually endpoint. It's like getting your current plan. Since if you
44:5944 minutes, 59 secondsare using our guard this users guard naturally you're going to have your plan
45:0645 minutes, 6 secondsin here like you can see request.plan the user plan. So we don't need to fetch
45:1245 minutes, 12 secondsanything. We can just check it from our like card that request.plan plan and we can just return it. That's it. Very
45:1945 minutes, 19 secondssimple endpoint. Then after this we need to uh start to work for the billing
45:2745 minutes, 27 secondssession. So you can say async create billing
45:3545 minutes, 35 secondssession and here we have to pass our user ID which is going to be string and the
45:4345 minutes, 43 secondsselected plan which is also going to be string.
45:4845 minutes, 48 secondsThen uh one minute I did mistake. Yeah. Then const plan the user plan we can say
45:5645 minutes, 56 secondsselected plan dot to lower case. So it's for the selected plan. We have to create an billing session for that selected
46:0446 minutes, 4 secondsplan. If this dot is paid plan
46:1446 minutes, 14 secondsand we have to pass the plan. So if it's not paid plan it can happen that the user is trying to like do the billing
46:2146 minutes, 21 secondssession with the free plan. So in that case we cannot like let this happen. So we can add here an simple private module
46:2946 minutes, 29 secondsfor this that is paid plan. It's going to receive the plan which is going to be string and it's going to return plan is paid plan.
46:4146 minutes, 41 secondsYeah. So paid plan is on like type we can add that in here like this. It's
46:4946 minutes, 49 secondslike starter pool or business. This is our paid plan.
46:5446 minutes, 54 secondsNow after this here we can basically
47:0147 minutes, 1 secondadd this uh inside here we can say return if plan equals to starter
47:1147 minutes, 11 secondsor plan equals to true or plan equals to business.
47:2247 minutes, 22 secondsYeah, then it's true that it's paid plan. If not in this like starter, pro or business, then it means it's like not
47:3047 minutes, 30 secondsa paid plan. In that case, we're going to like return an error that
47:3647 minutes, 36 secondsonly paid plan is like we only accept paid plan. Yeah. So, we can say
47:4547 minutes, 45 secondschoose starter pro or business to create a billing session. Exactly. And then we're going
47:5347 minutes, 53 secondsto have our price ID. This is very very important. We have to create this. And then we need our app URL for now. Let's
48:0248 minutes, 2 secondsuse basically like if app URL available in our envir otherwise 3001. Now this is
48:0948 minutes, 9 secondsalso another helper module basically and private module for getting our stripe price ID. So we can say private get
48:1848 minutes, 18 secondsstripe price ID. It's going to receive the plan which type is going to be paid plan. Now we can set here some values
48:2648 minutes, 26 secondslike price ID is record paid plan and string
48:3448 minutes, 34 secondsare undefined and starter it's going to be this dot
48:4348 minutes, 43 secondsuh config service dot gate here we can say string
48:5248 minutes, 52 secondsuh sorry string and stripe starter price ID something like this.
49:0049 minutesThen we need pro which is going to be this doconfig service.getate get sim and string
49:1049 minutes, 10 secondsand here we have to pass our stripe propric ID exactly after this we have to
49:1849 minutes, 18 secondspass the business one like the strip stripe business price ID now this this all of them are actually environment
49:2649 minutes, 26 secondsvariable so we need to set this inside our env no problem let's come back to our stripe
49:3349 minutes, 33 secondsdashboard again from Here if you check our product catalog we're not having. So let's create a new product by giving
49:4149 minutes, 41 secondsthem let's say starter it's going to be actually recurring.
49:4749 minutes, 47 secondsYeah. And monthly and price is going to be $9.99 or like any price which we're giving in here. In description you can
49:5549 minutes, 55 secondsjust add anything and you can hit add product. And after hitting add product you can see starter is in here. You can basically copy this price ID. That's it.
50:0550 minutes, 5 secondsWe don't have to do anything else. Just copy the price ID. Come back to our env again for the starter price ID. Add like
50:1350 minutes, 13 secondsthat value. Same for the pro. Same for the business. Create new product for pro and same for business with like their
50:2250 minutes, 22 secondspricing. Like for pro it's $14.99 I guess. I forgot it to be honest. Let me see. $14.99 I guess.
50:3350 minutes, 33 secondsuh 99 uh actually in the UI we have to update it a little bit because we are basically adding some more paid plans in
50:4050 minutes, 40 secondshere. So for pro I think it's $19 or I forgot it. You can just check it from here and you can just add it and even if
50:4850 minutes, 48 secondsyou want to change it in the later the pricing you can definitely also do that from the Stripe dashboard. Yeah. So just create those products copy the price ID
50:5650 minutes, 56 secondsand paste that inside your env that's that's it. this your setup will be ready
51:0251 minutes, 2 secondsto like the setup is ready for our billing session. Now if no price ID
51:1151 minutes, 11 secondsthen what we can throw an error that missing stripe price ID
51:1851 minutes, 18 secondsfor the plan. Yeah then we can return on price ID when there is price ID we have
51:2551 minutes, 25 secondsto just return that. Yeah, after the price ID, after getting our price ID,
51:3351 minutes, 33 secondsthen next step is basically we have to check our customer ID. We need our
51:4151 minutes, 41 secondsstripe customer ID. This is this is different. So we have to again create another helper function. We can say private.
51:5051 minutes, 50 secondsprivate this could be also private mean it's not connected with any our any
51:5851 minutes, 58 secondsAPI yeah no no sorry I did mistake where I'm creating it should be actually
52:0552 minutes, 5 secondsoutside yeah here private insure stripe customer but it's going to be async and
52:1252 minutes, 12 secondsit's going to receive the user ID which type is going to be string now we need the email of the user. So we can
52:2152 minutes, 21 secondsget that with our clerk. So we need our get clerk email helper function. Not function, it's actually module and email here. We're going to pass our user ID.
52:3352 minutes, 33 secondsWe can copy this. Let's come back here.
52:3652 minutes, 36 secondsPrivate sync get clerk email. It's also going to receive the user ID like the clerk user ID.
52:4752 minutes, 47 secondsAnd here we can add a try catch statement.
52:5052 minutes, 50 secondsWe can say con clerk client and create
52:5752 minutes, 57 secondsclerk client. Inside here we have to pass our secret key. We make sure that you're having or you're adding your
53:0553 minutes, 5 secondsclerk secret key in your back end service uh this services
53:1253 minutes, 12 secondsenv. Okay. So, clerk secret key.
53:1953 minutes, 19 secondsThat's it. After this, we're going to have our user. So, we can say u and then
53:2653 minutes, 26 secondsaait clickclient dot users dot get user and we have to pass the user ID. Then we
53:3553 minutes, 35 secondsneed our primary ID for the user. So we can say U dot
53:4353 minutes, 43 secondsprimary email address id.
53:5253 minutes, 52 secondsNext one is the primary email. So const primary
53:5853 minutes, 58 secondswe can say you and email addresses
54:0854 minutes, 8 secondsdot find and e id
54:1954 minutes, 19 secondsequals to our primary ID. That should be the logic. Yeah.
54:2654 minutes, 26 secondsSo this is our basically the primary email and then after this we can return the primary
54:3354 minutes, 33 secondsemail address if it's available then u dot email
54:4354 minutes, 43 secondsaddresses the first index then dot email
54:5154 minutes, 51 secondsaddress or undefined. Yeah, if it's catch any error, we can return undefined.
55:0155 minutes, 1 secondThat's it. Now, after this, we're basically getting our clerk email ID. If there is no email, then missing user
55:0955 minutes, 9 secondsemail. Uh otherwise, we can check from our database. We can
55:1655 minutes, 16 secondssay this db.query query dot plan dotfind
55:2455 minutes, 24 secondsfirst here we're going to find with our
55:3355 minutes, 33 secondsbasically we can say eq and the p dot user id
55:4155 minutes, 41 secondsand the user ID if it's matching then give us that record and we need our
55:4955 minutes, 49 secondswe don't need the all columns we can say columns we need our name
55:5855 minutes, 58 secondsand the stripe uh actually stripe
56:0556 minutes, 5 secondscustomer ID yeah we just need these two fields after
56:1256 minutes, 12 secondsthis I mean if it's available inside our database then we don't need to definitely again check from the clerk
56:1956 minutes, 19 secondswe can have [snorts] our stripe customer like IG and otherwise
56:2956 minutes, 29 secondswe have to check our stripe customer and if like if it's not available in our database like for the first time users
56:3756 minutes, 37 secondsdefinitely were not having it inside our database in those cases we can just like check our stripe customer by the email.
56:4756 minutes, 47 secondsSo we can come back here again and we can say private async and uh find stripe customer by
56:5556 minutes, 55 secondsemail. We can pass here email and string which type is going to be. Then we can
57:0157 minutes, 1 secondsay const customers aid this dot stripe dot customers
57:1157 minutes, 11 secondscustomers dot list and we can pass the email and limit which is going to be one. That's it. Then we can return our
57:2057 minutes, 20 secondscustomer's data and the first index which is the like customer email. Yeah.
57:2957 minutes, 29 secondsSo after stripe customer, we're getting our stripe customer in here. After this step,
57:3757 minutes, 37 secondswe have to check for the current plan actually. Yeah, current plan.
57:4557 minutes, 45 secondsAnd we can use our that helper function again that normalize normalize
57:5357 minutes, 53 secondsplant here and we can pass our record dot name.
58:0058 minutesIf our stripe customer available the stripe customer ID then we can return the customer
58:0958 minutes, 9 secondsID which is going to be stripe customer
58:1658 minutes, 16 secondsdot ID and the current plan. Yeah, that's it. Otherwise, we have to create
58:2458 minutes, 24 secondsa new customer. So, we can say customer await this. stripe dot customers
58:3458 minutes, 34 secondsdot create and we have to pass the user email and in meta data we have to pass the user ID
58:4358 minutes, 43 secondsthat's it then we can return our customer ID customer ID which is going to be
58:5058 minutes, 50 secondscustomer do ID and the current plan there you go it's done that's it so next step After ensuring
58:5958 minutes, 59 secondsthe stripe customer, we're basically getting our stripe customer. After this, we're good to go. We can right now create on session. We can say session
59:0759 minutes, 7 secondsawait this. Stripe dot checkout
59:1459 minutes, 14 secondsdot sessions dot create. So you're basically creating a checkout session.
59:1959 minutes, 19 secondsThe payment mode is going to be subscription.
59:2359 minutes, 23 secondsThe customer, we're going to pass the customer ID in here. and client reference ID which is
59:2959 minutes, 29 secondsgoing to be the user ID. The line items we have to pass here the price ID and
59:3659 minutes, 36 secondsthe quantity which is going to be one and after this we can pass the meta data
59:4459 minutes, 44 secondswhich is have which is going to have our user ID and plan.
59:4959 minutes, 49 secondsWe have to send it because we need this user ID and plan for the web hook. Like when you're receiving an web book, we
59:5659 minutes, 56 secondsneed these two things to process the update plan. Like when you're plan when we're trying to update the plan for the
1:00:031 hour, 3 secondslogged user or for the like page user, we just we must need this user ID and plan to update it. And then we can have
1:00:111 hour, 11 secondshere here our meta data. We can pass the user ID and plan. That's it. Our subscription data. And finally we must
1:00:191 hour, 19 secondsneed the success URL like after the payment is successful where we have to return. So we can say app URL/
1:00:281 hour, 28 secondssettings check out and success
1:00:371 hour, 37 secondsand plan is going to be the like like the plan for what the users paid for.
1:00:441 hour, 44 secondsSame for cancel URL.
1:00:481 hour, 48 secondsSo app URL / settings check out and cancelled.
1:00:591 hour, 59 secondsThat's it. We don't need to send any like any plan or anything like that. It's for the cancelled URL.
1:01:041 hour, 1 minute, 4 secondsYeah. Now if our session URL is not available
1:01:131 hour, 1 minute, 13 secondsthen there is something wrong. So we can say that stripe did not return the checkout URL. Otherwise we can return
1:01:201 hour, 1 minute, 20 secondsthe URL provided by stripe. So we can say session do URL.
1:01:271 hour, 1 minute, 27 secondsThat's it. We can save it. After this we can create another endpoint or API
1:01:341 hour, 1 minute, 34 secondsendpoint module for creating the portal sessions. It's like basically for managing the billing from stripe
1:01:411 hour, 1 minute, 41 secondsdashboard. So we also need here our stripe our user ID and we're going to check we we need our customer ID and
1:01:501 hour, 1 minute, 50 secondscurrent plan. So which we can get from this insure stripe customer ID and then we're going to check it if the user plan is free.
1:01:591 hour, 1 minute, 59 secondsIf the plan is free, then free plan users do not have a Stripe billing portal yet because they're they're not subscribe to
1:02:081 hour, 2 minutes, 8 secondsany billing plan. So they that's why they don't need the like Wait, what happened?
1:02:151 hour, 2 minutes, 15 secondsYeah, they don't need no.
1:02:241 hour, 2 minutes, 24 secondsYeah. So now it's correct. we can say const app URL. So yeah, what I was saying that for the free users, they don't need access to our manage billing.
1:02:351 hour, 2 minutes, 35 secondsThis didn't pay anything. So why they need the manage billing option? That's why otherwise we need our app URL in here
1:02:441 hour, 2 minutes, 44 secondsnow. So app URL and after this we need our we need to create another session
1:02:521 hour, 2 minutes, 52 secondsbasically for the billing portal. We can say await this. Stripe dot billingportal dots sessions docreate.
1:03:031 hour, 3 minutes, 3 secondsWe can pass the customer uh we have to pass the customer ID and the return URL is going to be
1:03:121 hour, 3 minutes, 12 secondsapp url/ settings. Yeah. And then we can just return the URL that session do URL. Cool.
1:03:251 hour, 3 minutes, 25 secondsWe're good to go. Now, after this, we need another endpoint, our API endpoint that is getting all of our invoices.
1:03:331 hour, 3 minutes, 33 secondsHowever, we're not having the invoices table yet. We're going to create it now.
1:03:401 hour, 3 minutes, 40 secondsSo, we can say con invoices await this TV dot select.
1:03:491 hour, 3 minutes, 49 secondsWe just select some fields. But after that we can say from
1:03:561 hour, 3 minutes, 56 secondsour schema uh schema we have to import
1:04:061 hour, 4 minutes, 6 secondsat the beginning. So we can say import schema from
1:04:141 hour, 4 minutes, 14 secondsour dot dot slash database and schema. Import schema
1:04:221 hour, 4 minutes, 22 secondsuh import everything as schema. Yeah, that's it. We can come back down and here we can say schema dot
1:04:321 hour, 4 minutes, 32 secondsour payment invoices. So which which is not available yet but no worries
1:04:391 hour, 4 minutes, 39 secondswe're going to create it now. Let's come back to our database and schema.ts.
1:04:451 hour, 4 minutes, 45 secondsHere we can say export con payment
1:04:541 hour, 4 minutes, 54 secondsinvoices and postsql table.
1:04:591 hour, 4 minutes, 59 secondsI hate this suggestion. And I don't want suggestion the VS code suggestion payment invoices
1:05:081 hour, 5 minutes, 8 secondsand inside here we need our like the normal ID the random ID then we need user ID which
1:05:171 hour, 5 minutes, 17 secondsuser payment invoice is this we need a stripe customer ID
1:05:221 hour, 5 minutes, 22 secondsand we need our subscription ID
1:05:291 hour, 5 minutes, 29 secondsthen we We need our invoice ID, the status of the invoice, the currency,
1:05:391 hour, 5 minutes, 39 secondsthe amount due, amount paid. Both of them are going to be a big integer because it can happen that the amount
1:05:481 hour, 5 minutes, 48 secondsnumber is bigger. That's why it's always better for like when it's an like number amount you should use big integer for
1:05:561 hour, 5 minutes, 56 secondsthis type of field like amount or amount peed paid not peed amount paid for
1:06:031 hour, 6 minutes, 3 secondshosted invoice URL it's basically the invoice URL then invoice PDF URL
1:06:111 hour, 6 minutes, 11 secondsand the period start it's for the subscription the period end.
1:06:191 hour, 6 minutes, 19 secondsThen after this we need our created at and updated at. Yeah, that's it
1:06:261 hour, 6 minutes, 26 secondsalready. So let me show you slowly so you can follow this accordingly.
1:06:321 hour, 6 minutes, 32 secondsYeah. Yeah. After this we need actually I don't think we need any more fields.
1:06:401 hour, 6 minutes, 40 secondsWe just need uh we need on more table and that's for alerts. So let me create it right now so that we don't need to
1:06:491 hour, 6 minutes, 49 secondscome in the future again. So we can say export con alerts PG table and alerts.
1:07:021 hour, 7 minutes, 2 secondsYeah. And here we can basically add our UU ID first. The generated unique ID user ID which user is having the alert.
1:07:141 hour, 7 minutes, 14 secondsthe alert name and the most important field is our conditions like the logic because you're basically
1:07:231 hour, 7 minutes, 23 secondsgoing to add on uh I think postgress core. Yeah. Yeah.
1:07:281 hour, 7 minutes, 28 secondsAll good. So yeah. So basically this is like on JSON B like JSON I I think JSON B meanings I forgot it. What's the meaning of JSON B?
1:07:391 hour, 7 minutes, 39 secondsJSON B.
1:07:431 hour, 7 minutes, 43 secondsJSON B ah disgusting.
1:07:521 hour, 7 minutes, 52 secondsSo it's a postgrad data type for that store JSON documents into a okay so it's basically a decompos binary format. So
1:08:001 hour, 8 minutesit's like very good for adding like a big amount of data since the conditions is going to have a big JSON that's we're
1:08:071 hour, 8 minutes, 7 secondsbasically doing it which is very good for like storing a big amount of data.
1:08:121 hour, 8 minutes, 12 secondsSo yeah, here it's going to have the field like which field then the operator like like greater than or less than or like equals to and then the value. Yeah.
1:08:241 hour, 8 minutes, 24 seconds[snorts] Then we need our threshold count which is going to be integer
1:08:321 hour, 8 minutes, 32 secondsand we also need our threshold windows minute. It's like how many you can send
1:08:391 hour, 8 minutes, 39 secondsalerts within this window minutes. Let's say within 5 minutes you can send just only one alert if it the same like the
1:08:471 hour, 8 minutes, 47 secondsproblem is happening. I mean sorry I I explained it a little wrong. Threshold count meanings it's basically the number you're saying. Let's say if you're
1:08:551 hour, 8 minutes, 55 secondssaying you're saying that if this error is coming more than five uh more than five times within 5 minutes then send me
1:09:031 hour, 9 minutes, 3 secondsan alert. So this threshold count is like the that's the that's the five. I hope you're understanding it. and web
1:09:101 hour, 9 minutes, 10 secondshook URL where we have to send the error like the alert message then cool down period because when it's matching we
1:09:191 hour, 9 minutes, 19 secondscannot send alert again and again again again and again there is going to be an cool down period time then the summary of the alert
1:09:271 hour, 9 minutes, 27 secondsthen the status right now and app name and last triggered which app is causing
1:09:341 hour, 9 minutes, 34 secondsthis alert the last trigger time then created at and updated it.
1:09:421 hour, 9 minutes, 42 secondsYeah, we can save this. We can come back here and we can say npm run db generate.
1:09:511 hour, 9 minutes, 51 secondsThat's it. We can again start our server. However, you must have to write npm run db push as well. I
1:09:591 hour, 9 minutes, 59 secondsdidn't write it because my this same database is already synced with the like schema of the production one. So that's
1:10:081 hour, 10 minutes, 8 secondswhy I don't have to write the same code again because it's already synced up. I don't need that here. I can write now use schema dot use as you can see. So
1:10:171 hour, 10 minutes, 17 secondsactually don't need usage. I need our uh we need our payment invoice.
1:10:221 hour, 10 minutes, 22 secondsNow here we can say dot where our
1:10:281 hour, 10 minutes, 28 secondsschema dot payment invoices dot user ID is matching with our login user ID there.
1:10:371 hour, 10 minutes, 37 secondsAnd we have to change the orders by. So we can say order by
1:10:431 hour, 10 minutes, 43 secondswe're going to follow the descending and schema. Invoices dot created at. So
1:10:511 hour, 10 minutes, 51 secondsit's basically like the new invoices is going to be always first of the array. That's what this line meanings actually.
1:11:011 hour, 11 minutes, 1 secondNow we have to see uh select some fields from here like ID. We need we need our
1:11:071 hour, 11 minutes, 7 secondsStripe customer ID, the status of the payment, we need the currency,
1:11:141 hour, 11 minutes, 14 secondswe need the amount due number, the amount paid, the hosted invoice
1:11:221 hour, 11 minutes, 22 secondsURL, the invoice PDF, the period start, period end, and invoice creation time.
1:11:321 hour, 11 minutes, 32 secondsThat's all we need and we can save it.
1:11:351 hour, 11 minutes, 35 secondsSo when you're adding all of these which fields then we're ignoring you can check it which fields I think there are some options as well which we're ignoring or
1:11:441 hour, 11 minutes, 44 secondseven you could you we could do one thing I think we're adding most of the fields we don't need any of these so we can just just select yeah that's also fine
1:11:531 hour, 11 minutes, 53 secondsafter this we can return the invoices yeah done
1:12:001 hour, 12 minutesthen next uh next one we can do it later. For now, let's come back to our
1:12:071 hour, 12 minutes, 7 secondsfront end and let's at least do something like redirect our users to the payment page and then we can work with
1:12:151 hour, 12 minutes, 15 secondsbasically the web hook. And when we're going to work with the web hook, we have to like store the invoices, we have to
1:12:221 hour, 12 minutes, 22 secondsupdate the plan, we have to create like uses table. So everything we have to do
1:12:291 hour, 12 minutes, 29 secondsat that time. So yeah not uses table I think because users table uh table uses table yeah uses table is
1:12:381 hour, 12 minutes, 38 secondsautomatically getting created from or this uses code you can already see it in here so we don't need that but for now
1:12:451 hour, 12 minutes, 45 secondslet's come back to the front end uh one thing is missing yet that is our controller let's finish it it's going to
1:12:541 hour, 12 minutes, 54 secondsbe very small controller let's add our billing controller class and call our billing service.
1:13:071 hour, 13 minutes, 7 secondsThen we need onget endpoint for getting the current plan and use gs. We need our
1:13:141 hour, 13 minutes, 14 secondsog and uses g boot and import request from nestjs common. After this we need our
1:13:241 hour, 13 minutes, 24 secondsinvoices. So we can add this get and we're right now we we're going to get the invoices.
1:13:311 hour, 13 minutes, 31 secondsThe next one the most important one for creating our payment session or the
1:13:381 hour, 13 minutes, 38 secondsbilling session and another one is for our portal access
1:13:461 hour, 13 minutes, 46 secondsthe manage billing. Yeah that's it for now. It's good enough. We can come back to our billing module and we can right
1:13:541 hour, 13 minutes, 54 secondsnow add our billing controller and billing service. Yeah. And finally we
1:14:031 hour, 14 minutes, 3 secondscan come back to our app module. We can add our billing module.
1:14:101 hour, 14 minutes, 10 secondsThere you go. All good. Close everything.
1:14:151 hour, 14 minutes, 15 secondsCome back to our apps. main dashboard app and the settings page. Yeah, right
1:14:221 hour, 14 minutes, 22 secondsnow we have to do work in here. So, let's go. All right. So, from here, first task uh our first task is we have
1:14:301 hour, 14 minutes, 30 secondsto update this plan details because this is older one and we're actually updating our plan details a little bit. First
1:14:381 hour, 14 minutes, 38 secondshere let's add a new field called description and we also need on CTA like call to action that's start free
1:14:461 hour, 14 minutes, 46 secondsand in features we're having right now level and included or not like that mark so level is like 10,000 events for the
1:14:551 hour, 14 minutes, 55 secondsfree plan included true retention 7 days then searcher production events full SDK active alerts not webbook events not
1:15:041 hour, 15 minutes, 4 secondsemail support not and logs limit here. Basically, we can say actually events or logs both of them
1:15:131 hour, 15 minutes, 13 secondsare basically same for the starter everything is okay. We need description
1:15:191 hour, 15 minutes, 19 secondshere and CTA as well. Then for the features and also we need another like
1:15:261 hour, 15 minutes, 26 secondsbatch like popular true. Then for the features, it's basically going to be almost similar. Just 100,000 events,
1:15:341 hour, 15 minutes, 34 seconds30-day retention, five active alerts, webbook notifications, email support, and full SDK access locks limit, which is basically 100,000 events per month.
1:15:451 hour, 15 minutes, 45 secondsFor pro, uh for pro, the pricing is going to be a little bit different now. It's actually going to be $24.99.
1:15:541 hour, 15 minutes, 54 secondsAnd description is going to be for growing products with real customers.
1:15:581 hour, 15 minutes, 58 secondsCTA is going to be choose pro. And for the features, we're going to change it.
1:16:051 hour, 16 minutes, 5 secondsIt's not going to be 1 minute uh 1 million logs. It's going to be 500,000.
1:16:091 hour, 16 minutes, 9 seconds60 retention 12 active alerts and web notification, email support, full SDK access, and logs limit one. Not 1 million. It's going to be 500.
1:16:221 hour, 16 minutes, 22 secondsuh 500k events.
1:16:271 hour, 16 minutes, 27 secondsYeah, for enterprise it's going to be actually business not enterprise. We have to change this name and we can call
1:16:361 hour, 16 minutes, 36 secondsit business business and price is going to be $49.99.
1:16:451 hour, 16 minutes, 45 secondsdescription we're going to add on description like this. Then CTA that
1:16:511 hour, 16 minutes, 51 secondsshows business and the features array something like this. Yeah. Then logs
1:16:591 hour, 16 minutes, 59 secondslimit is going to be uh on million events for a month. Yeah. Now uh after this
1:17:071 hour, 17 minutes, 7 secondswe need on plan key something like this that type of plan details and we need on helper function that is plan key or not.
1:17:191 hour, 17 minutes, 19 secondsThen we need our current plan access which is going to be something
1:17:271 hour, 17 minutes, 27 secondslike this current plan. So current plan is already in there. We just need to delete that.
1:17:361 hour, 17 minutes, 36 secondsAnd for the selected plan, then for the selected plan, it's basically going to be I think empty array
1:17:451 hour, 17 minutes, 45 secondsor we don't need the selected plan anymore at this moment. Yeah, actually we don't need this anymore. Let's come back to
1:17:531 hour, 17 minutes, 53 secondsdown here. And in the current plan, we are we are going to change it. So current plan we are saying plan data but
1:18:011 hour, 18 minutes, 1 secondwe don't have access in plan data. So for now we can say for the current plan that it's only free. Yeah current plan
1:18:091 hour, 18 minutes, 9 secondsdetails this is fine and that's it. Now the UI is giving some
1:18:171 hour, 18 minutes, 17 secondserror which is very natural. We have to actually update few things from here.
1:18:231 hour, 18 minutes, 23 secondsSo let's come back to down in here just
1:18:311 hour, 18 minutes, 31 secondslike delete this div completely and wait here it was basically the current plan features.
1:18:431 hour, 18 minutes, 43 secondsUh no no not we don't need to delete it.
1:18:451 hour, 18 minutes, 45 secondsIt's all good but one minute it's basically yeah we we don't need this actually. We can delete
1:18:541 hour, 18 minutes, 54 secondsand here change plan.
1:18:591 hour, 18 minutes, 59 secondsHere we can remove this select because we're going to have our another div.
1:19:081 hour, 19 minutes, 8 secondsAnd still there are some other errors.
1:19:101 hour, 19 minutes, 10 secondsSo for button we also don't need this button. So we can delete it as well.
1:19:201 hour, 19 minutes, 20 secondsYeah. And for uses, I don't think we need the uses as well. So, we can just delete all of them because we're basically changing it to a uh card right
1:19:291 hour, 19 minutes, 29 secondsnow. So, yeah. Current plan free and change plan. Yeah. All good now.
1:19:341 hour, 19 minutes, 34 secondsSo, here I think
1:19:431 hour, 19 minutes, 43 secondswe have to change it the tabs content when it's billing. Here it's good.
1:19:511 hour, 19 minutes, 51 secondsAnd from here we have to delete everything actually. And here we can say
1:19:581 hour, 19 minutes, 58 secondsif our current plan is not free then only add this button in here.
1:20:121 hour, 20 minutes, 12 secondsThe button is basically going to show us that manage billing. Yeah. And credit card
1:20:201 hour, 20 minutes, 20 secondsicon here. Otherwise, otherwise for now here let's add null because we're going to add another
1:20:281 hour, 20 minutes, 28 secondslogic. Yeah. Then after this we can add another div
1:20:341 hour, 20 minutes, 34 secondswith class name grid. grid calls one gap
1:20:431 hour, 20 minutes, 43 secondsis going to be four from LG grid calls two
1:20:511 hour, 20 minutes, 51 secondsand from XL screen grid calls uh three
1:21:001 hour, 21 minutesuh actually I think four four will match better. Yeah. And then here we can say object.
1:21:081 hour, 21 minutes, 8 secondsSo object dot entries we're going to pass the plan details as an array
1:21:181 hour, 21 minutes, 18 secondsand inside we can say key of our
1:21:251 hour, 21 minutes, 25 secondsplan details then type of plan details then the key of and type of plan details.
1:21:361 hour, 21 minutes, 36 secondsYeah. And then finally here we can add on map
1:21:461 hour, 21 minutes, 46 secondssomething like this that plan key and plan
1:21:531 hour, 21 minutes, 53 secondsand we can return it. Here we can say con our is current
1:22:021 hour, 22 minutes, 2 secondsplan the plan key and the current plan if it's matching
1:22:091 hour, 22 minutes, 9 secondsthen that's the current plan. Same goes for the is popular.
1:22:171 hour, 22 minutes, 17 secondsSo something like this that sorry let let me finish it looks
1:22:241 hour, 22 minutes, 24 secondscrazy level messy and uh still the error is here because we have to return something
1:22:321 hour, 22 minutes, 32 secondsand then no error. Now here for the is popular here we are saying plan data however we don't have the plan data yet we can basically add the plan data let's
1:22:411 hour, 22 minutes, 41 secondsadd it we already do have the API so we should basically add it in here it's very very important so plan data is
1:22:491 hour, 22 minutes, 49 secondsbasically going to fetch the data for us like the current plan for the user so here
1:22:571 hour, 22 minutes, 57 secondswe can say data which name we can give it plan data and is loading. We can add here use query.
1:23:081 hour, 23 minutes, 8 secondsWe can call the current plan response
1:23:171 hour, 23 minutes, 17 secondsand inside here we can add our query key.
1:23:221 hour, 23 minutes, 22 secondsThe query function and this type we have to create this type. It's basically going to be very
1:23:291 hour, 23 minutes, 29 secondssmall. So let me add it in here. We also need some other type for our billing
1:23:361 hour, 23 minutes, 36 secondssession response. Then for our um billing portal session response and
1:23:441 hour, 23 minutes, 44 secondsour uh actually that's it just one more and that is for our payment invoice. Very very important.
1:23:551 hour, 23 minutes, 55 secondsAnd then the last one is the payment invoice response. Yeah, that's all. We can come back here.
1:24:031 hour, 24 minutes, 3 secondsNow the query function in our query function we can right now add uh our we need first our like authentication token.
1:24:151 hour, 24 minutes, 15 secondsSo we can use it from get token cl nextjs. Then we can send the API request to this endpoint.
1:24:241 hour, 24 minutes, 24 secondsAnd here you can see we're sending a fetch request to our billing and invoices.
1:24:321 hour, 24 minutes, 32 secondsSorry, I did a small mistake here. Not invoices. The endpoint is wrong. It should be billing and current. Yeah,
1:24:411 hour, 24 minutes, 41 secondsif response okay is false, it means something is wrong. Otherwise, we can
1:24:481 hour, 24 minutes, 48 secondsreturn the response.json JSON and here
1:24:531 hour, 24 minutes, 53 secondsenabled if is loaded is true and the is signed in is true.
1:25:031 hour, 25 minutes, 3 secondsSo is signed in we have to take it from this use user. Yeah,
1:25:111 hour, 25 minutes, 11 secondsstill there is on error which is fine and but here you can see it's done. It's ready. So now if we come back here we
1:25:181 hour, 25 minutes, 18 secondscan fix this error in this return. We have to add something. So for now let's add something like this. And since we're having the plan data
1:25:271 hour, 25 minutes, 27 secondswe can change this our like current plan. So for the current plan we can say
1:25:361 hour, 25 minutes, 36 secondsthat our is plan key and we can pass the plan
1:25:441 hour, 25 minutes, 44 secondsdata dot plan if it's available then plan data dot plan otherwise free. Yeah that's it. We
1:25:541 hour, 25 minutes, 54 secondscan come back to here again and after is popular in here
1:26:011 hour, 26 minutes, 1 secondwe need our is the user plan is free or not. So we can say plan key if it's free
1:26:071 hour, 26 minutes, 7 secondsthen it's free and then we need another state another variable actually that uh
1:26:151 hour, 26 minutes, 15 secondsis the creating the session. So for now let's we don't need that that's basically connected with our mutation and we we're going to cure that after
1:26:231 hour, 26 minutes, 23 secondssome time and here let me add on first bracket and for the div let's let's add our plan key as the
1:26:311 hour, 26 minutes, 31 secondsindex for the class name here we have to add class name like this
1:26:381 hour, 26 minutes, 38 secondsyou can just read it by yourself and then style for the border color if it's the popular one then this one otherwise this token start border. Yeah.
1:26:511 hour, 26 minutes, 51 secondsThen we can add here on more div and another div with
1:26:561 hour, 26 minutes, 56 secondsclass name like this. Then inside here we can add on div.
1:27:051 hour, 27 minutes, 5 secondsUh finish it. So if it's is popular then this text otherwise this text. We can
1:27:121 hour, 27 minutes, 12 secondsadd our plan name in here. So when I'm saving it, you can see it's already looking different and it's looking actually beautiful.
1:27:211 hour, 27 minutes, 21 secondsAfter this, we need to check the is popular. If it's popular, then we can add the popular merc.
1:27:341 hour, 27 minutes, 34 secondsHowever, no one is saying it's popular. So plan data plan if it's free.
1:27:421 hour, 27 minutes, 42 secondsYeah. And let me check plan data.plan if it's free
1:27:491 hour, 27 minutes, 49 secondspopular in plan and plan data popular otherwise false. So plan data
1:27:591 hour, 27 minutes, 59 secondsit should work here. Let me check again the popular true. Okay fine. We're going to check it later. It's not a big issue.
1:28:071 hour, 28 minutes, 7 secondsWe can check it later. Let's make it dynamic. Now after this line we need another div something like this.
1:28:181 hour, 28 minutes, 18 secondsNow inside here we can add our plan price something like this. Then the like
1:28:261 hour, 28 minutes, 26 secondsmonthly price. So you can see the styling and here you go.
1:28:331 hour, 28 minutes, 33 secondsAfter this we can add the description.
1:28:411 hour, 28 minutes, 41 secondsSo I think I did some small mistake.
1:28:521 hour, 28 minutes, 52 secondsThis div is basically this one. Yeah.
1:28:571 hour, 28 minutes, 57 secondsAnd we don't have any another div like this. We're having it.
1:29:071 hour, 29 minutes, 7 secondsOkay, let let's create another div in here like this now. Let's see.
1:29:171 hour, 29 minutes, 17 secondsOh, something is wrong. Create call this one.
1:29:291 hour, 29 minutes, 29 secondsThis is the thing which I don't like regarding CSS. Ah, I think I found the
1:29:361 hour, 29 minutes, 36 secondsmistake. So here, this flex. Where is the flex? Okay, I
1:29:431 hour, 29 minutes, 43 secondsforgot this big class name in here before this one.
1:29:491 hour, 29 minutes, 49 secondsWhat is this? Round eight. And after the taps.
1:29:571 hour, 29 minutes, 57 secondsYeah, that's fine. But here, this is also fine. We need here another div like this. Okay.
1:30:041 hour, 30 minutes, 4 secondsAnd we can finish that basically here.
1:30:141 hour, 30 minutes, 14 secondsYeah. So first fix uh not fully fixed yet. Let's see again.
1:30:241 hour, 30 minutes, 24 secondsSo this is the space Y4 and it's basically adding everything together.
1:30:351 hour, 30 minutes, 35 secondsYeah. Space Y4.
1:30:421 hour, 30 minutes, 42 secondsAnd here all good.
1:30:491 hour, 30 minutes, 49 secondsBut here let me check again. I made this styling things.
1:30:571 hour, 30 minutes, 57 secondsOkay, I found another problem in here where where we're not finishing the div in here.
1:31:041 hour, 31 minutes, 4 secondsSo we have to basically add here another div just an empty div
1:31:141 hour, 31 minutes, 14 secondssomething like this. So this solution done for the manage billing we have to add here
1:31:231 hour, 31 minutes, 23 secondsstyling which I forgot completely something like this
1:31:301 hour, 31 minutes, 30 secondsyou can see slowly yeah so manage peeling so that fixing
1:31:391 hour, 31 minutes, 39 secondsdone now the main part which is not working yet is this is inside our grid so let's Check inside our grid. What's wrong here?
1:31:501 hour, 31 minutes, 50 secondsAnd grid grid calls one four grid calls to grid calls four. All good.
1:32:001 hour, 32 minutesInside here, this is our div. All good.
1:32:101 hour, 32 minutes, 10 secondsAnd this is another div
1:32:201 hour, 32 minutes, 20 secondswhere this div is finishing here then is popular. Uh I think I found another mistake here.
1:32:291 hour, 32 minutes, 29 secondsThere should be on more diff should be ending.
1:32:351 hour, 32 minutes, 35 secondsThen after this there is a paragraph. Yeah. And here should be one div. Yeah.
1:32:461 hour, 32 minutes, 46 secondsOkay. Finally. So I don't like this because of this reason. I don't like CSS because if you somehow like miss on
1:32:541 hour, 32 minutes, 54 secondssmall thing it it will just look very weird and you have to wait for a long I mean you have to search it through what's wrong what's wrong. You have to like inspect everything and do it by yourself. But yeah, finally we're here.
1:33:061 hour, 33 minutes, 6 secondsEverything is working. Now we can start the next part. After description,
1:33:121 hour, 33 minutes, 12 secondsuh what next? After description, we can come inside this div. And inside this div, we need our like the features map.
1:33:211 hour, 33 minutes, 21 secondsSo we can say plan our the features and map.
1:33:281 hour, 33 minutes, 28 secondsAnd here we have to add our div with key the feature dot level.
1:33:381 hour, 33 minutes, 38 secondsThe class name is going to be something like this.
1:33:451 hour, 33 minutes, 45 secondsYeah. So we're saying the included then this text color otherwise this text color and like the normal styling that
1:33:531 hour, 33 minutes, 53 secondsflex items in gap 3. Inside here we have to add another span
1:34:001 hour, 34 minutesspan and the class name is going to be a little bigger. Let me show you something like this. So features included and is
1:34:091 hour, 34 minutes, 9 secondspopular than this color otherwise this color you can read slowly if you even if you hover it you can see the
1:34:161 hour, 34 minutes, 16 secondsvalue. If you're having the tailwind intellisense uh and intellisense extension in your VS code then you can just check it out.
1:34:261 hour, 34 minutes, 26 secondsJust hover it you'll get the value for those CSS classes here which is included then check
1:34:341 hour, 34 minutes, 34 secondsotherwise X icon. So something like this. Yeah. Then after this we can add the level for the feature. Yeah. of
1:34:431 hour, 34 minutes, 43 secondsmagic. You can see these are not available and all of them these availables.
1:34:501 hour, 34 minutes, 50 secondsUh after this we need our another button.
1:34:581 hour, 34 minutes, 58 secondsThis is basically the main button. So button here we can add on class name
1:35:081 hour, 35 minutes, 8 secondssomething like this. and disabled. We have to make it disabled
1:35:141 hour, 35 minutes, 14 secondsif the is current plan or is free plan or is loading.
1:35:251 hour, 35 minutes, 25 secondsYeah, for now that's fine. And after doing on click for now we don't need to do anything because we're right now just making the UI part. That's fine.
1:35:361 hour, 35 minutes, 36 secondsOtherwise here we can say that plan
1:35:431 hour, 35 minutes, 43 secondsdot CTA. Yeah, we can save it. And here we go. Start free or get started or choose pro or choose business.
1:35:511 hour, 35 minutes, 51 secondsPerfect.
1:35:531 hour, 35 minutes, 53 secondsSo everything here ready now except one thing. When I clicking here, nothing is happening. So since our API is also
1:36:001 hour, 36 minutesready, we're going to fix it now. And however, one thing is not working. The is popular. This line is not working.
1:36:101 hour, 36 minutes, 10 secondsAnd why not working? We're going to check it now. The is popular is why not working.
1:36:181 hour, 36 minutes, 18 secondsIt's plan data dot plan.
1:36:221 hour, 36 minutes, 22 secondsIf equals to free then boolean popular in plan and plan popular
1:36:321 hour, 36 minutes, 32 secondsotherwise false for
1:36:381 hour, 36 minutes, 38 secondsother things it's actually like let me check one thing when we're fetching our
1:36:461 hour, 36 minutes, 46 secondsplan data is it working or not no current is working you can see plan starter. All right. So plan is starter.
1:36:551 hour, 36 minutes, 55 secondsThat's why I think it's not showing the user all the user plan is already starter. That's why it's not showing
1:37:041 hour, 37 minutes, 4 secondsanything because it's not free user. I already like subscribed to a plan from the production version.
1:37:121 hour, 37 minutes, 12 secondsUh is this the reason? I guess it it can be the reason because if you read the logic again that we're saying
1:37:181 hour, 37 minutes, 18 secondssorry not here in here that plan data is free only then
1:37:271 hour, 37 minutes, 27 secondsotherwise we don't need that. So here if we add it opposite you can see the popular is here but since we're already subscribed we don't need to see the popular mark here again.
1:37:391 hour, 37 minutes, 39 secondsOkay, no problem. Let's make our billing session mutation now.
1:37:481 hour, 37 minutes, 48 secondsSo we can come back here and here we can say con
1:37:541 hour, 37 minutes, 54 secondscreate our billing session and use mutation.
1:38:041 hour, 38 minutes, 4 secondsHere we can write the mutation function on async function.
1:38:121 hour, 38 minutes, 12 secondsWe're going to exclude the plan key and free.
1:38:201 hour, 38 minutes, 20 secondsYeah.
1:38:221 hour, 38 minutes, 22 secondsThen for the token we can fetch the token in here and then we can write our API code.
1:38:321 hour, 38 minutes, 32 secondsSo fetch and this is the endpoint we're going to
1:38:401 hour, 38 minutes, 40 secondssend on post request because the endpoint is post endpoint and headers we have to pass our
1:38:501 hour, 38 minutes, 50 secondsauthorization the beer token.
1:39:031 hour, 39 minutes, 3 secondsYeah. And content
1:39:121 hour, 39 minutes, 12 secondstype which is going to be application / JSON. Yeah. And we can pass the body
1:39:221 hour, 39 minutes, 22 secondsin here the JSON dot stringify and plan. We can save it.
1:39:331 hour, 39 minutes, 33 secondsHere we can say if the response do okay is not true then con error
1:39:421 hour, 39 minutes, 42 secondsawait response.json JSON dot catch.
1:39:501 hour, 39 minutes, 50 secondsNo. Yeah. Otherwise, we can throw a new error. We can pass the error message in
1:39:581 hour, 39 minutes, 58 secondshere or fail to create
1:40:061 hour, 40 minutes, 6 secondsa billing a billing session. Yeah.
1:40:131 hour, 40 minutes, 13 secondsOtherwise we can return the response dojson uh sorry actually outside yeah
1:40:211 hour, 40 minutes, 21 secondsas our billing session response. Now on success when it successes
1:40:301 hour, 40 minutes, 30 secondssince we're using like tack query it's very easy for us. So on success uh I did one small mistake here URL.
1:40:411 hour, 40 minutes, 41 secondsNow inside here we can say window dot location dot href. So we're basically going to redirect the user to that link.
1:40:531 hour, 40 minutes, 53 secondsYeah. If it catch any error on error we're going to pass the error message.
1:41:041 hour, 41 minutes, 4 secondsSo something like this. So let's import toast from our sooner library.
1:41:111 hour, 41 minutes, 11 secondsYeah, toast from sooner.
1:41:151 hour, 41 minutes, 15 secondsExactly. We don't need this select component or anything like that. We can just delete all of them. We can save it
1:41:251 hour, 41 minutes, 25 secondsafter on error. Uh we don't need anything else. We can copy the create billing session now.
1:41:331 hour, 41 minutes, 33 secondsAnd we can come back here inside this after this is free plan we
1:41:401 hour, 41 minutes, 40 secondsneed another variable. It's basically going to return a boolean that is uh creating the session.
1:41:511 hour, 41 minutes, 51 secondsSo create billing session dot is pending and create billing session dot variables
1:42:011 hour, 42 minutes, 1 secondmatching with our plan key then it's going to be like the disabled the button is going to be disabled.
1:42:131 hour, 42 minutes, 13 secondsSo we can come here after is loading
1:42:211 hour, 42 minutes, 21 secondswe can add this and sorry we can add create billing session then is pending
1:42:301 hour, 42 minutes, 30 secondsand for this line we have to basically we need it in here after uh we need first in one click. So
1:42:381 hour, 42 minutes, 38 secondswe can say on click if is free plan
1:42:461 hour, 42 minutes, 46 secondsthen return otherwise our create billing session dot
1:42:531 hour, 42 minutes, 53 secondsmutate we're going to pass the plan key in here.
1:43:001 hour, 43 minutesThen inside this we can say is creating this session then generating
1:43:091 hour, 43 minutes, 9 secondspayment link otherwise is current plan or is loaded true
1:43:201 hour, 43 minutes, 20 secondsthen current plan otherwise loading otherwise Guys,
1:43:301 hour, 43 minutes, 30 secondsthis our plancta uh plancta. What's wrong?
1:43:421 hour, 43 minutes, 42 secondsActually, we don't need this second bracket since already we're inside the second bracket. That's why.
1:43:491 hour, 43 minutes, 49 secondsYep. Now, if we hit this choose pro, you can see generating payment link. And
1:43:561 hour, 43 minutes, 56 secondslet me see is there anything wrong? It will tell us. I think there is something wrong. Let's check.
1:44:051 hour, 44 minutes, 5 secondsNo. And why it's taking unlimited time.
1:44:121 hour, 44 minutes, 12 secondsDid you do any mistake? Uh let's check one thing.
1:44:241 hour, 44 minutes, 24 secondsSo create billing session we're saying we're sending it to billing is our endpoint is only billing
1:44:381 hour, 44 minutes, 38 secondsbilling uh yeah our endpoint is actually on the billing what's about our bear token
1:44:471 hour, 44 minutes, 47 secondstoken all good no it's working you can see So it was taking some long time. I don't know it
1:44:551 hour, 44 minutes, 55 secondscan happen sometimes for networking reason it takes some times but yeah it's redirecting us to our checkout link. Let
1:45:011 hour, 45 minutes, 1 secondme show you again. So hit choose pro actually let me give reload.
1:45:121 hour, 45 minutes, 12 secondsYeah and choose pro.
1:45:171 hour, 45 minutes, 17 secondsOh very slow. Oh now it's here. Yeah, you can see it's actually redirecting us. Even it's saying Vidbox Pro because I was basically using another product
1:45:261 hour, 45 minutes, 26 secondsID. That's why. But it's actually working. Everything is working. But if we do the payment, it's not going to activate this pro plan for this user.
1:45:371 hour, 45 minutes, 37 secondsThe reason is the user like we still have to set up the web hook endpoint and then everything will work. So we're going to do that right now.
1:45:471 hour, 45 minutes, 47 secondsFirst let's do one thing an important thing which I forgot and that is we have to go back to our sidebar component again.
1:45:581 hour, 45 minutes, 58 secondsSo let's come back in our layout and dashboard sidebar.
1:46:061 hour, 46 minutes, 6 secondsFrom here we can fetch our user plan.
1:46:121 hour, 46 minutes, 12 secondsWe can basically like add the same code base from here
1:46:201 hour, 46 minutes, 20 secondsand we can paste it in here. We can import the use query from trans tech react query for the type.
1:46:301 hour, 46 minutes, 30 secondsLet's copy this and come back here and paste it. Sorry [clears throat] for my voice.
1:46:381 hour, 46 minutes, 38 secondsAnd get token from cleric. uh nextJS back end and then here we're getting the plan data
1:46:471 hour, 46 minutes, 47 secondsand is loading. So basically we can come back to our like the normal text that free and we
1:46:561 hour, 46 minutes, 56 secondscan change it to the dynamic value. So free is here.
1:47:051 hour, 47 minutes, 5 secondsThe plan is going to be plan data dot plan or free.
1:47:171 hour, 47 minutes, 17 secondsSo for here for style even for our styling we can pass here plan data dot plan.
1:47:311 hour, 47 minutes, 31 secondsYeah.
1:47:331 hour, 47 minutes, 33 secondsAnd we actually don't need this plan anymore then actually. Yeah, we can delete that. And here we're also having business now.
1:47:421 hour, 47 minutes, 42 secondsSo let's add styling for the business.
1:47:451 hour, 47 minutes, 45 secondsWe're basically changing the styling a little bit. So let me add that all of them in here. Now after this
1:47:561 hour, 47 minutes, 56 secondshere we can say is loading if it's true then dot dot dot meaning if it's loading
1:48:041 hour, 48 minutes, 4 secondsotherwise plan data dot plan so we can save it still there is one error where's the error okay is signed in so we can
1:48:131 hour, 48 minutes, 13 secondsbasically take it from here that's it all ready we're good to go you can see
1:48:201 hour, 48 minutes, 20 secondssaying starter because the plan is starter when we're giving on reload dot dot dot then starter perfect the next
1:48:281 hour, 48 minutes, 28 secondsone is we have to set up the web hook from our back end and then after that we can start to break so before starting
1:48:361 hour, 48 minutes, 36 secondslet me do one thing we have to go back actually nothing let's just write this
1:48:411 hour, 48 minutes, 41 secondsstripe login and press enter and
1:48:501 hour, 48 minutes, 50 secondsbasically like allow the access I already have the access so I don't need that I can just write stripe
1:48:591 hour, 48 minutes, 59 secondslisten forward to our at API/ view on/billing and our web then copy this
1:49:061 hour, 49 minutes, 6 secondsAPI signing our signing secret and we make sure that you are coming back to our services env again and here you are
1:49:171 hour, 49 minutes, 17 secondsadding our stripe web hook secret key. So it's basically going to be something like
1:49:251 hour, 49 minutes, 25 secondsthis. Stripe web hook and secret not secret key.
1:49:321 hour, 49 minutes, 32 secondsOkay. Then you can paste it like this or you can you must have to copy your signing secret. Yeah. Otherwise it's
1:49:401 hour, 49 minutes, 40 secondsbasically like it changes every time when I'm restarting it. So be make sure that you're copying your one.
1:49:461 hour, 49 minutes, 46 secondsYeah. That's it. Now after this what next? Let me check my stripe web hook secret.
1:49:551 hour, 49 minutes, 55 secondsYeah, all done.
1:49:591 hour, 49 minutes, 59 secondsSo the next as I said earlier we have to come back to our services source modules billing and again the billing service
1:50:081 hour, 50 minutes, 8 secondsand after this get invoices we have to do the next work which is setting up our
1:50:151 hour, 50 minutes, 15 secondsweb hook. All right. So here we can say as sync and uh our handle
1:50:231 hour, 50 minutes, 23 secondssorry handle stripe web hook and here we can receive the
1:50:331 hour, 50 minutes, 33 secondssignature from stripe. So signature which is going to be string or undefined
1:50:421 hour, 50 minutes, 42 secondsand raw body which is going to be buffer.
1:50:471 hour, 50 minutes, 47 secondsYeah. After this we need our stripe the webbook secret value. So we can receive that in here like this. If there is no
1:50:561 hour, 50 minutes, 56 secondsway secret we can return an error that you must need on webbook secret. I mean for our admin or for the developer we
1:51:031 hour, 51 minutes, 3 secondscan say that webbook secret is not set like if mistakenly somehow the value is not available in our env signature then missing the stripe
1:51:121 hour, 51 minutes, 12 secondssignature then we can add our stripe event in here we can add on try catch statement
1:51:211 hour, 51 minutes, 21 secondsthen inside here we can say event and we can pass our this dotstripe do web hooks
1:51:321 hour, 51 minutes, 32 secondsThen dot construct event we have to pass the raw event
1:51:401 hour, 51 minutes, 40 secondsuh sorry actually raw body not raw event then the signature and the way secret to verify basically the request
1:51:491 hour, 51 minutes, 49 secondsif it's catch any error then we can throw the error message the invalid signature for the stripe request. Yeah,
1:51:591 hour, 51 minutes, 59 secondsafter this we can add on switch case statement. So switch
1:52:061 hour, 52 minutes, 6 secondsevent type if our
1:52:131 hour, 52 minutes, 13 secondsevent type is check out dot session and completed.
1:52:221 hour, 52 minutes, 22 secondsIf it's checkout session completed then we can call our another helper function for activating the plan from this checkout session.
1:52:321 hour, 52 minutes, 32 secondsOtherwise let's finish then we're going to create it. If the case is
1:52:391 hour, 52 minutes, 39 secondsthe customer uh subscription created
1:52:481 hour, 52 minutes, 48 secondsor even the case is customer subscription
1:52:561 hour, 52 minutes, 56 secondsupdated then we have to call our a dot
1:53:031 hour, 53 minutes, 3 secondsactivate the plan actually this one same from subscription and we're going to pass our event dot
1:53:121 hour, 53 minutes, 12 secondsdata dot object as our stripe dots subscription. Yeah.
1:53:201 hour, 53 minutes, 20 secondsThen we can break break the logic in here. Yeah. If the case If
1:53:281 hour, 53 minutes, 28 secondsthe case is our invoice created
1:53:371 hour, 53 minutes, 37 secondsor even if the case is our invoice finalized
1:53:461 hour, 53 minutes, 46 secondsor if the case is invoice payment failed
1:53:541 hour, 53 minutes, 54 secondsor if the case is invoice voided.
1:54:031 hour, 54 minutes, 3 secondsThen await this dot save invoice. We can pass our event dot
1:54:111 hour, 54 minutes, 11 secondsdata dot as our stripe dot invoice.
1:54:181 hour, 54 minutes, 18 secondsYeah, then we can break.
1:54:221 hour, 54 minutes, 22 secondsThen if our case is invoice paid sorry invoice
1:54:301 hour, 54 minutes, 30 secondspaid then uh or even even if the case is
1:54:381 hour, 54 minutes, 38 secondsinvoice payment succeed.
1:54:451 hour, 54 minutes, 45 secondsYeah succeeded. Then in that case here we're going to call the invoice. We basically need the invoice. So we can
1:54:531 hour, 54 minutes, 53 secondssay event dot data dobject as our stripe dot invoice
1:55:011 hour, 55 minutes, 1 secondand we can call our this dots save invoice and we have to pass the invoice in here.
1:55:111 hour, 55 minutes, 11 secondsThat's it. Otherwise next one we have to again call our activate plan from invoice. You have to pass the invoice
1:55:171 hour, 55 minutes, 17 secondsand we have to break it in here. Yeah. Oh, disgusting. Yeah.
1:55:241 hour, 55 minutes, 24 secondsSorry. It was correct actually. Okay.
1:55:271 hour, 55 minutes, 27 secondsAnd otherwise default let's break for rest of the events. Yeah. Then
1:55:361 hour, 55 minutes, 36 secondsreturn received true.
1:55:421 hour, 55 minutes, 42 secondsYep. Now let's start our the helper function the helper module. So private async
1:55:501 hour, 55 minutes, 50 secondsour the activate plan from checkout session it's going to receive the session
1:55:561 hour, 55 minutes, 56 secondswhich type is going to be stripe dot checkout dot session.
1:56:061 hour, 56 minutes, 6 secondsYeah.
1:56:081 hour, 56 minutes, 8 secondsAnd we can say con session data
1:56:151 hour, 56 minutes, 15 secondssession as any. Now we need our user id which we're having in session doclient
1:56:261 hour, 56 minutes, 26 secondsuh client reference ID actually since we we pass it as our client reference ID that's fine.
1:56:321 hour, 56 minutes, 32 secondssession dot meta data otherwise inside we also have it inside our meta data so meta data and then
1:56:411 hour, 56 minutes, 41 secondsuser id yeah then we need our stripe price ID very very important we have to save it
1:56:481 hour, 56 minutes, 48 secondsso we can say session data so basically from here session data yeah
1:56:551 hour, 56 minutes, 55 secondsand then we need our plan we have to use this result paid plan
1:57:031 hour, 57 minutes, 3 secondsbasically on private like helper modules. We can say private result paid plan it's going to pass the raw plan
1:57:111 hour, 57 minutes, 11 secondswhich is going to be string or it can be null as well and the stripe
1:57:191 hour, 57 minutes, 19 secondsprice ID this is also going to be string we can say con plan we can call or normalize
1:57:271 hour, 57 minutes, 27 secondsplan here and we can pass the row raw plan if the plan is
1:57:351 hour, 57 minutes, 35 secondsnot matching with our plan here dot free then return the plan. Sorry, not true.
1:57:411 hour, 57 minutes, 41 secondsReturn the plan otherwise return this dot get uh plan
1:57:511 hour, 57 minutes, 51 secondsfrom price ID another helper function actually helper module and this one it's going to be actually
1:57:591 hour, 57 minutes, 59 secondsanother private module. Let's create it in here. Private get
1:58:061 hour, 58 minutes, 6 secondsplan from price id which is going to receive the stripe price ID
1:58:141 hour, 58 minutes, 14 secondsgoing to be string if no stripe price ID then return the plantier
1:58:231 hour, 58 minutes, 23 secondsdot free. So we we are returning it because in that case we're basically having our users and everything inside that and we can update our database
1:58:301 hour, 58 minutes, 30 secondsaccordingly based on this same value from here. That's why we're basically doing it which is very very important.
1:58:361 hour, 58 minutes, 36 secondsIt's it's all connected with our config file right now. So if we change from one place it's going to change the full
1:58:431 hour, 58 minutes, 43 secondsapplication. Now we need price uh price ID to plan actually price ID to plan. It's going to be string and plant.
1:58:541 hour, 58 minutes, 54 secondsHere inside here we can say this dot our get
1:59:021 hour, 59 minutes, 2 secondsstripe price id starter and otherwise the plantier dot starter.
1:59:131 hour, 59 minutes, 13 secondsYeah.
1:59:141 hour, 59 minutes, 14 secondsSame here. this dot get tribe price id and uh here it's going to be
1:59:221 hour, 59 minutes, 22 secondspro plan here dot pro
1:59:281 hour, 59 minutes, 28 secondsand this dot get stripe price id and business
1:59:361 hour, 59 minutes, 36 secondsand plant here dot business then we can return this price to a price
1:59:441 hour, 59 minutes, 44 secondsid to plan and we can pass the stripe price ID or the plan tier do free.
1:59:541 hour, 59 minutes, 54 secondsYeah, we're good to go. Now let's come back here down again and after this plan
2:00:022 hours, 2 secondswhere's the errors are coming from. Oh yeah, we have to create all of them.
2:00:052 hours, 5 secondsYeah, but yeah, we're we're we're in in our plan now. So the next thing we have to do in here after the plan we're
2:00:122 hours, 12 secondsgetting the plan we can basically say that
2:00:202 hours, 20 secondsuh uh con
2:00:282 hours, 28 secondsplan this is result plan uh uh here.
2:00:412 hours, 41 secondsThis is fine. But activate platform inbox
2:00:532 hours, 53 secondsactually. Yeah, let's let's come back here and we can write a logic in here that if user id or plan if it's matching
2:01:022 hours, 1 minute, 2 secondswith our plantier dot free then we can return it otherwise we need
2:01:102 hours, 1 minute, 10 secondsour stripe customer ID which is going to be something like this and stripe
2:01:172 hours, 1 minute, 17 secondssubscription ID which is going to be something like this and then We can right now call our this
2:01:262 hours, 1 minute, 26 secondsdot activate our plan. Activate our paid plan. So this is different. So activate paid
2:01:332 hours, 1 minute, 33 secondsplan. We have to pass our user ID, the plan, the stripe customer ID, Stripe subscription ID and
2:01:422 hours, 1 minute, 42 secondsstripe price ID. Yeah, let's create our activate paid plan.
2:01:512 hours, 1 minute, 51 secondsSo we can come back here and we can say private async activate paid plan. It's going to
2:01:582 hours, 1 minute, 58 secondsreceive all of these.
2:02:032 hours, 2 minutes, 3 secondsAnd for the type it's all going to be basically string.
2:02:102 hours, 2 minutes, 10 secondsInside here we need our current date. So we can say now and then we need the plan defaults.
2:02:172 hours, 2 minutes, 17 secondsLet's import.
2:02:192 hours, 2 minutes, 19 secondsAnd then we can update this. So we can say update plan sources another helper function. I know
2:02:292 hours, 2 minutes, 29 secondsyou are getting crazy now because we are doing it because then like it's just like a shortcut. You don't have to like write the code same code for so many
2:02:372 hours, 2 minutes, 37 secondstimes. That's why we're basically doing this. We're breaking our this module into multiple private module which is a good practice.
2:02:462 hours, 2 minutes, 46 secondsAnd here we're also receiving the user ID, plan, stripe,
2:02:532 hours, 2 minutes, 53 secondscustomer ID, stripe, subscription ID and everything. And all of them are also going to be string except the updated
2:03:012 hours, 3 minutes, 1 secondwhich is going to be a date. Yeah. Now we're going to update our cache first.
2:03:072 hours, 3 minutes, 7 secondsSo we need to update our LRU cache for the plan for the user plan and the radius key. Then we can change our plan
2:03:162 hours, 3 minutes, 16 secondskey sorry plan cache with this new value and we can expire our we can set on
2:03:232 hours, 3 minutes, 23 secondsbasically on TTL for our radius key for this plan radius key. Then finally we
2:03:312 hours, 3 minutes, 31 secondshave to store it into DB. So this db dotinsert we're inserting it inside our plan table.
2:03:422 hours, 3 minutes, 42 secondsSo dot values here we can add our user ID
2:03:502 hours, 3 minutes, 50 secondsname stripe customer ID stripe subscription ID
2:03:572 hours, 3 minutes, 57 secondsprice ID created at and updated at. Yeah. And on
2:04:042 hours, 4 minutes, 4 secondsconflict do nothing. So we can say on conflict
2:04:112 hours, 4 minutes, 11 secondson conflict yeah correct spelling on conflict actually do update not do nothing
2:04:192 hours, 4 minutes, 19 secondshere we're going to target our schema plan and user ID and set the new value.
2:04:262 hours, 4 minutes, 26 secondsSo set the new plan the new stripe customer ID if it's having then stripe subscription ID the price I updated at
2:04:352 hours, 4 minutes, 35 secondsyeah it's ready actually we can come back back here again
2:04:412 hours, 4 minutes, 41 secondsso from here what next we still have to make some other internal helper so like
2:04:492 hours, 4 minutes, 49 secondsone of on this that update the uses sources
2:04:562 hours, 4 minutes, 56 secondsYeah, here it's going to receive the user ID, the events limit and updated at
2:05:052 hours, 5 minutes, 5 secondsupdated at and sorry user ID events limit and
2:05:152 hours, 5 minutes, 15 secondsupdated at the type is going to be something like this string number and date.
2:05:212 hours, 5 minutes, 21 secondsNow we have to update again our uses. So previously we were updating the plan.
2:05:282 hours, 5 minutes, 28 secondsNow we have to update our uses from the database and from the cache as well. We need the current uses first. We can check it from our cache.
2:05:372 hours, 5 minutes, 37 secondsThen if it's not available in our cache then we're going to check it from our database. So same code in here if
2:05:442 hours, 5 minutes, 44 secondscurrent uses available then define otherwise basically we're checking it. It's basically for the query purpose t.query create dot uses.
2:05:522 hours, 5 minutes, 52 secondsFine. First from our uses table the events used. We need that table. And finally we can add here events used
2:06:012 hours, 6 minutes, 1 secondsomething like this. If the available event used in the current uses in cache then add that otherwise from our record.
2:06:092 hours, 6 minutes, 9 secondsThen finally we can update it with a new users cache.
2:06:192 hours, 6 minutes, 19 secondsAnd then we're basically updating this limit not the used okay because uses is still same
2:06:282 hours, 6 minutes, 28 secondsbut we're just changing the limit for the user because he he just upgraded the plan probably or downgrade the plan. So in those case we have to update the
2:06:362 hours, 6 minutes, 36 secondsevents limit that's what we're doing in here and let's set on TTL for the plan
2:06:442 hours, 6 minutes, 44 secondsradius for this radius key. And then finally we have to update it from our database.
2:06:512 hours, 6 minutes, 51 secondsSomething like this.
2:06:532 hours, 6 minutes, 53 secondsYeah, that's it. Now next one we need for saving our invoice. So private
2:07:012 hours, 7 minutes, 1 secondas save invoice.
2:07:062 hours, 7 minutes, 6 secondsWe can call here invoice which is going to be stripe and invoice type.
2:07:142 hours, 7 minutes, 14 secondsWe're going to receive here our stripe invoice ID. If it's not available then return otherwise we're getting our
2:07:212 hours, 7 minutes, 21 secondsinvoice data in here and invoice data sorry why I'm adding two
2:07:292 hours, 7 minutes, 29 secondssame things or twice we need our stripe customer ID
2:07:372 hours, 7 minutes, 37 secondsand which is going to be something like this type of invoice customer if it's string then invoice customer
2:07:462 hours, 7 minutes, 46 secondsotherwise price invoice customer id. Yeah, we also need our subscription ID
2:07:552 hours, 7 minutes, 55 secondswhich is going to be something like this.
2:08:002 hours, 8 minutesThe type of invoice data subscription if it's string then the subscription otherwise the subscription ID or the subscription details subscription. So
2:08:092 hours, 8 minutes, 9 secondsbasically I copied all most of these basically from the stripe documentation.
2:08:142 hours, 8 minutes, 14 secondsWe don't have to worry about these values. It's basically let's try SDK. They're providing all of these to us.
2:08:222 hours, 8 minutes, 22 secondsThen next we need our get user ID for invoice. We basically need the user ID for the invoice. If no user ID we can
2:08:312 hours, 8 minutes, 31 secondsreturn it. And we have to actually make this. So let's make this.
2:08:362 hours, 8 minutes, 36 secondsIt's going to be very small private module. So, private async. You might be thinking why we are
2:08:452 hours, 8 minutes, 45 secondswriting a lot of code. The reason is we're actually doing a lot of work here. That's why we're writing a lot of code. We're not just handling the payment.
2:08:542 hours, 8 minutes, 54 secondsWe're also handling the invoices. User can download the PDF and everything.
2:08:592 hours, 8 minutes, 59 secondsThen we're like updating our uses and plan. So, we're doing a lot of work. That's why a lot code base in here.
2:09:082 hours, 9 minutes, 8 secondsstripe subscription id which is also going to be string as well. Yeah,
2:09:152 hours, 9 minutes, 15 secondsinside here we need our invoice data first. So something like this.
2:09:232 hours, 9 minutes, 23 secondsThen we need our user ID which we are getting from our the invoice mated user
2:09:292 hours, 9 minutes, 29 secondsID. If it's available very good if it's not available then we have to check it from our database.
2:09:392 hours, 9 minutes, 39 secondssomething like this.
2:09:422 hours, 9 minutes, 42 secondsIf stripe customer subscription ID available then we're checking it from our database table from the our basically the plan table.
2:09:542 hours, 9 minutes, 54 secondsYeah. And plan table means plan table means our this table the plan table in here you
2:10:032 hours, 10 minutes, 3 secondscan see the plan table and if plan do user ID is available then
2:10:102 hours, 10 minutes, 10 secondswe're returning that plan user ID from here otherwise we're checking it from stripe customer ID
2:10:172 hours, 10 minutes, 17 secondsand we're returning the plan user ID. So it's basically like
2:10:242 hours, 10 minutes, 24 secondsthis. If the stripe customer ID available then we're checking it from our basically the plan table again. And this
2:10:322 hours, 10 minutes, 32 secondsone was for subscription ID. So we need both from here. Yeah.
2:10:392 hours, 10 minutes, 39 secondsUh that's it. We need some small helper function like from Unix. It's [snorts]
2:10:462 hours, 10 minutes, 46 secondsbasically for the invoices and is the plan is paid. Uh sorry we also already have it.
2:10:532 hours, 10 minutes, 53 secondsThat's it. And one more for resolving the paid plan. But I guess
2:11:012 hours, 11 minutes, 1 secondwe're having it. Yeah. Yeah, we're we're having it.
2:11:062 hours, 11 minutes, 6 secondsUh that's everything. Now what? Left still. So the left part is
2:11:132 hours, 11 minutes, 13 secondsour activate plan from checkout session. What it's saying?
2:11:192 hours, 11 minutes, 19 secondsThis is giving an error. It's saying subscription is not assignable to session. So,
2:11:292 hours, 11 minutes, 29 secondsuh let me check stripe. It's actually not subscription created. It should be stripe.subscription.
2:11:402 hours, 11 minutes, 40 secondsHere [snorts] it's wrong. That's why it should be activate from activate plan from subscription.
2:11:492 hours, 11 minutes, 49 secondsThat's why. Yeah, it's different.
2:11:532 hours, 11 minutes, 53 secondsSo, we're going to create this one and the activate plan from invoice. It's saying property does not exist on.
2:12:032 hours, 12 minutes, 3 secondsOkay. Yeah, these two we have to create now one by one.
2:12:072 hours, 12 minutes, 7 secondsSo first of all the private async our activate plan from
2:12:152 hours, 12 minutes, 15 secondssubscription which is going to receive the subscription and we can
2:12:242 hours, 12 minutes, 24 secondscheck our subscription data from subscription. We can check back the user ID, the strap price ID, the plan and
2:12:332 hours, 12 minutes, 33 secondsthen finally we can say that if the user ID is not available or plan
2:12:412 hours, 12 minutes, 41 secondshere is free then we're returning it otherwise we're checking for the stripe customer ID
2:12:492 hours, 12 minutes, 49 secondsand then we are activating the plan paid plan for the user.
2:12:572 hours, 12 minutes, 57 secondsYeah, now only one thing is left that is our
2:13:042 hours, 13 minutes, 4 secondssorry here it is the activate plan from invoice.
2:13:092 hours, 13 minutes, 9 secondsSo no problem. Let's finish it. Private as sync activate plan from invoice. We can say invoice which is going to be
2:13:162 hours, 13 minutes, 16 secondsstripe dot invoice. And here we're going to receive the invoice data.
2:13:242 hours, 13 minutes, 24 secondsThe stripe customer ID and subscription ID. It's basically the similar let's try price ID
2:13:342 hours, 13 minutes, 34 secondsand we have to resolve the plan for from our meta data.
2:13:422 hours, 13 minutes, 42 secondsYeah. So we are basically getting it from here the invoice metadata plan or in subscription details metadata plan or
2:13:492 hours, 13 minutes, 49 secondsin sometimes in this parent but usually like in here we're already getting it and these are for just for like supporting value and we also have to
2:13:562 hours, 13 minutes, 56 secondspass the stripe price ID in here. After this we need our user ID. So we can call the helper function. Now you can see the
2:14:032 hours, 14 minutes, 3 secondsbenefit of calling for creating all of these. here right now like currently we're going to use all of them actually
2:14:092 hours, 14 minutes, 9 secondsone by one and then we can call our activate the paid plan for this user
2:14:172 hours, 14 minutes, 17 secondsyeah that's it all ready right now you can see no error no problem and our billing service is actually done right
2:14:242 hours, 14 minutes, 24 secondsnow I know it is not small and it should not be small because there are so many things we're doing in here next work we have to add our web hook endpoint point.
2:14:372 hours, 14 minutes, 37 secondsImport our headers from nest common.
2:14:412 hours, 14 minutes, 41 secondsYeah, we can save it. If you come back here, no error. And right now you will see the magic. So let's come back here.
2:14:512 hours, 14 minutes, 51 secondsHit choose pro.
2:14:552 hours, 14 minutes, 55 secondsIt's right now going to redirect us to here and let's try with untesting that
2:15:012 hours, 15 minutes, 1 second42 42 42 42. a strip card and like this and I'm just writing my name and I'm hitting processing.
2:15:152 hours, 15 minutes, 15 secondsI didn't hit process. I I hit pay button. However, it's done. And you can see our web hook is working.
2:15:262 hours, 15 minutes, 26 secondsWhat it's saying?
2:15:282 hours, 15 minutes, 28 secondsIt should be up to date now. No, there's something wrong. Why
2:15:362 hours, 15 minutes, 36 secondsone minute it didn't work I guess.
2:15:452 hours, 15 minutes, 45 secondsYeah. So it got 400 error. Payment engine succeed but it got 400
2:15:532 hours, 15 minutes, 53 secondsthere's something wrong for sure. Let me see what's wrong.
2:15:582 hours, 15 minutes, 58 seconds400 meanings it find out the end point.
2:16:042 hours, 16 minutes, 4 secondsBut one thing I have to check is it rejecting because because of the core policy course error.
2:16:192 hours, 16 minutes, 19 secondsAh makes sense. Yeah it can it can. The reason is we need to add the raw body to true in
2:16:272 hours, 16 minutes, 27 secondshere. Otherwise, Stripe cannot send request. Not only for Stripe, no one can send request actually. I mean even our
2:16:362 hours, 16 minutes, 36 secondsweb hook where we're basically going to use it and they also cannot send request.
2:16:422 hours, 16 minutes, 42 secondsUh here it's getting an error. We have to call here nest
2:16:502 hours, 16 minutes, 50 secondsexpress application the type and we have to import it from our
2:17:002 hours, 17 minutesthis nest platform from express. Now you can see no error.
2:17:042 hours, 17 minutes, 4 secondsYeah, all makes sense and yep that's all good for now.
2:17:182 hours, 17 minutes, 18 secondswhere we are adding our and one more thing be make sure that you are adding these lines here like create
2:17:252 hours, 17 minutes, 25 secondslocks table oh sorry it's already here init let's
2:17:322 hours, 17 minutes, 32 secondsstream yeah and also our start
2:17:382 hours, 17 minutes, 38 secondsuh start workers it's basically for our okay so it's basically for The
2:17:452 hours, 17 minutes, 45 secondsscheduleuler makes sense not for scheduler it's basically for our all like the event driven architecture.
2:17:562 hours, 17 minutes, 56 secondsYeah. So in infra here we can create our start
2:18:042 hours, 18 minutes, 4 secondsworker.ts file and we can paste this code base.
2:18:112 hours, 18 minutes, 11 secondsSorry we don't have the alert consumer yet. So just this start Lux consumer and we can save it and we can come back here and we can import it.
2:18:212 hours, 18 minutes, 21 secondsYeah, that's all we have to do.
2:18:262 hours, 18 minutes, 26 secondsUh after this we don't need this line anymore. Yeah.
2:18:342 hours, 18 minutes, 34 secondsAnd all good. Enable quotes here. Everything fine.
2:18:442 hours, 18 minutes, 44 secondsWe just have to add on global filter.
2:18:462 hours, 18 minutes, 46 secondsNow that our body purser exception filter.
2:18:552 hours, 18 minutes, 55 secondsSo it's also coming from our filters and body purser exceptions filters.
2:19:032 hours, 19 minutes, 3 secondsIt's basically a new filters. We can create this inside our source folder.
2:19:122 hours, 19 minutes, 12 secondsIt's for filtering some request. Okay.
2:19:162 hours, 19 minutes, 16 secondsFilters and body cursor
2:19:252 hours, 19 minutes, 25 secondsexception dot filter.ts.
2:19:322 hours, 19 minutes, 32 secondsYeah, we need our interface sorry type for body person error.
2:19:412 hours, 19 minutes, 41 secondsWe need to import these few things from let's just slash common.
2:19:462 hours, 19 minutes, 46 secondsNow let's start our class something like this.
2:19:552 hours, 19 minutes, 55 secondsThen here we can catch like the exception type. If the entity too large then we can like return the
2:20:032 hours, 20 minutes, 3 secondserror. It's basically for providing us on like when the
2:20:092 hours, 20 minutes, 9 secondsrequest type when the JSON is too long like like too big. It can happen sometimes that the size is actually too
2:20:172 hours, 20 minutes, 17 secondslarge. In that cases it's not going to stop our server. It's just going to return on simple error message instead
2:20:252 hours, 20 minutes, 25 secondsof stopping our server. That's what this filter is going to do. In that case here
2:20:322 hours, 20 minutes, 32 secondswe can add this. Yeah. So it's actually ready. You can slowly see it. We can
2:20:402 hours, 20 minutes, 40 secondscome back here now and we can basically save it. All ready.
2:20:492 hours, 20 minutes, 49 secondsAll good. I think right now if we try then everything should work. So let's
2:20:572 hours, 20 minutes, 57 secondscome back here again. Try to make the payment.
2:21:082 hours, 21 minutes, 8 seconds4242 42. Oh no.
2:21:182 hours, 21 minutes, 18 secondsAnd for the name you can say anything and subscribe.
2:21:272 hours, 21 minutes, 27 secondsLet's see our wave hook point now. Yeah, 201 you can see it's got succeed.
2:21:352 hours, 21 minutes, 35 secondsAnd here you go. Current plan is basically pro now. So it's working. Wow.
2:21:402 hours, 21 minutes, 40 secondsEverything is working. Even if you come here in plan, here you go. Pro. Great.
2:21:472 hours, 21 minutes, 47 secondsAnd manage building. If you click here, nothing is happening. No worry. Let's make the rest of the part dynamic in our
2:21:552 hours, 21 minutes, 55 secondsfront end. Since we're having everything now, we can just make everything dynamic easily. Let's come back to our main
2:22:022 hours, 22 minutes, 2 secondsdashboard app and settings. And from here, let's make these few things dynamic. All right. So
2:22:112 hours, 22 minutes, 11 secondsnow, first task is we have to fetch our invoices data. So we can say data and we can give this name to invoices
2:22:202 hours, 22 minutes, 20 secondsdata. And for is loading we can say is loading invoices.
2:22:322 hours, 22 minutes, 32 secondsYeah. And we can call here use query and we can pass the payment invoices
2:22:392 hours, 22 minutes, 39 secondsresponse inside here. We have to pass our query key which is going to be the payment invoice. the query function.
2:22:522 hours, 22 minutes, 52 secondsWe have to pass the token and then we have to send on fetch
2:22:592 hours, 22 minutes, 59 secondsrequest to the endpoint in our billing and invoices. If the response is not okay,
2:23:082 hours, 23 minutes, 8 secondsthen throw the error otherwise return our response.
2:23:132 hours, 23 minutes, 13 secondsYeah, that's it. enabled only if the is loaded is true and
2:23:202 hours, 23 minutes, 20 secondsboolean our is signed in so sign in already boolean I don't know why didn't I added
2:23:272 hours, 23 minutes, 27 secondsthis okay fine keep it no problem uh after this we're basically getting our invoices data
2:23:362 hours, 23 minutes, 36 secondsone more mutation we need so let me add that quickly because after this our basically all the work will be done
2:23:442 hours, 23 minutes, 44 secondsexcept is making it dynamic. So after this we'll basically make it dynamic.
2:23:472 hours, 23 minutes, 47 secondsBut we need our create billing session.
2:23:542 hours, 23 minutes, 54 secondsUh sorry why I'm saying not billing session it's create portal session.
2:24:022 hours, 24 minutes, 2 secondsYeah portal session and use mutation.
2:24:082 hours, 24 minutes, 8 secondsSo let's add our mutation function in here.
2:24:132 hours, 24 minutes, 13 secondssomething like this. So, same thing we're doing basically just the endpoint is different and this method is
2:24:202 hours, 24 minutes, 20 secondsdifferent and also definitely here we're yeah just we're we're not even sending any like body or any fields
2:24:292 hours, 24 minutes, 29 secondsjust like sending the token because that's enough for getting access to the portal and return response JSON.
2:24:392 hours, 24 minutes, 39 secondsYeah, after once success we're going to return redirect the user to that URL. If
2:24:452 hours, 24 minutes, 45 secondsit's if it catch any error then just show us the error message. That's it.
2:24:522 hours, 24 minutes, 52 secondsAll done. Now let's make the invoices per dynamic. So in here in the invoices
2:25:012 hours, 25 minutes, 1 secondscroll down invoice ID and everything in here invoices.
2:25:072 hours, 25 minutes, 7 secondsBasically here let me do one thing.
2:25:112 hours, 25 minutes, 11 secondsUh we can cut all of this and we can say if
2:25:182 hours, 25 minutes, 18 secondsour is loading invoice is true then on table row
2:25:282 hours, 25 minutes, 28 secondson table cell and we can say loading invoices.
2:25:382 hours, 25 minutes, 38 secondsOtherwise we can paste that same thing again but this time let's add on fragment. Yeah we can paste everything.
2:25:492 hours, 25 minutes, 49 secondsAnd here in this table cell call span is going to be five. Class name H24 text center.
2:26:002 hours, 26 minutesThat's it. That's all. We can save it.
2:26:022 hours, 26 minutes, 2 secondsNow we can come back here and it's still saying that no invoice is
2:26:092 hours, 26 minutes, 9 secondsavailable because invoices is basically still empty. We have to say invoices
2:26:162 hours, 26 minutes, 16 secondsdata dot invoices or an empty array. It can return some errors but no it didn't.
2:26:242 hours, 26 minutes, 24 secondsWow. Great. Okay fine. But still we have to change in here especially these values
2:26:302 hours, 26 minutes, 30 secondslike here in here invoices.length L uh sorry here
2:26:372 hours, 26 minutes, 37 secondsinvoice id fine here it should be stripe invoice
2:26:462 hours, 26 minutes, 46 secondsthen underscore id and here we can delete and we can call
2:26:532 hours, 26 minutes, 53 secondsour format invoice date this is on helper function small and then format
2:27:022 hours, 27 minutes, 2 secondsour invoice amount and then the invoice and otherwise all good
2:27:102 hours, 27 minutes, 10 secondshere download PDFs it's going to be a little different for the on click so
2:27:162 hours, 27 minutes, 16 secondsfirst for the disabled if there is no invoice
2:27:252 hours, 27 minutes, 25 secondsdot invoice PDF and if the invoice doesn't have any
2:27:322 hours, 27 minutes, 32 secondsposted invoice URL.
2:27:392 hours, 27 minutes, 39 secondsYeah, in that case otherwise one click con
2:27:462 hours, 27 minutes, 46 secondsURL here we can say invoice dot invoice
2:27:542 hours, 27 minutes, 54 secondsPDF or invoice dot hosted invoice URL.
2:28:062 hours, 28 minutes, 6 secondsYeah, that's it.
2:28:082 hours, 28 minutes, 8 secondsNow if there is URL then we have to open that. So if URL then
2:28:152 hours, 28 minutes, 15 secondswindow open URL blank and no opener no refer. So it's basically going to download the file and that's what we want.
2:28:252 hours, 28 minutes, 25 secondsYeah that's it. Now let's make this helper function.
2:28:312 hours, 28 minutes, 31 secondsSo let's go to top and here after this we can say function format invoice date
2:28:382 hours, 28 minutes, 38 secondsit's going to receive the invoice which type is payment invoice and date we're basically getting it from
2:28:472 hours, 28 minutes, 47 secondsinvoice created at if no date then return in not available or not applicable both of them are correct then
2:28:562 hours, 28 minutes, 56 secondslast one we need for our invoice amount helper function
2:29:032 hours, 29 minutes, 3 secondshere at first it's going to receive the amount I mean we need the amount for the invoice amount then we
2:29:122 hours, 29 minutes, 12 secondsneed the currency and then we can return it like this yeah we can save it we can
2:29:212 hours, 29 minutes, 21 secondscome back here we can see loading invoices here you go invoice ID the date the amount and the status and uh actions
2:29:292 hours, 29 minutes, 29 secondsyou can hit download PDF. You can you can see that it's really the invoice and it's perfect.
2:29:392 hours, 29 minutes, 39 secondsYeah, that's it for the invoice ID. Invoice ID here.
2:29:462 hours, 29 minutes, 46 secondsUh invoice ID, I think we can slice it to 0 to 8. That's fine.
2:29:582 hours, 29 minutes, 58 secondsYeah. And then we can add dot dot dot sum. So it's basically here.
2:30:052 hours, 30 minutes, 5 secondsYeah. Makes sense. Now you can see it looks actually perfect. Invoice ID, the date, the amount, the status, and
2:30:142 hours, 30 minutes, 14 secondsactions everything. Everything is actually working. Even if we hit this manage, managed billing. I know it's not working, but no problem. Manage billing.
2:30:252 hours, 30 minutes, 25 secondsLet's make it dynamic. So, manage billing.
2:30:342 hours, 30 minutes, 34 secondsHere we go. So, here let's add an on click.
2:30:402 hours, 30 minutes, 40 secondsIt's going to call our create uh sorry, create billing create portal session. Create portal session dot mutate.
2:30:512 hours, 30 minutes, 51 secondsYeah, when it's creating when it's creating then opening stripe otherwise manage billing.
2:31:032 hours, 31 minutes, 3 secondsNow if we come back here opening stripe and here you go it's redirecting us to
2:31:112 hours, 31 minutes, 11 secondsmanaging the billing. You can see from here you can check everything. You can check your payment methods. You can check every informations from here. You can even cancel the subscription.
2:31:222 hours, 31 minutes, 22 secondsSo everything is perfectly working in billing. The next task is inside alerts.
2:31:282 hours, 31 minutes, 28 secondsSo we can basically start to work for alerts because that's the only left over things right now. Alert is the interesting part because we are also
2:31:362 hours, 31 minutes, 36 secondsmaking here on web hook like mechanism and so many interesting things. So yeah, we can start to work for alerts now. All
2:31:432 hours, 31 minutes, 43 secondsright. So let's come back to our services folder again and in this src folder in this modules folder we can
2:31:512 hours, 31 minutes, 51 secondscreate our new modules by giving them alert. Inside here we can create our alert module.ts
2:32:002 hours, 32 minutesalert uh service.ts and alert controller.ts.
2:32:112 hours, 32 minutes, 11 secondsYeah. Now inside our alert service uh sorry we we can start to work first in alert module we can just like paste the
2:32:192 hours, 32 minutes, 19 secondsboiler plate. So let's copy this from billing module change paste it to here.
2:32:242 hours, 32 minutes, 24 secondsChange this billing module to alert module. We don't need billing controller and billing service in here. So we can
2:32:322 hours, 32 minutes, 32 secondsdelete. We can save. Here you go. This is ready. Now let's come back to our alert service
2:32:392 hours, 32 minutes, 39 secondshere. At first we need uh on like type for our create alert payload. So for
2:32:482 hours, 32 minutes, 48 secondscreating an alert this is going to be the payload name app name condition like the alert condition where there there
2:32:562 hours, 32 minutes, 56 secondsshould be a field operator and value the threshold count and uh window minutes the web hook URL the cooldown uh period
2:33:052 hours, 33 minutes, 5 secondsand the summary. These these are going to be the fields. After this we need an alloy fields like you cannot add any
2:33:132 hours, 33 minutes, 13 secondsfields you want. So these are the alloid fields like type, message, importance, environment, service, subsystem or
2:33:202 hours, 33 minutes, 20 secondsoperation and alloy operators we're currently supporting only equals or does not equals these two operators.
2:33:292 hours, 33 minutes, 29 secondsSame for our important values. It can be critical, high, medium or low. And for
2:33:362 hours, 33 minutes, 36 secondsthe web hook verification TTL we can say it's basically going to be 50 minutes. Yeah.
2:33:442 hours, 33 minutes, 44 secondsNow we can create our alert service. We can use our injectable
2:33:512 hours, 33 minutes, 51 secondsdecorator from this JS common. this we can inject our drizzle db
2:34:002 hours, 34 minutesour radius client and the config service. Yeah.
2:34:082 hours, 34 minutes, 8 secondsNow we can create our first module which is for creating alert. So we can say create alert.
2:34:152 hours, 34 minutes, 15 secondsHere we're going to receive the user plan, the user ID which is going to be string
2:34:222 hours, 34 minutes, 22 secondsand the payload which is also going to be the create alert payload. Yeah. Then
2:34:312 hours, 34 minutes, 31 secondsafter this here if the user plan is free then you cannot basically create alerts.
2:34:392 hours, 34 minutes, 39 secondsSo we can say we can throw an error in here that alerts are not included in the user plan
2:34:462 hours, 34 minutes, 46 secondslike free plan upgrade your plan to start setting up alerts. Yeah. After this we have to check how many alerts
2:34:542 hours, 34 minutes, 54 secondsthe user is currently having because based on the user plan we're limiting the alerts. So we have to import count
2:35:022 hours, 35 minutes, 2 secondsfrom diesel OM from alerts field equals to from diesel OM. Yeah.
2:35:092 hours, 35 minutes, 9 secondsSo we are basically checking the limit. So that's why we're calling here count.
2:35:152 hours, 35 minutes, 15 secondsSo we in this result currently we're having our alerts count. So we can say our alerts count basically inside result
2:35:222 hours, 35 minutes, 22 secondsdot value. Now if the user plan equals to starter
2:35:312 hours, 35 minutes, 31 secondsstarter then we can say if the alert count is actually more than five or more or
2:35:392 hours, 35 minutes, 39 secondsequals to five then you cannot basically create more alerts. You have bridge the five alerts limit for your like plan.
2:35:472 hours, 35 minutes, 47 secondsUpgrade your plan to create more alerts.
2:35:512 hours, 35 minutes, 51 secondsAnd after this we can say if the user plan is true
2:35:582 hours, 35 minutes, 58 secondsand if the alert counts is uh more than or equals to sorry less than no more than or equals to the 12 then actually
2:36:072 hours, 36 minutes, 7 secondsyou cannot create more alerts. Now for business plan for business plan you can if it's like 20 then you cannot like
2:36:152 hours, 36 minutes, 15 secondscreate more you have reached your limit and that's the last option that's we're not saying that upgrade your plan
2:36:222 hours, 36 minutes, 22 secondsbecause business is the last limit so 20 alerts that's literally crazy and I don't think no one is going to create
2:36:292 hours, 36 minutes, 29 secondsthat many alerts but yeah 20 is enough no one need more alert actually
2:36:352 hours, 36 minutes, 35 secondsso validate create alert payload right now we have to create so sorry we have to currently check the payload is it
2:36:442 hours, 36 minutes, 44 secondsmatching with our data structure so this is basically like confirm validation so this is an helper private module so we
2:36:532 hours, 36 minutes, 53 secondscan say private this validate create payload it's going to receive the payload which type is
2:37:002 hours, 37 minutesgoing to be the create alert payload yeah inside here we can say if no
2:37:072 hours, 37 minutes, 7 secondspayload or type of the payload is not
2:37:152 hours, 37 minutes, 15 secondsobject then definitely the like it's not matching we can say then that
2:37:222 hours, 37 minutes, 22 secondsalert payload is required. Yeah. Next one we're right now going to check the everything first the name field cannot
2:37:292 hours, 37 minutes, 29 secondsbe empty. So we're saying we're trimming it. So we're checking even if it's like an empty space that not accepted. You must have to give a name for your alert.
2:37:382 hours, 37 minutes, 38 secondsSame goes for our app name. You also must have to give an app name. The condition it needs to be an array. It
2:37:472 hours, 37 minutes, 47 secondscannot be simple just like an object. So it must need to be an array. That's why we're checking it from here. And it cannot be even zero. Yeah. At least on
2:37:562 hours, 37 minutes, 56 secondscondition is required. Yeah. Now here we can write on for loop. So we can say for con condition
2:38:042 hours, 38 minutes, 4 secondsof the payload conditions because it's basically an array and we have to check inside. Now if the alloy field has this
2:38:132 hours, 38 minutes, 13 secondscondition field if it does not have then we have to return this error that unsupported alert field.
2:38:232 hours, 38 minutes, 23 secondsNow same for our like operators. So just write the logic that if the uh alert
2:38:322 hours, 38 minutes, 32 secondsoperation does not have this conditions start operator then unsupported alert operator. Same goes for the value it also cannot be empty.
2:38:422 hours, 38 minutes, 42 secondsSo if the value is empty then a condition value is required. Now for the importance the importance also must need
2:38:492 hours, 38 minutes, 49 secondsto match with our this values like critical high medium or low. If it does not have inside this like object sorry
2:38:582 hours, 38 minutes, 58 secondsthis array then since this is on set so if it's not having the condition value then importance must need to be critical high medium or low you cannot add anything you want. So yeah that's it.
2:39:112 hours, 39 minutes, 11 secondsNow we can say if there is no number dot is integer. So it's basically the
2:39:202 hours, 39 minutes, 20 secondspayload threshold count if it's not an integer. if it's not a number or
2:39:272 hours, 39 minutes, 27 secondsor the payload dot threshold dot count is actually less than one then there is
2:39:352 hours, 39 minutes, 35 secondssomething wrong for sure right so then in that case we can throw an error that threshold count must need to be at least
2:39:442 hours, 39 minutes, 44 secondsone yeah next one is for our threshold window time so it also must need to be
2:39:512 hours, 39 minutes, 51 secondsmore than one minute. So basically this one is basically the minute and this is the threshold amount which is also need to be minimum one. Now for the web hook
2:40:012 hours, 40 minutes, 1 secondURL it's also required. So if it's not available then web hook URL is required.
2:40:062 hours, 40 minutes, 6 secondsNow one more thing we also have to check our like web hook URL is this a real valid URL or not. If it's not valid then
2:40:142 hours, 40 minutes, 14 secondswe're basically saying web URL must need to be a valid URL. Now uh we also have to check for our cooldown period trim
2:40:232 hours, 40 minutes, 23 secondslike the cool down period time which is also required and the summary which is also required. So these are the fields
2:40:322 hours, 40 minutes, 32 secondsall of them are basically required. So this is our form validation it's ready.
2:40:362 hours, 40 minutes, 36 secondsWe can come back here now again and after this after our validating our form what next?
2:40:462 hours, 40 minutes, 46 secondsWe need to check back our web hook URL. Yeah. So, payload web hook url
2:40:562 hours, 40 minutes, 56 secondsshrink remove all the space and con web hook
2:41:042 hours, 41 minutes, 4 secondsverification key. this dot
2:41:112 hours, 41 minutes, 11 secondsget web hook verification key. So this is very very important.
2:41:202 hours, 41 minutes, 20 secondsSo and then you have to pass the user ID and web hook URL inside this. Now what is this uh web hook verification key? So
2:41:282 hours, 41 minutes, 28 secondsit's basically we are turning this webbook verification key into a like we're
2:41:352 hours, 41 minutes, 35 secondsjust like uh creating on encrypted value that's it for now that's what you have to understand then later on I'll explain it because right now it's not finished
2:41:442 hours, 41 minutes, 44 secondsyet so here created this private module we're going to receive this user ID which is going to be string and the web
2:41:512 hours, 41 minutes, 51 secondshook URL which is also going to be string inside Here we have to create our web
2:42:012 hours, 42 minutes, 1 secondhook digest version and we need to basically import crypto.
2:42:062 hours, 42 minutes, 6 secondsSo here we can say import crypto from
2:42:132 hours, 42 minutes, 13 secondscrypto. Yeah. Then after this we can basically return our the
2:42:222 hours, 42 minutes, 22 secondslike key name which is going to be OML web hook and verified then we have to pass the user ID. Yeah.
2:42:322 hours, 42 minutes, 32 secondsSo like it's unique and also the web hook digest. I forgot it.
2:42:382 hours, 42 minutes, 38 secondsYeah that's it. We can right now save it. We can come back here again. Here we are getting our webbook verification
2:42:462 hours, 42 minutes, 46 secondskey. After the webbook verification key, the next step is
2:42:532 hours, 42 minutes, 53 secondswe have to right now uh verify the web hook. So sorry we have to
2:43:022 hours, 43 minutes, 2 secondscheck the verified web hook. All right. So this is for checking that is this web hook verified
2:43:112 hours, 43 minutes, 11 secondsor not. Okay. So we can say this resate and web hook verification key if it's
2:43:172 hours, 43 minutes, 17 secondsnot verified uh this was basically another step uh
2:43:252 hours, 43 minutes, 25 secondsif it's not verified then this actually I don't think we should use this I mean to be honest let me be honest here I'm
2:43:332 hours, 43 minutes, 33 secondsusing it in the production that you must have to verify your web hook but for this version I don't think I you you should add it since this is I You don't need to add this version.
2:43:442 hours, 43 minutes, 44 secondsOkay. Here basically let me explain what it's doing. So here we are saying that if you're verifying your web hook then
2:43:512 hours, 43 minutes, 51 secondsonly you can create an alert. If you're not verifying your web hook endpoint you cannot create alert. For verifying the web hook you have to send a request to
2:44:012 hours, 44 minutes, 1 secondthat endpoint which you are getting giving in here. But for this version I don't think we we we need to add it. So
2:44:092 hours, 44 minutes, 9 secondswe can just delete it. We don't need any of these actually for now for now we don't need. So we can delete this verification key. Yeah.
2:44:202 hours, 44 minutes, 20 secondsAfter this then we don't need to do anything. We can create the alert.
2:44:262 hours, 44 minutes, 26 secondsSo we can say created alert aait this db dotinsert.
2:44:342 hours, 44 minutes, 34 secondsWe can pass the alerts dot values.
2:44:392 hours, 44 minutes, 39 secondsInside here we have to store the user ID the name which is going to be payload name dot
2:44:482 hours, 44 minutes, 48 secondsframe then the app name then the conditions
2:44:552 hours, 44 minutes, 55 secondssomething like this then the threshold count and the threshold window uh window
2:45:032 hours, 45 minutes, 3 secondsminutes and web URL cool down period and summary. Yeah. And then we have to return it. So we can say returning and
2:45:122 hours, 45 minutes, 12 secondswe don't need to return it manually again. Yeah, that's it.
2:45:182 hours, 45 minutes, 18 secondsAfter this uh after this I think this is good enough.
2:45:262 hours, 45 minutes, 26 secondsYeah, this is good enough. We can just return this created alert. This one.
2:45:332 hours, 45 minutes, 33 secondsYeah, for now it's fine.
2:45:372 hours, 45 minutes, 37 secondsWe don't need advanced level verification in here
2:45:442 hours, 45 minutes, 44 secondsjust like waste of time nothing else I mean definitely you can add but for the version one it's fine since it's on MVP
2:45:512 hours, 45 minutes, 51 secondsversion right now it's fine list alerts it's basically going to list all the
2:45:562 hours, 45 minutes, 56 secondsavailable alerts for the user so string and check the cache key and cache alerts.
2:46:072 hours, 46 minutes, 7 secondsNow, you're probably going to think we're not like when we're creating an alert, we are not caching it, right?
2:46:142 hours, 46 minutes, 14 secondsYeah, it's true. We're not caching it in here. But next time when you are basically like looking for it, I mean
2:46:222 hours, 46 minutes, 22 secondsyou are searching for the alerts, then we are basically adding it into our radius database. And that's the biggest reason the alert doesn't have any TTL.
2:46:312 hours, 46 minutes, 31 secondsIt's staying forever into our radius database. And that's the reason the free plan users they don't have access to our
2:46:392 hours, 46 minutes, 39 secondsalerts mechanism because we cannot make it free. We we have our infrastructure cost for these alerts. Alerts are very
2:46:472 hours, 46 minutes, 47 secondsexpensive for us because radius is always expensive. We cannot like add so many things into radius because it
2:46:542 hours, 46 minutes, 54 secondsdepends on it depends on our RAM and that's the reason alerts are basically expensive for us and it's not only for
2:47:012 hours, 47 minutes, 1 secondus it's for everyone. Now there is a question why I am adding the alerts into radius why what's the reason behind it
2:47:092 hours, 47 minutes, 9 secondswhy we are adding it like all the time in radius without not the reason is alerts needs to be
2:47:172 hours, 47 minutes, 17 secondsactivate all the time and after a certain time let's say after sending every event we have to check the alerts
2:47:242 hours, 47 minutes, 24 secondsif it's matching somehow with the alerts logic or not if it's matching we have to send an like alert or webbook request to that endpoint
2:47:322 hours, 47 minutes, 32 secondsBut if we are adding a TTL it can happen that we have to not it can happen we have to basically after every few
2:47:392 hours, 47 minutes, 39 secondsminutes we have to again fetch it from our database which is very slow and [snorts] for that that type of things it dangerous because alerts are basically
2:47:482 hours, 47 minutes, 48 secondslike for every event we have to check it and that's why it's not free and that's why even we have limitation for the
2:47:562 hours, 47 minutes, 56 secondsalerts like you cannot create any any amount of alerts you want you can see five only in here because the five alerts your five alerts is going to be
2:48:052 hours, 48 minutes, 5 secondsbasically inside our radius database for unlimited time and that's why you are paying money because we are having our
2:48:132 hours, 48 minutes, 13 secondsinfrastructure cost here. Yeah, I hope you're understanding it why we are storing it into alert sorry into radius.
2:48:222 hours, 48 minutes, 22 secondsThen we can say cached alerts then return the JSON.parse parse
2:48:292 hours, 48 minutes, 29 secondsthe cacheed alerts otherwise we have to fetch it. This is not the like inside uh
2:48:362 hours, 48 minutes, 36 secondsI mean uh this is not the alert evaluations. Okay, don't think then why we're fetching it from here because this is just the API call inside our
2:48:442 hours, 48 minutes, 44 secondsdashboard that's different for API call inside our dashboard. If it's not available then we can set it like for
2:48:522 hours, 48 minutes, 52 secondsunlimited TTL like there's no TTL in here. can see the cache key and store the user alerts inside here. That's what
2:48:592 hours, 48 minutes, 59 secondswe need. And then we can return this user alerts. That's it. Now, from now on, this user alert is going to be
2:49:072 hours, 49 minutes, 7 secondsinside our ADK database until someone is deleting it.
2:49:112 hours, 49 minutes, 11 secondsYeah, that's it. Now
2:49:192 hours, 49 minutes, 19 secondsuh and one more thing let me think one thing. Yeah I think we
2:49:272 hours, 49 minutes, 27 secondsshould delete the alerts from here actually.
2:49:332 hours, 49 minutes, 33 secondsBut what's the reason? The reason is when users are adding a new alert we have to update the alert
2:49:422 hours, 49 minutes, 42 secondsright we have to update the alert radius database. So from here we're deleting and at the same time this list alerts API is also being called. So that time
2:49:522 hours, 49 minutes, 52 secondswe're basically adding it again with updated data. Yeah, makes sense. Fine. Now you can also tell
2:49:592 hours, 49 minutes, 59 secondsme what if we do this thing from here, right? From here we can like instead of
2:50:072 hours, 50 minutes, 7 secondsdeleting we could like update it. That's also possible but you just have to like add all of these again in here. And
2:50:162 hours, 50 minutes, 16 secondsactually both of them are correct. You can also add from here and from here as well but it's fine to add from here because we're basically deleting the
2:50:232 hours, 50 minutes, 23 secondsvert keys from there to here. And these two APIs are like both of them are getting called together. When you're creating an alert you're already inside
2:50:322 hours, 50 minutes, 32 secondsthe alert creation page and that alert creation page also calling this list alerts. So that's the reason you can see then it's again adding to our caching
2:50:402 hours, 50 minutes, 40 secondsmechanism. So we don't need to worry for this that the cache is not being updated.
2:50:482 hours, 50 minutes, 48 secondsUh all right now what next? We also have our verify way uh endpoint the most
2:50:562 hours, 50 minutes, 56 secondsimportant one interesting one. So for web hook verification there are so many approach we can follow but like the
2:51:062 hours, 51 minutes, 6 secondscommon one which most of the people use is basically they will give you one way signing secret as like stripe providing
2:51:142 hours, 51 minutes, 14 secondsit to us but for our this application since we are saying one minute we don't want to create any hicc
2:51:242 hours, 51 minutes, 24 secondswaybook or our webbook verification is completely connected with your API PI keys. But how possible? How we are
2:51:312 hours, 51 minutes, 31 secondssecuring the things in here? You can see how we're doing it. First, if your plan is free, again, you cannot like
2:51:392 hours, 51 minutes, 39 secondsdefinitely verify your way book. So even if you're sending request to this endpoint, this will return an error that alerts are not included in your free plan.
2:51:492 hours, 51 minutes, 49 secondsAnd then the most important part, you're providing signature and timestamp. Now
2:51:552 hours, 51 minutes, 55 secondstry to recall again when we were adding that stripe verify webbook you also notice this signature. So what is this
2:52:032 hours, 52 minutes, 3 secondssignature and timestamp and body? So signature is basically like the full payload we are signing it with like on
2:52:122 hours, 52 minutes, 12 secondssecret key and the like signing version or or the encrypted uh sorry not encrypted it's the hashed version I
2:52:202 hours, 52 minutes, 20 secondsguess. No no encrypted I think. So we're using JWT hash or encrypted. Okay, fine.
2:52:252 hours, 52 minutes, 25 secondsAny of them. So, probably hashed version. So, we are uh going to use crypto and then we're going to sign this the payload and that payload is
2:52:342 hours, 52 minutes, 34 secondsbasically the signed version is the signature time stamp when you're sending it. Why we need time stamp? So that we can limit that when we are sending it,
2:52:432 hours, 52 minutes, 43 secondsit must need to be verified within next 1 minute. If someone is trying to verifying it after let's say 1 hour, it
2:52:502 hours, 52 minutes, 50 secondswill be rejected. And the body is basically the normal payload. Yeah, I think so. Normal payload.
2:52:592 hours, 52 minutes, 59 secondsUh body should be normal payload or to be honest I forgot it is the normal
2:53:062 hours, 53 minutes, 6 secondspayload or not. But for here for now this you don't need to worry. This is the verification layer. So I think we
2:53:132 hours, 53 minutes, 13 secondsshould make the like web hook creation first uh creation part first. Otherwise
2:53:212 hours, 53 minutes, 21 secondsthe verify way hook it looks a little bit weird to us right I mean we haven't created the way how we are verifying it
2:53:302 hours, 53 minutes, 30 secondsyeah it makes sense okay fine so we can do that that's not like an hard thing let's come back let's do it now we're
2:53:382 hours, 53 minutes, 38 secondsgoing to do it from where again try to understand in here for alerting we have
2:53:452 hours, 53 minutes, 45 secondsactually we can do like two strategies we have like multiple options in here the alerting service it's not an easy
2:53:532 hours, 53 minutes, 53 secondsthing because think about it thousands of logs are being stored every minute and we have to check all of those logs
2:54:022 hours, 54 minutes, 2 secondswe have to filter them and if somehow any of them are matching with this web hook logics we have to send an alert
2:54:102 hours, 54 minutes, 10 secondsright that's the strategy that that's like what we are saying what we will do so we can do one thing either we can
2:54:182 hours, 54 minutes, 18 secondswrite on scheduleuler like after every certain time, let's say 10 seconds or 20 seconds or 30 seconds, we can check it.
2:54:252 hours, 54 minutes, 25 secondsWe can check it. But that's actually the bad approach. If you're thinking that way, then that's not the solution in here. If you're doing it, that's going
2:54:342 hours, 54 minutes, 34 secondsto work. But that's not the like best approach in here. What's the why it's not the best approach? Because when
2:54:412 hours, 54 minutes, 41 secondsyou're using a scheduleuler, my recommendation is always always try to avoid using the note crown or chrome
2:54:502 hours, 54 minutes, 50 secondsjobs because it always gives a lot of pressure to your system. I'm not saying completely ignore because there are few cases where you need those node crrons.
2:54:592 hours, 54 minutes, 59 secondsBut for this type of verification thing, we can shift those things into an event-driven architecture. And let me be
2:55:072 hours, 55 minutes, 7 secondshonest in the version one of one minute logs this one minute locks I'm not creating it from now I am literally working with the SAS for more than an
2:55:152 hours, 55 minutes, 15 secondsyear and when I like developed the version one I was also following those scheduular approach and then I learned
2:55:232 hours, 55 minutes, 23 secondsit that it's not the best way because we can completely make that event driven event driven meanings let me show you
2:55:312 hours, 55 minutes, 31 secondswhat I mean by event driven so when we are storing the logs from where we're restoring it? We're restoring it from this consumer, right? Our next consumer.
2:55:402 hours, 55 minutes, 40 secondsThat's what our logs are being stored.
2:55:442 hours, 55 minutes, 44 secondsSo from here after the logs being stored, after the message being acknowledged, what if we send another message?
2:55:552 hours, 55 minutes, 55 secondsYou're probably right now a little bit confused. How? From our consumer, we're going to send another message. Yeah, it's possible. from our consumer. We're
2:56:032 hours, 56 minutes, 3 secondsgoing to send another message by using the producer and we will create another consumer for our alert. In that case,
2:56:112 hours, 56 minutes, 11 secondswhat will happen after every time the message are being stored our like the alert sorry not alert our locks consumer
2:56:192 hours, 56 minutes, 19 secondswho is basically like storing those locks. the locks consumer automatically calling to our alert consumer and since
2:56:272 hours, 56 minutes, 27 secondsit has the locks the alert consumer does not need to again fetch the logs. So
2:56:352 hours, 56 minutes, 35 secondslike half of our work half of our work is already done. So when we're basically sending it to alert consumer this
2:56:432 hours, 56 minutes, 43 secondsrequest we are basically forwarding this transformed and the our alert consumer it's right now going to check those logs
2:56:512 hours, 56 minutes, 51 secondswith with the alerts which we stored inside our radius database and it's going to match if somehow it's matching
2:56:582 hours, 56 minutes, 58 secondsthen it's going to send a web request I mean it's going to call like it's going to send a request to that endpoint web
2:57:062 hours, 57 minutes, 6 secondsURL endpoint. Yeah. And from that web hook URL endpoint from your application
2:57:132 hours, 57 minutes, 13 secondstry to understand from your application you are going to call this verify webbook. It's not for us it's for you.
2:57:212 hours, 57 minutes, 21 secondsIt's for the user our users they are going to call this verify webbook to verify it that this request is came from
2:57:282 hours, 57 minutes, 28 secondsour one minute locks. The same thing we also do in stripe. If you notice in stripe,
2:57:362 hours, 57 minutes, 36 secondsif you notice the verify uh like our verification method, we're also calling the stripe verification.
2:57:432 hours, 57 minutes, 43 secondsBut here we didn't update it. This uses source. Okay, fine. No problem. What I was explaining, let me show you.
2:57:522 hours, 57 minutes, 52 secondsSo yeah, handle stripe web hook. You can see we're calling here construct event.
2:58:012 hours, 58 minutes, 1 secondWe're not verifying it by ourself.
2:58:032 hours, 58 minutes, 3 secondsNotice we're also sending the raw body, the signature and the secret for our system. We're not having the secret.
2:58:102 hours, 58 minutes, 10 secondsFine. But Stripe is also following the same approach. We are sending it to Stripe again. What's the reason? Because this
2:58:172 hours, 58 minutes, 17 secondsis open endpoint. Anyone can send request to this handle stripe webbook.
2:58:232 hours, 58 minutes, 23 secondsSo let's say you are saying that hey I made a payment to your website and you're sending a request to this webbook
2:58:292 hours, 58 minutes, 29 secondsendpoint. How can I verify that only stripe send it to us? It can it can
2:58:362 hours, 58 minutes, 36 secondshappen that you are pretending to be stripe. You're saying hey I am stripe and I'm sending you the request. So for
2:58:432 hours, 58 minutes, 43 secondsverifying it for verifying the request we are basically calling this same thing happening here when you're verify uh
2:58:522 hours, 58 minutes, 52 secondssorry when the web hook request is going to your endpoint your endpoint request can be done by some other users as well right because those are basically open
2:59:012 hours, 59 minutes, 1 secondendpoint and you have to like verify that the request is coming from one minute locks that's why you will call
2:59:092 hours, 59 minutes, 9 secondsthis verify web I hope you're understanding it this like the pattern which we are doing in here and that's how most of the way like designing
2:59:172 hours, 59 minutes, 17 secondsmechanism work. Yeah, I hope you understand. Now let's come back to our consumer and we have to finish it. So
2:59:252 hours, 59 minutes, 25 secondslet's come back to here and we can create basically our alert consumer.ts.
2:59:322 hours, 59 minutes, 32 secondsYeah. And inside this consumer right now inside our alert consumer and let's come
2:59:402 hours, 59 minutes, 40 secondsback to this top after this insert actually after this click house insert we can send it so we can say a
2:59:502 hours, 59 minutes, 50 secondsjs.publish so js is basically our like the jet stream. Yeah. So we are publishing on
2:59:592 hours, 59 minutes, 59 secondsnew event in here. Yeah. So the event uh like the event name we're saying logs alert evaluate.
3:00:073 hours, 7 secondsYeah logs alert evaluate. Now we can create an consumer with this name and we can
3:00:153 hours, 15 secondssay uh we have to pass the value. So we are saying JC the J like uh our the JSON encoder basically JC means JSON encoder.
3:00:273 hours, 27 secondsWe're passing the locks the transformed locks and the processed at
3:00:343 hours, 34 secondslike what's the time for the processing time like when we're sending it what's the time of that so processed at is date
3:00:413 hours, 41 secondsdot now yeah that's it now what next here work is done we have to come back to our alert consumer inside our alert
3:00:503 hours, 50 secondsconsumer first we need our that alert condition again the same type which we We're basically adding in here. Then we
3:00:583 hours, 58 secondsalso need our uh and we don't need the crypto. Then in here we also need this like our alert rule.
3:01:073 hours, 1 minute, 7 secondsSo alert rule we're not having it in here. And okay, let's come back here.
3:01:123 hours, 1 minute, 12 secondsThen let me create the alert rule. So it's a new type something like this. You can just check it. Then we need the
3:01:203 hours, 1 minute, 20 secondsfield map something like this. the importance the app name the environment and everything.
3:01:283 hours, 1 minute, 28 secondsUh how did oh okay sorry since it has an space that's why the app name it must need to
3:01:353 hours, 1 minute, 35 secondsbe on like we must need on uh single quotation then this is going to normalize the string value and this
3:01:433 hours, 1 minute, 43 secondsis another helper function for matching [clears throat] the condition
3:01:493 hours, 1 minute, 49 secondsyeah so quite big let me show you here match condition so we are basically
3:01:563 hours, 1 minute, 56 secondsgoing to send the log and condition and this match condition is the function which is going to like filter and check
3:02:033 hours, 2 minutes, 3 secondsis it matching with our condition like is the alert condition matching with the locks or not here this important maps is
3:02:113 hours, 2 minutes, 11 secondsgiving an error because we don't have the important maps in here why we do why we need the important maps because in
3:02:183 hours, 2 minutes, 18 secondsour database if you check our click house database we're not adding as like critical high medium or low as the
3:02:283 hours, 2 minutes, 28 secondsimportance we're adding as number like 1 2 3 or four. So we have to basically change that to the value. So that's why
3:02:363 hours, 2 minutes, 36 secondsyou can see critical means four, high means three, medium means two, low means one.
3:02:423 hours, 2 minutes, 42 secondsSo here for the importance field we're basically changing it. Then we're checking it if it's matching somehow. If this matching with the equals or like
3:02:503 hours, 2 minutes, 50 secondsnot equals then if matching or not matching matching then return the like uh true otherwise return false that yeah
3:02:583 hours, 2 minutes, 58 secondsnothing matched nothing matched with the like condition we're having inside the locks sorry we're having inside the
3:03:053 hours, 3 minutes, 5 secondsalerts nothing matched with the locks in that case what next we have to
3:03:133 hours, 3 minutes, 13 secondsbasically come back uh we we also need our radius access So let's do one thing.
3:03:203 hours, 3 minutes, 20 secondsLet's create our radius.
3:03:253 hours, 3 minutes, 25 secondsSo something like this. Not create. We basically also did this I think inside consumer. So it's the same thing. You can see it's the same.
3:03:343 hours, 3 minutes, 34 secondsNothing changes.
3:03:373 hours, 3 minutes, 37 secondsNow we can basically start our main function that start our alert consumer.
3:03:433 hours, 3 minutes, 43 secondsWe need our NC and JC. So NC is basically the
3:03:503 hours, 3 minutes, 50 secondsuh I forgot it max connection actually I can see and JC is the JSON encoding I guess and then we need our J stream
3:03:593 hours, 3 minutes, 59 secondsconnection. So JS meanings now we need our like the our durable break name the subject which we added here you can see
3:04:073 hours, 4 minutes, 7 secondsthe same subject it must need to be similar.
3:04:113 hours, 4 minutes, 11 secondsSo the subject name was locks alert and evaluate. So here also sim then we have
3:04:183 hours, 4 minutes, 18 secondsto check for the options. So consumer options from nuts. Then we have to pass
3:04:263 hours, 4 minutes, 26 secondsthe durable value in here. We have to like add this manual acknowledgement.
3:04:313 hours, 4 minutes, 31 secondsWe're going to manually acknowledge it the message and acknowledge explicit. We're basically
3:04:393 hours, 4 minutes, 39 secondslike uh setting up some rules for our jade stream.
3:04:443 hours, 4 minutes, 44 secondsAnd then we are delivering it to OML alert worker. The subscription we have to create it. Now
3:04:533 hours, 4 minutes, 53 secondsthen we can say that OML alert consumer started. Now for
3:05:013 hours, 5 minutes, 1 secondlet's add await because it's async. So for message of the subscription we can add and try catch statement here.
3:05:133 hours, 5 minutes, 13 secondsSo we're basically running on loop for like all the messages in the subscription. Then we need the data from the we need to decode the message data.
3:05:233 hours, 5 minutes, 23 secondsMessage data is basically this our transformed locks.
3:05:293 hours, 5 minutes, 29 secondsThen we're going to get our locks from here as like this as like this. Okay, this is the locks.
3:05:383 hours, 5 minutes, 38 secondsThat's why we're getting the locks in here.
3:05:413 hours, 5 minutes, 41 secondsAnd then we have to check we have to basically create a map that locks by user because we have to separate it. We cannot check it from another user right
3:05:503 hours, 5 minutes, 50 secondsanother user locks. The alert is dependent as on the user.
3:05:573 hours, 5 minutes, 57 secondsSo my application locks and your application locks. My alert and your alerts it it cannot be same right? I I think you're understanding it. So that's
3:06:063 hours, 6 minutes, 6 secondswhy we have to check it by users. So we can say const log of locks.
3:06:133 hours, 6 minutes, 13 secondsNow we can filter out if our log by users does not have the user ID then
3:06:203 hours, 6 minutes, 20 secondswe're setting it in here. Yeah, we're basically making on state.
3:06:273 hours, 6 minutes, 27 secondsWe're then adding the gate by here and then we're pushing the logs. Yeah. And then finally we can write here an for
3:06:363 hours, 6 minutes, 36 secondsloop for const user id and user locks of locks by user.
3:06:483 hours, 6 minutes, 48 secondsThen we need our radius key like the OML alerts the cached version of our alerts and no
3:06:573 hours, 6 minutes, 57 secondscache then continue. Yeah, because we cannot fetch from here because it's then going to crash the database because it's
3:07:053 hours, 7 minutes, 5 secondsgoing to call every second this consumer. Yeah. And here now since we're
3:07:123 hours, 7 minutes, 12 secondshaving the rules from our alerts, we can basically run another for loop because this is also an array. We need the every
3:07:213 hours, 7 minutes, 21 secondslike rules in here. Now we need to match check the matched locks. So user logs do filter we can check it with the app name
3:07:313 hours, 7 minutes, 31 secondsand if the if it's matching with the app name then return false. If the app name is not the same in the user like in the
3:07:383 hours, 7 minutes, 38 secondsalert then just like ignore it otherwise we have to check the match condition which is match condition function which we created some time back.
3:07:473 hours, 7 minutes, 47 secondsNow the important part if the matched logs length is zero then we have to do nothing otherwise we have to create an
3:07:553 hours, 7 minutes, 55 secondsbucket so we can say bucket now we have to check for counter key very very important thel alert count how
3:08:043 hours, 8 minutes, 4 secondsmany is there the cooldown key then the count
3:08:113 hours, 8 minutes, 11 secondsand we have to expire them with this It's like TTL.
3:08:183 hours, 8 minutes, 18 secondsYeah. Then if the count is less than the threshold count then continue otherwise the cool down still
3:08:273 hours, 8 minutes, 27 secondsexist and then uh if the cooldown exists then we have
3:08:343 hours, 8 minutes, 34 secondsto return we have to continue because cooldown exist meanings we already alerted the user so we don't need to alert it again otherwise like the alert
3:08:423 hours, 8 minutes, 42 secondscan be every every minute. So which is very which is not correct and we have to then otherwise we have to trigger the alerts. So we can say triggered ad and
3:08:513 hours, 8 minutes, 51 secondswe can call the web hook. So this is the like the last part. We're calling the web hook with the rule and matched locks
3:08:593 hours, 8 minutes, 59 secondsand we also have to set the cooldown key after calling the
3:09:053 hours, 9 minutes, 5 secondsweb hook and we have to like parse cool down into seconds. So it's basically an helper function very small. It's going
3:09:133 hours, 9 minutes, 13 secondsto change the input to like minute to a second. You can see input includes minute. Then it's going
3:09:203 hours, 9 minutes, 20 secondsto change the it's basically setting up the TTL for us. Yeah.
3:09:263 hours, 9 minutes, 26 secondsUh and after this let me finish then we will create this call way. So rule dot last triggered
3:09:353 hours, 9 minutes, 35 secondscall this last trigger trigger that and we have to update the rules now
3:09:423 hours, 9 minutes, 42 secondsand we have to change the radius value again with this radius key and this updated rules
3:09:503 hours, 9 minutes, 50 secondsand then we have to update our alerts if the like if it's
3:09:573 hours, 9 minutes, 57 secondschanged the one minute db.update update.
3:10:043 hours, 10 minutes, 4 secondsWhat's wrong in here? DB. No, DB.date.
3:10:113 hours, 10 minutes, 11 secondsOkay, fine. Let's Let's import our DB in here.
3:10:183 hours, 10 minutes, 18 secondsimport DB from DB or what is that?
3:10:323 hours, 10 minutes, 32 secondsUh actually not schema it should be
3:10:443 hours, 10 minutes, 44 secondsokay I got it. So since we are using here our database from a different
3:10:503 hours, 10 minutes, 50 secondsuh we we're here inside basically like not in a module. You can see it's a function. So we cannot use the database
3:10:583 hours, 10 minutes, 58 secondsmodule here. That's the problem. But it's not any big issue. We can come back to our database and we can create on client.ts.
3:11:093 hours, 11 minutes, 9 secondsYeah.
3:11:113 hours, 11 minutes, 11 secondsAnd it's going to be very small. It's basically calling our like it's which also connecting our database but with a
3:11:183 hours, 11 minutes, 18 secondsdifferent approach here it was a module which we cannot use inside a function and this is not a module which we can use inside function as well.
3:11:283 hours, 11 minutes, 28 secondsSo client and that's it. We can come back here again and alerts we have to import it. EQ we have to import from
3:11:363 hours, 11 minutes, 36 secondsdrizzle uh DB. Yeah. And no need to open the sidebar.
3:11:433 hours, 11 minutes, 43 secondsAfter this here we can acknowledge the message actually. Sorry message dotnowledge.
3:11:573 hours, 11 minutes, 57 secondsThat's it because everything is done here and if it's catch any error we can console log the error. Now the only left
3:12:043 hours, 12 minutes, 4 secondsthing is the call web hook function the most important one because this is going to do the web hook call for us. So we
3:12:123 hours, 12 minutes, 12 secondscan come back to here can create it in here. We can say as sync function
3:12:213 hours, 12 minutes, 21 secondscall web hook. It's going to receive the rule which type is the alert
3:12:283 hours, 12 minutes, 28 secondsrule and matched logs which is going to be any
3:12:363 hours, 12 minutes, 36 secondsand here we can say promise the web hook result.
3:12:453 hours, 12 minutes, 45 secondsSo web hook result is going to have a very like small type. Let me show you something like this event ID and status.
3:12:553 hours, 12 minutes, 55 secondsThat's what the web hook result will have. Now here let's come back down again.
3:13:033 hours, 13 minutes, 3 secondsYeah. And let's create it. So web hook uh result. And now inside here first we
3:13:093 hours, 13 minutes, 9 secondsneed our event ID. So we are going to generate a random UU ID for this. Then we need our triggered at when we're
3:13:183 hours, 13 minutes, 18 secondscalling the web hook. Yeah. And after this we need our
3:13:253 hours, 13 minutes, 25 secondssample like for which logs this web hook is getting called. Then we have to make
3:13:313 hours, 13 minutes, 31 secondsour payload object for the webbook. The like what we're going to send to user.
3:13:383 hours, 13 minutes, 38 secondsSo inside payload object we can pass the event id our like web hook request type
3:13:453 hours, 13 minutes, 45 secondswhich we're saying alert triggered because it triggered an alert.
3:13:503 hours, 13 minutes, 50 secondsWe have to pass the alert id the alert name the alert matched count like how many
3:13:583 hours, 13 minutes, 58 secondslocks matched and that's why we call the alert and sample lock like just one lock that's why did this happen and the trigger that
3:14:073 hours, 14 minutes, 7 secondslike when we are calling it yeah now we cannot send this raw value because this is risky we have to not only risky we
3:14:173 hours, 14 minutes, 17 secondsneed to verify it so for verifying it we need to have like an option that's why we are first making it JSON.stringify
3:14:253 hours, 14 minutes, 25 secondsstringify then the most important and interesting part you can see time stamp first we're
3:14:333 hours, 14 minutes, 33 secondsmaking our the Unix time stamp in milliseconds you have to change it to milliseconds now so that we can do the
3:14:413 hours, 14 minutes, 41 secondsaccurate verification later then we have to make it string yeah
3:14:493 hours, 14 minutes, 49 secondsnow we need our internal web hook secret now this is important this is not user web hook signing secret. This is for our
3:14:573 hours, 14 minutes, 57 secondsweb hook signing secret. It's same for all the users and this one is basically like going to sign the secret key for
3:15:063 hours, 15 minutes, 6 secondsus. We can say if no secret then throw an error internally that there is something wrong. We haven't set
3:15:153 hours, 15 minutes, 15 secondsup the sign secret yet. Now how can you get this webbook signing secret? Let's come back to our in example.
3:15:233 hours, 15 minutes, 23 secondsUh and here you can basically generate any webbook signing secret. We can say open SSL random 32 characters decimal value.
3:15:363 hours, 15 minutes, 36 secondsYou can copy this. You can paste it as your webbook signing secret. You can paste anything any like any signing secret value in here. Okay? Don't need
3:15:453 hours, 15 minutes, 45 secondsto copy the same one which I was writing you which I was writing. Uh okay fine but
3:15:523 hours, 15 minutes, 52 secondsnow after this what next we have to check the signature. So signature
3:16:003 hours, 16 minuteswe can say crypto. Yeah we're using the crypto dot create hmac.
3:16:103 hours, 16 minutes, 10 secondsSo we are using SH 256 algorithm and we have to pass the secret and we have to update we have to update what we have to
3:16:193 hours, 16 minutes, 19 secondsupdate something but let's import crypto first
3:16:253 hours, 16 minutes, 25 secondsimport our crypto from crypto. Yeah, let's come back down.
3:16:333 hours, 16 minutes, 33 secondsUpdate update our timestamp then dot our payload. So this is
3:16:423 hours, 16 minutes, 42 secondsbasically the signature type. Okay. And the type is going to be UTF8 and then we have to make it on hexadimal
3:16:503 hours, 16 minutes, 50 secondsvalue. So we can say DX hexad decimal value. Yeah. Now we need an controller
3:16:583 hours, 16 minutes, 58 secondsbasically a new award controller and on time out this is for API call on time
3:17:043 hours, 17 minutes, 4 secondsout we can call here and set time out and we can pass the controller
3:17:113 hours, 17 minutes, 11 secondsdot abort we can call here the abort method and we can set the time to 5,000.
3:17:223 hours, 17 minutes, 22 secondsYeah. Then uh finally we have to call here and try catch statement. We can say con response
3:17:303 hours, 17 minutes, 30 secondsawait fetch and here the web hook URL which you you
3:17:373 hours, 17 minutes, 37 secondsyou like added when you you created the alert that web hook URL. The method is going to be
3:17:463 hours, 17 minutes, 46 secondspost the headers. Very very important. We have to pass the headers. The content type is going to be application/json.
3:17:553 hours, 17 minutes, 55 secondsThe user agent is going to be our runet web hooks 1.0. We're passing the event ID, the signature, and the timestamp.
3:18:073 hours, 18 minutes, 7 secondsYeah.
3:18:083 hours, 18 minutes, 8 secondsAnd in body, we have to actually pass the raw body. So now here you can see this is the normal payload, the JSON
3:18:173 hours, 18 minutes, 17 secondsstringify payload, not the hashed version. Why you are saying send sending this? So that you can get the value
3:18:243 hours, 18 minutes, 24 secondsautomatically. But why then we are also sending this signature. This signature is for verifying the request. The signature and time stamp and event ID.
3:18:333 hours, 18 minutes, 33 secondsAll of these basically for this verify web hook endpoint so that we can verify it. You can see signature time stamp and body. This is what we are getting from
3:18:423 hours, 18 minutes, 42 secondshere. Yeah. And that's what we are even sending from here. So that from your application you can call this like logs
3:18:513 hours, 18 minutes, 51 secondsdoverify web hook. Locks means our only logs like the SDK. From the SDK you can call this verify webbook endpoint which
3:18:593 hours, 18 minutes, 59 secondsis going to send an request to this endpoint.
3:19:043 hours, 19 minutes, 4 secondsOkay. Uh here sorry where after this time out sorry no after this
3:19:123 hours, 19 minutes, 12 secondsbody we also have to send the signal for the controller. Yeah. Now if the response is not okay then it means there is something wrong.
3:19:233 hours, 19 minutes, 23 secondsSo in that case we are checking the response body and we are returning an error that we return this HTTP error.
3:19:313 hours, 19 minutes, 31 secondsOtherwise if everything is okay we are returning the event ID the status which is going to be response dot status.
3:19:403 hours, 19 minutes, 40 secondsYeah. And finally, basically finally we are calling the clear time out and we are passing the time out in here.
3:19:523 hours, 19 minutes, 52 secondsExactly. That's it. Done. So everything is done but [clears throat] here way hook result event ID and status. So what's wrong? We're sending it right.
3:20:023 hours, 20 minutes, 2 secondsEvent ID status.
3:20:053 hours, 20 minutes, 5 secondsSo if it's catch any error that's the problem I guess. Yeah. Okay fine.
3:20:113 hours, 20 minutes, 11 secondsSo you can delete that block. And here you go. Everything is ready. Right now our call web hook is ready to send
3:20:203 hours, 20 minutes, 20 secondsrequest. Yeah, that's it. Now we can come back to the verify web hook. Since we are sending web hook, we can right now verify it as well because we know how we are creating it.
3:20:323 hours, 20 minutes, 32 secondsSo here we can say now we can basically check our the time stamp. We can make it number and if it's
3:20:413 hours, 20 minutes, 41 secondsnot number or infinite then invalid web hook time stamp. Now this is the important part. We're basically saying
3:20:493 hours, 20 minutes, 49 secondsif the web hook is older than 60 seconds then we are going to say that web hook has expired. Now we need our payload
3:20:573 hours, 20 minutes, 57 secondsvalue. So payload actually here payload if the type of body is string then body
3:21:053 hours, 21 minutes, 5 secondsbecause we send it as JSON stringify that's why we're saying if it's string and body otherwise we're again stringifying it but which is not
3:21:143 hours, 21 minutes, 14 secondsnecessary because we already sending it as string but after this we are checking for the signed payload with this time stamp and
3:21:223 hours, 21 minutes, 22 secondsthis payload because that's what we are sending this payload is this time stamp and this payload together. Yeah, the
3:21:303 hours, 21 minutes, 30 secondstime stamp we're receiving in here through the headers.
3:21:343 hours, 21 minutes, 34 secondsThen we are again checking our secret because we need the secret. We're going to match it. Now if no secret then for
3:21:433 hours, 21 minutes, 43 secondsour internal system we're returning an error that the secret is not set up yet.
3:21:493 hours, 21 minutes, 49 secondsAnd now we can check the expected signature. So we can call crypto again.
3:21:573 hours, 21 minutes, 57 secondsUh I don't know why crypto import doesn't happen with like the suggestion VS code suggestion. We have to manually
3:22:043 hours, 22 minutes, 4 secondsimport it but it's fine. It's not a big deal.
3:22:103 hours, 22 minutes, 10 secondsYeah. After expected signature this is what we received and this is what we expected. Yeah. If they're not
3:22:193 hours, 22 minutes, 19 secondsmatching, we can basically say if the received length is not matching with the
3:22:263 hours, 22 minutes, 26 secondsexpected length and the crypto timing safe equal is not same as like the received and expected then it's not sent
3:22:333 hours, 22 minutes, 33 secondsby one minute locks. Then invalid web book signature otherwise if it's matching very good it
3:22:413 hours, 22 minutes, 41 secondsmeanings the request is sent by us. Now from hacker perspective or from anyone who is not like sending this request
3:22:503 hours, 22 minutes, 50 secondsthey don't have this webbook signing secret when they are sending the request that signature is definitely not going to match with our signature and from the
3:22:593 hours, 22 minutes, 59 secondsuser perspective they also cannot send request to here without having access to API keys and when they are having access
3:23:073 hours, 23 minutes, 7 secondsto their API keys like you cannot predict this signature it's impossible the signature is different for every
3:23:153 hours, 23 minutes, 15 secondstime. That's why I'm still saying it's definitely not bulletproof secret yet.
3:23:203 hours, 23 minutes, 20 secondsDefinitely if if we are having like secret key for every user webbook secret key that's more safe but this version
3:23:283 hours, 23 minutes, 28 secondsalso completely fine for the MVP version. Yeah. Or even for the version one.
3:23:343 hours, 23 minutes, 34 secondsAll right. So that's it. Our verify web hook is also ready. We did a lot of work
3:23:403 hours, 23 minutes, 40 secondsactually. And one thing I have to check so
3:23:483 hours, 23 minutes, 48 secondsfor our uh let me check our
3:23:573 hours, 23 minutes, 57 secondsnight setup especially the initialize the stream.
3:24:023 hours, 24 minutes, 2 secondsYeah. So it's wrong. The reason is if you check the subject, we also have to add our locks alert evaluate subject actually.
3:24:163 hours, 24 minutes, 16 secondsSo let me show you this subject.
3:24:223 hours, 24 minutes, 22 secondsThis same subject. Where is that? Yeah, this one.
3:24:323 hours, 24 minutes, 32 secondsOkay. Then second one. Let me see.
3:24:383 hours, 24 minutes, 38 secondsIt's basically going to be uh I think we have to change it. We have to change it to existing subjects.
3:24:513 hours, 24 minutes, 51 secondsThis is fine. And missing subjects. New one.
3:24:563 hours, 24 minutes, 56 secondsSo subtapates uh it should be s because it's subjects.
3:25:093 hours, 25 minutes, 9 secondsYeah, multiple now.
3:25:153 hours, 25 minutes, 15 secondsNow in here these are the missing subjects and if our
3:25:213 hours, 25 minutes, 21 secondsmissing subject dotlength is more than zero.
3:25:333 hours, 25 minutes, 33 secondsThen here this looks good. But here we have to call the existing subjects.
3:25:403 hours, 25 minutes, 40 secondsYeah. Also we have to spread the we have to call the missing subjects as well. The missing subjects object.
3:25:483 hours, 25 minutes, 48 secondsYeah. Done. That's it for here. We just have to call the subjects.
3:25:573 hours, 25 minutes, 57 secondsThat's enough.
3:26:003 hours, 26 minutesOtherwise, everything is fine. Now, for the producer, I think it's fine. Oh, no. Uh, we also have to produce. Okay.
3:26:083 hours, 26 minutes, 8 secondsSorry. We we don't need to produce anything because uh we already did it from our consumer. So, we don't need to do anything in here now.
3:26:173 hours, 26 minutes, 17 secondsAnd let me check this one. It's also looks fine to me.
3:26:233 hours, 26 minutes, 23 secondsYeah, that's it. The only left thing as I remember we have to come back to our main.ts again. From here in this start
3:26:323 hours, 26 minutes, 32 secondsworkers uh start workers the reason one minute let me see again is this okay or not. So start workers.
3:26:493 hours, 26 minutes, 49 secondsSo here if you see we are like starting our locks consumer but we also have to start our alert consumer right cuz right
3:26:583 hours, 26 minutes, 58 secondsnow we are having both of them. So we can say start alert consumer
3:27:043 hours, 27 minutes, 4 secondsand we can import it and we can say OML alert consumer.
3:27:103 hours, 27 minutes, 10 secondsIf it catch an error then failed to start. We can come back here and actually our consumer started. Yeah.
3:27:193 hours, 27 minutes, 19 secondsIt's all good.
3:27:213 hours, 27 minutes, 21 secondsThat's all we had to change. Now everything is going to work, I believe.
3:27:263 hours, 27 minutes, 26 secondsNow, what next? We have to come back to the front end. Uh, no, not front end yet because we forgot to add the controller.
3:27:343 hours, 27 minutes, 34 secondsLet's come back here again. Alert controller.
3:27:393 hours, 27 minutes, 39 secondsUh, yeah. And inside module module find, we have to finish the controller first.
3:27:463 hours, 27 minutes, 46 secondsSo we can call our alert controller.
3:27:553 hours, 27 minutes, 55 secondsSo call the controller use gs and alg and our alert service inside here.
3:28:083 hours, 28 minutes, 8 secondsFirst let's add the list alerts for the get endpoint.
3:28:143 hours, 28 minutes, 14 secondsYeah, user must need to be authenticated to list to check his alerts for the post
3:28:223 hours, 28 minutes, 22 secondslike for creating alert not only authenticated we also need to check his like plan. So that's why we are calling the user script.
3:28:323 hours, 28 minutes, 32 secondsYeah. Next step is testing uh sorry verifying the web hook. Yeah. The public
3:28:383 hours, 28 minutes, 38 secondsendpoint. So where we need to just check this out guard. Yeah, you need to be
3:28:453 hours, 28 minutes, 45 secondsmust be verified to call here and use guards.
3:28:523 hours, 28 minutes, 52 secondsUh also we need the usage guard. Yeah, it's important actually then we can check back your like values and everything. I mean your plan and
3:29:003 hours, 29 minuteseverything not values. Yeah, but alert service verify webbook we're passing the request. plan payload signature payload
3:29:083 hours, 29 minutes, 8 secondstimestamp and the payload body. Yeah, that's what we are sending. And our controller is actually ready. Now we can
3:29:163 hours, 29 minutes, 16 secondscome back here. We can call the alert controller uh alert controller
3:29:233 hours, 29 minutes, 23 secondsalert service. We can come back to our app module and we can add the alert module as well. There you go. All done.
3:29:353 hours, 29 minutes, 35 secondsLet's come back to front end main dashboard app and our alerts. Where is alerts?
3:29:443 hours, 29 minutes, 44 secondsI don't see it. Oh, here we go. Yeah. So, we have to work in here now.
3:29:503 hours, 29 minutes, 50 secondsWe have to change the front end and we have to finish it. In front end, we're having a lot of work. We have to do it now. So, let's get started. All right.
3:29:583 hours, 29 minutes, 58 secondsSo at first we need here our some state for an example our use user hook first
3:30:053 hours, 30 minutes, 5 secondswe need our is loaded and is signed in and we need our query client so we can just add that in here
3:30:143 hours, 30 minutes, 14 secondsthen uh this new alert open this is fine selected set selected this is also fine we need
3:30:223 hours, 30 minutes, 22 secondsour alert name then our app name
3:30:293 hours, 30 minutes, 29 secondsour web hook URL state and the verified web hook URL state the cooldown period
3:30:363 hours, 30 minutes, 36 secondsthe is creating alert the is uh yeah is creating alert that's
3:30:433 hours, 30 minutes, 43 secondsfine and then we need on state for basically the conditions a little bit bigger
3:30:513 hours, 30 minutes, 51 secondsuh sorry we need a rule condition uh type in here so We can add the type
3:30:593 hours, 30 minutes, 59 secondsbasically here. We can say type our rule condition
3:31:073 hours, 31 minutes, 7 secondswhere we're going to add our ID field and operator. We also need some
3:31:153 hours, 31 minutes, 15 secondsmore state like alert status and alert tone.
3:31:213 hours, 31 minutes, 21 secondsFor the alert row, it's going to be different.
3:31:273 hours, 31 minutes, 27 secondsSo let's do one thing. Let's cut the alert tool and add it in here. Yeah. And then uh we also need another one for backend alert. Very very important.
3:31:403 hours, 31 minutes, 40 secondsSo backend alert.
3:31:443 hours, 31 minutes, 44 secondsYeah. The next one is our current plan response and the tone styles.
3:31:553 hours, 31 minutes, 55 secondsSo the tone styles tone styles where's that okay we we are not having that we are having status color which we know which we don't need now so we need
3:32:043 hours, 32 minutes, 4 secondsanother one for styling purpose it's basically tone styles something like this
3:32:133 hours, 32 minutes, 13 secondsso for danger this is the accent color the icon wrap the stat wrap the warning and this is for the info and yeah this
3:32:213 hours, 32 minutes, 21 secondsis how it will look like you can just write it by pausing it because this is these are just just like tailwind styling last name.
3:32:313 hours, 32 minutes, 31 secondsThen uh another one we need that status styles
3:32:383 hours, 32 minutes, 38 secondssomething like this. Then for the fields, so we're having new one. So we can add the fields, new fields in here.
3:32:523 hours, 32 minutes, 52 secondsSomething like this. Then the operators and the time window.
3:33:013 hours, 33 minutes, 1 secondYeah.
3:33:023 hours, 33 minutes, 2 secondsAnd our important options like this. then our parse minutes. So
3:33:103 hours, 33 minutes, 10 secondsthis is basically an helper function which is going to parse the value into minutes and the triggered at value we have to
3:33:203 hours, 33 minutes, 20 secondschange that value from the normal day time to like a like real value and format
3:33:273 hours, 33 minutes, 27 secondswe are basically using it from our like time ago.js yeah library.
3:33:363 hours, 33 minutes, 36 secondsSo let's import format from time angle.js and come back here.
3:33:413 hours, 33 minutes, 41 secondsSo this is changing the format uh format triggered at like an helper function.
3:33:473 hours, 33 minutes, 47 secondsYeah. After this after our format triggered
3:33:553 hours, 33 minutes, 55 secondsadd function the next one is another helper function for basically like the alert
3:34:043 hours, 34 minutes, 4 secondsicon. So something like this inside here.
3:34:093 hours, 34 minutes, 9 secondsIf the tone is warning then this color we are going to use this alert triangle
3:34:173 hours, 34 minutes, 17 secondsicon. If the tone is info then we're going to use this and then we can return on svz.
3:34:313 hours, 34 minutes, 31 secondsYeah. So finish. Yeah. So this is basically these all of these basically are styling nothing else. Then after
3:34:393 hours, 34 minutes, 39 secondsthis we also need another uh function for selecting the pill. This is also like styling completely. Let me show
3:34:473 hours, 34 minutes, 47 secondsyou. So select peel and here it is how it will look like. You can slowly see the class name.
3:35:013 hours, 35 minutes, 1 secondYeah. After this, we need our scape number and the field level.
3:35:123 hours, 35 minutes, 12 secondsYeah. So, I'm slowly scrolling it so you can write it by yourself if you're writing it.
3:35:203 hours, 35 minutes, 20 secondsYeah. The next one we need uh another one for select control A. It's also another component. Basically, this all of them are basically component
3:35:293 hours, 35 minutes, 29 secondslike the styling component. Yeah. Select control.
3:35:343 hours, 35 minutes, 34 secondsYou can see then uh another function for text control.
3:35:493 hours, 35 minutes, 49 secondsSo it's basically going to have our input with this styling
3:35:583 hours, 35 minutes, 58 secondsvery big styling. If I want to write it by myself, it will like this one page will take two hours which doesn't make
3:36:043 hours, 36 minutes, 4 secondsany sense to write. You can see yeah and this is the value the disabled and all of them we're basically receiving in here.
3:36:163 hours, 36 minutes, 16 secondsThen after this we need some more function but these are small like sentence operator
3:36:243 hours, 36 minutes, 24 secondsthen the is the URL is valid or not. So like is valid URL something like this.
3:36:313 hours, 36 minutes, 31 secondsYeah.
3:36:333 hours, 36 minutes, 33 secondsThen status color and this severity uh colors we don't need them now.
3:36:413 hours, 36 minutes, 41 secondsWe also don't need the initial alerts.
3:36:463 hours, 36 minutes, 46 secondsUh one thing let's do let's do one thing. Let's cut all of these actually from here.
3:36:593 hours, 36 minutes, 59 secondsSo the type and everything it should not be inside it should be outside from the main page component. So let's cut all of
3:37:083 hours, 37 minutes, 8 secondsthese and then add it outside.
3:37:173 hours, 37 minutes, 17 secondsYeah, like this. Great. Now here uh the initial alerts we actually don't need this as well because we're basically
3:37:263 hours, 37 minutes, 26 secondshaving the real value after this the alerts set alerts we don't need as we're having dynamic
3:37:353 hours, 37 minutes, 35 secondsvalues selected set selected we don't need and yeah otherwise we need all of these
3:37:433 hours, 37 minutes, 43 secondsnow let's come back to here we need just two more state actually for
3:37:503 hours, 37 minutes, 50 secondsthreshold and threshold and the time window something like this. Then we can
3:37:573 hours, 37 minutes, 57 secondsfetch our user plan data. Very very important. We need our user plan.
3:38:043 hours, 38 minutes, 4 secondsSo you can also copy this use query code from the settings because it's the same.
3:38:113 hours, 38 minutes, 11 secondsNothing changes. We're basically checking our user plan. The next one is
3:38:183 hours, 38 minutes, 18 secondsfor fetching our alerts data. It's also similar like fetching the user plan but you can copy this one first and then you
3:38:273 hours, 38 minutes, 27 secondscan just change it to alert data and is loading is loading alerts query key change it change the endpoint to alerts
3:38:353 hours, 38 minutes, 35 secondsand otherwise everything is same just this message is different you can see enable is loaded if it's true and then
3:38:423 hours, 38 minutes, 42 secondssigned in true then then we're having our alert rules so we can say con alert
3:38:503 hours, 38 minutes, 50 secondsrules react dot use memo.
3:38:573 hours, 38 minutes, 57 secondsWe can call the alert row and it's going to be an array of alerts inside here.
3:39:063 hours, 39 minutes, 6 secondsWe can return our alerts with the values like the alert data if it's available.
3:39:123 hours, 39 minutes, 12 secondsthen map and then alert ID, alert name, the app name, the like uh summary, the status, the status node and all of them
3:39:213 hours, 39 minutes, 21 secondsare basically like going to be like this. Yeah.
3:39:253 hours, 39 minutes, 25 secondsAnd then here we can call our alerts data. However, this status is still static because we
3:39:323 hours, 39 minutes, 32 secondshaven't make the like we haven't make our the endpoint yet. That's why. But for now, it's fine.
3:39:423 hours, 39 minutes, 42 secondsUh this one is our latest uh it's like when the last triggered when the alert
3:39:503 hours, 39 minutes, 50 secondslast triggered. So we are also using a like use memo so that we don't need to add it all the time. It's good for the UI.
3:39:593 hours, 39 minutes, 59 secondsSo you can see use memo will only recomputee the memorized value when all of the depths has changed. When it's not changing it's not going to like recall
3:40:073 hours, 40 minutes, 7 secondsit which is very good for our application. Now we need the stats. So stats we're not having anywhere. So
3:40:143 hours, 40 minutes, 14 secondslet's say cons stats. This is also an use memo.
3:40:223 hours, 40 minutes, 22 secondsUse memo something like this. So the level
3:40:313 hours, 40 minutes, 31 secondsthe level is going to be active the value.
3:40:363 hours, 40 minutes, 36 secondsThen the level is going to be like muted how many active and how many muted alerts we're having.
3:40:433 hours, 40 minutes, 43 secondsThen the less triggered date we can call here clock icon the total alerts.
3:40:543 hours, 40 minutes, 54 secondsWe can call the file text here we can say as con and uh we have to add a dependency array.
3:41:043 hours, 41 minutes, 4 secondsSo sorry I did one small mistake here.
3:41:073 hours, 41 minutes, 7 secondsIt should be the type and let's add our dependency error that
3:41:153 hours, 41 minutes, 15 secondsalert rows do.length the latest last triggered and that's all actually.
3:41:253 hours, 41 minutes, 25 secondsNow we need on helper function for handle new alert click when you were basically trying to
3:41:343 hours, 41 minutes, 34 secondscreate an alert. If the plan data and plan is free
3:41:433 hours, 41 minutes, 43 secondsthen we have to give an error that please upgrade your plan for creating alert and then we can return the
3:41:503 hours, 41 minutes, 50 secondsfunction otherwise we will make our set new alert open true. Yeah
3:41:573 hours, 41 minutes, 57 secondsthat's it. We also need some uh basically some helper function for updating the condition in the alert.
3:42:073 hours, 42 minutes, 7 secondsSomething like this. You can see update condition.
3:42:163 hours, 42 minutes, 16 secondsAnd for adding condition, we also need something like this. Add condition.
3:42:223 hours, 42 minutes, 22 secondsYeah. For removing condition we are basically updating our state the
3:42:303 hours, 42 minutes, 30 secondsset condition state and the rule summary which is going to give you like on
3:42:373 hours, 42 minutes, 37 secondssummary of the rule what you have added like if it's like this is your app name this is your service this is the subsystem this is the operation you can
3:42:463 hours, 42 minutes, 46 secondssee app name is this this alert will trigger when the app condition under readable conditions at least these threshold times within this time window.
3:42:583 hours, 42 minutes, 58 secondsUh yeah and the last one actually we need another state. This is for our alert
3:43:053 hours, 43 minutes, 5 secondsnew form uh value something like this new alert form
3:43:133 hours, 43 minutes, 13 secondsvalue. It's also use memo and you can slowly see it. Then last
3:43:203 hours, 43 minutes, 20 seconds[clears throat] one we need to reset our the alert form
3:43:293 hours, 43 minutes, 29 secondsand we can basically like call the default values for all of our state like the alert name is empty
3:43:393 hours, 43 minutes, 39 secondsapp name is empty the web hook URL is going to be empty same for the verified web hook urls and rest of the state it's
3:43:463 hours, 43 minutes, 46 secondsbasically we're setting the by default value in here.
3:43:533 hours, 43 minutes, 53 secondsUh yes, that's all for now.
3:44:003 hours, 44 minutesAnd the last function which we'll keep empty for now that create alert handler for
3:44:083 hours, 44 minutes, 8 secondscreating an alert and just do some like basic form
3:44:183 hours, 44 minutes, 18 secondsvalidation that
3:44:273 hours, 44 minutes, 27 secondsour if like The name the name must need to be available. Same for the app name.
3:44:343 hours, 44 minutes, 34 secondsSame for the condition. Same for web way URL.
3:44:423 hours, 44 minutes, 42 secondsAnd then finally finally for now keep it like this. We're going to add here and try catch
3:44:503 hours, 44 minutes, 50 secondsstatement and we can basically call our API endpoint. But for now we're not going to do it. We are just calling the
3:44:573 hours, 44 minutes, 57 secondscreating alert and in here actually finally we will also make it false.
3:45:063 hours, 45 minutes, 6 secondsYeah, let's come back to our here. So let's call everything. I mean
3:45:163 hours, 45 minutes, 16 secondsuh cut everything not call and add on fragment.
3:45:213 hours, 45 minutes, 21 secondsNow here the header uh it looks different. So we have to change this styling a little bit for the
3:45:293 hours, 45 minutes, 29 secondsheader this is fine. We are just we need on H1 with alerts and then paragraph.
3:45:383 hours, 45 minutes, 38 secondsYeah button that new alert the button styling is going to be a little bit different now. Something like this.
3:45:493 hours, 45 minutes, 49 secondsYeah. Then for one click we have to call our
3:45:553 hours, 45 minutes, 55 secondshandle alert new click. So it's just going to check. Yeah. And then new
3:46:023 hours, 46 minutes, 2 secondsalert. Then here everything fine. The alerts table. So this is going to be a little bit different.
3:46:113 hours, 46 minutes, 11 secondsFirst of all uh here we say that no alerts configured. All good. But
3:46:203 hours, 46 minutes, 20 secondswe need to use here basically on grid box. So instead of rounded excel and
3:46:263 hours, 46 minutes, 26 secondsborder let's add here on class name like this.
3:46:353 hours, 46 minutes, 35 secondsWe don't need this styles then. And here instead of alerts.length length. Let's
3:46:403 hours, 46 minutes, 40 secondscall here basically our stats dot map
3:46:493 hours, 46 minutes, 49 secondsand stat and we can cut this.
3:46:593 hours, 46 minutes, 59 secondsWe can add that in here.
3:47:033 hours, 47 minutes, 3 secondsThen here let's add our key and the class name is also going to
3:47:103 hours, 47 minutes, 10 secondsbe actually different not relative something like this.
3:47:193 hours, 47 minutes, 19 secondsYeah. Then after this we don't need our table anymore. We can delete the table because we're basically we we changed the full structure for the alerts.
3:47:283 hours, 47 minutes, 28 secondsThat's the reason behind it actually. So this is uh we need on div here with this
3:47:353 hours, 47 minutes, 35 secondsclass name uh sorry then inside here we can add
3:47:433 hours, 47 minutes, 43 secondsanother empty div uh div then on paragraph that stat level
3:47:523 hours, 47 minutes, 52 secondson another div with our stat value.
3:47:583 hours, 47 minutes, 58 secondsIf we come back here, you can see it's completely changed everything.
3:48:033 hours, 48 minutes, 3 secondsWe're not having anything in here. The reason is stats do map. We're saying stats stats.
3:48:123 hours, 48 minutes, 12 secondsOkay.
3:48:153 hours, 48 minutes, 15 secondsAll rows alerts data. Fine. No problem.
3:48:243 hours, 48 minutes, 24 secondsSo yeah, let's come back to down again. start level. Yeah, here we go.
3:48:303 hours, 48 minutes, 30 secondsSince it's too long, like too big code base, that's why I'm searching and going back down. As you can see, 600 lines already. Then after this, we need an
3:48:403 hours, 48 minutes, 40 secondsparagraph for our stat caption and then finish. Then here we can add our div something like this that stat icon.
3:48:533 hours, 48 minutes, 53 secondsYeah, that's it. We don't need this rule. Uh hover tint. We don't need can delete.
3:49:023 hours, 49 minutes, 2 secondsH sorry.
3:49:043 hours, 49 minutes, 4 secondsYeah, that's it. 3D div. And then it's ending in here. Yeah.
3:49:113 hours, 49 minutes, 11 secondsNow we need another big div something like this with these class names.
3:49:233 hours, 49 minutes, 23 secondsWe need another div here.
3:49:283 hours, 49 minutes, 28 secondsAnd inside here we can add our search input for the alerts. So search
3:49:373 hours, 49 minutes, 37 secondssomething like this. So you can see search alerts and then
3:49:463 hours, 49 minutes, 46 secondswe need our the selected pill like the status projects and sort like from here.
3:50:013 hours, 50 minutes, 1 secondHowever, it's not working yet. Why? Let me see. Give reload.
3:50:093 hours, 50 minutes, 9 secondsIs there anything wrong?
3:50:143 hours, 50 minutes, 14 secondsOkay, fine. We're going to check it later. No problem.
3:50:193 hours, 50 minutes, 19 secondsAnd after this, we need our another big div inside here.
3:50:303 hours, 50 minutes, 30 secondsWe can add on grid div with this class names.
3:50:373 hours, 50 minutes, 37 secondslike this the big one and alert status plus triggered and actions. Yeah.
3:50:513 hours, 50 minutes, 51 secondsNow we can finally uh load our alerts. So this was basically not for loading the alerts this this part. Yep.
3:51:013 hours, 51 minutes, 1 secondThen here we can say is loading alerts if it's true we can add here um give
3:51:093 hours, 51 minutes, 9 secondsthat loading alerts otherwise and we can import the loader to icon otherwise
3:51:183 hours, 51 minutes, 18 secondsuh sorry if our alert rows
3:51:243 hours, 51 minutes, 24 secondsdotlength is zero Then we can add on div
3:51:343 hours, 51 minutes, 34 secondsand uh here let's import the alert sorry loader tool icon and in here if the alert length is zero let's add some
3:51:423 hours, 51 minutes, 42 secondsstyling like this then we're going to add an bail icon. Oops.
3:51:513 hours, 51 minutes, 51 secondsYeah. And then let's add div that no alerts created yet.
3:52:003 hours, 52 minutesAnd our creator first alert to get notified when an important log not lock we can say event
3:52:083 hours, 52 minutes, 8 secondspatterns show up in production. Yeah that's it.
3:52:143 hours, 52 minutes, 14 secondsNow next step is after this here we can say if our alert rows dot map alert
3:52:263 hours, 52 minutes, 26 secondslike if there if there is alert rows alert available then we need to fetch that and show that in here.
3:52:333 hours, 52 minutes, 33 secondsI mean we don't need to fetch we're already having it in here. So we need to show those alerts in here. You can see the class name very big big class name.
3:52:453 hours, 52 minutes, 45 secondsI didn't write it by myself to be honest because no one does the designing part nowadays.
3:52:533 hours, 52 minutes, 53 secondsAll right. You can see this is another div styling class name with the alert tone and accent. So something like this.
3:53:043 hours, 53 minutes, 4 secondsThen we're having our another big div
3:53:123 hours, 53 minutes, 12 secondsand another one for the alert like icon.
3:53:193 hours, 53 minutes, 19 secondsThen another empty div with on alert name
3:53:283 hours, 53 minutes, 28 secondsclass name like this. So security and test this is like the alert name which I already created that's why it's already showing here but no worries I will also
3:53:363 hours, 53 minutes, 36 secondsshow you how can I create it because for you it's probably going to be not probably it's actually going to be empty. This is the project name.
3:53:473 hours, 53 minutes, 47 secondsThis is the alert condition.
3:53:523 hours, 53 minutes, 52 secondsYeah, actually let's finish it here.
3:54:003 hours, 54 minutesAdd another div.
3:54:033 hours, 54 minutes, 3 secondsThen on span, a big span like this.
3:54:123 hours, 54 minutes, 12 secondsAnd we have to add another span with something like this. So it's like the status of the alert.
3:54:213 hours, 54 minutes, 21 secondsand the name status name and uh if the status is muted then bell icon. Yeah. So
3:54:283 hours, 54 minutes, 28 secondsall of them are currently active. So we're showing active and the status note
3:54:363 hours, 54 minutes, 36 secondssomething like this if it's available then but we don't have it now so it's null
3:54:443 hours, 54 minutes, 44 secondsanother div and this is the last triggered time like two weeks ago this one and this one no
3:54:523 hours, 54 minutes, 52 secondsless triggered yet. So you can see the summary the alert uh alert will trigger when the app name is big demi and type is error and the
3:55:013 hours, 55 minutes, 1 secondimportance is critical at least one times within me. So this is basically for all for testing the alerts not real alert.
3:55:113 hours, 55 minutes, 11 secondsI mean these are real alerts in our application but we created I I created this for testing the alerting mechanism by at least one times within one minute.
3:55:213 hours, 55 minutes, 21 secondsSo if I send just one like event with this type error and importance critical then this will just call our web hook
3:55:283 hours, 55 minutes, 28 secondsendpoint. So the alert will basically work then uh yeah now we can add another div with
3:55:373 hours, 55 minutes, 37 secondsour triggered note that one m one matching blocks within 1 minute five matching blocks within 5 minutes.
3:55:443 hours, 55 minutes, 44 secondsThen we need another div something like this.
3:55:523 hours, 55 minutes, 52 secondsThis is just for like changing the status for the alerts like for deleting the alerts or something
3:56:003 hours, 56 minuteslike that. So this is just for like stopping the alerts. It's not for deleting.
3:56:063 hours, 56 minutes, 6 secondsBut however I did a small mistake. Start this and add it outside of this div.
3:56:163 hours, 56 minutes, 16 secondsYeah, now it's in perfect place. Then uh that's it actually. And just one more
3:56:253 hours, 56 minutes, 25 secondsfor deleting. But we're saying here what which icons this more horizontal. Okay.
3:56:313 hours, 56 minutes, 31 secondsSo instead of that we could basically add your delete icon from Lucid React.
3:56:373 hours, 56 minutes, 37 secondsYeah. No, no, just delete. What the hell?
3:56:453 hours, 56 minutes, 45 secondsDelete. Uh, okay. Delete.
3:56:533 hours, 56 minutes, 53 secondsYeah. What is this called? It's called trash. Okay, no problem. Trash.
3:57:003 hours, 57 minutesAnd the leftover things. Just delete all of these imports. We don't need all of them.
3:57:083 hours, 57 minutes, 8 secondsAnd these two icons as well. Yeah. Come back to down.
3:57:163 hours, 57 minutes, 16 secondsOh, crazy code base, right? Yeah. Still we couldn't finish. We have to do more work. This is the boring uh page in our
3:57:253 hours, 57 minutes, 25 secondsfull website because you can see it's crazy big actually.
3:57:313 hours, 57 minutes, 31 secondsSorry. Here. Yeah. Still nuke alert creation is left. Now after this
3:57:403 hours, 57 minutes, 40 secondsuh here this footer stat as per.
3:57:483 hours, 57 minutes, 48 secondsSo in this active we have to say alert rows dotlength for the mutate.
3:58:003 hours, 58 minutesUh mutate is for now zero and last triggered. We don't need a resolved status because that's what we that's we
3:58:083 hours, 58 minutes, 8 secondsdon't have that. So that's why fine we don't need that in the list trigger that. Great. So you can see all of them
3:58:153 hours, 58 minutes, 15 secondsare here. It looks good. And also another one we can add like the alert
3:58:253 hours, 58 minutes, 25 secondslength. The total alert length we can change it to this
3:58:333 hours, 58 minutes, 33 secondsexactly and we can say total
3:58:453 hours, 58 minutes, 45 secondsperfect all good.
3:58:523 hours, 58 minutes, 52 secondsNow for creating alerts what we have to do we have to right now create alerts.
3:58:583 hours, 58 minutes, 58 secondsSo we can basically say we can uh I I would like to delete this
3:59:063 hours, 59 minutes, 6 secondsdialogue. You can see if we're here it's very basic. It's actually like not what
3:59:143 hours, 59 minutes, 14 secondswe need. So we can delete this dialogue and we have to create it by ourself.
3:59:223 hours, 59 minutes, 22 secondsSo we can no problem. Let's say if new alert open is true then
3:59:313 hours, 59 minutes, 31 secondslet's add on div like this. Uh otherwise actually null. Yeah. So this is the class name.
3:59:403 hours, 59 minutes, 40 secondsWe are basically like opening a model with that black like color like black shadow actually
3:59:473 hours, 59 minutes, 47 secondswith the backdrop blur is and you can see the like background is going to be blur when you are creating clicking the new alert open like this.
3:59:563 hours, 59 minutes, 56 secondsHowever, nothing is happening. The reason is new alert.
4:00:044 hours, 4 secondsNew alert.
4:00:064 hours, 6 secondsUh here the styling is not what I expected.
4:00:164 hours, 16 secondsUh new alert.
4:00:204 hours, 20 secondsSo here the button is going to be simple button not button
4:00:294 hours, 29 secondscomponent type is going to be button class name.
4:00:394 hours, 39 secondsUh actually
4:00:524 hours, 52 secondsI think I did some mistake or this is not going to be any call back function.
4:00:584 hours, 58 secondsYeah, because this is already a call back and then in that case, okay, let's do one
4:01:074 hours, 1 minute, 7 secondsthing. Sorry for this, but let's use our button component. We don't need that flex and other styling. Yeah. And we don't need this type button as well.
4:01:184 hours, 1 minute, 18 secondsYeah, new alert. There you go. You can see it's already working. Yeah.
4:01:264 hours, 1 minute, 26 secondsSo, we can come back to down and inside this we can come back here.
4:01:364 hours, 1 minute, 36 secondsThen inside this we can basically add uh another div with this class name.
4:01:444 hours, 1 minute, 44 secondsThen we can add on another div with on H2 and then paragraph something like
4:01:514 hours, 1 minute, 51 secondsthis that new alert create an alert and get notified when something important happens like a marketing line and then
4:02:004 hours, 2 minuteswe can add an button something like this
4:02:084 hours, 2 minutes, 8 secondsthat our like close the model. So if you click here and close the model, click here, close the model.
4:02:164 hours, 2 minutes, 16 secondsYeah, that's it. Now next step is here.
4:02:274 hours, 2 minutes, 27 secondsHere we can add our section for creating the alert. Uh like the
4:02:364 hours, 2 minutes, 36 secondsfields for creating an alerts. The all fields are going to be in this section. And this is the styling for it.
4:02:454 hours, 2 minutes, 45 secondsNow here we can add on div something like this.
4:02:514 hours, 2 minutes, 51 secondsThen the step number is this is the first step. Then let's add here on
4:02:584 hours, 2 minutes, 58 secondsanother div like the alert name. And we can say give your alert a name so you can recognize it later.
4:03:074 hours, 3 minutes, 7 secondsAnd then we can add our field value like the input field. So we can add the div
4:03:134 hours, 3 minutes, 13 secondshere with the like alert name and then this section is actually done.
4:03:234 hours, 3 minutes, 23 secondsHowever, let me see one thing.
4:03:284 hours, 3 minutes, 28 secondsThis is the Steve and this is our the flex cap 3D.
4:03:394 hours, 3 minutes, 39 secondsUh 1 minute.
4:03:494 hours, 3 minutes, 49 secondsYeah, I think we have to add that in here like this.
4:03:554 hours, 3 minutes, 55 secondsYeah, that's why I was thinking why it's in half. It should take the full space.
4:04:014 hours, 4 minutes, 1 secondOkay. Uh um to be honest I'm also getting exhausted but uh we have to finish it.
4:04:084 hours, 4 minutes, 8 secondsLet's add our another section. This one like this. We can copy this one I guess.
4:04:144 hours, 4 minutes, 14 secondsYeah. I think it's a little different.
4:04:194 hours, 4 minutes, 19 secondsLet's finish the section tag. Yeah. And here you go.
4:04:254 hours, 4 minutes, 25 secondsThen inside here the div
4:04:314 hours, 4 minutes, 31 secondsthen step number is two for this one. So step number two
4:04:384 hours, 4 minutes, 38 secondsand what is the second step it's basically like when this happen
4:04:454 hours, 4 minutes, 45 secondswhen the like alert will basically happen. So build a rule in plain English at only the conditions that matters.
4:04:544 hours, 4 minutes, 54 secondsYeah. Let's come back here again after this two div.
4:05:004 hours, 5 minutesLet's add our another div like this.
4:05:064 hours, 5 minutes, 6 secondsThen our another div something like this.
4:05:164 hours, 5 minutes, 16 secondsIt's also required.
4:05:184 hours, 5 minutes, 18 secondsSo that's why we're saying required. So the first value is basically required. And the required field is your app name.
4:05:254 hours, 5 minutes, 25 secondsYou must have to give your app name. This is not optional.
4:05:334 hours, 5 minutes, 33 secondsSo here we are basically adding our app name field something like this like the
4:05:404 hours, 5 minutes, 40 secondsapp name and then the operator value
4:05:504 hours, 5 minutes, 50 secondslike this. the operator like equals what is going to be the app name
4:06:004 hours, 6 minutesthen after this add our value. So the app name value. So for an example let's say app name must
4:06:074 hours, 6 minutes, 7 secondsneed to be 1 minute locks. Yeah something like that.
4:06:134 hours, 6 minutes, 13 secondsThen after this two uh 3D yeah here we can add again our that uh space y3
4:06:274 hours, 6 minutes, 27 secondsand here we can run an loop with our conditions the conditions array
4:06:354 hours, 6 minutes, 35 secondsinside this we can add on give like this something like this. Yeah. Then here we
4:06:454 hours, 6 minutes, 45 secondscan say we can basically add another div with this styling.
4:06:524 hours, 6 minutes, 52 secondsAnd this is another div with this condition like condition one, condition two. Yeah. And the button is for
4:07:014 hours, 7 minutes, 1 seconddeleting the condition. And if you would like to delete, we need the trash to icon
4:07:104 hours, 7 minutes, 10 secondslike condition one, condition two. Then what we need next? The next uh task is basically
4:07:194 hours, 7 minutes, 19 secondsafter this div, we can add our drift div again like this.
4:07:274 hours, 7 minutes, 27 secondsAnd then we can copy this div. We can add it in here.
4:07:344 hours, 7 minutes, 34 secondsThis is the field level.
4:07:414 hours, 7 minutes, 41 secondsAnd the field level is basically the like field the select control here we're
4:07:484 hours, 7 minutes, 48 secondshaving our the field values like type. So the types are basically like the field can be
4:07:564 hours, 7 minutes, 56 secondstype, message, importance, environment, service and you can set the value in here.
4:08:004 hours, 8 minutesThen after this this is the for the operator not the value right like the matching uh like equals to or not equals
4:08:094 hours, 8 minutes, 9 secondsto that operator something like this.
4:08:174 hours, 8 minutes, 17 secondsYeah we can save. So type if it's matching with our condition, it's also a little bigger.
4:08:304 hours, 8 minutes, 30 secondsBut yeah, after this div, we can add it. And
4:08:394 hours, 8 minutes, 39 secondssorry, need another div. What the hell I'm doing here? Oh no, I missed our ending.
4:08:484 hours, 8 minutes, 48 secondsAnd then on div. We don't need this. We need another div.
4:09:014 hours, 9 minutes, 1 secondOh no. This is the reason I hate basically HTML CSS.
4:09:114 hours, 9 minutes, 11 secondsOkay, fine. No problem.
4:09:144 hours, 9 minutes, 14 secondsUm after the operator this is this is the field this is the
4:09:204 hours, 9 minutes, 20 secondsfield grid. Yeah here
4:09:314 hours, 9 minutes, 31 secondsuh this one then okay so we can add our this div again.
4:09:384 hours, 9 minutes, 38 secondsNow we can add the value and if the condition is matching like importance
4:09:484 hours, 9 minutes, 48 secondssomething like this basically like condition field if it's importance then select it like this otherwise text
4:09:584 hours, 9 minutes, 58 secondscontrol. So it's like if the type then this but if it's importance then select options that's what we are saying in
4:10:074 hours, 10 minutes, 7 secondshere that's a text control and select control.
4:10:134 hours, 10 minutes, 13 secondsYeah. And finally after this we need an button for adding more condition. If you want to add more condition something like this. So add condition.
4:10:274 hours, 10 minutes, 27 secondsUh I think I did one small mistake. The button should be outside from this div.
4:10:324 hours, 10 minutes, 32 secondsYeah, something like this. So you can add more condition or even you can delete but you cannot delete at least one condition.
4:10:444 hours, 10 minutes, 44 secondsThen we can add here our div another for a trigger threshold something like this.
4:10:564 hours, 10 minutes, 56 secondsAnd here we can add on div.
4:11:014 hours, 11 minutes, 1 secondInside this we can say triggered after
4:11:084 hours, 11 minutes, 8 secondstriggered after this value like triggered after 5 minutes.
4:11:174 hours, 11 minutes, 17 secondsSorry, not 5 minutes. It's the matching logs like how many locks we want to match. So we can then add that line again in here that triggered after five
4:11:254 hours, 11 minutes, 25 secondsmatching blocks with the same like values or same fields matching then like trigger the alert.
4:11:344 hours, 11 minutes, 34 secondsUh then here we need another div like this.
4:11:434 hours, 11 minutes, 43 secondsSo we can say within this select control
4:11:544 hours, 11 minutes, 54 secondswithin this 5 minutes, 1 minute or 10 minutes or 15 minutes or 1 hour. Yeah.
4:12:014 hours, 12 minutes, 1 secondAnd after these three we can come down again and then next one is our rule
4:12:084 hours, 12 minutes, 8 secondssummary. So it basically going to be based on our
4:12:164 hours, 12 minutes, 16 secondslike this value. So if we say let's say on minute log you can see the alert will trigger when the app name is one minute locks and importance is critical five
4:12:244 hours, 12 minutes, 24 secondstimes within 5 minutes. Yeah. So that's what's the rules are my remainings.
4:12:314 hours, 12 minutes, 31 secondsNow here uh 3D event section then we have to right now start a new section.
4:12:414 hours, 12 minutes, 41 secondsThis section is for like notify the user by web hook. So
4:12:494 hours, 12 minutes, 49 secondssomething like this on div and this is the escape number three.
4:12:564 hours, 12 minutes, 56 secondsThis is the third escape. Yeah.
4:13:014 hours, 13 minutes, 1 secondSo it's something like this that notify via web hook and we will send a post request to this URL when the alert is
4:13:094 hours, 13 minutes, 9 secondstriggered. Something like this but we need to have uh another div 1 minute. So where is the
4:13:184 hours, 13 minutes, 18 secondsdiv is finishing? No, it should be finished here. Yeah.
4:13:244 hours, 13 minutes, 24 secondsThen we need another div with this styling.
4:13:324 hours, 13 minutes, 32 secondsAnother div something like this.
4:13:384 hours, 13 minutes, 38 secondsThen the field level like the wave URL
4:13:474 hours, 13 minutes, 47 secondsand inside here we can add our text control.
4:13:534 hours, 13 minutes, 53 secondsSo let's add the text control and in here the value is going to be the web hook URL.
4:14:044 hours, 14 minutes, 4 secondsUh one change we're going to call the handle web hook
4:14:124 hours, 14 minutes, 12 secondsURL change. We have to create it. I seriously forgot it. Okay. Uh web hook handle. Sorry. Handle web hook URL
4:14:214 hours, 14 minutes, 21 secondschange. It's small. So let's create it in here. Something like this.
4:14:294 hours, 14 minutes, 29 secondsAnd after this the placeholder we can say something like this that your
4:14:354 hours, 14 minutes, 35 secondsapp.com webhook/alerts and class name
4:14:434 hours, 14 minutes, 43 secondswe can say verified web hook URL rule then pr
4:14:494 hours, 14 minutes, 49 seconds28 otherwise undefined uh actually undefined not string it
4:14:584 hours, 14 minutes, 58 secondsshould be normal. undefined. Yeah, undefined. And what is this verified webbook URL?
4:15:054 hours, 15 minutes, 5 secondsWhere is the set verified webbook URL? Okay.
4:15:114 hours, 15 minutes, 11 secondsUh, makes sense. So, for now it's done. But, uh, yeah, let's come back to down.
4:15:184 hours, 15 minutes, 18 secondsWe still have to do work. As I said earlier, this one is like this component is very big. This page.
4:15:254 hours, 15 minutes, 25 secondsYeah. After this uh here after this div we can add
4:15:354 hours, 15 minutes, 35 secondslike unbutton that
4:15:434 hours, 15 minutes, 43 secondsif uh the verified you were okay. So we can basically say send for now.
4:15:514 hours, 15 minutes, 51 secondsUh no we actually don't need this button. We don't need this button.
4:15:554 hours, 15 minutes, 55 secondsSorry, we don't need this button anymore. We can save it. Actually, this is fine.
4:16:014 hours, 16 minutes, 1 secondSo, webbook URL and it's fine.
4:16:064 hours, 16 minutes, 6 secondsAfter this, uh we have to create another section.
4:16:124 hours, 16 minutes, 12 secondsThis is our like step four for creating an alert. So step four is
4:16:234 hours, 16 minutes, 23 secondsstep four is like the advance.
4:16:284 hours, 16 minutes, 28 secondsIt's like fine tune how often the alert can trigger something like this.
4:16:394 hours, 16 minutes, 39 secondsWe can add another div here.
4:16:464 hours, 16 minutes, 46 secondsAnd on field level that cool down period and cool down period is going to be
4:16:544 hours, 16 minutes, 54 seconds5 minutes, 10 minutes or 30 minutes like this.
4:16:594 hours, 16 minutes, 59 secondsYep. And we can add on paragraph that wait time before the alert can trigger again.
4:17:084 hours, 17 minutes, 8 secondsYeah. And finally our form is actually ready. We can add on give
4:17:164 hours, 17 minutes, 16 secondsand we can add an button for creating the alert. So it's like the
4:17:254 hours, 17 minutes, 25 secondscancel button and the create change button like create alert handler. What's the name?
4:17:384 hours, 17 minutes, 38 secondsNo. So alert create handler. What did we give the name then?
4:17:464 hours, 17 minutes, 46 secondsAs I remember we created here on create alert. Create alert handler. Yeah. Create alert.
4:17:554 hours, 17 minutes, 55 secondsOkay. Spelling is wrong. Handler. Yeah. Okay.
4:18:034 hours, 18 minutes, 3 secondsInside here we can say is creating alert then creating otherwise create alert.
4:18:114 hours, 18 minutes, 11 secondsAll good that's it. So create alert is already if we hit here you can see nothing is saying because we have to
4:18:194 hours, 18 minutes, 19 secondsbasically come back here and do the work. However, tools start error. Why it's not showing
4:18:254 hours, 18 minutes, 25 secondsthe message? I think because we forgot to add our
4:18:324 hours, 18 minutes, 32 secondstoaster. Yeah, I think so. You can see it's not here.
4:18:374 hours, 18 minutes, 37 secondsUh here we added tool tip provider and query provider. No. Okay. So here let's add our poster.
4:18:494 hours, 18 minutes, 49 secondsYeah, now it's going to work. So if we hit create alert create alert yeah alert name is required
4:18:574 hours, 18 minutes, 57 secondsyou can see all good
4:19:034 hours, 19 minutes, 3 secondsnow we can finish this create alert and here after this this try part we can say
4:19:134 hours, 19 minutes, 13 secondswe can basically take our token for sending the request and we can send on post request to our end point
4:19:224 hours, 19 minutes, 22 secondsthat alerts with this our new alert form value. If response is not okay then fail
4:19:314 hours, 19 minutes, 31 secondsto create the alert otherwise we can say the response.json JSON then we can
4:19:394 hours, 19 minutes, 39 secondsinvalidate the query so that it like refs the data and updates our cache and alerts created.
4:19:504 hours, 19 minutes, 50 secondsWe can make our model close. We can close our model. We can receive the new alert form. If it's catch any error, we can say fail to create the alert.
4:20:024 hours, 20 minutes, 2 secondsThat's it. So it's crazy big for the web hook URL. It cannot be
4:20:084 hours, 20 minutes, 8 secondsactually any like it cannot be any local host URL because we cannot send request
4:20:154 hours, 20 minutes, 15 secondsto a local host URL. I mean currently in development mode we can but when you are in production definitely we cannot. So for users if you basically go to the
4:20:244 hours, 20 minutes, 24 secondsonlogs documentation you can see that we're saying I'm saying that you must have to like use um
4:20:344 hours, 20 minutes, 34 secondsuh tools like this endro what is this called actually endro or yeah it's like local servers you can
4:20:424 hours, 20 minutes, 42 secondsjust use it you can install it download it into a system and then if you write something like
4:20:504 hours, 20 minutes, 50 secondsthis let me show to you that en ro and http and your port. So let's say we're saying something like
4:20:594 hours, 20 minutes, 59 secondsthis 3002. So then you can see this is giving us unforwarding URL. This is basically the URL. This is an HTTP URL
4:21:094 hours, 21 minutes, 9 secondsbut it's forwarding the request to our like the endpoint. Okay, I mean to our port. So as right now we're like running
4:21:184 hours, 21 minutes, 18 secondsour back end into 80. So if we say this and if we make it small then this is
4:21:264 hours, 21 minutes, 26 secondsbasically the endpoint I mean the API URL. If we hit
4:21:324 hours, 21 minutes, 32 secondsthis you can see visit site we can check our API. It's live but we're still in
4:21:414 hours, 21 minutes, 41 secondsdevelopment. So it's basically forwarding our local request into this end this like this live URL. So for testing this web hook in development
4:21:504 hours, 21 minutes, 50 secondsmode, you have to use an HTTP link like this for the production one. But for now, even if you use the local host, it's actually going to work. But that's not the best way to test the web hook.
4:22:014 hours, 22 minutes, 1 secondHowever, we can create on alert. We can say alert test or something. Let's let's let's say
4:22:094 hours, 22 minutes, 9 secondsthis no problem since we're just checking it that is this working or not and one minute logs
4:22:174 hours, 22 minutes, 17 secondsand here let's say we are adding this one and then at the end we are saying uh
4:22:254 hours, 22 minutes, 25 secondstest or not test let's say alert and test web hook
4:22:334 hours, 22 minutes, 33 secondsfor now okay and we can hit create alert Yeah, so internal server error which is good. Let's see what's wrong.
4:22:484 hours, 22 minutes, 48 secondsOkay, it's saying this db.insert values returning is not a function. Okay, very good.
4:22:574 hours, 22 minutes, 57 secondsLet's let me check why it's giving this error. First, let me delete all of these. We don't need them. Now, let's
4:23:034 hours, 23 minutes, 3 secondscome back to our services. source our modules
4:23:104 hours, 23 minutes, 10 secondsalert controller uh service and here you go I guess that returning
4:23:174 hours, 23 minutes, 17 secondsreturning uh returning what's wrong in here
4:23:274 hours, 23 minutes, 27 seconds oh what retiring no it's returning yeah spelling was wrong now if we hit create alert it should work.
4:23:394 hours, 23 minutes, 39 secondsHere we go. Alert created.
4:23:414 hours, 23 minutes, 41 secondsNow uh we can actually test it. So we said that if the app name is 1 minute
4:23:484 hours, 23 minutes, 48 secondslocks, okay, and type is error and importance is critical at least five times within 5 minutes, then it's going to send an alert.
4:23:594 hours, 23 minutes, 59 secondsFine. Since we added this API endpoint, this one uh sorry, not this one. If you come back
4:24:084 hours, 24 minutes, 8 secondsto here, you can already check it from our uh alerts. Where's alerts? Here we go.
4:24:194 hours, 24 minutes, 19 secondsSo, the field new one is this one, I guess.
4:24:254 hours, 24 minutes, 25 secondsYeah, the web hook URL test web hook. Okay, let's let's come back to our test web hook.
4:24:384 hours, 24 minutes, 38 secondsSo test web hook here
4:24:454 hours, 24 minutes, 45 secondsand we say post endpoint. Okay. So, post and this test web hook
4:24:564 hours, 24 minutes, 56 secondsand we don't need any use guards or anything. Even this og guard is going to do problem actually. Yeah, it's actually going to do problem.
4:25:044 hours, 25 minutes, 4 secondsBut for creating alerts, uh okay, for now we can just comment it.
4:25:104 hours, 25 minutes, 10 secondsThis one is test web hook. So test web hook
4:25:174 hours, 25 minutes, 17 secondsif we are receiving anything in here that's also fine. First we can say
4:25:244 hours, 25 minutes, 24 secondsconsole lock received web hook alert.
4:25:324 hours, 25 minutes, 32 secondsYeah. Yeah. So let's do one thing.
4:25:414 hours, 25 minutes, 41 secondsLet's come back to our testing endpoint and let's send five errors in the logger
4:25:494 hours, 25 minutes, 49 secondsapp name. Change it to change it to what? Change it to our uh what's this? This is the type.
4:26:014 hours, 26 minutes, 1 secondWhere's the value uh app name? App name.
4:26:094 hours, 26 minutes, 9 secondsOkay, one minute locks copy and
4:26:164 hours, 26 minutes, 16 secondsthe importance is critical service doesn't matter because the it's
4:26:244 hours, 26 minutes, 24 secondssaying app name monet logs type is error importance is critical at least five times. Yeah. So then we can do one
4:26:314 hours, 26 minutes, 31 secondsthing. We can write here an for loop uh for loop
4:26:384 hours, 26 minutes, 38 secondshere. We can say five here five
4:26:454 hours, 26 minutes, 45 secondsindex zero and five and plus+ and then yeah so this is basically going to send
4:26:534 hours, 26 minutes, 53 secondsthe error for five times and that's what we need. All right. So go to our
4:26:594 hours, 26 minutes, 59 secondsslash test endpoint to test it. / test uh API/ test sorry
4:27:104 hours, 27 minutes, 10 secondshere we go success true is it sending the error or not? I don't know.
4:27:184 hours, 27 minutes, 18 secondsSo no triggered. What? What's wrong?
4:27:274 hours, 27 minutes, 27 secondsMaybe. Oh, sorry. Because uh we change it.
4:27:354 hours, 27 minutes, 35 secondsYeah, that's why probably. But it didn't call the alert.
4:27:434 hours, 27 minutes, 43 secondsOkay, let me see why.
4:27:464 hours, 27 minutes, 46 secondsIt should have. However, let's let's come back to our module and let's uncomment the
4:27:554 hours, 27 minutes, 55 secondsalt cut otherwise it's not going to work. So let's call it again.
4:27:594 hours, 27 minutes, 59 secondsAnd here we go. Five matching locks. So five blocks didn't match. Seriously, we just sent it. You can see 1 2 3 4 5.
4:28:114 hours, 28 minutes, 11 secondsYeah. Five or more. What did you say? Five times within 5 minutes.
4:28:224 hours, 28 minutes, 22 secondsType error importance is critical and one minute locks.
4:28:324 hours, 28 minutes, 32 secondsOkay, let's send more five.
4:28:404 hours, 28 minutes, 40 secondsLet's send more five. Um just copy com uh just like I comment that
4:28:524 hours, 28 minutes, 52 secondsand here you go.
4:29:024 hours, 29 minutes, 2 secondsNo error and no alerts. It should not be like this.
4:29:144 hours, 29 minutes, 14 secondsOkay. No triggered.
4:29:214 hours, 29 minutes, 21 seconds[snorts]
4:29:264 hours, 29 minutes, 26 secondsAre we sure that the end point is correct? And uh here we are saying no triggered.
4:29:344 hours, 29 minutes, 34 secondsOne thing I'd like just like to check just for now. Okay. If it's there then it should work.
4:29:454 hours, 29 minutes, 45 secondsjust the consumer and in here or or not there not there in our call
4:29:544 hours, 29 minutes, 54 secondsway book. So we can just add here in console log that call. Yeah, we can save it. Here you go. Send again.
4:30:074 hours, 30 minutes, 7 secondscheck.
4:30:174 hours, 30 minutes, 17 secondsAll right, there might be something wrong. That's why the web hook is not getting called. You can see the web hook
4:30:234 hours, 30 minutes, 23 secondsis not even getting called, which is means which means something is wrong.
4:30:304 hours, 30 minutes, 30 secondsBut no problem. We're going to check it now. What's wrong actually?
4:30:364 hours, 30 minutes, 36 secondsAll right, after a long time I found a mistake. So the mistake is basically inside this match condition code base.
4:30:444 hours, 30 minutes, 44 secondsThis match condition function here after this return false after the second bracket we have to add here switch case
4:30:524 hours, 30 minutes, 52 secondsstatement and it should be like if the condition dot operator if the case is
4:31:004 hours, 31 minutesuh equals. So equals then we have to return the normalize
4:31:084 hours, 31 minutes, 8 secondsthen we have to send the actual uh like the condition and we have to normalize the expected one and then if it's matching then true otherwise false and
4:31:174 hours, 31 minutes, 17 secondsfor the not equals case we can say something like this just not matching with the normalized then it's not equals and it's true otherwise by default it
4:31:264 hours, 31 minutes, 26 secondsfalse that's it we can save it right now right now the everything will work. But there
4:31:334 hours, 31 minutes, 33 secondsis also another small mistake. If we come back here, if you check our database, you can see the web hook URL
4:31:414 hours, 31 minutes, 41 secondshere, we uh added actually alert, not alerts.
4:31:464 hours, 31 minutes, 46 secondsI basically changed it. That's why it's saying alerts. But I mistakenly, we mistakenly added alert, which is wrong endpoint. It should be actually alerts.
4:31:544 hours, 31 minutes, 54 secondsThere is going to be one extra S in here. Now if we try it again it's going to give an error. The reason is our
4:32:034 hours, 32 minutes, 3 secondsalert is working based on the radius database not from here. This is the
4:32:094 hours, 32 minutes, 9 secondssource of truth or the like the main primary database but for our this consumer it's basically using radius and
4:32:184 hours, 32 minutes, 18 secondsinside the radius it's still the wrong one. It's still the alert not alerts. So then how can we fix this problem? How
4:32:264 hours, 32 minutes, 26 secondscan we solve this problem? To solve this problem, uh we have actually one solution. We can
4:32:344 hours, 32 minutes, 34 secondsdelete this one. At first, let me copy the web hook URL. Yeah, we can delete this
4:32:414 hours, 32 minutes, 41 secondsand we can come back here again. Then give reload. You will see still three in here which is very natural. Now here
4:32:494 hours, 32 minutes, 49 secondslet's say test again app name one minute locks and yeah that's it five uh
4:32:584 hours, 32 minutes, 58 secondstriggers when it's matching five matching logs within 5 minutes in web hook URL be make sure to add this same
4:33:054 hours, 33 minutes, 5 secondsURL now yeah now if we hit create alert you can see it will be still three but at the same time it will update our
4:33:144 hours, 33 minutes, 14 secondscache now let's come back here. H sorry no I am not calling Siri. Okay, sorry.
4:33:254 hours, 33 minutes, 25 secondsLet's give reload. Let's come back here to our services.
4:33:304 hours, 33 minutes, 30 secondsAnd here we go. You can see it's saying missing authentication token. Uh which is natural because in here in this case
4:33:384 hours, 33 minutes, 38 secondsweb hook we have to just comment the og guard and you will notice this console log that received web hook alert message now. So I'm giving on reload again.
4:33:484 hours, 33 minutes, 48 secondsHere you go. You can see received web hook alert. It means it's actually sending us an web hook alert. Now what's
4:33:564 hours, 33 minutes, 56 secondsthe next step? The next step is basically connected with our SDK with our npm SDK. So since this is uh uh nest
4:34:054 hours, 34 minutes, 5 secondsjs we have to create basically another SDK that one minute locks nest and inside that we can call that let's say
4:34:124 hours, 34 minutes, 12 secondsthis lock dot basically verify web hook which is already available in a production version. So I'm not showing this to you because this is like another
4:34:204 hours, 34 minutes, 20 secondsuh like like another framework SDK we have to create but for nextj we can I can show you what you have to do. So for
4:34:274 hours, 34 minutes, 27 secondsnextjs if you're trying it with nextjs and then since it's working we can basically delete this because this is just for showing you that yeah it's working properly the alerting mechanism.
4:34:394 hours, 34 minutes, 39 secondsNow uh let's come back to our here again and let's add that verify web hook. How can you add it? Let me show you.
4:34:504 hours, 34 minutes, 50 secondsSo verify web hook and uh we can basically go inside this core and
4:34:564 hours, 34 minutes, 56 secondsindex.ts. Yeah, exactly. And from here we can say verify
4:35:054 hours, 35 minutes, 5 secondsweb hook. We have to pass here the options as the parameter which is going to be the verify web hook options.
4:35:204 hours, 35 minutes, 20 secondsand transport dot verify web hook which is not available yet but we can create it in this transport.
4:35:304 hours, 35 minutes, 30 secondsThis transport is basically coming from this OML transport. Let's come back inside this
4:35:384 hours, 35 minutes, 38 secondsand here ah we're already having the verify webbook you can see. Wow. So yeah, it's already in here the verify
4:35:474 hours, 35 minutes, 47 secondsweb hook. You can see if it's not having in your codebase then you can just basically add it by yourself.
4:35:544 hours, 35 minutes, 54 secondsYeah. And then we finally returning the result. All good. So we can come back here
4:36:014 hours, 36 minutes, 1 secondand we can add our transport verify web hook and we can pass the options in here.
4:36:144 hours, 36 minutes, 14 secondsYeah. And on comma. Now verify web hook options. It's basically on type which we can import from here. It's like this.
4:36:234 hours, 36 minutes, 23 secondsYeah. That's it. Nothing else. Now, right now everything is going to work.
4:36:274 hours, 36 minutes, 27 secondsYou can right now use the verify web hook endpoint.
4:36:314 hours, 36 minutes, 31 secondsHowever, in our index.ts, everything is fine actually in here. Yeah. So if we build
4:36:394 hours, 36 minutes, 39 secondsour npm SDK we can say npm run build
4:36:474 hours, 36 minutes, 47 secondsah sorry npm run build. Now if we come back to our apps main dashboard this API
4:36:564 hours, 36 minutes, 56 secondstest and from here we can see we can right now use our logger dot verify web hook. Yeah, you can see we can write now
4:37:044 hours, 37 minutes, 4 secondsuser verify web hook and what we have to pass inside the verify web hook. So verify way hook where we have to call it we have to call it basically inside this
4:37:144 hours, 37 minutes, 14 secondsalert controller right like where we are basically adding the like test way right so that endp point we have to pass the
4:37:214 hours, 37 minutes, 21 secondssame plan signature time stamp and body if you uh like uh I'm suggesting you right now we are not watching it but after like when I will deploy it you can
4:37:304 hours, 37 minutes, 30 secondsgo to our run logs and then docs and you can check the NJS next JS or express JS
4:37:374 hours, 37 minutes, 37 secondsand you can see the example that how to use this. Okay, how to use the verify waybook method. Yeah, that's it. So, it's actually working. You can see the
4:37:464 hours, 37 minutes, 46 secondsmethod is working. It means it's actually working properly. We can save it and close all of this. And that's it.
4:37:554 hours, 37 minutes, 55 secondsNow, what next? The next uh task is basically finishing our this dashboard
4:38:034 hours, 38 minutes, 3 secondshomepage. Yeah, that's the only work left right now. We can finish it. It's not uh hard. It's just like some stats
4:38:114 hours, 38 minutes, 11 secondsand after that we will deploy it. And for deploying I would like to let you know a few things. So since uh our back
4:38:194 hours, 38 minutes, 19 secondsend and front end definitely we have to deploy it in a different like server.
4:38:234 hours, 38 minutes, 23 secondsfor the back end. Uh I I was checking some options the like there is uh hostinger which is the cheapest option
4:38:314 hours, 38 minutes, 31 secondsbut you have to pay like early and there's there's no free options for deploying autom for sure because we're using click house we're using docker
4:38:404 hours, 38 minutes, 40 secondswe're using radius and so many things which requires high like uh computing power like the RAM must need to be at
4:38:474 hours, 38 minutes, 47 secondsleast 16 GB to use it in like even like for 100 or 200 users. Yeah, that's that's that's like base requirement for over this server.
4:38:594 hours, 38 minutes, 59 secondsSo 16 GB RAM and let's say 200 GB SSD which is also like uh yeah 200 GB SSD good enough and for terab like the for
4:39:084 hours, 39 minutes, 8 secondsbandwidth bandwidth like 2 terabyte is also fine that's fine because early version we're not having a lot of users.
4:39:154 hours, 39 minutes, 15 secondsYeah, that's fine. But uh for this one uh I'm not sure yet where I'm going to
4:39:224 hours, 39 minutes, 22 secondsdeploy it the production one because I basically like need to talk with them because I will I'll deploy for a long time that's why but I am having a
4:39:304 hours, 39 minutes, 30 secondsoptions is called Hner. I already use it. I like Hensner and the reason is actually it's it's not cheap to be
4:39:384 hours, 39 minutes, 38 secondshonest because if you check the servers you can see the dedicated servers it's literally like for 16 GB it's $1001
4:39:474 hours, 39 minutes, 47 secondscrazy expensive right and even for the regular performance it's also like expensive for 16 GB RAM it's still
4:39:564 hours, 39 minutes, 56 seconds$81.99 like $8259 is total very expensive it's natural
4:40:034 hours, 40 minutes, 3 secondsIt's expensive because like uh you can see the computing power is like like we need more computing power and the reason
4:40:104 hours, 40 minutes, 10 secondsis click house is the reason uh radius is also another reason we're also using net jet stream that that also need like
4:40:184 hours, 40 minutes, 18 secondshigh like processing power but definitely it's better than the other message broker like Kafka even if we were if we were using Kafka we need
4:40:264 hours, 40 minutes, 26 secondsactually more RAM and more uh storage and everything but for net jam click house and radius this one is actually
4:40:354 hours, 40 minutes, 35 secondsfine the 16 GB RAM and 320 GB SSD this one this version if you're like planning to deploy it somewhere yeah and that's
4:40:434 hours, 40 minutes, 43 secondsthe reason that's the reason you should use the subscription from the website because think about it when you're using the same thing from our website then
4:40:524 hours, 40 minutes, 52 secondsit's just $10 only $10 the starter plan when you're deploying it it's more expensive and it's very simple it's very
4:41:004 hours, 41 minutesnatural for us It's cheaper because like uh we are working on like mass value like there are multiple users that's why
4:41:084 hours, 41 minutes, 8 secondsour expenses is low but when you are doing it just by just for your application then it's then it's actually high but if you're launching it as a SAS
4:41:174 hours, 41 minutes, 17 secondsthat's that's a different thing. All right so let's go to our services source folder and our uh modules and the locks
4:41:264 hours, 41 minutes, 26 secondsmodule. So basically inside our logs module uh I'd like to share this with you why why this happened because you
4:41:344 hours, 41 minutes, 34 secondscan see this function this module it's actually new it was not in the first part but then how did it ended up in
4:41:414 hours, 41 minutes, 41 secondshere the reason is in our git ignore somehow mistakenly I added here locks
4:41:494 hours, 41 minutes, 49 secondsactually I didn't do it the next ch itself did this added here locks and that's the reason because of that reason
4:41:564 hours, 41 minutes, 56 secondslike this locks module completely didn't go to our GitHub. You can understand when I like pushed the first version
4:42:054 hours, 42 minutes, 5 secondssorry not first version the first part source code into GitHub this locks module were ignored by this g ignore and
4:42:134 hours, 42 minutes, 13 secondsthat's why when I basically like clone it again with the real code and like it's right now a little bit different
4:42:214 hours, 42 minutes, 21 secondsthan the earlier version because I didn't have the earlier version access right now that's why but no worries I just added this I mean I did it by
4:42:304 hours, 42 minutes, 30 secondsmyself because the application is already ready that's why. So you can see this is another like private module not
4:42:374 hours, 42 minutes, 37 secondsprivate module it's for the SSE metric SEC. So metric SEC means this stats like the locks for 24 hours it's basically on
4:42:444 hours, 42 minutes, 44 secondslive streaming. Same for the ingest rate the average latency and Q backlog and all of these this these are basically right now dynamic. So let's see what you are doing what we're doing in here.
4:42:554 hours, 42 minutes, 55 secondsWe're basically creating on event stream again and we're checking everything from our radius database like the ingest lust
4:43:024 hours, 43 minutes, 2 secondsrate, the ingest backlog, the ingest average latency and then we're making the payload and then we're basically
4:43:094 hours, 43 minutes, 9 secondssending it as a response. Same goes for our controller. This is just an endpoint uh protected by our ogurt and we're
4:43:184 hours, 43 minutes, 18 secondssending like we're streaming it. We're sending this to our like this API response. Now we have to do one thing.
4:43:254 hours, 43 minutes, 25 secondsWe have to come back to our main dashboard app API and inside here we can create a new folder by giving name
4:43:334 hours, 43 minutes, 33 secondssomething like this that live matrix and in here we can create our route.ts.
4:43:394 hours, 43 minutes, 39 secondsYeah. Now here let's add our endpoint. It's going to be basically on get endpoint because we're
4:43:474 hours, 43 minutes, 47 secondsgoing to use we're going to use this live matrix. We're going to fetch it from our dashboard from this main dashboard. We're going to call this live
4:43:554 hours, 43 minutes, 55 secondsmatrix endpoint. The reason is we need to send our like the authorization token and we don't want the service send
4:44:044 hours, 44 minutes, 4 secondsevents to use inside the client side and as I know it's not possible. So that's why you must need to use that like
4:44:114 hours, 44 minutes, 11 secondsreceive that service send events inside here and this live matrix or this next JS API is going to forward that service
4:44:204 hours, 44 minutes, 20 secondsevents. Yeah, that's what we're doing in here. So here we can just do the same thing which we do inside like in fetch
4:44:274 hours, 44 minutes, 27 secondsfunction when we fetch something we first check our o token uh actually slashback end yeah
4:44:374 hours, 44 minutes, 37 secondsserver not back end. So first we fetch our o token because without o token we cannot like pass the middleware uh not
4:44:454 hours, 44 minutes, 45 secondsmiddleware guard or o guard we must need to pass this o token. So that's why we are sending like on fetch request to our
4:44:544 hours, 44 minutes, 54 secondsserver URIs then / locks metrics and stream and this is our that o token and this is for service events that's why no
4:45:034 hours, 45 minutes, 3 secondsstore cache and revalidate when it's zero. Yeah if there is no body then there is something wrong. So we can say upstream
4:45:124 hours, 45 minutes, 12 secondsright now unavailable otherwise we can return this but not as a JSON response but as a text event stream response.
4:45:204 hours, 45 minutes, 20 secondsYeah, if it's catch any error, we can console error that message error message and we can return the error as well that internal server internal server error.
4:45:314 hours, 45 minutes, 31 secondsThat's it. Our endpoint is ready. We can come back to our page.tsx in here and we
4:45:384 hours, 45 minutes, 38 secondscan basically make it dynamic now one by one.
4:45:424 hours, 45 minutes, 42 secondsSo the first uh first work in here is basically we have to fetch actually so many thing
4:45:494 hours, 45 minutes, 49 secondsin here for now let's scroll down
4:45:554 hours, 45 minutes, 55 secondslocks data. Yep. So and alerts data we also need our alerts data and our is
4:46:034 hours, 46 minutes, 3 secondsloading alerts. Yeah. So backend alert this is basically an type for our alert data
4:46:114 hours, 46 minutes, 11 secondssomething like this. However let's add it outside this function. Yeah.
4:46:214 hours, 46 minutes, 21 secondsThen after this inside here we can use our use effect hook.
4:46:374 hours, 46 minutes, 37 secondsWhy use effect? Use effect to call the API endpoint. So use effect snippet. I don't want to write everything by
4:46:444 hours, 46 minutes, 44 secondsmyself. Yeah. Then here we can say const fetch locks
4:46:514 hours, 46 minutes, 51 secondsand as sync and then we can add here and try catch statement and inside this try we can
4:46:594 hours, 46 minutes, 59 secondsbasically send on request API request to our API locks and get locks. So this is
4:47:064 hours, 47 minutes, 6 secondsbasically another API endpoint which we have to create and then we can show our data in here the locks data.
4:47:154 hours, 47 minutes, 15 secondsSame goes here if it's catch any error then just show the error message. So error actually. Yeah. And then we can
4:47:224 hours, 47 minutes, 22 secondscall this fetch logs. And if we save it, it's going to give some error because we have to
4:47:304 hours, 47 minutes, 30 secondscome back to our API
4:47:364 hours, 47 minutes, 36 secondslocks and get logs. Then inside here we can say
4:47:454 hours, 47 minutes, 45 secondsroute.ts ts and it's basically going to be something like this. Let me show you. So that's
4:47:524 hours, 47 minutes, 52 secondssame get uh token and token and here we're basically adding on query. So you can see QS
4:48:004 hours, 48 minutesand the range is 24our because we need last 24 hours locks number that's why we're adding this QS that range 24 hours
4:48:084 hours, 48 minutes, 8 secondsand we're basically sending this request to our uh get dashboard locks. This is not available to be honest. this API
4:48:144 hours, 48 minutes, 14 secondsendpoint. Okay, fine. We have to create this I guess or wait let me let me save first.
4:48:264 hours, 48 minutes, 26 secondsLet's come back to our services source modules locks and no it's already here. Get dashboard locks.
4:48:384 hours, 48 minutes, 38 secondsSo okay. So it's basically the same git locks. You can see it's the same gate logs but we are just adding a new endpoint, a new API endpoint. That's it.
4:48:474 hours, 48 minutes, 47 secondsNothing else.
4:48:494 hours, 48 minutes, 49 secondsWow. Here you go. Our logs data is right now here dynamic. You can see 50 logs we
4:48:554 hours, 48 minutes, 55 secondsreceived in last 24 hours. These are the like sources and everything. Wow. And here also it's dynamic. Great.
4:49:064 hours, 49 minutes, 6 secondsNow what next? The next work is basically after getting the logs what next? We can come back here. We can right now fetch our alerts data.
4:49:184 hours, 49 minutes, 18 secondsSo let's do one thing. Let's add our fetch alerts function like this.
4:49:264 hours, 49 minutes, 26 secondsAnd here we are going to use the try catch statement again. And we're going to make our set is loading alerts true.
4:49:374 hours, 49 minutes, 37 secondsThen we need the sim get token and for the response we're basically
4:49:444 hours, 49 minutes, 44 secondswe're basically fetching the alerts now and then
4:49:524 hours, 49 minutes, 52 secondsif it's catch any error then that's fail to fetch the alerts otherwise we can set the value inside our set alerts data.
4:50:004 hours, 50 minutesYeah, same goes for here we can basically
4:50:094 hours, 50 minutes, 9 secondsadd something like this. And finally, finally we can say set is loading alerts
4:50:164 hours, 50 minutes, 16 secondsand we can make it false. We can save it now. And then here
4:50:234 hours, 50 minutes, 23 secondswe can call our fetch alerts and is loaded and is signed in.
4:50:354 hours, 50 minutes, 35 secondsThat's it.
4:50:374 hours, 50 minutes, 37 secondsUh so wait this is basically on simple async function.
4:50:444 hours, 50 minutes, 44 secondsWhy I'm adding this?
4:50:544 hours, 50 minutes, 54 secondsOkay, let let's do one thing. I'm adding this because let's let's do one thing.
4:51:054 hours, 51 minutes, 5 secondsSo, let's cut this and let's add it inside on use effect hook.
4:51:134 hours, 51 minutes, 13 secondsUse effect snippet. And now if we paste it. Yeah. Now we can add those like is loaded.
4:51:294 hours, 51 minutes, 29 secondsI think I did small mistake here.
4:51:344 hours, 51 minutes, 34 secondsYeah. Now is loaded. Is loaded is basically coming from our that use user.
4:51:424 hours, 51 minutes, 42 secondsSo let's add it in here. is loaded and is signed in.
4:51:534 hours, 51 minutes, 53 secondsYeah, we can save it now. Here we go.
4:51:564 hours, 51 minutes, 56 secondsActive alert still zero because we have to make it dynamic. Yeah, but we are getting our alerts right now as well.
4:52:044 hours, 52 minutes, 4 secondsSo, error data in here, everything fine, locks fine, all good.
4:52:154 hours, 52 minutes, 15 secondsjust for our alerts.
4:52:244 hours, 52 minutes, 24 secondsH alerts in the top activity. If you check our top activity, uh it's also fine.
4:52:344 hours, 52 minutes, 34 secondsOkay. So, search for alerts.
4:52:384 hours, 52 minutes, 38 secondsYeah. So, here you can see active alerts.
4:52:424 hours, 52 minutes, 42 secondsWe can change this value from we can say is loading alerts if it's true then something like this otherwise alerts data dot length.
4:52:554 hours, 52 minutes, 55 secondsYeah, we can save it. And here you go. We are having three active alerts. Now for the average latency,
4:53:044 hours, 53 minutes, 4 secondsit's going to be the metrics average latency. It's not showing us anything
4:53:114 hours, 53 minutes, 11 secondsbecause matrix set matrix we have to set the matrix. Yeah.
4:53:164 hours, 53 minutes, 16 secondsOkay. Fine. Let's do one thing for the matrix.
4:53:204 hours, 53 minutes, 20 secondsLet's add here another use effect hook use effect.
4:53:304 hours, 53 minutes, 30 secondsAnd here we can say since this is an event source so con es new event source to our API and live
4:53:374 hours, 53 minutes, 37 secondsmatrix. Now es on message inside here we can add on another try catch statement.
4:53:494 hours, 53 minutes, 49 secondsWe can have the payload in here just rate in here the backlog and the average
4:53:564 hours, 53 minutes, 56 secondslatency. And then we can set all of this into our set matrix state. Yeah, that's
4:54:034 hours, 54 minutes, 3 secondsall. And if it's catch any error, then we can basically close that. And then finally, we have to
4:54:114 hours, 54 minutes, 11 secondsreturn our ES dot close.
4:54:174 hours, 54 minutes, 17 secondsYeah, we can save it. Here you go. You can see 8 milliseconds and zero jobs.
4:54:244 hours, 54 minutes, 24 secondsSo, it's also dynamic. given inest rate is right now saying one by 1 second. So that's basically like the like last uh
4:54:324 hours, 54 minutes, 32 secondslogs which we stored. So that's was probably one that's why it's saying 1 second. Yeah, everything is dynamic in here.
4:54:404 hours, 54 minutes, 40 secondsThat's the most important part for recent alerts. It's not dynamic yet. So
4:54:464 hours, 54 minutes, 46 secondsrecent alerts, let's come back to our recent alerts.
4:54:524 hours, 54 minutes, 52 secondsYeah, here we can uh basically cut this part. We can say
4:55:004 hours, 55 minutesis loading alerts. Then on D with class name flex H full
4:55:094 hours, 55 minutes, 9 secondsitem center justify center text SM and
4:55:174 hours, 55 minutes, 17 secondstext mutate foreground and then inside here we can
4:55:254 hours, 55 minutes, 25 secondssay that loading the alerts otherwise Otherwise
4:55:334 hours, 55 minutes, 33 secondsif our recent alerts uh basically the alerts. So
4:55:424 hours, 55 minutes, 42 secondsrecent alerts we have to create this one recent alerts.
4:55:484 hours, 55 minutes, 48 secondsIt's basically just on sorting like we we have to use a use memo in here. We can come back here. We can say con
4:55:554 hours, 55 minutes, 55 secondsrecent alerts and use memo.
4:56:064 hours, 56 minutes, 6 secondsInside here we can return our alerts data but we have to sort it.
4:56:204 hours, 56 minutes, 20 secondsWe can say con A date the new date a dot last triggered
4:56:304 hours, 56 minutes, 30 secondsthen a dot created at or zero. Yeah,
4:56:384 hours, 56 minutes, 38 secondsnot then it's basically or you can see that this is meanings and then get time
4:56:474 hours, 56 minutes, 47 secondsand con the b date which we can say new date then B dot
4:56:574 hours, 56 minutes, 57 secondslist triggered B dot created at R0
4:57:044 hours, 57 minutes, 4 secondsand here we can say date time we can call it and we can return the B date
4:57:114 hours, 57 minutes, 11 secondsminus A date. Yeah. And then we can show only four heist like four alerts
4:57:204 hours, 57 minutes, 20 secondsmessages. So we can slice it to 0 to four. And in the dependency area we can add the alerts data. Now let's come back here again and this recent alerts.
4:57:344 hours, 57 minutes, 34 secondsrecent alerts dot length if it's more than
4:57:424 hours, 57 minutes, 42 secondszero then we can basically do some work we can just for now add on div otherwise we
4:57:514 hours, 57 minutes, 51 secondscan show this message that enough data not available yet yeah but in here if we're having more than zero then we have
4:57:584 hours, 57 minutes, 58 secondsto add here d with class name space y3 three
4:58:034 hours, 58 minutes, 3 secondsand our recent alerts dot map
4:58:114 hours, 58 minutes, 11 secondsin here we can say the activity date when it happened. So alert dot last
4:58:184 hours, 58 minutes, 18 secondstriggered or the alert dot created at yeah then we can return
4:58:274 hours, 58 minutes, 27 secondsthe div with key alert dot id and the class name something like this.
4:58:364 hours, 58 minutes, 36 secondsInside here we can add another div with this class names.
4:58:454 hours, 58 minutes, 45 secondsThen on small D with something like this that alert name and alert app name you can see already in here.
4:58:554 hours, 58 minutes, 55 secondsUh after this we can have our alert status which is for now like active always. So active and alert summary alert summary.
4:59:094 hours, 59 minutes, 9 secondsThen finally the alert count locks. So the final version this is like alert
4:59:184 hours, 59 minutes, 18 secondsthreshold count logs for this finish and format from our time agojs
4:59:264 hours, 59 minutes, 26 secondssomething like this and we can see we can see the styling and everything. So yeah we can see five logs in 5 minutes last like triggered one 32 minutes ago.
4:59:384 hours, 59 minutes, 38 secondsThis is the recent alerts. Yeah, it's all looks great.
4:59:464 hours, 59 minutes, 46 secondsYep, that's it. Here we could add some more logs, but for now, actually, let let me
4:59:534 hours, 59 minutes, 53 secondssee how many we added in here. Top activity, we said top activity, not five. We should add more actually.
5:00:095 hours, 9 secondsTop activity.
5:00:185 hours, 18 secondsTop activity. Top activity. Top sources. Not five.
5:00:315 hours, 31 secondsUh, no, it's not getting added. Okay, here it is.
5:00:415 hours, 41 secondsI think it's going to be 10 now. Still very small. 15.
5:00:475 hours, 47 secondsYeah, then it makes sense. Or I guess 20 would be the best number.
5:00:555 hours, 55 secondsNo, it's little bigger. Okay, 18. Yeah, that's fine for now.
5:01:035 hours, 1 minute, 3 seconds[snorts] Or highest 16. Yeah, it's fully same now. Okay, great. So, our dashboard
5:01:115 hours, 1 minute, 11 secondsis also ready. I mean the overview page, it's fully dynamic. You can already see when we're hovering it, it's giving us the real data and all of them are
5:01:215 hours, 1 minute, 21 secondsactually live in here. This is saying live because this is actually like live streaming. That's why. So, yeah,
5:01:285 hours, 1 minute, 28 secondseverything ready in live server is a little bit slow.
5:01:335 hours, 1 minute, 33 secondsThat's why it's for showing empty screen where we could add on loader. So let me show you where. So in this live locks
5:01:415 hours, 1 minute, 41 secondsor live metrics sorry actually here live locks in here is loading is true
5:01:495 hours, 1 minute, 49 secondsthen return null instead of null you can return on loader then it will show loader instead of null.
5:01:565 hours, 1 minute, 56 secondsYeah. So everything is fully ready. Now it's time for deployment. Only this
5:02:035 hours, 2 minutes, 3 secondsintegration is not ready. This integration is not ready because it's basically a static thing. I'm not going to showing this to you because there's
5:02:115 hours, 2 minutes, 11 secondsno back end thing in here. You can also check it from the website like the live version. There is already the everything in there and I don't think I should like
5:02:215 hours, 2 minutes, 21 secondsshow you the documentation as well because that's not the core part of this application. Yeah, I hope you
5:02:285 hours, 2 minutes, 28 secondsunderstand. And that's it. This is the SAS right now. We have to deploy. All right guys, I just made a decision. Even
5:02:365 hours, 2 minutes, 36 secondsthough I was saying from the first of this video that I'll show you the deployment, but this application is actually real SAS which I already like
5:02:445 hours, 2 minutes, 44 secondstold you at the beginning of this video that it's actually real SAS of mine and you can easily see that by going to one minutelogs.com.
5:02:535 hours, 2 minutes, 53 secondsBut right now if I show you the deployment when I'm deploying it like really then it's like it's going to conflict with our internal security
5:03:015 hours, 3 minutes, 1 secondwhich is very natural. So I don't want to show you and it's not actually about me. I should not show you or I cannot
5:03:095 hours, 3 minutes, 9 secondsshow you actually because right now when we're deploying it we're going to have like the like like we're going to have
5:03:175 hours, 3 minutes, 17 secondsbasically our this SSH keys which is the secret part. We're also having our server IP address then some private
5:03:255 hours, 3 minutes, 25 secondssetup which is like very normal for any application. But since I promised you that I will show you the deployment, I'll still show you but not in the
5:03:345 hours, 3 minutes, 34 secondsvideo. I will attach on PDF link in the video description box. You can just find out it in the video description box that deployment guide. Please click there.
5:03:445 hours, 3 minutes, 44 secondsYou going to see an stepbystep like guide. But in that part when I'm making the PDF then I'm going to hide this like
5:03:525 hours, 3 minutes, 52 secondsSSH keys. I'm going to probably like blur those things so that I can keep the security like packed. I mean I can keep my application secret at the same time.
5:04:015 hours, 4 minutes, 1 secondI can also show you how can you deploy because this is just for learning purpose. If you want to really deploy it that's good because you can already see
5:04:105 hours, 4 minutes, 10 secondsI will explain it why you should not do it like for just like hobby purpose because it's very expensive. We can already see you must need 16 GB RAM and
5:04:195 hours, 4 minutes, 19 secondswhy why you require this I also explain it because we're using click house docker radius and so many things which requires actually a lot of RAM because
5:04:295 hours, 4 minutes, 29 secondsclick house itself it takes a lot of RAM space same goes for the net state stream same goes for our like uh radius and
5:04:375 hours, 4 minutes, 37 secondsthere are so many things we're using right so all of them even same goes for the Nestj Njs also take a lot of RAM power that's why minimum requirement is
5:04:465 hours, 4 minutes, 46 secondsthe 16 GB. And this one, this is the the dedicated server. You can see the VCP VPS. It's crazy expensive. It's literally $11. And this one is $81.99.
5:05:005 hours, 5 minutesYou're probably going to think we're using HNA. That's why it's like expensive like this. But if you go to our like hostinger
5:05:085 hours, 5 minutes, 8 secondshostinger hostinger then you can see wait why it's showing
5:05:165 hours, 5 minutes, 16 secondsThai because I'm staying in Thailand now that's why just a minute English US United States yeah
5:05:265 hours, 5 minutes, 26 secondsnow from here you can see it looks very cheap I know you can see it's just $13 $1. Where is
5:05:345 hours, 5 minutes, 34 seconds$13? Where is like the $82? Definitely not the same, right? But this is for 2 years deal. If you click this choose
5:05:425 hours, 5 minutes, 42 secondsplan, you can see you right now have to pay literally $333.
5:05:515 hours, 5 minutes, 51 secondsCrazy, right? If you're paying for one month, then you can see it's expensive. It's $27.81. Yeah, definitely cheaper than this one.
5:06:005 hours, 6 minutesUh 16 GB. It's more cheaper but uh you have to pay it first and uh yeah in here
5:06:085 hours, 6 minutes, 8 secondsI I think uh hensner giving more traffic like more bandwidth more SSD at the same time. So yeah hostinger is cheaper but
5:06:185 hours, 6 minutes, 18 secondshensner it's like famous it's it's good for like dedicated server and this type of things. So yeah it's definitely ups to you. I'm not going to say anything.
5:06:285 hours, 6 minutes, 28 secondsYou can still check it out the deployment guide in the video description box. Just click there.
5:06:345 hours, 6 minutes, 34 secondsYou'll get an step-by-step deployment guide. So that's it. I hope you enjoyed this series. If you have any question,
5:06:425 hours, 6 minutes, 42 secondsfeel free to ask me in the comment section. I would love to hear it because this is a real s and I want you to try it out. I want you to try I want you to
5:06:505 hours, 6 minutes, 50 secondsfind out bugs inside the production one and just let me know. I'll definitely fix that because I'm really grateful for
5:06:585 hours, 6 minutes, 58 secondsthis long journey this SAS it was not a small one to be honest I'm working in the SAS like for more than last one year which is a long time and why one year
5:07:075 hours, 7 minutes, 7 secondsbecause when I started working in this SAS I did a lot of mistake that time I didn't follow that proper event-driven architecture which is very important for
5:07:165 hours, 7 minutes, 16 secondsour monitoring tool SAS given the scale or like the amount of requests we're going to process we must need to follow
5:07:235 hours, 7 minutes, 23 secondsstrictly on event-driven architecture ure. So that's it. It was really a great journey and I hope you enjoyed it. And again if you have any question or any
5:07:325 hours, 7 minutes, 32 secondssuggestion feel free to let me know in the comment section. See you in the next series. Till then take care and bye-bye.

Sync to video time
