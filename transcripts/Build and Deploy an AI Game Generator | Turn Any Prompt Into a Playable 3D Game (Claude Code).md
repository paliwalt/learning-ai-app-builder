https://www.youtube.com/watch?v=pHOCzB5TKv0


Build and Deploy an AI Game Generator | Turn Any Prompt Into a Playable 3D Game (Claude Code)
Code With Antonio
Code With Antonio
419k subscribers

Join


517


Share

Ask

Save

36,433 views  3 Sept 2026
Build an AI game generator from scratch using Claude Code. Turn any text prompt into a fully playable 3D game in two hours.

💻 Source Code: https://cwa.run/sandbox
⭐ Trigger.dev: https://cwa.run/trigger
⭐ Daytona: https://cwa.run/daytona
⭐ Clerk: https://cwa.run/clerk
⭐ Sentry: https://cwa.run/sentry
⭐ Neon: https://cwa.run/neon
⭐ Railway: https://cwa.run/railway

In this tutorial, we build Sandbox, a platform that converts simple descriptions into interactive experiences like racers, shooters, and puzzles. By leveraging a specialized game engine rather than a general coding agent, you get significantly more polished results and complex game logic from your prompts.

We cover the full stack required for SaaS development, from setting up the environment to handling authentication and observability. You will see how to integrate modern tools to create a reliable service that manages game creation, durability, and billing, effectively turning a concept into a functional web application.

Timestamps:
00:00:00 Intro
00:04:03 Setup
00:20:08 Auth
00:28:38 Sidebar
00:38:25 Games
00:52:52 AI Chat
01:09:49 Durability
01:19:18 Sandboxing
01:37:09 Game Engine
01:45:49 Briefing
01:53:02 Observability
02:06:30 AI Models
02:15:08 Billing
02:23:33 Bug Fixing
02:34:57 The End
Code With Antonio guides you through building a SaaS platform using Next.js, React 19, and advanced AI coding agents. Learn to integrate tools like Firecrawl, Clerk for authentication, Neon for database management, and Trigger.dev to automate development, enabling you to build complex software systems directly from descriptive prompts.
Summary





Ask
Get answers, explore topics and more

Ask questions

------------------------------------------------------------------------------------







In this video



Chapters

Transcript
Search in video
Intro
0:00
This is Sandbox, an AI game builder that turns your description into a playable
0:06
game. Before the build begins, Sandbox asks a few questions to understand the
0:12
game you have in mind. The agent now builds on Sandbox's own game engine. So,
0:18
the same simple prompt can produce much better results than it would with a
0:24
general coding assistant. And here is the full result. a complete firstperson
0:29
shooter with real levels, objectives, enemy AI, a full HUD, and its own comic
0:36
book art style. It's an actual game you can play. And in this course, you'll
0:41
learn how to build the entire system behind it. So, how does this actually
0:46
work? Every sandbox game comes with the engine already built in. So controls,
0:53
rendering, HUD, and sound were all handled before the agent even wrote its
0:59
first line. Its effort goes into game play instead. And that's why a single
1:05
sentence can give you a result that looks good on the first try. The agent runs as a background task using
1:12
trigger.dev. And every game gets its own Daytona sandbox where the agent can run
1:19
while it builds, spot its own errors and fix them. All of that happens in the
1:24
cloud, so you never have to sit and watch a build until it completes. You can close your tab, lose your
1:31
connection, or come back tomorrow. The agent keeps working, and your game is right where you left it. Let's see what
1:38
else Sandbox can build. How about a large-scale desert battle fought over
1:43
rolling dunes with jets and helicopters in the sky? Or maybe a samurai duel
1:49
drawn like ink on paper in driving rain where every strike brings bamboo down
1:55
for good. Or a sunny pixel art platformer, all blue skies and green
2:00
hills. Maybe a voxal survival game in an endlessly generated world with a
2:06
crafting system to keep you alive. Or how about a jungle driving game where
2:12
the mud keeps every track your tires make? If you can describe it, Sandbox
2:18
can build it. Every build spends credits. Once it runs out, the app tells you and stops and your balance is always
2:26
visible in the sidebar. Upgrading takes a few seconds and the new credits show
2:32
up right away. There's no web hook or stripe setup in our code. Clerk Billing
2:38
handles all of it. In our app, everything belongs to an organization.
2:44
If you switch to another organization, you will see a different set of games and a different credit balance. Bringing
2:51
someone in takes one email, send the invite, they click join, and they can
2:57
now build on the same games and the same balance as you. You will learn how to
3:02
build this entire project by using coding agents instead of typing every line yourself. You can use whatever
3:10
harness and model you prefer. We'll also get more out of those agents with skills
3:16
and live web access through firecrawl. So, our agents are always working with
3:21
the latest documentation. By the end, you will have both a functioning software as a service and the knowledge
3:29
to build like an AI engineer. We're going to build the app with Nex.js and
3:34
React 19 with Versel's AI SDK for the chat. The games run on 3JS and our own
3:42
engine. The agent runs on Trigger.dev and the database is Neon Postgress with
3:48
Drizzle ORM. Clerk handles out and billing while Sentry handles monitoring,
3:54
error reporting, and logging. And we'll deploy the whole thing on a railway. And now that we know what we are building,
4:01
let's get started.
Setup
4:09
Let's get started by running the following command. npx chaten with the latest version tag followed by init.
4:17
This is going to scaffold a new nex.js template with shaten initialized inside.
4:23
So let's select next.js for the template. Let's select no for the monorreo option. Let's choose base UI
4:31
for the component library. And let's choose nova for the preset. Then let's give our app a name. I'm going to call
4:38
it sandbox. And then let's wait a few minutes for the project to install. Once the installation completes, go ahead and
4:45
enter the newly created directory. In my case, it's called sandbox. Once you're
4:50
inside, go ahead and run npm rundev. This should successfully start the
4:56
server at localhost 3000. So, let's open up our browser on localhost 3000. And
5:02
let's confirm that we can see the welcome screen. Besides this, you should also be able to toggle between light and
5:08
dark mode by pressing the letter D on your keyboard. Despite the fact that we're going to be using AI to develop
5:13
this project, we are still going to be looking at the actual code. So, make sure to open the newly created project
5:19
with your favorite code editor. Be mindful of the banners like this, which basically run the project in restricted
5:26
mode, which might block some extensions and workspace settings from properly running. So, make sure that you click on
5:33
manage and then simply trust this folder. Now go ahead and start your preferred coding agent within the newly
5:40
created sandbox repository. This can be cloud code, open code, codeex or even
5:46
pi. It really doesn't matter and you can use whatever you prefer or have an existing subscription of. I use cloud
5:53
code as my daily driver. So that's what I'm going to be using for the remainder of this tutorial. The only requirement
6:00
that I would highly highly highly suggest is that whatever model you pick
6:05
has vision capabilities. What that means is that you can paste an image and it
6:11
can tell you what it sees on that image. That's the only requirement I have. One
6:16
of the best tools you can add to your coding agent is Firecrawl. Most people don't really think about the native
6:22
tools their coding agents use, but if you actually look at the comparison, you will never use the default web search
6:28
tool. Again, I'm going to use the Nex.js documentation as an example. Your agent has probably scraped this page more
6:35
times than you know. If you had used firecrol instead of the built-in tools, you could have handed your model 47,000
6:41
fewer input tokens than the raw HTML which built-in tools returned, which is
6:46
about 14 cents at cloth on 4.6 six prices. Now, imagine all of that web
6:51
search compounding from the first chapter of this tutorial all the way to the last. The tool is also open- source,
6:58
completely free for our use case, doesn't even require an account, and reversible if you change your mind. If
7:04
you're interested, you can proceed with installation. Creating a free account is recommended, but not required. So, feel
7:10
free to choose whichever option you want. You can always run this command again if you want to use a different
7:15
authentication method. Now we are ready to install fire crawl skills. You don't need anything more than the first option
7:21
as that includes all the web search tools which we want to replace. Because we run this command within our project,
7:27
it's asking us if we want to initialize a template. Since we are only here for the skills, you can select no. If you
7:33
want to, you can also set firecroll as the default web provider. This will disable the native web search inside of
7:39
cloud code and codeex. You will now be able to invoke the firecroll skill anytime you need to search for
7:44
something. If you set firecrol as the default web search option and for whatever reason want to bring back the
7:50
native tools, you can always go inside of the permissions, find the deny list and then remove web fetch and web search
7:57
from here. Now you can use both the native tools and also invoke the firewall skill if you want to. If you're
8:04
using cloud code and VS code as your code editor, it's a no-brainer to install this extension. Once you install
8:10
it, go ahead and run the IDE command and select Visual Studio Code. Then go ahead
8:17
and try doing the following. Open up any file and highlight any line. Your Cloud
8:24
Code instance is now going to be aware of that line being selected. So if you ask which line is selected, it's going
8:31
to read from the state of your code editor and tell you exactly which line is selected. This can come in handy
8:38
whenever you need to do some granular changes. But besides this, if you're not a fan of terminals, this extension
8:45
actually allows you to continue any conversation in this interface right here. Before we start developing with
8:52
claude code, it's important to establish a claude.md file, which is essentially
8:58
the same thing as agents.md. So what even is this file? agents.mmd is
9:04
essentially a readme for agents. It is a dedicated predictable place to provide
9:10
the context and instructions to help AI coding agents work on your project.
9:15
Essentially things like use TypeScript strict mode, use single quotes, no
9:20
semicolons, use functional patterns where possible, or to fix some annoying
9:26
behavior. If the agent constantly forces npm and you want to use PNPM, this is
9:33
exactly the file where you would express that. And this file is being read before
9:39
every single prompt that you send. The only problem with agents.m MD is that
9:45
it's not being read by claude models. So to fix that we have to create claude.m
9:52
MD and simply reference agents.m MD. I would recommend doing this even if
9:59
you don't use claude code simply so both of these files are synchronized. Now let's do a commit for this change
10:06
because we are about to add a bunch of Shatsen components. So I don't want us to mix this file with all of that. So
10:14
I'm just going to stage claude MD and I'm going to write docs add claude MD
10:21
and I'm going to commit. Now let's go ahead inside of our project and run npx
10:26
chatsen with the latest version tag add and then a flag all. This is going to
10:32
add all shatzen components into our project. We can remove those we don't
10:38
use later but it's just going to be easier if we do this once. You should now have a bunch of new components
10:44
within your components UI folder all the way from the accordion down to the tool
10:51
tip. In my case, I have 63 changes. You might have some more depending on when
10:56
you're watching this tutorial because Shatzen constantly adds new components.
11:02
So, let's go ahead and do feature add chats components. I'm going to stage all
11:07
of these changes and I'm going to hit commit. So now I want to replace this default welcome screen with our
11:14
project's homepage. So it's time to open up the design references using the link
11:20
on the screen. You can visit my Figma organization and in here you can find
11:25
completely free sandbox tutorial design references. So go ahead and find this
11:31
orange thumbnail or simply look for the sandbox in the title. Now, I am
11:37
purposely logged in with a completely free account to ensure that everything I do here, you can do as well. As you can
11:44
see, I'm not even using the Figma app. I'm using the web application. So, a
11:50
quick rundown on how to use this design asset. On the left, you will find pages.
11:55
In here, you have content, assets, reference, and sidebar. Reference is for
12:02
humans to look at. So in here you basically have uh assets of the complete
12:07
and final application and how it's going to look like. We're going to go more into detail here once we actually get to
12:14
it. Besides that, you have content which are basically isolated screens without
12:20
the sidebar. So we can screenshot it and send it to our agent. That's why I told you that it's important that your agent
12:27
has vision capabilities so you can actually see things we send it. And we
12:33
have something called assets. In here, I'm basically providing you with the
12:38
logo of the application. So, yours can be branded the same way mine is. And
12:43
this is the URL where I actually found this logo. So, let's go ahead inside of
12:49
the assets here. Let's go ahead and find logo mark. You can also find it here in
12:54
the layers. And go ahead and click copy. Copy as SVG. Then let's go ahead inside
13:01
of public, let's create a new file, logo.svg. And let's go ahead and click open file
13:08
using the standard editor and simply paste the content inside. And just like
13:14
that, you've added the logo to your application. Now that we've added a new logo to our application, let's go back
13:21
to the content page. In here, we can find home empty variant. Let's try and
13:27
reconstruct it. But let's make it a little bit easier on the agent. And let's first try with this simpler
13:33
container right here, which just includes the logo, the title, and the description. I feel like this is an easy
13:40
task we can achieve. Whenever you copy elements, containers, images, or scenes
13:45
from Figma with an intent to give it to an agent, always copy as PNG. I know it
13:52
might seem counterintuitive given that SVG is literal code, but believe it or
13:57
not, agents have trouble reconstructing what an image should look like when
14:02
received SVG in comparison to when they read a PNG. So that's why I'm copying
14:08
this simpler container as PNG. Every time I copy an image from Figma and
14:15
paste it to an agent, I'm going to put it inside of the design folder within
14:21
the chapter that we are currently in. So, if some of you can't access the Figma file, you can still find the exact
14:29
image I just copied. So all you have to do is go inside of the source code, find
14:35
the design folder, find the chapter that you're currently in, and then simply
14:40
find the image that you're looking for. And then let's go ahead and construct the prompt. So replace page.tsx
14:49
with and then since I have image in my clipboard, I can just paste it like this. Use empty.tsx tsx
14:59
and use logo.svg. Do not add any class names to the
15:07
elements. Now let's take a look at the result. Your page.tsx should look
15:13
something like this. It should entirely consist of empty primitives and it should render logo. SVG. Its title and
15:21
description should match exactly what we sent it in this image. And now let's take a look at the actual localhost
15:28
3000. There we go. This is exactly what we imagined, but there are some slight
15:34
differences. So let's go ahead and fix them. So for the title here, let's give it a class name text to Excel. There we
15:44
go. I think that is exactly the alignment we are looking for. Let's follow up with an additional prompt.
15:50
Center it relative to the full height of the page. Use flex. That should generate
15:55
a very lightweight wrapper with flex and minimum height sv.
16:02
And now it should look centered. Now let's go ahead and commit these changes. Now, as you can see, I have three files
16:08
here. That's because I also added the image. You probably don't have this. You
16:14
don't need to have this. If you were able to just copy it from the Figma file, there's no point in having this in
16:20
your repository. But just in case you're wondering how come I have three files while you only have two. So let's go
16:28
ahead and stage and commit these changes. I've noticed that my agent has removed the class name that I put here
16:35
because previously I instructed it to use no class names. So it thought that this was a mistake. If yours did the
16:41
same, make sure you just revert the class name on the empty title. Now what I want to do is I want to replace the
16:48
fab icon here in the tab. We can do that quite easily by reusing our logo. SVG.
16:55
So send it a prompt like this. That should very simply remove the existing fab icon and add a new icon. SVG with
17:04
the exact same value as logo. SVG. And now you should see a brand new icon in
17:12
the tab. Now let's go inside of the app layout and after our font declaration,
17:18
let's add metadata. And make sure to import the metadata type from next. So
17:25
add this line and then add this. I purposely didn't want to generate this
17:30
with cloud because I want it to be very specific. Sandbox build 3D games with
17:35
AI. And then I give it a template. What this is going to do is it's going to
17:40
give us the name of whichever page we are on later when we add routing and
17:47
then append sandbox next to it. And then I just give it some metadata
17:52
description. And once you save that within your app layout, you will now see that we have a much nicer title along
17:59
with our new icon. Let's go ahead and commit all of these changes. What I'd
18:05
recommend you do now is run a quick npm run build within your repository. And if
18:11
it's not successful, go ahead and tell Claude in a new session to debug why npm
18:17
run build is failing and basically fix it for you. And once you can
18:23
successfully do npm run build, which looks like this, go ahead and create a
18:29
new repository. So I'm going to go ahead and call it sandbox. I'm going to keep it private for now and I'm going to hit
18:36
create repository. Then I'm going to copy this option which is push an
18:41
existing repository from the command line. I'm going to ensure that I have committed and staged all of my changes
18:50
and then I'm going to go ahead and simply paste those three lines. What
18:55
that's going to do is officially synchronize this local repository with
19:01
GitHub. Now that we have a GitHub repository, we can deploy it to Railway.
19:06
Use the link on the screen to create an account and then head into your dashboard. In here, go ahead and create
19:12
a new project and choose GitHub repository. Search for your new
19:18
repository and select it. And this is why I told you to first confirm that your npm run build works locally because
19:26
otherwise you would have found that out in the deployment which is much harder to debug. So make sure that locally you
19:34
can build the project then add it to GitHub and then try and deploy somewhere. So after a few minutes here
19:42
you should see a successful deployment. Then you should go inside of your settings networking generate a domain
19:49
and that should generate a new domain on port 8080. So if you ask if it asks you
19:55
to manually enter a port choose 8080 and when you visit it you are now
20:00
officially looking at your local project deployed. So you can start sharing it with your friends as we go along.
Auth
20:14
Now let's see how quickly we can add authentication to our project with clerk. Using the link on the screen, you
20:21
can visit this page and click on the start building button. This should redirect you to the Nex.js quickart app
20:28
router documentation where you can find the prompt we can provide to our coding agent. So let's do exactly that. First,
20:36
make sure that you don't have a server running. So simply stop the server if
20:41
you have it running. Then make sure you are in a brand new session within cloud code or whatever is your coding agent
20:48
and simply paste the prompt. After it finishes, the first thing I would recommend doing is shutting down port
20:56
3000. And here's why. So the dev server is actually now started by the agent
21:02
itself when it went to verify its work. So if you actually try doing npm rundev,
21:08
it's going to take you that port is already in use. So I'm simply going to tell it to kill port 3000. Once the port
21:17
is free, you can then do npm rundev again. And now we can actually verify
21:23
what's on our server. So the code can differ a little bit depending from agent
21:29
to agent, from harness to harness, but in general you should be able to see
21:34
sign in and sign up buttons here. And clicking on them should either open a
21:40
dialogue or it should redirect to sign in, for example, which technically
21:47
renders the exact same thing. And if you actually do sign in, you should see the
21:53
user button right here in this place. Now, of course, perhaps your agent added
22:00
it to the page right here instead of the header in the layout. That's what we're going to solve now. So, we are in sync,
22:07
but you should certainly be able to log in and log out of your application. Let's take a look at some of the key
22:13
files you should have. First of all, package JSON should have added two new
22:18
dependencies, clerk nex.js and clerk UI. You should have a proxy.ts file. You
22:24
should have a change in your globals.css loading the new clerk UI dependency. You
22:29
should have two new pages, sign in and sign up, located in their respective
22:35
folders within the app folder. You should have a change in your layout file, but you don't need all of these
22:41
changes. The only important thing here is the clerk provider. That's the only
22:48
thing that matters. The header can be completely different. Show sign in
22:53
button button. Everything here can be completely different. You don't have to worry about this at all. You can even
23:00
see that my agent decided to do some formatting. It doesn't matter. The only thing that's important is that you have
23:07
the clerk provider and that the appearance has theme shaden. So also
23:13
make sure you have this imported. We also have some changes which don't belong in the git diff that is
23:20
environment.local where you should have all of these environment files. So you should have a
23:25
clearly defined signin route, signup route, fallbacks as well as the publishable keys and the secret keys.
23:33
Now you might or might not have a clerk folder with keyless.json inside. This is
23:40
depending on whether you are signed in or signed out of the clerk CLI. It
23:46
doesn't matter because later on we will sign in. So if you don't have this, don't worry. And that's pretty much it.
23:53
The only thing I also have is the clerk folder set in the git ignore. But if you
23:59
don't have that folder, you won't have this either, I suppose. Great. So now let's go ahead and do the necessary
24:05
changes to synchronize all of the changes in here. So we are both on the same page. Let's do the following
24:11
changes. First, make our page AL protected. Second, remove all clerk
24:17
elements from layout except the clerk provider and the Shatsen theme. And
24:22
third, add a user button below our empty element in our page. If you try visiting
24:28
localhost 3000 now, it's immediately going to redirect you to login. And once
24:34
you log in, only then you will be allowed to visit this page. And from here you can see the user button and you
24:41
can sign out. This change should have drastically simplified your layout file. The only real change left should be the
24:49
clerk provider encapsulating the theme provider thus encapsulating the
24:54
children. And everything else that you see here are just formatting changes which you don't have to match. Just make
25:01
sure that you have the chaten imported and set as the theme in the appearance prop of the clerk provider. Now let's
25:07
take a look at the changes within our page file. You should have two new imports user button and out. The actual
25:15
function should have been transformed to an asynchronous function so that we can properly await out.protect.
25:22
Now your agent might or might not have added this explicit redirect URL which
25:29
is also defined in the environment.local. That's why I say may
25:34
or may not have. But for now, I would actually recommend that you add the explicit redirect as well. Now,
25:42
depending on your agent, you might see some class names or might not. It really doesn't matter. What's important is that
25:49
it renders the user button. Everything else should stay untouched, especially
25:54
the proxy file. So, make sure to use this variant and not protect things in
26:00
the middleware. Once you've verified the behavior of your local host is the same as mine and the code is somewhat
26:06
similar, go ahead and stage all of your changes and commit them under the message feature add clerk. Now let's run
26:13
the following command so that we officially claim this temporary keyless
26:18
clerk application. So npx clerk with the latest version tag out login. If you
26:24
haven't already, go ahead and create an account with clerk. Then go ahead and allow clerk CLI. What this is going to
26:31
do is it's going to claim and link this application to an actual project in your
26:37
dashboard. You can see that I have a brand new application here called sandbox. Why is it called sandbox? Well,
26:44
because that is the name that we defined in our package.json. So, whatever is the
26:50
name of your application here is going to be called here in your applications
26:55
in the clerk dashboard. From here, let's go inside of the organizations tab and let's click enable organizations and
27:02
let's choose the membership required option and click enable. You should immediately see a change in your app.
27:09
So, simply refresh your local host 3000. You will see that you are now forced to
27:14
create an organization which is exactly the option we selected membership required. I think this is an amazing
27:20
feature. You should immediately see the newly created organization in the dashboard. Now let's go inside of the
27:26
app folder page and beneath the user button, let's also add organization switcher which we can import from clerk
27:34
next.js. What that should do is render an organization switcher from where you can create even more organizations and
27:41
easily switch between them. You can even try sending an invite to an email. And
27:46
let's make sure to commit these changes as well under a message enable organizations. Now, let's go ahead
27:53
inside of our environment local and copy all the variables inside. Then go inside
27:58
of your Railway production instance and click on the variables tab. Open the raw editor and paste everything inside.
28:05
Click on update variables and click on deploy to apply the changes. Let's make sure that we actually push all of these
28:12
changes we have committed. What this is going to do is automatically create
28:18
another deployment on railway with organizations enabled. You should now see a successful deployment for the
28:25
latest commit within your GitHub repository. And if you visit your production URL, you should see a fully
28:32
functional clerk in here as well because we added all of the correct environment variables.
Sidebar
28:44
Now that we have authentication added to our project, let's go back to building the design. So, previously we copied
28:52
this exact container, but something's not right. The background color in the design is different from the background
28:59
color that we have right here. So, how do we fix that? Well, the answer is in changing the entire theme of our
29:07
codebase. The easiest way to do this is to visit the source code, go inside of the app folder, find globals.css,
29:15
and simply copy the value from here and then go ahead and replace your globals.css
29:21
with all of these new values. You will immediately see the change. And you can now see that our background matches
29:28
exactly what we see in the design. It's important that we do this because otherwise our agent will constantly be
29:35
fighting with the design. Let's do a quick commit of this change so it doesn't conflict with anything else we
29:41
plan on doing. Our new globals.css registers something called font logo
29:48
which represents this font right here which we need in order to develop the sidebar. The problem is we never
29:55
register that variable in our layout like we do with font sense and with font
30:00
mono. So let's give our coding agent a task to register a new font Frances in
30:06
our layout with variable font logo. Once we do this change, we should have the
30:11
new Franc's logo registered under font logo variable and added to HTML class
30:17
name. Make sure to do a quick commit so it doesn't conflict with the rest of our changes. Let's run the following prompt.
30:24
First, we're going to move our entry page to a new route group, which we are
30:29
going to call app. Then, we're going to create a new layout file called app
30:35
layout inside of that new route group. We are then going to use the shaten
30:40
sidebar provider and register it in the new app layout. Then, we're going to
30:45
create a new app sidebar inside of our components folder. Then we're going to
30:51
define a shell for sidebar header, sidebar content, and sidebar footer. And
30:56
we're going to give it a very strict rule. No custom class names, only pure primitives from components UI
31:04
sidebar.tsx. You should now have a new folder within your app folder. It's also going to be
31:11
called app, but it's going to be inside of parenthesis, which indicates that it's a route group. and your original
31:19
page file should be moved to here. Along that page file, you should have a brand
31:24
new layout file. This layout file should use the sidebar provider and it should
31:30
render the newly created app sidebar component. The app sidebar component
31:35
should be created within the components folder and it should very simply render an empty header, empty content and empty
31:44
footer. Altogether, it should look like this. This is a pretty good checkpoint. So, let's go ahead and stage all of the
31:51
changes under a message add base sidebar. Now, let's go inside of the design reference sidebar page and find
31:58
sidebar expanded empty. Right click and copy as PNG. Or you can go inside of the
32:05
source code, find the design folder, this chapters folder, and you can find the exact picture I just copied. Now,
32:12
start a new session and construct the following prompt. modify app sidebar
32:18
component. And first and foremost, let's give it an image reference. Then let's
32:23
say that all icons in the image reference are Lucid icons so the agent doesn't try to reconstruct them itself.
32:31
Use the least possible number of custom classes. Most of these can be achieved with proper composition of components
32:38
UI. For the sidebar header for the image, use logo with size five. For the
32:44
sandbox text, use font logo with text base. For the left side icon, use panel
32:51
left icon within sidebar trigger. For the sidebar content, we're going to have two distinct sidebar groups. The first
32:58
one is sidebar menu button, which is just a new game label, which links to the root page and is active on the root
33:05
page. The second group are recents, which are for now just going to display
33:10
an empty component with a dashed border and some empty description with extra
33:16
small text. And for the sidebar footer, we're going to have sidebar menu button,
33:21
which displays the current number of credits within sidebar menu badge, which should be a fake number, and an
33:27
organization switcher plus user button. And let's run this prompt. What an amazing oneshot result. This is almost a
33:36
onetoone replica of what we provided the agent with. This is what happens when you provide the agent with a good image
33:43
reference followed by good instructions. I believe that one of the key instructions we gave the agent was to
33:50
avoid using custom class names because the majority of this task can be
33:55
implemented with just simple composition which is exactly what's going on here.
34:00
You can see that it's very scarse with custom class names and it only uses it when it truly needs to use them. For
34:07
example, to align the organization switcher and user button next to each other or to align those three elements
34:13
inside of the sidebar header. All of which I'm completely okay with. But for
34:18
the rest, it should mostly rely on just the composition of the sidebar elements.
34:24
Even though I'm very satisfied with the result, I am still going to do some manual changes. For example, this empty
34:30
container just feels like it has too much space around the text. So, I'm going to go ahead and find the empty and
34:37
I'm going to change it from padding four to padding two. Second, I really don't
34:43
like how this developer indicator is in the way of our sidebar. So, I'm going to
34:48
go inside of next config.ts and I'm going to turn dev indicators to false.
34:54
The last thing that bothers me here is that this last element right here seems to have less space than the element
35:01
above it. So, I'm just going to find the div encapsulating the organization switcher and the user button, and I'm
35:08
going to give it a px of two, which should align them perfectly. The other thing I don't like is that this
35:14
organization switcher doesn't take up the full space available up to the user
35:19
button. So, if you care about this as much as I do, go ahead and pause the screen or simply screenshot and tell
35:26
your agent to add the following to the appearance of the organization switcher. And then you will see that it's going to
35:31
take up the full available width. Now, let's go ahead and stage all of these changes and commit under the message add
35:39
sidebar content. Now, let's tell our agent to remove all clerk elements from page since all of them have just been
35:45
moved to the sidebar. And now our homepage is clean once again. The only problem with our sidebar is how it
35:52
collapses. So when I click on the sidebar trigger, it entirely disappears and it can only be brought back by CtrlB
36:01
or by doing a full page refresh. But by our design, we should have a sidebar
36:07
collapsed mode. So let's construct the following prompts. Enable app sidebar icon collapsed mode for the sidebar
36:15
header. only shows sidebar trigger for the sidebar content. New game button
36:21
requires no action because the composition is already in place. Instead of empty, render a sidebar menu button
36:28
with message square icon. For the sidebar footer, the credits require no action because once again composition is
36:35
already in place, but organization switcher should completely hide leaving only the user button. And I'm once again
36:43
doing this prompt in a brand new session. And this time I will not be providing any image references because I
36:49
feel like it's only going to confuse the agent because this can be explained mechanically. And the result should be
36:54
something like this. Upon clicking on the collapse, you should now have a very nice icon collapsed mode instead of
37:01
completely disappearing. And exactly as we instructed the agent, the recents and
37:07
the empty transforms into a new button. The new game didn't need any special
37:13
action because the existing composition allows it to support icon collapsed
37:18
mode. The credits is the exact same thing. Nothing special needed here. But
37:23
for the container holding the organization switcher and the user button, we added a rule only display the
37:30
user button. There we go. So just like that, we now have completed our sidebar.
37:35
Obviously there are some details to polish here. for example, how are we going to view our games when in
37:41
collapsed mode and how are we going to view our credits when in collapsed mode? But we are going to solve that when we
37:48
get to that problem. And for the code itself, your agent should do this using
37:53
group data collapsible icon states. So if yours did something overly complicated, perhaps nudge it in the
37:59
direction of using group data collapsible icon state, which it can use to detect whether the sidebar is
38:06
collapsed or not. and then hide or show certain elements. Now, go ahead and
38:11
stage these changes and commit them under the message add sidebar icon mode. And go ahead and push all of these
38:18
changes. And in a few moments, you should be able to review them live on your railway deployment.
Games
38:31
Now, it's time to add a database to our project. So use the link on the screen to create a completely free neon
38:37
account. Once you've created an account, go ahead and run npx neon with latest
38:43
version tag followed by in it. Then go ahead and choose the recommended option
38:48
which is plugin which is going to install neon postgress skill and set up an MCP server. Let's go ahead and choose
38:55
the coding agents which we use. So I use clot code so that's what I'm going to select and let's go ahead and confirm.
39:01
You will most likely be prompted to authorize the CLI. So, make sure to do that. Once you authorize, you will be
39:08
shown a list of projects that you have or an option to create a new project. So, go ahead and create a new project
39:15
and let's call it sandbox. For your region, go ahead and choose whichever is the default one or whichever is the one
39:22
you prefer. You will now see that Neon has added three variables into environment local. Neon branch, database
39:29
URL, and database URL unpulled. And it also gives you an option to manage this project's Neon setup as code. I think
39:36
this is a good idea. So, go ahead and press Y. Besides the database, Neon offers all of these amazing services,
39:44
but for our purposes, we're not going to be needing any of them. So, no need to toggle. Just go ahead and press enter to
39:51
continue forward. And just like that, you should now have two new neon packages in your dependencies as well as
39:56
the neon configuration file right here. You should also see a neon added to your
40:02
git ignore which is another set of configuration for neon. Besides that, in your environment local, you should now
40:08
see neon branch, database URL and database URL unpulled. You should now
40:13
also see the sandbox project within your neon dashboard along with the branch
40:18
which is the main branch and a posgress database with a completely empty table for now. Let's go ahead and commit all
40:25
of these changes under a message add neon. If you reload your skills and your plugins in cloud code, you will now see
40:32
a bunch of options available when you search for /neon. But that might not be
40:38
the case for open code users or pi users. So to fix that, go ahead and run
40:44
npx neon latest skills. And in here, simply go ahead and choose whichever
40:50
coding agent you're using that doesn't have the skills available. Once you've established that you have the new set of
40:56
skills, go ahead and run neon postgress skill with a prompt setup drizzle with
41:04
neon. Let's take a look at what the agent generated, what we're going to leave, and what we're going to change.
41:09
So let's start with the package JSON because this one should be the most deterministic. You should probably have
41:14
some new dependencies like environment, drizzle, rm, posgress and some dev dependencies like postgress types and
41:21
drizzle kit. Now these scripts aren't necessary but they are quite useful. So feel free to screenshot this and tell
41:28
your agent to implement them if it hasn't already. The second thing you should look for is the drizzle config
41:33
file. This one should also be quite deterministic. As you can see, we are using the config from our new package
41:39
environment and we are reading from environment.local because that is the environment file where we actually write
41:45
all of the variables. So, make sure that that is true for your project. What's important in regards to the database
41:51
util and the schema is the following. Somewhere in your app, you should have
41:57
this export right here. Whether your agent added all of this orchestration or
42:02
not really doesn't matter as long as it works. Now about the schema, it doesn't
42:07
matter because this obviously isn't the final schema which we're going to have. So whatever your agent generated is
42:14
actually okay. Now I assume that just like my agent, your agent already performed a migration where it just
42:21
pushed all of the changes it added into the schema. There's nothing wrong with that. But I would actually prefer if we
42:28
didn't do migrations for a development project and instead I wish we would just
42:33
rely on the push command which is a much simpler workflow for us to follow. It's
42:39
simpler for agents to follow and there's not going to be as many conflicts. Regardless if you have migrate or not,
42:45
go ahead and tell your agent to do this. Update agents to forbid using migrate
42:51
and prefer using database push because this project is in development and there is no need for any backwards
42:57
compatibility. Remove all generated artifacts which were produced by running the migrate script and then push the
43:04
schema once again using database push this time. You should now have a new entry inside of your agents file which
43:11
explains to the agent how to perform database schema changes. It tells the agent that this project is in active
43:17
development, that there is no production data and thus no backwards compatibility to preserve. It tells it to not run
43:25
migrate or generate and to instead apply schema changes by editing the schema and
43:30
then running database push. You can also see how all of the migration artifacts
43:36
have been removed from my diff, meaning that my drizzle folder no longer exists.
43:42
Besides that, my agent has decided to explicitly remove the migrate and
43:48
generate scripts. This isn't required, but if the agent sees a script, it might
43:54
use it. So perhaps you can remove it as well and just leave push and studio. Now
43:59
let's modify our schema to have games table instead of any existing table and
44:04
push it to the database. And then let's give our agent a quick rundown of the new table. Each game is going to have an
44:12
ID which is the primary key, an organization ID which is going to be provided by clerk title created at
44:20
updated at and tell the agent to generate any index if it deems that to
44:25
be useful. Your schema content should now be replaced with the new games table where you should have an ID,
44:31
organization ID, title created at, updated at, and maybe an index if your
44:37
agent added it. What's important is that organization ID is written like this and
44:43
isn't a foreign key which basically means that your agent assumes organizations are another table we are
44:50
going to maintain. We are not. Organization ID is something provided from clerk. My agent actually struggled
44:57
a bit with doing this change because it first had to drop an existing database.
45:02
So it modified the agents file that when a change replaces a table outright. Drop
45:08
one, add another. Database push cannot tell a new table from a rename and stops
45:14
on an interactive prompt. So drop the obsolete table first and then push. So
45:19
perhaps this is a nice little snippet to screenshot and tell your agent to add as well. Or maybe just tell it if you
45:25
learned something new about replacing the existing table by dropping it, add it to agents MD. Besides the code
45:32
changes, visiting your project and heading into tables should now display
45:37
the games table along with all the fields we have in the schema. Now let's go ahead and commit all of these changes
45:44
under a message add drizzle or let's go back inside of our Figma file. Let's
45:49
find the content page and find home empty variant. Previously we copied this
45:56
container. Now let's copy this container. So go ahead and copy as PNG.
46:01
For your convenience, I've also added it inside of the design folder. Now tell your agent to construct that image and
46:08
then give it some additional information. Create it in a new component called chat composer. Use
46:14
input group, drop-down menu, and button components. Avoid using custom class
46:19
names when possible. Rely on primitives. Avoid adding any controlled states,
46:25
values, or props. Keep things hard-coded. render the newly created chat composer inside empty content
46:32
inside of our page file. The result should look something like this. And if I were you, I wouldn't obsess too much
46:38
over differences that you and I have at this point. Feel free to prompt your agent further for the little things you
46:44
want to change. For example, I kind of want to reduce the height and I want to reduce the radius. So, I'm just going to
46:50
do that manually in the code. If you want to, you can chat with your agent until it looks exactly how you want it
46:55
to look like. So the entire code should be written within one file chat composer. So inside of here I'm going to
47:02
find the input group text area and I'm going to replace this class name with the following class name and I'm going
47:08
to add rows one. And then I'm going to remove this and I'm going to give it a background of pop over. And now it
47:17
should look a little bit closer to what I wanted. I'm also going to do a slight change for the buttons here. So I'm just
47:24
going to append to the buttons class name where I render the suggestions font normal and text muted foreground. One
47:31
more thing to verify is that within your page file, it actually rendered the chat composer within empty content and then
47:39
go ahead and stage and commit all of these changes. Now let's create our first server action. Let's put it within
47:46
lib games folder. We are going to call it create game. We are going to scope the new database record to the
47:52
organization ID using clerk SDK. We're going to make sure that we refresh the
47:58
app route group layout server component tag. And we're going to wire up the
48:03
create game server action with our new chat composer component. Then we're going to create queries under lib games
48:11
as well. And we're going to add list games query which is once again only going to load uh games belonging to the
48:19
current organization ID using clerk SDK and then we're going to wire up the app
48:25
sidebar to render games title inside sidebar menu item. Now it's time to try
48:31
it out. I currently have no games in my database and thus I have no games in the app sidebar. If I submit this prompt, it
48:38
should appear right here. And that's exactly what happens. If I submit another, it should appear above it. And
48:44
the same should be true inside of the database. And there we go. As I refresh, I have new records in the games table. I
48:51
wouldn't really obsess over the code behind this functionality. As long as you have lib games actions and lib games
48:58
queries, one with a function to list the games and one with a server action to
49:04
create the game. both should scope your records to organization ID that you are
49:10
currently logged in with. So make sure that that is true. As per how the chat
49:15
composer actually submits this, there's a billion ways the agent can do it. For
49:20
example, my agent chose to turn this into a form. It didn't even add any
49:26
state value control to the text area. Yours perhaps turned this into a client
49:31
component and did a classic onsubmit. It really doesn't matter. And for the
49:37
loading of the games, it should async the app layout and then await list games
49:43
in here and then pass the games as a prop to the app sidebar. And from then
49:48
on, it's very simple. If the games length is zero, display empty. Otherwise, display them within sidebar
49:56
menu items. Once you've verified the functionality and you're satisfied, go ahead and commit these changes under a
50:03
message create and load games. Let's fix two things before we end the chapter.
50:08
The first thing that bothers me is that clicking on the game does nothing. And the second thing is that when in
50:13
collapsed mode, I cannot see the games at all. Or perhaps your agent literally renders every single game as the same
50:20
icon, making them undistinguishable from one another. Let's fix that. In a new session, tell your agent to modify the
50:26
app's sidebar to display a list of games in collapsed mode using the popover
50:31
composition which opens on collapsed recents button click. I am referring of
50:38
course to this button right here. So when we click on it, it should open a popover and then display a list of
50:43
recents like this. That is this button right here. Then make each game button
50:49
link to games ID and create games ID inside of the app route group rendering
50:56
the ID of the game inside a paragraph. You should now be able to go to individual game ID URL and you should be
51:04
able to view your games inside a popover. If you have an error like I do when the popover opens, simply go ahead
51:11
and copy it and give it to your agent. error when opening popover and paste it
51:17
and confirm that the error is fixed. The only important things you have to verify code-wise is that the games ID page was
51:26
generated within the app route group and that it is outprotected. So if your
51:31
agent didn't do that, tell it to outprotect your game ID. The second tip,
51:37
more than a requirement, is if your popover stays open when you select a
51:43
game, nudge your agent into creating a popover close primitive. You can see
51:48
that mine has modified the shhatsen component and then it used the popover close and this was the error that Nex.js
51:56
was throwing. So, it fixed it by adding native button false. I honestly wouldn't obsess over this code at all. There's a
52:03
billion ways you can do this and it's better if you learn to prompt your agent until you get the result that you want,
52:09
especially for something that is UI and not some important business logic which
52:15
needs to be deterministic and mechanical. So give yourself a challenge and try and prompt your way towards
52:20
making this look and feel how you want it. Once you're satisfied, go ahead and perform a commit. Since we added some
52:27
new variables, go ahead and copy the entire file. Go inside of your production instance, variables, raw
52:33
editor, and feel free to simply select everything and paste and then update the variables and deploy. And while you're
52:41
here, go ahead and push your changes, which is going to immediately start another deployment with your most recent
52:47
changes. You should now see a successful deployment next to your latest commit.
AI Chat
52:58
What I want to do now is add a chat composer and messages to each of these
53:04
game pages. The problem is this component right here comes with the suggestions built in. So what I have to
53:12
do is I have to go inside of the chat composer and I have to extract this
53:17
iteration of suggestions so that I can only have this component rendered on an
53:22
individual page. A cool way of doing this is connecting your IDE to your
53:27
coding agent using the IDE command if available and then highlight the section
53:34
which you want to remove and your agent will now have context of the lines selected. Now tell it to move the
53:41
highlighted suggestions outside of the chat composer. render them directly inside of the app page inside of the
53:48
empty content and add gap 6 class name to it and maintain suggestions array in
53:54
a separate file in lib game suggestions.ds. The homepage should look identical but
54:01
the code should be different. The chat composer should now be free from any suggestions related code and it should
54:08
now be rendered within the page file directly. The suggestions themselves should be maintained in a new file
54:15
entirely. Now let's commit these changes under a message refactor move suggestions outside of chat composer.
54:22
Now let's create a new component called chat thread using chaten message
54:28
scroller and our chat composer located at the bottom of that component. Inside
54:33
of that component, create a mock back and forth conversation between the assistant and the user using chatsen
54:40
bubble component. For the assistance bubble, render the logo as the message avatar. And then render that new chat
54:48
thread component as content of our games ID page. And let's give it a strict
54:54
rule. Do not add any real message submitting or loading functionality nor
55:00
modify the logic of the chat composer. So we just want to see the shell of this, not the actual logic. Your game
55:06
page should now look something like this. A composition of message scroller with a bubble component along with our
55:14
existing chat composer. This entire task should be implemented in just two
55:20
changes. A brand new component called chat thread which should use the message
55:25
scroller and the bubble as well as our existing chat composer. and it should
55:30
probably have some kind of array maintaining the fake conversation. And
55:35
the second change should be the rendering of that new component inside of our existing app games ID page. Even
55:43
though we never gave our agent an image reference of how the chat thread should look like, it got pretty close to the
55:50
expected result, which you can find under pages content build before preview. The only things we have to
55:58
change are the colors of the bubbles and the message avatar of the bot response.
56:03
So I'm going to go inside of chat thread. I'm going to find the message avatar which renders the logo and I'm
56:09
going to give it self start and rounded large classes. Since your agent could have generated different code for
56:16
rendering the actual messages, the best way to change the varants where you and I get the same result is to tell the
56:22
agent to do it. Change the user bubble variant to secondary and change the assistant bubble variant to ghost. And
56:28
with this change in place, your design should look almost identical to the one
56:34
we have in our Figma file. And now let's go ahead and commit these changes. Now
56:39
let's go ahead and install AI package into our project. After the AI package,
56:44
let's also add the skills so our coding agent knows how to use that new package.
56:50
Let's choose AI SDK. Let's choose our coding agent and select global
56:56
installation scope. Then use the symbolic link if available and then proceed with the installation. You
57:02
should now have the new dependency inside of your package JSON and you should also have a new skill visible
57:08
after reloading your skills. Now let's use the AI SDK skill to develop a simple
57:14
API chat route handler compatible with use chat hook. Let's outgate the route using clerk SDK. No UI changes, only
57:22
develop API chat. Use anthropic provider. You can replace this with OpenAI, Google or Fireworks if you wish
57:29
to tell it to have no database persistence because history comes from the browser. And tell it to keep it as
57:36
simple as possible with no complicated orchestration. The new route should be located inside of API chat folder under
57:43
the name route.ts DS and it should be a post request which is outgated and very
57:50
simply extracts the messages and then uses stream text with the model using the provider which you told it to use
57:57
preferably some very cheap model because this will be just for conversation and then it returns create UI message stream
58:04
response. So this is what the post request should look like as per the new
58:09
packages installed. you should definitely have a new dependency depending on which provider you told it
58:16
to use. That being said, if you also have AI SDK React installed and your
58:21
agent decided to do some message validation here, that's also fine as long as it ends in something like this.
58:28
Basically, we need to return a stream from this post request. Now, let's go ahead and commit these changes. We now
58:35
have a problem. The obvious next step is to connect the use chat hook to our chat
58:41
composer component. But previously we instructed the agent to modify the chat
58:46
composer component to explicitly submit for create game server action. So what
58:52
we have to do first is we have to change it so that chat composer accepts certain
58:57
props and then executes those props without even knowing what it's doing. So
59:02
we should agnostically be able to tell it to create a new game when rendered
59:07
here and to use use chat submit option when rendered here. That is the correct
59:14
way of doing this. That's exactly what we're going to tell our agent to do. Refactor chat composer to be a
59:20
controlled component such that it can create a new game when rendered from page and call a temporary send message
59:28
function when rendered in chat thread and send message function for now can
59:33
just be a console log with the value. You should now be able to create a new game when using the chat composer from
59:40
the homepage. But when the same composer is accessed through the chat thread, you should instead see a console log of the
59:47
exact value that you entered inside. There are many ways to complete this task, and yours doesn't have to be the
59:52
same as mine. That being said, I'm still going to go over the changes my agent did to achieve this. The first thing it
59:58
changed is the create game server action. Previously, it accepted form data. Now, it accepts the value
1:00:05
directly, which means it can be executed through normal functions and not just the server action forms. The next thing
1:00:11
it did is it modified my app page so that it no longer renders the chat composer but instead it renders the new
1:00:18
game composer. New game composer is essentially a client boundary for the homepage composer in here. It maintains
1:00:25
the value and it maintains the handle submit. Technically, it could have just
1:00:30
added this to the page, but then it would have to change the page to be a client component, which is a no-go
1:00:37
because the page is asynchronous and uses await outprotect. So, you can't turn it into a client component just
1:00:43
like that. If your agent did it, I would prefer you tell it to revert it to a server component and instead create a
1:00:50
client boundary for the homepage composer using a solution similar like this. And for the chat thread, it's
1:00:57
actually very easy in here. It could just add use client and do the exact
1:01:02
same thing directly in here. No need for a new component wrapping the chat composer because this is a component
1:01:09
within another component and not a server component page. And for the chat composer itself in here, it really
1:01:15
doesn't matter if yours added the same props as mine, as long as it works. Once you're satisfied with the behavior and
1:01:22
the code, go ahead and stage and commit these changes. Now, let's use AI SDK
1:01:27
skill to wire up use chat to our chat thread component. And let's give it some
1:01:32
relevant files. The API route and the chat composer. Now, we need to add the
1:01:38
environment variable for our provider's API key. In my case, that's anthropic.
1:01:43
In your case, it might be something else. So simply ask your agent what environment variable do I need for my AI
1:01:49
SDK provider and it's going to answer with the exact key that you need to add. And now let's try it out. I'm going to
1:01:55
send a message and I immediately get a response. And as you can see we can continue the conversation. The only
1:02:02
catch is is that there is no persistence at all. So if I refresh this everything
1:02:07
is lost and I have to start all over again. The implementation itself is pretty simple. You should have a new
1:02:13
package AISDK react from which you can now extract use chat. Your chat thread
1:02:19
should completely get rid of all the mock conversation and it should call the new hook from where it can extract
1:02:26
messages, send message and status. We have a handle submit function which very
1:02:31
simply sends the user's prompt to the send message function and it should also modify how it renders the AI assistance
1:02:39
response inside of the bubble content. Once you're satisfied with the implementation, go ahead and commit. Now
1:02:45
let's work towards persisting the chat messages in our database and the first step is to actually load the game on the
1:02:53
game ID page because right now we allow anything in the URL to load the chat
1:02:59
thread. We can add this with a simple task. Add get game to our games queries
1:03:05
and make sure it's scoped to organization ID. load get game inside of our games ID page and throw not found if
1:03:12
missing. You should now get a new get game query inside of your games queries
1:03:18
and you should see it being loaded inside of your game page. And if it's not found, it should throw not found
1:03:25
util from next navigation. Then go ahead and commit these changes. Now let's invoke the AI SDK skill and tell it to
1:03:32
persist chat per game. Let's give it some instructions. One game should only have one chat. We're going to do this
1:03:39
not by adding any new tables, but by adding messages JSON B column to our
1:03:44
existing games table. We are not going to implement any complex compaction. We are just going to load and save the full
1:03:51
thread on each turn. And let's make sure to scope changes strictly to this feature. We don't want agent going
1:03:58
around fixing or optimizing something else because this change can touch a lot of files and agents have a tendency to
1:04:05
do that. And let's give it a list of relevant files. Schema, chat thread, chat route, and games ID page. And I'm
1:04:12
going to give it a small note. Remember to do database push after the schema change. You should now have a fully
1:04:19
functional database persistence for each chat your game holds. Try having a
1:04:24
longer conversation with your agent. It might happen to you as well that you get an error. Apparently, we have some
1:04:31
elements with the same key. So, I'm going to copy this and I'm just going to paste it. The reason I had that error is
1:04:38
because my API chat route didn't provide a generate message ID. And because of
1:04:44
that, all of my assistant responses had the same key, which is scoped to the
1:04:50
message ID, which in my case was an empty string. And that's why I had that
1:04:55
error. You can see that now my agent uses a built-in solution create ID
1:05:01
generator from the AI package to assign the assistant message an ID. The only
1:05:06
thing I'd verify from the code is the schema. Make sure that you have exactly
1:05:12
one new column added, which is the messages column. Make sure it's the same field type as mine, and make sure that
1:05:19
it uses the type decorator and loads the UI message from the AI package. It
1:05:25
should be required with the default value of an empty array. Your game page will most likely now pass that new game
1:05:32
messages property into the chat thread along with the game ID. And then the
1:05:37
chat thread will simply use those new props and pass it along to the use chat hook. From the use chat hook, the data
1:05:45
then flows into the API chat route. And this is where data persistence actually
1:05:50
happens. Take a look at this onend function. You can see that it calls save
1:05:56
game messages which is a database update query for our new messages field. What's
1:06:02
important here is that it's scoped to an organization ID. Now whether your agent
1:06:08
inlined this entire function in here or if it created a separate file like mine
1:06:14
did is irrelevant. But what's actually important is that your agent added
1:06:19
organization ID in this post request and that it actually passes it into this
1:06:24
database query so that we only update messages inside of the organization that
1:06:30
we belong. You will also notice that my agent has modified the previous messages
1:06:35
array to be a validated messages array using the AI SDK built-in validate UI
1:06:42
messages. This is a pretty good idea because they are stored directly into the database. So this is an early way to
1:06:49
prevent malformed data from being saved forever. Once you are satisfied with the behavior and the code, go ahead and
1:06:56
commit these changes. We have two more problems to solve before we end the chapter. The first one is that the exact
1:07:04
prompt I enter into the homepage in the composer is what becomes the title of
1:07:09
the newly generated record. Let's tell the agent to modify create game to
1:07:14
generate the title using AI SDK generate text and a fast cheap model. Now try
1:07:21
creating a new game with a prompt build me an FPS game. And instead of that
1:07:26
literal text, you should see a proper title, firsterson shooter. The only thing I'd verify here is that the agent
1:07:33
actually uses a cheap and fast model. You don't want to be spending any tokens on this, and you don't want to be
1:07:39
wasting the user's time. Once you're satisfied, go ahead and commit. The last thing I want to fix is this behavior
1:07:46
right here. When I submit a new game from this prompt, it doesn't redirect me to this page, and it doesn't even submit
1:07:53
that as the first message. So, let's tell the agent to modify the homepage game composer by redirecting to the
1:08:01
newly created game and submitting the prompt as the first message in the chat thread. Now, let's try it again. Same
1:08:08
prompt, build me an FPS. I should now be redirected and the message should be
1:08:13
autosubmitted. There are many ways to implement this, but my agent chose the following approach. It modified the
1:08:20
create game server action directly by not only creating the game but also
1:08:25
inserting the initial message from the user. What's important here is that it gave that initial message a role of user
1:08:33
and this is where it redirects me to the game ID. The rest of the logic actually
1:08:39
happens in the chat thread. The chat thread uses use effect to look through the initial messages and if it finds an
1:08:46
initial message with the role of user, it calls send message which triggers the
1:08:52
response from the assistant. And if it does that, it changes the submitted game ID so it doesn't happen again. And to
1:08:59
put your mind at ease, all of the other files are just cosmetic changes like removing the definition of generate
1:09:06
message ID from API chat and instead importing it from a common export inside
1:09:12
of the messages. And then the actions imports that the same way the route now imports it. Nothing of value was
1:09:19
actually changed. And as per my new game composer, it just removed the resetting
1:09:25
of the value because it now redirects. Once you've verified the behavior and are satisfied with the code, go ahead
1:09:32
and commit. Since we added new environment variables in this chapter, make sure to update them inside of your
1:09:38
deployment instance on Railway. Simply replace all of them and click update variables and deploy. And then make sure
1:09:45
to push your changes so your newest changes are deployed.
Durability
1:09:56
Now that we solved database persistence, let's also solve durability. Go ahead
1:10:01
and tell your agent to write you a very long story. And then in the middle of
1:10:06
its response, go ahead and close the tab. Then go back onto your application
1:10:13
and look into the game you just created. Notice what happens. The agent was
1:10:18
interrupted, which means that the database persistence is also only halfway done. Closing the browser tab is
1:10:25
just one of many things that can interrupt our agent. That is because we developed the entire logic inside of a
1:10:31
simple route handler. Route handlers are susceptible to many problems. For
1:10:36
example, a crash, a redeploy, network connection issue. All of those things
1:10:42
can cause interruption. To solve this problem, we need to repurpose our route handler to simply invoke a task, a
1:10:50
durable solution which can run our agent in the background on its own stateful
1:10:55
machine. That is exactly the problem trigger.dev solves. So go ahead and use
1:11:01
the link on the screen to create a completely free account. Once you've created an account, go ahead and create
1:11:06
a new project with the name sandbox. Then go ahead and run npxtrigger.dev dev
1:11:12
with the latest version tag followed by in it. This will prompt you to authorize. So go ahead and do that. Then
1:11:19
go ahead and choose an existing trigger project. Make sure to choose the one we just created sandbox. For the
1:11:26
trigger.dev directory, make sure to type in trigger because the default is source
1:11:31
trigger which will create an unnecessary source folder. And for the example, choose the simple hello world option.
1:11:38
You should now have the trigger dependency inside of your package. JSON a trigger configuration and the example
1:11:45
trigger as well as some modifications to tsconfig and git ignore. Now let's add
1:11:51
trigger skills. Go ahead and choose your targets. For me, it's going to be claude code and agents.md.
1:11:57
Now go ahead and select all of the skills. The most important one being trigger authoring chat agent, but all of
1:12:05
the other ones are useful as well. You will most likely have to repeat this twice if you selected multiple targets
1:12:11
like I did. This process will add skills locally into your project and it will
1:12:17
also modify your agents and claude to instruct them how to use trigger skills.
1:12:22
Now let's also install a dev dependency trigger.dev with the latest version tag.
1:12:28
Now make sure that every single one of your trigger dependencies has the exact same version. Make sure there are no
1:12:35
mismatches. Now go ahead inside of your package.json scripts and add trigger dev
1:12:40
and trigger deploy. This is why we added the trigger package to the dev dependencies. You can now simply run
1:12:47
trigger dev and it's going to start it on the version which you have installed. Once you're able to start the trigger
1:12:53
server, go ahead and stage and commit the changes. With your trigger server running, you should now be able to find
1:13:01
this trigger example hello world task inside of your trigger dashboard. Just
1:13:07
make sure that you are in the correct project. Now go ahead and click test to confirm that it works. For the payload,
1:13:14
you can simply enter a combination of fu and bar and then click on run test.
1:13:20
After 5 seconds, you should see a completed task. For the payload, you should see the exact thing that you
1:13:26
entered. And for the output, you should see message hello world. Besides seeing the completed status in your dashboard,
1:13:33
you should also see it in your terminal. This hello world task and the fact that we ran it through the dashboard isn't
1:13:40
terribly useful, but it gives you an idea of how this will fix our durability
1:13:45
problem. We're going to develop the task locally in our codebase. Then we're
1:13:51
going to invoke that task in some kind of route handler like our chat route.
1:13:56
But the actual execution of the task will happen in trigger stateful machine.
1:14:02
And this fixes all of the problems that we had. Closing the browser, losing the network connection, triggering a
1:14:08
redeploy. None of those things are going to interrupt this task, which means that
1:14:13
this is a perfect place to run an agent. So, how do we migrate from a route
1:14:18
handler to a chat agent? The best resource I found is in the trigger
1:14:24
documentation itself. Scroll down until you find the agents section. And in
1:14:29
here, you will find migrate from a route handler. In here, you can find a quick overview of what stays, what goes, and
1:14:37
what's new. And if you scroll a bit down, you can find the prompt they've created to help you with the migration.
1:14:45
For your convenience, I'm going to copy the entire prompt and the URL where I found it inside of reference AI chat
1:14:52
migration. Let's go ahead and paste that prompt and submit. Before we can test
1:14:58
whether the migration worked or not, we have to create an API key. So find API
1:15:04
keys section in the dashboard, create a new API key and make it never expire.
1:15:10
Then copy the value and add it in your environment local under trigger secret
1:15:15
key. To make things simple, go inside of your Neon console and remove all game
1:15:22
records. I'd also recommend restarting your trigger server. You should now see
1:15:27
a new task added into the dashboard, which means we are ready to try it out. I'm once again going to ask for a very
1:15:35
long story. And then in the middle of generation, I'm going to close the tab.
1:15:41
I'm closing the tab. I'm opening it again. And I'm going back into my game here. And would you look at that? It
1:15:47
just continued with generation. I can refresh. And it's completely unbothered.
1:15:53
It will simply continue where it left off. This is what durability looks like. The reason this works is because the
1:16:00
execution is happening inside of the trigger server on its own stateful machine. Which means that browser tab
1:16:07
closing, network connection being lost, redeploy happening, or a crash happening
1:16:13
do not interfere with this task's execution, which is exactly what we need
1:16:18
for long game generations. The implementation is actually very similar as to how we implemented our AI SDK
1:16:26
flow. It all starts with the schema. We now have the access token and the last
1:16:31
event ID stored in the games table which is then used in the game page. It's then
1:16:37
passed along to the chat thread. chat thread along use chat now uses use
1:16:43
trigger chat transport which eventually gets us to the chat task which is
1:16:49
essentially what our API chat route was once you're satisfied with the behavior
1:16:55
and the code go ahead and commit now let's open a new session let's invoke
1:17:00
trigger authoring chat agent trigger chat agent advanced and AI SDK and tell
1:17:06
it to enable task cancellation from chat compon composer in chat thread by having
1:17:11
the submit button toggle its icon and behavior while the agent is streaming.
1:17:17
Your submit button should now have a square icon indicating that it's toggled to a stop button and clicking it should
1:17:25
stop the streaming and at any point you should be able to let it continue the conversation from where it left off. The
1:17:32
implementation itself is very simple. From AI SDK chat, your agent should now
1:17:37
extract stop and it should create a handle stop where it cancels both the
1:17:43
trigger task transport generation and the streaming itself and then passes
1:17:49
that handle stop into a new prop in the chat composer. The new prop should be
1:17:54
wired onto the submit button which toggles if it can be stopped. Once
1:17:59
you're satisfied with the behavior, go ahead and commit. Now let's make trigger work with railway because right now this
1:18:07
trigger secret key only works in our local trigger instance. Go ahead and
1:18:12
copy your environment variables. Go inside of environment variables in trigger and click add new and then paste
1:18:20
all of them here. Then go ahead and select development and production environment and let's click save. Now
1:18:26
let's go ahead and run npm run trigger deploy. After a successful deployment,
1:18:32
you should be able to change your environment from development to production and you should still see the
1:18:37
game agent task. And now scroll down until you find API keys and once again
1:18:43
create a new API key sandbox and let's make it never expire and full access.
1:18:49
Now go inside of your Railway instance and add a new variable trigger secret
1:18:55
key and click deploy. And now push your changes. So, Railway once again deploys
1:19:00
with all of your changes. Now, test whether trigger works on a production instance. I'm going to submit a message.
1:19:07
And after a few seconds, we should see a response streaming from the production instance. And that's exactly what you
1:19:14
should be seeing inside of the runs in production.
Sandboxing
1:19:24
Now, let's give our agent the environment to create games. Using the link on the screen, you can create a
1:19:30
completely free Daytona account. Daytona gives us a $100 in free credit balance,
1:19:36
which is more than enough for what we need. But on top of that, you can redeem coupon code Antonio 100 for an
1:19:43
additional $100 in credit balance. Now, let's go ahead and install the SDK. and
1:19:49
then let's install Daytona skills and then confirm that you can actually see the skill in your coding agent. Now
1:19:56
inside of the lib folder, create a Daytona folder with client.ts inside.
1:20:02
Now log to Daytona. Go into API keys and create a new sandbox API key with full
1:20:08
access and then add your key inside of your environment local. Now let's commit
1:20:13
this pretty clean Daytona integration. Let's use the Daytona skill to give each
1:20:18
game a Daytona sandbox. We're going to add a sandbox ID column to the games in
1:20:24
our schema. We are then going to create a helper in a new Daytona utils file.
1:20:31
create game sandbox which accepts a game ID, creates the sandbox and then creates
1:20:37
a new directory called the game with index html inside and then saves the ID
1:20:44
on the game and call that function from on chat start inside of our chat agent.
1:20:50
You should now have a new sandbox ID property in your schema. Make sure that
1:20:56
your agent didn't make this required. This property should be optional. Next,
1:21:01
you should have a create game sandbox function inside of lib Daytona utils.
1:21:07
This function should serve three purposes. The first one is to actually create the sandbox using Daytona SDK.
1:21:16
The second is to create a folder home Daytona game and a new index html file
1:21:23
inside of that folder. And the third one is to register the newly created sandbox
1:21:28
to the sandbox ID property in our schema. What I'd like for you to verify is that you actually have a game
1:21:35
directory somewhere. It's important that your sandbox creates a directory like
1:21:41
this one. Home Daytona game. What this means is that all development we allow
1:21:47
the agent to do within the sandbox is going to be contained within that game
1:21:53
directory. So this index html which we are eventually going to allow the agent to modify is going to exist inside of
1:22:00
this game folder which means that when we create the folder we can give it special permissions like this to ensure
1:22:07
that the tools cannot change anything outside of that folder and accidentally
1:22:13
destroying the sandbox. And in your chat agent, you should very simply invoke
1:22:19
create game sandbox on chat start and pass along the chat ID. If you go into
1:22:25
your Neon console, if your agent has actually pushed the changes, you will now see a new column sandbox ID. And all
1:22:33
of your previous conversations are going to have this property set to null. So let's go ahead and delete those records
1:22:40
and let's start some new ones. This time when you submit a prompt, it's not only
1:22:45
going to start streaming, but it's also creating a brand new Daytona sandbox.
1:22:50
And if you take a look at your Neon console now, you should see a sandbox ID
1:22:55
connected to this conversation. And if you go inside of your Daytona dashboard under sandboxes, you should see a
1:23:03
started sandbox with the exact ID that's in our Neon console. And you can
1:23:09
actually go inside of the file system by going inside of the file system option
1:23:14
home Daytona game and inside you can find index html. Now let's commit these
1:23:21
changes under a message give each game a sandbox. Now let's add a new client
1:23:27
boundary called game chat to our games ID page. It should render the existing
1:23:33
chat thread but also a new component chat preview. Those two components
1:23:38
should be orchestrated inside of chatsen resizable panels. And a small note that
1:23:44
chat preview should only render a paragraph, nothing more. I don't want the agent to implement this based on the
1:23:51
name. Your game chats should now look like this. The existing chat thread should stay the same, but next to it,
1:23:58
you should see a resizable panel. Your game page should no longer render the chat thread, but instead our new
1:24:05
component, game chat. Game chat accepts the same props as chat thread and simply
1:24:12
passes them along to the chat thread, which is now located inside of a
1:24:17
resizable panel next to the chat preview in another resizable panel. And the chat
1:24:24
preview itself is just a paragraph. And then commit the changes. Let's use
1:24:29
Daytona skill to add an API proxy for game preview URL. Then make the chat
1:24:35
preview component call the API and set the preview URL to an iframe. Then add
1:24:41
start game server helper to Daytona utils. Make it serve index html but
1:24:47
don't start a new instance every time. first health check for an existing one
1:24:52
and conditionally render our new chat preview if sandbox ID exists in the game
1:24:58
record. You should now see the content of index html rendered in the chat preview panel. If you see this warning,
1:25:05
you didn't do anything wrong. It's just a normal warning informing the user that this is a sandbox. And you can read more
1:25:12
about this warning in the Daytona documentation. Nevertheless, it's not going to interfere with our development.
1:25:19
New conversations are not going to have the iframe loaded because we told the agent to conditionally render the chat
1:25:24
preview depending on whether we have the sandbox ID column or not. Even after you get a response from your assistant, we
1:25:31
still don't know if we have sandbox or not because we never actually refresh the database query. So for now, you're
1:25:38
going to have to manually refresh and then you should see the iframe loaded. I don't know how your agent implemented
1:25:44
this, but I'm not a big fan of displaying the message that this should be empty. Why not just hide it? So,
1:25:51
that's exactly what I'm going to tell my agent inside of the game chat component. Shouldn't even show the chat preview
1:25:57
resizable panel if no sandbox ID is present. There we go. This looks much cleaner. And only once I refresh and we
1:26:04
load the sandbox ID, do I get a resizable panel. Implementationwise, there are two files you should keep an
1:26:11
eye on. The first one being the Daytona utils. This is where we requested a new function start game server. This
1:26:17
function is responsible for actually serving the game directory most likely using Python 3. My agent also added some
1:26:24
extra orchestration like logging. It's not required. So don't worry about that. What's important is what this function
1:26:30
returns. Now my agent made it so that it directly returns the URL which means it's also responsible for signing the
1:26:37
URL. What this means is that my route isn't responsible for much besides just
1:26:43
calling that function. But I actually imagined this function start game server
1:26:48
to be reusable for other purposes. And because of that, I actually feel weird
1:26:53
returning the URL here. I would rather this function returns the sandbox instance and then this route does the
1:27:01
get preview sign URL function on that sandbox instance. So, I'm going to tell my agent to modify Daytona utils start
1:27:09
game server to return sandbox inside of an object instead of being responsible for minting and returning the preview
1:27:16
URL and then make the preview route mint the URL from the returned sandbox from
1:27:22
the start game server function. This is more like it. Start game server now returns the sandbox instance which means
1:27:29
that my route is now responsible for getting that sandbox instance starting the game server by calling the function
1:27:35
and for minting the preview URL and finally returning it. This way we have
1:27:41
separated concerns. So our start game server is only responsible for what the
1:27:46
name actually says start the game server. After you've confirmed the behavior and are satisfied with the
1:27:51
code, go ahead and commit. Let's give our agent a little bit more information about its purpose by giving it a system
1:27:59
prompt. This system prompt isn't just going to be a string. Instead, we're going to maintain this inside of games
1:28:05
instructions. The instructions folder will have a bunch of different snippets explaining the game mechanism and how
1:28:11
you should generate games, workflow, runtime, etc. And we're then going to combine all of those in the index,
1:28:18
export it, and add that final string to the chat agent. You should now have an
1:28:24
instructions folder with index, runtime, and workflow inside. I wouldn't obsess over what's actually written in here.
1:28:30
When the time comes, I'm going to tell you to copy what I have in my source code. For now, it really doesn't matter.
1:28:37
Now, usually what we'd do in the index file of the instructions folder is simply import runtime and workflow and
1:28:45
then join them into one big string and then we would add that as the system
1:28:51
prompt. But in the newest AI SDK version, the system prompt is actually
1:28:56
deprecated and instead we now have instructions, which is actually the perfect model for what we have because
1:29:03
we can modularly add more and more instructions here. The only change I have outside of the instructions folder
1:29:10
or the chat agent is my Daytona utilus where the agent decided to export the
1:29:15
game directory which I'm guessing is used in the runtime. So the agent is aware of the path. As I said, I wouldn't
1:29:23
worry too much about the content inside of the runtime and the workflow. What's important is that you have now appended
1:29:29
instructions to your agent. So go ahead and commit. Now let's use the Daytona skill to add a get game sandbox helper
1:29:37
to our Daytona utils with the purpose of providing a guaranteed sandbox instance to future chat agent tools. You should
1:29:44
now have a new get game sandbox helper within your Daytona utils. The first
1:29:49
thing it should do is fetch the game from the database using the provided game ID. If the game doesn't exist, it
1:29:56
should throw. If the game sandbox doesn't exist, it should create a new game sandbox. Then it should fetch the
1:30:03
sandbox instance using the game sandbox ID. And finally, it should start the
1:30:09
sandbox. One change that my agent did outside of this function is inside of
1:30:14
the create game sandbox. So previously it directly returned sandbox ID but now
1:30:20
it returns the entire sandbox instance so that that sandbox instance can first be started before being returned. So my
1:30:28
first instinct is to verify that create game sandbox doesn't actually get its
1:30:33
results read anywhere. And looks like that is true. It's only used inside of the on chat start which means that we
1:30:39
don't even care about what it returns. One thing that kind of bothers me is that my start game server uses this kind
1:30:46
of return whereas my new get game sandbox uses this kind of return. So I'm
1:30:52
going to tell my agent to unify all returns for sandbox related helpers to follow the sandbox within an object
1:30:58
format. There we go. All three sandbox helpers now return the exact same format. And it also verified that no
1:31:06
color changes were needed. The only time we actually use create game sandbox is within the trigger agent chat, but it
1:31:13
discards the value as we verified. We can now go ahead and commit this change. We are now ready to give our agent some
1:31:20
tools. So let's call the trigger authoring chat agent skill and the Daytona skill. Implement tools inside of
1:31:26
lib games tools.ts. write file, replace text, read file,
1:31:32
list files, and delete file. All tools should be confined within Daytona Sandbox game directory. Wire them up in
1:31:40
our chat agent. And finally, update instructions workflow with tool usage instructions. Let's go ahead and tell
1:31:47
our agent to create a simple space shooter game. It now has all the tools
1:31:52
necessary to change that index file into something interesting. If you see your assistant responding with a completely
1:31:59
blank message, that's actually expected because we never implemented the UI to render tool calls. Remember to refresh
1:32:06
your page after it completes. In my case, it generated a super cool space
1:32:11
shooter game. Obviously, this can be very different depending on what model you're using and on what's written
1:32:17
inside of your instructions. But at this point, you should be able to generate
1:32:23
some kind of game. or if not a game, you should be able to modify the index file.
1:32:29
Your agent has almost certainly added ZOD to your dependencies for this task.
1:32:34
And that is because the tools need ZOD for input schema where you describe the
1:32:40
path, the content, and all other types of payloads the tool may take. The only
1:32:45
thing you should care about in the code of these tools is whether there is some kind of confinement for the file path.
1:32:53
What I mean by that is that these tools shouldn't be able to escape game
1:32:58
directory which we defined inside of Daytona utils. As you can see, my agent
1:33:04
has defined a function resolve game path which is invoked in every single tool.
1:33:10
And in here, it throws the error if the agent attempts to modify a file which
1:33:15
doesn't belong in the game directory. This is a protection so we don't accidentally destroy the sandbox or
1:33:22
someone tries to do a malicious prompt. In your chat agent, it's important to verify that you actually have the tools
1:33:29
property added, that you have the tools extracted from the run, and that you pass it into two stream text options.
1:33:36
What's also important is that you have an increased step count. So, previously we didn't even have a step count, but
1:33:43
for tool calling, you need a higher number for the step count. Once you're satisfied with the behavior and the
1:33:49
code, go ahead and stage. Now let's invoke the AIS SDK skill and tell it to
1:33:54
modify the chat thread component to display tool call states active, done, and failed using chats marker component.
1:34:03
You should immediately see what was previously invisible in your threads where the agent called tools. Now, and
1:34:10
if you submit an additional prompt, you should now see the agent working on tools in real time.
1:34:19
Your agent is most likely using the built-in is tool UI part from AIS SDK to
1:34:26
render a different component in comparison to what it renders when it's just a normal text and then in that
1:34:32
component it should decide what to render depending on the state. Once you're satisfied go ahead and commit.
1:34:39
I've noticed one bug which isn't really related to what we are doing right now but perhaps you have the same. When I
1:34:46
have a longer conversation, it looks like the entire page overflows instead of just the conversation. I'm going to
1:34:53
tell the agent that my game chat component gets y-axis overflow when chat
1:34:58
thread has a long conversation. The only scrollable element should be chat
1:35:03
threads message scroller. And there we go. Fixed. And now it works perfectly.
1:35:08
Looks like the mistake was that the agent previously gave resizable panel group a class name, but now it fixed it
1:35:15
by encapsulating the resizable panel group into its own div which has the same class name and removed the class
1:35:22
name from the panel group just in case you have the same problem. If you do, remember to commit so that you have a
1:35:29
clean git diff. Now let's fix the annoying issue where we have to manually reload to see the changes. So I'm going
1:35:36
to invoke trigger authoring chat agent AIS SDK and Daytona and I'm going to
1:35:41
tell it whenever the chat agent finishes a turn automatically reload the chat
1:35:46
preview so that the user sees their latest changes. Daytona preview URL can
1:35:52
stay identical across updates. So implement key revision. You should now be able to submit a prompt and see the
1:35:59
change happen in real time once the turn is over.
1:36:04
You will see a flash and then your new game. My agent implemented this by using
1:36:10
the onfinish property of the use chat. On finish it calls on turn complete
1:36:16
which is passed as a prop through the game chat. The game chat is responsible
1:36:22
for revision which means that on every turn complete it bumps the number. Then
1:36:28
that revision is passed to the chat preview and chat preview simply reloads
1:36:34
the fetch of the API proxy on every revision change. Once you verify the
1:36:40
behavior, go ahead and commit. Since we have a new entry in our environment
1:36:45
file, make sure to also add it to your railway instance. Remember, the trigger
1:36:50
secret key is different from the one you have in your local environment file. So don't use the same habit of selecting
1:36:57
all and then changing the entire thing in the raw editor because that's going to give you the incorrect trigger secret
1:37:03
key for production. Then go ahead and hit deploy and push your changes.
Game Engine
1:37:16
So how do we give our agent a game engine? Well, the answer is we add it to
1:37:21
the sandbox. We give it to the environment where the agent actually works. And we technically already do
1:37:27
this within our create game sandbox. In here, we create a new folder. And then
1:37:32
we insert index html into that folder. Using this same method, we could also
1:37:38
add the engine, the animations, the HUD, and the controls for the game. But you
1:37:44
can also see how hard this would be to maintain. So let's think of a different
1:37:49
way. Let's tell our agent to create a new runtime folder within lib games for
1:37:56
maintaining files seeded to each new sandbox. Our create game sandbox should
1:38:01
use file system to add all files, folders, and subfolders from the runtime
1:38:07
folder. We also need to ensure that our trigger config includes that runtime folder when deploying trigger. That's
1:38:14
because the runtime folder will never be imported. It's going to use file system to copy files onto the sandbox. And
1:38:21
let's register the runtime folder under slint global ignore so that it doesn't throw errors for template files. And
1:38:28
let's invoke the Daytona skill. You should now have a new runtime folder within your games folder. And in here,
1:38:35
you should have your index html. Perhaps you can ask your agent to add some styles. So you're going to have style
1:38:42
CSS as well. I'm purposely going to tell my agent to not modify any code and to
1:38:47
not use any tools, just respond because I want to see how this new index looks like and to see if it actually works.
1:38:54
And you can see that my new index html has the exact content written inside of
1:39:00
this index html here. So, how does this actually work? My create game sandbox
1:39:05
has been modified to no longer upload index html with its content inlined, but
1:39:11
to instead read through the runtime files and extract all folders and files
1:39:16
and then iterate over them and create each folder and upload each file. My agent decided to write the entire logic
1:39:23
for actually constructing the runtime folder path and reading through the path
1:39:29
and joining all of the files, folders, and subfolders in a separate function
1:39:35
seed. TS. Now, whether your agent added all of that inside of Daytona utils,
1:39:40
it's technically okay, but I do feel like it's a better separation to have it in a separate file like this. I wouldn't
1:39:48
really obsess over how similar your and my solution are for this as long as you confirmed that it works. But here's
1:39:54
what's important. Take a look at trigger config ts in here. I explicitly told the
1:40:00
agent to register that path. So why did I do that? You can see that we use something called additional files. The
1:40:07
reason we need to do this is because when we do trigger deploy, which we need to do whenever we want to use trigger in
1:40:13
production, trigger is going to include some files from our codebase, but not
1:40:18
all of them. So, which ones is it going to include? Well, it's going to include the ones which chat.ts is importing. But
1:40:26
you can see nowhere in here do we actually import the runtime. You'd think, well, we do in utils. No, we do
1:40:34
not. we simply read the files. We never actually import that path. So what would
1:40:41
happen if we deploy? Well, the path would never exist and this function, this seed function wouldn't be able to
1:40:47
read from the runtime directory that it's constructing right here. So that's why we need to tell the config, hey, we
1:40:55
have these files which are technically part of the trigger deploy, but we don't import it. So you need to add this. And
1:41:02
as instructed in the prompt, my agent also added the runtime folder within global ignores. This isn't required, but
1:41:10
it's useful because Eslint can throw a bunch of warnings and errors for this
1:41:15
runtime folder once we fill it up with engine hub controls and a bunch of scripts. But none of them are actually
1:41:22
affecting our codebase. They are built specifically for the Daytona sandbox. Now, you might be thinking, Antonio, is
1:41:28
this really the best way to seed files into new sandbox? To be honest, it's
1:41:34
not. The best way to do this would be using Daytona snapshots. Think of them
1:41:39
like Docker images. Essentially, what we would have to do is create a Docker image or some kind of registry which
1:41:46
would include all of those runtime files which we plan on using. And then we would simply modify our create sandbox
1:41:52
to include that snapshot ID. Let's call it sandbox container something like
1:41:59
that. But it's way easier for us to do this tutorial by simply copying using the file system because if you want to
1:42:05
do snapshots, you have to either do it using Docker Hub, Google Artifact
1:42:11
Registry, GitHub container registry or Amazon one. And honestly, I'm not really
1:42:16
sure which one of those are free, how complicated they are or anything like that. So, this will do just fine. And
1:42:22
now, let's go ahead and commit. So, how exactly do we now produce the actual files for the game engine? Well, I'm
1:42:29
going to show you exactly what my process was, how I iterated, and how I got to my final result. I already knew
1:42:35
that the best way to create games inside of a browser is using 3JS. So, I went on
1:42:41
to Skillsh and I searched for that technology and very quickly I found that
1:42:46
there is a repository cloud AI which seems to produce highquality skills for 3JS and the installs prove that. So, I
1:42:54
went ahead and run npx skills add 3JS skills. Once you've installed the
1:42:59
skills, verify that you can see all of them inside of your coding agent. I would then use those 3JS skills and tell
1:43:06
the agent to develop game engine generation primitives in the runtime folder. Things like engine, HUD,
1:43:12
controls, animations, models, sound, anything you can think of that can be useful for game generation. Also, update
1:43:19
instructions as you deem useful. You are permitted to add or edit existing files and also update index html to actually
1:43:27
load the 3JS module and to have a nice 3D welcome page with a rotating cube in
1:43:33
colors of our logo. You should now have a bunch of new files inside of the
1:43:38
runtime folder. You can see that my agent decided to extend my request with lightning materials, math, models,
1:43:45
particles, physics, a bunch of things, which is exactly how you build the game engine. You iterate with prompts like
1:43:51
this until you get the results you like. And if I request once again to not
1:43:56
modify any code and not use any tools, you can see that my welcome screen now
1:44:02
looks much better. And this cube is very similar to our logo. If you want to test
1:44:07
out your new game engine, I just want to give you a reminder that we are still using the cheapest model from when we
1:44:14
actually set up this agent. So, if you really want to see it in its best light, perhaps increase it to the newest, most
1:44:22
capable model if your credits allow you to do so. So, if you go ahead and take it for a spin, you will see that the
1:44:29
agent now reads all of these modules which were created, which is exactly what we wanted. We gave our agent a
1:44:36
sandbox and the environment of a game engine. Now, regardless if you're satisfied with the results your game
1:44:42
engine is producing or not, I would recommend that you commit these changes.
1:44:48
And the reason is that we still have to implement ask player tool, which will
1:44:53
basically be the briefing section where the agent asks the user a bunch of questions to accurately get what the
1:45:01
user wants. Perhaps then your game engine will be shown in a better light.
1:45:06
But don't worry, later in the tutorial, I will show you exactly which files you have to replace to have the exact same
1:45:13
game engine that I used in the intro of this tutorial, which produced all of those games. So, for now, go ahead and
1:45:21
commit. One thing we forgot to do is add Daytona API key into the environment
1:45:26
files of our trigger dashboard. It doesn't matter if you're in development or production. Just find environment
1:45:34
variables, add new and simply paste the value and select both development and
1:45:39
production and then click save. Once you've done that, go ahead and push your changes and then go ahead and run npm
1:45:46
run trigger deploy.
Briefing
1:45:55
Now let's implement player briefing. This is a functionality which will allow our agent to ask user questions about
1:46:02
the game. What we're actually building is a human in the loop functionality. So let's tell our agent to add an ask
1:46:09
player tool which unlike file tools has no execute. The player answers it in the
1:46:14
UI which is human in the loop. So it needs an output schema. The input schema
1:46:19
is going to have a dimension, the question itself, and then two to four options with each option having its own
1:46:26
ID, label, and description. And we're going to describe what is a dimension.
1:46:31
So a dimension should be an enium with parts of the game worth asking about
1:46:36
loop, goal, world, look, feel, etc. So it picks an area before writing the
1:46:42
question. The output should simply be the chosen options ID and label. And
1:46:47
let's also give our agent a note to only implement the tool, not the UI. And
1:46:52
let's invoke AIS SDK and trigger authoring chat agent. I would also recommend that somewhere in your prompt
1:46:59
you write human in the loop because trigger has the exact functionality for that. You should now have an ask player
1:47:06
tool inside of your tools file. In here, you should have a description, an input schema, which has the dimension, which
1:47:13
is an enium for loop, goal, challenge, etc. and similar things and you should have the question as well as the
1:47:20
options. Now the options should have ID, label and description minimum of two,
1:47:25
maximum of four and the output schema will very simply have an option ID and a
1:47:30
label which is what the player has selected. I also have one change here which is basically just registering that
1:47:36
big function inside of ask player in my create game tools and the entire create
1:47:42
game tools is passed inside of my chat inside of trigger so I don't really have to change anything here right because I
1:47:50
just have to modify create game tools and in here I registered ask player so that's all I have to do but my agent did
1:47:56
something else which is probably a good idea for your agent to do as well even though we specifically told it only
1:48:02
implement the tool. It also added the ask player documentation into the workflow instructions. So if your agent
1:48:09
didn't do that, just give it a little nudge. Okay, now add the documentation for ask player into the workflow for
1:48:16
instructions. And if you want to, you can also ask your agent to verify that the new ask player is actually wired in
1:48:22
the agent tools. Now let's continue within the same conversation and tell our agent to extend our chat thread
1:48:29
component with chatsen questionnaire component for tool ask player human in the loop state. If you ask your agent to
1:48:36
build you an FPS game with a little note ask me questions first. It should now definitely use the ask player tool and
1:48:44
you should confirm that you can see a questionnaire and verify that after you answer a question the game generation
1:48:50
completes and eventually finishes. The only problem I have with the current implementation is that the agent asked
1:48:57
me only one question. And I'm pretty certain that this is a problem with the system prompt with the instructions. So
1:49:04
I'm going to tell my agent that the tool and the questionnaire work. The game generation completes with my answer
1:49:10
locked in. The problem is that the agent only asked me one question as opposed to
1:49:16
asking enough questions to understand each area covered in ask player tool dimension enum. So I'm going to tell I
1:49:22
assume this is a workflow instruction problem. So looks like I was right. It
1:49:29
was entirely up to the prompt which was actually suppressing questions. Now your
1:49:34
instructions in the workflow might look completely different and perhaps you already got enough questions for your
1:49:40
taste. But I only got one question. So that wasn't enough for me. So the agent now modified the workflow even further
1:49:47
to use that new ask player question. This time the agent correctly asks me multiple questions. You can see I
1:49:54
already locked in my first answer for a question regarding building a racing
1:50:00
game. And the more I submit, the more questions I'm going to get until the game eventually starts building. Uh, one
1:50:07
thing I want you to notice that my agent did, which I don't know if yours did, but it decided to completely block the
1:50:13
composer while the question is spending. And this is actually a very quick and easy way to block the problem of user
1:50:20
answering in the middle of human in the loop tool. So if you have that conflict
1:50:26
where you can still answer here, perhaps ask your agent if it's possible to block
1:50:31
the composer until the user answers. Also make sure that if you try to submit
1:50:37
without selecting a question, uh it should throw you an error. So go ahead and play around until it basically looks
1:50:44
and feels like you would expect a questionnaire to look and feel. Now let's go over the implementation. For
1:50:49
starters, we have some new imports from the AI package and some new icons like circle question mark icon. Then we have
1:50:56
the questionnaire component imports. After that, we have some changes to the use chat hook. We have a new property
1:51:02
send automatically when which uses the last assistant message is complete with tool calls which automatically
1:51:09
re-triggers when the user answers the question. And we have a new add tool output export from here which I'm
1:51:15
assuming is used whenever the user actually submits an answer. Then down here we find the last message and we
1:51:23
verify that the last message is a question and then we turn that into a boolean. And with that we can for
1:51:30
example disable the composer so the user can't write an answer but instead has to choose from the questionnaire. Then
1:51:36
inside of the message scroller, inside of the bubble content here, just like we render regular text from the assistant,
1:51:42
we check conditionally if this is a tool and if the tool name is ask player and
1:51:48
if it is, we then render ask player card, which as I expected has a prop on
1:51:53
answer, which simply calls add tool output to complete that human in the
1:51:58
loop. And in here we use the pending question boolean to disable the composer and change the placeholder to uh pick an
1:52:05
answer from above. And then down here it's basically the entire implementation of all the components, interfaces,
1:52:12
functions, everything we might need for the questionnaire. Now should this stay here in the chat thread or could have it
1:52:19
that been uh implemented in many components and files? Sure, perhaps that would be even better if your agent did
1:52:26
that good. If it put it all in chat thread, that's also good. I would focus more on the behavior rather than the
1:52:33
exact code being uh as you see here. But do verify that you have the changes
1:52:39
inside of your use chat. If you can see add tool output and if you can see send automatically when in combination with
1:52:47
rendering uh different things. If tool name is ask player and is tool part, you
1:52:53
are most likely 90% aligned with my code. Once you're satisfied with the
1:52:58
behavior and the code, go ahead and commit.
Observability
1:53:09
One scenario we didn't think of is what if the agent generates a game which
1:53:14
crashes. In this example, I purposely told the agent to crash the game. And
1:53:19
look at what happens. The output simply looks frozen. There's no indicator of
1:53:24
any error. The user doesn't know what happened. And neither do we, as the developer know that this happened to a
1:53:31
user. The only indication of the error is in the console. What if I told you that isn't the first error, which we
1:53:38
completely overlooked. Go inside of your runs and enter any run. Scroll down and
1:53:45
carefully look for something like this. Now, chances are you don't have this, but in my scenario, I have an error for
1:53:54
which I didn't even know happens. The reason I didn't know it happened is
1:53:59
because the agent was thankfully able to complete the entire game generation regardless. So, I went looking deeper
1:54:07
and I noticed that almost all of my previous runs include some kind of
1:54:12
error. This is where it became clear to me that we need to add monitoring to our
1:54:17
application that is going to alert us when things like these happen. There is no better solution for this than Sentry.
1:54:24
And I've partnered with them to give you 3 months of Sentry team for free as well as 150,000 errors included. So use the
1:54:33
link on the screen to create a completely free account. Once you've created an account, go ahead and create
1:54:38
your first project. Then go ahead and select Next.js js and give the project
1:54:43
name sandbox and hit create project. Now let's run npx sentry aai install which
1:54:50
is going to configure sentry for our coding agents. The CLI is going to detect all coding agents installed on
1:54:56
your machine and give you an option to install the sentry plugin. So make sure you toggle the one you use and hit
1:55:01
install. The CLI will then ask you if you want a prompt to help you get started with Sentry. So choose yes for
1:55:07
that. Now reload your skills and your plugins and make sure that you can see the sentry commands. And the prompt
1:55:13
which you copied is actually as simple as this. Use the sentry get started skill for this project. You will most
1:55:20
likely be asked some questions. For example, Sentry MCP is not authenticated. How would you like to
1:55:26
proceed? So choose the option I have an account connected. The agent will provide you with the URL which you can
1:55:33
use to authorize Sentry. I'm then going to tell the agent that I've authorized and that I already have a project called
1:55:39
sandbox. Use it. If the agent asks you where the project is deployed, it's going to give you options like versell,
1:55:46
github actions, docker, etc. But you can also give your own answer railway. So
1:55:51
add values to my environment local directly. Sentry agent recognizes that we use Verscell's AI SDK and
1:55:58
trigger.dev. And while it's extremely cool that we can add integration for both from the setup, I would prefer if
1:56:06
we chose the option nothing else for now simply so we can get started with the base sentry integration and then we can
1:56:13
commit that and then we can add one by one these extras that we need. After the setup completes, go inside of your
1:56:19
environment local and verify that you have all of these environment variables. The only one that should be empty is the
1:56:26
sentry out token. So, let's go ahead and set it up. Inside of your Sentry dashboard, scroll down until you find
1:56:32
organization tokens and click create new token. Give it a name of sandbox and
1:56:38
click create token and then add it to the variable. You will most likely have the exact same files in your git diff,
1:56:45
including the exact same changes. But the easiest way to verify whether the setup is actually the same, go ahead and
1:56:52
ask your agent in the same session, do I have logging enabled, replays enabled,
1:56:57
and tunneling setup. You should get yes for every single one of those questions.
1:57:02
If any of them is no, simply ask the agent to enable it. Now, tell the agent
1:57:08
to kill port 3000, which it probably reserved for the next server. After you
1:57:13
verify that the port is free, go ahead and restart your npm rundev. It's also a
1:57:18
good idea to restart your trigger server. Now go inside of your homepage and simply add a new error. Sentry test.
1:57:25
You should now see an error when you try to visit your homepage. And in a few seconds, you should see that exact error
1:57:32
in the Sentry dashboard. Now go inside of your chat composer, find the handle
1:57:37
submit function, and intercept it with another error. Now go ahead and try and submit your chat composer. You should
1:57:44
once again see an error. Just like the previous error, it's going to appear in your dashboard. But do you want to see
1:57:50
something cool? Go inside of this error and scroll a little bit down. And what you're going to see here is almost like
1:57:57
magic, a replay of what the user was doing when the error happened. This can
1:58:03
be invaluable information for you in production. Now make sure you have reverted those errors we added in the
1:58:09
homepage and in the chat composer and then commit your changes. Sentry can now report every single error that happens
1:58:16
within our Nex.js application. But it still can't see anything happening within our chat agent task. That is
1:58:23
because Trigger runs in its own environment. So let's go ahead and wire up Sentry with Trigger. First things
1:58:29
first, make sure to shut down your server so it doesn't interfere with the agent trying to test it. Besides using
1:58:35
the sentry skill, I would also like to provide our coding agent with a great documentation from trigger itself.
1:58:42
Simply search for sentry and in here you will find track errors with sentry and
1:58:48
copy the URL. Then go ahead and tell the agent to set up sentry with trigger.dev
1:58:53
using the sentry skill and the documentation and then paste the URL. You should now see a new dependency
1:59:00
sentry node and a new dev dependency sentry esbu plugin. You should have an
1:59:05
update within your trigger config which registers the sentry esbuild plugin. You
1:59:10
should also have a new init file within your trigger folder which loads sentry
1:59:15
and registers tasks on failure event. So every single failure that happens within
1:59:21
our trigger environment gets reported to sentry and you should have a new task registered sentry error test which is
1:59:28
used to test whether this is actually wired up or not. This is taken exactly
1:59:33
from the documentation which we provided. We can delete this test later but it's actually useful to have it for
1:59:40
now. So if your agent decided to remove it because it's an obvious test task, tell your agent to bring it back. You
1:59:47
can simply send it the URL once again so we can actually test whether it works or not. Remember to start your trigger
1:59:53
server before trying it out. Then go ahead and find sentry error test task
1:59:58
inside of your trigger dashboard and click on test. The payload doesn't matter. You can simply hit run test and
2:00:05
it should fail almost immediately. Now go to your Sentry dashboard and look for this label. This is a custom error that
2:00:13
Sentry will capture or whatever you have written in here. And once you find it,
2:00:19
go ahead and open it. This will show you exactly where the error is coming from. Trigger sentry error test. We can now
2:00:26
officially capture all errors coming from trigger. Once you've verified that it works, go ahead and commit the
2:00:32
changes. Now, let's go back to this scenario of a broken game. How do we make Sentry report these types of
2:00:39
problems to us? Because right now the only indication about what is broken is
2:00:44
visible inside of the console of the user who is looking at a broken game. So
2:00:50
even though this seems to be a part of our Nex.js application, it's actually not. The game is hosted on a Daytona
2:00:58
sandbox and we are only loading it through an iframe. Sentry cannot report
2:01:03
those errors. Let's tell the agent to develop a new report script within our game runtime. It's a plain script which
2:01:10
is loaded before our main script. So any syntax error that happens in the main script still gets reported. We then
2:01:16
explain to the agent that the game runs in an iframe and needs to propagate errors all the way to our next.js
2:01:23
application. The parent which is our application is going to pull using game
2:01:28
ping and the frame is going to answer using game status with the first error
2:01:33
that it caught or nothing if it's healthy. You should now have a new script registered inside of your runtime
2:01:39
index file. Inside of your report script, simply verify that you have things like game ping and game status.
2:01:46
And also verify that you can find some event listeners like the error event listener or the unhandled rejection
2:01:54
event listener. And at the end you should find source post message. And it
2:01:59
should use the type which is registered under game status. And in my runtime instructions, the agent has added
2:02:05
documentation about the report script, how it shouldn't be modified, and how it should belong first in the line of
2:02:12
script tags. Now, in the same session, tell the agent to use sentry logger to
2:02:17
capture these events in the chat preview. And you can tell it to use sentry skills. Now, remember, we cannot
2:02:24
test whether this reporting works or not in any of our older generations. So, we have to start a new one because all the
2:02:30
generations never had the report script to be copied into them. So, tell your agent, do not ask me any questions. Do
2:02:37
not generate any games. I am testing error reporting. Create an error that will crash the script entirely. You will
2:02:43
most likely see an output like this. And when you open your console log, you should see a type error inside or any
2:02:51
kind of error for that matter. Now, go onto your Sentry dashboard, click on explore, and head into logs. And in
2:02:57
here, you should see your game error. Keep in mind that logs don't appear as
2:03:02
quickly as errors do. So, if yours still hasn't shown, that's completely normal. In a moment, we're going to add logs all
2:03:09
over our application. And then you will be able to more accurately test whether you are receiving logs or not. But look
2:03:17
at how useful this is. Every time one of our users gets a generation which
2:03:24
crashes, we will see the exact log and the exact message of what happened. This
2:03:30
is extremely valuable in production. How else would you know on what you have to
2:03:35
work on within your runtime? You can perhaps extract a pattern that levels are often breaking or physics are often
2:03:43
breaking and then you can tell your agent, hey, we're getting this error very very often for our users. Go ahead
2:03:50
and fix that in the runtime. Absolutely amazing feature from Sentry. So, what
2:03:56
changes did my agent exactly do in the chat preview component? First of all, you should see a new import everything
2:04:03
as Sentry from Sentry Nex.js. Now, my agent went above and beyond to develop
2:04:10
this error reporting, even though I expected a much simpler implementation.
2:04:15
I'm not going to complain, but I don't expect you to have the exact same thing. So, here's what to look for. You will
2:04:21
most likely have some type of use effect. And within that use effect, you will probably target frame content
2:04:28
window and send a post message with the type game ping. And somewhere down in
2:04:33
that use effect, you should have sentry logger error. And that is how this
2:04:39
works. And that logger error is most likely going to be contained within some kind of on message. And that on message
2:04:46
is going to be registered to an event listener. That is how it's supposed to work. Now go ahead and stage and commit
2:04:53
your changes. Now let's use Sentry Skills to add logging to the entire project. Tell it to replace any existing
2:05:00
console API with sentry logging. Add logging to missionritical infrastructure
2:05:06
and places where it's good to have. So we want our app to be covered with logs entirely. This change will most likely
2:05:13
modify a lot of your files in a lot of different places. So make sure to test your app end to end. Every functionality
2:05:21
that you know should work, make sure that it still works. So, I went ahead and generated a samurai sword dual game,
2:05:29
answered a bunch of questions, and then let the agent do its thing. Take a look at my logs. So, not only can I see what
2:05:37
I was doing every step of the way, but I can see exactly when the preview URL was served, exactly which tool the agent
2:05:44
call, I can see exactly which tool has failed. I can see exactly what the chat
2:05:50
turn has failed. Not a single thing goes without me knowing about it. And this is
2:05:57
how you prepare your app for production. So once you're satisfied and you have verified that every functionality still
2:06:04
works, go ahead and commit. Now remember to add all of your sentry environment
2:06:10
variables into trigger dashboard. Make sure you do that and select both development and production and then do
2:06:17
the same thing for railway and hit deploy. And after that, go ahead and
2:06:23
push your changes. And last but not least, don't forget to do npm run trigger deploy.
AI Models
2:06:36
Now, let's go ahead and implement the functionality behind this dropdown right here. So, it doesn't matter if your
2:06:43
dropdown actually displays any models here because we never explicitly told the agent what this dropdown is supposed
2:06:49
to be. But one thing is for sure, this does absolutely nothing because our
2:06:55
agent is hardcoded to only use one model. The current chat agent is hardcoded to one model. Make it three
2:07:02
entropic ones. No UI yet. Of course, replace entropic with whatever provider
2:07:07
you're using. So, we're going to implement this across three files. the model catalog which is a client save
2:07:13
file which consists of ids, names, taglines, whether the model is the default one and the game model ID type
2:07:21
models.ts which is server only which holds the provider instances and agent.ts which turns an ID into stream
2:07:29
text settings which is basically what chat agent uses. Then the chat agent reads the model of client data and let's
2:07:37
invoke AISDK and trigger authoring chat agent. You should now have the following
2:07:42
files. Let's start with the model catalog. This one is intended to be used by the UI. So, it should be a very
2:07:49
simple array game models with ID, name, and tagline for each model. Now, here's
2:07:55
the catch. The ID doesn't really matter. It can be whatever we want. That's why
2:08:00
it's not inferred from any AI SDK package because this is simply a key to
2:08:06
communicate from UI to the server. And this model catalog also exports the game
2:08:12
model ID and sets the default game model. Essentially the model catalog is
2:08:18
the source of truth. This is where you would first add a new model from and
2:08:23
then you would go into models. Now in here this is where we add actual
2:08:29
providers. So this is where we read those ids which are defined in the model
2:08:34
catalog and we map them to actual providers. So these ids are important
2:08:40
because if you misspell these ones it's going to break entirely. Right? But what we call these ones really don't matter.
2:08:47
We can call it this. We just have to be careful to also write it like this here. Right? That's the whole point of this
2:08:54
model catalog. So this one is completely independent. This is our source of truth. And from here we export the game
2:09:01
model ID and the default game model. And then we map that inside of this very simple uh models.ts which is intended to
2:09:09
be used uh by the server. And next you should have agent.ts.
2:09:15
This one should be fairly simple. It's basically a factory which accepts a model ID and reads from the game models,
2:09:23
these ones, the server ones, and assigns the one whose ID it matches. So in the
2:09:30
end, the model is essentially going to be the exact provider options that it
2:09:35
needs. And now we get to wire that in into our chat, our trigger task. So,
2:09:41
first things first, you can see how my agent has completely scratched all the hard-coded anthropic imports and the
2:09:47
hard-coded claude oppus 5 model. So, what it did instead is it imported zod
2:09:54
and it imported game model settings from lib games agent and it also imported the
2:09:59
default game model ID and the game models from lib games model catalog.
2:10:05
This one uses both the model catalog and the agent but for different purposes and you're going to see how. So the question
2:10:11
remains how does the agent know which model to pick? How does the UI tell the
2:10:17
agent which model to pick? Well, the answer is uh client data. So my agent
2:10:22
developed client data schema using zod which is a very simple object which
2:10:27
accepts or should I say provides a model id which is essentially an enum for game
2:10:34
models. That's why we have to import that and then we use that schema for the client data schema property inside of
2:10:40
our chat. Inside of onturn complete we can now extract the client data. Now, here's
2:10:48
something that your agent might or might not have done. So, in here, I have some Sentry logging info. So, my agent
2:10:56
actually modified it so that it no longer tracks that hard-coded model, but instead uses the client data model ID or
2:11:03
falls back to default game model ID. So, that's why in here, my agent extracted
2:11:09
it instead of on turn complete. If you're not doing any logging here, then obviously you don't need to uh extract
2:11:15
client data inside of onturn complete. And this is where the magic happens. So
2:11:20
while your agent doesn't have to add the client data to on turn complete, it
2:11:26
definitely needs to add it to run. In here, we actually choose the model. So
2:11:32
you can see how previously we had model entropic and then hard-coded string inside. But now we change that so that
2:11:38
instead it uses game model settings. It spreads it because it's an object. So
2:11:44
it's basically going to add a bunch of properties like model uh provider options whatever we uh end up expanding
2:11:51
this provider options with later and very simply reads the client data model
2:11:58
ID if it's not provided falls back to default game model ID. The actual
2:12:04
functionality should be unchanged. So, make sure you verify that. If you're satisfied, and if you've verified
2:12:10
everything works as expected, go ahead and commit. Now, let's implement the UI part. Let's start by wiring up the chat
2:12:17
composer model dropdown to the real catalog. And let's pull it out into model picker component. So, what I'm
2:12:24
referring to is, of course, chat composer, but I'm referring to the fact that my drop-down menu is in line. So if
2:12:32
your agent already separated this into its own component, then you can just tag that component. But since my agent built
2:12:39
the whole thing here, I'm explicitly telling it to separate it in a separate file. So how are we going to do that?
2:12:45
Well, radio group instead of plain items name plus tagline per model. Check on
2:12:51
the current one and trigger shows the selected name. It doesn't own the selection. It takes model ID and on
2:12:58
model change as props. Composer passes them through the chat above holds the state and puts it into client data. So
2:13:06
even though this is a pretty straightforward implementation, my agent did something that I'm not a fan of, and
2:13:13
that is that it completely removed the model picker from the homepage because it's technically within a different
2:13:18
component. So I'm going to select the new game composer and tell it that it should have the same model picker. There
2:13:25
shouldn't be any database changes for this feature. And I expect the selected model from the homepage to carry over to
2:13:31
the chat thread. All right. So I'm in the homepage and I'm going to choose Haiku 4.5 and I'm going to submit. So
2:13:39
let's see what happened. It should both start answering with Haiku 4.5 and it
2:13:44
should also pre-seelelect Haiku 4.5 right here. And this definitely looks like an answer of Haiku. And Haiku is
2:13:52
pre-selected right here. Since this is a UI change, it's more important that the behavior of your result matches mine
2:14:00
rather than the code because the code can be implemented in many many ways. So the most notable thing I can show you
2:14:07
here is how it implemented the homepage model carryon. So what it did is it
2:14:13
changed my create game to accept model ID besides the prompt. So then it can
2:14:19
redirect me to the games page with model in its params and then the game page
2:14:25
reads those search params and it can extract the model from here and then pass that uh to the game chat. And
2:14:33
inside of the chat thread where the model is further passed, we create the client data which is a use memo which
2:14:39
changes every time the model ID changes. And how does the model ID change? Well, very simply, the model ID changes
2:14:45
through the chat composer, which uses our new component model picker. So, it's
2:14:51
a very straightforward prop drilling. What's important is that inside of your
2:14:56
chat thread, you actually construct the client data and then pass it to the use trigger chat transport. So, once you're
2:15:04
satisfied with the behavior and the code, go ahead and commit.
Billing
2:15:14
In order to use our coding agent to add billing to our project, we first need to install clerk skills which allow us to
2:15:21
do so. Then go ahead and reload your skills and verify that you now have clerk billing. Now let's use the clerk
2:15:27
billing skill to enable organizations billing and set up a paid plan. The paid plan is going to be called builder. It's
2:15:34
going to cost $20 a month with a description, $10 in game building credits added every month. And let's
2:15:41
specify no UI, no yearly plan, all B2B, no user plans. Inside of your Clerk
2:15:47
dashboard, you should now be able to see the billing page. And if you go inside of configure billing, subscription
2:15:54
plans, under organization plans, you should see free and builder. Builder
2:15:59
should cost $20 a month. Its key should be builder. It should have a description. It should be publicly
2:16:06
available. And it shouldn't have an annual option. It should simply have a fixed monthly base fee. Also, double
2:16:13
check inside of billing settings that user billing is not enabled. We only want organization billing. And same goes
2:16:20
with the plans. You don't need user plans at all. The free one is the one that comes with it. Now, let's develop
2:16:27
the billing page. Let's go inside of our Figma reference. go inside of content page and find the billing layer. For
2:16:34
your convenience, I've added the exact container I'm going to paste into my coding agent inside of the design folder
2:16:40
under this chapter's name. Now, let's develop the billing page within our app route group that looks like this image
2:16:46
reference. Use clerk's pricing table component for organizations. Wire up the
2:16:51
billing link in the app sidebar. Develop UI only, no credit logic, and the
2:16:57
billing page should all be one file. and let's invoke clerk billing skill. You should now be able to use the credits
2:17:03
button in the sidebar to redirect to the billing page which should have the pricing table component from clerk. And
2:17:09
from here you can try out subscribing with a test card inside of your clerk dashboard under billing. You will now
2:17:15
see your first subscription. And if you want to restart it, simply go ahead and click here and subscription. Now once
2:17:22
you verified the behavior, go ahead and commit. Now let's add a credit ledger table to the schema. We're going to have
2:17:29
an ID organization ID which belongs to clerk entry key which describes why the
2:17:34
ledger was modified amount which is a big integer kept in billions of a dollar
2:17:39
and it can be negative. The reason we keep it in billions of a dollar is to accurately represent those granular
2:17:46
changes that LLMs can do. We're going to have created at property and we're going to make sure that organization ID and
2:17:52
entry key combination is always unique. So a ledger cannot be modified twice for
2:17:57
the same purpose in the same organization. Just develop the schema. Nothing reads or writes it yet. To
2:18:03
ensure your agent has actually pushed the new table to the database, visit your neon console. And in here you
2:18:09
should find the credit ledger schema itself should look like this with a couple of new type exports. Once you've
2:18:15
verified that the new table has been pushed, go ahead and commit. Let's continue in the same session and explain
2:18:21
how the credit ledger should be used. Subscribing should actually give an organization credits and they should be
2:18:28
able to see how much they have left. For that, let's develop reconcile.ts.
2:18:34
It should read the subscription with get organization billing subscription API and it should insert a credit ledger row
2:18:40
for $10 for each month they've paid for. And they should never grant the same
2:18:46
month twice. We should have a ledger.ts file which is responsible for maintaining the balance. The balance is
2:18:53
a sum of each organization's rows plus $1 which we give for free. Which means
2:18:58
that an organization which has no rows in the database for the credit ledger reads exactly $1. We should have a
2:19:04
format file which simply renders an amount as dollars and the billing page should reconcile on load and show the
2:19:12
amount and the app layout should do the same and pass it to the sidebar. Use
2:19:17
clerk skills for subscriptions API. You should no longer have hard-coded credits
2:19:22
inside of the billing page and inside of the sidebar, but instead you should have $1 because we currently have no rows in
2:19:31
the database regarding our organization and the ledger. So, let's try subscribing and let's see if that
2:19:38
changes. If this was implemented correctly, after we subscribe, we should
2:19:43
get $10 in credits, which should be visible in the billing page and in the sidebar. You should now see 10
2:19:49
additional credits in the organization that you upgraded. And if you try and go to another organization which isn't
2:19:56
upgraded, you should see the $1 which we give for free and verify that when you
2:20:01
go back into the upgraded organization, the credits are updated. Once you verify
2:20:06
the behavior, go ahead and commit. Let's continue within the same conversation so the agent has context about what we're
2:20:13
building. Building a game should actually cost the organization some credits. So let's develop pricing utils
2:20:18
for that. It should maintain what each model costs per million tokens keyed by the model ids we already have. It should
2:20:26
differentiate between fresh input, cached input, cash rights and output because all of them are priced
2:20:31
differently and its task should be to turn one step's token usage into an amount. We also need to modify our
2:20:38
ledger. It should charge a step which means inserting a negative credit ledger row for that amount. It also needs to
2:20:45
use the step's response ID as the entry key. So the same step can never be charged twice. For example, if the user
2:20:52
decides to regenerate it or something like that. Let's go ahead and tag our chat agent and explain that it should
2:20:57
charge after every step and the sidebar balance should drop as the game builds.
2:21:03
And let's invoke AI SDK and trigger authoring chat agent. Now let's try it out. I'm going to go ahead and start a
2:21:10
new conversation. And as the tool calls move on and as the turns complete, this
2:21:15
balance right here should slowly get diminished. And as you can see from the very first question, you can see that
2:21:21
the balance is now smaller than it was before. My agent cleverly reused the handle turn complete which I already
2:21:29
used to update the preview. So if you have a use effect which updates the preview, it probably reused that. The
2:21:36
reason router.refresh refresh is sufficient to update the balance is because the app sidebar is rendered
2:21:42
within a server component which actually fetches the balance and then passes it as a prop to the app sidebar. So every
2:21:49
time you call router.refresh, all the queries inside of server components get refetch. If you're
2:21:55
planning to actually use this in production, it might be a good idea to tell your agent to write a comment
2:22:01
similar like this so you know exactly where and how long ago your agent
2:22:06
fetched prices for all of the models which you are using. Once you verified the behavior, go ahead and commit. Now
2:22:13
let's block a build when the organization is out of credits. We need to check before a session starts and
2:22:20
before every turn after that. If the balance is empty, sync the subscription once first because a month may have
2:22:26
renewed. Now, the problem is we have to check this inside of our worker, but the
2:22:32
worker has no access to clerk's out function because it's in a different environment. So, we need to alter all of
2:22:38
the existing files we created to pass the organization ID prop inside. The player should see a message in the chat
2:22:45
if there's no balance and not a crash. And one more rule, this is my personal
2:22:51
opinion. If a build is already running, it should finish even if the balance goes below zero. So we don't interrupt
2:22:58
runs. The user simply ends up being in depth by having negative balance. So the
2:23:03
next time they upgrade, their balance will be deducted by their negative amount. And let's say use trigger
2:23:09
skills, AI SDK skills, and clerk skills. I'm going to go ahead and try building a
2:23:15
new game while having negative balance. Let's see what happens. You can see that immediately the very first turn is
2:23:22
blocked because I'm out of credits and I have an alert which simply tells me where I can go to add more credits. Once
2:23:29
you verified the behavior, go ahead and commit.
Bug Fixing
2:23:39
Let's go ahead and wrap up everything that we forgot to do in this project. So, one thing I'm immediately noticing
2:23:46
is that whenever I select a game, there's no header and there's no option to delete or rename a conversation. So,
2:23:53
what I'm going to do is I'm going to go inside of my billing because in here I know that I have this header and I'm
2:23:59
going to go ahead and verify that inside of the code and then I'm going to tell my agent add a header like we have in
2:24:05
the billing page to our game ID page. It should render the project's name. Now, each game has a nice header displaying
2:24:12
exactly the conversation's name. This is the perfect place to implement something called a drop-down menu, which we can
2:24:19
use to trigger an action to delete or rename this conversation. So, I'm going to continue the conversation. Add a
2:24:25
drop-own menu to the new header with its trigger in the right end. It should offer rename and trash options. Both of
2:24:32
them should have either dialogue or alert dialogue open for action confirmation. And I'm going to tell it
2:24:38
to implement everything necessary to complete this. And when deleting a conversation, make sure to not leave any
2:24:44
stray sandboxes. And I'm going to include the Daytona skill for this one. You should now be able to open a
2:24:49
dropdown with options to rename or remove. Let's try it out. I'm going to go ahead and add a number here and click
2:24:56
save. I'm expecting this to refresh. There we go. And I'm going to go ahead and move this to trash. And then I'm
2:25:02
expecting the sidebar to refresh and for me to be redirected. There we go. Now, I'm going to tell the agent to add the
2:25:09
same drop-down menu to every app sidebar game item. I can now rename and delete
2:25:15
conversations from the sidebar, so I don't have to enter it to change it. Once you verify the behavior, go ahead
2:25:22
and commit. Now, let's fix these suggestions. Currently, they don't do anything and they don't hold any prompt.
2:25:28
Let's give each suggestion a game generation prompt and autosubmit on their button click. Clicking on one of
2:25:34
these suggestions now should enter a prompt and autosubmit. Once you verified the behavior, go ahead and commit. Now
2:25:41
let's resolve some of the bugs which we still have in our project. Whenever I submit a new prompt and the agent asks
2:25:47
me a question. I can see an error inside of my trigger terminal. I can see the same error inside of the trigger
2:25:54
console. So I would advise you to do the same. Go ahead and submit a prompt and
2:25:59
wait for a question. Then open that run inside of your trigger dashboard and scroll a bit down. If you find anything
2:26:06
that looks like this, especially with a message which includes this model does
2:26:12
not support assistant message prefill. The conversation must end with a user message. It might be a good idea to
2:26:18
submit this to Claude to see what it's about. I'm going to tell Claude fix this. And I pasted the entire error. It
2:26:26
appears whenever I submit a new prompt, but it does not prevent the chat agent
2:26:31
from completing the game. So, it looks like it's not blocking, but it's definitely broken. And I'm going to
2:26:36
invoke AI SDK and two trigger skills. And looks like the issue was successfully resolved. I just fired up a
2:26:43
new prompt. And this time, I get no error. I don't see the error inside of my trigger local server. And I can't
2:26:51
find the error inside of the run either. And the fix is actually quite simple and interesting. So the agent fixed this
2:26:58
directly inside of the chat agent specifically inside of run. In here it
2:27:04
looks like it looks at messages and it searches for I'm guessing the latest message and if the role is assistant it
2:27:11
simply does an early return and it performs a log. So at least I know in my sentry that it skipped a turn because uh
2:27:18
it's nothing to answer. If you had the same problem, go ahead and commit. Meanwhile, I noticed another bug. So, I
2:27:25
just wrapped up the questionnaire that the agent gave me. And then when it started reading the files, I refreshed.
2:27:32
Do you see what happens for a second? Looks like the questionnaire appears and then it hides. But I also managed to
2:27:39
capture a very specific case where the agent is actually working on a game, but
2:27:45
the only thing it displays is the questionnaire. And it looks like I can infinitely answer the questions. I kind
2:27:53
of have a feeling that it's related to the same problem here. The good news is that the agent actually successfully
2:27:59
develops the game in the background and it's not actually waiting for our question. So, it's more of a UI mistake,
2:28:06
but I have a feeling this is something with message hydration gone wrong. So, here's what I'm going to tell to my
2:28:12
agent. When I submit a questionnaire rendered by ask player tool and I wait
2:28:17
for a moment for the agent to start building the game. I refresh the page and the questionnaire that I filled up
2:28:22
flashes for a second and then disappears making it seem like there is no persistent history of a questionnaire
2:28:28
happening. This happens every time. Another problem I noticed is that when I refresh, the agent builds the game in
2:28:35
the background, just like in the example above, but on refresh, I'm always brought back to the questionnaire state,
2:28:41
being asked the same question again and again. So, similar problems, but kind of the opposite. But the second one is
2:28:48
harder to reproduce. But here's the scenario when it happened. It happened when I refreshed after having negative
2:28:54
credits right after finishing the questionnaire. And then I added more credits to test if I can continue.
2:28:59
That's when I noticed this problem of getting asked the same question over and over again. Good news is that none of
2:29:05
these two problems actually interfere with the agent building the game. But what's shown to the user is incorrect.
2:29:11
I'm going to give my personal opinion which is that both of these feel like hydration issues as the agent actually
2:29:17
does the work in the background. And I'm going to invoke all the relevant skills. All right. So the agent found the error
2:29:23
and apparently fixed it. So I'm going to go ahead and submit a new prompt. Answer the question. refresh in the middle of
2:29:29
the questionnaire, refresh after I answer the questions. Basically, all kinds of edge cases to confirm whether
2:29:36
this is truly fixed. So, the first thing I'm noticing is that when I refresh now, it loads instantly. Previously, there
2:29:43
was kind of like a delay before it could get to its current answer. So, already a
2:29:49
definite improvement. So, I just submitted uh the first question and in the middle of it asking, I'm going to
2:29:55
refresh. This looks pretty good. Let me refresh again. Okay, so this question stays submitted and this one was
2:30:01
collapsed under one uh like a response like one message. Pretty good so far. So
2:30:09
make sure you test your app like this like you need to use this edge cases. And there we go. Now this definitely
2:30:15
looks better. So the agent has started building and you can see that many no matter how many times I refresh there is
2:30:21
no flashing of the previous questionnaire and uh I didn't lose information about questions that I
2:30:28
answered. So we definitely fixed the issue. If you had the same problem and managed to successfully fix it, go ahead
2:30:35
and commit. Now go ahead and make sure that you push your changes. We're going to start fixing some productiononly bugs
2:30:42
that we have. And since we did some changes to the chat agent, make sure to perform trigger deploy. Once your latest
2:30:48
push deploys, go ahead and visit your production instance. Now run something as simple as hello world. It really
2:30:55
doesn't matter. And this is what happens. So I can actually see the error here, but some of you might not even see
2:31:03
that if your agent didn't implement error reporting like mine did. And this is exactly why we added sentry to our
2:31:10
project because you can simply toggle for production. Go inside of your logs and you will find the message could not
2:31:17
create sandbox for game and in here you will find this exact error that I seem
2:31:23
to be having in here. So what can we deduct from this error and this state
2:31:28
right here? Well, obviously something failed with uploading and in here I can see that there is no sandbox yet. And in
2:31:36
the sentry logs, it says that the Daytona sandbox failed to create. This
2:31:41
all points to something missing inside of our trigger config. It looks like the
2:31:47
way we use Daytona is not supported within the environment where Trigger is
2:31:53
running. Now, the reason it works locally is because we run it on a node server on our machine, but wherever
2:31:59
Trigger is running it in production makes it not available. So we somehow
2:32:05
have to find what Daytona uses and we have to add it inside of the trigger
2:32:10
config. So the trigger knows we need that in order to create sandboxes in
2:32:16
production. So this is the prompt that I'm going to send. Daytona utils file system upload download is failing in
2:32:23
production inside a trigger worker with an error. Uploading files is not supported. Module form data is not
2:32:30
available in the node runtime. cannot find module form data require stack.
2:32:35
Perhaps we need to add something to our trigger config. I'm also going to say that locally it works with no issues.
2:32:42
I'm going to invoke the Daytona skill and I'm just going to mention trigger skills because I'm not sure which skill
2:32:47
is best for this problem. And looks like this is the cause. Daytona SDK doesn't
2:32:52
import its heavy dependencies. It requires them at runtime through a variable held require. And this is what
2:32:59
causes the problem. And the fix apparently is to simply add Daytona SDK
2:33:05
inside the external array inside of trigger config. So let's go ahead and
2:33:11
commit and push and see if that fixes it. And let's also perform trigger
2:33:16
deploy since we did modify its config. So the attempted fix didn't actually solve it for me. So I went back to the
2:33:23
agent and I wrote this. I pushed and I redeployed the trigger, but unfortunately still the same problem.
2:33:30
uploading files is not supported. And I also included this app chunk part and looks like that actually pointed it in
2:33:37
the right direction. And then it did this which is a significantly larger
2:33:44
change in comparison but it also fixed the issue. So let's take a look. The
2:33:49
original solution was just this adding Daytona SDK to external and then it
2:33:55
deleted that and instead it developed a Daytona external extension. It imported
2:34:01
create require join and type build extension from trigger build extensions.
2:34:07
In here you can pause the screen if you want to read through the explanation about how this works. But what I can
2:34:13
assume from this is that it genuinely uh traverses through the package JSON of
2:34:18
the Daytona SDK and simply includes all of those dependencies. Uh you can of
2:34:25
course visit source code if it's easier for you to fix this. But perhaps you can maybe screenshot this or nudge your
2:34:32
agent in the right direction if it's not managing to get to this result. All
2:34:37
right. And to prove that it actually works, I am in production and starting preview. There we go. So, we have
2:34:44
officially fixed some of the more obvious problems with the app and I would say it's now ready for an MVP.
2:34:51
It's ready for its first version of production. Amazing. Amazing job.
The End
2:35:03
That brings us to the end of this tutorial. If you want to, you can now go inside of my source code, go inside of
2:35:09
lib games, and copy instructions and runtime. In here, I'm going to add the
2:35:15
runtime, which you have seen generating those games in the intro of this tutorial. If you do end up copying the
2:35:21
runtime and instructions, make sure to tell your coding agent to cross reference those new files against your
2:35:27
tools because the instructions might be calling some tools with a different name in comparison to how your agent has
2:35:33
named them. Thank you so much for watching this tutorial.

