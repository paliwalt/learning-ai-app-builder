https://www.youtube.com/watch?v=55pTFVoclvE

I was laid off by Atlassian
Vasilios Syrakis
Vasilios Syrakis
108k subscribers


2,563,807 views  10 May 2026
00:00 Intro
00:58 Interview process
04:16 Starting at Atlassian
04:35 Building an Open Service Broker
07:43 Diagram of OSB architecture
09:56 Picking a proxy technology - Envoy
11:36 Envoy XDS Control Plane
14:33 AWS Infrastructure
17:45 Creating the machine image (AMI)
20:22 24 month recap
21:09 What did I do after building
22:45 Extending the load balancing platform
24:37 Envoy extensions
25:54 Edge Compute and centralized logic
27:12 Handling concerns for dev teams
31:35 Diplomacy and conflict resolution
32:14 Maintaining software over long-term
35:42 Personality Conflicts
37:11 Mentoring
AI-generated video summary 
Quality and accuracy may vary. 

Vasilios Syrakis reflects on an eight-year tenure as an engineer at Atlassian. The retrospective explores key technical projects built during that time, including load balancing infrastructure, API management systems, and proxy configurations, while sharing professional insights on software maintenance, career development, and interpersonal collaboration within large technology organizations.
--------------------------------------------------------------------------------------

In this video



Chapters

Transcript
Search in video
Intro
0:00
I was recently affected by the layoffs made by Atlassian and I wanted to take
0:06
some time out to reflect on the time that I spent working for Atlassian. I
0:11
worked there for about 8 years. During that time, I built a lot of things and I wanted to talk about what I built,
0:18
mainly the things that I personally found interesting or that I'm proud of. I hope that this video will be useful or
0:24
helpful to someone who perhaps is or was in the same situation as me and maybe
0:31
it'll give them some inspiration in terms of how they can tackle the same things that I did or something similar
0:37
and perhaps avoid some of the mistakes that I've made. I also might talk about non-technical parts of my experience at
0:44
Atassian, although most of it will be technical. And this video will be split into chapters so that you can skip to
0:51
sections that are more interesting to you rather than rather than watching the video from start to finish. So I suppose
Interview process
0:58
to start with I'll talk about when I was first hired and even though I it was 8 years ago I still remember the interview
1:05
process which is different nowadays and the reason why I was hired or at least
1:10
from my perspective the reason why I was hired and the things that I started working on during the start. So yeah,
1:16
let's just start at the interview process. So I was interviewed by some
1:21
people that I now consider friends and I remember having the impression while being interviewed that these individuals
1:29
were quite intelligent and that was something that was exciting for me. The interview process consisted of a coding
1:34
quiz on hacker rank which I aced with full marks. Then the first technical
1:40
interview was with two interviewers and they gave me a white paper and asked me
1:45
to read it while they sat out of the room for about 10 minutes. They came back in and then asked me questions
1:52
about the white paper, asked me to basically articulate what was in the white paper and the white paper was
1:57
actually about custom domains and the white paper was by Cloudflare. They then asked me a few questions about things
2:03
like microservices and architectural things like that. um containers and and
2:09
whatnot. And they were happy enough. I don't remember the rest, but they were happy enough with with me during that
2:14
stage. So, I continued to the uh second technical interview, which was a troubleshooting exercise where I was
2:21
asked to essentially prompt the interviewer for information in order to troubleshoot a a real incident that
2:28
occurred in Alassia. And it was a it was an application problem that lead led to
2:33
a denial of service. Uh so, that was fun. And then I think I was asked something about how um latency based DNS
2:41
works and my answer was not accurate but perhaps acceptable. I I I thought about
2:48
it from first principles and I thought that that uh for example I thought that route 53 did a triangulation based on
2:55
the actual latency of the client. But it is more like that they use a uh they
3:01
probably use a geoloccation database in order to do latency based routing of DNS
3:07
requests of the DNS answers. Sorry. Then after that was a values uh interview and
3:13
to be honest I don't really remember most of the questions for for the values portion but I do remember one thing
3:20
which was when I asked the question of I asked I asked the interviewer to think
3:25
about 12 months from now and to look back retrospectively what is the thing that I would have had to achieve in
3:32
order to for for you to say it was a good decision hiring this person and then they told me about [clears throat]
3:38
a an application that they needed to be built for the platform within Atlassian
3:44
and the application would facilitate self-service load balancing sort of similar to if you were using Amazon
3:52
application load balances or the equivalent in any cloud provider but for the internal developers of Allesia and
3:59
it was essentially just a a framework that I personally was not familiar with and uh I said I could build it because I
4:06
had confidence in building web apps with Python at that time and they accepted my
4:11
level of confidence and decided to hire me. So that's the the interview portion completed. So I joined Atlassian and
Starting at Atlassian
4:19
they have this classic saying or impression that when you join at Lassen
4:24
that you are drinking from the fire hose because there's so much information that you have to absorb in the first few
4:31
weeks and months in order to just sort of get going. My first my very first
Building an Open Service Broker
4:36
task at least the task that I gave myself was to build the application that
4:41
they had told me that they wanted. Let me just open a browser and we'll take a
4:47
little look see at what I mean exactly. Let me just uh move my face a little bit. There's more real estate. Now
4:54
obviously Excalor is not what I care about. So they wanted me to build an open service broker. This is uh a a web
5:01
app with an API which facilitates the provisioning of resources for a platform
5:06
essentially. So you can you can see here um it's sort of built to operate in a
5:12
Kubernetes world where you're submitting these provisioning requests as things
5:17
come up and down and it's going to bind a resource to your pod or your cloud
5:23
instance or whatever it is as you can see here. and it sort of sits in between these real resources. So you might
5:31
provision something like a database and then you'll get MySQL. So you'll get something that's SQL compatible, but
5:38
that's abstracted away for your internal developers. Anyhow, um the spec is uh is
5:45
here on GitHub. You can take a look at it. It goes into it goes into like for example the catalog endpoint and the
5:53
catalog lists all of the services and plans that are available on the OSP and
5:59
uh just metadata about them and you might say query the the service broker
6:05
and then display some of the metadata in your maybe you've got a a console a console like the Amazon console but
6:12
maybe you've got something like that internally where developers can click and provision things. In the Alassian
6:18
case, it was all through configuration files that were committed to um version
6:23
control and then those would be uploaded uh during uploaded from a build server
6:28
to deploy a service. Um but yeah, so you might have you know other APIs like uh
6:34
provisioning here. So put and patch for updating and deletes and blah blah blah.
6:40
So you would just basically go ahead and and implement this or I mean if you wanted to build your own and that is
6:45
essentially what I did. You can see also there's a an open API document here that has the endpoints.
6:52
So I chose to build this in in Python using Lask. Oh no, in fact what I what I
6:58
built it with first is with a library called connection. This is a Python library which takes an open API document
7:06
and then creates the API handlers for the paths for the API for the API routes
7:13
that are in that document which is cool. But then we eventually I eventually migrated that to just pure Flask and
7:20
then eventually migrated that to uh fast API which I believe is what it still is
7:25
at the moment. Um, okay. So, it's the first two weeks and my primary focus is
7:32
to build sort of what I promised in the interview, which is this web app that's going to be a broker for the platform
7:39
and is going to allow self-service provisioning of load balancing in Atlassian. So, like I mentioned earlier,
Diagram of OSB architecture
7:46
I started with this library called connection, which took an open API document, turned that into routes. But
7:52
I'm going to just go with uh what it ended up as, which is a fast API app. Let's just say we've got fast API here,
7:59
and then we've got uh a worker, and then we have a database, which was Dynamo DB.
8:08
That's annoying. And we would have a client making requests. That's why
8:13
that's the task API. The client would say, "Hey, please provision something for me." And the web worker wouldn't do
8:20
it itself. It would actually send that over SQS. It would drop the task details
8:26
into SQS and the worker would then handle that. So, what does a
8:32
provisioning task actually look like? It's something like creating DNS records
8:39
somewhere, maybe creating a CloudFront distribution, maybe creating uh some API
8:48
calls, and this would be the provisioning task that the worker would do asynchronously while the web and
8:57
client would wait for it to be completed essentially. So the client's polling continuously to say, is it ready? Is it
9:04
ready? When it is completed, the worker writes it to the database. The web server checks the status and then
9:11
responds saying yes, it's finished or it will say that something went wrong and there was an error. So then we can sort
9:17
of encapsulate this as the open service broker that I built. Pretty
9:23
straightforward. Um, to be honest, there's not much more to this, but we're
9:28
going to go and talk about some of the more complicated bits in just a second,
9:34
and I will directly link to this as well. So, we've got this client requesting, let's say, please provision
9:41
a load balancing, and that is essentially what they were asking for was some kind of load balancing
9:47
somewhere in the edge infrastructure of Atlassian to allow traffic to go to
9:52
their service. So that's a good uh demarcation point to start talking about the next thing that I sort of built and
Picking a proxy technology - Envoy
10:00
I built it through necessity of essentially I began to understand and
10:06
unravel the requirements more as I went along. One of the architects had this
10:12
idea to replace the load balances at Elassian which were enterprise load
10:18
balances that had licensing costs with a open-source cloudnative sort of
10:24
commodity proxy and the tech that we chose for that was proxy. You may be familiar with envoy proxy. If you're not
10:32
then it's very similar to something like Engine X but perhaps more modern than
10:37
Engine X. Um you can take a look at its you know what's what's great about it if
10:43
you want you can just read through like why why choose envoy blah blah blah but essentially we [clears throat] wanted to
10:48
replace the enterprise load balances we had make them self-service so that devs effectively didn't have to talk to us to
10:55
go set up their load balancing so MVOY has an API that allows you to configure
11:02
it dynamically being able to reload the configuration at runtime means that you can deploy deploy a whole bunch of
11:09
proxies and have them sit there running all the time and then when someone needs different configuration for their
11:15
particular uh service then they can push out a change through the provisioning task detailed here and those changes
11:24
should flow to the proxy somehow and so now that's a good time to talk about the
11:30
envoy management server that I built which we called the envoy control plane and this was it's essentially quite
Envoy XDS Control Plane
11:38
similar uh uh to this. Yet again, we used a fast API app, but this was
11:45
slightly different actually. Let's go into a little bit of detail here. I'm just going to wing this because I should be able to wing it cuz I know it quite
11:51
well. Uh this is actually a I open sourced this this software and I called it Sovereign. You can actually go find
11:57
that on Bitbucket. It's it's a public repo at least for now. I don't know if
12:02
that's going to be the case always, but essentially Sovereign runs a fast API app. And some of the things that it
12:09
takes in as uh configuration are templates
12:15
and context. And so the app uh pulls
12:20
these uh it's obviously got like uh say let's just say this is the configuration. Okay, that's sticky now.
12:28
So the templates might be particular resource types. And in envoy, you've got
12:35
stuff like clusters, routes, listeners, and let's just leave it at that for the
12:41
moment. You'd have these kinds of templates. And so when this when this
12:47
management server loads up, it'll read in these templates in the context and make these available as APIs for the uh
12:55
proxies. So then you can imagine let's just say we've got uh an envoy here. It
13:02
is going to request these things and sovereign is going to respond by taking
13:08
the context putting it into the templates and rendering out different content u as the context changes. Now
13:15
where does the context come from? Well this is part of this management server that is dynamic. So where let's just uh
13:22
let's just do a bit of flip around here. put the context here. The context
13:28
actually comes from this database, but we are requesting it from the broker. So
13:35
the we're requesting data from the broker and other sources. In fact, let's just add another source here. Let's just
13:42
say we have a little S3 bucket with some data and maybe that data is changing over time. So we take that data, it's
13:48
dynamic, we feed that into the templates. the the templates have logic
13:53
that spits out particular envoy configuration and then the proxy changes over time. So what happens is we've got
14:00
a client that's making provisioning requests to our broker. The worker is
14:06
doing some provisioning tasks and then writing the new data to the database. Then the the management server say pop
14:14
this just encapsulate this a little bit. The management server is then pulling that data from various places and
14:20
generating new configuration. That configuration hits the proxy and then it starts doing different stuff. That is
14:27
essentially the second part of what I built. We've got a broker, we've got a management server, we got the client, we
AWS Infrastructure
14:33
got the proxy. Uh why did this detach? Anyway, so now we've sort of figured this stuff out. This is all at a very
14:40
high level. [clears throat] So we've got this created. Now we can sort of think more about more infrastructure type
14:48
things. We've got this proxy, but how do we end up with this proxy? How does that actually get provisioned? What is it?
14:54
Where does it live? Well, let's start with one thing, which is that these
15:00
proxies, there's many many many of them as you would expect and they are provisioned by
15:07
um they are provisioned by a cloud formation template. This is an AWS thing
15:13
that allows you to essentially do infrastructure as code and it allows you to create resources in in AWS that you
15:22
would normally create via the console if you were just uh let's say a a basic
15:27
user. So what kind of stuff do we create in here? Well, if we were to do this stuff from scratch, we'd probably have
15:34
like a VPC and then we'd have uh, you know, a subnet inside that VPC and maybe
15:41
we'd have an internet gateway. Maybe we'd have uh uh good old security group.
15:49
Maybe we'd have a key pair. Maybe an AM roll. Um, oh, of course, we need to have
15:56
the autoscaling group. Of course, that's what's going to be uh creating these uh
16:03
EC2 instances. And well, the autoscaling group needs
16:10
an AMI, doesn't it? Indeed, it does need an AMI. AM RO has to be attached to um
16:16
has to be attached to all these. The key pair goes on on these. Security group is
16:22
attached to the this. Well, it's probably attached to the auto scanning group to be fair. Well, the EC2
16:29
instances would inherit it from the from the ASG blah blah blah. So, we've got all these like uh blocks of resources
16:36
and stuff like that. Cool. Let's let's put these up. Put these up together. Blah blah blah. Cool. So, yeah, we've
16:41
kind of got like a little template going on here and it's creating these proxies in many different regions. Uh we might
16:48
have we might have like uh NLB in here, layer 4 proxy. Maybe we'd have uh bit of
16:56
maybe a bit of ACM. Of course, these acronyms might mean nothing to some people, but for people that have used
17:02
AWS, they would know what these things are. And they know it's not really that complicated. It's like pretty basic
17:08
building blocks. And this is what we created. Uh say 2,000 proxies, something
17:14
like 13 regions, blah blah blah. Um and we also had a little bit of Route 53
17:20
records for for stuff. Now the AMI, it's not really provisioned by the the
17:26
template. It's more like it's referenced by the template, isn't it? So that would bring us on to the next piece of this
17:33
thing that I built, which is well, we need to produce an AMI. We need to produce a standard image for these
17:40
proxies and it's going to include all the important stuff in there. So how do we create this image for the proxy?
Creating the machine image (AMI)
17:46
Well, in this case, we had a repository that was using Hashi called packer and
17:52
uh we had um a salt stack uh let's call it configuration and so we would use
18:00
packer to um let's say we'd have the EC we'd use the EC2 provisioner and so we
18:08
would create an EC2 in like a dev account. We'd then upload all of our salt stack configuration. Consult stack
18:14
by the way is very similar to puppet anible chef in case you're not aware of what those are. It is configuration
18:19
management tools and that's a fancy way of saying that I want to run I want to
18:25
install packages put files and run services on a machine in a particular
18:30
way in a particular order and it automates that process makes that process declarative for you well not for
18:37
you but it helps you to to make it declarative. So we created a little um create a little EC2 live running EC2
18:44
here. We dump the config on there. We do a provisioning step and then we take the uh essentially turn this into an image
18:52
like cut it down uh whatever snapshot it and turn it into an image. So that essentially would just produce this uh
18:58
AMI. Now what was included in here? Let's let's say we can just uh we can include a few things here. Let's just
19:04
say we had um we had states for for envoy. So like let's say install
19:10
configure uh let's say just install and configure envoy uh logging agent um
19:16
security uh let's say /h hardening network tuning um containers uh tracing
19:23
oh let's just say let's just say uh observability agent there and that can cover that can cover logging tracing
19:31
metrics so that's essentially what's going on here produces the AMI cloudformation template takes this AMI
19:37
provision provisions these EC2s say EC2 and they're running with uh all this
19:42
stuff and then when they uh when they get provisioned uh that's something that we forgot here there's parameters
19:48
parameters bump that up bump this up make it neat so we've got the parameters
19:54
and these at uh uh runtime would pass in secrets and keys and blah blah blah and
20:02
then these these proxies would grab their resources be configured and then they would be running and accepting
20:08
traffic. Boom. That's it. Everything's done working. This was essentially the first two years of working at Atlassian.
20:15
So now when a developer says, I want to run my service and I want it to be uh I
20:21
want it to be accessible on the internet with all the fancy bells and whistles and routing and advanced stuff. We'd say
24 month recap
20:26
yes, no problem. Let me just get that provisioned for you. We send off the
20:31
provisioning task. We write something to the database. We tell them it's ready. and the management server hits the uh
20:39
broker says what's the current state of things takes that data plus other data
20:45
puts it into the templates creates resources out of those templates gives them to envoy on when it requests them
20:52
and this was all pre uh provisioned it's long lived infrastructure with cloud for
20:58
the cloudformation is relying on an AMI that it can use to provision those images those machines so yeah that is
21:05
probably the first 24 months. So what was next after this? So this was the foundation of our team essentially the
What did I do after building
21:11
product that we were going forward with um which is uh centralized load
21:16
balancing managed by our team and all of the features that we provided to our
21:21
customers would live in logic defined in these templates. We've now laid the
21:26
foundation for the team. We've got proxy infrastructure that's reacting dynamically to services that are being
21:33
deployed with different configurations over time. What was next after that point? The big thing after that was
21:39
taking some of the larger products and making it possible for them to use this
21:45
platform component. That was one big part. And the second big part was migrating all of the microservices
21:51
within Atlassian to use this. And that was relatively easier because we could
21:56
enforce that through the platform. Essentially what that means is that the platform was previously providing very
22:03
basic load balancing to every service and they forced a switch to where you
22:08
could no longer expose your service publicly through their load balancer which was too basic and you had to go
22:14
through our centralized load balancing infrastructure and to explicitly configure it as a way of signaling your
22:21
intention for that service to be publicly accessible. Whereas previous it
22:26
could have just been maybe accidental that your service was public and not very well protected. So that was the big
22:33
major push. We got products like Jira, Confluence, Bitbucket, Status Page and
22:39
many others behind this edge infrastructure. And then what was after that? Well, now we can sort of talk more
Extending the load balancing platform
22:45
about let's say we can talk more about the uh the MVO based product that we had
22:52
here. So this particular thing we've got this groundwork of being able to take
22:58
basic inputs from a developer and to turn that into templated configuration.
23:04
Now Envoy has a lot of configuration. It has a lot of stuff you can configure.
23:10
Let's just look at the routes for example. Let's look at the virtual host for example. You can configure what
23:16
domains to accept traffic on. Pretty basic. You can do routing. sort of basic, but once you delve into how you
23:21
can do this, it gets pretty complicated pretty quickly. You can match on different things. You can route it in
23:27
different ways. You can do direct responses, you can do redirects, blah blah blah. You can add and remove
23:32
headers. I guess I guess you could say that's pretty standard. But you can also choose, for example, when you're
23:39
configuring a route action, you can also choose to send to any cluster that's on
23:44
the proxy. So then if I have a thousand devs or a thousand services and they
23:50
each have their own cluster and any route can send to any cluster. Well, it sort of brings up this point of well
23:57
this data here needs to be validating that and abstracting that and so on and
24:05
so forth. So there was definitely a concentration of a lot of the development work around this logic here.
24:11
Making sure it was validated here in terms of the parameters were validated such that when those parameters were run
24:18
through the logic in this in these resources that it would produce valid
24:24
resources. Pretty standard I suppose you could say. I don't know maybe I I do feel like I have the curse of knowledge.
24:29
Um and that this stuff seems easier to me now because I I've done so much with it. Uh but there's a lot there's a lot
24:36
in here. And if we go into uh for example extensions, there's a lot of extensions that can be applied to a
Envoy extensions
24:44
listener or a or a cluster. For example, you might have uh where is it? You've
24:49
got uh network filters here. You've got all kinds of network filters. And a big one that we obviously used was a HTTP
24:56
connection manager where you could configure routing and how to handle proxies and websockets and all this
25:04
stuff. And then if we go a little bit before that, there's also things like external processing and external
25:11
authorization. And this sort of brings us to let's say something that happened
25:16
next. So I did briefly mention that some of the big parts after building this was to migrate big products onto it. Let's
25:23
assume that's all finished. It took it took some time. It took probably a couple years because there were many
25:28
features that needed to be built out here and and wherever else in order to support the larger products and their
25:34
special cases to work on what's effectively a generic multi-tenented
25:40
platform. So let's just assume that they're all migrated. Then we have more features that we want to add. I did sort
25:46
of allude to like we have this we have this groundwork. we have this dynamic configuration. What I'm trying to say is
25:53
that we we created opportunity we created opportunity to centralize logic
Edge Compute and centralized logic
25:58
and to handle concerns early in the chain of requests. What I mean by that
26:05
is a customer. Let's just make a c smiley customer. A customer is someone
26:10
that's using our cloud products or Atlassian cloud products. they are hitting the uh let's just say they're
26:16
hitting an NLB first and that's then being proxied to these boys. Yes, if we
26:22
can deal with the problems here before they reach a service. Let's say let's
26:27
give a square. Let's call it a backend service, you know. So, the requests are flowing in from the customer to the
26:33
proxies and to the pretty standard stuff. If we can deal with certain concerns here before it reaches here, we
26:40
save a lot of time. We save some money which is and it saves the customer time.
26:45
It's great for everyone really. Um, and one of those things, now this is where the the diagram becomes complicated. So,
26:52
let's move off to the side. Let's just copy a few of these. Let's grab three things and let's move over to the side.
26:59
So, we've got the customer talking to the proxy and the proxy is talking to the back end. And of course, the request
27:04
comes back up and back out to the customer. Fine and dandy. Yes, this is a this is a proxy. Whatever. There's no
27:11
surprises here. Now with our with with the products that Atlassian runs, there's all kinds of stuff that needs to
Handling concerns for dev teams
27:18
happen like authentication for example or authorization or uh DOS protection or
27:24
rate limiting or access logs all this kinds of stuff that needs to happen. And
27:30
it's just turns out that we can deal with them here instead of on a bazillion
27:36
bazillion backend services. Just imagine that there are a bazillion bazillion of
27:42
these. Just zillions upon zillions. See daisy. Just zillions and zillions. A
27:48
gazillion. Now, can you imagine if a thousand dev teams needed to deal with all this stuff plus more on their own
27:56
service? It would be a tremendous waste of money for the company. It would slow down features. The customer wouldn't get
28:03
their features when they need them. and stuff is already hard enough to deliver as it is. Thus the platform and
28:10
centralized management of resources and centralized uh implementation of these features. So how how were some of these
28:17
things implemented? Well, EOS protection was really provided by uh CloudFront and
28:23
that was that was uh spearheaded by a colleague of mine who is very smart and
28:29
conscientious and essentially let's make this a bit more accurate. Let's just say
28:34
let's get rid of these. There's an NLB here. Blah blah blah blah blah blah. And of course, it's two-way. So, that's one
28:40
way that we can take care of that concern for these backend services. Great. We've solved solved a concern for
28:46
that. Fantastic. These others, well, access logs, what we can do is something
28:52
like we can use these network filters. Yes, we use the network filters. For example, in the HCM, we have
29:03
Where are the access logs? Access log. Now remember all of this configuration is dynamic. It's all dynamic and it is
29:11
created by templates which abstract away the resource configuration from the
29:17
developer who wants to configure it. They provide simple parameters. Those parameters are then validated and then
29:22
they are fed into the template as context so that we produce the correct template. That means that they send us a
29:30
little bit of JSON and we set up this whole thing for them with all the access logging and blah blah blah whatever. So
29:37
that is done in fact inside the proxy natively. Fantastic. Some of these
29:42
things however a little bit more complicated. These things we need to use a sidecar model where envoy is talking
29:48
out the side and then these are their own services running locally on the on
29:53
the proxy. So these would be like uh containers essentially. We've got this sidecar model and those sidecars some of
30:01
them were contributed by other teams and some of them were created by me and our team. The authentication and the
30:07
authentication sidec was created by me written of course in the lord's language
30:13
rust authorization was done by another team and rate limiting was done by another team and so they were able to
30:18
contribute these sidecars which by the way were set up and uh were downloaded
30:24
and configured onto the AMI by this provisioning uh AMI provisioning flow.
30:30
Great. So now we have a programmable proxy with sidec cars that have their
30:36
own separate logic from the proxy and they too can actually receive configuration which is dynamic over the
30:43
wire locally and uh and make it even more programmable. So we're solving all
30:49
these concerns before they hit these uh these backends and in very very little
30:54
time. So that was uh essentially that is some of the stuff I worked on after migrations and blah blah blah. Yay. What
31:01
do I do after that? Let's move this big blob rid of this mess. So then we had some non-technical requirements come
31:08
through more compliance and things like that. And that effort was very tedious
31:14
and boring for me personally. It didn't involve building new stuff. It involved taking all of this making sure that it
31:21
was compliant for c in certain ways very bored boring checklist ticking work blah
31:28
blah blah. So I said earlier that I would also go over some of the nontechnical things that I had to go through while working at last. Obviously
Diplomacy and conflict resolution
31:35
all of that stuff is sort of highlevel technical stuff that I just showed. What
31:40
were some of the other stuff that I went through during my 8year slog at last year? The first few things to come that
31:47
come to mind is that I have grown tremendously in my diplomacy skills,
31:54
conflict avoidance, probably conflict resolution as well, being able to
32:00
persuade, propose ideas, being able to teach, educate and mentor. These are the
32:05
non-technical things that you probably don't hear a lot about. But after another thing is that the ability to
32:12
maintain things, maintain software and systems to see where the cracks show up
Maintaining software over long-term
32:18
and to build things so that those cracks don't show up as or at least to make
32:24
them show up late as possible. That's definitely something that I picked up. Let's just talk about that maintenance for a sec. I noticed over the eight
32:31
years that I was there when I built these apps, these uh services that
32:36
there's obviously the at the very start there's the requirement to onboard people and write documentation and train
32:43
people so that they understand how things work, know how to contribute to them and debug them so that when they
32:49
become when they go on call they know where to look, what could go wrong, where do things break essentially. So
32:56
you know that's whether that's knowing what kind of what particular log messages mean, what sort of metrics to
33:03
check when something is going wrong and what those metrics could allude to how
33:08
to resolve those um you know particular expected problems if they're not
33:13
automated away. Um and this could be like you know Amazon could have an outage and the database isn't access for
33:20
example. What do you do in that case? What if SQS stops working and you can't do any provisioning tasks? what how what
33:26
impact does that have on the services that need to provision resources and how do you resolve it? Um what happens if an
33:32
if a proxy receives bad configuration? What if it receives configuration that's valid but that destroys the traffic
33:38
that's flowing through? How do you pick up on those? What do you check etc etc. So there's obviously a lot of that at
33:44
the start when you build something. There's a lot of that at the start but the thing that's more difficult is over
33:50
time people come and go. People get hired. people get people leave for other jobs and whatnot and so you get you have
33:57
to do that onboarding again obviously but you should have more people that are able to do that on boarding collectively
34:02
but then you sort of bring in new opinions people look at an existing codebase and they want to change things
34:08
they want to make it better and so on and so forth and so they do that and change ends there's I I suppose there's
34:16
this concept of churn in the codebase the area that churns it's sort of it becomes predictable where all the churn
34:22
is going to to be at a certain stage. And once you notice that there is some
34:27
churn, it's sort of a a smell. It is it's an indication that that part of the
34:33
service or project is going to keep increasing in size or complexity and
34:40
something there needs to happen. Something needs to be done to avoid that mess. It's just just how software goes.
34:46
disperse. It'll be interesting with all these uh vibecoded apps and AI assisted
34:52
apps to see how we handle that when we have people that are not really familiar with what they've created and the
34:58
maintenance burdens appear. They don't appear at the beginning. There's just not enough going through. It hasn't been
35:03
around for long enough. There hasn't been enough changes. Building something is easy. Changing it and making sure that you can still change it over time
35:10
is difficult because as you change things, it slowly becomes harder to change. things start to get coupled and
35:16
all of a sudden when you change something in one area it affects another and you have to deal with the task of detangling something and you might be
35:22
able to bind these areas quite quickly get an LLM to perform the detangling for you. I think that's if we can do that
35:29
that's fantastic but I don't want to be too optimistic just in case. So there's that on that's my opinion on the
35:36
maintenance side of things. The next thing I want to talk about is when I mention diplomacy, what I'm really
Personality Conflicts
35:42
trying to say is that I was exposed to different types of managers and colleagues over time and everyone has
35:49
different personalities and styles of working. And because I was exposed to so many different types, I experienced
35:55
conflicts with certain people. And even though I had conflicts, there's still people that I respect. It's just
36:01
something that happens when you when your personality doesn't mix with their personality. And that's just something
36:07
that's a bit inevitable. And I think that the only thing you can really do in those situations is to try to have the
36:14
self-awareness and the awareness of the other person and the I suppose understanding of psychology and and how
36:20
people work to an extent so that you can be responsible for that difference and the potential for conflict and to handle
36:28
it effectively to to anticipate the conflict that's going to arise and and to do something to make the relationship
36:36
work. And maybe it's impossible. I don't know. But that was definitely a source of great stress and [clears throat] at
36:41
times it affected my performance and so I do think that because it affected my
36:49
performance that I took it quite seriously and I learned and changed as a result. So the next time that those
36:55
situations come around I do firmly believe that I'll be able to handle them
37:00
quite a lot better. And then some of the other things in fact one of the things that I found quite challenging was
37:08
mentoring. And so I find it easy to help people to point out areas where they
Mentoring
37:15
need understanding and to deliver that understanding to them to break down
37:20
complex things into simple terms so that they can build a mental model of the
37:26
system that they're working on. I have that ability. I'm quite good at that. But mentoring is distinct from that. I
37:32
had an intern in the last year and I will first say that the result of their internship was that they got the highest
37:38
rating possible and it essentially guarantees uh an offer to work at it
37:44
last year. The project that they worked on was very impressive and how they approached it and and built it was very
37:51
impressive and so that's why they got that excellent rating. What I found personally difficult was striking the
37:57
balance between it was essentially striking the balance between how much time I give to the mentee and what that
38:06
time would consist of whether it's you know I didn't I don't want to give them answers to problems but I don't want
38:12
them to get so stuck that they become frustrated I have no idea if I reached that balance but I suppose the results
38:18
speak for themselves. I I but I I I'm not sure if I can attribute the results to me necessarily. The intern was helped
38:25
by some of my other colleagues in areas that I'm much weaker in. So they effectively got subject matter experts
38:33
in a few different areas to contribute to their success, but then they did the
38:38
majority of the leg work to actually build the thing and to test it and to
38:43
make design decisions and stuff like that. And it was very successful. But I still have this lingering impression or feeling that mentoring is difficult for
38:50
me and that I I don't have um a good way of u figuring that out because I've
38:56
never been mentored myself. So I don't really know what to expect or what they do. But I want to emphasize that that's
39:03
a very specific type of mentoring that I'm not too sure about. Whereas training my colleagues, getting them to
39:08
understand, working, you know, working through problems with my colleagues, that was that was essentially my bread
39:14
and butter during the last half of my employment, you know, jumping on a a call and going through stuff. Feedback
39:21
that I got from my colleagues all the time was that I was always available to help and that I could boil down hard
39:26
topics into something that was understandable, which I'm pretty proud of. And I've been yapping for a while. I
39:32
think that covers quite a lot. If I remember more, I'll probably just make a second video. Um maybe maybe if people
39:38
are interested, I could actually go through and build some of these things. I could actually go through and build some of these things from scratch on
39:44
stream or just a video uploaded to kind of show I guess essentially what I made and maybe recreate and sharpen my skills
39:50
a little bit more. Um maybe I've got a lot of stuff on my to-do list, so maybe maybe not. It depends on the demand.
39:55
Anyway, I'm going to cut the video from here. If you listened all the way through or to portions, then thank you
40:01
very much. I hope it was interesting and enlightening and whatever else.

