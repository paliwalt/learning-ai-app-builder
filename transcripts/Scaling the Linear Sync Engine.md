https://www.youtube.com/watch?v=Wo2m3jaJixU


Scaling the Linear Sync Engine
Linear
Linear
14.8k subscribers

Subscribe

797


Share

Ask

Save

35,807 views  29 Jun 2023
Sign up to Linear to see the sync engine in action: https://linear.app
We are hiring: https://linear.app/careers
Watch the previous talk here: https://www.youtube.com/live/WxK11RsL...
Explore the architectural evolution of Linear's sync engine, focusing on technical challenges faced while scaling the system. Linear discusses optimizing the synchronization process between client-side data, local storage, and the backend to improve performance and reliability.
Summary

How this was made
Auto-dubbed
Audio tracks for some languages were automatically generated. Learn more
Ask
Get answers, explore topics and more


----------------------------------------------------------

Transcript


Search in video
0:02
welcome to my second real-time swim talk uh if you haven't seen uh the first one
0:08
who has seen the first one that I've done almost everybody um awesome I'll do a quick recap on on
0:15
that talk because it sort of talks about the internals of how the sync engine works um and this talk sort of is a
0:21
continuation of that um like I want to sort of go over some of the challenges that we've had
0:27
scaling uh the sync engine and um how it actually works um in in you know in the
0:33
linear application and about the kind of changes we've made and maybe you know how the API around it has has formed you
0:39
know because of these you know scaling challenges um and um you know to start things off
0:45
with um we always want to build on certain foundations um we that you know holds true for the
0:50
sync engine it was literally the first thing that you know I started working on when I started dabbling around
0:57
um with with linear um now probably five and a half years ago uh and we sort of spent uh an outrageous
1:04
amount of time you know building out the sync engine as a startup and usually that's not something that you know any
1:10
startup would would um usually do like you would you know want to build Out product first
1:16
um in order to validate whether you're building something something good um but our sort of idea always has been
1:21
that you know we're not really building anything new like we know that the market exists um and that there's you
1:27
know millions and millions of users um who use um uh Oops There You Go plus it for a while um
1:35
who use uh who use issue tracking project management um and the way for us to win is um to uh
1:43
just build build something better um something that is you know 10x 10x of you know the incumbent Solutions
1:49
um out there so we focused in the in the early days to make sure that we have a solid foundation to to build upon um and
1:56
one of those things was sort of the the sync engine um and it took us a while to sort of you
2:01
know get to uh understand really what the benefits were like you know we started out as you know uh thinking
2:09
about sort of the user benefits that the user would get out of um building the entire application on on on on a
2:15
real-time sync engine um which is obviously you know the real-time aspects of it um you immediately see any changes that
2:22
other users make um other things that we envisioned was that you know you would get performance out of the application because you know
2:29
with sync um You probably don't need to go to the network for every single page request and load more data but you know you
2:35
could store it locally and then um simply access it and load it you know from the database or even have it in
2:40
memory um and uh maybe the last thing that we figured is like you know if we store
2:47
everything in the local database maybe we can support offline capabilities um as well and that was pretty much sort
2:53
of the um the benefits that you know um are now evident um today I don't think you know anything any new new
3:01
um new benefits were added to the to the user side but you know what sort of came a surprise um as we then went along and
3:06
as we've you know built out linear um in in the past years um is sort of the engineering benefits
3:12
that have come out of it as well um that the sync is you know literally at the core of the application and it
3:19
comes with you know I would at least say increase productivity uh for for engineers
3:25
um the the way to think about it is that um you really don't really uh need to think about networking anymore or some
3:31
error handling scenarios um but you know much of the the complexity of of networked applications
3:37
just taking care you know for you by by the engine itself um if you want to sort of boil it down
3:43
like what you have as an engineer is um an in-memory you know model graph or
3:49
graph of of data um and then you present that to the user and you modify it and that's it you
3:56
don't really need to take care of anything else um the sync engine handles you know persisting that data making sure that
4:03
um things are rolled back if in case the server doesn't accept those changes um or um you know making sure that you
4:09
know changes are offline if there's no network connected connectivity that transactions are queued up when you know
4:16
we want to send them out it makes sure that you know if you have in-flight uh in-flight changes to your data model and
4:22
somebody else makes change at the same time that you know your changes are rebased on top of theirs and all these
4:27
small things that you know otherwise you would have to implement on a case-by-case basis and for every single
4:33
feature over and over again um I don't know how much of a saving that is um you know to me it feels like
4:40
you know we can be two times more powerful um because of this um and we can just ship you know
4:46
functionality and features you know much much quicker the uh other interesting benefit was
4:54
that you know um we don't really need any servers well Annie we don't need so many servers to to run the entire
4:59
application um and this took us a while to sort of you know realize um that you know it's
5:04
very resource um well what is the opposite of um it doesn't use many resources um on
5:12
on the server side because the clients essentially load up the entire state of the application um locally there are no
5:19
page requests or there are no requests to the server for for every single page load um only mutations only changes in
5:25
data um require Network requests so when a client refreshes their page
5:32
um in a perfect scenario we don't make any network requests and we do make a few but you know not not too many so
5:37
there's there's not much load on on the server when the user uses uses the application uh which means that you know we probably
5:44
can you know run the entire linear application on the back end with you know 10 times less servers than um than
5:51
you know other applications with which would sort of have some sort of you know um Network requests for for every single
5:58
page load foreign so that's a fee of the benefits um and
6:05
this is the slide that I um that I that I shared as the end result of my last sync talk
6:11
um sort of detailing the the internals of um of of sync
6:18
I'll do a quick recap if you are sort of more interested in in how this how this works um you should definitely go back
6:24
to my to my previous talk and have a look um but in in you know in the internals of it um
6:32
what you have is uh effectively in object pool of you know model objects
6:37
that somehow get you know loaded up into the clients um either from sort of your local storage or you know from the network
6:44
um somehow from from the sort of backend database and you've got this Big Blob and big pool of of just individual
6:50
objects that have you know properties on them so in our use case you would have like you know organization you would
6:56
have multiple teams you would have multiple issues and would have multiple users all sort of you know
7:01
randomly um in one one big pool what the sync engine then does with with this and
7:07
you know over time as well um it tries to sort of build this object graph out of um that big pool of objects if
7:14
you have for example an issue an issue will have a property pointing to the to the team that this issue is associated
7:21
with and the second engine will you know take that information and then reconstruct
7:26
um uh you know nicely usable object graph out of out of that data so what you'll
7:31
in the end get after this construction has been completed you will have an object at the root
7:38
um which is or a model object at the root which is your organization we call it organization is actually a workspace
7:44
um we just can't rename our our models at this point anymore like we have committed to to you know talking about
7:50
organizations when we actually need workspaces and an organization will have a
7:56
collection of teams and those teams in your object pool will have been hosted into um into that collection so you can
8:02
access you know um the collection of teams which will contain all the teams in that in that object pool each team
8:08
again will have you know a collection of issues um which contains all the issues for that for the team
8:14
um and those again are hoisted so what do you end up using as an engineer is not the object pool but you get this
8:21
nice object graph out of it and we use mobx to tie our interface and
8:28
our UI to those model objects in in that graph so whenever you access a model
8:35
object we make it observable using mobex and then when you render your view and access properties on
8:42
individual model objects mobex will note that there's sort of a correlation between your view and that model object
8:47
and then that model object in any way updates um or actually then individual properties on that model object updates
8:54
that's a you know note for mobx to re-render the view that was sort of
8:59
dependent on on that model object so effectively when you render your
9:05
views um they will automatically stay up to date without you literally doing anything
9:10
there's an observable function that you need to wrap your your component in but
9:15
that's literally all you need to do in order to make your view stay up to date with all the changes in um in in the
9:22
model in the object graph and that holds true for any real-time
9:28
changes as well um the the nice thing about this is that it you know the sync engine doesn't care you know where those
9:34
changes come from like if you make changes as a you know local user to any of the model objects they will
9:40
automatically be reflected in your UI all the associated components will be re-rendered if you have you know
9:45
iterated over a list of issues you know that list of issues will be re-rendered you you see your new issues
9:51
um but the same holds true if somebody sends an update from from the network like if another user makes a change
9:57
that change will make its way into the sort of object pool um and then it will be hoisted into that
10:02
object graph and again automatically you UI updates so it's effectively sort of a local change to your data is the same as
10:09
a network change um to your data and you do need to do absolutely zero in order to support that
10:15
which is randomly review and all is good some other pieces that are you know
10:21
important in sort of the internal workings of of the sync engine is the transaction queue so when you then start
10:27
making changes to the model objects um what you literally do is you you have
10:33
your local model objects in memory you make changes to their properties um which are automatically reflected in
10:39
the UI because of our binding and when you then call Save on that model object the sync engine will look at that object
10:46
be like well you change these three properties so let me create a transaction out of that and add it to
10:52
the queue the queue is also persisted on local disk so in case you're offline we can
10:58
replay those changes on top of um you know your object pool and load them up again so if you refresh
11:05
your page we will continue retrying those transactions um but over over some course of time
11:11
those will be sent out as Network requests like they actually will be batched up to make it a bit more optimal
11:16
um if you make you know changes to 10 model objects at the same time those will all be latched up into a nice graphql
11:22
mutation and send to the back end the back end will you know do whatever
11:27
it does in order to validate that those changes are are good back in my make
11:33
other changes as well like it might execute some workflows in order to sort of you know change other model objects
11:38
um that are affected by by the change that the user just made and then somehow to this through this sync resolver
11:46
um in this slide um the changes will be then broadcast back to all the clients
11:52
um all the clients in that organization are connected to to that synth resolver um it was actually no longer a sync
11:58
resolver um this was four years ago when it was called that um it's essentially just the sync server
12:04
and all the changes will be broadcast to all the clients connected um to that organization
12:11
um they will be received you know mapped into the object pool or properties will be updated new objects
12:17
will be inserted and saved locally on the user's disk
12:24
also the client that made the change initially I can come back to sort of the life cycle of a transaction I'm in a in
12:30
a later slide we can we can look at how how that how that happens uh but that is sort of you know a very
12:37
brief overview on on how the sync engine works internally
12:42
um for the remainder of the talk um what we can do is like we can not look at sort of uh whatever is on the
12:50
right hand side of things because you know this is what you as a as a user essentially see from from the from the sync engine you see an object graph that
12:57
is somehow kept you know in sync with all the changes that users have and then you
13:03
have you know your view that is essentially a you know representation of that object graph um because the view is
13:09
a function of the object graph we can also sort of forget about it for the for the rest of the talk you just need to
13:15
know that you know if the object graph changes your view automatically you know is kept up to date as well um with with those
13:21
changes um and then when I sort of dive deep into like how we initially built out
13:28
um the the pipeline for you know making these changes and keeping the clients in sync
13:33
um what problems we uncovered um where we hit performance problems and how we how we solve them
13:39
foreign so the really what a sync engine does is just
13:46
two things um it you know gets the client up to speed and then you know it keeps the
13:52
client um in sync with with all the changes super simple like um there's not too
13:58
much yet so let's start off with um essentially the first implementation that we had uh for our sync engine
14:06
um this is all that there really was to it um we had whoops
14:12
not there yet we had um the object Craft on the left and let's say we have a new user coming
14:18
in um and the user doesn't have any any local data in in the in the local database
14:24
what we do is we make a request to a graphql API to load all the data you
14:30
literally say like hey I'm a user you know here's my credentials um here's my user ID please give me all
14:37
the data for that organization and the graphql API will be like okay let me go to the database let me construct queries to you know
14:44
fetch all the data that is visible to you and let me package it up in a big Json blob and stringify it and send it
14:51
back to the client client will receive it unpack it construct model objects out of
14:56
um all the objects contained in that what we call a full bootstrap and
15:02
um then construct that that object graph from it and then it will write it or flash it down into um into indexeddb
15:12
um that is sort of the the getting up to speed part of um of sync um it has some problems we'll
15:17
get to them soon because you know we run into them pretty quickly um but you know getting up to speed is
15:23
essentially you know going to the going to the back end and loading up everything that the client can have
15:28
storing it locally on disk and the next step is then to keep in sync like once you have loaded all that data you need
15:35
to somehow you know you don't want to load up all the data every single time again like you want to get Delta updates
15:41
um of all the changes that happen in in your workspace so what you then do is um as a client um we make a websocket
15:48
connection to a sync server and um then the string server starts getting updates
15:54
um to to the user um and to answer the question like how how do transactions flow in in the
15:59
system um the client will also make use the same graphql API to make changes to its
16:06
its objects um and when a client makes a change it will um not store it immediately in the
16:13
local database because that you know change hasn't been verified yet like it's not it's not truthful
16:18
um it's an optimistic change that the client has made we do update the UI for that on the client because we want to
16:24
immediately react to any changes that the user user makes but we won't touch the local database yet because we don't
16:31
know if um if that change will be uh will be accepted so we make it in memory
16:36
that change we construct a transaction send it to the graphql API
16:43
the transaction the transaction itself is stored on the client in in a local database yes so the client will store it
16:50
in in a local database so that it can replay it in case the client refreshes but it's just a cue of transactions
16:56
which are essentially loaded up into memory when the client comes back online and then one by one the client will try
17:02
to send them to the graphql API and the graphql API when it receives it it can either accept it or reject it
17:09
rejection um is pretty simple you know you had some sort of validation error like essentially we made a mistake like
17:15
it is on us to make sure that you know the the client changes or the changes that a user can make in the client will
17:23
be accepted by the back end uh because we we work with optimistic updates we make sure to validate the data on the
17:28
client side because we immediately show those changes to the user um there are certain cases where that is
17:34
not true where you know there might be a clash with the data some somebody might have updated data in a way where now
17:40
your change is invalid um in that case the server will reject that change and the sync lines um will then roll
17:47
back those changes in memory to to the user um so as a user it will look like you
17:53
know you made a change you see the UI updating and then you know 500 milliseconds later it will revert itself
18:00
back to you know what it was and you have the option to then sort of opt into showing an error dialog
18:08
um I think we show it by default like if something goes wrong we try to present a
18:13
user presentable error sent by the back end um and that shows up as a toast to let the user know that
18:19
something something went wrong and the changes that they made um have been have been wrote back
18:24
um and the transaction queue will just you know make one one request at a time for those transactions
18:31
um and then replay those changes onto postgres now the graphql API as it writes those
18:37
changes into the posters database which means they're not committed they're now you know part of the truth
18:43
um they will also write a um what we call sync action um to a specific table
18:49
um in in that database and the sync action is just you know a um a record of change to the data set
18:57
of a a workspace it will have the models ID it will have the changed properties
19:02
it will have indication on who who made that change and what kind of changes it it is it might be an insert a deletion
19:09
an archival um or an update and then it's the role of a sync server to
19:15
go to that table um and constantly read read on it um the six server will always sort of read
19:22
from the end of that sync actions table um read anything that is newly added to it
19:28
um figure out like what clients are connected to that one particular sync server go through that list and
19:34
distribute those sync actions to the to the corresponding clients based on whether they have access to that data or
19:40
not thank you and that's how you know through the websocket then the clients will receive
19:46
updates in real time you know using the using the socket server and at that point when they receive those updates
19:52
through the socket server is when they also get written to the disk off of the client
19:58
so nothing gets written until you know you receive it essentially through the sync server in order to make sure that
20:04
you know you um you don't write anything that you know might actually be wrote back or if
20:10
you refresh at the correct time that you don't get out of out of sync so if you've kicked off a transaction for
20:16
example um and that is in flight so you send it already to the server and now you refresh your client
20:22
um what will happen is you will still have the transaction in your local database because we haven't yet seen a response
20:30
to it it will have been applied on the back end because you know the backend received that request it will have saved
20:35
it to the local database and written it to the sync action table and now that your new client refreshes
20:43
um it essentially will have you know a conflict which we deal with um we will be reading listening in on
20:49
the on the on the sync updates we get from the from the server before we start sending transactions
20:55
and um we do have a you know detour in there where you know the transaction um log that we had on disk will check if
21:03
you know the transaction ID matches with what we got from um from from the from the circuit server iffy if if you're
21:10
already we're able to you know save the transactions that we had um
21:15
to the back end that's not always the case it might happen that you know we send it twice which is perfectly fine
21:21
like it's just another update with essentially the same properties so even in case if if he sent the same um same
21:29
update twice um nothing would happen like it would not be a non-change um nothing would be written
21:34
um the only you know thing that will happen is um if you for example delete an object or delete yeah delete an issue
21:40
for example um you might get two deletions the second one of which would fail with an
21:46
error because you know the object already has been has been deleted so we try to detect those
21:51
um you know conflicts in case users refresh at the at the correct time but
21:56
you know even if you can't deduct them um correctly it's it's not a biggie um the user might see and just a quick
22:03
error toast um which might be a bit weird but given that you just made a change and then refreshed um maybe maybe it's fine as
22:10
well um so second time the user starts up and
22:18
loads up the client we don't need to go to the server anymore like we have everything stored locally in in the
22:23
database and we have an up-to-date representation of that data in the database because we've been listening on
22:29
all changes on on the websocket so what we do is um we you know read
22:36
from the local database it's a bit hard to see here but essentially we do have a
22:41
specific local a specific database in indexeddb called linear databases
22:47
it will contain essentially a list of all the databases that the user has at some point created
22:55
we might have multiple databases because we might have multiple workspaces that we're associated with or multiple even
23:00
users on that same computer so a database name is contains them you know huge hash that is constructed out of
23:07
multiple things that it will have your client ID in there it will have you know um well the organization ID is sort of
23:13
you know unique but the client that needs unique to the organization ID so we don't need to add the organization ID in there but we'll also have um you know
23:20
a version hash of the database defined by us like if we if for some reason need
23:25
to Nuke the entire database we just you know increment this version number and
23:30
that then will generate a very different hash for the database so the client will be like well I don't find that database
23:36
so let's reconstruct the database from scratch um and then it will contain a number of
23:42
sort of other metadata related to um to the database in in that field but you
23:47
know the client will construct you know this hash um it will then check the uh the linear
23:52
databases uh database to figure out you know whether there's an existing database um and then if it finds one it will
24:00
you know use that database um with the appropriate hash and read data
24:06
from it and that database contains tables for every single type of model object
24:12
um in this case I have no idea what what data this is or what what model object we just hash um the model name
24:19
but it will contain essentially you know one or more key paths which we can use
24:25
to query that data um the ID is always a key path so you can always query by the the uuid of a model object and then the
24:32
value will be just you know a Json blob of um the data or the serial s data of
24:37
that model object essentially containing all the properties in Json 0 format
24:43
um there also is a specific sort of metadata and transactions table
24:49
transaction you can imagine what what goes in there um obviously transactions will be written into that table
24:56
um and the metadata will contain metadata information about that database it will contain things like you know the
25:01
last sync ID um that I've seen and written to the database and that's a
25:06
concept that we have you know throughout in in sync um all the sync actions will have a you
25:11
know an increment incrementing ID going into so from zero to Forever
25:18
um and the each client will know which number it has seen in that sequence um
25:24
it will say well I've received a sync packet with an ID of 57 so I know that I
25:30
don't need to care about you know anything that came before 57 because everything's written into the database already
25:35
and that is also being used like you know in in The Next Step which will come come to soon to sort of let the server know
25:41
what the client actually has seen already um it will also contain sort of you know
25:47
fields on on what model objects we've loaded um it might be for example that you know
25:53
you um load up um in in in in one sort of session you
25:59
load up all the data from Full bootstrap and everything's nicely persisted in the local database meaning that the
26:04
persisted flag is set to true on on that model object um but then you know an engineer makes a
26:10
change to um for example the issues model they add a property now that model object is invalid
26:17
it will contain more data and the client's data should be deleted and reloaded and we use you know the
26:26
persistent plugin here to indicate that that's that's the case so the next time the client then refreshes they will
26:32
um Loop through all the tables and figure out their hashes which are stored as essentially the table name for those
26:40
model objects and we'll figure out well the issue hash doesn't match anymore like I don't have a table for the for
26:46
the issue it will then go into the method table and say you know persisted equals false to indicate that you know
26:52
oh we need to load up persistence data and we need to wait for that and it will then
26:57
um load up you know data for just that one particular table so do a you know
27:03
what we call a partial bootstrap for the data but maybe I'm getting ahead of myself because you know that came later
27:09
um we uh you know that's the way how you sort of keep um the the schema changes in sync
27:16
between the clients so we're pretty you know simple with with handling schema changes we simply delete all the data um
27:23
that is part of the schema change um which is maybe something you know to to think about when you make changes
27:29
like you want to make bigger changes in one go you don't want to sort of you know do it on Monday Tuesday Wednesday and Thursday
27:35
um because that will invalidate a lot of data and clients will have to wait a bit longer before they before they see anything when that happens
27:42
um and we you know maybe we could be smarter about this if I hadn't I haven't really seen seen a case where this would
27:48
help much with with performance so to get back to like the first
27:54
implementation of sync as it stand as it stood for you know literally one day and we found that you know it's a bit
28:00
problematic we need to add something else in there um and what we needed to add is Delta
28:05
sync so we do have um a problem with with the previous slide
28:11
which means that you know when we do a full bootstrap with a lot of all the data from a specific time uh you know
28:17
time in history and then we will connect to the websocket um any amount of time might happen in
28:25
between like your network might be slow it might take like five seconds to load up all that data and five seconds later
28:30
you connect with a websocket somebody might have made changes um in in the meantime and the way the
28:36
sync server works is that it doesn't know about history like it just continues forward when it sees a new
28:42
sync packet it will send that out to all the connected clients and you know get over it and and continue
28:48
so what we needed is a way for climbs like once we've once they've loaded up all of the data or you know
28:55
when they come back with a refresh to sort of quickly catch up um not with a full bootstrap but with a
29:01
with a Delta bootstrap like they want to see all the changes that have happened you know in the meantime while they were
29:07
offline or while since they did their bootstrap whatever you know that time is they need to catch up with all the
29:13
changes so what the client will do is they will take that last sync ID that they had
29:18
stored in the database um and send it to the sync server say you know I need all the data
29:25
um since the sync ID like you know send it all to me and the sync server will be like okay um you know you're requesting all the
29:31
data since sync ID you know 3000 I know that I have sync data until the sync ID 5000 um so let me query the database for
29:39
all the changes for your organization and I'll send you a Big Blob of data
29:44
um it's essentially fast forwarding the clients to that state and after that the client
29:49
can receive um sync updates and the client is now in instant with with the rest of the world
29:57
um small problem
30:02
um the sync server started uh effectively sort of you know burning out and becoming very very slow crashing and
30:09
all of that um what we sort of didn't uh you know in the first implementation anticipates and
30:15
I think this implementation lasted maybe for you know a few months or so
30:20
um is that um Delta sinks can be pretty heavy like a
30:26
client can come back you know a week later and a lot of changes might have happened since then like if you have an active
30:33
organization with you know say 500 users they've come back a week later um there will be tens of thousands of
30:39
changes um to each model object and that means tens of thousands of full changes to
30:44
model objects being serialized as Chase and and send out when a client connects
30:50
and the way the sync server work because it like wants to be in real time it wants to work through these things whenever a new client connected what it
30:57
would do it would pause everybody else's updates and service that one client saying oh you need the Delta sync so let
31:03
me fetch everything let me then you know package it up send it to you and then I'll continue my process because now
31:10
you're in sync and now I can continue my process of reading sync actions and sending them to everybody so that
31:15
everybody is in sync if it had continued to send those sync actions
31:20
um you would have a problem on sort of the client side of things um and the you know code would just be much more
31:26
complicated because you would have this one client that we haven't sent this injections yet because they're still receiving the Delta sync everybody else
31:33
does and now I need to memorize all the sync action sync actions that I've gotten um since then and you know it
31:39
would just be convoluted so the way we we then fix this is um well
31:45
let's not you know have the sync server be involved in sending those sync Delta packets but let's just like you know graphql we have a nice API we've got you
31:52
know multiple of PODS running um running on the back end why not just make a request um to the server
32:00
um the graphql server because it's super Reliant and it can just infinitely scale um there's sort of no States involved in
32:07
in the graphql API so the Delta sync is made um to the graphql API now
32:12
um we do have yes um so we still have one problem
32:19
um which is we need to add this small piece um in here we need to add a queue again to overcome race conditions like
32:25
when the client connects um you might be receiving already um sync actions before you get your
32:31
Delta update um and then you might be writing things to your local disk in the incorrect order and overwrite more
32:37
recent changes um so with the queue what we now do is you know the process of of getting up to
32:44
date and then staying in sync is the client will load up all data from the back end as a full bootstrap it will
32:51
then connect the websocket to the sync server it will start receiving synced updates
32:57
but cue them all in memory it won't apply them anywhere but just keep on adding them to this local queue
33:04
um while that's happening it will then make another request to the graphql API saying you know please give me a Delta
33:10
sync up until whatever the sync server told me was the last sync ID because
33:15
that's what I need I've seen everything else and I'm keeping that queue up and running but I need that Delta in order
33:21
to catch up to whatever the Sig server is has started sending me we received that from the graphical API
33:27
we apply to the local database then we flush the queue to the local database and now we're real time now every single
33:34
you know sync update that we get from this link server will be applied in real time to the local database
33:40
and everything's fine so um and this was probably the the diagram that we used for
33:46
probably the first year or so
33:51
and um then we started growing and as you grow
33:56
fun things happen so the first problem that we run into um was man bootstrap is taking ages on
34:03
the client um unexpected like I would have thought that you know the graphql API is um is
34:09
something that would be hit first but we actually started seeing that you know it's a bit slow to sort of launch the client when you have a lot of data
34:16
um and you know super annoying I don't really want to want to sort of wait ages um for for for normal refresh
34:24
um and the reason for this was simply you know if you load up all the data in your local database you know that might
34:29
be on a big organization like 80 000 or 100 000 individual model objects
34:34
you load them up from disk which is relatively fast but then you construct them into objects and you add mobex on
34:40
top of that and that is actually pretty slow um so we need to change
34:46
um you know a few things so the the first thing that we did was um like we
34:51
we came up with what we now call partial um uh Barb partial bootstrap so we say
34:56
you know we'd be no longer like really need to load up everything um from the local uh database but um we
35:03
can wait on some of the stuff like it doesn't have to be um all or loaded
35:09
um in in time and um the uh the way like the reasoning
35:16
here was that if you look at the application like you have certain model objects like you know Commons and issue
35:21
history that are not really shown in um in the application until you get to a certain screen like comments on issue
35:28
history are only shown when you look at that issue of an individual issue um and most of the time users start with
35:34
you know the active issues or my issues on screen um so we don't really need to sort of push up all of these all of these
35:40
objects um you know necessarily um so
35:46
how how do we do that um because on the client side like we need to implement something in order to
35:52
then dynamically load these model objects when when needed um and it's not really a um
36:00
well like we don't want to make it more complex for for for the engineers um than needed um we want to make sure that
36:06
you know you don't really have to change anything how you how you use the the structured data in order for us to
36:11
optimize how we load up the load up the client so the way internally um you know the
36:18
the collections um work is that you know you will have a team which will have a
36:23
property called for example issues which will be a collection and you know from the get-go we created this our own class
36:29
to hold collections because we anticipated that we will have to you know at some point optimize how we
36:36
access those Collections and we want to be in control of what happens when a user acts over when an engineer accesses
36:41
that collection um and um in in the early days like your
36:46
retrieve would already sort of have all the all the data um in in those collections so a team would have all the
36:52
issues uh sorry uh yeah team would have all the issues and issue would have all the all the comments associated with it
36:58
because we would load up everything from the local database now we wanted to delay that and we wanted to make it lazy
37:05
um so what we introduced was a lazy collection um which is a subclass of of the
37:10
collection it works in the same way um as an engineer you don't really need to know which one you're accessing um it
37:16
has the same accessors to sort of you know get all the elements of that collection or find things um in in the
37:21
collection um and we simply said well let's take you know let's start easy let's start just with the comments and issue history
37:28
um and let's make um the comments collection on uh on the
37:33
issue lazy loaded um and what that means is um if you you know access comments like
37:41
if you encode you access the the the property of you know team our issue that
37:46
comments um the same country will notice um it's it's a getter um and it will know that oh okay so you know you now
37:52
want to sort of access the elements of that collection um let me check if they're actually loaded um and if not let me then
37:59
actually go quickly to the database and load them up so what will then happen is um you know
38:05
if they are not loaded which they are not when you when you start the application um we will go to nextdb um load them up
38:13
populate them um and then you know get back to the get get back to the user so how could we do
38:20
this without making any changes to how you access the data structure because in the first
38:26
time they don't exist and then they do exist um it's not really any different from
38:31
um you know somebody updating a collection like the first time you access the user
38:37
you access the collection as an engineer um you will get zero elements back to get an empty empty array if you access
38:42
the elements of that collection um but then like a millisecond later oh
38:47
you look at another update saying oh there's no data in there which looks like a you know somebody updating them
38:52
through the network for example or you making changes yourself um so when they are hydrated into the
38:58
collection um again mobex will kick off this collection changed and any UI that
39:04
access that collection will re-render and you will now see those those um those elements in the collection
39:10
which if you don't do anything else it will work So eventually um and very quickly you will get those
39:17
comments um in an issue but there's still a flash like there's still you know two renders for any section that show comments
39:25
um you will first see no comments and then immediately later you'll see some comments um and we do have tooling to
39:31
get over that so you can if you know that you know collection is um is lazy you can kick off hydration
39:38
beforehand or you can you know wait for hydration to happen um and hydration generally means sort of
39:45
you know going at this point to the local database in the future it might be you know going to the network as well uh
39:51
but it means that you get a promise back um and when that is fulfilled then you know that you know everything's hydrated so what we do in code is we got suspend
39:59
suspense boundaries around anything that we sort of lazy load um we don't need to show a spinner about
40:05
what we do want to do is like nicely fail it very quickly in when when that happens so we don't want to render a
40:10
view where you don't see any comments because that might mean displaying the text no comments for example so we want
40:16
to not render anything um while the hydration happens and when that promise then resolves um the
40:21
suspense boundary will re-render that component and we quickly faded faded in nicely rendered with with all the
40:27
comments in place so that's why when you sort of very quickly like if you're super fast and you go to an issue and go to the section
40:34
you will see the comments fade in um in that section um we also do sort of you know all this
40:39
hydration beforehand so when you roll over a list components um in an issue we already kick off that hydration because
40:46
we anticipate that the user might be clicking on that element so when they then do the comments are already there
40:51
so we can immediately render them we don't need to fade anything in um and if this you know when this was
40:59
correctly implemented like there would be no you know no discernible change to
41:04
the to the user um UI and the user will really see see anything um what they would say is that you know
41:10
suddenly we bootstrap much faster so that's what we did with um you know
41:16
uh the uh the first bottleneck bottleneck fix we we implemented partial uh partial bootstrap I'm from from the
41:23
local database the other thing that we did was um just optimize how we how we serialize mobx on those model objects
41:29
because as I said you know that is a very slow operation it takes time to make an object observable
41:35
um and previously we would do it for all the model objects and now we actually do it only when we access those model
41:41
objects so when we um when we find them by ID for example or when we access a collection
41:47
um that's when we create um or make them auxiliable which made it much faster um to bootstrap as well
41:56
so yeah um next problem um the the bootstrap itself when we load
42:01
up everything is is quite slow so we fix it for a local database and then obviously move the problem
42:06
um to to the next um bottleneck which was the graphql apis actually actually
42:11
pretty slow um at doing doing things well we already have the ability to sort of delay things loading up from local
42:18
disk so we don't really need to load up everything in in one go um so what we then did is we added a
42:25
delay bootstrap to the startup sequence so we do a main bootstrap which is loading up most of
42:32
the models like everything that is important like teams organizations users issues
42:38
um whatever is usually rendered at the first time but we moved everything else into
42:43
delayed bootstrap um what went in there was I think comments and issue history in the beginning again those are models
42:50
that are you know they're plentiful um they're they're very many issue history elements like probably you know 10 per issue so they're they're super
42:57
heavy um and just dealing loading of that um and rendering the UI before we even get
43:03
to load up the comments um made things much faster so now bootstrap is fast again and we want to get to UI very
43:10
quickly and then catch up with you know whatever the user user has um so they with the way this works with
43:16
those lazy collections um is that you know we just added you know quick check into the laser collection saying you
43:23
know if you don't see them in the local database we might actually be still bootstrapping them so the call to load
43:29
them load them delayed might still be ongoing so let's wait for that so the
43:34
promise wooden fire until we've actually loaded up the delayed bootstraps and
43:41
um then we would go to the next DB and check you know what do we have as comments and issues to refer for for
43:47
this and that made things you know a lot faster probably like you know five times faster bootstrap
43:53
um to get down with well then we move the problem just to the
43:59
next place so the next problem that we started started having was um
44:05
that's uh the graphql API started um not being slow but um crashing and
44:12
um you know we're a bit dumbfounded at first but then quickly realized that uh we were just running out of memory
44:20
um and the reason for this was like you know graphql is um it's good for small operations but
44:25
it's really really bad for huge operations um because the way graphql works is before it can send anything to the
44:32
client it needs to sort of have constructed the entire response locally in memory
44:38
um it cannot stream anything um it's a Json blob and that the response is a big Json blob and you know
44:45
you need to have all the data present before you can construct that response and send it to the client so the way the
44:50
graphical bootstrap would work is it would go to the database it would load up everything from the user
44:56
and we'll have that data then you know in memory it would then construct essentially you know a graphical
45:02
response which is you know big chase and serialization of all that data and it would have that data now twice in memory
45:09
um and it would then send it to the user while keeping all of that in memory and once the user had received the entire
45:15
block which might you know take a long time because networking is slow um that's when you know those big memory
45:21
blobs were effectively removed so if you load it up you know a data set of you
45:27
know 50 megabytes which is fine like compress that's much less but you know I think even the linear workspace today
45:34
uncompressed might be something like 150 megabytes um you would have to keep that all in
45:40
memory um for one single bootstrap request um so if you make you know I don't know
45:46
20 bootstrap requests at the same time you run out of memory because we've set the limit at two gigabytes
45:52
um of memory for our pods um so not very good so we need to find a solution
45:57
um to this and what we did is we introduced a new thing of introduced the streaming rest standpoint
46:03
um so graphical come to streaming um rest can so we added a new new endpoints um that
46:10
is sort of internal to us it's not public facing and only the client uses it uses it and
46:16
what it will do is like you know the client will make you know instead of going to the graphical API it will now make the same request to the streaming
46:22
rest endpoint the streaming red standpoint will make create a streaming database connection to the database with
46:28
the big query like there is one big huge query that contains um you know everything that is needed in
46:34
order to load all the data for that user from from the database um it will then stream the response role
46:40
at row by Row from the database to the API and then immediately send it over to the client
46:47
um so it won't really need much memory if the client is fast like it will essentially you know read in a few rows
46:54
at a time keep in memory because then it sends to the client and the client accepts them um so they can be removed from from memory
47:00
um in order to account for sort of slower clients because what might what might have happened is like your database like we want to load stuff from
47:07
the database as quickly as possible in order to keep the connection count low um so we might load up a lot of stuff
47:13
from the database and have everything in memory because the client is slow we we're not able to send it as quickly to
47:19
the client so we have to again keep stuff in memory so what we added in there is to write things to disk in in
47:25
certain cases so we receive it from the from the database if we go over a certain voter Mark in our memory we
47:31
start you know streaming them to disk and from disk we stream them to to the client back and that led us
47:37
um to you know not only um be sort of have the ability to service more clients but also be faster
47:45
um I don't remember how how much of an improvement that was in terms of speed but it was substantial
47:50
um and it was much faster to do a full bootstrap with so nice um we're in a place in a pretty
47:58
good place everything is is you know going well um and then you know if you saw like how
48:03
that flame has moved around obviously like we've we've now fixed the streaming rest endpoint and then you know the
48:10
flame reaches the postgres database itself um because we've just moved sort of load um over um to to the next place in in
48:17
time so the problem here was that you know those bootstraps were becoming very hard
48:23
um on the database we had no problems catching up with mutations and all the changes the clients were making but clients were
48:29
making you know full bootstrap requests pretty often and we were increasing our user counts so um the database started
48:35
sort of just going going nuts we increased the size of the database um to a you know huge one um and still
48:42
sort of you know had problems with it so the first obvious choice is to you know just read from the read replica
48:48
um we don't need to read from the main database but we can go to the read replica for those full bootstrap requests
48:54
not as simple as it sounds because you know the read replica can be a bit late to the party
48:59
um like it it kind of have lag um even like if you run a huge query on the
49:05
replica it can be out of sync by you know as much as 10 minutes um so we need to figure out like
49:11
how the client knows like what it has loaded and account for that in the Delta sync so it became a bit more complicated
49:16
full but now have to tell the client like okay you got everything but you know only up until this Delta or on
49:22
until this sync ID so when you do your Delta sync load up from from there
49:28
um not too bad um worked out for some time but then you know again the read replica
49:33
um wasn't able to handle um all the load um and we were in certain cases still going to the main database
49:39
um and we wanted to sort of find a better solution um not that you know the database was
49:45
was you know on fire anymore but you know it was slow um like it started getting slower and slower doing these huge queries a
49:51
relational database is great for certain cases to load up everything that you
49:57
know goes into a huge organization um that's what a relation database is not good for
50:03
um so what we but you what do we do um then you add a cache um and what we started doing is adding a
50:09
new database among the database in there we tried a few things um we you know try
50:15
to side by side you know a approach and bigtable with gcp um and it turns out that manga was
50:21
actually quite a bit faster than bigtable from Google so you know we still are running on on um and
50:27
what we do is we periodically you know save all the data in you know specific
50:32
serialized format to Mungo so we take organization by organization we go you
50:38
know I think every single day we go through the entire uh through all orgs or we might be you know more smart about
50:44
that nowadays where we only do it if necessary like if the organization has enough changes that's when we sort of do
50:50
this big dump um we take all the model objects for all the users we serialize them nicely and put them all next to
50:57
each other in the database so that reads are super fast and instead of you know streaming from
51:02
the postgres database we stream from that DB and again the mongodb it
51:08
is a bit older the data like it's not up to date but you know we have all the mechanisms in place for the client to
51:13
actually catch up with that data so we the the the the um data that we write into that mongodb
51:18
will also contain like the last sync ID at which it was generated
51:24
um and then the client can can catch up um with Delta sync
51:29
Alex
51:38
um it well no it's not always from mongodb so the the uh the streaming
51:43
endpoint will make a distinction between like where to go to and it's quite complicated
51:49
um what it will do is um like to simplify it like it will check if there's a valid you know
51:55
um uh valid dump in mongodb and if it's not too old then it will go there if
52:01
there's no dump it will um do it from postgres but at the same time we'll generate that dump I'm not exactly
52:08
sure like whether we ever wait for the dump to be generated then read from there there might be something a bit like for five seconds
52:14
and then try to read The Dump if not then we just go to the main database it's a bit more complicated so um it's all in code
52:20
um but in the end like we make the best you know possible distinction of where to load that data from and it's all sort
52:27
of abstracted away like you don't need to really care where it's where it's coming from
52:35
um Delta sync in this graph always comes to post Chris yeah yeah it's no sorry so
52:40
we moved Delta sync to the streaming rest endpoint as well so um and that goes to postgres yes
52:46
yeah um we played around with going to the read replica as well but you know Delta
52:53
Sim needs to be real time so well it's it's much more complicated than um I think we had something in place where we
53:00
would read from both the replica and the main database like from the replica the bulk of it and then everything else from
53:06
the main database um but you know we've got some new things coming on on that front as well
53:12
so the next problem finally postgres done back end all cool um you know oh yeah the streaming rest
53:19
endpoint is a bit slow again on the client God damn it um we're loading up a lot of a lot of data um even with sort of our delayed
53:27
sync and and um all of that it's still a lot of data to load tons of megabytes
53:34
um for larger organization specifically like I think our organization even though it's you know pretty pretty big
53:39
um it's still working nicely and fine and you know takes a few seconds three four seconds to load all the data set
53:46
but I'm going to get to sort of larger growth organizations um differently not up to par like we want to be be
53:52
faster at loading up that pool booster um so what can you do like turns out we
53:58
have essentially all the mechanisms you know under the hood already in place in order to do something you know really
54:03
nice and smart and cool and that's actually what we're working on today um hopefully you know getting this out
54:09
there I don't want to make any promise anymore because if we've you know pushed the boundary back so so often it's a hugely
54:16
complex task um but what we're doing is we add a batch loader uh in between
54:22
um and the best way to describe you know sort of a batch loader in in in this diagram is that um we do
54:29
um a partial bootstrap when we load up the client's data and we load up only the absolutely necessary data um the
54:36
data that you know every cloud will see on on every single page on on the first page or the data that you know doesn't
54:44
have you know tens of thousands of entities um and that you know essentially includes you know organization teams
54:52
um users um no longer issues no longer attachments um obviously not comments and issue
54:58
history items and there might be others as well that that we don't load um and
55:03
um everything else is essentially pushed to the to the partial um or to the batch loader and the best
55:09
way to describe a batch loader is essentially um a way to stream data in on demand
55:15
from from the network um to quickly describe you know what
55:20
that sort of means let's go back to this you know graph that we had earlier when we did lazy Collections and let's look
55:27
at um the teams now so now we do have um
55:33
uh a team that no longer has issues so if you see um if you go to an to a team page with
55:39
active issues the first render will be that you get a empty list of issues which is previously the case as well
55:45
because we already had moved sort of issue loading to be lazy um but it would always load them load
55:51
them from disk because that was sort of the next you know way to to make things faster at bootstrap on the on the client
55:58
side um but now we might not even have those things on on um on disk so what we're
56:05
saying is as part of you know full bootstrap we're no longer loading any issues we're we just get rid of them
56:12
um same goes for attachments so how do we deal with this so again you know you come in and you touch
56:18
um you know the issues of a user or the issues of a team um and what the system will try to do it
56:25
will you know as laser collections do they will go to the index DB and they will try to load up all the data from
56:31
from the from the local disk um but you know there might be a case where um you know there is no data in the
56:37
local disk and we have you know quite a few mechanisms in order to figure out like how whether there's data whether
56:45
there is not data um it's complex I don't want to go into the details but it uses what we call you know partial index
56:50
values let me know if we have loaded up all the issues for example for a user or for a
56:57
team um or for the entire organization um and we write those to disk as well so
57:02
we can you know ask the disk whether we've actually even loaded up these these models
57:07
and um if if you haven't um we will actually the The Collection itself will
57:14
make a call um to the batch loader and ask sort of the API
57:20
um to fulfill that request and we'll go to the streaming endpoint saying oh hey I'm looking at you know issues for this
57:25
team um please give me all the issues for this team and the streaming endpoint will gladly give them all the issues
57:32
um and they will then be stored into the local database and then obviously the
57:38
clients will be uh will be fulfilled as well um and now suddenly you have you know
57:44
all the issues for the for the team and um the user the reason we call it batch loader is
57:49
because it does batch loading the first problem that we saw with this like our first implementation was simply
57:56
like yeah when somebody requests anything you know just make a network request load it up
58:01
um then we were looking at the first list of issues and every single issue can have an attachment and it's a can
58:07
have multiple attachments and every um you know the attachment property is a collection
58:13
and it's obviously empty um and we don't know if it's loaded or not so we
58:18
actually have to touch it because um the issue will display a visual role
58:24
in in a list will display attachments um like you know GitHub requests that are
58:29
pull requests that have been associated with the issue so every issue role that we render we will touch the attachments
58:36
collection to see if you know oh are there any attachments in in this collection um all the attachments are partially
58:41
loaded um which means that you know we will make Network requests for every single one and suddenly look at one View and
58:46
you get 50 Network requests speak send out individually those come back all saying ah no no attachments here so what
58:53
we created is a batch loader which will over time for 50 milliseconds get all the requests in
58:59
um figure out like what is being requested give back a promise for each of these requests then batch them up it
59:05
will do awesome things like sort of deduping those requests grouping them together even in the future optimizing
59:11
them like if you're asking for you know attachments for you know 50 issues in in
59:16
one go maybe it's easier to just load up all the attachments for the team that the issues are involved in so we can do
59:22
you know be smart about this as well and anything else in the interface that you know
59:28
um touches any of these lazy models will essentially be batched together and the batch loader will take up all
59:33
these requests dedupe them make sure to figure out like what The Optimist optimal requests are that we can send to
59:39
the back end combine them all into one and then make one single Network request
59:45
um and the back-end streaming endpoint will sort of you know uh look at the request
59:51
um and fulfill it um there might be multiple query database queries that the backend does but there's only one single
59:56
Network request that goes out we'll get a bunch of models back um all sort of mishmashed you know
1:00:02
together um and once we've received them we can sell all the all the requesties that you
1:00:07
know they've now been fulfilled like all the collections that they um that they wanted to populate have now been
1:00:12
populated so they can go about their own way um suspense boundaries will you know be be lifted
1:00:18
um and you know UI will render again um and that's our way to to get um uh to
1:00:24
get to get this working you know at that scale yes Alex
1:00:37
um yes and no um so the the way we've set it up for
1:00:44
now and we're still working on this um is to have suspense boundaries in in very you know certain places and make
1:00:50
sure that we do kick off hydration before you even even get you know to to some place for example like when you
1:00:57
look at a team we will do we will kick off like we will ask the batch loader to load up all the issues and attachments
1:01:03
for that team um [Applause]
1:01:09
I I can't answer the question because I actually don't know the answer for like what happens in code like there should
1:01:15
be multiple things that we'll now ask for issues like you will access the team's issues which will kick off at a
1:01:21
request then you will have you know some requests that will ask for the issues and attachments to be loaded using
1:01:29
partial load because that is faster we can go to the cache with that and then the batch loader we look at both of these requests be like well you know
1:01:35
this partial batch load I can fulfills also this request so I can throw out this request I only need to do this in
1:01:42
order to fulfill you know all the requests so there's a lot of D duping going on you don't really need to care like you just request whatever you want
1:01:49
and you know you'll get it in in an optimized optimized way and all of this like was required in
1:01:56
order to make the use case of you know loading issues from the network um possible but the beautiful thing is
1:02:01
that um again nothing in in code changed like you already had
1:02:07
um your collections you know be lazy they would previously be loaded from from local disk
1:02:13
um and now they're just you know might be loaded from the network like will take a bit longer but you know from from a engineering standpoint or code
1:02:19
standpoint nothing has changed it's it's still the same same request um that you do
1:02:25
longer right for the user it's definitely longer yes
1:02:30
we'll have to see like I think we our our suspense boundaries do have a loader after four seconds but will not really
1:02:37
hitting that like we want to keep every load um still sort of under 500 milliseconds or a you know a second
1:02:44
depending obviously on the on the on the load of the user and we might do optimizations where we not load all the
1:02:49
issues but you know start streaming them in or or whatnot um but that's where we are and to sort
1:02:56
of quickly jump into um into some code to sort of demonstrate like the apis um around this lazy loading because they
1:03:04
become more important um this is a super simplified model of an issue um it has an ID property
1:03:10
um it has a parent um an optional parent um and it might have children so we have sub issues which are
1:03:16
represented in code as you know with the children property and the parent would be like you know if you're a child your
1:03:23
parent will point to the parent issue um now this is how it would look like
1:03:29
um if the issue wasn't lazy loaded like if the issue would always be in memory um and the change is that you know we
1:03:34
need to do in order um to support um lazy loading not only Network lazy
1:03:42
loading but also laser loading from from an xdb um is is the ones in yellow so suddenly your parent actually becomes the cached
1:03:48
promise and a cache promise is you know our implementation of essentially a promise with one additional thing it has
1:03:55
a value property that you can read um if it has been fulfilled the value property will will be will be set
1:04:02
um if it hasn't it won't be said um so if you're if you're trying to access it like you don't know if it's if
1:04:08
it's being said it's perfectly fine to just you know access the value just make that accessor optional and again mobex
1:04:15
will make sure that you know your component gets re-rendered if that is ever fulfilled you might get a small flash obviously because you know the
1:04:22
loading might take time um or you can you know definitely check and make sure that you
1:04:28
um you resolve that promise in which case you what you get back um is uh is a hydrated version of um of
1:04:36
that parent so you we do have another sort of method that we added which is the hydrate
1:04:42
method which will return you a promise of the hydrated issue um and literally what that means like
1:04:48
it's this is all typescript stuff like there's nothing inherently like no objects involved um that changes like
1:04:53
when you um when you call hydrate is effectively add runtime what you get back is
1:04:59
um is a promise um but we type it to be a promise of a hydrated issue and hydrated is the
1:05:07
definition that we have done here um rather hard to read but what it literally does it goes through your objects looks as every single property
1:05:13
if it is a um a cached promise and if it is it will set the value to be non-optional so the
1:05:21
value is set after it has been hydrated and that's how we How We Do sort of typesafe um accessors for these for
1:05:28
these validating functions again you have two options you can either just call the value um and you know either get it back or
1:05:34
not you have to you know make it optional at that point or you can specifically say you know hey I really
1:05:40
want to hydrate this thing and then I get a back a hydrated object and a hydrated object also will have all your
1:05:45
collections you know be hydrated um at the same time but because collections don't really change in in
1:05:51
their behavior like they're either BMT if they're not hydrated or they will contain items if they are
1:05:57
um you don't need to make any changes to the to the interface for for those collections

