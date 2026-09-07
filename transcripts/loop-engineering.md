--------------------------------------------------------------------------------------
LOOP ENGINEERING:



https://www.youtube.com/watch?v=iJVJwmCKW9o


I guess we're writing loops now?

I guess we're writing loops now?
Theo - t3․gg
Theo - t3․gg
564k subscribers

Join


4k


Share

Ask

Save

142,080 views  19 Jun 2026  #ai #coding #programming
So I guess we’re writing loops now…

Thank you Magic Patterns for sponsoring! Check them out at: https://soydev.link/magicpatterns

Want to sponsor a video? Learn more here: https://soydev.link/sponsor-me

Check out my Twitch, Twitter, Discord more at https://t3.gg

S/O @Ph4seon3 for the awesome edit 🙏

#ai #programming #coding
Ask
Get answers, explore topics and more

Ask questions
Transcript


Transcript


Search in video
0:00
Here's your monthly reminder that you
0:01
shouldn't be prompting coding agents
0:03
anymore. You should be designing loops
0:05
that prompt your agents. I don't know
0:06
about y'all, but this memo didn't make
0:08
it to me. Of course, I've seen loops
0:10
before. Things like the Ralph loop
0:12
really helped me think about how agents
0:13
can do more over time, but it also
0:15
massively increased the error rate of
0:17
the changes that I was having my agents
0:19
make. They were really cool, but they
0:20
didn't seem that productive. And I found
0:22
myself going back to the usual, which
0:24
was asking the model to make a plan,
0:26
reading the plan, saying, "Yeah, that
0:27
looks good. go do this part and then the
0:28
next part, then the next part, then
0:30
having another agent review it, then
0:31
bringing the feedback back to the first
0:33
agent and just the usual looping of
0:35
work, but I was the one running the
0:37
loop. I was the one doing the
0:38
handholding and bringing things from
0:40
part one to part two and making sure all
0:42
of my agents had the context they needed
0:44
to build well. And Pete, as always, is a
0:46
bit ahead of the curve. I have been a
0:48
huge fan of him since way before the
0:50
open claw chaos because he knew how to
0:52
think about building with agents in a
0:54
fundamentally different way that made
0:56
him way more productive. I think of Pete
0:58
as an experimental figure in many ways
1:00
where rather than being the role model
1:02
we should all be copying, he's the
1:04
person figuring out what the future
1:05
looks like in a weird jank duct tape
1:07
version now and we can all learn from
1:09
that and see where things are going. At
1:12
least that's how I used to think about
1:13
him and honestly I'll admit I still do
1:15
in a lot of ways. But then I started
1:17
building more with loops. I started
1:19
getting my agents to prompt themselves.
1:21
I started setting up systems where
1:22
agents would review code, give feedback,
1:24
adjust it, and then trigger re-reviews.
1:26
I started building systems that would
1:28
watch poll requests and watch existing
1:30
issues on other repos to tell me when
1:32
updates happen. I started using Hermes
1:34
agent to bring context to me instead of
1:36
to go out and find it for me. And I've
1:38
accepted now that Pete's right. We
1:41
should still be writing prompts, though.
1:44
More importantly, I would argue now that
1:46
the majority of your agent runs should
1:48
probably not be running with prompts
1:50
that you wrote. That is a crazy thing
1:52
for me to say because it was one of
1:53
those like I never thought I would see
1:55
the day things. But now that I've
1:57
explored it myself and I've shipped a
1:58
lot of code using these types of loops,
2:01
I have a lot of thoughts I want to
2:02
share. But I have one other thing I want
2:04
to share quickly first, which is today's
2:06
sponsor. AI should be good at design. It
2:08
knows all the things it needs to about
2:10
code, designs, visuals, and more. But
2:11
every time I try to have it redesign
2:13
things that I'm working on, it just
2:14
doesn't do it right. At least that was
2:16
my experience before I started using
2:18
today's sponsor, Magic Patterns. These
2:20
guys really cracked good design flows
2:22
with AI. They're not trying to replace
2:24
your whole stack or be a full site
2:26
generator. They're trying to work within
2:27
the real constraints of your real
2:28
codebase on just the front end in order
2:30
to get great designs out. The first
2:32
thing that makes them different is the
2:33
design system selector. Unlike other
2:36
tools that will just generate a bunch of
2:37
slop code, you can pick between existing
2:40
realbased systems like the one that they
2:41
provide, a wireframe system, or even
2:43
classics like Shaden, Shakra, Mantine,
2:45
and MUI. Or you can create your own, and
2:48
you can also import things from Figma 2,
2:50
which is super helpful. You can then
2:51
switch between different models,
2:52
obviously, the ones that we all love and
2:54
know are decent design, like the Opus
2:56
line, Gemini 31, but also their auto
2:58
router has really impressed me. It was
3:00
able to grab the real SVGs for the logos
3:02
for the things that I wanted to put on
3:03
there once I showed them where they
3:04
were. I can open up the preview and send
3:06
this to other people on my team, which
3:07
has already been super helpful. I can
3:09
also leave comments on any point on the
3:11
screen to tell the agent what else I
3:13
wanted to fix, which has been a
3:15
lifesaver when you're working on these
3:16
types of things. They even have a visual
3:18
editor for when you want to edit fonts,
3:20
content, and things yourself. So, when
3:21
you notice the agent's just not getting
3:23
something right, don't fight it. Change
3:25
it yourself. This is a small thing, but
3:26
it's one of my favorites. The ability to
3:28
choose different frames to test your
3:30
site in to see how it looks on like a
3:32
mobile display or an iPad display is so
3:35
helpful as you're trying to get these
3:37
fine-tuned pieces right. I can't tell
3:39
you how many times I had a design that
3:40
seemed good, but as soon as I shipped it
3:42
and opened it on my phone, it was awful.
3:43
No more. Just do it here. Starting to
3:45
see why companies like Door Dash, Vappy,
3:47
Granola, and more are leaning so hard on
3:49
what Magic Patterns has built? These
3:51
guys get it. Design better with AI at
3:53
soy.link/magicpatterns.
3:55
So, this post by Pete is the one that
3:57
started this new era of looping
3:59
discourse. But this is not the tweet
4:02
that got me to go try loops. It was this
4:04
one. Here's a simple loop. Tell Codeex
4:07
to maintain your repos. Wake up every 5
4:10
minutes and direct work to threads. That
4:12
makes it easy to parallelize and steer
4:14
work as needed. He uses an orchestrator
4:16
skill combined with his triaging and
4:17
auto review and computer use skills so
4:20
some work can land autonomously. This
4:22
helped a lot click for me in particular
4:26
of your agent directing work to threads.
4:30
I didn't realize Codeex had a feature
4:32
where a thread in Codeex could spin up
4:35
another thread in Codeex. And now that I
4:37
know it has that, I have been pushing it
4:39
much harder. I want to contextualize
4:41
this in a bit of a weird way. I'm going
4:43
to reference the article Anthropic did
4:45
about recursive self-improvement because
4:47
they did a great job describing how our
4:50
work has changed over time. Previously,
4:52
a person would use a computer and they
4:54
eventually would use that to build a
4:55
chatbot or an AI model. Once we had the
4:58
AI model, the person could use the
5:00
computer to ask the chatbot questions
5:02
and get outputs that they could then use
5:04
in their code to make better software
5:07
and eventually maybe make a better
5:08
model, too. But the loop was the person
5:11
uses the computer asks the chatbot a
5:13
question. It gives a result to the
5:14
person who then copy paste it into their
5:16
code and then asks another question. I
5:18
know a lot of people use stuff like my
5:20
chat service T3 chat as a way to just do
5:23
code but they would bring it code
5:24
questions and then copy paste the
5:26
answers. It really kind of emphasized
5:28
the whole like coding is just copy paste
5:29
meme. Chat bots pushed it way further
5:31
but now we've gone far beyond that
5:33
because copyping is not the best use of
5:35
our time. So instead of copy pasting the
5:37
result from the chatbot into our
5:38
codebase, we started to just use our
5:40
IDEs, our terminals and other tools to
5:42
talk to the model and get it to edit the
5:44
code directly and that's where things
5:46
have been for a while now. But then we
5:47
had another big change with workflows
5:50
and sub aents. I know a lot of people
5:52
haven't even made this move yet and I
5:54
was hesitant to do it myself. Obviously,
5:56
tools like Cloud Code and Cursor will do
5:58
some amount of this to go explore and
6:00
find things in your codebase, but the
6:02
idea of telling my agent to spin up five
6:05
agents to go break up work was something
6:07
I just wasn't that interested in,
6:09
especially when I saw all the crazy [ __ ]
6:11
people were doing, trying to create
6:13
different personas and roles for all of
6:15
those workers where they had a skill
6:17
that wrote down in markdown files, this
6:19
is the adversarial reviewer, this is the
6:21
security reviewer, this is the groer and
6:24
finder, this is the exploration agent
6:26
that made no [ __ ] sense. And I would
6:28
argue that still makes no [ __ ] sense.
6:30
The idea of predefining personas to go
6:33
do things in your codebase fundamentally
6:35
misses the cool part of agents and AI as
6:38
a whole. It's dynamic. The agent can
6:41
build the context it needs and do the
6:43
things it needs to without having
6:45
everything pre-built and hardcoded ahead
6:48
of time. Imagine a coding template for a
6:50
project where every file is already
6:52
created and you have to edit things in
6:53
the existing files. It's stupid. And
6:56
that's how I felt about most of the sub
6:58
aent stuff that people were doing.
7:00
Workflows pushed me hard here. And the
7:02
video I just recently published about
7:04
the things I like about cloud code goes
7:06
a little more in depth there on the
7:07
things I like about workflows. The idea
7:09
of your agents constructing this method
7:12
that they're going to use to tackle a
7:14
problem was really enticing to me. But
7:16
now I'm going a bit further. Closing the
7:18
loop where the model doesn't just pick
7:21
and spin up what sub aents it needs. It
7:23
audits the work it does and then sends
7:25
the result back to run again and again
7:29
and again and again. I am not at the
7:32
fully autonomous loop point yet. I am
7:35
not claiming the same things people like
7:37
Boris are claiming where they're writing
7:39
the loop and now the code is just
7:41
happening by itself with no oversight.
7:43
That is stupid. But I wanted a taste. I
7:47
wanted to get an idea of how this could
7:49
work so I could play with it myself and
7:52
see what benefits exist. So I started to
7:55
play a bit. I started to do stuff like
7:57
this. I had Claude Code spin up a PR for
8:01
a pretty big refactor. I used sub agents
8:03
a bunch to go address specific concerns
8:05
and take over specific parts of the
8:07
codebase. I didn't even say how to break
8:08
it up. I let Opus figure that out
8:10
itself. Man, I miss mythos right now.
8:12
But one specific thing I did do was tell
8:15
the agent to monitor the PR for comments
8:19
because I have a lot of awesome code
8:21
review tools that are watching my PRs
8:23
when they're filed and leaving feedback.
8:26
And I moved away from copy pasting code
8:28
out of chat bots and into my codebase.
8:30
And instead I found myself copy pasting
8:33
the comments that things like code
8:35
rabbit reptile and macroscope would
8:37
leave and pasting those into the agent
8:39
so that it would go address them. It
8:41
wasn't great. So what I started doing
8:43
instead, and this was the first step
8:45
into heavier looping for me, and I would
8:47
highly recommend you guys try the same
8:48
because it's actually really cool. Once
8:50
you have your setup in such a way where
8:52
you have different work trees that are
8:54
monitoring and working around specific
8:56
pieces of work where this code is in a
8:58
directory that is specific to this PR,
9:01
that means I don't care about this
9:02
directory. It's not blocking other work.
9:04
Once you have this broken out, in this
9:07
case I'm sating to another machine on my
9:09
network that is running this codebase
9:11
that has this fork of this codebase,
9:12
this work tree for it and then I told it
9:15
monitor the comments, watch the PR, wait
9:18
for comments to come in and when they
9:20
come in address them and it did it and
9:24
it's been doing it now for like 6 plus
9:27
hours. It has made a ton of improvements
9:30
through this. And then I had a taste and
9:33
then I got really excited to play more.
9:35
I wanted to push the limits of how much
9:39
I could land without having to do the
9:42
follow-up prompting myself. And I'll be
9:44
honest, I still found myself hopping
9:46
over the codeex and saying, "Hey, can
9:48
you review this code?" And then copy
9:49
pasting the result of that review over.
9:51
I played a little bit more there where I
9:53
told Claude, hey, when you're done, run
9:55
codeex with this command to get it to
9:58
give feedback and then address what it
9:59
gives as feedback. And that worked
10:01
pretty well, too. But this is still for
10:04
traditional work where I have one PR
10:06
that does one thing that is being
10:08
watched by my agent to address the
10:11
comments that come in. There's a lot of
10:13
work that can't be broken down into just
10:15
one PR. I recently ran into one of those
10:18
pieces of work. I have been rebuilding
10:20
the isolate layer inside of Lakebed to
10:23
make it a little more financially
10:25
reasonable to deploy the way I want to
10:27
deploy it. I did a deep dive on
10:30
performance and alternative runtime
10:32
options for how we could architect this
10:34
with 55 and it had really good
10:36
suggestions, but one of the things it
10:38
pointed out was that my data
10:39
architecture had a lot of room to
10:42
improve that could help performance even
10:44
more than runtime changes. Here's where
10:46
it gave that feedback. The isolate
10:48
architecture may not be the first
10:49
scaling bottleneck. Current subscription
10:51
validations rerun every query
10:53
subscription for an app after each
10:54
mutation. For hot apps, we should
10:56
implement dependency aware invalidation,
10:58
mutation coalescing, per app
10:59
invalidating batches, shared results for
11:01
identical subscription arguments, and
11:03
back pressure and maximum refresh
11:05
frequency. This is when I realized there
11:07
was a lot of work that needed to be
11:08
done. So I asked up front from these
11:11
features you think we should implement,
11:13
which should be done separately and
11:14
which should be done in tandem. Would it
11:16
be realistic to do all of this in one
11:18
PR? It very quickly said, "No, I would
11:20
not implement all of this. It's one
11:22
project, but at least three PRs, current
11:24
implementation synchronously, yada
11:25
yada." And then it broke up what the
11:27
different PRs could look like. I asked
11:29
if they could be worked on separately or
11:30
should they be stacked. It said they
11:32
should be mostly stacked, but there's
11:34
some opportunity for parallelizing. I
11:36
then told it to write an HTML plan. My
11:39
beloved, thank you again to our friend
11:41
Thoric for introducing me to this
11:43
wonderful pattern where it is so much
11:45
easier to see what my agents want to do
11:47
and read it in a way that I can even
11:48
open on my phone. It's so nice. And it
11:50
wrote these plans for each of the
11:53
portions that it needed to complete. I
11:55
also told it here after the plan like
11:58
please make the plans piece to create a
12:00
new thread with the first plan as a
12:02
starting point. And it did. It created a
12:04
PR by itself in a new thread to go
12:08
implement that first plan and then it
12:11
landed and I did my usual thing where I
12:13
had a bunch of back and forth review. I
12:15
spun up another thread to review it. I
12:17
copy pasted back and forth. It got into
12:19
a good state so I merged it. I then
12:21
asked to make a fresh thread for part
12:23
two which it did. It only took a few
12:25
seconds but I realized I should be
12:27
looping harder. This is the single
12:29
message I have sent to an agent that has
12:31
impacted my psychosis the most. Would it
12:33
be possible to make a workflow of some
12:35
form that first will spin up a separate
12:37
thread to make the PR, second, spin up
12:39
another thread to review that PR when
12:42
it's filed. Three, puts the thread from
12:44
one in a loop reviewing comments until
12:46
it gets all approvals. And then fourth,
12:48
the thread would merge the PR and
12:51
trigger another one for the next piece.
12:53
I didn't think it'd be able to do this,
12:54
but I was curious how it would try. And
12:57
it made a kind of broken diagram showing
13:00
the workflow it had in mind. It said it
13:02
would use a heartbeat attached to this
13:04
thread pulling every 5 to 10 minutes. On
13:05
each wake up, it would read the
13:07
implementation thread status, detect
13:09
file PRs, create a fresh review thread
13:11
when a new PR has a new Shaw head, send
13:14
actionable findings back, re-review
13:16
after the fixes are pushed, yada yada,
13:18
and then pull latest main before
13:20
creating the next work tree. So, I said
13:22
make the workflow and use it to file the
13:24
remaining PRs. And it did it. This was
13:27
Sunday at 2:29 a.m. and it eventually
13:30
finished and broke everything in my
13:31
editor pretty aggressively at 6:50 a.m.
13:35
I set this off before going to bed and I
13:37
woke up the next day with four stacked
13:40
PRs reviewed to hell and back all
13:44
merged. It was [ __ ] awesome. Do I
13:47
think you should do this on real
13:48
production code bases that have millions
13:50
of users? Probably not. At least not
13:53
yet. But god damn is it cool to spin up
13:56
work in this way where complex
13:59
multi-stage problems that need their own
14:02
breakdowns that need their own poll
14:04
requests that need their own reviews and
14:06
cycles and loops because that's the
14:08
craziest thing here. I asked the model
14:10
if I could make this loop and it made a
14:13
loop that makes sub loops dynamically.
14:16
This isn't a hard-coded every time I
14:18
make a change I spin up one reviewer
14:20
that reviews it and then they go back
14:22
and forth. This is a dynamic workflow
14:25
that was created based on the specific
14:27
needs of this specific problem I was
14:30
solving. My loops created loops and they
14:33
did a great job at it. This was real
14:35
code that landed and sadly I couldn't
14:38
have Fable come in and review it because
14:39
this was after the ban. But the idea of
14:42
your agents being able to orchestrate
14:44
dynamic work in a way that is
14:46
specifically tailored to the problem is
14:49
so cool. Throughout most of my career,
14:51
when I worked at real companies, we
14:53
would follow some form of the
14:55
traditional agile sprint loop where we
14:59
would put tickets inside of our backlog
15:02
and then once every week or two weeks,
15:04
the start of the week, we would pull up
15:06
the backlog and decide what was worth
15:08
working on and how long we thought it
15:10
would take and then try to make sure
15:12
work that's blocking other work was
15:13
prioritized accordingly, that everybody
15:15
had unblocked work to do. But the actual
15:18
flow of all of this was pretty static.
15:20
It was the classic agile waterfally
15:24
structure and we kind of had to force
15:26
our work to fit that shape. The most
15:28
productive teams were the ones that
15:30
would build their own alternative shape
15:32
around the problems they were trying to
15:34
solve. That is what makes this so cool.
15:37
The shape of the loop, the shape of the
15:40
structure, the shape of how work happens
15:44
can be dynamically generated based on
15:46
the shape of the work that you're doing.
15:49
And you can use this for all sorts of
15:51
crazy stuff. You can use this to monitor
15:54
poll requests that need to be merged.
15:56
You can use this on a schedule to every
15:59
morning start your day with feedback on
16:01
what PRs are worth merging and what ones
16:02
are worth forgetting about. I use this
16:04
type of thinking to find the best
16:06
solution for a 5G hotspot. And since I
16:08
had a loop checking what the best deals
16:10
were, I got early information about the
16:12
new Verizon plan they just put out
16:13
because my loop pointed it out to me
16:15
randomly on Discord. It's so cool. And
16:18
again, to my earlier point, I wrote a
16:20
handful of prompts in this thread. I
16:22
wrote most of the prompts. Actually, no,
16:24
I didn't cuz it got in that schedule
16:26
after. But up until the schedule
16:28
started, I wrote all the prompts and I
16:31
read the responses and I said, "Yeah,
16:33
that sounds good. Let's see what
16:34
happens." And then I did see what
16:36
happened. And what happened was kind of
16:38
[ __ ] awesome. So, what I would highly
16:40
recommend you do here, the info you take
16:43
from here, is to think about the work
16:45
you do before, during, and after you
16:48
prompt your agent. When your agent
16:50
completes its task, pay attention to
16:52
what you do next. For me, what would
16:55
happen is I would tell the agent to
16:56
build the thing and then once it built
16:58
it, I would run the thing and go see if
17:01
it worked. And if it did, I would commit
17:03
the thing and then push the thing and
17:05
then make a pull request on GitHub for
17:07
the thing. I would then wait for my code
17:09
review agents to give feedback. I would
17:11
address that feedback. I would then ask
17:13
my team for feedback. I would address
17:14
that feedback and then I would merge it.
17:17
Start from where you started there. The
17:19
first thing I did after the changes were
17:22
completed was run a dev server. Tell the
17:24
agent to do that. I then checked if the
17:26
work worked. Tell the agent to do that,
17:29
too. Computer use has gotten really
17:31
good. After I verified the work, I would
17:33
then commit. Tell the agent to do that
17:34
once it's verified things are correct.
17:36
Tell it to push up the code and file a
17:38
PR once it's ready. Then I would go get
17:41
those code review comments and copy
17:43
paste them into the agent to fix. Tell
17:44
the agent to do that itself, too. Maybe
17:46
tell the agent to spin up other threads
17:48
to do its own reviews. The other spicier
17:51
way of putting this is that we are
17:53
looking at the code too early. If you
17:56
are reading the code your agent put out
17:58
before another agent read it and gave
18:00
feedback on it, you're wasting your own
18:02
time. That's time that the agent could
18:04
have spent instead that you could have
18:06
used to find other work worth doing or
18:08
to relax a little or go spin up a side
18:10
project. I don't know what you're going
18:11
to do with your free time, but I have
18:13
had far too many instances where I read
18:15
agent code. was like, "That's obviously
18:16
wrong." And then told it to go fix it.
18:18
They can figure that [ __ ] out
18:19
themselves, too. And now when the human
18:22
comes in, all the [ __ ] is gone and
18:24
you can focus on the hard stuff. It's so
18:26
much more fun. Try to find where you
18:28
have to be involved and see what it
18:30
takes to prompt yourself out of it. I'm
18:32
not saying you need a bunch of custom
18:34
skills. I have almost none here. I'm not
18:36
saying that you need to build fancy
18:37
plugins or install a bunch of [ __ ] I'm
18:39
just using stock codecs. I'm not even
18:41
using T3 Code for this. I do hope to get
18:43
these features added to T3 code soon cuz
18:44
they're really cool, but I'm just using
18:46
stock codecs with a normal account here.
18:48
There is one catch though, cost. You
18:52
will burn many more tokens when you run
18:55
things in loops like this. And if it's
18:57
going down the wrong path, it might go
18:59
down that wrong path for longer to burn
19:02
more tokens and potentially cost you
19:03
more money. If you're paying API prices,
19:06
you probably shouldn't be doing loops
19:07
yet. That said, you might be surprised
19:10
how far you can go with them. Remember
19:13
that loop I mentioned earlier that I was
19:15
using Opus and Claude code for where
19:17
it's watching the PR and updating it
19:19
constantly? Not only is it doing that,
19:21
I've noticed that every time it gets
19:24
feedback, it spins up a workflow with
19:26
eight steps or more to address all of
19:29
it. I had one agent spend under 10
19:31
minutes leaving feedback. And based on
19:33
that feedback, the Opus workflow ran for
19:36
eight hours and did over three million
19:39
tokens down to address like three small
19:41
comments. It was brutal. It was absurd.
19:44
If I was blocked during that time, it
19:46
would have been very rough. And
19:47
honestly, I was kind of blocked at that
19:48
point because this is a big overhaul and
19:50
I want this in before doing other
19:51
changes cuz I'm unfucking the the
19:54
TypeScript that looks like Python that
19:56
GPT 5.5 wrote. Because as great as the
19:59
model is at writing code that functions,
20:01
it does not write code I like looking
20:02
at. Anthroic models write better-looking
20:04
code. I wanted to do this with Fable.
20:06
Fable was taken. So instead, I burned a
20:08
shitload of Opus tokens. This thread is
20:11
so long that it's like breaking my SSH
20:13
and clawed code. I can't even scroll up
20:15
far enough to get to my first prompt
20:17
because this thread is just so much [ __ ]
20:19
going on. Very little of which has
20:21
involved me at all. So, how was my
20:23
usage? I do have two Claude code
20:26
accounts right now, so I'm sure this
20:27
burned through it really aggressively,
20:29
right? Well, this combined with
20:31
everything else I have been working on
20:33
for the last few days using Opus, still
20:36
has me at only 29% of my weekly limit,
20:40
which expires in 8 hours. I was maxing
20:43
out my limits with Fable. And with Opus
20:45
in a loop like this, I'm not even close
20:48
to getting my limits. And I've had like
20:51
five of these types of loops running in
20:53
that time. Really big piles of changes
20:56
happening. And it doesn't [ __ ]
20:58
matter. It's not getting close to my
21:00
limits. I am on the $200 plan. I will
21:02
also say that I ran a workflow using the
21:05
new Claude code with Opus48 when it came
21:07
out on the $100 plan and I hit the five
21:10
hour limit instantaneously. I have never
21:12
come close to the five hour limit with
21:14
Opus and Loops. And I'm also not coming
21:17
close to the weekly limit with it either
21:18
on that $200 plan. So if you're already
21:20
on a $200 plan or you're willing to be
21:23
on one and you find that your usage is
21:26
not getting like lethal, like you're not
21:28
getting close to maxing out, start
21:30
looping more. And since you can't use
21:32
these plans at normal companies usually
21:34
because of the differences in
21:35
restrictions in how you're supposed to
21:36
use an enterprise plan at API prices, go
21:39
use this for crazy [ __ ] that you don't
21:40
think should be possible. I would also
21:42
recommend experimenting with the tools
21:44
that are included with our harnesses
21:46
now. A lot of them are pretty powerful.
21:48
Codex's ability to spin up new threads
21:50
is really, really cool. Both Codeex and
21:53
Claude Code have a /goal primitive which
21:56
allows you to get one thread going
21:58
forever on a task where it keeps
22:00
double-checking at the end of a turn,
22:02
did you finish the work? If no, okay,
22:04
keep going. That type of like linear
22:06
neverending loop is different from a
22:09
dynamic workflow like I showed earlier
22:10
where it creates dynamic work based on a
22:14
pre-planned goal versus a
22:16
traditional/goal where it just keeps
22:19
plugging along on that one thread until
22:20
it completes. I have a goal running
22:22
right now that's over 12 hours in that's
22:25
trying to rewrite Hermes agent in Rust
22:27
so that I can run it in isolates that
22:28
are much smaller and use less resources
22:30
cuz my Hermes agent uses over a gig of
22:32
RAM. It is getting close. It'll probably
22:34
work. It probably won't be production
22:36
ready. It probably won't be something I
22:37
want to put out there and sell or
22:38
anything, but it's a fun use of my spare
22:40
tokens. And it's really interesting to
22:42
see what types of problems can be solved
22:44
when you throw these crazy rate limits
22:46
at them. The point I'm trying to make
22:48
here is that you should be treating
22:50
these limits like challenges. If you're
22:52
on the expensive plan, you should be
22:54
trying to get close to maxing it out
22:56
because that's just money you're losing
22:57
if you're not. The 70% I'm not going to
23:00
hit in my weekly limit here at 8 hours
23:03
is thousands of dollars of inference
23:05
that I paid for that I could have done
23:07
that I didn't do. But again, I need to
23:10
be realistic with you guys. In all of
23:13
May on this computer, I did about $1900
23:17
of inference. I didn't pay that
23:19
obviously cuz I'm using the
23:20
subscriptions with Cloud Code and
23:22
Codeex. But this month, June, which
23:24
we're only 17 days into, I'm at nearly
23:27
$6,000 of usage. But that's just this
23:30
computer.
23:32
As I mentioned earlier, I'm using
23:34
multiple computers. My Mac Mini has
23:38
another $2,600
23:40
of inference on it. I'm at 10 grand for
23:42
the month across all of my machines. And
23:45
that's on three of those $200 plans. Two
23:48
Cloud Code one codecs. And I haven't
23:50
used the second Claude code account
23:52
since Fable was taken from us. That's a
23:54
shitload of value that I'm getting given
23:56
for relatively cheaply. To spend $600
24:00
and get back 10 grand of inference, that
24:02
means you can do a lot. And if you're
24:04
not pushing loops to their limits,
24:06
you're not using that as much as you
24:07
could be. I've been having way more fun
24:09
with loops than I expected to. And I'm
24:11
curious if you guys will as well. Take a
24:13
look at what you do when you're done
24:14
prompting. see what additional steps you
24:17
take and ask the model, can you do this?
24:20
You might be surprised at what it's
24:21
capable of. I know for a fact that I was
24:23
very surprised myself. What I'm trying
24:25
to say here is that loops are cool, not
24:26
because the technology or the mindset's
24:28
really cool, but the idea of letting
24:30
agents do more is unbelievably powerful.
24:33
You take anything from this video, it
24:35
really should be that. Ask your agent to
24:36
do the next step and see if it impresses
24:38
you. I know it impressed me. Let me know
24:41
how it goes. And until next time, peace
24:43
nerds.

================================================================================================


https://github.com/cobusgreyling/loop-engineering


================================================================================================

https://www.youtube.com/watch?v=4biXYSNkn9Y


Loop Engineering explained in 8min..
Caleb Writes Code
Caleb Writes Code
109k subscribers

Join


4.3k


Share

Ask

Save

185,787 views  3 Jul 2026  #ai #artificialintelligence #agents
Apply code CALEB-50 to receive $50 of compute for only $5. That’s a 90% discount on your initial top up. https://verda.com/?utm_source=cwc&utm...

Loop Engineering and Agent Loop explained as we progress from prompt engineering to context engineering to harness engineering and now loops.

From tool calls to external environment and now to loop outside of the harness itself to help increase the scope of what AI agents can handle is the next evolution in how we are stacking loop on top of loops.

#agents #ai #artificialintelligence 

Follow me:
X: https://x.com/calebfoundry
LinkedIn:   / calebeom  
TikTok:   / calebwritescode  

Chapters
00:00 Intro
00:17 Prompt Engineering
01:00 Context Engineering
01:42 Harness Engineering
02:15 Sponsor: Verda
03:42 Practical Examples
04:39 Loops
05:50 Why Loops?
06:44 Loop Example
08:23 Conclusion
Caleb Writes Code explores the progression from prompt and context engineering to harness and loop engineering. This framework examines how autonomous agents move beyond human-guided tasks toward self-initiated workflows, using real-world examples to illustrate the evolution of AI development philosophies and their practical applications in managing long-term projects.
Summary

How this was made
Auto-dubbed
Audio tracks for some languages were automatically generated. Learn more
Ask
Get answers, e


In this video



Chapters

Transcript
Search in video
Intro
0:00
Well, here we are again with yet another
0:02
term called loop engineering. And it
0:04
wasn't even that long ago we had harness
0:06
engineering. So, is this just a
0:07
marketing hype or is there actually
0:09
something substantial behind loop
0:11
engineering? Let's walk down from prompt
0:13
engineering all the way to loop
0:14
engineering to see why we need it each
0:16
step of the way. We all know by now what
Prompt Engineering
0:19
prompt engineering is. Let's say I start
0:20
with the prompt, you are a helpful
0:22
customer service rep. Please be nice to
0:24
my customers. This is prompt engineering
0:26
because you are prompting the agent by
0:28
implicitly telling the agent what to do.
0:30
And we can then ask AI any question and
0:32
the agent will impersonate a customer
0:35
service rep based on the prompt we just
0:37
generated. That makes sense and super
0:39
simple. So why do we need context
0:40
engineering? Turns out this prompt that
0:42
we just created lives inside of the
0:44
agents context window and we still have
0:47
a lot of room left in our context to do
0:50
something more useful. So what if we
0:52
gave the agent autonomy to invoke tools
0:54
to start filling up its own context
0:57
based on what the prompt actually needs?
0:59
This was the beginning of context
Context Engineering
1:01
engineering where the agent could now
1:02
access files to load and make changes or
1:05
even use MCP to start interacting with
1:08
databases and external applications to
1:10
load its own context. Cool. Context
1:12
engineering makes sense. So then why do
1:14
we need harness engineering? Well,
1:16
there's actually no inherent flaw to
1:18
context engineering, but rather it has
1:20
limitations. Context engineering is not
1:23
really good at tasks that take longer
1:25
than 5 to 10 minutes long. And here's
1:26
why. Tasks that take long tend to
1:28
require more context than what the agent
1:31
can handle. And while it could keep
1:33
summarizing its own context as it
1:35
approached the limit, it was extremely
1:37
leaky where important details started to
1:40
get lost in each step of the
Harness Engineering
1:42
summarization. So essentially we needed
1:44
a system outside of context engineering
1:47
to better manage internally its own
1:50
context from outside in and this very
1:52
external system is what we call harness
1:55
engineering. Harness engineering manages
1:57
the context from the outside and helps
2:00
the agent runtime to work on tasks that
2:02
help break down the user's requirement
2:05
into a more stable execution. Let's look
2:07
at a few examples to make sure that we
2:09
understand this more concretely and
2:11
we'll use chatib and clot code since
2:13
it's something that we all have hands-on
Sponsor: Verda
2:15
experience in. But before we dive in,
2:17
today's video is sponsored by Verta. If
2:18
you write code for a living, you
2:20
probably hit a point where your own
2:21
machine just can't handle what you're
2:23
trying to build. And that's the gap that
2:25
Verta fills in. Verta is a full stack AI
2:27
cloud built for the whole model life
2:29
cycle. from a single GPU instance and
2:30
instant clusters to serverless inference
2:33
and manage endpoints. It isn't a general
2:35
purpose cloud with AI bolted on after
2:37
the fact. It's built specifically for AI
2:39
work by people who actually train and
2:41
serve models. So the workflow is
2:43
designed around how you'd actually use
2:44
it. And the workflow is the part that I
2:46
like. You sign up, spin up an instance,
2:48
and pick your GPU, anything from the new
2:50
GB300 down to an older V100. You then
2:53
drop in your SSH key, and you're
2:55
straight in from your own terminal. I
2:56
just SSH in from VS Code, drag my code
2:59
across, and I've got all the VRAMm that
3:01
the card gives me to run without ever
3:03
leaving my editor. There's also a CLI if
3:06
you'd rather stay in the terminal start
3:07
to finish. Spin instances up, manage
3:10
them, and connect all from the command
3:12
line. On the hardware side, you get
3:13
serious NVIDIA GPUs like B300's with
3:16
NVLink, Infiniband, and fast NVME
3:18
storage for workloads where interconnect
3:20
and throughput actually matter. And if
3:22
you're working with data or model
3:24
weights you can't afford to expose, Vera
3:26
supports confidential computing, so your
3:28
workload stays encrypted while it's
3:30
actually running on GPU, not just
3:31
sitting in storage. Link in the
3:33
description. Use code Caleb-50 to get
3:35
$50 off of compute for just $5. That's
3:38
90% off of your first top up. Thanks
3:40
again, Vera, for sponsoring. Asking
Practical Examples
3:42
Chachib the question, "How many
3:44
cheeseburgers can I fit between the
3:46
Earth and the Moon?" This is solely
3:47
using prompt engineering because it
3:49
doesn't need anything external to answer
3:52
a very simple question. It can just
3:54
reason through what it already knows to
3:56
answer my question. Now asking chacheti
3:59
what is the latest discovery that NASA
4:01
made. This now has to use context
4:03
engineering because it has to search the
4:05
web and gather relevant information from
4:08
NASA to help answer my question. So
4:10
context engineering helps bringing
4:12
information from the web autonomously.
4:14
Now when I ask clot code, can you clone
4:16
the entire NASA website? This is all
4:19
done by harness engineering because the
4:21
NASA website as you can imagine is
4:23
really complex and simply relying on
4:26
context engineering on tasks like this
4:28
will start to choke midway through. So
4:30
harness engineering provides an external
4:32
mechanism to help manage the context and
4:35
the runtime for the agent to work
4:37
through a long list of tasks. Now you
Loops
4:39
might have noticed a pattern that
4:41
emerges from this and that pattern is
4:43
the concept of loops. For context
4:45
engineering, there's a loop where the
4:47
agent recursively calls tool after tool
4:51
autonomously until it thinks that it has
4:53
enough context to answer your question.
4:55
And for harness engineering, there's
4:57
also a loop where the agent has a list
4:59
of tasks outside of the context window
5:01
to keep iterating task after task until
5:04
the entire operation is finished. So
5:07
what we find is that we are essentially
5:09
stacking loop on top of another loop.
5:11
Now we get to loop engineering which is
5:13
yet another loop in itself. I know is
5:16
there even an end to this. So loop
5:17
engineering stacks another loop outside
5:20
of harness engineering layer to guide
5:22
the harness externally. But why why do
5:25
we even need yet another scaffolding?
5:27
Again at the heart of loop engineering
5:29
loop engineering targets the human
5:31
interaction in actually prompting the
5:33
agent to do something. Everything that
5:35
we have seen so far involves a human
5:38
asking the agent questions like, "How
5:40
many cheeseburgers can I fit between
5:41
Earth and the moon? What is the latest
5:43
news on NASA?" Or even clone the NASA's
5:46
website. These are prompts that require
5:47
me to actually prompt the agent. But
Why Loops?
5:50
what if we built a scaffolding outside
5:52
of this so that the agent can also
5:54
prompt itself on what it thinks it needs
5:57
to do? That is the heart and the spirit
5:59
of what loop engineering tries to
6:01
target. And if all of this sounds hokeyp
6:03
pokey to you, you're probably not alone.
6:05
There's a lot of people saying loop
6:07
engineering is just a buzzword and
6:09
that's trying to encourage people to
6:11
just burn more tokens and create more AI
6:13
slop. And so far, we have really yet to
6:16
see loop engineering in action that
6:18
really makes a huge difference. But it
6:20
could be the next evolution in our
6:22
engineering philosophy as agents expand
6:25
its scopes in what it can help us with.
6:28
And it does raise a really interesting
6:29
debate and discussion around all of
6:31
this. So what exactly is loop
6:34
engineering and how does all of it work?
6:36
Addiosman wrote a blog describing loop
6:38
engineering with six components. But we
6:41
don't want to read all of this. So
6:42
instead of boring you with details, I'm
Loop Example
6:44
going to give you a potential use case
6:46
of loop engineering that help you wrap
6:48
your head around what loop engineering
6:50
could look like. Let's say I built a
6:52
website that keeps track of the World
6:54
Cup scores. And when I ask Codeex to
6:56
build me a World Cup website, Codex will
6:58
use prompt, context, and harness
7:00
engineering to build this beautifully
7:02
written website. Now, there's one
7:04
problem here, and that problem is that
7:06
the World Cup games are happening every
7:08
single day. And that means in order to
7:11
maintain the website that I just created
7:13
through Codeex, I have to keep prompting
7:15
the agent to frequently update the site
7:17
and also work on bug fixes that people
7:20
might find on the website. But what if I
7:22
just created a schedule task inside of
7:24
Codeex to check every hour for updates
7:26
as new information becomes available?
7:29
And what if I do the same for bug fixes
7:31
where the agent just checks autonomously
7:33
for bugs that are reported by users and
7:36
fix them. What you're seeing here is
7:37
that we are beginning to create this
7:39
loop outside of harness engineering
7:41
where it's self-guided rather than
7:43
humanguided to maintain my website. And
7:46
because I have skills and plugins
7:47
already installed on my codeex
7:49
environment, the agent can access an
7:51
existing knowledge base to keep building
7:53
and improving its knowledge along the
7:55
way. And the agent can also use sub
7:57
agents to verify its own work and also
8:00
the ability to work on multiple fixes at
8:02
the same time by using what's called
8:04
work tree to prevent runtime
8:06
contamination along the way. All of
8:07
these that I just mentioned are
8:09
essential ingredients to what makes loop
8:12
engineering what it is. And that is the
8:14
six components that Addi Osmani wrote in
8:16
his blog. Automation, workree, skills,
8:19
plugins and connectors, sub aents and
8:21
state are components of loop
Conclusion
8:23
engineering. And while this World Cup
8:25
website that I just created is just an
8:27
example of what loop engineering could
8:29
look like, the true potential of what
8:31
loop engineering could really be is
8:34
still somewhat theoretical. And one
8:35
thing to keep in mind is that loop
8:37
engineering doesn't necessarily mean
8:38
that all the engineering philosophy
8:40
underneath is less important or even
8:43
less needed that before. It's just
8:45
agents growing in scope and building on
8:47
top of each other.

===========================================================================================

https://www.youtube.com/watch?v=nYwid6Q5HXk&t=6s

LLM that loops instead of Doing Chain-of-Thought



LLM that loops instead of Doing Chain-of-Thought
bycloud
bycloud
232k subscribers

Join


2.5k


Share

Ask

Save

65,806 views  1 Jul 2026
Need to fine-tune a model without the hassle? Try out Crusoe's serverless fine-tuning today! https://www.crusoe.ai/contact-sales/s...

my latest project: Intuitive AI Academy
We just wrote a new piece on Optimization!!
https://intuitiveai.academy/
limited time code "LOCKIN" for 35% off yearly plan


Chain-of-Thought is ugly, so what if we remove it? In this video, I am diving into the latest architecture experiment that is Looped Transformer. So LLMs think with words, but here Looped Transformer simulates thinking by looping the same few layers. 


My Newsletter
https://mail.bycloud.ai/

My Patreon
  / bycloud  


Loop, Think, & Generalize: Implicit Reasoning in Recurrent-Depth Transformers
[Paper] https://arxiv.org/abs/2604.07822 

A Mechanistic Analysis of Looped RLMs
[Paper] https://arxiv.org/abs/2604.11791

Parcae: Scaling Laws For Stable Looped Language Models
[Paper] https://arxiv.org/abs/2604.12946

Mixture-of-Recursions: Learning Dynamic Recursive Depths for Adaptive Token-Level Computation
[Paper] https://arxiv.org/abs/2507.10524



Try out my new fav place to learn how to code https://scrimba.com/?via=bycloudAI

This video is supported by the kind Patrons & YouTube Members: 
🙏Spam Maj, Alex, Chris LeDoux, DX Research Group, Poof N' Inu, Deagan, Robert Zawiasa, Ryszard Warzocha, Tobe2d, Louis Muk, Akkusativ, Kevin Tai, Mark Buckler, NO U, Tony Jimenez, Ângelo Fonseca, jiye, Anushka, Asad Dhamani, Binnie Yiu, Calvin Yan, Clayton Ford, Diego Silva, Etrotta, Gonzalo Fidalgo, Handenon, Hector, Jake Disco very, Michael Brenner, Nilly K, OlegWock, Daddy Wen, Shuhong Chen, Sid_Cipher, Stefan Lorenz, Sup, tantan assawade, Thipok Tham, Thomas Di Martino, Thomas Lin, Richárd Nagyfi, Paperboy, mika, Leo, Berhane-Meskel, Kadhai Pesalam, mayssam, Bill Mangrum, nyaa, Toru Mon, Lame Plane, Matej Macak, Len Mo, saylikhapekar, ZyanSheep, THEVIERAOS, Ricardo Raphael Corona-Moreno, superchordate


[Discord]   / discord  
[Twitter]   / bycloudai  
[Patreon]   / bycloud  
[Business Inquiries] bycloud@smoothmedia.co
[Other Inquiries] bycloudai@gmail.com
[Profile & Banner Art]   / pygm7  
[Video Editor] ‪@aduckchicken2‬ 
Manim Animations created with Manimate https://www.manimate.ai/
[Ko-fi] https://ko-fi.com/bycloudai
Bycloud explores how loop transformers attempt to improve reasoning capabilities by iteratively refining hidden states instead of generating explicit reasoning tokens. The discussion covers the architectural benefits of recurrence, methods for stabilizing these models, and potential trade-offs in memory usage, efficiency, and supervision compared to traditional chain-of-thought approaches.
Summary

How this was made
Auto-dubbed
Audio tracks for some languages were automatically generated. Learn more
Ask



Transcript


Search in video
0:00
Have you ever felt how inelegant
0:02
reasoning models are? Like you get LMS
0:04
generating a bunch of tokens to think
0:06
then outputting a result and it's so
0:08
effective that basically every existing
0:09
model nowadays is doing this to get a
0:12
huge performance boost. Yet it is such
0:14
an unsatisfying solution. But I guess
0:16
sometimes beggars can be choosers as
0:18
test time compute is an inevitable
0:20
consequence of intelligent models
0:21
because when you let models reason in
0:23
more than one pass, you provide a space
0:25
for them to refine and iteratively
0:27
improve. And chain of thought provides a
0:29
space for transformers to externalize
0:31
their thinking into tokens to simulate
0:33
iterations. And so far, it works
0:35
extremely well. However, it definitely
0:37
makes you wonder why can't reasoning and
0:39
chain of thought be done in a way that's
0:41
not yapping tokens at inference. Why
0:43
can't researchers just develop a method
0:44
that can think innately or you know in a
0:47
more compact form? Well, in today's
0:48
video, let us take a look at this rather
0:50
new concept called loop transformers
0:52
where instead of doing test time compute
0:54
through generating tokens, you do it
0:56
through looping transformer layers. This
0:58
is one of the methods that people are
0:59
suspecting Claude Mthis is using behind
1:01
the scenes as it seems to have some
1:03
extraordinary reasoning capabilities
1:05
that previous models struggled with.
1:07
More specifically, the benchmark graph
1:09
walk BFS. And if you think about it,
1:11
shouldn't a recurrence design
1:12
architecturally be better than doing it
1:14
at token level? as the token level has
1:16
to also decompress and compress
1:18
information into tokens to do the
1:20
thinking. So before I dive into it,
1:22
while we are on the topic of elegance,
1:24
fine-tuning AI models on bare metal GPUs
1:26
is probably the last thing you would
1:27
think of when you have to deal with
1:28
container runtimes and systems like
1:30
Kubernetes. However, today's sponsor,
1:32
Cruso, has turned this painful process
1:34
into something much more elegant. They
1:36
have built something called serverless
1:38
fine-tuning to help you customize open
1:40
models like Quen, DC, Gemma, and GBT OSS
1:42
faster and more easily with tokenbased
1:44
pricing. In just a few lines of code,
1:46
you can launch a fine-tuning job on
1:48
Nvidia optimized hardware. So, no GPU
1:51
wrangling needed. You just upload your
1:53
data set and the job scales
1:55
automatically. What I dig about Cuso is
1:57
that they aren't a blackbox. They are
1:58
opinionated by default with smart
2:00
presets to get you started but open by
2:02
design so you can tailor settings to
2:04
your unique use case. But most
2:06
importantly, you own your own weights.
2:08
When the job is done, you get your raw
2:09
weights back in portable formats like
2:11
dotsafe tensors. So stop wasting time
2:13
and resources trying to debug your own
2:15
infrastructure and start actually
2:16
shipping your models because you can now
2:18
take a custom model from experiment to
2:20
production in a single afternoon. Check
2:22
them out now using a link down
2:23
description to get the early access to
2:25
Crucial serverless fine-tuning today and
2:27
thank you Crucial for sponsoring this
2:29
video. Anyways, to even evaluate a tip
2:31
of the reasoning iceberg, we need to
2:33
somehow first measure reasoning
2:34
capabilities to be able to prove the
2:36
effectiveness of any model improvements.
2:38
Right? So at its most basic form,
2:40
reasoning can show up as multihop
2:42
reasoning. For instance, who is the 44th
2:44
US president's wife. For a slightly
2:46
simpler model, it cannot directly map it
2:48
to Michelle Obama because it has to
2:50
first identify the 44th US president is
2:53
Barack Obama. And remember the spouse
2:55
name which is Michelle Obama. And that
2:58
is basically two hops where each hop is
3:00
retrieving or computing a new piece of
3:02
information that depends on the previous
3:04
one. But why is this reasoning? Well,
3:06
simple singlestep question answering can
3:08
usually be achieved through pattern
3:09
matching and memorization. So, it's much
3:11
easier to answer for LLMs. However,
3:14
multihop usually requires state tracking
3:16
and intermediate computation because the
3:18
questions answer would need to be
3:19
inferred from multiple sources of
3:21
knowledge which is harder to memorize.
3:23
This makes it a pretty simple and good
3:25
indicator for the ability to do logical
3:27
deduction, symbolic reasoning, and
3:29
relational reasoning for researchers to
3:31
use, especially as an early baseline.
3:33
But for a non-reasoning model or a
3:35
vanilla transformer, it has to do all
3:37
these in one forward pass. And if that
3:39
pass doesn't obtain the answer, it'll
3:41
just miss the shot. And as the number of
3:43
hops increases, you're basically asking
3:45
the model to simulate a deeper and
3:47
deeper computation, but without giving
3:48
it any mechanism to actually iterate or
3:50
infer an answer. So this is one of the
3:52
reasons why chain of thought works. As
3:54
now the model is no longer required to
3:56
solve the whole problem at once. it can
3:58
write an intermediate thought, read it
4:00
back, update its internal state, write
4:02
the next thought, read it back again,
4:04
and keep doing this until it reaches the
4:06
answer. So the chain of thought process
4:07
within the reasoning model is basically
4:09
creating iteration through generating
4:11
extra tokens. But this is the bit where
4:13
it starts to feel a bit inelegant
4:15
because every time the model writes a
4:17
reasoning token, that token has to be
4:19
decoded into text, appended to the
4:21
context, then re-mbed back into hidden
4:24
states onto the next pass. which means
4:26
the model has to repeatedly do this
4:28
decompress and compress cycle through
4:29
language itself just for it to refine
4:31
its latent states. On top of that, those
4:34
tokens are sampled from the model's
4:35
output distribution. So the model is not
4:37
directly modifying the reasoning
4:38
distribution internally. It is emitting
4:41
a sample textual trace then conditioning
4:43
on that sample trace afterwards. Which
4:45
means the reasoning process is mediated
4:47
through discrete token generation rather
4:49
than being performed directly in the
4:51
computation itself. So if you were to
4:53
design recurrence architecturally, it
4:55
should logically be cleaner, right?
4:57
Because you would then be able to let
4:59
the model update its hidden state
5:00
directly. And that should be more
5:02
efficient in both time and energy
5:04
because the model is reusing internal
5:06
computation and acting on the
5:07
representation directly rather than
5:09
constantly externalizing it into tokens.
5:11
Which brings us to the relatively new
5:12
architecture idea that suddenly got a
5:14
lot of attention in April 2026 called
5:17
loop transformer. The core idea is
5:19
pretty simple. Instead of using a long
5:21
stack of unique transformer layers once,
5:23
which is the typical setup, you only
5:25
take a few layers and put them together
5:26
as a smaller block and run it
5:28
repeatedly. The output hidden state from
5:30
one recurrence becomes the input to the
5:32
same block. So the model can refine its
5:34
representation over multiple internal
5:36
steps rather than forcing everything
5:37
into a single transformation. In a paper
5:40
loop, think and generalize published in
5:42
April 2026, they used this exact setup
5:45
and by iterating it, they found that it
5:47
gets better at multihop reasoning, not
5:49
just on the amount of hops it was
5:50
trained on, but beyond the depth when
5:52
you give it more recurrence iterations
5:54
at inference time. And you can see how
5:56
these multihop reasoning capabilities
5:58
emerge in their three-stage rocking
5:59
process during training, too. Looking at
6:01
the training graph, at first, you can
6:03
see the model is mostly just memorizing
6:05
as the accuracy on the training set
6:07
increases and maxes out. Then it enters
6:09
a second stage where it starts to
6:11
generalize in distribution as the
6:12
distribution test set max out. This
6:14
usually indicates that the model is able
6:16
to handle question compositions that
6:18
follow the same training structure even
6:20
if the exact problem is new. After that,
6:22
the third stage emerges and this is a
6:25
stage of systematic generalization where
6:27
the model can combine pieces of
6:28
knowledge in ways that were never
6:30
actually used compositionally during
6:32
training. Meaning they can generalize
6:34
out of distribution. So in the end it
6:36
learned a reusable procedure for
6:38
composing and inferring answers. And
6:40
this is what vanilla transformer
6:42
struggles with as it can combine facts
6:44
in unfamiliar ways and would struggle
6:46
with extrapolation. And when you
6:48
increase the number of loops at
6:49
inference more than the amount of loops
6:51
it uses during training. It is able to
6:53
achieve even more hops than it was
6:55
trained to do. So the number of
6:56
recurrences becomes a compute dial in
6:59
this setup and you can literally let the
7:00
model think longer and expect better
7:02
results. But of course, once you
7:04
introduce recurrence directly into the
7:05
architecture, you also inherent a new
7:07
problem that is instability. Because now
7:10
you are no longer applying a sequence of
7:12
different layers once. You are applying
7:13
the same transformation repeatedly on
7:16
the hidden state. And it also creates a
7:18
problem where you have to decide how
7:19
many times to repeat the block while
7:20
making sure the information will not go
7:22
stupid. Because once you start looping,
7:24
you are no longer just designing a
7:26
network. You are designing a thinking
7:28
process. And every recurrence is another
7:29
application of the same update rule. So
7:31
small biases get amplified, errors
7:33
accumulate and the model can very easily
7:35
drift away from a stable trajectory and
7:37
the model might just refuse to converge
7:39
and explode. So this is where the next
7:41
paper parsy comes in. Instead of
7:43
treating a loop as just repeated layers,
7:45
they explicitly model it as a dynamical
7:47
system over the residual stream and
7:49
analyze why naive loop transformers
7:51
become unstable. But why is it tied to
7:53
the residual stream? Well, because the
7:55
model's hidden state is carried forward
7:57
and updated at every occurrence rather
7:58
than recomputed from scratch. With each
8:00
loop reuses the previous hidden state,
8:02
mixes it with the injection input,
8:05
applies the transformer operations, and
8:07
produces the next hidden state. So the
8:08
residual stream is basically the model's
8:10
evolving latent state. The main channel
8:12
where information accumulates across
8:14
recurrences. If the dynamics are
8:16
unstable, then the hidden state norm can
8:18
grow across recurrences, which leads to
8:20
loss spikes and divergence. And all they
8:22
have to do is to constrain and normalize
8:23
the recurrence so that each update
8:25
doesn't collapse under an uncontrolled
8:27
accumulation which solves one of the key
8:29
issues that a loop transformer has. But
8:31
even if you can't stabilize the loop,
8:33
how do you know the model is truly
8:35
reasoning? Because better multihop
8:37
performance alone isn't really enough
8:39
and we're just kind of interpreting that
8:40
it would work. So this other paper also
8:43
published in April 2026 called
8:45
mechanistic analysis of looped reasoning
8:47
models comes perfectly into the picture.
8:49
Their method is to track the latent
8:51
states across recurrences and observe
8:53
how they evolve. But because these
8:55
hidden states are extremely
8:56
highdimensional, you cannot just
8:58
visualize them directly. So they use
8:59
tools like PCA or principal component
9:02
analysis, which is basically a way of
9:04
compressing a highdimensional activation
9:06
space into a few main directions that
9:08
explain most of the variations. In
9:10
simpler terms, it lets you take the
9:11
model's internal states and project them
9:13
onto a 2D or 3D map. So you can actually
9:16
see whether the representations are
9:17
drifting randomly, collapsing or
9:19
following a stable trajectory. And what
9:21
they find is that these looped models
9:23
tend to move towards stable trajectories
9:25
in latent space. In some cases, it looks
9:27
like a fixed point where the
9:28
representation gradually stabilizes. In
9:30
other cases, it looks like a cyclic
9:32
trajectory where the hidden state
9:33
revisits a consistent sequence of states
9:36
across the repeated block. The internal
9:38
processes did not change the
9:39
representation unpredictably or quickly
9:41
collapse to something trivial. But they
9:43
still push this analysis further by
9:45
looking at attention behavior across
9:47
recurrences. And what they observe is
9:48
that as the hidden states approach these
9:50
fixed points or cycles, the attention
9:52
head behavior also stabilizes. So it is
9:55
not just the raw activation settling
9:56
down. The actual computation being
9:58
performed by the blocks becomes more
10:00
consistent too. What's also fascinating
10:01
is that the recurrent blocks can learn
10:03
stages of inference that mirror the
10:05
stages seen in FI4 transformers except
10:08
now those stages are repeated and
10:10
organized through recurrence. So early
10:12
recurrences, middle recurrences and
10:14
later recurrences can play different
10:16
roles even though the weights are shared
10:18
with early recurrences tend to construct
10:20
a rough representation of the problem
10:21
with the model gathering and organizing
10:23
the relevant information for it. So its
10:25
updates are larger and more exploratory.
10:28
But as it moves into the middle
10:29
iterations, the model would start to
10:31
combine pieces of information and
10:32
propagate relationships. Here is also
10:34
where the updates become more structured
10:36
instead of forming them. Then in later
10:38
iterations, the update strength with the
10:40
model mainly stabilizing the
10:42
representation and converging toward a
10:44
final answer. So even though the block
10:46
is shared, the loop is not just
10:47
repeating the same computation over and
10:49
over again. And it is the input to the
10:51
block that differs every time that
10:53
forces the same function to act
10:55
differently at each step which naturally
10:57
creates a progression from course
10:58
understanding to refined solution. And
11:00
that is beautiful. But there could be
11:03
more to be optimized because even if
11:04
looping gives you internal reasoning,
11:06
you are still applying the same number
11:08
of recurrences to every token. So
11:10
whether a token is trivial or extremely
11:12
complex, it still has to go through the
11:14
same number of loops. And that
11:16
introduces a new kind of inefficiency
11:18
because now you are allocating compute
11:20
uniformly even when it is not needed. So
11:22
this exact limitation is where this
11:25
paper mixture of recursions published
11:27
all the way back in July 2025 tries to
11:30
solve. Instead of forcing every token
11:32
through the same number of loops, it
11:33
introduces a router that decides how
11:35
many recurrences each token actually
11:37
needs. And in the paper, there are two
11:39
main ways this is implemented into MO.
11:41
In one version, the router assigns each
11:43
token to a recursion depth bucket. So
11:45
before looping even starts, it predicts
11:47
how many steps that token should go
11:49
through. This is pretty efficient
11:50
because the computation path is fixed
11:52
from the start, but it relies heavily on
11:54
that initial prediction being correct.
11:56
Like if the model misjudges the
11:57
difficulty early on, it cannot adjust
12:00
later. In the other version, the
12:01
decision is made step by step where at
12:03
each iteration, the model can choose to
12:05
continue or exit. This is much more
12:07
flexible and can adapt as the
12:09
representation evolves, which usually
12:10
leads to better allocation of compute.
12:12
However, it is slightly more complex and
12:14
can be harder to train and stabilize
12:16
since decisions are made repeatedly
12:18
during the process rather than once at
12:20
the beginning. But the step-by-step
12:21
version, which they call expert choice
12:23
routing, ends up working noticeably
12:25
better than the upfront assignment
12:27
version, which they call token choice
12:28
routing. And under the same three
12:30
recursion setup, expert choice routing
12:32
reaches an average fshot accuracy of
12:34
42.6% while token choice routing drops
12:37
to 40%. So even though token choice
12:39
sounds cleaner on paper because each
12:40
token commits to its full compute path
12:42
from the beginning, in practice, it
12:44
actually is not that useful. which just
12:46
shows deciding how much thinking a token
12:48
needs before the iterative process even
12:50
starts is just too hard. But yeah, these
12:52
are where the extra efficiency gains can
12:54
come from. However, once you make
12:56
recursion adaptive, another bottleneck
12:58
immediately shows up which is the KV
13:00
cache. In a standard transformer, every
13:02
layer stores key and value tensors for
13:04
every token and this quickly dominates
13:06
memory and bandwidth, especially during
13:08
long context decoding. Recursive models
13:10
make this even worse in a naive setup
13:12
because even though parameters are
13:13
shared, you still maintain separate KV
13:15
caches for each recursion depth. So you
13:18
are not actually saving much on memory
13:19
traffic. But M addresses this by
13:22
changing how KV caching works to match
13:24
the adaptive recursion. Their first
13:25
strategy is recursion wise caching where
13:28
KV pairs are only stored for tokens that
13:30
are still active at a given recursion
13:32
step. Since tokens can exit early,
13:34
deeper recursions operate on fewer
13:36
tokens, which means both memory usage
13:38
and attention computation shrink as
13:40
depth increases. This makes the model
13:42
more efficient, not just in terms of
13:43
parameters, but also in actual runtime
13:46
behavior because it avoids wasting
13:47
memory bandwidth on tokens that no
13:49
longer need further processing. The
13:51
second strategy is recursive KV sharing.
13:53
So instead of storing KV pairs at every
13:55
recursion, the model caches them once at
13:57
the first recursion and reuses them for
13:59
all subsequent steps. This dramatically
14:01
reduces memory footprint since you are
14:03
no longer duplicating KV states across
14:06
depths. However, this comes with a
14:07
trade-off because later recursions are
14:09
now attending to slightly stale
14:11
representations which can hurt
14:12
performance compared to recursion wise
14:14
caching. So recursion wise caching is
14:16
more accurate because it keeps
14:18
representations fresh at every step but
14:20
it uses way more memory. On the other
14:22
hand, recursive sharing is more memory
14:24
efficient but slightly degrades quality.
14:26
Is that a problem then? Well, the paper
14:28
shows that these trade-offs are
14:30
manageable and both approaches still
14:32
outperform sender recursive and vanilla
14:34
transformers when combined with adaptive
14:36
routing. And you know what time it is?
14:38
It's time to address the elephant in the
14:41
room. So, after all these wonderful cool
14:43
new techniques were published with very
14:45
good solutions to address their
14:47
shortcomings being proposed, how exactly
14:49
competitive is loop transformer compared
14:51
to the current LM landscape then? Well,
14:53
a major argument against a loop
14:55
transformer is still actually its
14:57
expressiveness. A deeper or wider model
14:59
with unique layers has strictly more
15:01
expressive capacity than a shared block
15:03
being reused. So from a pure
15:05
optimization perspective, looping is a
15:07
constrained version of the same problem.
15:09
So if you're not memory constrained,
15:11
then simply adding more parameters in a
15:12
standard transformer easily wins and you
15:14
would easily avoid the complicated KV
15:16
cache problem compared to the standard
15:18
chain of thought method for reasoning.
15:20
So empirically it is not surprising that
15:21
unconstrained transformers tend to
15:23
achieve lower loss when you scale
15:24
parameters freely. On top of that
15:26
scaling laws have historically favored
15:28
increasing parameter count rather than
15:30
reusing computation. The second issue is
15:32
about the depth itself. Even though loop
15:34
transformers can simulate deeper
15:36
computation by increasing recurrences.
15:38
This is not identical to having
15:40
genuinely deeper architectures. A stack
15:42
of unique layers can learn different
15:44
transformations at each step while a
15:46
looped model has to reuse the same
15:47
function repeatedly and hope that the
15:49
evolving hidden state is enough to
15:51
induce different behaviors. The
15:53
mechanistic analysis paper suggests that
15:55
this can emerge in practice, but it is
15:57
still a weaker inductive bias than
15:59
explicitly giving the model distinct
16:01
layers. So, one could argue that if
16:02
depth is the bottleneck, then scaling
16:04
depth directly might still be more
16:06
effective than simulating it through
16:08
recurrence, assuming compute and memory
16:10
allow it. And then there is the question
16:12
of whether loop transformers are
16:13
fundamentally better at reasoning, but
16:15
for that we just don't have enough
16:17
evidence yet. The results from multihop
16:19
benchmarks and depth extrapolation are
16:21
interesting, but they are still under
16:23
relatively controlled settings. So it is
16:25
not yet clear whether these gains fully
16:27
translate to large scale realworld tasks
16:29
where standard transformers already
16:31
benefit from massive pre-training and
16:32
emergent behaviors. On top of that, a
16:35
chain of thought has a very unfair
16:37
advantage. That is, it's explicit. The
16:39
model reasons by writing out in tokens
16:42
which means it can be supervised on
16:44
those traces, distilled from them,
16:46
filtered by them, reinforced on them and
16:48
trained to imitate them directly. So
16:50
even if the reasoning is inefficient at
16:52
inference, at least the training signal
16:54
is very clear because the model is being
16:56
shown exactly what intermediate steps
16:58
are supposed to look like and we can
17:00
even supervise it. But hidden state
17:02
recursion does not get that luxury. In a
17:04
loop transformer, the intermediate
17:06
computation is implicit inside hidden
17:08
states. There is no natural textural
17:10
trace telling the model what step 1 2 3
17:12
should be. The model has to discover
17:14
that structure on its own purely through
17:16
the end objective. So the recurrence may
17:18
be architecturally cleaner but it is
17:20
also harder to supervise as we cannot
17:22
help to guide it. The only potential
17:24
benefit I see looping is appealing is
17:26
that it lets you trade compute for
17:28
effective depth without increasing
17:29
parameter count. This could be useful
17:31
for scenarios like synthetic data
17:33
generation, distillation or edge
17:35
deployment like on mobile devices where
17:37
you cannot afford a massive model but
17:39
still want iterative refinement and
17:41
basically in a regime where train of
17:42
thought is not as efficient or as smart
17:45
then loop transformers can potentially
17:47
outperform their parameter class because
17:48
they can reuse computation efficiently.
17:51
But at a large scale inference where
17:52
latency and throughput matter more than
17:54
parameter count, repeatedly applying the
17:56
same block can actually hurt performance
17:58
compared to a well optimized feed
17:59
forward stack. So maybe for tiny models
18:02
in the future, loop transformers might
18:04
be applied there. But what do you think?
18:05
Do you like how they explore this
18:06
direction of research? Let me know down
18:08
in comments. And if you want to learn
18:09
more about how LMS work much more in
18:11
depth without being overwhelmed with
18:13
math, you should definitely check out my
18:14
latest project, Intuitive Ai. Academy,
18:16
where it contains an intuitive
18:18
explanation of all modern LMS from the
18:20
ground up, including a lot of technical
18:21
topics like distillation, which I just
18:23
mentioned in this video. We cover
18:25
everything from the basics like the
18:26
transformer architecture all the way to
18:28
more advanced topics like Laura, mixture
18:30
of experts, and RLHF. And we also just
18:32
added a new advvent chapter on
18:34
optimizers, which will bring you all the
18:36
way from the classics to the current
18:37
frontier techniques. So whether you're a
18:39
student, software dev, founder, or just
18:41
someone trying to pivot into AI,
18:42
intuitive.academy
18:44
gives you one clean place to build real
18:46
technical intuition. And you can use the
18:47
code lockin for 35% off on a yearly
18:50
membership. And thank you guys for
18:51
watching. A big shout out to Spam Match,
18:54
Chris Loo, Dan, Robert Zaviasa, Marcelo,
18:58
Ferraria, Poof, and Enu DX Research
19:01
Group, Alex Midwest Maker, and many
19:04
others that support me through Patreon
19:05
or YouTube. Follow me on Twitter if you
19:07
haven't and I'll see you in the next

