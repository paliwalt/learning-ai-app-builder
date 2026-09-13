https://www.youtube.com/watch?v=1uVR5X7HpI8&t=308s


Sync Engines and Local Data
Syntax
Syntax
496k subscribers

Subscribe

672


Share

Ask

Save

31,846 views  30 Jul 2025  Syntax - Tasty Web Development Treats
Wes and Scott talk about local-first sync engines—why they matter, what makes apps feel fast, and which platforms stand out. From LiveStore to Convex to Instant DB, they break down the pros and cons of each and debate what the “next React” might look like in a local-first future. 🔥 Be the ~14,700th person to join our super tasty newsletter https://bit.ly/syntax_snackpack


(00:00) - Welcome to Syntax!
(01:52) - Intro to local data: what makes apps feel fast
(05:08) - Could the next React be a local-first sync engine?
(08:23) - LiveStore
(18:01) - Zero Sync
(21:58) - InstantDB
(24:18) - Brought to you by Sentry.io
(24:43) - Convex
(27:54) - ElectricSQL
(29:48) - PowerSync and PartyKit
(30:51) - Choosing the right sync engine
(40:34) - Sick Picks + Shameless Plugs

All links available at https://syntax.fm/924
------------------------------------------------------------------------------
Hit us up on Socials!
Syntax: https://x.com/syntaxfm
Scott: https://x.com/stolinski
Wes: https://x.com/wesbos
CJ: https://x.com/CodingGarden
Randy:    / @randyrektor  

http://www.syntax.fm

Brought to you by Sentry.io

#webdevelopment #webdeveloper #javascript #syntax #syntaxfm #webdev
Scott and Wes explore the evolving landscape of local data and sync engines for web applications. They examine how solutions like LiveStore and Zero Sync enable instantaneous user experiences by managing database synchronization, conflict resolution, and offline capabilities.
Summary

Ask
Get answers, explore topics and more


--------------------------------------------------------------------------------------


In this video


Chapters

Transcript
Search transcript
Search transcript

Chapter 1: Welcome to Syntax!
0:000 seconds[Music]
0:000 secondsWelcome to Syntax. Today we're going to be talking about one of my favorite topics, which is local data and sync engines. Now, some of these options that
0:099 secondswe're going to be talking about are one or the other. Some are both. We're going to be just kind of going down the lay of the land of all the different flavors
0:1616 secondsout there and why you might pick certain ones and what are some of the newer players to the game cuz that's right, uh, this stuff is changing all the darn
0:2525 secondstime. My name is Scott Dinsky. I'm a developer. I live in Colorado. With me as always is West Boss. What's up, my dude?
0:3232 secondsHey, I am up at the cottage and I unfortunately forgot my camera. For listeners who don't know, I have this little the full stack shack. I don't
0:4040 secondsknow if you can you can see it right there. Right.
0:4343 secondsI got For people who don't know, I got the full stack shack.
0:4646 secondsI got the full stack shack. And uh usually I'll bring up I have I have one of everything here, you know. I've got the microphone, I got the compressor, the gate. I have pretty much everything.
0:5757 secondsAll I have to do is plug in my laptop, but I obviously don't have two of the beefy SLRs that we use, and I totally forgot it
1:051 minute, 5 secondsand I'm bummed. So, now I'm I'm using my uh my phone right now, which is a iPhone 13, which is is decent, but it I don't
1:141 minute, 14 secondsknow. It looks a little bit weird. So, please forgive the uh video right now.
1:181 minute, 18 secondsIt's not a Netflix approved camera. No, but it is it does look lovely. Um yeah, cool. So, hey, it's a new week, new us,
1:281 minute, 28 secondsready to go. Wes is at the cabin. I'm about to take a summer vacay here myself. So, it kind of feels like the last day of school in a couple of a
1:361 minute, 36 secondscouple of ways, but my kids are all all home, so things are just kind of like, you know, they're in summer mode over here. I I was doing some crazy yard work
1:451 minute, 45 secondsyesterday, so I'm just like, yeah, it it's it's full swing, right?
1:501 minute, 50 secondsWell, let's uh full summer.
Chapter 2: Intro to local data: what makes apps feel fast
1:521 minute, 52 secondsYeah, full summer for sure. Let's get into the topic at hand though which is local data. Now local data can be done
2:012 minutes, 1 secondin a number of very lowfi and I mean loi in terms of uh not the coined you know
2:082 minutes, 8 secondsloi local first but lofi in terms of you're saving local data you're handling updating yourself you're you know you're
2:152 minutes, 15 secondssending that data along whatever you're managing it yourself can be handled in very much those sort of ways with index
2:222 minutes, 22 secondsDB some people use something like dexi for that you could throw it um in all kinds of ways uh storing that data and managing
2:312 minutes, 31 secondsyourself locally. But what we're going to be talking about in this episode is going to be more of the managed and sync
2:392 minutes, 39 secondsside of things where some of these solutions take your entire stack essentially except for
2:472 minutes, 47 secondsyour your view layer which is whatever you may be and sometimes they take the database as well and sometimes they uh
2:552 minutes, 55 secondsjust sit in front of there. And so what I hope to get out of this by the end of this episode is for you to understand who are the players and how they might
3:033 minutes, 3 secondsfit into what you need because local data, as we've talked about many times on this show, is a really, really,
3:113 minutes, 11 secondsreally exciting uh way that people are working these days. Some of the best apps that you use use data locally. So
3:193 minutes, 19 secondsum we just interviewed the folks from Superhuman. Their platform is incredibly fast because of local data. Uh people
3:263 minutes, 26 secondstalk all the time about how great linear is local data. And the way these apps feel is they feel instantaneous.
3:353 minutes, 35 secondsAnd you might think my app feels instantaneous. I'm saving uh records to a database via an API. It's all running
3:433 minutes, 43 secondslocally on my computer, but it feels very fast.
3:473 minutes, 47 secondsBut yeah, it feels instant when your server is literally running on the same machine as your browser. But when you're calling
3:543 minutes, 54 secondsAPIs back and forth, it probably doesn't feel that fast. Especially like I'm up at the the cottage right now and we've
4:014 minutes, 1 secondgot Starlink which is pretty fast, but you certainly notice it versus like a hardpiped fiber connection.
4:084 minutes, 8 secondsYeah. And anytime you have data loading or mutations, 300, 500, 600 milliseconds feels like a lifetime. And what doesn't
4:174 minutes, 17 secondsfeel like a lifetime is like 10 milliseconds. It feels like the darn instantaneous stuff.
4:234 minutes, 23 secondsAnd and many people often account how native apps feel so much better than web apps.
4:294 minutes, 29 secondsWhy? Sometimes it's just because of UI frameworks and things that feel more native to the the the phone itself. And
4:364 minutes, 36 secondsother times it's frame rate, but many times it is saving and storing data, things like that. A lot of iPhone apps, yeah,
4:444 minutes, 44 secondsthey're storing things to what? SQLite database on the phone and then they're handling a sync process in many different ways. So if your mental model
4:534 minutes, 53 secondsis I don't understand why local data makes sense, just think about the best apps that you use and chances are
5:025 minutes, 2 secondsthey're really good because they're super fast. They feel native or they are native and they're saving data locally.
Chapter 3: Could the next React be a local-first sync engine?
5:085 minutes, 8 secondsI got a question for you before before we even get into this. I saw a tweet the other day that says the next React won't
5:155 minutes, 15 secondsbe like React, it will be a local data first sync engine um that adds on. And
5:225 minutes, 22 secondsthey they said like when we move from jQuery to React, those two things didn't have a ton of of overlap in how they
5:315 minutes, 31 secondswork, right? Obviously, you're still wiring up clicks and fetching data and whatnot, but it was such a major change.
5:385 minutes, 38 secondsAnd I think part of the reason we've never seen like a real react killer, like we have lots of alternatives, right? We have Vue and Spelt and and
5:465 minutes, 46 secondsAngular and whatnot, but nothing has sort of like dethroned React similar to how nothing dethrone jQuery and what
5:555 minutes, 55 secondswill actually dethrone that will be sort of like a new generation. Do you agree with that where it's going to be something that is this stuff is baked
6:046 minutes, 4 secondsright in? So, as much as myself and some others have been talking about local data, I mean, you can check the receipts. I've been talking about this
6:126 minutes, 12 secondsstuff for a long time. I still feel like the amount of people who one are using it and two like truly understand just
6:216 minutes, 21 secondshow transformative it is are microscopic right now. and that tweet that is going
6:286 minutes, 28 secondsaround because I think in the past year people have been starting to take notice. The local first website has gone
6:376 minutes, 37 secondsfrom just like a handful of collective different you know experiments and tools and and sync engines and things like
6:446 minutes, 44 secondsthat to like a conference and a plat like you are seeing the snowball roll down the hill right now. And it is like
6:546 minutes, 54 secondsa it we're at the snowman's head, but I think we're going to get to that body soon enough. And when we do, you don't start the head first.
7:037 minutes, 3 secondsThat's what I Well, I'm it's a it's I'm saying sizewise. Okay.
7:077 minutes, 7 secondsWe're not the the ball the snowball that's rolling down the hill is about the size of a snowman's head. A child's
7:147 minutes, 14 secondssnowman's head. But we want we want that big old body. That's what we want. So big snowman booty worth of local first.
7:217 minutes, 21 secondsYeah. snowman dump truck for sure. And I and I think uh I I think that is going to happen with whatever this platform
7:297 minutes, 29 secondsends up being that takes the cake and makes it that. And we'll talk about some of the platforms here. Whether or not any of these will become that is yet to
7:387 minutes, 38 secondsbe seen. I do think there's enough of the rough edges around some of these things that
7:467 minutes, 46 secondsyeah, it it takes a lot to get going with them, but it's kind of by the nature of them and and some of them are are really super easy to get up and running, but take over your full stack.
7:557 minutes, 55 secondsSo, as you'll hear in just a little bit about like what the options are, maybe you can come form your own opinions on if any of these will be that that sync
8:048 minutes, 4 secondsengine of the future. I think that tweet is accurate. I personally having someone
8:118 minutes, 11 secondswho's worked on this stuff, who's given several conference talks and has like really used it, I I think once more people get their hands on it and
8:208 minutes, 20 secondsactually get a chance, they're going to be blown away by it. So, let's get into one of the I'm going to start this with an interesting note, an interesting new
Chapter 4: LiveStore
8:288 minutes, 28 secondsplayer to the game here. um specifically because I don't know if we've talked about this on the show just yet and um this is from
8:388 minutes, 38 secondsJohannes uh who you know was behind Prisma. He he's been around the data game a long time and we've talked a
8:468 minutes, 46 secondslittle bit about local first with Johannes pre this project. So this is
8:538 minutes, 53 secondscalled live store and livetore is an interesting solution to the local first platform that tries to do a lot for you.
9:039 minutes, 3 secondsIn fact, this is one of those ones that really takes over in a good way where you aren't necessarily bringing this to
9:129 minutes, 12 secondsyour current project. Some of these other ones, you got your own backend, you have your own database, you have things that are like kind of like a
9:209 minutes, 20 secondsnormal setup and you can kind of plug a sync engine in or or your own process or your conflict resolution stuff in there.
9:269 minutes, 26 secondsThis is not that. This is really something that takes over and it's an entirely different approach to storing
9:349 minutes, 34 secondsdata in a way. So this is called Livetore. It's at livetore.dev. There's currently adapters for React. There's
9:449 minutes, 44 secondsadapters for Vue Solid. Uh, somebody's putting together a spelt one right now.
9:499 minutes, 49 secondsThere's a PR for it. There's React. Uh, I mean with Expo, that's one of the options. They have stuff that's a Tori
9:569 minutes, 56 secondsadapter, Electron adapter. So, it does seem to be something that is going to be, you know, pretty widely supported.
10:0410 minutes, 4 secondsNow the way that this is interesting is that this all works in SQLite. Now
10:1110 minutes, 11 secondsthere's a SQLite browser in your uh client or SQLite a SQLite database in your browser via WOM using live store.
10:2110 minutes, 21 secondsSo it's an embedded SQL light in your app um that saves the information locally and
10:2810 minutes, 28 secondson your server side there is a SQLite database as well and unlike some of
10:3710 minutes, 37 secondsthese other ones what's being saved in your database is not necessarily typical
10:4410 minutes, 44 secondsdata it's events so the way that livetore function is
10:5110 minutes, 51 secondsit's an event log very similar to like you might think of like git or something like that, right? It's an event log. It's here's everything that happens.
11:0011 minutesLast right wins. And it's a really interesting approach. So the entire thing is like you have a to-do, that
11:0911 minutes, 9 secondsto-do is created, task completed, whatever. Those are events. They're saved as events and like what the information is with those events. These
11:1811 minutes, 18 secondsevents are the source of truth and the current state of the app is a projection of the event log a materialized into a local reactive SQLite database.
11:3111 minutes, 31 secondsWow. So instead of saving the data locally like like let's say if you had like a to-do list and you changed you
11:3911 minutes, 39 secondsadded an item or you deleted an item or you changed one of them what would normally happen is that data would then sync to the back end and then hopefully
11:4811 minutes, 48 secondsyou don't have any conflicts and if there are conflicts there's these CRDTs that will allow you to hopefully resolve
11:5511 minutes, 55 secondsthem right but this will instead of that will store what you did very similar to
12:0212 minutes, 2 secondslike a redux where it will just log out what you have done and then I I guess that sends that to the back end and it replays it in order to modify your data.
12:1212 minutes, 12 secondsYes, it's interesting. And uh quote from David Kurishan, you know, he loves this kind of stuff. Events are the most
12:1912 minutes, 19 secondsaccurate representation of state. Live store gets it right. I uh have been goofing around with this a little bit, specifically trying to just get like the
12:2812 minutes, 28 secondsspelt version of it working, which I haven't been because it's, you know, still a draft PR. But from browsing the
12:3612 minutes, 36 secondsdocumentation, from really getting into it and actually writing code, there's a lot of things I really generally appreciate about this.
12:4512 minutes, 45 secondsAnd it it follows along kind of the same things I appreciate about zero sync, which we'll talk about next, is that it
12:5312 minutes, 53 secondsis a nice API. I'm not having to think about managing versions of uh data. I'm
13:0213 minutes, 2 secondsnot having to think about my manual writing to the database. um which you know sometimes you want to
13:1113 minutes, 11 secondsthink about that but if I'm starting a project from scratch I want it to all just just kind of work but still give me access to everything. This is a very
13:2013 minutes, 20 secondsdifferent approach and I think it is an interesting one. Uh whether or not
13:2813 minutes, 28 secondslong-term it proves to be like the best approach I don't I have no idea. Um they do have a thing on there livetore verse
13:3513 minutes, 35 secondsRedux. Live Store shares a lot of similarities with Redux in the sense that both are based on event sourcing. So you nailed that Wes.
13:4313 minutes, 43 secondsSo there's also even like DevTools for this though already. So I I do think it's an interesting project. Their demos
13:5013 minutes, 50 secondsare very exciting. You got to love an exciting demo. They do have an LLM.txt in case you want to, you know, actually plug this into your Yeah. Right.
14:0314 minutes, 3 secondsAnd for the most part, it handles off in a way like uh JWTbased O very similar to how Zero does it. You know, you're able
14:1014 minutes, 10 secondsto kind of step in there and um get access to the current user and do your your O checks that way. There there's a
14:1814 minutes, 18 secondslot here. There is offline support. So, does this replaces like let let's take a look at like what this replaces. This
14:2514 minutes, 25 secondsdoes not replace React, right? because you would use it with your framework of choice react or swelt or whatever
14:3214 minutes, 32 secondsbut it does replace any like state management you would do client side right it does replace your your backend
14:4014 minutes, 40 secondsOM so you wouldn't use like drizzle with this or whatever it's included with all of that and it does replace like you're saying JWT
14:4914 minutes, 49 secondssessions and stuff like that so it does replace your like your user system like how far does this go oh well there is no JWTbased off Inside of here, you would bring your own O.
15:0015 minutesYou're just verifying your JWT. Um, and that and they can give you like a server side.
15:0515 minutes, 5 secondsThis is like a real time data stack for doing it data both on the client and the server because in order to build apps
15:1515 minutes, 15 secondsthat are that work like this, you have to have full buy in both on the client and on your server.
15:2115 minutes, 21 secondsCorrect. This does it all for you in terms of handling server side data, client side data, syncing, conflict
15:2815 minutes, 28 secondsresolution, offline, okay, that kind of stuff. And because of that, there's like undo redo support, which is cool, right?
15:3715 minutes, 37 secondsSome of these don't have that kind of thing because it is it's like Redux in that in that sort of way. So this is one that I'm taking a very close look at
15:4615 minutes, 46 secondsbecause I personally have been using zero and it's you know one of my favorite platforms on the web and this
15:5315 minutes, 53 secondsis takes a a different approach to solving a lot of the same uh a lot of the same issues. So um brand new player
16:0116 minutes, 1 secondto the game and you know Johannes does great work so not surprised uh that this is so nice but um definitely something
16:0916 minutes, 9 secondsthat you should check out. One really cool thing about the like undo, redo, replaying of events approach to this
16:1616 minutes, 16 secondstype of thing is that you're often able to go back in time and change or delete an event that has happened maybe five
16:2516 minutes, 25 secondssteps back and then it will just like if it's if it's able to, it will replay it.
16:2916 minutes, 29 secondsIt's very similar to uh using Fusion 360 when we when you're making something like let's say you make a box that's 500
16:3816 minutes, 38 secondsby 500 pixels and then um you make something else that's 200 pixels inset from that 500 pixels box and then you
16:4516 minutes, 45 secondsextrude that 500 pixels forward and you go oh shoot it wasn't 500 it was 450. So you go back three steps and you simply
16:5316 minutes, 53 secondsjust change that one step and then the rest will sort of replay forward. I really like that approach um to these types of things. It's obviously kind of
17:0217 minutes, 2 secondstricky in some cases because you can you can get into trouble with like oh you edited something that doesn't exist in the future but I with Redux I really
17:1117 minutes, 11 secondslike that approach. Um and I'm I'm assuming I would really like this in Live Store.
17:1617 minutes, 16 secondsYes, I'm going to give this a nice shake here. Uh another thing I really like about Livetore is that it plays really
17:2317 minutes, 23 secondsnice with Cloudflare. You can run um this as a cloudflare worker the sync engine. So you have live store as the sync engine. You can run it as a
17:3117 minutes, 31 secondscloudflare worker and then save your event log in a D1 SQLite DB and then you have just your entire backend running as
17:4117 minutes, 41 secondsa sync server and a D1 database and then you have your UI which you can host on on Cloudflare as well. It is all just
17:4917 minutes, 49 secondslike the the hosting to me in this is nicer than some of these other ones because you know the hosting side of
17:5617 minutes, 56 secondsthings can can be a bit of a pain sometimes. So I do like that. Uh next up here is zero sync. Now I've talked about
Chapter 5: Zero Sync
18:0418 minutes, 4 secondszero sync a whole lot. Zero is kind of the the second version of replica in a way where replicaache was a product that
18:1218 minutes, 12 secondscame out and it handled that sync layer and that local data local cache really well um but you still had to do a lot of
18:1918 minutes, 19 secondswork on the back end. So when zero came out it was like what if we take replica and we handle that backend that
18:2718 minutes, 27 secondsversioning that database side of things for you and with zero it is a client side and server side library it's a sync
18:3518 minutes, 35 secondsengine and it does a lot for you but you can bring your own Postgress database and you can bring your own Postgress
18:4418 minutes, 44 secondsdata so if you have a Postgress database and you wanted to turn it to be like a local type of data syncing project,
18:5318 minutes, 53 secondsyou could theoretically throw zero on there without much strife, which is awesome. Uh zero because of that also
19:0119 minutes, 1 secondworks anywhere like you have Postgress databases like you can connect zero to like superbase or something like that. It works really well in th those ways.
19:0919 minutes, 9 secondsAnd the way zero handles it is it sends patch messages of the data back and forth when things change. And your data
19:1719 minutes, 17 secondsis stored more traditionally in your index DB on your local database as patch messages of the data that should be
19:2619 minutes, 26 secondsthere. And when data is changed, it then has the opportunity to sync with the database offline uh or sync with the
19:3419 minutes, 34 secondsdatabase that's remote, not offline, the remote database. And anytime there's changes to the remote database, it pulls
19:4119 minutes, 41 secondsthem into your local data. Anytime there's changes to your local data, it pushes them to your remote database.
19:4619 minutes, 46 secondsThey stay in sync and the load times on this thing are phenomenal. I've built a ton of projects now in Zero, even though
19:5419 minutes, 54 secondsit's still an alpha. And the thing I like the most about working in Zero, it feels like it replaces your backend and
20:0220 minutes, 2 secondsyour OM. And in that, you're you're doing RPC calls what look like that on
20:1020 minutes, 10 secondsthe client side. and it just takes care of the rest. And to me, that's like th these ones that are like taking care of
20:1720 minutes, 17 secondsall of the minutia of, you know, having an API endpoint and things like that. Really, really great.
20:2420 minutes, 24 secondsYeah. Because then you're not setting up any any like server endpoints. You're not setting up like resolvers or or
20:3120 minutes, 31 secondsanything like that. You're just plugandplay. You're ready to go. You got the client uh the client side thing as
20:3820 minutes, 38 secondswell as the server set up. Yeah. And so with zero you typically you're having your sync server which exists as a
20:4520 minutes, 45 secondsserver. You have your database which exists as a Postgress database and then you have your application which exists as uh an application could just be
20:5420 minutes, 54 secondsclient side even and that's pretty much it. Zero is really fullfeatured and the replicash folks have been doing this for
21:0221 minutes, 2 secondsa long time. So they've hit a lot of the edges. They know a lot of where the pain is. Um, and they've really smoothed that
21:0921 minutes, 9 secondsout in a degree. But one thing I really appreciate about Zero Sync is that they give you a ton of control, whether that
21:1721 minutes, 17 secondsis through, you know, how you're writing data, how you're handling permissions.
21:2321 minutes, 23 secondsUm, all of these things, they give you complete access. They let you step in there. And so it will block things on
21:3121 minutes, 31 secondsthe server, block things on the client if permissions aren't aren't there. And for the most part, the entire system
21:3821 minutes, 38 secondsfeels like like once you get it set up, it feels like you're working in something like Fire Store or something like that with
21:4721 minutes, 47 secondsstill owning your do database with it not changing how that data is stored and with the client side experience, like I
21:5521 minutes, 55 secondssaid, feeling like an OM on the client side. It's it's great. Um, next one here is Instant DB. Now, Instant DB is
Chapter 6: InstantDB
22:0422 minutes, 4 secondsdescribes itself, if you want to get a handle on what Instant DB is like, instant DB describes itself as a
22:1122 minutes, 11 secondsFirebase, is it Fire Store or Firebase? Which one is it? Is it both?
22:1622 minutes, 16 secondsUh, Fire Store is Firebase's database. Okay, it is a it is an open
22:2422 minutes, 24 secondswell it's an open- source and uh it's a a firebased alternative is really what it is, but it's it is local databased.
22:3122 minutes, 31 secondsAnd this one is fantastic because specifically it is the one that does the
22:3822 minutes, 38 secondsmost for you. It does everything for you. You have to do the least amount of work to use this. Now, unfortunately,
22:4822 minutes, 48 secondsit's the way you're going to be using this is most likely not through self-hosting it. It's going to be signing up for a service. You get that that API key. You download their
22:5722 minutes, 57 secondslibrary. Next thing you know, you got a full O system, though. You got, you know, like uh Magic Link login. You got
23:0423 minutes, 4 secondsnormal login cuz this comes with authentication baked in. Like some of these others, like we mentioned, you got to roll your own off or bring it from
23:1123 minutes, 11 secondsbetter off or any of these things. This comes with Baked and I will say the client side library for this one is
23:1823 minutes, 18 secondsprobably the nicest in terms of like it feels like Firebase, right? It it feels nice and easy. You can theoretically
23:2623 minutes, 26 secondsself-host this. Uh there is no documentation on that. I think you would have to dive into the code to figure that out. Um I personally wouldn't do
23:3423 minutes, 34 secondsit. The reason why I'm not using this one is because they're a new company.
23:3923 minutes, 39 secondsThere's something about that to me that's like I'm not gonna build my entire company or anything on some sort of new service that is, you know, brand
23:4723 minutes, 47 secondsnew or whatever. But it is a really great platform. And when I built a demo in this thing, I I walked away being like this was the easiest one uh so far.
23:5723 minutes, 57 secondsThat seems cool. Like I'm curious like why would somebody reach for this? I understand why someone would reach for it over like a Firebase, but like why
24:0524 minutes, 5 secondswould someone reach for this over like a supabase, which is already the like Firebase alternative? Is it is it
24:1224 minutes, 12 secondsbecause of the local first stuff? I'm not quite sure.
24:1624 minutes, 16 secondsYeah, I think that's what it's trying to do.
Chapter 7: Brought to you by Sentry.io
24:1824 minutes, 18 secondsAnd if you want to see all of the errors in your application, you'll want to check out Sentry at centry.io/sax.
24:2724 minutes, 27 secondsYou don't want a production application out there that well, you have no visibility into in case something is blowing up and you might not even know it. So head on over to centry.io/sax.
24:3724 minutes, 37 secondsAgain, we've been using this tool for a long time and it totally rules. All right.
Chapter 8: Convex
24:4324 minutes, 43 secondsHey, real quick. I want to butt in here because we're about to talk about convex as being an option here for local first.
24:5024 minutes, 50 secondsAnd I want to really quickly state that the local first parts of context are not
24:5724 minutes, 57 secondsavailable yet. The sync engine and the multiplayer stuff is all in there, but
25:0325 minutes, 3 secondsthe local first side of things are still in flux and still being worked. So if you are looking for something that is
25:1225 minutes, 12 secondsbatteries included that is local first or local data specifically instant DB is
25:1925 minutes, 19 secondsgoing to be more of that option rather than convex at this time but convex is still a great option if you're looking
25:2625 minutes, 26 secondsfor a sync platform data storing. It's way more similar to superbase in its current iteration than it is something
25:3425 minutes, 34 secondslike zero sync or instant DB. So just a quick note there. There's also Convex, which you know what, a lot of people
25:4125 minutes, 41 secondslove Convex, and I haven't used Convex, which makes me think that I I I need to really give this a fair shake because uh
25:4825 minutes, 48 secondsConvex also happens to do a lot of these things. Convex is just a really interesting platform. It it handles the
25:5725 minutes, 57 secondssync for you. It handles the backend. I when I when I've been talking about Instant DB or Firebase or Superbase or
26:0426 minutes, 4 secondsany of these people often say give Convex a look.
26:0826 minutes, 8 secondsYeah, Convex is a paid product. Free and starter projects are free. Professional teams uh 25 bucks per developer per month.
26:1826 minutes, 18 secondsThe per developer per month always kills me. Like the I was just the instant gives you 10 devs to log in. But
26:2626 minutes, 26 secondslet me tell you about Convex self-hosted. Convex you can run self-hosted on your own infrastructure if you want.
26:3226 minutes, 32 secondsUm they have documentation on how to do that. So that's better than instant DB on that. There is just a docker file for that and they even have docs on hosting
26:4126 minutes, 41 secondsit with fly railway those types of things. You can get this going yourself.
26:4626 minutes, 46 secondsSo if you are that type of person you can do that. Tanner Lindsley, he he's sponsored by Convex, which
26:5426 minutes, 54 secondslike you have to say that ahead of time, but like he's he's been telling me like, man, Convex is actually sick. People are sleeping on it. I certainly should.
27:0127 minutes, 1 secondI think people are sleeping on it. I am too. Uh for Convex, there's authentication baked in component Typescript building blocks for your
27:0927 minutes, 9 secondsbackend. There's Yeah, man. Over 80 OOTH provi integrations already existing for
27:1627 minutes, 16 secondsthis thing. resend integration presence man so that you can get like real-time sync presence detecting I man I am just
27:2527 minutes, 25 secondsreally highly sleeping on convex and maybe convex is that thing but I maybe I should give this a rip to I'll just do
27:3227 minutes, 32 secondslike the paid or the free hobby one first and then if I like it then I'll I'll figure out the give it a shot because
27:3927 minutes, 39 secondsyeah there's so many interesting things going on in convex and every time I look at this website I say oo that's the one I'm going to try next and and then I
27:4727 minutes, 47 secondsreach for the more of like the uh more techy ones for some reason. But context is beautiful and uh I think this seems like a great great option. Um electric
Chapter 9: ElectricSQL
27:5527 minutes, 55 secondsSQL, we're getting into the land of sync systems that are more of sync systems and not local data options because a lot
28:0528 minutes, 5 secondsof these things so far that we've mentioned are sync systems and data options. Electric SQL is the sync in cache on the front end, but you have
28:1428 minutes, 14 secondsyour back end. So this does handle local data. It does handle the sync. But just like what we talked about with replica,
28:2228 minutes, 22 secondsyou have to bring your entire backend still. You have to use your backend and you keep your own API endpoints as you
28:3028 minutes, 30 secondstypically would. Not a bad option for somebody who doesn't want to leave their API endpoints and their their backend behind. If you like your backend, you
28:3828 minutes, 38 secondsyou can keep it. PG light uh is what this uses on the client side which is a womb based Postgress. So PG light it's a
28:4728 minutes, 47 secondslight version of Postgress in Wom in the browser and that's how it stores data on the client side and then on the server I assuming you're
28:5628 minutes, 56 secondsjust writing you're just writing like resolvers or like what what is that called like the code that you write to actually it gives you
29:0329 minutes, 3 secondsjust an end point in this end point you got to save it to your database honestly like this is probably for existing applications this is
29:1229 minutes, 12 secondsprobably what people will will reach for because there's a lot of people that have large existing applications and
29:1929 minutes, 19 secondstheir entire app doesn't need need to be done this. But maybe there's one part of the app that that would be nice to have
29:2729 minutes, 27 secondslocal first, but you're not about to start put that in something totally different because you you need that data
29:3429 minutes, 34 secondsin the same database for for the rest of your application to work, right? So yeah, this makes a lot of sense that you would reach for something like this in
29:4229 minutes, 42 secondsan existing app. I think a lot of these things have great use cases for different uh users. Another one here
Chapter 10: PowerSync and PartyKit
29:4929 minutes, 49 secondsoption is power sync. Now powers sync is just the sync server. It doesn't handle the local client data and it doesn't
29:5729 minutes, 57 secondshandle the server side uh side of things. It just handles the syncing which is great if you're looking for a sync server. So uh another one that is a sync server party kit realtime sync.
30:0930 minutes, 9 secondsYou've used party kit before Wes. that gives you multiplayer multiplayer and real-time sync right some of the other ones I guess in this case would be like
30:1630 minutes, 16 secondsreplicache replicash is more similar to electric SQL where it handles the client side data caching and it handles the the
30:2630 minutes, 26 secondsreal time syncing but what it doesn't handle is how that data gets resolved on the server so you have to write an endpoint for pushing write an endpoint
30:3530 minutes, 35 secondsfor pulling you have to manage the versioning you have to manage the sending of the patch messages is uh but it does give you that access to connect
30:4330 minutes, 43 secondsit to your backend however that may be whether that is a database uh that already exists or a new one. So I'm
Chapter 11: Choosing the right sync engine
30:5230 minutes, 52 secondsgoing to do a rundown of some of these quick ones and talk about what's best for who really quick and then we can get out of here. How does that sound to you?
31:0031 minutesSounds great.
31:0131 minutes, 1 secondOkay, so a little bit of a recap here and then some of these you will hear me talk about some ones that we didn't go deep on but there's a reason for that.
31:0831 minutes, 8 secondsSo, Power Sync is the best if you want a sync engine and you want to do the rest,
31:1631 minutes, 16 secondsright? Power Sync probably sits in there and you say, "I want to have full control over this thing. Give me just
31:2231 minutes, 22 secondsthe sync." Electric SQL. Electric SQL is really great if you're deep into Postgress. You want real time, you want
31:3031 minutes, 30 secondscollaborative, you want local data, you want those things, uh, but you don't want to lose your endpoints. You want to
31:3731 minutes, 37 secondskeep your endpoints zero. Even though it's I say this as alpha software, it's the most mature of
31:4431 minutes, 44 secondsthe do everything for you while still letting you bring your Postgress database. This is a Postgress option.
31:5131 minutes, 51 secondsYou you want to add it to your current existing Postgress app. You don't care if your endpoints get you know axed and you want to like have that all managed
31:5931 minutes, 59 secondsor you're starting a new project. You just want to bring a database, a sync engine, whatever. Zero is great. It's very fast. It works awesome. There's a
32:0732 minutes, 7 secondsbig community for it and it does a really super good job. So if if that's where you're at, Zero is a great option.
32:1432 minutes, 14 secondsLive view, you're living on the edge.
32:1632 minutes, 16 secondsYou're trying something new. It's event data. It's event-based data that sounds interesting to you. You want to give something a try that is like truly different and is also very plug-andplay, easy to host on Cloudflare and stuff.
32:2832 minutes, 28 secondsGive Live View a try. Instant DB simplicity at all costs. Uh for sure convex simplicity at all well I wouldn't say simplicity at all cost with convex.
32:3832 minutes, 38 secondsConvex is uh simplicity with cost of payment if you want to use their self or if you want to use their
32:4732 minutes, 47 secondshosted version. Again I got to spend way more time with convex and that that's kind of what I've gotten out of this episode. Replicash is great if you want your local data to work really nicely.
32:5932 minutes, 59 secondsYou want that sync to work really nicely, but you don't mind handling versioning your data. You don't mind uh writing patch messages. You don't mind
33:0733 minutes, 7 secondsactually manually accepting those push and pull. I managed a replica site for a bit. It was great. I moved it to zero.
33:1533 minutes, 15 secondsIt is better in zero.
33:1733 minutes, 17 secondsLive blocks. Live blocks. I built stuff with live blocks like a year and a half ago and live blocks was like we are
33:2633 minutes, 26 secondslocal data. We're multiplayer. were sync engines and this thing just works really nice if you want like collaborative
33:3333 minutes, 33 secondsmultiplayer that actually uh saves offline to a database in a hosted service that's great. Now if you visit
33:4033 minutes, 40 secondsLiveblocks website it says that Liveblocks is AI agents in your product.
33:4733 minutes, 47 secondsSo, you know what? I I really like Live Blocks. When I used it, even though it was a paid product and all that stuff, I
33:5533 minutes, 55 secondsthought there were some really great things about Live Blocks. Like, it gave you presence, which is where you have like the multiple cursors like Figma type of thing. But the fact that their
34:0434 minutes, 4 secondsmain product is now AI agents in your product leads me to believe that they couldn't make any money off of the prior
34:1334 minutes, 13 secondsone and are doing a pivot with that same tech that's powering it. I I also think that we're seeing this quite a bit right
34:2134 minutes, 21 secondsnow where companies who have spent so long working on the tech are now realizing, holy crap, we got the tech to build this
34:3134 minutes, 31 secondsthese AI products and let's not let somebody build the product on top of us. Let's build the products ourselves.
34:3834 minutes, 38 secondsBolt.new was working on stack blitz for years and their whole web containers being able to run it and then they realized, oh, holy smokes, we got the
34:4534 minutes, 45 secondstech. We can run it and we can do this ourselves. And did you see Air Table pivoted to an AI app
34:5434 minutes, 54 secondsbuilder which air tableable was like a uh how would you describe what Air Table was?
34:5934 minutes, 59 secondsWas it like project management? Is that what it was?
35:0235 minutes, 2 secondsI get that one in money monday.com confused.
35:0535 minutes, 5 secondsNo, Air Table was like a like an Excel real time Excel.
35:1035 minutes, 10 secondsYes. Yes. Yes. Yes. It was like a developer platform for like powering things and now they're just like, well, turns out you can build sick stuff on
35:1835 minutes, 18 secondstop of it. Let's pivot our entire business, which that one was very surprising to me because that's seems like they were pretty well established and not like looking for product market fit.
35:2735 minutes, 27 secondsPartykit, you want real time sync? Party kit also has pivoted pretty hard into saying the open source deployment platform for AI agents is now the first thing on their list.
35:3635 minutes, 36 secondsReally? But multiplayer? Yep. Yep.
35:3935 minutes, 39 secondsEverybody's pivoting to that. So, here's a question I have for you. I want to build let's say I want to build an app where
35:4735 minutes, 47 secondsI I want to use groceries. Let's call this like a grocery app, right? And and my me and my wife can add stuff to it.
35:5535 minutes, 55 secondsIt's a list and you should be able to categorize it. There's AI in it, so it could it could be able to figure out like in which order should I pick these things given the layout of my store.
36:0636 minutes, 6 secondsMaybe there's offline because I'm in a grocery store. like sometimes our Costco I can't get uh service in because of the weird roof on it.
36:1536 minutes, 15 secondsLet's say you want to build that app. It seems that's a relatively simple app, but it needs to have all of the it needs real time, but also needs local data. It
36:2336 minutes, 23 secondsneeds sync and it needs a database. I want to build that as fast as humanly possible. Which one of these are you reaching for?
36:3236 minutes, 32 secondsWhich one am I reaching for?
36:3436 minutes, 34 secondsNot given the fact that you want always reach for the one you haven't tried.
36:3836 minutes, 38 secondsOh yeah, because that was going to be my answer. No, the fast but like someone listening. Yeah. Vu.
36:4536 minutes, 45 secondsYeah. As fast as possible. If you're talking fast as possible, I think you
36:5136 minutes, 51 secondswill get app to hands the fastest with instant DB. That not that that's what I
36:5936 minutes, 59 secondswould pick long term or something, but just how fast it is to get. I I built around. You don't care about
37:0737 minutes, 7 secondsI built a to-do list in that in like 5 seconds. Like no time at all. If you're talking about a more established
37:1437 minutes, 14 secondsplatform, Convex looks great. You're you're clicking a couple buttons, you're having the sync. The one of the biggest
37:2037 minutes, 20 secondsbarriers to entry to getting like app to your hands in a real world use case is figuring out like hosting of the
37:3037 minutes, 30 secondssync server, hosting of your database, picking an OM in many cases because like with zero sync and some of these you
37:3837 minutes, 38 secondsstill need to handle migrations, uh you still need to handle like your actual database like I when I'm working in zero
37:4737 minutes, 47 secondsI have to write my schema in Drizzle and migrate that database in Drizzle so that my Postgress database is ready for that
37:5637 minutes, 56 secondslocal data sync. Right? So if you have something that has a hosted version of it like convex, you click a button, you get an endpoint or whatever and then you
38:0538 minutes, 5 secondscan just connect it. That is going to be the fastest way. So you don't have to worry about where you're hosting that sync server. With zero again it's an
38:1438 minutes, 14 secondsalpha. you're going to hit rocky spots around the way. Hosting the sync server like with SST can be a giant pain in the
38:2138 minutes, 21 secondsass. You can always just host it anywhere you host a node app or if you're good with Docker, that's fine.
38:2638 minutes, 26 secondsBut if you're talking 0 to 100, I think a managed service like Convex or Instant DB are going to be the fastest. I think
38:3438 minutes, 34 secondsLive Store is going to be very fast, too. I I you know I haven't gotten a version of it up and working yet because of the spelt integration, but like the
38:4338 minutes, 43 secondsfact that you can host it all on Cloudflare infrastructure. I could see that being you start a starter kit up, you push it up to Cloudflare, you you
38:5038 minutes, 50 secondsgot your data, you should be good to go on that one. You're not having to write migrations for that even. So beautiful.
38:5738 minutes, 57 secondsYeah. So, a lot of good options here and a lot of really interesting things to try. Is there a platform that you're using that we didn't talk about? There
39:0539 minutes, 5 secondsare plenty of them. Trust me, I've tried so many of these things from Evolu to man, I can't even I can't even come up
39:1339 minutes, 13 secondswith most of the names anymore. Um, Dexi, Dexync, and and just there's so many of these options out here. So, if there's something that you're using that
39:2039 minutes, 20 secondsyou're liking, let me know that if we should be spending some time on it and comparing it to these others. If you're doing any work with local data or local
39:2839 minutes, 28 secondssync, let me know. Many people are wondering why the replicash part two video never came out. Uh it's because Zero uh was released soon after and I
39:3639 minutes, 36 secondswas waiting until Zero was at least in beta to do a Zero series. It's like, you know, might as well just wait on that one. So, uh that will be coming. We'll be doing a lot more educational content.
39:4639 minutes, 46 secondsIf you want to see something with live view, you want to see something with Convex, let me know. I would love to put some of that stuff together.
39:5439 minutes, 54 secondsSick.
39:5639 minutes, 56 secondsBeautiful. Cool. Well, thank you for that. I really want to build something now and I think I might take the rest of the day to to spin up a couple of these.
40:0440 minutes, 4 secondsI've been I've been hearing you talk about it, you know, and I I've used Dexi myself, you know, but I I kind of want to try something that's a little bit
40:1240 minutes, 12 secondsmore like full stack, you know, it's all it's all included for you. So, I'm going to be building an app with Convex today. I'm already deciding it
40:2040 minutes, 20 secondsand I know what the app is going to be and maybe we can we can check back on that and do a full episode on Convex once we've gotten into the nitty-gritty
40:2740 minutes, 27 secondsthere. But, um, I have a fun app idea that I've been kicking around for a little while. So, I'm going to be I'll be doing that.
Chapter 12: Sick Picks + Shameless Plugs
40:3440 minutes, 34 secondsBeauty. All right. Should we wrap it up here?
40:3840 minutes, 38 secondsYeah. Let's get into the part of the show where we talk about sick picks and shameless plugs. Things that we are
40:4540 minutes, 45 secondsenjoying, things that we just like in general. I got a sick pick for y'all.
40:4940 minutes, 49 secondsUm, my wife is always into finding and we're not like a we're not like a board game family. We're not playing all the crazy board games, but we do play games.
40:5740 minutes, 57 secondsWe like to, you know, have have uh, you know, games that aren't or activities that aren't based around Nintendo or
41:0541 minutes, 5 secondssomething like that. So, we've been always just on the lookout for fun little family games. And we got this one, which is it's by no means like a
41:1441 minutes, 14 secondsrare gem or something, but it's a Remy Cube. Remy Cube is like a tilebased.
41:1941 minutes, 19 secondsThey're kind of like little dominoes based game. And yeah, what's great about Remy Cube is that there's math involved. Uh kind of.
41:3041 minutes, 30 secondsYeah, there's math involved kind of.
41:3241 minutes, 32 secondsThere's patterns, there's sequences, and there's like deeper skill involved. So,
41:3941 minutes, 39 secondsif you're the type of person who wants to like geek out on getting some interesting skill-based play, there is
41:4741 minutes, 47 secondsthat available. If you're a child and you're getting used to patterns and stuff like that, my my daughter is a
41:5541 minutes, 55 secondspattern wizard. uh she got my my uh visual spatial brain and you know she's six and she's able to identify these
42:0442 minutes, 4 secondssequences and patterns and once she landed on the rules is really able to do it herself and and like look at the
42:1142 minutes, 11 secondsboard in a way and um it's just a really nice family game. We played it a couple times now. we've got the feel for it and
42:2042 minutes, 20 secondsuh it's one of those ones I think that as you get better and better as the kids get older it's just going to become more and more fun for everybody. So Rummy Cube is really great.
42:2942 minutes, 29 secondsThis game reminds me so much of indoor recess uh when I was a kid. So I'm pretty sure this is a Dutch game. I don't know. It must be because like when
42:3842 minutes, 38 secondsI grew up, everybody played Rummy Cube really.
42:4142 minutes, 41 secondsAnd yeah, it was just huge in like the Dutch circles and every time that you had like raining at school, you'd stay
42:4842 minutes, 48 secondsinside indoor recess and this is what they would teachers would bring out and you'd everybody would play this game.
42:5442 minutes, 54 secondsThat's so funny because we have we just heard about it. We are like the last in the world to hear about Remy. Um, and
43:0243 minutes, 2 secondsit's because Courtney wanted to learn maong, but like she wanted something that the kids could play. She didn't know if that was like a good a good game
43:1043 minutes, 10 secondsfor like the whole family to play and it seemed like a bit intense for everyone to learn. So, we were like, "Oh, let's find something like that in a way." And
43:1943 minutes, 19 secondswe just found somebody saying Remy Cube is similar in in some sort of way. and we ordered, gave it a try, and yeah, I I
43:2843 minutes, 28 secondswould imagine it could be Dutch if if uh here, let's let's look it up. AI is
43:3443 minutes, 34 secondstelling me it was made by a Romanian but gained its popularity in the Netherlands where it was initially marketed.
43:4243 minutes, 42 secondsInteresting.
43:4243 minutes, 42 secondsInteresting. Yeah. Cool. I'm going to uh sick pick these earphone covers.
43:4843 minutes, 48 secondsEverybody always asks me where where I'm getting them. and they're kind of obnoxious, but if you have a pair of headphones, and I see this all the time,
43:5643 minutes, 56 secondslike I'm on the Bose subreddit, I'm on the Sony subreddit, and every other post is like, "My headphones are shredded." Like, what the hell? And like these
44:0644 minutes, 6 secondsheadphone pads are fairly disposable, meaning that you'll probably get a couple years out of them and then they're going to fall apart. And if you
44:1344 minutes, 13 secondshave a a pair of shredded headphones, nothing better than getting a new pair of earcups. makes it feel like a brand
44:2044 minutes, 20 secondsnew pair of headphones. I've had these Bose QC35s for I think probably 10 years. I've converted them to USBC. I
44:2844 minutes, 28 secondsabsolutely love them, but uh I replace the ear pads on them every every while.
44:3344 minutes, 33 secondsSo, I have bought them from Wicked Cushions in the past. I've bought them from AliExpress in the past. They are
44:4244 minutes, 42 secondsfantastic. If you can find them for your set of headphones, I highly recommend going and grabbing grabbing a set. Grab a set. That's what they always say.
44:5144 minutes, 51 secondsCool. All right. Uh, shameless plug. Check us out on youtube.comsintaxfm.
44:5744 minutes, 57 secondsUh, hit the subscribe button if you haven't already. And, uh, take a look at some of our videos. We just released one on building a capture for Kit Boga and
45:0745 minutes, 7 secondshis scammers. And man, that one was a hoot. You're going to certainly going to want to check that one out.
45:1345 minutes, 13 secondsI'm going to say straight up, funniest video we've ever done. If you like to laugh, if you love laughs, lots of laughs, put this video on. My
45:2145 minutes, 21 secondswife uh put it on and she is not like even techy at all and was like, "This thing is hilarious."
45:2845 minutes, 28 secondsEveryone's built a capture. Yeah, I'm sure it's not because of me. I'm sure it's because of uh you and uh you and CJ. The the captures are hilarious.
45:3645 minutes, 36 secondsI got to say, I don't know if capture was freaking had me crying. The idea he had for it. I had to leave the
45:4445 minutes, 44 secondsset because uh of Wes's I had to run away and I could not catch my breath. It was so funny. So uh put this video on. Honestly, you will love it. I loved it.
45:5245 minutes, 52 secondsI've watched it a couple times already and I think it's the best thing we've done. So check it out.
45:5745 minutes, 57 secondsCool. All right. Thanks everybody for tuning in. We will catch you later. Peace.

Sync to video time
