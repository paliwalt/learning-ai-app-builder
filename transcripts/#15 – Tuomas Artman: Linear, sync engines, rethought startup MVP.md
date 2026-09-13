https://www.youtube.com/watch?v=XTMyOtvBJ_g


#15 – Tuomas Artman: Linear, sync engines, rethought startup MVP
Local First Podcast
Local First Podcast
3.26k subscribers

Subscribe

158


Share

Ask

Save

4,848 views  1 Oct 2024  Localfirst.fm Podcast
The guest of this episode is Tuomas Artman, co-founder and CTO of Linear. Prior to Linear, Tuomas had already built sync engines for over a decade at companies like Groupon and Uber. This conversation will explore how local-first and software quality was crucial for Linear’s success and how the concept of a startup MVP should be rethought. 

00:00 Intro
03:39 Sync Engines
11:44 Linear origin story
17:55 Initial focus: Command menu, native feel, real-time
27:02 Rethinking the Startup MVP
35:52 Hiring and Company Culture
40:12 Values and Vision
43:59 Advice
49:16 The Importance of a Sync Engine
01:00:04 Outro

Mentioned in podcast:

Tuomas Artmanr: https://x.com/artman / https://github.com/artman
Linear: https://linear.app
Scaling the Linear Sync Engine:    • Scaling the Linear Sync Engine  
Rethinking the startup Mvp: Building a competitive product: https://linear.app/blog/rethinking-th...
Unexpected benefits of going local-first - Tuomas Artman (Local-First Conf):    • Unexpected benefits of going local-first -...  


Links:

Website: https://localfirst.fm
X/Twitter: https://x.com/localfirstfm

Thank you to https://www.powersync.com/ and https://rocicorp.dev/ for supporting the podcast
Tuomas Artman discusses the evolution of engineering sync engines, from early multimedia projects to modern startup infrastructure. The conversation examines the importance of prioritizing high-quality software craftsmanship and user experience over rapid, feature-heavy development cycles when entering established markets with incumbent competitors.
Summary

How this was made
Auto-dubbed
Audio tracks for some languages were automatically generated. Learn more
Ask


--------------------------------------------------------------

In this video



Chapters

Transcript
Search in video
Intro
0:00
And like from the get go, we knew that we just like, the way for us to win was to build Something that was excellent, like build a product
0:08
that would just feel so good that you wouldn't want to use anything else.
0:13
You have to build something much better in order to to be able to gain market share. And convince users to switch over.
0:20
And because our mission is to help companies be better at building software, like, We should make a product that is an inspiration to them as well.
0:29
So we should make sure that, know, when they use the product, they're like, oh, man, like, ooh, this feels good. Like, I want to make my product as good as this freaking project management solution.
0:41
Because if you can make an issue tracker that is, that is aspired to, then like, then you can make any, any application as, as, as nicely, like an issue tracker
0:50
is hard to pull off as being a very nice and cool looking and, intuitive app.
0:56
Welcome to the Local First FM podcast. I'm your host, Johannes Schickling, and I'm a web developer, a
1:02
startup founder, and love the craft of software engineering. For the past few years, I've been on a journey to build a modern, high quality
1:09
music app using web technologies. And in doing so, I've been following down the rabbit hole of local first software.
1:15
This podcast is your invitation to join me on that journey. In this episode, I'm speaking to Tuomas Artman, co founder and CTO of Linear.
1:25
Prior to Linear, Tuomas had already built Sync engines for over a decade at companies, including Groupon and Uber.
1:32
In this conversation, we explore how local first and the focus on software quality was crucial for Linear's success and how the concept
1:40
of a startup MVP should be rethought. Before getting started, also a big thank you to Rosicorp and PowerSync
1:48
for supporting this podcast. And now my interview with Tuomas. Welcome Tuomas.
1:54
So nice to have you on the show. It was such a pleasure to also have you in Berlin for the Local-First Conference
1:59
a couple of months ago, and super excited now to dig in even deeper into so many things local-first with you.
2:06
Would you mind introducing yourself? Yeah, of course. Um, and thanks for having me and having me at the local first conference, which was I
2:14
guess the first conference that, you know, was about local first, which was awesome. I thoroughly enjoyed it.
2:20
I'm Tuomas. I've been engineering my whole life. Like I started way back in, in 96, doing CD ROM multimedia presentations.
2:28
if you can imagine, when the internet was sort of not there yet, if you ever had a Nokia phone that usually came with the CD ROM, with
2:35
instructions on how to use that phone. Chances are that, that was made by the company that it was working for, or even by me.
2:41
I did a few of those as well. but you know, ever since then, obviously the intern came around much, much more interesting.
2:46
I, started the consultancy for nine years until I realized that, that's not what I want to do.
2:52
Did startups a few in Finland, went to China for a year, doing a startup there. until I got the opportunity to move to, Silicon Valley,
2:59
joint Groupon, and later Uber. and, finally, I found myself as the co founder of Linear,
3:05
you know, six years ago. and, I've been, working on essentially the harder technical problems.
3:10
I do enjoy working on products, More, but, somebody needs to take care of all the tech stuff.
3:16
so I found myself, like, working on the sync engine in the early beginnings, and, that's what I'm still, working on.
3:22
So I've, done anything from CD ROMs back in the day to sort of, you know, early web
3:27
HTML applications, then going into mobile. and now I'm doing sort of, sync engine and infrastructure.
3:33
So I'm, I'm literally have gone, full round and I'll end up with, probably doing CD ROMs in the future as well.
Sync Engines
3:39
That is super impressive and very inspiring. When you've been building software got shipped on CD ROMs,
3:46
I was four years old in 96. But. It seems like a theme throughout at least the later years of your engineering
3:54
career and path has been sort of like gravitating towards syncing engines.
4:00
So when was the first time you thought about the concept of syncing engines and used the term?
4:07
Um, that was in the consultancy back in, Finland, like we had a consultancy doing all kinds of, you know, campaign stuff and internet things.
4:14
Um, Flash was pop then, um, and, you know, we did a lot of Flash campaigns and Metro
4:19
Media had this, plugin called Shockwave. I don't know if you remember. and it had a 3D component, so you were able to do, 3D accelerated games on it.
4:27
and we did one of these games, and it was a sort of multiplayer shoot 'em up game, which was amazing back then, and I loved it, and it
4:33
looked, you know, super awesome. and it, it was multiplayer. It was like four people against four people.
4:39
so it, it needed What I would call a sync engine, like you needed to sort of, you know, send over the coordinates of, you know, all of these ships.
4:47
it was, you know, fully real time, 3D rendered, stuff, so it needed to be really, really fast. And that was, you know, the first time I wrote, could be described as sync
4:55
engine, where you would annotate some properties saying, like, these need to be transferred to all the players in that room, and it would automatically pick up
5:01
on those and then send them over whenever they changed, which happened, like, effectively, locally, then, the Client code would just change those properties.
5:10
So that still looks very similar to what we have today, where, like, you annotate your properties, and then they automatically get picked up and sent
5:18
over to the server to do something. So that was the first time I built a very simple sync
5:24
engine, a bit more complicated. One, I built one in China for this, you know, I was working at a gaming
5:30
company or a gaming startup that had a lot of smaller teams building games for, one of their portals that they had.
5:37
And I was, one of the CTOs there, like we had two CTOs, weirdly, like a Chinese CTO and then me.
5:43
And I was responsible for sort of the, trying to build out a common stack for, their real time games.
5:49
So I built another sync engine, and this time with Yeah, I don't remember what the first one was built on, even, but the second, like, my second
5:56
sync engine was built with Node. And it had a Flash client and a Unity 3D client.
6:02
And it would essentially do the same thing as, know, the first one that I built. Like, it would pick up properties and send them across the room.
6:09
It was a bit more intelligent. Like, it did more stuff. And it became, better. And then my third sync engine was built for Groupon when I joined, um,
6:18
in San Francisco in 2000, probably 12. and I was working on a point of sale application, for high end restaurants.
6:26
Like you would have an iPad in the, or multiple iPads in the menu. and you could take orders, you could swipe credit cards, you could
6:32
sort of, print out tokens to the kitchen for them to prepare the food. and all of these iPads need to be in sync.
6:38
Cause. Otherwise, you could take sort of the order twice, or you could charge the customer twice.
6:43
So, I was like, hell, I know how this stuff works. They had a very complicated thing built that just didn't work very
6:51
well, and they wanted to pull it out. And I was like, I can try something. I can sort of, you I tried to reinvent how this should look like, so I built
6:59
in a sync engine, this time with Objective C, and a Node backend, because,
7:04
I was pretty good at that already. And, yeah, it shipped into production, it would synchronize all the iPads
7:11
at the menu, and just make sure that everything was nice and tidy. And it had offline support, even.
7:18
Even back in the day, because, um, we realized that, many of the customers had, pretty, flaky Wi Fi. And so you would, constantly lose, your connectivity to the backend.
7:26
and we want to do something about it. So it would, you know, buffer all these requests on the iPad. And I think it tried to even talk to the other iPads to synchronize
7:34
between them before sending it out. to the internet, and that sort of worked, but, you know, obviously
7:40
immediately somebody, somebody took it, to the next level. And, we never said that there was offline support. We've just said, like, you can turn your, you know, Wi Fi off for a second.
7:49
And we had built in these precautions of like, what happens if you don't have connectivity and you, you take a credit card charge?
7:56
we would store, that credit card securely. On device, like encrypted, and make sure that, you couldn't get at it, you know,
8:02
otherwise, and then when you got back, you would replay those, those orders and, hopefully they would go through, obviously it wasn't no guarantee because we couldn't
8:10
check with the payment provider, whether that been true, that went through, so we never anticipated for anybody to sort of be offline for a long time.
8:20
And then there was this company that operated the train across the Rocky Mountains, and they had a restaurant car.
8:27
And what they immediately did, they bought the software, which was called Breckrum, and they started just charging everybody.
8:34
in that restaurant car for two days. Like, two days they didn't have any Wi Fi connectivity and took all
8:40
these charges and then, regained connectivity once the trip was over and, luckily it all worked out.
8:45
yeah, it could have gone really wrong and would have been very, very expensive. but, I don't know what happened to that.
8:51
We probably told them to never do that again. and, it wasn't really meant for, meant for that, but. Yeah, so that was the third sync engine that I, that I wrote.
8:58
and the fourth one was for Uber. I mean, I joined like literally every single company I've done in, in, in the past, five companies.
9:05
I've built a sync engine, engine for them. Um, At Uber, I joined at a time when hyper growth was just going on.
9:12
I think we were 300 engineers when I joined. Later we will be like 4, 000.
9:17
And I tried to build a sync, or I actually did build a sync engine with a Go
9:22
backend together with a former colleague of mine who was a Groupon as well. And we shipped a sort of, small beta product out on it.
9:31
Like, I think if I remember correctly, it was sort of a courier service in New York where you could Just order a car and the car would come and pick up your
9:40
stuff and then you could sort of, see him deliver those things in your city and we
9:45
built that thing in effectively a week. Like the sync engine obviously took quite a bit of time to put together.
9:50
But after that, building the application was a week and with that in mind, I, went
9:55
to, my managers and, tried to explain to them how, how freaking awesome it is that you can build an application that does, sort of, all of this out of the box in
10:04
a week and we should sort of just, put the whole Uber application onto this. And I sort of got the green light to try to do it but I just wasn't able to,
10:16
like, the company was moving so quickly and everything was just, on fire all the time around me that nobody really cared about, like, my nice initiative
10:24
to sort of put a sync engine in. And it sort of bothered me very much because, like, even a year later,
10:33
like, the way that Uber client did sync was what we call ping.
10:39
It would, every three seconds, call the server and receive everything, everything
10:45
that it knew in this one huge packet, every three seconds it would go in and fetch the entire state of the world.
10:52
And then like including, user accounts and credit card, credit card that you had in the application, all the cars around you.
10:58
you know, Literally, literally everything. And it was like, pretty big packet. So it, it, it felt so inefficient.
11:04
And, then we started optimizing it a bit and effectively build. some small, you know, sync like functionality into it,
11:11
but it was never the same. Like, I think that Uber would have been so much better off if they had, just gone with a sync engine, put it in and build it effectively
11:19
like a local-first application out. It would have saved so many, so many engineering, engineering hours, and the product would just be much better because of that.
11:27
Yeah, it didn't happen. So, that actually was open sourced. It's called JetStream. Like, I think it's somewhere still on GitHub, if you want to check it out.
11:34
We had a Swift client and a JavaScript client, and even an Android client and a Go backend.
11:41
It was, it was interesting, but, unfortunately, never, never worked out. And then came Linear. And um, yeah.
Linear origin story
11:47
What do you start, that product with, like, you just come out of Uber and you're sort of super excited about local-first and think that, that's the
11:54
model of the future of how you should be building any kind of application that has a limited set of data.
12:00
And I, I was excited just, trying out things and, getting back to web, like I hadn't worked on, on, on web technologies in, in ages.
12:09
It probably was like six years that I had spent on mobile, mobile engineering. So when I got back, like I was like, holy crap, like what is all this React stuff?
12:16
Like this, this looks awesome. And the technology has just, progressed so much that I you know, had to learn a
12:21
lot of stuff, which was super exciting. And the first thing that I, that I did, like, , Jory and I got together
12:27
on hacking on, on just some issue tracking, because, we were excited about or we weren't excited about this space, but we thought that somebody should,
12:35
do something about it should figure out like, to do a project management system that actually worked nicely.
12:40
Because we had heard all these stories at our respective companies of like, how, how people just disliked whatever they were using back in the day.
12:49
And we were like, oh, it sounds like an interesting challenge. And so we started, effectively just. hacking on it.
12:56
And through just making a few prototypes with a local-first architecture, we were like, holy shit, this is pretty good.
13:03
You can, rather really quickly build something that is immensely fast and is real time.
13:08
And it just feels like a modern application that, isn't really a web app anymore, but just a desktop app that just runs in your browser.
13:16
That is fascinating. So through those technical prototype explorations, you build for
13:21
yourself the conviction, Oh, we can build something much better. And that has then led to the building, the conviction to start out Linear.
13:29
Do I summarize the starting point there correctly? I think so. Like, so we were struggling with the, with starting the company or not struggling.
13:38
Like we, we didn't want to spend 10 years of our time doing project management because it felt such a boring space to be initially.
13:46
Like when you think about like, we were always like, very often we we're just having a drink first with only Jory.
13:52
And then we tried to, recruit Kari as well. But he was even less interested in, in this space, like project management,
13:58
what the hell and We always had the, the weird, idea of like, it seems such
14:03
a simple thing to do, like, it seems like such an opportunity to build, start with an issue tracker, because like, you don't need much more than that in
14:11
order to sort of cater to startups. And it felt like such a market opportunity to build something
14:16
really good in that space. And it really shouldn't take too much time. Like, it was a relatively simple application and we immediately knew that.
14:23
We would be able to build it. But we always came back to the idea, like, why hasn't anybody else done this before?
14:29
And thinking about that problem so many times, we were like, the only the only reason we could come up with was that nobody who sort of was able to
14:37
create beautiful applications wanted to spend their time on project management. And thus, nobody had done it before.
14:43
And we were sort of struggling with the same thing as well. Like, We didn't want to spend our time with project management.
14:49
Like, it felt like an industry that was kind of boring until later. And, my co founders might have a very different, view on, on how this happens.
14:56
This is how I felt. Like at some point at least I understood like that it's, it's not about
15:02
building a project management solution. Like it's, it's about helping companies be better at building software. And that sort of became our mission statement in, in the
15:10
early days, like helping companies be better at building software. And that was sort of a selfish mission as well.
15:15
Like I enjoy using software, like I, I love using, great applications and, when the iPhone came around like that, that mechanism of using, your mobile phone
15:24
in a, in a very different manner in a much more intuitive manner was, awesome. And I wanted to enable people.
15:30
To just build better software so that I can use it myself. And I think we did these sort of, technical trials at the same time as well.
15:37
Like we did some prototyping and I was, I was just hacking with Couchbase or some other tech to sort of, put together a few, few demos just to, catch up with.
15:46
With the rest of the web stack that I hadn't used in ages. but yeah, that's, that's sort of how we, how we got started.
15:53
And like from the get go, we knew that we just like, the way for us to win was to build Something that was excellent, like build a product
16:02
that would just feel so good that you wouldn't want to use anything else.
16:07
Because, like, again, the incumbent solutions have been around for, for ages and they're so ingrained in all the software companies.
16:14
You have to build something much better in order to to be able to gain market share. And convince users to switch over.
16:21
And because our mission is to help companies be better at building software, like, We should make a product that is an inspiration to them as well.
16:29
So we should make sure that, know, when they use the product, they're like, oh, man, like, ooh, this feels good. Like, I want to make my product as good as this freaking project management solution.
16:41
Because if you can make an issue tracker that is, that is aspired to, then like, then you can make any, any application as, as, as nicely, like an issue tracker
16:50
is hard to pull off as being a very nice and cool looking and, intuitive app.
16:57
Totally. I'm friends with some of the folks who built Wunderlist back in the days. And I mean, I think that there's a lot of similarities there
17:05
where I don't think there's like anything sexy about a to do list.
17:10
But yeah, Wunderlist was so well built and felt so great to use. I think there's a lot of similarities there.
17:18
And yeah, if you think about it, like a issue tracker is sort of like a more evolved to do list.
17:25
And this was like over a decade ago, and I think you've now just set the new bar
17:30
of what a high quality app looks like. Where did you put your focus on when you said, okay, we want to,
17:37
to build an app that feels great. And so the early technical explorations were also like an ingredient was snappy
17:45
data with that sync engine, but which other parts did you feel like this
17:51
is what we have to really get right that otherwise it won't feel good? Yeah. So we have three points three things that we want to achieve, like
Initial focus: Command menu, native feel, real-time
17:59
Superhuman was around back then. So Superhuman was an inspiration to us. Like their command menu was, an inspiration.
18:06
So the, the first, like we started using Linear, the, the week we started building it. So we have all the old tickets in, in there, you know, still.
18:13
And the first ticket that is in Linear LIN1 is about implementing the command menu.
18:19
The first thing that you start with when building a product is implement a command menu like that. That tells you something about sort of the.
18:25
Yeah, the interest that we had, like, we wanted to play around with, with sort of new ways of building UI and new ways of, keeping or making our
18:34
users sort of, be super users without having anything else in the app yet. So that was the first thing that Jori started implementing.
18:43
And I, I started implementing the sync engine cause like we like, yeah. So the first thing was like, we need keyboard shortcuts and command menu.
18:51
Like we need to enable the application to be super fast for, for super users.
18:56
So if you're a, you know, high end engineer that just wants to get, things done very quickly in their issue tracking software, we should enable
19:02
you to just, use keyboard shortcuts and the command menu to get things done. The second one was that, the application should feel like an
19:10
application, like a native application. We, like, we knew that we couldn't build a native app because then we would have
19:16
to do a Windows version and Linux version and it would just, and a web version as well, because, like, often you, you, don't have your computer with you or you have
19:24
your iPad and you just need to sort of go onto the internet and see your tickets.
19:29
So we were like, well, we need to cut corners there, but let's try to make an application with web technologies that feels like a native application.
19:37
So that was the second thing. And then the third thing was sort of the real time aspect of it. Like, we wanted it to feel real time.
19:43
Again, coming from these other solutions that we had used ourselves like, it
19:49
was a thing back in the day when, you had to refresh the page in order to see if anybody else has updated it.
19:56
It's kind of strange that that was the case. There was no background push, for most of these, these tools
20:02
and everything was a page load. And you know, maybe a fourth one was the speed as well. You could couple that with the sort of native application.
20:09
Like, speed of the app, like, I mean, native application is fast. So, our web application needed to be fast as well.
20:16
And one concerning thing that, happened, or not concerning, but a weird thing, was which relates to sort of not trusting everybody's feedback.
20:25
I, when we had an early prototype of the application with the command menu and keyboard shortcuts, and it was super fast and all that I showed it to
20:33
a friend of mine in Finland when I was here, here on vacation and you know, showed him all the, all the cool things that I thought were super exciting.
20:40
Like the, the, the quickness of it and the real time aspect of it. I had two windows open and then I changed here. It changed here.
20:47
and, he was like, well, I don't really get it. Like I, my current thing is, is fast enough.
20:53
Like I really don't need the speed. I don't really use keyboard shortcuts. Who needs that real time stuff?
20:58
And I was devastated by that feedback. I was like, what the hell? Am I wrong or is my friend just wrong?
21:05
It turns out my friend was wrong. And those three things are the things that we're known for today.
21:11
And that people appreciated the product. The quickness of it. The ability of using keyboard shortcuts to do many, like, all operations effectively.
21:19
Maybe not so the real time aspect, like, nobody calls out the real time aspect of it, but I think that comes as a given, like, in a modern time,
21:26
you'd expect your application to be up to date without you having to refresh. The page, it would have all kinds of problems if it didn't do that.
21:35
So, so yeah that's why, why I started with the sync engine. Like, I'm thinking about a regular sort of, startup story or a journey
21:43
of a startup, like those are the last things that you should do. Like, the common knowledge is always, build a, quick and
21:50
early MVP to try out your ideas. Get in front of users. And we spent like half a year building out, the sync stack and the command
21:58
menu and all this, all this stuff. And I think that was, that was a great success.
22:03
Like, it could have had a very different outcome if you had just built an issue tracker before and then in the end, try to sort of hinge in a sync engine or
22:13
replace whatever we had built, as a REST API, and put it into a Sync Engine stack.
22:19
So I think we we totally did the right thing, at least in hindsight of, focusing on, on sort of the tech first and obviously the design as well.
22:27
Like Kari jumped in and started doing, designs and it took us some time to, get it right and, and make it work.
22:34
But the first version that we launched was already looking very much, of, of what we have today. I see so many parallels to also how I intuitively tried to build Overtone
22:45
the, the music app where I think it was probably after I implemented
22:50
like initial list of tracks and some playlists where you could switch between those lists of tracks.
22:57
I remembered, okay, I'm not going to just click on those playlists. I have to use a command menu for that.
23:03
So, I think also at some point where I just needed a break from, like, many of
23:08
the more low level harder SQLite things. I treated myself to implementing that command menu and I haven't now
23:16
attached it for two years and it just works and makes the app feel so nice. And that's always like, it's one of those features where someone sits
23:24
next to you and he sees you using that and it's like, Oh, what is that? And I think by now it's just shout's power tool.
23:32
And also the other aspects that you've mentioned that qualify that high quality goal that you set for software is like that native feel.
23:42
Since I was also on a, on a similar fork in the road, like how should I build this? And I think one very interesting path could have been to say like, I'm,
23:51
I'm a Mac OS user, I'm a iPhone user. So. Like being also led by building things for myself, I could have
23:59
selfishly just said, okay, I'm just going to build this in Swift for Mac OS and for iOS and that's it.
24:07
But then also with my web background, I knew that was going to be extra
24:12
hard to do it for the web, but the distribution of the web is so powerful
24:18
that it's probably going to worth that effort, but that has like, what drew me to, Native macOS, native iOS, is that like that notion of it's native
24:30
and people ask like, Oh, is it native? And when you ask them, well, what, what does it mean for you? It's kind of gets fuzzy very quickly, but I think it's even more
24:38
important that it should feel native. And building a web app that feels native was always like a intuitive
24:47
north star for me that I had to. Like pin down more and more. What does that actually mean for Overtone?
24:53
For example, for Overtone, I have decided that the cursor is actually not
24:58
becoming a pointer on when you click on a button, but it stays like a default one.
25:03
I think this is one where I think the internet is deeply divided whether they know it or not.
25:09
But that, but I, I've like, I was led a lot by Mac OS Finder as an inspiration for how an app should feel.
25:17
And so this is where I spend a lot of time just thinking about that and tweaking the little details.
25:23
So this, this is a story about the, the only time that we've, you know faltered, in our judgment.
25:30
We had, The pointer cursor in there for every button that you had, like,
25:35
your pointer would turn into a finger and then we removed it because we're like, no native application uses that.
25:41
It's the right thing to do. Our application, should feel native as well, so it remains a pointer.
25:46
We just highlight things underneath. And we shipped it, and, we had, we didn't have too many users back then.
25:52
So every feedback was important to us. And I remember this one user mailing us in, like, literally, Maybe an hour
26:00
later, after we shipped it, and his thing was like, Linear has went from the best application in the world to the worst.
26:07
Like, he was so unhappy with us removing the finger pointer
26:13
from there that we got scared. We were like, oh shit, like, did we really do something that is
26:18
ingrained in people's minds?. And there were a few other feedbacks that we got from that as well. So we put in a preference where, they could turn it, turn it on again.
26:27
And it's still there. Like, if you search for your personal preference, you can turn on the finger. And after that, you haven't heard anybody do anything.
26:34
It's just when you change things that then people notice, but otherwise you come in and you don't really realize that, something's off because it, it, from the
26:41
get go feels like a like an application. And that's, that's totally the way to go. I love that.
26:47
That, that is such a meta thing to like pull out the, oh, let's make it a preference last resort.
26:55
yeah, we should not have done that. we should have just stuck with it and be like, no preference.
27:00
It is what it is. So you've been talking before about sort of like that the typical startup MVP and
Rethinking the Startup MVP
27:10
best example by the project management where there's many project management tools is no longer really cutting it.
27:17
And you've written a great blog post about that, which will be put in the show notes called Rethinking the Startup MVP, Building a Competitive Product.
27:26
So in this article, you. outline that, yeah, the traditional way of thinking about an MVP, where you just
27:35
build something quickly, ship it quickly is maybe no longer cutting it today.
27:41
Can you dig in a little bit more? Yeah, sure. Cause it, it sort of was Was what we did with Linear effectively like, yeah, so
27:51
Eric Ries invented the MVP you know, ages ago um, in a world where the internet
27:56
has just came around and people were, you know, didn't know really what would work and what didn't like, I, it's hard to imagine that Airbnb was controversial
28:07
back in the day, like when they went to YC you know, they, they barely got in because, people were like, who, who wants to invite strangers to your home and who
28:16
would want to sleep at a stranger's home? Like, that's, that's a crazy idea. And in those cases, obviously, like if you're, building out something that
28:23
is, that is, completely new, where you even don't know if the idea works, an MVP is a great, thing to test it out.
28:30
But unfortunately, we don't find ourselves in that situation anymore very often. Now, maybe with AI we might have a bit more leeway in there, like there might
28:40
be new things that come up that we need to try out because we just don't know if people are comfortable with.
28:46
Doing some of the, things that will, will happen. But other than that, like it, most of the time you find yourself in a
28:52
space where you're already competing with, with other people, like you're entering a space has already, you know, incumbent applications or services
29:02
and, and you need to somehow be better. Like, why would anybody use your product? if you enter that, then.
29:08
Build something that is not as good, which is effectively what an MVP is. It's a, it's a quick and dirty hack to try things out.
29:15
Like why would anybody jump over to you? if it's not better in any fashion. So there is an aspect of quality that you need to have in order to be
29:24
better at, at, doing an application or service than the incumbent solutions. So you need to rethink, you know, what, what it means to, to build out in that
29:33
way and to build something, that can compete with the rest of the world. And that is like how, I think MVPs have changed.
29:41
So if you think about a final product after it has maybe seen 10 years of investment, I think there's sort of two axis, at least.
29:50
One is the breadth of the functionality, whether you have that many features, if
29:57
you're thinking about like a product like Linear, for example you've like added more and more features over the time.
30:04
And another one is the depth and the quality aspect to each of those.
30:11
And so what you're inviting people to think about and do is certainly increase
30:17
more the effort on the qualitative side. But that also begs the question, like, do you Just go for 10 years
30:26
right away and like build up all the features and then launch. Or if you can't do that to be competitive with alternative existing
30:33
products, then you kind of need to cut down the scope significantly on the
30:39
features that you and the functionality that you initially launch with. So, and I think that's a really interesting and challenging
30:47
exercise so how did you wrestle with like which features you pick?
30:52
So ultimately you need to do both. Like you need to have the depth and the breadth of features if you want
30:58
to compete like at the large scale. But you know, then you run into the problem, like you can't build it.
31:03
You don't have 10 years to build out a thing before you try it out. Well, Figma was a good example that you have some leeway there.
31:11
Like you can work on the technology for four years and then ship it. And then actually, very quickly find product market fit.
31:17
So it is possible. to do it. And even like, they were probably quite niche as well.
31:22
Like it's just a design tool, right? How hard can it be? Like there's not many features that you, that you need.
31:30
But, but for us, it was like obvious that we can't go after sort of, larger customers immediately. Like we needed to scope down our set of functionalities
31:38
and still find a consumer.. Or a target customer that would be happy with that.
31:43
And for us, it was easy. And then, there might be cases where it's harder. Like if you're trying to run, you know, create a banking application,
31:51
like, yeah, you need to build up quite a bit of stuff in order. To be able to service even your first customer, like you need a bank, and
31:58
that is a pretty hefty undertaking. But for us, like, we found this target customer, which is very, very small startups.
32:05
Startups that have just been incubated, that are maybe, 2, 3, 4 people large that go through YC maybe.
32:12
What do they need? Like, they don't need any project management. They, they don't need a lot of functionality around labels.
32:19
Like, they will have not too many tickets. Like, literally what they need is an issue tracker, a way of just tracking a few
32:25
things and then marking them as complete. And that is the first thing that we built. We built an issue tracker, and even on our website said that, the issue tracker
32:32
that you'll enjoy, you'll enjoy using. And I always hated that website. Like, I, whenever I went there, I was like, no, this is not what we're building.
32:40
We just have to lie to everybody that we're doing it now, because you want to focus on the target segment.
32:45
And the, the idea always was to sort of, go and do project management. And even, even beyond project management, because, we wanted
32:53
to help companies be better at building software, which encompasses literally everything in that space. But we had to start with sort of the small customers.
33:00
So that's what we focused on for the, for the first few years. Just make an issue tracker that works nicely.
33:05
Start with small companies that were super excited to give you feedback. Like startups are great because like they, they know how it is,
33:12
how hard it is to build a product. So they'll be happy to help, help you build your product as well while they're using you.
33:19
And so we had a lot of customers that, gave us a lot of feedback, which we could always invite for a Zoom call and just learn stuff from.
33:27
then like the idea was to gradually grow with them. Like we knew that, once we got those customers, like it would probably
33:33
stick around if we were able to, to, to grow our feature set as they grew. And we knew they were growing, they would raise seed round then, eventually
33:40
a series A, like 50 people series B. So we, we said like, I think we can build out the functionality
33:47
of features that, that our initial customers need as they grow. . And it's sort of a wrap.
33:52
Like, we were able to have a few customers that started very early with us that now are sort of pretty huge companies and they've been sticking around with us for,
33:59
for, for the entire duration and we've been just building more stuff for them. And that enabled us to just grow into larger customers.
34:06
Starting to go into sort of, series A companies and growth companies and now sort of eyeing not, not yet the enterprise, I'll take, take
34:15
some time more, but, established companies and IPO companies. And that was sort of our strategy to, build something of the highest
34:22
quality but just reduce the scope in the beginning so much because we were able to identify those target customers that didn't need much.
34:30
I think that's fantastic advice and a great strategy how to go about picking
34:36
the right narrow initial scope is not to primarily think about like, Oh, which
34:41
features should we build first, but really starting out from like, okay. We are set on that we want to have that rethought MVP.
34:50
We want to aim really high in terms of the quality. Otherwise, like, why do we even get started in the competitive landscape?
34:58
So that is, that is a fixed assumption. But then instead of thinking about which feature do we start first, is like, who
35:06
as a customer segment do we start with? And that then implies the, the kind of features that are most
35:13
important to start out with. And I think that also aligns Hopefully nicely with the way how
35:19
you can also charge for the product and build not just like a product that people use, but also pay for.
35:27
And I'm not sure whether you got lucky there, but it seems like things certainly lined up very nicely for, for yourself there.
35:35
And I think One aspect as well to maybe highlight there is that you've been
35:41
seen as the company that other companies also aspire to as sort of a role model.
35:46
And I think that fit nicely with also your initial target customer segment.
Hiring and Company Culture
35:52
Yeah, I, know, obviously it's, it's been mostly luck as with any startup. Like, we sort of stumbled into this way of working cause we enjoyed ourselves.
36:02
Like we want to build nice things. And we had the, the, the lack of sort of, wanting to inspire people
36:09
with, with our own products. That meant that we had to build the company in a certain way. That meant that we had to.
36:16
Sort of hire people that we could trust to, not have to sort of look after them.
36:21
Because again, we were a remote company from the get go. And we wanted to make sure that, anybody we hired was just so good that, we knew
36:29
that they could do whatever without literally, even talking to us if we went that way and just, you know, ship something, something awesome which
36:37
again meant that, we hired effectively senior people not only that reason, but, the second reason was, was that we didn't know how to mentor junior
36:46
people in a remote environment. Like we were afraid that we would be doing them a disservice.
36:52
Like, hiring somebody who needs to learn and hire them into a remote setting.
36:58
We wouldn't know how to mentor them or how to grow them, so therefore we didn't. And later on we sort of find out that, it's actually pretty nice to having a
37:07
very senior team around you that you just trust with building out the vision
37:13
or even them having the same vision as you do, being able to drive the product forward because they're good engineers.
37:18
They know what they want from a, a, initially issue tracker and then project management tool. And that also meant that, you know, we were, it was hard for us to, to grow.
37:27
Like, we wanted these, Overly qualified people which were super hard to find.
37:33
So we grew slowly and in the end, like, we became profitable very quickly. I think two years in, we were profitable not because we wanted to
37:41
or because we needed to or because that was the grandmaster plan. No, it was just, effectively luck.
37:47
Because we did these things, we grew so slowly and then the sort of revenue just overtook our expenses.
37:53
And then like the downturn came and now everybody was sort of wanting to be the Linear, like wanting to do the same thing.
37:59
Everybody's looking at like, where can we get profitable? We don't want to raise another round or ineffectively do a
38:05
down round in that scenario. So. Everybody started looking at building things in a similar fashion.
38:10
So I think there's there's a lot of luck involved but also sort of, our passion
38:16
and our backgrounds sort of directed us to build out this company this way. And we're still on that route.
38:22
Like we, we still go down the same way, like we don't want to go through hyper growth and we will never, yeah, we will never hyper grow.
38:31
Like I've seen that at, at, at Uber, Kari saw that in Airbnb Jori in Coinbase, I don't think anybody of us, really, Enjoyed that experience.
38:39
It was nice to see once but, we don't want to go through that again. Like, we want a product team that is excited to building something
38:46
great and not just sort of a, cog in the big wheel of, working on some, remote infrastructure piece that maybe gets open sourced one day.
38:56
We want to make sure that, know, people who build Linear are sort of, they're, they're craftsmen that, enjoy building something beautiful and, want to see
39:05
their work out there, and hopefully, are and can be proud of what they ship.
39:10
So even though that's very humble of you saying most of it has been luck there is this this nice quote, which I think goes along the
39:18
lines of luck favors the prepared. and I think there's a lot of intentionality also that
39:24
went into building Linear. I think it's always like this dance between open ended experimentations,
39:30
like seeing, Oh, this is actually great. And then that becoming like a strong intention of like, Oh,
39:36
this is, this is who we are. So, and I think you've probably maybe got lucky and like, like found a few
39:43
things that you think, Oh, this is actually, we should really do that. But then you also embrace that and some companies call those
39:49
like values or principles. I think quality is certainly like a strong aspect there, but have you
39:56
ever like formalized this in some way? Or if you bring on someone new to the company who hasn't been around
40:03
over the years, how do you tell them like, Hey, this is who we are, how we do things, particularly given that you give people so much autonomy?
Values and Vision
40:12
Yeah. Um, We, like, we just had our offsite in, in Mexico where we, flew the whole team in, and Kari was preparing some slides and, we've been talking about having,
40:23
some sort of, value statement or values of the company and a vision statement. And we never did it because we always felt that like all the values
40:29
of companies are somewhat fake. Like they. just tell what they want the company to be, but not really
40:35
what the company is, right? Which never felt good to us as Finns. Like we don't want to lie about things like.
40:40
We're honest people. So, again, we didn't go down the vision or, the values route and we said
40:46
like, ah, let's not have any values. So Kari started working on slides to sort of, show everybody how we got here
40:52
and what we've done, over the past five years in order to, get to this place.
40:57
And he had like, five things that he pointed out that, that, that we had done and showed that slide deck to, to, to somebody on the
41:04
team and that team member was like, huh, these look like values to me.
41:09
um, so we were like, yeah, I'm, I, I guess they are values now. And our values are literally based on, on, What we've done in the past
41:16
and what we want to continue doing. And yeah, there's a small, small set. Like the first one is trust.
41:22
Like we, we've always trusted our engineers. We've made sure that we hire people that, can work on their own,
41:28
that can sort of bring something, something into, into the company. And we want to be open in, in, in our doings and we are open in our doings.
41:36
And secondly, we've always built sort of with the customer in mind with hiring or, building our functionality by asking customers what they need.
41:43
So customer focus is one of the things that we've been doing, which is now a value of ours, not building things in isolation and making sure that
41:52
we built something for our customers and that we built something that, people, people value and people need.
41:58
Um, And it gets more, important as, as, you grow higher and you start working for functionality that, you wouldn't necessarily use yourself like for PMs
42:06
or CEOs and CTOs at larger companies. The third thing that sort of came out of how we, built the tool, like, we were sort
42:15
of opinionated about, what we want to do. We didn't want to have that, like, we, it wasn't really a great
42:21
value to have to be opinionated. That sort of sounds a bit negative. But what we, what we've turned it into is like, we built purpose built tools.
42:28
tools, like we built for a specific purpose, for a specific target customer in mind.
42:34
We want to, build software for software companies. And if you stick with that, then we can build an excellent user
42:40
experience and excellent functionality. If you start diverging and building everything for everybody, then, you sort
42:45
of diluting, the aspects of the core of your application and it usually becomes. Less usable or less great.
42:52
And then, the fourth one being quality. We've always, wanted to build a high quality product and, put so much effort
42:59
into making sure that, everything is It's great and working and works fast and
43:05
all the small details are taken care of. And if you do all of these things well, then you inspire people.
43:10
And that's sort of the last thing that we wanted to do. Like, we wanted to, be a company that helps companies be better at building software.
43:17
And we think that inspiration is part of it. Like, inspire people with the quality product that you've built
43:22
for them and make them want to build an equally great experience. From what I can tell from the outside that all rings true and sounds very
43:33
authentic that's more of an assessment of how I perceive Linear then.
43:38
So I, I think you've met your, you've reached your bar of like that not being fake.
43:43
But very authentic. And I love how that is like also in terms of the yeah, that the craft
43:50
of everything you're doing, how that's also rooted in the quality. And I think becomes like a core pillar of how the next generational
43:58
product should be built. So maybe taking one quick step back to the blog post you've written
Advice
44:04
about the rethinking the startup MVP. Do you have a take on what is the rethought startup MVP?
44:12
Is there like a new three letter acronym that people should use in the future? No, I, I, you know, I, I don't think there should be a three
44:20
letter word for any of this. Like it'll really depend on what you're building. But you know, it is about competing in an existing market.
44:28
Like, and being better at something. What that something is, it might be literally anything.
44:34
But yeah, you need to be better at something. Like, you can't just throw things at the ball and see what sticks
44:39
because, the ball is already covered with, with all kinds of things. And people will just not, notice you or do anything about it.
44:47
So what sort of advice would you have for builders and founders, people who want to build those next generational high quality products?
44:56
What of the traditional wisdom, startup wisdom still applies?
45:02
So you mentioning sort of the, the hyperscaling maybe is no longer an
45:07
attractive ingredient to, to get there. what would you recommend as like, what to focus on and what to be careful with?
45:17
in, in order at least to get started, like, I think the most important thing to do is to, scope down and find, find a target segment that you can
45:27
deliver something competitive for. Again, like we've talked about not being able to build everything for everybody.
45:32
So it's important if you can find a way to sculpt a new product and
45:38
then, put something that people need. If you find something that, is a pain point for those users you
45:43
immediately have a following. You can You know, sort of, build out a nice waitlist. And then with that waitlist, you can, you can iterate on
45:50
your product and make it better. Like you're, you have a waitlist and you have five users selected probably for that waitlist or maybe from your friends and you're
45:57
iterating with them to make it better. And then you're happy when they have no feedback anymore. Then you go to your waitlist, you invite a few others to see if, they
46:06
have new ideas of what you could build and how you could do things. So building things with, your customers is , it has been done
46:12
obviously already, with startups. Like that has been the wisdom so far and that hasn't changed.
46:17
Like use your customers and use your, waitlist users to, iterate on the product to make it better until you're sort of ready to sort of go public
46:24
and have everybody have a go at it. Hyperscaling, like, obviously comes to mind when you're competing against
46:32
somebody, like, Uber, it was, like obvious that, and the story of Uber is sort of
46:38
sad as well, like, how it all went down, but obviously, like, in the end, it turned out good, but, being, being in Uber during that hyperscale time was pretty harsh.
46:49
Like you have, you, you started off with building out a, prototype. Like there was an iOS application that was a shitty backend that,
46:57
I don't even know what it was written in, but it wasn't great. And then it started taking off a few users in San Francisco started using
47:04
it, more black cars came available. And the, the thing where, when Uber took off was like when effectively
47:10
sort of Lyft invented the model of, okay, let's have normal. People drive their own cars and be the driver.
47:18
And suddenly you realize that's the way to go. And now immediately they're in a competition. So now they have to get some money in and start scaling and
47:26
start conquering some areas. And your infrastructure is still horrible. You haven't built out any of the stuff.
47:31
You were just trying things out and your application looks horrible. And now you're suddenly having to run.
47:37
And it takes off. And suddenly you've got tons of users coming in and you have to scale your infrastructure.
47:43
So you have to hire people as quickly as you can in order to just keep the flames, not reach the outer walls.
47:48
And, two years later, when, when you've grown rapidly you, you end up with sort of having an infrastructure that is just.
47:55
Coals and ash. Your team is burned out because they had to fight fires the entire time.
48:01
And then you have to sort of replace that whole thing while you're still serving all the customers.
48:07
And, the weird thing was, and I, When I left Uber, they had started already
48:13
sort of redoing much of that, that core infrastructure, and they were still at it like four years later, like we're still replacing the core bits of it.
48:21
So it's, it's, it's horribly time consuming to scale something up quickly if you're not prepared to it.
48:28
if you cannot do that, then I think you're in a much better, better place. So that's what we've done, and that, is what I would suggest people, if they're,
48:36
able, like, obviously, you need some money, and you need to have a bit of luck as well in order to, sort of, get initial customer interest and maybe a
48:46
VC invest in you so that you can sort of build it out a bit more slowly. But our take on infrastructure and the backend always has been to sort
48:54
of preemptively build everything so that, we're prepared for the growth. We know where the next bottlenecks are.
49:00
We might know that, a year from now, like, this thing won't scale anymore. So we started working on it early on so that we can sort of put implementations
49:07
in place that, Just work and it will sort of, , work nicely and are architected well
49:13
so that no surprises come, come along. I think that's a nice segue. And we've been mostly covering sort of like the, the more cultural aspects
The Importance of a Sync Engine
49:21
of Linear so far, given this is the local-first podcast where we haven't
49:27
yet talked too much except for the beginning about syncing, et cetera. And I don't think we need to spend another hour and hour going all
49:35
the way there, but maybe just briefly connecting the dots there. I think the reason.
49:40
that what gives you this competitive advantage allows you to build that high quality product is that you have laid that foundation with the, the sync engine that
49:51
takes out of like the, the picture, the entire complexity nightmare that, moving
49:57
data from A to B and back to A can be. And so you've solved that and like on your shoulders of Giant, now
50:05
the, the the, the product can be built by people who don't have all of that knowledge of data syncing.
50:12
And I think that is like a superpower that enables new products like Linear. Yeah.
50:17
I mean, I do have a talk on, your conference on that. It's, it's probably available on YouTube as well.
50:23
If you want to, if you want to check it out and put it into the, I don't know, notes for this, this, this podcast.
50:28
But yeah, in short, like, The initial idea of the sync engine was not to make it developer friendly.
50:34
That sort of happened as an afterthought. And that was, in my mind, maybe the more more important aspect in the end.
50:41
Like, we wanted it to be fast and support offline mode and enable, the application to be quick and that is important, but what we found out what, what we like even
50:49
more was that engineers would be able to just ship features much, much faster
50:55
without having to think about a vast, area of, of A functionality that usually takes quite a bit of time, which is sort of error handling or networking, waiting
51:03
for things to come back, supporting two different code paths for like when you make your local changes versus when somebody else makes those edits for you.
51:12
It's all abstracted away so that you don't need to think about these things. And it works for certain kinds of applications.
51:19
Definitely not all like if you're building, something that has, a lot of information or building a search engine and obviously not, like, you need to be
51:26
able to have that data locally or pretty close to your, to your clients and be able to sort of fetch the pieces that you see on screens and then keep them up to date.
51:35
But for anything that resembles an application. That has sort of a limited set of data, and that data piece can, like, the
51:41
amount of data that you have in the whole application can be large, but it still needs to be limited to, what you can browse at a , given point in time.
51:48
And then this model just works absolutely beautifully. And. I sort of had this inkling at Uber already, like, I don't want to
51:55
build anything in the traditional sort of networking model anymore. Like, I think sort of sync is such a better user or developer experience.
52:04
And, and the Linear, like, it's, it's clear that, I, I, I, well, I won't ever
52:09
have a job after Linear, but, if I did, I, I, I would not work in any other way
52:14
than just doing a sync engine again. I'm working in this environment because it just makes the, yeah, the
52:20
developer experience so much faster and you can just ship functionality. Like, the easiest way to think about it is to literally say that, you're
52:27
effectively just building the front end. You have, data in memory, you've got data objects, which you render on screen.
52:33
Then you modify those and that's it. Your feature is done. Everything else is handled, the synchronization, other
52:40
users making the same edits. There's nothing else you need to do in order to build a feature. You just build the frontend and you're done with your entire feature.
52:49
And that's pretty powerful. And I think that also like empowers the already capable front end developers
52:57
even further, since I think so far in this more traditional three tier
53:04
web app where you have your, your front end that you're building. And then somehow like you're doing your, your fetches or RPC calls, et cetera.
53:13
But then you also need to worry about like, okay, sorry, I need to serialize a bit of data over there, send it over here.
53:19
Now I need to do something there. And like, Oh, what if. This now changes and I need to send this back.
53:25
If we can take that entire part out of the picture and front end developers are
53:30
only dealing with like the, the client side state management, and that's it. And then either you have, you're relying on like a external sync engine
53:40
that already works super well for you and you just need to integrate it, or you have the luxury of having someone like yourself in a team who builds
53:49
your own, runs it, et cetera, which I think will be not always required.
53:55
I think the better the off the shelf sync engines will get the more products
54:00
can already be built with that. And I think someone like yourself will rather be needed when a
54:06
product really diverges from that, from that standard path. And so I would probably say that maybe in a couple of years from now,
54:15
you could probably build something like Linear in terms of like the data syncing capabilities with like something like automerge, et cetera.
54:24
Some of those. Upcoming sync engines, and then it's probably rather a matter of can
54:30
it also handle all of the scaling patterns and the extra user experience
54:35
patterns that you want to really nail. I want to give an example of, like, how hard RPC actually is.
54:42
Because I don't think people understand, like, before they've tried it out and then run into these edge cases, which always are edge cases.
54:49
But once you run into them, you're like, oh, shit, what do I do now? You need to rethink your entire architecture in order
54:55
to make that, make that work. So A simple example, you've got, some sort of model object and it
55:01
has two properties, and the user makes a change to those properties and sends it out as an RPC call.
55:08
And you're also connected with a WebSocket to receive changes that other people do. Now, you send out the RPC call and wait for sort of acknowledgement
55:16
for the server um, that, you know, everything was applied fine. While that's going on, you receive a packet that, another user updated a
55:24
certain property on that model object. What do you do? Like, and that becomes a really, really hard problem because suddenly, like,
55:33
you, you really don't know what to do. Like, you can't rely just on that RPC call coming back.
55:38
Because, again, your backend has multiple servers on it, so you can't rely on the timing of these things.
55:44
It's not just, one single server running things, you know, serially. It's multiple servers writing to the database, and then somebody is
55:51
able to sort of send you a message, and the RPC call might go through. have already been sent but hasn't reached you yet because the network is slow.
56:00
So when you receive that RPC code, you don't know if all the values in there are up to date.
56:06
And now you need to figure out what to do with the updates for that model object. And when you realize that, you're like, Yeah, I effectively need
56:14
to implement another sync engine in order to make that happen. There needs to be a queue of sorts. And it becomes very, very complex.
56:22
It's funny. So like, it's a sort of a boiling frog situation where you start out with like
56:28
your, your blissfully ignorant happy path of just like doing a fetch call
56:34
to your backend and like, you get your data back and you test this on localhost with like your one client over there and your locally running server over there.
56:43
And like, everything just works and like you ship the feature, like you mark the
56:49
issue as done on, on Linear, but then as it goes on production and like multiple
56:55
users hit it, you get some really cryptic error messages that you, you even have a super hard time replicating that locally and you, you've spent hours on it.
57:04
Hours and hours and days and days, like reading through log messages. Oh, we realized I actually, we don't have the right log messages for that in place.
57:11
So you'll need to spend another two weeks shipping that until you've like, finally have all of like the signal that you pull out of the giant bag of noise.
57:21
To finally, like, have at least some confirmation of that something is going wrong.
57:27
And once you have that hypothesis to even replicate it locally that's already takes heaps and heaps of time.
57:34
And then, like, The way how you pull yourself out of that is by step by step,
57:41
applying changes that will ultimately lead you to a sync engine, but that's such a
57:46
painful and inefficient way to get there. I think it's, primarily probably a problem to get, get us from.
57:54
A to B, like A being the status quo of the world right now, where like
58:00
everything is built with the sort of RPC ish way to B where most products where
58:05
it's a good fit are built with sync engines is probably just that instilled tribe knowledge that by now like all the technologies are sort of like.
58:15
Fostering that, that status quo where like all the libraries are built around RPC
58:23
and we're, we're kind of blind to, yeah, it's kind of the spoiling frog situation
58:28
where it's already cooking like crazy, but we don't realize it yet how much complexity we've built for ourselves.
58:34
And how simple things could be. For sure. So it becomes simpler to not you know, implement that WebSocket and
58:40
just have the user hit refresh to get the latest version of that page and be ignorant about or bliss.
58:46
Yeah, exactly. Which just dials up the temperature,
58:52
but this is where I'm so excited about Linear and the success of Linear since
58:58
people can't ignore products like Linear. There's like, Oh my gosh, what makes it so great?
59:05
And then people want to. understand how did you like explain the success and sure a lot of it will be
59:11
attributed to like oh they have such those great people and they have such great design and they have that amount of like border radius but then a lot
59:22
of it will also come down to the to the implementation this is what I where I hope that this will drive a lot of like Similar to how Nike focuses not as
59:32
much on the products, but on the great athletes, you're the great athlete. And I'm very much looking forward that people want to be like you.
59:40
I really, enjoy working in a local-first environment, and I hope that everybody else picks that up as well.
59:47
And there's starting to be tooling around it, around the, local-first as well, that you can use out of the box.
59:53
That will probably work for most of the cases. It will still be hard to scale that up.
59:58
But at least you can get started and maybe then figure out whether you need to build your own sync engine or not.
Outro
1:00:04
Perfect. I think we can leave it at that. Thank you so much for this amazing conversation.
1:00:09
I was really looking forward to it. And Linear continues to be a huge inspiration for me.
1:00:15
And it's been so, also like so interesting and fun to hear. That a lot of like what has inspired you and led you and like explorations you've
1:00:24
done where you had sort of like what you do attribute to luck, but I think is also just great taste, et cetera.
1:00:30
That I see a bunch of parallels there to how I'm approaching Overtone that gives me a lot of energy and motivation to continue on my path.
1:00:38
So thank you so much. Thank you so much. And waiting for that invite to Overtone.
1:00:43
That's all, but when you're ready, like when you feel that you can, you can move on to the next customer group.
1:00:50
Sounds good. I'll send you the magic link. Perfect. Thanks so much.
1:00:55
Thank you for listening to the Local First FM podcast. If you've enjoyed this episode and haven't done so already, please
1:01:01
subscribe and leave a review. Please also share this episode with your friends and colleagues. Spreading the word about this podcast is a great way to support
1:01:09
it and help me keep it going. A special thanks again to Rosicorp and PowerSync for supporting this podcast.
1:01:15
I'll see you next time.
