https://www.youtube.com/watch?v=YKIUt9ytxIE

Build an MCP Server from Scratch in 2026 | Local, Remote, OAuth & Claude Skills
Code With Antonio
Code With Antonio
419k subscribers

Join


1.2k


Share

Ask

Download

90,712 views  22 Jun 2026
AI tooling is moving fast. One month it's MCPs, the next it's skills, and suddenly developers are expected to support CLIs, coding agents, and ChatGPT. In this tutorial, you'll learn how local MCPs, remote MCPs, skills, and CLIs fit together around a single shared core that works everywhere.

💻 Source Code: https://cwa.run/sendkit
⭐ Clerk: https://cwa.run/clerk
⭐ Railway: https://cwa.run/railway

Timestamps:
00:00:00 Intro
00:03:18 What we are building
00:14:21 The CLI
00:39:34 Shared Core
01:09:18 Local MCP
01:36:38 Remote MCP
01:57:54 OAuth
02:21:55 CLI Config
02:37:35 Formatting & Linting
02:48:27 Bundling
03:03:03 Publishing
03:35:02 Deploying OAuth
03:37:46 Skill
03:52:00 Outro
Ask
Get answers, explore topics and more

Ask questions
Chapters

View all
Transcript
Follow along using the transcript.


Show transcript

Code With Antonio
419k subscribers

----------------------------------------------------------------------------------------

In this video



Chapters

Transcript
Search in video
Intro
0:00
Remember when it felt like a new JavaScript framework was dropping every week? That's how it feels to work with
0:07
AI right now. Every few months, there's a new shiny thing that everyone is
0:12
talking about. At first, MCPs were the future, something that you had to learn.
0:18
And before most people even caught up with them, everyone moved on to creating skills. The problem is that most
0:25
developers are learning these technologies using the wrong approach. Imagine you're building a new AI tool.
0:32
One user wants a CLI. Another wants cloud code integration. Someone else
0:38
wants it to work inside chat GPT on the web. And now people expect you to create
0:45
a skill for your tool as well. Suddenly you are not building for one environment
0:51
anymore. You are building for all of them. And that's where things start to get complicated. The question is no
0:58
longer should I learn MCPS or should I learn skills. The question becomes how
1:06
do I build a tool and make it work everywhere? That's the question I've spent the last few months trying to
1:13
answer. I've been building, deploying, and experimenting with all of these approaches. And in this tutorial, I'm
1:20
going to bring them together into what is probably the most complete guide to
1:25
AI tooling I've seen so far. Not just how to build an MCP server, not just how
1:32
to create a skill, but how all of these technologies fit together inside a
1:38
realworld architecture. We'll start by building a traditional CLI tool that a
1:43
human can invoke directly from the terminal. Then we'll expose that same capability through a local MCP server
1:51
allowing coding agents like cloud code, open code and codeex to invoke it
1:56
through tool calls using the standard input output protocol. After that we'll
2:02
build a remote MCP server and deploy it to the web making the exact same
2:07
operation available to web-based AI assistants like chatgpt.com
2:13
over HTTP. And finally, we'll create a skill that teaches an agent how to use
2:19
our tooling automatically, allowing it to invoke our CLI, just like a human
2:25
would. The interesting part isn't the tool we are going to execute. The interesting part is that every one of
2:31
these adapters will be powered by the exact same shared core. One
2:37
implementation, one source of truth, multiple adapters. Along the way, you'll
2:43
learn how to structure a productionready monorreo, publish reusable npm packages,
2:50
distribute skills, deploy MCP servers, and most importantly, build a mental
2:56
model for how all of these technologies fit together. By the end of this video,
3:01
you will understand the difference between skills, local MCPs, remote MCPs,
3:07
and CLIs. When each one should be used and how they fit together into a single
3:13
architecture for building AI tools in 2026. Let's get started. This project is
What we are building
3:19
going to be a monor repository with four different adapters which all connect to the same shared core which finally
3:27
communicates with the telegram bot API which essentially allows us to send
3:33
telegram messages through the CLI where a human can invoke it through a local
3:38
MCP server so clot codeex open code can invoke it or through a remote MCP server
3:47
which allows any HTTP client to invoke it like chatgpt.com
3:53
or claude.com basically any web application. And the last one that we
3:58
have is a skill. A skill is a specific hybrid between all of these things I've
4:04
just explained. and they are basically agent instructions which will allow the
4:10
agent to decide whether it wants to use the CLI, the local MCP server or the
4:16
remote MCP server. Let's take a deeper look at the workflow and how it all
4:22
comes together. The first workflow I want to demonstrate is the CLI adapter. This one is pretty simple. A human runs
4:29
a CLI with a command like send telegram uses a shared core to validate the
4:37
parameters sent in this command and finally invokes the send message
4:42
operation which triggers the external telegram bot API and it looks something
4:48
like this. message kit, telegram, the chat ID where we want to send the
4:54
message, and finally the actual message. And you can see how that looks like here. I have a message hello from the
5:02
CLI. So now that we know what a CLI tool is to a human, we get a better
5:08
understanding of what an MCP server is to an agent. I've just demonstrated what
5:14
a human would do to use a CLI tool to send a message to Telegram. So we would
5:21
type messagekit, send kit, whatever is the name of the CLI tool, and then we would add some arguments, the chat ID
5:29
and the message. So how exactly do we make an agent do the same? The answer is
5:36
an MCP server. MCP server is a standardized way for an agent to perform
5:43
specific operations in form of tool calls. So how do you set up a local MCP
5:50
server? A local MCP server looks something like this. What I'm showing
5:56
you right now is the configuration for open code. But for example, you can see
6:02
that configuration for cloud code looks very similar. And the same is true for
6:09
codecs or whatever else you might be using. But the actual MCP is this. So
6:17
this is what we're going to be developing, not the actual config. The config doesn't mean anything to us. What
6:23
we have to do is we have to develop an agent compatible CLI tool. Now let's
6:29
demonstrate how it works. Once you set up a configuration like this in your
6:34
project, you will be able to check it out using the MCPS. You can see that I
6:41
have message kit connected in open code. And I also have it connected here in my
6:48
cloud code. And once you have the configuration set up, you can use natural language to tell your coding
6:54
agent to invoke an MCP. And you can pass along the arguments using natural
6:59
language as well. So use messagekit MCP to send a telegram message. Use this
7:07
chat ID and send this message. Let's go ahead and press enter. In a few seconds
7:14
you will see it uses the message kit telegram tool with the chat ID and
7:19
message argument. And in here there we go. Hello from open code. Now let's go
7:26
ahead and test out cloud code. So once again I have the configuration ready and
7:31
I'm telling it to do the exact same thing. So it's going to go ahead. It's going to find the MCP. I need to give it
7:39
permissions. So I'm going to say yes. And here we have another message hello from cloud code. The last adapter which
7:46
we are going to demonstrate and which we are going to build is the remote MCP
7:51
server. So, why would we need this when we already have a perfectly fine local
7:57
MCP server? We've clearly demonstrated that agents are able to use it. Well,
8:02
the problem isn't with whether agents can use it or not. The problem is that
8:08
remote MCP servers and local MCP servers are made for completely different
8:13
environments. A local MCP server is great if you are going to have a coding
8:19
agent running on your machine. But what if you wanted to invoke this MCP server
8:25
on chatgpt.com or claude.com? That becomes a problem because none of
8:31
these websites have this package installed or this configuration set up.
8:37
That's why we are going to need to develop a remote MCB server and we're going to need to host it somewhere. Once
8:44
we deploy it and it is available online, we are going to add a custom
8:49
application. You can see how I've added message kit here in my custom apps in
8:55
chat GPT. And you can see how the URL is basically a deployment on railway which
9:01
is what we are going to learn how to do. You can see how in here I've embedded the environment key for telegram and
9:08
I've added the MCP suffix here as the route and I've done the same thing here
9:16
in claude connectors and here is my custom message kit and you can see it
9:22
recognizes the telegram tool. So let's go ahead and test chat GPT first. use
9:30
message kit MCP to send a telegram message. Let's see what it's going to
9:36
do. So, it's looking for available tools and you can see I have to confirm that I
9:42
wanted to send this message. And there we go. Message sent successfully. Let's
9:48
take a look. Hello from chatgpt.com. And now let's test the same thing for
9:54
Claude. So, I'm going to send use messagekit MCP to send a Telegram
10:00
message. And you can see once again it successfully loaded the tool. And let's
10:05
check it out. Hello fromclude.com. So, we've successfully proven that even
10:12
in a on a website, we can still communicate with our MCP tool thanks to
10:18
the remote MCP server. And that is why you need all three adapters. Now we
10:26
still have one question left. Why do we exactly need the CLI tool? So far only a
10:33
human can use it. Well, this is where it gets interesting thanks to something
10:38
called skills. So skills are relatively new in comparison to MCP servers. The
10:46
way skills work is they are basically a set of agent instructions which explain
10:53
to the agent how a CLI tool might be used. The reason why this is sometimes
11:00
beneficial uh in comparison to an MCP server is token usage. Sometimes a
11:06
combination of skill and the CLI ends up being cheaper for token usage than local
11:14
MCP or remote MCP servers. So how can a skill replace an MCP? Well, the first
11:22
step is to make your skill distributable. The way you do this is
11:28
just by deploying it on GitHub. That's all you have to do. you need to add your
11:33
skill.md to a public GitHub repository. I'm going to teach you how to do that in this
11:40
tutorial as well as how to develop the actual skill file. And once you publish
11:45
it on your GitHub repository, you will be able to use npx skills add and then
11:51
simply link your GitHub repository to your skill location. Go ahead and press
11:58
enter, install it, and your users will be able to install it in this exact way,
12:06
and then open open code. And what I've done is I've purposely disabled the
12:12
message kit MCP so you don't think that I'm cheating, right? And of course, the same thing works in cloud code and
12:19
codeex. I'm just using open code because it's the first one that came to mind. So, how would I do a Telegram operation
12:27
now? Well, I would go inside of my skills and I would find message kit
12:33
skill and I would tell it chat ID and then I would tell it message
12:40
from open code using skill not MCP.
12:45
You can see that it loaded that skill. it is now injecting it and now it's
12:52
using messagekit cli just like a human would use it and it even added a d-json
13:01
so it can read the output and tell us whether it was successful or not and in
13:07
here we can see message from open code using skill not mcp
13:15
so we have successfully sent a telegram operation using a skill and not a local
13:22
or remote MCP server. In this tutorial, you're going to learn how to build this
13:28
entire architecture that we just went through. You're going to learn how to build a CLI tool, a local MCP server, a
13:37
remote MCP server, and finally a skill that is going to teach the agent how to
13:43
use the CLI tool or the MCP server depending on what it has available and
13:50
what is cheaper for token usage. We're going to learn how to do this in a
13:57
productionready monorreository with a shared core so that we only have to
14:02
develop the actual send message API once and then easily plug and play into any
14:09
adapter we create. This is in my opinion the most complete tutorial on building
14:16
MCP tools and skills in 2026. So let's get started. In this lesson, we're going
The CLI
14:22
to build the command line interface. This is the first flow we've demonstrated which is triggered by a
14:28
human and only later it will also be used by an agent once we learn how to
14:33
implement a skill that teaches the agent to do so. The CLI is the perfect tool to
14:39
build first because it holds the foundation of this project. And by having a human run it instead of an
14:46
agent, it will be that much easier for us to test whether it works correctly and to demonstrate it in general. It's
14:54
also going to serve as the perfect foundation to build the shared core, which we are only going to have to
15:00
develop once and then simply adapt to a local MCP server and a remote MCP server
15:07
later on. Let's go over all the tools that you need to successfully develop this project. The first and foremost,
15:14
you're going to need a node installed on your machine. I would always recommend having the most up-to-date version,
15:22
which in this case is 24.16, but I would just recommend not being
15:28
below 20, as at this point that is pretty deprecated and might cause
15:33
problems with some modern dev tooling. To check whether you have successfully installed Node on your machine, you can
15:40
go inside of your terminal and simply run node-v. And that's going to print out your
15:45
version. So I'm using 22.20 and that is perfectly fine for me to develop this
15:51
project. If you have a version below this, I would suggest bumping it up. Once you install node, you're also going
15:58
to get access to npm and npx. Don't worry about these versions too much as
16:04
they are different depending on the operating system that you're using. So I am on Mac OS so I have these versions
16:10
but if you are on Linux or Windows you might have some different versions. that's perfectly fine. Just make sure
16:16
that your node version is higher than 20 or as close to mine as possible. If you
16:22
have a higher version than mine, that's also perfectly fine. For npm and npx,
16:28
just make sure that they are actually runnable and not causing any errors when you try to run them. Now, the second
16:34
thing we're going to need is bun. You might be thinking, how come we need both node and bun? Well, we are going to use
16:42
node as the final runtime of our tools. Meaning the end users to whom we are
16:49
going to distribute our CLI tools. Meaning these ones, the CLI, the MCP
16:54
server, all of that will be run on NodeJS because general population most
17:01
often has NodeJS especially developers. But to make development easier for us,
17:08
we are going to use bun as the package manager and we are going to use it as
17:13
the uh monor repository workspaces management because npm as far as I know
17:20
doesn't come with that out of the box. Besides workspaces, monorreo and package
17:25
management, bun also comes with a bunch of handy little tools and utils that
17:31
replace a bunch of other tools we would otherwise have to install separately and learn. So just to make your mind at
17:38
ease, yes, we are going to be using bun to develop this, but your end user is
17:44
not going to need to have bun installed on their machine. So only the developers, you and me are going to use
17:52
bun to develop this project. So you should have bun available. This is the
17:57
version I am using. Now I'm not entirely sure if these versions are different
18:03
depending on the operating system, but as long as you actually have bun and you can run this command without any error,
18:09
you are perfectly fine. Next, we have git. This is pretty self-explanatory.
18:15
We're going to be using Git for version control. Alongside all of these tools, I
18:21
would also recommend uh creating an npm account and creating an organization.
18:27
You don't have to do this right now, but this will be important if you actually want to distribute this project. So, if
18:34
you just want to build it and test it out locally, you can completely skip this step. But later in the project when
18:40
we actually learn how to create an npm package anyone can install. You're going
18:45
to need to be able to install an uh to create an npm account. I am on a completely free tier. So all of this
18:52
should be possible for you to do. You don't have to do it now. I'm just telling you in advance. And same is true
18:58
for your GitHub account. You should be you should have a GitHub account where you can publish the final project which
19:04
is going to look something like this where we are going to host our uh
19:09
skill.md which will later be used by npx skills commands which I've shown you uh in the
19:16
previous demonstration. So if you have these commands you are ready to get started. Now it's time to create a new
19:23
project. I'm going to start by creating a new folder and I'm going to give it a name of scentkit which is also going to
19:29
be the name of this project and the name of the commands that we are going to run. Because of that reason, I would
19:36
recommend using the exact same project name as me so it's easier to follow along. Once we create that new folder,
19:44
let's go inside of it and let's go ahead and initialize an empty git repository
19:49
inside. In case you are wondering why am I calling this project send kit when all
19:56
of the previous demonstration was done under the name message kit. Well, for a
20:01
very simple reason. If I type sendkit just like you, I get an error. But you
20:07
can see that since I've already developed message kit, I have some leftover commands which might confuse
20:13
you or it might cause a problem with me forgetting to implement something and
20:19
thinking that it works because I can do it and it turns out I already have the
20:24
package installed. So because of that, I'm starting with a completely new name,
20:30
send kit, instead of message kit, so we can truly build everything from scratch
20:35
once again. So once you have initialized an empty git repository inside, go ahead
20:41
and open it in your favorite IDE. For this example, I'm going to be using VS
20:47
Code. Before we install anything, let's go ahead and add a.get git ignore file
20:53
which is going to ensure that we don't accidentally commit node modules dist
20:58
our environment files or anything similar. The only exception we are going to make is for the exact
21:05
environment.ample file which we can immediately create. So environment.example
21:12
will be committed because it is explicitly omitted from git ignore. And
21:18
inside of environment.example example. Let's go ahead and simply prepare Telegrambot token with this exact name.
21:26
Now, let's go ahead and create a new package.json file. And inside, let's go ahead and
21:33
open an object with the name sendkit workspace private set to true and type
21:40
set to module. And then let's go ahead and add a tsconfig.json
21:46
with the following compiler options. a target module module resolution strict
21:52
types and skip lib check set to true. So this exact configuration isn't terribly
22:00
important, but if you make yours the same as mine, you reduce the chances of
22:06
having some type problems or compile problems later when we actually start
22:11
bundling our command line tools. So because of that, I would recommend using the exact same TS config as me. Now it's
22:18
time to set up a monor repo within this project. And thankfully we are using bun
22:24
which makes it extremely simple to do so. So you can find the documentation on workspaces by going inside of bun and
22:31
select the option of package manager. And then down here you can find workspaces and how everything works
22:38
inside. So the first thing we have to do is we have to define where are we going to keep our workspaces. So let's go
22:46
ahead and add that right here. So after type module, let's add a comma and let's go ahead and define workspaces to be
22:53
under the packages right here and everything that's inside. So I'm going
22:59
to go ahead and create a new folder called packages. Now inside of packages, let's go ahead and create our CLI tool.
23:07
And inside, let's go ahead and add another package.json. Let's go ahead and give it a name of
23:14
sendkit. Let's give it a version of 0.0.0. And for now, let's go ahead and keep it
23:20
private. Now that we have the CLI package and we have the root package
23:25
JSON, let's go ahead and run bun install in the root of our app. And you can see
23:31
that that's going to say one package installed. And if you take a look at
23:37
bun.lo, it is going to initialize packages CLI.
23:42
So now we can go ahead and properly use this CLI package as a part of this monor
23:49
repository. So make sure that you run bun install from the root of your project after you have added the package
23:56
JSON here. Now let's go ahead and install some dependencies in our CLI package. So I'm going to change
24:02
directory to packages CLI and I'm going to do bun add commander.
24:10
Next, let's go ahead and do bun add- at types forward slash node. So, let's
24:18
take a look at our package. JSON in the CLI folder. Now, in the dependencies, I
24:24
now have commander and in the dev dependencies, I now have types node.
24:29
Now, let's go ahead and create a very simple example of a command line interface that we can actually run. So
24:36
inside of the CLI folder, create a new folder called source. And inside
24:42
index.ts file. In here, we're going to import
24:47
command from commander. We're going to initialize a new program using new command instance. And then to that
24:55
program, we are going to attach a name, a description, a command called telegram
25:01
with a description send a telegram message. Two arguments. First one being
25:06
chat ID and the second one being message and then finally an asynchronous action
25:13
which gives us access to whatever user wrote for the argument of chat ID and
25:18
the message. We're going to console log the chat ID, console log the message and
25:24
then do a process exit. And last let's go ahead and add program parse
25:29
asynchronous processargument v. Go ahead and save that file. Now that
25:36
we have this very basic command line interface, let's go ahead back inside of
25:42
the root package. JSON and after workspaces, let's go ahead and add
25:48
scripts. And let's register one script dev cli. And let's make it do bun run
25:55
packages cli source index.ts and ensure that that path actually
26:02
exists. So, packages CLI source index.ts.
26:08
So, this is one of the reasons bun is a very useful development toolkit as
26:14
usually it isn't this easy to run a TypeScript file without any additional
26:20
tooling. So, it's small things like that in in combination with the workspace and
26:27
the monor repo and everything else that makes bun really fun to develop with.
26:32
But again I repeat the end result is going to be node compatible. So your
26:38
users will not need to have bun. Only the maintainer the developer needs bun
26:44
to actually run this. So let's go in the root of our project. So make sure you
26:50
are in the root and simply run bun install just to make sure that everything is synchronized. Even though
26:57
we added some packages directly in the CLI package JSON, it's always a good idea to run bun install from the root
27:05
just to refresh the lock file. And then let's do bunr rundev cli. You should get
27:11
an error, but also you should get usage sendkit options command sendkit tutorial
27:18
CLI. And here are the options. Help and here are the commands. Telegram with chat ID and message. So now let's go
27:26
ahead and actually do it. So CLI Telegram some random chat ID and some
27:32
random message and you can see the response. I can see the chat ID and I can see the message. So we have
27:39
successfully confirmed that our CLI tool is actually working. We can accept a
27:45
chat ID and the message argument and we successfully print it out and then we
27:50
exit the process. Beautiful. So now that we know how to parse the arguments from
27:56
a command line interface, it's time to actually process it with a Telegram bot
28:01
API. Now we have to obtain the Telegram bot API key. You can do this by creating
28:08
a Telegram account. And for simplicity sake, I would recommend downloading the
28:14
Telegram desktop client if you have access to it simply so you can do it all
28:19
from one machine. Once you log in in the Telegram desktop client, you're going to
28:25
go inside of search here and you're going to select apps and in here search
28:31
for bot father. So this is the official Telegram uh bot creator. Okay. So I'm
28:40
going to go ahead and click create a new bot and I'm going to call this send kit.
28:46
I'm going to leave the about to be empty and for the actual name I'm going to call it so I'm going to use a prefix CVA
28:53
as in code with Antonio sendkit_bot. So it's important that it ends in
29:00
underscorebot and then let's go ahead and hit create bot. In here you now have the send kit
29:07
bot and you can see the environment key. So this is what I'm going to do now.
29:13
I'm going to put this on the side and I'm going to copy environment example.
29:18
I'm going to paste it and I'm going to rename it to just be environment
29:25
and then I'm going to copy this token here
29:30
and I'm going to paste it here. There we go. Now let's go back into our CLI
29:36
index.ts DS and let's modify it so it actually communicates with the telegram
29:43
bot which we've just created. So the first thing we have to do is we have to
29:48
define a telegram response type. This is later going to be maintained in the core
29:54
shared package. But since we don't have that just yet, we're going to develop it here in the CLI and later we are also
30:02
going to use ZOD to actually parse the response and not just blindly follow
30:09
this type which we defined. So the telegram response that we expect will
30:15
have an okay property which is a boolean an optional result which is an object
30:20
with message underscore id which is a number and also optional and an optional
30:26
description. So now what we have to do is we have to go back inside of our
30:31
asynchronous action here and first thing first let's check whether we can
30:36
actually read the process environment telegram bot token. So this thing that
30:42
we just populated. So if the token cannot be found, this CLI actually
30:47
cannot work. Now let's go ahead and also throw an error. If the user didn't provide the telegram chat ID and if user
30:56
didn't provide a telegram message text and now we have to create the actual
31:03
fetch to the telegram API. So luckily for us, this is very simple. We simply
31:09
have to await fetch https api telegram.orgward
31:16
slashbot and then inject the token forward slash send message. Then add a
31:23
comma and open the headers in here. Sorry, open the config. The method is
31:29
going to be a post method. The headers will have content type set to application JSON and the body is going
31:37
to be stringified object chat underscore id which is mapped to our chat id and
31:44
the text mapped to our message argument. So it's very important that you properly
31:51
spell this chat ID. So we we in here telegram accepts chat ID but since we
31:58
are working in JavaScript environment we use camel case right. So you can see how
32:03
I define the argument to be chat and then capital I so chat ID in camel case.
32:10
So if you try to extract it like this uh it wouldn't be a good idea even though I think it will work simply because we the
32:16
way we extract arguments is by order of their definition right so it doesn't
32:22
really matter what you name them here I think I think it's completely uh order
32:28
based right so the first argument in here is the first argument you define and the second argument here is the
32:33
second argument you define but still it's a good idea to make sure all of these are named exactly the same So you
32:40
don't have any problems. Great. And now we have the response. And once we have
32:46
the response, we can extract the data from it by doing await response.json
32:52
which we wrap in parenthesis. So we can cast it as telegram response type which
32:58
we defined above. So as I said, this isn't the cleanest solution because we are purposely casting something without
33:04
actually parsing whether the result is correct or not. But don't worry, we are
33:10
going to do that uh in the next lesson when when we implement the actual core and add zod and schemas and everything.
33:18
For now, this is perfectly fine. Now let's go ahead and check if the response is not okay. So if response is not okay
33:25
or if data is not okay, let's attempt to extract the detail using data.escription
33:33
or fall back to response.status status text and then we simply console error
33:39
telegram API request failed with an attempt to get some detail about why it
33:45
failed. So this is useful to have both for humans but also for agents so they
33:51
can uh tell the user what is missing, what went wrong, why did this request
33:58
fail and then what we can do we can extract
34:03
message ID from data.res result question mark message underscore id. Let's go
34:09
ahead and do a successful console log send telegram message to chat chat ID.
34:16
And last but not least, let's do if message ID is not undefined. We can also
34:21
do console log which telegram message ID was created. So now that we have this
34:27
functionality implemented, let's go ahead and make sure the file is saved.
34:32
And how about we try running the command once again. So here I am running bun
34:38
rundev cli telegram with some random chat ID. So this is a random number and
34:44
a random message. Make sure you're doing this from the root of your project. What's going to happen right now? So you
34:50
can see it's trying to do something and then it fails. Telegram API request has
34:56
failed. Chat not found. So this is an expected error because this number right
35:03
here is completely unknown to us. So how do we actually find the chat ID? Well,
35:10
you do that by going inside of your browser
35:16
and specifically going at this end point. So aplelegram.org
35:24
or bot and then bot token slashget updates. So if you take a look it is
35:30
actually the same as this one. So it is this exact URL but inside instead of
35:36
send message it is get updates. So go ahead and grab your bot token here
35:44
and simply replace this part with the bot ID and then you're going to get the
35:50
full URL. Then go ahead and enter that inside of your browser. So get updates.
35:58
And once you press enter in here, you can see that you get a response. Now my
36:04
results are completely empty, which is expected because I didn't start a chat
36:10
with this bot anywhere. So now let's go ahead and do that and then let's refresh this and see if we get any results. So
36:18
how do you start a chat with your bot? Well, the easiest thing you can do is go
36:24
once again in your Telegram desktop client, go inside of search and this time search within your chats right here
36:32
and go ahead and type CWA Sendkit_bot and you will be able to find the bot
36:38
which you have created. So, of course, this is different depending on the name that you have given your bot because all
36:44
of them are unique. So, go ahead and select it. And then down here, you're going to see a big start button. So,
36:52
let's go ahead and let's hit start. You can see that that sends a message to
36:59
that bot conversation. Then once again, refresh this page. And now you will get
37:04
a completely different result. So, scroll down until you find the chat property. And here is the chat ID. Now,
37:13
let's go ahead and try sending a message with that chat ID instead. So, I'm going
37:18
to remove this dummy ID here. And I'm going to paste this new one. And I'm
37:24
going to call it hello from dev CLI. So, we know that this is a development message. And look at that. No error
37:31
message. And let's take a look down here. Send kit. Hello from dev CLI. So
37:38
just like that we have successfully made it so we can send telegram messages
37:44
using our local CLI tool. So obviously what's not possible yet is to run this
37:51
anywhere on our machine. Uh what I mean by that is we have to specifically run it using a local script in this project.
37:59
So the distribution part is going to come later. For now, I just want to focus on us building the operation and
38:05
the logic and the codebase. And then later, we're going to focus on distribution and how to publish it. But
38:12
for now, this is what we wanted to achieve. A bun rundev CLI which accepts
38:19
Telegram as a command which accepts two arguments chat ID and a message. And
38:25
thanks to the telegram bot token which we have stored in the environment key uh
38:30
it can read it and it can access our uh telegram API. So yes one more message
38:38
remains. How are your users supposed to store telegram bot token? Don't worry we
38:45
are going to have a solution for that as well. At this point I would recommend staging all of these changes. You can
38:53
either do that using VS code or you can do it using the command line. So either
38:59
get add and then a dot or you could have pressed the plus button here which is
39:04
now a minus button. And then let's just go ahead and commit this. So get commit.
39:10
And I'm just going to call this feature add CLI. As simple as that. Or you could
39:16
have entered the message here. That's it. You don't have to publish anything for now. I just want to make sure that
39:23
you don't have those uncommitted changes and so that you can safely start the
39:28
next feature without worrying of accidental loss of everything you have
39:33
developed so far. In this lesson, we're going to extract the functionality we just developed within our CLI adapter
Shared Core
39:41
and we are going to make it reusable so that we don't have to repeat this logic for every subsequent adapter we plan on
39:48
building. Let me show you how that looks in our diagram. So what's going on right now in our codebase? We've successfully
39:54
developed the minimal version of the CLI adapter which is consumed by a human.
40:00
But right now the CLI directly communicates with the telegram using the
40:06
operation and the definitions we put inside of the CLI package. So if we
40:12
wanted to start building the local MCP server, we would have to repeat building the entire Telegram bot API
40:19
functionality, error handling, uh types, interfaces, everything once again. And
40:25
then we would have to do it one more time for the remote MCP server. So instead of doing that three times, what
40:32
we are going to do is we're going to go back inside of our CLI tool and we're going to create a brand new package
40:39
called shared or send kit core in which we are going to define the telegram
40:45
message operation once as well as all the schemas types and interfaces we plan
40:51
on reusing in all other adapters. Let's start by creating a brand new package.
40:57
So just like we did with CLI, let's go ahead and create a folder called core.
41:03
Inside, let's go ahead and initialize another package.json.
41:09
Let's go ahead and open an object and let's give it a name sent- core. Let's give it a version of zero private set to
41:16
true for now because we're not distributing this package yet. And let's go ahead and give it a type of module.
41:23
Once we've done that, let's go ahead in the root of our app and let's run bun install. What this is going to do is
41:30
it's going to update the lock file by registering the send kit core. So it's
41:35
important that we do that before we start adding any dependencies here. Now
41:41
let's go ahead inside of our packages and let's go inside of the new core and let's go ahead and install the zod
41:49
package. So now inside of your core package JSON, you should have a new zod
41:54
dependency. What I like to do just in case is go back to the root and run bun
42:00
install once again simply so the lock file is successfully refreshed. Now let's go ahead and use this new zod
42:07
package to create all of the schemas which we expect with this telegram
42:12
operation. So instead of defining the type like this where we basically hope
42:17
that it looks something like this, we're going to be able to use ZOD to accurately parse and throw errors if the
42:25
type or the interface is different from what we expect. So what we are going to
42:31
do is go inside of core and I'm going to go ahead and create a new source folder.
42:38
And inside of core I'm going to create schemas. ts. Inside of this file, let's go ahead
42:44
and import Z from our new package. And let's start by defining the telegram
42:49
message input schema. So this is what we expect from the user to provide us with
42:55
a chat ID and message. We expect both of those to be a string with a minimum
43:02
value of one. In case this minimum value is not satisfied, we go ahead and throw
43:08
the error which is described in the next parameter. And then let's go ahead and define what we expect from the actual
43:16
function which is going to invoke the telegram message. Meaning what are the options of this function. So for now
43:24
this is kind of unfamiliar to you. What is this bot token? Because if you take a
43:30
look uh at the CLI source index in here,
43:35
you can't really see bot token anywhere. We extract the token directly from the
43:41
environment file. Well, yes, that's fine. We are still going to use the environment file for now before we
43:47
implement the actual distribution of this token. But the thing is we are not
43:53
going to uh call process environment within the core operation. So let me
44:00
show you in this shared core. This is where we plan on developing the send
44:06
telegram message. Shared core doesn't know which environment it is in. It
44:13
needs to be agnostic. It needs to work for the CLI. It needs to work for the local MCP server. and it needs to work
44:20
within a remote MCP server. So we cannot make this sendkit core rely on process
44:26
environment. Instead the bot token is going to be transferred via a prop
44:32
called bot token. So that is why we are defining this even though we didn't
44:38
really use it anywhere. Next let's go ahead and define the schema for the
44:44
actual telegram API. So this chat id and message is what we are going to accept
44:51
and values that the user is going to give to us. But this one is going to be
44:56
what we send to Telegram, right? So we have to write it in this specific way
45:02
chat id and text because inside of here
45:08
take a look at the fetch method. That is what we expect, right? So right now if I
45:13
go ahead and write this, you will see there is no error. Nothing is warning us that we just wrote an incorrect body
45:20
here. So to prevent that we're going to create a schema which is going to parse
45:26
this. So in case we send something like that one two three it will cause an error because it does not match this
45:33
solution right here. Now let's go ahead and define the telegram response schema.
45:42
So this is where we get rid of this ugly
45:47
definition here. The reason I call it ugly is because it's technically a code smell. So we wrote this type because we
45:56
know it's supposed to look like this, but we don't really validate against it.
46:01
Take a look at this. So all we do is we cast that type here. Meaning that this
46:07
data is guaranteed to technically have the description and have the okay,
46:13
right? But with Zod and with this schema, we can actually parse it and Zod
46:20
can throw an error and say, "Hey, I don't know what you expect to got back,
46:25
but it's not this. It's something else." So, you might be wondering when does
46:31
that exactly happen? Well, imagine you accidentally uh used a different API. So
46:39
different endpoint and then this endpoint returns completely different
46:44
thing from what we expect here. Why should it have a message ID or the
46:49
description? So I just change this endpoint and as you can see my code is
46:55
never going to warn me that something is wrong. It's just going to break in an ugly uncaught way. So now I'm carefully
47:03
going to return this back to send message. Make sure you do that as well in case you've changed it. And that is
47:09
why we are defining a schema for the response so we can accurately parse and
47:15
check against this definition. So Zod is going to throw a nice error and tell us,
47:20
hey, I have an error. Message ID doesn't exist. I don't know what that is, but
47:26
whatever endpoint you attempted to parse this result from is not what you expect.
47:32
And this type of thing is extremely important. Especially when building for
47:37
coding agents, the more accurately you can give them errors, the better can they provide solutions. So we are not
47:44
doing this just so it's easier for us to develop, but so it's easier for agents to develop as well. And let's go ahead
47:51
and add this one, which is Telegram message output schema, which is once
47:56
again what we plan on returning back from the CLI. So okay, chat ID and
48:03
message ID. So I'm not sure if we really really have an example of that. We kind
48:08
of do. We define message ID. We have chat ID but we don't really return it
48:14
back. Oh, we do. So chat ID and message ID. So just another schema so we can
48:19
carefully uh keep track of that uh object as well. So what this is is
48:26
mostly uh graceful error handling because we are working with an untyped
48:31
API endpoint. We don't really know what's going to return from here. So instead of just hoping for the best and
48:38
using JSON stringify with chat ID and text because we know that's what it
48:44
needs to return or accept, we are going to stop doing that. We're going to stop hoping for things and we're going to
48:50
start validating things. So, if you haven't already, go through this code that I've written here again and
48:57
carefully check that you didn't misspell any of these values because if you did,
49:02
you will get some errors from zod. So, pay special attentions to underscores or
49:08
capitalizations like bot token and chat ID.
49:13
And the last thing we're going to do is one cool thing you can do with zod which is whenever you have a zod schema you
49:21
can easily transform it into a type. So we're going to export three types. We're
49:27
going to export telegram message input which is going to use zod infer type of
49:32
telegram message input schema which is the first one we've defined here. Then
49:37
we're going to have telegram message options which is the second one we defined here. And last, we're going to
49:43
have Telegram message output schema. So you can see that now when you hover over any of these types, you can see the
49:49
exact type we expect. So now it's compatible to use within TypeScript and
49:56
we can safely use it across our app by exporting these types that we need. So
50:01
that's it for our schemas file. Now that we've developed the schemas file, let's
50:06
go ahead and create its neighbor operations.ts.
50:12
So the first thing we're going to do in the new operations file is we're going to import everything we've just
50:18
developed in the schema. So telegram message output, telegram message options, telegram send message request,
50:25
telegram send message response and two types, telegram message options and
50:30
telegram message output. And now we can develop a brand new function uh
50:37
asynchronous function send telegram message. And instead of just casting uh objects
50:45
that we are not really sure of or params or arguments, what we can do now is we can define one argument input and we can
50:52
set it to be telegram message options. So what do we expect this function to
50:58
accept? You can see that when I hover, I can now accept chat ID, message, and bot
51:04
token. You can see how we didn't have to define this type. Instead, what we did
51:11
is we've created the telegram message options schema. So we can use this to
51:17
validate whether the arguments the user has provided this function or later the
51:23
agent has provided this function are correct. So again, the reason we are kind of complicating this, even though I
51:29
wouldn't really call this complicating it, I would call this quality code. Uh it's not just for humans, it's for
51:35
agents. Agents need to be told when they're doing something incorrectly to reduce hallucination. So that is how you
51:42
build highquality MCPS and skills by validating all the arguments that are
51:48
passed within functions. So once we uh know the input, we can
51:55
also define the output. But I'm going to leave this for later. Instead, I'm going to start by verifying that whatever this
52:03
input has received is correct by using telegram message options schema.parse
52:10
and then we send the input inside. So this function is going to fail if
52:15
whoever attempts to use this operation sends invalid input here which is again
52:21
very important for agents so they don't hallucinate and so that they know when they did something wrong. And the next
52:28
thing we can do is we can prepare the request body. So for this one we use
52:34
telegram send message request schema.parse parse and in here we assign
52:40
chat ID to come from our parsed input chat ID and text to come from the parsed
52:46
input message and now that we have this request body uh safely parsed here so
52:53
this is now going to fail if chat ID is invalid if text is invalid or if you
52:59
accidentally misspelled this it's going to break right so you are much in a much safer position now and what you can do
53:06
now is you can repeat that uh fetch request. So we're going to go ahead and
53:11
open this template literal here and inside we're going to go ahead and write the
53:18
send message API once again. So API telegram.org bot and then inside of here we're going
53:25
to inject from the parsed input bot token. So we don't have to directly use
53:30
input.bbo token because we want to use it from this one which is safe
53:35
sanitized. So we know it's not injected with anything and it's 100% safe to use.
53:42
Uh then let's go ahead and add a comma and let's go ahead and open the options here. So we're just going to repeat what
53:48
we did before. We're going to give it a method of post and headers content type
53:53
application/json which leaves us with body for which we can just do response.json
54:01
request body.ext. So let's go ahead and compare how these
54:06
functions look. So this is our new fetch function which we are developing here in
54:11
the operations in comparison to CLI index.ts. So you can see how in here we are using
54:18
this very weird JSON stringify. We have absolutely no validation that chat ID is
54:24
a string. We just hope that it's a string and the only thing we do here is we check if it's available or not.
54:31
Right? So not exactly ideal. Now let's go ahead and see what's going to happen
54:36
with the response. So let's go back in the operations here. So what we're going
54:42
to do now is we are not going to just blindly cast the telegram response.
54:48
Instead we're going to generate data by going over telegram send message
54:54
response schema parse await response.json. So now this is going to break if this
55:02
response here is anything else from this
55:07
okay result with the message ID and the description. So we are now parsing and
55:15
counting on the response to return specific items in a much safer way. You can see that when I hover over data,
55:21
this is guaranteed to exist here. There is no chance that this isn't the correct
55:27
type because we have validated it with zod. So it's going to have it's going to throw errors if it's not that object. So
55:35
we can now safely count on the response from this API here to have the correct
55:42
arguments, the correct body and the correct response. All thanks to Zod,
55:47
which our agents are going to be very thankful for. So now I'm going to go ahead and throw errors in case we the
55:54
response is not okay, if data is not okay or if data result is missing. We're going to attempt to get the description
56:01
or with a generic message telegram message request failed if we cannot deduct why it has happened. And then in
56:09
the end we're going to return telegram message output schema.parse okay set to true chat ID parsed input
56:17
chat ID. And the message ID is now going to come from data result message ID. And
56:23
if you try and write something like this, you can see it now shows you an error. Why? Well, because the data is
56:29
strictly validated. So even if you accidentally do this now, you can see it
56:35
will remind you, hey, no, no, no, this is from Telegram API response and they
56:41
use snake case. They don't use camel case like we do, right? So this is also
56:46
useful. This entire zot thing is very useful if you plan on uh building this MCP codebase with agents with cloud code
56:55
or open code or codec. Uh these types of errors are going to help guide your
57:00
agent in the right direction. That is why zod and type safety is so important
57:06
in the age of AI. Great. So to wrap this all up, what we can do, this is not
57:12
terribly important, but just to prove that everything works fine. You can see we have one unused type, telegram
57:18
message output, which is essentially what this function is supposed to return. So what we can do is we can add
57:24
a column promise and then telegram message output. And you can see that
57:29
there is there is no errors at all because that's exactly what we return. So that is our operations solved. And
57:37
now we can safely reuse send telegram message for all of these adapters. We
57:44
are now going to plug it back into CLI. Then we're going to develop local MCP server and we're going to plug it in
57:50
there. And then we're going to do the same thing for the remote MCP server. So just like that, we've created a very
57:56
powerful core for our project which is environment agnostic, meaning that it
58:03
doesn't care where it's in. Is it in a CLI? Is it within an MCP or is it within
58:09
a hono server hosted somewhere? Right? That's what we wanted to achieve a super
58:14
types safe validated core which holds all the operations and everything
58:20
inside. So how exactly do we now plug in this core package into our existing CLI
58:27
package? Well, what I would try and do is import send telegram message from
58:35
sendkit- core. But you can see we have an error here. So let's see what did we
58:41
do wrong. First things first, let's check the name. I can see the name matches. Sendit- core. So that shouldn't
58:49
be a problem. So let's see what it is. And here it is. we didn't add it to the
58:55
package JSON of the CLI package. So how do you add a package which is defined
59:03
and developed locally within a monor repository and doesn't yet exist on npm
59:08
because usually you write the name of the package like scentkit and then you
59:14
write some number. So, do we do this because our core sorry sent- core would
59:22
be the name of the package, right? So, do we do that because the version is 0.0.0?
59:28
Well, not really because make sure you're doing this inside of the CLI folder package JSON because this is
59:35
still going to look within npm. So, what do we do? Well, we use workspace
59:45
workspace colon and asterisk like this. So once
59:50
you define the version like this, it's not going to search through npm. Instead, it's going to find the neighbor
59:57
here. So now let's go in the root and let's do bun install. And now if you
1:00:04
take a look at bun.lock, lock, you will find that SendKit workspace packages CLI
1:00:11
now has Sendit core, but it looks like we still have some problems here. So,
1:00:17
let's go ahead and first things first try and reload the window to see what's
1:00:22
going on. All right, so cannot find module sendkit core or its corresponding
1:00:27
type declarations. So, what exactly is happening right now? Is our scent kit
1:00:34
core ready to be used or not? One interesting thing you can try is you can
1:00:39
add a forward slash and all of a sudden it's able to actually go within and find
1:00:47
operations. That's very interesting, right? But this isn't the most optimized
1:00:52
way to do that. This would technically work but it would be nicer for us and
1:00:58
for all future developers for whom we are making this to be able to just import it like this. So in order to
1:01:05
achieve that we have to go back inside of core source and we have to create an index file. Inside of this index file we
1:01:12
are simply going to export everything from schemas and everything from operations. But we are not done yet. We
1:01:19
have to go inside of the package JSON file here and then we have to add a
1:01:24
property called exports and we're going to define a dot colon source index.ds.
1:01:34
Just like that. Then you can go back inside of your index CLI and would you
1:01:40
look at that? We can now use Sendkit core and directly find send telegram message because we technically export
1:01:48
all of the exports from operations. So send telegram message essentially gets
1:01:54
defined here. Send telegram message right that's what happens and that's why
1:01:59
we end up being able to import it in this way. Now what I really like to do
1:02:04
is just run bun install in the root just in case the lock file uh is slightly
1:02:10
different now and now that we finally have this here we can start removing
1:02:16
some things from here and simplifying this uh entire telegram operation in the CLI. The first thing we can immediately
1:02:23
remove is this type telegram response. we are no longer going to need it because we no longer have to pretend
1:02:30
that the response looks like something. We instead know and we validate to make
1:02:36
sure it looks like that. So we can completely remove that. Now you might be thinking why are we doing this
1:02:42
validation right here if we also parse the input that is going to be accepted.
1:02:49
Well because of this process.exit. So this is a very specific uh command line
1:02:54
interface uh quit that we are doing which wouldn't be a good idea to put inside of the core. So technically later
1:03:03
we could uh parse uh catch the on error of the parsing of the input and throw
1:03:09
process.exit but for simplicity sake let's keep this small layer of
1:03:14
validation within the CLI just so it's easier for us to you know don't have to
1:03:19
do some spaghetti code right now. Okay, so I repeat once again, the core needs
1:03:24
to be agnostic. It needs to work uh on the server. It needs to work as a local
1:03:30
MCP. It needs to work as a CLI. So I can't just move process.exit, which is a
1:03:36
very CLI thing into core because what if core is run on the server? It will shut
1:03:43
down the entire server. That isn't a good idea, right? But it needs to shut down the CLI because it's not a server.
1:03:50
And now what we can do is we can remove the entire response from here. We can remove the data. We can remove all of
1:03:57
this pretty much. In fact, let's remove everything from here. And let's just
1:04:02
leave this lightweight validation layer. And now we can use the send telegram
1:04:08
message for everything else instead. So we're going to do this within a try and
1:04:13
catch method. And first things first, let's go inside of try. And we no longer have to write the API endpoint which is
1:04:21
always prone to errors. We can instead simply await send telegram message. And
1:04:27
you can see that we have very type- safe and strict arguments that we have to
1:04:33
pass. So we have to pass the bot token to be the token which we are currently extracting via the environment variable.
1:04:41
Then we have to pass the chat ID which we validate up here. And we have to pass the message which we validate up here.
1:04:49
And then we can hover over the result and you can see the exact structure that we are returning. So this is different
1:04:55
from the structure that Telegram is returning because we have returned it once again into an object that we find
1:05:03
suitable so that we know everything is okay. So after this successful result,
1:05:08
we can console log that the telegram message has been sent and the telegram message ID and in the catch method we
1:05:16
can now also capture errors in a safer way. So let's go ahead and do detail.
1:05:22
Let's check if error is an instance of error and in that case let's extract error dossage otherwise let's simply
1:05:30
stringify whatever is the error argument and let's go and do a console error
1:05:36
about why the telegram API request has failed and everything else is unchanged
1:05:42
so you can see how much modular and how better this is now when we no longer
1:05:48
have to maintain the telegram operation types and interfaces within the CLI. So
1:05:55
the CLI shouldn't need to know what the Telegram output input is. That should be
1:06:02
in Sendit Core. And same is true for the local MCP server and the remote MCP
1:06:08
server. None of them should really bother with having all of that architecture about the Telegram message.
1:06:15
They are simply layers of communication. CLI is a layer of communication for a
1:06:22
human. Local MCP server is a layer of a communication for a local coding agent.
1:06:27
And remote MCP is a layer of communication for an agent or a remote MCP server. None of them should have
1:06:35
Telegram logic written inside. That's why we developed the shared core. So now that we went uh go on to developing the
1:06:42
local MCP server, we are not going to have to develop this anymore. We are just going to do await send a telegram
1:06:48
message and it's up to us to make the agent send us the bot token the chat ID
1:06:54
and the message. That's all the agent has to do. The agent doesn't have to worry if this API endpoint is misspelled
1:07:01
or anything like that. You can see that this logic deserves to be separated from
1:07:07
the CLI. There's no point for CLI to maintain this. Brilliant. So what should
1:07:13
we do now? Well, we should check if everything works. So, let's go ahead and do bun install and then let's attempt to
1:07:20
send a message again. So, to remind you about how you get the chat ID, you have
1:07:26
to get your telegrambot token and then you have to go onto api telegram.orgward
1:07:33
org slashbot and then simply insert your entire token
1:07:39
here forward slashget updates. You can see that my result here is
1:07:46
basically nothing. So if you want to refresh that all you have to do is send
1:07:52
a message again. So I'm going to send hello once again here. There we go. And
1:07:58
let's try and refreshing this. And there we go. Once again, you will be able to
1:08:03
find the chat ID. So, just inject the chat ID which you just copied from here.
1:08:11
And let me change the message. So, hello from dev CLI with shared core. And there
1:08:17
we go. Looks successful. Let's confirm that it is hello from dev CLI with
1:08:24
shared core. Amazing. So, we just did a very big refactor which is going to save
1:08:30
us a ton of time moving forward because we are not going to have to implement anything in the core again. Instead,
1:08:37
we're just going to continue developing the local MCP and the remote MCP which are going to import the core with all of
1:08:44
the logic and operations and schemas and types ready to be reused. So what I
1:08:51
would suggest is just committing these changes so you can safely go on to the next lesson. So get addit commit dash m
1:09:01
feature add or let's do extract shared core. As simple as that. And then you
1:09:08
can see I have no more uh uncommitted changes here. This isn't really required
1:09:13
but I think it's easier for you if you do some commits so you don't accidentally revert your files. In this
Local MCP
1:09:19
lesson, we're going to build the main agentfacing interface, also called an
1:09:24
MCP. As I've explained in the beginning, there are two types of MCPs, and we're
1:09:31
going to build both of them. The one we're going to build right now is called a local MCP. So, let's take a look at
1:09:38
the diagram again to remind ourselves how this is going to work. The local MCP
1:09:43
server is primarily meant to be consumed by agents, specifically agents which run
1:09:49
on your machine. The local MCP server is not deployed anywhere. Instead, it uses
1:09:56
a standard input output transport which can basically run anywhere where it's
1:10:03
installed like on your machine, allowing agents like codeex or cloud code to use
1:10:10
it to discover tools and serve as the primary agent interface. In comparison
1:10:17
to a remote MCP server, this is very similar to a local MCP server and it's
1:10:23
built using the same SDK. The only difference is is that remote MCP server
1:10:28
is deployed somewhere and then it's connected to another HTTP client like
1:10:35
chatgpt.com or cloud.com which don't have access to
1:10:41
your machine and cannot use uh a standard input output transport. And the
1:10:47
good news is that in the previous lesson, we've developed a package called SendKit Core, which is basically the
1:10:54
home for all of our types, schemas, interfaces, and operations, which means
1:11:00
that we don't have to implement this. Again, all we have to do is develop the
1:11:05
actual local MCP server and then just import send a telegram message function.
1:11:11
That's it. So you can see how much we've simplified our job by focusing on this
1:11:16
one shared core which we can now reuse across all of our adapters like CLI
1:11:21
local MCP server and the remote MCP server when we start building it. Now let's go ahead and create the new
1:11:28
package. So inside of our packages folder let's create a new one and let's call it local MCP. Another standard
1:11:36
practice might have been calling this uh standard input output MCP or STDIO for
1:11:45
short. So that would be calling it by its protocol or transport. But to keep
1:11:52
it simple, I'm going to call my local MCP exactly that local MCP. And then
1:11:58
later when I develop the remote MCP, I'm going to call it remote MCP. But if you
1:12:04
want to change yours to match the transport that they are using, so stdio
1:12:10
and http transport, feel free to rename them like that. But I think it's simpler
1:12:15
to call them local mcp and remote mcp. Now let's go ahead and create
1:12:20
package.json. Let's go ahead and open an object. Let's
1:12:26
go ahead and give this a name of sendkit mcp a version of zero private set to
1:12:32
true and let's set the type to be module. Now let's go ahead and let's run
1:12:39
bun install in the root of our app. What that's going to do is it's going to
1:12:45
refresh the lo file so that it registers packages local mcp under the name
1:12:52
sendkit mcp. Now we have to add the model context protocol SDK which we are
1:12:59
going to use to develop the MCP servers. So by googling model context protocol
1:13:05
you can find the standard for building MCPs which is developed by anthropic.
1:13:11
You can even see on their blog post that they have opensourced the model context protocol which once again redirects to
1:13:19
this exact package. So looking at the documentation of model context protocol
1:13:26
we can find the TypeScript SDK and this is where we get into a bit of a hiccup
1:13:33
here. So what they currently write here in this big important note is that
1:13:39
version one remains the recommended version for production use. The reason I
1:13:46
say this is a hiccup because this entire documentation down here is actually
1:13:51
documentation for version two which is a bit unfortunate right so you have to be
1:13:57
careful if you're going to point your agents to this documentation uh or if
1:14:02
you yourself are just going to try and follow along uh by installing these
1:14:07
packages which are going to be a bit different from what I'm going to do. So, since at the time of me making this
1:14:14
tutorial, version one still remains the recommended version for production use, that is what I'm going to teach you how
1:14:21
to do. So, what does that mean for you? If you're watching this in the future
1:14:27
and it says that from now on, version two is the default version. Well, the
1:14:33
good news is that version one will continue to receive bug fixes and
1:14:39
security updates for at least 6 months after version two ships to give people
1:14:44
time to upgrade. So, even if it's been more than 6 months and you've only come
1:14:50
across this video, uh I am quite confident that you can still follow
1:14:56
along by just manually installing the exact MCP version that I'm using. And
1:15:01
then once you finish the tutorial, try upgrading to version two. Thankfully,
1:15:07
you can use aentic coding to help you with that. The reason I'm telling you to still use version one is simply so you
1:15:15
don't stray off too far from what I am building. So, if you want to look at the
1:15:22
actual version one API docs, go ahead and click uh right here. And this is
1:15:29
where you will find what we have to install. So I'm going to go ahead and go
1:15:35
inside of my packages local MCP
1:15:40
and I'm going to do bun add model context protocol SDK and that's going to
1:15:46
install version 1.29.0. So, for those of you watching in the
1:15:51
future, if version two has come out and you want to follow with the exact same version as me, you can use the same
1:15:59
version with simply pointing it uh to that version like this. But then again,
1:16:05
I don't think it's going to be a problem even if you have version two and you have to use version two. I think they
1:16:12
are similar enough. The biggest uh differences I see is that in here you
1:16:17
have to separately install server and client whereas in here we have SDK and
1:16:24
then from here we're going to import server and client. So I think they've just separated some concerns and maybe
1:16:31
slightly changed the API but I think it's mostly going to be very very
1:16:37
similar for you regardless of the situation you found yourself. So in here
1:16:42
it also mentions something about zod. So I quickly want to go here just to read that.
1:16:49
So the SDK has a required peer dependency on ZOD for schema validation.
1:16:54
The SDK internally imports from ZOD version 4 but maintains backwards compatibility with projects using ZOD
1:17:02
version 3 or later. So that's why it also mentions to install ZOD. But I
1:17:09
think that we don't have to do that. simply because in this monor repository we already have zod inside as the peer
1:17:18
dependency. So I think that this will work just fine even if we don't have
1:17:24
zod. But in case you run into some obvious problems mentioning zod, you can
1:17:29
try going inside of local MCP and running bon add zod here as well. Now
1:17:35
let's go ahead and manually add our core dependency. So, SendKit core added to
1:17:43
the SendKit MCP package JSON with this version basically the workspace version.
1:17:49
And then we need to add -d types node
1:17:54
inside of local MCP. And just in case, I'm also going to install ZOD. I don't
1:18:00
think it's going to hurt and I just want to make sure that this doesn't break.
1:18:05
Great. So we have types node zod sendkit core and model context protocol. Since
1:18:11
I'm using version one, it's SDK. So now that we have these dependencies added,
1:18:17
what I like to do is go back into my root and just run bun install. So the
1:18:22
entire LO file is synchronized. Now let's go ahead inside of the local MCP,
1:18:28
let's create a new folder called source. And inside, let's create an index.ts.
1:18:34
And now in here let's go ahead and import MCP server and uh standard input
1:18:39
output server transport. Now here is where you can see how imports for model
1:18:45
context protocol version one looks like. So SDK server MCP.js
1:18:52
then again SDK server standard input output.js.
1:18:57
And looking at their GitHub documentation here, that is about to change in version two. So the reason I'm
1:19:05
even explaining this is just in case some of you come across this video and version two becomes the standard and you
1:19:10
really want to use version two, you can see that you have to install this package model context protocol server
1:19:17
and then you wouldn't have to import from SDK and I'm not really sure if you would have to import the extension.
1:19:23
Perhaps they've also resolved that as well. Yeah, you can see that MCP server
1:19:28
in version two is imported in a much cleaner way and std server transport is
1:19:34
also imported in a cleaner way. So in fact this is a pretty good uh migration
1:19:42
start if you want to use version two and you will see that this API and this API
1:19:48
is almost exactly the same. So it's mostly going to be changes with the
1:19:53
imports and the packages you are installing from version one to version two. Now let's go ahead and establish
1:20:00
the MCP server. So I'm going to give this a name of sendkit local and give it a version of 0.0.0.
1:20:08
Then I'm just going to create a little helper function here. So in this function I'm going to define
1:20:15
get telegram bot token and this is going to read from process environment telegram bot token. Now this appears to
1:20:24
be reading from our environment file right here. But that's actually not
1:20:30
true. So this is actually going to read from wherever the configuration for the
1:20:37
local MCP server is defined which right now doesn't mean much to you but it's
1:20:43
going to make sense once I purposely go ahead and remove this later when we test
1:20:49
it out. So you're going to see that it doesn't actually need an environment file to be run.
1:20:57
So if the token doesn't exist, I simply throw an error. Telegram bot token is required. Configure it in your MCP
1:21:03
client environment. So you can see that I don't instruct the user to create an environment file. I'm telling them that
1:21:09
their configuration is wrong. And if there's no error, then we just return
1:21:14
the token. So now let's go ahead and actually use this server which we've
1:21:20
defined above to register a tool. So the tool we are going to register is going
1:21:26
to call is going to be called telegram and now we have to define the options
1:21:32
for it. So title is going to be telegram description is going to be send a
1:21:38
telegram message and the input schema my apologies I forgotten to import it is
1:21:45
going to come from the send kit core. So we don't have to write this again. We
1:21:52
are basically reusing the same telegram message input schema which we've used in
1:21:58
our CLI function remember. So let me go ahead and find it. So the send telegram
1:22:04
message here uses that schema, right? So we can now reuse it here for the MCP
1:22:11
server as well. So we don't have to define it again. That was the whole point of developing the core.
1:22:18
Uh and let's also import from sendkit core the actual send telegram message
1:22:23
here. So we now have the input schema, we have the title and we have the description. And now we have to develop
1:22:31
the actual function that does things. So it's going to be an asynchronous
1:22:36
function which accepts the input. And inside of here, let's go ahead and get
1:22:42
the result by doing await send telegram message.
1:22:48
Simply spread or pass along the entire input. Why can we do this so safely? We
1:22:55
can do this so safely because of the input schema. So there is no chance for this input to be something that send
1:23:02
telegram message doesn't expect because if this fails it's not even going to get
1:23:08
to this point. That's why it is so important for us to define that core and all of that zod types. You can see that
1:23:15
agents really really like using ZOD because it's so easy to validate the
1:23:20
arguments and say uh explicit and very specific messages about which arguments
1:23:26
are incorrect so the agent can correct themselves. That's why Zod is so great
1:23:32
to use. That's why I had that separate lesson of separating everything into a core package which is then reusable
1:23:40
across all of our other packages. What we have to do after we obtain the result
1:23:45
which you can hover over to see what it looks like. So we get the chat ID and the message ID. Well, we have to return
1:23:52
uh a standardized uh object here. So for version one of model context protocol
1:23:59
that looks like this an object with a property content which is an array and
1:24:05
this is basically a single object inside type text and then in here open back
1:24:12
text sent a telegram message with this message ID to this chat ID
1:24:19
and then in the second property here we are just going to return the entire raw
1:24:27
result without the structured response message. So this is basically what the agent is going to respond to the user
1:24:34
inside of cloud code or open code or codex right and this is to consume the
1:24:41
actual structured content and that is actually how you write an MCP server. We
1:24:47
registered a tool called the telegram just like we registered a command uh
1:24:53
called the telegram in the CLI using commander. That's why I wanted us to first implement the CLI tool so you get
1:25:00
the mental map of how this works. It's actually very simple. The same way you build the CLI tools is how they've uh
1:25:07
defined this main interface for agents called MCPs. So they can invoke tools.
1:25:14
That's why I think it's the perfect example to do first because it really makes it easier. It makes you understand
1:25:20
this in such a better and more structured way. And now we just have to
1:25:25
uh start this server. So in here we have created the server. In here we've registered the tool for this server to
1:25:32
use. And now we have to open a transport. And just like you would connect to some database server.connect
1:25:40
to that transport. And that is actually it. That is how you build a local MCP
1:25:46
server. And you can see how we didn't have to do a lot thanks to the Sendit core which handles all of the
1:25:53
operational business logic for us. So if you want to, you can take a look at the
1:25:59
version two here just to see the differences. So new MCP server. I think this is almost identical. Yes. So you
1:26:07
can see no changes in how you create a new server. When you register a new tool, I think that also looks the same.
1:26:12
So, register a new tool looks the same. In here, we have a title and we have input schema, which we use our input for
1:26:21
asynchronous and your return content. Yep, this looks exactly the same. So, if
1:26:28
you're using version two, the only thing you're going to have to change are the imports. That's it.
1:26:34
Everything else is exactly the same. Beautiful. So we now have a local MCP
1:26:40
server but we are not ready yet. There are still some things we have to do.
1:26:45
Starting by going back inside of package.json. So right now this local MCP server
1:26:50
actually cannot be imported anywhere. So we have to specify exactly what we
1:26:56
export from it. So we export source index.ts. If you remember that's exactly what we
1:27:02
had to do in core package JSON because otherwise you would manually have to find the path towards operations or
1:27:10
schemas. So we are making sure that user doesn't have to import MCP and then go
1:27:16
to forward/sourceindex.ts which is ironically how they've made model context protocol
1:27:24
to be imported. We we are m actually better than anthropic in in this manner.
1:27:30
Uh great. So now that we have that uh let's go ahead and register it in our main package JSON and then let's try
1:27:37
adding a configuration and running it. Now let's go ahead into the root package JSON. Let's go inside of scripts and
1:27:44
let's register a new script dev local MCP bun run packages local MCP source
1:27:53
index.ts. So packages local mcp source index.ts DS
1:27:59
confirm that it is working. And now let's go ahead and just test whether
1:28:04
this works or not. Bun rundev local MCP.
1:28:10
And it should appear as hanging. That's the only thing we expect because this
1:28:17
isn't intended to be run by us. This is intended to be run by agents. But if it
1:28:24
is running and appears to be hanging like this, it means it is correct. If it
1:28:30
threw an error, that would mean we did something wrong. So how do we test this
1:28:35
out? Well, by creating MCP configurations and opening cloud code or
1:28:40
open code. So let's go ahead and try that out. Let's go ahead and open code
1:28:46
or cloud code, whatever you might be using. Uh the goal is to successfully
1:28:53
add configuration for both. So let's check it out. I assume most of you are
1:28:59
using cloth. So I'm going to do that first and then I'm going to do open code. Regardless, if you go ahead and
1:29:05
type MCP command in your clot code, you shouldn't see anything related to send
1:29:11
kit. So I have a bunch of MCPS here. You can see I've disabled all of them. The
1:29:17
only one I have connected is from my web uh platform which is message kit which
1:29:23
you probably don't have. So you can ignore that. Basically what I'm trying to say is right now I have no MCP
1:29:30
servers connected. Same thing in open code. If I open there are no MCPS
1:29:36
connected. So let's go ahead and go in the root of our project and let's create
1:29:43
a file mcp.json. JSON. So this is a specific reserved name for
1:29:52
clawed code. So in here go ahead and open MCP servers. Register the server
1:30:00
under the name sendkit. Type standard input output and then the command is
1:30:05
going to be bun and the arguments will be run dev local MCP. Obviously later
1:30:13
this will be changed to the deployed npm published package but until we do distribution this is the only thing we
1:30:19
can do that's why we've registered here local MCP and we've tested it to confirm
1:30:25
that it throws no errors and this is what I was telling you about this is the
1:30:31
environment so when I told you that in local MCP the process environment will
1:30:37
be read from a config and not from for doten environment. That's what I meant.
1:30:44
So for now, let's go ahead inside of environment. And be very careful here
1:30:50
because mcp.json uh is not put under git ignore. So you
1:30:56
might accidentally commit it with your telegram bot token. So just be very careful. Okay. So I'm going to add the
1:31:03
telegram bot token here. Okay. That's the first one I'm going to do. And since I'm already creating these, I'm just
1:31:09
going to create uh another one called open code.json. So if you don't use open
1:31:14
code, you probably don't care about this. So you don't have to. But you can see that in a very similar way, you
1:31:20
develop the configuration for open code. So once again, I'm going to copy this and I'm just going to add the token
1:31:26
here. Uh great. So now that we have these two,
1:31:31
let's go ahead and restart both of them. open code claude
1:31:36
and you can see that it immediately found a new MCP server and it's telling
1:31:43
me to confirm I want to use it. So I am going to confirm use this MCP server.
1:31:48
Let's go over MCP and let's go ahead and find send kit connected one tool and we
1:31:56
can even see the command and the arguments here. We can see the config
1:32:01
location. We can click view tools and you can find the tool here which is telegram. You can see the tool name. You
1:32:09
can see the full name which was constructed by the model context protocol SDK. Description send a
1:32:15
telegram message. Parameters chat ID and message. So the exact thing that we
1:32:22
defined in here when we registered the tool here is the description. Send a telegram message. That's exactly what we
1:32:29
see here. Here are the parameters. input schema. You can see chat ID and message
1:32:35
using zod. So we are 100% safe with
1:32:40
using this uh MCP. And let me check in open code here. There we go. Send kit
1:32:47
successfully connected to open code. So now let's go ahead and send a telegram
1:32:54
message using cloud code and local sendkit mcp. So once again, if you
1:33:01
forgot your chat ID, go ahead and send your bot a message using either Telegram
1:33:07
desktop or Telegram mobile. And once you send a message to your bot, go ahead to
1:33:12
apitlegram.org slbot. And then go ahead and enter the entire
1:33:20
bot token slashget updates. So, if you don't send your bot a message first,
1:33:26
there's a chance the result might be completely empty. If that's the case, just send the message and refresh and
1:33:33
then you will see that latest message you've just sent. So, now that you have the chat ID, let's go ahead and try. So,
1:33:41
use local MCP sendkit to send a telegram message. And it
1:33:49
should actually ask me for the arguments now. So there we go. What Telegram chat
1:33:55
ID and message should I send? Let's provide the details here. So I'm going
1:34:00
to tell it chat ID message hello from
1:34:05
open code local MCP. Let's go ahead send kit telegram and let's see if it's going
1:34:13
to be successful or not. Send a telegram message. And would you look at that? Hello from open code local mcp. Now,
1:34:22
let's go ahead and do the same thing here. So, once again, I'm going to tell it uh use Sendkit MCP to send a telegram
1:34:32
message. So, it should now load this MCP that we confirmed is connected here. And
1:34:39
once again, it should ask us for the chat ID. There we go. And the message is
1:34:45
going to be hello from cloud code local MCP. Let's go ahead and press enter. And
1:34:53
if our configuration is correct, this should work. You can see that clot code asks for permissions. So, I'm going to
1:34:59
say yes to proceed. And there we go. Successfully sent. Let's take a look.
1:35:05
Here it is. Hello from cloud code local MCP and hello from open code local MCP.
1:35:14
We have successfully developed our first MCP server and we have successfully
1:35:20
added to open code and MCP.json. So if you want to commit mcp.json and
1:35:27
open code.json, I would highly suggest just adding them to your git ignore so
1:35:34
you don't accidentally uh commit these uh telegram bot tokens that we've added
1:35:41
here. Uh, I think there might be a way to actually inject them using the environment file. Uh, I'm pretty sure
1:35:48
there is. I will try to research for the next lesson, but uh, just in case, put
1:35:53
them under git ignore before committing this lesson so you don't accidentally leak your Telegram bot token or if you
1:36:00
already did it, just refresh your Telegram bot token, right? So no one can use it. So uh we have successfully
1:36:06
developed the local MCP server which uses the shared core which uses the
1:36:12
external bot API which is consumed by an agent codex open code cloud code.
1:36:19
Brilliant brilliant job. Now once again let's go ahead and do get addit
1:36:25
commit with a message feature add local mcp. That's it. something to save all of
1:36:32
your changes so they aren't accidentally overwritten. Amazing, amazing job. In
Remote MCP
1:36:38
this lesson, we're going to develop the remote MCP server. Previously, we've developed a local MCP server which is
1:36:46
consumed by agents which run on your machine like Open Code and Cloud Code.
1:36:52
But in order to allow HTTP clients like chatgpt.com or claude.com to connect to the same MCP
1:37:00
server, we need to create a remote version of that same server. In order to
1:37:06
achieve that, we're going to establish a lightweight Hono server which is going to serve a single endpoint MCP. It's
1:37:14
going to be a post request with a very simple URL authorization which accepts
1:37:20
the bot token users have to configure in their connectors tab. Similarly as to
1:37:26
how we needed to create a configuration for the local MCP. So what we've built
1:37:32
so far is a local MCP server and the CLI adapter. The local MCP server is very
1:37:40
similar to what we have to build now. The only difference is the way we are going to distribute that to the agents.
1:37:47
The local MCP server uses standard input output transport which is fine when it's
1:37:53
being consumed by MCP clients which we configure on our machine. So clot code,
1:37:59
codex, open code. But if we wanted to use the same MCP server and try to
1:38:04
connect it to an HTTP client like chatgpt.com or claude.com, it wouldn't
1:38:11
work. Because of that, we have to implement the remote MCP server. The
1:38:17
good news is the logic and the entire SDK is exactly the same as in the MCP
1:38:22
server. We don't really have to do anything new, just some slight API differences. The biggest difference is
1:38:29
going to be that we actually have to create a very lightweight and simple Hono server which is going to expose a
1:38:35
post request to an MCP endpoint and we don't have to develop anything in
1:38:41
regards to the actual interfaces types or operation business logic because
1:38:46
we've already solved that when we implemented the shared core. Instead of developing this within packages like we
1:38:53
usually do, we actually have to create a different boundary. And we're going to do that by creating a new folder called
1:39:00
apps. And inside of here, we're going to create the remote MCP folder. So why am
1:39:06
I developing this within apps and not within packages? Our packages folder
1:39:11
holds reusable send kit units like the CLI, core, and local MCP. But the remote
1:39:19
MCP has its own HTTP boundary. It's not a package we are going to install or any
1:39:26
of our users are going to install. It is a deployable application. And this boundary that I'm doing isn't my
1:39:33
opinionated folder structure. It is an actual practice which is recognized by
1:39:39
majority of deployment and cloud services like railway. So when you have an apps folder, services like railway
1:39:47
recognize that folder and the service you put inside as something deployable
1:39:53
and it doesn't do the same for packages. So that is why we are going to develop
1:39:59
the remote MCP within the apps folder. But before we actually do that, we have
1:40:04
to go inside of our package.json and we actually have to add that here in
1:40:10
the workspaces. So go inside of apps here, go ahead and add an asterisk
1:40:15
and a comma like this. So make sure that inside of your root package JSON, you
1:40:21
support both apps and packages because so far we've only had packages here. And
1:40:28
now that we've successfully registered the apps folder as the workspace for this monor repository, let's go ahead
1:40:35
inside of apps remote mcp and let's create a package.json. JSON. Let's go
1:40:41
ahead and open an object. Let's give it a name of SendKit remote MCP, a version
1:40:47
of zero, private true, and type module. Then let's go ahead and install this. So
1:40:53
it is registered in the lock file in the root of your project. So not within any
1:40:59
package or app in the root. Go ahead and run bun install. This is going to
1:41:05
recognize the newly registered package and it's going to install it and register it in bun lock. So now if you
1:41:12
scroll down here uh well somewhere it's getting pretty large you will be able to
1:41:18
find the newly registered oh here it is sentit remote mcp. Now let's go ahead
1:41:24
within our apps within remote MCP and let's go ahead and add types node as the
1:41:33
development uh dependency and let's go ahead and add at model context protocol
1:41:39
forward/ SDK. So once again a reminder this is the package for version one of
1:41:47
model context protocol. I've explained the difference between versions in the previous lesson. So if you are working
1:41:53
with a different version, rewatch that lesson to see the differences in the
1:41:58
packages you have to install. And let's go ahead and add Hono here as well
1:42:04
because we are going to need it to establish a server. So if you go inside of remote MCP package JSON, you should
1:42:10
now see the dev dependencies and you should see the dependencies. And we are missing one more dependency here and
1:42:18
that is our send kit core which needs to use the workspace. So once you've done
1:42:24
that go back to the root and run bun install once again. So the log file is
1:42:31
fully updated. And now we are ready to develop the remote MCP. Inside of remote
1:42:36
MCP let's create a new folder called source. And inside let's create an index.ts ts file. Let's go ahead and add
1:42:45
all the imports which we are going to need. We are going to need to import hono from hono. We are going to need to
1:42:52
import MCP server from model context protocol SDK server MCP.js.
1:42:59
And we are going to need to import a web standard streamable HTTP server transport from SDK server. And then once
1:43:08
again that exact transport. So you can see that this is very similar to what we
1:43:13
had to do within our local MCP. The difference is in what kind of transport
1:43:19
we are importing. So we are once again importing the MCP server but instead of importing the standard input output
1:43:26
transport, we are now importing the HTTP server transport because this is going to be uh an actually deployed service.
1:43:34
Besides that, let's import send telegram message and the telegram message input schema from our sendkit core. Now let's
1:43:43
go ahead and create a function create server which accepts bot token as the
1:43:50
only argument inside of here. We're going to create a new server called sendkit remote and give it a version of
1:43:57
0.0.0. And then once again let's go ahead and
1:44:02
register the tool. We can in fact copy this entire thing here. Let's go ahead
1:44:07
and copy it and then we are going to modify it if it's needed to be modified for the remote server. So you can just
1:44:14
paste that entire thing here. Server register tool. We are registering
1:44:20
a tool called telegram. The title is going to be telegram. Description send a telegram message. Input schema telegram
1:44:27
message input schema.shape. And the only thing we're going to modify here is in this asynchronous function
1:44:33
where we get the input, we don't have to spread the bot token and use the get
1:44:39
telegram bot token. We can simply use the prop which we have. Where does the
1:44:44
prop come from? From here, bot token. Right? So this function is not going to
1:44:50
be responsible for obtaining the bot token in any way. It's going to be the
1:44:55
developer's responsibility to pass it along somehow. All right. So, this stays
1:45:00
the same and after that I'm just verifying that the return content can stay the same and it most certainly can.
1:45:08
So, as I said, uh not much difference in local MCP server and the remote MCP
1:45:13
server when it comes to the API and the syntax. It's mostly about this hono
1:45:20
server which we have to run and then call this create server function inside. So, let's go ahead and do exactly that.
1:45:27
Let's establish a new Hono application and let's go ahead and register a new
1:45:33
API endpoint. So we're going to register a post API endpoint which is going to
1:45:39
use a bot token inside of the URL. So this is a param. So it's important to add a colon here. If you accidentally
1:45:46
remove the colon then this is no longer dynamic and it's expected to literally be written as bot token. So, make sure
1:45:53
you put a colon here and then a forward slashmcp. And don't forget it's a post
1:45:59
request. Then let's go ahead inside of here and let's obtain the bot token. So,
1:46:04
we can do that very easily using hono using context request param bot token.
1:46:10
Bot token is a string. So, if the user goes a post request 1 2 3 MCP, bot token
1:46:16
is going to be 1 2 3. Now we have to create the MCP server using the function
1:46:22
we've just developed above and pass along the bot token which we extract through the URL. Now let's go ahead and
1:46:29
create the transport using the web standard uh streamable HTTP server
1:46:36
transport. Very long uh name. And set the session ID generator to undefined
1:46:43
and enable JSON response set to true. And then let's go ahead and simply
1:46:49
connect our server to this transport. So very very similar to how we did it here
1:46:55
with the standard input output server transport. Instead of doing it in the
1:47:01
file, we are now doing it within an API endpoint so that it can be connected uh
1:47:06
via some other service. And then let's go ahead and open a try and catch block after the successful connection here.
1:47:13
And let's await transport handle request and simply pass along the raw request.
1:47:20
And in the finally make sure to close the server. As simple as that. Now I
1:47:26
would recommend also registering a very simple not found route in which we just
1:47:31
return a JSON with an error not found and a 404 status code simply so we can
1:47:36
test uh the difference between an invalid API route and a correct API
1:47:42
route. And now we have to simply decide what which port are we going to run the
1:47:48
server on. So let's just read from the environment file in case uh some service
1:47:53
like railway assigns the port or let's fall back to 3000. And then let's just
1:47:59
go ahead and export default the port and fetch app.fetch.
1:48:04
And that is the entire code we actually need for the remote MCP server. In order to make this importable and usable,
1:48:11
let's go inside of package JSON here and let's make sure to register exports and
1:48:17
let's just export source index.ts as the entry point right here. So we are doing
1:48:23
that within remote MCP package JSON just like all of our other packages. Let's
1:48:29
make sure we have an entry point to source index.ts. Now it's time to actually test this
1:48:35
server to confirm whether it's working or not. So let's go inside of our root
1:48:41
package JSON and let's go inside of scripts and let's add a new script here called dev remote mcp. And the command
1:48:49
it's going to run is bun run apps remote mcp source index.ts
1:48:56
and save the file and just verify that it actually exists that you didn't misspell it. So apps remote mcp source
1:49:04
index.ts. Now let's go ahead and actually run this. So bun rundev remote mcp. And
1:49:12
there we go. Started development server http localhost 3000. If you visit the
1:49:18
actual server, you should see an error not found. This is expected because the
1:49:24
only endpoint that's actually registered is the post request. And if you want to quickly test if your post endpoint is
1:49:32
working, go inside of your terminal. Make sure you have this remote running
1:49:37
and simply do a curl post request to http localhost 3000. Enter whatever you
1:49:44
want for the MCP token here and then forward/mcp and press enter. Here we are
1:49:51
still going to get an error, but it is not a 404 error. It is a 406 error. This
1:49:58
is actually expected because the only client meant to consume this is an MCP
1:50:04
client. So as long as it's not 404, it means everything is okay. So how could
1:50:11
we possibly test this on cloud.ai or chatgbt.com?
1:50:17
Well, in practice, usually you would deploy this onto some service. You would
1:50:22
get a domain and then you would use that domain. But there is a way to test this
1:50:29
out even before we deploy it. So make sure that you have it running on some
1:50:35
port on your machine like localhost 3000. And now you have to use a tunnel
1:50:41
to expose it to the web. You can do this in several ways. There are many services
1:50:47
which do this nowadays. I personally like using angrock. It's something I've been using for ages. There is also local
1:50:54
tunnel. I think Cloudflare has some. And keep in mind that this step that I'm doing right now is completely optional
1:51:02
because in a few lessons we are going to deploy this entire thing and then we're going to properly connect this using our
1:51:09
deployed uh web URL. But in case you can't wait and just want to see whether
1:51:15
this works or not, you can go ahead and set up Angro. That's what I would recommend. simply download it and you
1:51:23
should have enrock on your machine like this. So once you establish what port
1:51:28
you are on go ahead and do enrock http
1:51:33
3000 and that should give you this URL right here. It's basically forwarding
1:51:40
your HTTP localhost 3000 to an HTTPS domain. The the reason I recommend
1:51:46
Angrot is because local tunnel often has uh a whole overriding page which asks
1:51:54
for verification that you understand that this is a tunnel which breaks integration. Right? So let's go ahead
1:52:02
and try and connect it using this. So I'm going to do it for both chat GPT and Claude. I think that you should have you
1:52:09
should be able to do this on the free tier as well. go inside of customize connectors. And as long as you don't
1:52:15
have any custom connectors, you should always be able to create one, right? So
1:52:20
add a custom connector. I think you can only do this once. So if you already have one, you have to delete it or
1:52:27
upgrade to a paid tier. So I'm going to call this send kit uh sent kit. And now
1:52:34
this is where we enter the URL. But that's not all. We have to authorize it.
1:52:39
So how do we authorize? Well, I opted for a very simple URL authorization, which means that I just have to copy my
1:52:46
environment token here. I have to add it and then forward MCP.
1:52:53
Basically, I have to target this endpoint which we've just developed, right? Bot token MCP which and I don't
1:53:02
have to specify that it's a post request. The MCP client is going to fire a post request here. Uh, perfect. So we
1:53:09
actually don't need this advanced settings, we don't have OAL. We just have a simple URLbased AL token. And
1:53:17
just in case you're worried whether this type of URL authentication is a standard
1:53:22
or not, uh here's an example of Firecrawl, which is an MCP server that I
1:53:27
personally use a lot and they actually do the same thing. So they use simple
1:53:33
URL uh API key authentication whenever you create a new MCP server and they
1:53:39
don't do any authentication using oath. So this is a pretty regular practice. So
1:53:45
you don't have to worry about that. Let's go ahead and click add right here.
1:53:50
And let's go ahead and see whether it has successfully recognized that we have a Telegram tool. So, how about we try
1:53:58
opening a new chat and let's try and send a message to our telegram. So, once
1:54:05
again, let's obtain our chat ID. In case this is empty for you, the result can be
1:54:11
an empty array. Just go ahead and send a test message to your bot and then
1:54:16
refresh this again and find the chat object and find the ID. So, I'm going to
1:54:22
go ahead and I'm going to tell Claude to send a telegram message using SendKit
1:54:28
MCP. I'm going to give it chat ID and I'm going to tell the message to be
1:54:33
hello from claude uh AI development, meaning local tunnel
1:54:39
or or angro, right? So, I know which message uh comes from where. So, now it's finding tools and there we go.
1:54:47
Claude wants to use the telegram tool from Scentkit MCP. So I'm going to click always allow and message sent. Let's
1:54:56
take a look. And here it is. Hello from claude.ai
1:55:01
development. Now let's do the same thing onto chatgpt.com. So in here you go inside of your profile
1:55:07
down here settings apps and go ahead and click create an app. I'm going to call
1:55:14
this send kit. I'm going to select server URL. I'm going to paste that URL
1:55:20
we just had in cloud code. So we use our uh local tunnel here. Then we use our
1:55:27
environment key forward slashmcp. Make sure it's https for authentication. Set
1:55:33
no out because we have URLbased authentication and click I understand
1:55:38
and want to continue. Let's hit create and see if it is successful. And there we go. You're going to get a prompt add
1:55:46
kit to chat GPT. In here you have some options whether you want to reference memories and chats to this. It really
1:55:52
doesn't matter for us. Let's just hit connect. And then let's go ahead and send a message. So this is what I'm
1:55:59
going to say. Send a telegram message using SendKit MCP. This is the chat ID
1:56:04
message. Hello from chatgpt.com development. Let's go ahead and see if
1:56:10
it will be able to find the MCP. So, it's looking for available tools. It's calling a tool. And in a few seconds, I
1:56:16
believe. There we go. We have a prompt. Do you want to send this or not? Let's hit allow. And that should be it.
1:56:25
Message sent successfully. Status delivered. Let's take a look. Hello from
1:56:30
chatgptt.com development. Keep in mind that this is now working simply because we have a
1:56:36
tunnel running. So the moment you close the tunnel, all of the MCP servers are actually going to break. So if you take
1:56:44
a look at the server now inside of your apps here, send kit uh and if you
1:56:50
refresh, you can see that it fails. And it's also going to fail here. If you go
1:56:55
inside of customize connectors, scent kit, not sure if it has refresh it. It
1:57:00
has it's also going to fail. So that is expected, okay? because this is just for
1:57:06
development. Later when we actually deploy and we have a stable URL, we're
1:57:11
going to add a new connectors. So the moment you stop your local tunnel, all of the tools are going to break. And
1:57:18
every time you start the tunnel again, you're going to get a different URL. So you're going to have to update it if you
1:57:23
want to test it out. So just some information for you if you want to show your work to someone. Now let's go ahead
1:57:29
and verify all of our changes. I believe this is everything uh that we needed to
1:57:35
do. Beautiful package JSON. We have the export. Everything seems to be working
1:57:40
well. We tested everything. So everything should be working. Let's go ahead and do get add get commit-m
1:57:46
feature. Add remote MCP. And that is it. All of our changes are now committed.
1:57:53
Amazing. Amazing job. At this point, we've successfully developed the remote MCP server, but we didn't implement
OAuth
1:58:00
proper authentication for it. What I mean by that is while we do have a very
1:58:06
basic URL token authorization in place, that does not protect our MCP server or
1:58:13
our endpoint. The only thing that actually protects is Telegram's
1:58:18
third-party API, which means that we need to think of something to prevent
1:58:24
spam on our remote MCP server or to maybe give us an ability to only allow
1:58:32
certain organizations, groups, or maybe a company to use our remote MCP server
1:58:38
instead of just allowing it to the entire worldwide web to use it. The ideal solution would be a way for us to
1:58:46
create an OOTH client and then use the advanced OOTH settings that connectors
1:58:53
or custom apps within Claude and Chat GPT allow us to do, which will then make
1:58:59
chat GPT or Claude prompt the user to sign in instead of just blindly allowing
1:59:07
anyone to use our remote MCP server, which will result in our remote MCP
1:59:13
server being completely authenticated using the OOTH protocol. What would
1:59:19
usually require building login screens, registration screens, consent flows, OAL
1:59:25
client logic, token validation, user management, and months of out plumbing
1:59:31
can all be reduced to a few lines of code with Clerk. Using the link on the screen, you can create a completely free
1:59:38
Clerk account, which will give you access to 50,000 retained users for every project you create within Clerk.
1:59:45
Besides that, you can create unlimited applications. And all of those applications have their own limit of
1:59:53
50,000 monthly retained users, which aren't just regular signups. They are
1:59:59
users who visit at least one day after signing up. meaning that they are
2:00:05
actually active within your application. So, this is more than generous for a
2:00:10
hobby tier. Besides that, you get all of this listed in their hobby tier right
2:00:17
here. Once you've created a free clerk account, go ahead and create a new project. I'm going to give my
2:00:24
application a name of SendKit. And you can choose between all of these signin
2:00:29
options. I'm going to keep it simple and I'm just going to select email and Google for now. We are not going to need
2:00:36
organizations or billing. So you can just hit create application. After you've successfully created your first
2:00:42
application, go ahead and select the express documentation. The reason we're
2:00:49
choosing express is because out of all of the options here is closest to what
2:00:54
we have, which is a Hono server. And once you scroll down here, you will see
2:01:01
two environment variables, clerk publishable key and clerk secret key.
2:01:06
And you can copy it from here. An alternative is to visit the API keys
2:01:12
page, which you can find inside of configure and then API keys. And once
2:01:17
again, just select express because that is the closest to HonoJS. and then
2:01:24
simply go ahead and add those two variables to your environment file. Now
2:01:29
let's go ahead inside of our apps and inside of remote MCP and in here let's
2:01:36
install clerk backend and clerk mcp tools package. Let's go inside of remote
2:01:43
mcp sourceindex.ts and let's import from clerk backend
2:01:50
clerk create client. Then let's go ahead and extend our hono by also importing
2:01:58
type context. Then let's also import generate clerk protected resource
2:02:05
metadata from clerk mcp tools server. Next let's go ahead and establish the
2:02:12
clerk environment keys. So clerk publishable key and clerk secret key.
2:02:18
Both of these will be read from our environment variable file. So make sure that you've added clerk publishable key
2:02:26
and clerk secret key. I always recommend copying and pasting here. So publishable
2:02:32
key goes right here and secret key goes right here. This will ensure that you
2:02:38
haven't accidentally misspelled them. Let's go ahead and throw an error if any
2:02:44
of those are missing so that we know that something is wrong and that we are missing the correct configuration. So
2:02:51
only after we've confirmed that we have the environment keys, we can safely
2:02:56
initiate a new clerk client using those keys, the publishable key and the secret
2:03:02
key. What we need to do next is register an endpoint within our Hono server which
2:03:09
is going to tell the agent where to find authentication or authorization
2:03:14
information and that's actually the standard defined by model context
2:03:19
protocol documentation themselves. So in the initial handshake documentation, you
2:03:25
can see that when the MCP client first tries to connect, our server is going to respond with a 401 unauthorized. And
2:03:32
we're going to tell the client where to find authorization information. In the example they've provided right here, you
2:03:39
can see that they've stored it inside ofwell-nown uh path and that's exactly the path or
2:03:47
route that we are going to register and in which we are going to use the generate clerk protected resource
2:03:53
metadata. So we can just return that and invoke that function within that endpoint. Let's do exactly that. So
2:04:00
after we define the new app using hono let's go ahead and register well-known
2:04:06
oout protected resource and then once again bot token and then mcp in here
2:04:12
let's return a JSON which very simply invokes the generate clerk protected
2:04:17
resource metadata which has its own object for the properties and passes along the publishable key from clerk and
2:04:24
the resource URL is a new construction new URL C request param but token
2:04:32
slashmcp C request URL to string. This will ensure that it is passed along in the
2:04:40
HTTPS protocol. So that's why we need to reconstruct this URL so that it can be
2:04:45
redirected back to it. The biggest problem with this redirect URL is that
2:04:51
the protocol which I've just mentioned a moment ago often gets changed to HTTP
2:04:58
instead of HTTPS. So what we can do to fix this is modify
2:05:04
the default fetch function from HON here. So I'm going to replace this with
2:05:09
a new function which basically gives us access to the raw request parameter
2:05:15
constructs a new URL using request URL and then changes the URL protocol from
2:05:23
the headers with a fallback. So make sure you don't misspell this. And does
2:05:29
the same thing to the host using the exact same method. And then in the end
2:05:34
it returns app.fetch the fetch and then it constructs a brand new request. This
2:05:40
will ensure that the protocol stays HTTPS and doesn't accidentally uh get
2:05:47
changed to HTTP. If this is confusing you perhaps once we actually use this
2:05:54
and add it to chat GPD or claude, you can see the difference by leaving it like this and then adding this and you
2:06:01
will see that one breaks and the other one doesn't. For now, make sure you have this. Now, let's go ahead and add some
2:06:08
helper functions which are going to help us to authorize this bot token MCP
2:06:15
endpoint which is currently open to the public with only the very simple URL bot
2:06:22
token protecting it. Even though it's not protecting the endpoint, it's just protecting uh the Telegram API. So what
2:06:30
I'm going to do here is add a protected resource metadata URL helper which
2:06:36
accepts the context and the bot token and it very simply returns back a new
2:06:42
URL using the well-known OOT protected resource bot token MCP which is
2:06:48
essentially this API endpoint we've registered right here. Once we've done
2:06:54
that, let's go ahead and also register an unauthorized MCP response. So
2:07:01
function unauthorized MCP response also accepts the context and the bot token
2:07:07
and it sets the context header to this value here and the value of the header
2:07:15
to be this specific bearer which uses the function above protected resource
2:07:20
metadata URL which passes along the context with the bot token. So what this
2:07:26
function is going to do is exactly what is described here. We're going to throw 401 unauthorized and then we're going to
2:07:34
use www authenticate header to instruct the client where to find the metadata
2:07:42
for Oout protected resource information. So that is what we are doing. We are
2:07:48
creating a reusable function which we can throw so with a 401 status with this
2:07:54
specific header as instructed in the model context protocol documentation. so
2:07:59
that the client gets information about how to properly authenticate. So now
2:08:05
that we have this helper functions, let's go ahead back to our bot token MCP
2:08:12
post endpoint and let's go ahead and actually protect it. So what I'm going to do is just as I've extracted the bot
2:08:19
token from the params, I'm going to extract out header from the headers targeting the authorization key. And
2:08:27
then what I'm going to do before I attempt to create the server is check if
2:08:34
the out header starts with a bearer and then an empty whites space value here.
2:08:41
So I'm going to see if I have this right here. If I don't, I'm just going to
2:08:46
throw back unauthorized MCP response and instruct the client to where it needs to
2:08:52
go to find the uh OOTH information. But if I do have that, I'm going to go ahead
2:08:59
and open a try and catch block. And I'm going to attempt to extract a request
2:09:08
state using await clerk client which we've defined right here. Do
2:09:14
authenticate request C dot request. Accepts token oath token. And then I'm
2:09:23
going to check the response of this request state. And if not is
2:09:30
authenticated I'm once again going to throw unauthorized MCP response. And
2:09:36
finally in the catch I'm going to do the exact same thing. So if anything fails
2:09:42
or if anything is missing, I'm redirecting the client to go to the uh
2:09:48
newly registered endpoint which is well-known oath protected resource. So
2:09:53
if something goes wrong with authorization, I'm just going to redirect the client there so it can get
2:10:00
the proper information about how to authenticate because if this goes wrong, it means it didn't have the correct
2:10:07
header. If the request state goes wrong, it means it's not authenticated in the
2:10:12
first place. And if this goes wrong, it means something broke in here. And the
2:10:17
best thing we can do at the moment is once again redirect to well-known endpoint. Now let's go ahead and run the
2:10:24
remote MCP server to which we've just added OL authentication. you will have
2:10:30
this message from clerk which means that we have successfully connected clerk to the remote mcp and now that we have this
2:10:39
running on localhost 3000 let's go ahead and create a tunnel which is going to
2:10:45
expose that to an https URL now I want you to prepare claude
2:10:52
chatgbt.com and also go ahead inside of the configure tab within your application
2:10:59
And the first thing we're going to do is go inside of developers and then OAL
2:11:05
applications. And we're not going to create any OAL applications yet. Before
2:11:10
that, we're going to go inside of settings and we're going to enable the following
2:11:16
dynamic client registration. That is going to allow Oout clients to register
2:11:22
themselves dynamically which is a very cool feature because it means that we
2:11:28
don't have to manually add a custom OT application for claude instead it can
2:11:35
register itself simply by reading the wellknown endpoint. So let's go ahead
2:11:42
and see how we can do that. I would highly recommend starting with Claude AI
2:11:47
first because Claude and Chad GPT have some slight differences in how we
2:11:53
actually add connectors or custom apps. So using claude.ai,
2:11:59
go instead of customize and connectors. If you have any existing connectors,
2:12:04
click on them and then find the three dots button and click remove because on the free tier you only have one custom
2:12:12
connector. So go ahead and add it here. So what I'm going to do is I'm going to call this send kits and then just O so I
2:12:19
can differentiate it. And I'm going to go ahead and paste my HTTPS here. And
2:12:25
then I'm going to go ahead and add my environment token here. So it's this
2:12:30
one. It actually doesn't matter because we're not going to be demonstrating Telegram right now. We're going to be
2:12:36
demonstrating MCP. I'm sorry OT. But this is how the proper URL looks like.
2:12:42
So your environment key and then forward slashmcp. If you want to keep it simple, you can
2:12:48
even do just any random number like this. But if you actually want to test
2:12:53
sending a message, you're going to have to use the proper environment key. And here's a cool thing. I'm not going to
2:12:59
add anything in the advanced settings. I'm just going to click add. Let's go
2:13:06
ahead and see what happens. So right now it's checking connection. Let's give it
2:13:12
a second to see the result. So the checking connection indicator kept spinning indefinitely. So what I did is
2:13:19
I just refreshed this and then I clicked on SendKit O again. And then I actually
2:13:25
got this message. You are not connected to ScentKit O yet. And I have a button
2:13:31
to connect. Let's click on it and let's see what happens. If we've implemented
2:13:36
this correctly, we should get redirected to clerk's login page, which is exactly
2:13:42
what happened. And more interestingly, if you go back inside of your clerk's configure and then developers oout
2:13:49
applications and do a refresh here as well, you will see that claude has successfully dynamically registered its
2:13:56
own oout application with all the scopes that it needs with the consent screen
2:14:03
enabled. And it even added a proper redirect URIs. And you can see that
2:14:08
thanks to Clerk, we didn't have to implement or build our own login screen,
2:14:14
register screen, token verification, email verification, social signin, OOT
2:14:20
client or consent screen. All of that comes built in with Clerk, allowing us
2:14:26
to focus on building our app. And would you look at that? We have successfully connected to ScentKit Oout. And you can
2:14:33
see that now it can successfully read the available tools which are Telegram
2:14:38
tools. And let's quickly give it a shot. So use Sendit Om MCP to send a Telegram
2:14:45
message. Provide it with a chat ID and then the message that you want to send.
2:14:51
Let's go ahead and see if it will be able to access the tool. It should now that we have successfully authenticated.
2:14:57
There we go. Claude wants to use Telegram from Sendkit Oout. I'm going to hit always allow. And since we didn't
2:15:03
modify any other code regarding uh the telegram which is actually kept separate
2:15:09
in the shared core. You can see that this worked successfully. Now let's go ahead and try and do the same thing
2:15:17
within chat GPT. I'm going to go inside of my settings and then I'm going to go
2:15:22
inside of apps. You can see that I have removed my previous Sendit MCP and I'm
2:15:28
going to create a brand new one. So I'm going to call it Sendkit Oout MCP. So I
2:15:35
can differentiate between the other one. And what I can do is I can just go inside of the connectors here
2:15:43
out and it gives me a very easy way to copy the URL or you can just go inside
2:15:48
of the terminal and then construct the URL once again. And you can see that
2:15:53
chat GPT immediately recognizes that I have some OOT settings here. And if you
2:16:00
click here, it will actually uh tell you what it managed to load. And I'm going
2:16:05
to show you the problem that happens if you leave it exactly like this. So at
2:16:12
first glance, everything appears to be perfectly fine. We have all the scopes
2:16:17
that we want. It manages to read all the clerk endpoints. It has Open ID support.
2:16:24
Everything seems to be perfectly fine. But once we create and try to sign in,
2:16:30
we're going to hit some problems. And I'm going to explain how to fix them. And now that we have this sign in with
2:16:37
Sendit OT MCP button, let's go ahead and click on it. And there we go. We get
2:16:43
redirected back. And there is a problem connecting send kit o MCP try again
2:16:49
later. And we can actually deduct what the problem is by going inside of
2:16:55
configure developers and then inside of O applications. As you can see chat GPT
2:17:02
did manage to create its own dynamic OT application but it's missing some
2:17:07
crucial scopes like open ID. And this is actually a problem that's been
2:17:13
documented by other people in the open AI developer community as well. But
2:17:19
unfortunately, this discussion did not result in a definitive solution. So what
2:17:26
I ended up doing instead is created a custom allout application myself and
2:17:33
gave it the scopes that I want. So let's go ahead and learn how to do that
2:17:38
instead. Step one is to actually delete the application that chatgpt attempted
2:17:45
to create dynamically for itself. Let's go back inside of custom apps within
2:17:50
chatgpt.com. First things first, let's delete the one we attempted to create. Then let's go
2:17:58
ahead and click create a new app. Let's go ahead and give it a name. I'm going to copy the URL from here and just paste
2:18:06
it. And then once again I'm going to select OOTH and I'm going to click advanced OOTH settings but this time I'm
2:18:13
going to change from dynamic client registration to userdefined oout client
2:18:19
and then this will give me the information that I need to add to clerk and from clerk that I need to add here.
2:18:27
So, starting with uh the Oout client secret, let's go ahead inside of add new
2:18:34
Oout application. I'm going to call it chat GPT. And I'm going to select all of
2:18:40
the scopes. I'm going to set it to public simply because the original chat
2:18:46
GPT dynamic registration uh set it to public as well. So, I assume it needs it
2:18:52
to be public. And then I'm going to click add. And in here I get my secret.
2:18:57
So then I can immediately add the secret here. Then I'm going to go back here and
2:19:04
in the redirect URIs I'm going to copy the callback URL that's provided here.
2:19:09
I'm going to paste it and I'm going to click add. And then in here I finally have the client ID which I'm going to
2:19:17
populate right here. This will automatically select to client secret
2:19:22
post. And this is what works for me. So I'm not going to change it. If you've somehow lost the client secret, you can
2:19:29
always regenerate it. Make sure that you click save here. So this entire custom O
2:19:35
is saved. And then we can leave everything else as is. Once again, click
2:19:41
I understand and want to continue. And let's hit create. And let's hope for a
2:19:47
successful sign in this time. All right, let's go ahead and try sign in with ScentKit Oath MCP. And there we go. This
2:19:56
time once we've created a custom OT with all the scopes that we need, you can see
2:20:01
that we can now click allow which will actually sign in and hopefully now
2:20:07
redirect back to chat GPT. And there we go. Sendit OTM MCP is installed. And
2:20:13
let's do a quick test with the exact same message. use sent kit oath mcp to
2:20:19
send a telegram message to a chat ID and a specific content. And once again,
2:20:24
since we didn't actually modify the shared core, there's no reason for this to fail. So, let's go ahead and click
2:20:32
always allow. And since we are successfully connected, there we go. Message sent successfully. Hello from
2:20:39
Scentkit. Oh, wow. Let's wrap this chapter up by committing our changes. I'm going to go ahead and call this
2:20:46
commit feature add OT to remote MCP.
2:20:52
There we go. No need to push or anything like that. Just something to stage and commit our changes. I just want to add a
2:20:59
very quick disclaimer before we finish this chapter. At the moment of me recording this specific lesson, I have
2:21:07
actually finished recording the entire tutorial and I've decided to
2:21:13
additionally add this lesson because I think it's very important and it completes the entire knowledge of MCP
2:21:20
servers. The reason I'm telling you this because chances are in the next few
2:21:26
lessons I will open my remote MCP server code and you won't see any of the clerk
2:21:33
MCP tools or clerk backend or the well-known endpoint inside. That doesn't
2:21:40
mean that you have missed a chapter where I removed all of that. It just means that I have already finished
2:21:46
recording and building the entire tutorial before I decided to come back
2:21:52
and teach you how to do this as well. At this point, we've successfully developed
CLI Config
2:21:57
the CLI, the local MCP server, the remote MCP server, and the shared core,
2:22:03
which means we have everything we need to develop the scale. But the problem right now is that we don't really have
2:22:10
any of these adapters published or distributed anywhere. So the skill that
2:22:15
we would develop at this moment would only be useful for us locally. And
2:22:21
that's not really the point of a skill. The point of a skill is so that it can be distributed and so that any user
2:22:28
anywhere in the world can use it. Which means that instead of developing the skill right now, let's go ahead and
2:22:35
prepare all of these adapters to properly be distributed and published to mpm, GitHub, or anywhere else we plan to
2:22:43
deploy them. Right now, our CLI package works perfectly fine. As you can see,
2:22:49
bun rundev cli with telegram command and two arguments for chat ID and the
2:22:55
message successfully send a telegram message which we can confirm right here.
2:23:01
But the problem is if we publish this to npm it wouldn't work for anyone. The
2:23:08
reason it wouldn't work is because right now the CLI package is heavily reliant
2:23:13
on our environment file. which means that if I go inside of my environment
2:23:19
and temporarily remove the telegram bot token and try and run this again, you
2:23:24
can see that it's going to fail. So this is the experience that any user right now would get if they tried using this
2:23:33
uh package and that's what we have to fix. So for now I'm just going to bring this token back so we don't lose it and
2:23:41
then I'm going to go back inside of CLI source index.ts. ts. I'm going to go
2:23:47
ahead and I'm going to import home directory from node OS and I'm going to
2:23:53
import directory name and join from node path and then I'm going to go ahead and
2:24:01
import all types of packages from node
2:24:06
file system. So that's going to include exist in synchronized version, make
2:24:11
directory in synchronized version, read and write file, all synchronized
2:24:17
versions. I'm also going to go ahead and install one more package into our CLI
2:24:23
package here. So let's go ahead inside of CLI bun add zod. So that's the
2:24:28
package which we're going to need. Now let's go back to the root and let's just run bun install to ensure that log file
2:24:35
is updated. Now that we have zod, let's go ahead and import that as well. So inside of your packages CLI package
2:24:43
JSON, you should now have zod. And now you can go ahead and import Z from zod. Now let's go ahead and define the
2:24:51
configuration path. So this is the path where from now on each user is going to
2:24:58
store their own environment key when they first run this command. So that's
2:25:05
going to be the home directory of this userconfig folder kit folder and then config.json
2:25:14
file. Now let's go ahead and create the CLI configuration schema using zod. So
2:25:22
what each CLI configuration needs to have is the telegram bot token which
2:25:28
simply needs to be at least one character. Now that we've defined that,
2:25:33
let's go ahead and define a function uh which is going to be used to write the
2:25:41
telegram bot token from users argument to users machine. So let's develop this
2:25:48
function function write telegram bot token which accepts that token. The
2:25:54
first thing we have to do is we have to create this configuration path which we've defined up here. So let's use make
2:26:01
directory directory name config path and set recursive to true so that it can
2:26:07
create both the config and scenkid if any of those are missing. So that
2:26:12
creates the directory and now we need to write the actual file. So for that we
2:26:19
use write file. We set the configuration path and then we go ahead and open back
2:26:25
backick literal sorry template literal or backick and we go ahead and
2:26:31
immediately exit the back ticks and do JSON stringify with an object telegram
2:26:38
bot token token. We set null and two as the arguments and we end with a uh new
2:26:47
line entry here and then we open object once again for the properties and we set
2:26:52
this specific mode. So this is very specific to Unix uh operating systems
2:26:59
which basically means this file shouldn't be able to be read by anyone.
2:27:04
Now on Windows it's not exactly as secure but for this tutorial it will
2:27:11
serve its purpose. So that's how we are going to store the token that the user
2:27:17
provides us with. Besides being able to write the token to user's machine, we also need a function to retrieve it. So
2:27:24
let's create that function. Get telegram bot token. Now inside of here we are
2:27:29
first going to throw an error if the path which we define right here doesn't
2:27:34
even exist which means this function was never ever run before. So if not exists
2:27:43
config path throw the error telegram bot token is required please run sendkit in
2:27:49
it. Then let's go ahead and try and get the configuration.
2:27:55
So the configuration CLI configuration schema.parse
2:28:00
and we are basically using the configuration schema from zod and we
2:28:06
attempt to parse whatever we currently have written within our config.json.
2:28:14
We are using a specific UTF8 format here. So it's parsible and readable. And
2:28:21
if this fails, it technically means that the configuration file that we have
2:28:26
stored is corrupted or incorrect. So that's how we are going to use zod
2:28:31
parse. That's why we are using it. We could technically just do you know JSON parse here. But then we would blindly
2:28:39
allow the config to be anything. You can see the difference. Now it's type of
2:28:44
any. But if we do it through pars and you hover over then we know exactly
2:28:49
what's inside the telegram bot token which of course can be optional in a
2:28:55
sense that it doesn't have to be written inside. But if it so happens that it is
2:29:01
not written. So if this token is not existent we are going to go ahead and
2:29:07
throw an error once again. Telegram bot token is required. please run uh sendkit
2:29:13
in it and then let's go ahead and simply return the token otherwise if everything
2:29:19
else is correct. Now let's go ahead down here to the program definition and let's
2:29:25
go ahead and separate these commands. So I'm going to add a space here and I'm just going to once again call program
2:29:32
here. So I have specific uh initialization with the name and
2:29:38
description and then I have specific initialization of the telegram command. So nothing really needs changing here.
2:29:45
Okay. And I'm just going to change the description of this to send kit cli
2:29:51
backed by sendkit core. So it's a bit more specific about what it does. And
2:29:56
now that we've separated these commands, we can go ahead and register a brand new command called in it. So this is what
2:30:02
users are going to have to run to store their token. That's exactly what we're going to add in the description.
2:30:09
Configure the Sendit CLI local settings. And we are going to add a required
2:30:15
option Telegram bot token. The Telegram bot token. So users will have to provide
2:30:21
our CLI with their uh API token. And
2:30:26
then inside of this asynchronous action we receive options and we we receive the
2:30:31
telegram bot token. So that's exactly what we need here. And then what we have
2:30:36
to do is we have to write telegram bot token using options telegram bot token
2:30:43
value and we are going to inform the user which file we've modified. So saved
2:30:49
sendkit cli configuration to config path. So, it's going to render exactly
2:30:56
what this is for each user depending on their machine because it's different for
2:31:01
every user of course. Now, you might be wondering how did we get this Telegram
2:31:07
bot token camel case name because we never really specified it anywhere. We
2:31:14
don't really parse it anywhere. How do we know that we're going to have an options object and that Telegram bot
2:31:21
token is going to be cased exactly like this with capital letter B and capital
2:31:26
letter T. We didn't really specify that anywhere. Well, the answer lies in the
2:31:33
commander documentation. So in the commanderjs documentation here if we go
2:31:38
into options uh we can find exactly how
2:31:44
uh multi-word options are normalized. So multi-word options like template engine
2:31:51
are normalized to camelc case option names resulting in properties such as
2:31:57
program options template engine with capital letter e. So that's how Telegram
2:32:04
bot token flag which we've defined right here gets transformed into telegram bot
2:32:11
token property. We can read from the options. The reason I'm bringing this to your attention is because you can see
2:32:18
the obvious difference of how we extract the values in our telegram command which
2:32:24
doesn't really work by extracting it from an object but instead it chronologically matches the arguments.
2:32:31
So if I called this chat ID one two three, it would still have the exact same value because it doesn't matter
2:32:38
what this argument is called. It matters that it's first and this value is first.
2:32:43
This value is second and this value is second. With required option in
2:32:49
commander it's different. It's not chronological. It is specifically by the
2:32:55
flag name which gets translated into this. Now that we have developed the
2:33:02
init command, let's go back inside of our telegram command and let's simplify
2:33:08
it. So first things first, we are no longer going to check for our token. And we actually no longer need to check for
2:33:15
chat ID or message either because these arguments are actually validated, which is something I didn't know until
2:33:21
recently. We can also remove the entire try and catch here. And we don't really
2:33:29
have to console log uh sentences like this. Instead, it would be a better idea
2:33:36
if we console logged the JSON stringify result. Looks like we have one stray uh
2:33:45
curly bracket here. So, I'm just going to remove it. There we go. And I'm going to indent everything inside. So, our
2:33:51
action is much simpler now. We get chat ID message. we get the result and the
2:33:57
console log is a JSON stringify of the result rather than a sentence you know
2:34:03
sent a message to this message ID and this chat ID. The reason we are changing this to be a JSON is for agents because
2:34:11
agents work better with JSON in comparison to some random sentence that we can write and they also use less
2:34:18
tokens. So it's more explicit and uh more optimized for agents to simply see
2:34:25
a JSON uh output of the result. So now that we have removed the process
2:34:30
environment token, how do we actually uh get the token from here? And thankfully
2:34:36
we can just use our uh get telegram bot token function from here. So we
2:34:43
purposely used the sync version of all of these. So this isn't asynchronous. So
2:34:49
we can directly consume it here. And one more thing I want to do is I want to
2:34:54
change the program to be await program parse async. And then I want to go ahead
2:35:01
and capture any errors that might appear. And in the catch here, I'm going to console log the error with an attempt
2:35:08
to extract the error message. And then I'm manually going to attach the exit code. So this is actually the preferred
2:35:16
way of catching errors within commander. what we had here worked. But this is actually a smoother way of doing it. And
2:35:23
just like that, we have completely eliminated the need for our Sendit CLI
2:35:29
to depend on the environment token. Let's go ahead and test it out. So if you attempt to run the Telegram command
2:35:36
using the chat ID and a message, this time you're going to get a different
2:35:41
error. Telegram bot token is required. Run Sendit in it. So this is a message
2:35:48
we are displaying but right now it still doesn't exist. So we have to run bunr
2:35:53
rundev cli in it that's going to tell us that we need to pass a d- telegrambot
2:36:00
token. So let's go ahead and add it here. There we go. Saved sent kit cli config
2:36:07
to users config sendkit config json. So it's going to be different depending on
2:36:13
the operating system that you are using. Let's go ahead and try and get the value out of it. So, users config
2:36:21
sendkitconfig.json. And there we go. Telegrambot token. And you can see that my proper environment
2:36:28
file has been stored inside. So, if I go ahead and run the telegram message
2:36:33
again, there we go. We have a JSON output that it was successful. Okay.
2:36:40
True. Chat ID and the message ID. Let's go ahead and check it out. There we go.
2:36:45
Hello from dev CLI. And to confirm it works one more time, I'm just going to add some numbers to it. And there we go.
2:36:52
So, we have successfully adapted our CLI package so that it no longer depends on
2:36:58
the environment file. I would still recommend keeping it here just so you don't lose it and so you have quick
2:37:05
access to it. But the CLI package is itself no longer depends on anyone
2:37:11
having that on their machine. meaning it is ready to be distributed. Now let's go ahead and commit our changes. Get add
2:37:19
dot and let's do get commit feature
2:37:24
um improve the CLI config. There we go. No need to push anything. Let's just
2:37:30
make sure our changes are committed so they don't get accidentally overridden.
Formatting & Linting
2:37:35
In order to prepare our packages to be published, we need to introduce some kind of type check, linting, and
2:37:42
formatting to ensure that builds don't fail and so that we can successfully deploy and publish these packages to
2:37:49
npm, railway, etc. There's a wide range of tools you can use to format and lint
2:37:54
your code. Chances are you've probably encountered a tool called slint or maybe
2:38:00
a formatter called prettier. You might have also seen a modern one called
2:38:06
Biome. The one that I'm choosing for this project is Oxidation Compiler, also
2:38:11
known as OXC. I think that in comparison to all of the other ones I've shown, it
2:38:17
is the easiest to set up. It is the fastest, the most optimized, and it's
2:38:22
simply lightweight, and perfect for this project. Additionally, it's also made by
2:38:28
void zero team which is the team that currently maintains the vit project
2:38:34
which you use every time you need to start a new react app. It is also the
2:38:39
team behind the bundler which we are going to use to successfully compile all of the packages that we are using. So
2:38:47
because of that I think that oxc is the perfect llinter and formatter to use in
2:38:53
this lightweight project of ours. In the root of our project let's go ahead and install a few development dependencies.
2:39:01
This will include the ox compiler formatter the ox compiler lint tsd down
2:39:08
typescript and types node. So all of these are development dependencies and
2:39:15
let's add them in the root of our project. So once you go inside of your
2:39:21
package JSON not in any package or app but in the root you should now have types node ox formatter ox lint tsd down
2:39:31
and typescript. Now let's go ahead and create a configuration file for the formatter. So go ahead and create a
2:39:38
oxmtrc.json. JSON file and inside open an object and
2:39:45
target the following schema. So inside of your node modules ox formatter
2:39:51
configuration schema.json and in the ignore patterns simply go
2:39:56
ahead and add bun.lock. Now let's go ahead and add the configuration for the llinter. So again oxlint rc.json JSON
2:40:06
file inside once again open an object target the schema node modules oxlint
2:40:13
configuration schema.json JSON for the plugins set TypeScript unicorn and OXC
2:40:20
categories correctness error suspicious warn I'm going to leave the rules empty
2:40:25
and the environment builtin set to true that is all the configuration that we
2:40:31
need for oxc to test it out let's go ahead inside of package.json JSON and
2:40:36
let's go inside of our scripts. I'm going to go ahead and add all of these scripts here. So, we're going to have a
2:40:44
new format script which will use ox fmt-right
2:40:49
format check which will have a flag check lint which will call oxlint and
2:40:55
deny warnings and lint fix which will use the flag fix. So, make sure that
2:41:00
you've added these four new scripts to the root package json. Let's go ahead and try running bun run format colon
2:41:08
check. This is going to print out all of the files which have some formatting
2:41:14
problems in our codebase. Now let's go ahead and try running bun run lint. We
2:41:19
have no lint errors which is great. So we appear to be having some format errors. Keep in mind that in your case
2:41:26
you might have some lint errors and that's no problem at all. The reason we are doing this now is so that we polish
2:41:32
our code before we deploy it or distribute it anywhere. So we always know that it is safe to deploy and won't
2:41:39
crash for our users. So how would we fix these issues? Well, one easy way of
2:41:45
doing this is simply by calling the format instead of format check. Format
2:41:51
check, as you can see, uses the check flag which simply outputs the problematic files. it doesn't fix them
2:41:58
for us. So if we wanted to fix all of them at once, we would just have to run the format instead. Same is true for
2:42:06
lint. If we want lint command to fix all of the problematic files, we would run
2:42:12
lint fix instead. But there is also a way to do this individually for a single
2:42:19
file from your IDE. So I'm going to go ahead and choose a random file packages
2:42:24
cli source index.ds. DS. How do I fix the formatting issue from here? The
2:42:30
answer is by going inside of the extensions of your IDE and finding OXC.
2:42:36
This is obviously if you use Visual Studio Code or Cursor like I do, which share the same uh marketplace. If you
2:42:44
use something else, maybe you won't have this available. So, in that case, you're just going to use the fix commands. Once
2:42:51
you successfully install these extensions, you can actually see them down here. OXC is loaded and it has the
2:42:58
proper configuration files. If you didn't add the configuration files, it will actually throw an error. So, this
2:43:04
means everything is fine. But I can still see this X button right here. So, I'm going to click here. And you can see
2:43:10
that formatting has an error. There are multiple formatterers for TypeScript files. One of them should be configured
2:43:16
as the default formatter. So, I can click configure here or I can go ahead and just use format document here. And
2:43:24
then it's once again going to prompt me to choose the default formatter. So I'm going to choose OXC. And just like that,
2:43:32
you can see that it has modified this file. So I'm going to show you the exact diff changes of this file. No
2:43:40
functionality has been modified. You can see semicolons have been added or removed and some indentation or new
2:43:47
lines have been removed. No functionality has been changed. You don't have to worry about that. So now
2:43:54
this CLI index source is not going to appear on subsequent format check. You
2:43:59
can see that I no longer have that file listed here as problematic. So I just
2:44:04
wanted to show you how you can fix individual files uh using your IDE. So
2:44:10
to not waste any more time, let's go ahead and run bun run format in the root of our app, which is simply going to
2:44:17
update all programmatic files. And we can do the same with lin. So instead of bun run lint bun run lint fix if you
2:44:25
have any problems at all. So this will automatically modify all files and you can see that now I have several files
2:44:32
which are modified but none of the functionality has been changed only linting meaning um my apologies only
2:44:40
formatting and linting meaning indentation new lines line breaks things
2:44:45
like that nothing that fundamentally changes the functionality. So I had I don't know 14 files changed. You might
2:44:52
have 20 or maybe you had two files changed. It doesn't matter. But this is the script that we are going to run
2:44:58
before we deploy our projects. So everything is nice and clean. Now that we've solved linting and formatting,
2:45:05
let's go ahead and add one more script here in the root called a type check. So
2:45:12
this will very simply uh verify our code against the TS configuration. Now we
2:45:19
know that we don't have any type errors right now because the files would be read within our IDE but just in case we
2:45:26
can go ahead and do bond run type check and that is going to go
2:45:32
through all of our files and tell us if we have any problems. So these often
2:45:37
have to be solved manually because uh there isn't really a way a script can
2:45:43
fix them for you. So they aren't l linting issues or formatting issues.
2:45:48
They are most likely incorrect code which break TypeScript which is even more important to fix uh before
2:45:56
distributing and deploying. So if you happen to have some type errors here which I don't feel free to visit the
2:46:02
source code and then verify my code against yours to see where the problem might appear. And one more thing I want
2:46:09
to do is the reason I added types node to dev dependencies in our package JSON
2:46:17
is because I've noticed we have some inconsistencies here. So in a package
2:46:22
like core we don't have uh types node.
2:46:27
In the package like CLI we have types node in local MCP.
2:46:34
We once again have types node in our apps remote MCP. We once again have
2:46:42
types node. So it doesn't make sense that all of them uh maintain their
2:46:48
version of types node individually. I think the reason we started adding this is because uh the CLI was the only
2:46:55
package in the beginning. So we forgot to clean it up. So I think this is a perfect opportunity to do that. Make
2:47:01
sure you have one types node installed in the root of your package JSON and you can then go into individual packages. So
2:47:08
local MCP package JSON. Let's go ahead and remove the dev dependency from here.
2:47:15
Then let's go inside of core package JSON in here. We don't have it. If you do, you can remove it now. And inside of
2:47:22
CLI, let's go inside of the package. JSON here and let's remove that and the trailing comma.
2:47:28
And last one is the remote MCP. So once again, dev dependencies. Let's remove
2:47:33
that and the trailing comma. So now let's go ahead in the root and do bun
2:47:40
install. After you've done this, I would recommend once again running bun run type check, bun run format check, and
2:47:48
bun run lint to ensure you have no warnings, no errors, all files match, match, and use the correct format and
2:47:54
nothing is wrong regarding our types. And this is now a perfect checkpoint before we start distributing and
2:48:01
publishing our packages. They are now type safe, formatted, and linted. But we
2:48:06
already have several changes here and it's getting kind of hard to define the boundary between this lesson and the
2:48:13
publishing lesson. So let's make this easier for us and simply commit all of these files. So I'm going to say feature
2:48:20
add lint and formatting. There we go. And now we are ready to start
2:48:26
distributing our packages. In order to start distributing our packages, we need
Bundling
2:48:31
to create an npm account. So go ahead and do that first. Once you've created your npm account, let's go ahead onto
2:48:38
our profile. And let's create a new organization by clicking on the organizations tab and then add new
2:48:45
organization button. In here, the name needs to be unique. Feel free to use the
2:48:50
name of your account as it recommends here. Chances are that's not going to be taken. And choose the unlimited public
2:48:57
packages which is a free option. So you don't have to pay anything. Once you have created a new organization with a
2:49:04
unique name, you will see it listed here under organizations. And inside you will
2:49:09
see that you have no packages listed. This is of course if you created a new
2:49:14
organization. If you want to use an existing organization, that's perfectly fine. You can see that in this one, I
2:49:20
have a couple of packages. But to make it easier and so that we are all on the same page, I'm going to start from a
2:49:27
completely empty organization. And we're going to learn how to add public packages here. What you have to do next
2:49:33
is connect your command line interface npm to the npm account you've just
2:49:39
created. So if you type npm who am I, chances are that you're going to get this error. unauthorized. So the next
2:49:46
step you have to do is npm login. And once you've successfully logged in, go
2:49:51
ahead and try the who am I command once again. And it's going to print out your
2:49:56
account name. Now we have to rename all of the packages which we plan to publish
2:50:01
on npm to belong under the organization which we've just created. The reason we
2:50:08
are doing this is so that there are no name conflicts when you try to publish your package because chances are someone
2:50:16
already took the name scentkit or whatever you've named uh your project.
2:50:22
So with this method you can publish your packages and name them whatever you want
2:50:27
and they are simply going to be scoped under the organization name you've created. So go inside of your
2:50:33
organizations and find your organization name. So for me that is CWA-DEV.
2:50:40
The first package we know we are going to publish on npm is the CLI package. So
2:50:46
let's change the name to be CWA-dev/sentkit.
2:50:51
So from now on this is the name of that package. Now let's do the same for the rest of our packages. So our core
2:50:58
package is no longer going to be named Sendkit core, but instead it's going to have a prefix of our organization name.
2:51:06
And same thing is true for the local MCP. Instead of sendit MCP, it's going
2:51:12
to be prefixed with our organization scope. So the only packages we've had to do this to are the packages which we
2:51:19
plan to deploy or publish on npm which means that for our apps remote MCP we
2:51:25
don't have to change anything in regards of the name of the package because it's not going to be published under any
2:51:32
organization it's just going to be deployed somewhere but that doesn't mean we are done take a look at the
2:51:38
dependencies here it's expecting to use scentggetkit core from this workspace
2:51:44
but Right now there is no sentit core because we've renamed it to CWI dev
2:51:50
sendkit core. So because of that go inside of remote mcp package json and
2:51:55
change the name scentkit core to be the proper rename which we just did. Now
2:52:02
let's go over all the other package jsons which might need this changed. For
2:52:07
example the cli package and its package json. It's also using ScentKit core. So
2:52:14
let's change that to be the new name. Now let's go ahead and check the local MCP package JSON. Once again, it's using
2:52:21
ScentKit core. So let's change it to the new name. And then one thing we can do is just do a search for SendKit core and
2:52:30
close the LO file. There we go. So now we know that we fixed all the package
2:52:35
JSON files, but we still need to fix the imports. The imports are not throwing
2:52:42
errors right now because we didn't refresh the LO file. So I think it will be better if we do that first. So make
2:52:48
sure that you have modified all of your package JSONs to no longer use scent kit core but instead to use the new renamed
2:52:57
package. And also make sure that your core is scoped to organization that your
2:53:04
MCP is scoped to organization and that your CLI is scoped to an organization.
2:53:10
So you should no longer have sentit core anywhere in the package JSONs in the root of our app. Let's go ahead and run
2:53:18
bun install. As you can see this is this has removed three packages and it has
2:53:23
installed three packages. So now that lo file has been refreshed. If you search
2:53:29
for scentkit core once again here and perhaps if we reload the window uh this
2:53:36
should start to throw us some errors. What I recommend doing as well is also
2:53:42
doing a complete delete of your node modules and then run bun install again
2:53:49
and then go inside of your IDE and simply reload window or just restart
2:53:56
your IDE and at that point you should start seeing errors for any existing
2:54:02
scent kit core. So what I'm going to do now is search for sentit core within my
2:54:08
project here and I'm going to fix file by file. So the first one I found is within remote mcp sourceindex.ds.
2:54:17
So instead of sendkit core I'm going to change it to the package we've just created and I'm going to collapse this
2:54:23
for you so you can see the full name. So cwa-dev sendkit core for you. Of course
2:54:29
this organization name is going to be different. And as you can see now we have no errors. So let's continue. We
2:54:36
have two more files. So this one is within packages. CLI source index.ds. So
2:54:43
our CLI index had an incorrect package. And now it has the correct one. And
2:54:48
let's search for the last one. And this one is located instead of local mcpindex.ts.
2:54:55
So once again change the broken package to the new package which works. And I'm going to collapse so you can see the
2:55:01
full name in my case. Again, for you this will be different depending on your organization name. Now that we have our
2:55:09
package names in order, let's go ahead and add the actual build or bundle
2:55:14
scripts. So the first package we want to do this on is the core package because
2:55:19
every subsequent package of our entirely depends on this. So what are we going to
2:55:26
use for bundling TypeScript into distributable JavaScript? So we already
2:55:32
saw a sneak peek when we added ts down in the dev dependencies of our root
2:55:40
package JSON. So if there's a chance you don't have this, simply go ahead in the
2:55:46
root and bun add- you can see the exact uh line of packages when we also added
2:55:54
tsd down. So this is the one that we care about and we are now going to use it to bundle. So you can read more about
2:56:02
TS down on its website. And fun fact, it's also made by void zero which is the
2:56:08
team behind uh VIT and behind our formatter and llinter that we are using.
2:56:15
So now that we solved that, let's go inside of core here and let's create uh
2:56:21
a tsconfig.build.json
2:56:27
file. So this file is going to extend the root tsconfig. So it's going to
2:56:34
target this tsconfig at the root here and it's going to extend on it with this
2:56:39
compiler options. This is what it's going to include. So make sure you have the source folder otherwise it's not
2:56:46
going to work. And it's basically targeting every single TypeScript file within this source folder. And it's
2:56:53
going to exclude the dist folder and the node modules. So that's what we need for
2:56:59
the tsconfig. And now we also need to add a tsdown.config.ts.
2:57:06
So go ahead and import define config from tsd down. Go ahead and set the entry to be sourceindex.ts
2:57:14
and then make sure all of the configuration looks like this. The out extensions are going to be js for all
2:57:22
JavaScript files and d.ts ts for all type files. So we are going to have
2:57:28
fully types safe packages this way in a standard industry pattern that is
2:57:33
expected whenever someone installs a package. In here you can see that we explicitly mention to never bundle zod
2:57:42
because zod is the only dependency that we have for the core. So because of that
2:57:47
we want to make sure that we don't accidentally bundle that inside of our package. So in order to test if our tsd
2:57:55
down configuration is working, let's go ahead inside of the package json of the core package here and let's add a
2:58:03
scripts build and a very simple command tsd down. We could technically go ahead
2:58:09
and change directory within our packages core and then run the build script, but
2:58:14
I think it's easier if we make it so that we can run the build script within
2:58:19
the root package. So inside of the root package JSON after formatting and
2:58:25
linting let's go ahead and add build core which will do bun run d-filter
2:58:33
and then use the package name which we registered in this package json. So
2:58:39
double check that your core has that name. Whatever is your name for this package go ahead and add it here and run
2:58:46
build script from that package specifically. So, make sure it's named
2:58:51
build. Let's go ahead in the root of our project and run bun run build core. And
2:58:58
you can see that it successfully bundled uh our core package using ts down. So
2:59:06
now within our packages core, you should see a dist folder and inside of here you
2:59:11
should see index.d.ts which carefully stored all of our types.
2:59:19
We also have index.js which is the compiled JavaScript code and we have a
2:59:25
map file right here. So industry standard production ready bundling here
2:59:31
ready to be distributed. Now let's go ahead and do the same thing for other packages. Let's go ahead and do it for
2:59:38
the CLI package next. So inside of CLI let's add a tsconfig.build.json.
2:59:46
Make sure you have the exact same properties inside. And then let's go ahead and add tsd down.config.ts.
2:59:53
In here, it is extremely important that your dependencies correctly add the neverbundle property. So inside of the
3:00:01
CLI package, inside of package JSON, you can see the dependencies commander, our
3:00:07
sentit core scoped under your organization, and zod. So those three dependencies need to be omitted from
3:00:14
bundling here. So make sure that those are the exact ones which you add here. I would suggest copying and pasting from
3:00:21
dependencies so you don't accidentally misspell them. And now let's go inside of the package JSON of the CLI package.
3:00:29
Let's go ahead and add scripts. And let's go ahead and register the build script which very simply invokes the TS
3:00:36
down. And now that we've registered the build script to the CLI package JSON,
3:00:41
let's go to the root package JSON and let's register build CLI script which is
3:00:47
going to filter to the sendkit package because this is what we named our CLI
3:00:53
package. We simply call it sendkit. So there is no send kit CLI. It's just sent
3:00:58
kit and we call its build script. So once again, double check that this name
3:01:05
is exactly what you see here in the CLI package. JSON right here. And then let's
3:01:11
go ahead and try bun run build CLI. It uses DS down. And there we go. We
3:01:19
successfully built that as well. And now let's do the same for the local MCP
3:01:24
package. So we start by adding the tsconfig followed by the tsd down file. Inside of
3:01:33
the tsd down file, make sure you target source index.ts and make sure that inside of the never
3:01:39
bundle, you add sendkit core and model context protocol. But let's check if
3:01:45
that's all we need to do. For example, we also have zod here. So let's go ahead
3:01:50
and add that as well. So always double check with the actual packages that you
3:01:56
have inside. So all of these dependencies need to be omitted here in the never bundle. Now let's go ahead to
3:02:03
the package JSON of the local MCP. Let's go ahead and add scripts build dsdown.
3:02:10
And then just like for the previous two, let's go inside of the package JSON here and let's registered build local MCP to
3:02:19
target our scope sent MCP build. And let's go ahead and try it out. So bun
3:02:25
run build. This will be local MCP. And there we go. So all three of our builds
3:02:31
are successfully working. At this point, once again, it's a good idea to stage all of your changes. feature add build
3:02:40
scripts to packages. So all of them are committed and so you don't lose all of
3:02:46
these changes now that we are in a state where we can successfully create a dist
3:02:51
folder for every package which we plan on publishing. So we can now adapt the
3:02:56
package JSON to read from this generated dist folders and publish that
3:03:02
information to npm. Now that we have the ability to bundle or build our packages,
Publishing
3:03:08
let's go ahead and modify their package JSON manifests so that they are compatible to be published to npm. Let's
3:03:14
start with the core package as this is the one that all other packages depend
3:03:20
on. Inside of the core package JSON, the first thing I'm going to do is after its
3:03:25
version, I'm going to add the files property. As you can see by its definition, the files field is an array
3:03:33
of files to include in your project when published. So the ones that we are
3:03:39
interested in to be distributed to npm is the dist folder. We don't really care
3:03:44
about the source folder. We care about the dist folder because this is where the bundled files are going to live. And
3:03:52
since we're about to publish this package, it's no longer going to be private. So let's go ahead and remove
3:03:58
that property. Now let's go ahead and add a few more elements here. So before
3:04:07
exports, let's go ahead and add main module and types. So we are going to
3:04:14
target the dist folder and we're going to specify the main field which is the entry point to our program. We are going
3:04:21
to add an ECMAScript module ID which is once again the primary entry point of
3:04:27
our program but for ECMAScript and we are going to specify the types property
3:04:32
to point to our bundled declaration file. So thanks to tsd down we have all
3:04:39
of those. So inside of the dist folder we have index.d.ts and index.js.
3:04:46
Now let's go ahead and slightly modify the exports here. So the entry point will stay the same but it's going to be
3:04:53
an object and we are going to um separate the types and the import. Once
3:04:58
again make sure that you are targeting index d uh d.ts and index.js for the
3:05:05
import. After the exports we can go ahead and add a whole new property here
3:05:10
called publish config and give it an access property of public. And the last
3:05:16
thing we have to do is add a few more scripts after the build script. So
3:05:21
that's going to be pack colon dry which will run bun run build which is
3:05:26
essentially tsd down. And then it's going to run npm pack- dry run. And
3:05:32
we're going to add a pre-publish only which is a reserved file name. As you can see the definition here run this
3:05:39
before the package is prepared and packed only on npm publish. So this is a
3:05:46
reserved name. So you have to call it exactly this. So before we publish to npm, we are going to make sure that we
3:05:53
do bun run build and save this file. Now once again so we don't have to enter
3:05:59
this package every time we want to build pack or publish. Let's go ahead inside of package.json in our root file. And
3:06:07
after the development scripts, let's go ahead and add release pack core, which
3:06:13
will run bunr run-f and then the name of our core package
3:06:19
and simply invoke pack dry. Okay, so make sure that this name right here
3:06:26
cwa-dev/sentkit core is exactly what you have in the
3:06:31
core package json here. So that's exactly what I have here. So feel free to copy it and then just paste it here.
3:06:39
Okay. Make sure you also have this script pack colon dry. So this is the
3:06:44
exact script which we've added right here which runs the build and npm pack.
3:06:50
So what I can do now is from the root of my app here I can bun run release pack
3:06:57
core which is going to run uh which is going to build using ts down and then
3:07:03
it's going to do npm pack- run. Now let's go inside of this built
3:07:10
and npm packed package. So inside of our packages core and let's go ahead and do
3:07:16
npm publish- public. So once again it's going to run
3:07:22
build. And now we have to authorize our npm account. So let's do that. And once
3:07:28
you've authorized you will see a successful output here of a new package
3:07:33
under your organization with the name Sendkit core and the version 0.0.0.
3:07:40
And of course, if you now go inside of your new organization here, you will find this published package, SendKit
3:07:48
Core with version 0.0.0. So now that we've published the core package, let's go ahead and publish the
3:07:55
CLI package. Let's go inside of the CLI package JSON. Let's go ahead and remove the private flag. Let's go ahead and add
3:08:02
the files property to once again be this. Then let's go ahead and once again
3:08:08
after the type module add our main module and the types all to read from
3:08:13
the dist folder. And let's go ahead and modify our exports. So I'm going to add
3:08:20
it right here. It looks like we didn't have it before. So make sure you have it now. Exports to separately import the
3:08:26
types and the actual entry point. So inside of your list here, make sure you have index.d.ts
3:08:33
and index.js. Besides that, let's go ahead and also define the publish config and set it to
3:08:41
access public. And let's go ahead and add two scripts besides build here. Pack
3:08:48
dry and prepublish only bun run build. But we are not done yet. So let's take a
3:08:55
look at what this is. This is a CLI package which means that users are going
3:09:00
to install it on their machines with an intent to run it in a binary. So they
3:09:06
will probably want to do something like Sendkit. So how exactly do we register
3:09:12
what name gets installed once the user does mpm install-g
3:09:18
and I assume it's going to be the name of my organization forward slash
3:09:24
sendkit. Right? So how do we know that from this installation point they get
3:09:29
this as the command? There is a property for that as well and it's called a bin.
3:09:36
So inside of the bin go ahead and tell give it the name of the command which you wish to be executed. So scentkit and
3:09:44
make it target the entry point like this. So once the user installed this
3:09:49
the sentit is going to be the name of the actual command. So if you change
3:09:54
this to send kit one two three in that case it's going to be send kit one two three once installed. There is one more
3:10:01
thing we have to do before we establish the CLI package as something executable
3:10:07
and that is by going inside of source index.ts and at the top of the file very
3:10:14
important before anything you need to add a sheibbang. So a shebang is
3:10:20
basically an instruction which tells your computer uh what program should run
3:10:26
this file. So we are going to specify for this to be node. User needs to have
3:10:32
node installed on their machine if they wish to successfully run our send kit
3:10:38
command. So make sure you have that and save the file. Now you might be thinking once we actually publish this to npm
3:10:46
what will this dependency resolve to because right now it's written as
3:10:51
workspace which basically means for our local development simply use this folder
3:10:58
right here but when we publish this on npm it's going to be a little bit different won't it so should we
3:11:05
explicitly write our core version here which we've just published on npm Or is
3:11:12
there a way that we can keep the local version for our development purposes and
3:11:18
every time we do npm pack and npm publish somehow magically resolve this
3:11:24
to whatever is the latest version. Well, there actually is a way we can do that and that is by not using npm packac and
3:11:33
npm publish but instead using bunpack and bun publish. The reason we need to
3:11:41
use bun for this is because we are already within uh bun as the monor
3:11:47
repository. So in order to use its monor repository quirks we have to use bundev
3:11:55
tooling for this. So let's go back inside of packages cli package.json JSON
3:12:00
and to ensure that this workspace always resolves to the latest published version
3:12:05
of that package because we just published scent kit core and so that we don't have to manually change this to
3:12:12
0.0.0 zero which complicates whenever we want to test something locally here
3:12:18
right let's go ahead and change this script backd try to not be npm packac
3:12:24
but instead bun pm pack you can find the documentation for bunpm on their website
3:12:32
under the package manager so bunpm is basically package manager utilities and
3:12:37
it offers the pack command which is the same as npm pack so it even has the
3:12:43
exact same option here dash dry run. So I would recommend actually changing the
3:12:51
same thing in core package JSON right here. So change this from npm pack to
3:12:58
bunpm pack. I purposely didn't want to do this uh for core because I wanted to simplify
3:13:05
it and just say we're using npm. Let's use the npm command to publish it. Bun
3:13:10
is fully compatible with npm and since we are using a monor repository, it's actually quite handy for us to use
3:13:17
bundev tooling. It doesn't make too much sense to use it in scent kit core because scent kit core doesn't depend on
3:13:25
anything besides zod. But the moment we try to publish a CLI package which
3:13:31
depends on the core package, we run into a problem because this workspace alias
3:13:38
right here means nothing to npm. If you try to do npm pack and npm publish, I'm
3:13:46
pretty sure it would throw an error here because it has no idea what version is
3:13:51
this, where am I reading this from, right? So, npm isn't aware of the bun
3:13:57
workspace within which we are working. So, for the pack dry, just make sure you're using bun pmpack d- dry run here
3:14:05
in the CLI and also in the core right here. And now, let's go ahead and
3:14:11
register all of this scripts we've just made for the CLI package into the root
3:14:17
package. JSON right here. So right after release pack core, let's go ahead and
3:14:23
add release pack CLI bun run filter CWA-dev
3:14:30
sentit pack dry which is now going to use the bun variant. So in the root of
3:14:35
your project, let's go ahead and do bun run release pack and let's see the
3:14:41
output. As you can see, we have successfully uh bundled it using tsd
3:14:47
down. And then we run bun pmpac dry run, which has successfully created the
3:14:54
tarball and simulated that it correctly works. So once we've done that, let's go
3:15:01
ahead and go within our packages CLI and instead of doing npm publish, so this
3:15:08
would be the usual. Let's go ahead and change this to be bun publish. And as
3:15:14
you can see, it's doing the exact same thing. It's building it and then it's asking us to authenticate with npm. So
3:15:22
regardless of the fact that we just used bun publish, bun doesn't have its package registry. It's using the npm
3:15:29
registry. So it's the exact same process but the difference is is that it
3:15:35
resolved all of those uh internal aliases for versions within our monor
3:15:41
repo and its packages. So go ahead and authenticate and after authentication you will see a successful output of a
3:15:48
brand new package being registered on npm called scentkit with a version 0.0.0
3:15:53
zero. And if you go within your organization, you will find that brand new package. And inside of here, you
3:15:58
will find three dependencies, ZOD, Commander, and our previously published
3:16:04
package, ScentKit Core, meaning that it correctly resolved the version of this
3:16:11
deployed published package. You can even go inside of ScentKit Core and click on dependence. And even though this doesn't
3:16:18
immediately resolve once you actually click on the number here it will show you that there is one dependent on
3:16:26
sendkit core package called scentkit. Now let's go ahead and test if the
3:16:31
package is actually working. So I'm going into the root of my uh entire machine here and I'm going to go ahead
3:16:38
and install CWA scentkit globally and let's see what happens once I type in
3:16:44
scentkit. There we go. We have successfully installed scentkit globally
3:16:49
and we can now use it outside of this project. So now scentkit in it is going
3:16:55
to store the telegram bot token somewhere else. Scentkit telegram is going to send the message. So we have
3:17:01
successfully published our CLI package and as you can seekit binary is registered on this user's
3:17:08
machine running node. Now let's go ahead and publish the last package which is
3:17:14
local mcp. So inside of its package JSON right here, let's remove the private flag. Let's go ahead and add a bin. So
3:17:21
once again, this is going to be used by MCP agents in form of uh a binary
3:17:28
executable. So we need to register the name which is sentit-m
3:17:34
and make it point to index.js within the dist folder. Make sure you register the
3:17:39
dist folder under the files property. Now let's go ahead and add the usual
3:17:46
main module and types all coming from the disc. Now let's go ahead and modify
3:17:51
our exports property to change the entry point to separately aim for the types
3:17:58
and for the import. Then let's go ahead and add publish config access set to
3:18:04
public. And then let's go ahead and add our scripts here. So pack dry and
3:18:11
pre-publish only. And let's make sure that in the pack dry we're actually using bun pm pack-ry
3:18:19
run. So this version right here sent kit core properly resolves. And now let's go
3:18:27
ahead and register its script. So I'm going to go ahead inside of the package
3:18:33
json here. We can duplicate this and this will be called local MCP and it's
3:18:40
going to call sendkit MCP. So perhaps the name of this can be MCP in that
3:18:47
case. Actually, it might be better if this was called local MCP so that every time we run this script, we are very
3:18:54
explicit about what we are doing because this semantic right here, release pack
3:19:00
and then the name of the package could very well later be for the remote MCP.
3:19:05
And since we already do dev local MCP build local MCP, let's also do release
3:19:12
pack local MCP regardless of the fact that the name is Sendit MCP. So the
3:19:18
reason the name here doesn't have local inside is because it doesn't need to. Local and remote are simply aliases for
3:19:25
us the developers to understand the differences between this folder right here and this folder right here. So
3:19:33
let's go ahead and do bun run release pack local mcp and then let's go inside
3:19:39
of our packages local mcp and inside of here bun publish access public once
3:19:48
again let's authorize and let's see this package published and just like that we now have scentkit mcp in our
3:19:55
organization under packages you can see again three dependencies one of them scentkit core meaning we once again
3:20:03
successfully resolved the published version of scentkit core package and we
3:20:08
can now try installing sentit mcp once again even though it won't really be
3:20:14
used like that uh the way it's going to be used is within this mcp.json
3:20:21
and open code.json. So perhaps I'd rather show you how to properly write
3:20:27
this configuration, not by running the local development script, but instead by
3:20:33
running the published package. The only thing we have to change is the command right here. So instead of bun rundev
3:20:40
local MCP, let's go ahead and use npx-y.
3:20:46
And let's go ahead and point to our newly published package. And for the cloud code configuration, change the
3:20:53
command here to be npx and then go ahead and change the arguments here to be -y.
3:21:00
And then once again your published package. So those are the two configs we have the mcp the local mcp for cloud
3:21:07
code and the local mcp for open code. Both of them are now using the published
3:21:13
package. Let's try and test all of these published packages to confirm that they are still working. So, I'm going to go
3:21:19
ahead and do sentkit in it--telegram-bot-token.
3:21:24
And then inside, I'm going to store my token. Once I store my token, you can see the configuration here that it saved
3:21:31
the config. Chances are this config already existed because it's the exact same one that we do during development.
3:21:38
Now I'm going to go ahead and do send kit telegram and I'm going to add the chat ID and the message hello from CLI
3:21:46
deployed on npm. And let's check it out. Here it is. Hello from CLI deployed on
3:21:54
npm. So our published sendkit package officially works. And whoever downloads
3:22:00
it and installs it on their machine can do these two steps and successfully send
3:22:05
telegram messages to their bot. Now let's go ahead and try open code and clot code. Make sure you are running
3:22:12
them inside of your project because you still need the configuration for it. So
3:22:19
it no longer depends on local MCP package here but it still depends on the
3:22:25
configuration which we wrote here. So if you truly want to test this outside of this project to confirm that it works,
3:22:32
just open a new folder and add mcp.json with this exact values inside or open
3:22:38
code.json with this exact values inside. For simplicity sake, I'm just going to be in the same folder. So let's go ahead
3:22:45
and do claude and let's go ahead and do open code. So as you can see, it immediately recognized a new MCP server
3:22:52
here because we updated it. So, I'm going to confirm that we can use that here. And it looks like we've hit a
3:22:59
problem. Right here, I can see it says one setup issue MCP. So, when I go into
3:23:06
my MCPS, I can see that sentit has failed. And even if I try reconnecting,
3:23:11
it still fails. And it also fails within Open Code. Scenkit failed. So, what did
3:23:17
we do wrong? And how do we debug this? The first thing that I did is actually
3:23:22
went ahead and run the package which I wrote in the configuration. So this is
3:23:29
the one sent MCP and look at that it actually fails. It says command not
3:23:34
found. What is the problem? Well, we forgot to do one thing. I forgot that
3:23:39
this is an executable which means it needs a shebang. So let's go ahead inside of our packages CLI source index
3:23:47
and let's copy the shebang which we wrote up here and then let's go inside of local MCP source index and let's go
3:23:55
ahead and add it at the top. That was the problem. That is the issue. Let's
3:24:00
confirm that instead of local MCP package JSON, we didn't forget the bin here. Sendit MCP. Great. So now that we
3:24:09
have the shebang, let's go ahead and publish this entire package again. Since
3:24:14
we are publishing it again, we have to modify its version. So I'm going to bump
3:24:19
this one to 0.1 instead of sendit MCP package JSON. So make sure that you do
3:24:25
the same. So I'm going to go ahead and do bun run release and this is pack and then this is local MCP. Let's go ahead
3:24:33
and ensure that's correct. Then let's go inside of our packages local MCP and let's go ahead and do bun publish access
3:24:41
public. So once again let's authenticate and that will update the package. Once
3:24:47
you publish an update you can see the new version right here. So 0.0.1.
3:24:53
Keep in mind that sometimes mpm doesn't really update the version right away. You can see that in here it still says
3:24:59
it's on version zero. So don't worry if that happens. uh try and go inside of your organization and chances are that
3:25:06
you're going to see the updated version number right here. But even if it doesn't appear here, don't worry. Here's
3:25:13
what you can do right now. Simply go ahead and test the command again. So when we tried running this previously,
3:25:19
it threw an error because of the missing shebang. But if we try it right now, it appears to be hanging, which is exactly
3:25:26
what we expect because this is intended to be consumed by agents and not by humans. So even after a successful test,
3:25:34
it might still appear as if the MCP is not working both in cloth code and in
3:25:40
open code. I can see that there are no MCPS connected. I simply have to assume that this is due to stale cache. So go
3:25:47
ahead and change from npx to bunx which hasn't been cached. And let's go ahead
3:25:53
and change that in both mcp.json and open code.json. So just change this to
3:25:59
bun x which is essentially the equivalent on windows. It might be bun
3:26:05
and then x. So if bun x doesn't work for you on Windows, try doing this as a
3:26:13
separate argument, right? But try this first. I'm not really sure because I don't use Windows, but I did have some
3:26:20
users reporting that BunX doesn't work for them out of the box. Either way, it should work with NPX. It's just that
3:26:27
it's cached on my machine this way. So I have to do something to uh show that it
3:26:32
works. So once I try cloud now, there we go. Magically works all of a sudden.
3:26:38
Send kit connected. And let's try open code. And hopefully there we go. One
3:26:45
successfully connected uh MCP. So this just shows we've successfully published
3:26:51
this and we have fixed the issue by adding a shebang. It's just that MPX is
3:26:56
still cached on my machine to use the wrong version. Let's go ahead and try it out by sending a message. Use ScentKit
3:27:03
MCP to send a telegram message. Provide it with a chat ID and the message hello from cloud code deployed local MCP. And
3:27:11
let's go ahead and do the same in open code. And now let's go ahead and give it the permission here because it needs it.
3:27:18
Open code I think doesn't need permission. So we should now have two messages. And we do. Hello from open
3:27:24
code deployed local MCP and hello from cloud code deployed local MCP. So we
3:27:30
have successfully verified that all of the packages we have published so far
3:27:36
are properly working and usable to all users who wish to install it on their
3:27:42
machines. So we have successfully taken this project from local only to
3:27:47
something anyone anywhere can use. Now it's time to create a GitHub repository
3:27:53
for this project so that we can actually deploy the remote MCP by simply
3:27:59
connecting this GitHub repository to a service like railway, versel, etc. And
3:28:04
let's make this repository public so that we can finally create a skill file
3:28:10
which can then be distributed by simply pointing to the location of the skill in
3:28:15
this public repository. So, I'm going to give this repository a name of SendKit.
3:28:20
I'm going to choose the visibility to be public. And I'm just going to hit create
3:28:26
repository. And since it already exists, we're going to use this option right here and not this one. So, it already
3:28:33
exists. So, first things first, we have to commit all of these changes here. So,
3:28:38
let's go ahead and do get add get commit feature add npm publishing. And once
3:28:44
you've committed all of your changes, simply paste those three lines we just copied from GitHub down here. And what
3:28:52
that's going to do is it's going to synchronize this local repository with
3:28:57
this GitHub repository right here. Now that we have the GitHub repository
3:29:02
published and all three packages published on npm, the only thing left to
3:29:07
do besides the skill is to deploy the remote MCP application. There are a few
3:29:14
things we have to modify in remote MCP package JSON before we can deploy it. Unfortunately, most cloud service
3:29:21
providers do not recognize the monor repo catalog version which we alias for
3:29:26
using the workspace tag. Because of that, we have to specify the actual version that is published on npm. You
3:29:33
can find that version by going inside of your packages core package json. So for me, that's 0.0.0.
3:29:42
So I'm going to go ahead and specify it right here. The second thing we have to do is add a start script which will very
3:29:50
simply be bun run source index.ds. This script is needed so that when you
3:29:57
deploy it there is a start command which is recognized by the service and it's
3:30:03
runnable. It will also purposely have bun run at the beginning. So it
3:30:08
recognizes the package manager that we are using. Let's quickly test it out by going inside of apps remote MCP and
3:30:15
let's simply do bun run start. And you should see the following message. Once you've done all of that, you can go back
3:30:22
to the root and do a git commit. So I'm going to commit very simply here feature
3:30:28
update remote MCP. And let's do a git push. And now that the latest commit in
3:30:34
our GitHub repository is this commit in which we've updated the remote MCP, we
3:30:39
can safely deploy it. The remote MCP Hono server can be deployed anywhere
3:30:45
since the code we wrote is entirely provider agnostic. That being said, I'm
3:30:50
going to be using Railway to deploy my application and you can do the same using the link on the screen which will
3:30:57
also give you access to $20 in Railway credits. Once you've created your account, go inside of your dashboard and
3:31:03
create a brand new project. Choose the GitHub repository option and select
3:31:09
ScentKit. Because of the way we've structured our monor repo, Railway has recognized that ScentKit remote MCP is
3:31:17
the only deployable application. So that is once again the reason why we've
3:31:22
separated it into apps folder and we haven't put it within the packages folder because the apps is a boundary.
3:31:30
This is deployed. This has some kind of HTTP uh transport or protocol and
3:31:37
packages are something that are going to be either used internally or published on npm. So this isn't just semantics or
3:31:45
opinionated folder structure. This is an industry standard so that most cloud providers recognize your monor repo and
3:31:54
intelligently extract the remote MCP deployment. Now let's go inside of the
3:31:59
settings for this service and let's find a button to change or add a root directory. You can do this on Railway,
3:32:07
Versel, Netifi and most major providers. Just search for something similar to
3:32:12
root directory and then in here you will most likely see autocompletes of existing folders within your codebase
3:32:20
and go ahead and choose apps remote mcp. So we want to build and start this
3:32:27
application from this specific folder. We don't want to do it from the root
3:32:32
because that's just going to mess up all of the catalog workspace versions. So we
3:32:38
are purposely isolating this deployment to appear as if it was a standalone
3:32:43
application unrelated to this monor repo. That's because we change the package json version here to an exact uh
3:32:51
number semantic version and not use the catalog workspace tag. So if we were to
3:32:57
deploy from the root that would cause some problems with versions. So because of that you have to change the root
3:33:03
directory here. That should be all you need to do before you deploy. Just make sure that this is preserved. So you can
3:33:10
close this. Click again in the settings and make sure you have this root directory. And then let's go ahead and
3:33:15
click deploy. Once you have a successful deployment, you can generate a domain by
3:33:21
going inside of settings networking and click generate domain. And just like
3:33:26
that, you will get your custom domain. If it asks you to enter a port, you can
3:33:32
put 8080. And now that you have a static and deployed remote NCP URL, you no
3:33:39
longer have to use the temporary angro URL, you can disconnect that. You can
3:33:44
even completely delete it from the list of applications that you have. Go ahead and create a new app Sendkit production
3:33:53
and then go ahead and use the new URL which we just deployed using HTTPS. So
3:33:59
you can see this is my production URL on railway forward slashmy environment
3:34:06
token for telegram slmcp and set it to be no out. Let's go ahead
3:34:12
and click create and let's see if it's going to successfully connect. And there we go. Looks like it all works meaning
3:34:19
we have successfully deployed the remote MCP. You can of course do the same thing
3:34:25
onto claude.com. Just make sure to delete your existing uh scent kit
3:34:30
connector because it only allows you to have one custom connector. So let's go ahead and click add custom connector.
3:34:37
Send kit production. I'm going to paste that URL with my Telegram environment
3:34:44
key forward/mcp. I'm not going to fill in allout client. And I'm just going to click add. And
3:34:50
there we go. It recognized the tool Telegram, meaning once again it successfully read the MCP metadata and
3:34:58
information, meaning this is completely correctly deployed. At this point, some
Deploying OAuth
3:35:03
of you might be confused or your deployment is crashing because we didn't
3:35:08
add clerk environment keys. And you might be wondering, how come my app doesn't need clerk environment keys, but
3:35:16
your app is crashing? And how come when I've connected the deployed remote MCP
3:35:22
server to chatgpt.com I selected the no out option even though
3:35:28
we had a whole chapter about adding the OL authorization. The reason is very
3:35:34
simple. Before I decided to record the chapter on how to add all out
3:35:40
authorization to our remote MCP server using a clerk. I have already finished
3:35:46
the entire tutorial. So that lesson is an extra lesson I've decided to add to
3:35:52
this tutorial. So because of that, I didn't include it in the deployment
3:35:57
steps. So that is what I'm going to do now. I'm going to show you some slight changes that you need to do. So your
3:36:04
deployed remote MCP server also has Clerk's O protection. So the only thing
3:36:10
you actually have to do is add clerk publishable key and clerk secret key
3:36:16
inside of the variables section inside of your railway service. So simply click
3:36:23
raw editor and go ahead and paste the environment keys here. That's all you
3:36:28
need to do. And after that hit deploy. Once your app successfully redeploys,
3:36:36
you're also going to have to connect to chat GPT by selecting the OOTH
3:36:42
authentication and of course using your railway deployment URL in here. Then
3:36:48
inside of here, you're going to need to select userdefined OOT client. You're going to copy the callback URL and
3:36:55
you're going to paste it within your clerk's chat GPT or out. If you need a
3:37:01
reminder, I would highly suggest going back to the chapter where I implement uh
3:37:07
all out for chat GPT and claude. And for claude, you actually don't need to do
3:37:13
anything because claude can successfully create its own uh all out client. But
3:37:18
chat GPT needs some help. So, it's a bit more complicated. Nevertheless, once you
3:37:24
add these environment keys, you will have uh wellknown endpoint which
3:37:30
basically instructs clients to where to find Oout information. Once again, I
3:37:36
highly recommend just going back and rewatching my chapter uh in this tutorial on Oout uh configuration for
3:37:44
the remote MCP server. Now that we have developed the CLI, the local MCP server
Skill
3:37:50
and the remote MCP server and everything is published and deployed, we are
3:37:55
finally ready to create the skill. The first thing I recommend doing is adding
3:38:00
the skill creator skill to your agents. So, choose this one from Anthropic with
3:38:07
almost 260,000 installs. Simply copy this snippet and
3:38:12
go ahead and install it. Now, inside of our project, let's create a brand new
3:38:17
folder called skills. And inside of here, let's create a new folder called
3:38:24
SendKit. This folder will be the name of the skill which is going to be displayed
3:38:29
on a registry like skills.sh. So, if you're wondering how does this exact name get generated, well, it reads
3:38:37
the actual folder where the skill file is put in the GitHub repository. So if
3:38:43
we want our name to be sendkit, you need to create a folder sendkit and then
3:38:49
inside skill.md file. Next, open clawed code within your
3:38:56
project or any other coding agent which you use which also has the skill creator
3:39:02
skill enabled. And let's tell it to do the following. modified the skill.md
3:39:08
within our skills folder sendkit folder to explain the following. Use sentit to
3:39:16
send telegram messages from agents through the sentit tool or CLI fallback.
3:39:22
Use this when a user asks to send a telegram message. Use ScentKit, interact
3:39:28
with the SendKit tool set or verify ScentKit manually or choose between SendKit MCP and CLI workflows and then
3:39:36
let's tell it at the end use skill creator skill. Good thing about running
3:39:42
this command within this codebase is that it's actually going to gather context about SendKit in the very
3:39:49
codebase where it is developed. Meaning that it's going to have a deeper understanding of how ScentKit work. So,
3:39:56
it's going to recognize what this actually is. I'm going to go ahead and approve this changes. And then we're
3:40:03
going to review the skill file to verify this is what we want. Let's review the
3:40:08
output. So, skill.md in here. It uses the standard format for the name and
3:40:14
description, which is great. The name is SendKit, and the description seems fine. Send telegram messages from an agent
3:40:21
through the SendKit MCP Telegram tool with the SendKit CLI as a fallback. Use
3:40:27
when the user asks to send a telegram message, mentions Sendit wants to interact with the Sendit tool set or
3:40:34
asks to verify Sendit manually. Great. So in here is a brief description. Now
3:40:39
of course this might be different for you, but it should generally be similar to this. Scentkit sends Telegram
3:40:46
messages. It exposes the same operation two ways, both backed by our scent kit
3:40:51
core. We have an MCP tool which is preferred for agents. You can of course
3:40:57
change this rule. You can go ahead and instruct it, hey, make the CLI the preferred tool and use the MCP as the
3:41:06
fallback, right? It depends on what how you want your skill to be used, of course. So in here it will document both
3:41:12
the MCP tool and the CLI which has to be globally installed on the user's machine
3:41:17
using the binary sendkit which in here is documented as the fallback if MCP is
3:41:23
unavailable. But again you can change this if you don't like this behavior. What you should care about right now is
3:41:30
that the arguments are correct. So both MCP tool and the CLI take a chat ID and
3:41:36
the message and then call the Telegram bot API. Choosing MCP versus CLI prefer
3:41:41
the MCP tool whenever the send kit MCP server is connected. It needs no shell and the bot token is supplied by the MCP
3:41:49
client environment. So this is its reasoning why it prefers MCP over the
3:41:55
CLI tool. Depending on what your actual MCP uh and CLI tool is doing, you might
3:42:02
choose to do it the other way around. But this is just one way of doing it for
3:42:07
example. So when should it use the CLI? When MCP server is not connected in this
3:42:13
session. This is a great rule because we can immediately test if the skill works or not. What we're going to do in a
3:42:20
moment is purposely turn off all of these configuration files for MCP servers and we're going to see if the
3:42:26
skill is then going to use the CLI to perform the same thing. So in here we
3:42:32
have the MCP workflow. All of this looks good. The bot token is read from Telegram bot token in the MCP server
3:42:38
environment. CMCP JSON do not pass it. Okay. I think this is through. I think
3:42:44
this is uh true. I just um I don't like how it mentions this. Uh I mean I think
3:42:49
it won't cause any problems, but okay. CLI workflow. Perfect. So it even
3:42:54
documents how to add the Telegram bot token and where it's going to be stored. Great. The arguments are correct. We
3:43:02
have the output which we know how it's going to look and this is what I don't like. Run the CLI without installing the
3:43:08
published package by using the workspace dev script from the repository root. So this is one problem of running this
3:43:15
command within the codebase because it can recognize that we have some dev tooling here. So I'm going to highlight
3:43:21
this exact scenario and I'm going to tell it consider that this skill will be
3:43:28
distributed via a public registry. Do not add guides on local development
3:43:36
scripts or usage from this codebase. Bad example. And then I'm going to paste
3:43:42
that. So I just want to clarify uh this codebase is a great way to to understand
3:43:51
what send kit is and you've perfectly described how MCP and CLI works but
3:44:00
avoid using development only or maintainer only scripts. So I basically
3:44:07
want to make sure that this skill is production ready so that uh users who
3:44:13
don't have access to this repository can run it. So since I've highlighted the
3:44:18
exact problematic case I think it will now remove that. Beautiful. There we go.
3:44:23
So run the CLI without a global install using bunx sendkit uh using my
3:44:29
organization scope or npx equivalent. Perfect. This is exactly how it's
3:44:34
supposed to be used in production here. So, I was kind of thinking that this
3:44:40
mcp.json might have also been sneaked in here because it recognized that I have
3:44:45
that file. But I think it's just uh thinking in general how this file will
3:44:51
most likely exist if someone sets up the MCP configuration. So, I think we can
3:44:56
leave this as empty. So, feel free to take a look at my source code if yours doesn't look like this. and you just
3:45:02
want to copy and paste it. But it doesn't need to be the same. You know, all of these skills somewhat look like
3:45:08
this. And once you have this skill, go ahead and commit it. So I'm going to go
3:45:14
ahead and do git add g get commit feature add skill md. And let's go ahead
3:45:20
and do git push. Before we test our skill, if you are using cloud code, make
3:45:25
sure to go inside of your connectors and remove scent kit in production entirely.
3:45:33
The reason is that claude code will actually use the connectors which you
3:45:38
have added on the web here. And I would recommend doing the same thing in chatgpt.com.
3:45:44
to completely delete these connectors so that you can test codecs and cloud code
3:45:50
without any chance of them using the remote MCPS which we have connected uh
3:45:56
onto the HTTP clients to properly test whether our skill works or not and to
3:46:02
learn how to distribute it and add it. Let's make sure that we are not inside
3:46:07
of scent kit or whatever is the name of your project. So go anywhere outside.
3:46:13
Make sure that cloud code and open code will not accidentally connect to any MCP
3:46:20
servers because in this codebase we have the MCP JSON and open code JSON. So go
3:46:26
somewhere where there is not going to be a single MCP server. So if I go ahead
3:46:32
and search for MCP, you can see that I have some Railway and React Grab which are my global MCP servers. But you
3:46:40
shouldn't have any. And inside of open code, if I go here, I have no MCPS. So
3:46:47
whatever you see here, just make sure you don't see scent kit anywhere. So
3:46:53
this is why we also had to turn it off on cloud.ai because it will use that remote MCP. So
3:47:00
let's just make sure that we are in a situation where we have absolutely no MCP servers. And now if I go ahead and
3:47:07
tell it use Sendkit Telegram tool to send a telegram message or here use
3:47:16
Sendkit Telegram tool to send a telegram message. Let's see what is going to
3:47:23
happen. As you can see it doesn't understand what Sendit is because we are
3:47:30
no longer within the Sendit repository, right? So it's being confused. It's
3:47:36
asking us for clarification. What is this? Is this some kind of command? Is
3:47:41
it some kind of API? You can see it is very confused. It doesn't know if this
3:47:47
should be an MCP server. What is it? This is the point of a skill file. So
3:47:53
you can install it on your machine. it will be added into your coding agents and whenever wherever you find yourself
3:47:59
it's going to search for some MCP tools or it is going to fall back to scent kit
3:48:06
and it's going to use this instead which as you can see is available even outside
3:48:13
of your uh codebase that is the point of this skill which we've just created. So,
3:48:19
how do we add this skill to cloud code and open code? Distributing your skill
3:48:24
is extremely easy thanks to skills.sh registry. All you have to do is make it
3:48:31
publicly available somewhere on GitHub and make sure that the skill.md is
3:48:37
placed within a folder which is named exactly how you want this skill named.
3:48:43
So, go ahead and click on that folder here and copy the URL. And once you've
3:48:48
done that, simply go ahead anywhere within your machine npx skills add and
3:48:55
paste that URL. So this is my URL scent kit tree main skills sent kit and let's
3:49:03
press enter. As you can see that has successfully fetched the skill file. So
3:49:09
it found the skill. In here you can see a brief description and then just follow the normal installation. So, so just go
3:49:16
ahead and select enter. I would suggest installing it globally so it is available everywhere and choose uh
3:49:23
symbolic link so you don't have a bunch of files. Instead, you only have one file and then let's proceed with the
3:49:30
installation. Great. Let me go ahead and open open code once again this time. So,
3:49:36
if I go inside of my skills and if I search for scent kit, would you look at that? I now have a scent kit skill.
3:49:43
Let's go ahead and do claude code once again. And there we go. I now have scent
3:49:50
kit skill installed. So let's try this again. Use scentkit telegram tool to
3:49:57
send a message. I'm going to immediately provide the chat ID and I'm going to say
3:50:03
a message hello from production ready skill. And let's see what's going to
3:50:09
happen. As you can see, it is using the sendkit skill. I didn't even have to
3:50:15
tell it to explicitly use that skill because we have correctly described its
3:50:20
behavior. And you can see that I didn't even have to have this installed globally on my machine. It simply used
3:50:27
bun x to uh run it one time. And since I
3:50:33
did initialize it, I do have the config token stored on my machine. So, if I
3:50:39
didn't have that config, it would throw an error and tell me that I first need to run uh CWA-dev
3:50:47
sendkit in it with the telegram token. But since we've already done that a few times, you can see that it works. Let's
3:50:53
take a look. Hello from production ready skill. Let's go ahead and try it in
3:50:58
cloud code now. So use send kit tool to send a message chat ID and message hello
3:51:06
from claude code production ready skill and let's see if the same thing is going
3:51:13
to happen. There we go. Successfully loaded the send kit uh skill. Now it's
3:51:18
trying to send it using the MCP tool. So let's see if it will recognize that it
3:51:23
doesn't have it. There we go. So you can see the send kit MCP tool isn't connected. So I will use the CLI
3:51:29
fallback and you can see that it's doing the same thing. So I just have to confirm that I want to do this. And
3:51:36
there we go. It is successful. Let's take a look. Hello from cloud code
3:51:41
production ready skill. We have successfully distributed our skill and
3:51:46
we have installed it globally. So every single agent that we want to use SendKit
3:51:52
in is now working whether or not we have the MCP tool connected. Amazing. Amazing
Outro
3:52:00
job. In this tutorial, you've learned how production ready MCP tooling and skills actually look like. We've
3:52:08
developed this within a monor repository so we can maintain all of our adapters
3:52:14
and our deployed applications along with the actual scale file in one repository.
3:52:20
You've learned how to distribute packages to npm and how to deploy services to railway. Amazing amazing
3:52:28
job. If you've liked this video, remember to leave a like, share, and subscribe. And leave a comment about
3:52:34
what else you would like to see me make a tutorial about. Thank you for watching and see you in the next

