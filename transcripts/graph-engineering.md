Transcript


Search in video
0:00
There's a new term going around called
0:01
graph engineering and everyone on X is
0:03
talking about it. Before graphs, it was
0:05
all loop engineering where you hand the
0:07
agent a goal and it works toward it on
0:09
its own. But with graphs, the work gets
0:11
done faster and covers way more ground
0:13
at once than a loop ever could. There's
0:15
a huge problem with them though. One
0:17
error in a small part of the graph
0:18
disturbs the entire output that comes
0:20
back. And it's hard to track down
0:22
because all you get at the end is the
0:24
finished result. So, Anthropic just
0:26
released something that solves that
0:27
exact problem and keeps your graphs
0:29
working without failing. If you're new
0:31
here, we're a software company and this
0:33
is our channel, AI Labs, where we show
0:35
you how to optimize your business with
0:37
AI. And if you don't have your own, you
0:39
can use these skills to get paid by
0:41
optimizing it for someone else. And in
0:43
this video, we're going to go over graph
0:44
engineering for anyone who doesn't know
0:46
it and give you the exact fix Anthropic
0:48
suggested. Before we explain graph
0:51
engineering to you, you need to
0:52
understand what loop engineering
0:54
actually is. If you already know, you
0:56
can skip this section. A loop is
0:57
basically a working cycle you hand over
1:00
to the agent. Instead of you prompting
1:01
it through every single step yourself,
1:03
you tell it the end goal it needs to
1:05
reach, and it gets there on its own,
1:07
adjusting as it goes. We've been using
1:09
them heavily in our own workflows. We've
1:11
already got a full video on loop
1:13
engineering, too, where we went deeper
1:14
into the different ways you can set them
1:16
up. But loops are now turning into
1:18
something called graphs. The problem
1:20
with loops comes down to the way they're
1:22
built. A loop does a piece of work, then
1:24
a verification step kicks in to see if
1:26
it's actually the way it should be. Once
1:28
it passes, the next step starts.
1:30
Everything runs in a straight line. So
1:31
every step sits there waiting on the
1:33
step before it, even when the two have
1:35
nothing to do with each other. Graph
1:36
engineering fixes exactly that. Instead
1:38
of running in a straight line, a graph
1:40
splits the main task into smaller parts,
1:42
and each part gets its own agent. The
1:44
first thing you get out of that is speed
1:46
because several agents cover the work at
1:48
once instead of one agent grinding
1:50
through the whole thing. And splitting
1:52
the workout like that brings the cost
1:53
somewhat down too because you get to
1:55
pick which model each one runs on. So
1:57
you stop burning your most expensive
1:59
model on the parts that never needed
2:01
that much intelligence in the first
2:02
place. But that's the cost per agent,
2:04
not the cost overall. A graph burns way
2:07
more tokens than a single agent ever
2:09
will because you've got a whole set of
2:11
them going at once instead of one. If
2:13
you are using graphs, expect your limits
2:14
to hit way sooner than you're used to.
2:16
So, you can't really set this up with
2:18
the $20 plans of Claude Code and Codeex.
2:21
Now, if you've been using Claude Code,
2:22
this probably isn't entirely new to you
2:25
because you've already seen a graph,
2:26
which is the dynamic workflow. A dynamic
2:29
workflow takes the task you hand over
2:31
and fans it out across a set of sub
2:33
aents, which is basically what a graph
2:35
does. Now, [snorts] before we get into
2:36
the shapes a graph can take, you need to
2:38
know what actually makes one up. Every
2:40
graph is built out of two things, nodes
2:42
and edges. A node is basically a single
2:45
job out of the bigger task you hand it
2:47
over and it runs on its own. It is an
2:49
agent that does a task in its own
2:50
isolated context window and reports
2:52
back. What ties all those separate jobs
2:55
together is the edge. An edge controls
2:57
how the data moves from one node to the
2:59
next. So, one agent's output lands with
3:02
the right agent at the right point. So,
3:04
every node's got to be tied into the
3:05
rest of the graph somehow. You can see
3:07
that in a set of agents all reviewing
3:09
the same piece of work. None of them
3:10
ever wait on each other, but they all
3:12
started from the same work. And every
3:14
one of their reports feeds into the same
3:16
place at the end. So that's what a graph
3:18
is made of. Now, here are the shapes
3:20
those pieces get arranged into. The
3:22
first one's a shape we've already shown
3:24
you on this channel and we got the name
3:25
wrong at the time. We called it a loop
3:27
because this was before graph
3:28
engineering was even a thing. But what
3:30
we actually had was a graph that we were
3:32
looping and the shape of it was a
3:34
diamond. One task at the top splits out
3:36
into several sub aents running side by
3:38
side. Then they all narrow back down
3:40
into a single agent that pulls
3:42
everything they found into one answer.
3:44
Then there's the fan in at a barrier
3:46
graph and that's the shape you want when
3:48
one thing has to be judged from several
3:50
angles at once. The fan out part sends
3:52
the same problem out to a set of agents
3:54
and each one looks at it through a
3:55
different lens. Nothing moves forward
3:57
until every one of those agents has
3:59
reported back and only then does it go
4:01
and run their fixes. There are plenty of
4:02
other shapes, too. But every one of
4:04
these shapes rests on the same thing,
4:06
and that's verification. If you don't
4:08
set those checks up properly, every
4:09
agent that comes after is just building
4:11
on top of a mistake. But before we talk
4:13
about verification, it would be great if
4:15
you subscribe to the channel and hit the
4:17
hype button. This small gesture of
4:19
support goes a long way for us. Once
4:21
you're running a whole fleet of agents,
4:23
things go wrong in ways they never do
4:24
with a single one. The biggest problem
4:26
is just the amount of work. they're all
4:28
going at the same time. So, a huge pile
4:30
of it comes back at once, and that's
4:32
really hard to review at the end. The
4:34
other problem is that you can't see what
4:35
happened. When something goes wrong,
4:37
you've got no way of telling what caused
4:39
it. Now, all agents verify whatever they
4:41
write, whether you ask them to or not.
4:43
If you're working with code, that just
4:44
means the agent runs your tests and
4:46
catches the errors that come back. But
4:48
that only catches major errors. It still
4:50
doesn't check how the code is written.
4:52
And that's important because if Claude
4:54
keeps writing it like this, it's going
4:55
to cause problems in the future. There
4:57
are a few built-in tools for this in
4:59
Clawude Code as well. The first is the
5:01
verify skill, which takes the code from
5:02
start to finish and confirms it actually
5:04
behaves the way it's supposed to. The
5:06
second is tool chaining, which is
5:08
basically the agent running different
5:10
tools to verify. Claude already knows to
5:12
run the tools that check your work, so
5:14
it reads the errors that come back and
5:16
fixes them itself. It can work out your
5:18
project's exact commands on its own,
5:20
too. But writing them into your claw.md
5:23
file saves it the trouble of figuring
5:24
them out every single time. And the
5:26
third is a code review skill, which
5:28
checks the code against a set of
5:30
standards. Not every agent ships with
5:31
one, but you can just ask your agent to
5:33
build you one if yours doesn't. But the
5:35
verification that actually works best is
5:37
the one you set up yourself instead of
5:39
leaning entirely on the built-in stuff.
5:42
So, the fastest way to build a skill
5:43
that verifies your work is the skill
5:45
creator plug-in in Claude Code. You can
5:47
also use this Claude code skill in
5:49
Codeex as well. You run the plug-in
5:51
command, search for skill creator, and
5:53
install it. From there, you've got two
5:55
options. You can install it at the user
5:57
scope, which means it's there no matter
5:58
which folder you're working in, or you
6:00
can install it just for the project
6:02
you're working in right now. Since this
6:03
is a skill you'll be using constantly,
6:05
we went with the user scope. After that,
6:07
you reload the plugins with the slash
6:09
command and skill creators ready to be
6:11
used. Now, you tell it what you want
6:13
built, and this is the part where you
6:15
describe the kind of verification you're
6:17
actually after. We mostly use a review
6:19
skill for checking the finished work
6:21
against what we asked for in the first
6:23
place and that matters way more in a
6:25
graph because each agent only ever sees
6:27
its own piece. This is what gives it a
6:29
way to check that piece against the
6:31
original requirements. But a skill is
6:33
only ever as good as the model you run
6:35
it on. When we were building the
6:36
verification system for our community
6:38
website's UI, we ran the reviewer on
6:40
Haiku because it's cheap and the job
6:42
looked simple enough. It came back with
6:44
a long list of issues. Going off the
6:46
number of findings alone, it looked like
6:48
it had done a great job. Then we ran the
6:50
exact same on Opus and it flagged way
6:52
fewer things. That looked like the worst
6:54
result, right up until we read the
6:56
reasoning. A lot of what Haiku had
6:58
reported was stuff we'd left there on
6:59
purpose. So most of the findings it made
7:02
were completely unnecessary. Opus had
7:04
worked that out from the code around it,
7:06
which Haiku had missed it completely. So
7:08
the cheap review hadn't saved us
7:09
anything because now the review itself
7:11
needed reviewing. Now, put that inside a
7:13
graph where a whole set of nodes are all
7:15
checking their own work with that same
7:17
skill. You'd have agents burning time
7:19
and tokens fixing things that were never
7:21
broken. And because it's happening
7:23
across separate agents all at once,
7:25
you'd have no way of telling which one
7:26
started it. So, the model you pick
7:28
doesn't just decide the quality of the
7:30
review. It decides the quality of the
7:32
whole graph. The node that does the
7:33
judging is the one place where saving
7:36
tokens costs you everything. The other
7:38
thing you've got to decide is how and
7:39
when that skill gets invoked. and that
7:41
splits them into three kinds. But before
7:43
we go deep into the types, let's have a
7:45
word by our sponsor. If you've ever
7:47
pulled live data off the web, you know
7:49
scraping is a genuine pain where you end
7:51
up fighting captures and rate limits,
7:53
wrestling with proxies, and patching
7:55
layouts that break the moment you ship.
7:57
So, we reach for SER API, which solves
7:59
all these problems so you can focus on
8:01
building. It's one API call. You send a
8:03
request and get back a clean JSON object
8:06
with exactly the data you need with over
8:08
99.9%
8:09
uptime and around a 1.2 second response.
8:12
When you're building AI agents, you can
8:14
point the Google search API at an agent
8:16
that needs current information or use
8:18
the Google Scholar API for peer-reviewed
8:20
papers with full metadata, which is why
8:23
so many production agents rely on it.
8:25
Get started with 250 free credits using
8:27
the link in the description or scan the
8:29
QR code on screen. Thanks to SER API for
8:32
sponsoring this video. The first kind is
8:34
standalone, and that's the sort of skill
8:36
that only runs when you actually do it
8:38
yourself. A standalone skill is built to
8:40
go deep on something that already exists
8:42
so it can properly go back over a
8:44
finished output. That's why you don't
8:45
want it firing after every single run.
8:47
You'd be burning tokens on a heavy
8:49
review of work that isn't even finished
8:51
yet. One we've used before is the
8:53
thermonuclear code review by cursor. It
8:55
fans out a set of agents and sends each
8:58
one through the code from a different
8:59
security angle. Every finding comes back
9:02
in one place so it can work through the
9:04
fixes together. And that's exactly the
9:06
kind of review you only run once the
9:08
app's done. To build one of these,
9:09
you're better off using Skill Creator
9:11
than just prompting it to do it because
9:13
what comes back is tested and that makes
9:15
it easier to trust. You tell it in the
9:17
prompt which area you want reviewed. And
9:19
make sure you mention that the review
9:21
should be comprehensive so it knows
9:22
you're after a deep pass and not a quick
9:25
one. But a standalone [snorts]
9:26
skill is no use to a node that's still
9:28
working because you have to run it
9:30
yourself. That's what embedded skills
9:31
are for. An embedded skill fires as part
9:34
of the workflow you're already running
9:36
without you asking for it. You could
9:37
build one that kicks in whenever
9:39
somebody asks for a new feature. It
9:40
checks that every component being
9:42
created follows the rules you laid out
9:44
in the skill and it won't let the
9:45
implementation finish until it's been
9:47
checked against those rules. You can
9:49
build embedded skills yourself, but you
9:51
can't take a pre-installed one and have
9:53
them be invoked automatically, like the
9:54
verify skill we talked about earlier.
9:56
The instructions those skills run on sit
9:58
inside the product and you don't get to
10:00
touch them. To build your own, give
10:02
skill creator a prompt telling it to run
10:04
verification steps after every feature
10:07
implementation. So you tell it to test
10:09
the feature from start to finish so it
10:11
catches whether the new work broke
10:12
anything that was already working.
10:14
Claude then creates the skill for you
10:16
and because Skill Creator generated it,
10:18
it comes with references and scripts
10:20
that Skill Creator structured and tested
10:22
as part of the process. Now to verify a
10:24
feature, Claude uses browser testing by
10:26
default where it checks the interface by
10:28
opening a full Chrome browser, loading
10:30
the page, and taking screenshots of it.
10:32
And if you've wired up Puppeteer or
10:34
Playright, which are basically the tools
10:36
most people use to drive a browser
10:38
automatically, they do the same thing.
10:39
But Chrome's famous for eating memory
10:41
and running heavy. And for checking a
10:43
page over and over inside a workflow,
10:45
it's slow enough that it starts costing
10:47
you real time. So there's a lighter way
10:49
to do it called Chrome Headless Shell.
10:51
It's basically a stripped down version
10:53
of the browser with all the extra parts
10:55
ripped out. The agent still goes to the
10:57
page and takes its screenshots the same
10:59
way. It just gets through all of it way
11:01
faster than a full Chrome does. You can
11:03
build that straight into the
11:04
verification skill you create. Then
11:06
every feature the agent builds gets
11:08
checked visually without you setting
11:10
anything up each time. Aides from that,
11:12
the skill we use the most in our own
11:14
workflow is one called second opinion.
11:16
And the reason is simple. The agent that
11:18
built the thing is the worst possible
11:20
one to review it. It's judging its own
11:22
work off the same context it used to
11:24
build it. So it just reviews based on
11:26
that. A fresh clawed session hasn't seen
11:28
any of that. It gives an unbiased review
11:30
and gives you a straight answer. Now,
11:31
Claw does have a built-in advisor that
11:34
does something along these lines, but it
11:35
reads the chat you're currently in. So,
11:37
it inherits all that same context.
11:39
Second opinion is for when you want the
11:41
review without it. It works by starting
11:43
another Claude session from inside the
11:45
one you're already running using the -p
11:48
flag. That's the flag that fires off a
11:50
whole separate Claude code session in
11:51
the background by handing it a prompt to
11:53
work on. There are a couple of things
11:55
you need to know if you're going to use
11:56
this, though. Since it's launching an
11:58
entirely separate session, it takes a
12:00
really long time to come back with an
12:02
answer and the model matters here more
12:03
than anywhere else because the whole
12:05
point is a smarter second read. So, it's
12:07
worth telling Claude explicitly to start
12:10
that session on Opus. That gives every
12:12
node in your graph a way to get its work
12:14
checked by something that had no hand in
12:16
doing it. But one skill can't cover
12:18
everything, though. Once you're
12:19
reviewing something properly, you're
12:21
reviewing it from several different
12:22
angles. And every angle has its own way
12:25
of measuring. You can't stuff all review
12:27
types into one skill because that way
12:29
agent will have too many directions to
12:31
review and will ended up getting worse
12:33
instead of better. So you build a
12:34
separate skill for each angle and chain
12:37
them together. Anthropic's own team
12:38
works this way too. They chain the code
12:40
review skill together with the simplify
12:42
skill and the verify skill. And all
12:44
three of those now ship with claude
12:46
code. On top of that, they run their own
12:48
design skill, which checks the interface
12:50
against the design.md file, which is
12:53
basically the file that holds every
12:54
design decision for the product. So
12:56
that's a review coming from four
12:58
directions instead of one. You'll end up
13:00
in the same place with a stack of skills
13:02
that each cover a different angle, but
13:04
you can't just tell the agent to run all
13:06
of them at once. What you need is one
13:07
more skill sitting above the rest, which
13:09
is basically an orchestrator skill whose
13:11
only job is to run other skills. It
13:14
spins up an agent for every review skill
13:16
you've got and hands each one its skill.
13:18
They all review at the same time in
13:20
their own separate context windows. Then
13:22
it pulls every finding back into one
13:24
report that the fixing agents can work
13:26
from. Then when you're building a graph,
13:28
the only thing you have to say in the
13:29
prompt is that it should use that one
13:31
skill. Every node it spins up loads that
13:33
single skill and the whole review fans
13:35
out underneath it on its own. Now we
13:37
have curated a document containing all
13:39
the ways you can set up verifications
13:41
for graphs in detail. That doc along
13:43
with all the skills shown in this video
13:44
are available in AIABS Pro which is our
13:47
community. So if you found value in what
13:49
we do and want to support the channel,
13:51
this is the best way to do it. The links
13:53
in the description. That brings us to
13:55
the end of this video. If you'd like to
13:56
support the channel and help us keep
13:58
making videos like this, you can do so
14:00
by using the super thanks button below.
14:02
As always, thank you for watching and
14:04
I'll see you in the next one.

