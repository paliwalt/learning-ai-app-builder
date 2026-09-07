https://www.youtube.com/watch?v=pX-IzYQUkFs

Building a Production-Grade Video Infrastructure SaaS — Full Backend Architecture (Part 3/3)
Becodemy
Becodemy
56.8k subscribers

Join


181


Share

Ask

Save

4,335 views  5 Jun 2026  #saas #infrastructuredevelopment #nestjs
Welcome to last part of one of the most advanced production-grade web application series on YouTube. In this series, we’re building a real SaaS product of mine called Vidmox — a developer-first video infrastructure platform, similar to Mux, but focused heavily on better developer experience, predictable pricing, and scalable architecture.

This is a real infrastructure SaaS I’ve been researching and architecting for over a year — studying the market, analyzing industry leaders, and designing a system that can scale to thousands of users while maintaining healthy margins.

Important Links
Vidmox: https://vidmox.com
Starter Project Setup: https://github.com/shahriarsajeeb/vid...
Project Source Code: https://www.becodemy.com/source-codes...

Tools used in this series
Clerk → https://oneminute.run/clerk
Brilliant → https://oneminute.run/brilliant
OneMinute Cloud → https://oneminute.run/cloud

💡 What You’ll Learn in This Series
Video hosting architecture
Encoding & transcoding pipelines
HLS / CDN playback strategy
Advanced system design decisions
Designing highly scalable guards
Building a developer-first SDK
Analytics & event tracking
Event-Driven Architecture in production
Real SaaS business decisions

This is deep, real-world engineering.

📌 Timestamps
00:00 Introduction
00:53 Platform Overview
01:45 Building the Video Player Service
29:13 Building the Vidmox Player SDK
01:31:58 Video Analytics Service — Event-Driven Architecture
02:42:37 Integrating Analytics into the Vidmox Player SDK
03:00:34 Making Analytics Work Across the Entire Frontend
03:45:31 Building the Dynamic Video Details Page
04:08:05 Billing Page & Backend Service
04:55:39 Adding the Player Access Guard
05:02:04 Player Customization Features
05:38:50 Custom Watermark & Branding Features
06:09:50 Outro & Wrap Up

📲 Follow Becodemy
Twitter (X): https://x.com/iShahriarsajeeb
Instagram:   / shahriar_sajeeb_  
LinkedIn:   / shahriar-sajeeb-76763222a  

Drop your questions in the comments — I’ll be replying to serious developers who want to level up.

Like, Subscribe & Turn on Notifications — this series is gonna be fire!

For business inquiries:
sponsorship@becodemy.com

#nestjs #infrastructuredevelopment #saas #becodemy #vidmox
Ask
-------------------------------------------------------------------------------------------------

In this video


Chapters

Transcript
Search transcript
Search transcript

Chapter 1: Introduction
0:000 secondsover $5 billion. That's how much videoing sales platforms made in 2025.
0:066 secondsAnd there's a projection that it will reach to 10 billion within 2030. You can easily understand the huge market of
0:1414 secondsvideo hosting platform says. But building a real videoing sales platform, it's not easy. Storage, bandwidth,
0:2121 secondstranscoding, delivery, logic, analytics, and most importantly, merging. If you don't design it properly, your margin
0:2929 secondswill disappear. For the last one year, I have been researching and building my own video hosting SAS Vidmox. And in
0:3737 secondsthis series, for the first time ever, I'm building a real infrastructure s publicly on YouTube. I'm super excited
0:4545 secondsto start this series as you are. So, don't waste any time. Let's see a quick short demo of what we're going to build in this series. Welcome back to the last
Chapter 2: Platform Overview
0:5454 secondspart of Vidmox series. In this part, we're going to finish the full Vidmox.
1:001 minuteYou can already see the dashboard is dynamic in here. The minute streamed is completely dynamic. The total request
1:061 minute, 6 secondsdynamic. Even this top visitors is also fully dynamic. You can check the analytics from here. This is completely
1:171 minute, 17 secondsdynamic. There is unique viewers, average view duration, watch time and everything. You can right now play the video from here like you can change the video player.
1:281 minute, 28 secondsYou can change the water American branding and everything. We have the billing activate right now. There's so many things we're going to do in this
1:361 minute, 36 secondspart and we're going to actually finish the full Vidmox application. So, I'm super excited to start the video. Don't waste any time. Let's start the coding
1:441 minute, 44 secondspart. All right. Welcome back. Welcome back again to Vidmox series. So let's start uh our next part and right now we
Chapter 3: Building the Video Player Service
1:531 minute, 53 secondsare going to start to work inside our back end uh playlist module. Sorry not playlist
2:002 minutesplayer module. What is the player module is actually going to do? The player module is going to play the video or stream the video. So yeah don't wasting
2:102 minutes, 10 secondstime. Let's start to do it inside this modules. Let's start a new folder.
2:152 minutes, 15 secondsSorry. Let's create a new folder by giving name player. And let's create our player module.ts.
2:252 minutes, 25 secondsPlayer service.ts and the player controller.ts.
2:362 minutes, 36 secondsYep. Now inside player module let's come here and let's add here on module decorator
2:442 minutes, 44 secondsfrom this desk/ common add here imports and we need here our JWT module so we
2:542 minutes, 54 secondsare going to use the JWT module it's not here because we have to actually install
3:013 minutes, 1 secondlet's just/ JWT uh JWT yeah so let's come back here
3:093 minutes, 9 secondsand go to our services and yeah we can install this NestJS/JWT.
3:203 minutes, 20 secondsSo why do we need the JWT? Because uh we are going to sign our player with an access token so that we can verify the
3:283 minutes, 28 secondsrequest properly and it's very important for implementing the security for our video player. That's when we need the JWT token.
3:373 minutes, 37 secondsUm not JWT token, we need a JWT library because we're going to implement some security mechanism inside our player
3:443 minutes, 44 secondsservice. Now here after this we can say dotregister as sync and we can import
3:533 minutes, 53 secondsour config module from nest/config.
3:583 minutes, 58 secondsAfter this, let's use the use factory and async
4:084 minutes, 8 secondsuh config service the type is going to be the config
4:174 minutes, 17 secondsservice. Yeah. And here C is not going to be capital.
4:224 minutes, 22 secondsYep. So we are basically like adding our uh like env variable in here something
4:304 minutes, 30 secondslike this that uh 1 minute
4:374 minutes, 37 secondsI did some syntax mistake here we have to add another first bracket and here yeah now in here we're
4:464 minutes, 46 secondssaying a secret for our analytics JWT secret so we basically need this JW ility token for implementing analytics
4:554 minutes, 55 secondsand for controlling our player like the internal things. So that's why we we need actually a variable on ENV variable. We'll create that after some
5:035 minutes, 3 secondstime. After this we need to inject our config service.
5:115 minutes, 11 secondsYep.
5:135 minutes, 13 secondsThen here let's add the controllers which we have to create and providers.
5:195 minutes, 19 secondsProviders we need player service and player guard. But for now, let's keep it empty because we don't have it yet. Yep.
5:285 minutes, 28 secondsAfter this, we can export the class player
5:355 minutes, 35 secondsmodule. Yeah, it's still giving some syntax error. Let me see where did I do the mistake. So, here
5:435 minutes, 43 secondsimports after this use factory.
5:495 minutes, 49 secondsAll looks good. Here is a call back. Uh here.
6:016 minutes, 1 secondOkay. Now it's okay. So we we basically we cannot use this. Yep. Now it makes sense. So we can save it. And there's
6:106 minutes, 10 secondsnothing wrong in here. No error or nothing which is very simple because we haven't even like connected this module.
6:186 minutes, 18 secondsSo let's do one thing. Let's come back to our main.ts. Sorry, not main.ts, our app module and import here our player module.
6:316 minutes, 31 secondsNow it's giving an error. Very normal.
6:346 minutes, 34 secondsThe analytics JWT secret is not available that's why. So let's uh generate on a uh not AWS, let's generate
6:426 minutes, 42 secondson ENV variable secret key. So we can use open SSL random hexadimal 32
6:506 minutes, 50 secondscharacters like this. You just write this comment and it will generate on like generate on AWS gen sorry analytics
7:007 minutessecret or any secret for you and you can just copy it and you can add it inv. So let me come back to env. I'm doing it in
7:087 minutes, 8 secondsanother screen because it it has some variables with which I cannot show you.
7:137 minutes, 13 secondsSo setting up done. Now if we come back here, open our terminal. Still the error. Just restart it. There will be no error right now.
7:237 minutes, 23 secondsYep, no error.
7:267 minutes, 26 secondsDone. Now let's come back to our player service, the main important one. So from here,
7:347 minutes, 34 secondslet's create our service. So we can say injectable and export
7:417 minutes, 41 secondsclass player service and constructor private read only. We
7:507 minutes, 50 secondsneed our config. So config and config service
7:587 minutes, 58 secondsthen our JWT service. So read only JWT service
8:108 minutes, 10 secondsthen we have to inject our result DB because we need our DB access in here. So we can say private
8:208 minutes, 20 secondsread only DB and type we can say any.
8:278 minutes, 27 secondsNow here let's add our stream video module. So stream
8:348 minutes, 34 secondsvideo and it's going to receive our video tracking ID which is like the main
8:428 minutes, 42 secondsimportant or the only thing which we need to like stream a video. So we need the video tracking ID which our users they will send it by using our npm SDK.
8:538 minutes, 53 secondswill start to work for the npm SDK after this like after finishing this player service. Now here if there is no video
9:009 minutestracking ID then we have to throw an error because it's the like required thing. So we can
9:079 minutes, 7 secondssay not found exceptions error and the error message is going to be something like this that video tracking ID is required.
9:169 minutes, 16 secondsAfter this we have to find out the video meta data based on the uh video tracking ID. We can say this.
9:269 minutes, 26 secondsDV do. Slate dot from our video meta data
9:369 minutes, 36 secondsand where the video metadata dot video tracking ID
9:469 minutes, 46 secondsis matching with this provided video tracking ID like which we are receiving in here in this parameter.
9:559 minutes, 55 secondsand we have to limit it. So let's say limit and one limit is one. After this if the
10:0410 minutes, 4 secondsvideo meta data is like an empty array not empty array
10:1510 minutes, 15 secondsuh sorry I'm saying if the video metadata length is not this I mean if it's like not available then we have to throw an error because the video
10:2210 minutes, 22 secondstracking ID is then not valid. So we can say not found exception and video not found
10:3210 minutes, 32 secondswith tracking ID and we can pass the video tracking ID.
10:4110 minutes, 41 secondsYep.
10:4310 minutes, 43 secondsAfter this we can say const meta
10:5010 minutes, 50 secondswhich is our video meta data and we need session ID
10:5810 minutes, 58 secondswhich we can use random UID from crypto.
11:0411 minutes, 4 secondsNow we need our analytics playback token. This is very very important. So what is this analytics token? We are
11:1111 minutes, 11 secondsgoing to use it for like tracking our video players analytics like the watch time, the views, the unique views and
11:2011 minutes, 20 secondsall the other stuff like that. We are using it to just protect those like analytics tracking. We are just using
11:2811 minutes, 28 secondsthis like analytics token so that like anyone cannot update it. they must need this access token to update the
11:3511 minutes, 35 secondsanalytics and only our video player will have this access token and it's going to be like refreshed within a very short time. So that's why it's like a secure
11:4411 minutes, 44 secondsway to protect our tracking mechanism the analytics tracking mechanism.
11:5011 minutes, 50 secondsSo let's sign it. So let's use the in sync method from here and purpose.
11:5711 minutes, 57 secondsPurpose is going to be playback analytics.
12:0612 minutes, 6 secondsWe have to pass the session ID, the video ID which is going to be meta dot ID and
12:1612 minutes, 16 secondsvideo tracking ID which is going to be meta dot video tracking ID.
12:2312 minutes, 23 secondsYep. Or even the video tracking ID itself. But it's actually same value. This one and this one same.
12:3212 minutes, 32 secondsUm now for the timestamps very very important when we are adding timestamps from our like uploading when you're
12:4012 minutes, 40 secondsuploading a video then you are adding suppose let's say time stamp we need to like take the value and we have to make
12:4812 minutes, 48 secondsit a vtt file because without the vtt file we cannot add the timestamp inside our video player video player it doesn't
12:5512 minutes, 55 secondsunderstand any text it must need file to play that so that's why we need to make our timestamps to a VDT file right now
13:0413 minutes, 4 secondslike a VTT file code. So we have to use another function for it. We will use a helper function and the helper function
13:1113 minutes, 11 secondsname is going to be timestamps to chapters VTT. We have to pass the timestamps and
13:2013 minutes, 20 secondsmeta dot video duration which is like the duration of our video of our video.
13:2613 minutes, 26 secondsNow we have to create this function this timestamps to chapters vt the helper function. Let's come back inside our
13:3313 minutes, 33 secondsutils folder and let's create here a new file by giving name vtt transformer.ts.
13:4313 minutes, 43 secondsNow in here let's write export function our function name the timestamps to
13:5013 minutes, 50 secondschapters vtt. We have to pass here timestamp which type is going to be timestamp
13:5813 minutes, 58 secondsitem on array of time stamp item we have to create the interface we will do and we need we're also receiving here video
14:0814 minutes, 8 secondsduration seconds which is a number. Yep.
14:1314 minutes, 13 secondsNow in here let's add our type. So type our time stamp item. It's just going to
14:2214 minutes, 22 secondsbe basically a string, nothing else. But we need some more helper function like parse times
14:3114 minutes, 31 secondsstamp line. So parse time stamp line the same time.
14:3814 minutes, 38 secondsNo doubles.
14:4014 minutes, 40 secondsThen you're going to receive your line as a parameter
14:4714 minutes, 47 secondsand const match line trim
14:5414 minutes, 54 secondsdot match uh
15:0315 minutes, 3 secondslike this. This is a syntax. This is basically a re reax pattern we need to use here.
15:1315 minutes, 13 secondssomething like this. It looks a bit weird, but this is just a reax reax pattern.
15:2015 minutes, 20 secondsI'd recommend you to pause the video and write it by yourself because if you're doing any mistake, it's definitely not going to work.
15:2815 minutes, 28 secondsI think I did already a mistake in here.
15:3015 minutes, 30 secondsLet me see. It's very hard to write. Oh my god. H give up. It's really not a
15:3815 minutes, 38 secondsthing to write for a long time like this. So this is basically the redex pattern. You can pause it and write it by yourself.
15:4715 minutes, 47 secondsNow if it's not matching, if the structure is not matching, then we can throw an error. But usually the
15:5515 minutes, 55 secondsstructure will match because we will also refactor it from the front end to match this structure. So that our like
16:0316 minutes, 3 secondsthis p time stamp line can p it to a vg format. Now we need if it's not matching
16:1116 minutes, 11 secondsthen invalid time stamp format in
16:1816 minutes, 18 secondsthis like which line is not okay we can send that line. Yeah. Otherwise constant
16:2516 minutes, 25 secondsraw time match replace
16:3416 minutes, 34 secondsall this thing like dot to this. Yep.
16:4016 minutes, 40 secondsNow cons title call match again and from here we need to frame this.
16:4916 minutes, 49 secondsNow we need the parts from the time stamp. So we can call raw time dotsplit
16:5716 minutes, 57 secondsand from here we can map it with the number. Yep. Now let hours
17:0617 minutes, 6 secondszero. Let's make some variable. Let minutes zero. Let's zero.
17:1717 minutes, 17 secondsAnd if parts dolength equals to
17:2517 minutes, 25 secondstwo then minutes dot uh sorry we have to pass
17:3317 minutes, 33 secondsminutes and seconds I mean we have to distract it from the parts. Yep. else if
17:4517 minutes, 45 secondsparts do.length if it's three meanings if it's like in hours then we have to say hours and seconds.
17:5717 minutes, 57 secondsYep. Now finally we can return it our seconds
18:0618 minutes, 6 secondswhich is going to be hours multiply this means we're basically changing our
18:1318 minutes, 13 secondshours to seconds and plus minutes multiply 60 plus the seconds
18:2018 minutes, 20 secondsand the title itself. Yep. Uh let me do one thing in here.
18:2718 minutes, 27 secondsLet me finish it. We can save it from here. We can come back here. We can import it. We can save that as well.
18:3418 minutes, 34 secondsNow, let's come back here again. Let's call our chapters and we're going to call the timestamps dot
18:4318 minutes, 43 secondsmap and we have to pass that first uh timestamp line. Now, we need the cues.
18:5018 minutes, 50 secondsSo Q's chapters dot map chapter
18:5918 minutes, 59 secondsindex and inside here con next the next chapter. So chapters
19:0719 minutes, 7 secondsindex + 1 and con start the chapter dot seconds
19:1619 minutes, 16 secondsand con end which is going to be next seconds or the video duration seconds.
19:2619 minutes, 26 secondsNow we can return the VTT but we have to VTT uh we have to
19:3419 minutes, 34 secondsformat the VTT time. So let's do one thing. Let's create here another function for formatting the VTT time which is
19:4319 minutes, 43 secondsgoing to receive the total seconds which is definitely a number. Now const
19:5119 minutes, 51 secondshours math dot floor plus the total seconds
19:5719 minutes, 57 secondsand divide it by 3,600 because 3,600 seconds equals to 1 minute
20:0320 minutes, 3 secondsuh 1 hour for minutes math dot floor
20:1120 minutes, 11 secondstotal seconds and we have to make it a percent with 3,600 and we have to divide it with six to get the minutes.
20:2420 minutes, 24 secondsUh sorry divide.
20:2720 minutes, 27 secondsNow const seconds math dot floor
20:3820 minutes, 38 secondstotal seconds and make it 60%.
20:4420 minutes, 44 secondsYeah. Uh I think I added here extra plus this bracket. Yep.
20:5020 minutes, 50 secondsNow let's come back here and let's call our format vtt time. Let's pass the start
20:5920 minutes, 59 secondsand uh actually we need to use this one. So it's
21:0821 minutes, 8 secondsbasically like this out and on like arrow
21:1621 minutes, 16 secondsformat vtt time and we have to pass the end in here. This is basically the structure we usually have inside our
21:2321 minutes, 23 secondslike time stamp vtt file. Okay that's why it probably feelings like a little bit weird to you because it's not a thing that human understand it's for
21:3221 minutes, 32 secondsmachines or it's for actually the video player. This is the structure they understand.
21:3721 minutes, 37 secondsNow here we have to pass the chapter dot title.
21:4221 minutes, 42 secondsYeah, that's it. And at the end we have to return the
21:5021 minutes, 50 secondsweb vtt n /ashn meanings I think it's it's called next line or something like that.
22:0022 minutesYep. Q dot join and s /ash n / slashn.
22:1022 minutes, 10 secondsThat's it. It's done. So our time stamp chapter to vt is done. But format video
22:1722 minutes, 17 secondsuh sorry format vtt time is not done yet because we have to return it. We forot to return. Let's call string from here.
22:2722 minutes, 27 secondshours dot pad start two and zero let's say then
22:3522 minutes, 35 secondsstring minutes then add start
22:4422 minutes, 44 secondsto and zero uh we need actually comma in here
22:5222 minutes, 52 secondsstring we have to pass the seconds and same the pad Let's start
22:5922 minutes, 59 secondstwo and zero and at the end join this everything with this
23:0623 minutes, 6 secondsand plus triple0 like this. Yep. So this is how
23:1423 minutes, 14 secondsthis is what we have to return from this format VT time. This function is basically formatting the time into the VT format which the player actually
23:2323 minutes, 23 secondsunderstand. Yeah, that's it. And our VT transformer function is ready. The helper function.
23:3023 minutes, 30 secondsWe can again come back here. Now we can say cons data.
23:3723 minutes, 37 secondsHere we're going to use our media library again. Media stream.
23:4623 minutes, 46 secondsSo media.stream is not working very normal because we are using a different version of 1 minute cloud media convert.
23:5523 minutes, 55 secondsSo just let's copy this name come back here and let's say
24:0324 minutes, 3 secondsthat uh sorry CD
24:0924 minutes, 9 secondsservices yeah and here we can say npm uninstall
24:1624 minutes, 16 secondsthis one our one minute cloud media convert because we have to install the update
24:2324 minutes, 23 secondsation and let's say npmi one minute cloud media convert
24:3224 minutes, 32 secondshere you go we can clear it and let's import again now you can see mediastream is not giving us warning
24:4124 minutes, 41 secondsbecause right now it's available we have to pass here API key we can say this doconfig dot get orth through
24:5024 minutes, 50 secondsstring and we're going to pass here 1 minute cloud API
24:5924 minutes, 59 secondskey. So basically there's no space in this 1 minute cloud 1 minute cloud API key. Yep. And we have to pass our
25:0825 minutes, 8 secondstracking ID, the video tracking ID and this is basically going to return us the playlist. So yeah, that's it. That's
25:1525 minutes, 15 secondssimple the setup is. You don't have to do anything. You don't have to worry for anything. and data vtt session id and
25:2325 minutes, 23 secondsanalytics token this is what we have to send from here if it's catch any error
25:2925 minutes, 29 secondsjust throw the error to API as like response
25:3525 minutes, 35 secondsthat's it our player service is ready let's come back to player controller and
25:4125 minutes, 41 secondslet's make it it's going to be simple so we're going to use controller decorator as you always
25:5025 minutes, 50 secondsAnd here let's use use curts because we are protecting it with our
25:5825 minutes, 58 secondscler o so that only our logged in user can use it and we need another guard which we will create after some time not now.
26:1026 minutes, 10 secondsNow let's export this class that player controller.
26:2026 minutes, 20 secondsWe can add here our player service constructor like this. Now let's use
26:2826 minutes, 28 secondshere get method. So we can say load video which should be capital
26:3526 minutes, 35 secondsand then video tracking ID as our params.
26:4126 minutes, 41 secondsYeah. And let's add here function like this like load video and it's going to receive
26:5026 minutes, 50 secondslike request which going to be any and it's going to receive the mainly the param from our API I mean from the
26:5826 minutes, 58 secondspayload. So it's going to be video tracking ID and video
27:0627 minutes, 6 secondstracking ID which is going to be string return this dot player service dot
27:1527 minutes, 15 secondsstream video and pass the video tracking ID. We can save it and here you go. You can see it's perfectly working. I mean
27:2427 minutes, 24 secondsit's done not perfectly working. Let's come back here. And here you can see no error.
27:2927 minutes, 29 secondsNo problem because still we have to come back here and let's add our player controller and
27:3727 minutes, 37 secondsour player service. Yeah, we can save it. Yep, still no error. So everything is okay.
27:4727 minutes, 47 secondsIt means we don't need to worry for anything. Uh, yep. Done.
27:5527 minutes, 55 secondsNow let's come back here. We completed our back end work. Uh, by the way, let's do login. We're logged out now.
28:0928 minutes, 9 secondsLet me do log in.
28:1828 minutes, 18 secondsHere we go. We're logged in. My videos.
28:2328 minutes, 23 secondsYep. Perfect. Now let's start to work on Vidmox player since our back end is
28:3028 minutes, 30 secondsready for our like player setup. It's ready. It's not fully done yet because we have so many things inside our video
28:3828 minutes, 38 secondsplayer and the SDK is not small the like Vidmox player SDK. It's definitely more
28:4528 minutes, 45 secondsbigger than this Vidmox SDK because Vidmox SDK was very simple but Vidmox player is the opposite. It's crazy
28:5428 minutes, 54 secondscomplicated. We have to write a lot of code in this player which is very natural because it's like representing
29:0129 minutes, 1 secondour video player or the main uh userfacing product. That's why it's going to be definitely a little bit
29:0829 minutes, 8 secondsdifferent. So no worries we're going to start it right now. So let's start it.
Chapter 4: Building the Vidmox Player SDK
29:1329 minutes, 13 secondsAll right. So let's come back inside our SDKs and Vidmox player. Inside here, let's create a new folder by giving name
29:2229 minutes, 22 secondssrc. Inside src, we're going to create our config folder. And inside src, we have to create uh the core folder.
29:3429 minutes, 34 secondsActually, we don't need the core in here. Now we just need icons configs the react version the video player like
29:4329 minutes, 43 secondsthe client one then the server side part
29:4929 minutes, 49 secondsand services for the service site part and the TypeScript
29:5729 minutes, 57 secondstypes and finally the helper functions one that utilities or utils
30:0530 minutes, 5 secondsAnd inside src we can create index.ts file like the root one.
30:1330 minutes, 13 secondsNow again outside of this src inside this vidmox player let's add our package dojson
30:2530 minutes, 25 secondsand our ts config.json.
30:3030 minutes, 30 secondsYep. also the t-up do.config config dot
30:3730 minutes, 37 secondsuh actually ts yeah because we're going to use t sub we which we were also using inside SDK
30:4630 minutes, 46 secondswe're going to use the same thing in here as well now inside this package JSON I'm going to copy it now but for
30:5430 minutes, 54 secondsyou let me show you everything one by one first of all for the name if you're using Vidmox player definitely it's not
31:0131 minutes, 1 secondgoing to work because Vidmox player is already going to be like available on npm. So you you you don't have access to
31:0831 minutes, 8 secondsthis vidmox organization. So you have to just change it to your like product name or your organization name and you have
31:1631 minutes, 16 secondsto make sure it that the organization is available not taken yet. After that description license you can definitely
31:2531 minutes, 25 secondslike change it as per your needs. But this is how it will look like. the main file, the module file, the types.
31:3431 minutes, 34 secondsWe are just going to include the dist file. So that's why we are saying files dist and dist is not in here because that's going to be autogenerated folder.
31:4431 minutes, 44 secondsAnd exports, we're exporting all of our types. For React, we're exporting it.
31:4931 minutes, 49 secondsFor server side effects, true publish config, we are making it public library
31:5631 minutes, 56 secondsscripts. this one like build then just run the t-up for div tub and watch for clean just clean the list and uh
32:0632 minutes, 6 secondspre-publish only means npm run clean and npm run build these are some keywords for SEO purpose and this is the homepage
32:1432 minutes, 14 secondslike our GitHub uh homepage for this uh for this player like repository and this
32:2332 minutes, 23 secondsis the issue URL inside the GitHub uh repository this is repository URL again and this is the engines like we're using
32:3232 minutes, 32 secondsNodeJS and your uh which project you are using VMO so Y that must need to have NodeJS version more than 18 or 18 itself
32:4132 minutes, 41 secondswill also work. We're using some P dependencies like React and React DOM and P dependencies meta.
32:5032 minutes, 50 secondsWe're also using some dev dependencies like this that types node or types react tub gsx and typescript and we're using
32:5932 minutes, 59 secondssome dependencies as well like the vidmox react and yeah we need this since this is our video player right now. This
33:0733 minutes, 7 secondsis like the open source video player we are using but definitely we we will like customize it a lot to make it feel like
33:1533 minutes, 15 secondsour vidmox video player. We're also using HLSJS media icons and vit itself the library. That's it. Now let's come
33:2433 minutes, 24 secondsback here in this case. Let's go to Vidmox player and let's write this that npmi.
33:3233 minutes, 32 secondsIt's going to install all of our dependencies dev dependencies and
33:3933 minutes, 39 secondslike the all part dependencies as well. Yeah, we can
33:4633 minutes, 46 secondsclear it. I think per dependencies mean it's just going to take it from our like project. Yeah, we don't need to install it.
33:5433 minutes, 54 secondsUh, however, it's done. Everything is ready. You can see the package log is here. The node modules here. Now, in
34:0234 minutes, 2 secondsthis TS config, we have to update it. In TS config, it's going to be something like this. Our directory is going to be
34:1034 minutes, 10 secondsthe dist folder. Root directory is source. Inside source module, we're using node next module and target. We're
34:2034 minutes, 20 secondstargeting this one module regulation node next. You can just skip uh sorry, you can just pause the video and write
34:2734 minutes, 27 secondsit by yourself or even uh if you are having the source code, you can just copy paste it. Yeah. Uh one more thing I
34:3534 minutes, 35 secondsforgot that is the readme. MD which we don't have right now because we still making the library. We don't have the
34:4334 minutes, 43 secondsreadme. MD yet. So yeah, our setup is actually ready except this tubconfig ts
34:5234 minutes, 52 secondswe have to make it. And this tub config.ts TS file is actually going to be a little bit bigger than the previous
34:5934 minutes, 59 secondsone because we are adding our server and react code at the same time and we cannot add that together because the
35:0735 minutes, 7 secondsserver side code cannot be inside client side and client side code cannot be inside the server side. That's why we
35:1435 minutes, 14 secondsare changing the configurations a little bit in here. But this is the code. You can just pause the video and write it by yourself.
35:2435 minutes, 24 secondsAll right. Now everything is done. Let's let's come back in index.ts. Actually nothing will happen from here. Let me close all of these files.
35:3635 minutes, 36 secondsindex.ts. We're just going to like export everything. So for now, let's come inside React and let's create our index.tsx.
35:4735 minutes, 47 secondsWhy TSX? Because this is the client side file for our video player.
35:5335 minutes, 53 secondsNow in here we actually need to add so many things.
35:5935 minutes, 59 secondsFirst of all we need here like some CSS like some custom CSS we are using for customizing the video player.
36:1036 minutes, 10 secondsIf there is if the type of document is undefined because we're since we're in nextJS this
36:1936 minutes, 19 secondsproblem happens like when it's in the service side then it doesn't get access to the DOM. So that's why we're writing
36:2736 minutes, 27 secondsthis logic to prevent those errors. So we're saying if the type of document is undefined then we're returning the
36:3636 minutes, 36 secondsfunction. Yeah. Otherwise const style document
36:4436 minutes, 44 secondsdot create element and style
36:5236 minutes, 52 secondsand we can say style.ext contain.
36:5636 minutes, 56 secondsNow let's add all of our styles like the CSS.
37:0037 minutesSo I'm just quickly copying pasting it because it's actually CSS and I think I should I don't need to explain it to you
37:0937 minutes, 9 secondsbecause it's the like the CSS and I actually it's very hard even for me to explain it because it's just we're
37:1637 minutes, 16 secondsbasically targeting the class names inside Vidmox not Vidmox the Vidstack library and we're changing the like
37:2437 minutes, 24 secondsstyling from there. So yeah, it's basically like that. You can just pause it and write it by yourself or even if
37:3137 minutes, 31 secondsyou have the source code, you can definitely copy paste it. So I'm just like slowly slowly I'm doing it so that
37:4037 minutes, 40 secondsyou can write it something like this.
37:5037 minutes, 50 secondsAnd one more thing this is for our like video loading spinner. So, Vidmox spin and we need the Vidmox loader.
38:0138 minutes, 1 secondYeah, something like this.
38:0438 minutes, 4 secondsAll good. All done. Now, at the end, we can say document
38:1338 minutes, 13 secondsdot hate dot append child and we can add the style inside this.
38:2238 minutes, 22 secondsYep.
38:2438 minutes, 24 secondsNow we have to merge this with uh actually we need our Vidmox icons because we're going to use
38:3238 minutes, 32 secondscustom icons for our video player. We're not going to use the like default icons which VidStack is providing us. We're
38:4138 minutes, 41 secondsgoing to use custom icons to make it feel like a custom video player, not like a Vstack video player.
38:4838 minutes, 48 secondsAnd the type is going to be default layout icon from vidstack react / type/vidst react like js. You can just
38:5838 minutes, 58 secondssee it. And now we can say default layout icons.
39:0639 minutes, 6 secondsWe're spreading it like we're keeping it as it is. And we're updating the play button. So for the play button, for the play we are using here Vidmox play icon.
39:1939 minutes, 19 secondsSo Vidmox play icon. It's not here yet. No worries. Let's do one thing.
39:2739 minutes, 27 secondsLet's come back in this icons.
39:3039 minutes, 30 secondsCreate index.tsx.
39:3439 minutes, 34 secondsInside here we have to write this function export function vidmox play icon.
39:4239 minutes, 42 secondsIt's going to return on AVZ. Now, how I got this AVZ? Let me show you the techniques so that you can also
39:5039 minutes, 50 secondsimplement it. Let's go to Google Chrome and search for Lucid React. From here,
39:5739 minutes, 57 secondslike for the play icon, you can search for play. From here, you can copy the SVG and then you can just modify a
40:0540 minutes, 5 secondslittle bit because this is like a raw CSS SVG. You just have to change the stroke width like this to this. Okay?
40:1640 minutes, 16 secondsLike how you're watching it in here. You you have to make it like that. So with that way you can easily like add your
40:2540 minutes, 25 secondsicons like the icons you like. You don't have to like do copy paste which I am adding in here. Uh now let me come back here.
40:3640 minutes, 36 secondsLet's add the play uh like the Vidmox play icon. Then for the pause, it's going to be Vidmox pause icon.
40:4640 minutes, 46 secondsFor replay, it's going to the Vidmox play icon again.
40:5340 minutes, 53 secondsUh yeah why it's saying
41:0141 minutes, 1 secondokay default play button I don't know it should not give error okay fine we'll check it later let's change our mute
41:1041 minutes, 10 secondsbutton now so mute button and let me do one thing let me add all
41:1841 minutes, 18 secondsthe icons at once otherwise there are so many icons here because the full video player I changed the like I customized
41:2841 minutes, 28 secondsit completely like all the icons are my icons now. So you can see all the SVZ here and I already I was showing you
41:3641 minutes, 36 secondsthat how can you get those SVZ just come here and search for the icon you're looking for and then just paste it like this.
41:4541 minutes, 45 secondsNow here we can uh import our Vidmox mute icon, unmute icon. Here you go.
41:5241 minutes, 52 secondsIt's ready. Now next one is full screen button.
41:5941 minutes, 59 secondsLike for the full screen. We're going to use these icons.
42:0842 minutes, 8 secondsNext one is seek button, menu and peep button. So
42:1642 minutes, 16 secondsactually so many things uh sorry seek button. Yeah,
42:2542 minutes, 25 secondsit's not seek. Okay, it's like I think the backward forward button. Yeah, menu.
42:3342 minutes, 33 secondsWe're going to use these icons for the settings. the pip button.
42:3942 minutes, 39 secondsThen for the caption button, very very important.
42:4442 minutes, 44 secondsThis is the icon we're going to use for the captions or the like subtitle. Yeah, here is just
42:5242 minutes, 52 secondsit's giving an error. I think I did something wrong in here.
42:5842 minutes, 58 secondsPlay button. I don't know.
43:0643 minutes, 6 secondsOkay, the mistake is here.
43:1043 minutes, 10 secondsIt should not be icon. It should be actually icons. Yeah.
43:1943 minutes, 19 secondsNow see no error. So be make sure to import it from icons. And what is this default play icons? Oh, layout icons.
43:3043 minutes, 30 secondsAnd uh okay, it's basically the types and it's the all layout icons. Yeah, I understand it now. Okay, fine. We can
43:3743 minutes, 37 secondssave it. After these icon setup, we still need to do a lot of work. For
43:4443 minutes, 44 secondsan example, when we are getting our playlist like informations for playing
43:5043 minutes, 50 secondsthe video, it's not including it's not including the token params for the
43:5843 minutes, 58 secondssegment file. Now what is segment file and what is token params? Basically when our video player is going to play a
44:0744 minutes, 7 secondsvideo or stream a video it just like not playing it with a fixed URL. It has on
44:1444 minutes, 14 secondsparams at the end like on token on token expires time and a token path and
44:2144 minutes, 21 secondswithout that like vidmox cdn is definitely not going to play the video.
44:2744 minutes, 27 secondsnot Vid Mox CDN the one minute cloud CDN is not going to play the video without that token or expires and token path and
44:3644 minutes, 36 secondsthe token is definitely going to be unique every time you're requesting it's going to be different and it it will
44:4244 minutes, 42 secondshave an expiry so that like we can protect our video player from like abusing it can happen that someone is
44:5144 minutes, 51 secondscopying the URL and trying to playing it from somewhere else in that in that type of thing it will actually not work because we're already giving security
44:5944 minutes, 59 secondsfor that. Just a minute. Let me change it. Yep.
45:0645 minutes, 6 secondsNow after this, so that's why we need to actually make another function called extract token params
45:1645 minutes, 16 secondsfrom our playlist URL. Now playlist URL is definitely not going to return the segment URL which is very natural. For
45:2545 minutes, 25 secondsthe segment URL, the video player will attach the token params. Why it needs to attach the token params? Because without
45:3345 minutes, 33 secondsthe token params, the segment file will not work. And when the segment files are not working, the video will also not
45:4145 minutes, 41 secondswork. What is the segment file? I think I don't have to explain it. But still, let me do a little bit explanation. So
45:4845 minutes, 48 secondsin the videos like let's say 7 minute videos it will have actually I don't know how many but for our like internal
45:5745 minutes, 57 secondsthings we're using 4 seconds for a segment. So like 7 minutes video then you can divide it with four like let's
46:0546 minutes, 5 secondsmake the seven into seconds and 7 minutes into seconds and then divide it with four then you can see how many segments files there. Why we doing it to
46:1446 minutes, 14 secondssave the bandwidth cost? because we don't want to play like all the file at once when the user they're not watching
46:2246 minutes, 22 secondsthe full videos. So that's why we are like like just fetching the first few segments. Yeah, I hope you are understanding what is the meaning of
46:3046 minutes, 30 secondssegments and how the video player actually going to load the video.
46:3646 minutes, 36 secondsNow here we will have our URL which is very simple. Now we need to ex uh like we need the token and we're getting the
46:4446 minutes, 44 secondstoken from the search params dot get and token. Yeah, we also getting our
46:5446 minutes, 54 secondsexpires from this URL dot search params dot get
47:0147 minutes, 1 secondexpires and the token path
47:0847 minutes, 8 secondsURL search params dot get then token
47:1547 minutes, 15 secondsuh sorry not o it's going to be path yeah if token in available and
47:2447 minutes, 24 secondsexpires available and token path available.
47:2847 minutes, 28 secondsThen we can return the token which we need to attach with the segment files. We can call here
47:3647 minutes, 36 secondsencoded URI component. We can pass the token.
47:4147 minutes, 41 secondsWe can say expires uh 1 minute. We have to finish it here like this. Yeah, expires.
47:5447 minutes, 54 secondsAnd let's call the encoded URL component again and pass the expires here.
48:0348 minutes, 3 secondsHere let's add uh sorry here actually
48:1148 minutes, 11 secondstoken path which is going to be included
48:1848 minutes, 18 secondscomponent token and expires uh sorry expires is going to
48:2648 minutes, 26 secondsbe also outside expires encoded URL component and expire fires
48:3548 minutes, 35 secondsand finally the token path for the token path it's going to be
48:4448 minutes, 44 secondssame uh encoded URL component and pass the token path inside this
48:5248 minutes, 52 secondsyeah it looks a little bit bigger and it's actually bigger because it's just a URL which we have to attach with our
49:0049 minutessegments files with the segment file see what else. So token
49:0849 minutes, 8 secondsexpires token path and expires.
49:1649 minutes, 16 secondsOh wait, why I'm adding expires for double time? No, we don't need to.
49:2149 minutes, 21 secondsI think I did something wrong. Wait, let me see again. I did something wrong.
49:2649 minutes, 26 secondsToken expires and token path. Yeah, we don't need it for two times. I mistakenly added it for two times in
49:3549 minutes, 35 secondscatch. We don't need to do anything for now.
49:4149 minutes, 41 secondsSo here we can now return empty string if the token expires and
49:5049 minutes, 50 secondstoken path is not available then yeah we're not available in the playlist file or the playlist URL which we're
49:5949 minutes, 59 secondsgetting from one minute cloud or from our vidmox API.
50:0550 minutes, 5 secondsNow here we need another function for signing the thumbnail VT.
50:1250 minutes, 12 secondsWhich VT is this? It's not the like video thumbnail. It's the like video playing that uh how how can I say this
50:2150 minutes, 21 secondsis basically like the timeline preview. Okay, not the thumbnail VDT. We can say timeline
50:2850 minutes, 28 secondspreview. VT URL which is going to be string and token params this is also going to be string.
50:3850 minutes, 38 secondsNow it's going to be a blob URL. So let's make on state here use state like blob URL and set blob URL and let's add here an use effect.
50:5050 minutes, 50 secondsYou might be thinking we're using a use state use effect. Yeah, we are we are because this is in client side file even we can add here use client as well. No problem.
51:0351 minutes, 3 secondsNow here let's add use effect use effect snip.
51:1951 minutes, 19 secondsAnd here we can select object URL string
51:2951 minutes, 29 secondsor null and by default value is going to be null. Late cancelled which is going to be false.
51:4051 minutes, 40 secondsWe can say async function load
51:4751 minutes, 47 secondscon race await fetch the vttl.
51:5651 minutes, 56 secondsIf phrase dot okay is not true then throw new error
52:0452 minutes, 4 secondsthat failed to load thumbnail vt.
52:1152 minutes, 11 secondsYeah. Then con vtt array trace do.json uh actually not JSON we need text value.
52:2052 minutes, 20 secondsSo text con base URL
52:2952 minutes, 29 secondsnew URL. So URL and let's pass the VT URL.
52:3752 minutes, 37 secondsNow we need to make the signed VTT. So like the final VTT URL.
52:4652 minutes, 46 secondsSo we can say VTT dot sorry VTT do.replace replace.
52:5252 minutes, 52 secondsWe basically need on reax pattern here again for the web VD. Something like this.
53:0053 minutesThen line and con
53:0953 minutes, 9 secondswith query and fragment which by default value is going to be empty string.
53:2053 minutes, 20 secondsThen line dot trim split.
53:2853 minutes, 28 secondsThis we are basically making like our uh the thumbnail sorry not thumbnail our timeline preview VT file to play it in our video player.
53:3953 minutes, 39 secondsNow the image URL why we're doing this because end of the day this like the timeline preview VT
53:4753 minutes, 47 secondsfile is not yeah that's a single file but inside that there are multiple files because that's basically a grid and when
53:5553 minutes, 55 secondswe are playing like you are hovering our video player like let's the timeline you're hovering it then you will see the
54:0354 minutes, 3 secondstimeline preview but it has so many files it has multiple image image and we
54:1054 minutes, 10 secondsneed to attach the token params with all of those image otherwise those emails
54:1654 minutes, 16 secondsthose images will not work. So yeah
54:2254 minutes, 22 secondsnew URL and let's add here path with query and base URL.
54:3154 minutes, 31 secondsNow con params new URL
54:3854 minutes, 38 secondssearch params and let's pass the token params params dot for each
54:4554 minutes, 45 secondsvalue key image url dot search params dot set.
54:5654 minutes, 56 secondsLet's pass the key and value.
54:5954 minutes, 59 secondsYeah. Now let's return our image URL dot
55:0755 minutes, 7 secondsto string and the fragment
55:1555 minutes, 15 secondsif it's available then fragment like this
55:2955 minutes, 29 secondsor empty string. Yeah, that's it.
55:3655 minutes, 36 secondsNow after this call the object URL and URL
55:4255 minutes, 42 secondsdot create object URL new blob
55:5155 minutes, 51 secondsthe signed vtt and the type is going to be text / vtt or the file.
56:0056 minutesYeah.
56:0256 minutes, 2 secondsNow if not cancelled
56:0856 minutes, 8 secondsthen set blob URL the object URL probably filling it look like a little
56:1656 minutes, 16 secondsbit complicated but don't worry we again we're just like setting up the URLs and everything. Yeah. Uh before return we
56:2656 minutes, 26 secondshave to call the load and if it's catch any error then just
56:3556 minutes, 35 secondslet's say console dot error the message. Yeah. Now return
56:4456 minutes, 44 secondscancel true if object URL URL dot
56:5356 minutes, 53 secondsrevoke object URL and we can pass the object URL in the dependency array we can add the VTT URL and token params.
57:0357 minutes, 3 secondsYep. Yeah. And at the end we can return the blob URL. That's it. The use effect
57:1057 minutes, 10 secondsis ready. It's not small. It was quite big. But yeah, it's ready.
57:1657 minutes, 16 secondsNow, still we need another reax pattern small function and helper function for
57:2357 minutes, 23 secondsSRT. Sorry, SRT to VTT. Why? Because our subtitles is in SRT. But we need to make
57:3057 minutes, 30 secondsit in VTT for just like ease of uses. I mean the video player understand VTT easily than SRT. So that's why we just
57:3957 minutes, 39 secondsconverting our SRT to VTT. That's it. Uh but this is an helper function, not the main function. We have to create another
57:4857 minutes, 48 secondsfunction for use SRT as VT URL. Again, this is for our
57:5857 minutes, 58 secondsuh the subtitle. Okay, our subtitle is in SRT file, not in VT file. But we are
58:0558 minutes, 5 secondsconverting that to VTT file because our video player or V stack it does
58:1158 minutes, 11 secondsunderstand like VTT more better than the SRT or by default it's actually understand
58:1958 minutes, 19 secondsthe VTT file and that's why we're just changing it
58:2758 minutes, 27 secondsuse state string or null By default, it's going to be null.
58:3958 minutes, 39 secondsUh let's use another use effect snippet.
58:4958 minutes, 49 secondsUh let's add two late variable like object URL and cancelled.
58:5558 minutes, 55 secondsNow we need on function for converting our SRT to URL. It's kind of like the
59:0359 minutes, 3 secondssame thing we were doing with our timeline preview URL. Just the names and names are different. That's it.
59:1159 minutes, 11 secondsOtherwise, everything is almost same.
59:1559 minutes, 15 secondsAnd finally, we can return uh
59:2259 minutes, 22 secondsI did small mistake. Yeah, something like this.
59:2659 minutes, 26 secondsNow we can return the VTT URL. So it's basically the same almost same not completely same you can just read it it's for converting our SRT file to VTT.
59:3959 minutes, 39 secondsYeah.
59:4159 minutes, 41 secondsNow our main video player function. Yeah. This is the main one the Vidmox player. So Vidmox
59:5159 minutes, 51 secondsplayer it's going to receive our video tracking ID
1:00:001 hourthe auto play like feature and place in line
1:00:111 hour, 11 secondsvery important one ready like when it's ready and when there is an error in the video player you can track that easily I
1:00:181 hour, 18 secondsmean our users can track that and type is going to be Vidmox player props.
1:00:281 hour, 28 secondsAll right. So, Vidmox players props.
1:00:321 hour, 32 secondsLet's come back in our types and index dot GS.
1:00:421 hour, 42 secondsIt's going to be something like this.
1:00:451 hour, 45 secondsVery simple types. Now let's import it here. Now
1:00:541 hour, 54 secondslet's add our player. It's going to be an use riff variable like this that media player
1:01:021 hour, 1 minute, 2 secondsinstance from vstack react and by default value is going to be null.
1:01:121 hour, 1 minute, 12 secondsWe need our video data and loading state and set loading state and the user country. Now for getting our user
1:01:201 hour, 1 minute, 20 secondscountry, we're going to actually use on like shortcut technique I I can say for the version one. This is kind of like a
1:01:271 hour, 1 minute, 27 secondshack for the version one and we need like two more user rifle
1:01:341 hour, 1 minute, 34 secondsand unique locked. Yeah. And views locks prefix. So when there is any lock
1:01:411 hour, 1 minute, 41 secondsmechanism like any spamming then we can we're just basically just making a prefix like VMX view and unique view TTL
1:01:481 hour, 1 minute, 48 secondsmilliseconds which is 30 seconds. So after every 30 seconds we will basically like do an heartbeat to check the video
1:01:571 hour, 1 minute, 57 secondsplaying duration. Okay. However this is completely connected with our analytics mechanism which we haven't created it in
1:02:061 hour, 2 minutes, 6 secondsthe back end. we will do after some times and in this we definitely need an event-driven architecture. We're going to implement uh Nat's jade dead stream
1:02:151 hour, 2 minutes, 15 secondsmy favorite like event driven not event driven I I mean my favorite masses
1:02:211 hour, 2 minutes, 21 secondsbroker I feel like like net chest stream it's super powerful and I use it over
1:02:291 hour, 2 minutes, 29 secondsthen like the rabbitic MQ or bull mq or any other famous like masses broker because I don't know I feel like it's easy to set up and it's very lightweight
1:02:381 hour, 2 minutes, 38 secondswhich is very very important to like save expenses and it's it's super powerful. Why why we will not use it?
1:02:461 hour, 2 minutes, 46 secondsYeah. So, we're going to use that. Not now. Definitely at first we're going to play the video and then we will like
1:02:531 hour, 2 minutes, 53 secondstrack the analytics here. We need on use effect hook.
1:02:591 hour, 2 minutes, 59 secondsUh I think we will break here later because this is for the analytical things. For now,
1:03:071 hour, 3 minutes, 7 secondslet's add here the fetch video
1:03:131 hour, 3 minutes, 13 secondsdata function. Let's create our video fetching function from our vidmox API
1:03:211 hour, 3 minutes, 21 secondswhich API we like some time ago we created. We're going to use that right now.
1:03:261 hour, 3 minutes, 26 secondsSo if is loading is true then return the function is loading meanings. This is the is loading and here we are saying it's true. So
1:03:351 hour, 3 minutes, 35 secondslike we are basically like avoiding to refetch the data for multiple time. Now
1:03:411 hour, 3 minutes, 41 secondslet's add here and try catch like for fetching our data the video
1:03:491 hour, 3 minutes, 49 secondsplayer and video tracking ID. We're passing this video tracking ID.
1:03:561 hour, 3 minutes, 56 secondsUh, by the way, unimportant thing you can see here API/vidmox/player/v video tracking ID. Definitely definitely this is not our Vidmox API URL, right?
1:04:071 hour, 4 minutes, 7 secondsYeah, it's normal because we don't want to like show this to our client side.
1:04:121 hour, 4 minutes, 12 secondsThat's why we're forwarding this request to our client side proxy. like we will tell our users that hey you have to
1:04:201 hour, 4 minutes, 20 secondscreate an API URL on like something like this in your project that API/VMOX and then you have to copy a code snippet as like we were doing in our Vidmox SDK.
1:04:301 hour, 4 minutes, 30 secondsThe same like technique we're going to still follow in here and this is going to like do a forward request to our
1:04:371 hour, 4 minutes, 37 secondsinternal Vidmox API with the API keys like the user API keys and everything.
1:04:431 hour, 4 minutes, 43 secondsYeah, we are basically passing the video tracking ID and when we're getting the response back, we're setting that in
1:04:501 hour, 4 minutes, 50 secondsthis set video data as the response and finally we are making the set is loading false. Yeah.
1:04:581 hour, 4 minutes, 58 secondsAnd one more thing we have to must inject our the stylings because without injecting it's not going to work. Yeah.
1:05:071 hour, 5 minutes, 7 secondsIf there is video tracking ID then fetch video data and at first definitely inject the Vidmox like caption styles or
1:05:151 hour, 5 minutes, 15 secondsthe custom styles which we created earlier.
1:05:201 hour, 5 minutes, 20 secondsYeah. Now the most important thing let's call ups everything. Let's come back here in this sorry not services I meant in this main dashboard this API in Vidmox.
1:05:321 hour, 5 minutes, 32 secondsLet's create a new folder by giving name player. Why? That's what we're doing in here, right? We're forwarding request to API/Vidmox/player.
1:05:431 hour, 5 minutes, 43 secondsSo, API, Vidmox, and player. Now, here, let's add a route.ts.
1:05:491 hour, 5 minutes, 49 secondsAnd in here, in this route.ts, basically, we need to add a code
1:05:571 hour, 5 minutes, 57 secondssnippet. However, the code snippet will definitely not work properly because we haven't exported our SDK or anything
1:06:041 hour, 6 minutes, 4 secondsyet. the Vidmox player server. But this is how it will look like. It's basically our post request. And by the way, for
1:06:131 hour, 6 minutes, 13 secondsusers, for normal users, they don't need this at all. They will just do this and
1:06:201 hour, 6 minutes, 20 secondspass their API keys. But for Vidmox application only for the Vidmox website we're doing it because this is inside
1:06:281 hour, 6 minutes, 28 secondsyou can see in main dashboard means the Vidmox website because instead of API key we're passing the authentication
1:06:351 hour, 6 minutes, 35 secondstoken because definitely we don't have the user API key right we don't know the user API key how can we pass that that's
1:06:431 hour, 6 minutes, 43 secondsnot possible for Vidmox to pass the u the user's personal API keys so we have a like token for those users like
1:06:511 hour, 6 minutes, 51 secondsThey're logged in definitely and when they're logged in we have their token and we can pass that token and interestingly our guard our backend
1:06:591 hour, 6 minutes, 59 secondsguard it understand tokens and API keys at the same time. So if you're passing token it will still work. Yeah we can
1:07:091 hour, 7 minutes, 9 secondssave it right now. Let's come back here and I want one thing to do from here and
1:07:161 hour, 7 minutes, 16 secondsthat is let me return the media player.
1:07:241 hour, 7 minutes, 24 secondsThis is from vitack.
1:07:271 hour, 7 minutes, 27 secondsLet's pass the riff which is going to be the player the title
1:07:361 hour, 7 minutes, 36 secondsfor now. Let's make it bitmox player like on static plays in line
1:07:441 hour, 7 minutes, 44 secondsplays in line or by default true auto play same auto
1:07:511 hour, 7 minutes, 51 secondsplay or by default false the video will not play automatically by default
1:07:581 hour, 7 minutes, 58 secondssource is going to be the video source one And play is going to be one ready.
1:08:131 hour, 8 minutes, 13 secondsOne error on error on play.
1:08:261 hour, 8 minutes, 26 secondsUh for now just keep it empty like this because we basically we will do here
1:08:331 hour, 8 minutes, 33 secondssome configurations in the future for the analytics.
1:08:391 hour, 8 minutes, 39 secondsOne provider change. This is the most important part because we have to change
1:08:461 hour, 8 minutes, 46 secondsthe provider since we're using HLS the custom option
1:08:531 hour, 8 minutes, 53 secondsand we can say if provider dot type equals to hls
1:09:001 hour, 9 minutesthen provider config
1:09:091 hour, 9 minutes, 9 secondsuh equals to hex hr seta looks a bit weird but that's what it's
1:09:181 hour, 9 minutes, 18 secondscalled actually and hex hr
1:09:241 hour, 9 minutes, 24 secondsnow H XML request um HTTP request I guess. Yeah.
1:09:331 hour, 9 minutes, 33 secondsURL which is going to be string.
1:09:381 hour, 9 minutes, 38 secondsIf the URL doesn't have means doesn't includes the token
1:09:481 hour, 9 minutes, 48 secondsthen con separator URL
1:09:561 hour, 9 minutes, 56 secondsincludes and
1:10:041 hour, 10 minutes, 4 secondsare this. So we basically like doing a filter in here.
1:10:121 hour, 10 minutes, 12 secondsYeah, makes sense. Now hex hr.gate.
1:10:171 hour, 10 minutes, 17 secondsSorry, not gate. I think open. Yeah. and get
1:10:251 hour, 10 minutes, 25 secondsURL separator the token params
1:10:371 hour, 10 minutes, 37 secondstoken params it's basically
1:10:451 hour, 10 minutes, 45 secondsin here let's do one thing let's make our video src variable which is going to video
1:10:521 hour, 10 minutes, 52 secondsdata dot playlist URL which we're getting from our API
1:10:591 hour, 10 minutes, 59 secondsand token params something like this. We need our subtitle URL subtitle VTT URL
1:11:091 hour, 11 minutes, 9 secondsand preview URL and sign thumbnail VTT URL. So we are basically like calling all of the all of those helper function
1:11:171 hour, 11 minutes, 17 secondsright now in these variables and if is loading and video is loading
1:11:231 hour, 11 minutes, 23 secondsthen we can show this like beautiful loader like the vidmox loader the video data is not available and is loading is
1:11:321 hour, 11 minutes, 32 secondsfalse it means something is wrong you're loading the video and the chapter URL like the timestamp URL we're saying
1:11:411 hour, 11 minutes, 41 secondsvideo data vt KT and we are making it like a blob URL something like this. Yeah.
1:11:491 hour, 11 minutes, 49 secondsNow let's come back here again and token params and make it true.
1:11:591 hour, 11 minutes, 59 secondsAll good but media player it's going to be something like this. I don't know why it's still giving error.
1:12:101 hour, 12 minutes, 10 secondsmedia player from where I imported it. Let me see. Uh actually we have to import it from vidstack react.
1:12:261 hour, 12 minutes, 26 secondsYeah. Now I think no error. Uh still error. Okay. Interesting.
1:12:361 hour, 12 minutes, 36 secondsBut still there is error because I think inside here in this media player we have to provide our media provider
1:12:461 hour, 12 minutes, 46 secondsfrom vstack and react.
1:12:551 hour, 12 minutes, 55 secondsSo media provider uh let me do one thing. Here
1:13:081 hour, 13 minutes, 8 secondslet's add media provider like this. Yeah. Now see no error.
1:13:161 hour, 13 minutes, 16 secondsPerfect. Now in media provider we have to pass track and again I don't know why the
1:13:251 hour, 13 minutes, 25 secondssuggestion is coming from actually the list but we don't need to import it from the list.
1:13:311 hour, 13 minutes, 31 secondsWe're going to import it from here.
1:13:371 hour, 13 minutes, 37 secondsAnd same for I think this two.
1:13:441 hour, 13 minutes, 44 secondsNo, this too far from the list. Okay, makes sense. Now let's come back here again for the track.
1:13:541 hour, 13 minutes, 54 secondsLet's add the source. It's going to be the chapters URL kind is going to be
1:14:031 hour, 14 minutes, 3 secondschapters level is going to be
1:14:111 hour, 14 minutes, 11 secondschapters and it's going to be like by default true.
1:14:171 hour, 14 minutes, 17 secondsNow if there is subtitle URL subtitle VT URL
1:14:271 hour, 14 minutes, 27 secondsthen add track like the subtitle VTT URL
1:14:361 hour, 14 minutes, 36 secondskind is going to be subtitles level English
1:14:441 hour, 14 minutes, 44 secondslanguage English and default true.
1:14:521 hour, 14 minutes, 52 secondsYeah. After this for the captions, let's add captions
1:15:011 hour, 15 minutes, 1 secondfrom our vid stack react. I'm pretty sure the import is coming from a different
1:15:091 hour, 15 minutes, 9 secondsplace. So yeah. Now after this in in this captions we just have to add a class name that
1:15:181 hour, 15 minutes, 18 secondsVDS captions. Yep. Something like this.
1:15:251 hour, 15 minutes, 25 secondsLet's come outside from the media provider and call our default video layout.
1:15:371 hour, 15 minutes, 37 secondsDefault. Ah okay. video layout.
1:15:471 hour, 15 minutes, 47 secondsAll right. And we have to pass the thumbnails here. By the way, it's going to be actually self-closing.
1:15:581 hour, 15 minutes, 58 secondsWe have to pass the thumbnails.
1:16:021 hour, 16 minutes, 2 secondsThe icons which is going to be the vinmox icons and slots like the extra thing
1:16:111 hour, 16 minutes, 11 secondsextra features we're going to enable that is Google cast button we're going to make it null and chapters menu we're
1:16:191 hour, 16 minutes, 19 secondsgoing to also make it null. We don't need it inside our video player. Yeah, we can save it.
1:16:251 hour, 16 minutes, 25 secondsAnd I think we should actually use it from here.
1:16:381 hour, 16 minutes, 38 secondsNo. Okay, fine. Then let's save it. Uh, our video player is partially ready. Not
1:16:471 hour, 16 minutes, 47 secondsfully ready yet. It's still uh giving us warning which completely makes sense.
1:16:511 hour, 16 minutes, 51 secondsLet's come back in this server in this index.ts. I mean we have to create an index.ts first and it's going
1:17:001 hour, 17 minutesto basically forward on file. It's going to export on file and the file is inside our services. It's going to be process
1:17:101 hour, 17 minutes, 10 secondsrequest.ts the normal process request which we're always doing. Now here
1:17:171 hour, 17 minutes, 17 secondsexport as sync function handle
1:17:251 hour, 17 minutes, 25 secondsprocess request.
1:17:291 hour, 17 minutes, 29 secondsIt's going to receive the request and API key as parameter. Yeah,
1:17:371 hour, 17 minutes, 37 secondsrequest is going to be request API key is going to be string.
1:17:511 hour, 17 minutes, 51 secondsYeah.
1:17:551 hour, 17 minutes, 55 secondsNow definitely we can come back here. We can save it and from here let's say export
1:18:031 hour, 18 minutes, 3 secondsour handle process request. Uh I think we're
1:18:121 hour, 18 minutes, 12 secondsalready exporting it. Yeah.
1:18:181 hour, 18 minutes, 18 secondsFrom dot slash sorry dot dot slash services process request.js.
1:18:261 hour, 18 minutes, 26 secondsYep. Done. Let's come back here now.
1:18:331 hour, 18 minutes, 33 secondsAnd inside here we have to do the main work. And this is this is going to be a little bit different. I mean this is like the main thing we're doing now. If
1:18:421 hour, 18 minutes, 42 secondsthere is no API key then we can return an error that Vidmox API key is required.
1:18:511 hour, 18 minutes, 51 secondsNow we have to look for the JWT.
1:18:561 hour, 18 minutes, 56 secondsWhy? Because if there is no API key, it means that I mean first of all we're checking it if the API key is like undefined or null then we're giving an
1:19:051 hour, 19 minutes, 5 secondserror. Okay, there is something in the API key and we are checking it with like is it JWT or not? Is it valid or not? So
1:19:131 hour, 19 minutes, 13 secondsfirst check is is probably JWT. So this is basically on utility function.
1:19:201 hour, 19 minutes, 20 secondsLet's create here a new file.
1:19:241 hour, 19 minutes, 24 secondsWe can say export function is probably durability which is going to
1:19:331 hour, 19 minutes, 33 secondsreceive the token which is going to be string and it's going to check within reax pattern that is it matching as like
1:19:421 hour, 19 minutes, 42 secondsa JWT token if it's then it's JT and another one which we can actually copy
1:19:491 hour, 19 minutes, 49 secondsfrom our SDK like our Vidmox SDK library which is the like verify find the API key signature the API key signature
1:19:571 hour, 19 minutes, 57 secondsmechanism. Yeah. Now we can import it and we can also check the validity.
1:20:051 hour, 20 minutes, 5 secondsFirst of all, if it's like JWT then we can check it. If it's not JWT then it means it is probably the API key then
1:20:131 hour, 20 minutes, 13 secondswe're also checking the like signature the API key signature. Yeah. If it's not valid somehow then we're saying invalid
1:20:221 hour, 20 minutes, 22 secondsAPI key. Now for the O headers this time if there is it's JWT then we're passing
1:20:301 hour, 20 minutes, 30 secondsit through authorization if it's not then we're passing it through API key.
1:20:331 hour, 20 minutes, 33 secondsYep. Uh we need our base URL which we will get from our get env config and it's going to be actually completely
1:20:421 hour, 20 minutes, 42 secondssimilar like we did in our Vidmox SDK
1:20:501 hour, 20 minutes, 50 secondslike this. So just paste that. Come back here and sorry here.
1:21:001 hour, 21 minutesNow after this we need our search params because player is going to forward two type of request. This this endpoint
1:21:081 hour, 21 minutes, 8 secondsvidmbox player is going to forward two type of request. One is for playing the video another not for playing the video.
1:21:161 hour, 21 minutes, 16 secondsOne is for getting access to the playlist URL. Another one is for updating the meta data or like requesting for more data we can say.
1:21:271 hour, 21 minutes, 27 secondsYeah. So both request is very important.
1:21:301 hour, 21 minutes, 30 secondsThe video will not work without any of this. I mean so let's say one is breaking another one is not working then the video will not work properly.
1:21:411 hour, 21 minutes, 41 secondsUh after this we can say const kind and search params dot get
1:21:501 hour, 21 minutes, 50 secondswe need the kind like which type of request is this? If the kind is event
1:21:581 hour, 21 minutes, 58 secondsthen it's for analytics. If it's not event, for now it's definitely not event. Then we need the video tracking
1:22:071 hour, 22 minutes, 7 secondsID then search params.gate.
1:22:121 hour, 22 minutes, 12 secondsWe're taking our video tracking ID from the search params.
1:22:191 hour, 22 minutes, 19 secondsIf no video tracking ID then just return an error that video
1:22:261 hour, 22 minutes, 26 secondstracking ID is required. Now we have to send request to our main server. Now the
1:22:331 hour, 22 minutes, 33 secondsbase URL with the Vmbox API API player load video and the video tracking ID and headers we're passing the O headers.
1:22:411 hour, 22 minutes, 41 secondsAfter getting the response we're passing it we're returning the response and we're just adding the data or upstream error if if there is any error.
1:22:531 hour, 22 minutes, 53 secondsYeah.
1:22:561 hour, 22 minutes, 56 secondsUh however one thing I just want to check there is one try catch statement.
1:23:071 hour, 23 minutes, 7 secondsUh we should use here on try catch statement actually. So let's cut everything. Do not do anything. Just cut everything
1:23:141 hour, 23 minutes, 14 secondsand add on try catch statement. Paste everything again in the try part.
1:23:201 hour, 23 minutes, 20 secondsAnd now after this let's come in the catch block
1:23:271 hour, 23 minutes, 27 secondsand message the error
1:23:351 hour, 23 minutes, 35 secondsmessage or an unexpected error occurred like an fallback message.
1:23:431 hour, 23 minutes, 43 secondsYeah. And we can return the error response as well.
1:23:481 hour, 23 minutes, 48 secondsYeah. That's it. That's about our process request. It's very simple for now, but definitely it's going to be a little bit bigger when we'll have like
1:23:571 hour, 23 minutes, 57 secondsthe event and everything like the clear tracking mechanism. Yeah. Now, since we're having this, we can come back to
1:24:061 hour, 24 minutes, 6 secondsour main index.ts, GS this main one and we can export everything from here like
1:24:151 hour, 24 minutes, 15 secondsour video player the vidmox player and the handle process request since it's ready
1:24:241 hour, 24 minutes, 24 secondswe can write this that npm run build it's running a t-up build and here you
1:24:311 hour, 24 minutes, 31 secondsgo you can see our dist folder is ready in here the vidmox player and react and server
1:24:381 hour, 24 minutes, 38 secondsAnd it looks perfect. It looks pretty solid. Now let's connect this library with our
1:24:461 hour, 24 minutes, 46 secondslocal system. So we can say npm link.
1:24:521 hour, 24 minutes, 52 secondsAnd here we can stop our server and we can say npm link addit vidmox / layer.
1:25:021 hour, 25 minutes, 2 secondsI think the error will be gone. And here you So you can see the array is already done because we're like linking up our uh library from here.
1:25:141 hour, 25 minutes, 14 secondsYep, it's taking a little bit of time which is normal for the first time. It takes time a little bit.
1:25:251 hour, 25 minutes, 25 secondsOkay, since it's installing while it's installing we can get back in here again. Now right now let's try to test
1:25:321 hour, 25 minutes, 32 secondsVidmox player. So in main dashboard in app we can create a new folder by giving them test
1:25:391 hour, 25 minutes, 39 secondsand we can add a page.tsx in here.
1:25:451 hour, 25 minutes, 45 secondsLet's add an RFC page. Let's make it actually client side.
1:25:551 hour, 25 minutes, 55 secondsYep. And Let's run our Vidmox player in here.
1:26:061 hour, 26 minutes, 6 secondsSo for like running the Vidmox player, we don't need a lot of code. We just need to add this Vidmox player. Let's import it.
1:26:181 hour, 26 minutes, 18 secondsOkay, Vidmox player. We have to import it from our Vidmox Player and React. Now the
1:26:251 hour, 26 minutes, 25 secondsvideo tracking ID for now. Let's add here static value. I mean definitely the value is going to be real one. So let's check it from here.
1:26:361 hour, 26 minutes, 36 secondsVideo tracking ID. Video tracking ID. Here you go.
1:26:421 hour, 26 minutes, 42 secondsJust pass it in here. Save it again. Start our server. npm run.
1:26:531 hour, 26 minutes, 53 secondsLet's type test.
1:26:581 hour, 26 minutes, 58 secondsOkay, it's saying cannot resolve vstack react types. Vstack ReactJS. Okay, something is wrong.
1:27:071 hour, 27 minutes, 7 secondsNo worries. Let me see what's wrong in here. I think it's imports issue somehow.
1:27:151 hour, 27 minutes, 15 secondsAnd it happens actually a lot.
1:27:201 hour, 27 minutes, 20 secondsUh the default icons on everything, it's going to be React
1:27:281 hour, 27 minutes, 28 secondsPlayer layout and default.
1:27:401 hour, 27 minutes, 40 secondsThis is what it should be. uh 1 minute
1:27:481 hour, 27 minutes, 48 secondsfrom vstack react player layout and default as I know it should be like that yeah I think I added wrong spelling
1:27:561 hour, 27 minutes, 56 secondssomewhere here it's giving an error the video layout default video layout
1:28:061 hour, 28 minutes, 6 secondsdefault video layout yeah it's here.
1:28:121 hour, 28 minutes, 12 secondsUh type actually type is going to be the icons. I did mistake.
1:28:201 hour, 28 minutes, 20 secondsYeah. Uh here something like this.
1:28:251 hour, 28 minutes, 25 secondsDone. We can save it. Let's come back here. Give on rebuild.
1:28:331 hour, 28 minutes, 33 secondsCome back here. And here you go.
1:28:361 hour, 28 minutes, 36 secondsSomething is loading up. And probably there is something wrong. Yeah, blocked origin.
1:28:451 hour, 28 minutes, 45 secondsIt's saying 403. Okay.
1:28:521 hour, 28 minutes, 52 secondsAll right guys, I found it. Why it's not breaking? Uh we did basically a big mistake. Uh not a big mistake. It was
1:28:591 hour, 28 minutes, 59 secondslike slip of like we mistakenly write it in here. You can see token path but here the value is token. It's line number 150 in this extract token params function.
1:29:111 hour, 29 minutes, 11 secondsJust change it from token to token path.
1:29:141 hour, 29 minutes, 14 secondsIt's very very important otherwise it's not going to work. This is the first one. Now if I build it, you'll see something different. The video is right
1:29:221 hour, 29 minutes, 22 secondsnow going to play for sure. But there's something horrible. Why the styling like
1:29:281 hour, 29 minutes, 28 secondsthis? Can definitely play the video. But the styling is horrible.
1:29:351 hour, 29 minutes, 35 secondsAnd it is horrible because we have to come back again in here and we have to
1:29:411 hour, 29 minutes, 41 secondsactually import or we have to actually connect CSS of vstack in here like this.
1:29:481 hour, 29 minutes, 48 secondsSo vstack react player styles default theme CSS and layout CSS. Yeah, this is very very important. Now let's again build it.
1:29:591 hour, 29 minutes, 59 secondsLet's come back here and test. Here you go.
1:30:041 hour, 30 minutes, 4 secondsThis time it's working. You can see the video player. It's definitely not small
1:30:121 hour, 30 minutes, 12 secondsone. You can change the speed from here and like you can mute the video, the
1:30:201 hour, 30 minutes, 20 secondscolor, the subtitle, the like timestamps, everything is perfectly perfectly working. It's looking really
1:30:291 hour, 30 minutes, 29 secondsvery beautiful. Even the shortcuts are working. If you press F, it's the full screen. Press again F outside. If you
1:30:371 hour, 30 minutes, 37 secondspress M, then mute. If you press M again, then it's unmute. And the video is basically a video of Lapland. I cannot play it for a long time otherwise
1:30:451 hour, 30 minutes, 45 secondsI'll get definitely copyright. All right. Yeah. So this was the video. You can see the video is actually working and that's the most important thing. So
1:30:531 hour, 30 minutes, 53 secondssince we are playing our video for the first time, we should be happy, right?
1:30:571 hour, 30 minutes, 57 secondslike we're playing our I mean the vidmbox player is breaking right now even though there there is some error which we have to fix because it's not fully complete yet we have to finish it.
1:31:091 hour, 31 minutes, 9 secondsYeah. Now let's come back here since the video player is working video playing feature is working. We have to finish
1:31:181 hour, 31 minutes, 18 secondslike the final version. Now what is missing here? Now the video is playing everything is good but we need to track
1:31:251 hour, 31 minutes, 25 secondsit like with a very advanced level. How much you're playing the video? What is the average view durations? When there
1:31:341 hour, 31 minutes, 34 secondsis an unique views when there is not unique views we need to do a lot of things for this and we will do that but
1:31:421 hour, 31 minutes, 42 secondswe have to do it from the back end first. Front end is simple not too much simple but simpler than the back end
1:31:501 hour, 31 minutes, 50 secondspart. Now we're going to start the main interesting part of this full video series and that is we're going to start to work with an event-driven
1:31:571 hour, 31 minutes, 57 secondsarchitecture. Let's come back in services again in this source folder. In this services, sorry modules folder.
Chapter 5: Video Analytics Service — Event-Driven Architecture
1:32:061 hour, 32 minutes, 6 secondsLet's create our another modules called analytics. Yeah, we're right now starting to work for the analytics
1:32:131 hour, 32 minutes, 13 secondsfeatures or the tracking features. not only analytics, it's like every single tracking we're going to do in here.
1:32:221 hour, 32 minutes, 22 secondsUh now inside this analytics module, it's going to be a
1:32:301 hour, 32 minutes, 30 secondslittle bit different. First of all, we're going to add here consumer. What is this consumer? Don't worry. This is
1:32:381 hour, 32 minutes, 38 secondsthe masses broker consumer. What is masses broker? I'll try to my best to explain this to you again. Message
1:32:451 hour, 32 minutes, 45 secondsbroker is like something let me again explain from here. So when you are watching a video let's say you are
1:32:521 hour, 32 minutes, 52 secondsplaying a video not only you it can happen that at the same time there are thousands of people or let's say 100 thousands of people are playing the
1:33:001 hour, 33 minutesvideo and after a certain time we want to update our database. So if there is so many requests like that at the same
1:33:081 hour, 33 minutes, 8 secondstime let's say there is 100,000 request if we're processing that with our database or even with the caching
1:33:151 hour, 33 minutes, 15 secondsmechanism it's definitely going to crash or b our backend API never can handles a
1:33:231 hour, 33 minutes, 23 secondslot of requests like this and for solving this problem there is a solution called masses broker or an eventdriven
1:33:321 hour, 33 minutes, 32 secondsarchitecture what is the meaning of this eventdriven arch architecture. It sounds very like complicated and interesting at
1:33:391 hour, 33 minutes, 39 secondsthe same time. So events driven meanings it based it works on an event. So what
1:33:471 hour, 33 minutes, 47 secondsis an event? When you are playing a video that's an event. When you're even clicking the pause button that's also an
1:33:541 hour, 33 minutes, 54 secondsevent. When you are let's say playing the full video or playing for a certain time everything is counted as events. So
1:34:021 hour, 34 minutes, 2 secondswhen there are so many events happening at the same time, we use event-driven architecture for a better scaling approach.
1:34:111 hour, 34 minutes, 11 secondsSince Vidmox is going to be like a lot of people is going to use Vidmox at the same time since this is a video player
1:34:181 hour, 34 minutes, 18 secondsand it can happen that at the same time 10 or 20 applications are using Vidmox internally in their system and their
1:34:271 hour, 34 minutes, 27 secondsaudience is actually going to be Vidmox users or not users I would say the audience or viewers and we have to
1:34:341 hour, 34 minutes, 34 secondshandle all of that at the same time that's why we cannot follow a very small like plan we must have to add on very
1:34:421 hour, 34 minutes, 42 secondsscalable architecture and that's why we're using here an eventdriven architecture because this is the most scalable way for handling this type of
1:34:501 hour, 34 minutes, 50 secondsthings. I hope you understand it what is called eventdriven architecture regarding message broker it just like um
1:34:581 hour, 34 minutes, 58 secondslet's say um tools or framework we can say we're going to use this one that's jet stream it's very famous uh I think
1:35:081 hour, 35 minutes, 8 secondsit's a product of uh I really forgot it jet prints or something you probably
1:35:141 hour, 35 minutes, 14 secondsheard about Jet Prince uh I think it's a framework in Java or something I forgot it But yeah something like that or it's
1:35:221 hour, 35 minutes, 22 secondsprobably a company. So jet stream it's very famous net jet stream. So it just like a masses broker
1:35:311 hour, 35 minutes, 31 secondsthere's there is like popsup model and net jet stream. So how net jet stream work and by the way Kafka you probably
1:35:391 hour, 35 minutes, 39 secondsheard about Kafka. Yeah Kafka is also a masses broker. Rabbit MQ that's also a masses broker. Bulm MQ same masses broker. So there are so many options.
1:35:491 hour, 35 minutes, 49 secondsThere are plenty of options for message broker frameworks or tools. But which one you should use? It completely
1:35:571 hour, 35 minutes, 57 secondsdepends based on your application. Now for Vidmox, if we use Kafka, that's going to be a little bit heavier because
1:36:041 hour, 36 minutes, 4 secondsKafka takes a lot of space. Now what are the difference between Kafka and Jetstream? Definitely there are so many different things but Kafka is mainly for
1:36:141 hour, 36 minutes, 14 secondshighly scalable applications or where we need like multiple consumer multiple options but net jet stream the best
1:36:221 hour, 36 minutes, 22 secondsthing about this is that it's very lightweight it can work with a very like simple machine as well but on the other
1:36:291 hour, 36 minutes, 29 secondshand Kafka is very heavy that's why like you should not use Kafka for a simple or small thing and like for the NV version
1:36:381 hour, 36 minutes, 38 secondsyou never should use Kafka again because it is a it's a little bit complicated and it's going to take a lot of your
1:36:461 hour, 36 minutes, 46 secondscomputing power and definitely you do not have a lot of money at the first time to spend for your infrastructure and that's why net state stream shines
1:36:541 hour, 36 minutes, 54 secondshere same like the rabbit MQ that's also good but I personally like net state stream a lot that's why I'm going to use
1:37:021 hour, 37 minutes, 2 secondsthis and you're going to also using it and I believe after watching or after using net state stream for a long time, you'll also fall in love with it. Yeah.
1:37:121 hour, 37 minutes, 12 secondsSo, let's start to set up everything. Uh now here after this, let's add our
1:37:201 hour, 37 minutes, 20 secondsanalytics module. Uh then service and controller like as always we're doing. So
1:37:291 hour, 37 minutes, 29 secondscontroller and
1:37:361 hour, 37 minutes, 36 secondsservice Yeah. So service controller and module.
1:37:441 hour, 37 minutes, 44 secondsPerfect. We also need another one and that is our net service. The net jet stream service.
1:37:531 hour, 37 minutes, 53 secondsExactly. And in DTO it's going to have our analytics DTO.
1:37:591 hour, 37 minutes, 59 secondsSo analytics DTO like an validation layer like a form validation. We can say it's kind of something like that. you already
1:38:071 hour, 38 minutes, 7 secondsknow about DTO because we're already using it for a long time and the DTO uh it's going to be a little bit bigger at first we need an enum something like
1:38:151 hour, 38 minutes, 15 secondsthis that player event type so we're basically collecting or not collecting yeah we are collecting all of these
1:38:241 hour, 38 minutes, 24 secondsevents from our video player like the play pause seek and end date very very important
1:38:321 hour, 38 minutes, 32 secondsfor like calculating the watch time accurately because it's not easy thing.
1:38:381 hour, 38 minutes, 38 secondsIt's definitely not an easy task to calculate the video odds time because it can happens that user the viewers who
1:38:461 hour, 38 minutes, 46 secondsare watching the video they're giving on reload or they're like let's say skipping 10 seconds skipping 10 seconds
1:38:551 hour, 38 minutes, 55 secondspausing the video suddenly going to like another part of the video. So it's very hard for us to track all of like our
1:39:041 hour, 39 minutes, 4 secondsvideo watch time if you're not if you're not collecting informations about the play, pause, heartbeat, sick, and end date and like all of these events.
1:39:131 hour, 39 minutes, 13 secondsThat's why we're like collecting all of these informations.
1:39:181 hour, 39 minutes, 18 secondsYeah. Now let's add our analytics event DTO class.
1:39:291 hour, 39 minutes, 29 secondsSo first of all our is enum.
1:39:341 hour, 39 minutes, 34 secondsLet's import from class validator player event type. The event type is going to be this player event type. Now we need
1:39:431 hour, 39 minutes, 43 secondsto check the current time like when the event is coming which time it's coming from the video player not the this time definitely it's about the video time.
1:39:541 hour, 39 minutes, 54 secondsThen previous time when previously uh another like event came to our like our event dri event consumer. So that's the
1:40:031 hour, 40 minutes, 3 secondsprevious time we're doing it so that we can compare the time gap in bitcoin that token very very important. This is for
1:40:111 hour, 40 minutes, 11 secondsour like analytics security. Our analytics is not like anyone can send request. No, it's still token verified
1:40:181 hour, 40 minutes, 18 secondsso that like no one can do spamming with this uh go means the locations of the request
1:40:271 hour, 40 minutes, 27 secondslike from which location the request is coming and is unique is the request is
1:40:331 hour, 40 minutes, 33 secondscoming from a unique IP or not. That's it. So this is our analytics DTO it's
1:40:401 hour, 40 minutes, 40 secondsready. Now let's set up our nets. And for setting up net let's come back to
1:40:471 hour, 40 minutes, 47 secondsour dockers uh docker compose file again from here
1:40:541 hour, 40 minutes, 54 secondswe have to set up nuts. So we can say nets
1:41:021 hour, 41 minutes, 2 secondsimage is going to be net 2.10 and
1:41:101 hour, 41 minutes, 10 secondsalpine. Yeah, this image we're going to use. Now the container name we can say
1:41:171 hour, 41 minutes, 17 secondsvidmox nets or your project nets ports
1:41:291 hour, 41 minutes, 29 seconds4 23 4 triple 2
1:41:361 hour, 41 minutes, 36 seconds8 2 3 and 8 triple 2. Yeah.
1:41:441 hour, 41 minutes, 44 secondsUh that's it. After this comment just something like this JS and restart.
1:41:571 hour, 41 minutes, 57 secondsYeah. Unless stopped. Yeah. And in volume is data.
1:42:071 hour, 42 minutes, 7 secondsIt's fine. Uh I think that's it. We don't need anything else. Yeah. We can save it
1:42:161 hour, 42 minutes, 16 secondsand we can write npm run docker
1:42:241 hour, 42 minutes, 24 secondsuh or docker compass upd something like this invalid configurations container
1:42:301 hour, 42 minutes, 30 secondsport 8222 uh the port is no it's correct oh there is an space Sorry.
1:42:421 hour, 42 minutes, 42 secondsOkay. The container is running. Let me show you. You can see net is actually working in here. For you for the first
1:42:501 hour, 42 minutes, 50 secondstime, definitely it will not work. Works like this. It will like install it and run the net state stream. Yeah, that's
1:42:591 hour, 42 minutes, 59 secondsit. Since our net state stream is ready, uh let's set it up in here. So, let's come back in our net service.
1:43:091 hour, 43 minutes, 9 secondsand injectable export class
1:43:171 hour, 43 minutes, 17 secondsnet service implements one module in it
1:43:271 hour, 43 minutes, 27 secondsand one module destroy. Now private NC meaning connection.
1:43:401 hour, 43 minutes, 40 secondsNets connection.
1:43:441 hour, 43 minutes, 44 secondsUh connection. I think we have to install the library. Yeah. So we have to install
1:43:541 hour, 43 minutes, 54 secondsa new library called nets.
1:44:001 hour, 44 minutesAll right. It's installing.
1:44:031 hour, 44 minutes, 3 secondsI don't know why it's taking a little bit long time. However, let's import all of this from nets like
1:44:121 hour, 44 minutes, 12 secondsconnects connection jetstream client and acknowledge policy or ACK policy. Yeah.
1:44:191 hour, 44 minutes, 19 secondsNow private JS meanings actually the jet stream client
1:44:261 hour, 44 minutes, 26 secondsprivate read only logger the new logger
1:44:371 hour, 44 minutes, 37 secondsthe next service dot name. Yeah.
1:44:431 hour, 44 minutes, 43 secondsNow constructor private config which is going to call the config service.
1:44:551 hour, 44 minutes, 55 secondsNow as sync on module init
1:45:031 hour, 45 minutes, 3 secondsinside this let's add on track at statement and the net URL
1:45:111 hour, 45 minutes, 11 secondsit's going to be like this.config.get get net URL and like by default the value is going to be this one
1:45:201 hour, 45 minutes, 20 secondsif there is no like env value this NC aait connect servers this net URL so
1:45:271 hour, 45 minutes, 27 secondswe're connecting nets jet stream after this we have to just set up the
1:45:341 hour, 45 minutes, 34 secondsstream in here so setup stream is uh setup stream
1:45:461 hour, 45 minutes, 46 secondsWe have to create another module for this.
1:45:521 hour, 45 minutes, 52 secondsOkay, we will do it. Private as sync setup
1:46:001 hour, 46 minutesstream constant JSM
1:46:071 hour, 46 minutes, 7 secondsais.nc.jetstream Jet stream manager
1:46:141 hour, 46 minutes, 14 secondsconstream name and we can say vidmox playback events as
1:46:231 hour, 46 minutes, 23 secondsour stream name. So this is on stream and we're giving name to our stream to this vidmox playback events. Yeah, you
1:46:331 hour, 46 minutes, 33 secondscan think like a like a table in inside your database inside our message broker.
1:46:391 hour, 46 minutes, 39 secondsWe call it stream. Okay. So yeah, we will basically send request to this stream name. Now here we can say await
1:46:491 hour, 46 minutes, 49 secondsjsm.streams do.info and pass the stream name. If
1:46:551 hour, 46 minutes, 55 secondsit's catch any error then await JSM.streams do add
1:47:031 hour, 47 minutes, 3 secondsname is the stream name and subjects the subjects for the stream which is
1:47:111 hour, 47 minutes, 11 secondsgoing to be something like this that vidmox dot analytics
1:47:181 hour, 47 minutes, 18 secondsdot playback and yeah something like this yep now at
1:47:261 hour, 47 minutes, 26 secondsthe end we can add this.logger.log log stream stream name created the stream created. After this
1:47:361 hour, 47 minutes, 36 secondswe can ensure that the durable pool consumer exist like the consumer exist or not. So we can say aid
1:47:451 hour, 47 minutes, 45 secondsJSM consumers info stream name analytics. Now what is the consumers?
1:47:561 hour, 47 minutes, 56 secondsConsumers is basically the part which accept the request. Okay. And there is also like publisher. Yeah, producer not
1:48:041 hour, 48 minutes, 4 secondspublisher. Basically publisher and producer. Producer is same thing. So producer is basically that part which part is sending the request. For an
1:48:121 hour, 48 minutes, 12 secondsexample front end we can say but definitely front end is not going to like send request to here. Our internal Vidmox API is going to send request to
1:48:211 hour, 48 minutes, 21 secondshere. So that part will be producer. And which part is accepting it? That part is called consumer. Okay, I hope you're
1:48:281 hour, 48 minutes, 28 secondsunderstanding it. It's as simple as it is. Yeah. Now if it's catch any error in here, we can say a jsm dot consumers do
1:48:381 hour, 48 minutes, 38 secondsadd. We can pass the stream name durable name. We can say vmox
1:48:461 hour, 48 minutes, 46 secondsanalytics and worker acknowledge policy. Acknowledge policy.exlicit.
1:48:541 hour, 48 minutes, 54 secondsSo acknowledge meanings when on message our message broker is saying yeah we acknowledged the message we received the
1:49:021 hour, 49 minutes, 2 secondsmessage we're confirming it okay otherwise it will stay in the like memory for a certain time that yeah the
1:49:091 hour, 49 minutes, 9 secondsmessage is not acknowledged yet it can happen that somehow your server got crashed then those messages will be in
1:49:161 hour, 49 minutes, 16 secondsthe consumer but not acknowledged okay so that like you can replay that later when the server is coming back or even
1:49:241 hour, 49 minutes, 24 secondslike for any missed like message it can happen it can again reply back that and that's that's why message broker is
1:49:321 hour, 49 minutes, 32 secondsfamous so now here we can say this logger log if it's catch any error we can just
1:49:401 hour, 49 minutes, 40 secondsconsole log we can just go and log that durable pool consumer vidmox analytics breaker created
1:49:471 hour, 49 minutes, 47 secondsis this an error yeah Okay,
1:49:551 hour, 49 minutes, 55 secondsfine. Try catch because the modern JS consumer
1:50:061 hour, 50 minutes, 6 secondsget requires a pool consumer. No delivery group or delivery subject.
1:50:101 hour, 50 minutes, 10 secondsOkay, fine. We don't need to worry about it a lot. Let's come back here and just call our that get jetstream
1:50:201 hour, 50 minutes, 20 secondsclient jet stream client and return this js.
1:50:301 hour, 50 minutes, 30 secondsYep.
1:50:321 hour, 50 minutes, 32 secondsAnd here as sync on module destroy
1:50:391 hour, 50 minutes, 39 secondswe can say if this dot nc aait this nc dot close.
1:50:501 hour, 50 minutes, 50 secondsYeah we can save it and that's it. Our net service is actually ready. is not
1:50:561 hour, 50 minutes, 56 secondssmall or also not so big because consumer is definitely going to be bigger than this setting up net service.
1:51:041 hour, 51 minutes, 4 secondsUh now let's come back to our analytics module.
1:51:091 hour, 51 minutes, 9 secondsLet's set up the module. So module decorator.
1:51:161 hour, 51 minutes, 16 secondsLet's import our JWT module because we need like the secrets in here.
1:51:271 hour, 51 minutes, 27 secondsSo we can do something like this.
1:51:321 hour, 51 minutes, 32 secondsUh it's getting giving us error because we have to export our analytics module and JWT module. Let's import it. We need the config module, the config service.
1:51:441 hour, 51 minutes, 44 secondsWe need secret key for analytics. So let's come back here.
1:51:491 hour, 51 minutes, 49 secondsOpen SSL random exod decimal 32. And I'm just pasting it in my
1:51:581 hour, 51 minutes, 58 secondsenv file. I'm doing it on another screen.
1:52:041 hour, 52 minutes, 4 secondsUh actually analytics datab is already in here. Uh okay fine then no problem.
1:52:131 hour, 52 minutes, 13 secondsWe can save it. After this, we can add the controllers. Sorry, I mean here.
1:52:221 hour, 52 minutes, 22 secondsNo, wait. Here we need to add the controllers. For controllers, it's going to be empty.
1:52:301 hour, 52 minutes, 30 secondsNow, providers same empty. Exports
1:52:381 hour, 52 minutes, 38 secondsfor now empty. Just in providers, let's add the net provider.
1:52:451 hour, 52 minutes, 45 secondsSorry, net service, not provider.
1:52:501 hour, 52 minutes, 50 secondsYep. Now we need our analytics service and analytics worker service. Actually, so many things we have to do.
1:52:581 hour, 52 minutes, 58 secondsFirst, uh let's start to work in the consumer because that's the main thing.
1:53:021 hour, 53 minutes, 2 secondsAnalytics service is nothing. It just going to like forward the request. Okay, it's not going to be big but yeah, there
1:53:101 hour, 53 minutes, 10 secondsare some like uh let's say there are some modules or some service file which
1:53:161 hour, 53 minutes, 16 secondswe have to create for like our dashboard like fetching the analytics and everything and this kind of things. But for handling the event, it's just going
1:53:251 hour, 53 minutes, 25 secondsto forward the request. It's just going to publish the request to our analytics consumer. So the main work is in the
1:53:331 hour, 53 minutes, 33 secondsanalytics consumer. So in this consumer let's create our analytics consumer.ts
1:53:431 hour, 53 minutes, 43 secondsfile. All right. So let's add here injectable decorator at first and we can say export class
1:53:511 hour, 53 minutes, 51 secondsanalytics uh worker service because this is basically our worker service which is
1:53:581 hour, 53 minutes, 58 secondsgoing to implement on module in it. And here we can add our private SC which is basically JSON codec from nets.
1:54:091 hour, 54 minutes, 9 secondsWe need our private aggregation map. So we can say aggregation map. We can
1:54:171 hour, 54 minutes, 17 secondscreate here a new map like string and uh we need to create a type for aggregated data like the main aggregated interface.
1:54:281 hour, 54 minutes, 28 secondsSo let's copy this. Let's create here.
1:54:311 hour, 54 minutes, 31 secondsSo we can say interface something like this and we're going to
1:54:371 hour, 54 minutes, 37 secondsreceive the total views which is going to be number. So like like the total views in like the time
1:54:451 hour, 54 minutes, 45 secondslike in 30 seconds. Then unique views count which is going to be number
1:54:541 hour, 54 minutes, 54 secondsminutes streamed which is going to be number as well.
1:55:021 hour, 55 minutes, 2 secondsuh goss not goss meanings like the location. So this is going to be in set of string. Yeah.
1:55:111 hour, 55 minutes, 11 secondsSame for geo views which is going to be another map
1:55:201 hour, 55 minutes, 20 secondsand string this is not going to be capital actually string and number
1:55:301 hour, 55 minutes, 30 secondsuh then finally devices like which devices which is going to be string like
1:55:361 hour, 55 minutes, 36 secondsthis yeah that's it now come back here after this Let's add private
1:55:431 hour, 55 minutes, 43 secondslist hard bited time. So list heartbeat
1:55:491 hour, 55 minutes, 49 secondstime you can say new map string uh number
1:55:591 hour, 55 minutes, 59 secondsand empty like the by default value private session view
1:56:071 hour, 56 minutes, 7 secondscounted we can say new set string and here you
1:56:161 hour, 56 minutes, 16 secondsNow private read only logger for the logger. So logger we can say new logger
1:56:251 hour, 56 minutes, 25 secondsfrom this js common and we can pass the analytics worker service dot uh name. That's it. Let's add our
1:56:331 hour, 56 minutes, 33 secondsconstructor in here. We can say private read only net service and we have to import our net service from do/n net
1:56:431 hour, 56 minutes, 43 secondsservice. After this we have to use our inject decorator because let's add our drizzle DB in here. We can give a name
1:56:511 hour, 56 minutes, 51 secondslike private read only and DB and for the type we can say it's any.
1:56:581 hour, 56 minutes, 58 secondsLet's add our radius client. Let's inject the radius client. Sorry, inject.
1:57:091 hour, 57 minutes, 9 secondsWe can say private read only and radius
1:57:161 hour, 57 minutes, 16 secondsand radius from i radius. Yeah, that's it.
1:57:221 hour, 57 minutes, 22 secondsNow here we can add a sync on module in it. Inside this let's add a set timeout
1:57:291 hour, 57 minutes, 29 secondsfunction. So say time out and we can say time out is uh going to be 5,000.
1:57:411 hour, 57 minutes, 41 secondsIt's like we're doing an delay slightly to ensure that nets connection and stream setup are ready. That's it. We
1:57:481 hour, 57 minutes, 48 secondscan say this consume events.
1:57:531 hour, 57 minutes, 53 secondswe can call it and we don't need the second bracket actually
1:58:021 hour, 58 minutes, 2 secondsand then this comma anymore. So this dot consume events
1:58:181 hour, 58 minutes, 18 secondson module in it. It's from SJS/ common. All good. What's wrong in here then?
1:58:271 hour, 58 minutes, 27 secondsAll right, we'll check it later. No problem. Let's create here our private async. Oh, sorry. I forgot to create the
1:58:341 hour, 58 minutes, 34 secondsprivate module. That's why. Consume events.
1:58:391 hour, 58 minutes, 39 secondsNow, inside here, we can say conjs this do.net service
1:58:471 hour, 58 minutes, 47 secondsdot getstream client. If there is no JS then this dot logger
1:58:551 hour, 58 minutes, 55 secondsdot error J stream client not available.
1:59:051 hour, 59 minutes, 5 secondsYeah I did on wrong spelling a level I think not correct spelling. Yeah I think it should be okay. Now we can return it
1:59:141 hour, 59 minutes, 14 secondsif there is no JS then otherwise uh here
1:59:201 hour, 59 minutes, 20 secondslet's add on try catch statement and consumer
1:59:281 hour, 59 minutes, 28 secondswe can call our js consumers dotate and we can add our consumer name
1:59:341 hour, 59 minutes, 34 secondsthat vidmox playback events and vidmox
1:59:421 hour, 59 minutes, 42 secondsanalytic X worker. Yeah. Now we need the messages.
1:59:491 hour, 59 minutes, 49 secondsSo const messages await consumer dot consume. So this will
1:59:571 hour, 59 minutes, 57 secondsreturn as the messages. We can say this dot logger dot log that worker
2:00:052 hours, 5 secondslistening for playback events
2:00:122 hours, 12 secondsusing our modern pool consumer API or something like this. Okay, you can write anything in here. It's just like to
2:00:192 hours, 19 secondsensure that yeah it's working. Now here we can create an as sync call back function like this. We can add a
2:00:272 hours, 27 secondsstatement again inside this and we can say for we can write a for loop for await con m of messages. Since the
2:00:362 hours, 36 secondsmessages is an array uh it's going to be actually of not or yeah and inside this
2:00:452 hours, 45 secondswe have to add another try catch. We can say con data.
2:00:502 hours, 50 secondsUh no it's not in the promise. So we don't need to add the uh aid. So we can say this sc. decode we can decode the m
2:01:002 hours, 1 minutedot data. Let's add on type in here this dot process event which we have to
2:01:082 hours, 1 minute, 8 secondscreate where we will pass like this data and then we have to acknowledge the message. Yeah. So we can say m.t acknowledge.
2:01:192 hours, 1 minute, 19 secondsIf it's catch any error then we can just log the error in here. So it's actually going to be error. Yep. If it's catch
2:01:272 hours, 1 minute, 27 secondsany error in here, we can again log it like this that message uh iterator error
2:01:362 hours, 1 minute, 36 secondsand we have to add here and set time out something like this that is that consume events with this 10,000 like seconds.
2:01:462 hours, 1 minute, 46 secondsUh yeah and finally we have to call it.
2:01:492 hours, 1 minute, 49 secondsSo to call it I think I did some mistakes somewhere.
2:01:552 hours, 1 minute, 55 secondsThis is the try catch statement. Yeah.
2:02:042 hours, 2 minutes, 4 secondsAnd yeah I see it. So we have to add on first bracket there and here one. And then finally we can call it like this.
2:02:112 hours, 2 minutes, 11 secondsYeah. Now it makes sense. Now if it catch any error in here. Let's make it E. And this is like the message that
2:02:192 hours, 2 minutes, 19 secondsfailed to get a consume from jet stream consumer. If this a push consumers like an error message
2:02:272 hours, 2 minutes, 27 secondsuh after this why it's giving error very normal we have to make this process event. So let's make this private module
2:02:352 hours, 2 minutes, 35 secondsprivate process event. It's going to receive the data. We can say any for now for the type and it's going to basically
2:02:432 hours, 2 minutes, 43 secondsreceive few things from the data such as video ID,
2:02:492 hours, 2 minutes, 49 secondssession ID, event, current time, IP, the user agent,
2:03:002 hours, 3 minutesgeol location, is this unique view or not? So is unique and timestamp.
2:03:092 hours, 3 minutes, 9 secondsYeah. All of this from data.
2:03:112 hours, 3 minutes, 11 secondsNow after this we need to check our current server time. So current server time we can say
2:03:202 hours, 3 minutes, 20 secondsnew date we can pass the timestamp and dot get time.
2:03:332 hours, 3 minutes, 33 secondsYeah, after this we can say if the aggregator aggregation map has if the
2:03:422 hours, 3 minutes, 42 secondsvideo ID doesn't have inside it then we can aggregate map we can set this video
2:03:492 hours, 3 minutes, 49 secondsid with this total views uh actually it's going to be dot not
2:03:572 hours, 3 minutes, 57 secondscomma yeah total views which is going to be zero unique views count which is going to be
2:04:042 hours, 4 minutes, 4 secondszero minute streamed Sam zero geos new set array yeah go views
2:04:142 hours, 4 minutes, 14 secondssame new map and devices
2:04:202 hours, 4 minutes, 20 secondsnew set yeah that's it now what is this it means
2:04:272 hours, 4 minutes, 27 secondsthat if the video id not exist inside our map while we are actually adding this map in here because it can happen
2:04:352 hours, 4 minutes, 35 secondsthat like we're mistakenly adding on event for multiple time inside our database and it's a very common issue inside like any event-driven
2:04:442 hours, 4 minutes, 44 secondsarchitecture it's known as ID important problem okay like one thing we're adding for multiple time inside our database to
2:04:522 hours, 4 minutes, 52 secondsso to solve the problem we are like storing everything inside this map so that we can filter out that is the request already inside our like this
2:05:002 hours, 5 minutesarray if then we will not add that. If it's completely empty then we are basically setting up the by default value like zero like for the total views
2:05:092 hours, 5 minutes, 9 secondsand for everything. Yeah. Now after this we can say const
2:05:172 hours, 5 minutes, 17 secondsas uh means aggregator this dot aggregation map dot get video id.
2:05:302 hours, 5 minutes, 30 secondsNow we have to check the current time like view counting we have to connect it
2:05:372 hours, 5 minutes, 37 secondssorry count it only for like for on session ID it's going to be one now current time if it's
2:05:462 hours, 5 minutes, 46 secondslike uh I think I did opposite
2:05:562 hours, 5 minutes, 56 secondsuh I think like this No, less equals to. So, how to write it?
2:06:062 hours, 6 minutes, 6 secondsLess equals to I really forgot it.
2:06:132 hours, 6 minutes, 13 secondsSo, something like this.
2:06:152 hours, 6 minutes, 15 secondsYeah, I think yeah. So this un equals to
2:06:222 hours, 6 minutes, 22 secondsif it's three less than three current time and this
2:06:292 hours, 6 minutes, 29 secondsdot session views count has this v uh not video id actually session ID since we're adding session
2:06:382 hours, 6 minutes, 38 secondsthen this dot session view counted dot add the session ID we're like immediately marking it to prevent the
2:06:452 hours, 6 minutes, 45 secondsrace conditions which I was explaining like the event uh the I important problem which is also known as race condition.
2:06:522 hours, 6 minutes, 52 secondsWe can add the total views. We can add like plus one. We can increment. If unique
2:07:012 hours, 7 minutes, 1 secondI mean is unique not unique is unique then aggregate dot unique views count just increment.
2:07:142 hours, 7 minutes, 14 secondsYeah. Now here we can say if zo like the go add dot gios
2:07:222 hours, 7 minutes, 22 secondssorry aggregator.js Jios dot add. We can add the Jio in here.
2:07:302 hours, 7 minutes, 30 secondsAnd go views dot set go.
2:07:372 hours, 7 minutes, 37 secondsWe can add the J views dot gate.
2:07:432 hours, 7 minutes, 43 secondsSince it's an array, we can say something like this. and + 1.
2:07:512 hours, 7 minutes, 51 secondsUh let me see. So go views dot set
2:07:592 hours, 7 minutes, 59 secondsgo and go views dot gate go zero and + one.
2:08:122 hours, 8 minutes, 12 secondsSo what's wrong in here?
2:08:142 hours, 8 minutes, 14 secondsUh argument of type number is not assignable. A parameter null.
2:08:212 hours, 8 minutes, 21 secondsGio views Jio views is actually not null. It should be number. Yeah.
2:08:302 hours, 8 minutes, 30 secondsFine. Now after this after this go view
2:08:372 hours, 8 minutes, 37 secondslet's come back outside. And second work is we have to calculate the watch time.
2:08:442 hours, 8 minutes, 44 secondsSo for the watch time calculation we have to check the last server time.
2:08:492 hours, 8 minutes, 49 secondsWe can check it through our last heartbeat time with the session ID.
2:08:542 hours, 8 minutes, 54 secondsYeah. Now we can call our shoot clean up like we should clean up the event. So if
2:09:022 hours, 9 minutes, 2 secondsthe event equals to pause or event equals to seek
2:09:102 hours, 9 minutes, 10 secondsor event equals to end date then it means should clean up. So if our
2:09:202 hours, 9 minutes, 20 secondslast server time is not undefined then const gap
2:09:282 hours, 9 minutes, 28 secondsseconds current server time minus last server time divide by 1,000 uh 1,000 not 100
2:09:382 hours, 9 minutes, 38 secondsdon't do this mistake. So this is basically the gap seconds. Now we have to check like the heartbeat inter interval is actually 15 seconds like
2:09:462 hours, 9 minutes, 46 secondsafter every 15 seconds there is one heartbeat happening inside our video player like on the client side. Okay, it
2:09:532 hours, 9 minutes, 53 secondsjust for tracking like the video watch time and everything. So we can say if the
2:10:012 hours, 10 minutes, 1 secondgap seconds is more than zero and gap seconds is
2:10:092 hours, 10 minutes, 9 secondsuh sorry I think something like this. Yeah less not less equals to 20 then we can
2:10:182 hours, 10 minutes, 18 secondsadd the minutes trimmed with this gap seconds.
2:10:242 hours, 10 minutes, 24 secondsYeah. Now if the shoot clean up
2:10:292 hours, 10 minutes, 29 secondsis true then this dot list heartbeat time dotdelete we have to delete the
2:10:372 hours, 10 minutes, 37 secondssession id from here. Else if the
2:10:442 hours, 10 minutes, 44 secondsgap seconds is more than zero and gap seconds is
2:10:522 hours, 10 minutes, 52 secondsless equals to 20 then this
2:10:582 hours, 10 minutes, 58 secondsdot list heartbeat time dot set set the session ID with this current
2:11:042 hours, 11 minutes, 4 secondsserver time. Yeah. Else if if the gap seconds is more than 20
2:11:132 hours, 11 minutes, 13 secondsthen if the gap is actually too large it means it's a new activity burst then we have to reset the tracker. So we can say
2:11:202 hours, 11 minutes, 20 secondsthis dot list time dot set session id and the current server time. Yeah.
2:11:302 hours, 11 minutes, 30 secondsUh that's it. Now here else if if the shoot cleanup is false and event
2:11:402 hours, 11 minutes, 40 secondsequals to play or event equals to
2:11:492 hours, 11 minutes, 49 secondsheart beat.
2:11:542 hours, 11 minutes, 54 secondsThen we have to initialize the tracker for new session or reactivation. So we can say this dot list heartbeat time dot
2:12:042 hours, 12 minutes, 4 secondsset session ID and current server time.
2:12:092 hours, 12 minutes, 9 secondsYeah, if the user agent has like the device, if the user agent
2:12:172 hours, 12 minutes, 17 secondsis available then aggregation dovices do add we have to add the user agent dot substring
2:12:272 hours, 12 minutes, 27 secondsthen 0 to 100 like the first characters.
2:12:322 hours, 12 minutes, 32 secondsYeah, if the JO is available then aggregation.js go do add
2:12:412 hours, 12 minutes, 41 secondsthe jio. Yeah. Now after this we have to make an interval. So we can say interval
2:12:512 hours, 12 minutes, 51 secondsbecause we are planning to run it after every 30,000 actually milliseconds. Now what is this
2:13:002 hours, 13 minutesinterval? It's actually work like a set timeout kind of like that. You can see interval we imported from NestJS schedule. So after after every 30
2:13:092 hours, 13 minutes, 9 secondsseconds we will like flash it to DB. Why we will flash it to DB after every 30 seconds? Because otherwise there are a
2:13:182 hours, 13 minutes, 18 secondslot of things and if we're doing it like every time then definitely it's going to give a lot of pressure on our database and after every 30 seconds we're going to do a batch update to our database.
2:13:292 hours, 13 minutes, 29 secondsWe're going to update our database with these all new events. not every single time because then it will definitely
2:13:362 hours, 13 minutes, 36 secondscrash the database. So that's why we are updating or flash to flashing to our data after every 30 seconds. Now we can
2:13:432 hours, 13 minutes, 43 secondssay if this do aggregation dom size equals to zero then return.
2:13:512 hours, 13 minutes, 51 secondsNow const current map
2:13:582 hours, 13 minutes, 58 secondswe can say new map we can pass this dot aggregation map we can say this dot aggregation map dotcle clear.
2:14:102 hours, 14 minutes, 10 secondsNow if this dot session view counted dot size is
2:14:172 hours, 14 minutes, 17 secondsmore than 5,000 sorry actually 50,000 then this dot
2:14:282 hours, 14 minutes, 28 secondsuh session view counted dot clear and this dot list heartbeat time dot clear and we have to call Right.
2:14:402 hours, 14 minutes, 40 secondsNow let's add here another try catch statement and we need our user based on the geo location. So we can say go by user it's another map.
2:14:512 hours, 14 minutes, 51 secondsLet's add here another for loop.
2:14:542 hours, 14 minutes, 54 secondsWe can say for const the video id and data of the
2:15:022 hours, 15 minutes, 2 secondscurrent map and we can say await this dot db.insert
2:15:122 hours, 15 minutes, 12 secondswe can insert the video analytics schema. Now video analytics schema is
2:15:192 hours, 15 minutes, 19 secondsnot available yet. We will do it right now. we will create our this video analytics schema. So let's go back to
2:15:272 hours, 15 minutes, 27 secondsour drizzle uh sorry not drizzle database and schema.ts and let's create this schema one by one.
2:15:372 hours, 15 minutes, 37 secondsSo we actually need to create here multiple database schema right now multiple table
2:15:452 hours, 15 minutes, 45 secondsfor an example this one like like the platform analytics secondly the video analytics
2:15:532 hours, 15 minutes, 53 secondsand after this we need our video daily analytics very very important this is for
2:16:002 hours, 16 minutesanalytics again and you can just like pause it and write it by yourself with just like the fields of the tables like
2:16:082 hours, 16 minutes, 8 secondsID, user ID, total request and this is the video analytics like minute stream, total views, unique views, the go the
2:16:162 hours, 16 minutes, 16 secondsdevice and this is the daily analytics like the charts for charts we actually need this however we have to import it from P core. Yeah, it's fine.
2:16:272 hours, 16 minutes, 27 secondsThat's it. And views from last 28 days.
2:16:302 hours, 16 minutes, 30 secondsThis is how it will look like. We also need some more table like another one like geo
2:16:362 hours, 16 minutes, 36 secondsanalytics something like this a little bit different.
2:16:442 hours, 16 minutes, 44 secondsYeah.
2:16:462 hours, 16 minutes, 46 secondsThen uh finally the last one which is important and mandatory that is our payment invoices. So let's create it
2:16:532 hours, 16 minutes, 53 secondsright now so that we don't need to again come back here and create it. Still we have to create another like table for
2:17:002 hours, 17 minutesour video player customizations which we'll do later but for now you can see this is the payment invoices. So just pause the video and write it by
2:17:092 hours, 17 minutes, 9 secondsyourself. I'm slowly scrolling it so that you can write it by yourself.
2:17:132 hours, 17 minutes, 13 secondsThat's it. Let me save and let's clear everything and let's write this that npm
2:17:192 hours, 17 minutes, 19 secondsrun db generate and npm run db push.
2:17:332 hours, 17 minutes, 33 secondsHere you go. It's saying you're about to delete delete uh stripe customer ID column in plant table with one items.
2:17:452 hours, 17 minutes, 45 secondsJust a minute. Plant table. Plant table.
2:17:512 hours, 17 minutes, 51 secondsOkay, it's very very important. Let me see the plan table. Uh there there is something wrong in here guys. We have to
2:17:582 hours, 17 minutes, 58 secondsadd here our stripe customer ID, subscription ID and price ID. Very very important. This is
2:18:062 hours, 18 minutes, 6 secondsimportant for like our subscriptions for our platform. So let's delete. I mean let's stop about it. Let's generate
2:18:142 hours, 18 minutes, 14 secondsagain. And now push. It should not give any error at this time. Yeah, at this moment it should not give error.
2:18:202 hours, 18 minutes, 20 secondsPerfect. Now we can import our video analytics. Here you go. It's done.
2:18:272 hours, 18 minutes, 27 secondsAfter this we have to store our video analytics. We can say video uh underscore id which is going to be the
2:18:352 hours, 18 minutes, 35 secondsvideo id. Total views which is going to be data dot total views unique views
2:18:442 hours, 18 minutes, 44 secondsminute streamed and all of these field one by one like this unique views minute streamed average
2:18:532 hours, 18 minutes, 53 secondsview duration which is going to be data minute stream divided by total views the average view
2:18:592 hours, 18 minutes, 59 secondsduration go is going to be like array from this data j same yeah Now one
2:19:082 hours, 19 minutes, 8 secondsconflict uh one conflict do update
2:19:192 hours, 19 minutes, 19 secondshere we can target the video analytics dov video id and we
2:19:272 hours, 19 minutes, 27 secondscan set so for like when there is already value for this then we we're going to update
2:19:342 hours, 19 minutes, 34 secondsit so we can that's why we're on conflict to update. For the total views, it's going to be something like this.
2:19:432 hours, 19 minutes, 43 secondsLet's import SQL from resol. So, v analytics do total views plus our data total views. Yeah. And unique views,
2:19:532 hours, 19 minutes, 53 secondsit's going to be same like video uh analytics dot unique views and data dot
2:19:592 hours, 19 minutes, 59 secondsunique views count. Yeah, we need minutes streamed. We have to update something like this.
2:20:102 hours, 20 minutes, 10 secondsThen we have to update our average view duration. This is going to be a little bit bigger. We're basically writing here some SQL code. So we're saying when the
2:20:192 hours, 20 minutes, 19 secondsvideo analytics total views then sorry we adding plus with this uh data total
2:20:262 hours, 20 minutes, 26 secondsviews if it's more than zero then we're like basically adding our video analytics minute stream meaning the
2:20:342 hours, 20 minutes, 34 secondsalready value and we're incrementing it with this data dot minutes. Yeah. and we're dividing it with our video
2:20:412 hours, 20 minutes, 41 secondsanalytics dot total views because we are basically making the average view duration in here that's why so it's just
2:20:482 hours, 20 minutes, 48 secondsan mathematical operation you can just see it and I believe you will understand it easily it's not any complicated math it's like the common
2:20:582 hours, 20 minutes, 58 secondsmath for making the average view duration now we need to store here our go
2:21:062 hours, 21 minutes, 6 secondslike the all location based things you can see something like this. So it's basically
2:21:142 hours, 21 minutes, 14 secondsthe raw SQL code which makes us uh like doing our work very easy. So that's why we're using here raw SQL. Same for the
2:21:222 hours, 21 minutes, 22 secondsdevice and the last one which is a simple one
2:21:302 hours, 21 minutes, 30 secondsand that is updated it which is just a new date. Yeah. Uh now we have to update
2:21:372 hours, 21 minutes, 37 secondsour like uses right the uses table. So we
2:21:432 hours, 21 minutes, 43 secondscan say this dot db dot select user
2:21:522 hours, 21 minutes, 52 secondsid with this video meta data
2:21:592 hours, 21 minutes, 59 secondsdot user id where it's matching then from video metadata
2:22:082 hours, 22 minutes, 8 secondswhere Our video metadata dot id is matching with our video ID.
2:22:192 hours, 22 minutes, 19 secondsSimple and limit it to one.
2:22:242 hours, 22 minutes, 24 secondsNow we need our user ID. So we can easily take it out from here.
2:22:292 hours, 22 minutes, 29 secondsVideo and user ID. Let's add an optional chain.
2:22:372 hours, 22 minutes, 37 secondsEven though user ID is definitely going to be there, it's just like if not available then it will not throw an error. So if no user uh if there is an
2:22:452 hours, 22 minutes, 45 secondsuser ID then we have our delta second where you can say math
2:22:542 hours, 22 minutes, 54 secondsdot round data dot minutes.
2:23:002 hours, 23 minutesNow we can say this TV.update update our uses table and set.
2:23:122 hours, 23 minutes, 12 secondsSo uses table our from our schema and set the minute streamed
2:23:232 hours, 23 minutes, 23 secondsand let's write here again on SQL little SQL line like this that uses minute streamed and last the delta
2:23:322 hours, 23 minutes, 32 secondsseconds. Yep. and the updated at new date where
2:23:422 hours, 23 minutes, 42 secondsour user ID is matching the user's user ID is matching with the login user ID.
2:23:482 hours, 23 minutes, 48 secondsNow we also have to update our radius key very very important.
2:23:532 hours, 23 minutes, 53 secondsSo we can say use radius key from our config if it's exist this radius key then we
2:24:032 hours, 24 minutes, 3 secondshave to update our minute str from the radius so that like our guard can our our guard will have
2:24:122 hours, 24 minutes, 12 secondsthe updated data. Then now l key we also have to update the lu key the lu cache
2:24:192 hours, 24 minutes, 19 secondsnot key. So we can import uses cache from our upload card but it's not in
2:24:262 hours, 24 minutes, 26 secondsthere. Let's do one thing. Let's go back to our cards. Upload card and add here export.
2:24:352 hours, 24 minutes, 35 secondsSame in here. Yeah. So uses cache and we can save it.
2:24:452 hours, 24 minutes, 45 secondsuh after this a lot of work we're doing.
2:24:482 hours, 24 minutes, 48 secondsYou can see already 238 lines of code because as I said earlier this file is going to be a little bit bigger which is
2:24:552 hours, 24 minutes, 55 secondsvery natural. If the data go views do size is more than zero then con users go
2:25:032 hours, 25 minutes, 3 secondsuh by users.gate gate we can get it with our user ID and new map.
2:25:142 hours, 25 minutes, 14 secondsWe can say string and number.
2:25:202 hours, 25 minutes, 20 secondsYeah, let's add here another for loop for our country and views
2:25:292 hours, 25 minutes, 29 secondsfrom the data dot go views and user go do set
2:25:382 hours, 25 minutes, 38 secondsthe country user go doate
2:25:472 hours, 25 minutes, 47 secondsentry or zero then plus the views. Yeah.
2:25:582 hours, 25 minutes, 58 secondsElse uh here get by user dot set the user id with the user go.
2:26:102 hours, 26 minutes, 10 secondsNow still we have to write actually not small still we have to write another like let's say some few things still
2:26:182 hours, 26 minutes, 18 secondsleft yeah we still have to write probably some like more 50 lines of code no worries we're like 80% done uh now
2:26:272 hours, 26 minutes, 27 secondsafter this let's come outside from here and we can say con today which is like we're making a new date to
2:26:352 hours, 26 minutes, 35 secondsan IOC string and we're splitting the t from the IOC string and we're just adding the first uh index from the today
2:26:422 hours, 26 minutes, 42 secondsdate. Now we have to use our drizzle again for daily analytics because we need to add uh the daily analytics. It's
2:26:512 hours, 26 minutes, 51 secondsa little bit complicated but let's do it existing daily.
2:26:592 hours, 26 minutes, 59 secondsSo await this TV dot select
2:27:072 hours, 27 minutes, 7 secondsuh we can say from our video daily analytics. Yeah.
2:27:162 hours, 27 minutes, 16 secondswhere our video daily analytics user sorry video
2:27:232 hours, 27 minutes, 23 secondsID is matching with our video ID and limit is one uh we we cannot close it like that.
2:27:332 hours, 27 minutes, 33 secondsYeah. Then if existing daily dotlength is
2:27:422 hours, 27 minutes, 42 secondsmore than zero then we need our views data something
2:27:492 hours, 27 minutes, 49 secondslike this we'll get our views data and our dates index
2:27:552 hours, 27 minutes, 55 secondssorry yeah so this is the views data we can get it from the existing daily to the last uh 28 days views and this is
2:28:022 hours, 28 minutes, 2 secondsthe date index now If date index is not equals to minus1
2:28:092 hours, 28 minutes, 9 secondsthen views data and date index dot views just add the total views with the like that date because we're basically adding
2:28:182 hours, 28 minutes, 18 secondsviews here based on a date like let's say today is 4 June so there there let's say 10 views so we are adding uh 10
2:28:262 hours, 28 minutes, 26 secondsviews for that date if there is like another views let's say for tomorrow then we we will add in five June that's
2:28:342 hours, 28 minutes, 34 secondshow it's working. Uh we need to keep it only the last 28 days. It's very very important. We cannot keep it forever. So
2:28:412 hours, 28 minutes, 41 secondsyou can say updated views data our views data dot slice
2:28:512 hours, 28 minutes, 51 secondsthe minus 28. Yeah. Now await this dot uh db.update Update
2:29:012 hours, 29 minutes, 1 secondour video analytics. Video daily analytics and dot set
2:29:082 hours, 29 minutes, 8 secondsour views last 28 days
2:29:152 hours, 29 minutes, 15 secondsupdated views data and updated at it's going to be new date. Yeah.
2:29:272 hours, 29 minutes, 27 secondswhere our video analytics uh video daily analytics and video ID is matching with
2:29:342 hours, 29 minutes, 34 secondsthe video ID we're updating it otherwise else
2:29:422 hours, 29 minutes, 42 secondswe can say await this db dot insert
2:29:492 hours, 29 minutes, 49 secondsinsert the video uh daily analytics um yeah inside our Video daily analytics we have to add the values.
2:30:012 hours, 30 minutes, 1 secondVideo ID is going to be video ID views
2:30:112 hours, 30 minutes, 11 secondsplus 28 days is basically going to be like an array
2:30:202 hours, 30 minutes, 20 secondsbecause we're adding the date which is going to be today and views is data to uh total views
2:30:272 hours, 30 minutes, 27 secondsupdated add which is the new it and yeah that's it. Now we have to write another for loop for our geo counts like for the country base tracking right now.
2:30:402 hours, 30 minutes, 40 secondsYeah it's getting a little bit complicated but this is the last thing I guess uh I think so yeah this is the last one.
2:30:482 hours, 30 minutes, 48 secondsSo now we can say for con user id
2:30:562 hours, 30 minutes, 56 secondsand go count of go by user
2:31:062 hours, 31 minutes, 6 secondsuncon existing aisb dot select
2:31:152 hours, 31 minutes, 15 secondsgo analytic analytics.j and from
2:31:252 hours, 31 minutes, 25 secondsour geo analytics where
2:31:322 hours, 31 minutes, 32 secondsthe geo analytics dot user ID it's matching with the logged in user ID. Yeah. And we can limit it with on.
2:31:442 hours, 31 minutes, 44 secondsAnd let's remove this.
2:31:472 hours, 31 minutes, 47 secondsNow we have to merge it. So we can say merged. And let's add here a map for this uh with string and number
2:31:582 hours, 31 minutes, 58 secondscon existing gio.
2:32:042 hours, 32 minutes, 4 secondsWe can say existing geo
2:32:112 hours, 32 minutes, 11 secondsas country which is going to be string views
2:32:182 hours, 32 minutes, 18 secondswhich is going to be number and array or otherwise empty array.
2:32:262 hours, 32 minutes, 26 secondsYeah. Now for con row of existing go
2:32:342 hours, 32 minutes, 34 secondswe can say if no row dot country then continue
2:32:432 hours, 32 minutes, 43 secondsotherwise merged dot state row dot country
2:32:512 hours, 32 minutes, 51 secondsand merged dot gate row dot country are zero class
2:32:592 hours, 32 minutes, 59 secondsour row dot views. Yeah. And otherwise like by default zero we can say as a
2:33:062 hours, 33 minutes, 6 secondsfall by uh yeah we need to write another for loop for our country views
2:33:152 hours, 33 minutes, 15 secondsfrom the geo count uh go counts. Yeah something like this. Then we need to
2:33:212 hours, 33 minutes, 21 secondsmerge the geo address or like the geo like the country and views together something like this.
2:33:322 hours, 33 minutes, 32 secondsUh yeah I'm getting exhausted. Okay fine. Now after this we need to write another logic. This is
2:33:402 hours, 33 minutes, 40 secondsthe last logic I hope so. Yeah. Yeah it should be the last uh one.
2:33:462 hours, 33 minutes, 46 secondsWe can say existing dot length if it's more than zero then we
2:33:552 hours, 33 minutes, 55 secondshave to update our database the geo analytics table with this new
2:34:022 hours, 34 minutes, 2 secondsmerged Jio uh with the updated like the new date and where the geo analytics user is matching with the logged in user
2:34:102 hours, 34 minutes, 10 secondsID else we can add this we can like uh create on
2:34:182 hours, 34 minutes, 18 secondsnew geo analytics for the new that user ID if it's not available it's completely empty then if we catch any error then we
2:34:282 hours, 34 minutes, 28 secondscan just do unlock that database flushed failed and we're going to like restart restoring the counters yeah we'll again
2:34:362 hours, 34 minutes, 36 secondsstore it inside our message broker memory that's it this was the file I know it is not small a lot of things we
2:34:452 hours, 34 minutes, 45 secondsdid here that's why it looks a bit bigger Uh because you can notice that we have like new four tables here. It's not
2:34:532 hours, 34 minutes, 53 secondsonly about the player like internal analytics. It's also about like the country based analytics,
2:35:002 hours, 35 minutesodd time tracking and so many things at the same time we're doing here. But this is the biggest uh largest file. Now our back end is ready. So we can come back to our analytics service and controller.
2:35:122 hours, 35 minutes, 12 secondsIt's not going to be much bigger like the this one but still yeah it's going to be a little bit bigger but not
2:35:192 hours, 35 minutes, 19 secondsdefinitely like the consumer on and this is going to be easier definitely. So yeah let's start to work inside the service first.
2:35:282 hours, 35 minutes, 28 secondsSo we can add here injectable decorator from this common and export
2:35:382 hours, 35 minutes, 38 secondsclass analytics service.
2:35:462 hours, 35 minutes, 46 secondsWe can add here our JSON codec from let's add here on constructor something like this.
2:35:582 hours, 35 minutes, 58 secondsAs always, we're by doing the same thing and resolv uh let's inject. This is for our
2:36:062 hours, 36 minutes, 6 secondsdatabase access. Yeah. Now let's create a first module. Let's uh handle event.
2:36:132 hours, 36 minutes, 13 secondsIt's going to receive our analytics event DTO. It's also going to receive
2:36:192 hours, 36 minutes, 19 secondsthe IP which is string and the user agent which is string as well.
2:36:292 hours, 36 minutes, 29 secondsNow we can select payload and give it type to any. Now let's add
2:36:352 hours, 36 minutes, 35 secondsand try get statement. This is basically the like our public facing endpoint.
2:36:412 hours, 36 minutes, 41 secondsIt's will do it will do nothing. It will just this API will just forward the request to our uh like for ourself for
2:36:482 hours, 36 minutes, 48 secondsour this project. This is working like the consumer for the message broker.
2:36:522 hours, 36 minutes, 52 secondsIt's just going to like uh sorry not consumer producer. It's just going to produce the message to our our message
2:37:002 hours, 37 minutesbroker. So that's why we're saying this JW service. At first we have to verify the token that is this valid or not the
2:37:082 hours, 37 minutes, 8 secondsrequest. So we can easily validate that with this secret this dotconfig dot
2:37:162 hours, 37 minutes, 16 secondsgator true with the analytics JWT secret.
2:37:252 hours, 37 minutes, 25 secondsIf it's catch any error then we can throw the message that invalid access token like the analytics tokens are not valid.
2:37:362 hours, 37 minutes, 36 secondsYeah. If the payload purpose is not playback analytics then it's actually wrong.
2:37:442 hours, 37 minutes, 44 secondsThen we have to check the IP. So we can say hashed IP. We can make an hash.
2:37:502 hours, 37 minutes, 50 secondsSo crypto we have to import crypto from
2:37:582 hours, 37 minutes, 58 secondscrypto. Yeah. After hashed IP, let's make our event data.
2:38:072 hours, 38 minutes, 7 secondsLet's spread the detail. The video ID, which is going to be payload video
2:38:142 hours, 38 minutes, 14 secondsID, something like this. session ID
2:38:212 hours, 38 minutes, 21 secondsthe payload dot session ID the video tracking
2:38:292 hours, 38 minutes, 29 secondsID which is going to be payload dot video tracking ID
2:38:352 hours, 38 minutes, 35 secondsyeah IP which is going to be the hashed IP go which is going to be TTO
2:38:452 hours, 38 minutes, 45 secondsuh or Let's add an default value since it's optional. So or we can say global.
2:38:532 hours, 38 minutes, 53 secondsThe user agent this is also optional. So user agents are unknown.
2:39:012 hours, 39 minutes, 1 secondIs unique uh very very important. So DTO is unique or by default false.
2:39:082 hours, 39 minutes, 8 secondstimestamps like the new date to an ISOS string since our like we should uh store
2:39:152 hours, 39 minutes, 15 secondsit as an ISO string and our like table accept ex expect it to be an IOS string.
2:39:222 hours, 39 minutes, 22 secondsYeah. Now so many thing we have done it's basically the event data which we need to pass to our message broker. Now this
2:39:302 hours, 39 minutes, 30 secondsis our getstream client the jetstream client in here and we're going to publish the message right now. So it's
2:39:382 hours, 39 minutes, 38 secondsvery simple like this. We're publishing the message to our analytics playback with this payload and video ID and we're passing encoding the event data. Yeah.
2:39:482 hours, 39 minutes, 48 secondsAnd then we are going to return success true. That's it. It's actually ready.
2:39:552 hours, 39 minutes, 55 secondsNow uh we need some other services other modules which we'll do later because this is enough for actually
2:40:042 hours, 40 minutes, 4 secondscalculating or collecting the analytics data. Okay, for now for now it's good enough. Now let's come back in controller
2:40:132 hours, 40 minutes, 13 secondsand in controller let's add our controller decoderator
2:40:202 hours, 40 minutes, 20 secondsfrom this JS common and name where we can write it analytics. Now let's
2:40:282 hours, 40 minutes, 28 secondscreate our analytics controller class for the constructor. Let's add our analytics service.
2:40:352 hours, 40 minutes, 35 secondsThen the simple one our events we have to send a post request.
2:40:472 hours, 40 minutes, 47 secondsThis is going to end post endpoint.
2:40:492 hours, 40 minutes, 49 secondsWe're going to using here our cler guard so that like any unauthorized like request they cannot pass this gu
2:40:582 hours, 40 minutes, 58 secondslayer. You must have to be our user to send request to here. Even though no like individual users are definitely not
2:41:052 hours, 41 minutes, 5 secondsgoing to send request to here event our video player SDK the Vidmox video player SDK itself is going to request in this
2:41:132 hours, 41 minutes, 13 secondsAPI but still for the security reason we're verifying it with the Ocar uh yeah controller is ready
2:41:222 hours, 41 minutes, 22 secondsnow inside our module let's add all of this so here in the controller let's add
2:41:302 hours, 41 minutes, 30 secondsour analytics controller in service we can say analytics service
2:41:392 hours, 41 minutes, 39 secondsnet service and our analytics uh actually worker controller so I say
2:41:472 hours, 41 minutes, 47 secondsanalytics worker service not controller sorry I'm
2:41:552 hours, 41 minutes, 55 secondsexports our analytics service yeah that's it.
2:42:042 hours, 42 minutes, 4 secondsWe can come back here. No error. I think we have to add the analytics module inside our
2:42:102 hours, 42 minutes, 10 secondsapp module. Yeah. So, let's add our analytics module. We can save it. Yeah.
2:42:182 hours, 42 minutes, 18 secondsHere you go. Everything is working. No issue at all.
2:42:222 hours, 42 minutes, 22 secondsYep. Everything seems fine to me. Now we have to go back to our
2:42:302 hours, 42 minutes, 30 secondsfront end SDK player again because right now the next work is inside there. Yeah.
2:42:362 hours, 42 minutes, 36 secondsSo let's start to do it. Let's come back here and let's start to work in here.
Chapter 6: Integrating Analytics into the Vidmox Player SDK
2:42:422 hours, 42 minutes, 42 secondsAll right. Inside here inside our Vmox player react index.tsx inside this use effect. Let's start to do our work right
2:42:502 hours, 42 minutes, 50 secondsnow. So let's come back here and we can say unique eligible. Let's make it false at first.
2:42:582 hours, 42 minutes, 58 secondsThen unique uh locked dot current let's make it false as well. If there is no
2:43:042 hours, 43 minutes, 4 secondsvideo tracking ID then we have to return the function and otherwise let's add an catch statement.
2:43:132 hours, 43 minutes, 13 secondsSo try catch inside try we can say uh we can add our lock key
2:43:222 hours, 43 minutes, 22 secondslike we can do on lock if there is something wrong uh sorry no aait let's add here on key name so we can say view
2:43:312 hours, 43 minutes, 31 secondslock prefix and the video tracking ID this is going to be the lock key and we
2:43:382 hours, 43 minutes, 38 secondsneed our list view raw which we will get from our like local storage. So local
2:43:452 hours, 43 minutes, 45 secondsstorage.gate item with the lock key. If the list view row is not available then unique eligible currents is true. So
2:43:542 hours, 43 minutes, 54 secondsbasically our unique view is depends on the local storage of the like viewers.
2:43:592 hours, 43 minutes, 59 secondsYeah. Now after this we can add our last uh view like the list view raw we can
2:44:062 hours, 44 minutes, 6 secondsmake it a number. Now if the list view uh is not infinity then local storage remove item the lock key and ungligelible current makes it true.
2:44:172 hours, 44 minutes, 17 secondsYeah. Now we need the age in millisecond.
2:44:232 hours, 44 minutes, 23 secondsSo we can say date now minus the list view and if the age milliseconds is uh
2:44:302 hours, 44 minutes, 30 secondsmore equals to then the unique view TTL milliseconds then local storage remove
2:44:372 hours, 44 minutes, 37 secondsitem basically it's a TTL if it's more than that then local storage remove item the lock key and make the unique
2:44:442 hours, 44 minutes, 44 secondseligible current is true. Yeah. Now if it's catch anything we can make our
2:44:512 hours, 44 minutes, 51 secondsunique eligible current false in the dependency area we can add the video tracking ID. Yeah. Now after this we
2:44:592 hours, 44 minutes, 59 secondshave to add another use for our list heartbeat time. Now we need to make an
2:45:072 hours, 45 minutes, 7 secondshelper function called send analytics uh event. This is basically for sending
2:45:162 hours, 45 minutes, 16 secondsthe event. The event type is going to be something like this. It can be play
2:45:232 hours, 45 minutes, 23 secondsor pause actually or means pipe since this is a type uh then hard bit.
2:45:352 hours, 45 minutes, 35 secondsHard bit or sick or end date. Yeah, these are the event
2:45:432 hours, 45 minutes, 43 secondstype. Now current time which is going to be number.
2:45:512 hours, 45 minutes, 51 secondsNow let's call the function. This is an callback function. If there is no analytics token in the video data then return the function. Otherwise,
2:46:002 hours, 46 minuteswe have to again add an catch statement in here. And this time, we're going to send request to our API again because we
2:46:082 hours, 46 minutes, 8 secondshave to send the event to our API. So, we're going to use again our / API/
2:46:172 hours, 46 minutes, 17 secondsBitmox SL player our basically the proxy layer for forwarding the request to our back end. And we're going to pass the event.
2:46:262 hours, 46 minutes, 26 secondsThe kind is event right now. and method it's going to be post
2:46:332 hours, 46 minutes, 33 secondsand headers it's going to be the content type is
2:46:412 hours, 46 minutes, 41 secondsgoing to be application JSON and it's just going to accept the application JSON then we have to pass the body
2:46:492 hours, 46 minutes, 49 secondsfor the API request and we can pass here JSON stringify the event current time
2:46:562 hours, 46 minutes, 56 secondsthe token of the take a request the go the is unique if it's unique or not and that's it that's where what we can send
2:47:032 hours, 47 minutes, 3 secondsto our API now after this if the unique eligible dot current
2:47:112 hours, 47 minutes, 11 secondsand our unique locked dot current is not true and the current time is
2:47:202 hours, 47 minutes, 20 secondsless equals to three yeah then unique uh locked dot current equals to true.
2:47:312 hours, 47 minutes, 31 secondsHere we can add another track catch statement.
2:47:352 hours, 47 minutes, 35 secondsWe can uh set our new lock key and if it's catch any error then we can
2:47:442 hours, 47 minutes, 44 secondskeep it empty for now. Inside here if it's catch any error we can console log the error that failed to send analytics
2:47:502 hours, 47 minutes, 50 secondsevent with the error message. Now here we can add our use effect hook. We can
2:47:572 hours, 47 minutes, 57 secondscreate another use effect hook
2:48:032 hours, 48 minutes, 3 secondsand we can create another async function as sync function
2:48:102 hours, 48 minutes, 10 secondswe can say init country. So this is basically for like getting back the user current location the current country and
2:48:192 hours, 48 minutes, 19 secondswe're going to use here on utility function on helper function for getting the user country. So get user country
2:48:272 hours, 48 minutes, 27 secondsthis is going to be a different function and we will pass the country value inside here. Yeah. So how to get the
2:48:352 hours, 48 minutes, 35 secondscountry and before that let me call the init country from here. Let's copy this name. Let's come back to our utils and
2:48:432 hours, 48 minutes, 43 secondslet's create a new file by giving name get user country or let's do one thing
2:48:492 hours, 48 minutes, 49 secondswe can also come back inside here and we could actually create it in here as well.
2:49:002 hours, 49 minutesUh I think we we should do it here.
2:49:032 hours, 49 minutes, 3 secondsThat's the best option. Yeah. So let's add here a late variable for our country, the cache country because we're going to use a caching mechanism for
2:49:102 hours, 49 minutes, 10 secondssure to save API request because end of the day we actually need to send an API request to
2:49:182 hours, 49 minutes, 18 secondsget exact country and this is the code what we need to write. Let me show you one by one. This is basically a helper
2:49:242 hours, 49 minutes, 24 secondsfunction. So cached country string or null by default it's going to be null. This is a storage key VMX user country.
2:49:332 hours, 49 minutes, 33 secondsThe TTLMS is 7 days, we're storing it for 7 days. This is the main function.
2:49:392 hours, 49 minutes, 39 secondsIf uh there is cached country, we're returning it. If there is no not cache country, then we are checking the type of window. If it's not undefined, then we are like checking the storage key.
2:49:502 hours, 49 minutes, 50 secondsAnd we are basically sending request to IP API for getting the user IP with the IP. Yeah. And that's it. And then after
2:49:592 hours, 49 minutes, 59 secondsthat we're storing it uh into local storage and then we're returning the cache country from here. Now we can
2:50:052 hours, 50 minutes, 5 secondsimport it in here. We can save it and after this fetch videos it's fine.
2:50:122 hours, 50 minutes, 12 secondsWe don't need to do anything in here.
2:50:162 hours, 50 minutes, 16 secondsuh here also and I think all good except here in the media player
2:50:242 hours, 50 minutes, 24 secondsbecause we have to add here right now a lot of things. First of all, for the one play,
2:50:322 hours, 50 minutes, 32 secondswe right now have our current time, which is going to be player dot current dot current time
2:50:422 hours, 50 minutes, 42 secondsor zero and set uh send analytics event. This is basically on play event. So play and we
2:50:502 hours, 50 minutes, 50 secondscan pass the current time and list heartbeat time dot current. we can pass
2:50:562 hours, 50 minutes, 56 secondsthe current time. Uh now we need on pause event. So when there is on pause
2:51:032 hours, 51 minutes, 3 secondsthe video player, it's going to basically send a request to I mean it's going to forward the pause event to this
2:51:122 hours, 51 minutes, 12 secondsanalytics event. After this uh one end date and on sim we are basically sending
2:51:202 hours, 51 minutes, 20 secondsthe like the we're forwarding the event to our function.
2:51:262 hours, 51 minutes, 26 secondsUh one time update this is very very important.
2:51:312 hours, 51 minutes, 31 secondsSo one time update it's also going to receive event. We can
2:51:382 hours, 51 minutes, 38 secondssay current time which is going to be event dot current time
2:51:462 hours, 51 minutes, 46 secondsand if the current time is let's minus the last uh hardware time
2:51:522 hours, 51 minutes, 52 secondsdot current if it's less equals to 15
2:52:002 hours, 52 minutesthen we can again call send analytics event and this is for the heartbeat and we can pass the current time
2:52:082 hours, 52 minutes, 8 secondsand let's start with time dot current and we can pass the current time again in here we can save it
2:52:162 hours, 52 minutes, 16 secondsuh on provider change I think everything is fine in here it should be fine yeah
2:52:242 hours, 52 minutes, 24 secondsthat's it actually ready I think everything is okay it should work
2:52:332 hours, 52 minutes, 33 secondsyeah now what we have to do everything is definitely not fully done yet. We have to come back to our services and handle process
2:52:422 hours, 52 minutes, 42 secondsrequest because we have to right now send or like process the request for our event because previously we did for
2:52:502 hours, 52 minutes, 50 secondsgetting the playlist. So you can see if the client is event then it's empty. So we have to write code inside this now.
2:52:582 hours, 52 minutes, 58 secondsSo if the client is event first we're going to get the payload. So await request and analytics event payload. We
2:53:072 hours, 53 minutes, 7 secondshave to make this type in here. So let's do it. We can say type or interface anything
2:53:152 hours, 53 minutes, 15 secondsuh event which is going to be same as always and current time token Jio and last one is is unique. Yeah that's it.
2:53:282 hours, 53 minutes, 28 secondsNow here we're getting the payload. After payload, we can say if the payload
2:53:362 hours, 53 minutes, 36 secondstoken is not available or the payload
2:53:462 hours, 53 minutes, 46 secondsevent is not available or
2:53:532 hours, 53 minutes, 53 secondsthe type of payload current time is not number.
2:54:022 hours, 54 minutes, 2 secondsThen we can return response dot JSON.
2:54:102 hours, 54 minutes, 10 secondsWe can say error the error message uh error
2:54:172 hours, 54 minutes, 17 secondstoken event and current time are required.
2:54:272 hours, 54 minutes, 27 secondsAnd we can add the status code which is going to be 400. Yeah.
2:54:332 hours, 54 minutes, 33 secondsThen we need our user agent and x forwarded for like the user agents which we're going to get from the
2:54:412 hours, 54 minutes, 41 secondsheaders the request headers. Now we have to forward this request to our main API
2:54:472 hours, 54 minutes, 47 secondswhich is something like this that base URL analytics and event we're
2:54:552 hours, 54 minutes, 55 secondspassing it to our analytics endpoint now with all of these payloads and the art headers and the user agent and exported
2:55:022 hours, 55 minutes, 2 secondsfor uh then we will get the response from our API and we can just await that and we can send the response like we can return the response back.
2:55:142 hours, 55 minutes, 14 secondsThat's it. And that is that's it. We have to do nothing more. It's ready. We
2:55:222 hours, 55 minutes, 22 secondscan right now come back here. There's something wrong. It's saying fail to get a consumer or jam consumer. If this is a
2:55:292 hours, 55 minutes, 29 secondspublish consumer not support, please delete or delete the existing consumer or use a different durable name. Uh all
2:55:382 hours, 55 minutes, 38 secondsright. It's saying the consumer not found. No worries. Let's restart and we will see it.
2:55:462 hours, 55 minutes, 46 secondsI know why it's happening because it's actually like uh conflicting with another one which is already available here. So let's let's come back here first. Open a new terminal.
2:55:592 hours, 55 minutes, 59 secondsGo to our SDK and Vidmox player and npm run build.
2:56:092 hours, 56 minutes, 9 secondsYeah. And here we can say npm run start date.
2:56:182 hours, 56 minutes, 18 secondsYeah. Now let's come back here and go to test.
2:56:292 hours, 56 minutes, 29 secondsSo it should work. Uh 1 minute.
2:56:372 hours, 56 minutes, 37 secondsI think there is something wrong. Just a minute. First of all, in our server side, let's delete the console log. We
2:56:462 hours, 56 minutes, 46 secondsdon't need that at all. So, modules a player service and this console log.
2:56:532 hours, 56 minutes, 53 secondsLet's delete it. And the error, let me see the error again. Okay, it will appear very soon. No worries. Yeah. So,
2:57:012 hours, 57 minutes, 1 secondconsumer not found. All right. I found the reason behind the error. It was actually a mistake. what we have done
2:57:082 hours, 57 minutes, 8 secondsit's basically like mistake of uh writing we can say it's like a syntax mistake first of all let's come back in
2:57:162 hours, 57 minutes, 16 secondsthis analytics consumerts in this consumer folder inside this analytics folder in our analytics modules here you
2:57:242 hours, 57 minutes, 24 secondscan say vidmox playback events fine but vidmox analytics this analytics spelling is wrong analytics should be something
2:57:322 hours, 57 minutes, 32 secondslike this analytics not analytics so analytics it's going to be something like this. Be make sure that you are
2:57:402 hours, 57 minutes, 40 secondsadding here some spelling like this analytics and second mistake is substream. Yeah.
2:57:492 hours, 57 minutes, 49 secondsSo user agent dot substring s is cannot be capital. So after saving it you can see no error anymore and you will notice
2:57:582 hours, 57 minutes, 58 secondson green message that yeah worker listening for playback events using modern pool consumer API. It means it's
2:58:042 hours, 58 minutes, 4 secondsactually working right now. If right now come back to here and go to test,
2:58:102 hours, 58 minutes, 10 secondsyou'll see that it's right now actually updating our database.
2:58:222 hours, 58 minutes, 22 secondsHow to see? No worries. If you come back to our database, actually it's already in here. So just a minute. Let me mute
2:58:302 hours, 58 minutes, 30 secondsthis first. And from here if you if you come back here in video analytics you will notice that
2:58:392 hours, 58 minutes, 39 secondsthe total views is definitely going to be changed.
2:58:422 hours, 58 minutes, 42 secondsHowever there is already some data in here.
2:58:462 hours, 58 minutes, 46 secondsIf I pause it and come back here still it's showing 16. Okay but it
2:58:542 hours, 58 minutes, 54 secondsshould be changed. Yeah 17. You can see it's 17 and it's actually dynamic. It's working right now. Now you might be
2:59:032 hours, 59 minutes, 3 secondsthinking we're just playing it for one time. Then how it became 17? Yeah, we're playing it for one time but in the same database I'm also testing it for a long
2:59:122 hours, 59 minutes, 12 secondstime. So that's why those values are still in the database. That's why it's showing 17. But for you it will show one and like the average view duration and
2:59:202 hours, 59 minutes, 20 secondseverything will be inside there. For me you can see it's like the database has actually multiple value. the video meta
2:59:272 hours, 59 minutes, 27 secondsdata, the daily analytics, the video analytics, platform analytics, so many things inside here. So a lot of things,
2:59:362 hours, 59 minutes, 36 secondspainting uploads, payment invoices and geo analytics and everything. Geo analytics is this one like the views is 17 from this one country which is
2:59:452 hours, 59 minutes, 45 secondsMalaysia because at this moment I'm in Malaysia that's why it's showing my fine. Let's make these things dynamic
2:59:532 hours, 59 minutes, 53 secondsthen we can easily check it out. I mean we can find it out that yeah is everything is breaking or not. Yeah. So to make our analytics dynamic we have to
3:00:023 hours, 2 secondsmake some APIs for it. It's already dynamic. We just have to fetch those data. So we can actually
3:00:093 hours, 9 secondsclose our player service. No no player service. Uh actually player service we don't need. We need our analytics
3:00:163 hours, 16 secondsservice. So let's come back to our analytics service and we don't need that player analytics module app module or anything.
3:00:243 hours, 24 secondsSo here after the handle event let's collapse it. Let's come back outside
3:00:303 hours, 30 secondsfrom here and in inside this inside our analytics service after
Chapter 7: Making Analytics Work Across the Entire Frontend
3:00:413 hours, 41 secondsthis we can add some actually helper function like these two. First one is
3:00:483 hours, 48 secondsfor our parts the range days like if the range is 70 it means 7 if it's 14 means
3:00:563 hours, 56 seconds14 days and by default we're returning it three is uh o day ago so iso day ago it meanings we are basically making it
3:01:043 hours, 1 minute, 4 secondsan ISO hours after this uh here we need to make our first
3:01:103 hours, 1 minute, 10 secondsmodule which is get analytics so get analytics X
3:01:183 hours, 1 minute, 18 secondswe're going to pass here user id which is going to be string
3:01:253 hours, 1 minute, 25 secondsand con ujs row await this dot db dot select
3:01:343 hours, 1 minute, 34 secondswe can select the minute stream minute limit storage uses and storage uses limit so let's import uses from our
3:01:423 hours, 1 minute, 42 secondsschema our database / schema so So this is our EOJ row and uh let's say from
3:01:523 hours, 1 minute, 52 secondsEUJS and where the
3:01:583 hours, 1 minute, 58 secondsUJS user ID is matching with our logged in user ID. Yeah. And we can limit it
3:02:053 hours, 2 minutes, 5 secondswith one. After this, we can take back our minutes streamed in seconds and minute streams limits in minutes because
3:02:143 hours, 2 minutes, 14 secondswe are storing the streamed limit minutes in minutes and the like streaming minutes in seconds. Yeah. Now,
3:02:233 hours, 2 minutes, 23 secondsuh we need actually write we need to write here on complicated query. This is for our
3:02:343 hours, 2 minutes, 34 secondslike video analytics. So since video analytics has actually multiple things which you need like the video analytics
3:02:423 hours, 2 minutes, 42 secondsuh video id and we need the total request like how many request our like
3:02:493 hours, 2 minutes, 49 secondsour user are sending request how many times so it's basically the total views
3:02:563 hours, 2 minutes, 56 secondsand which is inside our video analytics and that's what we're doing in here we're basically like doing on sum you can see we're using here sum operator
3:03:043 hours, 3 minutes, 4 secondsand We're doing some with the analytics total views like all the total views then it will be our like total request.
3:03:143 hours, 3 minutes, 14 secondsTotal request meanings this one. Let me again show you this total request.
3:03:203 hours, 3 minutes, 20 secondsNow daily rows this is like the daily views. So select
3:03:293 hours, 3 minutes, 29 secondsuh we can say views last 28 days
3:03:363 hours, 3 minutes, 36 secondsand video analytics sorry video daily analytics
3:03:443 hours, 3 minutes, 44 secondsdot view last 28 days uh db we have to import no no worries
3:03:523 hours, 3 minutes, 52 secondslast 28 days Then from our video metadata
3:04:003 hours, 4 minutesand lift join the video daily analytics
3:04:143 hours, 4 minutes, 14 secondsuh equals to our video metadata dot id sorry dot user
3:04:223 hours, 4 minutes, 22 secondsid and the user ID something is wrong. Let me see
3:04:333 hours, 4 minutes, 33 secondsvideo metadata user ID and not user ID actually. Sorry, it's video meta data do
3:04:393 hours, 4 minutes, 39 secondsID not user ID and video daily analytics dov video ID.
3:04:483 hours, 4 minutes, 48 secondsYeah, looks a bit weird though.
3:04:533 hours, 4 minutes, 53 secondsUh actually I forgot to add the const in here.
3:04:583 hours, 4 minutes, 58 secondsConst daily rows. Wait am I outside? I think that's why the errors are coming.
3:05:053 hours, 5 minutes, 5 secondsSo yeah, now it makes sense.
3:05:093 hours, 5 minutes, 9 secondsUh here after lift join where the
3:05:163 hours, 5 minutes, 16 secondsvideo meta data dot user ID is matching with our user ID. We need to fetch that daily rows. Now we're going to have our
3:05:253 hours, 5 minutes, 25 secondsdaily totals. We need that actually daily totals and we can run on for loop in here for this.
3:05:343 hours, 5 minutes, 34 secondssomething like this for daily rows days and for the days since the days is
3:05:413 hours, 5 minutes, 41 secondsalso an array we're running this we're basically taking the daily totals with the date in here and with that views now
3:05:503 hours, 5 minutes, 50 secondswe need last seven and previous seven days in here these are basically the analytics charts nothing else and we
3:05:583 hours, 5 minutes, 58 secondsneed to write here an for loop for it now we need average views per day like that. This one average views per day.
3:06:083 hours, 6 minutes, 8 secondsYou can see this plus minus the growth.
3:06:103 hours, 6 minutes, 10 secondsSo that's why we're dividing it with seven.
3:06:143 hours, 6 minutes, 14 secondsAnd the growth impact this one. This is like the mathematical operations which we need to do for those
3:06:233 hours, 6 minutes, 23 secondsthings. This is our geo analytics like from which countries our like videos that our videos are
3:06:323 hours, 6 minutes, 32 secondsplaying most. Uh this is our top videos for our like the logged in user which
3:06:423 hours, 6 minutes, 42 secondsvideos are most playing. So those like list and we're using here descending
3:06:483 hours, 6 minutes, 48 secondslike uh video analytics total views. It depends on the total views number and we're adding here only five. The limit
3:06:563 hours, 6 minutes, 56 secondsis five. We're just returning five most views videos. Yeah. Now
3:07:053 hours, 7 minutes, 5 secondsafter this we need to send the minutes used like how much the users used and
3:07:113 hours, 7 minutes, 11 secondshow much the limit and min uh PCT like percentage how how many percent still
3:07:183 hours, 7 minutes, 18 secondsavailable to stream storage use same storage use storage limit and storage percentage that how much percentage
3:07:263 hours, 7 minutes, 26 secondsstill available to use and overall uses impact. So it's kind of like that overall uses percentage. The overall
3:07:353 hours, 7 minutes, 35 secondspercentage in here. This is like the math we are using for returning it. Now we have to return all of these together.
3:07:443 hours, 7 minutes, 44 secondsIt's going to be a little bit bigger.
3:07:473 hours, 7 minutes, 47 secondsSomething like this. You can see return minute stream. We're sending the uses uh used seconds used minutes limits for the
3:07:553 hours, 7 minutes, 55 secondssame for the storage used. And this is the overall uses percentage, total request, request stats, visitor
3:08:023 hours, 8 minutes, 2 secondscountries, and top videos. We're returning all of these. Yeah,
3:08:093 hours, 8 minutes, 9 secondsthat's it. This is our gate analytics uh module. It is not definitely small, but yeah, it's ready. Now, we need another
3:08:183 hours, 8 minutes, 18 secondsone which is also quite big. And this is for our main analytics for our analytics
3:08:263 hours, 8 minutes, 26 secondspage. Especially this one, this one. Uh, however, we're not adding
3:08:343 hours, 8 minutes, 34 secondsthis charts. We will delete it. But we have all of these. So, we have to like return those data from here. Now, range
3:08:423 hours, 8 minutes, 42 secondsdays something like this. Then we need to fetch all the videos
3:08:503 hours, 8 minutes, 50 secondswith our like the most replace sorry most views not replace
3:08:583 hours, 8 minutes, 58 secondsyou can see in here we're basically showing all the videos with their views
3:09:053 hours, 9 minutes, 5 secondssomething like this then we can add the variables like this the
3:09:133 hours, 9 minutes, 13 secondstotal views the unique viewers, watch time, seconds and daily totals.
3:09:183 hours, 9 minutes, 18 secondsAnd we can write on for loop for the videos, the total views, the
3:09:263 hours, 9 minutes, 26 secondsunique viewers, the watch time seconds and the days. We can save it. Then the average seconds like average view
3:09:343 hours, 9 minutes, 34 secondsduration for the videos something like this. the last range and previous range
3:09:403 hours, 9 minutes, 40 secondsand all of these for range test. So it's basically kind
3:09:473 hours, 9 minutes, 47 secondsof the same but the analytics are on broad uh time like for a long time on dashboard on main dashboard it was not
3:09:563 hours, 9 minutes, 56 secondslike long time but here it's for a bit long time. So total views change percentage
3:10:033 hours, 10 minutes, 3 secondsviews over time the date set
3:10:143 hours, 10 minutes, 14 secondsfor like those top videos. Now we need basically our top videos. We need to sort it and slice the first five videos in here. The top videos.
3:10:243 hours, 10 minutes, 24 secondsAfter this we can return it. Yeah. There you go.
3:10:293 hours, 10 minutes, 29 secondsI want to admit that is definitely not small. It is definitely very big. But yeah, that's it. We have to return the
3:10:383 hours, 10 minutes, 38 secondsrange days, the overview and views over time and top videos.
3:10:433 hours, 10 minutes, 43 secondsYeah, that's it. This is our main
3:10:503 hours, 10 minutes, 50 seconds[clears throat] analytics and it's ready. Now since all of these are ready, we can come back to our controller
3:11:003 hours, 11 minutesand let's add all of these. So now we need our analytics
3:11:083 hours, 11 minutes, 8 secondsuh route API route. It's going to get request definitely
3:11:133 hours, 11 minutes, 13 secondsand we're going to use our use card then
3:11:203 hours, 11 minutes, 20 secondsour gate analytics and it's going to request to receive the request and type is going to be any.
3:11:273 hours, 11 minutes, 27 secondsNow after this the main like the main dashboard analytics and
3:11:353 hours, 11 minutes, 35 secondslet's call it in here. Let's add our gate main analytics uh module and we're going to receive the
3:11:433 hours, 11 minutes, 43 secondsrange through like an query inside our API request and we're going to pass that in here to our gate main analytics
3:11:513 hours, 11 minutes, 51 secondsinside function. Not function, it's actually module. Yeah. So yeah, that's it. Um I exhausted. I'm recording for a
3:11:593 hours, 11 minutes, 59 secondslong time and it's ready. Our API is ready to use.
3:12:033 hours, 12 minutes, 3 secondsWe can come back to our apps main dashboard and we can start to make dynamic to over this main dashboard here. Here you go.
3:12:163 hours, 12 minutes, 16 secondsWe should make it dynamic now. So inside here we have to at first uh delete few things. We'll do that.
3:12:263 hours, 12 minutes, 26 secondsBut we need our token. So we can like the authentication
3:12:333 hours, 12 minutes, 33 secondstoken we can use our use o hook from cl uh from cleric nextjs. Now let's write
3:12:403 hours, 12 minutes, 40 secondsour query for the analytics or fetching the analytics.
3:12:463 hours, 12 minutes, 46 secondsSo something like this analytics and is loading. Let's add here import your use query hook from tens react query. This
3:12:543 hours, 12 minutes, 54 secondsis a query key. This is the query function like it's kind of like the same thing all the time we are doing and each
3:13:023 hours, 13 minutes, 2 secondssigned in this is coming from our use user hook and this is use user is from cl nextjs. Yeah. So basically here we're
3:13:103 hours, 13 minutes, 10 secondsfetching our analytics data and the top URLs we don't need it anymore because we're having a dynamic
3:13:193 hours, 13 minutes, 19 secondsdata now and we need to write now
3:13:253 hours, 13 minutes, 25 secondsadd something in here like the minutes used seconds from our basically the uh
3:13:323 hours, 13 minutes, 32 secondsdynamic value the analytics and minutes trims and used seconds used minutes limit minutes remaining and
3:13:403 hours, 13 minutes, 40 secondsminutes percentage. And now another one for storage. So storage used bytes,
3:13:473 hours, 13 minutes, 47 secondsstorage limits bytes and storage free bytes and the storage percentage. The top videos array is going to be this
3:13:553 hours, 13 minutes, 55 secondsone. Now the request average
3:14:013 hours, 14 minutes, 1 seconduh per day like this request growth percentage and request growth level. And
3:14:083 hours, 14 minutes, 8 secondshere if is loaded is false or not is
3:14:143 hours, 14 minutes, 14 secondssigned in or not is loading then return null. Otherwise in here all good
3:14:243 hours, 14 minutes, 24 secondshere we don't need the onboarding panel for now.
3:14:283 hours, 14 minutes, 28 secondsWe can delete this
3:14:353 hours, 14 minutes, 35 secondsand stats card monthly and here let's delete it. Let's
3:14:453 hours, 14 minutes, 45 secondscall here format duration function which is on helper function.
3:14:553 hours, 14 minutes, 55 secondsSo let's come inside lib and utils.ts.
3:15:003 hours, 15 minutesLet's add here our format duration function. It's just going to format the duration into a like appropriate format
3:15:103 hours, 15 minutes, 10 secondsso that the anyone can easily understand it like the seconds into a minutes and seconds format like with even including
3:15:173 hours, 15 minutes, 17 secondshours and this one for bytes. So this format bytes will transform the bytes to like MB and bytes together so that
3:15:263 hours, 15 minutes, 26 secondsanyone can easily understand it. So these are the helper functions. You can write it by yourself.
3:15:333 hours, 15 minutes, 33 secondsFormat duration we have to pass here the minutes used
3:15:393 hours, 15 minutes, 39 secondsseconds. We can save it. And here it's going to be minutes
3:15:483 hours, 15 minutes, 48 secondslimit then minutes limit dot to local string
3:15:563 hours, 15 minutes, 56 secondsor on underscore. Yeah.
3:16:053 hours, 16 minutes, 5 secondsThen outside let's add m because this is like the minutes.
3:16:093 hours, 16 minutes, 9 secondsUh here it's giving some error because top urls it's not available that's why. So top
3:16:163 hours, 16 minutes, 16 secondsurls instead of that it's going to be basically top videos.
3:16:243 hours, 16 minutes, 24 secondsSo top videos do map row which type is going to be any index
3:16:313 hours, 16 minutes, 31 secondsgoing to be number and key is right now key fine but here
3:16:393 hours, 16 minutes, 39 secondsuh here also fine here it's going to be row dot title
3:16:483 hours, 16 minutes, 48 secondsor let's say v Then let me do one thing. Let's cut this
3:16:573 hours, 16 minutes, 57 secondsand add in a first bracket. Then dot chart
3:17:043 hours, 17 minutes, 4 secondssorry char at the zero to
3:17:133 hours, 17 minutes, 13 secondsuh upper case and we don't need this. Yeah.
3:17:203 hours, 17 minutes, 20 secondsUh we can copy this and in here this row dotpath name we can paste it again in
3:17:283 hours, 17 minutes, 28 secondshere and we can just delete this and instead of v we can add here untitled.
3:17:383 hours, 17 minutes, 38 secondsYeah. Then here we need to add our uh row views. And yeah that's it. And
3:17:483 hours, 17 minutes, 48 secondsthere is still one error in here that top urls.length which is going to be top videos.length then we can say no videos available yet.
3:17:593 hours, 17 minutes, 59 secondsYeah that's it. If we come back here in the dashboard here you go it's showing zero second. Why? Let's give reload.
3:18:103 hours, 18 minutes, 10 secondsOkay it's giving 500 error internal server error. Very interesting. Why the server error? This dbs select is not a
3:18:183 hours, 18 minutes, 18 secondsfunction. Okay, let's see. I think we did some syntax mistake somewhere.
3:18:263 hours, 18 minutes, 26 secondsThis db select is not a function.
3:18:323 hours, 18 minutes, 32 secondsAll right. Uh I found a problem. It's very funny. On the line uh line number 107, you can see it. It should be
3:18:403 hours, 18 minutes, 40 secondsactually select now. Yeah, everything is breaking. It should work. Let's give and reload.
3:18:473 hours, 18 minutes, 47 secondsUh 204 200. Why it's still null.
3:18:553 hours, 18 minutes, 55 secondsOkay. Something wrong in page. JSX.
3:18:593 hours, 18 minutes, 59 secondsLet me see if we added anything wrong in here. So if we comment it out.
3:19:083 hours, 19 minutes, 8 secondsTwo upper case is not a function.
3:19:123 hours, 19 minutes, 12 secondsOkay. Okay. I think uh there's something wrong in here this top videos
3:19:223 hours, 19 minutes, 22 secondsfor now. If we comment it or let's say just cut this.
3:19:283 hours, 19 minutes, 28 secondsYeah, it's it's working. So the problem is definitely in here. Let me see what's wrong in here. Then the top videos
3:19:393 hours, 19 minutes, 39 secondstwo upperase. Oh, C is going to be capital, bro. All right. Uh, I'm doing a lot of syntax mistake.
3:19:473 hours, 19 minutes, 47 secondsHowever, I think it's going to be fine now. Yeah, but not the styling is definitely fine. Okay, no worries. Let
3:19:553 hours, 19 minutes, 55 secondsme see what can we do in here. Group hover. This is good. I think we have to
3:20:023 hours, 20 minutes, 2 secondsremove the height or we have to add here on height.
3:20:093 hours, 20 minutes, 9 secondsuh here table body
3:20:193 hours, 20 minutes, 19 secondsand I hate CSS for this type of things because it's really give a lot of pain we can say align top
3:20:273 hours, 20 minutes, 27 secondslet me see if it breaks or not oh yeah it's breaking this side is breaking okay so the next side okay I
3:20:343 hours, 20 minutes, 34 secondsthink absolved it still. Let me see here.
3:20:403 hours, 20 minutes, 40 secondsLet's add aligning top.
3:20:463 hours, 20 minutes, 46 secondsAnd here aligning top. Here you go. It's working. Wow. So,
3:20:563 hours, 20 minutes, 56 secondsour minute stream is right now actually dynamic. You can see it's 19 minutes 28 seconds. And what 10,000 minutes? 10,000
3:21:043 hours, 21 minutes, 4 secondsminutes because the user is right now not in free at all. I actually like I was working with this and I updated the
3:21:113 hours, 21 minutes, 11 secondsplan to pro. Now you're going to ask me there is no billing yet ready. Yeah, it's not in here but in like real vidmox
3:21:183 hours, 21 minutes, 18 secondsit's already ready since the database is same that's why it's showing actually the dynamic value which is very normal.
3:21:263 hours, 21 minutes, 26 secondsSo yeah, for you it will it will probably so it will probably show you 1,00 minutes and in here short time and it's completely dynamic.
3:21:353 hours, 21 minutes, 35 secondsYou will see it's very accurate. Not only accurate, it's very very accurate.
3:21:413 hours, 21 minutes, 41 secondsUh after this let's make everything uh dynamic one by one. Right now just this
3:21:483 hours, 21 minutes, 48 secondsour time is dynamic but let's come here again.
3:21:533 hours, 21 minutes, 53 secondsOh, even no not even the time is dynamic. A lot of things here we have to make dynamic. Uh all right. So here for
3:22:013 hours, 22 minutes, 1 secondthe UJS let's remove this and add this that many
3:22:083 hours, 22 minutes, 8 secondspercentage are too fixed and add here the percentage for the
3:22:143 hours, 22 minutes, 14 secondswidth. It's also going to be the minutes percentage percent.
3:22:233 hours, 22 minutes, 23 secondsYeah, you can see now it's actually makes sense. 0.2% only used. And for the remaining time here, it's going to be something like this. Just delete this.
3:22:363 hours, 22 minutes, 36 secondsexcept the remaining and here uh the minutes limit time remainings to local string and minutes remaining.
3:22:473 hours, 22 minutes, 47 secondsYeah, something like this 9,980 minutes remainings yet. Yep.
3:22:543 hours, 22 minutes, 54 secondsuh after this request cards. So here we can add this to something like this
3:23:023 hours, 23 minutes, 2 secondsthat analytics dot total request
3:23:093 hours, 23 minutes, 9 secondsor zero then dot two local string. We can save it
3:23:183 hours, 23 minutes, 18 secondshere the average uh like request day. So we can say request
3:23:243 hours, 23 minutes, 24 secondsaverage per day dot to local string and we can call it uh here
3:23:333 hours, 23 minutes, 33 secondsfor the growth um let's add here our the request growth level and the growth.
3:23:443 hours, 23 minutes, 44 secondsYeah. So right now it's really a lot.
3:23:473 hours, 23 minutes, 47 seconds225% extra and average is 1.9 request per day. Yeah. And it's right now actually
3:23:543 hours, 23 minutes, 54 secondsdynamic. The 17 is really dynamic storage card. So let's make it
3:24:013 hours, 24 minutes, 1 seconddynamic. So for 3.2 let's change it to format
3:24:093 hours, 24 minutes, 9 secondsbytes. So format bytes and let's pass the storage
3:24:143 hours, 24 minutes, 14 secondsused bytes and we don't need this GB in here.
3:24:233 hours, 24 minutes, 23 secondsYeah. So let's save it. Here you go. Storage used this 767 MB.
3:24:313 hours, 24 minutes, 31 secondsAnd in here let's add the percentage that how much storage used something
3:24:383 hours, 24 minutes, 38 secondslike this. And the total is going to be same storage limit bytes then format the
3:24:473 hours, 24 minutes, 47 secondsbytes otherwise like on empty. So 1.8 GB sorry 250 GB is total 0% used
3:24:573 hours, 24 minutes, 57 secondsbecause it's very little we only used that's why it's showing 0%. here.
3:25:053 hours, 25 minutes, 5 secondsLet's add the storage percentage and percent.
3:25:123 hours, 25 minutes, 12 secondsYeah, we can save it. And uh here we don't need the videos length. Actually, we can delete that.
3:25:203 hours, 25 minutes, 20 secondsAnd we can add here our format bytes and storage the free bytes.
3:25:303 hours, 25 minutes, 30 secondsYeah. So 249 GB 2.25 GB is still free.
3:25:353 hours, 25 minutes, 35 secondsYeah, it makes sense and it looks actually beautiful.
3:25:393 hours, 25 minutes, 39 secondsThat's it for the geo map. Let's make it dynamic.
3:25:433 hours, 25 minutes, 43 secondsWe have to pass the countries the analytics dot
3:25:513 hours, 25 minutes, 51 secondsvisitor countries. Yeah.
3:25:573 hours, 25 minutes, 57 secondsOr an empty array. Now countries is not available there. So that's why it's giving an error. No problem. Let's come
3:26:053 hours, 26 minutes, 5 secondsback here. Receive the countries by default going to be an empty array.
3:26:113 hours, 26 minutes, 11 secondsFor the type we can call here our geographic map props.
3:26:213 hours, 26 minutes, 21 secondsSo it's going to be something like this.
3:26:253 hours, 26 minutes, 25 secondsuh with country views another type the country and views. Yeah, now we don't need this country data anymore the
3:26:333 hours, 26 minutes, 33 secondsstatic one because we're having the dynamic value. So let's delete this.
3:26:403 hours, 26 minutes, 40 secondsAnd in geographical mapping gate color I think here for the gate color.
3:26:523 hours, 26 minutes, 52 secondsLet's do one thing. Let's cut this and keep it inside this punchion.
3:27:023 hours, 27 minutes, 2 secondsYeah, something like this. Now in here we have to write some code.
3:27:103 hours, 27 minutes, 10 secondsSo for this one it's fine. Now we have to normalize the name because the data structure the data type is not similar
3:27:183 hours, 27 minutes, 18 secondslike the map expect. So that's why we have to change it. We have to create another use memo hook in here from react.
3:27:293 hours, 27 minutes, 29 secondsWe can add here two new map uh that ISO2 map and name map. Then the display name for the country.
3:27:423 hours, 27 minutes, 42 secondsThen we have to make on for loop for our countries
3:27:503 hours, 27 minutes, 50 secondsand then we can return the ISO2 map and by name we can pass the
3:28:013 hours, 28 minutes, 1 secondname map and here let's add the countries as the dependency array.
3:28:083 hours, 28 minutes, 8 secondsYeah, that's it.
3:28:123 hours, 28 minutes, 12 secondsvery small. Now after this we need the max views
3:28:203 hours, 28 minutes, 20 secondsfrom the country and the get color here we have to change it we can say if there
3:28:283 hours, 28 minutes, 28 secondsis no views or max views is less equals to zero
3:28:393 hours, 28 minutes, 39 secondsthen return this color mode otherwise we need the intensity
3:28:493 hours, 28 minutes, 49 secondsthe intensity of the color. Now views we have to receive your views which is going to be actually number we're not
3:28:563 hours, 28 minutes, 56 secondsreceiving the country name now and here after intensity we have lightness in the like map something like this and then we can return our map something like this.
3:29:103 hours, 29 minutes, 10 secondsYeah, otherwise everything I think it should be same but no not same here country
3:29:193 hours, 29 minutes, 19 secondsname and we need to add here that ISO2 like this and we need views and base
3:29:293 hours, 29 minutes, 29 secondscolor we don't need the match yeah so something like this now inside here in the set hover or uh one mouse
3:29:383 hours, 29 minutes, 38 secondsentered everything is fine but set Hover for the visitors. We don't need visitors. We need views. So, set hovers
3:29:473 hours, 29 minutes, 47 secondshere. Let's add let's change it to views.
3:29:523 hours, 29 minutes, 52 secondsYeah, that's it. Uh, still there are some error which is expected. Let's come here.
3:30:013 hours, 30 minutes, 1 secondAfter this, after the views on mouse move, I'll go here.
3:30:093 hours, 30 minutes, 9 secondsUh here for the hover if the views more than zero
3:30:163 hours, 30 minutes, 16 secondsthen base color otherwise like the different color which one you're watching here. Now in here it's also
3:30:263 hours, 30 minutes, 26 secondsgoing to be hover dot views. Yeah, we can save it.
3:30:323 hours, 30 minutes, 32 secondsAnd here you go. You can see for the Malaysian it's showing visitor 17 because all the views are from actually Malaysia now as when I was developing it
3:30:413 hours, 30 minutes, 41 secondsall the views were from Malaysia that's why it's showing Malaysia. One thing I'm just noticing that the sidebar is not
3:30:483 hours, 30 minutes, 48 secondsloading first which makes sense because sidebar has I think another loader or something that's why
3:30:563 hours, 30 minutes, 56 secondsuh no worries but this is right now dynamic and let's check the sidebar because here
3:31:033 hours, 31 minutes, 3 secondswe can also make it dynamic and one thing I I I would like to check again we don't need this controller analytics
3:31:113 hours, 31 minutes, 11 secondscontroller so from main dashboard page TSX
3:31:183 hours, 31 minutes, 18 secondsnot here and yeah we need to actually uncomment it. When you're uncommenting there is some error. Total request. All
3:31:263 hours, 31 minutes, 26 secondsright guys I found the mistake is very obvious. Is loading must need to be true. When the is loading is true then
3:31:343 hours, 31 minutes, 34 secondsreturn null. Is loaded and is loading is not the same thing. Is loaded means it's already loaded and is loading meanings
3:31:423 hours, 31 minutes, 42 secondsit's currently loading. So if it's true then only return null. If it's false then do not need to return null. Now after changing it see everything is working. Even the sidebar is also fixed.
3:31:533 hours, 31 minutes, 53 secondsSo yeah it's actually perfectly working.
3:31:553 hours, 31 minutes, 55 secondsOur dashboard homepage is dynamic right now. We should be proud for this. Yeah it's working. Everything is done. Now on the sidebar let's make it dynamic.
3:32:053 hours, 32 minutes, 5 secondsEspecially this plan and these uses for plan. I don't think we have the API
3:32:133 hours, 32 minutes, 13 secondsyet, but for the users definitely we do have. So let's change it.
3:32:223 hours, 32 minutes, 22 secondsUh here for the analytics we can copy it from
3:32:283 hours, 32 minutes, 28 secondsour dashboard also because it's kind of like the same thing. We make sure that you're using the same query key so that
3:32:373 hours, 32 minutes, 37 secondsit will not fetch it for multiple time and get token we are getting it from our use of hook
3:32:463 hours, 32 minutes, 46 secondsfrom CL next chase. Yeah. And each signed in uh it's also from our use user hook.
3:32:573 hours, 32 minutes, 57 secondsYeah. So from here that's it. So we're basically fetching our analytics data in here. Now since we
3:33:053 hours, 33 minutes, 5 secondsare fetching it, it's done. We can come back here to this US card. Yeah, the US card. And in
3:33:163 hours, 33 minutes, 16 secondshere instead of 5% we can say number
3:33:243 hours, 33 minutes, 24 secondsand the uses PCT the percentage. Now you might be thinking from where it's coming we didn't create it. Yeah but we will here.
3:33:373 hours, 33 minutes, 37 secondsSo const percentage the analytics and the offer all
3:33:453 hours, 33 minutes, 45 secondsuses percentage or zero. We can save it.
3:33:523 hours, 33 minutes, 52 secondsYou can see 0.2%. It's right now fully dynamic.
3:33:583 hours, 33 minutes, 58 secondsNow after this here this 5% we have to change it uh
3:34:083 hours, 34 minutes, 8 secondsyeah we have to change this 5% to let's say
3:34:153 hours, 34 minutes, 15 secondsmath dot max zero and math dot
3:34:253 hours, 34 minutes, 25 secondsmini 100 then the number then pass the users percentage and at
3:34:333 hours, 34 minutes, 33 secondsthe end add here on uh percent. Yeah,
3:34:413 hours, 34 minutes, 41 secondsthat's it. Right now it's actually fully dynamic.
3:34:453 hours, 34 minutes, 45 secondsUh that's about our uses only 0.2% uses done.
3:34:543 hours, 34 minutes, 54 secondsUh now for the plan like the free or paid here
3:35:013 hours, 35 minutes, 1 secondfree paid free paid here you go we need the user plan
3:35:083 hours, 35 minutes, 8 secondsso which is coming from another API which we have to create that that's for basically the billing API which we will do right now after some time not right
3:35:173 hours, 35 minutes, 17 secondsnow uh we we can finish our analytics from here since analytics API is ready and billing API is not ready that's why
3:35:263 hours, 35 minutes, 26 secondsthis is not dynamic yet we we have to actually start to work in billing then we can make this one also dynamic but for now
3:35:343 hours, 35 minutes, 34 secondsuh let's make this analytics dynamic because it's easier to make it dynamic
3:35:413 hours, 35 minutes, 41 secondsso let's go to analytics page and inside here
3:35:513 hours, 35 minutes, 51 secondsthis views data we don't need anymore more. Let's delete all of this mock data. The top videos, same. We don't
3:36:003 hours, 36 minutesneed any of this. Device data, browser data, overview, stats, everything. Just delete the batch class. Yeah, we can keep it.
3:36:093 hours, 36 minutes, 9 secondsNow, range levels, we're changing it.
3:36:123 hours, 36 minutes, 12 secondsWe're going to make it list 3 days, list 7 days,
3:36:183 hours, 36 minutes, 18 secondsand list 14 days because 19 days, that's crazy. We don't want to waste money for analytics.
3:36:263 hours, 36 minutes, 26 secondsThat's why we're storing it for only 14 actually not 14 28 days analytics data not more than that. Uh here change it to
3:36:333 hours, 36 minutes, 33 seconds3D 70D and 14D. And by default it's going to be three.
3:36:423 hours, 36 minutes, 42 secondsYeah. Now let's fetch our analytics data again which is again the same. First we need the use query.
3:36:523 hours, 36 minutes, 52 secondsNow get token. Let's import it from here.
3:36:573 hours, 36 minutes, 57 secondsUh I mean not from here. Sorry, not from use user. It's from our use o
3:37:063 hours, 37 minutes, 6 secondsand here the east sign in.
3:37:103 hours, 37 minutes, 10 secondsSo this one is ready. Now after this we need to format our chart date.
3:37:213 hours, 37 minutes, 21 secondsAnd we will have the overview, the views data, the top videos
3:37:293 hours, 37 minutes, 29 secondsand like everything which we were having earlier except this few things because we already have it. The total views changes
3:37:383 hours, 37 minutes, 38 secondspercentage the total views change level and everything in here.
3:37:433 hours, 37 minutes, 43 secondsNow in here let's change it to not sign in or not is lo is loading is true then return null.
3:37:523 hours, 37 minutes, 52 secondsUh now very very important we have to make our overview stats again but with dynamic data that's the
3:38:013 hours, 38 minutes, 1 seconddifference like for the level it's going to be total views the value it's going to be overview or total views change the
3:38:093 hours, 38 minutes, 9 secondschange level positive if it's positive then positive otherwise negative the icon is here the watch time
3:38:193 hours, 38 minutes, 19 secondssomething like this the level uh farmer duration let's import it
3:38:283 hours, 38 minutes, 28 secondsviewers and the final one the average view duration something like this yeah now
3:38:363 hours, 38 minutes, 36 secondslet's come back here down let's make it 3D 70D and 14D
3:38:453 hours, 38 minutes, 45 secondshere all Good.
3:38:543 hours, 38 minutes, 54 secondsAnd I think here also all good.
3:39:023 hours, 39 minutes, 2 secondsUh no, here something is wrong. I think change yeah
3:39:093 hours, 39 minutes, 9 secondschange and level if it's total views then
3:39:183 hours, 39 minutes, 18 secondsversus last uh sorry it's my it's my call don't think that it's your call
3:39:273 hours, 39 minutes, 27 secondsuh yeah versus last period uh or empty string Yeah.
3:39:343 hours, 39 minutes, 34 secondsAnd views over time here top videos we have to add type for
3:39:423 hours, 39 minutes, 42 secondsit. So let's say any and number. Yeah. Uh yep. But uh in here
3:39:523 hours, 39 minutes, 52 secondswe have to change these values I guess like views fine.
3:40:023 hours, 40 minutes, 2 secondsUh but let's do one thing actually it's fine here we have to change it we have to say
3:40:083 hours, 40 minutes, 8 secondsformat duration number and
3:40:173 hours, 40 minutes, 17 secondsrow dot watch time seconds or zero
3:40:243 hours, 40 minutes, 24 secondsyeah same we have to change it for average view duration in here it's going to be avg means average duration seconds.
3:40:373 hours, 40 minutes, 37 secondsYeah. Otherwise like zero. And here device and browser breakdown. Let's delete all of these. We don't need any
3:40:443 hours, 40 minutes, 44 secondsof these. The geographic distributions we don't need because you already have it. So there's no meaning of like adding
3:40:533 hours, 40 minutes, 53 secondsit twice. There's no need to add it twice. So we can save it. We can come back here. Here you go. total views which is 80% less than last period. If
3:41:023 hours, 41 minutes, 2 secondswe check the last seven days then yeah it's good like seven views three views one views zero and today's more one and
3:41:093 hours, 41 minutes, 9 secondsthis is the watch time this is the average view duration you can see it's actually right now fully dynamic the
3:41:163 hours, 41 minutes, 16 secondsanalytics page is completely dynamic right now and it's really looking very beautiful isn't it so analytics page is
3:41:263 hours, 41 minutes, 26 secondsalso dynamic now here my videos I uh want to do here a little bit modification. Just a minute. My videos.
3:41:383 hours, 41 minutes, 38 secondsAnd in here, first of all, we need to fetch
3:41:473 hours, 41 minutes, 47 secondsour uh 1 minute. Here we have the delete
3:41:543 hours, 41 minutes, 54 secondsvideo. But actually for the version one, we're not adding the delete one. It's very very important because uh like
3:42:023 hours, 42 minutes, 2 secondsthere is a very high chance of spamming if we add the delete video for the version one. Definitely there will be
3:42:093 hours, 42 minutes, 9 secondsdelete video but not like this. We need to add some more security which we will do in the second version
3:42:183 hours, 42 minutes, 18 secondsis loading and videos. Now you might be thinking why like it's not possible to delete the videos because even if you're
3:42:253 hours, 42 minutes, 25 secondsdeleting it uh from our main cloud storage it's not going to delete within a very short time like let's say we are
3:42:323 hours, 42 minutes, 32 secondsdeleting a video but it will delete after 1 month. So we have to pay money for that one month and that's why we cannot let the user to delete video very
3:42:403 hours, 42 minutes, 40 secondsfast because logically we have to pay money for that. That's why if there any error then we can show this message.
3:42:503 hours, 42 minutes, 50 secondsUh yep now you can see we have to actually delete the delete icon. So here you go the button.
3:43:003 hours, 43 minutesLet's delete it.
3:43:033 hours, 43 minutes, 3 secondsPerfect. Now for the views, let's make it dynamic. So for the views
3:43:113 hours, 43 minutes, 11 secondswe can actually change it. So where's the views? Uh here
3:43:193 hours, 43 minutes, 19 secondsis the views the I zero. So we can say video
3:43:263 hours, 43 minutes, 26 secondsand total views are zero. Now you might be thinking where is the total views coming
3:43:363 hours, 43 minutes, 36 secondsfrom. So it's coming from basically here. In here we have to add the total views.
3:43:463 hours, 43 minutes, 46 secondsSo let's add it in here and save it. Now come back here. Even reload.
3:43:533 hours, 43 minutes, 53 secondsOkay. No worries. It's now working. Very good. But we have to actually modify the get videos meta edit a little bit then it will work. It will start to work.
3:44:073 hours, 44 minutes, 7 secondsSo upload meanings we have to go back to our uh
3:44:153 hours, 44 minutes, 15 secondsmodules and upload service. Yeah.
3:44:233 hours, 44 minutes, 23 secondsFrom upload service we can fix this.
3:44:283 hours, 44 minutes, 28 secondsSo get videos meta data. Here you go.
3:44:343 hours, 44 minutes, 34 secondsInside here we have to add our total views
3:44:433 hours, 44 minutes, 43 secondsincluding the created ad. Yeah. So let's uh import a SQL from DLE OM video analytics.
3:44:533 hours, 44 minutes, 53 secondsAnd in this lift join we have to actually add another lift join
3:45:033 hours, 45 minutes, 3 secondswhich is going to be video analytics and video meta data dot id video
3:45:113 hours, 45 minutes, 11 secondsanalytics dot video id. Yeah we can save it. Now if you come back here if you
3:45:183 hours, 45 minutes, 18 secondsreload here you go it's 17. So it's working right now. You can see everything is perfectly working here.
3:45:263 hours, 45 minutes, 26 secondsNow the video details page we should also like finish it. So for
Chapter 8: Building the Dynamic Video Details Page
3:45:333 hours, 45 minutes, 33 secondsthe video details uh one thing we have to do in here we have to
3:45:413 hours, 45 minutes, 41 secondscreate another module. Let's say get video meta data. This was videos and
3:45:513 hours, 45 minutes, 51 secondsright now video like one single one. We uh where we need our video id which is going to be string
3:45:593 hours, 45 minutes, 59 secondsand user id which is going to be string as well.
3:46:133 hours, 46 minutes, 13 secondsInside this we have to write a very big query.
3:46:183 hours, 46 minutes, 18 secondsIt's really a big one but let me show you.
3:46:243 hours, 46 minutes, 24 secondsSo DB dot select we need this title description video tracking ID status the video size
3:46:323 hours, 46 minutes, 32 secondswhere we're writing on SQL uh query we are basically we're doing video meta data dot video size and we're doing on
3:46:413 hours, 46 minutes, 41 secondssum with our transcoding meta data and total size bytes. The video size needs to be the full size. And for analytics,
3:46:493 hours, 46 minutes, 49 secondswe're reaching our total views and minutes streamed. You can see the average view duration. And from here, let's import and from drizzle.
3:47:013 hours, 47 minutes, 1 secondSo this is what you need to do. And we have to return the result from here.
3:47:083 hours, 47 minutes, 8 secondsYeah. So again, I'm slowly moving it so that you can see and write it by yourself.
3:47:163 hours, 47 minutes, 16 secondsIt's quite big because the query itself is actually a bit bigger. Yeah, that's it. Now, next one. This one is a bit
3:47:263 hours, 47 minutes, 26 secondssmaller. And this is for our daily analytics.
3:47:303 hours, 47 minutes, 30 secondsSo daily analytics like this like verify ownership first for the video like is the uh is the owner is
3:47:383 hours, 47 minutes, 38 secondssame with the user ID and if there is no videos then video not found and access
3:47:463 hours, 47 minutes, 46 secondsdenied and video analytics we're basically finding out the video daily analytics like the daily views. Yeah
3:47:553 hours, 47 minutes, 55 secondsthat's it. Uh our API is ready. Let's come back to our controller and let's add this tool in our controller.
3:48:043 hours, 48 minutes, 4 secondsSo after this videos metadata, we can add our get video metadata like this.
3:48:183 hours, 48 minutes, 18 secondsJust get video metadata instead of get videos. And we're receiving here video ID as params.
3:48:253 hours, 48 minutes, 25 secondsYeah. And same for our get daily analytics. We need our video ID as params.
3:48:333 hours, 48 minutes, 33 secondsSomething like this. Yep. So our API is ready. We can right now come back to our
3:48:413 hours, 48 minutes, 41 secondsvideo video ID and page.tsx inside this.
3:48:473 hours, 48 minutes, 47 secondsYeah. So video and video page.tsx.
3:48:523 hours, 48 minutes, 52 secondsHere we have to right now at first fetch the data uh mock data we can delete it
3:48:593 hours, 48 minutes, 59 secondsnow we don't need it anymore views or time we don't need top refers
3:49:063 hours, 49 minutes, 6 secondswe don't need at all stats I just keep it because we're going to
3:49:113 hours, 49 minutes, 11 secondschange it badge classes fine now in here
3:49:183 hours, 49 minutes, 18 secondslet's add our sign in and the get token because we're going Okay. Right. Now fetch our video metadata
3:49:273 hours, 49 minutes, 27 secondsbased on the video ID. Yeah.
3:49:333 hours, 49 minutes, 33 secondsSo we're doing here on page request sending a fetch request to our get video metadata with the video ID. And then
3:49:413 hours, 49 minutes, 41 secondshere we also have to add another use query function for feting our
3:49:493 hours, 49 minutes, 49 secondsactually the daily analytics the video analytics.
3:49:533 hours, 49 minutes, 53 secondsNow here we need to make an small helper function
3:50:003 hours, 50 minutesthat format our chart gate and the views over time something like this.
3:50:103 hours, 50 minutes, 10 secondsSo after this the copied ID and copied image everything is here embait we don't
3:50:173 hours, 50 minutes, 17 secondsneed this actually same for this one we don't need because we're not having the embed code feature
3:50:253 hours, 50 minutes, 25 secondsfor now for the version we're not having it because of the lack of security that's why but the MVP version it's fine
3:50:343 hours, 50 minutes, 34 secondsbecause since this is focused on developers they're not going to use embedded code definitely inside their application they're going to use our
3:50:423 hours, 50 minutes, 42 secondslibrary and our library is more easier to use. Now in here we have to say video
3:50:503 hours, 50 minutes, 50 secondsmetadata title and here we don't need the image at all.
3:51:003 hours, 51 minutesWe will call here our Vidmox player.
3:51:083 hours, 51 minutes, 8 secondsI think here we have to finish the div.
3:51:133 hours, 51 minutes, 13 secondsVidmox player. Vidmox player is going to be Vidmox player react. Yeah, it's fine
3:51:193 hours, 51 minutes, 19 secondsactually. Now uh in here after this we don't need this.
3:51:283 hours, 51 minutes, 28 secondsSo we can delete we even don't need this. So we can
3:51:373 hours, 51 minutes, 37 secondsdelete this as well and this div then we also don't need.
3:51:423 hours, 51 minutes, 42 secondsYeah. Now inside here instead of mock video let's make it video metadata dot title video metadata dot description.
3:51:533 hours, 51 minutes, 53 secondsThen in video information for the video ID, we can pass the video ID. It's already in here.
3:52:033 hours, 52 minutes, 3 secondsStatus is going to be our video metadata dot status.
3:52:093 hours, 52 minutes, 9 secondsUploaded here we have to add the video metadata dot created add dot slice 0 to 10.
3:52:213 hours, 52 minutes, 21 secondsthen dotsplit the
3:52:283 hours, 52 minutes, 28 secondshyphen then reverse this
3:52:363 hours, 52 minutes, 36 secondsand finally join everything with this hyphen again.
3:52:413 hours, 52 minutes, 41 secondsYeah, that's it. We can save it. Now if we save it definitely it's going to give us an error. We have to add here radio
3:52:493 hours, 52 minutes, 49 secondsmetadata again dot playlist name if it's available
3:52:573 hours, 52 minutes, 57 secondsor we can say one thing this or no playlist.
3:53:063 hours, 53 minutes, 6 secondsYeah for the text we can say video mator text.
3:53:143 hours, 53 minutes, 14 secondsUh here we can say any.
3:53:233 hours, 53 minutes, 23 secondsAnd now inside this it's fine. But we can do one
3:53:303 hours, 53 minutes, 30 secondsthing. This is very important. Let's cut this. Let's write if video meta data
3:53:373 hours, 53 minutes, 37 secondsdot text do.length is more than zero then only do this. We can add on
3:53:443 hours, 53 minutes, 44 secondsfragment in here otherwise we can add here on span something like this that no text. Yeah.
3:53:563 hours, 53 minutes, 56 secondsNow file details in here we can again add our video metadata dot format.
3:54:033 hours, 54 minutes, 3 secondsUh actually not format video metadata dot video content
3:54:113 hours, 54 minutes, 11 secondstype. Yeah, for the regulations video metadata dotreulations dot join because this is an actually
3:54:203 hours, 54 minutes, 20 secondsarray. So let's like add on comma after all the resolations.
3:54:283 hours, 54 minutes, 28 secondsSame for the file size. It's going to be right now video size.
3:54:353 hours, 54 minutes, 35 secondsAnd we're going to actually call here our format byte
3:54:433 hours, 54 minutes, 43 secondsthe helper function and we're going to pass it. Yeah.
3:54:493 hours, 54 minutes, 49 secondsUh video duration is sorry video size is ready. Now after this
3:54:573 hours, 54 minutes, 57 secondsone thing we have to add here very very important.
3:55:013 hours, 55 minutes, 1 secondThis is for actually giving some context that this
3:55:093 hours, 55 minutes, 9 secondssize is like including the including like the transcoded files
3:55:173 hours, 55 minutes, 17 secondssize. Yeah. And we have to import animated presence
3:55:233 hours, 55 minutes, 23 secondsfrom framework motion and any newer. Uh okay. So this toolkit
3:55:323 hours, 55 minutes, 32 secondswe have to uh create on use state hook for this. So let's come back here again and something like this. Perfect.
3:55:443 hours, 55 minutes, 44 secondsAnd here handle copy embed. We don't need the embed code. So let's delete.
3:55:503 hours, 55 minutes, 50 secondsNow here our short tool tip ready.
3:55:563 hours, 55 minutes, 56 secondsAfter this duration, we can call the video metadata. But let's cut and let's
3:56:033 hours, 56 minutes, 3 secondsadd our format byes sorry formats duration and pass the duration inside this.
3:56:133 hours, 56 minutes, 13 secondsUh however here it's going to be video duration.
3:56:183 hours, 56 minutes, 18 secondsYeah. Now stats card it's going to be
3:56:253 hours, 56 minutes, 25 secondsoh I think for now it will give error because one
3:56:313 hours, 56 minutes, 31 secondsthing here to refers we don't need to refers
3:56:393 hours, 56 minutes, 39 secondsif we save it let me see where is the error
3:56:463 hours, 56 minutes, 46 secondsvideo metadata title uh okay I understand because here for the
3:56:543 hours, 56 minutes, 54 secondsloading state we're saying this average view duration second so is
3:57:013 hours, 57 minutes, 1 secondloading then return null and 1 minute
3:57:103 hours, 57 minutes, 10 secondsvideo not found or access denied seriously how
3:57:173 hours, 57 minutes, 17 secondsare sure we're sending the user to the correct video.
3:57:213 hours, 57 minutes, 21 secondsI think we're doing here something wrong. Yeah, exactly. We're sending on the the video tracking ID which is
3:57:283 hours, 57 minutes, 28 secondswrong. We have to send the user to video ID, not the video tracking ID. And that's the mistake we are doing in here.
3:57:363 hours, 57 minutes, 36 secondsHow to fix it? Just scroll down. Don't need this.
3:57:453 hours, 57 minutes, 45 secondsand redirecting from here video do ID
3:57:523 hours, 57 minutes, 52 secondsvideo dot id now video do id is giving error because we need to add here the type for
3:58:003 hours, 58 minutesthe ID there you go you can save it then same thing uh we can come back here if we click here now it's showing
3:58:093 hours, 58 minutes, 9 secondsundefined given reload still undefined seriously Why? Let me see.
3:58:203 hours, 58 minutes, 20 secondsVideos ID.
3:58:233 hours, 58 minutes, 23 secondsI think in the back end we forgot to add it. Upload service video metadata. No, it's actually here.
3:58:333 hours, 58 minutes, 33 secondsNo, no, no. Videos metadata. Yeah, we forgot to add it. So, video meta data do ID.
3:58:403 hours, 58 minutes, 40 secondsNow, let's come back here. Give reload.
3:58:443 hours, 58 minutes, 44 secondsHere you go. Yeah, it has value. Now, now if we click here and see the video
3:58:513 hours, 58 minutes, 51 secondsplayer is actually loading and these informations are actually real. Even when I'm hovering it, it's saying total
3:58:593 hours, 58 minutes, 59 secondssize including the raw file. Sorry, raw upload and all transcoded formats. You select it. Yeah. However, it should be in the same line. We're going to see that. We're going to fix it. No problem.
3:59:103 hours, 59 minutes, 10 secondsBut it's working and that's the really good news for us that it's working now.
3:59:153 hours, 59 minutes, 15 secondsWe can come back again in here and this
3:59:233 hours, 59 minutes, 23 secondsplaylist not playlist tags the yeah circle question mark
3:59:373 hours, 59 minutes, 37 secondscircle question mark icon and in here let me see the styling.
3:59:473 hours, 59 minutes, 47 secondsSo, it's finishing.
3:59:523 hours, 59 minutes, 52 secondsIt's finishing here. This is the main span.
4:00:004 hoursThis one should have flex item center and some gap.
4:00:084 hours, 8 secondsThere you go. It looks perfect now.
4:00:134 hours, 13 secondsYeah. Uh after this after the duration let's come back in the stats card. Now
4:00:224 hours, 22 secondsin the stats uh let's delete this. We don't need this actually. Let's make it from scratch.
4:00:314 hours, 31 secondsNow for the stats map let's delete.
4:00:364 hours, 36 secondsAnd from here as well. And let's select the key.
4:00:404 hours, 40 secondsUh here we're going to add on div something like this.
4:00:514 hours, 51 secondsYeah. So it's basically the same just here total views total views. And this is like total views count.
4:00:594 hours, 59 secondsAnd after adding it for once you can right now copy it and change the value to watch time
4:01:084 hours, 1 minute, 8 secondsand analytics minute streamed something like this is basically the same class name just the values are different you
4:01:164 hours, 1 minute, 16 secondscan see and finally after these the unique viewers.
4:01:244 hours, 1 minute, 24 secondsSo unique viewers after this div
4:01:344 hours, 1 minute, 34 secondswe can save it. Then average view duration. The last one
4:01:424 hours, 1 minute, 42 secondswe can call ups average duration like this.
4:01:494 hours, 1 minute, 49 secondsAnd this is the unique viewers. Yeah. So here you go. Unique views one.
4:01:574 hours, 1 minute, 57 secondsAverage duration here. Watch time. Total views. Views over time. I think this is also dynamic views over time. Let me see.
4:02:084 hours, 2 minutes, 8 secondsSo views over time.
4:02:114 hours, 2 minutes, 11 secondsUh it should be little bit different. We can say if our daily analytics loading then just shows the loader.
4:02:244 hours, 2 minutes, 24 secondsIf there is no loading means loading is false and the length is zero then no data available
4:02:324 hours, 2 minutes, 32 secondsyet. Otherwise just cut this.
4:02:414 hours, 2 minutes, 41 secondsI think I did some mistake.
4:02:464 hours, 2 minutes, 46 secondsUh here we can add on first bracket like this.
4:02:564 hours, 2 minutes, 56 secondsThen inside this views over time all good actually all good in here just end of
4:03:054 hours, 3 minutes, 5 secondsthis uh sorry end of this let's add this now when you're giving reload you can
4:03:134 hours, 3 minutes, 13 secondssee it's loading and here you go 17 views the watch time the unique viewers
4:03:204 hours, 3 minutes, 20 secondsaverage view duration this is the video we can also play the video so you can see I'm playing it. We can actually like
4:03:284 hours, 3 minutes, 28 secondsplay from any any place and it will actually work perfectly. We can change the speed, the quality of the video like
4:03:374 hours, 3 minutes, 37 secondswith the including the bit rate. You can notice in here it's automatically providing here the accessibility, the
4:03:444 hours, 3 minutes, 44 secondsaudio, the like pip mode and the full screen everything is in here.
4:03:524 hours, 3 minutes, 52 secondsPerfect. If we give on reload, you will notice it's became 18 because we just played the video. That's why even the minute stream is also changed slightly.
4:04:024 hours, 4 minutes, 2 secondsAnd that's how it's working. It's real time. Completely real time. That's it.
4:04:084 hours, 4 minutes, 8 secondsOur dashboard ready. Our analytics is ready. Our my videos section is also perfectly working. But here in the
4:04:164 hours, 4 minutes, 16 secondssidebar when we're in my videos details, it should be active this one. So no worries. Let's fix this part.
4:04:264 hours, 4 minutes, 26 secondsWe just need to check one thing from here.
4:04:324 hours, 4 minutes, 32 secondsThat is our like logic for activating this. So here
4:04:444 hours, 4 minutes, 44 secondsmy videos. So section link we can scroll down
4:04:564 hours, 4 minutes, 56 secondshere it is yeah uh in the is active let's do one thing let's add here is
4:05:054 hours, 5 minutes, 5 secondsactive we can say the path if it's matching with href
4:05:114 hours, 5 minutes, 11 secondsor if the href is actually equals to my videos
4:05:194 hours, 5 minutes, 19 secondsand if the path starts with slash video slash
4:05:274 hours, 5 minutes, 27 secondsthen those are active. Yeah. And here
4:05:364 hours, 5 minutes, 36 secondsuh here we can say is active instead of path equals to href we can
4:05:444 hours, 5 minutes, 44 secondssay is active and we can save it. Here you go. You can see everything is working as always but right now my videos is also perfectly working.
4:05:564 hours, 5 minutes, 56 secondsYeah, perfect.
4:06:014 hours, 6 minutes, 1 secondSo that's it. You can see we have completed a lot of things right now. If you come back here, if you
4:06:094 hours, 6 minutes, 9 secondsgive reload, it should work. Just give and reload. Yeah, here we go. It's working.
4:06:184 hours, 6 minutes, 18 secondsSo we have now what next? Our playlist ready. My videos ready. Upload video already working. Player settings we have
4:06:274 hours, 6 minutes, 27 secondsto do. Water American branding. But before that, we have to fix our billing.
4:06:324 hours, 6 minutes, 32 secondsYeah, that's what we have to do. And for the version one, we're not having this monthly and yearly, not anything like that because no one cares about that or
4:06:404 hours, 6 minutes, 40 secondseven the ad once. First of all, for the version one, no one cares about these things. So that's why we're not having it. So first we're going to actually
4:06:484 hours, 6 minutes, 48 secondsremove it and then we will make our back end and we will do the last work and that is like our billing. After billing
4:06:574 hours, 6 minutes, 57 secondswe can finish the player settings and watermark branding which is going to be very simple and then what everything will be done no not done still one thing
4:07:074 hours, 7 minutes, 7 secondsis missing and it's kind of like we can say the heart of Vidmox and that is our
4:07:134 hours, 7 minutes, 13 secondsplayback G I mean here we have on GS for uploading but we also need on G for
4:07:214 hours, 7 minutes, 21 secondsplaying the video otherwise let's say your limit is 1,000 minutes playback or you're paying more than 1,000 minutes and then we have to be bankrupt, right?
4:07:304 hours, 7 minutes, 30 secondsWithout even running my other company.
4:07:324 hours, 7 minutes, 32 secondsSo that's why we need another gu for tracking or like let's say for limiting
4:07:394 hours, 7 minutes, 39 secondsour users from exceeding the users limit the many stream limit they have. Yeah,
4:07:464 hours, 7 minutes, 46 secondsthat's it. And even after 80% of users, we will send some email and we can do that by using scheduler. We will do
4:07:544 hours, 7 minutes, 54 secondsthat. So yeah, all of that we have to do but before that let's finish our billing and then we can make all of this dynamic one by one. Yeah, let's go. Let's do it.
Chapter 9: Billing Page & Backend Service
4:08:054 hours, 8 minutes, 5 secondsAll right. So let's go to main dashboard app and billing page.tsx.
4:08:114 hours, 8 minutes, 11 secondsFrom here after this manage billing after this uh current plan we have to change few things in here.
4:08:224 hours, 8 minutes, 22 secondsuh like here we don't need this monthly and yearly at all. So we can actually delete this complete div. We don't need this anymore.
4:08:344 hours, 8 minutes, 34 secondsAnd here uh everything looks good. 1,00 minutes playback all good. The po pro plan uh one thing in here that is the price.
4:08:454 hours, 8 minutes, 45 secondsOkay. Price is definitely going to be free. And here we don't need the billing cycle like monthly or anything like
4:08:544 hours, 8 minutes, 54 secondsthat. So we can just keep it as it is.
4:08:594 hours, 8 minutes, 59 secondsAnd after this the pro plan, this is not business plan in our system. We have pro plan and $29.99.
4:09:114 hours, 9 minutes, 11 secondsThis is 600 storage. Uh 22,000 minutes playback. Yeah. All good. Instead of enterprise, this one is going to be the
4:09:204 hours, 9 minutes, 20 secondsbusiness plan and pricing is going to be $69.99.
4:09:314 hours, 9 minutes, 31 secondsYeah, that's it. Now, uh here for the add-on section, we don't need the add-on section. So, completely
4:09:404 hours, 9 minutes, 40 secondsdelete the section. Now if we come back here you can see we're having the transaction history
4:09:484 hours, 9 minutes, 48 secondsonly and like the plan select card in here and this is the open stripe portal.
4:09:564 hours, 9 minutes, 56 secondsSo yeah this was basically our plan.
4:09:584 hours, 9 minutes, 58 secondsIt's fully ready. This will be our billing page. Very simple and minimalistic. Now let's come back to our backend side because we have to start to
4:10:074 hours, 10 minutes, 7 secondswork in back end this modules. Let's create our billing module and we're going to be use stripe as I as I'm
4:10:164 hours, 10 minutes, 16 secondsalways saying. So for using stripe it's like very easy to use stripe for this type of SAS. It's actually more easy. Uh we can say billing.controller.ts.
4:10:294 hours, 10 minutes, 29 secondsWe can create an file like this. And another one.
4:10:364 hours, 10 minutes, 36 secondsJust a minute.
4:10:434 hours, 10 minutes, 43 secondsYeah, sorry. Uh, billing then module.ts and
4:10:524 hours, 10 minutes, 52 secondsbilling dot service.ts.
4:10:564 hours, 10 minutes, 56 secondsYeah, that's it. Now for billing module, let's add our module decorator
4:11:074 hours, 11 minutes, 7 secondscontrollers. We can say billing controller
4:11:154 hours, 11 minutes, 15 secondswhich we don't have yet. Let's keep it empty for now. and providers
4:11:214 hours, 11 minutes, 21 secondsfor now empty array. Just export our
4:11:294 hours, 11 minutes, 29 secondsbilling module class. Yeah, we can save it.
4:11:364 hours, 11 minutes, 36 secondsLet's come back to our billing service.
4:11:414 hours, 11 minutes, 41 secondsLet's add the injectable and import injectable from this / common. In
4:11:484 hours, 11 minutes, 48 secondshere we're going to be using Stripe. So we have to actually install Stripe library right now and it's very simple.
4:11:574 hours, 11 minutes, 57 secondsLet's come back here.
4:12:004 hours, 12 minutesGo to our services and in here let's write npmi stripe.
4:12:104 hours, 12 minutes, 10 secondsYeah. And import stripe from stripe. Then here we can add our constructor.
4:12:224 hours, 12 minutes, 22 secondsThen we can finish the class like this.
4:12:254 hours, 12 minutes, 25 secondsNow inside this constructor we need our config and we need to inject uh the DB and reduce client because
4:12:324 hours, 12 minutes, 32 secondswe're going to actually use it. So config service drizzle DB. I don't need to explain it I guess because we're
4:12:404 hours, 12 minutes, 40 secondswriting it for probably the thousandth times.
4:12:454 hours, 12 minutes, 45 secondsYeah. Now after this uh actually inside here we need to pass
4:12:524 hours, 12 minutes, 52 secondsour stripe secret key. Very very important. Now how can you get your stripe secret key? Just do login into stripe dashboard. Go to the test mode.
4:13:024 hours, 13 minutes, 2 secondsYou'll find out your stripe API key in there and stripe like publishable key and secret key. So then you have to create on variable stripe secret key and
4:13:114 hours, 13 minutes, 11 secondsyou have to paste the value into that you knowv file. I'm not doing it because I think I already have this env in my
4:13:204 hours, 13 minutes, 20 secondslike this variable in myv file. Now after this another important uh private
4:13:284 hours, 13 minutes, 28 secondsmodule like create front end url get front end URL. So it's basically uh from the front end URL from our NV or like by
4:13:384 hours, 13 minutes, 38 secondsdefault 3001 like the for development purpose. Right now it's going to be 3001. This is our front end URL like this one.
4:13:474 hours, 13 minutes, 47 secondsYep.
4:13:494 hours, 13 minutes, 49 secondsWhy do we need this? We need this to redirect our user to our website again after finishing the payment. Now get price ID for plan. Very very important.
4:14:014 hours, 14 minutes, 1 secondWe can say plant here and we have to call our plant here this enum
4:14:114 hours, 14 minutes, 11 secondsfrom our config file. And after this we can say if plant here equals to our
4:14:204 hours, 14 minutes, 20 secondsthat plant here do free then we have to return this. Now this is
4:14:284 hours, 14 minutes, 28 secondsvery very important. We're saying stripe price starter. So this is also a new variable. Let me show you how you can actually work here.
4:14:414 hours, 14 minutes, 41 secondsUh just a minute. I'm checking my Stripe account from here. And here you go.
4:14:484 hours, 14 minutes, 48 secondsSo this is my Stripe test mode. From here be make sure that you're going to the product catalog and you're creating
4:14:564 hours, 14 minutes, 56 secondsa product by giving name something like this that starter pro and business and for the price select here recurring okay
4:15:054 hours, 15 minutes, 5 secondsrecurring and like select the USD currency and add them like amount and after that be make sure that you're
4:15:134 hours, 15 minutes, 13 secondsgoing inside here and you're copying your price ID from here okay very very important and then for the starter price
4:15:214 hours, 15 minutes, 21 secondsthe stripe price starter at this starter price ID. Okay, for the pro do the same
4:15:304 hours, 15 minutes, 30 secondscopy the price ID for pro for business copy the price ID for the business mode
4:15:374 hours, 15 minutes, 37 secondsuh like the business plan. Yeah. Uh that's it. And uh here it's going to be
4:15:444 hours, 15 minutes, 44 secondsactually same that if plant here is pro then stripe price pro if it's business then stripe price business.
4:15:534 hours, 15 minutes, 53 secondsIf it's nothing then throw a new error that invalid plan.
4:15:584 hours, 15 minutes, 58 secondsYeah. Now we need to check the user current plan. So that's why we are
4:16:044 hours, 16 minutes, 4 secondssaying get user current plan and user id which will be string.
4:16:144 hours, 16 minutes, 14 secondsNow we can say con record await this dot DV dot
4:16:224 hours, 16 minutes, 22 secondsquery dot plan and dot find first
4:16:324 hours, 16 minutes, 32 secondswhere our P dot user
4:16:424 hours, 16 minutes, 42 secondsID is matching with the user user ID and columns
4:16:514 hours, 16 minutes, 51 secondswe can just add the name we can make the name to true we need the plan name in here that's why so this is just an
4:16:594 hours, 16 minutes, 59 secondshelper function or helper module for getting the user current plan after this
4:17:064 hours, 17 minutes, 6 secondswe're going to normalize the plan and return the plan name so normalize plant here it's already on helper function we already created it so we don't need to
4:17:154 hours, 17 minutes, 15 secondsdo it again. Now, next one for our invoices. So, definitely we're not having the invoices yet. So, for now, let's keep it empty.
4:17:274 hours, 17 minutes, 27 secondsAfter this, we need our actually another private module. This is very very important for getting our
4:17:364 hours, 17 minutes, 36 secondsclark email because when we are inside our back end, our back end is giving user ID. We need the user email as well
4:17:464 hours, 17 minutes, 46 secondsfor creating stripe customer. In here you can see the customers. We need the email for creating the stripe customer.
4:17:534 hours, 17 minutes, 53 secondsOtherwise like we when we will redirect the user to the billing they have to enter their email again which is not secure based like based on our system.
4:18:054 hours, 18 minutes, 5 secondsYeah. So that's it. In here we make sure that you are adding this get cler. This is basically calling creating an cler
4:18:134 hours, 18 minutes, 13 secondsclient with the cleric secret key and with the user ID we are fetching our email address for that logged in for for
4:18:214 hours, 18 minutes, 21 secondsthe logged in user. Yeah, I hope you're understanding. Uh now another
4:18:294 hours, 18 minutes, 29 secondsuh small not small actually it's going to be a little bit bigger. So let's come outside and let's add another private module for ensuring the stripe customer.
4:18:404 hours, 18 minutes, 40 secondsSo, first we're going to have the email in here from the get uh cler with this user ID and then we can check
4:18:494 hours, 18 minutes, 49 secondsthe plan with the stripe customer ID.
4:18:554 hours, 18 minutes, 55 secondsIf there is stripe customer ID then just
4:19:044 hours, 19 minutes, 4 secondsuh return it like this. If there is a stripe customer ID
4:19:114 hours, 19 minutes, 11 secondsuh and uh here after this we have to return the customer
4:19:204 hours, 19 minutes, 20 secondsid which is going to be record dot stripe customer ID and current plan.
4:19:344 hours, 19 minutes, 34 secondsWe can call normal edge plan here and we can pass the record dot name.
4:19:444 hours, 19 minutes, 44 secondsYeah, that's it. Now we need our customer for uh from stripe database. So we can call
4:19:514 hours, 19 minutes, 51 secondsthis that.stripe customers.create. We're basically creating our customer and we're normalizing uh we're checking
4:20:004 hours, 20 minutesthe current plan again and we're updating our database after
4:20:074 hours, 20 minutes, 7 secondslike checking uh or or actually after getting the plan
4:20:144 hours, 20 minutes, 14 secondssorry after getting the stripe customer ID after creating the stripe customer ID with the
4:20:224 hours, 20 minutes, 22 secondsemail after creating on stripe customer with the email with the user ID we are storing that customer ID inside our
4:20:304 hours, 20 minutes, 30 secondsdatabase in here with the stripe customer on the stripe customer ID field.
4:20:364 hours, 20 minutes, 36 secondsYeah. And after this we can return our customer ID and current plan.
4:20:454 hours, 20 minutes, 45 secondsUh yeah that's it. Another small function. This is an small one and very very important though this is for
4:20:524 hours, 20 minutes, 52 secondscreating the portal session like when you're clicking here it will redirect you to your stripe portal. Very simple we need a front end URL and customer ID
4:21:004 hours, 21 minutesfrom our stripe customer and we can create on session for the billing portal stripe.billingportal session.create. We
4:21:084 hours, 21 minutes, 8 secondshave to just pass the customer ID and return URL. That's it. Um now
4:21:174 hours, 21 minutes, 17 secondsthe most important one that is our create check out
4:21:244 hours, 21 minutes, 24 secondssession where we're going to pass the user ID which is string and raw plan which is string as well.
4:21:354 hours, 21 minutes, 35 secondsYeah. Now const plant here we can call normalize plantier and we
4:21:434 hours, 21 minutes, 43 secondscan pass the raw plan inside this. If the plantier
4:21:494 hours, 21 minutes, 49 secondsequals to plantier dot free then return an error message that free plan does not require checkout.
4:22:024 hours, 22 minutes, 2 secondsAfter this we are having the price ID where basically we need the price ID to
4:22:094 hours, 22 minutes, 9 secondslike create on uh checkout session and front end URL and the customer ID. So we are getting back all of these. Now let's
4:22:184 hours, 22 minutes, 18 secondscreate the session for redirecting the user to the payment link. So this stripech checkout dot sessions dotcreate
4:22:284 hours, 22 minutes, 28 secondsmode is going to be subscription customer
4:22:344 hours, 22 minutes, 34 secondswe have to pass the customer ID line items
4:22:424 hours, 22 minutes, 42 secondswe can pass the price ID and quantity
4:22:504 hours, 22 minutes, 50 secondsthen client reference ID meta data which is going to be the user
4:22:574 hours, 22 minutes, 57 secondsID and plant here and subscription data.
4:23:074 hours, 23 minutes, 7 secondsWe have to pass the meta data in here. The user ID and the plant here. Yeah.
4:23:134 hours, 23 minutes, 13 secondsSuccess URL very very important. This is going to be the front end URL/
4:23:204 hours, 23 minutes, 20 secondsbilling and success
4:23:284 hours, 23 minutes, 28 secondsone. So here it will be something like this that billing and success one
4:23:344 hours, 23 minutes, 34 secondsthe success URL if it's catch any error if there is something wrong like the cancel URL then billing and cancelled.
4:23:454 hours, 23 minutes, 45 secondsYeah. And finally we can return the URL session sorry the session do URL the URL
4:23:544 hours, 23 minutes, 54 secondslink for the session. Uh after this we will have to create another one actually not only one we have many but for now
4:24:034 hours, 24 minutes, 3 secondslet's save it. And one thing we have to create another module right now because it's very very important. This is for
4:24:124 hours, 24 minutes, 12 secondsour uh stripe web hook like after confirming the payment we have to update our database like with updated plan
4:24:224 hours, 24 minutes, 22 secondsupdated uses and everything. So it's going to receive the raw body from stripe which type is going to be buffer
4:24:304 hours, 24 minutes, 30 secondsand the signature which is going to be string as well. Now
4:24:374 hours, 24 minutes, 37 secondscon web hook secret
4:24:444 hours, 24 minutes, 44 secondsit's going to be this doconfig do.get or throw
4:24:534 hours, 24 minutes, 53 secondsand let's pass here our stripe web hook secret. Now from where you will get the stripe web hook secret I will show you after some time. After this
4:25:024 hours, 25 minutes, 2 secondswe need event. So we can say this dot stripe dot web hooks dot construct event
4:25:134 hours, 25 minutes, 13 secondsthe raw body the signature the web hook secret this is basically the event
4:25:194 hours, 25 minutes, 19 secondsobject. Now if the event type and from where this event is coming this is coming from the stripe site.
4:25:294 hours, 25 minutes, 29 secondsStripe is sending us an web hook when the payment is ready. So if the event type is check out session completed
4:25:394 hours, 25 minutes, 39 secondsthen we will have our session ID sorry the session like from the data object
4:25:464 hours, 25 minutes, 46 secondsthen the user ID from the metadata do user ID or sessionclient reference ID
4:25:534 hours, 25 minutes, 53 secondsthen we need the plant here so we can we're we're basically getting the plant here from the session metadata plant
4:26:004 hours, 26 minuteshere for the stripe customer ID is same and stripe subscription ID. Very very
4:26:064 hours, 26 minutes, 6 secondsimportant. Now if there is user ID we can
4:26:154 hours, 26 minutes, 15 secondsapply the plan and limits. Now apply plan and limits. This is basically a new function which we will create. This is
4:26:234 hours, 26 minutes, 23 secondsanother private module not function. And here if it's all good we can say received true.
4:26:314 hours, 26 minutes, 31 secondsYeah.
4:26:344 hours, 26 minutes, 34 secondsOtherwise if the event type
4:26:414 hours, 26 minutes, 41 secondsequals to invoice page or
4:26:484 hours, 26 minutes, 48 secondsthe event dot type equals to invoice payment failed.
4:26:594 hours, 26 minutes, 59 secondsThen we basically need our invoice and then we have to update
4:27:114 hours, 27 minutes, 11 secondsthe invoice inside our database. So this is basically another function that upsert invoice from stripe
4:27:194 hours, 27 minutes, 19 secondsand we will create it. But if the uh 1 minute this is re uh received
4:27:294 hours, 27 minutes, 29 secondsthrough all good. So here if the event dot type is
4:27:394 hours, 27 minutes, 39 secondscustomer subscription uh deleted the important one. Then we
4:27:464 hours, 27 minutes, 46 secondshave to change the plan. So we need the subject and the user ID. If the user ID
4:27:524 hours, 27 minutes, 52 secondsis available then again call our apply plan and limits private module which we
4:27:594 hours, 27 minutes, 59 secondswill create after this and we have to pass the plan name the user ID and the stripe customer ID and stripe
4:28:054 hours, 28 minutes, 5 secondssubscription ID and we can say received true.
4:28:134 hours, 28 minutes, 13 secondsYeah. And at the end here we can again return this receive true.
4:28:204 hours, 28 minutes, 20 secondsNow let's add our private async apply
4:28:274 hours, 28 minutes, 27 secondsplan and limits. Yeah, it's going to receive the user ID which is going to be string. the plant here
4:28:364 hours, 28 minutes, 36 secondswhich is the plant here stripe it's going to have the stripe customer
4:28:464 hours, 28 minutes, 46 secondsID and stripe
4:28:544 hours, 28 minutes, 54 secondssubscription ID which is going to be string as
4:29:044 hours, 29 minutes, 4 secondsNow after this we can say con limits plan defaults.
4:29:224 hours, 29 minutes, 22 secondsSo plan defaults uh from actually
4:29:294 hours, 29 minutes, 29 secondsour upload card. So let's do one thing in here. Let's export this so that we
4:29:404 hours, 29 minutes, 40 secondscan use it in here. So plan defaults and our plant here. pass the plant here
4:29:484 hours, 29 minutes, 48 secondsin here or plant defaults and plant here dot three.
4:29:554 hours, 29 minutes, 55 secondsYeah. Then we have to update the database the plan table.
4:30:024 hours, 30 minutes, 2 secondsWhat we have to do?
4:30:054 hours, 30 minutes, 5 secondsWe have to insert the value. If there is like it's for the first time we have to insert the plan year name stripe
4:30:124 hours, 30 minutes, 12 secondscustomer ID stripe subscription ID and created and updated. If it's already available then we have to change the plan name stripe customer ID and
4:30:204 hours, 30 minutes, 20 secondssubscription ID. Yeah, that's it. Now if the existing uh we we have we have to also update the uses table. So that's
4:30:294 hours, 30 minutes, 29 secondswhy we are making here another query to our users table that is the like any existing users available for the user or
4:30:384 hours, 30 minutes, 38 secondsnot. If it's available then we have to we have to do what we have to update the users table.
4:30:494 hours, 30 minutes, 49 secondsWe have to update the users table. We have to set the new storage limit the new minute uh streamed limit like we
4:30:574 hours, 30 minutes, 57 secondshave to update the limit because definitely users are updating their plan. So we have to update our internal
4:31:044 hours, 31 minutes, 4 secondsuses table. Yeah. And if it's not available then let's set it for the first time like user ID like this storage use storage limit and everything
4:31:124 hours, 31 minutes, 12 secondslike this. Yep. Then we have to update the cache. So this will be in here.
4:31:204 hours, 31 minutes, 20 secondsWe can basically delete the lock radius key because if the key was like the user was locked for something then you have
4:31:284 hours, 31 minutes, 28 secondsto delete it because the user changed the plan so that we can delete it again like suddenly like instantly we can
4:31:354 hours, 31 minutes, 35 secondsdelete the user lock like it can happen that the user has let's say 1,000 minutes playback limit the user is
4:31:434 hours, 31 minutes, 43 secondsalready user already played 1,000 minutes playback then definitely that will be in lock the ID will be in lock in our cache. So after changing the
4:31:524 hours, 31 minutes, 52 secondsplan, we're deleting it from the radius key. Yeah, we're deleting the key from radius. And then we are updating uh in our radius with the new data.
4:32:054 hours, 32 minutes, 5 secondsWe also need the users radius key and storage uses and minute streamed and
4:32:134 hours, 32 minutes, 13 secondswe have to update this in our in our radius with this new values.
4:32:194 hours, 32 minutes, 19 secondsAnd let's set an expiry date for this.
4:32:234 hours, 32 minutes, 23 secondsAnd we also have to use our plan cache and uses cache. It's basically coming
4:32:304 hours, 32 minutes, 30 secondsfrom our upload to guard. Yeah, it's done. Now, still there is one error.
4:32:364 hours, 32 minutes, 36 secondsThis uh actually this module is also ready. Now, still there is one error and it's coming from here that absert invoice from stripe. So, let's come back
4:32:464 hours, 32 minutes, 46 secondshere again. After this create portal session actually before this I think before this this was
4:32:564 hours, 32 minutes, 56 secondsinsure stripe customer then get cler okay list invoices yeah here we can actually
4:33:034 hours, 33 minutes, 3 secondsadd our this upsert invoice from stripe module here it's going to receive the
4:33:104 hours, 33 minutes, 10 secondsinvoice which is going to be any now here we need the stripe invoice ID and
4:33:174 hours, 33 minutes, 17 secondsstripe customer ID. If there is like none of them are available then we have to return the function because definitely then we cannot do anything.
4:33:274 hours, 33 minutes, 27 secondsThen we need the user ID from the meta data and we can return late variable here and
4:33:354 hours, 33 minutes, 35 secondswe can pass the user user from metadata in here. If there is no user ID then
4:33:424 hours, 33 minutes, 42 secondsquery the plan with the user ID and return because we are basically passing the
4:33:504 hours, 33 minutes, 50 secondsuser ID in here. You can see in the lead variable then we can say period start
4:34:004 hours, 34 minutesand we can insert the data right now inside our payment invoices table. Now it looks a
4:34:094 hours, 34 minutes, 9 secondsbit bigger. You can see this db.insert the payment invoices. These are the values like the stripe customer ID,
4:34:174 hours, 34 minutes, 17 secondssubscription ID, invoice ID, the status, the currency, amount due, amount paid, the invoice URL very very important, the
4:34:254 hours, 34 minutes, 25 secondsPDF URL, the period start, period end, and everything. And for the conflicting, we are just updating the
4:34:344 hours, 34 minutes, 34 secondslike we're updating the invoice from here. Yeah, that's it. We can save it.
4:34:414 hours, 34 minutes, 41 secondsAnd inside here, uh, one thing we didn't do that's the list invoices. So, let's finish this
4:34:494 hours, 34 minutes, 49 secondslist invoices as well because everything is done done except this one. So, list invoices, it's nothing. It just like an
4:34:564 hours, 34 minutes, 56 secondsquery for all of the invoices. Something like this. You can see we are saying this. DB. the from payment invoices the
4:35:054 hours, 35 minutes, 5 secondsperiod created add status currency amount paid amount due the invoice URL and the invoice PDF now user ID we have
4:35:154 hours, 35 minutes, 15 secondsto receive it in here which is going to be string and let's import the descending from drizzle OM so this is basically the
4:35:234 hours, 35 minutes, 23 secondsorder spy and we're adding it a limit of 20 at once and then we can add the plan
4:35:314 hours, 35 minutes, 31 secondsrows 20 is a lot definitely See, there are not going to be 20s at the first [snorts] time. Plan row. This is for the
4:35:384 hours, 35 minutes, 38 secondsplan for the logged in user. Then the plan name. And we're going to return all of these.
4:35:484 hours, 35 minutes, 48 secondsYeah. And we can save it. We can come back here.
4:35:554 hours, 35 minutes, 55 secondsYeah, that's it. Ready. Actually, everything is ready in here now. It's quite big though. There's a lot of APIs
4:36:024 hours, 36 minutes, 2 secondsthat's why and there are some repetitive things I admit but fine for the version one don't worry a lot just ship the
4:36:124 hours, 36 minutes, 12 secondsproduct focus in the core mechanism like we did we focused like more in into our like transcoding system or video
4:36:214 hours, 36 minutes, 21 secondsprocessing system or like the orchestrations definitely you don't know how did I make the orchestration because I did that by myself in one minute cloud
4:36:294 hours, 36 minutes, 29 secondsbut those are like the core things and we should give more focus on that and after getting traction in our product we can give more focus into these things.
4:36:394 hours, 36 minutes, 39 secondsYeah. So that's it already. Let's come back in our billing controller and let's
4:36:464 hours, 36 minutes, 46 secondsadd all of these APIs. So controller and billing and billing controller.
4:37:024 hours, 37 minutes, 2 secondsLet's call the billing service.
4:37:054 hours, 37 minutes, 5 secondsWe need the current plan for the login user which we're
4:37:134 hours, 37 minutes, 13 secondsgoing to use inside our dashboard sidebar and so many places actually.
4:37:194 hours, 37 minutes, 19 secondsSo let's import everything request from necess the checkout another important one.
4:37:314 hours, 37 minutes, 31 secondsSo check out and body like this. Then the portal.
4:37:384 hours, 37 minutes, 38 secondsSo portal for getting access to the portal. Then the invoices for getting all the invoices for the payments. And
4:37:464 hours, 37 minutes, 46 secondsthe last one, the final one is for the web hook stripe.
4:37:514 hours, 37 minutes, 51 secondsSo headers headers/ common stripe signature it's going to receive and we're like forwarding it to our handlestrap web hook. That's it.
4:38:014 hours, 38 minutes, 1 secondThat's about the billing controller. All looks good. But I think we have to update the envir
4:38:134 hours, 38 minutes, 13 secondsthat stripe login. I'm not doing it because I'm already logged in into Stripe. After doing this, you have to press enter and you have to give permission from the Stripe dashboard.
4:38:224 hours, 38 minutes, 22 secondsJust give permission and do login. After doing login, just write this comment that stripe listen forward to http
4:38:304 hours, 38 minutes, 30 secondslocalhost at80/Iv1/billing/ our this webbook/stripe
4:38:394 hours, 38 minutes, 39 secondsthis endpoint this endpoint and press enter. After pressing uh after pressing enter you can
4:38:464 hours, 38 minutes, 46 secondssee your web hook signing secret key just so just copy this go to the env and for this web hook secret or what is the
4:38:564 hours, 38 minutes, 56 secondsname so stripe web hook secret make sure to paste the value for this variable from
4:39:034 hours, 39 minutes, 3 secondshere okay it's just going to be the same and turn it on this one turn it on this is the local web hook listener without
4:39:104 hours, 39 minutes, 10 secondsthis stripe web hook will not work for you for the development mode. Yeah. So, let me take it to another screen and let
4:39:184 hours, 39 minutes, 18 secondsme add everything into the env because it's a bit secret thing and I don't want to show you the env.
4:39:344 hours, 39 minutes, 34 secondsYep. All good.
4:39:434 hours, 39 minutes, 43 secondsNow let's come back here again. Still no problem at all. Let's call here our
4:39:494 hours, 39 minutes, 49 secondsbilling controller and the billing service.
4:40:014 hours, 40 minutes, 1 secondYeah. So, billing controller and billing service.
4:40:054 hours, 40 minutes, 5 secondsNow, let's come back to our app module and add the billing module in here. We
4:40:124 hours, 40 minutes, 12 secondscan save it. Yeah, there's no error. So, everything is good. Now, let's come back to our billing page.tsx because we can
4:40:214 hours, 40 minutes, 21 secondsright now make it dynamic. We don't need this billing cycle or anything like this.
4:40:274 hours, 40 minutes, 27 secondsYeah. So let's make our billing page dynamic. Now at first we have to fetch our
4:40:354 hours, 40 minutes, 35 secondsuser plan like the current user plan. So let's add here this use query function
4:40:484 hours, 40 minutes, 48 secondslike this get token. It's actually coming from here. Ano from
4:40:574 hours, 40 minutes, 57 secondsour use um o hook from cl nextjs.
4:41:064 hours, 41 minutes, 6 secondsYeah, all good. And is signed in it's also from I think here. Yeah, that's it.
4:41:134 hours, 41 minutes, 13 secondsSo we are basically fetching our current plan for the logged in user billing/curren and then we're caching it into this
4:41:214 hours, 41 minutes, 21 secondsquery key. Then we're having the current plan in here. The user current plan
4:41:294 hours, 41 minutes, 29 secondslike current plan. Now uh transactions we don't need. So let's delete. Next billing cycle we don't need.
4:41:384 hours, 41 minutes, 38 secondsWe need another function for our checkout. So we can say con
4:41:444 hours, 41 minutes, 44 secondsstart check out async it's going to receive the plan which is going to be string
4:41:544 hours, 41 minutes, 54 secondsthen con token await
4:42:014 hours, 42 minutes, 1 secondget token now con race await fetch
4:42:114 hours, 42 minutes, 11 secondsprocess.v dot next public server uri / billing slashch checkout.
4:42:224 hours, 42 minutes, 22 secondsYeah. And method is going to be post.
4:42:294 hours, 42 minutes, 29 secondsLet's pass the headers like the authorization token and
4:42:354 hours, 42 minutes, 35 secondsour content type and accept. It's just going to accept the application/json. Then pass the plan into body stringify.
4:42:454 hours, 42 minutes, 45 secondsThis is basically for the checkout. Yeah. After this we will get our data
4:42:534 hours, 42 minutes, 53 secondsand if there is no response. Okay. Next check out failed. If there is URL in the data then we're going to redirect the
4:43:014 hours, 43 minutes, 1 seconduser to that like check out URL the payment link basically.
4:43:074 hours, 43 minutes, 7 secondsNow here we need another function for opening the portal for the payment portal.
4:43:164 hours, 43 minutes, 16 secondsYeah.
4:43:204 hours, 43 minutes, 20 secondsAnd we also need that get token in here because we're going to send here API request to our billing/portal endpoint.
4:43:294 hours, 43 minutes, 29 secondsAnd we just have to pass actually nothing. We're just passing the authorization token. Then it will like let the back end know that which user is
4:43:384 hours, 43 minutes, 38 secondsthis. And then like the back end can send on portal link for that logged in user. Here same the data. If no response
4:43:474 hours, 43 minutes, 47 secondsokay then return an error. If there is an URL in the data then redirect user to that URL. Yeah.
4:43:554 hours, 43 minutes, 55 secondsUh now another use query we need to make this is important. This is for the invoices the all payment invoices
4:44:024 hours, 44 minutes, 2 secondssomething like this. Then we can make variable that yeah this is our payment invoices.
4:44:114 hours, 44 minutes, 11 secondsNow we need an small utility function for formatting the invoice date and another one for formatting the invoice
4:44:204 hours, 44 minutes, 20 secondsamount. Yeah, in here we can say is loaded or is sign in or is loading true.
4:44:284 hours, 44 minutes, 28 secondsThese are false and return null.
4:44:324 hours, 44 minutes, 32 secondsIf we save it, there will be some error because in here uh one minute in this one click.
4:44:404 hours, 44 minutes, 40 secondsLet's call our open portal.
4:44:484 hours, 44 minutes, 48 secondsYeah, that's it. And if we scroll down, all good.
4:44:574 hours, 44 minutes, 57 secondsJust here for the transactions.
4:45:024 hours, 45 minutes, 2 secondsLet's change it to invoices and dot map
4:45:104 hours, 45 minutes, 10 secondslet's say invid x all good. So here idx good. We have to
4:45:184 hours, 45 minutes, 18 secondscall our format uh invoice date and let's pass the invoice date inside this.
4:45:274 hours, 45 minutes, 27 secondsYeah.
4:45:294 hours, 45 minutes, 29 secondsIn here, let's add here capitalize because this is for the plan.
4:45:374 hours, 45 minutes, 37 secondsWe can add the invoice dot plan or free.
4:45:464 hours, 45 minutes, 46 secondsHere the amount and then the currency. very very
4:45:544 hours, 45 minutes, 54 secondsimportant the currency.
4:46:004 hours, 46 minutesNow here we can say status lower. So basically it's something like this.
4:46:064 hours, 46 minutes, 6 secondsLet's come back here and let's return
4:46:174 hours, 46 minutes, 17 secondseverything and add an first bracket. Yeah. So then before the return we can add our invoice
4:46:264 hours, 46 minutes, 26 secondsstatus status lower like the lower case and download URL for the status. Yeah. Now let's come
4:46:354 hours, 46 minutes, 35 secondsback here and here we can say our status
4:46:424 hours, 46 minutes, 42 secondslower if it's paid then this otherwise this same uh here we can say only status
4:46:524 hours, 46 minutes, 52 secondsif status is available then status dot char at
4:46:594 hours, 46 minutes, 59 secondsthe first index yeah dot two upper paste plus status dot slice.
4:47:114 hours, 47 minutes, 11 secondsYeah.
4:47:134 hours, 47 minutes, 13 secondsOtherwise on iPhone.
4:47:174 hours, 47 minutes, 17 secondsYeah. For the download, this is very very important. This on click before one click. Let's add here and disabled. If
4:47:264 hours, 47 minutes, 26 secondsthere is no download URL then disabled.
4:47:324 hours, 47 minutes, 32 secondsIf there is download URL
4:47:384 hours, 47 minutes, 38 secondssorry no download URL then return otherwise window dot open
4:47:474 hours, 47 minutes, 47 secondsthe download URL target blank in here and
4:47:564 hours, 47 minutes, 56 secondsno opener and No referer.
4:48:064 hours, 48 minutes, 6 secondsRefer no refer E. Sorry, here will be another error.
4:48:144 hours, 48 minutes, 14 secondsYeah, for the class name all good, but let's make it dynamic
4:48:244 hours, 48 minutes, 24 secondslike no. If there is no download URL
4:48:334 hours, 48 minutes, 33 secondsthen opacity 50 and cursor
4:48:424 hours, 48 minutes, 42 secondsnot allowed. Yeah, otherwise empty string.
4:48:464 hours, 48 minutes, 46 secondsWe can save it. If you come back here, you will see that we already have here unpayment because we actually did the
4:48:544 hours, 48 minutes, 54 secondspayment. That's why the amount it's not showing the amount. Okay, there's something wrong. Let me see why.
4:49:034 hours, 49 minutes, 3 secondsSo amount is not working somehow.
4:49:124 hours, 49 minutes, 12 secondsInvoice amount. Uh the reason is we have to call here our format invoice amount
4:49:194 hours, 49 minutes, 19 secondsfunction. Yeah, very very important. Now you can see it's looking actually perfect. The amount is in here.
4:49:284 hours, 49 minutes, 28 secondsAnd this one is not perfect yet because the payment card
4:49:354 hours, 49 minutes, 35 secondsinside here we need to do actually some work. Now
4:49:424 hours, 49 minutes, 42 secondslike is current is current. Uh okay then
4:49:504 hours, 49 minutes, 50 secondshere all good but I think let me see one by one.
4:49:594 hours, 49 minutes, 59 secondsUh yeah so payment card is not bad. So I think we have to change from here.
4:50:064 hours, 50 minutes, 6 secondsYeah for the free plan all good.
4:50:134 hours, 50 minutes, 13 secondsjust is current here. If the current plan equals to starter
4:50:204 hours, 50 minutes, 20 secondsthen one click the start check out
4:50:294 hours, 50 minutes, 29 secondsand starter. Yeah. So just copy this come back to the pro card
4:50:364 hours, 50 minutes, 36 secondsand after this price let's add it in here for the pro plan.
4:50:464 hours, 50 minutes, 46 secondsSorry, it's actually going to be starter. I don't know why it's row here. Starter plan.
4:50:564 hours, 50 minutes, 56 secondsAnd here then it's going to be free and we don't need the one click at all because it's a free plan
4:51:034 hours, 51 minutes, 3 secondshere. It's already good for the starter plan. for the pro plan.
4:51:134 hours, 51 minutes, 13 secondsLet's change it to pro. And same in here for the business plan.
4:51:234 hours, 51 minutes, 23 secondsCopy that and change it to business.
4:51:314 hours, 51 minutes, 31 secondsYep. And we can save it.
4:51:364 hours, 51 minutes, 36 secondsNow let's come back here. Here you can see current plan is starter and this is the free plan. For the free plan you
4:51:434 hours, 51 minutes, 43 secondscannot like downgrade from pro to free because it's logically impossible. So that's why in here we have to change a little bit.
4:51:534 hours, 51 minutes, 53 secondsUh so we can say is current and type of one click
4:52:024 hours, 52 minutes, 2 secondsis a function then only do this. So then you can see
4:52:104 hours, 52 minutes, 10 secondshere it's no it's not showing any select plan because you cannot logically downgrade to free from starter. It's
4:52:184 hours, 52 minutes, 18 secondslike not possible logically. So that's why we don't need that in here. Yeah. If I click open Stripe portal,
4:52:254 hours, 52 minutes, 25 secondsyou can see it's actually redirecting us to the billing Stripe portal for you. It will probably not do or it will I think
4:52:334 hours, 52 minutes, 33 secondsit will do. And if you click this select a plan, then you will see that it's redirecting us to stripe checkout. Just
4:52:414 hours, 52 minutes, 41 secondsuse your testing stripe card like 424242 and date something like this and this
4:52:494 hours, 52 minutes, 49 secondsand like any name card holder name and then hit subscribe. Then from here you will notice that this will actually
4:52:564 hours, 52 minutes, 56 secondscreate on payment session and like everything will be work for you like this. But since I'm already subscribed to the starter that's why I'm not doing it again.
4:53:064 hours, 53 minutes, 6 secondsUh yeah, I could definitely change it to pro, but fine, I don't need to do it now. So wall is uh wall is working. Even
4:53:144 hours, 53 minutes, 14 secondsif I click this download, you can see this is the invoice for the payment. Let's try invoice. All
4:53:224 hours, 53 minutes, 22 secondslooks perfectly great. Yeah, that's it. Now what next? Here everything is okay. Here it's not good.
4:53:324 hours, 53 minutes, 32 secondsLet's change it. Let's make the sidebar dynamic. Now since we have like dynamic plans so we can easily do it. We just
4:53:404 hours, 53 minutes, 40 secondsneed to copy this one actually these lines. Now let's come back to our
4:53:484 hours, 53 minutes, 48 secondspage.tsx sorry layout.tsx and sidebar. Go inside here.
4:53:574 hours, 53 minutes, 57 secondsLet's paste the copied thing what we have copied
4:54:044 hours, 54 minutes, 4 secondsand we can say when the is loading is true then return null and now the current plan.
4:54:164 hours, 54 minutes, 16 secondsLet's look for the free.
4:54:214 hours, 54 minutes, 21 secondsYeah. So change it to current plan and capitalize. So if we save it and here you go. You can see
4:54:294 hours, 54 minutes, 29 secondsit's showing already starter. So it's working even if we give on reload. Yep. Everything is perfect for us.
4:54:394 hours, 54 minutes, 39 secondsSo everything is actually working.
4:54:424 hours, 54 minutes, 42 secondsAnalytics working our last seven days or even last 14 days. Then the my videos,
4:54:514 hours, 54 minutes, 51 secondsthe playlists, the player settings and watermark branding which things are just left which we will do and after that actually
4:55:004 hours, 55 minuteseverything will be done for us because docs and support center for version one support center should be just the email
4:55:074 hours, 55 minutes, 7 secondssupport and for documentation I just need to make it by myself and I I don't think I need to show this to you because that's going to be completely static
4:55:164 hours, 55 minutes, 16 secondslike how can you use feedm box it just that it's nothing special or anything like internal things. So yeah uh player
4:55:254 hours, 55 minutes, 25 secondssettings definitely there will be not lot of player settings like this we will reduce it because end of the day our player doesn't have all of these
4:55:334 hours, 55 minutes, 33 secondsfeatures that's why so fine we will do it right now let's do it right now but before starting the player customization
Chapter 10: Adding the Player Access Guard
4:55:414 hours, 55 minutes, 41 secondsfeatures we have to actually do one more thing which I forgot and very very important that is our billingard so we
4:55:494 hours, 55 minutes, 49 secondshave to make our billingard so let's close everything come Back inside our services inside these girds. Let's
4:55:594 hours, 55 minutes, 59 secondscreate our billing [clears throat] guard.ts.
4:56:034 hours, 56 minutes, 3 secondsYeah, actually not billing. It should be actually player guard, not the billingard.
4:56:104 hours, 56 minutes, 10 secondsSo we can say player.gard.ts.
4:56:164 hours, 56 minutes, 16 secondsYeah. And inside here, let's add the injectable from next common.
4:56:244 hours, 56 minutes, 24 secondsThen create our player guard class with this can activate from this
4:56:314 hours, 56 minutes, 31 secondsjs common. Let's add our constructor here like that result db
4:56:394 hours, 56 minutes, 39 secondsand radius client. We need our database and radius access in here.
4:56:474 hours, 56 minutes, 47 secondsSo radius and schema import
4:56:544 hours, 56 minutes, 54 secondseverything as schema from our database and schema. Yeah. Now after
4:57:034 hours, 57 minutes, 3 secondsthis we can add on private module for resolving the
4:57:114 hours, 57 minutes, 11 secondsplan something like this where which will
4:57:184 hours, 57 minutes, 18 secondsreceive user ID which type is going to be string it's going to return a promise
4:57:274 hours, 57 minutes, 27 secondsand type is going to be the cached plan after this Actually,
4:57:354 hours, 57 minutes, 35 secondslet's add the main one that async can activate uh context
4:57:444 hours, 57 minutes, 44 secondstype fine. And here it's going to basically return a promise
4:57:514 hours, 57 minutes, 51 secondswhich will be boolean. Yeah. And then we can delete it like true or false. Now here we need the request.
4:58:004 hours, 58 minutesSo we can say context dot switch to http dot get request
4:58:084 hours, 58 minutes, 8 secondsand we will have our user id in here from like our other guard.
4:58:144 hours, 58 minutes, 14 secondsIf there is no user ID then unauthorized then we need right now our plan which we will get from the resolve plan.
4:58:244 hours, 58 minutes, 24 secondsSo in this resolve plan let's finish it now.
4:58:294 hours, 58 minutes, 29 secondsAt first we need to check from the cache with the lu key that plan and the user ID
4:58:384 hours, 58 minutes, 38 secondsand if there is any cache available then we're going to return it otherwise we have to check from radius. So it's kind of like the
4:58:464 hours, 58 minutes, 46 secondssame with our upload card. You can notice here the result plan and resolve uses already here. So we can even copy
4:58:544 hours, 58 minutes, 54 secondsthis or uh we can do one more thing
4:59:024 hours, 59 minutes, 2 secondsactually we could also export it from here but it's private module so that's why even if you export it's not going to work okay fine then let's copy paste
4:59:114 hours, 59 minutes, 11 secondsthat's also good just copy paste it
4:59:184 hours, 59 minutes, 18 secondssomething like this now here This is for resolving the plan.
4:59:294 hours, 59 minutes, 29 secondsWe need the plan radius key, the plan radius TTL second, the
4:59:374 hours, 59 minutes, 37 secondsnormalized plant here, the EQ from diesel
4:59:424 hours, 59 minutes, 42 secondsand here the cached uses uses cache uses radius key.
4:59:514 hours, 59 minutes, 51 secondsYep. and the plant here.
4:59:544 hours, 59 minutes, 54 secondsYeah, that's it already. So, it's basically for fetching our like the plan and the usage informations.
5:00:035 hours, 3 secondsSo, we can add that line in here that uses and now we need the effective minutes limit like how many minutes the
5:00:125 hours, 12 secondsusers still have. So uses dot minutes streamed limit then uses dot minute stream limit and plan defaults otherwise
5:00:195 hours, 19 secondsplan defaults domin. Now the streamed seconds like how much already streaming done and the limit seconds
5:00:295 hours, 29 secondswe can like make the minute to seconds we can transfer uh it to seconds. Now we can write the logic that if the limit
5:00:365 hours, 36 secondsseconds is more than zero and stream second is uh more uh sorry less equals to the limit seconds then we can throw
5:00:435 hours, 43 secondsan error that you have reached your streaming minute limit for your current plan. Please upgrade your Vidmax plan to
5:00:495 hours, 49 secondscontinue watching. Yeah. And finally we can return true.
5:00:575 hours, 57 secondsAnd here you go. Our guard is actually ready. So it is not quite big. It's very simple girth but it's very very powerful
5:01:045 hours, 1 minute, 4 secondsand very very important. Now since we have completed the gert we have to add it somewhere where we can add it we have
5:01:115 hours, 1 minute, 11 secondsto add it inside our player controller when the users are requesting for a
5:01:185 hours, 1 minute, 18 secondsvideo that time we're going to use it so that like we can prevent it from any
5:01:245 hours, 1 minute, 24 secondsunauthorized access. So here after the cler of guard we can add the player guard. Yeah something like this.
5:01:365 hours, 1 minute, 36 secondsThen we can save it and you can see no issue at all. Everything is good. Yep.
5:01:435 hours, 1 minute, 43 secondsSo player guard is also ready. One thing 1 minute player guard just this one we don't need to import.
5:01:535 hours, 1 minute, 53 secondsYeah. Yep. All done. So player guard is also ready. Everything is good. Now let's come back into playlist. Sorry,
5:02:015 hours, 2 minutes, 1 secondnot playlist, player settings and let's work in here. All right. So let's start from our backend site. So because we
Chapter 11: Player Customization Features
5:02:105 hours, 2 minutes, 10 secondsshould start from the back end part, we have to actually make two modules. uh
5:02:175 hours, 2 minutes, 17 secondsone for fetching the like playlist sorry playback uh the configuration other one is for updating it. So first of all
5:02:265 hours, 2 minutes, 26 secondslet's make on type for our video player. So we can say player settings.
5:02:365 hours, 2 minutes, 36 secondsThere will be on primary color for the timeline which type is going to be string. There will be font family for the video player.
5:02:475 hours, 2 minutes, 47 secondsWe can say string. There is captions
5:02:545 hours, 2 minutes, 54 secondsand styling for captions like font color
5:03:015 hours, 3 minutes, 1 seconduh string then background color which is also going to be string.
5:03:115 hours, 3 minutes, 11 secondsfont size which is going to be number and play button.
5:03:265 hours, 3 minutes, 26 secondsHere we're going to add a preset which is going to be classic or
5:03:365 hours, 3 minutes, 36 secondsminimal or the block one.
5:03:415 hours, 3 minutes, 41 secondsSo these are like the basic setup. We're definitely not adding very like highlevel player customization feature
5:03:485 hours, 3 minutes, 48 secondsfor the version one but it's definitely good enough for like matching with your brand and it's really good enough for
5:03:555 hours, 3 minutes, 55 secondslike anyone who want to match the video player with their website branding. Uh now we need to set on default value for
5:04:045 hours, 4 minutes, 4 secondsall of these something like this default player settings. So this is the primary color font family by default is Rubik
5:04:115 hours, 4 minutes, 11 secondscaptions font color background color this font size this play button preset classic by default. Yeah.
5:04:215 hours, 4 minutes, 21 secondsUh and definitely we're going to cache these settings otherwise like every time when
5:04:285 hours, 4 minutes, 28 secondsthey're requesting it we never should fetch it again and again which is definitely bad practice. So we're going
5:04:345 hours, 4 minutes, 34 secondsto cache this into lu. Yeah. And we need some helper function for this. First of
5:04:435 hours, 4 minutes, 43 secondsall the is this hex edit single color like h color the type of value is not string then return false otherwise just
5:04:515 hours, 4 minutes, 51 secondsuse on redex pattern and test it that is this hex color or not. Then sanitize the font family is the font family is valid or not. Then the final one which is
5:05:015 hours, 5 minutes, 1 secondquite big. This is for the sanitizing the settings. Is the settings valid or not? And player settings.
5:05:095 hours, 5 minutes, 9 secondsIt's going to actually return the player settings. So we can make an simple variable here with the type player
5:05:155 hours, 5 minutes, 15 secondssettings. And if there is hex color then put primary color. It's going to be something like this. Let's set the value
5:05:245 hours, 5 minutes, 24 secondsfor the font family. Also same for our captions. Let's set the styling for the captions something like this.
5:05:375 hours, 5 minutes, 37 secondsAnd then the for the preset like the playback icons. Let's change it to something like this. Then we can return
5:05:455 hours, 5 minutes, 45 secondsthe out. Yeah. And finally another function which is for merging these
5:05:535 hours, 5 minutes, 53 secondssettings. So we can say function merge settings
5:06:005 hours, 6 minutesand inside here we can return all of these like the base, the override, the captions and the play button.
5:06:095 hours, 6 minutes, 9 secondsYeah, that's it. Now our most of the work is done. Let's scroll down
5:06:165 hours, 6 minutes, 16 secondsand here our get player settings module something like this. If there is cached
5:06:245 hours, 6 minutes, 24 secondsvalue available then show us the cached value return it otherwise we have to do
5:06:315 hours, 6 minutes, 31 secondsan query. So do an query player meta data uh yeah because we have to create this
5:06:395 hours, 6 minutes, 39 secondsinside our database schema. So let's scroll down and export con player meta
5:06:485 hours, 6 minutes, 48 secondsdata and inside here we can create
5:06:535 hours, 6 minutes, 53 secondson postresq table something like this and uh there will be user ID because
5:07:025 hours, 7 minutes, 2 secondsit's like unique based on user ID and uh let's add unique in here one user
5:07:115 hours, 7 minutes, 11 secondscannot have multiple flare configuration and the final one the important one the
5:07:175 hours, 7 minutes, 17 secondssettings which is basically on JSON bite you can see settings and the primary color font family captions and
5:07:265 hours, 7 minutes, 26 secondseverything in here by default it's an empty object and created add and updated ad
5:07:345 hours, 7 minutes, 34 secondsyeah that's it we can save it
5:07:395 hours, 7 minutes, 39 secondswe and rebuild our database. npm run
5:07:465 hours, 7 minutes, 46 secondsdb not push but generate.
5:07:535 hours, 7 minutes, 53 secondsYeah.
5:07:565 hours, 7 minutes, 56 secondsAnd next one is going to be push.
5:08:035 hours, 8 minutes, 3 secondsYeah. Done. Let's come back here. Let's import it now. After the record,
5:08:125 hours, 8 minutes, 12 secondslet's add our settings and return the merge settings. Yeah, something like this.
5:08:195 hours, 8 minutes, 19 secondsThat's it. Our get player settings is ready. Now, next one is for updating the player settings.
5:08:265 hours, 8 minutes, 26 secondsSo, updating player settings. Something like this.
5:08:305 hours, 8 minutes, 30 secondsWe have to sanitize the input and the settings and then we have to update our database with the new value something like this.
5:08:445 hours, 8 minutes, 44 secondsThen we can return the new settings. Yeah, we can save it.
5:08:535 hours, 8 minutes, 53 secondsLet's come back to our controller and let's add this in our controller. It's also going to be very small.
5:09:015 hours, 9 minutes, 1 secondSomething like this. One for getting the settings. Another one for
5:09:085 hours, 9 minutes, 8 secondsour our like updating the player settings.
5:09:125 hours, 9 minutes, 12 secondsThat's it. We can save it. We can come back here in our player settings because we're going to right now delete few things from here. And before that I
5:09:225 hours, 9 minutes, 22 secondsthink we should change the SDK because that's the most important thing we have to change because right now it's static but we have to make it dynamic and even
5:09:315 hours, 9 minutes, 31 secondswe have to change few things in this handle process request because the request will go through this uh way.
5:09:405 hours, 9 minutes, 40 secondsSo let's change it from here first uh from here from the services
5:09:505 hours, 9 minutes, 50 secondsif the kind is actually settings. So we can do one thing
5:09:585 hours, 9 minutes, 58 secondsbefore this kind event. We can say if the kind equals to settings
5:10:065 hours, 10 minutes, 6 secondsthe kind equals to settings and if the action is
5:10:155 hours, 10 minutes, 15 secondsupdate then we have to update the playlist right? Sorry, not playlist player. We
5:10:235 hours, 10 minutes, 23 secondshave to update the player with the new configuration with the new data. So we can say payload from a request.json
5:10:305 hours, 10 minutes, 30 secondsand the payload must uh need to be like if it's not in object or if there is not any payload then it's not like the
5:10:375 hours, 10 minutes, 37 secondscorrect value and after that when everything is okay we're sending it to here player settings with our o headers
5:10:455 hours, 10 minutes, 45 secondsand everything and then we're updating it. Uh one thing I would like to again check the gu. So yeah we already have
5:10:545 hours, 10 minutes, 54 secondsthe clerk guard and player gu. Very good. Then after this
5:11:005 hours, 11 minutesuh after the body and everything we can return the response or if there any error we can return the error in here.
5:11:125 hours, 11 minutes, 12 secondsYep.
5:11:145 hours, 11 minutes, 14 secondsNow we need our settings. We need the like configurations for the settings like the we have to fetch the player settings.
5:11:245 hours, 11 minutes, 24 secondsThat's why we're outside from this action update and we're just fetching it and then we will return it.
5:11:335 hours, 11 minutes, 33 secondsYeah, something like this. That's it. Uh otherwise everything is going to be same. We don't need to do anything else
5:11:395 hours, 11 minutes, 39 secondsin here. It's fully okay. Let's come back to the main file. This is our React
5:11:475 hours, 11 minutes, 47 secondsindex.tsx here because we're going to change it a lot now because everything is right now going to be dynamic especially in this is styling.
5:11:575 hours, 11 minutes, 57 secondsSo first of all scroll down and in here
5:12:065 hours, 12 minutes, 6 secondsactually after the send analytics after the fetch video data after the video tracking. Yep.
5:12:165 hours, 12 minutes, 16 secondsHere we can add our player settings which is basically coming from the video data player settings. Same for the primary color.
5:12:255 hours, 12 minutes, 25 secondsSame for the font family. Same for caption color.
5:12:315 hours, 12 minutes, 31 secondsSame for caption BG, caption size
5:12:385 hours, 12 minutes, 38 secondsand our the play preset. Yeah, like this. And we need to make on like
5:12:475 hours, 12 minutes, 47 secondsby default uh sorry I think here yeah use [snorts]
5:12:575 hours, 12 minutes, 57 secondsmemo hook in here why so we we want to like set on player style by default and since we're using use memo so that it
5:13:045 hours, 13 minutes, 4 secondswill like not call it multiple time and you know why we use use memo it's really very good for this type of library and style let's say any type.
5:13:175 hours, 13 minutes, 17 secondsNow here we're going to use some like variable let's say VMX primary which value is going to be the primary
5:13:255 hours, 13 minutes, 25 secondscolor. Yeah. Then VMS caption color the caption color the caption BG the caption BG and caption size the caption size.
5:13:375 hours, 13 minutes, 37 secondsIf the font family is string and font family is
5:13:445 hours, 13 minutes, 44 secondsnot empty then change the style font family with this font family and then finally return the style this dependency
5:13:525 hours, 13 minutes, 52 secondsarray add the primary color caption color caption bg caption size and font family.
5:14:035 hours, 14 minutes, 3 secondsYeah. Now we need the layout icons.
5:14:085 hours, 14 minutes, 8 secondsSo layout icons because this is right now going to be a little bit different layout icons. Let's again use your use memo.
5:14:185 hours, 14 minutes, 18 secondsSo use memo uh inside here if the play preset is
5:14:295 hours, 14 minutes, 29 secondsminimal then uh 1 minute why it's giving error. Okay, because you have to return something
5:14:365 hours, 14 minutes, 36 secondsthat's why it's on call back. Uh if the play preset is minimal then return the default icons. If the play preset is
5:14:455 hours, 14 minutes, 45 secondsblock, then change the icons. Like for the play, we're going to use this Vidmox play block icon. Now, Vidmox play block icon is actually a new icon.
5:14:575 hours, 14 minutes, 57 secondsAnd let me add this inside our icons folder.
5:15:025 hours, 15 minutes, 2 secondsThe play block icon, pause block icon, and pause icon.
5:15:095 hours, 15 minutes, 9 secondsYeah. So let me add that in here at the end. Something like this. Now we can actually import it.
5:15:215 hours, 15 minutes, 21 secondsYeah.
5:15:235 hours, 15 minutes, 23 secondsNow after this here we can finish and return the vidmox icons.
5:15:355 hours, 15 minutes, 35 secondsAnd in here uh I think I did some syntax mistake.
5:15:425 hours, 15 minutes, 42 secondsUh yeah and here actually need a comma. Yep.
5:15:485 hours, 15 minutes, 48 secondsAll good. Now just we have to add the play preset in the dependency area.
5:15:525 hours, 15 minutes, 52 secondsYeah. Now we can save it and we can scroll down. We already did a lot of thing in here.
5:16:025 hours, 16 minutes, 2 secondsNow let's change everything from here for an example
5:16:095 hours, 16 minutes, 9 secondsin the uh media provider
5:16:185 hours, 16 minutes, 18 secondsor one minute. Everything looks good in here.
5:16:245 hours, 16 minutes, 24 secondsLayout icons here. It should be actually layout icons. Yeah.
5:16:315 hours, 16 minutes, 31 secondsAnd so layouts icons ready. And we need another one. We need to use our player style.
5:16:445 hours, 16 minutes, 44 secondsYep. So player style which is going to be in uh here
5:16:515 hours, 16 minutes, 51 secondsafter the source we can add style and we can call our player style. Yeah,
5:17:005 hours, 17 minutesthat's it. Then we can come back here again and we can check few things from our this styling because right now it's going to be definitely different as CSS.
5:17:115 hours, 17 minutes, 11 secondsSo check from the beginning one by one.
5:17:155 hours, 17 minutes, 15 secondsUh here everything is good. here nothing is good because in here right
5:17:215 hours, 17 minutes, 21 secondsnow we have to change it from uh actually let's cut this and let's add
5:17:295 hours, 17 minutes, 29 secondsour variable that vx caption bg and then add our that rgb yeah yeah
5:17:385 hours, 17 minutes, 38 secondsand important this is good now here also let's cut this
5:17:455 hours, 17 minutes, 45 secondslet's add that MV and VMX caption
5:17:535 hours, 17 minutes, 53 secondscolor and white then important. Yep. Font size
5:18:005 hours, 18 minutesthis one. Let's delete this and say where VMX
5:18:085 hours, 18 minutes, 8 secondscaption size and 18 pixel. Yeah. Font width, line height, everything good. Everything
5:18:175 hours, 18 minutes, 17 secondsgood. Just text shadow. This is also good.
5:18:215 hours, 18 minutes, 21 secondsNow for the data layer video, data layout video here. Media brand. This is going to be different.
5:18:305 hours, 18 minutes, 30 secondsHere we have to use our VMX primary
5:18:375 hours, 18 minutes, 37 secondswhere and the other code is going to be I mean the like valve 82 FC something
5:18:435 hours, 18 minutes, 43 secondslike this. Now for our track fill BG it's going to be something like this
5:18:545 hours, 18 minutes, 54 secondsprogress BG and yeah otherwise everything is fine
5:19:015 hours, 19 minutes, 1 secondhere also but here it's not okay just change it to something like this that
5:19:075 hours, 19 minutes, 7 secondsmedia slider track BG here media slider track fill BG PG
5:19:165 hours, 19 minutes, 16 secondshere media slider track progress PG and for actually another new class.
5:19:295 hours, 19 minutes, 29 secondsLet's add this for our uh VDS time slider and video slider
5:19:385 hours, 19 minutes, 38 secondsprogress. We're adding this VDMS buffered color. Yep.
5:19:445 hours, 19 minutes, 44 secondsThen finally another one we have to add this is something like this
5:19:525 hours, 19 minutes, 52 secondsthe media player layout video this is the slider the chapter and the progress and this is going to be also the
5:19:585 hours, 19 minutes, 58 secondsbuffered one. Yep. Otherwise Vmox loader uh just the border top color is going to
5:20:055 hours, 20 minutes, 5 secondsbe different otherwise everything is good. Yeah we can save it. If we save it, nothing is changing.
5:20:175 hours, 20 minutes, 17 secondsBut uh in here, yep, everything is good. So our SDK work is done. We can come back here.
5:20:275 hours, 20 minutes, 27 secondsWe can give on build.
5:20:325 hours, 20 minutes, 32 secondsAnd if we come back here, here it's giving on warning, not an error. We can change it to something like this. But now
5:20:405 hours, 20 minutes, 40 secondsinside the player main page in here we have to do a lot of work.
5:20:505 hours, 20 minutes, 50 secondsFirst of all this preset colors we don't need the controls. So we can delete the controls. We're not having it. We're not
5:20:585 hours, 20 minutes, 58 secondseven having the languages. So we don't need that.
5:21:035 hours, 21 minutes, 3 secondsWe can delete the controls. The tole toggle control. Just delete it at first. Make the
5:21:125 hours, 21 minutes, 12 secondsstyling I mean delete which we don't need. Font level player UI language.
5:21:185 hours, 21 minutes, 18 secondsWe're not supporting multiple language the first version for sure. Like no one does that. So yeah. And player font
5:21:285 hours, 21 minutes, 28 secondssame. It's okay. Fine. We can definitely keep it. Primary colors. Okay. This is the mandatory one.
5:21:365 hours, 21 minutes, 36 secondsAnd then our caption appearance. Yeah, we're keeping it. This is for the subtitle like modification.
5:21:445 hours, 21 minutes, 44 secondsUh here. Yeah, we are skipping it. But we are changing it for sure.
5:21:515 hours, 21 minutes, 51 secondsWe will do that. Uh that's it. Nothing more like the player control. We can delete.
5:22:005 hours, 22 minutesYeah. So if we save it, you can see it's looking very bad. We have to take this player button icon to here. Then it will
5:22:085 hours, 22 minutes, 8 secondsbe fine. So we can do one thing. We can cut this div.
5:22:175 hours, 22 minutes, 17 secondsDelete this div. We don't need this is the wrapper. Yeah.
5:22:245 hours, 22 minutes, 24 secondsAfter this we can paste it. And for this div
5:22:315 hours, 22 minutes, 31 secondsit's going to be W full and we don't need any merging top.
5:22:405 hours, 22 minutes, 40 secondsYeah, let's save. Here we go.
5:22:435 hours, 22 minutes, 43 secondsNow it looks good. Save changes. When there is no changes, then the save changes will be not available. So we will definitely delete that. Yep. Now I
5:22:525 hours, 22 minutes, 52 secondsknow it the UI is not definitely looking very good or aesthetic but who cares?
5:22:575 hours, 22 minutes, 57 secondsVmox is not something like an users are using it. Developers are using it. So they definitely care more about future
5:23:055 hours, 23 minutes, 5 secondsand user experience like if they everything is good it's fine. They don't want to come here and say wow very
5:23:115 hours, 23 minutes, 11 secondsbeautiful UI. But most of them actually doesn't work. So when most of them don't work it's doesn't make any sense. So
5:23:195 hours, 23 minutes, 19 secondsthat's why if the UI is minimalistic but real, then it's better than those fake UI.
5:23:275 hours, 23 minutes, 27 secondsUh yeah, but in here we're not having this preset icons and upload SVG image.
5:23:325 hours, 23 minutes, 32 secondsDefinitely no. It's crazy over complicated. We should not use anything like that. We can just delete this toggle preset upload.
5:23:435 hours, 23 minutes, 43 secondsAnd then we can delete this one as well. Yeah, right. Makes sense.
5:23:535 hours, 23 minutes, 53 secondsNow let's do one thing. Let's start by fetching our
5:24:005 hours, 24 minutesplayer data. So we can do that. But first of all, let me start one by one.
5:24:095 hours, 24 minutes, 9 secondsHere it's good. All good. The font size by default going to be 18. The primary
5:24:165 hours, 24 minutes, 16 secondscolor it's going to be different. Now we need another
5:24:235 hours, 24 minutes, 23 secondsstate in here. Very very important that selected play icon. Set selected play icon. It's
5:24:315 hours, 24 minutes, 31 secondsalready was there but the value is different. Uh we need our is loading.
5:24:385 hours, 24 minutes, 38 secondsthen age saving and most important the initial
5:24:455 hours, 24 minutes, 45 secondspayload JSON and yeah we don't need this custom icon or anything like that. Yep, we can delete all of that
5:24:535 hours, 24 minutes, 53 secondsand we don't need then this upload options also we can delete. There is
5:25:025 hours, 25 minutes, 2 secondsstill some error. Where is the error? I think here.
5:25:075 hours, 25 minutes, 7 secondsuh level fine I think it's still here. Yeah, it's just a type error which is which makes
5:25:155 hours, 25 minutes, 15 secondssense. We will change it. Uh after this we need our user is loaded. Very very important to
5:25:235 hours, 25 minutes, 23 secondsprevent load this file before loading the user.
5:25:295 hours, 25 minutes, 29 secondsNow let's make an object for the payload.
5:25:335 hours, 25 minutes, 33 secondsWe can again use here the use memo something like this. Let's import use
5:25:415 hours, 25 minutes, 41 secondsmemo from react. This is going to be a callback and player settings
5:25:505 hours, 25 minutes, 50 secondswhich interface we can copy from our that SDK and we can add that in here.
5:25:595 hours, 25 minutes, 59 secondsPlayer settings. Yep.
5:26:025 hours, 26 minutes, 2 secondsAnd we don't need any of these icons. So let's delete all of them.
5:26:075 hours, 26 minutes, 7 secondsNow we can come back to down. And you can see these are the are the like bas like not basic the by default player
5:26:145 hours, 26 minutes, 14 secondssettings. After this we can say con payload JSON.
5:26:215 hours, 26 minutes, 21 secondsThe payload JSON we can again use the use memo and the payload we can pass it in here.
5:26:285 hours, 26 minutes, 28 secondsNow for the save button, we don't want to show the save button when there is no update. So
5:26:355 hours, 26 minutes, 35 secondsthat's why we are adding here another use memo that if there is no update then we will not show these save changes
5:26:425 hours, 26 minutes, 42 secondsagain and again because that doesn't make any sense. Now let's fetch the real
5:26:495 hours, 26 minutes, 49 secondsdata the our video player data from the back end.
5:26:595 hours, 26 minutes, 59 secondsWe can say let cancelled by default false and we can load our
5:27:085 hours, 27 minutes, 8 secondsplayer. So you async function load but set is loading true. Let's add a try
5:27:145 hours, 27 minutes, 14 secondscatch statement in the try conrace aid fetch slash API/bidmox
5:27:245 hours, 27 minutes, 24 secondsslash player kind settings
5:27:325 hours, 27 minutes, 32 secondsmethod is going to be post headers
5:27:415 hours, 27 minutes, 41 secondsexcept the application /json if response is not okay then
5:27:515 hours, 27 minutes, 51 secondsthrow the error message simple otherwise set the data to our
5:28:015 hours, 28 minutes, 1 secondall like use state hooks like this. So first we're normalizing it
5:28:085 hours, 28 minutes, 8 secondsand then secondly we are adding all of that into our states.
5:28:135 hours, 28 minutes, 13 secondsIf it's catch an error then console log
5:28:195 hours, 28 minutes, 19 secondserror and finally if the cancelled is false then set
5:28:285 hours, 28 minutes, 28 secondsloading false and finally we can load the function and we can return the call
5:28:355 hours, 28 minutes, 35 secondsback and we can make the cancel true true. That's it.
5:28:435 hours, 28 minutes, 43 secondsNow if there is is loaded false then return null. Great.
5:28:515 hours, 28 minutes, 51 secondsUh now what next?
5:28:555 hours, 28 minutes, 55 secondsHere we have to change it to this. Forgot it.
5:29:025 hours, 29 minutes, 2 secondsUh okay we will check it later.
5:29:055 hours, 29 minutes, 5 secondsPlayers appearance. Yep. Because when we will build a nextJS project, it will definitely give some error. You probably
5:29:135 hours, 29 minutes, 13 secondsknow this. We cannot use like single quotation.
5:29:185 hours, 29 minutes, 18 secondsUh fine. After this for the font family, let's make it dynamic.
5:29:245 hours, 29 minutes, 24 secondsFonts dom. Actually, it's all good though already. Primary colors, the preset colors.
5:29:345 hours, 29 minutes, 34 secondsPerfect.
5:29:375 hours, 29 minutes, 37 secondsAnd here for the color input we have to add on style
5:29:455 hours, 29 minutes, 45 secondsbackground color is going to be the primary color. Yeah.
5:29:555 hours, 29 minutes, 55 secondsAnd one change it's fine.
5:30:035 hours, 30 minutes, 3 secondsUh 1 minute color input actually no this one.
5:30:085 hours, 30 minutes, 8 secondsNo this is the hidden native color input. So we don't need Yep. This is the hex code input. So fine
5:30:175 hours, 30 minutes, 17 secondsthe change is actually in here in our preset option
5:30:245 hours, 30 minutes, 24 secondsbecause in here we have to say that level as
5:30:325 hours, 30 minutes, 32 secondsclassic or minimal
5:30:415 hours, 30 minutes, 41 secondsor the block and level title and icon.
5:30:515 hours, 30 minutes, 51 secondsNow from where the titles are coming, the titles are coming from here. We have to add the title. Let's say classic. This is on title.
5:31:045 hours, 31 minutes, 4 secondsSame here.
5:31:065 hours, 31 minutes, 6 secondsThe minimal level. But here C is not going to be capital. A is not going to be capital.
5:31:155 hours, 31 minutes, 15 secondsHere the B is not going to be capital.
5:31:185 hours, 31 minutes, 18 secondsBut for the title, it's going to be the previous one. Yeah,
5:31:255 hours, 31 minutes, 25 secondsthat's it. And instead of level, let's make it title. Otherwise, everything is good.
5:31:345 hours, 31 minutes, 34 secondsAnd in here for the save button at first cut this
5:31:425 hours, 31 minutes, 42 secondsand say if the show save button is true then only add this but disabled the
5:31:505 hours, 31 minutes, 50 secondsbutton if the is loading is false or is sorry is loading is true or is saving is true.
5:31:585 hours, 31 minutes, 58 secondsThen for the one click at first make the set is saving true.
5:32:075 hours, 32 minutes, 7 secondsThen add our try catch statement.
5:32:105 hours, 32 minutes, 10 secondsInside here we can send post request to our uh here it's giving error because we have to make it as sync.
5:32:225 hours, 32 minutes, 22 secondsWe have to send post request to our Vidmox player. It means basically it's going to redirect it to our Vidmox internal API with all the new updated payload.
5:32:335 hours, 32 minutes, 33 secondsIf there is anything wrong then throw the wrong things like an
5:32:415 hours, 32 minutes, 41 secondserror and if everything is fine then set the value in here and give on success
5:32:485 hours, 32 minutes, 48 secondsmessage that video player configured or configuration updated. If catch an error
5:32:545 hours, 32 minutes, 54 secondsconsole log the message and finally set is saving make it false.
5:33:045 hours, 33 minutes, 4 secondsAll good just here when the is saving is true then saving
5:33:135 hours, 33 minutes, 13 secondsotherwise save the save changes one. Yep. Now you can
5:33:205 hours, 33 minutes, 20 secondssee nothing is here. This is like our by default color for the video player. Even if we go to my videos
5:33:275 hours, 33 minutes, 27 secondsand from here you will notice that yeah uh there is something wrong because we
5:33:365 hours, 33 minutes, 36 secondshave to update our bitmox player.
5:33:485 hours, 33 minutes, 48 secondsOkay, there is something wrong definitely. Let me check what's wrong. All right, guys. I found the problem.
5:33:545 hours, 33 minutes, 54 secondsIt's actually in here. We have to say style dot id and we have to add our vidmox player
5:34:045 hours, 34 minutes, 4 secondsstyles ID in here. And here another line very very important document.getelement by ID. We have to like take the vidmox player styles and we have to return it.
5:34:145 hours, 34 minutes, 14 secondsAfter changing it, just rebuild again and come back here.
5:34:225 hours, 34 minutes, 22 secondsCome back to our my videos. Give on reload. Come back here. And here you go.
5:34:295 hours, 34 minutes, 29 secondsYou can see this time it's actually red.
5:34:345 hours, 34 minutes, 34 secondsIt's actually working. Now, if we want to update this, let's do update. So, let's say we're going to select this
5:34:425 hours, 34 minutes, 42 secondscolor. This color looks good. Hit save changes. Yep. Video player configure.
5:34:485 hours, 34 minutes, 48 secondsDone. Let's come back here.
5:34:535 hours, 34 minutes, 53 secondsGive reload. We have to give actually reload.
5:34:575 hours, 34 minutes, 57 secondsUh it's cached I guess. Just give hard reload.
5:35:045 hours, 35 minutes, 4 secondsSomething is wrong. Just a minute. Let me see if it's updated our player data. Yeah, it did.
5:35:125 hours, 35 minutes, 12 secondsOkay. All right, guys. After a long time research, after like fighting a lot, I found the mistake and I'm really feeling
5:35:215 hours, 35 minutes, 21 secondsvery angry now because the mistake is definitely silly mistake in this stream video when we're calling for the stream
5:35:285 hours, 35 minutes, 28 secondsvideo. Definitely we are attaching our player settings into that, right? But see where we're not sending it. Since
5:35:365 hours, 35 minutes, 36 secondswe're not sending it, that's why it's not working. So, we have to send it.
5:35:415 hours, 35 minutes, 41 secondsActually we can say player settings await this dot get player
5:35:485 hours, 35 minutes, 48 secondssettings we have to pass the meta dot user id and finally after the analytics
5:35:565 hours, 35 minutes, 56 secondstoken we must have to send the player settings. When we are sending the player settings let's come back here give on
5:36:045 hours, 36 minutes, 4 secondsreload. Here you go. You can see it's right now green because selected green
5:36:115 hours, 36 minutes, 11 secondsfrom here from our player settings. If we change it to let's say purple color and hit save changes. Let's come back here again.
5:36:205 hours, 36 minutes, 20 secondsCome back here. Here you go. It's purple. So it's working. Our video
5:36:275 hours, 36 minutes, 27 secondsplayer customization is perfectly working as we expected. Even the fonts are also updated right now based on our
5:36:355 hours, 36 minutes, 35 secondssettings. So it's actually working properly. We should be very proud right now that our customizations working at
5:36:435 hours, 36 minutes, 43 secondsthe same time. Like users can definitely easily customize the font. You can see
5:36:515 hours, 36 minutes, 51 seconds32 views. Literally 32 views. But average view duration only 28 seconds because we were just checking it for a
5:36:595 hours, 36 minutes, 59 secondslong time. The watch time is still very low. 23 minute 52 seconds. Yeah, it's
5:37:055 hours, 37 minutes, 5 secondsfine. So, finally our player settings is also working. Now, last one. After this,
5:37:125 hours, 37 minutes, 12 secondswe will finish this tutorial series. We will deploy it. Watermark and branding.
5:37:185 hours, 37 minutes, 18 secondsNow, when the user plan is paid, okay, then only they can do it. Otherwise if
5:37:265 hours, 37 minutes, 26 secondsthe plan is free then they definitely they cannot add custom watermark.
5:37:345 hours, 37 minutes, 34 secondsSo let's come back to our branding and is pro user we're saying false
5:37:435 hours, 37 minutes, 43 secondslet's make it true or false let me see one thing is pro user true
5:37:515 hours, 37 minutes, 51 secondsthen something like this otherwise
5:37:595 hours, 37 minutes, 59 secondsis pro user if it's false then show it but upgrade to pro but why it's not showing Okay.
5:38:085 hours, 38 minutes, 8 secondsOh, sorry. Sorry, sorry. I'm running a different one. That's why. That's why. Okay. No problem.
5:38:165 hours, 38 minutes, 16 secondsActually, I was running a different one.
5:38:185 hours, 38 minutes, 18 secondsThat's why even after updating the code base, it's not working, which is very normal. But no worries, everything going to be completely same.
5:38:305 hours, 38 minutes, 30 secondsYeah.
5:38:325 hours, 38 minutes, 32 secondsUh no landing page is Y 30002 which should be 3,000 and this one 3001.
5:38:405 hours, 38 minutes, 40 secondsYeah. Now give on reload. Here you go.
5:38:445 hours, 38 minutes, 44 secondsUpgrade to pro to customize your watermark and branding. But since we're already in pro right now, let's make it dynamic. Just change this is pro user
Chapter 12: Custom Watermark & Branding Features
5:38:525 hours, 38 minutes, 52 secondsfalls to like to real value. So we can do one thing. We can come back to our sidebar.
5:39:005 hours, 39 minutesWe can take inspiration from here.
5:39:045 hours, 39 minutes, 4 secondsJust copy this one for fetching our user like plan
5:39:145 hours, 39 minutes, 14 secondsand get token. So get token and the other things like this one.
5:39:285 hours, 39 minutes, 28 secondsWe don't need the user information now. Use user and use O. Yeah.
5:39:355 hours, 39 minutes, 35 secondsNow is pro user if the current
5:39:435 hours, 39 minutes, 43 secondsdot current dot plan
5:39:515 hours, 39 minutes, 51 secondsis uh not free.
5:40:015 hours, 40 minutes, 1 secondthen true otherwise false. Let's see.
5:40:085 hours, 40 minutes, 8 secondsYep, you can see it's changed completely. And very very important one here. When
5:40:165 hours, 40 minutes, 16 secondsthe actually our
5:40:235 hours, 40 minutes, 23 secondsis loaded and is loading is true is loaded false and is loading true then return null.
5:40:305 hours, 40 minutes, 30 secondsVery very important. Yep.
5:40:345 hours, 40 minutes, 34 secondsAll looks good. Now from here you can change the watermark. So let's do it.
5:40:405 hours, 40 minutes, 40 secondsLet's start it from our back end. So let's come back our services. In this source and modules folder, we can create
5:40:495 hours, 40 minutes, 49 secondsa new folder by giving name let's say branding
5:40:565 hours, 40 minutes, 56 secondsbecause this is for like custom branding and inside here the branding module.
5:41:065 hours, 41 minutes, 6 secondsLet's add our branding module.ts.
5:41:135 hours, 41 minutes, 13 secondsBranding controller.ts and sorry
5:41:215 hours, 41 minutes, 21 secondsand branding service.ts.
5:41:305 hours, 41 minutes, 30 secondsUh now in in the service let's start to work first.
5:41:365 hours, 41 minutes, 36 secondsUh but before going to the service we have to go to our database schema because we have to create another
5:41:445 hours, 41 minutes, 44 secondssmall table for our watermark uh metadata we can say.
5:41:515 hours, 41 minutes, 51 secondsSo something like this watermark meta data.
5:41:595 hours, 41 minutes, 59 secondsThe table is going to be very simple and small like this ID user ID which is
5:42:085 hours, 42 minutes, 8 secondsgoing to be unique enabled like the watermark uh like the branding custom watermark enabled or not by default
5:42:175 hours, 42 minutes, 17 secondsfalse key position opacity key last uploaded at created and updated at we can save it and after this let's come
5:42:265 hours, 42 minutes, 26 secondsback here let's write this npm run db DB generate and DB push.
5:42:415 hours, 42 minutes, 41 secondsYeah, it's actually done. Now let's come back here in our branding service and let's start working in here. At first,
5:42:495 hours, 42 minutes, 49 secondslet's add here on type for our watermark setting. Something like this. Enabled boolean position. It can be something
5:42:555 hours, 42 minutes, 55 secondslike this. Apacity file key uploaded at and next upload available at because after every 1 minute you can upload one
5:43:045 hours, 43 minutes, 4 secondslike on watermark just for security reason so that you cannot do spamming with the system like the user cannot do
5:43:125 hours, 43 minutes, 12 secondsspamming with the system that's adding this security. Now in here let's start let's create our branding service class.
5:43:225 hours, 43 minutes, 22 secondsWe need our create storage bucket from one minute cloud storage bucket because we have to upload here the thumbnail
5:43:315 hours, 43 minutes, 31 secondsfile sorry not thumbnail it's watermark and import injectable from this js/ common
5:43:395 hours, 43 minutes, 39 secondsimport config service drizzle db and inject fromjs/ common. So
5:43:475 hours, 43 minutes, 47 secondsthis is like the basic setup which we were using in our upload service as well. Now we need to resolve the user
5:43:535 hours, 43 minutes, 53 secondsplan something like this. We can import all
5:44:015 hours, 44 minutes, 1 secondof these is all of these are actually ready result plan. Now we need to resolve the record. So get record we can
5:44:095 hours, 44 minutes, 9 secondssay from our watermark meta data then the get watermark setting function.
5:44:205 hours, 44 minutes, 20 secondsSo here at first we need our plant here and the can customize like boolean then
5:44:295 hours, 44 minutes, 29 secondsrecord and we need to check the amount the position
5:44:355 hours, 44 minutes, 35 secondsand the opacity and file key from like the database. Yeah. Then last uploaded
5:44:425 hours, 44 minutes, 42 secondsat and next uploaded at like just make a date for last uploaded at we're checking it from the database. And for the next available upload available at we're just
5:44:505 hours, 44 minutes, 50 secondsadding 60 seconds with the last uploaded at time. Then finally
5:44:575 hours, 44 minutes, 57 secondswe can return all of these like the enabled the position the opacity the file key the
5:45:055 hours, 45 minutes, 5 secondslast uploaded at next upload available at can customize and plan with the plant here. Yeah. Now
5:45:145 hours, 45 minutes, 14 secondsafter this let's uh add our watermark settings.
5:45:245 hours, 45 minutes, 24 secondsour watermark settings module something like this where we're going to receive the user ID
5:45:325 hours, 45 minutes, 32 secondsand input and it's going to return a promise that watermark settings
5:45:405 hours, 45 minutes, 40 secondsand we need our plant here at first if the plant here is free then you cannot
5:45:465 hours, 45 minutes, 46 secondsactually upgrade your watermark for the videos you have to upgrade your plan to customize watermark
5:45:545 hours, 45 minutes, 54 secondsThen we're checking for the record with the user ID. Then
5:46:015 hours, 46 minutes, 1 secondchecking the next enabled, next position, and next opacity
5:46:085 hours, 46 minutes, 8 secondsrow. Yeah, something like this. We're just like adding all the values in these variables. Then file key, the new file
5:46:185 hours, 46 minutes, 18 secondskey like the for the new watermark. And then we have to store it inside the
5:46:255 hours, 46 minutes, 25 secondsdatabase something like this that our watermark dot a watermark metadata we're storing
5:46:335 hours, 46 minutes, 33 secondsthe user ID enabled position opacity file key and created at updated at if it's doing conflict then we are like
5:46:415 hours, 46 minutes, 41 secondsadding this enabled position opacity and updated at and then finally we can return
5:46:495 hours, 46 minutes, 49 secondsthis with our watermark settings get watermark setting with the user ID.
5:46:555 hours, 46 minutes, 55 secondsNow we need another uh module. This is the
5:47:035 hours, 47 minutes, 3 secondslast one. This is for uploading the watermark to our one minute cloud. So we need the plant here.
5:47:125 hours, 47 minutes, 12 secondsFirst we can use our result plan. From here we will get the like plant here. If it's
5:47:195 hours, 47 minutes, 19 secondsfree then we can throw an error. If there is no file then missing file. Then we need the content type that is PNG or
5:47:275 hours, 47 minutes, 27 secondsSVZ. If it's PNG or SVZ then we can check it. If it's not then only PNG or SSV is supported.
5:47:355 hours, 47 minutes, 35 secondsAnd here record after this like this is our the get
5:47:435 hours, 47 minutes, 43 secondsrecord with the user ID and last uploaded it must need to be like more than the last 60 seconds. Yeah. Then
5:47:525 hours, 47 minutes, 52 secondsextension the file extension the file name and let's upload it to our one
5:48:015 hours, 48 minutes, 1 secondminute cloud. So random EU ID import from crypto and we're right now uploading the file to 1 minute cloud.
5:48:095 hours, 48 minutes, 9 secondsThen we need the file key something like this and we can
5:48:175 hours, 48 minutes, 17 secondsupdate our database at the end with the watermark meta data that yep it's actually uploaded into the
5:48:265 hours, 48 minutes, 26 secondsdatabase now and then we can return our watermark settings with the user ID.
5:48:315 hours, 48 minutes, 31 secondsYeah, that's it. Our branding service is ready. Is definitely not so small, but not crazy big either. Now, let's go to
5:48:415 hours, 48 minutes, 41 secondsour controller and let's add all of these APIs. So, we can add here controller
5:48:485 hours, 48 minutes, 48 secondsdecorator from SJS common uh and use GS only logged in user can
5:48:565 hours, 48 minutes, 56 secondsuse it. So use curs and api bear o.
5:49:055 hours, 49 minutes, 5 secondsThen here we can create our branding controller.
5:49:155 hours, 49 minutes, 15 secondsHere we can add the endpoints. So like uh get watermark
5:49:245 hours, 49 minutes, 24 secondswhich is like get watermark setting for the current user. We're just calling our branding service and get watermark settings.
5:49:345 hours, 49 minutes, 34 secondsNow for uploading and watermark something like this.
5:49:415 hours, 49 minutes, 41 secondsSo yeah and after this watermark upload watermark and watermark upload is different. You can read it
5:49:505 hours, 49 minutes, 50 secondsfrom here that this uh watermark is the update watermark settings for the current user. Updating the settings and
5:49:585 hours, 49 minutes, 58 secondsthis one is updating the uploading the file. Uploading the file is different than updating the settings from the database. So yeah, now we can save it.
5:50:105 hours, 50 minutes, 10 secondsOur controller is ready. Now in the module, let's add everything. Simple. Something
5:50:195 hours, 50 minutes, 19 secondslike this. Yep. Now let's come back to our app module and let's call our
5:50:265 hours, 50 minutes, 26 secondsbranding module in here. We can save it and let's come back here. Yeah, all makes sense.
5:50:365 hours, 50 minutes, 36 secondsNow it's look it looks good. Uh 1 minute the DB push was giving us some error.
5:50:425 hours, 50 minutes, 42 secondsPlayer metadata user ID unique unique constructor table which contains one items. If the statement fails, receive an error from the database. Do you want to truncate the player metadata table?
5:50:545 hours, 50 minutes, 54 secondsPlayer metadata.
5:50:565 hours, 50 minutes, 56 secondsUh actually I think it's conflicting with our database somehow. Player metadata.
5:51:045 hours, 51 minutes, 4 secondsplayer metadata.
5:51:075 hours, 51 minutes, 7 secondsOkay, fine. I understand why it's giving the error. No problem. We can push it. There will be no problem.
5:51:175 hours, 51 minutes, 17 secondsYep. Change is applied.
5:51:215 hours, 51 minutes, 21 secondsIf we come back here, we can see everything is here. The watermark metadata, the player metadata is also perfect. So everything is good. No problem.
5:51:315 hours, 51 minutes, 31 secondsNow our everything adding done. Let's come back to front end because back end work is
5:51:385 hours, 51 minutes, 38 secondsdone. Let's come back to this page.tsx and branding and let's make it dynamic now. All
5:51:485 hours, 51 minutes, 48 secondsright. First let's add our watermark settings type in here. similar like the back end one just the values are here
5:51:565 hours, 51 minutes, 56 secondslike position opacity file key and uploaded and everything
5:52:035 hours, 52 minutes, 3 secondsthen inside here we actually need to add some use state hooks
5:52:105 hours, 52 minutes, 10 secondssomething like this uh there's some errors because enabled position opacity file already here which
5:52:195 hours, 52 minutes, 19 secondsI'm already adding in here for twice no problem settings and set settings it's going to be something like this enabled
5:52:255 hours, 52 minutes, 25 secondsand set enabled position the values are going to be like this opacity file watermark preview URL is saving set is
5:52:345 hours, 52 minutes, 34 secondssaving and is uploading an initial config JSON after this we have to check that is the
5:52:415 hours, 52 minutes, 41 secondsuser is prouser or not so we can say is pro user
5:52:505 hours, 52 minutes, 50 secondswe can add it actually here and then can upload now
5:53:005 hours, 53 minuteswe need to use here use memo. Yep.
5:53:055 hours, 53 minutes, 5 secondsBut can the user upload the new file like update the watermark now or not?
5:53:105 hours, 53 minutes, 10 secondsLike since we're doing it after every 30 seconds that's why. Then lock info when
5:53:195 hours, 53 minutes, 19 secondsthere will be an lock that you cannot upload a new watermark in this minutes like after 60 seconds you can actually
5:53:265 hours, 53 minutes, 26 secondsdo it 60 seconds or 1 hour I forgot it but yeah it's probably something like that if I'm doing mistake then pardon
5:53:325 hours, 53 minutes, 32 secondsit's probably 1 minute or 1 hour okay I can do mistake this is 60,000
5:53:405 hours, 53 minutes, 40 secondsuh I think it's actually hour not minute which is good for us.
5:53:485 hours, 53 minutes, 48 secondsUh then after this we can add here payload the use memo and this is going to be a
5:53:565 hours, 53 minutes, 56 secondscall back the enabled position and upper city
5:54:065 hours, 54 minutes, 6 secondsand enabled position and upper city.
5:54:115 hours, 54 minutes, 11 secondsYeah, we can save it. Then we need the payload JSON something like this
5:54:195 hours, 54 minutes, 19 secondsand our plot of use effect hook. So let's start the first one.
5:54:325 hours, 54 minutes, 32 secondsThis is for loading our uh branding meta data.
5:54:395 hours, 54 minutes, 39 secondsSo first let's import use effect from react.
5:54:435 hours, 54 minutes, 43 secondsWe are actually giving a request to branding and watermark on get request and we are setting the value into our
5:54:525 hours, 54 minutes, 52 secondsset settings that set enable position opacity and initial config JSON and everything. If there is an error then
5:55:005 hours, 55 minuteswe're showing that like a toast message that failed to load the watermark.
5:55:055 hours, 55 minutes, 5 secondsAfter this, let's add another use effect hook for
5:55:125 hours, 55 minutes, 12 secondsactually updating our watermark. And this is going to be post request. And this is definitely going to be a little
5:55:205 hours, 55 minutes, 20 secondsbit different, but still this is also an use effect hook. You can see if it's not pro user then return not settings and
5:55:275 hours, 55 minutes, 27 secondsreturn. If file then return initial config JSON null then return. If the payload JSON is not matching I mean
5:55:365 hours, 55 minutes, 36 secondsmatching with the initial config JSON then return otherwise after a certain time after set time out we are updating
5:55:465 hours, 55 minutes, 46 secondsthe database we're sending a post request to the endpoint with this with this data.
5:55:525 hours, 55 minutes, 52 secondsNow another use effect this is the last one and this is for loading the preview.
5:56:005 hours, 56 minutesYeah.
5:56:035 hours, 56 minutes, 3 secondsSo we can use storage.getate because we need basically our file preview. That's fine. And this one I think we don't need
5:56:115 hours, 56 minutes, 11 secondsthis. We can delete uh or is loading. We need the is loading for the billing.
5:56:215 hours, 56 minutes, 21 secondsI think we don't need this is loading. We can add it from here.
5:56:375 hours, 56 minutes, 37 secondsis loaded is already in here.
5:56:455 hours, 56 minutes, 45 secondsOkay, is loaded. If it's false, okay, I think it should work. Save it.
5:56:545 hours, 56 minutes, 54 secondsGive reload. Yeah, it's working. So, perfect. No problem. We don't need that anymore in here. This is good enough.
5:57:035 hours, 57 minutes, 3 secondsNow let's make these things dynamic.
5:57:075 hours, 57 minutes, 7 secondsSo here in this preview
5:57:135 hours, 57 minutes, 13 secondsif this pro user uh 1 minute
5:57:215 hours, 57 minutes, 21 secondswatermark visibility here. Everything is actually good in here.
5:57:355 hours, 57 minutes, 35 secondsJust if this pro user then this is also okay.
5:57:415 hours, 57 minutes, 41 secondsAnd here for the image uh it's going to be dynamic value.
5:57:525 hours, 57 minutes, 52 secondsExactly.
5:57:545 hours, 57 minutes, 54 secondsIt should be dynamic value this time. Is pro user and watermark preview URL available.
5:58:025 hours, 58 minutes, 2 secondsThen on image with the watermark preview URL
5:58:085 hours, 58 minutes, 8 secondsclass name is going to be W sorry H8 W auto
5:58:165 hours, 58 minutes, 16 secondsopacity 50 and object contain.
5:58:265 hours, 58 minutes, 26 secondsYeah.
5:58:335 hours, 58 minutes, 33 secondsOtherwise inside here we can basically add our the logo light and everything which we were
5:58:425 hours, 58 minutes, 42 secondsdoing earlier that same thing. Now upload custom watermark all good in
5:58:505 hours, 58 minutes, 50 secondshere. Just disable the upload.
5:58:565 hours, 58 minutes, 56 secondswhen the can upload new is false and or is uploading is true or the is saving is true. Yep.
5:59:085 hours, 59 minutes, 8 secondsAnd if the log info is true then we need to show the lock info message in here.
5:59:215 hours, 59 minutes, 21 secondsYep. Now in this watermark position here it's giving an I error
5:59:305 hours, 59 minutes, 30 secondswhich is very normal. We can set it as top left or top right
5:59:405 hours, 59 minutes, 40 secondsor bottom left or bottom
5:59:485 hours, 59 minutes, 48 secondsright or the center like all the types.
5:59:565 hours, 59 minutes, 56 secondsYep. Otherwise, I think everything should be fine.
6:00:026 hours, 2 secondsYeah, here is pro user and file then save changes but for the save changes we have to do work.
6:00:136 hours, 13 secondsSo in the button disable true when the is saving or is uploading or can upload new is false or
6:00:216 hours, 21 secondsthese are true then now for the one click when someone will click this save changes
6:00:296 hours, 29 secondsthen if there is no file then return it otherwise if there is a file then say is
6:00:366 hours, 36 secondssaving true or loader loading state then we have to send on post request test
6:00:456 hours, 45 secondsto our API endpoint.
6:00:516 hours, 51 secondsSo this is the like try statement with the token we're making the set is uploading true the form data because we
6:01:006 hours, 1 minuteneed to upload the watermark. So we are sending an post request to here. After getting the confirmation that the
6:01:086 hours, 1 minute, 8 secondswatermark uploaded, we have to update the meta data. That's why we're again sending another post request to this
6:01:156 hours, 1 minute, 15 secondsone. And this time we're sending again sending the payload JSON. And after this
6:01:226 hours, 1 minute, 22 secondswe have to update the states. So con update something like this. the
6:01:306 hours, 1 minute, 30 secondssettings JSON and then the set settings updated at the set enabled all like we're updating our use state hooks set
6:01:396 hours, 1 minute, 39 secondsfile null and toast success that watermark updated
6:01:456 hours, 1 minute, 45 secondshere let's add catch and finally
6:01:566 hours, 1 minute, 56 secondshere uh I think we have to add another second
6:02:036 hours, 2 minutes, 3 secondsbracket exactly now if it's catch any error just to do error the message and finally
6:02:126 hours, 2 minutes, 12 secondsmake this two state to false the is uploading and is saving and in here if
6:02:196 hours, 2 minutes, 19 secondsthe is saving or is uploading is true then saving otherwise save changes this.
6:02:266 hours, 2 minutes, 26 secondsThat's it. This was the file. It should be ready now. Let's come back here. You
6:02:346 hours, 2 minutes, 34 secondscan see by default it's showing off because the user plan is paid. However,
6:02:406 hours, 2 minutes, 40 secondsI think it's not fully accurate with the sidebar. It's not matching. And I should
6:02:486 hours, 2 minutes, 48 secondscheck it. Let's do one thing for the sidebar
6:02:576 hours, 2 minutes, 57 secondssince it's in here and the children is in here query provider.
6:03:046 hours, 3 minutes, 4 secondsLet me do one thing. Let me see if I can do it or not. The query provider.
6:03:196 hours, 3 minutes, 19 secondsOkay, let's try to add it in here.
6:03:236 hours, 3 minutes, 23 secondsUse query hook and the gate token
6:03:366 hours, 3 minutes, 36 secondsuh we need here.
6:03:456 hours, 3 minutes, 45 secondsSo add the hook in here. the use o and we need still the is loaded and is
6:03:546 hours, 3 minutes, 54 secondssigned in. So is loaded and is signed in.
6:04:046 hours, 4 minutes, 4 secondsYeah, I'm not sure we can use it or not.
6:04:066 hours, 4 minutes, 6 secondsIf we can use it that's really very very good for us because here we can write the logic that
6:04:156 hours, 4 minutes, 15 secondsif this then return null and we don't need actually the data at all so we can delete that
6:04:226 hours, 4 minutes, 22 secondslet's see I don't think we can use yeah use query no query client set use query client provider to set one
6:04:316 hours, 4 minutes, 31 secondsokay so here the query client provider that's why the problem is happening We have an option if we want to do
6:04:406 hours, 4 minutes, 40 secondsthat is we can create here another function that extended
6:04:486 hours, 4 minutes, 48 secondsprovider it's going to receive the children let's say any for now
6:04:576 hours, 4 minutes, 57 secondsand return the children.
6:05:056 hours, 5 minutes, 5 secondsYeah. And we can call it in here and pass the children.
6:05:166 hours, 5 minutes, 16 secondsThen we can cut all of these and add that in here.
6:05:246 hours, 5 minutes, 24 secondsIf we save it, error should be gone this time. Saying no query client say use query client is loading.
6:05:386 hours, 5 minutes, 38 secondsquery client is in here. Ah, okay. I think because we're using here query client and we cannot use it without the provider.
6:05:486 hours, 5 minutes, 48 secondsI understand. Then the solution could be
6:05:546 hours, 5 minutes, 54 secondslet's delete this. Just add all of these. Just cut this
6:06:046 hours, 6 minutes, 4 secondsand delete this. Just return the children from here. Don't need this. And this one as well.
6:06:156 hours, 6 minutes, 15 secondsWe can save it. You can come back here in our branding uh page not service page or GSX.
6:06:276 hours, 6 minutes, 27 secondsAt the end we can add this line use query.
6:06:406 hours, 6 minutes, 40 secondsAnd we can add all of these in here.
6:06:476 hours, 6 minutes, 47 secondsOkay, it's already here. So, we don't need to add it again. Then that's great.
6:06:506 hours, 6 minutes, 50 secondsNow, even if we give reload, you can see the contents are loading with the same time. No problem at all. We can turn on
6:06:596 hours, 6 minutes, 59 secondsthe watermark visibility and we have to upload on file for it. So, let's upload on watermark.
6:07:066 hours, 7 minutes, 6 secondsI'm just going to test. I'm just uploading my signature again. It's just for like short term. This is not a real
6:07:156 hours, 7 minutes, 15 secondswatermark for sure. So saving and here you go. You can see my signature is in
6:07:226 hours, 7 minutes, 22 secondshere. So this is like let's say on watermark for the video. And from now on even if you come here you can check
6:07:306 hours, 7 minutes, 30 secondsuh in the watermark metadata. Here you go. We have our watermark file key which we need to send
6:07:406 hours, 7 minutes, 40 secondsfor like processing the video with the watermark. So what we have to do we just have to do one little change right now
6:07:496 hours, 7 minutes, 49 secondsand then everything will be done and the changes in inside our upload service
6:07:586 hours, 7 minutes, 58 secondssource modules upload and upload service especially in our
6:08:086 hours, 8 minutes, 8 secondscomplete like when we're calling the media convert we have to update here in
6:08:146 hours, 8 minutes, 14 secondsthe watermark because right now we have dynamic watermark that's why.
6:08:226 hours, 8 minutes, 22 secondsSo in here we have to
6:08:306 hours, 8 minutes, 30 secondsdo some work. Let's say in here after the complete upload we can say
6:08:386 hours, 8 minutes, 38 secondsactually after this we can add on late variable like paid watermark something
6:08:456 hours, 8 minutes, 45 secondslike this. If the plan is not free then only check for the watermark
6:08:546 hours, 8 minutes, 54 secondsfrom the database and then set value for the watermark to here in the paid watermark and in here
6:09:046 hours, 9 minutes, 4 secondsif the watermark the plan is free then this file name
6:09:116 hours, 9 minutes, 11 secondsthis is basically the bitmox watermark otherwise the paid watermark with the like all fields are there and
6:09:186 hours, 9 minutes, 18 secondsfor the vidmbox watermark it's by default bottom right and for the web hook URL for now it's this but after deploying it definitely we'll change it
6:09:266 hours, 9 minutes, 26 secondsto our like API URL with our API URL that's it everything is ready so right
6:09:346 hours, 9 minutes, 34 secondsnow if we try to upload a video it will work with this custom watermark uh or even if the plan is free then it
6:09:426 hours, 9 minutes, 42 secondswill work with the Vidmox watermark let's it everything should work now and yeah everything is ready right now our
Chapter 13: Outro & Wrap Up
6:09:516 hours, 9 minutes, 51 secondsnext work is deploying it but at this moment I don't want to deploy because I still have to work on the docs for the
6:09:596 hours, 9 minutes, 59 secondsdocumentation and I will finish that in offline because documentation is something like it's a static thing you can also make it by yourself and I have
6:10:076 hours, 10 minutes, 7 secondsto do some research for it I have to make some articles then I'll make it and then I'll make another video for the deployment And you'll find out it
6:10:166 hours, 10 minutes, 16 secondsattached with the video with this one with the video series VMO series. You can just check that to see the
6:10:236 hours, 10 minutes, 23 secondsdeployment. But the deployment is not going to be complicated because we're going to use our server. We're going to install everything in there by using
6:10:326 hours, 10 minutes, 32 secondsDocker and we'll not use an like advanced CI/CD setup. We'll probably use EC2
6:10:406 hours, 10 minutes, 40 secondsand sorry not EC2 I meant uh not EC2 I meant PM2. We can use the PM2 for
6:10:496 hours, 10 minutes, 49 secondsdeploying our application into our server. That's it. So this was actually the video. I was trying hard to finish
6:10:566 hours, 10 minutes, 56 secondsit as soon as possible because the series is already became very big which is very natural because this type of applications I spent more than one year
6:11:046 hours, 11 minutes, 4 secondsto build this. So you can imagine the size of this full platform. So that's it. This was the video. I hope you
6:11:116 hours, 11 minutes, 11 secondsenjoyed it. If you have any question, feel free to ask me in the comment section. I'll definitely answer any interesting questions if you have. So
6:11:206 hours, 11 minutes, 20 secondssee you in the next video. Till then take care and bye-bye.

Sync to video time
