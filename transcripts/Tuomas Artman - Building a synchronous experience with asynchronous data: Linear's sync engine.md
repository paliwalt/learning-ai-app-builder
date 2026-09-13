https://www.youtube.com/watch?v=bnOpm3a1fRE


Tuomas Artman - Building a synchronous experience with asynchronous data: Linear's sync engine
Local-First Conf
Local-First Conf
5.73k subscribers

Subscribe

197


Share

Ask

Save

6,877 views  5 Jun 2025
In this talk, we’ll explore an API of accessing asynchronous data in local first apps that improves developer experience and productivity. We’ll walk through how Linear ended up with this API to power its client.

----

Learn from engineers, designers, academics, startups, and indie developers who are putting local-first into practice and reaping the benefits of a cloud-optional architecture.

Join our discord!
  / discord  

---

Subscribe for more talks:  @localfirstconf  
Follow:   / localfirstconf  
Visit: https://www.localfirstconf.com

---

Thanks to our wonderful sponsors:
Jazz - https://jazz.tools/
Any - https://anytype.io/
PowerSync - https://www.powersync.com/ 
Cloudflare - https://workers.cloudflare.com/
Source - https://source.network/
Ditto - https://www.ditto.com/

---

Thanks to https://sceal-studio.com/ for the videos!
How this was made
Auto-dubbed
Audio tracks for some languages were automatically generated. Learn more
Ask
Get answers, explore topics and more

Ask questions

------------

In this video



Chapters

Transcript
Search in video
Introduction
0:08
Thanks for having me back again. Um I
0:11
today I've have this mouthful of a
0:13
topic. Um building an asynchronous
0:14
experience with as building a
0:16
synchronous experience with asynchronous
0:17
data. It went wrong already like in in
0:19
the beginning. Um it'll all make sense
0:22
um by the end of the talk. I I I do
0:24
promise. Um I'm Thomas. I'm the
0:26
co-founder and CTO of Lener. I've been
0:28
working on sync engines for way too long
0:31
since 2004. Um I need to stop. Um
0:34
hopefully I'm I'm done, you know, after
0:36
the next few years and I can, you know,
0:38
spend my time on something else. But uh
0:40
if you don't know Liner and what Linear
0:42
is, Liner is a project management system
0:44
used by most startups um very many
0:48
growth companies and um even quite quite
0:50
a few enterprise companies. And um I've
What is Linear
0:53
been talking about the sync engine quite
0:55
a few times already. Like um it seems
0:57
that you know a new episode drops every
0:59
year. Um I you know I I started talking
1:02
about linear sync engine um you know
1:04
four years ago. Give a gave a talk on on
1:06
how we've implemented it. If you want to
1:08
sort of you know go through the talks
1:10
like they're pretty much in order like
1:12
the first one was about the the
1:13
intricate details of the sync engine.
1:15
The second one was about um how we
1:17
scaled it for larger workspaces. Um and
1:19
then last year I talked about uh
1:23
how the sort of the unexpected um
1:26
benefits that came from local first or
1:28
you know the synchronization engine
1:30
which were you know one of the points
1:31
that I that I that I said there was that
1:33
um we didn't anticipate for our
1:35
developer experience to be um upleveled
1:38
by by that much um and I want to dive
1:40
deeper into this one aspect of our
1:43
synchronization engine and sort of the
1:44
this the the the story of linear so far
1:47
and how we you
1:50
maybe through through uh sort of
1:52
randomness and um you know good luck
1:55
found an API that really works for us
1:57
and you know keeps our engineers um
2:00
moving very fast and be able to ship
2:02
features as quickly as we do. So we need
Sync Engine
2:05
to go a bit back in time and when we
2:08
started linear we you know put in a
2:10
synchronization engine um very early on
2:13
like the literally the first thing that
2:14
I that I wrote six and a half years ago
2:16
now uh was a synchronization engine and
2:18
we thought about what kind of API do we
2:21
want to you know access um the the data
2:23
in our application with and um we
2:25
started off very simply as you do as a
2:27
startup you um try to cut corners you
2:30
try to make everything very simple and
2:32
we ended up with a model that we knew
2:34
wouldn't scale But we knew that it would
2:36
get us running and be able to service
2:38
our customers for the next few years at
2:39
least which was to load up everything
2:41
into memory. Um so we effectively said
2:44
you know how what should our data look
2:45
like? If you have everything in memory
2:47
rendering becomes pretty trivial. It's
2:49
effectively you know react you take the
2:52
state and the UI is a function of that
2:54
state. So if you have everything in
2:55
memory we can render the UI very very
2:57
simply. So we started off with this like
2:59
you know workspace model object that we
3:01
had on top and um that has a few arrays
3:05
you know obviously it has an array
3:07
arrays of teams um and an arrays of of
3:09
of user um we modeled these as not as
3:12
arrays we sort of foreshadowed the need
3:14
to have something in between to have an
3:16
abstraction layer and we call them
3:17
collections. they're effectively an you
3:19
know instance of a collection type that
3:21
looks like an array but you cannot
3:22
access the the underlying array directly
3:24
but you have to go through some methods
3:26
on on that on that collection in order
3:28
to access the the individual model items
3:30
within there. So you've got this
3:32
workspace object. It has a property
3:33
called uh teams. It has a property
3:36
called users and those are collections
3:37
where you can access uh the teams and
3:39
the users of that workspace with. Going
3:42
further, a team will have labels. It
3:44
will have uh issues. It will have
3:46
states. Um and a state is effectively
3:48
just a state that an issue can be in. It
3:51
can be you know um planned or it can be
3:54
in progress or can be cancelceled or
3:55
whatever that whatever that is. So again
3:57
a team will have properties pointing to
4:00
collections that will hold um other
4:02
model objects. Um and if you go further
4:04
from there an issue will have comments
4:07
again accessible through a property
4:09
called comments which is a collection of
4:10
comments associated with that issue and
4:13
it will have history items. So what has
4:15
happened to that to that item anything
4:17
that we want to display in the display
4:18
in the UI. Um and lastly you know on the
4:21
other side a user will have you know
4:23
favorites and notifications as well. Um
4:25
this is not the whole tree that we had
4:26
in the beginning but you know to give
4:28
you an example of like this is how we
4:29
started out to model model the object.
4:31
Um currently we have probably 90 d5 or
4:34
even 100 different kind of model objects
4:36
in linear. Um so it has grown quite a
4:38
bit but you know humble beginnings. We
4:41
quickly realized that it wasn't a you
4:43
know nice tree like this but um it was
4:46
effectively a graph. So we had um
4:48
pointers going across an issue will have
4:50
an assigne for example like who's
4:52
supposed to work on this thing. Um and
4:55
so an issue will get a property called
4:56
assigne and it will just simply
4:58
reference a user. Um and that was
5:00
implemented as you know effectively a
5:02
simple reference like you have an issue
5:04
it will have a property and that will be
5:06
pointing to uh a user. Uh the user will
5:09
need to be able to list all the issues
5:11
that are assigned to a user. So we'll
5:13
add a uh collection called you know
5:16
issues on the user pointing back to any
5:18
issues that are assigned to the user.
5:21
Going further from there, an issue will,
5:23
you know, be be pointing to a state. A
5:26
state will also have a collection of
5:28
issues. Like if you want to know how
5:30
many um you know uh in progress issues
5:34
there are in a specific states, you can
5:36
access the collection and get to the
5:37
issues that way and so on so forth. You
5:40
can have a label associated with an
5:41
issue. The difference there is that you
5:43
can have many to many relationships like
5:44
one issue can have multiple labels, one
5:47
label can have multiple issues. So
5:48
you've got collections pointing both
5:50
ways. you've got issues, you've got
5:53
labels, and um same goes for uh
5:56
comments. And then lastly, sort of, you
5:58
know, favorites. The comment is is
6:00
interesting in in the in the way that
6:02
sort of it points to itself. So we don't
6:05
have a um asal graph like everything's
6:08
just a big blob of stuff. Um and we need
6:10
to somehow reconcile uh this graph as
6:12
well. And then on the favorite parts,
6:15
like we also have like simple references
6:17
to to objects. A favorite will point to
6:19
an issue but an issue doesn't need to
6:20
point back to favorites because we don't
6:22
really care about all the favorites that
6:24
an issue is part of. Uh so simply we
6:27
have what we call a reference from a
6:29
favorite to an issue. So you can access
6:31
it through that graph. So we have
6:33
effectively five different ways of
6:35
managing our data um and you know
6:38
reference types. We've got one to many
6:40
many to one many to many one to one and
6:42
reference. one to one is actually not
6:44
described in this example here but like
6:46
you can think about you know reasons
6:47
where you would have onetoone
6:48
relationships between different model
6:51
objects and to simplify things very much
6:56
um you can go to the other talks that
6:57
I've that I've given around the sync
6:59
engine the the responsibility of the
7:01
sync engine is to keep this object graph
7:04
in memory synchronized um whenever any
7:07
any updates happen whenever the user
7:09
comes back the sync engine will do its
7:11
thing and it will construct this graph
7:13
in memory, hook up all the different
7:16
properties to each other, put items in
7:18
the right collections,
7:20
um, and give you as a user effectively
7:22
this nice graph of pure synchronous
7:25
in-memory data that you can then use to
7:28
render your views. And with with React,
7:31
uh, this becomes quite simple. You have,
7:33
um, effectively a view, uh, or
7:36
components that will be passed on model
7:37
objects and then you start rendering
7:39
them. So if you jump quickly into you
7:41
know looking what that would look like
7:43
um if you want to render the sidebar for
7:44
example all the team listings and you
7:47
know their associated um navigation
7:49
elements you simply take the workspaces
7:52
model instance that is given handed down
7:54
to the application um from the top um
7:56
and you take teams which is will be a
7:59
pointer to a collection of teams and you
8:01
iterate over it um you either map or you
8:03
do a for each loop over over them
8:05
whatever you do and you pass that team
8:08
into um a collection representing each
8:11
of these teams and for each of the teams
8:13
the you know you go deeper. You go into
8:15
just properties of that team object. Um
8:17
you say let me sort of render the icon
8:19
of um the team or the name or the the
8:23
key in order to construct a URL to to
8:25
get me to that to that uh team when I
8:27
when I click it. Um so it's simp like
8:29
simple react. There's nothing
8:31
particularly interesting about this. And
8:33
the same thing happens for you know all
8:35
kinds of other things as well. There's
8:36
some interesting nuances for example in
8:38
the inbox up there where um we go
8:40
through a workspace to the current user
8:42
which is effectively helper property
8:44
that will just simply look up your user
8:46
in the users collection. Um you go into
8:49
that notifications collection and you
8:52
look at the length of of that collection
8:54
which you can do because it sort of is a
8:56
standin for an array. Um and then you
8:57
can print out like you know how many
8:59
items you have in your inbox.
9:01
um on the right hand side like we're
9:03
rendering the issue list in effectively
9:05
the same manner. We loop over the states
9:07
of a team and for each state we loop
9:10
through the issues um in that team again
9:12
just by going through collections and
9:14
and accessing properties and same goes
9:18
for one particular row row we just are
9:20
handed down an issue model object um and
9:23
then we loop over and and represent that
9:25
that object. Um this is our trivial this
9:27
is what you do with react. Um one more
9:30
thing we have effect effectively all of
9:33
our view state in that same tree as
9:35
well. So if you have that bottom uh that
9:37
that top right hand corner um button
9:40
that brings out the side panel um that
9:42
is effectively just the user setting
9:44
sitting in a settings you know model
9:46
object associated with the user. Um and
9:48
if you want to toggle that sidebar you
9:49
just you know toggle toggle its value
9:51
and the UI will will
9:53
follow. Um the beauty with this is that
9:57
because the synchronization engine sort
9:58
of handles updating the the tree um of
10:02
the model representation in memory and
10:04
we use Mobox to you know bind ourselves
10:06
to that tree whenever any of that data
10:08
updates we are guaranteed by this
10:10
reactive framework Mobox you could use
10:12
whatever you want um that your UI will
10:14
get updated as well. So effectively
10:17
creating an application and building new
10:18
features uh becomes trivial. it becomes
10:21
defining the data that you want to use
10:23
or the schema for that data and then
10:26
rendering it and that's it you're done
10:27
with a new
Data Access
10:30
feature. So again we had these four five
10:34
different relationships and um we
10:37
defined like how we want to how we want
10:39
to you know access them how what what do
10:41
we use in order to um access you know
10:44
things in a oneto many um uh reference
10:47
and that's a collection. Um on the other
10:48
side if you have a many to one reference
10:51
um it's simply just a pure JavaScript
10:52
reference a pointer to an object which
10:55
you can then access and um everything is
10:58
fully nicely synchronous and this was
11:01
sort of the API that um we used for the
11:03
first two years and we were super happy
11:07
um and let it let us move us you know
11:08
very very quickly and um I I do remember
11:12
like uh the best Friday was one where I
11:15
sort of shipped like four medium-sized
11:16
features in in one today um just by
11:19
utilizing this like defining a data data
11:20
model building the UI and then then
11:23
shipping it um and it worked nicely
11:25
until we hit approximately 50,000
11:27
objects within linear and we knew that
11:30
this was going to happen um we knew that
11:32
we were constrained on loading
11:33
everything into memory and if you load
11:36
up 20,000 30,000 issues or model objects
11:39
into memory at startup time you know it
11:41
takes a bit of time at 50,000 we we felt
11:44
that you know the user experience wasn't
11:45
great anymore um Today, if you have a
11:48
sort of modern computer, it probably
11:50
takes you like 800 milliseconds and
11:51
maybe a second to load up 50,000 model
11:53
objects, which is sort of fine, but you
11:55
know, we want to be faster than that,
11:56
and we want to support way more objects
11:58
than than 50,000. So, we had to figure
12:01
out a way of making our data access
12:05
asynchronous. But we sort of did not
12:08
want to give up on the notion of
12:10
synchronous data access because that was
12:12
the way that you built React
12:13
applications and that was the way um
12:16
that we enjoyed you know building
12:18
applications um and you know we've Aaron
12:21
said you know this morning um if only
12:23
you could write queries um I want to
12:25
sort of go a level above that and I
12:27
think there's an abstraction on top of
12:29
that that you know we can implement in
12:31
libraries which is that you know the the
12:33
queries themselves are actually you know
12:35
implementation details
12:36
And what you can have is simply you know
12:39
this data access layer where you have a
12:41
graph in memory that is at the same time
12:43
synchronous but also asynchronous in
12:45
nature. So how what what did we do? We
How did we do it
12:48
had this tree of stuff and um it was
12:51
becoming too big for our customers. So
12:54
we had to do something and we looked at
12:55
the model and we're like well you know
12:58
you have only one workspace you have a
12:59
few teams you have a few users those are
13:01
probably fine to load up into memory but
13:03
it's the issues and it's the it's the
13:05
comments and the history that needs to
13:06
go because those are the bulk of all the
13:09
objects that you have in an application
13:11
or that you have in linear and we want
13:13
to load those asynchronously when when
13:15
needed. We don't want to spend the time
13:16
to load them up into memory um at the uh
13:19
at the load of the application. What it
Lazy collections
13:22
then meant for sort of our um our
13:25
instances of of access was you know we
13:28
had already this collection object or
13:30
instance or class in place for any of
13:32
the the the references that were you
13:34
know one to many um we just simply made
13:36
that a lazy collection and what I mean
13:39
by that is if you accessed for example
13:42
you know the teams of a workspace it was
13:45
still a collection and you would simply
13:47
get the collections bad because they
13:49
were loaded already into memory and
13:51
there would be nothing that that
13:52
happened there. Um, same goes for if you
13:54
access the users or continued accessing
13:56
users of a of the of the workspace, you
13:58
would get all the users back through
14:00
that collection immediately without any
14:02
asynchronous actions. But what would
14:03
happen if you went to a team and you
14:05
wanted to render all the issues? The
14:06
issues weren't loaded into memory. Well,
14:09
a collection can also be empty. Um, so
14:11
that's what we started off with. We were
14:13
like, can we do something where we, you
14:16
know, take that notion that the user
14:17
wants to access the the issues of um a
14:21
specific team and just return them an
14:22
empty array saying, oh, it's empty and
14:24
then, you know, maybe 10 milliseconds or
14:26
100 millconds later um populate that
14:29
array and say like, oh, they were here
14:31
actually altogether. So, um effectively
14:34
handing off uh the responsibility to
14:37
Mobox to rerender any UIs that were
14:39
accessing those issues. Um, and that's
14:41
what we did as as a first trial. Um, and
14:44
it actually worked out pretty nicely.
14:45
Um, we had a few problems with it and
14:47
and we we sort of uncovered those, but
14:49
the idea was to come up with an API. And
14:51
this is sort of the the API of a
14:53
collection. Um, you access the issues
14:56
through the team, you get a lazy
14:57
collection back. And the moment you
14:59
access any of these methods, and if
15:01
these methods look familiar, they're
15:03
effectively just the methods for an
15:04
array because we wanted to mimic sort of
15:06
the API of an array. If you accessed the
15:08
elements of of the issues and that's the
15:11
one that we added which gives you a row
15:12
array back of of those issues or if you
15:14
access the length or you mapped over
15:16
them or you filtered or you found or you
15:18
know did a loop over every um on that
15:21
issues collection it would be a hint for
15:23
the sync engine to start hydrating that
15:25
collection it would immediately return.
15:27
So it would be a synchronous call and be
15:28
like well there's nothing here empty
15:30
array or if you try to find something
15:32
well you didn't find anything but it
15:34
would kick off this hydration in the
15:36
back end and we would try to fetch those
15:38
um issues from local disk and you know
15:40
very quickly thereafter we would
15:42
populate that array reaction would would
15:44
fire off and your UI would be rerendered
15:47
um and therefore our effective API
15:50
stayed synchronous we could just do
15:52
issue elements map and render out any
15:54
kind of JSX that we wanted out of it So
Suspense boundaries
15:57
it worked out pretty nicely like you
15:59
would first get a view without any
16:01
issues and then very quickly later um it
16:04
would flash and your issues would appear
16:05
in there. However, we had a small
16:08
problem um which effectively was that if
16:11
you have an empty array we sort of want
16:12
to render something different like if
16:14
you have an empty team we want to give
16:15
you the splash of saying well you know
16:17
we want to describe what that view is
16:18
about and we're going to give you the
16:20
ability to create a new issue. um which
16:22
was in conflict with sort of this notion
16:25
of like handing you back an empty array
16:27
which meant that you know we would think
16:28
that the team is empty we would render
16:30
this view and then a moment later we
16:32
would switch back to this view which you
16:34
know would in include a lot of flashes
16:36
and the UI would just not be be very
16:38
nice. Um, so we wanted to hand
16:42
engineers, you know, tools to make this
16:45
better and make the user experience much
16:47
nicer. And what we did is we utilized
16:49
React uh suspense boundaries. If you
16:52
haven't used suspense boundaries before,
16:54
um, it's effectively a way of making
16:56
React, you know, synchronous from an as
16:59
asynchronous nature. um in any point in
17:02
time if your if your UI rendered code
17:04
throws out a promise it will bubble up
17:07
to the topmost or the the next suspense
17:10
boundary and it can render a fallback
17:12
until that promise resolves. The idea
17:14
there is that if any of your code um is
17:16
asynchronous in nature, you can throw
17:18
out your promises and that promise will
17:20
be caught. Some loading screen will be
17:22
rendered while the promise is resolving
17:24
and once the promise is resolved, it
17:26
will just rerender everything. And
17:27
because the promise is resolved, you can
17:29
now render your UI perfectly. So we
17:31
added two new methods or two new things
17:34
to our uh to the access um on our
17:37
collections. We said you know you can
17:39
call hydrate explicitly on the
17:42
collection which will return you a
17:44
promise if um well it will return you a
17:48
promise and the promise might be
17:49
resolved already if we've previously
17:51
hydrated all the issues or it might be a
17:54
promise that is in fly because we load
17:55
things up from the from disk and then we
17:57
have this helper function called resolve
17:59
promise which is super simple. it will
18:01
return you the result if the promise is
18:03
resolved or it will throw that promise
18:06
um to react to the next suspense
18:07
boundary if it isn't. So this is our way
18:10
of gating and hitting effectively
18:12
suspense boundaries if we try to access
18:13
data that is asynchronous in nature that
18:15
we haven't loaded up yet. And with this
18:18
we were able to effectively put a
18:20
suspense boundary around our issue list.
18:22
Um and you would get sort of this you
18:24
know flasher um this cursor that we have
18:26
for you know a loading symbol while
18:28
we're loading things up from the uh from
18:30
the local database and once that load
18:32
was was complete then we would re render
18:35
um the issue list or then the fallback
18:37
of that splash screen if there really
18:39
are no issues there. So it's a way of
18:41
for us to make sure that you know we can
18:42
hydrate things before we actually try
18:44
rendering out anything.
Direct references
18:48
Well, the the next problem that we had,
18:50
you know, this works nicely for
18:51
collections that it was super
18:52
implement. Everything was still nicely
18:54
synchronous in nature. But how about
18:56
this direct references? Like if you
18:58
point from a favorite to an issue and
18:59
now suddenly your issues aren't actually
19:01
loaded into memory anymore. Like that's
19:03
a JavaScript pointer. If you try to
19:04
access it, you will get undefined and
19:06
your code will crash because you know
19:08
you know we we we disregard the type on
19:11
um on that on that property and you try
19:13
to access properties of of of undefined
19:16
um and you run into problems and we did
Lazy references
19:19
effectively the same thing which is
19:20
replaced this references with lazy
19:22
references um which was a bit of a
19:24
bigger operation that we had to undergo
19:27
where we said that instead of having
19:28
pointers we put an intermediate you know
19:31
object in between any pointers that
19:34
point to lazy objects that we load from
19:36
disk later on. And um the interface was
19:39
somewhat similar. So if you have a
19:42
direct reference, it's just simply
19:43
comment. You will get um that particular
19:46
issue back and comment always has an
19:48
issue. So there's no optionality here
19:50
like it needs to be fulfilled. There
19:51
cannot be a comment that is not tied to
19:52
an
19:54
issue with the lazy reference like you
19:56
actually if you access comment. You get
19:58
a lazy reference back and lazy reference
20:00
is in fact a promise itself. So you can
20:04
simply do a vate issue and resolve
20:06
promise which will go down the suspense
20:08
route and wait for that issue to
20:10
actually be loaded from disk and then
20:12
rerender your component which makes it
20:14
simple. You need to add this one line in
20:15
there um and you need to actually you
20:17
know get back um the return result from
20:20
the resolve promise which is resolved
20:22
into an issue and then you can simply
20:25
render render that issue title. Um this
20:28
worked nicely for react components but
20:29
maybe not for sort of you know um our
20:32
our action codes like if you go through
20:33
the command menu which is um effectively
20:36
imperative code. So what we added to a
20:38
lazy reference is also the ability to
20:40
just query its value. So you can do
20:43
comment.value and because we we're not
20:46
sort of specifying you know any
20:47
resolving of promises. You either get
20:50
undefined back like if you haven't
20:51
loaded it up yet or you get the issue
20:53
back. So you need to handle that in in
20:55
in in two cases like which makes it a
20:56
bit more complicated but again in many
20:59
cases you can argue that you know the
21:01
issue has been loaded already if you're
21:02
looking at the at the at the issue or
21:04
the comment um and it made it easier to
21:07
um to simplify our code in in many
21:10
places. And lastly, we added a bulk
21:14
operation of hydrating all these lazy
21:17
references because you can imagine like
21:19
issue will have pointers to multiple
21:21
things that are lazily loaded that we
21:23
don't have in memory like projects or
21:25
project milestones or whatever you can
21:27
associate with an issue. So we have a
21:29
helper method that can say you know take
21:31
a comment and just hydrate the comment
21:33
itself and all the properties that it
21:35
contains. So if a comment has a lazy
21:37
reference to anything, we'll make sure
21:39
to resolve it and we give you a promise
21:41
back um which will resolve you know when
21:43
all of that operation is done and what
21:46
that means is you can then simply access
21:48
the value um of that issue and it will
21:51
be there and the way we do that is we do
21:53
it obviously at runtime we have these
21:55
guarantees that we've loaded up
21:57
everything before uh the promise
21:59
resolves but we do it also on type um in
22:01
in the type level. So if you call in um
22:05
hydrate on a comment, what you get back
22:08
is this hydrated comment. Um and
22:10
hydrated is effectively just a decorator
22:12
or you know generalization of the
22:14
comments. And what it will do, it will
22:15
loop over all the properties in the
22:18
comment and look at all the lazy
22:20
references there in and just make sure
22:22
that the value is now typed as
22:23
nonoptional. The value will be there. So
22:26
in the end, TypeScript will be happy as
22:28
well if you've hydrated your things. And
22:30
this lets you push up the responsibility
22:32
of hydrating your stuff to the upper
22:34
layers. Like if you have a component,
22:36
you just want to render a comment and
22:37
its issues, you can simply say, well, I
22:39
need to be passed in a hydrated comment.
22:42
Um, and then somebody up there needs to
22:44
sort of, you know, be responsible for
22:45
for the
Model loader
22:47
hydration. So with this, we had the
22:51
ability to load up things asynchronously
22:52
into memory. Um and obviously the next
22:55
big problem was that we cannot have
22:56
everything locally on disk but we need
22:59
to go to the network in in many cases.
23:01
Um and today probably like 95% of all
23:03
the data you know still lives on the
23:06
network and is not even on the on the on
23:07
the local client and we we load it uh
23:09
whenever needed. Uh but because we had
23:12
put this lazy loading in place to load
23:14
things up from index DB there was
23:15
literally nothing we had to do in order
23:17
to support this network case. So we just
23:19
simply change the back end to instead of
23:22
you know directly load from index DB we
23:24
put a model loader in place which will
23:26
first try to load up any entities from
23:28
the local cache or local index DB and if
23:32
it wasn't found we would go to the
23:33
network make a graphical query load up
23:35
all that all that data put it into index
23:38
DB and then return the result. So the
23:40
next time you came along, you would have
23:42
all the data in index DB already and it
23:44
would be a super fast operation to do
23:46
without changing a single line
23:47
effectively on the front end side.
23:49
Instead of being you know 10 millonds or
23:51
100 millconds, it would now be like half
23:53
a second or maybe a second to to load
23:54
that data data in. But um in terms of
23:57
promises and you know all the same stuff
23:59
um it simply worked.
Preloading
24:03
So the last thing that we did over the
24:05
past maybe half a year now is to sort of
24:08
make the user experience even even
24:10
better. Like we had this notion of
24:12
eventually consistency um in the
24:15
application where uh if you accessed any
24:18
collection or any lazy reference that
24:20
was sort of the hint for uh for the
24:24
client to go on and and start loading
24:26
loading model objects uh model objects
24:28
back. And uh the problem with that was
24:32
that if you if you didn't do anything
24:33
else in the application like you would
24:35
come into a into this page for example
24:36
of a project and you would have you know
24:39
20 or so different model objects that
24:40
wouldn't would have to be loaded from
24:42
from disk and they would start popping
24:44
up. So it was totally fine for you to
24:46
sort of you know create an application
24:47
without you know thinking about
24:48
pre-loading and it would eventually
24:50
work. It would load up everything and
24:52
you know in the end your UI would be
24:53
nice. But we don't sort of really like
24:55
flashes or rendering things in
24:57
gradually. We want a nice coherent user
24:59
experience. So the last thing that we
25:01
did is what that we preloaded these
25:04
models or gave APIs for our engineers to
25:06
preload these. And what we did is we
25:08
used um React Router to associate routes
25:12
with the models that we want to preload
25:14
and had a whole API around making sure
25:17
that you can define what data you need
25:19
before you display this route. And the
25:21
beauty of that was that we now had tied
25:24
a URL to the data that we wanted to
25:27
load. Um, and we're not doing this when
25:29
you click on things. No, we're doing it
25:30
when you sort of intent on clicking.
25:33
Effectively, if you hover over a link,
25:35
that's a cue for us to be like, well,
25:37
you probably are going to link click
25:38
this like there's maybe a five
25:40
millisecond timeout. If you hover on a
25:42
link for more than five millconds, we
25:44
start loading up all the models. So,
25:46
when you click the link, it probably
25:48
everything is already loaded. If not, we
25:50
can wait for all the data to load, show
25:51
you a nice loading spinner, and then
25:53
present the the the rest um of the page
25:56
um in simply one go. So, this is how we
25:58
built effectively kept our API very
26:01
synchronous um with having 95% of our
26:03
application effectively be
26:06
asynchronous. Thanks,
26:08
[Applause]
26:16
[Music]

