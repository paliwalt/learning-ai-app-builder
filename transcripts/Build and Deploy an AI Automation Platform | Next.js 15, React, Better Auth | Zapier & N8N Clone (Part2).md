uild and Deploy an AI Automation Platform | Next.js 15, React, Better Auth | Zapier & N8N Clone
Code With Antonio
Code With Antonio
419k subscribers

Join


2k


Share

Ask

Save

79,716 views  7 Nov 2025
💻 Source Code: https://cwa.run/nodebase
🎨 Free Assets: https://cwa.run/node-assets
🎥 Part 1:    • Build and Deploy an N8N & Zapier Clone | N...  

📚 Resources:
Try Inngest: https://cwa.run/node-inngest
Try Polar: https://cwa.run/node-polar
Try Better Auth: https://cwa.run/node-auth
Try Sentry: https://cwa.run/sentry
Try CodeRabbit: https://cwa.run/node-rabbit
Try Neon: https://cwa.run/node-neon

In Part 2 of this tutorial, we're completing Nodebase by building the execution engine and all remaining integrations. You'll learn how to implement workflow execution with variables and templating, build trigger nodes that respond to real-world events, integrate multiple AI providers with encrypted credential management, and create messaging integrations. We'll also cover execution history with error tracking, additional authentication providers, and deploying the entire platform to production.

Key features:
🔄 Visual workflow builder
🎯 Trigger nodes (Webhook, Google Form, Stripe, Manual)
🤖 AI integrations (OpenAI, Claude, Gemini)
💬 Messaging nodes (Discord, Slack)
🌐 HTTP request node
⚡ Background job execution with Inngest
💳 Polar payments & subscriptions
🔐 Better Auth authentication
🎨 React Flow canvas
🗄️ Prisma ORM + Neon Postgres
🔒 Type safety with TypeScript + tRPC
🐛 Sentry error tracking + AI monitoring
🧑‍💻 CodeRabbit PR reviews
🌐 Next.js 15 App Router
📱 Production-ready SaaS

Timestamps

00:00 Intro & Demo
01:50 18 Node Execution
01:06:58 19 Node Variables
01:29:53 20 Node Templating
02:01:36 21 Node Realtime
02:46:27 22 Google Form Trigger
03:57:27 23 Stripe Trigger
04:30:54 24 AI Nodes
05:49:42 25 Credentials
07:24:48 26 Discord Slack Nodes
08:18:41 27 Executions History
09:19:06 28 Encrypting Credentials
09:31:44 29 GitHub Google Auth
09:47:36 30 Deployment
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
Videos
About
265 Comments
Obliq Labs
Add a comment…

Pinned by @codewithantonio
@codewithantonio
10 months ago (edited)
⭐In this Part 2/2, you'll learn how to build the workflow execution engine, implement variables and templating, create trigger nodes for Google Forms and Stripe, integrate OpenAI, Anthropic, and Gemini with encrypted credentials, add Discord and Slack messaging nodes, build execution history with error tracking, and deploy the entire platform to production 🚀

🎥Watch Part 1: https://youtu.be/ED2H_y6dmC8?si=SJx4Ou8Ajs2cVRY9

------------------------------------------------------------------------------

In this video


Chapters

Transcript
Search transcript
Search transcript

Chapter 1: Intro & Demo
0:000 secondsMost people think that building a workflow platform is about the visual editor. Drag, drop, and connect some
0:077 secondsnodes. But that's the easy part. The hard part, making those workflows actually execute. In this tutorial,
0:1515 secondswe're building Nodebase, a workflow automation platform like N8N or Zapier.
0:2222 secondsIn part one, we built the editor, the canvas, authentication, and payments. In part two, we're building everything
0:3030 secondselse. The execution engine, the triggers, the integrations, credential encryption, execution history, and
0:3939 secondsdeployment. This is where we finish and ship the entire platform. You will learn how to pass variables between nodes,
0:4747 secondsbuild a templating system for data transformation, and implement real-time updates so you can see workflows
0:5454 secondsexecuting live. We're building trigger nodes, Google forms, stripe web hooks, the full AI integration layer with open
1:031 minute, 3 secondsAI, Anthropic and Gemini, Discord and Slack notes, encrypted credential management, execution history with full
1:121 minute, 12 secondserror tracking, additional out providers like Google and GitHub, and finally deployment. By the end of this tutorial,
1:211 minute, 21 secondsNodebase will be a production ready product. And now without further ado, let's finish this project. Before we
1:281 minute, 28 secondsdive in, using the link on the screen, you can get 3 months of Sentry Team completely for free. We'll be using
1:371 minute, 37 secondstheir AI monitoring to track all our LLM calls throughout this build. If that sounds useful for your project, feel
1:461 minute, 46 secondsfree to grab the deal. And now, let's build. In this chapter, we're going to focus on executing our nodes. In the
Chapter 2: 18 Node Execution
1:541 minute, 54 secondsprevious few chapters, we focused on building the UI for each node and for the editor itself, but we never actually
2:012 minutes, 1 secondexecuted or used any data from those nodes. So that's what we are going to be focusing on today. Let's go ahead and
2:102 minutes, 10 secondsfirst improve the props for our HTTP request node so it's easier to work with its data. So inside of features
2:182 minutes, 18 secondsexecutions components HTTP request open both dialogue and node.tsx and let's go ahead and see the problem.
2:282 minutes, 28 secondsSo the problem is that we are passing these default form values in three separate props instead of just one. So
2:362 minutes, 36 secondslet's go ahead and fix this. The first thing I want to do is modify HTTP request node data and make it so that I
2:432 minutes, 43 secondsremove this last part. So we actually never even used this. I just added it here for flexibility.
2:512 minutes, 51 secondsOnce we remove this, our HTTP request node data matches exactly what our form provides. An input for the endpoint, a
3:003 minutesselect drop-down for the method, and an optional body. Now that we've fixed that, let's also fix something in handle
3:083 minutes, 8 secondssubmit here. No point in handling these like that. We can just spread values. It's much simpler.
3:153 minutes, 15 secondsNow let's go ahead and rename this form type that we are exporting from here. So we have to go inside of the dialogue here and we have to find the form type.
3:263 minutes, 26 secondsAnd now I want to rename this to HTTP request form values like this.
3:343 minutes, 34 secondsOnce we do that, let's go back inside of node and let's import it here. And now just make sure that you use it here in the values.
3:433 minutes, 43 secondsNow let's go ahead and let's modify our props for the dialogue component. So go ahead and remove these three and instead
3:523 minutes, 52 secondsadd default values optional partial of HTTP request form values.
4:014 minutes, 1 secondLet's go ahead and make sure we use them here as well.
4:054 minutes, 5 secondsLet's go ahead and modify the default values here to be this.
4:134 minutes, 13 secondsLet's just see default values is uh let me just see the problem here.
4:214 minutes, 21 secondsLet's go ahead and give this an empty object as the default. This way we don't have to do the question mark thing.
4:294 minutes, 29 secondsBasically, we're just doing some fallback here for a better user experience. And we have to do exactly the same for the form reset. So, let's
4:384 minutes, 38 secondsdo it here as well. Perfect. And for the dependency array, we can now just use the default values.
4:464 minutes, 46 secondsOnce we've done that, we can go back inside of node and we can now simplify this a lot. So we can now just pass
4:544 minutes, 54 secondsdefault values node data. As simple as that.
4:594 minutes, 59 secondsThat's the first task finished. Let's go ahead and mark it as finished. There we go. [snorts] So the second thing we have
5:075 minutes, 7 secondsto do is we actually have to display the execute button. So if you take a look at any of your workflows, there is
5:145 minutes, 14 secondscurrently no way of executing them, right? For example, I have this super simple manual trigger and then I have an
5:225 minutes, 22 secondsHTTP request, get post, whatever, it does not matter. Uh but how do I even execute this? Right? Even if I save it,
5:315 minutes, 31 secondsnothing really happens. So the first thing we actually have to do is we have to show the execute button. But we
5:385 minutes, 38 secondsshould only show that if we have a manual trigger. Luckily for us, we can do that quite easily. So let's go ahead
5:475 minutes, 47 secondsinside of source. Let's go inside of features editor components. And in here
5:555 minutes, 55 secondsI want to add a new component called execute workflow button.tsx.
6:036 minutes, 3 secondsI'm going to go ahead and import button from components UI button. I'm going to
6:116 minutes, 11 secondsimport flask icon from lucid react. And then I will very simply export con execute workflow
6:206 minutes, 20 secondsbutton like this. I'm going to create the props here to be a very simple workflow ID with capital ID.
6:326 minutes, 32 secondsLet's go ahead and extract it here. And then I'm very simply just going to render set button with a text execute
6:416 minutes, 41 secondsworkflow. And with the icon we imported from above, let's give the icon itself a class name of size four. Let's give the
6:496 minutes, 49 secondsbutton size of large. Let's give it an on click of an empty arrow function and disabled to be explicitly false so we
6:586 minutes, 58 secondsremember to change it later to something dynamic.
7:037 minutes, 3 secondsNow that we have this, we can go ahead inside of editor.tsx.
7:087 minutes, 8 secondsAnd in order to render this dynamically, we first have to create a constant has manual trigger. And let's do use memo here so it doesn't rerender too often.
7:207 minutes, 20 secondsSo, make sure to import this from React.
7:247 minutes, 24 secondsLet's go ahead and fill the dependency array with nodes because that's what we're going to be using here.
7:317 minutes, 31 secondsSo, let's do return nodes dot sum node node.type
7:387 minutes, 38 secondsmatches and let's use our enum from our Prisma schema node type which we can import from at generated Prisma dot manual trigger.
7:497 minutes, 49 secondsSo just make sure you've imported the node type.
7:537 minutes, 53 secondsLet me just show you from generated Prisma. And now that you have the has manual trigger, you can go ahead and dup
8:018 minutes, 1 seconduh duplicate this panel and use the has manual trigger boolean
8:088 minutes, 8 secondsto render in a position of bottom center our new
8:148 minutes, 14 secondsexecute workflow button and pass in the workflow ID prop. You should have the workflow ID here. So this should work.
8:248 minutes, 24 secondsLet's fix this by using center. There we go. And now you will see that every time
8:308 minutes, 30 secondsthat I have a manual trigger, I also have the execute workflow button. If I delete it, it gets deleted as well.
8:388 minutes, 38 secondsSince I didn't click the save button, even if I refresh, it's still here. And the execute workflow button is here.
8:448 minutes, 44 secondsPerfect. So that's another thing that we can check off. Let's go ahead and just do that. And now we actually have to
8:518 minutes, 51 secondscreate the execute inest function because right now clicking on the execute workflow does not do anything.
9:019 minutes, 1 secondLet's start with first defining the background job. So we're going to go ahead and revisit our source features.
9:089 minutes, 8 secondsMy apologies source inest functions.
9:129 minutes, 12 secondsAnd let's go ahead and remove all of this here because we're no longer going to need it. So all of this generate AI
9:209 minutes, 20 secondssentry all of it and we can remove every single thing within the actual step even the return. Now let's go ahead and
9:289 minutes, 28 secondsrename this from execute to execute workflow. Let's go ahead and change the ID here to be execute-workflow.
9:389 minutes, 38 secondsAnd for the event let's follow follow the structure workflows/execute.workflow workflow
9:469 minutes, 46 secondslike this. For now, this doesn't have to do anything. We can just do await steps sleep. Let's call this test and 5 seconds.
9:579 minutes, 57 secondsPerfect. Now that we have the execute workflow, we have to also revisit our app folder API in justest route.ts.
10:0610 minutes, 6 secondsLet's import execute workflow here. Copy it and simply paste it here.
10:1110 minutes, 11 secondsPerfect. That should resolve the error that just appeared.
10:1510 minutes, 15 secondsNow let's go ahead and revisit our TRPC procedures, more specifically the procedures for the workflows. So instead
10:2210 minutes, 22 secondsof the workflows server routers.ts, let's go ahead all the way to the top here and create execute. It's going to be a protected procedure.
10:3210 minutes, 32 secondsIt's going to have a simple input which will simply receive an ID which is a type of string and it's going to be a mutation.
10:4410 minutes, 44 secondsThe mutation itself will have an asynchronous function. So let's go ahead and prepare it like that. And let's also prepare the input and the context.
10:5410 minutes, 54 secondsAnd now what we can actually do here is super simple. We don't have to use the input or the context. We can just go
11:0111 minutes, 1 secondahead and uh first fetch the workflow by using await prisma dotworkflow.findique
11:1011 minutes, 10 secondsor throw. And I know I just said we won't use the input. My apologies. I just got an idea that we actually do have to fetch the workflow. So let's do
11:1811 minutes, 18 secondsit while we are here. ID will be input do ID and user ID will be context out user ID.
11:2711 minutes, 27 secondsPerfect. And let's return the workflow.
11:3011 minutes, 30 secondsAnd now in between those two, we're actually going to await inest. So, make sure you import inest from ingest client
11:3911 minutes, 39 secondsdot send id and let's go ahead and quickly remind ourselves the ID is actually the event.
11:4811 minutes, 48 secondsSo, let's copy that and paste it here. And I think we have to define the data.
11:5611 minutes, 56 secondsUh I maybe I'm forgetting something.
11:5911 minutes, 59 secondsJust a second. Let me uh remind myself of how I'm executing.
12:0512 minutes, 5 secondsSo it is injust send and this should be name. There we go. Yes, that makes more
12:1212 minutes, 12 secondssense like the event name. Uh and then we don't even need the data. So just a s super simple execute procedure which
12:2112 minutes, 21 secondsjust calls a background job. We actually did this already when we explained background jobs. Now let's go ahead
12:2812 minutes, 28 secondsinside of features workflows hooks use workflows and let's find let's copy use update
12:3512 minutes, 35 secondsworkflow. Let's paste it. Let's rename this to how uh hook to execute a workflow.
12:4412 minutes, 44 secondsUse execute workflow.
12:4712 minutes, 47 secondsYou don't need the query client. So you can remove it. You don't need any invalidation.
12:5212 minutes, 52 secondsThis will be executed and this will be failed to execute. And this will use workflows.execute.
13:0113 minutes, 1 secondMake sure to modify this. So on success has the data and data name because in
13:0813 minutes, 8 secondsour routers for the workflows, we return the fetched workflow. So if you don't return the fetched workflow, you will
13:1613 minutes, 16 secondssee that this will fail because it won't have any data. So make sure you return the workflow from our new execute procedure here. Perfect. We now have use
13:2513 minutes, 25 secondsexecute workflow. Now let's go ahead inside of our execute workflow button which we started developing here. Let's define the hook const execute workflow.
13:3613 minutes, 36 secondsUse execute workflow. You can import it from features workflow hooks.
13:4213 minutes, 42 secondsLet's do con handle execute or handle submit however you want to call this.
13:4813 minutes, 48 secondsAnd let's just do execute workflow dotmutate and pass in the ID workflow ID.
13:5713 minutes, 57 secondsLet's go ahead and modify the on click to call handle execute and modify the disabled to be execute workflow is pending.
14:0814 minutes, 8 secondsThere we go. Before you start this, make sure that you have both inest and nextjs running. So I am doing this by using npm
14:1814 minutes, 18 secondsrundev all because I've set up mroxs but in your case you can either use I think we also defined some package json
14:2614 minutes, 26 secondsscripts here. Let me just quickly see yes uh perhaps you can use inestdev or if you didn't set that up you can always
14:3314 minutes, 33 secondsjust use in cli with nbx like this. All of them will work. Perfect. So just make sure you have all of them running here.
14:4214 minutes, 42 secondsI will now refresh my nextjs. I will refresh my injest development server and let's go ahead and check it out. So I have no runs running and when I click
14:5214 minutes, 52 secondsexecute workflow I get a success message and I have something running and it's just a sleep test for 5 seconds.
14:5914 minutes, 59 secondsPerfect. Which means that we now officially have something happening when we click on the execute button. Perfect.
15:0715 minutes, 7 secondsBut right now what we should be focusing on is this function.
15:1315 minutes, 13 secondsSo it needs to somehow fetch the workflow that's been executed. It needs to fetch all of its nodes. It needs to
15:2015 minutes, 20 secondssort them topologically and then it needs to run a specific type of request depending on the type of the node. So those are our next goals.
15:3315 minutes, 33 secondsLet's start by first checking if we have enough information to even fetch something. So inside of execute workflow
15:4115 minutes, 41 secondsgo ahead and do const workflow id event data doworkflow id and if we have
15:5115 minutes, 51 secondsworkflow ID missing throw new whoops let me fix this throw new non
15:5915 minutes, 59 secondsretryable error make sure to import this from inest so when you throw this error inest will not retry this is because
16:0816 minutes, 8 secondsthere is nothing to try if workflow ID is missing. So just workflow ID is missing. As simple as that. We can't
16:1516 minutes, 15 secondsproceed further. We have no idea what to execute in this case. Let's not waste any resources here. So if you go ahead
16:2216 minutes, 22 secondsand try now this should fail. If I click execute workflow here, there we go.
16:2816 minutes, 28 secondsImmediately it fails. And you can see there is just a single attempt and no retry workflow is missing. So if you
16:3616 minutes, 36 secondsdidn't use non-retriable error, if you just threw a normal error, you will see that it's a different behavior. So let
16:4316 minutes, 43 secondsme go ahead and click this. You can see it's running, it's failing, and it will now continue to attempt to do this for
16:5016 minutes, 50 secondsthe next three times for no reason at all. Right? We know if it's missing once, it's going to be missing for the next three attempts as well. Perfect.
17:0117 minutes, 1 secondNow that we have that, what we are supposed to do is we can finally get rid of this and we can instead do const not node and let's go ahead and do await
17:1017 minutes, 10 secondsstep.r run prepare workflow and let's open an asynchronous function here.
17:1717 minutes, 17 secondsFirst things first, let's fetch a workflow with await prisma workflow.
17:2417 minutes, 24 secondsUh, of course, let's import prisma from lib database. Prisma.workflow workflow
17:3017 minutes, 30 secondsfind unique where ID is workflow ID
17:3817 minutes, 38 secondsand let's also add includes
17:4317 minutes, 43 secondsnodes true connections true and if there is no workflow let's throw
17:5217 minutes, 52 secondsnew non retriable error workflow not found so that's why I didn't use find
18:0018 minutesunique or throw because this will just restart the query. Uh now you could decide for yourself if find unique I
18:0818 minutes, 8 secondsmean yes technically this could fail if maybe the database is unreachable.
18:1418 minutes, 14 secondsSo maybe we shouldn't exactly throw uh unreachable. Yeah, maybe we can do find
18:2218 minutes, 22 secondsunique or throw here and then it will just you know if the database is missing I mean if the database connection is bad
18:3018 minutes, 30 secondsit can it will just retry. Maybe that's actually a good thing. Yeah, let's keep it like that. And now let's just do
18:3818 minutes, 38 secondsreturn workflow nodes. As simple as that. Like we just want the nodes and let's go ahead and return nodes.
18:4818 minutes, 48 secondsPerfect. So a super simple uh execution here. Now let's just modify our execute
18:5518 minutes, 55 secondshere to actually pass that. So data workflow ID will be input do ID. Make sure you don't misspell workflow ID.
19:0919 minutes, 9 secondsIt's used like this. Let's go ahead and try it now.
19:1419 minutes, 14 secondsSo I'm going to uh let me just try and refresh here.
19:2019 minutes, 20 secondsAnd now I will just click execute workflow and let's see what's going on.
19:2419 minutes, 24 secondsSo prepare workflow finalization. Let's try and open this. Can I close the sidebar? I can. Perfect. And here we go.
19:3119 minutes, 31 secondsWe should have two nodes. First one is the HTTP request and the second one is the manual trigger. Perfect. Amazing.
19:4019 minutes, 40 secondsThat seems to be working just fine. Uh what we should do now is we should somehow sort these nodes. Why do I say
19:4919 minutes, 49 secondswe have to sort these nodes? Well, look at it. Okay, this is super simple, right? We can just sort by date of
19:5619 minutes, 56 secondscreation in a linear example. But what if we branch out? What if we do this and this? Right?
20:0620 minutes, 6 secondsSo that's why we need to use topological sort. So it can handle this type of branching.
20:1420 minutes, 14 secondsFor now, please keep it simple like this. So you can have similar results as me, right?
20:2020 minutes, 20 secondsLet's go ahead and work on the topological sort. Now, so uh in order to
20:2820 minutes, 28 secondsdo that, we need to have one helper package installed called topo sort.
20:3320 minutes, 33 secondsThere's a bunch of these packages which help for this, but I found this one to be the simplest to use.
20:4020 minutes, 40 secondsAnd once you have that installed, let's go ahead and go inside of the inest folder and create the utils.ts.
20:5120 minutes, 51 secondsLet's import sort from topos sort.
20:5720 minutes, 57 secondsUh looks like we also need the types for it. So let's go ahead and just install the types.
21:0521 minutes, 5 secondsmpm install save to development types topo sort and let's wait a second
21:1321 minutes, 13 secondsperfect let's export const topological sort let's go ahead and accept first
21:2221 minutes, 22 secondsparameter nodes to be a type of node from generated Prisma and the second one connections
21:3021 minutes, 30 secondsconnection from generated Prisma and an array and it will return node like this
21:3721 minutes, 37 secondsarray of nodes. So first things first if no connections return node as is meaning they are all independent.
21:4821 minutes, 48 secondsSo let's just return my apologies. Let's check if connections.length is equal to zero return nodes. So what is this
21:5821 minutes, 58 secondsexample here? Well if this didn't exist can I remove a connection? I can. to this right these two are not connected.
22:0522 minutes, 5 secondsSo if we try executing them well obviously you can decide for yourself what should happen should anything even happen in this case maybe not maybe you
22:1422 minutes, 14 secondsshould just throw an error right but we're just handling that case for now right if no connections let's just return back the nodes there's nothing we
22:2222 minutes, 22 secondscan do right we have no idea what is the actual connection between these nodes otherwise let's go ahead and create the
22:2922 minutes, 29 secondsedges array for topo sort const edges
22:3622 minutes, 36 secondsis going to return a matrix. So string string like this connections do map
22:4522 minutes, 45 secondsand then get the individual connection and return an array like this and in here in the first one use from
22:5422 minutes, 54 secondsnode ID and the second one to node ID.
23:0023 minutesNow let's go ahead and let's add nodes with no connections as self edges to ensure they're included.
23:0823 minutes, 8 secondsSo con connected node ids will be new set with a type of string.
23:1723 minutes, 17 secondsAnd let's do a simple for loop here for connection of connections.
23:2523 minutes, 25 secondsConnected node ids dot add connection from node ID and then another one to node ID.
23:3623 minutes, 36 secondsNow let's go ahead and do a simple for loop over our nodes. for node of nodes
23:4423 minutes, 44 secondsif not connected node ids has a node id let's go ahead and push it to our edges
23:5223 minutes, 52 secondsarray edges push and open an array inside pass in node do ID and node do ID inside
24:0224 minutes, 2 secondsso this are connections as self edges and now let's go ahead and finally perform form the topological sort.
24:1424 minutes, 14 secondsLet sorted node ids return a string.
24:1924 minutes, 19 secondsLet's go ahead and click try. Sorted node ids are going to be topo sort pass in the edges.
24:3024 minutes, 30 secondsLet's go ahead and remove duplicates from self edges. So that's this part here.
24:3924 minutes, 39 secondsWe're going to do that by simply returning a set sorted node ids
24:4624 minutes, 46 secondsnew set sorted node ids. Otherwise, let's go ahead and catch an error. If
24:5424 minutes, 54 secondserror instance of error and if error dot messageinccludes cyclic.
25:0625 minutes, 6 secondsUh, make sure you don't misspell this like me. Cy click. So if this happens, it means that this
25:1425 minutes, 14 secondstype of node array that we received and their connections are cyclic. Meaning we cannot create a linear sort from them.
25:2525 minutes, 25 secondsSo because of that we need to throw new error here. Workflow contains a cycle
25:3325 minutes, 33 secondsas in something is wrong. This is not linear. We can't actually do this. Otherwise, just throw that error back.
25:4225 minutes, 42 secondsAnd now finally, let's go ahead and map sorted ids back to node objects.
25:5125 minutes, 51 secondsSo, const node map new map nodes map use a shortand constant n and return an
26:0026 minutesarray nid and n itself. And finally return sorted
26:0726 minutes, 7 secondsnode ids dot map get the ID and return node map.get
26:1426 minutes, 14 secondsID use uh an exclamation mark here for a non null assertion fix
26:2326 minutes, 23 secondsand then do dot filter boolean like this. If you have biome turned on,
26:3126 minutes, 31 secondsthis will most likely give you a warning. Uh this is fine. We're not going to have too many of these cases,
26:3826 minutes, 38 secondsbut in this one, uh it just helps simplify the code. So now our nodes and
26:4526 minutes, 45 secondstheir edges should be sorted, right? The only exceptions are if we do a cycle,
26:5326 minutes, 53 secondswhich shouldn't be able to happen because we should never be able to do this and then this, right? You can see how our UX does not allow us to do this.
27:0427 minutes, 4 secondsThat's because on the triggers, we removed the edge here. So that cannot happen. But still, even if someone's
27:1327 minutes, 13 secondssomehow someone breaks that, we are going to take care of it here by throwing an error. So I think this is
27:2027 minutes, 20 secondsokay now. Uh let's go ahead and try it now inside of routers. I think that uh I mean I'm not sure if this is a good
27:2727 minutes, 27 secondsexample. Maybe I'm not understanding this correctly. But you can see that the first node that was returned here was
27:3527 minutes, 35 secondsactually HTTP request and then manual trigger when it's actually the opposite, right?
27:4327 minutes, 43 secondsIt should first be manual trigger and then it should be HTTP request. But then again, perhaps it just depends on how we
27:5227 minutes, 52 secondsread this array. I'm not even sure. Um, let's just try it so we can actually see inside of functions. Now,
28:0028 minuteswell, let's rename this entire constant to sorted nodes like that. And let's return sorted nodes here.
28:1028 minutes, 10 secondsAnd now instead of returning workflow nodes, we can do return topological sort
28:1728 minutes, 17 secondswhich you can import from dot /utils pass in nodes as the first argument and
28:2428 minutes, 24 secondspass in connections as the second argument.
28:2828 minutes, 28 secondsThere we go. So now we have that. Uh let's go ahead and run this so we can see if there are any differences. Now
28:3628 minutes, 36 secondsjust make sure you have a connection and click execute workflow. And let's go ahead and see. Perfect. No errors. And I
28:4428 minutes, 44 secondscan already see the first node is manual trigger and the second node is HTTP
28:5128 minutes, 51 secondsrequest. Amazing amazing job. Uh obviously we don't have enough nodes right now to you know try
29:0029 minutesuh and create some complex scenarios but you can try like something like this. I mean, it will be very hard to debug if
29:0829 minutes, 8 secondsit's actually okay or not because even if I try and do this, it's just going to look the same. It's going to be manual
29:1629 minutes, 16 secondstrigger and after that everything will be HTTP request. So, we don't really know what was the order here really. So,
29:2429 minutes, 24 secondslet me go ahead and look here. Yeah. So, as I expected, manual trigger and then just a bunch of HTTP requests. But at
29:3129 minutes, 31 secondsleast we can count the number of HTTP requests. So one, two, three. I think I counted three. 1 2
29:4029 minutes, 40 seconds3. Meaning all of them are now considered in a linear sense. So we can now go ahead and map over those sorted nodes and we can execute each of them.
29:5129 minutes, 51 secondsPerfect. So even though we kind of branched out, we uh made sure to have all three in our new array. Perfect. So
30:0030 minutesat least that works. And now that we have topologically sorted our nodes,
30:0630 minutes, 6 secondswhat we have to do is we have to execute each node depending on their type. So
30:1430 minutes, 14 secondswe're going to wrap this chapter up by kind of preparing that registry of executors that each node will have for
30:2230 minutes, 22 secondsitself. Basically the way to execute in its background job.
30:2930 minutes, 29 secondsSo before we return sorted nodes, let's go ahead and initialize the context with
30:3730 minutes, 37 secondsany initial data from the trigger. Now this doesn't make too much sense, right? Because I'm about
30:4430 minutes, 44 secondsto do let context to be event
30:5030 minutes, 50 secondsdot data dot initial data or an empty array uh an empty object because we
30:5730 minutes, 57 secondsnever actually pass this. Now right you can see where we call it we execute it right here await inest.end.
31:0531 minutes, 5 secondsSo what should we really pass in the initial data here? Well in this specific example where we have a manual execution
31:1531 minutes, 15 secondsabsolutely nothing. That's why this is optional. But to give you a better idea of when this will be populated with
31:2231 minutes, 22 secondssomething imagine a web hook trigger or a Google form submission. Those are the types where we are going to also execute
31:3131 minutes, 31 secondsthis job like this. But since it will be within a web hook, we're going to have some payload there. And then we will be
31:3931 minutes, 39 secondsable to do initial values and just pass in uh or initial data, however I named it, right? We're just going to do payload
31:4731 minutes, 47 secondsdata, right? Something. And then we will be able to run our executors with that initial data. I'm kind of trying to
31:5631 minutes, 56 secondsexplain how this will be used in the future. Uh if it's confusing you, don't worry. It will make more sense once we actually implement uh Google form
32:0532 minutes, 5 secondssubmission or something like that. So now let's execute each node here for con node of sorted nodes.
32:1632 minutes, 16 secondsLet's go ahead and first get the executor. So for each node we need to get its executor. get executor a
32:2632 minutes, 26 secondsfunction which does not exist yet and pass in node.type type as node type here from generated Prisma.
32:3432 minutes, 34 secondsAnd now we have to develop the executor registry. So I'm going to develop that inside of features executions.
32:4432 minutes, 44 secondsLet me create a new folder called lib. And in here executor registry.ds.
32:5332 minutes, 53 secondsExecutor-registry.ds looks fine.
32:5732 minutes, 57 secondsAnd let's go ahead and export const executor registry like this. It's going to be an object.
33:0633 minutes, 6 secondsAnd let's give it a specific type here.
33:0933 minutes, 9 secondsRecord. The first argument will be node type. And for now, let's just make the second one unknown. Import this from
33:1833 minutes, 18 secondsgenerated Prisma. And now you will have to use node type and then put for example manual trigger. And then this
33:2533 minutes, 25 secondswill be the executor. Then node type dot initial and that will have its own. And
33:3333 minutes, 33 secondsthen node type dot uh http request and that will have its own. So that is the
33:4133 minutes, 41 secondspoint right. We are now going to go through each of our nodes and depending on their type. Uh so we just did export
33:4933 minutes, 49 secondsconst executor registry. Let's now do export const get executor
33:5633 minutes, 56 secondstype node type unknown const executor
34:0434 minutes, 4 secondsis equal to executor registry type if there is no exeutor found in that
34:1334 minutes, 13 secondsobject above throw new error and let's be specific so open back takes no
34:2034 minutes, 20 secondsexecutor found for node type and let's just pass in the type and return the executor.
34:3234 minutes, 32 secondsThere we go. And now we can use the get executor here from features executions lib executor
34:4134 minutes, 41 secondsregistry. Uh not too sure if that's like the best place to put it but kind of makes sense, right? executions executor
34:5034 minutes, 50 secondsregistry I guess I don't know and now that we have here uh the executor let's
34:5634 minutes, 56 secondsgo ahead and let's do context await executor
35:0435 minutes, 4 secondsopen an object here and pass in data to be node data as record and string
35:1235 minutes, 12 secondsunknown pass in node id to be node dot ID, context, and step.
35:2335 minutes, 23 secondsBut now we have a problem. So this executor is a type of unknown because obviously that's what I've typed here.
35:2935 minutes, 29 secondsSo let's go ahead and give it a proper type instead. So let's stay inside of features executions here and let's go
35:3935 minutes, 39 secondsahead and add types.ts here.
35:4435 minutes, 44 secondsLet's go ahead and import get step tools from ingest and ingest itself.
35:5235 minutes, 52 secondsAnd we can limit this to be types. Let's export type workflow context to be a simple empty object. So string unknown.
36:0536 minutes, 5 secondsThen let's export type step tools to be get step tools inest any.
36:1336 minutes, 13 secondsLet's export interface node executor params to use a generic t data which is a type
36:2136 minutes, 21 secondsof record string unknown because it can truly be anything that we are going to pass in these nodes right their data
36:3036 minutes, 30 secondswill be able to be anything okay fifth try on the unknown and I still don't know how to spell it unknown there we go
36:3936 minutes, 39 secondsso give it a type of data t data which is just anything right for example in HTTP request node this will be uh an
36:4836 minutes, 48 secondsobject with endpoint body and method uh then in stripe it's going to be well stripe is a trigger so it's a bad
36:5536 minutes, 55 secondsexample but in open AI node it's going to be system prompt and user prompt and model in anthropic it's going to be
37:0237 minutes, 2 secondssimilar right uh in I don't know any other node that you create it will be
37:0937 minutes, 9 secondsits own type so basically the data which is this dynamic thing represents
37:1537 minutes, 15 secondswhatever we have in this dialogue here which can be anything depending on the node that's why it makes no sense to do
37:2437 minutes, 24 secondsany strict definitions of it then let's do node ID so we know exactly which node we are working with here
37:3337 minutes, 33 secondscontext workflow context which again can be anything because the context will simply expand as each node progresses
37:4137 minutes, 41 secondsbecause we will be able to use the context of the previous node into the next node. So again, we can't really
37:4837 minutes, 48 secondsdefine that. We have no idea what nodes will return. What will this HTTP request return? We don't know. Maybe it will be
37:5537 minutes, 55 secondsa JSON. Maybe it will be a string. Maybe it will point to an API. Maybe it will be an error. We don't know. That's why it's uh defined as this.
38:0738 minutes, 7 secondsAnd let's do step step tools later. We are also going to have publish
38:1538 minutes, 15 secondshere, but I'm going to comment this out and just do to-do add real time later because we don't have that now. And
38:2338 minutes, 23 secondsfinally export type node executor t data
38:3038 minutes, 30 secondsequals record string unknown.
38:3938 minutes, 39 secondsOkay. Unknown params node executor params
38:4738 minutes, 47 secondst data and return promise workflow context.
38:5638 minutes, 56 secondsAll right, very complicated, but that's all the types we need. Perfect. We can now head back inside of the executor
39:0439 minutes, 4 secondsregistry here and we can modify this unknown to be node executor from dot dot /types
39:1239 minutes, 12 secondswhich obviously means that all of these are now going to fail but let's also change this unknown to be node executor
39:2139 minutes, 21 secondsand now we have to develop proper executors here so for now I'm going to just focus on the manual trigger here
39:3039 minutes, 30 secondslet's go ahead and find where it is. So it is inside of uh features triggers
39:3939 minutes, 39 secondsmanual trigger right here. And this one will be super simple. So inside of manual trigger create a new file executor.ts.
39:4939 minutes, 49 secondsAnd let's go ahead and import type node executor from features executions types
39:5839 minutes, 58 secondsand export const manual trigger executor give it a type of node executor
40:0640 minutes, 6 secondsand inside of it we just need a empty object. So this can for example be
40:1440 minutes, 14 secondsuh let's go ahead and call it type manual trigger data record string
40:2540 minutes, 25 secondsunknown like this and then just pass in that here
40:3340 minutes, 33 secondsopen an asynchronous function here like this there we go now the params
40:3940 minutes, 39 secondswhich we're going to have are data node ID context and step. So exactly the ones
40:4640 minutes, 46 secondswhich we just defined here data node ID context and step for the manual trigger
40:5340 minutes, 53 secondsthe data will not actually exist. So you can already remove it. I just wanted to show you type safety works here. Let me
41:0041 minutesadd to-do publish loading state for manual trigger because we don't have real time yet. But to-do that will be the first thing we're going to do here.
41:1141 minutes, 11 secondsOtherwise, let's just do const result await step.r run manual trigger and a
41:1941 minutes, 19 secondsvery simple asynchronous function which simply returns the context. So basically this will be passed through as
41:2841 minutes, 28 secondsin there is nothing to do in here. Just go to the next node and let's do todo publish. Whoops.
41:3941 minutes, 39 secondsSuccess state for manual trigger. So after we succeed, just go ahead and proceed.
41:4841 minutes, 48 secondsThere we go. And return this. And now we have our first executor, manual trigger executor. Let's go ahead and use it here.
41:5841 minutes, 58 secondsThere we go. Uh now obviously I think we have uh some problems here. We didn't add initial or HTTP request. Uh, so can I maybe just do like partial?
42:1242 minutes, 12 secondsI I want to find a way of not having to add every single one of them here like node type dot initial and then I have
42:2242 minutes, 22 secondsto, you know, think of something node type HTTP request, right? You can just add
42:2942 minutes, 29 secondsall of these right now to get rid of type errors. And now for each node that we have, we're going to have to develop
42:3642 minutes, 36 secondstheir executor. And this way we kind of have like a big switch case inside of our where is our inest folder functions.
42:4642 minutes, 46 secondsSo basically each of those topologically sorted nodes are now going to get their executor and then we're just going to
42:5442 minutes, 54 secondsexecute it. And for each of them we're going to extend the context even more.
42:5942 minutes, 59 secondsRight? So if the first HTTP request node returns some JSON, the second HTTP
43:0743 minutes, 7 secondsrequest node will be able to access that context and that's what users will be able to define using these variables. So
43:1443 minutes, 14 secondsthe users will be able to use HTTP request dot users or todos, right?
43:2143 minutes, 21 secondsThat's how that's going to work.
43:2343 minutes, 23 secondsPerfect. So now we have this um not sure if we are like ready to try this. Well, here's what I want you to do. I want you to copy this executor here. Copy it.
43:3643 minutes, 36 secondsGo inside of executions components HTTP request and paste the executor here.
43:4243 minutes, 42 secondsChange this from manual trigger data to HTTP request data. This will be HTTP
43:5243 minutes, 52 secondsrequest. HTTP request executor and change these instances to
43:5943 minutes, 59 secondsbe for HTTP request and step.r run HTTP request
44:0644 minutes, 6 secondsand let me just quickly compare this with my source code.
44:1344 minutes, 13 secondsSo uh we are kind of right. Let's call it okay. Yes, I think this is okay. We can
44:2044 minutes, 20 secondsnow go inside of executor registry and just change this to be HTTP
44:2744 minutes, 27 secondsrequest executor and um okay yeah we're kind of mixing features.
44:3444 minutes, 34 secondsUh yeah I kind of don't like that we have the executor registry in the executions folder and then we have a specific exeutor in the manual trigger
44:4344 minutes, 43 secondsuh in the features triggers. H it's kind of spaghetti going everywhere. But let's leave it like this for now. Just make
44:5044 minutes, 50 secondssure you can import them. And yes, the initial will actually never happen. But we have to add something here just to satisfy the type errors here.
45:0145 minutes, 1 secondAnd now if we actually try I think this should work just fine. Uh the only thing we ought to modify is what we return
45:0945 minutes, 9 secondshere. So what we should actually return is the following.
45:1445 minutes, 14 secondsWe should return the workflow ID. We should return the result as context because the context will be fully modified by the end of this for loop.
45:2445 minutes, 24 secondsEven though right now nothing will really happen because we just return back the context and go to the next
45:3345 minutes, 33 secondsnode. That's the only thing we do right now.
45:3845 minutes, 38 secondsSo let's go ahead and try it now. The only thing we should see now is I think one, two, three, four. We should see four steps now happen when we execute.
45:5045 minutes, 50 secondsSo right now we had one step. This one doesn't count. This is finalization. Now we should see four steps, one for each node. So make sure to click save here.
46:0346 minutes, 3 secondsAnd then let's go ahead and try and execute. So let me just see. Okay, fully saved. execute workflow and let's see
46:1246 minutes, 12 secondsprepare manual trigger HTTP request HTTP request HTTP request perfect amazing
46:1946 minutes, 19 secondsthat is exactly what we wanted and if you remove one and save now it should have three steps so let's
46:2846 minutes, 28 secondstry this again manual trigger HTTP request HTTP request so yes not counting the preparation one just these ones
46:3746 minutes, 37 secondsperfect you can now see that Our workflow background jobs has exactly the amount of steps in the exact order as the their graphical interface here.
46:5046 minutes, 50 secondsAnd now to end the chapter, let's actually make an HTTP request node fail or succeed. So keep it simple for now.
46:5946 minutes, 59 secondsJust do a very simple connection between a manual trigger and an HTTP request node. And for the first example, don't
47:0847 minutes, 8 secondsconfigure it at all. As in this should say not configured. Don't pass any endpoint URL. Don't do anything at all.
47:1547 minutes, 15 secondsAnd let's focus on the HTTP request executor. So the first thing I want to do is I want to uh define proper HTTP
47:2347 minutes, 23 secondsrequest data. So I'm going to go ahead and define endpoint to be an optional string. I'm going to define the method to be an optional string. Body.
47:3447 minutes, 34 secondsAnd that's it. So basically the exact thing that's inside of Let me go ahead and try and find node.tsx
47:4447 minutes, 44 secondshttp request node. There we go. This basically so yeah perhaps the method should be this.
47:5347 minutes, 53 secondsPerfect. So we are kind of passing now to the back end what are the possible options for this HTTP request. And now
48:0148 minutes, 1 secondthat we have that, we can actually bring back data from here because once we have the data, uh we can
48:0848 minutes, 8 secondsactually do something with it. For example, before we do the result, let's go ahead and check if there is no data dot. As you can see, we now have
48:1748 minutes, 17 secondscompletion here. If data endpoint is missing to do, let's do publish error
48:2448 minutes, 24 secondsstate for HTTP request. But what we can do is throw new non retriable error
48:3048 minutes, 30 secondshere. HTTP request node no endpoint configured.
48:3648 minutes, 36 secondsSo just throw that error. And I think that already if you try this now this should fail. So just make sure to save
48:4448 minutes, 44 secondsthis super simple example. Make sure this is not configured. And once it is saved let's go ahead and execute it. And
48:5348 minutes, 53 secondsnow we should see this fail. Okay, it's running. And there we go. So what happened? Let's see. HTTP request node.
49:0449 minutes, 4 secondsNo end point configured. So exactly what we expected. The only thing that's missing is visual feedback which we are going to be working on later.
49:1549 minutes, 15 secondsNow how could we uh do a request? Well, we could do a request by using await step.fetch and using data endpoint here.
49:2649 minutes, 26 secondsThat is one way of doing it. And then we could get const result like this.
49:3249 minutes, 32 secondsLet me go ahead and do this and just return result. You can actually remove this. There we go. That's one way of doing it. So if I go ahead and try try
49:4049 minutes, 40 secondsand change this to httpsc codewithandonia.com Google or something.
49:4649 minutes, 46 secondsMaybe this is a bad example. Maybe this will fail now because this will return text instead of JSON. But let's just see
49:5449 minutes, 54 secondsif we will at least see step.fetch. Here it is. Step.fetch is now happening. So
50:0150 minutes, 1 secondyou can of course use uh inest builtin uh step.fetch. And you can see the
50:0850 minutes, 8 secondsoutput here body right. So, you can use that. Uh, but I kind of found it easier
50:1550 minutes, 15 secondsto use uh a bit more I'm not sure what should I use to describe it. Not exactly advanced because here's the thing.
50:2550 minutes, 25 secondsStep.fetch is a wrapper around normal fetch which we all know and love. But we also know there are certain limitations
50:3450 minutes, 34 secondswith it, right? It's quite hard. I mean hard. it takes a lot of code to do a super simple post request with it. So
50:4250 minutes, 42 secondsfor that reason, I recommend that you actually do npm install ky which is like a lightweight alternative
50:5050 minutes, 50 secondsto ax. So let's import ky from ky obviously. So if you prefer axius, you
50:5850 minutes, 58 secondscan do this with axius. If you prefer, I don't know step.fetch, you can just use a step.fetch, right? So this is what we're
51:0751 minutes, 7 secondsgoing to do now. I'm going to go ahead and do result. And instead of stepfetch, this will be step.run
51:1451 minutes, 14 secondshttp request. And this is why I also prefer using my own kind of fetch execution so that I can have a step.r run independently like this.
51:2751 minutes, 27 secondsAnd inside of this, I'm going to go ahead and do const method to be data do method or I will fall back to get method.
51:3651 minutes, 36 secondsMaybe I can even stop doing this all the time. It's getting a little bit annoying and I can just throw an error if method
51:4251 minutes, 42 secondsis not defined because it it is getting a little bit annoying right now. And then what I'm going to do, let me just
51:5151 minutes, 51 secondsdefine const endpoint to be data.point end point like this because at this point I think I can uh can I yeah I'm
52:0052 minutesjust going to do this this will also throw you a warning if you're using biome or any llinters but just leave it like this for now so we're doing a non
52:0952 minutes, 9 secondsnull assertion here because we know that at this point data don't endpoint will exist
52:1652 minutes, 16 secondsand now I will define options to be method like this options will be a type of KY options.
52:2852 minutes, 28 secondsUh KY options where can I import that?
52:3252 minutes, 32 secondsOkay, so KY import type options as KY options.
52:4152 minutes, 41 secondsPerfect.
52:4452 minutes, 44 secondsAnd now that we have this, let's see if we should also attach the body property.
52:4852 minutes, 48 secondsSo if open an array post put patch includes
52:5652 minutes, 56 secondsmethod if we have data.body options.body is going to be our data.body.
53:0753 minutes, 7 secondsThe reason I'm doing this inside of an if clause is because uh we are going to first uh uh it's a bit hard to explain
53:1653 minutes, 16 secondsbut the way we will be able to write this is also using variables.
53:2353 minutes, 23 secondsSo if instead of post method here you do this HTTP response data id you have to
53:3053 minutes, 30 secondsparse that here. We are not going to be doing that now simply because it's unnecessarily complicated. But let's just leave it like this for now.
53:3953 minutes, 39 secondsUm yeah, let's let's just do this. Okay, simple as that. And then let's do con
53:4853 minutes, 48 secondsresponse here. Await ky endpoint and options.
53:5453 minutes, 54 secondsAnd let's go ahead and do const response data to be await response.json JSON
54:0154 minutes, 1 secondcatch response dot text.
54:0854 minutes, 8 secondsAnd finally, let's go ahead and let's return
54:1454 minutes, 14 secondsspread the context and do HTTP response here. status response status status text
54:2354 minutes, 23 secondsresponse status text data response data
54:3154 minutes, 31 secondsand um well I think this might be enough for now and this will actually fail if you
54:3954 minutes, 39 secondstry to fetch something that's not returning [snorts] JSON so instead what you can do is you can check content uh
54:4854 minutes, 48 secondsOkay, const content type here is equal to response headers.get
54:5654 minutes, 56 secondscontent type and then in here check if content type question mark includes
55:0355 minutes, 3 secondsapplication forward slashjson then do await response.json otherwise do await response.ext text.
55:1755 minutes, 17 secondsPerfect. So now we can use the response data as the actual data here.
55:2355 minutes, 23 secondsAll right. And I think that should work just fine.
55:3055 minutes, 30 secondsSo let's try it out now. So I'm going to go ahead and just make sure this is a get request pointing to my website here.
55:3955 minutes, 39 secondsI will click save and then I'm going to execute the workflow. And basically I'm not expecting much to change except in
55:4655 minutes, 46 secondsthe finalization step in the result I am expecting this right the body the headers I'm expecting to see that in the
55:5555 minutes, 55 secondsfinalization step here. So let me click execute workflow and let's see did I develop this
56:0256 minutes, 2 secondscorrectly or not. Perhaps I made some mistake in the KY implementation.
56:0856 minutes, 8 secondsUh there we go. finalization now has the result from the previous HTTP request node which has the data for my I mean
56:1756 minutes, 17 secondsthis is useless in a sense that we are not fetching any API we are just fetching
56:2456 minutes, 24 secondsHTML so let me try and just find you a nicer example to make this make more sense
56:3256 minutes, 32 secondsso there is this public API that you can use json placeholder typiccode.comtodos forward slash one. So let's just use get save here.
56:4456 minutes, 44 secondsAnd after you've saved up here, let's go ahead and execute workflow. And now we should have a nicer response here.
56:5356 minutes, 53 secondsIt should be in a form of JSON in the finalization. Here we go. The HTTP response now has data. And in here we
57:0257 minutes, 2 secondsjust have some mock to-do completed false ID one title something user ID something we have status we have status
57:1157 minutes, 11 secondstext basically exactly what happened here but here's the thing if you I'm not sure how this will now behave but if you
57:1957 minutes, 19 secondstry and map like two HTTP requests now and let's go ahead and just copy this.
57:2657 minutes, 26 secondsOh wow I I think I just did the circular thing. Let's remove that. Okay, that would definitely fail. So, go ahead and put number two here. Get request. Save.
57:3857 minutes, 38 secondsClick save here. And now, technically, we should have two objects with the name
57:4557 minutes, 45 secondsof HTTP response. So, that could technically fail. I think that this might actually cause an error. I'm very
57:5357 minutes, 53 secondsinterested to see what will happen because okay, it completed. So two HTTP requests happened. You can see one with
58:0158 minutes, 1 secondan ID of two, one with an ID of one. So what I think Oh, it just over over.
58:0758 minutes, 7 secondsYeah, we just get the HTTP response of the second one. So it overrides the first one. That's not good. We should
58:1658 minutes, 16 secondsthink of a solution to allow the final step to have the data from multiple HTTP
58:2358 minutes, 23 secondsrequests. We can do that quite easily but by maybe introducing a third field here called variable name and then you
58:3358 minutes, 33 secondswill have the exact variable name that will be used here in the result and then the user will be responsible for making
58:4158 minutes, 41 secondssure that they don't override themselves. Uh but I think that's why I wanted you to just use this super simple
58:4858 minutes, 48 secondsexample so you don't run into th those kinds of issues. So you can see that there is still some work to do here but I think you kind of get the idea now
58:5758 minutes, 57 secondsright each of our nodes now has a topological order uh and it has its own
59:0459 minutes, 4 secondsway of executing so in in this specific HTTP request it's quite simple right but
59:1159 minutes, 11 secondswhen later when we create open AI instead of doing this we're going to check do we have a user prompt if we don't throw an error user prompt is
59:2059 minutes, 20 secondsrequired And instead of doing uh a fetch request, we're just going to be doing an open AI request and returning back something.
59:3059 minutes, 30 secondsSo that will be uh the way we're going to move forward. So let me go ahead and check. We created the execute inest
59:3859 minutes, 38 secondsfunctions. We did the topological sort and we created the executor registry. Uh amazing. Uh and yeah inside of our
59:4759 minutes, 47 secondsexecutor registry we have one which just kind of passes through this is the one inside of triggers manual trigger
59:5559 minutes, 55 secondsexecutor. So yes this executor doesn't do absolutely anything besides have its loading state and its success state
1:00:021 hour, 2 secondswhich is purely used for user satisfaction. So they can see that something is happening right? Even though this will immediately show
1:00:101 hour, 10 secondsloading and then immediately show success like there is absolutely nothing happening here we just kind of make sure
1:00:161 hour, 16 secondsthat the context gets passed further. So we can also even remove node ID. I think I think we don't even need node actually
1:00:251 hour, 25 secondswe will need node ID later for the loading and success states. But I think that this is enough for this chapter. In
1:00:331 hour, 33 secondsthe next chapter we are going to solve two problems. We're going to solve the problem of our HTTP request nodes
1:00:411 hour, 41 secondsoverriding themselves and we're going to start to do this. So instead of doing it like this, we will be able to do I don't
1:00:491 hour, 49 secondsknow uh previous node dot id right you will basically be able to use the
1:00:571 hour, 57 secondscontext of your previous nodes. So think of it like this let me show you instead of inest development server. So this
1:01:051 hour, 1 minute, 5 secondshttp response now returns user ID 1 or ID2 or title or something. What if you
1:01:121 hour, 1 minute, 12 secondswanted to use that? So you would do HTTP response dot user ID, right? That's kind
1:01:191 hour, 1 minute, 19 secondsof the goal that you are able to use the data from one node into another node.
1:01:241 hour, 1 minute, 24 secondsThat's what we're going to be focusing into the next chapter. So for now, I think this is enough for us to get introduced into this execution thingy.
1:01:331 hour, 1 minute, 33 secondsSo 18 node execution.
1:01:361 hour, 1 minute, 36 secondsLet's go ahead and commit all of these files here. So I have 15. You might have 16 again if you have that MROS log file here. Otherwise, this should be it.
1:01:501 hour, 1 minute, 50 secondsUh staged all changes. Before I commit, I'm just going to go ahead and click on main here. Create a new branch. 18 node execution.
1:02:001 hour, 2 minutesThere we go. So now I'm in this new branch. I have staged my changes. 18 node execution. I will click commit and then I will click publish branch.
1:02:121 hour, 2 minutes, 12 secondsNow that this branch has been published, I'm just going to go ahead and open the pull request.
1:02:211 hour, 2 minutes, 21 secondsSo I'm going to click compare and pull request and create pull request 18 node execution. And now let's go ahead and review our changes.
1:02:321 hour, 2 minutes, 32 secondsAnd here we have the summary by code rabbit. New features. We added an execute workflow button in the editor when a manual trigger node is present.
1:02:411 hour, 2 minutes, 41 secondsWe introduced workflow execution from the app via a new action and hook. We enabled the HTTP request nodes to
1:02:491 hour, 2 minutes, 49 secondsperform real requests and return response data. And we of course refactor the workflow runs now follow dependency
1:02:561 hour, 2 minutes, 56 secondsorder meaning the topological sort with improved orchestration and a unified context result enhancing reliability and
1:03:031 hour, 3 minutes, 3 secondsclarity of outcomes. as always file by file walk through here. But here is the sequence diagram that uh interests us
1:03:121 hour, 3 minutes, 12 secondsthe most. So let's go ahead and try and follow it. So when the user clicks on execute workflow, we call the TRPC mutation with a workflow ID param.
1:03:241 hour, 3 minutes, 24 secondsWe then call uh workflows. Okay, so this is the actual TRPC uh execution. And the only thing this does is it sends the event workflows execute workflow.
1:03:361 hour, 3 minutes, 36 secondsImmediately we return back the workflow with a success message to the user. Uh okay. And what actually happens here is
1:03:461 hour, 3 minutes, 46 secondsthe background job. So uh we uh let's see we trigger the function with the
1:03:521 hour, 3 minutes, 52 secondsevent. We load the workflow its nodes and its connections. We return that data and we map it to the topological sort
1:04:011 hour, 4 minutes, 1 secondfunction and then topological sort uh gives us sorted nodes and we can then do
1:04:081 hour, 4 minutes, 8 secondsthe for loop for each of that node and we can find the appropriate executor for that node and execute it and return the
1:04:171 hour, 4 minutes, 17 secondsupdated context along. Great. So that's exactly what we are doing. We do have some comments here. So let's go ahead.
1:04:251 hour, 4 minutes, 25 secondsFirst one is in the HTTP request dialogue here. So I changed from three individual props to just one. And in
1:04:331 hour, 4 minutes, 33 secondshere it says destructure and depend on specific form methods instead of the full form object. Uh okay I will look into that.
1:04:431 hour, 4 minutes, 43 secondsNow in here it is telling me to do appropriate error handling for KY package. We will work on that in the
1:04:501 hour, 4 minutes, 50 secondsnext chapter where we improve the entire HTTP request executor itself.
1:04:551 hour, 4 minutes, 55 secondsSame here. So yes, we completely forgot to pass the option headers which will lead to uh some servers to reject the
1:05:041 hour, 5 minutes, 4 secondsrequest again. This will be in the next chapter where we improve the HTTP request exeutor allgether.
1:05:131 hour, 5 minutes, 13 secondsIn here uh it is telling me to improve the way I handle errors in case I cannot
1:05:201 hour, 5 minutes, 20 secondsfind an exeutor for a certain node. Uh yes, so I could look into doing this. I
1:05:271 hour, 5 minutes, 27 secondsthink it's fine as it is, but yeah, it wouldn't hurt to have even more strict checks here. I will look into that as
1:05:361 hour, 5 minutes, 36 secondswell. Uh same thing for this. So I think the error message is cyclic, but in here it's telling me is cycle. So I will just
1:05:441 hour, 5 minutes, 44 secondslook at the source code of toposort or documentation and see which one of those it is. And in here, yes. So I told you
1:05:521 hour, 5 minutes, 52 secondsthat we can use the nonnull assertion here with the exclamation point. So in here it suggests not doing that and
1:05:591 hour, 5 minutes, 59 secondsinstead just quickly checking if a node is missing and throw an error. Perhaps that is safer. Yes, we could do that. Uh
1:06:081 hour, 6 minutes, 8 secondsokay, amazing suggestions from code rabbit. I will take a look at them and for the next chapter maybe prepare a few
1:06:151 hour, 6 minutes, 15 secondsthat I think are important so we can proceed. But for now, let's go ahead and merge this pull request. Amazing job.
1:06:221 hour, 6 minutes, 22 secondsThis was a complicated chapter. Let's go back inside of the main branch and let's make sure to click on synchronize changes and okay. And let's go ahead
1:06:311 hour, 6 minutes, 31 secondsinside of our source control. Open the graph. And in here we should now see 18 node execution. Amazing. That means
1:06:401 hour, 6 minutes, 40 secondseverything here is merged, which I think means we are ready to go ahead and wrap this chapter up. So, we pushed to
1:06:481 hour, 6 minutes, 48 secondsGitHub, created a new branch, created a new PR, and reviewed. Amazing, amazing job, and see you in the next chapter.
1:06:571 hour, 6 minutes, 57 secondsIn this chapter, we're going to continue our work on executing nodes by fixing some issues we discovered in the previous chapter.
Chapter 3: 19 Node Variables
1:07:061 hour, 7 minutes, 6 secondsLet's start by fixing the code rabbit reported issue about our missing content type header. and let's discuss the
1:07:141 hour, 7 minutes, 14 secondscyclic error message that we decided to look for whenever uh topos sort is happening. So I'm going to go ahead and
1:07:231 hour, 7 minutes, 23 secondsopen the previous pull request right here. And this is the first suggestion and it is completely valid. We have
1:07:301 hour, 7 minutes, 30 secondsforgot to add headers to our uh postput patch request. So let's go ahead and do
1:07:361 hour, 7 minutes, 36 secondsthat to ensure that our HTTP request node can properly uh make those requests. So what we have to do is we
1:07:441 hour, 7 minutes, 44 secondshave to find executor.ts inside of features executions components
1:07:521 hour, 7 minutes, 52 secondsHTTP request folder. So let me show you how that looks right here. Features executions components HTTP request executor.ts.
1:08:031 hour, 8 minutes, 3 secondsAnd in here when we decide that this will be a postput or patch request besides filling the body we also have to
1:08:111 hour, 8 minutes, 11 secondsdo options. headers and let's do this properly. options headers and we have to
1:08:171 hour, 8 minutes, 17 secondsadd content dash type and in the type will be the exact this one that we are querying for later. There we go. This
1:08:261 hour, 8 minutes, 26 secondswill ensure that our postput or patch request doesn't get rejected because headers are an important part of an HTTP
1:08:351 hour, 8 minutes, 35 secondsrequest. Of course, great. So, that's one thing resolved from our previous pull request here. There are some other
1:08:431 hour, 8 minutes, 43 secondsthings here such as validate node types and data at runtime. Now, depending on your personal preference, you can of
1:08:511 hour, 8 minutes, 51 secondscourse do this. This is a good advice, but let me show you exactly where this is happening. So this is happening
1:08:581 hour, 8 minutes, 58 secondsinside of our source folder inside of ingest functions.ds.
1:09:041 hour, 9 minutes, 4 secondsSo basically what it's telling us to do is the following. You can see that when we pass this node.ype
1:09:111 hour, 9 minutes, 11 secondsby default it doesn't have a proper node type. So we have to cast it as such, right? Or maybe we don't even. Uh yeah,
1:09:201 hour, 9 minutes, 20 secondsyou can see that uh okay, it looks like it's working, but still cold rabbit is
1:09:261 hour, 9 minutes, 26 secondstelling us to check at runtime if it's actually a part of node type using this and then throw an error if it's not.
1:09:361 hour, 9 minutes, 36 secondsHere's why we don't have to do that. So first things first, I had no idea that we don't have to cast it as node type.
1:09:431 hour, 9 minutes, 43 secondsSo I'll have to retrace my steps to like fully confirm that. But just for now, I don't want to change my the code I've written because I don't want you to have
1:09:511 hour, 9 minutes, 51 secondsany errors, right? So if you have this, leave it just in case. Uh and instead, if you go inside of get executor here,
1:09:591 hour, 9 minutes, 59 secondsyou can see what happens. So if that type, which is a node type, does not match to whatever we define in our executor registry, we're going to throw
1:10:081 hour, 10 minutes, 8 secondsan error. So you don't really have to worry about node type not being compatible. So that's why I chose not to
1:10:151 hour, 10 minutes, 15 secondsdo this suggestion right here. But of course depending on your preference, you might think this is a great runtime validation. So you might do it. Same
1:10:241 hour, 10 minutes, 24 secondsgoes from data which is later uh retrieved from the executor constant.
1:10:311 hour, 10 minutes, 31 secondsFor now I'm going to leave this as is.
1:10:341 hour, 10 minutes, 34 secondsAnd now let's go ahead and discuss the other problem that we have and that is key collision. So what is key collision?
1:10:441 hour, 10 minutes, 44 secondsIn our previous example, we had this type of schema, right? Very simple. When I click
1:10:521 hour, 10 minutes, 52 secondsexecute, I'm going to get this and then I'm going to get that in my results. So if I go ahead and visit my let me go
1:11:011 hour, 11 minutes, 1 secondahead and just find my injust server here 8288. So I suggest you go here too.
1:11:111 hour, 11 minutes, 11 secondsUh having some trouble clicking on it.
1:11:131 hour, 11 minutes, 13 seconds82 88. Here we go. Completed. And if you go inside of finalization here, you will
1:11:221 hour, 11 minutes, 22 secondssee that the result simply says HTTP response with data of ID 1 inside.
1:11:301 hour, 11 minutes, 30 secondsUh that's pretty straightforward, right?
1:11:321 hour, 11 minutes, 32 secondsBecause we have an HTTP request which requests to-dos by an ID of one. If I change this to to do two and if I click
1:11:391 hour, 11 minutes, 39 secondssave here and then if I click execute workflow again I'm going to have another request here finished and this time this
1:11:481 hour, 11 minutes, 48 secondsrequest's finalization will be different it will include the ID of two perfect
1:11:561 hour, 11 minutes, 56 secondsbut what if I do this? What if I add another HTTP request right after this one? And if I change this,
1:12:041 hour, 12 minutes, 4 secondslet's make this to be to-do one. Click save. And change this to be todos two.
1:12:111 hour, 12 minutes, 11 secondsAnd click save. Save the entire workflow. And then click execute again.
1:12:161 hour, 12 minutes, 16 secondsSo what's going to happen now? So I will have, as you can see, two HTTP requests fired. But in the finalization block,
1:12:251 hour, 12 minutes, 25 secondsyou will see that I only have one HTTP response only. ID2, which means that this one was
1:12:351 hour, 12 minutes, 35 secondscompletely overridden. You can see that and prove that by going inside of these individual ones. You can see that the
1:12:431 hour, 12 minutes, 43 secondsfirst HTTP request topologically called the to-do with ID of one, but the second one called with to-do two. But both of
1:12:521 hour, 12 minutes, 52 secondsthem have the se same value here http response which means that in the finalization block only the last one gets written.
1:13:021 hour, 13 minutes, 2 secondsThat's because we have a key collision.
1:13:051 hour, 13 minutes, 5 secondsSo now let's go ahead and fix that. Uh and yes there is this thing right here.
1:13:101 hour, 13 minutes, 10 secondsSo cyclic error message. So code rabbit told us to double check if that's the correct one. So instead of my utils in
1:13:171 hour, 13 minutes, 17 secondsthe source inest folder. Yes, this is correct. I went into the source code and I can confirm that this topos sort
1:13:251 hour, 13 minutes, 25 secondslibrary here throws an error message which includes the word cyclic not cycle. So this is correct. Just wanted
1:13:331 hour, 13 minutes, 33 secondsto resolve that because I think I promised that it will resolve it. And now we have to fix this bug that we have. Right. Basically it's not allowing
1:13:421 hour, 13 minutes, 42 secondsus to chain our HTTP requests. In order to do that, we're going to have to introduce a new field to UI. So each of
1:13:511 hour, 13 minutes, 51 secondsour nodes besides having a method endpoint URL, right? Those specific things for it itself, it's also going to need to have a variable name. And I
1:14:011 hour, 14 minutes, 1 secondsuggest we add that as the first field in every node that we have because it's going to be a very important one and it's always going to be required. So
1:14:091 hour, 14 minutes, 9 secondslet's start from the UI side and work our way into the executor and finally assigning it to the context.
1:14:181 hour, 14 minutes, 18 secondsThe first component I want to go in is node.tsx.
1:14:231 hour, 14 minutes, 23 secondsSo let's find it together. So we refresh our knowledge. Uh it is inside of source features executions components http request node.tsx.
1:14:351 hour, 14 minutes, 35 secondsSo besides having an endpoint, method and body, we are also now going to have variable name
1:14:421 hour, 14 minutes, 42 secondslike this. The reason we are making this optional is not because it's optional.
1:14:461 hour, 14 minutes, 46 secondsIt's because it will not be added at some point, right? So we cannot always uh rely that this will exist. It will be
1:14:541 hour, 14 minutes, 54 secondsrequired for executing the node but it will not be required as the initial node if that makes sense. Right? So user will have to add this later.
1:15:061 hour, 15 minutes, 6 secondsUh and once we have this variable name uh what we can do with it is well we don't have to worry about it too much because you can see it's automatically
1:15:131 hour, 15 minutes, 13 secondsgoing to be spread here. It will automatically be passed here in the default values because we refactored our code previously. But maybe we can
1:15:211 hour, 15 minutes, 21 secondsimprove the description so the user can visually see for example right here in this HTTP request node. Perhaps we can add some kind of variable name here.
1:15:321 hour, 15 minutes, 32 secondsThat's like one idea I have. I'm not sure. Maybe later. Let's Let's leave it like this for now and then we'll see.
1:15:401 hour, 15 minutes, 40 secondsNow that we have the variable name, we can go ahead and safely go inside of dialogue.tsx.
1:15:461 hour, 15 minutes, 46 secondsAnd now we have to modify our form schema. So our form schema now needs a new field called variable name.
1:15:541 hour, 15 minutes, 54 secondsLet me fix it. Variable name is going to be a type of string. Now, we can just
1:16:011 hour, 16 minutes, 1 secondleave it to be any type of string, but it needs to be a type of string that will be compatible with a JavaScript
1:16:101 hour, 16 minutes, 10 secondsobject, right? So, it should not be able to be something like this. I think I think this might not be valid or maybe
1:16:191 hour, 16 minutes, 19 secondsit is because whitespace is valid. But basically we want to make sure that whatever uses writes inside uh will not
1:16:271 hour, 16 minutes, 27 secondsthrow any runtime errors when assigned to the key value of an object. So because of that we're going to add some
1:16:351 hour, 16 minutes, 35 secondsJ uh some reg x to validate that. So zstring like this after string let's go ahead and make it required.
1:16:451 hour, 16 minutes, 45 secondsLet's give it a message variable name is required.
1:16:501 hour, 16 minutes, 50 secondsAnd then let's add a reg x. So I'm just going to copy the reg x so you don't have to see me type it here. And let's
1:16:581 hour, 16 minutes, 58 secondsgo ahead and make sure that we have an error message if it's not applied.
1:17:061 hour, 17 minutes, 6 secondsVariable name must start with a letter or underscore and contain only letters, numbers, and underscores.
1:17:211 hour, 17 minutes, 21 secondslike this. So, this isn't an unknown regax. It's you can find it quite easily
1:17:281 hour, 17 minutes, 28 secondson Google. Basically, it does exactly what the message says. It allows capital and non- capital letters as well as
1:17:371 hour, 17 minutes, 37 secondsnumbers from 0 to 9 with the exception of a dollar sign because that's also uh valid to be inside of a JSON object.
1:17:481 hour, 17 minutes, 48 secondsSo I think this is good enough. You can of course you know for yourself research if you have a better reg x but I think
1:17:541 hour, 17 minutes, 54 secondsthis will work just as well. Now let's go ahead and let's add it here in the default values here. Variable name will
1:18:041 hour, 18 minutes, 4 secondsbe default values dot variable name or an empty string.
1:18:081 hour, 18 minutes, 8 secondsSame thing in the form reset default values variable name or an empty string.
1:18:181 hour, 18 minutes, 18 secondsAnd now what we have to do is we have to add a form field for it. So let me try and find the simplest one. I think
1:18:251 hour, 18 minutes, 25 secondsthat's this one, the endpoint URL. I'm just going to copy it because it's very simple. And I'm going to add it above
1:18:321 hour, 18 minutes, 32 secondsthe first form field because we said we want this to be the first one. I'm going to change the name to be variable name.
1:18:391 hour, 18 minutes, 39 secondsAnd I'm going to change this to be variable name.
1:18:451 hour, 18 minutes, 45 secondsAnd the placeholder can be whatever we want. For example, my API call.
1:18:491 hour, 18 minutes, 49 secondsBasically allowing the user to know, hey, you can name this whatever you want. And in the form description,
1:18:581 hour, 18 minutes, 58 secondsum, let's go ahead and describe something like this.
1:19:021 hour, 19 minutes, 2 secondsUse this name to reference the result in other nodes. Then I'm using this to create a space. And then I open an
1:19:111 hour, 19 minutes, 11 secondsobject so that I can do double curly brackets because that's how we're going to do templating. For example, my API
1:19:181 hour, 19 minutes, 18 secondscall HTTP response data and the placeholder here is the same. So if user
1:19:261 hour, 19 minutes, 26 secondsnames this test later in other nodes, they will be able to do test.httpreson
1:19:331 hour, 19 minutes, 33 secondsdata. Perfect. So now once we do that, if you go ahead and open an HTTP request, you should see a variable name.
1:19:431 hour, 19 minutes, 43 secondsAnd I just got a really cool idea. If we change the variable name, maybe we could also change the description to make it even clearer to your users what this
1:19:521 hour, 19 minutes, 52 secondswill be used for. Let's see if I can do it very quickly. So just as I did this, let me go ahead and do const watch
1:19:581 hour, 19 minutes, 58 secondsvariable name form watch variable name like this. And then in here in the form
1:20:071 hour, 20 minutes, 7 secondsdescription, let's see if I change this to back ticks. Whoops. Change this to back ticks.
1:20:151 hour, 20 minutes, 15 secondsAnd if I specifically do this watch variable name
1:20:241 hour, 20 minutes, 24 secondsand maybe make this fall back to my AI call so it looks better.
1:20:351 hour, 20 minutes, 35 secondsThere we go. Exactly what the variable name is. That's what the user will see.
1:20:401 hour, 20 minutes, 40 secondsSo it will be easier for them to understand how they're going to use this later in other nodes, right? So test or
1:20:481 hour, 20 minutes, 48 secondsif nothing is written, it's just going to use the placeholder one. I think it's cool. And if I save, it should give me an error because variable name is
1:20:561 hour, 20 minutes, 56 secondsrequired. So let's go ahead and call this uh my API call one like this. And let's click save. And let's do this one uh my API call 2. And let's click save.
1:21:081 hour, 21 minutes, 8 secondsThere we go. So now we have different variable names for two identical uh nodes with of course different endpoint
1:21:161 hour, 21 minutes, 16 secondsURLs. So what we have to do now is we have to use that variable name inside of the actual executor.
1:21:251 hour, 21 minutes, 25 secondsSo uh first things first well at first things first and well last things last we have to go to the
1:21:331 hour, 21 minutes, 33 secondsexecutor. So features executions components http request executor.ts DS.
1:21:391 hour, 21 minutes, 39 secondsAnd now let's get inside of the HTTP request data and let's go ahead and let's add the variable name.
1:21:471 hour, 21 minutes, 47 secondsAgain, it's going to be an optional string.
1:21:511 hour, 21 minutes, 51 secondsAnd what we're going to do is well, you can define how strict you want to do be with this. I would personally be as strict as if we were missing an
1:21:591 hour, 21 minutes, 59 secondsendpoint. Right? If there is no variable name, it's a nonretable error. Right? So let's remove this to-do right here.
1:22:101 hour, 22 minutes, 10 secondsActually no. Yes, we also have to publish the error state for this. So nonriable error variable name not
1:22:201 hour, 22 minutes, 20 secondsconfigured like this.
1:22:241 hour, 22 minutes, 24 secondsAnd now let's go all the way down to the return method and we have to slightly modify it. So let's go ahead and do const response payload.
1:22:341 hour, 22 minutes, 34 secondsAnd let's go ahead and copy the HTTP response from here. So basically our old payload exactly as it is. And now we're
1:22:431 hour, 22 minutes, 43 secondsjust going to slightly modify this by spreading the context and instead of storing this under HTTP response, let's
1:22:511 hour, 22 minutes, 51 secondsstore it under data variable name and the response payload inside.
1:22:561 hour, 22 minutes, 56 secondsThere we go. So let's see. Uh a computer property name must be a type of string, number, symbol or any uh data dot variable name.
1:23:071 hour, 23 minutes, 7 secondsI was expecting this to take care of that. Maybe I should also check for string. Let me just just for my
1:23:161 hour, 23 minutes, 16 secondscuriosity if I do if data dovariable name right here. Does that fix the issue? That seems to fix the issue.
1:23:241 hour, 23 minutes, 24 secondsOkay.
1:23:261 hour, 23 minutes, 26 secondsHm. Let me just pause the video just a little bit and see how what is the best way to handle this
1:23:341 hour, 23 minutes, 34 secondshere. Here's a potential solution that we can do. We could just we can do both actually. Let's do if data variable name
1:23:421 hour, 23 minutes, 42 secondslike this and then return like that. And we can also do another return here which can be
1:23:511 hour, 23 minutes, 51 secondsserved as a fallback to direct HTTP response for backwards compatibility.
1:24:011 hour, 24 minutes, 1 secondAnd let's just go ahead and do what we used to do. So context and then append the response payload like this.
1:24:121 hour, 24 minutes, 12 secondsAnd let's just try it out for now. So I think this should work now. So let's see everything we changed in executor.dts is
1:24:201 hour, 24 minutes, 20 secondswe checked if we don't have the variable name and we throw an error because it's now required and we changed another check here if we have it simply because
1:24:281 hour, 24 minutes, 28 secondsthis type error is being a little uh it's not it's giving us a hard time basically. So I made sure to wrap that
1:24:361 hour, 24 minutes, 36 secondsinside of another if clause here so I can safely return that with that variable name. But if somehow all of this, you know, validation fails or
1:24:441 hour, 24 minutes, 44 secondssomething, let's just fall back to what we have right now, even though it doesn't work as well as we wanted to. But I think that now this should work.
1:24:541 hour, 24 minutes, 54 secondsOkay. Um, I think I should be able to save this because we can extend individual node data without extending
1:25:021 hour, 25 minutes, 2 secondsthe schema. That's another cool thing about React Flow and the fact that we store this in a JSON object. So I think
1:25:111 hour, 25 minutes, 11 secondsthat now the situation should be different. Let's click execute workflow and let's follow it again. So it is running and there we go. You can see
1:25:191 hour, 25 minutes, 19 secondsthat now we have a my API call one with its own HTTP response and then oh we
1:25:271 hour, 25 minutes, 27 secondshave another my API call one but here it is thankfully my API call 2. Perfect.
1:25:341 hour, 25 minutes, 34 secondsIt's just that this one uh was there first. So I thought something had happened. And here is the final result.
1:25:421 hour, 25 minutes, 42 secondsThe result object now has my API call one with HTTP response and data of ID 1.
1:25:481 hour, 25 minutes, 48 secondsAnd down here my API call 2 with HTTP response data and ID of two. And this
1:25:551 hour, 25 minutes, 55 secondsway we resolved our problem of key collision. So we have added the variable name to the UI and we added the variable
1:26:031 hour, 26 minutes, 3 secondsname inside of the context. I'm not too happy about this part right here that I have to check and this fallback because
1:26:121 hour, 26 minutes, 12 secondsthis fallback really doesn't make any sense because it's never going to get to that. Right? If we somehow remove the
1:26:201 hour, 26 minutes, 20 secondsvariable name, it will just throw an error and honestly since we are still in development phase,
1:26:281 hour, 26 minutes, 28 secondswe don't really need to offer any fallback. But this currently is a solution to not have that type error
1:26:361 hour, 26 minutes, 36 secondshere. For the next chapter, I might research a bit more into it and how I can give you a prettier solution so that
1:26:441 hour, 26 minutes, 44 secondswe can simply validate our variable name here. Perhaps I also have to add and if
1:26:501 hour, 26 minutes, 50 secondstype of let's see and if type of data variable name is equal to string. Maybe
1:26:581 hour, 26 minutes, 58 secondsthat's what I had to do. And then if I remove this.
1:27:031 hour, 27 minutes, 3 secondsYeah. No. Okay. Maybe I'm missing something very obvious. So I will make sure to take a deeper look into this in
1:27:121 hour, 27 minutes, 12 secondsthe next chapter and tell you if there is a prettier solution to this. But as you can see, as I just tested, we officially fixed our overwriting
1:27:211 hour, 27 minutes, 21 secondsproblem. So let's go ahead and quickly go over these three files that we have modified. So I think we actually started with the executor, right? And the only
1:27:301 hour, 27 minutes, 30 secondsthing we did here first was we added options.headers. Make sure you have that. Make sure you didn't misspell any uh key and value there. Then we went
1:27:391 hour, 27 minutes, 39 secondsinto node.tsx where we very simply extended with a new variable name. And I don't think we modified anything else. If you want to,
1:27:471 hour, 27 minutes, 47 secondsyou can add it into your description so that users so that users can visually see uh what variable that is. You can
1:27:541 hour, 27 minutes, 54 secondsadd it right like before the get method, whatever you prefer.
1:27:591 hour, 27 minutes, 59 secondsAnd then we went into the dialogue. We added a variable name with some reg x which basically allows uh a toz letters
1:28:081 hour, 28 minutes, 8 secondslowerase and uppercase dollar sign and numeric variables. Perfect. And we added that new form field and a cool little
1:28:171 hour, 28 minutes, 17 secondswatch util that will directly show the user how they can use that in other nodes. Perfect. So, what I want to do
1:28:241 hour, 28 minutes, 24 secondsnow is open a pull request and merge those changes. Let's go ahead and open a new branch. Let's call it 19 node variables.
1:28:371 hour, 28 minutes, 37 secondsLet's go ahead and click on stage all changes. 19 node variables.
1:28:431 hour, 28 minutes, 43 secondsLet's go ahead and click commit. And let's click publish branch. Now, let's go ahead and open a pull request.
1:28:521 hour, 28 minutes, 52 secondsAnd since this was a fairly simple pull request, I don't think we have to go through the entire uh review simply
1:28:591 hour, 28 minutes, 59 secondsbecause it's just three files. Some quick fixes I want to resolve before moving on to other chapters. I'm going to immediately merge this pull request
1:29:081 hour, 29 minutes, 8 secondsand let's focus on uh adding more interesting nodes finally. So, we pushed to GitHub. We created a new branch, a
1:29:171 hour, 29 minutes, 17 secondsnew PR, and we reviewed locally right here all the files. Of course, you can go through Code Rabbit's review for this one. I just think it's a very short pull
1:29:261 hour, 29 minutes, 26 secondsrequest. So, now let's go ahead and change this branch back to main. And let's go ahead and click on synchronize changes right here. And let's click
1:29:341 hour, 29 minutes, 34 secondsokay. And after that, as always, I like to confirm by going inside of my source control tab, clicking inside of graph,
1:29:411 hour, 29 minutes, 41 secondsand I want to make sure that 19 is the newest thing I just merged, and it's just those three files. Amazing. That means everything is right. And see you in the next chapter.
1:29:521 hour, 29 minutes, 52 secondsIn this chapter, we're going to continue working on node execution by implementing templating language. This
Chapter 4: 20 Node Templating
1:30:001 hour, 30 minuteswill be a particularly powerful feature of our project and I'm so happy that we are finally in this chapter because I
1:30:071 hour, 30 minutes, 7 secondsthink it's very very interesting how we are going to achieve this. So the first thing we have to do is we have to refactor one implementation from the
1:30:161 hour, 30 minutes, 16 secondsprevious chapter. In the previous chapter we added variable name which basically fixes the key collision issue
1:30:241 hour, 30 minutes, 24 secondswhich we discovered two chapters before this. So let's go ahead and quickly fix that before we discuss exactly how we're going to implement this.
1:30:341 hour, 30 minutes, 34 secondsSo we're going to go ahead inside of source features executions components HTTP request executor.ds.
1:30:441 hour, 30 minutes, 44 secondsSo what problem do we have? Even though we have an if check for the data variable name missing and we throw an
1:30:521 hour, 30 minutes, 52 secondserror. Still, if I remove this if clause right here, we get an error. And because
1:31:001 hour, 31 minutesof that, we have this weird solution where we've wrapped this instead of an if clause and then we fall back to this one. Since we made a decision that
1:31:091 hour, 31 minutes, 9 secondsvariable name will be required, we can safely remove this fallback. Now, and in order to fix this, we can very simply
1:31:181 hour, 31 minutes, 18 secondsdefine inside of HTTP request data which ones are actually expected to be
1:31:251 hour, 31 minutes, 25 secondsrequired. Keyword expected. So, let's remove the question mark for variable name and let's also remove it for
1:31:321 hour, 31 minutes, 32 secondsendpoint. This way, these two are expected to always be required. And we can also do the same for the method actually.
1:31:431 hour, 31 minutes, 43 secondsBut even though even though we expect them to be required, the only way we currently validate that is on the front end using react hook form which is fine but not good enough.
1:31:541 hour, 31 minutes, 54 secondsWe need to be secure. That's why we are doing these things right here. We throw error if any of our required fields are
1:32:021 hour, 32 minutes, 2 secondsmissing. So let's go ahead and just do the same thing for the method here. And very simply method not configured.
1:32:121 hour, 32 minutes, 12 secondsAs simple as that. Uh if you want to, you can continue adding like these type of errors simply so it's easier to find
1:32:201 hour, 32 minutes, 20 secondsin the logs. Great. So now we do make these required in the types but we also
1:32:281 hour, 32 minutes, 28 secondsdo runtime validation just in case they are not passed because users can easily bypass this. So we want to make sure
1:32:371 hour, 32 minutes, 37 secondsthat these are actually passed so that we can properly do uh the request. And now once you've done this you can actually remove the question mark here
1:32:461 hour, 32 minutes, 46 secondsbecause this will now always be required.
1:32:501 hour, 32 minutes, 50 secondsAnd let's see the method. Same thing you don't have to fall back to get because method will now always be required.
1:32:581 hour, 32 minutes, 58 secondsPerfect. So that's how we resolved that first issue. Our code is much cleaner looking now. So let me quickly mark that as completed.
1:33:091 hour, 33 minutes, 9 secondsSo what is template syntax? How are we going to implement that? And why do we even need that? Well, take a look at this scenario that I've prepared right
1:33:171 hour, 33 minutes, 17 secondshere. So very similar to our previous project. I have one HTTP request with a
1:33:241 hour, 33 minutes, 24 secondsvariable name my API call 1 with a get method and a simple API placeholder
1:33:311 hour, 33 minutes, 31 secondscalling to-dos with an ID of one. And I have slightly modified the second one.
1:33:361 hour, 33 minutes, 36 secondsSo this one is called my API call 2 which instead of calling to-dos calls users. So let me rename this. This will be my users.
1:33:461 hour, 33 minutes, 46 secondsLet's call it user and this will be my to-do.
1:33:521 hour, 33 minutes, 52 secondsPerfect. So make sure you click the big save button and go ahead and execute your workflow. Just make sure you have both inest and next.js running and let's
1:34:021 hour, 34 minutes, 2 secondstake a look at what happens. So, I'm going to expand this as far as possible.
1:34:061 hour, 34 minutes, 6 secondsLet's go inside of finalization. In the result, we now have to-do object with HTTP response data. And you can see it
1:34:151 hour, 34 minutes, 15 secondshas properties of the to-do, but we also have a user object with all of the fake
1:34:211 hour, 34 minutes, 21 secondsmock user information. So, great, we can successfully fetch one hard-coded to-do
1:34:271 hour, 34 minutes, 27 secondsand one hard-coded user. But what if I specifically wanted to do this? What if
1:34:351 hour, 34 minutes, 35 secondsI first wanted to fetch the to-do and then I wanted to use the to-do user ID
1:34:421 hour, 34 minutes, 42 secondsin the next node. So what if in here I wanted to do this? I wanted to pass. So
1:34:511 hour, 34 minutes, 51 secondsthis would be to-do http response data dot user ID. Quite long. We could maybe shorten that but
1:35:001 hour, 35 minutesthis is how it is accessible for now I believe. Let me just confirm to do HTTP response data user ID with capital ID.
1:35:111 hour, 35 minutes, 11 secondsThere we go. So if I click save here and if I just try running this it's going to fail I believe. Let's see. There we go.
1:35:201 hour, 35 minutes, 20 secondsYou can see that the second HTTP request is failing with 404 not found. So I'm going to cancel it now so we don't waste
1:35:271 hour, 35 minutes, 27 secondsany time. So now we're going to imple uh fix that by implementing the template
1:35:341 hour, 35 minutes, 34 secondssyntax. For that we're going to be using handlebars. So let's go ahead and install handlebars.
1:35:421 hour, 35 minutes, 42 secondsSo I'm going to go ahead and open a new tab. MPM install handlebars. And then I'm going to show you the exact version that I'm using.
1:35:511 hour, 35 minutes, 51 secondsHandlebars 4.7.8.
1:35:551 hour, 35 minutes, 55 secondsAnd let me just quickly try importing that. So import handlebars from handlebars. And looks like type safety is here as well. Perfect.
1:36:061 hour, 36 minutes, 6 secondsSo now that we have handlebars, let's go ahead and let's try and fix this. So what I'm going to do is I'm going to go
1:36:141 hour, 36 minutes, 14 secondsto this endpoint right here and I'm going to call handlebars.compile.
1:36:201 hour, 36 minutes, 20 secondsI'm going to pass in data.endpoint endpoint and I'm going to pass it context like this. So what's going to happen now is
1:36:291 hour, 36 minutes, 29 secondshandlebars.compile will read data.endpoint which is going to look like something
1:36:361 hour, 36 minutes, 36 secondsright blah blah blah let me try and mock this and then it's going to have uh to-do http response dot data do user id
1:36:461 hour, 36 minutes, 46 secondsright so handlebars.compile compile will read this and then it will use the
1:36:531 hour, 36 minutes, 53 secondscontext to populate that. So what is the context? Each of our executor has the
1:37:001 hour, 37 minutescontext. The context is the context is basically the previous node data. The
1:37:071 hour, 37 minutes, 7 secondscontext always gets updated which with each sequencing node. So the first HTTP request that's done if we tried for
1:37:161 hour, 37 minutes, 16 secondsexample if you tried to do this for this one right for the first one it will it's always going to fail right because there
1:37:241 hour, 37 minutes, 24 secondsis no context behind the first one but the second one will have context it will have to-do context because we named this
1:37:321 hour, 37 minutes, 32 secondsvariable to-do so I think just by doing this this should already work and let me just try and do console log
1:37:421 hour, 37 minutes, 42 secondsendpoint point and let me try and do endpoint.
1:37:451 hour, 37 minutes, 45 secondsI'm using capital letters so it's easier to find it. And if we've done this correctly, we should see the endpoint
1:37:521 hour, 37 minutes, 52 secondslogged out. Well, if it works, I mean, we we will actually be able to inspect the URL itself. Right? Basically, what I
1:38:011 hour, 38 minutes, 1 secondexpect to happen now, make sure you save that file. I think I've done it correctly. Maybe I'm missing something, but I think it should work. Is there we
1:38:081 hour, 38 minutes, 8 secondsgo. If I use to-do http response.data data in here in the users. This should
1:38:161 hour, 38 minutes, 16 secondscompile to users one because the todo one has a user ID of one. So let me go ahead and click save here one more time.
1:38:261 hour, 38 minutes, 26 secondsLet's go ahead and click execute workflow and let's see if anything will change now or maybe we'll need to fix something. And given that it completed,
1:38:351 hour, 38 minutes, 35 secondsI think we just fixed this. Let's quickly take a look. So this is the first HTTP request and it's stored into
1:38:431 hour, 38 minutes, 43 secondsa to-do variable HTTP response data with user ID of one. And then in the second one, let's go ahead and scroll down. We
1:38:521 hour, 38 minutes, 52 secondsnow have a user. And you can see how we have the context of the previous HTTP response which allowed us to populate
1:39:001 hour, 39 minutesthe user ID. And I think this works as well. Let's just confirm by finding the
1:39:051 hour, 39 minutes, 5 secondsID here. And it is one amazing. Uh can I directly see the URL somewhere? Let me
1:39:131 hour, 39 minutes, 13 secondsgo ahead and try here maybe. There we go. Endpoint JSON placeholder typing code to-dos one. And you can see this is
1:39:221 hour, 39 minutes, 22 secondsthe one users one. So it's successfully compiled to exactly what we expected.
1:39:291 hour, 39 minutes, 29 secondsAmazing. Amazing job. It really is that simple to do that. Now the only problem
1:39:361 hour, 39 minutes, 36 secondsis you currently can't do that with JSON objects, right? And I mean right now you don't really need to do it. We use the
1:39:441 hour, 39 minutes, 44 secondssuper simple example, but what if you change this from get to post? Well, now things get a bit more complicated,
1:39:531 hour, 39 minutes, 53 secondsright? Because sure this is as simple as before, but what if you wanted to use
1:40:001 hour, 40 minutesthe JSON variable object? Well, for that we need to do some slight modifications here. We need to register a helper to
1:40:101 hour, 40 minutes, 10 secondsstringify objects. So, I'm going to do handlebars dotregister helper.
1:40:171 hour, 40 minutes, 17 secondsLet's go ahead and add JSON grab the context and immediately return JSON.stringify
1:40:271 hour, 40 minutes, 27 secondscontext null and two. As simple as that. There
1:40:321 hour, 40 minutes, 32 secondswe go. Now, once you've registered that, we can go ahead and go inside of our
1:40:401 hour, 40 minutes, 40 secondsHTTP request step here. Go inside of post, put, and patch. And now for the data body, what we can do is we can
1:40:501 hour, 40 minutes, 50 secondsfirst try and do the following. So, let's do const resolved to be handlebars
1:40:581 hour, 40 minutes, 58 secondsdot compile data. pass in the context like that and then let's do JSON.parse resolved.
1:41:081 hour, 41 minutes, 8 secondsSo this will basically protect us from any invalid JSON being passed. That's why we are doing that. And then instead
1:41:181 hour, 41 minutes, 18 secondsof optionsbody directly being that we can just do this.
1:41:241 hour, 41 minutes, 24 secondsGreat. Uh so yes, let's also do while we
1:41:291 hour, 41 minutes, 29 secondsdo postput patch uh I also think hm uh I wanted to add the body to be
1:41:381 hour, 41 minutes, 38 secondsrequired but I'm not sure if body is yeah I don't think it's a good idea to make body required.
1:41:471 hour, 41 minutes, 47 secondsMaybe we should just treat it like an empty object if it's not passed at all. I'm not sure.
1:41:551 hour, 41 minutes, 55 secondsUh let me just quickly test is JSON.parse let me zoom in here. Can I do JSON parse
1:42:051 hour, 42 minutes, 5 secondson an empty string? I cannot. Okay. So yeah, maybe we should fall back data.body to like an empty object.
1:42:171 hour, 42 minutes, 17 secondsH actually it depends if handlebars can compile an empty string. You know what?
1:42:231 hour, 42 minutes, 23 secondsLet's just try it. So I stop uh guessing things. I'm just going to check what is the proper endpoint URL to test this on.
1:42:331 hour, 42 minutes, 33 secondsLet's check quickly. Uh I think we can just do to-dos
1:42:401 hour, 42 minutes, 40 secondslike that. Change the method to post and just pass something like this. I don't
1:42:471 hour, 42 minutes, 47 secondsthink indentation matters that much, but what does matter is that you don't have like an trailing comma at the end. So
1:42:551 hour, 42 minutes, 55 secondsonly use commas if there's a new line after. And make sure that your key values are encapsulated within a string.
1:43:031 hour, 43 minutes, 3 secondsOtherwise, that's not valid JSON. So we have fu, we have bar, and user ID.
1:43:101 hour, 43 minutes, 10 secondsI think JSON does allow numbers. So this should work. Basically, this should now create a to-do, I think. So, let's go
1:43:191 hour, 43 minutes, 19 secondsahead and call this created dash to-do like so. Uh, oh, great. Our validation works. Created to-do.
1:43:291 hour, 43 minutes, 29 secondsPerfect. Let's click save here. And now we should have one get request and then one post request. Right now, not using
1:43:371 hour, 43 minutes, 37 secondsany variables at all. So, let's just execute workflow. Let's see. Does that work? Uh, looks like it's working. There
1:43:441 hour, 43 minutes, 44 secondswe go. Created to-do has an HTTP response with a body of bar ID 2011 title of FU. Amazing.
1:43:541 hour, 43 minutes, 54 secondsAnd now let's go ahead and let's try reusing something here.
1:43:591 hour, 43 minutes, 59 secondsSo, okay, I can use this. Uh, how about we try user ID dash and then let's use to-do. HTTP response.
1:44:101 hour, 44 minutes, 10 secondsID. So, in the title of the newly created to-do, we're going to use the variable that we pre previously used
1:44:181 hour, 44 minutes, 18 secondshere to fetch the user. So, doesn't make much sense. We should technically use it for this, but I think it will like be more visible if we do this.
1:44:291 hour, 44 minutes, 29 secondsSo, let me go ahead and I'm just going to zoom out a bit so I can click save.
1:44:331 hour, 44 minutes, 33 secondsWe should probably improve that. Let me go ahead and save the project overall.
1:44:381 hour, 44 minutes, 38 secondsYou always have to save it. and then click execute workflow. And let's see if that will maybe be more visible.
1:44:451 hour, 44 minutes, 45 secondsCreated to-do. There we go. Title user ID-1.
1:44:511 hour, 44 minutes, 51 secondsSo it is officially working. We can successfully template both in the endpoint object and in the data.body
1:45:001 hour, 45 minutesobject. Now let me just check what happens if I pass an empty request body and if I click save. So I'm just trying to see what bugs can we encounter here.
1:45:121 hour, 45 minutes, 12 secondsNow this is completely fine to fail but I just want to see why it fails. Okay, I see. Because of unexpected end of JSON
1:45:191 hour, 45 minutes, 19 secondsinput. I see. Um I'm not sure if we should handle this or should the user
1:45:271 hour, 45 minutes, 27 secondshandle this? So should the user know that the request body always needs to be something even just an empty JSON object? because I think that now when
1:45:351 hour, 45 minutes, 35 secondsyou save this and execute it, it's still going to fail, but it should fail for a different reason.
1:45:411 hour, 45 minutes, 41 secondsUh yeah, okay, it didn't fail. It managed to create it. So yeah, uh you can make a decision. Do you want your
1:45:491 hour, 45 minutes, 49 secondsusers to know that they should always add something to the request body when they select a post method even if it's
1:45:561 hour, 45 minutes, 56 secondsjust an empty object or will you detect when body is empty and then maybe change it to this?
1:46:061 hour, 46 minutes, 6 secondsPerhaps if you do this then you kind of save your users the hassle.
1:46:131 hour, 46 minutes, 13 secondsLet's see if I remove this now and click save here. Click save here.
1:46:181 hour, 46 minutes, 18 secondsAnd if I execute it, yeah, I think it will like save your users some headache.
1:46:231 hour, 46 minutes, 23 secondsLet's see. Yeah, now it works. It works exactly the same as before. Perfect. But still we haven't tested one more thing
1:46:321 hour, 46 minutes, 32 secondsand that is the variables, right? So what if I wanted to let's me uh can I
1:46:401 hour, 46 minutes, 40 secondssee some better example this one? What if I wanted to add the entire data object?
1:46:471 hour, 46 minutes, 47 secondsLike I literally wanted to create another to-do with identical HTTP
1:46:531 hour, 46 minutes, 53 secondsresponse here. Now, right now, what we can do is let's see what actually would be the
1:47:011 hour, 47 minutes, 1 secondproper way of doing it. I'm not even sure myself. So I think that what we should be able to
1:47:091 hour, 47 minutes, 9 secondsdo now is pass JSON to do HTTP response data.
1:47:181 hour, 47 minutes, 18 secondsI think this should work now. I'm not 100% sure. Let's see. We registered the
1:47:251 hour, 47 minutes, 25 secondsJSON helper. So basically whatever you've wrote here, you you can name this anything you want. It's a name of the
1:47:331 hour, 47 minutes, 33 secondshelper. So it needs so it's a reserved keyword here. So if I name this JSON 2, I would also have to register JSON 2 in
1:47:411 hour, 47 minutes, 41 secondsthe helper. That's why we called it JSON here. And basically it should be able to just transpile that entire I mean
1:47:491 hour, 47 minutes, 49 secondscompile that entire object and just create two identical to-dos. So the flow
1:47:561 hour, 47 minutes, 56 secondsis now fetch the to-do under ID1 and then create a new to-do with the JSON
1:48:051 hour, 48 minutes, 5 secondsentire JSON object that we fetched from the previous node.
1:48:101 hour, 48 minutes, 10 secondsThat is a pretty reasonable request actually. Let's go ahead and see if that works or do we have to do something else? It looks like it has failed. Let's
1:48:181 hour, 48 minutes, 18 secondssee why. Mhm. expected property name or that in JSON at position 4.
1:48:281 hour, 48 minutes, 28 secondsAll right, I think that we are making some mistake here. I'm just not entirely sure how. Do we maybe need to wrap this inside of curly brackets like this?
1:48:431 hour, 48 minutes, 43 secondsMaybe. I'm not sure.
1:48:471 hour, 48 minutes, 47 secondsLet me try and add some simple indentation. And let me click save because I'm I'm trying to think how does this compiling happen? Does it happen
1:48:561 hour, 48 minutes, 56 secondslike parsing uh looks like not again syntax error.
1:49:021 hour, 49 minutes, 2 secondsOkay. The way I would debug this now is of course by logging, right? I want to
1:49:091 hour, 49 minutes, 9 secondssee what exactly is going on here. So let me go ahead and console log result body
1:49:191 hour, 49 minutes, 19 secondsand this way at least I will be able to see what's happening because that's always kind of the problematic part and I will remove curly brackets. I want to
1:49:281 hour, 49 minutes, 28 secondssee it in a string object, right? I want to see what's going wrong. So I'm going
1:49:361 hour, 49 minutes, 36 secondsto remove curly brackets again and I'm going to remove all whites space too. So I only have this. Let me click save here. Save up there.
1:49:471 hour, 49 minutes, 47 secondsAnd let me click execute workflow. Again, I am expecting this to fail.
1:49:521 hour, 49 minutes, 52 secondsPerfect. We can actually cancel all of the running ones because we know they're not going to succeed. So we don't waste
1:49:581 hour, 49 minutes, 58 secondsany time. And now I'm going to go here and I'm going to take a look at them now.
1:50:051 hour, 50 minutes, 5 secondsOh, that's interesting. Body.
1:50:091 hour, 50 minutes, 9 secondsMhm. So, it managed to do it, but it's completely incorrectly parsing this.
1:50:191 hour, 50 minutes, 19 secondsThat is interesting. H I would assume that we fixed that right here.
1:50:311 hour, 50 minutes, 31 secondsI'm going to have to pause the video just a little bit and research and I will do my best to tell you exactly how I debug this. Uh, of course you can do
1:50:411 hour, 50 minutes, 41 secondsit yourself. You can pause the screen too if you like a challenge. Basically, the issue that's happening right now is we do manage to get the exact body from
1:50:501 hour, 50 minutes, 50 secondsthe variable. But you can see that the quotes are broken, right? These quotes should be actual quotes. So, I'm going to go go ahead and try and resolve this.
1:51:031 hour, 51 minutes, 3 secondsAll right, I think I might have a solution. Uh, unfortunately, not a cool solution. I mean, not a cool way of discovering it. I just asked Chad GPD.
1:51:141 hour, 51 minutes, 14 secondsSo, yeah, not exactly too cool. But let's go ahead and modify this a little bit. I never like this direct returns.
1:51:211 hour, 51 minutes, 21 secondsSo, I'm going to open it like this. And then I'm going to do uh let's go ahead and con stringify
1:51:301 hour, 51 minutes, 30 secondsto be JSON stringify pass in the context null and two and then I'm going to return new handlebars
1:51:381 hour, 51 minutes, 38 secondssave string and I'm going to pass in stringified inside
1:51:451 hour, 51 minutes, 45 secondsactually let me call this const save string like this and finally return safe string I always found these to be more
1:51:541 hour, 51 minutes, 54 secondsreadable. And let's call this JSON string. If I JSON string, there we go.
1:51:591 hour, 51 minutes, 59 secondsJSON string and save string. And finally return safe string. So I described the problem to claude and it uh told me to
1:52:091 hour, 52 minutes, 9 secondstry this. So I'm going to go ahead and execute this again with no code changes.
1:52:141 hour, 52 minutes, 14 secondsI mean with no changes. And looks like that actually fixed it. Amazing. That's really cool. So let's see.
1:52:221 hour, 52 minutes, 22 secondsuh created to-do has completed of false ID of 2011 title this one user ID this
1:52:311 hour, 52 minutes, 31 secondsone and our previously fetched to-do is identical except ID which makes sense we
1:52:391 hour, 52 minutes, 39 secondscannot force the ID I think this is a public API right so that makes sense that the ID wasn't honored that's
1:52:461 hour, 52 minutes, 46 secondsperfectly fine amazing I think that we successfully complete ated uh templating
1:52:531 hour, 52 minutes, 53 secondsright now and it wasn't even that complicated right we had a little hiccup here but thanks to claude code it was
1:53:011 hour, 53 minutes, 1 secondvery easily fixed this is the type of thing that I really like having the help of chat GPT and claude uh because you
1:53:081 hour, 53 minutes, 8 secondsknow it's really really the same as googling around I could have just read the documentation obviously but it literally took like 5 seconds with
1:53:161 hour, 53 minutes, 16 secondsclaude excellent now that we have this you for yourself can decide you know how
1:53:241 hour, 53 minutes, 24 secondsdeep do you want to go in this because technically you could allow your users to do the same for variable main right
1:53:321 hour, 53 minutes, 32 secondsyou could change this to be to-do and then use
1:53:401 hour, 53 minutes, 40 secondsuh what would it be to-do dot HTTP response data user id right or like user
1:53:471 hour, 53 minutes, 47 secondsthis change this to get and this will be users and then the exact same card code as up here, right?
1:53:581 hour, 53 minutes, 58 secondsIf you want to allow your users to have dynamic variable names, but yeah, you can see that then this
1:54:061 hour, 54 minutes, 6 secondsdirectly conflicts our regex rules. But obviously you could modify that if you really really wanted to, right? You
1:54:151 hour, 54 minutes, 15 secondswould just have to make a more loose reg. And then before you assign the data variable name, you would kind of create
1:54:231 hour, 54 minutes, 23 secondssome compile variable name handlebars compile. You would pass in data variable
1:54:321 hour, 54 minutes, 32 secondsname and you would pass in the context and then the compile variable name would be used here. That's if you want to do
1:54:401 hour, 54 minutes, 40 secondsthat. I personally will make the variables as safe as possible. Again,
1:54:471 hour, 54 minutes, 47 secondsthis is also if you want to fall back to an empty object or not.
1:54:511 hour, 54 minutes, 51 secondsUh, great. So, we are halfway. I mean, more than halfway. Just like one more thing left for us to be able to go to
1:54:591 hour, 54 minutes, 59 secondsother nodes. The reason I'm not building any other nodes now is because I want to make this HTTP request an example where
1:55:081 hour, 55 minutes, 8 secondswe have everything. And then when we need to create new nodes, I can just refer to HTTP request node where everything works. Everything is
1:55:161 hour, 55 minutes, 16 secondsfinished. So I don't have many bugs nor any other things. So that's why it's taking me so long to complete this node
1:55:241 hour, 55 minutes, 24 secondsis because I want to make sure it literally has everything and because it's a simple example, but again complex enough that it allows us to do templating and all those other things.
1:55:341 hour, 55 minutes, 34 secondsAnd I think this templating thing is actually the most crucial part of a useful workflow project, right? Because
1:55:411 hour, 55 minutes, 41 secondsif this wasn't possible, it really wouldn't be that cool. I think you will agree with me on that. And I believe
1:55:491 hour, 55 minutes, 49 secondsthat is all we wanted to do. We now allow dynamic body and we allow dynamic endpoint. We can do individual strings
1:55:561 hour, 55 minutes, 56 secondsor we can do JSON uh objects. I will, of course, test this a few more times just in case I've missed out something big
1:56:051 hour, 56 minutes, 5 secondsand maybe you've noticed it and you're wondering if I'm going to fix it. I promise I will test this out until the next chapter. So, in the next chapter,
1:56:131 hour, 56 minutes, 13 secondsif I notice something, I will uh show you how to fix it, if I find it. But I think it's working pretty well. I think it might be perfect as it is. Awesome.
1:56:231 hour, 56 minutes, 23 secondsLet's go ahead and push this to GitHub.
1:56:241 hour, 56 minutes, 24 secondsAnd let's go ahead and just quickly hear what uh code rabbit thinks about this because I am quite interested. So I'm
1:56:321 hour, 56 minutes, 32 secondsgoing to be 20 uh node templating I believe is the branch name. I'm going to
1:56:391 hour, 56 minutes, 39 secondsgo ahead and just stage all of these files. Not too many changes. 20 node templating. I'm going to commit and I'm going to publish the branch.
1:56:501 hour, 56 minutes, 50 secondsOnce the branch has been published, let's go ahead and open a pull request here.
1:57:001 hour, 57 minutesAnd let's wait for the review.
1:57:051 hour, 57 minutes, 5 secondsAnd here we have the summary by code rabbit. New features. We added template support for HTTP request endpoints and
1:57:131 hour, 57 minutes, 13 secondsrequest body content, enabling dynamic value substitution. Improvements. We enhanced HTTP request validation with
1:57:211 hour, 57 minutes, 21 secondsmore descriptive error messages. We improved response handling consistency for HTTP request execution.
1:57:301 hour, 57 minutes, 30 secondsIn here we have a sequence diagram. But I think it is pretty clear how it works. So we execute HTTP request with context.
1:57:401 hour, 57 minutes, 40 secondsThe context is basically what is assigned from the previous node. That's why I explained that for the first HTTP
1:57:481 hour, 57 minutes, 48 secondsrequest there will be no context but for the second one there will be context which is the result of the previous node
1:57:561 hour, 57 minutes, 56 secondsstored in the variable that we defined and basically we then use that context to compile the end point endpoint
1:58:051 hour, 58 minutes, 5 secondstemplate or to compile the body. So, one of those or both and then we send the
1:58:121 hour, 58 minutes, 12 secondsHTTP request with those newly generated body and endpoint variables and we
1:58:191 hour, 58 minutes, 19 secondsreturn some response and then that response again gets attached to the context. So if we had a third node,
1:58:271 hour, 58 minutes, 27 secondsright, if I go ahead and add a third HTTP request, whoops, and connect it
1:58:341 hour, 58 minutes, 34 secondsright here, then this one would have access to both the response of created to-do variable and of the initial to-do
1:58:431 hour, 58 minutes, 43 secondsand it could do anything in once with that.
1:58:481 hour, 58 minutes, 48 secondsAwesome. So let's go ahead and take a look at the comments here. So the comments are mostly to safely handle the
1:58:571 hour, 58 minutes, 57 secondsJSON parsing and to throw new errors if JSON serialization
1:59:041 hour, 59 minutes, 4 secondsfails. So yes, we could do that inside of the register helper. Instead of just
1:59:121 hour, 59 minutes, 12 secondsdoing it like this, we wrap it instead of try and catch. So we control exactly what error is being thrown. I mean it
1:59:211 hour, 59 minutes, 21 secondswill still behave [clears throat] exactly the same right now. It would just be a little bit out out of our control where the error is being thrown.
1:59:301 hour, 59 minutes, 30 secondsSame thing goes for compiling the endpoint. Right? Actually this is something different. So in here once we
1:59:401 hour, 59 minutes, 40 secondstemplate the endpoint it suggests actually checking if that endpoint still
1:59:461 hour, 59 minutes, 46 secondsis a valid endpoint after we compiled it through handlebars because yes probably
1:59:541 hour, 59 minutes, 54 secondssome very smart user could maybe abuse the handlebars compile method if they know how it works and if they watch this
2:00:012 hours, 1 secondvideo and they know that we use it. So yes, this is some penetration protection that you could be aware of, right?
2:00:102 hours, 10 secondsBasically, after you verify your after you compile your endpoint with the variable, you should still check does it
2:00:182 hours, 18 secondsexist? Is it a type of string? And is it still an endpoint you can call? So very
2:00:252 hours, 25 secondsgood catch by code rabbit here. But I am satisfied with this as is for tutorial purposes. So, I will merge this
2:00:342 hours, 34 secondstutorial. My apologies. I will merge this branch. I'm going to go back to the main branch and I will hit synchronize
2:00:412 hours, 41 secondschanges. Once I hit synchronize changes, I always like to open my source control, click on the graph, and just cons
2:00:492 hours, 49 secondsconvince myself that it has been merged right here. Amazing. I believe that marks the end of this chapter. And in
2:00:582 hours, 58 secondsthe next chapter, we're going to be doing the last thing in regards to this HTTP request node, which will be real
2:01:052 hours, 1 minute, 5 secondstime feedback. And once we do that, we will be able to reuse that code and create a bunch of other nodes like Open
2:01:122 hours, 1 minute, 12 secondsAI request, Antropic, Gemini request, and then some submissions, I mean some triggers like web hook trigger, Google
2:01:202 hours, 1 minute, 20 secondsform trigger, stripe trigger and similar. And very soon you will realize there is no limit to how many nodes we can create. It will all depend on the ones that you want. Amazing amazing job.
2:01:322 hours, 1 minute, 32 secondsAnd see you in the next chapter.
2:01:352 hours, 1 minute, 35 secondsIn this chapter, we're going to make our nodes real time. Basically, what that means is that we're going to emit a
Chapter 5: 21 Node Realtime
2:01:442 hours, 1 minute, 44 secondsproper status for each of our nodes so that the end user sees exactly what's
2:01:512 hours, 1 minute, 51 secondshappening with the workflow. Those will include loading error and success states. We're going to achieve this by
2:01:592 hours, 1 minute, 59 secondsusing inest realtime package. I would highly suggest that you find the inest realtime documentation page. The reason
2:02:082 hours, 2 minutes, 8 secondsfor that is real time at the time of me making this tutorial is currently in developer preview. So what does that
2:02:162 hours, 2 minutes, 16 secondsmean? It basically means that the feature is widely available for all indust accounts but depending on the
2:02:252 hours, 2 minutes, 25 secondsuser feedback some APIs and SDKs might change in the future. So that is why I
2:02:322 hours, 2 minutes, 32 secondssuggest that you also visit this website simply so you see which version you will be working with uh and so you see if any
2:02:412 hours, 2 minutes, 41 secondsinstructions here have changed since me making this tutorial. But as always, I
2:02:482 hours, 2 minutes, 48 secondswill show you exactly the version I am working with. So let's go ahead and do npm install in justest real time. I'm
2:02:582 hours, 2 minutes, 58 secondsgoing to go here the same place I installed handlebars and let's add at ingest slashre time. I
2:03:062 hours, 3 minutes, 6 secondsam immediately going to go inside of my package JSON so that those of you who want to follow the exact same thing will
2:03:132 hours, 3 minutes, 13 secondsbe able to do so. As you can see, I'm using a version 0.4.4.
2:03:192 hours, 3 minutes, 19 secondsJust as a reminder, let me show you the rest of my versions. My inest is 3.44.1.
2:03:272 hours, 3 minutes, 27 secondsMy inest CLI is 1.12.1.
2:03:312 hours, 3 minutes, 31 secondsWe are yet to see if these will work compatibly. Sometimes a newer version of Realtime can cause some problems and
2:03:402 hours, 3 minutes, 40 secondsvice versa. So, you have to match the versions. But we're going to go by through this step by step and we are
2:03:462 hours, 3 minutes, 46 secondsgoing to make sure to fix any instances like that if they even happen. So just make sure you have installed in just
2:03:542 hours, 3 minutes, 54 secondsreal time. Now what we're going to do is we are going to go back inside of our source
2:04:022 hours, 4 minutes, 2 secondsand let's set of our uh inest folder client.ds.
2:04:082 hours, 4 minutes, 8 secondsAnd now what we have to do here is besides defining the ID which is nodebase let's also add a middleware and
2:04:172 hours, 4 minutes, 17 secondsthis middleware will be an array and it will accept a real time middleware like this. You can import realtime middleware
2:04:262 hours, 4 minutes, 26 secondsfrom our newly added package. Just make sure to go forward/m middleware in the import right here.
2:04:352 hours, 4 minutes, 35 secondsPerfect.
2:04:362 hours, 4 minutes, 36 secondsNow that we have added that, let's go ahead and let's define our first channel. So inside of the ingest folder, I'm going to create a new folder called
2:04:452 hours, 4 minutes, 45 secondschannels. And inside of here, I'm going to create a new file, http request.ts.
2:04:542 hours, 4 minutes, 54 secondsThen I'm going to go ahead and import channel and topic from inest real time.
2:04:592 hours, 4 minutes, 59 secondsAnd finally, I'm going to export const HTTP request channel.
2:05:062 hours, 5 minutes, 6 secondsWe're going to call our channel import.
2:05:092 hours, 5 minutes, 9 secondsAnd we're going to name this HTTP request execution. And then I'm going to chain add topic.
2:05:192 hours, 5 minutes, 19 secondsLet me go ahead and expand this just a bit more. Or maybe not. But this is how it looks like. You can also chain it down like this, however you prefer.
2:05:312 hours, 5 minutes, 31 secondsInstead of add topic, let's go ahead and call topic like this. And the topic will be called status. Let's go ahead and
2:05:402 hours, 5 minutes, 40 secondsdefine the type of that topic. So each status will have a node ID which it is
2:05:482 hours, 5 minutes, 48 secondsreferring to which will be a type of string and status which can be loading success or error like this.
2:06:012 hours, 6 minutes, 1 secondAnd let's go ahead and execute this and add a comma. There we go. That is our first request channel. Now, of course,
2:06:102 hours, 6 minutes, 10 secondsthere are a lot of magic strings going on around here, and we can surely reuse some of the eniums and node types that
2:06:192 hours, 6 minutes, 19 secondswe have all over. For example, let me go ahead and find some status. Node status
2:06:252 hours, 6 minutes, 25 secondsindicator has a type node status, loading, success, error, and initial.
2:06:322 hours, 6 minutes, 32 secondsSo, yes, not exactly the same. Uh, I will see if there is a way to reuse some of these later, but for now, just be
2:06:392 hours, 6 minutes, 39 secondscareful that she didn't misspell any of these.
2:06:432 hours, 6 minutes, 43 secondsNow that we have the HTTP request channel, uh, we have to go back inside
2:06:502 hours, 6 minutes, 50 secondsof our inest folder functions.ts and inside of here, go inside of the top where you call the create function here.
2:07:002 hours, 7 minutesAnd after you name your event, go ahead and add channels.
2:07:082 hours, 7 minutes, 8 secondsAnd in the channels, go ahead and add HTTP request channel and execute it like this. Make sure to import it from our newly created folder.
2:07:202 hours, 7 minutes, 20 secondsAnd now once you add the channels here and if you've correctly added the
2:07:262 hours, 7 minutes, 26 secondsmiddleware here another prop should appear besides event and step and that
2:07:342 hours, 7 minutes, 34 secondsis publish. So you can see that right now there is no error if I try to do this. But if I go ahead and comment this out you can see that I immediately get
2:07:422 hours, 7 minutes, 42 secondsan error here. So make sure that you have the middleware here. save the file and then you should be able to destructure publish from here. If it is
2:07:512 hours, 7 minutes, 51 secondsstill not working, you can always restart Visual Studio Code or you can restart TypeScript server individually
2:07:582 hours, 7 minutes, 58 secondswhich should make it work. Then now that we have the publish method, what we can
2:08:052 hours, 8 minutes, 5 secondsdo is we can pass it to each of our executor here. So context await executor
2:08:122 hours, 8 minutes, 12 secondswhich accepts the data node ID context and step which will now also have publish. Now obviously we have an error
2:08:202 hours, 8 minutes, 20 secondsfor this because executors are currently not made for that. So I'm going to go ahead inside of get executor here and
2:08:282 hours, 8 minutes, 28 secondsI'm going to go inside of HTTP request exeutor right here. And besides having step we will now also have publish.
2:08:382 hours, 8 minutes, 38 secondsLet's go ahead and fix this error here by going inside of node executor right here. And here we have our publish to do
2:08:482 hours, 8 minutes, 48 secondsadd real time later. So we can now finally do that. So I'm going to go ahead and comment this out. Publish will
2:08:562 hours, 8 minutes, 56 secondsbe a type of real time which you can import from inest realtime dotpublish function
2:09:042 hours, 9 minutes, 4 secondslike this. And you can import real time as a type.
2:09:102 hours, 9 minutes, 10 secondsUh now in here uh we have an error and I think I know exactly why. Yes, it is because record string unknown is missing
2:09:172 hours, 9 minutes, 17 secondsthe following properties. Yes, in the previous chapter we modified these to be required because that's how we expect them to be.
2:09:282 hours, 9 minutes, 28 secondsBut then our node executor here this doesn't match that requirement. So
2:09:372 hours, 9 minutes, 37 secondsokay uh at least we are aware of it. I'm going to go ahead and add to-do fix types. I will see how to improve that
2:09:442 hours, 9 minutes, 44 secondsbecause yes even though this makes sense to be expected perhaps we should make all of them optional and then simply do a runtime validation here.
2:09:562 hours, 9 minutes, 56 secondsI'm going to see what is the best solution for that for now. Yes, to do fix types because we do have a problem
2:10:032 hours, 10 minutes, 3 secondshere. But now inside of here, HTTP request executor, you should have access to the publish function because we
2:10:112 hours, 10 minutes, 11 secondsdefined it right here. Let me show you where this is. I don't think I showed you that. So instead of source features
2:10:192 hours, 10 minutes, 19 secondsexecutions types.ts, DS in here you should have node executor params which now has publish. Previously this was
2:10:282 hours, 10 minutes, 28 secondscommented out. So let me go ahead and quickly just show you everything we've added so far. We added the inest realtime package. After that we went
2:10:372 hours, 10 minutes, 37 secondsinto client.ts and we imported the realtime middleware and added it to our ingest instance.
2:10:452 hours, 10 minutes, 45 secondsAfter we did that, we created the HTTP request channel with node ID and status
2:10:532 hours, 10 minutes, 53 secondsloading success and error. After we added that, we went into functions.ts of source inest and we simply added that
2:11:022 hours, 11 minutes, 2 secondsnew channel in the array channels in the same object where event is defined.
2:11:082 hours, 11 minutes, 8 secondsAfter that, we were able to extract a new field publish here and we simply pass it along to our executor function.
2:11:162 hours, 11 minutes, 16 secondsThe way we fixed the error for the executor function is by going instead of types instead of source features
2:11:232 hours, 11 minutes, 23 secondsexecutions. And in here we found node exeutor params interface and we simply
2:11:292 hours, 11 minutes, 29 secondscommented out our to-do to add real time later because we are doing it right now and we simply gave it a type of realtime.publish. publish function.
2:11:402 hours, 11 minutes, 40 secondsPerfect. And finally in the executor itself, we were able to then destructure the publish because now it is properly
2:11:482 hours, 11 minutes, 48 secondsproperly typed and it is available in here. So let's go ahead and remove this to-do right here and let's actually do
2:11:562 hours, 11 minutes, 56 secondsit. Await publish. And let me go ahead and switch to the actual code. There we go. Await publish. So we are calling
2:12:042 hours, 12 minutes, 4 secondsthis method right here. Make sure to await it and call HTTP request
2:12:112 hours, 12 minutes, 11 secondsuh not this HTTP request channel like this. So make sure to import it from
2:12:172 hours, 12 minutes, 17 secondsinest channels HTTP request and go ahead and execute it and call status node ID and status of loading.
2:12:302 hours, 12 minutes, 30 secondsLet's go ahead and just fix this again.
2:12:332 hours, 12 minutes, 33 secondsAnd I think I made something with my imports. Yes, this happens often actually. Let me try again.
2:12:412 hours, 12 minutes, 41 secondshttp request channel.
2:12:462 hours, 12 minutes, 46 secondsMake sure that you imported it from here.
2:12:492 hours, 12 minutes, 49 secondsAnd then let's go ahead and do dot status. My apologies. Executed dot status node ID. This is basically doing
2:12:582 hours, 12 minutes, 58 secondsthis, right? But since the prop is named the same as the key, we can use a shorthand operator and pass in the status to be loading.
2:13:082 hours, 13 minutes, 8 secondsThere we go. So now we are successfully emitting that this node is loading. And
2:13:172 hours, 13 minutes, 17 secondsnow we have to throw errors when it fails. So for example, right here, let's go ahead and give it an error like this.
2:13:282 hours, 13 minutes, 28 secondsThen we can copy this and do the same thing here.
2:13:332 hours, 13 minutes, 33 secondsSame thing here. Perfect. So when should we throw the success? Right here before
2:13:402 hours, 13 minutes, 40 secondswe return the result. So let's go ahead and simply emit the status success. Whoops. Success.
2:13:492 hours, 13 minutes, 49 secondsThere is uh potentially a room to reduce the amount of code that we are writing by maybe wrapping this entire thing
2:13:582 hours, 13 minutes, 58 secondsinstead of try and catch and then if these errors get thrown we could simply emit this which is pretty much the exact same you know line of code everywhere.
2:14:082 hours, 14 minutes, 8 secondsUh but I do have to uh verify that that's what will happen because this is an inest specific error. So, I'm not
2:14:162 hours, 14 minutes, 16 secondssure exactly what happens here, but if you've noticed that we could probably reuse this code. Um, you're probably
2:14:242 hours, 14 minutes, 24 secondsright. There probably is a way to make this better. But let's just be super explicit with our states right now
2:14:322 hours, 14 minutes, 32 secondssimply so we know exactly what we're doing and exactly what's happening with our code. So, so far you shouldn't have
2:14:402 hours, 14 minutes, 40 secondserrors [clears throat] uh anywhere except in the executor registry. uh and the error should not be happening at all because of our new
2:14:482 hours, 14 minutes, 48 secondsrealtime function instead because variable name, endpoint and method are no longer optional. So our executor
2:14:562 hours, 14 minutes, 56 secondsregistry is confused because that does not match the t data type which we gave it right here. Uh one fix could be maybe
2:15:062 hours, 15 minutes, 6 secondsgiving each of these their own type. H we will see we will see. But there is uh
2:15:142 hours, 15 minutes, 14 secondsa way to fix this in a nice way. I will try my hardest to do that. Perfect. Now that we have that uh these statuses are
2:15:232 hours, 15 minutes, 23 secondsbeing emitted and I think that we can even try it out immediately. So make sure you have all of your apps running.
2:15:292 hours, 15 minutes, 29 secondsI would recommend restarting your inest server and maybe even your Nex.js app simply because you just added a new
2:15:352 hours, 15 minutes, 35 secondspackage. So maybe some cache is happening or something. Make sure you have both your ines development server
2:15:432 hours, 15 minutes, 43 secondson and one of your workflows and go ahead and click execute workflow. So there we go. This is what you should be
2:15:512 hours, 15 minutes, 51 secondsseeing. Uh when we first what we do is we prepare the workflow. This is basically we do a topological sort.
2:15:592 hours, 15 minutes, 59 secondsAfter that we call manual trigger. Now nothing is happening here but it will be happening later once we add the channel
2:16:072 hours, 16 minutes, 7 secondsfor manual trigger so that we can also emit the loading and success state for the manual trigger. But you can see that
2:16:152 hours, 16 minutes, 15 secondswe have this. Let me try and expand. Uh I'm not sure how I can expand this. Maybe if I hover over it. There we go.
2:16:232 hours, 16 minutes, 23 secondsPublish HTTP request execution. So we are successfully uh publishing some events, right? So you
2:16:322 hours, 16 minutes, 32 secondsshould be seeing these success events and these loading events right here. I mean you can't really see which one is which, but you should now be seeing this
2:16:402 hours, 16 minutes, 40 secondspublish things. Now here's an important note. If for whatever reason you found this uh complicated or maybe the
2:16:492 hours, 16 minutes, 49 secondsrealtime package has changed significantly for you, just know that this is simply uh a cool addition to our
2:16:572 hours, 16 minutes, 57 secondsN8N clone. uh it doesn't change the functionality itself, right? So if you got it working, you will be able to
2:17:052 hours, 17 minutes, 5 secondscontinue the entire tutorial even without real time. I just wanted to let you know that because this is a developer preview. So in case it
2:17:142 hours, 17 minutes, 14 secondsdrastically changes and you just can't work your way around it, don't worry.
2:17:192 hours, 17 minutes, 19 secondsYou can just go to the next chapter. But I would suggest you know still uh going through this chapter just in case I do
2:17:262 hours, 17 minutes, 26 secondssome other things here. Perfect. So now we have to find a way to emit that status to our editor right here. And the
2:17:362 hours, 17 minutes, 36 secondsway we are going to do that is by implementing a hook. So let's go inside of source features executions. And in
2:17:432 hours, 17 minutes, 43 secondshere I'm going to create hooks folder and I'm going to add use node status.ts.
2:17:532 hours, 17 minutes, 53 secondsI'm going to import type real time from inest real time.
2:18:002 hours, 18 minutesI'm going to import use inest subscription from inest realtime hooks.
2:18:072 hours, 18 minutes, 7 secondsI'm going to import use effect and use state. And I'm going to borrow node status uh from components. And I
2:18:162 hours, 18 minutes, 16 secondsthink we call this react flow node status indicator. So you should have this component. It's basically the one
2:18:252 hours, 18 minutes, 25 secondswhere we added node status with loading success, error or initial.
2:18:302 hours, 18 minutes, 30 secondsPerfect. Now let's go ahead and let's create the interface for this hook. So interface use node status options will
2:18:382 hours, 18 minutes, 38 secondsaccept a required node ID, channel and topic as well as a refresh token method which basically returns a promise with a
2:18:472 hours, 18 minutes, 47 secondstoken from realtime.subscribe token inside. Let's go ahead and do
2:18:532 hours, 18 minutes, 53 secondsexport function use node status and let me go ahead and open it properly.
2:19:042 hours, 19 minutes, 4 secondsLet me fix the typo.
2:19:072 hours, 19 minutes, 7 secondsLet's go ahead and grab node ID, channel, topic, and refresh token. And let's bind use node status option type.
2:19:172 hours, 19 minutes, 17 secondsPerfect. Now in here, let's start by defining the status state. So status set
2:19:242 hours, 19 minutes, 24 secondsstatus is a use state. We are using the type node status with the initial value of initial. Perfect. Let's go ahead and
2:19:332 hours, 19 minutes, 33 secondsget the data by using use inest subscription.
2:19:392 hours, 19 minutes, 39 secondsPass in the refresh token and enable to true.
2:19:452 hours, 19 minutes, 45 secondsAnd now let's create a use effect that is going to listen to messages coming from our ingest subscription. and we're
2:19:542 hours, 19 minutes, 54 secondsspecifically going to be looking for the newest one with our channel, our topic, our node ID, and our status. So, I'm
2:20:042 hours, 20 minutes, 4 secondsgoing to go ahead and first check if there is no data.length or in other words, if there is no data
2:20:112 hours, 20 minutes, 11 secondscoming from that use inest subscription hook above, let's just break the method.
2:20:172 hours, 20 minutes, 17 secondsThere is nothing for us to do in this use effect. Otherwise, we have to find the latest message for this node.
2:20:262 hours, 20 minutes, 26 secondsNow, I'm sure there are a bunch of ways you can do that, but this is the way I manage to do it very consistently and safely for my project. You are of course
2:20:352 hours, 20 minutes, 35 secondsfree to tinker with this if you feel like it can be done in a simpler way.
2:20:402 hours, 20 minutes, 40 secondsSo, latest message is going to be data.filter.
2:20:482 hours, 20 minutes, 48 secondsLet's go ahead and get that message.
2:20:502 hours, 20 minutes, 50 secondsNow in here I'm first going to do if message.kind is a type of data
2:20:562 hours, 20 minutes, 56 secondsand if message dot channel is exactly the same as our channel which we define when we call this hook.
2:21:072 hours, 21 minutes, 7 secondsIf message topic is exactly the same as our topic. if message dod data do node
2:21:142 hours, 21 minutes, 14 secondsid is same as our node ID. This way we know exactly what this event is
2:21:212 hours, 21 minutes, 21 secondsreferring to for exactly what node. And once we find that we have to sort it by latest. So let's go ahead and sort by a and b values here.
2:21:322 hours, 21 minutes, 32 secondsAnd let's quickly check if a do.ind is equal to data and b do.kind kind is
2:21:412 hours, 21 minutes, 41 secondsequal to data. Let's go ahead and return new date b.created at do.get time
2:21:512 hours, 21 minutes, 51 secondsminus new date a do.created created atget time like this
2:22:012 hours, 22 minutes, 1 secondand uh let me just see so this uh we should not have a comma here I believe and return
2:22:102 hours, 22 minutes, 10 secondsuh my apologies outside of the if clause just return zero like this and then this will basically
2:22:182 hours, 22 minutes, 18 secondsbe an array which should only have one item inside we can immediately access it
2:22:252 hours, 22 minutes, 25 secondslike this. The first index in this latest message array.
2:22:332 hours, 22 minutes, 33 secondsPerfect. And now let's do a final check here. So if latest message question mark
2:22:412 hours, 22 minutes, 41 secondsdot kind is equal to data set status latest message dot data dot status as a
2:22:512 hours, 22 minutes, 51 secondsnode status. So yes not too happy about having to cast this but data can
2:22:582 hours, 22 minutes, 58 secondsliterally be anything. So that's why it's important that you make sure you don't misspell it because you can type this. My apologies. I think you can try
2:23:062 hours, 23 minutes, 6 secondsthis and it's not going to give you any errors. So just be careful with typing these things. Same goes for data node ID
2:23:152 hours, 23 minutes, 15 secondshere. Make sure you are not misspelling that.
2:23:192 hours, 23 minutes, 19 secondsAnd then let's go ahead and add some dependency arrays here. So data no whoops data
2:23:272 hours, 23 minutes, 27 secondsnode ID channel and topic. And perhaps it would be better let me see. Do I ever use data?
2:23:352 hours, 23 minutes, 35 secondsUh well yes I use data in here entirely so I think I have to pass it right here and let's return the final status here.
2:23:422 hours, 23 minutes, 42 secondsThat's it. That is our use note status hook.
2:23:482 hours, 23 minutes, 48 secondsOnce we have defined this hook we have to go ahead and use it. But just before
2:23:542 hours, 23 minutes, 54 secondswe can use it we have to create our refresh token method. There are many
2:24:012 hours, 24 minutes, 1 secondways we can do this but the quickest way of doing this is by using server actions.
2:24:072 hours, 24 minutes, 7 secondsSo inside of executions components http request I'm going to go ahead and create
2:24:142 hours, 24 minutes, 14 secondsthe actions.ts file.
2:24:192 hours, 24 minutes, 19 secondsInside of it I'm going to go ahead and mark this as use server.
2:24:252 hours, 24 minutes, 25 secondsAnd then I'm going to add a couple of imports. I'm going to import get subscription token and type real time
2:24:332 hours, 24 minutes, 33 secondsfrom ingest real time. I'm going to import our HTTP request channel from
2:24:392 hours, 24 minutes, 39 secondsingest channels HTTP request. And finally, I'm going to import ingest from our ingest folder client where we
2:24:482 hours, 24 minutes, 48 secondsrecently just added the middleware. So, make sure you have all three. Then, let's define the type. Type HTTP request
2:24:552 hours, 24 minutes, 55 secondstoken will be realtime dot token open pointy brackets and inside define two
2:25:022 hours, 25 minutes, 2 secondsthings type of HTTP request channel and an array with a string status inside.
2:25:102 hours, 25 minutes, 10 secondsLet's export async function fetch HTTP request realtime
2:25:192 hours, 25 minutes, 19 secondstoken and return a promise HTTP request token.
2:25:272 hours, 25 minutes, 27 secondsDefine the token await get subscription token. Pass in inest.
2:25:332 hours, 25 minutes, 33 secondsDefine the channel to be HTTP request channel. Make sure it's an executed function and topics to listen to will be
2:25:412 hours, 25 minutes, 41 secondsstatus and return the token.
2:25:462 hours, 25 minutes, 46 secondsAnd if you've done it properly, there shouldn't be any type errors here. Let me go ahead and just quickly zoom out so you can see how it looks like without any collapsing lines.
2:25:572 hours, 25 minutes, 57 secondsPerfect. Now that we have that action defined, let's go ahead inside of HTTP request node.tsx. tsx
2:26:072 hours, 26 minutes, 7 secondsand in here I'm going to finally change this node status. So I don't know if you remember but if you manually change this
2:26:142 hours, 26 minutes, 14 secondsnode status to loading you will see that both nodes magically become loading. If you change to success they will become
2:26:212 hours, 26 minutes, 21 secondssuccess. So now we're going to actually make it make it listen to the event. So let's go ahead and call use node status
2:26:302 hours, 26 minutes, 30 secondshere from our dot dot slot do/hooks use node status.
2:26:392 hours, 26 minutes, 39 secondsUh okay. Yes, it's a reusable one across all executions. That's why it is all the
2:26:452 hours, 26 minutes, 45 secondsway up there. Perfect. And once we have it here, let's go ahead and give it node
2:26:522 hours, 26 minutes, 52 secondsID of props do ID channel. And now this is where it gets kind of tricky. So this
2:26:582 hours, 26 minutes, 58 secondsis the part I don't like. HTTP request execution. And you need to be super
2:27:052 hours, 27 minutes, 5 secondscareful that you didn't accidentally let me find the channel that you didn't accidentally misspell it. So it would be
2:27:142 hours, 27 minutes, 14 secondsa better idea to copy from HTTP request channel and just paste it here. I think there is potential to fix this.
2:27:232 hours, 27 minutes, 23 secondsI think technically we could call HTTP request channel itself and then execute it and then call name.
2:27:322 hours, 27 minutes, 32 secondsI think this should work. I'm not 100% sure. Let's try it like this. I actually haven't done this at my with my initial
2:27:402 hours, 27 minutes, 40 secondssource code, but looks like a very interesting solution. I'm not sure about what really happens when you execute it and can you just execute it like that?
2:27:492 hours, 27 minutes, 49 secondsI'm not sure. But let's go ahead and focus on topic status and let's add the refresh token. Fetch
2:27:582 hours, 27 minutes, 58 secondsHTTP request realtime token. Do not execute it. It's a promise.
2:28:042 hours, 28 minutes, 4 secondsSo let's try it out. Oh yes. Yes. I think this should be enough. Let's refresh for good luck. Let me collapse
2:28:132 hours, 28 minutes, 13 secondsthe sidebar and let's click execute workflow. And now loading. Success.
2:28:192 hours, 28 minutes, 19 secondsloading success. Absolutely amazing job.
2:28:242 hours, 28 minutes, 24 secondsAmazing. Amazing job. Again, if for whatever reason uh you were not able to complete this, do not worry. This is not crucial to completing this tutorial.
2:28:342 hours, 28 minutes, 34 secondsIt's obviously a super cool effect, but it does not really change whether you will be able or not finish this
2:28:402 hours, 28 minutes, 40 secondstutorial. Looks like this is working as well, which is honestly a better solution than to just, you know, copy
2:28:482 hours, 28 minutes, 48 secondsthis and paste it here. And always be super careful that you did it correctly.
2:28:552 hours, 28 minutes, 55 secondsAnother alternative might be to simply use a constant we define here and then import it here. So because I'm just not
2:29:042 hours, 29 minutes, 4 secondssure about implications of executing this like that. I'm not sure what it does.
2:29:122 hours, 29 minutes, 12 secondsNot not too sure. Okay. Uh inside of HTTP request token. Yeah. For example,
2:29:192 hours, 29 minutes, 19 secondswe executed here. So that's why I have a feeling that it can fail. Maybe.
2:29:282 hours, 29 minutes, 28 secondsYeah, I'm not too confident with this. I think that I will resort to using a string simply because this is this is
2:29:362 hours, 29 minutes, 36 secondswhat I did in my initial source code, right? So, I just want to stay consistent to what I know works 100%.
2:29:452 hours, 29 minutes, 45 secondsAnd then later we can change this by fixing all the weird magic strings that
2:29:512 hours, 29 minutes, 51 secondswe have around. So now what I'm going to do is I'm going to purposely make this an invalid JSON like this and click
2:30:002 hours, 30 minutessave. Save this entire thing and let's see a node fail. So execute workflow
2:30:082 hours, 30 minutes, 8 secondsloading success loading and yes it will actually take a while for this to fail.
2:30:152 hours, 30 minutes, 15 secondsIt's obvious that it's failing right we know that but this will have I think three attempts
2:30:242 hours, 30 minutes, 24 secondsbefore it reaches its actual failure status. So if you want to speed that up,
2:30:312 hours, 30 minutes, 31 secondsI think that you can go inside of ingest functions. DS and find this individual
2:30:402 hours, 30 minutes, 40 secondscreate function and in this first object where you define the ID. I think that you can also add retries zero.
2:30:522 hours, 30 minutes, 52 secondsNow, I would highly suggest that you add a little comment here to do change for production
2:31:002 hours, 31 minutes[clears throat] or maybe remove in production simply because yeah, it's a shame to fail immediately. Fetch
2:31:082 hours, 31 minutes, 8 secondsrequests can fail. That's normal. Since I'm already at two requests, I'm just going to wait it out. Now,
2:31:162 hours, 31 minutes, 16 secondswe could actually have a bug here, but I I can see the finalization happened, but
2:31:232 hours, 31 minutes, 23 secondsthis never actually throws the error. I think that's because we forgot to do it.
2:31:292 hours, 31 minutes, 29 secondsSo, let's go ahead go back inside of features executions components HTTP request executor.ts.
2:31:372 hours, 31 minutes, 37 secondsYes, there is definitely a bug here. So, this entire step.r the run should
2:31:442 hours, 31 minutes, 44 secondssomehow be within try or catch or we should at least look at the response and
2:31:512 hours, 31 minutes, 51 secondswhat happens inside of it. So let me go ahead and see what is the best way of doing that.
2:32:012 hours, 32 minutes, 1 secondI think what we can do is simply wrap the entire await step here instead of try and catch. So, I'm going to go ahead
2:32:092 hours, 32 minutes, 9 secondsand try and do that here like this catch.
2:32:162 hours, 32 minutes, 16 secondsAnd then inside of this catch, I'm just going to do I'm going to copy this await publish like this and return error. And
2:32:262 hours, 32 minutes, 26 secondslet's make sure to just continue throwing that error like this.
2:32:332 hours, 32 minutes, 33 secondsNot 100% sure this is the best solution, but it's the first thing that came to my mind right now. Basically skipping the
2:32:412 hours, 32 minutes, 41 secondsentire return result and all of those other things. So let's see that now. So make sure you've set the retry thing to
2:32:482 hours, 32 minutes, 48 secondszero and make sure you wrap that. Let me try and refresh this now.
2:32:542 hours, 32 minutes, 54 secondsPerfect. And let me try executing it again. Uh loading success. loading error.
2:33:032 hours, 33 minutes, 3 secondsPerfect. Absolutely amazing. Exactly what we wanted to do. And you can see how this time there were no retries.
2:33:122 hours, 33 minutes, 12 secondsPerfect. And if I'm correct, I think that [clears throat] throwing these now, uh, wait, where am I? In the executor.
2:33:222 hours, 33 minutes, 22 secondsUh, I think that now we might not even need to throw these right here because
2:33:292 hours, 33 minutes, 29 secondsonce we throw this error, it's going to go. Oh, actually, no. It will not go inside of catch because try catch is only for the request right here. Yes.
2:33:392 hours, 33 minutes, 39 secondsSo, we still need them right here. Uh, we'll see. Maybe code rabbit will have some interesting solutions for this.
2:33:452 hours, 33 minutes, 45 secondsMaybe we should just wrap the entire thing instead have try catch. I'm not sure. One thing that I do want to do before we move on is go inside of the
2:33:552 hours, 33 minutes, 55 secondsHTTP request channel and let's export const HTTP request channel name and let's go ahead and just make it this.
2:34:062 hours, 34 minutes, 6 secondsThere we go.
2:34:082 hours, 34 minutes, 8 secondsAnd then let's use it here. HTTP request channel name. I'm going to search through my code exactly to see where
2:34:162 hours, 34 minutes, 16 secondselse I'm using it. It's only in it in its equivalent node. So I'm going to change this here. HTTP request channel
2:34:252 hours, 34 minutes, 25 secondsname. There we go. And we can remove this then. We don't need it. And can we just import this as type? We cannot.
2:34:342 hours, 34 minutes, 34 secondsOkay, there we go. So that is now working. No more magic strings here. Perfect.
2:34:432 hours, 34 minutes, 43 secondsAnd let's go ahead and just try it one more time.
2:34:482 hours, 34 minutes, 48 secondsAnd yes, if you execute your workflow two times in a row, it's simply going to reset all the statuses. Or at least it should. Let's try.
2:34:582 hours, 34 minutes, 58 secondsThere we go. So, it will try each status again. Perfect. Amazing job. Now, let's go ahead and do the same thing for the
2:35:062 hours, 35 minutes, 6 secondsclick manual trigger. So that's actually kind of the only thing that will be happening in these super simple triggers which don't require anything to load.
2:35:172 hours, 35 minutes, 17 secondsThey can only emit the loading state and then they can emit the success state. I don't think there's any way an error can even happen in those triggers.
2:35:282 hours, 35 minutes, 28 secondsSo let's start by creating the manual trigger channel.
2:35:332 hours, 35 minutes, 33 secondsSo, instead of features, um, no, where is it? Instead of ingest, yes, they're they're kind of everywhere.
2:35:422 hours, 35 minutes, 42 secondsWe should improve that, too. So, HTTP request, let's change this to manual trigger like this. And let's change this
2:35:512 hours, 35 minutes, 51 secondsto be manual trigger channel name.
2:35:572 hours, 35 minutes, 57 secondsAnd this will be called manual trigger execution.
2:36:052 hours, 36 minutes, 5 secondsThis will be called manual trigger channel. So even though they are all exactly the same, I would highly suggest
2:36:122 hours, 36 minutes, 12 secondshaving them separate. I think you have to have them separate. You could create some magical abstraction that would generate all of them, but sometimes I
2:36:202 hours, 36 minutes, 20 secondsthink abstractions are not that good. Uh okay. So make sure you have you know identical thing but for the manual
2:36:282 hours, 36 minutes, 28 secondstrigger. Now let's go inside of ingest functions.dts and let's add manual trigger channel.
2:36:372 hours, 36 minutes, 37 secondsThere we go. Channels manual trigger. Perfect.
2:36:422 hours, 36 minutes, 42 secondsNow that we have that, uh, let's go ahead and, uh, I think we have to go inside of the manual trigger executor.
2:36:542 hours, 36 minutes, 54 secondsSo, inside of triggers folder, components, manual trigger executor.ds, I agree that the folder structure is a
2:37:012 hours, 37 minutes, 1 secondbit complex as of now. I'll have to see if maybe I should rethink how my executes and triggers work. But yes,
2:37:102 hours, 37 minutes, 10 secondslet's go ahead inside of manual trigger executor.ts right here. And now we have publish. We shouldn't have any errors
2:37:182 hours, 37 minutes, 18 secondshere because we are using node executor here. We already define the publish function inside of it. And now uh what
2:37:262 hours, 37 minutes, 26 secondswe can do is very simply the same thing we did before.
2:37:312 hours, 37 minutes, 31 secondsSo await publish import manual trigger channel from ing inest channels manual
2:37:372 hours, 37 minutes, 37 secondstrigger and use the loading status and then down here the moment we run this
2:37:442 hours, 37 minutes, 44 secondscompletely unfailable uh workflow step change this to success.
2:37:512 hours, 37 minutes, 51 secondsThere we go. Now, in order to make this actually work, what we have to do is we
2:37:582 hours, 37 minutes, 58 secondshave to create the action to refresh the token. So, I'm going to go inside of features executions components HTTP
2:38:072 hours, 38 minutes, 7 secondsrequest. I'm going to copy the actions file and then in the triggers manual trigger folder, I'm going to paste them
2:38:142 hours, 38 minutes, 14 secondsright here. And inside of here, I'm going to rename the instance of HTTP request token to manual trigger token.
2:38:242 hours, 38 minutes, 24 secondsIt's going to be using a type of and an instance of manual trigger channel,
2:38:312 hours, 38 minutes, 31 secondswhich means I have to fix this import to be manual trigger. There we go.
2:38:382 hours, 38 minutes, 38 secondsEverything else should stay exactly the same. So we are just using the new channel and of course we are renaming
2:38:472 hours, 38 minutes, 47 secondsthe type which also means we should rename this. So fetch HTTP request no fetch manual trigger realtime token.
2:38:572 hours, 38 minutes, 57 secondsPerfect.
2:38:592 hours, 38 minutes, 59 secondsOnce we have that working, let's open the node from HTTP request so that we can cop copy the node status.
2:39:092 hours, 39 minutes, 9 secondsAnd then let's go inside of triggers manual trigger node.tsx and change the hard-coded node status
2:39:192 hours, 39 minutes, 19 secondsto now be our hook use node status. Make sure to import use node status from features executions hooks use node
2:39:282 hours, 39 minutes, 28 secondsstatus. And by now I fully agree it's weird that we are in the folder called triggers
2:39:352 hours, 39 minutes, 35 secondsworking on a manual trigger which is technically the node execution of that trigger. It's like I'm confusing
2:39:442 hours, 39 minutes, 44 secondsnode execution with the node type. So yes, I fully agree it's a bit confusing
2:39:512 hours, 39 minutes, 51 secondshow things are everywhere right now. I will try to think of some better folder structure for now, but just bear with me
2:40:002 hours, 40 minutesat least in this chapter and import use node status from where we created it.
2:40:052 hours, 40 minutes, 5 secondsFeatures executions hooks use node status. Change the channel to be manual trigger channel name from inest channels
2:40:142 hours, 40 minutes, 14 secondsmanual trigger. And finally, use fetch manual trigger realtime token from dot /actions.
2:40:232 hours, 40 minutes, 23 secondsAnd I'm trying to think if I forgot to do something. I think this should work.
2:40:302 hours, 40 minutes, 30 secondsLet me go ahead and refresh.
2:40:332 hours, 40 minutes, 33 secondsMake sure you have saved all of your files. Let's click execute workflow right here. There we go. Loading success. Loading success. Loading fail.
2:40:432 hours, 40 minutes, 43 secondsAmazing. Now everything has its own channel. Perfect. Amazing. Amazing job.
2:40:512 hours, 40 minutes, 51 secondsNow that we have this working, let's go ahead and merge this. So 21 node realtime. Let's see. We added in just
2:40:592 hours, 40 minutes, 59 secondsreal time. We created the channels. We are publishing events and we are capturing events using our use node
2:41:062 hours, 41 minutes, 6 secondsstatus. So 21 node real time. I'm just going to go ahead and create that
2:41:122 hours, 41 minutes, 12 secondsbranch. Create new branch. 21 node real time.
2:41:182 hours, 41 minutes, 18 secondsAnd then I'm going to go ahead and commit these 15 files right here. So stage all changes 21 node real time. I'm going to commit and publish the branch.
2:41:322 hours, 41 minutes, 32 secondsNow once this has been published, as always, let's go ahead and
2:41:392 hours, 41 minutes, 39 secondsopen a pull request. And since this is a pretty significant pull request, I want to make sure Code Rabbit reviews this one. So let's see that in a second.
2:41:522 hours, 41 minutes, 52 secondsAnd here we have the summary by Code Rabbit. New features. We added real time status tracking for HTTP request
2:42:002 hours, 42 minutesexecutions, displaying dynamic updates, loading success, and error states. And we added real-time status tracking for
2:42:072 hours, 42 minutes, 7 secondsthe manual trigger. We did all of this by introducing realtime capabilities to replace the static status indicator
2:42:152 hours, 42 minutes, 15 secondsacross execution nodes. So how did we do that? As always, here we have a file by file and cohort summary which basically goes over all the files that we added.
2:42:272 hours, 42 minutes, 27 secondsBut here we have the sequence diagram explaining exactly what's going on. So every node component of our now has a
2:42:342 hours, 42 minutes, 34 secondshook called use node status with all the fields it needs and after that it subscribes using use inest subscription
2:42:442 hours, 42 minutes, 44 secondsand the action.ts file which we have created. Once the connection is established with the real-time channel
2:42:512 hours, 42 minutes, 51 secondsthat we define per node, we go ahead and emit events. So during execution we publish the loading event and then after
2:43:002 hours, 43 minutescompletion we publish the success event and finally uh that state updates on the front end and it rerenders with the new status.
2:43:122 hours, 43 minutes, 12 secondsSo uh here is what code rabbit suggests in the use note status hook logic verify
2:43:182 hours, 43 minutes, 18 secondsdata filtering sorting and state update executor publish integration confirm status events are published at correct
2:43:252 hours, 43 minutes, 25 secondslife cycle points in both HTTP request and manual trigger flows. This was one of the questions I did have for the
2:43:322 hours, 43 minutes, 32 secondsingest real-time team. Um I confirmed myself that this works. I pretty
2:43:392 hours, 43 minutes, 39 secondsconsistently managed to get sequential states. So I can only conclude that if you await publish they come at the right
2:43:462 hours, 43 minutes, 46 secondstime. So let's actually take a look at the requested changes here. So in here
2:43:532 hours, 43 minutes, 53 secondsin our use node status hook it tells us to address race condition with status initialization. I think the problem is
2:44:012 hours, 44 minutes, 1 secondthat we could technically miss out on the loading state if the success or error comes too fast. In our specific
2:44:102 hours, 44 minutes, 10 secondsexample, I think this is okay. It gives us an option to do optimistic updates by setting the status to loading, but I think this is fine as it is right now.
2:44:212 hours, 44 minutes, 21 secondsAs always, code rabbit is not a big fan of node status. Um, my apologies of type casting as it should. Of course, it is
2:44:292 hours, 44 minutes, 29 secondsour reviewer after all. So, if you want to be as strict, you can implement this is a valid status which will uh
2:44:392 hours, 44 minutes, 39 secondsbasically allow you to check at runtime if what you received from the use inest subscription data is what you intend to show to your user.
2:44:502 hours, 44 minutes, 50 secondsAnd in here, it tells us that we are not handling error for the manual trigger, which is a good point. I just don't see
2:44:582 hours, 44 minutes, 58 secondshow it can fail. But yes, step.r run could technically fail for some reason, right? So, we could be consistent and
2:45:072 hours, 45 minutes, 7 secondswrap that instead of try catch and just publish the error on catch.
2:45:132 hours, 45 minutes, 13 secondsUh, and in here, it's basically telling us to use this to handle that and not a
2:45:202 hours, 45 minutes, 20 secondsto-do. What it doesn't know is that this is a YouTube tutorial. So that's why I'm showing it inside of a comment here. But
2:45:282 hours, 45 minutes, 28 secondsyes, completely valid comments. But let's go ahead and merge for now since we got exactly the result we wanted at this state of our tutorial. Once you've
2:45:372 hours, 45 minutes, 37 secondsmerged it, go back inside of your main branch right here. And as always, make sure that you synchronize your changes.
2:45:432 hours, 45 minutes, 43 secondsSo click okay right here. And then what I like to do is I like to click on my graph here and just double check that 21
2:45:512 hours, 45 minutes, 51 secondsis the latest one which I have just merged. I believe that that marks the end of this chapter. So what we've done
2:46:002 hours, 46 minutesis we implemented real time, we pushed to GitHub, created a new branch, created a new PR and reviewed and merged. And
2:46:072 hours, 46 minutes, 7 secondsnow we should be ready to start developing some other nodes because we can easily copy and paste from these two nodes which we have which are completely
2:46:152 hours, 46 minutes, 15 secondsfinished and have all the important features in them. Otherwise, it would have been very hard to update a bunch of nodes which we created. Amazing job and see you in the next chapter.
Chapter 6: 22 Google Form Trigger
2:46:272 hours, 46 minutes, 27 secondsIn this chapter, we're going to add a new trigger to our project, Google form trigger. And while we have already
2:46:352 hours, 46 minutes, 35 secondsdeveloped some useful nodes which means that we will be able to reuse most of the code. This is the first trigger
2:46:432 hours, 46 minutes, 43 secondswhich uses a complete external service to activate some workflow within our
2:46:502 hours, 46 minutes, 50 secondsapplication. So it will be quite challenging and interesting to develop this. Nevertheless, let's get started.
2:46:582 hours, 46 minutes, 58 secondsThe first thing I want to do is I want to enable the user to add an option of a Google form trigger. So because of that
2:47:062 hours, 47 minutes, 6 secondsI want to start with the node and the dialogue for the Google form trigger. So basically the exact same thing that we
2:47:142 hours, 47 minutes, 14 secondshave here for the manual trigger. I want this but for Google form trigger.
2:47:212 hours, 47 minutes, 21 secondsLet's go ahead and get started by first downloading an asset. So using the link on the screen, you can visit my assets
2:47:282 hours, 47 minutes, 28 secondsfolder and go inside of images here and find Google form.svg and go ahead and add it in your app.
2:47:392 hours, 47 minutes, 39 secondsSo I'm going to add it inside of public logos right here. Google form.svg.
2:47:462 hours, 47 minutes, 46 secondsPerfect.
2:47:482 hours, 47 minutes, 48 secondsOnce we have that developed, let's go ahead inside of our source features triggers components and just as we have
2:47:572 hours, 47 minutes, 57 secondsthe manual trigger, I think that we can actually copy and paste this and just rename it Google form trigger. This way we can reuse most of the files inside.
2:48:092 hours, 48 minutes, 9 secondsLet's start with node.tsx.
2:48:132 hours, 48 minutes, 13 secondsLet's go ahead and change the export to be Google form trigger like this.
2:48:202 hours, 48 minutes, 20 secondsAnd let's go ahead and change the node status here to just be initial just for now. So yes, that will make all of these unused. That's fine. We're going to bring them back later.
2:48:322 hours, 48 minutes, 32 secondsAnd then let's go ahead and just modify some things here. So we have a manual trigger dialogue which we are going to
2:48:392 hours, 48 minutes, 39 secondschange later to Google form trigger dialogue. But let's leave it like this for now. And let's go ahead and modify the props of the base trigger node
2:48:462 hours, 48 minutes, 46 secondsinstead. So for the icon, looks like it accepts both string and lucid icon, which should mean that we can now try
2:48:562 hours, 48 minutes, 56 secondsforward slash logos/googleform.svg because that is the exact thing we just
2:49:032 hours, 49 minutes, 3 secondsadded here. Google form.svg within the logos folder. Let's change the name here to be when form is submitted like that. And status will be status.
2:49:182 hours, 49 minutes, 18 secondsYes, everything else will be the same.
2:49:202 hours, 49 minutes, 20 secondsOkay. Now that we have the Google form trigger, it's not enough for it just to exist here. We also need to go inside of node components.
2:49:302 hours, 49 minutes, 30 secondsNode components is a file we maintain inside of source config folder. And in order for React Flow editor to render
2:49:392 hours, 49 minutes, 39 secondsthat, we need to go ahead and add it here. But one thing we're noticing is that it's missing with within our node
2:49:462 hours, 49 minutes, 46 secondstype. So let's just go ahead and prepare this Google form trigger. And let's go ahead and add Google form trigger. You
2:49:552 hours, 49 minutes, 55 secondscan import it from features triggers components. Google form trigger forward slashnode.
2:50:032 hours, 50 minutes, 3 secondsNow in order to add this to our node type, we have to revisit our schema Prisma. So instead of Prisma schema.prisma,
2:50:112 hours, 50 minutes, 11 secondslet's go ahead and add our new node type. So below HTTP request, let's add
2:50:192 hours, 50 minutes, 19 secondsGoogle form trigger. Once we do that, let's go ahead inside of our terminal and let's do npx prisma migrate dev.
2:50:302 hours, 50 minutes, 30 secondsLet's give it a name of Google form trigger node.
2:50:362 hours, 50 minutes, 36 secondsAnd once we submit that, it should synchronize our database with our schema. What I suggest you do now is
2:50:432 hours, 50 minutes, 43 secondsrestart both of your ingest and next processes. If you're using MROs like I am, you can highlight the process that
2:50:512 hours, 50 minutes, 51 secondsyou need and press the letter R on your keyboard. That's going to reset the process.
2:50:582 hours, 50 minutes, 58 secondsor you can just rerun npm rundev. So just make sure you've done that and refresh your app to make
2:51:062 hours, 51 minutes, 6 secondssure everything is still working. And now you should be able to go back to note components and note type should no
2:51:132 hours, 51 minutes, 13 secondslonger give you an error. Instead it should properly load Google form trigger. Great. But that's all not all
2:51:222 hours, 51 minutes, 22 secondswe have to do. We now have to go inside of the node selector. If you don't remember, node selector is maintained
2:51:292 hours, 51 minutes, 29 secondsinside of source components node selector. Node selector is the sidebar that opens up when we click on
2:51:372 hours, 51 minutes, 37 secondsthe plus button to add a new node. So, we have to add some new nodes here.
2:51:422 hours, 51 minutes, 42 secondsLet's go ahead up here inside of the trigger nodes. Let's go ahead and duplicate the code for the manual
2:51:492 hours, 51 minutes, 49 secondstrigger and let's go ahead and change it to Google form trigger. Let's go ahead and change the label to be Google form.
2:52:002 hours, 52 minutesAnd let's quickly change the description. So this will be runs the flow
2:52:082 hours, 52 minutes, 8 secondswhen a Google form is submitted.
2:52:132 hours, 52 minutes, 13 secondsAnd for the icon, let's change it to forward slash logos Google form.svg.
2:52:212 hours, 52 minutes, 21 secondsAnd I think that already we should be able to see it here. There we go. Google form.
2:52:282 hours, 52 minutes, 28 secondsNow, I'm not sure if uh yes, I think just by giving it the type that should be enough. Let's see if
2:52:362 hours, 52 minutes, 36 secondsI click this. There we go. But looks like something is wrong here. Or maybe it's not. So, when form is submitted.
2:52:462 hours, 52 minutes, 46 secondsYeah, I'm not sure if if that's what it should be the title here. I mean, depends. If you like it, you can leave
2:52:532 hours, 52 minutes, 53 secondsit for this to be the title or you can go ahead inside of your newly
2:53:002 hours, 53 minutescreated trigger features triggers Google form trigger node.tsx.
2:53:082 hours, 53 minutes, 8 secondsAnd in here you can either give it a name here or you can use that as a description and give it a name of Google form.
2:53:192 hours, 53 minutes, 19 secondsSo if you prefer that, you can do it like this. For some of you, I'm sure this might be a cleaner solution, especially if you later expect a Google
2:53:292 hours, 53 minutes, 29 secondsform to have multiple ways of triggering the form. Like maybe when Google form is deleted or I don't know if it's updated,
2:53:372 hours, 53 minutes, 37 secondsright? Things like that. So maybe this is a better option for you. The reason we are using the title for this type of
2:53:462 hours, 53 minutes, 46 secondstrigger is because it's kind of the only thing that can happen. So you can choose do you want to be consistent and just
2:53:532 hours, 53 minutes, 53 secondshave the name here when form is submitted or do you want to plan ahead maybe and change this to be a
2:54:012 hours, 54 minutes, 1 seconddescription and then give it a name of Google form whichever one you prefer.
2:54:082 hours, 54 minutes, 8 secondsPerfect. So, one thing that's missing now is when I open this, it opens the dialogue of the manual trigger when it
2:54:162 hours, 54 minutes, 16 secondsshould open the dialogue of the Google form trigger. So, let's go ahead and fix that now. So, inside of our Google form
2:54:242 hours, 54 minutes, 24 secondstrigger folder, let's go ahead inside of the dialogue. DSX and let's slowly
2:54:312 hours, 54 minutes, 31 secondsmodify it. So props will stay exactly the same but the name will now be Google
2:54:372 hours, 54 minutes, 37 secondsform trigger dialogue and let's go ahead immediately here change this and add that. There we go.
2:54:472 hours, 54 minutes, 47 secondsSo nothing much has changed. We just renamed the component internally. But now let's go ahead and actually change
2:54:532 hours, 54 minutes, 53 secondswhat we need here. So the user actually won't type anything inside of here. they will only be able to see the information
2:55:012 hours, 55 minutes, 1 secondthey need to do inside of their Google form to trigger this. So this will be Google form trigger configuration
2:55:092 hours, 55 minutes, 9 secondsand the description will basically tell the user what they have to do. Use this web hook URL in your Google forms app
2:55:172 hours, 55 minutes, 17 secondsscript to trigger this workflow when a form is submitted. So this is how your descriptions should look right now.
2:55:252 hours, 55 minutes, 25 secondsAnd now we're basically going to give the user some way of doing this. So I'm going to go ahead inside of params. My
2:55:352 hours, 55 minutes, 35 secondsapologies. I'm going to define the params constant using use params from next navigation. So make sure you add this import. And then I'm going to
2:55:442 hours, 55 minutes, 44 secondsdefine const workflow ID to be params.workflow ID as string.
2:55:512 hours, 55 minutes, 51 secondsSo this will basically tell me what is the workflow ID that I'm currently in the editor of.
2:55:572 hours, 55 minutes, 57 secondsNow let's construct the web hook URL. So const base URL will be process
2:56:062 hours, 56 minutes, 6 secondsenvironment next public app URL or let's go ahead and let's fall back to HTTP version of localhost 3000.
2:56:182 hours, 56 minutes, 18 secondsSo, next public app URL actually should exist here, but looks like it doesn't.
2:56:252 hours, 56 minutes, 25 secondsSo, I think that we can just add it here. I'm going to add this under other.
2:56:312 hours, 56 minutes, 31 secondsAnd let's go ahead and define localhost 3000 here. Yes. So, this doesn't make sense right now, but think of production
2:56:392 hours, 56 minutes, 39 secondsinstances. So in production, we're going to change this to be the actual URL of our app when it's deployed, right?
2:56:472 hours, 56 minutes, 47 secondsOur.com domain. So I would rather that we always have that available rather than somehow uh using it in a different
2:56:562 hours, 56 minutes, 56 secondsway. All right. Now that we have the base URL, we can also do con web hook
2:57:042 hours, 57 minutes, 4 secondsURL. The web hook URL will be constructed as following.
2:57:102 hours, 57 minutes, 10 secondsIt's going to use the base URL. So either our com domain or localhost depending if we are developing or
2:57:172 hours, 57 minutes, 17 secondssomething else. Forward slap API slhooks forward slashgoogle-form
2:57:252 hours, 57 minutes, 25 secondswith one single param workflow ID and workflow ID will be appended here. There we go.
2:57:342 hours, 57 minutes, 34 secondsSo now that we have that, let's go ahead and define a simple copy to clipboard method. So this will be super simple asynchronous method. Here it is.
2:57:452 hours, 57 minutes, 45 secondsIt's asynchronous method. Open try and catch in try await navigator clipboard write
2:57:522 hours, 57 minutes, 52 secondstext web hook URL the constant we defined above and then toast.uess in the catch toast. and make sure to import
2:58:022 hours, 58 minutes, 2 secondstoast from sonner. So the reason I copied and pasted this is because it's super simple. It's just a simple copy to clipboard method.
2:58:122 hours, 58 minutes, 12 secondsAll right. Now let's go ahead and use this information above and actually display it here in the dialogue. So
2:58:192 hours, 58 minutes, 19 secondsinside of dialogue header, let's go ahead and clear things up. So let's change this to space Y4.
2:58:282 hours, 58 minutes, 28 secondsAnother div with a class name space Y2. And let's go ahead and add a label.
2:58:362 hours, 58 minutes, 36 secondsWe can import the label from components UI label. And let's give this one web
2:58:412 hours, 58 minutes, 41 secondshook URL HTML 4 web hook URL. And then in here, let's create a
2:58:502 hours, 58 minutes, 50 secondsdiv with a class name flex and gap of two. Let's add an input from components
2:58:572 hours, 58 minutes, 57 secondsUI input and a button from components UI button. The button will have a copy icon
2:59:042 hours, 59 minutes, 4 secondsfrom Lucid React. And let's go ahead and give the copy icon a class name of size 4. The button itself will be a type of
2:59:132 hours, 59 minutes, 13 secondsbutton so it doesn't actually accidentally trigger some submit form.
2:59:182 hours, 59 minutes, 18 secondsThe size will be icon variant will be outline and on click will be copy to clipboard.
2:59:262 hours, 59 minutes, 26 secondsFor the input itself, we're going to set the ID to web hook URL. The same one we used HTML 4 above.
2:59:352 hours, 59 minutes, 35 secondsValue will be web hook URL.
2:59:392 hours, 59 minutes, 39 secondsread only will be true and class name will be font mono and text small.
2:59:482 hours, 59 minutes, 48 secondsSo so far when the user opens the Google form trigger they should see the web hook URL that they can copy. There we
2:59:562 hours, 59 minutes, 56 secondsgo. You can see it's right here and they will be able to paste this inside of their Google form apps script.
3:00:063 hours, 6 secondsNow, the problem is most users won't be able to do this on their own. So, we're going to make it a little bit easier for them by adding some instructions here.
3:00:163 hours, 16 secondsSo, after these two divs end, after the last button ends, open a new div here.
3:00:243 hours, 24 secondsLet's go ahead and give this div a rounded large background color of muted, padding of four, and space Y of two.
3:00:333 hours, 33 secondsLet's give it an H4 element. Setup instructions.
3:00:393 hours, 39 secondsLet's go ahead and give the H4 element a class name of font medium and text small.
3:00:473 hours, 47 secondsNow let's open an unordered list with a class name text small text muted.
3:00:553 hours, 55 secondsMy apologies text muted foreground space Y one list decimal list inside.
3:01:043 hours, 1 minute, 4 secondsAnd now let's go ahead and add all the steps that we needed to do. The first step will be open your Google form. The
3:01:133 hours, 1 minute, 13 secondsnext step will be click on the three dots menu and then click on the scripts editor. I have no idea how to generate
3:01:203 hours, 1 minute, 20 secondsthis arrow uni code. You can just use this or just try and Google you know arrow uni code and copy it.
3:01:293 hours, 1 minute, 29 secondsThird step will be copy and paste the script below.
3:01:343 hours, 1 minute, 34 secondsThen replace web hook URL with your web hook URL above which we are actually going to do for the user.
3:01:433 hours, 1 minute, 43 secondsThis is first, second, third, fourth, fifth step will be save and click triggers and then add trigger. And
3:01:513 hours, 1 minute, 51 secondslastly, choose from form on form submit save.
3:01:583 hours, 1 minute, 58 secondsAgain, you don't have to actually use this. I mean, these are just instructions for your users. You will, of course, know very well how to do
3:02:053 hours, 2 minutes, 5 secondsthis. This is so your users know how to do it, too. And if you're wondering, oh well, Zapier has this, you know,
3:02:123 hours, 2 minutes, 12 secondsone-click implementation, you also have to be aware that these companies like Zapier, N8N, they most likely have some
3:02:223 hours, 2 minutes, 22 secondsdeals with Google and with uh other external services to make this much easier for everyone. We are here completely trying to do this ourselves.
3:02:343 hours, 2 minutes, 34 secondsSo, we have to use these methods. But I'm 99% sure that in the background of this one-click setups, it's actually the
3:02:433 hours, 2 minutes, 43 secondsexact same thing happening. It's just all automated for those services, mostly because they have a contact at Google and they all want to make it smoother.
3:02:523 hours, 2 minutes, 52 secondsBut this is what's actually happening in the background. Don't take my word for it. Of course, that's what I think is happening and this is the best solution that I found. If you know a better
3:03:003 hours, 3 minutessolution, of course, feel free to write it down in the comments. I will be very happy to read and learn about it. Now let's go ahead and give the user an option to copy the Google apps script.
3:03:113 hours, 3 minutes, 11 secondsSo open a new div here and a class name rounded large background color of muted padding four and space Y of three.
3:03:233 hours, 3 minutes, 23 secondsLet's create a heading for Google apps script.
3:03:303 hours, 3 minutes, 30 secondsGive the heading for a class name font medium text small.
3:03:383 hours, 3 minutes, 38 secondsAnd in here let's go ahead and let's create a button.
3:03:423 hours, 3 minutes, 42 secondsThe button will have a type of button variant of outline on click for now an empty function.
3:03:543 hours, 3 minutes, 54 secondsAnd let's go ahead and add a copy icon here. Again, we already have it imported. Give it a class name size 4,
3:04:013 hours, 4 minutes, 1 secondMr. of 2. Copy Google Apps script
3:04:083 hours, 4 minutes, 8 secondslike this. Outside of the button, create a paragraph. This script includes your
3:04:153 hours, 4 minutes, 15 secondsweb hook URL and handles form submissions.
3:04:223 hours, 4 minutes, 22 secondsGive this a class name text extra small text muted foreground.
3:04:313 hours, 4 minutes, 31 secondsAll right. So now this doesn't make too much sense because we didn't actually create the on click
3:04:403 hours, 4 minutes, 40 secondsto happen here. So let's quickly do that so you can see what this Google apps script will be. So this is a specific
3:04:483 hours, 4 minutes, 48 secondsscripting language that I personally have no idea how to write. I mostly did it with AI. So if you go back inside of
3:04:563 hours, 4 minutes, 56 secondsmy assets folder, you can find Google form trigger script.ts and this is basically the script, right?
3:05:063 hours, 5 minutes, 6 secondsI just wrote it in this TypeScript form so that you can easily add it to your code. But this is the script. Um I think this actually might be just JavaScript.
3:05:163 hours, 5 minutes, 16 secondsI I told you it's some random scripting language. Looks like it's just normal JavaScript. All right. Uh but yeah, for example, what I meant to say is I have
3:05:253 hours, 5 minutes, 25 secondsno idea what name of the function should be, right? I have no idea what this event has inside. So that's why I used AI help to basically do that for me.
3:05:363 hours, 5 minutes, 36 secondsLike this things get item, get title.
3:05:393 hours, 5 minutes, 39 secondsIt's basically reading from the response and building a web hook payload. And then it's going to basically create a fetch request to our web hook URL.
3:05:523 hours, 5 minutes, 52 secondsSo let's go ahead and let's copy uh this entire script.
3:06:003 hours, 6 minutesAnd now we're going to go ahead and create that. So instead of Google form trigger folder, create a new file utils.ts.
3:06:113 hours, 6 minutes, 11 secondsAnd let's just paste the entire thing inside. So export con generate Google form script. It will basically copy this
3:06:203 hours, 6 minutes, 20 secondsto users clipboard and it will replace the web hook URL with the prop web hook
3:06:273 hours, 6 minutes, 27 secondsURL. Let's go ahead and add it to our dialogue.
3:06:333 hours, 6 minutes, 33 secondsSo I'm just going to go ahead and make this an asynchronous method.
3:06:383 hours, 6 minutes, 38 secondsconst script will be generate Google form script pass in the web hook URL constant which we generate above make
3:06:463 hours, 6 minutes, 46 secondssure you've imported our generate Google form script from dot / utils open try
3:06:533 hours, 6 minutes, 53 secondsand do await navigator clipboard dot write text
3:07:003 hours, 7 minutesscript and do toastsuccess script copied to clipboard.
3:07:123 hours, 7 minutes, 12 secondsAnd in the catch, let's go ahead and just throw a toast
3:07:203 hours, 7 minutes, 20 secondserror failed to copy script to clipboard. All right.
3:07:293 hours, 7 minutes, 29 secondsAnd okay, I think this is good enough. Let me go ahead and just try this now.
3:07:363 hours, 7 minutes, 36 secondsSo, just make sure you have your app running somewhere.
3:07:423 hours, 7 minutes, 42 secondsAnd let me go ahead and add my Google form trigger here. And when I click copy Google apps script, it says script
3:07:503 hours, 7 minutes, 50 secondscopied to clipboard. And take a close look at my web hook URL. So if done
3:07:573 hours, 7 minutes, 57 secondscorrectly, it should now add this entire web hook URL with my Google apps script.
3:08:043 hours, 8 minutes, 4 secondsSo I can very easily check if that is true. There we go. Function on form submit has a web hook URL which is exactly what
3:08:133 hours, 8 minutes, 13 secondsI expected it to be. Amazing. So our generate Google form script works.
3:08:213 hours, 8 minutes, 21 secondsAnd now what you can do here is just give your users some more information.
3:08:273 hours, 8 minutes, 27 secondsSo after this div, after the last paragraph here, open a new div with a class name rounded large,
3:08:373 hours, 8 minutes, 37 secondsbackground color muted, padding four, space Y of two,
3:08:433 hours, 8 minutes, 43 secondsadd an H4, available variables.
3:08:493 hours, 8 minutes, 49 secondsSo just some things to help your users right font medium text small you will of
3:08:563 hours, 8 minutes, 56 secondscourse see more of these variables and which are available in the inest developer screen
3:09:033 hours, 9 minutes, 3 secondsso let's make an unordered list here with a class name text small text muted
3:09:093 hours, 9 minutes, 9 secondsforeground space y1 and let's go ahead and add a list here
3:09:183 hours, 9 minutes, 18 secondsand let's add code and for example one of the things user will be able to do is access Google
3:09:273 hours, 9 minutes, 27 secondsformrespondent email and let's give this a class name
3:09:323 hours, 9 minutes, 32 secondsbg background px of1 py.5 and rounded
3:09:393 hours, 9 minutes, 39 secondsand you can explain what that is respondent email and Then you can copy this list, paste
3:09:483 hours, 9 minutes, 48 secondsit and you can for example change show the user how they can access the
3:09:533 hours, 9 minutes, 53 secondsquestion name like this. For example, this would be a specific answer.
3:10:023 hours, 10 minutes, 2 secondsAnd then you can do the same thing if you want to list all responses as JSON using our registered JSON helper.
3:10:123 hours, 10 minutes, 12 secondsSo basically just a way you can see I have to zoom out a bit just a way to help your users so they know how to
3:10:203 hours, 10 minutes, 20 secondsaccess this in the next node that will be connecting to it. If you want if you don't want to you don't have to add this hint for your users.
3:10:303 hours, 10 minutes, 30 secondsSo now that we have the Google form ready I mean we just have the UI ready.
3:10:363 hours, 10 minutes, 36 secondswe still have to create the actual uh web hook that will listen to it. And
3:10:443 hours, 10 minutes, 44 secondsbesides the actual web hook, we also need the executor. Let's actually do the executor first. And I'll show you why.
3:10:523 hours, 10 minutes, 52 secondsSo inside of features triggers, Google form trigger, we also have the executor.ds.
3:11:013 hours, 11 minutes, 1 secondAnd it's basically just this. That's it.
3:11:053 hours, 11 minutes, 5 secondsSo let's change this to be Google form trigger executor.
3:11:133 hours, 11 minutes, 13 secondsChange this from manual trigger data to Google form trigger data.
3:11:203 hours, 11 minutes, 20 secondsAnd that's it. Just change the step run to be Google form trigger. And since we are here, you can obviously notice that
3:11:283 hours, 11 minutes, 28 secondswe are using manual trigger channel to publish the loading and success states.
3:11:353 hours, 11 minutes, 35 secondsSo yes, the Google form trigger itself will not start anything. Uh because this
3:11:423 hours, 11 minutes, 42 secondswill not be activated on click like our manual one is. We just click execute
3:11:493 hours, 11 minutes, 49 secondsworkflow. Google form trigger can only be submitted through a web hook. So that's why the executor is so simple
3:11:573 hours, 11 minutes, 57 secondsbecause it only needs to uh tell the user all right I received an event that's it
3:12:053 hours, 12 minutes, 5 secondsso while we are here let's go ahead and let's quickly create the Google form trigger channel so that we can change it
3:12:133 hours, 12 minutes, 13 secondsso instead of Google form trigger oh yes we don't do them there for some reason I
3:12:193 hours, 12 minutes, 19 secondshave to improve that we do them in inest channels Well, in one way they are all in one place. So, at least that's good.
3:12:273 hours, 12 minutes, 27 secondsSo, let's copy manual trigger, paste it here, rename it to google-form-trigger.ts.
3:12:363 hours, 12 minutes, 36 secondsGo ahead and change this to Google form trigger.
3:12:423 hours, 12 minutes, 42 secondsChange this to be Google form trigger.
3:12:463 hours, 12 minutes, 46 secondsAnd change this to be Google form trigger channel. Basically no instance of manual just Google form everything else is exactly the same.
3:12:583 hours, 12 minutes, 58 secondsOnce we have this channel we have to go inside of functions.ts inside of source ingest right here and
3:13:073 hours, 13 minutes, 7 secondswe have to register our new channel. So make sure you import the new channel. Perfect.
3:13:153 hours, 13 minutes, 15 secondsNow once we have that we can go back inside of the executor.ts DS inside of our Google form trigger folder. And we
3:13:243 hours, 13 minutes, 24 secondscan now finally replace all instances of manual trigger channel with Google form trigger channel. And we also have to fix the import now. Google form trigger.
3:13:383 hours, 13 minutes, 38 secondsThere we go.
3:13:413 hours, 13 minutes, 41 secondsNow that we have that working, let's also go inside of actions. DS.
3:13:483 hours, 13 minutes, 48 secondsSo instead of manual trigger token, let's rename this to Google form trigger token.
3:13:593 hours, 13 minutes, 59 secondsLet's rename the function to fetch Google form trigger realtime token.
3:14:053 hours, 14 minutes, 5 secondsAnd let's go ahead and replace the channel instances to our Google form trigger channel.
3:14:143 hours, 14 minutes, 14 secondsLet's go ahead and fix the import. Google form trigger. And there we go.
3:14:203 hours, 14 minutes, 20 secondsNow we have actions.ts which will register to Google form trigger channel.
3:14:283 hours, 14 minutes, 28 secondsNow that we have that, we can go back inside of node.tsx and we can finally revert this. So let's
3:14:373 hours, 14 minutes, 37 secondstake a peek at how it's done inside of the manual trigger. Let's go ahead and borrow the code here. Here it is. So,
3:14:463 hours, 14 minutes, 46 secondsI'm just going to copy it. I'm going to go back inside of my Google form trigger node.tsx and I'm just going to paste the entire
3:14:543 hours, 14 minutes, 54 secondsthing here. Let's go ahead and change this to be Google form trigger channel name and fetch Google form trigger
3:15:043 hours, 15 minutes, 4 secondsrealtime token. Let's go ahead and remove the unused import from the actions. Let's go ahead and remove the
3:15:113 hours, 15 minutes, 11 secondsunused import from manual trigger. Let's go ahead and remove the unused mouse pointer icon. And I think everything
3:15:183 hours, 15 minutes, 18 secondselse should now be fully used in our code.
3:15:223 hours, 15 minutes, 22 secondsLet me just double check that inside of my executor. I'm using Google form trigger. Perfect. If you want to do a
3:15:293 hours, 15 minutes, 29 secondsfinal check, you can go ahead and highlight your Google form trigger folder and click find in folder and search for manual.
3:15:393 hours, 15 minutes, 39 secondsManual trigger. Perfect. If nothing shows up, you don't have any leftovers because we copied this from the manual folder.
3:15:493 hours, 15 minutes, 49 secondsGreat. So, we are very far ahead with our Google Google form trigger. One
3:15:563 hours, 15 minutes, 56 secondsissue though is that we never actually developed that web hook route. Which web hook route am I talking about? Well, this one. My apologies.
3:16:063 hours, 16 minutes, 6 secondsThis one. this endpoint right here doesn't exist.
3:16:113 hours, 16 minutes, 11 secondsSo even if we copy the Google Apps script and create a new form and paste it here, it would just return a 404
3:16:193 hours, 16 minutes, 19 secondsbecause our project has no idea what route that is. So let's go inside of source app folder API folder. In here, let's create workflows.
3:16:313 hours, 16 minutes, 31 secondsInside of workflows, let's go ahead and create Google form.
3:16:363 hours, 16 minutes, 36 secondsAnd inside of here, let's create route.ts.
3:16:403 hours, 16 minutes, 40 secondsRoute is a reserved file. Oh, you already know that, right? We went through this. My apologies. Yes, it's a reserved file name just like page.tsx.
3:16:503 hours, 16 minutes, 50 secondsSo, let's go ahead and just add some imports here. So, let's import type next request and next response. Let's export
3:16:573 hours, 16 minutes, 57 secondsasynchronous function post. Let me fix a typo in the function.
3:17:063 hours, 17 minutes, 6 secondsLet's go ahead and make the request a type of next request. Let's open a try and catch right here.
3:17:163 hours, 17 minutes, 16 secondsLet's go ahead and resolve the catch since it's easier.
3:17:203 hours, 17 minutes, 20 secondsconsole error Google form web hook error and simply log the error.
3:17:293 hours, 17 minutes, 29 secondsIt's always good to do these things even though we have sentry. So you will have advanced error logging. So it will be
3:17:363 hours, 17 minutes, 36 secondsway easier for you to discover if anything like this breaks. That's why it's super useful to have something like Sentry here because there's so many
3:17:453 hours, 17 minutes, 45 secondsfactors that can go wrong. It can be user input. It can be your implementation. Maybe just the way
3:17:523 hours, 17 minutes, 52 secondsGoogle app script works can change. A bunch of things can happen. That's why having Sentry so they log errors for you
3:18:013 hours, 18 minutes, 1 secondand you don't have to log them is a big big help. So let's also officially
3:18:063 hours, 18 minutes, 6 secondsreturn a response with success false error failed to process Google form
3:18:163 hours, 18 minutes, 16 secondssubmission and let's also pass in the status 500.
3:18:313 hours, 18 minutes, 31 secondsNow inside of the actual post method what we have to do is we have to dstructure the URL. So new URL request
3:18:403 hours, 18 minutes, 40 secondsURL and then we have to get the workflow ID from the params. So URL URL searchs get workflow ID.
3:18:513 hours, 18 minutes, 51 secondsIn case we are unable to find workflow ID, it means we have no idea what background job to trigger. So let me go ahead and copy this right here.
3:19:043 hours, 19 minutes, 4 secondsAnd let's go ahead and simply say instead of failed missing required query
3:19:123 hours, 19 minutes, 12 secondsparameter workflow ID and in this case it's most likely a user error. So 400 instead of 500.
3:19:243 hours, 19 minutes, 24 secondsNow if we do have a workflow ID, we can go ahead and destructure the body using await request.json and then we can submit form data.
3:19:343 hours, 19 minutes, 34 secondsNow inside of the form data, we can add everything relevant to the form. For example, form ID, form title, and all
3:19:443 hours, 19 minutes, 44 secondsthe other things that we might need. But I also suggest that whatever you choose to do like I do right here, individual
3:19:503 hours, 19 minutes, 50 secondsones, you can also always pass the raw body. This will allow your users to do all kinds of things. Basically, using
3:19:593 hours, 19 minutes, 59 secondsour template language, they will be able to access the raw object and then they will be able to access whatever they specifically want from the Google form.
3:20:073 hours, 20 minutes, 7 secondsBut the reason we did this even row even though raw exists is just to save the user some time and to make the templating simpler.
3:20:183 hours, 20 minutes, 18 secondsAnd now what we finally have to do is trigger an ingest job.
3:20:243 hours, 20 minutes, 24 secondsBut let's go ahead and take a look at how we currently do that. So I think that we have uh workflows
3:20:333 hours, 20 minutes, 33 secondsuh routers.ts in the server folder. So instead of source features workflows server
3:20:403 hours, 20 minutes, 40 secondsrouters.ds, we have the execute folder right here.
3:20:443 hours, 20 minutes, 44 secondsAnd in here we do awaiting inest. Send like this. So we could do that right here.
3:20:553 hours, 20 minutes, 55 secondsThis would work perfectly fine. But here's what I want to do instead. I would suggest that we wrap our ingest
3:21:053 hours, 21 minutes, 5 secondssend into our own abstraction so that later if we need to modify it for whatever reason we can easily do it in
3:21:123 hours, 21 minutes, 12 secondsjust one place instead of all the other places which will call this function. So instead of inest go inside of utils.ds
3:21:203 hours, 21 minutes, 20 secondssince we already have it. Let's reuse it once again at the bottom here. export const send workflow execution.
3:21:313 hours, 21 minutes, 31 secondsLet's go ahead and make this asynchronous and make the data be workflow ID which is required and then anything else we might want to pass.
3:21:443 hours, 21 minutes, 44 secondsGo ahead and return inest.
3:21:483 hours, 21 minutes, 48 secondsname workflows forward slashexecute.workflow workflow and pass in the data.
3:22:003 hours, 22 minutesLet's go ahead and let's import inest from dot /client.
3:22:053 hours, 22 minutes, 5 secondsSo just double check that we didn't accidentally misspell this. And yes, now we are only going to have to spell this
3:22:133 hours, 22 minutes, 13 secondsproperly once. We don't have to worry if we misspelled it here. So now what we
3:22:203 hours, 22 minutes, 20 secondscan do here is we can completely change the way we call this. So instead of
3:22:273 hours, 22 minutes, 27 secondsdoing this we can do await send workflow execution here
3:22:353 hours, 22 minutes, 35 secondsand pass in the workflow ID to be input do ID and then you no longer have to pass this.
3:22:453 hours, 22 minutes, 45 secondsAnd then same thing here you can just pass send workflow
3:22:523 hours, 22 minutes, 52 secondsexecution and instead of input do ID you actually have the workflow ID so you can just use the shorthand operator. But
3:23:003 hours, 23 minuteshere's the thing uh you actually don't want to just pass that. Now in our previous examples, we
3:23:083 hours, 23 minutes, 8 secondsalways began with an empty context until some something happened like an HTTP request. But this time it's different.
3:23:173 hours, 23 minutes, 17 secondsThis time we will start this background job with some context. So let's pass in the initial data here. Google form form
3:23:273 hours, 23 minutes, 27 secondsdata. Whoops. Did I call it form data? I did. So let's just pass it as form data here.
3:23:343 hours, 23 minutes, 34 secondsAnd then let's go ahead and quickly revisit how our functions.ts work.
3:23:413 hours, 23 minutes, 41 secondsInstead of source in justest functions.ts, we can extract the workflow ID. And what
3:23:493 hours, 23 minutes, 49 secondswe do here is basically we just initialize. Oh, looks like we already do it. Perfect. So yes, our context will
3:23:563 hours, 23 minutes, 56 secondseither use event.data.initial data or it will use an empty object. So, so far we've always had an empty object.
3:24:073 hours, 24 minutes, 7 secondsWhy? Well, because we manually started the workflow. So, obviously no initial data could have happened from our manual
3:24:153 hours, 24 minutes, 15 secondsclick. But now it's a different situation. Now we have this Google form which will parse all of this data from
3:24:233 hours, 24 minutes, 23 secondsthe Google form submission and it will then start the ingest job using initial data. So that will be a completely
3:24:333 hours, 24 minutes, 33 secondsdifferent situation. Now, perfect. So, now that we have all of these ready, let's go ahead and actually try it out.
3:24:433 hours, 24 minutes, 43 secondsSo, I'm going to simplify this just a little bit. Let me remove this one. Yeah, let me remove all of them.
3:24:523 hours, 24 minutes, 52 secondsAnd I'm going to add Google form. And then I'm going to add Well, yeah, let's let's do just for fun, let's do two of
3:25:013 hours, 25 minutes, 1 secondthese. This will be I don't know my API call httpsc codewithantonio.com
3:25:113 hours, 25 minutes, 11 secondsor you can use the uh pretty variables.
3:25:173 hours, 25 minutes, 17 secondsLet me just remember which one it was.
3:25:223 hours, 25 minutes, 22 secondsThis one. So you have nice JSON. So user there we go. Save. Save here. As you can
3:25:293 hours, 25 minutes, 29 secondssee now immediately we have uh no execute button. So the only thing we can actually do here is we
3:25:373 hours, 25 minutes, 37 secondscan copy the Google apps script and we can paste that inside of Google form.
3:25:423 hours, 25 minutes, 42 secondsBut here's the thing this still won't work. Here's why. So this is the exact script that will be pasted inside of
3:25:503 hours, 25 minutes, 50 secondsGoogle apps script. The web hook URL is localhost 3000. That will not work.
3:25:583 hours, 25 minutes, 58 secondsExternal services have no idea what localhost is. Local host is only available on your current device. So in
3:26:073 hours, 26 minutes, 7 secondsorder to resolve this, we have to add enro or any other local tunnel. I highly suggest enro because it is super
3:26:163 hours, 26 minutes, 16 secondsreliable and it also offers you one static domain which will basically
3:26:233 hours, 26 minutes, 23 secondsalways be the same no matter how many times you start Angro. So, I'm going to quickly show you how you can set that up.
3:26:313 hours, 26 minutes, 31 secondsSo, head to enrock.com or use the link on the screen. And once you create an account, you will be greeted with a
3:26:383 hours, 26 minutes, 38 secondswelcome screen like this. In here, make sure you are looking at the agents dropdown here and select your agent.
3:26:463 hours, 26 minutes, 46 secondsBasically, your operating system. If you are on Windows, select Windows. Do not confuse that with SDKs. This is something different. This is if you want
3:26:553 hours, 26 minutes, 55 secondsto use it programmatically. That's not what we're looking for. We want to use it as an agent.
3:27:013 hours, 27 minutes, 1 secondSo in my case, I select Mac OS and I I can either download it or I can use homebrew to install it.
3:27:103 hours, 27 minutes, 10 secondsAnd [snorts] once you've done that, so you have two steps to run brew install angro and then you have to add the al token. Do not share this token with
3:27:173 hours, 27 minutes, 17 secondseveryone. Uh so I show it for tutorial purposes. I will rotate this token after that. So it's a new one and to test if
3:27:263 hours, 27 minutes, 26 secondsyou did it correctly you should have enro available inside of your terminal.
3:27:303 hours, 27 minutes, 30 secondsSo if I run enrock you will see that it now works and if I go ahead and try do enrock
3:27:383 hours, 27 minutes, 38 secondshttp 3000 what's what it's going to do is it's going to capture my nex.js JS
3:27:463 hours, 27 minutes, 46 secondsinstance which is running at log host 3000 and it's going to forward that to
3:27:543 hours, 27 minutes, 54 secondsthis public endpoint but you can see that it's completely random and every time that you try and you know use it
3:28:023 hours, 28 minutes, 2 secondsit's going to be completely random as well but it works you can see that my app is available through that weird URL but yeah the problem is every time you
3:28:103 hours, 28 minutes, 10 secondstry and do this it's completely random so this old one now no longer works there is The way you can actually fix
3:28:163 hours, 28 minutes, 16 secondsthat completely for free by going inside your sidebar and let me just remember uh here it is universal gateway domains.
3:28:293 hours, 28 minutes, 29 secondsSo click on the domains here and if you don't have any I think on the free tier you can just create a new domain and
3:28:363 hours, 28 minutes, 36 secondsthen basically in here you will always have one completely free domain and you can click on the little CLI button here
3:28:443 hours, 28 minutes, 44 secondsand it's going to show you how you can select it. So now you can see that I have this thing and now I can always do
3:28:533 hours, 28 minutes, 53 secondsthis and it's always going to be this domain. So, a custom domain for my free
3:28:593 hours, 28 minutes, 59 secondsaccount and then I can use that here. I think this is very useful for development because you can see every time I run this, it's always the same
3:29:073 hours, 29 minutes, 7 secondsdomain. So, you don't have to change your code that often. So, okay, let me just close this. This is if you're wondering what was that file, it's just
3:29:153 hours, 29 minutes, 15 secondsthe Google apps script that I copied and then paste it here to demonstrate what's actually being copied to the clipboard.
3:29:223 hours, 29 minutes, 22 secondsSo if you're using MROs, what I would suggest you do is you well, let's go ahead and do it together. Let's go inside of package.json first.
3:29:323 hours, 29 minutes, 32 secondsAnd inside of package.json, let's go ahead and do angrock dev.
3:29:403 hours, 29 minutes, 40 secondsAnd in here, let's do I already forgot the script. this one.
3:29:513 hours, 29 minutes, 51 secondsThere we go. Like this.
3:29:553 hours, 29 minutes, 55 secondsSo then when you are inside of your project, you can just do npx my apologies npm run angrock dev and then
3:30:043 hours, 30 minutes, 4 secondsyou will always have your local tunnel running so you can test your web hooks. But I'm going to go ahead even further.
3:30:133 hours, 30 minutes, 13 secondsSo what if you want this to be dynamic? Well, that's completely reasonable.
3:30:203 hours, 30 minutes, 20 secondsSo I'm going to go ahead inside of my environment here and in the other I'm going to add my
3:30:273 hours, 30 minutes, 27 secondsangrock URL. Keep in mind all of this is completely optional at this point, right? I mean I showed you how you can
3:30:343 hours, 30 minutes, 34 secondsdo it yourself using Angro. So if you manage to have your app running using this, perfectly fine. you can continue
3:30:423 hours, 30 minutes, 42 secondswith the tutorial. So if this part doesn't work for you because I know Amprox can be a little bit tricky for Windows users, that's perfectly fine.
3:30:513 hours, 30 minutes, 51 secondsWhat I'm doing here is just making it more convenient. Just doing it so it's a better team environment, right? So yes, it kind of would be reasonable to store
3:30:593 hours, 30 minutes, 59 secondsthat instead of your environment. So then in your package JSON you don't have to literally use the URL and instead
3:31:093 hours, 31 minutes, 9 secondswhat you can do is you can reference the environment
3:31:153 hours, 31 minutes, 15 secondsvariable using dollar sign angro URL but that will not work just like that you
3:31:223 hours, 31 minutes, 22 secondscan see now it's not working it's fall it's full it fall back to random URLs the reason it doesn't work is because
3:31:303 hours, 31 minutes, 30 secondsit's missing environment CLI. So, let's do npm install. Whoops.
3:31:403 hours, 31 minutes, 40 secondsMpm install environment- cli and save it as a dev dependency because you don't actually need it in the dependencies.
3:31:503 hours, 31 minutes, 50 secondsSo, let me show you that. Environment- cli. I'm using version 10.0.0.
3:31:573 hours, 31 minutes, 57 secondsAnd once you have that, you can add a prefix here dot environment and then try it again. Ambient run angrode dev.
3:32:093 hours, 32 minutes, 9 secondsUh looks like it is still not working.
3:32:133 hours, 32 minutes, 13 secondsUh because yeah, my apologies. You will have to run it like this. So add two dashes
3:32:213 hours, 32 minutes, 21 secondshere. Let's go ahead and try again. This hopefully this time it will work again.
3:32:263 hours, 32 minutes, 26 secondsnot working. Okay. Uh dot environment enro angro URL.
3:32:353 hours, 32 minutes, 35 secondsLet me check if I'm doing something incorrectly. Enro URL. It's right here.
3:32:423 hours, 32 minutes, 42 secondsAngro URL right here. H maybe that's simply not the way it can work. So instead, what I'm going to do
3:32:503 hours, 32 minutes, 50 secondsis the following. I will do what worked for me. I will put dot environment here in my mrox like this.
3:33:023 hours, 33 minutes, 2 secondsAnd then I'm going to go inside of my mrox configuration file.
3:33:083 hours, 33 minutes, 8 secondsAnd I'm going to go ahead and add a new process here called engrock cmd npm run angrode dev.
3:33:203 hours, 33 minutes, 20 secondsAnd I think that now it should work hopefully because this is what worked for me. So I had dot environment here and I also had it here and in mrocks.
3:33:323 hours, 33 minutes, 32 secondsSo I'm going to go ahead and shut this down. I'm going to shut this down and mpm rundev all. And now I will I should have three of them running. And now it's
3:33:403 hours, 33 minutes, 40 secondsworking. So you can see now I have my enrock running at my uh static URL which I can now always easily find here. So I
3:33:493 hours, 33 minutes, 49 secondsnever have to guess what it is. I can just paste it in my URL here and I have
3:33:563 hours, 33 minutes, 56 secondsmy app running. So sorry for detouring so much. I just really wanted you to have that because it's useful to
3:34:043 hours, 34 minutes, 4 secondsdevelop like that just having one command being run and all configured from your environment file. again uh you
3:34:123 hours, 34 minutes, 12 secondscan completely you know just do what we previously had this this is perfectly
3:34:193 hours, 34 minutes, 19 secondsfine right I'm just thinking that some of you might be doing this in a company or maybe want to impress your employers
3:34:273 hours, 34 minutes, 27 secondsso yeah it would be kind of useful to do it like this so they can easily set it up for their uh web hook URL
3:34:363 hours, 34 minutes, 36 secondsall right so now that we have that ready make sure that you have your angro running on any URL. It really doesn't
3:34:433 hours, 34 minutes, 43 secondsmatter. Just you should know what the URL is. Uh and then we are now ready to
3:34:503 hours, 34 minutes, 50 secondsdo this because if we try to access our web hook URL through our new forwarded URL, we can now do it. So let's go ahead and create a Google form.
3:35:013 hours, 35 minutes, 1 secondSo here I am in the Google form tab and I'm going to click start a new form. I'm
3:35:083 hours, 35 minutes, 8 secondsgoing to call this nodebase. So, no thanks. Uh nodebase test.
3:35:163 hours, 35 minutes, 16 secondsAnd for the question here, let's do uh what endpoint should I fetch? And let's
3:35:253 hours, 35 minutes, 25 secondsgo ahead and make this how can I make this like a test textbased answer?
3:35:333 hours, 35 minutes, 33 secondsI have no idea. I'm not that good. Okay.
3:35:373 hours, 35 minutes, 37 secondsSo here uh yeah I just want like a short answer like a URL. I think this will be fun. Make it required.
3:35:473 hours, 35 minutes, 47 secondsAnd let's go ahead and publish this. Let's click publish.
3:35:533 hours, 35 minutes, 53 secondsOkay. And now I should be able to copy responder link. I should be able to copy it. And in my new tab I'm going to paste
3:36:003 hours, 36 minutesit. And there we go. So we are we're having this super simple question. what endpoint should I fetch? And now in
3:36:093 hours, 36 minutes, 9 secondshere, uh, users would, for example, answer something like
3:36:153 hours, 36 minutes, 15 secondsthis, right? Our JSON placeholder typing code. So the goal is so that we create
3:36:243 hours, 36 minutes, 24 secondsthe following thing. When Google form is submitted, read the user's answer and then we're going to use a variable here
3:36:323 hours, 36 minutes, 32 secondsinstead. That's kind of my idea behind it. Now, obviously, if you just submit, nothing will happen because we didn't
3:36:413 hours, 36 minutes, 41 secondsadd any script. So, I haven't done too many of these scripts and this is all new to me. So, you're going to have to
3:36:493 hours, 36 minutes, 49 secondsbear with me. I'm not the expert at Google Forms. So, I will kind of try to follow my own guide here. Maybe get
3:36:563 hours, 36 minutes, 56 secondsstuck a few times, but we will get through this. Let's go ahead and do it together.
3:37:013 hours, 37 minutes, 1 secondAll right. So first things first, open your Google form. Click on three dots menu and script editor.
3:37:083 hours, 37 minutes, 8 secondsApp script. Okay, that's it. So we should rename that to apps script. And once we open that, it should load the
3:37:173 hours, 37 minutes, 17 secondsapps script editor for this specific form. Looks like it's taking a while. So I'm just going to pause the video until it loads.
3:37:253 hours, 37 minutes, 25 secondsAll right, here it is. So let me zoom in.
3:37:293 hours, 37 minutes, 29 secondsI will call this project the Nodebase Google apps script
3:37:373 hours, 37 minutes, 37 secondsand this is it. This is the function. So you can see it's not JavaScript. It's I'm guessing Google script.gs.
3:37:453 hours, 37 minutes, 45 secondsI'm not sure. And now in here I can copy Google apps script and I should be able to paste it like this.
3:37:543 hours, 37 minutes, 54 secondsAnd now basically what we have to change is this. It shouldn't be localhost 3000.
3:38:013 hours, 38 minutes, 1 secondIt should be our running URL right here.
3:38:053 hours, 38 minutes, 5 secondsSo since I have it inside of my environment, I'm just going to copy it from here and make sure you are using the HTTPS option.
3:38:163 hours, 38 minutes, 16 secondsSo change this to HTTPS and then paste it here. Make sure you
3:38:233 hours, 38 minutes, 23 secondsdon't add any double slashes. So, HTTPS and then your URL link because we are
3:38:313 hours, 38 minutes, 31 secondsusing HTTPS right here. In production, obviously, you wouldn't have to change this because it would be the correct
3:38:403 hours, 38 minutes, 40 secondsdomain. In development, it's local host, so it's a little bit harder to do. And I think that uh this saves automatically.
3:38:503 hours, 38 minutes, 50 secondsOh, you can do command save and then it will save the drive or you can just click here. Okay, so that works. Uh, and
3:38:573 hours, 38 minutes, 57 secondsnow let's go ahead and go inside of triggers here. I think that's the next
3:39:043 hours, 39 minutes, 4 secondsstep. Yes, let's go ahead inside of triggers.
3:39:093 hours, 39 minutes, 9 secondsUh, and click create a new trigger. Add a trigger. There we go. Choose which
3:39:173 hours, 39 minutes, 17 secondsfunction to run. So on form submit you should have this because you just saved the file which has that function.
3:39:253 hours, 39 minutes, 25 secondsAnd let's go ahead and see what else.
3:39:293 hours, 39 minutes, 29 secondsChoose for from form on form submit from form
3:39:363 hours, 39 minutes, 36 secondson form submit. Perfect. And let's click save right here.
3:39:423 hours, 39 minutes, 42 secondsAnd let's see what will happen. All right. script authorization failed.
3:39:493 hours, 39 minutes, 49 secondsPlease check your pop-up blocker settings and try again. So, I'm going to click here and I'm going to allow pop-ups and redirects from this website.
3:39:593 hours, 39 minutes, 59 secondsAnd I think I know exactly what's happening here. So, I have to reverify my account now. And this is very
3:40:053 hours, 40 minutes, 5 secondsimportant. What you're seeing right here is warning you specifically. So when I
3:40:133 hours, 40 minutes, 13 secondsfirst saw this message, I thought, "Oh, this is a bad implementation because, you know, my users will see this and
3:40:203 hours, 40 minutes, 20 secondsthey're going to have to, you know, see this message." That's not nice. This is only warning uh the script creator, the
3:40:303 hours, 40 minutes, 30 secondsform owner, the form owner, right? Why is it warning us? Well, because this scripts can be dangerous, right? Who
3:40:393 hours, 40 minutes, 39 secondsknows what we just copied here and pasted? Imagine someone who is not as technically capable as you are. They can
3:40:473 hours, 40 minutes, 47 secondsvery easily hide some malicious code here and tell them, "Yeah, just paste it here." So that's why Google is telling
3:40:543 hours, 40 minutes, 54 secondsyou that this is requesting access to sensitive info because it is we are accessing the Google form submission
3:41:013 hours, 41 minutes, 1 seconddata and we are sending that to some random endpoint. That is what Google is
3:41:083 hours, 41 minutes, 8 secondswarning us. But obviously you can also get rid of this warning too once you verify this app with Google. So those
3:41:153 hours, 41 minutes, 15 secondsare production steps. So this is 100% safe. You can click go to notebased Google apps script even though it says
3:41:233 hours, 41 minutes, 23 secondsunsafe. I know this sounds very weird but that's because look at what it will do. It will view and manage your forms
3:41:313 hours, 41 minutes, 31 secondsin Google Drive and it will connect to an external service. But we are the ones doing that, right? So that's why you can
3:41:403 hours, 41 minutes, 40 secondsallow this to happen. I know it sounds sketchy. Uh but it's perfectly fine, right? You
3:41:483 hours, 41 minutes, 48 secondsdeveloped this. You saw the exact script that is pasted inside. You know exactly what it does.
3:41:573 hours, 41 minutes, 57 secondsAnd now it says loading data. This may take a few moments. I think at this point you might even be able to submit
3:42:053 hours, 42 minutes, 5 secondsor maybe you just have to create a new trigger again. I know this part was a bit weird for me too. Here we go. Owned
3:42:123 hours, 42 minutes, 12 secondsby me deployment head. To be honest, I have no idea what these deployments really mean because I think that all I
3:42:203 hours, 42 minutes, 20 secondscan do is I can just always just save the file and it will work. I have no idea what deployments mean really. I'm
3:42:283 hours, 42 minutes, 28 secondsnot too familiar with Appcript. I just managed to get it work this way.
3:42:323 hours, 42 minutes, 32 secondsPerfect. So, we now have this. Make sure it's on form submit from form on form submit event type and make sure that the
3:42:403 hours, 42 minutes, 40 secondscode is exactly that you have copied from here. Right. And the only thing you should have modified is the web hook URL
3:42:473 hours, 42 minutes, 47 secondsto use your active angro tunnel. And I think that this should be it. Keep in
3:42:553 hours, 42 minutes, 55 secondsmind that this will obviously only work for Whoops. for this specific endpoint.
3:43:033 hours, 43 minutes, 3 secondsSo, let's go ahead and try it out. I have no idea what we can expect actually. So, let me just see what this error is. Uh, some hydration error. I'm
3:43:133 hours, 43 minutes, 13 secondsnot too sure what that is. I will focus on that later. For now, let's submit a form. So, I will just copy the link. I will paste it in one of my tabs.
3:43:253 hours, 43 minutes, 25 secondsAnd yeah, let me go ahead and try and add some useful URL here.
3:43:323 hours, 43 minutes, 32 secondsLet's actually try with this one.
3:43:353 hours, 43 minutes, 35 secondsIt's more recognizable. And let's click submit.
3:43:393 hours, 43 minutes, 39 secondsLet's wait here. Maybe we can already see it being submitted here. Maybe we won't. I have no idea. Uh, looks like it is not being submitted right here.
3:43:533 hours, 43 minutes, 53 secondsLet's go ahead and check it here. Looks like no results are found here. This would mean that it is not working, I
3:44:003 hours, 44 minutesbelieve. So, let's go ahead inside of the triggers here. Maybe it will take some time for the first one. I don't know. I'm not sure. Error rate is a 0%.
3:44:133 hours, 44 minutes, 13 secondsThat's good.
3:44:153 hours, 44 minutes, 15 secondsLet's go ahead and click on executions here. Looks like something did trigger it and it did manage to complete.
3:44:233 hours, 44 minutes, 23 secondsIf I click view trigger, it just redirects me here.
3:44:323 hours, 44 minutes, 32 secondsStill I cannot see any runs happening here nor here. Let me try my inest here.
3:44:423 hours, 44 minutes, 42 secondsCan I maybe see a hit somewhere here?
3:44:463 hours, 44 minutes, 46 secondsOh, here it is. We have it. API web hooks Google form.
3:44:533 hours, 44 minutes, 53 secondsIt's 404.
3:44:563 hours, 44 minutes, 56 secondsCould I have maybe made some typing mistake here? Source app folder API.
3:45:033 hours, 45 minutes, 3 secondsDid I name it workflows? I named this workflows instead of web hooks. My
3:45:093 hours, 45 minutes, 9 secondsdeepest apologies. Select yes to update imports. That's going to open this cache file. You can just save it, close it,
3:45:183 hours, 45 minutes, 18 secondsclose the next folder. That was the problem. I think that now it should work. Let's try again. It's super easy
3:45:253 hours, 45 minutes, 25 secondsto retry. Just click submit another response. Let's go ahead and try code with antonio.com again. Let's click submit.
3:45:373 hours, 45 minutes, 37 secondsAnd will it maybe work now?
3:45:443 hours, 45 minutes, 44 secondsOh, there we go. It failed. But no executor found for node Google form
3:45:523 hours, 45 minutes, 52 secondstrigger. All right, this is actually good news even though it doesn't sound like it. We forgot to add our executor,
3:46:013 hours, 46 minutes, 1 secondbut it's good because something tried to trigger the executor. So, instead of our triggers, we have Google form trigger and we have executor.ts.
3:46:123 hours, 46 minutes, 12 secondsBut yeah, we never actually use this. If you search, we don't use it absolutely anywhere in our code except in its definition.
3:46:223 hours, 46 minutes, 22 secondsSo let's go ahead and uh I think this is in executions.
3:46:293 hours, 46 minutes, 29 secondsUh maybe not.
3:46:343 hours, 46 minutes, 34 secondsLet me go ahead and try and find. Okay, I think I know the name of the file. All right, it is in source features executions lib executor registry.
3:46:463 hours, 46 minutes, 46 secondsUh yes, we have this to-do that we have to do. I will take care of that. But let's add a node type dot Google form
3:46:553 hours, 46 minutes, 55 secondstrigger and let's use Google form trigger executor. Make sure you have imported it.
3:47:033 hours, 47 minutes, 3 secondsAnd I think that now third try. I think this should work fine. Let's refresh for good luck. Oh, there we go. It
3:47:113 hours, 47 minutes, 11 secondsretrieded. It retried itself and then it worked. That's great. But let's let's
3:47:183 hours, 47 minutes, 18 secondstry ourselves again from scratch. So, I'm going to go ahead and click submit another response. And I'm going to do httpsc codewithantonio.com.
3:47:293 hours, 47 minutes, 29 secondsSubmit.
3:47:313 hours, 47 minutes, 31 secondsLet's wait. Let's wait. It should highlight any second now. Let's see.
3:47:393 hours, 47 minutes, 39 secondsThere we go. Finally, it works. We successfully triggered using a third-party service. And let's go ahead
3:47:473 hours, 47 minutes, 47 secondsand take a look. Instead of our Google form trigger, we have Google form variable. We have the form ID, form
3:47:543 hours, 47 minutes, 54 secondstitle, we have raw data, we have respondent, well, we don't have respondent email because we didn't make it required in the Google form, but we
3:48:033 hours, 48 minutes, 3 secondsdo have responses. What endpoint should I fetch? Like this.
3:48:093 hours, 48 minutes, 9 secondsSo if I am correct, the way I could now do this is by using
3:48:193 hours, 48 minutes, 19 secondsGoogle form dot let me see dotresponses
3:48:283 hours, 48 minutes, 28 secondsand then quoting this.
3:48:353 hours, 48 minutes, 35 secondsI think I if this doesn't work, it's probably because of the white space. So, I should
3:48:423 hours, 48 minutes, 42 secondsrename the question to be a single uh word. But let's try it. Let's me go ahead and click save here.
3:48:523 hours, 48 minutes, 52 secondsUh okay, I see.
3:49:003 hours, 49 minutesLet's go inside of HTTP request dialogue.ts. DSX and let's go inside of the form schema
3:49:083 hours, 49 minutes, 8 secondshere. Yeah, I think [snorts] it's complicated. Yeah, but let's make it a string and let's go
3:49:173 hours, 49 minutes, 17 secondsahead and chain this to be at least required like this.
3:49:263 hours, 49 minutes, 26 secondsSo yeah, end point will be any string.
3:49:313 hours, 49 minutes, 31 secondsAnd I think that now this save should work.
3:49:343 hours, 49 minutes, 34 secondsAnd let's click save. And we can refetch now. So now you can see that basically when the form
3:49:433 hours, 49 minutes, 43 secondsis submitted, we're going to read from the context Google form.responses and specifically that question.
3:49:513 hours, 49 minutes, 51 secondsAnd now let's go ahead and try and make it more fun. So I'm going to go ahead and submit my form again. So submit another response. What endpoint should I
3:49:593 hours, 49 minutes, 59 secondsfetch? I'm going to use https JSON placeholder users one. And I will click submit.
3:50:063 hours, 50 minutes, 6 secondsI have no idea if this is going to work or not because of the white space in the
3:50:123 hours, 50 minutes, 12 secondsquestion name. So let's see. Yeah, it does not work. I'm guessing because of that specifically. Let's see. Yes, it cannot do that.
3:50:263 hours, 50 minutes, 26 secondsSo, can I make it simpler by calling this URL? Save.
3:50:353 hours, 50 minutes, 35 secondsSubmit another response. Now, it's called URL. So, I think that I can just modify this to be well, I think it
3:50:433 hours, 50 minutes, 43 secondsshould be just URL now because it's just the name of that question. So, let me save that.
3:50:523 hours, 50 minutes, 52 secondsI'm going to do another refresh here. I mean, at this point, what we wanted to implement for this chapter is finished.
3:50:593 hours, 50 minutes, 59 secondsI'm just trying to make some fun conclusion before we wrap up the chapter. So, let's go ahead. Fingers
3:51:053 hours, 51 minutes, 5 secondscrossed. There we go. Perfect. So, if we've done this correctly, HTTP request should fetch the first user. And that's
3:51:143 hours, 51 minutes, 14 secondsexactly what it did. It fetched the user with an ID of one because that is exactly what we submitted
3:51:223 hours, 51 minutes, 22 secondsfor in the Google form which we can prove right here. Respondent responses answered the URL should be users one.
3:51:323 hours, 51 minutes, 32 secondsAmazing amazing job. You just implemented a thirdparty service trigger to your app. What an amazing job you've
3:51:413 hours, 51 minutes, 41 secondsdone. You've learned so many different things in this one chapter. And yes, I completely forgot about this. I will
3:51:483 hours, 51 minutes, 48 secondsmake sure that we resolve that. So, let's go ahead and let's finally merge this thing now, shall we? So, 22 Google
3:51:563 hours, 51 minutes, 56 secondsform trigger. I'm going to go ahead and open a new branch here. 22 Google form trigger.
3:52:063 hours, 52 minutes, 6 secondsThere we go. I'm going to go ahead and stage all 20 of my files here, including
3:52:143 hours, 52 minutes, 14 secondsthe new MROS. If you didn't change that, you might have 19, 18 vinyls. I don't know. But yes, these ones should be the
3:52:213 hours, 52 minutes, 21 secondsimportant ones. Let's go ahead and do 22 Google form trigger commit. And let's go
3:52:293 hours, 52 minutes, 29 secondsahead and publish the branch. Now, as always, let's go ahead ahead and open a
3:52:363 hours, 52 minutes, 36 secondsnew pull request. And since this was a big one, let's go ahead and review it.
3:52:443 hours, 52 minutes, 44 secondsAnd here we have the review by code rabbit. So new features, we added Google form trigger support. Workflows can now
3:52:523 hours, 52 minutes, 52 secondsbe triggered by Google form submissions with web hook configuration and real-time status monitoring.
3:52:583 hours, 52 minutes, 58 secondsEnhancements. We added Angro integration to development environment for local web hook testing. Improvements. Relaxed
3:53:063 hours, 53 minutes, 6 secondsendpoint validation to accept non URL string inputs. This refers to our last change where we basically allowed the
3:53:133 hours, 53 minutes, 13 secondsentire endpoint URL field to be a variable otherwise it would not work. So let's take a look at the sequence
3:53:213 hours, 53 minutes, 21 secondsdiagram even though I think it is pretty simple. So Google form makes a post request to forward/appi web hooks Google
3:53:293 hours, 53 minutes, 29 secondsform with required workflow ID and form data. We then proceed that information to send workflow execution which fires
3:53:383 hours, 53 minutes, 38 secondsthe injust background job. We then execute Google form trigger which is very simply used to publish the loading
3:53:453 hours, 53 minutes, 45 secondsstatus and uh forward the context to whatever is the nest next topologically sorted node
3:53:543 hours, 53 minutes, 54 secondsas per some comments in here. Uh it says that this script assumes authentication is already configured. uh but this
3:54:023 hours, 54 minutes, 2 secondsprerequisite isn't documented. So yes, all of this is true. If your users, if you will, you know, give this source
3:54:103 hours, 54 minutes, 10 secondscode to someone, you should probably tell them that Enro is required and that they need to have Enro set up. Another
3:54:173 hours, 54 minutes, 17 secondsthing it mentions here is that uh Enro URL parameter suggest a reserved domain configuration that is not Angro Pro
3:54:253 hours, 54 minutes, 25 secondsfeature. So yes, multiple domains are but single domain is not. So yes, it's
3:54:333 hours, 54 minutes, 33 secondsfine to have this on free tier. In here, it is warning us that technically anything can access this web hook right
3:54:403 hours, 54 minutes, 40 secondsnow, which is completely true. So I'm going to see if there is a simple way I can show you how to authorize your web
3:54:473 hours, 54 minutes, 47 secondshooks. But if you're interested, there is this service called uh Swix Web Hooks,
3:54:543 hours, 54 minutes, 54 secondswhich I know Clerk uses to protect their endpoints. So it could be something you could explore for
3:55:013 hours, 55 minutes, 1 secondproduction use basically web cooks as a service. For now let's just focus on this. So yes right now anyone could
3:55:083 hours, 55 minutes, 8 secondsaccess this. Uh I will try to implement something simple. So at least you have to know the secret to access it which
3:55:163 hours, 55 minutes, 16 secondswill be enough to not make this essentially a public endpoint. It's going to work something like this. Yeah.
3:55:243 hours, 55 minutes, 24 secondsAnd in here it noticed a typo. I said container. I should set contain
3:55:313 hours, 55 minutes, 31 secondsin here. We have an invalid string that we have to replace web hook URL with the web hook URL from above when it actually
3:55:393 hours, 55 minutes, 39 secondsembeds that in the copy button. So we can remove that part. Correct. In here
3:55:463 hours, 55 minutes, 46 secondsas in the previous uh pull requests we don't handle any errors here. So yeah we could wrap that instead of try catch and
3:55:553 hours, 55 minutes, 55 secondsthen uh catch errors. And in here it's telling us that node.tsx should have use client. Uh since our
3:56:033 hours, 56 minutes, 3 secondsprevious ones didn't have it, I think we don't have to add it here simply because its parent component is already a client component.
3:56:123 hours, 56 minutes, 12 secondsAnd in here it's basically telling us the same thing that it did in the uh web hook part since this is the Google apps
3:56:203 hours, 56 minutes, 20 secondsscript. later when we add some kind of validation to that web hook, we should also include authorization property here so that it can access it.
3:56:323 hours, 56 minutes, 32 secondsAll right, so great great comments from code rabbit. Some serious security issues were caught up here. Let's go
3:56:403 hours, 56 minutes, 40 secondsahead and merge that pull request. Go inside of main and make sure to click on synchronize changes. This will synchronize your main bridge with your
3:56:493 hours, 56 minutes, 49 secondsnewly merged one. Click on the graph to convince yourself that 22 was the latest merged one. Amazing amazing job. So very
3:56:593 hours, 56 minutes, 59 secondsuh well I wouldn't say challenging but complex chapter with some new elements like Google script and learning how all
3:57:083 hours, 57 minutes, 8 secondsof that works. So we added Google form trigger node dialogue executed realtime channel and web hook. We created a
3:57:163 hours, 57 minutes, 16 secondsGoogle form and we even discovered this appcript thing we pushed to GitHub and reviewed the pull request. Amazing,
3:57:233 hours, 57 minutes, 23 secondsamazing job. And see you in the next chapter.
Chapter 7: 23 Stripe Trigger
3:57:273 hours, 57 minutes, 27 secondsIn this chapter, we're going to add another trigger to our project. Just like we've added the Google form trigger, we're now going to add the
3:57:353 hours, 57 minutes, 35 secondsStripe trigger. Basically, when certain Stripe events reach our application's web hook, we're going to initiate the
3:57:433 hours, 57 minutes, 43 secondsworkflow based on that workflow ID. But before we do that, let's go ahead and resolve one TypeScript error that I keep postponing.
3:57:543 hours, 57 minutes, 54 secondsLet's go ahead inside of our executor registry.
3:57:583 hours, 57 minutes, 58 secondsAnd in here, we have a problem with our HTTP request. So, what I'm going to do
3:58:053 hours, 58 minutes, 5 secondsis I'm going to go inside of the HTTP request executor here, which you can find inside of source features, executions, components, HTTP request folder, and then find the executor.
3:58:173 hours, 58 minutes, 17 secondsLet's go ahead and bring back the optional question marks here. This will then resolve the problem right here. So,
3:58:243 hours, 58 minutes, 24 secondswe can remove the to-do, but now we have a problem inside.
3:58:303 hours, 58 minutes, 30 secondsOne easy way of fixing this is instead of doing uh validation checks outside of
3:58:373 hours, 58 minutes, 37 secondsstep run, let's simply do it inside. So the reason this needs to work is
3:58:473 hours, 58 minutes, 47 secondsTypeScript flow control works in a very specific way. Even though we just validated that data method exists, that
3:58:563 hours, 58 minutes, 56 secondsvariable name exists and that endpoint exists, there is nothing guaranteeing us
3:59:013 hours, 59 minutes, 1 secondthat once this step.run happens, data itself won't change. That's why in here it still thinks it can be undefined.
3:59:123 hours, 59 minutes, 12 secondsSame with the endpoint. It still thinks it can be undefined. So one easy way of fixing this is just by moving all of
3:59:203 hours, 59 minutes, 20 secondsthese if checks inside of step.r run. So let's go ahead and add
3:59:283 hours, 59 minutes, 28 secondsthem here. And you can see that the moment we add them, all of the errors go away. So it's actually that simple to
3:59:363 hours, 59 minutes, 36 secondsresolve this. And now when you hover over data endpoint, it's a string method. It's uh I think it the error is no longer here.
3:59:473 hours, 59 minutes, 47 secondsSo I think it's just showing us options method. Okay. Yeah, I see. But the method itself, yes, it definitely exists.
3:59:573 hours, 59 minutes, 57 secondsPerfect.
3:59:593 hours, 59 minutes, 59 secondsAnd same thing for the variable name, which was the problematic one.
4:00:034 hours, 3 secondsBasically, it's no longer causing us any errors. I think that if you did variable name here, data variable name, and
4:00:114 hours, 11 secondshovered over this, there we go. It tells you it's a string.
4:00:164 hours, 16 secondsSo just by moving the if checks inside of the scope of this function, we fix TypeScript flow control. And now it
4:00:254 hours, 25 secondsknows that these must exist because they can no longer be mutated after these if
4:00:314 hours, 31 secondschecks. Perfect. So let's go ahead and close that. Now that we have this ready, let's go ahead and let's implement the
4:00:404 hours, 40 secondsStripe trigger. So, this will be quite simple as we've recently just implemented the Google form trigger.
4:00:484 hours, 48 secondsLet's go ahead and copy most of the files. I'm going to go inside of features triggers. I'm going to copy Google form trigger and I'm going to
4:00:564 hours, 56 secondspaste it in the components. I'm going to rename this to stripe trigger.
4:01:024 hours, 1 minute, 2 secondsInstead of stripe trigger, let's go ahead and modify all of these files. I think that we can already delete the utils because there will be no Google
4:01:114 hours, 1 minute, 11 secondsform script. So let's remove the entire utils file. Then let's go inside of node of the new stripe trigger. And let's go ahead and rename this to stripe trigger.
4:01:244 hours, 1 minute, 24 secondsUh is it called a node in the end? I just want to be consistent. Yes, it has the keyword node at the end. So, let's call it stripe trigger node. Perfect.
4:01:374 hours, 1 minute, 37 secondsLet's go ahead and change this to stripe. And let's do when stripe event is captured or anything
4:01:474 hours, 1 minute, 47 secondslike that. later. If you want to be more specific, uh for example, you could add a description which will be based on the
4:01:564 hours, 1 minute, 56 secondstrigger dialogue where users could choose whether they want to listen to uh invoice, customer,
4:02:054 hours, 2 minutes, 5 secondspurchase, failed, right? Any specific events. So in this chapter, I'm just going to show you the kind of overall
4:02:134 hours, 2 minutes, 13 secondsidea of how you would do this and then you can specialize it into one specific case or allow the user to select what
4:02:214 hours, 2 minutes, 21 secondscase they want. That's why I'm doing such a broad description here. And now we have to change this. So instead of
4:02:284 hours, 2 minutes, 28 secondsusing Google form.svg, go ahead inside of my nodebased assets folder. And in the images here, you should find stripe.svg. SVG.
4:02:394 hours, 2 minutes, 39 secondsOnce you have stripes SVG, go inside of public logos and add it here.
4:02:454 hours, 2 minutes, 45 secondsSo, just go ahead and add it here. And you should have stripe.svg inside. Perfect.
4:02:534 hours, 2 minutes, 53 secondsUh, oops, I added two of them. Now, let's go ahead back inside of our node.
4:02:594 hours, 2 minutes, 59 secondsDXX for the stripe trigger. Make sure you are in the correct one. And let's change this to stripe.s. SVG and I can
4:03:094 hours, 3 minutes, 9 secondsleave this as is. Now let's go ahead and add it to our node components. I think
4:03:154 hours, 3 minutes, 15 secondsthis is inside of source config folder node- components.
4:03:224 hours, 3 minutes, 22 secondsUh and then we have to just copy and paste this and change this to be stripe trigger. Obviously we have an error here
4:03:304 hours, 3 minutes, 30 secondsbecause we haven't added the stripe type. But let's just prepare this with stripe trigger node.
4:03:364 hours, 3 minutes, 36 secondsNow let's go and set up our schema.prisma and let's add stripe trigger. Once we add that, let's go
4:03:444 hours, 3 minutes, 44 secondsahead and do npx prisma migrate div. And let's go ahead and give it a name of stripe trigger node.
4:03:524 hours, 3 minutes, 52 secondsSo very simply stripe trigger node. And after you do that, it should synchronize the database.
4:03:594 hours, 3 minutes, 59 secondsAs always, I recommend restarting your next server, your ines server, and even Enro wouldn't hurt. Uh, let me just go
4:04:094 hours, 4 minutes, 9 secondsahead and quit the entire thing and do npm rundev all.
4:04:144 hours, 4 minutes, 14 secondsLooks like Enro was running twice. So, there we go. Now, it's fixed.
4:04:214 hours, 4 minutes, 21 secondsGreat. Now that I have the stripe trigger here, I should no longer have the error inside of here. If you do just restart your VS code or your TypeScript entirely.
4:04:324 hours, 4 minutes, 32 secondsNow we have to go inside of components instead of node selector and we have to copy Google form trigger. Change this to stripe trigger and use the stripe SVJ.
4:04:454 hours, 4 minutes, 45 secondsLet's go ahead and do stripe event here.
4:04:484 hours, 4 minutes, 48 secondsAnd let's go ahead and change the runs the flow when a stripe event
4:04:554 hours, 4 minutes, 55 secondsis captured or anything that you feel is sufficient to explain how this workflow will be triggered. Let's go ahead and
4:05:044 hours, 5 minutes, 4 secondsrefresh our app to make sure everything is working. Every time you restart Nex.js, uh, you should do this. And looks like when I deleted that utilus
4:05:134 hours, 5 minutes, 13 secondsfolder inside of my Stripe, it messed up the components. And inside of
4:05:224 hours, 5 minutes, 22 secondsuh Stripe trigger right here, dialogue.dsx, it uses generate Google form scripts. So just remove that.
4:05:334 hours, 5 minutes, 33 secondsAnd let's go ahead and remove the entire on click here like this.
4:05:404 hours, 5 minutes, 40 secondsThis way we shouldn't have any errors.
4:05:424 hours, 5 minutes, 42 secondsPerfect. And now when we click here, we should have a stripe event here. Runs the flow when a stripe event is
4:05:494 hours, 5 minutes, 49 secondscaptured. There we go. When stripe event is captured. Perfect. So we can now visually add stripe trigger to our app.
4:05:594 hours, 5 minutes, 59 secondsNow let's go ahead and create the proper dialogue for it.
4:06:044 hours, 6 minutes, 4 secondsSo the dialogue itself will actually be quite similar to the one in the Google forum trigger.
4:06:104 hours, 6 minutes, 10 secondsLet's go ahead and make sure we rename it first. Instead of Google forum trigger, this will be Stripe trigger dialogue. And we are still going to use
4:06:204 hours, 6 minutes, 20 secondsthe params. We still need the workflow ID and we still need to generate the web hook URL. But instead of going to web
4:06:274 hours, 6 minutes, 27 secondshooks Google form, we're going to go to web hooks stripe.
4:06:314 hours, 6 minutes, 31 secondsCopy the clipboard function. can stay exactly as it is. And now let's just change the title and the description to describe exactly what we are doing in
4:06:404 hours, 6 minutes, 40 secondsregards to the Stripe event. So Stripe trigger configuration.
4:06:454 hours, 6 minutes, 45 secondsAnd let's go ahead and change the description to something useful.
4:06:484 hours, 6 minutes, 48 secondsConfigure this web hook URL in your Stripe dashboard to trigger this workflow on payment events. Obviously again a broad description. Later you can
4:06:574 hours, 6 minutes, 57 secondsspecify this to be something specific to make it a bit more useful to your viewers. I mean to your users uh these fields will be exactly the same. There's
4:07:054 hours, 7 minutes, 5 secondsnothing we have to change here. And for the setup instructions, well, we should just, you know, change what we have to do. So, I'm just going to go ahead and
4:07:134 hours, 7 minutes, 13 secondsshow you. The first step will be open your Stripe dashboard. After that, we're going to go ahead and go to developers
4:07:214 hours, 7 minutes, 21 secondsweb hooks. Then we're going to add click add endpoint. We're then going to paste
4:07:284 hours, 7 minutes, 28 secondsthe endpoint which users will see in the input above.
4:07:324 hours, 7 minutes, 32 secondsUsers will then have to specify which events they want to listen for. For example, payment intent succeeded. And
4:07:404 hours, 7 minutes, 40 secondslet's go ahead and tell them to copy and save the signin secret.
4:07:454 hours, 7 minutes, 45 secondsAnd then uh in here we have the Google apps script which we can completely remove because no such thing exists for
4:07:524 hours, 7 minutes, 52 secondsthe Stripe event. And for the available variables here, uh, you can be as creative as you want. For example, I'm
4:08:014 hours, 8 minutes, 1 secondjust going to go ahead and add a few here. So, instead of this unordered list, I'm just going to remove the entire
4:08:104 hours, 8 minutes, 10 secondscontent inside so it's empty. For example, one thing you can do is the payment amount
4:08:174 hours, 8 minutes, 17 secondsusing the list element, the code element class name bg background px1 py 0.5
4:08:244 hours, 8 minutes, 24 secondsrounded and just render stripe dot amount because stripe will be the name of the variable where we're going to
4:08:314 hours, 8 minutes, 31 secondsstore the initial context of and that will be the payment amount. And then you can just go ahead and add a bunch of these for anything useful. for example,
4:08:414 hours, 8 minutes, 41 secondscurrency or maybe customer ID or you could just show the users how
4:08:504 hours, 8 minutes, 50 secondsthey can access the entire Stripe object by using our JSON helper. So again, this is just UI helpers. This is this does it doesn't matter if you make a typo here.
4:09:004 hours, 9 minutesIt's just to make it easier for your users. Another useful one might be the stripe event stripe event type. So they can see
4:09:094 hours, 9 minutes, 9 secondsexactly what happened. Great. So once we have this, let me see. Can I remove anything? I think everything here is
4:09:174 hours, 9 minutes, 17 secondsready to go. We can now go inside of the node.tsx and we can change this to be stripe trigger dialogue. Let's go ahead and use it right here. There we go.
4:09:294 hours, 9 minutes, 29 secondsAnd immediately now you can see stripe trigger configuration. Uh in here it uses web hooks stripe. Perfect. I can
4:09:364 hours, 9 minutes, 36 secondsclick copy here. Setup instructions include the stripe dashboard. Uh and available variables are listed here.
4:09:444 hours, 9 minutes, 44 secondsPerfect.
4:09:454 hours, 9 minutes, 45 secondsSo what we have to do now is obviously update the node status so it uses the uh Stripe channel and not the Google form channel.
4:09:564 hours, 9 minutes, 56 secondsSo, that shouldn't be too hard. Let's go ahead and go inside of ingest channels.
4:10:024 hours, 10 minutes, 2 secondsCopy Google form. Paste it here. Rename this to Stripe Trigger. Go inside of your newly created Stripe trigger. Go
4:10:104 hours, 10 minutes, 10 secondsahead and change this to replace all instances of Google form with Stripe.
4:10:174 hours, 10 minutes, 17 secondsSo, Stripe trigger channel name again.
4:10:214 hours, 10 minutes, 21 secondsStripe trigger execution. And this will be stripe trigger channel. Everything
4:10:284 hours, 10 minutes, 28 secondselse will stay exactly the same. Once we have uh stripe trigger, let's go ahead inside of ingest functions.ds,
4:10:364 hours, 10 minutes, 36 secondslet's make sure to register the new stripe trigger channel. Just make sure you have imported this.
4:10:454 hours, 10 minutes, 45 secondsGreat. Once we have that, we can go ahead inside of well back where we created this inside
4:10:524 hours, 10 minutes, 52 secondsof features triggers stripe trigger actions.ts and let's just modify it. Right? So
4:11:014 hours, 11 minutes, 1 secondimmediately we can change this import to be from stripe trigger stripe trigger channel type of stripe trigger channel.
4:11:124 hours, 11 minutes, 12 secondsUse stripe channel here. Let's go ahead and rename all instances of Google form to be Stripe.
4:11:204 hours, 11 minutes, 20 secondsAnd I think that should be enough.
4:11:224 hours, 11 minutes, 22 secondsPerfect. Now, obviously, we have an error here because we have to go back inside of the node of the stripe trigger
4:11:284 hours, 11 minutes, 28 secondsand we have to import stripe fetch stripe trigger real-time token. There we
4:11:344 hours, 11 minutes, 34 secondsgo. And I think oh the only thing we have to change here is the import. So, stripe trigger stripe trigger channel name.
4:11:494 hours, 11 minutes, 49 secondsI think that might be it.
4:11:534 hours, 11 minutes, 53 secondsAnd what I always like to do is I like to right click on the folder stripe trigger and I would like to click find
4:12:004 hours, 12 minutesin folder and uh search for Google form. Yeah.
4:12:084 hours, 12 minutes, 8 secondsAnd now you will see everything that we have left over to fix. So it's the executor one we haven't fixed. Perfect.
4:12:164 hours, 12 minutes, 16 secondsSo immediately change this from Google form to stripe. So I am inside of executor.ds instead of the stripe
4:12:234 hours, 12 minutes, 23 secondstrigger folder. And in here instead of Google form trigger executor it's going to be
4:12:304 hours, 12 minutes, 30 secondsso let me just first resolve the name stripe trigger executor. Then let's change the channel to be stripe trigger.
4:12:404 hours, 12 minutes, 40 secondsStripe trigger channel.
4:12:444 hours, 12 minutes, 44 secondsAll instances should also use stripe trigger channel. The step name should be stripe trigger. There we go.
4:12:544 hours, 12 minutes, 54 secondsAnd now I think we're done. I think if I go ahead and do find in folder again, Google form or Google does not exist as a search result. Perfect.
4:13:064 hours, 13 minutes, 6 secondsSo now I think we might actually be ready to try this.
4:13:104 hours, 13 minutes, 10 secondsSo the only way we can actually try this is since we don't have any transform
4:13:194 hours, 13 minutes, 19 secondsnodes, we can just go ahead and add this just so we have like two nodes available.
4:13:264 hours, 13 minutes, 26 secondsLet's go ahead and just use any here. Just set whatever you want. Click save.
4:13:344 hours, 13 minutes, 34 secondsAnd basically what we have to do now is we have to configure this inside of Stripe to make it work.
4:13:414 hours, 13 minutes, 41 secondsAnd before we actually do this in Stripe, it would be a good idea to create the web hook. I completely forgot that we need the web hook as well. Lucky
4:13:504 hours, 13 minutes, 50 secondsfor us, it is super simple to what we had before. So just go inside of source app API web hooks Google form. Go ahead and copy
4:13:594 hours, 13 minutes, 59 secondsit and paste it here. Rename it to stripe.
4:14:044 hours, 14 minutes, 4 secondsUh if it asks you to update the imports, you can select yes. And then you get this cache, you can save that, close it, and make sure to close that folder. It's
4:14:124 hours, 14 minutes, 12 secondsnot important. Go inside of Stripe route.ts. And let's go ahead and improve this. So this is exactly the same. We
4:14:204 hours, 14 minutes, 20 secondsstill need the workflow ID. And now the form data will be a little bit different. So what I suggest that you
4:14:274 hours, 14 minutes, 27 secondskeep here is at least the event metadata. Basically allowing the user to
4:14:334 hours, 14 minutes, 33 secondsquickly access uh the event ID for example.
4:14:394 hours, 14 minutes, 39 secondsThen you could do event type basically just those useful things. Obviously you would modify this you know how your
4:14:474 hours, 14 minutes, 47 secondsusers are using this and what they expect what they think it's better. uh and then to give them all the other
4:14:534 hours, 14 minutes, 53 secondsuseful things I would suggest using raw like this. And in here they can
4:15:004 hours, 15 minutesbasically access uh customer ID, amount, currency, session ID, payment status, customer email, description of the
4:15:084 hours, 15 minutes, 8 secondsproduct, everything. They you can simplify this for them as much as you want, right? But do keep in mind that
4:15:164 hours, 15 minutes, 16 secondsyou would probably want to do it per stripe event because every stripe event has a different data object. So because of that, you should probably be careful
4:15:244 hours, 15 minutes, 24 secondswith what you pass here. Let's just go ahead and fix uh this. So instead of Google form web hook error, this would
4:15:324 hours, 15 minutes, 32 secondsbe Stripe web hook error fail to process Stripe event.
4:15:384 hours, 15 minutes, 38 secondsStripe event. That's it. Now in order to send workflow execution we have to modify the initial data to be stripe and
4:15:474 hours, 15 minutes, 47 secondsI will just pass in stripe data here and this would be stripe data. There we go.
4:15:544 hours, 15 minutes, 54 secondsPerfect. So once we have this I think we should be ready. So, make sure it is inside of web hooks, stripe. And uh now
4:16:034 hours, 16 minutes, 3 secondswe can go back in here and basically it depending on when you created your stripe account, you might
4:16:124 hours, 16 minutes, 12 secondshave this sandbox thing or maybe you won't have it. Just go ahead and try and create a new account. Keep in mind that I think you can only create like one
4:16:214 hours, 16 minutes, 21 secondssandbox if you don't verify your business. Verifying your business basically means that you need to have an actual business information. So if you're just doing this for development,
4:16:304 hours, 16 minutes, 30 secondsyou have to use the single sandbox that you have or just create a completely new account on Stripe and then you will get this new sandbox thing. And in here you
4:16:394 hours, 16 minutes, 39 secondshave to access web hooks somehow. So I just search for them in here and click web hooks. You can see I already have one so I'm just going to delete it so it
4:16:474 hours, 16 minutes, 47 secondsdoesn't confuse you. And now there are two ways you can do this. You can do it with an actual production ready URL link
4:16:544 hours, 16 minutes, 54 secondswhich would be useful for when you actually deploy this application. But another way would be here test with a
4:17:024 hours, 17 minutes, 2 secondslocal listener here. So in order to make that work you need to download the stripe CLI.
4:17:094 hours, 17 minutes, 9 secondsIt is as easy to do this as Angro. So just go ahead and follow the install the stripe CLI on Mac OS, Windows or Linux.
4:17:184 hours, 17 minutes, 18 secondsSo depending on what you use, you can go ahead and see all the instructions. So in order to check if you did this
4:17:254 hours, 17 minutes, 25 secondscorrectly, go ahead and type Stripe and you shouldn't see any error. Instead, you should see the flags that are available.
4:17:324 hours, 17 minutes, 32 secondsAll right. Now, let me go back here and let's try and trigger an event here.
4:17:394 hours, 17 minutes, 39 secondsLet's try and make that happen. So click test with a local listener here. Let's go ahead and first do Stripe login.
4:17:484 hours, 17 minutes, 48 secondsThere we go. So, go ahead and open this.
4:17:524 hours, 17 minutes, 52 secondsOnce you open it, you should allow access. Just always confirm that what you see here is exactly what you see here. So, you're
4:18:014 hours, 18 minutes, 1 secondnot accidentally allowing access to some other device. You may now close this window. Perfect.
4:18:094 hours, 18 minutes, 9 secondsThere we go. So, this step is now correct. And now we have to do the other
4:18:154 hours, 18 minutes, 15 secondsstep which would basically be 3000 API web hooks forward slash
4:18:244 hours, 18 minutes, 24 secondsuh stripe and yes I think we also need the exact web basically this right here.
4:18:324 hours, 18 minutes, 32 secondsSo just copy that part too. So forward to and just this entire URL.
4:18:404 hours, 18 minutes, 40 secondsObviously in production this would be much easier. your user would just copy this. They would go ahead and actually
4:18:484 hours, 18 minutes, 48 secondsadd the web hook endpoint here. But we can't do that because it cannot target the local host. So what you can do is
4:18:554 hours, 18 minutes, 55 secondsyou can use your angro forwarded URL and then add it here as the actual destination. But I think it's just
4:19:024 hours, 19 minutes, 2 secondssimple to do this too. Uh okay, no matches found.
4:19:084 hours, 19 minutes, 8 secondsUh maybe we need to like wrap this like that. Does that work?
4:19:164 hours, 19 minutes, 16 secondsOkay. So, now that we are connected here, let me just see. We should try and
4:19:254 hours, 19 minutes, 25 secondstrigger an event. So, I'm going to open a new tab and let's see, did I do this correctly or not? So, Stripe trigger payment intent succeeded.
4:19:354 hours, 19 minutes, 35 secondsUh, and looks like it is receiving something, but it's receiving back 500.
4:19:414 hours, 19 minutes, 41 secondsSo, I don't think that this event fired. Uh, is this the one that just happened?
4:19:484 hours, 19 minutes, 48 secondsI'm not sure. I'm trying to figure out. Oh, no. Executor found for not Stripe trigger.
4:19:564 hours, 19 minutes, 56 secondsOh, I think everything is actually working. We're just making one mistake here.
4:20:024 hours, 20 minutes, 2 secondsUh, we forgot to do inside of Stripe features executions lib executor
4:20:094 hours, 20 minutes, 9 secondsregistry. We forgot to add node type stripe trigger. Stripe trigger executor.
4:20:194 hours, 20 minutes, 19 secondsMake sure you import it. So the same mistake I made with the Google form trigger.
4:20:244 hours, 20 minutes, 24 secondsAnd I think that now it should actually work. So let's just go ahead and focus on this. So it should just trigger this.
4:20:334 hours, 20 minutes, 33 secondsAnd then this should trigger that. As simple as uh well that. Oh yeah. You need to have this forwarding here.
4:20:424 hours, 20 minutes, 42 secondsAnd let's go ahead and do this again.
4:20:464 hours, 20 minutes, 46 secondsLet's wait for a second. And there we go. So, we successfully uh triggered our app. Looks like when we run this, it run
4:20:534 hours, 20 minutes, 53 secondsa few times. That's probably because it received, as you can see, a lot of events. Uh, I think that's
4:21:014 hours, 21 minutes, 1 secondprobably because inside of route DS in the stripe here,
4:21:084 hours, 21 minutes, 8 secondsum, what I'm doing here is just I'm accepting like anything here, but you will probably want to like limit this to
4:21:164 hours, 21 minutes, 16 secondsspecific events that your user required with that workflow ID, of course, and then it shouldn't react that many times
4:21:244 hours, 21 minutes, 24 secondsbecause I'm not sure if payment intent succeeded only fires once. once or multiple times because we can see that in here uh it fires a lot of time. Now I can still see 500 here.
4:21:374 hours, 21 minutes, 37 secondsI think that's because I always need to return something. So return next response.json.
4:21:464 hours, 21 minutes, 46 secondsLet's go ahead and do success true. And let's go ahead and add status here of 200.
4:21:594 hours, 21 minutes, 59 secondsOne thing I forgot to tell you, yes, is that pep hooks always need to end with some kind of successful return, otherwise they will keep repeating. So,
4:22:084 hours, 22 minutes, 8 secondslet's try this again. So, I'm running this locally.
4:22:124 hours, 22 minutes, 12 secondsI'm going to try and trigger this again since I already know it's working. There we go. Now, we have 200. Perfect. And this is still working. Great.
4:22:234 hours, 22 minutes, 23 secondsSo yes, make sure that you add that here and you should probably also add it in the Google form one. So always, you
4:22:314 hours, 22 minutes, 31 secondsknow, end up saying some kind of success message so they know they don't have to retry the web hook because there's a limit to how long they will retry before
4:22:404 hours, 22 minutes, 40 secondsthey turn it off. And it is that easy to do it with Stripe. So if you're confused like why do we need this local listener?
4:22:484 hours, 22 minutes, 48 secondsWell, because it's easier to demonstrate in development mode, but you don't have to use it. So, if I just go ahead and
4:22:564 hours, 22 minutes, 56 secondsuh close this, what I would usually do is in here, I wouldn't see localhost 3000. I would see my domain.com or you
4:23:044 hours, 23 minutes, 4 secondscould use the angro public domain. And then inside of here, you would click add destination. Your users would click
4:23:124 hours, 23 minutes, 12 secondsthat. Uh I'm not sure, not too familiar with Stripe. I think it should be your account. They will select the events
4:23:204 hours, 23 minutes, 20 secondsthey want to listen to. I don't know. Uh I think the most popular ones are uh inside of checkout checkout session
4:23:284 hours, 23 minutes, 28 secondscompleted. Right? When someone successfully purchases something, they will select web hook endpoint and then they would basically paste that URL with
4:23:374 hours, 23 minutes, 37 secondsyour actual domain. That would be here, right? But in here you can see it noticed that it's a local host. So if
4:23:454 hours, 23 minutes, 45 secondsyou're using log host you need to use stripe CLI. So even if you want to use your angro one
4:23:544 hours, 23 minutes, 54 secondsyou could do that but then you have another problem.
4:23:574 hours, 23 minutes, 57 secondsI mean problem it's not a problem it's just hard to test even if you added this. So nodebase web hook test
4:24:064 hours, 24 minutes, 6 secondsit would be a bit difficult to like test it. Oh you can't do send test events.
4:24:114 hours, 24 minutes, 11 secondsOkay maybe not too difficult. So I think if I refresh here, it should work even if I send the test event from here.
4:24:194 hours, 24 minutes, 19 secondsOkay. So still it's still telling me to do it through the CLI, right? Testing the events is difficult. You would have
4:24:264 hours, 24 minutes, 26 secondsto set up an entire Stripe app to make it work. But let me see if I can just like fire this event and see if that works.
4:24:354 hours, 24 minutes, 35 secondsLet's wait a second.
4:24:394 hours, 24 minutes, 39 secondsUh, looks like not again. I'm not sure if this is because of the way I maybe I have to log in again.
4:24:504 hours, 24 minutes, 50 secondsLet me go ahead and check inside of the events here.
4:24:564 hours, 24 minutes, 56 secondsThis is something else. This is not that I think.
4:25:044 hours, 25 minutes, 4 secondsYeah, I think this is it's just being confused now because I logged in to test it locally and now I didn't log in again
4:25:124 hours, 25 minutes, 12 secondsto test it here. So, node web hook test uses HTTPS. Then my angro URL web hook
4:25:204 hours, 25 minutes, 20 secondsstripe with this specific workflow ID that I'm in. That's important. And if I click send test events, let's go ahead
4:25:274 hours, 25 minutes, 27 secondsand try and stripe login again. Maybe I have to do it again.
4:25:354 hours, 25 minutes, 35 secondsJust trying to prove that it still works, but maybe I'm missing something obvious. I'm I mean, the code definitely works. That's not the problem.
4:25:454 hours, 25 minutes, 45 secondsI'm just trying to bring it as close to production as possible for you. Uh let's see.
4:25:534 hours, 25 minutes, 53 secondsYeah, I'm not sure why it's not working now. Let me see inside of npm here.
4:26:014 hours, 26 minutes, 1 secondhttps web hooks edit destination. So
4:26:094 hours, 26 minutes, 9 secondsthis should be a completely valid endpoint. Let's just see 405 is correct in this case. I should be getting 405
4:26:184 hours, 26 minutes, 18 secondsbecause it's the an invalid method request. I'm not seeing anything new here.
4:26:254 hours, 26 minutes, 25 secondsOh, because I didn't select my events.
4:26:324 hours, 26 minutes, 32 secondsLet me go ahead and try and find the event I'm actually firing. Payment intent succeeded.
4:26:444 hours, 26 minutes, 44 secondsPayment intent.
4:26:514 hours, 26 minutes, 51 secondsThere we go. It's so It's such a bad search function.
4:26:554 hours, 26 minutes, 55 secondsOkay, fifth time is the charm. Let's try the event again.
4:27:014 hours, 27 minutes, 1 secondMaybe now it will work when it listens to the event. There we go. And you can see how it doesn't repeat it now. So,
4:27:094 hours, 27 minutes, 9 secondslooks like yeah, it only repeats in local host version. When it's actually using the URL, it doesn't repeat the
4:27:164 hours, 27 minutes, 16 secondsevents. Perfect. Now obviously in a real world app you would have to protect this endpoint. Now as I said I
4:27:244 hours, 27 minutes, 24 secondswill try to find time to add some like basic protection for our web hooks because they're now publicly available.
4:27:304 hours, 27 minutes, 30 secondsLiterally anyone can uh find a workflow ID and just trigger this endpoint.
4:27:374 hours, 27 minutes, 37 secondsThat's not good, right? So we would have to protect it in some way. Uh with stripe you can actually do it quite easily because your users would simply
4:27:454 hours, 27 minutes, 45 secondshave to copy the signing secret. you would have to allow them to add the signing secret somewhere here right and then in the web hook we will simply
4:27:544 hours, 27 minutes, 54 secondscheck if that signing secret is correct and if it's not break the endpoint someone else try to access this right who is not the user who added stripe uh
4:28:034 hours, 28 minutes, 3 secondsbut if you wanted to do it without that so like a universal protector uh you would have to like generate a secret
4:28:104 hours, 28 minutes, 10 secondsevery time you create a workflow and then you can reuse that kind of authentication flow for all of your web hooks that's something I'm going try and find time for.
4:28:204 hours, 28 minutes, 20 secondsAnd if you want to, you can also use Swix, which is another thing I think I demonstrated already. Uh it's basically
4:28:274 hours, 28 minutes, 27 secondsweb hooks as a service. It's really cool. Uh a lot of like high-profile companies use them as you can see like
4:28:354 hours, 28 minutes, 35 secondsClerk, Brex, these are really like high-profile companies. So, uh if you're looking for production level protection, you could look into six.
4:28:464 hours, 28 minutes, 46 secondsAmazing, amazing job. I think that is everything we wanted to do in this chapter. Let's see. We added the stripe node dialogue executor realtime channel
4:28:564 hours, 28 minutes, 56 secondsweb hook and we managed to trigger a stripe event both through a uh local host and through our uh port forwarded
4:29:044 hours, 29 minutes, 4 secondsAngrock public domain. So we know it's going to work in production as well. So 23 stripe trigger. Let's go ahead and
4:29:124 hours, 29 minutes, 12 secondsmerge that. Create a new branch. 23 Stripe trigger.
4:29:184 hours, 29 minutes, 18 secondsI'm going to go ahead add all of the changes. 23 Stripe trigger commit. And I'm going to publish
4:29:264 hours, 29 minutes, 26 secondsthe branch. And since this was almost identical uh to our previous pull request, we
4:29:334 hours, 29 minutes, 33 secondsdon't have to review it again because we know exactly it's we just literally copied the same number of files, right?
4:29:404 hours, 29 minutes, 40 secondsSo 15 files I have here. We added new event. We wanted added an icon and then we just copied every single thing we had
4:29:484 hours, 29 minutes, 48 secondswith the Google form and we just repurposed it to work with uh Stripe. We
4:29:574 hours, 29 minutes, 57 secondsalso fixed the issue of uh invalid types in the executor registry. But besides
4:30:064 hours, 30 minutes, 6 secondsthat, I don't think there's anything uh worth waiting here. We can just go ahead and merge this.
4:30:154 hours, 30 minutes, 15 secondsBut still it stands what code rabbit told us in the previous chapter that we should protect this endpoints somehow. Right? So the same is true for this one.
4:30:244 hours, 30 minutes, 24 secondsAnd let's go ahead now once we merge it go back to main. Go ahead and click on synchronize changes. Okay. And inside of
4:30:324 hours, 30 minutes, 32 secondsyour source control tab here once it synchronizes open graph and confirm that you have it here. 23 Stripe trigger.
4:30:404 hours, 30 minutes, 40 secondsGreat. So, I believe that marks the end of this chapter. We pushed to GitHub. We reviewed it technically because it's exactly the same as the previous one.
4:30:504 hours, 30 minutes, 50 secondsAmazing job and see you in the next chapter.
Chapter 8: 24 AI Nodes
4:30:544 hours, 30 minutes, 54 secondsIn this chapter, we're going to add AI nodes to our project. So what exactly is the difference between this chapter and
4:31:034 hours, 31 minutes, 3 secondschapter 7 in which we've added AI providers?
4:31:084 hours, 31 minutes, 8 secondsWell, in chapter 7, we've learned how we're going to use AI within this project. In this chapter, we're going to
4:31:174 hours, 31 minutes, 17 secondsliterally create the canvas drag and drop nodes for each of those AI providers that we've added. So, a quick
4:31:254 hours, 31 minutes, 25 secondsreminder, I taught you how to add Gemini, which offers a completely free API key. And on top of that, I told you
4:31:324 hours, 31 minutes, 32 secondsthat you can also use OpenAI, Anthropic, and a million other providers that AI
4:31:384 hours, 31 minutes, 38 secondsSDK offers. AI SDK is well, the SDK for AI that we are using in this project.
4:31:464 hours, 31 minutes, 46 secondsSo, just a quick reminder, let's go ahead and revisit chapter 7 right here.
4:31:524 hours, 31 minutes, 52 secondsAs you can see, that's exactly what I told you. You can use Gemini, which is free, or OpenAI or Anthropic, which will
4:31:594 hours, 31 minutes, 59 secondsset you back a minimum of $5. If you want to use them, sure, but not required. And also, a quick reminder, once you finish this project and you
4:32:084 hours, 32 minutes, 8 secondsactually deploy it, no one will be using your AI API keys. All of your users will
4:32:144 hours, 32 minutes, 14 secondsbe using their API keys. Just to clarify that one more time. And as you can see in here, it's also marked as finished.
4:32:244 hours, 32 minutes, 24 secondsWe set up AI SDK and we even used it within injust. So now when we start
4:32:314 hours, 32 minutes, 31 secondschapter 24, we have some uh already added things for us. So just in case, go
4:32:384 hours, 32 minutes, 38 secondsahead inside of your package. JSON and confirm that you have the AI package. So you should have AI SDK, Google at
4:32:474 hours, 32 minutes, 47 secondsminimum or open AI andropic or maybe Grock, you know, whatever you wanted to use, but you should have at least one here.
4:32:574 hours, 32 minutes, 57 secondsSince AI SDK Google is the free one, I will be mostly focusing on this one, but I will also show you how to add entropic
4:33:064 hours, 33 minutes, 6 secondsand open AAI and I would suggest that you follow through uh with me and implement them as well. Even if you
4:33:144 hours, 33 minutes, 14 secondsdon't have an API key, in fact, if you go inside of your environment file, you will see that I don't have anthropic API
4:33:234 hours, 33 minutes, 23 secondskey. It's completely empty. That's perfectly fine because in the end, it will be our users who are going to provide their own API keys. So just make
4:33:334 hours, 33 minutes, 33 secondssure that you're inside of your dot environment, you have at least one API key for AI, whether that is Google
4:33:424 hours, 33 minutes, 42 secondsgenerative AI or Gemini, Open AI or Anthropic. Just make sure you have at
4:33:494 hours, 33 minutes, 49 secondsleast one. And inside of your package JSON, make sure you have at least one AI SDK provider here. And alongside that,
4:33:584 hours, 33 minutes, 58 secondsyou should also have the AI package itself.
4:34:024 hours, 34 minutes, 2 secondsGreat. Quick reminder, you can use uh the link on the screen to visit a studio.google.com.
4:34:094 hours, 34 minutes, 9 secondsAnd in here you have get API key in the sidebar and you can very quickly create a new one. Uh maybe you have to delete
4:34:174 hours, 34 minutes, 17 secondsyour old one. I'm not sure how does the free tier exactly work here, but at least one API key will be completely free if that's what you need.
4:34:284 hours, 34 minutes, 28 secondsPerfect. Just make sure you have that. And now let's get to implementing this.
4:34:334 hours, 34 minutes, 33 secondsSo the first thing I want to do is I want to add the images for all three of these. So let's go ahead and prepare our
4:34:414 hours, 34 minutes, 41 secondspublic logos folder. Then you can go ahead and visit my nodebase assets folder. You can go inside of images and
4:34:484 hours, 34 minutes, 48 secondsyou should find anthropic gemini and open AI. So let's go ahead and add all three inside of here.
4:34:574 hours, 34 minutes, 57 secondsOnce you add them inside of here, you should have Antropic, Gemini, and last one, OpenAI. Great.
4:35:074 hours, 35 minutes, 7 secondsNow that we have them, let's go ahead and add them inside of our Prisma schema. So, instead of node type, let's go ahead and let's add anthropic.
4:35:184 hours, 35 minutes, 18 secondsThen, let's add Gemini.
4:35:224 hours, 35 minutes, 22 secondsAnd let's add Open AI. Of course, you are free to name this however you prefer, but I would highly suggest that
4:35:304 hours, 35 minutes, 30 secondsyou follow the exact same naming as I am doing so you don't cause yourself any unnecessary bugs or problems. Save this
4:35:394 hours, 35 minutes, 39 secondsfile and then as usual, let's go ahead and do npx prisma migrate dev.
4:35:474 hours, 35 minutes, 47 secondsOnce you get the prompt to enter a name, feel free to add whatever you want. for example, AI nodes schema or AI nodes
4:35:564 hours, 35 minutes, 56 secondstypes and that will synchronize your database with the schema. And as always, whenever you do uh the migration, I
4:36:044 hours, 36 minutes, 4 secondshighly recommend restarting your next server, your ingest and I don't think you need to restart Angro. In fact, we
4:36:124 hours, 36 minutes, 12 secondsare not going to need local tunnel running for this chapter, but if you want to, you can have it running. So
4:36:194 hours, 36 minutes, 19 secondsbasically if you plan on using your Google forms or Slack uh nodes, my apologies, Stripe nodes, you will need
4:36:284 hours, 36 minutes, 28 secondsuh a forwarded uh open tunnel, local tunnel like Angro.
4:36:344 hours, 36 minutes, 34 secondsGreat. So just make sure that works. Go ahead and restart your Nex.js app. So everything is up to date. And now what
4:36:424 hours, 36 minutes, 42 secondswe're going to do is well the same flow that we did before except instead of building uh the trigger we're going to
4:36:514 hours, 36 minutes, 51 secondsbe building an executor. So let's go ahead and let's copy the HTTP request inside of source features executions
4:37:004 hours, 37 minutescomponents. Let's go ahead and copy HTTP request and paste it here. And let's rename it to Gemini.
4:37:094 hours, 37 minutes, 9 secondsUh, and while we are here, let's also immediately do the same inside of the ingest folder. Channels, copy HTTP
4:37:174 hours, 37 minutes, 17 secondsrequest, paste it here, and rename it Gemini.
4:37:224 hours, 37 minutes, 22 secondsSo now we have the real time channel for Gemini. I'm going to go ahead and change this to Gemini channel name.
4:37:324 hours, 37 minutes, 32 secondsAnd this will be called Gemini execution. Everything else will stay the same except of course the name of the variable right here Gemini channel.
4:37:454 hours, 37 minutes, 45 secondsOnce you have created the Gemini channel, immediately go inside of ingest functions.ts and register the new Gemini channel so you don't forget to do that.
4:37:574 hours, 37 minutes, 57 secondsPerfect.
4:37:594 hours, 37 minutes, 59 secondsNow we can go ahead and focus back inside of the Gemini folder which we've copied. So let's head inside of node.tsx.
4:38:104 hours, 38 minutes, 10 secondsAnd basically in here, yes, we again have the data because we will need some data here. What I would suggest is not
4:38:194 hours, 38 minutes, 19 secondschanging anything inside. Instead, let's just focus on renaming this so it's easier to refactor it later. Gemini node
4:38:284 hours, 38 minutes, 28 secondsdata. This will be Gemini node type using the Gemini node
4:38:364 hours, 38 minutes, 36 secondsdata from above. And then use the Gemini node type in here. Let's rename this to Gemini node.
4:38:454 hours, 38 minutes, 45 secondsAnd let's leave this as is for now. No need to change it. Let's just focus on
4:38:514 hours, 38 minutes, 51 secondsthe base execution node and the name here. So for the name, I'm just going to
4:38:584 hours, 38 minutes, 58 secondsset it to be Gemini. And for the icon, I'm going to go ahead and use logos Gemini.
4:39:074 hours, 39 minutes, 7 secondsSVG.
4:39:084 hours, 39 minutes, 8 secondsAnd let's go ahead and fix this. So Gemini node dot display name Gemini node. And let me just quickly
4:39:174 hours, 39 minutes, 17 secondscheck inside of our triggers. Do we even have that display name?
4:39:254 hours, 39 minutes, 25 secondsLooks like we don't. Okay. I was just worried that I forgot to rename that or something. If we don't have it and if we don't have any errors, I think everything is fine.
4:39:364 hours, 39 minutes, 36 secondsUh now let's go ahead and add Gemini to our node components uh factory if I can
4:39:434 hours, 39 minutes, 43 secondscall it like that. Inside of source config node components let's go ahead and do node type
4:39:514 hours, 39 minutes, 51 secondsgemini node you should be able to import it from add features executions components gemini
4:39:594 hours, 39 minutes, 59 secondsnode perfect and now we have to go to our node selector inside of source components node selector and let's go
4:40:084 hours, 40 minutes, 8 secondsahead and go inside of our execution nodes let's go ahead and duplicate this
4:40:144 hours, 40 minutes, 14 secondsand let's add the Gemini type. Now the Gemini type uh you can make any description you want really. I'm going
4:40:224 hours, 40 minutes, 22 secondsto use a super simple one. Use Google Gemini to generate text.
4:40:294 hours, 40 minutes, 29 secondsGemini and the icon is going to be forward slash logosmini.svj.
4:40:374 hours, 40 minutes, 37 secondsPerfect. And I think that this already should be able to show you Gemini and you should be able to add Gemini. The only problem is the dialogue of course
4:40:464 hours, 40 minutes, 46 secondsuses the HTTP request configuration. So that's what we're going to be working on. Now let's go ahead and start by
4:40:544 hours, 40 minutes, 54 secondschanging this from HTTP request dialogue to Gemini dialogue. So go inside of the Gemini folder dialogue. DSX.
4:41:044 hours, 41 minutes, 4 secondsAgain, don't focus on the schema. I'll leave that as is. Uh oh yes, I also have
4:41:104 hours, 41 minutes, 10 secondsto do this to-do thing. Basically, yeah, uh I forgot this. Um the reason I
4:41:184 hours, 41 minutes, 18 secondsthought about adding this to the body uh property of HTTP request node is because
4:41:264 hours, 41 minutes, 26 secondswe now have templating. So I thought it would be a good idea to like validate JSON maybe if it's valid or not. I don't
4:41:344 hours, 41 minutes, 34 secondsknow. Maybe we don't even need it. It kind of depends on uh the user experience you want to add, right?
4:41:414 hours, 41 minutes, 41 secondsNevertheless, let's focus on the Gemini folder now. Dialogue component. And let's start by renaming the HTTP request form values to Gemini form values.
4:41:544 hours, 41 minutes, 54 secondsChange this to use the Gemini form values as well. Change this to be Gemini
4:42:014 hours, 42 minutes, 1 seconddialogue. And I think inside we should not have any more errors. Let's just
4:42:084 hours, 42 minutes, 8 secondschange this from the title of HTTP request to be Gemini like that. And for
4:42:154 hours, 42 minutes, 15 secondsthe description um we can just say
4:42:224 hours, 42 minutes, 22 secondsconfigure the AI model and the prompts for this node. And let's do Gemini configuration.
4:42:304 hours, 42 minutes, 30 secondsNow let's go back inside of Gemini folder node.tsx and add Gemini node here.
4:42:384 hours, 42 minutes, 38 secondsLet's go ahead and just import.
4:42:424 hours, 42 minutes, 42 secondsUh yes. So let's do Gemini node and Gemini my apologies not Gemini node Gemini
4:42:504 hours, 42 minutes, 50 secondsdialogue and Gemini form values. So I'm doing something incorrect here. This shouldn't be Gemini node. This should be
4:42:584 hours, 42 minutes, 58 secondsGemini dialogue of course. And this shouldn't be HTTP request form values.
4:43:034 hours, 43 minutes, 3 secondsThis should be Gemini form values. And now you should practically solve all of your errors. You can remove the unused globe icon.
4:43:144 hours, 43 minutes, 14 secondsAnd now you can see that the dialogue says Gemini configuration configure the AI model and the prompts for this node.
4:43:234 hours, 43 minutes, 23 secondsPerfect.
4:43:254 hours, 43 minutes, 25 secondsLet's go ahead and continue developing this dialogue right here. So, uh I want to start by modifying the form schema.
4:43:364 hours, 43 minutes, 36 secondsLet's go ahead and first define all the available models. So, unfortunately, I didn't find a type- safe way to do this.
4:43:454 hours, 43 minutes, 45 secondsSo, I just extracted things that work.
4:43:494 hours, 43 minutes, 49 secondsSo, this kind of might be different for you depending on which AI SDK version you're using. Just a quick reminder. So
4:43:564 hours, 43 minutes, 56 secondsI'm using AI SDK Google 2.0.17 and AI 5.0.60.
4:44:044 hours, 44 minutes, 4 secondsSo at the time of making this tutorial, these are the available models.
4:44:094 hours, 44 minutes, 9 secondsSo even if you're not sure, you can write it exactly like this. And I'm going to show you how you can see which models are available.
4:44:184 hours, 44 minutes, 18 secondsSo the variable name can actually stay the same because every execution thingy should have the variable. Right now
4:44:284 hours, 44 minutes, 28 secondslet's go ahead and change the endpoint to be the model and the model will not be a type of string. It's going to be a type of enum and let's simply add
4:44:364 hours, 44 minutes, 36 secondsavailable models inside. Then let's add system prompt which will be a string and it will actually be completely optional.
4:44:474 hours, 44 minutes, 47 secondsAnd the last one we're going to do is user prompt. This will be a string, but it will be required. So let's go ahead
4:44:574 hours, 44 minutes, 57 secondsand use a shortand user prompt is required. There we go. That's our form schema.
4:45:064 hours, 45 minutes, 6 secondsSo now in the default values, obviously we should reflect that the model should use default values domodel.
4:45:154 hours, 45 minutes, 15 secondsuh or let's fall back to available models first in the array. The system prompt should use default values dots
4:45:244 hours, 45 minutes, 24 secondssystem prompt or an empty string and the user prompt should use user prompt or an empty string as well.
4:45:354 hours, 45 minutes, 35 secondsAnd then you can go ahead and copy this entire thing and do the same thing inside of a form.reset right here.
4:45:434 hours, 45 minutes, 43 secondsNow, let's go ahead and just get rid of some things we don't need. So, uh we do not need any of these. Yes, you can.
4:45:524 hours, 45 minutes, 52 secondsYeah, no need for any watch methods here.
4:45:574 hours, 45 minutes, 57 secondsSo, in order to make this a bit simpler, you can remove this.
4:46:024 hours, 46 minutes, 2 secondsNo need to dynamically change the description anymore.
4:46:054 hours, 46 minutes, 5 secondsOh, actually, wait. That was a cool feature, wasn't it?
4:46:104 hours, 46 minutes, 10 secondsMaybe we can leave that. So, leave watch variable name. Sorry, I just told you you don't have to do it. So, just remove the other ones because this one is cool.
4:46:214 hours, 46 minutes, 21 secondsUh, and inside of the description then, yeah, instead of this, it will most likely be I'm not exactly sure what will
4:46:294 hours, 46 minutes, 29 secondsthe response uh look like. So, I'm kind of guessing right now. Um, let's see.
4:46:374 hours, 46 minutes, 37 secondsMaybe it will just be like text. I'm not sure. We're going to see once we get the ingest output. Now, for this form field,
4:46:464 hours, 46 minutes, 46 secondsuh let's go ahead and remove it entirely. We're not going to need it.
4:46:524 hours, 46 minutes, 52 secondsUh for the end point here, uh let's go ahead and remove that as well.
4:46:594 hours, 46 minutes, 59 secondsand go ahead and just remove the dynamic conditional part for the form field which controls the what was in the HTTP
4:47:084 hours, 47 minutes, 8 secondsrequest request body field like this. So just like make it always available. The reason I'm leaving only this one is
4:47:164 hours, 47 minutes, 16 secondsbecause uses it uses text area. So it's the smallest amount of code we have to modify. So let's just change this to
4:47:244 hours, 47 minutes, 24 secondscall system prompt like this.
4:47:294 hours, 47 minutes, 29 secondsAnd let's go ahead and do system prompt optional to let the user know they don't have to
4:47:384 hours, 47 minutes, 38 secondsdo this. And then let's go ahead and just give a little placeholder here. For example, you are a helpful assistant.
4:47:474 hours, 47 minutes, 47 secondsAnd let's make this smaller like 80 pixels. And the form description will be something useful.
4:47:554 hours, 47 minutes, 55 secondsfor example sets the behavior of the assistant and then use variables for simple values or use JSON variable to
4:48:044 hours, 48 minutes, 4 secondsstringify objects right again this is just instructions for your users I think you can already take a look at this if
4:48:114 hours, 48 minutes, 11 secondsyou go inside of the Gemini node open it we have the variable name and here we have the system prompt and this is how
4:48:174 hours, 48 minutes, 17 secondsthat description ends up rendering as now let's go ahead and let's copy and paste that and let's do The same thing for the user prompt.
4:48:294 hours, 48 minutes, 29 secondsUser prompt like this. Remove the optional part here. Change this to user.
4:48:374 hours, 48 minutes, 37 secondsAnd in here, for example, in the placeholder, you can do something useful like summarize this text. And
4:48:454 hours, 48 minutes, 45 secondsthen maybe use the JSON thingy to let the user know that they can use values inside. There we go.
4:48:554 hours, 48 minutes, 55 secondsThis is how that placeholder looks like.
4:49:004 hours, 49 minutesLet's go ahead and just increase this one a bit since it's more useful. And in the form description, again, you can set something useful. The prompt to send to
4:49:094 hours, 49 minutes, 9 secondsthe AI, use variables for simple values or JSON variable to stringify objects.
4:49:164 hours, 49 minutes, 16 secondsGreat. So, just one more field left here for now. Later we're also going to have a credential dropdown so users can add
4:49:254 hours, 49 minutes, 25 secondstheir own credentials but we're not going to implement that now. Uh what we need to do now is we need to copy this form field.
4:49:354 hours, 49 minutes, 35 secondsWe need to paste it here and we need to modify the model. Right? Let's go ahead and add the form item.
4:49:444 hours, 49 minutes, 44 secondsThe form label will be model. And let's go ahead and let's remove the entire uh
4:49:504 hours, 49 minutes, 50 secondsform control here because what we're actually going to do is we're going to use the select
4:49:584 hours, 49 minutes, 58 secondscomponent. I think we should already have select imported here. So if you don't make sure you have select select content item trigger and value from components UI select.
4:50:094 hours, 50 minutes, 9 secondsSo for the select here, let's go ahead and add two values on
4:50:164 hours, 50 minutes, 16 secondsvalue change and default value. Now inside of the select, we can add the
4:50:224 hours, 50 minutes, 22 secondsactual form control and inside a very simple select trigger with full width
4:50:294 hours, 50 minutes, 29 secondsclass name and select value with placeholder select a model. Outside of the form control, let's render the
4:50:374 hours, 50 minutes, 37 secondsselect content. And inside of select content, we're going to iterate over our constant available models do map model
4:50:474 hours, 50 minutes, 47 secondsand render it in a select item with a key of model and the value of the same thing. And of course, render the actual
4:50:554 hours, 50 minutes, 55 secondsmodel name inside. For the form description, we can simplify it even further. the Google Gemini model to use for this completion.
4:51:064 hours, 51 minutes, 6 secondsSo let's go ahead and check it out now.
4:51:084 hours, 51 minutes, 8 secondsThere we go. I'm just going to zoom out a little bit. So this is how it looks like. Users can now specify the exact Gemini model they want to use. They can
4:51:174 hours, 51 minutes, 17 secondsname their their variable. They can add a system prompt and they can add a user prompt. Amazing. One thing I want to do
4:51:264 hours, 51 minutes, 26 secondsis I want to move the variable field to the top just to be consistent because I feel like that is one of the most important values to have really. And
4:51:344 hours, 51 minutes, 34 secondslet's make uh let's make it familiar for our user to always expect it on the top
4:51:414 hours, 51 minutes, 41 secondsof every configuration form. Where did I move it? Oh, here it is. Variable name. Did I do this correctly?
4:51:504 hours, 51 minutes, 50 secondsLet me go ahead and add Gemini again. Open it up. Variable name. Perfect. That's empty.
4:51:584 hours, 51 minutes, 58 secondsAnd in here I have the dropdown. Then I have the system prompt. And then I have the user prompt. Perfect. Now let's go ahead back inside of node.tsx.
4:52:104 hours, 52 minutes, 10 secondsAnd in here we should kind of modify the description, right? Because it makes no sense uh that it does this. So instead
4:52:174 hours, 52 minutes, 17 secondsof uh rendering node data do method, it should render node data domodel.
4:52:254 hours, 52 minutes, 25 secondsThe problem is model is not defined.
4:52:284 hours, 52 minutes, 28 secondsThat's why that's because we have to define it right here. So let's go ahead and remove all of these and replace them
4:52:354 hours, 52 minutes, 35 secondswith optional model, optional system prompt, and optional user prompt. Now we can go back in here and modify the
4:52:434 hours, 52 minutes, 43 secondsdescription. So node data will be props.data and then description will be
4:52:494 hours, 52 minutes, 49 secondsuh if we have node data dot user prompt then go ahead and render the model that
4:52:574 hours, 52 minutes, 57 secondsuser selected or fall back to this one which is the first one in the array here
4:53:044 hours, 53 minutes, 4 secondsI believe. Yes. If you want to, you can also uh export const available models and then do available models first one.
4:53:154 hours, 53 minutes, 15 secondsJust make sure to import available models from dot / dialogue.
4:53:204 hours, 53 minutes, 20 secondsAnd in here, let's quickly attempt to show the user prompt, but let's make sure to limit how long it's going to be.
4:53:294 hours, 53 minutes, 29 secondsSo I'm just going to say node data dot userprompts slice 50 characters and then three dots or not configured.
4:53:404 hours, 53 minutes, 40 secondsSo if [snorts] you if I close this now it should say not configured. But if I go ahead and add a user prompt and click save.
4:53:494 hours, 53 minutes, 49 secondsThere we go. Gemini 1.5 flash and the user prompt right here. Perfect. So I believe the UI part is pretty much finished at this point.
4:53:584 hours, 53 minutes, 58 secondsuh except we have to fix the Gemini dialogue. Let's go back inside of the Gemini dialogue here and uh let's see what exactly is the problem here.
4:54:084 hours, 54 minutes, 8 secondsDefault values uses partial of Gemini form values here. But Gemini nod data is
4:54:174 hours, 54 minutes, 17 secondsnot assignable to that. So I have some kind of uh a problem here. Did I forget something?
4:54:254 hours, 54 minutes, 25 secondsOh, variable name. I think that's one variable name.
4:54:324 hours, 54 minutes, 32 secondsIs that the problem? It is not the problem. Let me go ahead and check node.tsx in the HTTP request. I want to see how
4:54:404 hours, 54 minutes, 40 secondsthat looks like. So, variable name endpoint method and body. Hm.
4:54:474 hours, 54 minutes, 47 secondsIt's probably because the model needs to be a uh how do I do this? Type off key off.
4:54:554 hours, 54 minutes, 55 secondsAnd is it available? Not 100% sure.
4:55:034 hours, 55 minutes, 3 secondsAnd then Mhm. [clears throat] Looks like that is still not working
4:55:144 hours, 55 minutes, 14 secondsinside of Gemini dialogue here.
4:55:184 hours, 55 minutes, 18 secondsWhat if I just make this required? Does that work?
4:55:264 hours, 55 minutes, 26 secondsNo. All right. I'm going to go ahead and debug just a little bit and then I will tell you the conclusion about this.
4:55:354 hours, 55 minutes, 35 secondsAll right. So, I didn't really find an elegant solution for this, but one easy way of doing it is well two two ways.
4:55:434 hours, 55 minutes, 43 secondsOne I really don't like. It's by using any that resolves the type error, right?
4:55:494 hours, 55 minutes, 49 secondsUh, but another way of doing it is if you literally copy what it expects
4:55:574 hours, 55 minutes, 57 secondslike this. That's not really the greatest of solutions, but yeah, that also fixes the issue.
4:56:064 hours, 56 minutes, 6 secondsUm, I think the problem is because in the dialogue here, I'm using this as a constant when I maybe should be using this as an enum.
4:56:174 hours, 56 minutes, 17 secondsSo that's why instead of the node dsx this is not understood correctly. U this
4:56:244 hours, 56 minutes, 24 secondsis not terribly important really. Feel free to use any if it saves you some time. Uh I will try to find like a more
4:56:314 hours, 56 minutes, 31 secondselegant solution for this. But right now I really want to focus on the exeutor and making this Gemini uh node actually
4:56:394 hours, 56 minutes, 39 secondswork. So with whichever one you prefer, you can hover over it right here. I think in the default values. There we
4:56:474 hours, 56 minutes, 47 secondsgo. You can see exactly what the uh model wants.
4:56:524 hours, 56 minutes, 52 secondsAnd then just add that here and add undefined here. Let me see if I need it.
4:56:584 hours, 56 minutes, 58 secondsLooks like you don't need undefined because the question mark transforms it into undefined. Yes, if you know
4:57:064 hours, 57 minutes, 6 secondsTypeScript better than me, which is quite easily possible, you can maybe try and do it with some available models thing. But you can see that when I try
4:57:144 hours, 57 minutes, 14 secondsto do it, probably because of this read only. Oh yeah, it expects uh it turns it into an
4:57:234 hours, 57 minutes, 23 secondsarray. Makes sense. Yeah, that's that's just not true. That's not what we expect here. So yes, whichever one you prefer.
4:57:314 hours, 57 minutes, 31 secondsIf you just want to use any, that's fine for now. I'm going to find a way to transform this into some enum and then I
4:57:414 hours, 57 minutes, 41 secondswill be able to use it like this via import.
4:57:444 hours, 57 minutes, 44 secondsLet's go ahead and just focus on what we need to do next for now. Great. So the UI part is now done. Now what I want to
4:57:534 hours, 57 minutes, 53 secondsdo is I want to go inside of source features.
4:57:574 hours, 57 minutes, 57 secondsLet's go ahead and find our Gemini and let's go inside of the executor right here. So the executor is of course where the magic happens.
4:58:094 hours, 58 minutes, 9 secondsI'm going to go ahead and uh yeah we can register helper here. We can make it exactly the same as this. But let's just
4:58:164 hours, 58 minutes, 16 secondsgo ahead and start renaming this. So this will no longer be HTTP request data. This is now going to be Gemini data.
4:58:264 hours, 58 minutes, 26 secondsWe're going to have a variable name.
4:58:294 hours, 58 minutes, 29 secondsWe're going to have a model. We're going to have system prompt.
4:58:354 hours, 58 minutes, 35 secondsLet me go ahead and just make this a string. And we're going to have user prompt.
4:58:454 hours, 58 minutes, 45 secondsNow, let's go ahead and add Gemini data right here. Let's go ahead and rename this executor to be Gemini executor.
4:58:544 hours, 58 minutes, 54 secondsThere we go. Instead of publishing to the HTTP request channel, let's go ahead and change this import to use Gemini and the Gemini channel. So start here.
4:59:064 hours, 59 minutes, 6 secondsGemini channel status is now loading. Perfect.
4:59:114 hours, 59 minutes, 11 secondsNow let's go ahead uh and let's try to generate a system prompt. So you can
4:59:214 hours, 59 minutes, 21 secondsactually remove the entire try and catch here.
4:59:254 hours, 59 minutes, 25 secondsso it doesn't necessarily confuse you like this and remove the extra bracket here. And I'm just going to go ahead and
4:59:344 hours, 59 minutes, 34 secondsdo const system prompt data system prompt handlebars
4:59:424 hours, 59 minutes, 42 secondsdo compile data dots system prompt and pass in the context
4:59:494 hours, 59 minutes, 49 secondsor let's fall back to you are a helpful assistant.
4:59:554 hours, 59 minutes, 55 secondsNow I am noticing that I have a typo here which is actually quite important.
5:00:005 hoursSo let me go ahead and fix it. system prompt. There we go.
5:00:075 hours, 7 secondsNow, let's go ahead and add user prompt here as well. Handlebars do compile data user prompt and pass the context.
5:00:205 hours, 20 secondsGreat. So now we have template variables here for both our system prompt and for our user prompt. Now I'm going to add
5:00:295 hours, 29 secondsto-do fetch credential that user selected. We currently don't have this.
5:00:365 hours, 36 secondsSo the only thing we can do is we can use the ones from our environment file.
5:00:405 hours, 40 secondsThat's why I made sure in the beginning of this chapter that you have that and all the other necessary things
5:00:465 hours, 46 secondsinstalled. So now let's remove uh KY entirely. We can leave non-retriable
5:00:535 hours, 53 secondserror because we are definitely going to use it. But for now, let's add create a Google generative AI
5:01:025 hours, 1 minute, 2 secondsfrom AI SDK Google.
5:01:075 hours, 1 minute, 7 secondsPerfect. So now that we have the system prompt and the user prompt and we pretend to fetch a credential, let's go
5:01:155 hours, 1 minute, 15 secondsahead and actually create the Google instance using create Google generative
5:01:215 hours, 1 minute, 21 secondsAI. open an object inside and make the API key be well let's make it like this
5:01:295 hours, 1 minute, 29 secondsconst credential value and for now you can use process dot environment and then just use this
5:01:385 hours, 1 minute, 38 secondsone or whichever one I mean if since we are doing Gemini right now you should use the Gemini one right
5:01:485 hours, 1 minute, 48 secondsand just pass it here so why am I doing it in this super weird way where I'm doing it. So I prepare the code for
5:01:555 hours, 1 minute, 55 secondslater when we are going to actually fetch the credential value and then we're going to pass it here. And at that
5:02:035 hours, 2 minutes, 3 secondspoint we are no longer going to be using our own API keys nor are we going to need any API keys for AI inside of our
5:02:135 hours, 2 minutes, 13 secondsenvironment file. But just for now to test this and see if it works, we need to do it this way. Now we can open our
5:02:225 hours, 2 minutes, 22 secondstry and catch. Inside of try, let's go ahead and immediately dstructure steps
5:02:285 hours, 2 minutes, 28 secondsfrom await step.ai.v Gemini generate text. Then let's go ahead and pass the second uh parameter.
5:02:395 hours, 2 minutes, 39 secondsSo I'm just going to collapse them like this so it's easier to look. Generate text.
5:02:465 hours, 2 minutes, 46 secondsgenerate text like this which we don't have imported yet and then open an
5:02:525 hours, 2 minutes, 52 secondsoptions. So generate text can be imported from the global AI package like
5:03:005 hours, 3 minutesthis. So generate text make sure you have added that.
5:03:055 hours, 3 minutes, 5 secondsAnd now let's go ahead and define the settings first will be the model. Which model are
5:03:125 hours, 3 minutes, 12 secondswe going to use? So we are using Gemini and then we're going to use data domodel
5:03:195 hours, 3 minutes, 19 secondsor here are all the options. So this package is type safe as you learned in chapter 7. And you can see that there
5:03:275 hours, 3 minutes, 27 secondsare actually way more of them here than what I added to my uh available models
5:03:345 hours, 3 minutes, 34 secondslist of course. Uh but I kind of did it in a quick and dirty way. Uh I would highly suggest exploring how you can
5:03:415 hours, 3 minutes, 41 secondsextract these exact types here. If I in the meantime manage to do it myself, I will of course update the code to
5:03:505 hours, 3 minutes, 50 secondsreflect that change. But yes, in here you can see all of these that exist for your version. So using that you can also
5:03:575 hours, 3 minutes, 57 secondsgo back to the dialogue inside of our newly created Gemini folder and you can see if all of these exist here, right?
5:04:065 hours, 4 minutes, 6 secondsIf they do, all good. So just you know compare do they exist and you can fall back to 1.5 flash. Now let's go ahead
5:04:145 hours, 4 minutes, 14 secondsand add system to use system prompt prompt to use user prompt
5:04:215 hours, 4 minutes, 21 secondsexperimental telemetry is enabled set to true record inputs set to true and record outputs set to true.
5:04:345 hours, 4 minutes, 34 secondsThis will give Sentry access to report telemetry on our AI models which will help us greatly to see exactly which
5:04:435 hours, 4 minutes, 43 secondscosts occur, which models take the longest and then you will be able to recommend your users some change based on that.
5:04:515 hours, 4 minutes, 51 secondsAnd now once we run this we will be able to extract the text from steps first in the array content first in the array.
5:05:015 hours, 5 minutes, 1 secondCheck if the type is text and if it is go ahead and use steps.0.content0.ext or simply fall back to an empty string.
5:05:145 hours, 5 minutes, 14 secondsSo let me collapse this so it looks nicer. There we go.
5:05:195 hours, 5 minutes, 19 secondsAnd now let's go ahead and publish an event. So right here,
5:05:265 hours, 5 minutes, 26 secondspublish Gemini channel status node ID and status of success. We successfully
5:05:335 hours, 5 minutes, 33 secondsexecuted the AI model. And now let's go ahead and let's return right here. So I'm not sure how you want to do this,
5:05:415 hours, 5 minutes, 41 secondsbut uh obviously spread the context. And then let's do data dot variable name.
5:05:485 hours, 5 minutes, 48 secondsAnd you can either directly do text or you can do AI response
5:05:565 hours, 5 minutes, 56 secondsand then do the text inside however you prefer.
5:06:015 hours, 6 minutes, 1 secondObviously we have this error here. We will take care of that. But let's just quickly take care of the error. So go
5:06:085 hours, 6 minutes, 8 secondsahead and catch the error and then all you have to do is publish that error status and throw the error. Now let's go
5:06:175 hours, 6 minutes, 17 secondsahead and resolve this. So we already learned how to resolve this. The problem uh the trick is to do it inside of the function right here.
5:06:285 hours, 6 minutes, 28 secondsSo step uh AI.rap.
5:06:325 hours, 6 minutes, 32 secondsOh actually I think we might be able to do it in an easier way. So let me just
5:06:405 hours, 6 minutes, 40 secondscheck. After loading, I am immediately going to check if there is no data variable name await publish
5:06:505 hours, 6 minutes, 50 secondsgemini channel dot status node id status of error
5:06:595 hours, 6 minutes, 59 secondsand let me properly wrap this. There we go.
5:07:085 hours, 7 minutes, 8 secondsand then throw new non retrial error Gemini node variable name is missing
5:07:185 hours, 7 minutes, 18 secondsand immediately you can see if we throw an error here if data variable name is missing you can see that this will no
5:07:285 hours, 7 minutes, 28 secondslonger yell at us right so we fixed this why did it work so simple this time the
5:07:365 hours, 7 minutes, 36 secondsreason it worked is because all of This is in one single scope. But usually we don't do this. But what we do is step.run.
5:07:475 hours, 7 minutes, 47 secondsSo step.run then opens another function which is a whole new scope for TypeScript. So it cannot do its flow
5:07:545 hours, 7 minutes, 54 secondscontrol properly because uh technically data which we look for right here could have been modified inside of that scope.
5:08:055 hours, 8 minutes, 5 secondsSo that's why since this is kind of a simpler example, we don't have to worry about that.
5:08:125 hours, 8 minutes, 12 secondsLet's also go ahead and do if no data do user prompt because that is another thing we consider required. Let's go
5:08:215 hours, 8 minutes, 21 secondsahead and throw this Gemini node uh user prompt is missing.
5:08:295 hours, 8 minutes, 29 secondsAll right. And later I'm going to add to-do throw if credential is missing.
5:08:375 hours, 8 minutes, 37 secondsGreat.
5:08:385 hours, 8 minutes, 38 secondsNow that we have this ready, let's see. Did we miss anything? I think uh this is okay. And I need a quick
5:08:475 hours, 8 minutes, 47 secondsreminder. I'm just going to take a peek at HTTP request executor.
5:08:545 hours, 8 minutes, 54 secondsUh all right. So we ended up making all of this optional, right?
5:08:595 hours, 8 minutes, 59 secondsYeah. And still this this model thing is Yeah. I I really dislike how I handled this. I should have either made it
5:09:085 hours, 9 minutes, 8 secondseverywhere a type of string or something. Yeah, technically maybe I could do that. Maybe I could just make this Z.
5:09:175 hours, 9 minutes, 17 secondsLike this inside of form schema instead of inside of uh Gemini folder dialogue. DSX.
5:09:245 hours, 9 minutes, 24 secondsLet's just go ahead and make it required. Model is required.
5:09:305 hours, 9 minutes, 30 secondsAnd then this way if you go instead of node dsx here you can just simplify this to be an optional string.
5:09:405 hours, 9 minutes, 40 secondsAnd as you can see it still works. The default values now handles this properly.
5:09:485 hours, 9 minutes, 48 secondsGreat. This is a kind of a dirty fix for now. So we are only using available
5:09:555 hours, 9 minutes, 55 secondsmodels for one thing and one thing only and that is to render the select items in a loop here.
5:10:055 hours, 10 minutes, 5 secondsAll right. Now that we have the executor, we have to add the executor to our executions lib executor registry.
5:10:155 hours, 10 minutes, 15 secondsLet's go ahead and add node type Gemini Gemini executor.
5:10:235 hours, 10 minutes, 23 secondsObviously, we have some errors here because we don't have the anthropic nor OpenAI ones. If you want an easy fix,
5:10:325 hours, 10 minutes, 32 secondsyou can just repeat the same for anthropic or for Open AI. Just make sure to add to-do
5:10:415 hours, 10 minutes, 41 secondsfix later and to-do fix later. So you remember there that these are not valid.
5:10:505 hours, 10 minutes, 50 secondsAll right. I think there are still a couple of things we need to do. Instead of node dsx, we are still using http
5:10:595 hours, 10 minutes, 59 secondsrequest channel name here. So let's quickly go inside of gemini actions. s let's rename this from HTTP request all
5:11:095 hours, 11 minutes, 9 secondsthree instances change it to Gemini Gemini token and fetch Gemini realtime token
5:11:175 hours, 11 minutes, 17 secondschange the import here to use inest channels Gemini and the Gemini channel
5:11:245 hours, 11 minutes, 24 secondsand remove I mean change the two instances to use Gemini channel that's it now go back inside of node change
5:11:325 hours, 11 minutes, 32 secondsthis to be Gemini channel name fetch Gemini
5:11:405 hours, 11 minutes, 40 secondsrealtime token and I think everything else should be fine. Remove fetch HTTP request realtime
5:11:475 hours, 11 minutes, 47 secondstoken and remove HTTP request channel name. And as always you can go ahead and
5:11:555 hours, 11 minutes, 55 secondsrightclick click find in folder and search for HTTP. This is okay. This is
5:12:035 hours, 12 minutes, 3 secondsone example where it's okay because we are using it as an example of the previous node information that you can do. So I think everything should be
5:12:125 hours, 12 minutes, 12 secondsfine. So how do we test this in the easiest way possible? Well, let's use a manual trigger like this. Let's connect the two. Let's click save.
5:12:245 hours, 12 minutes, 24 secondsLet's go ahead and open Gemini. I'm going to call this Gemini.
5:12:295 hours, 12 minutes, 29 secondsI will select 1.5 flesh. You are a mathician.
5:12:355 hours, 12 minutes, 35 secondsUser prompt. What is 2 + 2? And click save. Click save again.
5:12:425 hours, 12 minutes, 42 secondsLet's go ahead and prepare our localhost 8288.
5:12:475 hours, 12 minutes, 47 secondsSo in here we can see our workflows and let's click execute workflow and let's
5:12:545 hours, 12 minutes, 54 secondssee if we did this correctly. Uh something is happening here. This never
5:13:015 hours, 13 minutes, 1 secondI'm not sure if is it our realtime connection that's failing or something else. Uh
5:13:095 hours, 13 minutes, 9 secondsGemini 1.5 flash is not found for API version v1 beta.
5:13:165 hours, 13 minutes, 16 secondsOh, okay.
5:13:205 hours, 13 minutes, 20 secondsAll right. Let's see. Let me try one thing here. Instead of executor,
5:13:285 hours, 13 minutes, 28 secondsI mean instead of executions components, Gemini executor, let me try and just um not even
5:13:365 hours, 13 minutes, 36 secondslistening to the user input. Can I just like choose the one that's being offered here?
5:13:465 hours, 13 minutes, 46 secondsDoes that work? Can I refresh here? Is all of this good? Looks good. Can I just execute workflow now?
5:13:585 hours, 13 minutes, 58 secondsOkay. Oh, this time the uh channel worked, but it still failed.
5:14:045 hours, 14 minutes, 4 secondsAgain, Gemini 1.5 flash is not found for API version v1 beta. Call list models to
5:14:115 hours, 14 minutes, 11 secondssee the list of available models and their supported methods.
5:14:165 hours, 14 minutes, 16 secondsSo, it could be that in the middle of my tutorial, Google AI Studio received some updates. Maybe the API tokens are new.
5:14:255 hours, 14 minutes, 25 secondsSo, I'm not even sure myself which version I can use now. It shouldn't be too hard to fix really.
5:14:355 hours, 14 minutes, 35 secondsI'm just really not sure which version I can use. Maybe 2.0 Flash. Can I try that?
5:14:425 hours, 14 minutes, 42 secondsMaybe they've added some limits to their tiers. Honestly, I have no idea.
5:14:515 hours, 14 minutes, 51 secondsYes. So if you change to 2.0, it seems to work just fine.
5:14:585 hours, 14 minutes, 58 secondsLet me just confirm. The result is stored inside of Gemini. AI response 2 +
5:15:035 hours, 15 minutes, 3 seconds2 equals 4. Amazing. So it officially works. But yeah, something is a little
5:15:125 hours, 15 minutes, 12 secondsbit weird here with Gemini 2.0 options.
5:15:185 hours, 15 minutes, 18 secondsYeah, here's what I might or might not do. We can like fall back
5:15:255 hours, 15 minutes, 25 secondsto one that is working and inside of our dialogue here, maybe just hide the
5:15:325 hours, 15 minutes, 32 secondsselect option. I don't know. I'm not even sure myself. Now, one thing is for sure, this is a
5:15:405 hours, 15 minutes, 40 secondshorrible way to offer users which models they can choose because we just, you know, demonstrated how quickly that can
5:15:495 hours, 15 minutes, 49 secondsgo wrong if you forget to update. Uh, so we should definitely find a way to synchronize that. But the problem is
5:15:575 hours, 15 minutes, 57 secondseven in this kind of AI SDK Google version itself or maybe just my API key.
5:16:055 hours, 16 minutes, 5 secondsI'm not sure but something here is not working as it should because it offers
5:16:125 hours, 16 minutes, 12 secondsme 1.5 flash but when I try to use it it fails. It also offers me 2.0 flash and when I try using it it works.
5:16:225 hours, 16 minutes, 22 secondsIt could also be a bug within Google.
5:16:255 hours, 16 minutes, 25 secondsAI. I'm not sure. So, just try some of these models until they work.
5:16:325 hours, 16 minutes, 32 secondsYou can fall back back to data.mmodel here if you want to. Just make sure that
5:16:395 hours, 16 minutes, 39 secondsyou then add this option inside
5:16:485 hours, 16 minutes, 48 secondslike that. Again, not sure how this is supposed to be uh working since, you
5:16:545 hours, 16 minutes, 54 secondsknow, type safety is telling us that we can use one model, but obviously we cannot.
5:17:015 hours, 17 minutes, 1 secondUh so, okay. Yeah, let's go ahead and leave it like this for now. Uh and yeah, this is basically [clears throat]
5:17:075 hours, 17 minutes, 7 secondshow you add uh AI nodes. We can now do
5:17:135 hours, 17 minutes, 13 secondsthe exact same thing line for line for all other ones that we need. Entropic,
5:17:215 hours, 17 minutes, 21 secondsuh, open AAI or a billion others that AI SDK offers.
5:17:285 hours, 17 minutes, 28 secondsI just did a quick research if there is a way to reliably display the models
5:17:355 hours, 17 minutes, 35 secondsthat are available and I couldn't find a way to just read the types coming from
5:17:415 hours, 17 minutes, 41 secondsthe SDK package. So for now this is what I want to do. This is obviously broken and I cannot in good faith recommend
5:17:505 hours, 17 minutes, 50 secondsthat you write this code. So go ahead inside of dialogue for your new Gemini folder, remove available models entirely.
5:18:005 hours, 18 minutesRemove the model from the form schema and remove it from here too.
5:18:075 hours, 18 minutes, 7 secondsGo ahead and remove it from the form reset. And then go ahead and remove the entire form field for select. So I just
5:18:165 hours, 18 minutes, 16 secondscannot in good faith tell you to do that because it's broken. We're going to go ahead and do it a much simpler way. And then maybe later in the tutorial, if I
5:18:245 hours, 18 minutes, 24 secondsfind a reliable way of doing this, I will teach you how to do it. But again, I cannot in good faith tell you to do this because it's obviously broken.
5:18:345 hours, 18 minutes, 34 secondsSo, let's go ahead uh inside of where do we go now? Node. DSX
5:18:435 hours, 18 minutes, 43 secondsremove available models. remove the model from Gemini node data and instead
5:18:505 hours, 18 minutes, 50 secondsof the description generation uh you can just go ahead and uh you can just do
5:18:595 hours, 18 minutes, 59 secondswell you can use the one model for example inside of executor.ts DS that you found that works for you like
5:19:065 hours, 19 minutes, 6 secondsthis like hardcode what you're going to uh define your users to use for now right because this is obviously not
5:19:155 hours, 19 minutes, 15 secondsworking reliably so we have to hardcode inside of the executor.ds DS on something that will always work for us.
5:19:225 hours, 19 minutes, 22 secondsAnd that's why we can safely display that here. So the user knows exactly which one we are going to use on their behalf. They will not be able to select
5:19:305 hours, 19 minutes, 30 secondsthe model because I'm really not satisfied with the way I've developed it right now.
5:19:365 hours, 19 minutes, 36 secondsSo in the executor.ts, it is very important that you remove data.mod here and just fall back to Gemini 2.0 flash
5:19:445 hours, 19 minutes, 44 secondsor whatever one works for you. Just try to get it working. also remove the model from Gemini data here entirely. So we
5:19:535 hours, 19 minutes, 53 secondsnow no longer need that. Great. So code should actually be simpler now.
5:20:005 hours, 20 minutesEverything should be simpler now. There we go. We just have variable name, system prompt, and user prompt. And in
5:20:085 hours, 20 minutes, 8 secondshere, we hardcoded exactly which one we are using because that is the one that's working for us. So just for fun, I'm going to remove this. I'm going to add a
5:20:175 hours, 20 minutes, 17 secondsnew one right here. I'm going to connect it and oh, so this still says my API
5:20:245 hours, 20 minutes, 24 secondscall. Let's go inside of dialogue and instead of calling it my API call, my Gemini, I don't know.
5:20:345 hours, 20 minutes, 34 secondsAnd do I use my API call anywhere else? I do. Let's change this to my Gemini.
5:20:405 hours, 20 minutes, 40 secondsSomething to indicate to the user like, hey, this is uh your variable. Like you can do whatever you want. And then let's
5:20:465 hours, 20 minutes, 46 secondsfix this. So this should be AI response because that is exactly what we do in the executor, right? We return this within AI response option.
5:20:585 hours, 20 minutes, 58 secondsUh actually we do not sure what is the best way of doing this.
5:21:055 hours, 21 minutes, 5 secondsShould I just do Yeah, we can just do AI response.
5:21:105 hours, 21 minutes, 10 secondsI think you can of course change this to whatever you think is a better user experience. It's you know you're free to
5:21:185 hours, 21 minutes, 18 secondsmodify this however uh you want. Let's uh hm let's just keep it as text.
5:21:295 hours, 21 minutes, 29 secondsSo Gemini.ext.
5:21:315 hours, 21 minutes, 31 secondsI think that is like the simplest possible one. You cannot go wrong with this. My Gemini.ext.
5:21:395 hours, 21 minutes, 39 secondsPerfect.
5:21:415 hours, 21 minutes, 41 secondsSo, I'm going to go ahead and change this to be my Gemini 2 just to see if this works. My Gemini 2.ext.
5:21:505 hours, 21 minutes, 50 secondsUh, how about we try something fun? So, yes, let's call this uh my Gemini 2. You
5:21:585 hours, 21 minutes, 58 secondsreturn only uh a popular HTTP
5:22:055 hours, 22 minutes, 5 secondspopular uh get AP icon test for fetch
5:22:155 hours, 22 minutes, 15 secondsget app URL endpoint free API URL endpoint.
5:22:225 hours, 22 minutes, 22 secondsuh give me an endpoint to list a to-do by ID of one. So hopefully it will know
5:22:315 hours, 22 minutes, 31 secondswhat I mean. We'll see. Maybe it will be a a complete failure. Maybe it will work. And then let's try an HTTP request here.
5:22:415 hours, 22 minutes, 41 secondsSo this will be my request get method. And can I just do a response.ext here?
5:22:515 hours, 22 minutes, 51 secondsGemini.ext. Let's click save.
5:22:575 hours, 22 minutes, 57 secondsI have no idea how this will work. Let's click execute workflow. I'm really interested. Maybe it will be a complete failure. Maybe it will work. Uh failed.
5:23:075 hours, 23 minutes, 7 secondsOkay. Fail to parse URL. Let's see what did Gemini respond.
5:23:165 hours, 23 minutes, 16 secondsIt actually did quite well, but it added some extra text. That's the problem. So,
5:23:225 hours, 23 minutes, 22 secondsI'm just going to kind of copy what I expect and see if I can make it.
5:23:305 hours, 23 minutes, 30 secondsLet's say that no formatting.
5:23:365 hours, 23 minutes, 36 secondsExample, no new lines, nothing. just URL
5:23:455 hours, 23 minutes, 45 secondsand let's change this ID of two. So, I'm just playing around to see if I can make this work because I really want to see
5:23:525 hours, 23 minutes, 52 secondsthis workflow do something. Don't worry, I'm just going to do one more attempt and then I'm going to show you how to add Okay, failed layout. Looks like
5:24:015 hours, 24 minutes, 1 seconddepending on the model, some of them don't listen to instructions.
5:24:065 hours, 24 minutes, 6 secondsYes, it still added new line slash at the end. Okay. If it didn't add that, it
5:24:135 hours, 24 minutes, 13 secondswould have worked. So, now that we have this and we have this simplified model uh simplified model, yeah, with no
5:24:205 hours, 24 minutes, 20 secondsselect option, let's go ahead and do the exact same thing but for OpenAI and
5:24:275 hours, 24 minutes, 27 secondsAnthropic. So, we are going to start by going inside of our features, executions, components, Gemini. Copy and
5:24:365 hours, 24 minutes, 36 secondspaste it. Rename it to Open AI. Go inside of the OpenAI folder. Go inside of node.tsx.
5:24:435 hours, 24 minutes, 43 secondsChange this to open AI node data. Use open AI node data. Here
5:24:535 hours, 24 minutes, 53 secondschange this to open AI node type. Use open AI node type. And rename this to
5:25:005 hours, 25 minutesopen AI node. Perfect. Go all the way down and change this to open AI node
5:25:075 hours, 25 minutes, 7 secondsdisplay name. and change the actual display name to open AI node. And you should no longer have any errors here.
5:25:165 hours, 25 minutes, 16 secondsGreat.
5:25:185 hours, 25 minutes, 18 secondsNow, let's go ahead and let's rename the logo to open a SVJ and open AI for the
5:25:265 hours, 25 minutes, 26 secondsname. Perfect. Now, let's go ahead inside of our node components in the source config.
5:25:375 hours, 25 minutes, 37 secondsLet's go ahead and duplicate the Gemini one. Add open AI and import open AI node. Then go inside
5:25:475 hours, 25 minutes, 47 secondsof the node selector instead of source components node selector. Go ahead and duplicate Gemini. Go ahead and add open
5:25:565 hours, 25 minutes, 56 secondsAI. Change the label to open AI. Uses open AI to generate text and use open AI. SVG.
5:26:085 hours, 26 minutes, 8 secondsThere we go. Open AI node. Now, let's go ahead and change the dialogue, add the channel, and everything else we need.
5:26:175 hours, 26 minutes, 17 secondsSo, I'm going to go inside of features open AI dialogue.
5:26:245 hours, 26 minutes, 24 secondsEverything will stay exactly the same here. I'm going to change this from Gemini to Open AI. So, open AI form values.
5:26:355 hours, 26 minutes, 35 secondsOpen AI dialogue, but everything else can really stay the same. Let's just for fun change this to my open AI.
5:26:445 hours, 26 minutes, 44 secondsThis will be open AI configuration. Description can stay exactly the same.
5:26:525 hours, 26 minutes, 52 secondsI don't think we have to modify anything here.
5:26:575 hours, 26 minutes, 57 secondsAll of this is good enough. instead of node.tsx.
5:27:025 hours, 27 minutes, 2 secondsLet's make sure to now import open AI dialogue open AI form values.
5:27:105 hours, 27 minutes, 10 secondsJust double check that you are doing this instead of open AI folder so you don't accidentally change your Gemini files.
5:27:185 hours, 27 minutes, 18 secondsNow let's go ahead and add open AI form values right here.
5:27:245 hours, 27 minutes, 24 secondsOpen AI dialogue. And I think automatically it should just work out of the box because they are exactly the
5:27:325 hours, 27 minutes, 32 secondssame because they both use AI SDK which will follows the same API. We just did some slight modification to tailor it to open AI.
5:27:435 hours, 27 minutes, 43 secondsNow that we have that configured, let's go ahead inside of Open AI executor.ds.
5:27:525 hours, 27 minutes, 52 secondsChange this from Gemini data to Open AI data. and change this finally to be open
5:28:005 hours, 28 minutesAI executor. We cannot change the channel yet because we didn't implement it. Let's change this to be a warning of open AI node.
5:28:115 hours, 28 minutes, 11 secondsLet's go ahead and change this to open AI node.
5:28:155 hours, 28 minutes, 15 secondsLet's go ahead and for now use your open AI API key. If you don't have it, just
5:28:235 hours, 28 minutes, 23 secondsput an empty string like I have for Enthropic. There we go. And let's do create open AI. I have no idea uh if that is the correct one.
5:28:375 hours, 28 minutes, 37 secondsI'm trying to find I think it is. Yes.
5:28:405 hours, 28 minutes, 40 secondsCreate open AI like this from AI SDK. Open AI. You should also
5:28:495 hours, 28 minutes, 49 secondshave that installed. So, AI SDK open AI. Make sure you add that
5:28:575 hours, 28 minutes, 57 secondsbecause again, even if you don't have the API keys for this, your users might.
5:29:025 hours, 29 minutes, 2 secondsAnd later, we're going to allow your users to add any API keys they want.
5:29:085 hours, 29 minutes, 8 secondsAnd instead of this being a Google, this will be open AI. Whoops. Open AI.
5:29:175 hours, 29 minutes, 17 secondsAnd let's change this to open AI generate text. And then just go ahead and change this to
5:29:255 hours, 29 minutes, 25 secondsI I have no idea honestly which one. I am really not up to date. I guess
5:29:335 hours, 29 minutes, 33 secondsGPT4 I don't know. And then you can copy GPT4
5:29:385 hours, 29 minutes, 38 secondshere. Go inside of Open AI dialogue and change the description. My apologies.
5:29:465 hours, 29 minutes, 46 secondsnode and change the description here to let the user know we are using GPT4 as default because we removed the the
5:29:555 hours, 29 minutes, 55 secondsoption to select the model and I think that's it for the executor.
5:30:005 hours, 30 minutesLet me just check. So we are using open API key which will later be something else. The API is exactly the same. We just have to create the channel.
5:30:105 hours, 30 minutes, 10 secondsSo I'm just going to collapse everything and I'm going to go inside of ingest channels. Copy and paste Gemini channel.
5:30:185 hours, 30 minutes, 18 secondsChange this to Open AI.
5:30:215 hours, 30 minutes, 21 secondsGo ahead and change this to be open AI channel name. Open AI execution. Open.
5:30:295 hours, 30 minutes, 29 secondsOops. Open AI channel.
5:30:345 hours, 30 minutes, 34 secondsThere we go. As simple as this. Then let's go inside of source inest functions.ds.
5:30:425 hours, 30 minutes, 42 secondsAdd open AI channel.
5:30:455 hours, 30 minutes, 45 secondsExecute it. Make sure you have imported open AI channel. Perfect.
5:30:515 hours, 30 minutes, 51 secondsNow that we have that, let's go inside of components. My apologies. Inside of features, executions, components, open AI. Let's go inside of actions.
5:31:045 hours, 31 minutes, 4 secondsChange this from Gemini token to open AI token.
5:31:095 hours, 31 minutes, 9 secondsGo ahead and import open AI channel from channels open AI.
5:31:165 hours, 31 minutes, 16 secondsAnd do we need to modify anything? Yes.
5:31:205 hours, 31 minutes, 20 secondsInstead of fetch Gemini realtime token, it's going to be fetch open AI realtime token.
5:31:275 hours, 31 minutes, 27 secondsPerfect.
5:31:295 hours, 31 minutes, 29 secondsNow we can go instead of open AI node, we can do fetch open AI realtime token.
5:31:375 hours, 31 minutes, 37 secondsAnd this will now be open AI channel name from inest channels open AI. We can
5:31:475 hours, 31 minutes, 47 secondsuse that here and change this to fetch open AI realtime token. And now we
5:31:535 hours, 31 minutes, 53 secondsshould have uh real time synchronization with open AI.
5:31:595 hours, 31 minutes, 59 secondsLet's go ahead and go back inside of Open AI executor. And let's go ahead and change the import from Gemini to Open AI
5:32:085 hours, 32 minutes, 8 secondsand replace all instances of Gemini channel with Open AI channel. There we
5:32:165 hours, 32 minutes, 16 secondsgo. No errors anywhere in our code. To double check if we did this correctly,
5:32:235 hours, 32 minutes, 23 secondsright click on the open AI folder, find in folder, and search for Gemini. Looks like there is one thing left the
5:32:315 hours, 32 minutes, 31 secondsplaceholder. So this is inside open AI dialogue. Change the placeholder to be my open AI like this.
5:32:425 hours, 32 minutes, 42 secondsThere we go. So how about we just quickly try this? I'm just going to simplify this. I'm going to add open AI.
5:32:515 hours, 32 minutes, 51 secondsI'm going to connect the two. Even if you don't have an API key, check if it will fail. It's going to be fun. My open
5:32:585 hours, 32 minutes, 58 secondsAI, you are a math matician.
5:33:055 hours, 33 minutes, 5 secondsWhat is 2 + 2? Click save. Let's click save right here. Uh, one thing we forgot to do. Executor registry.
5:33:175 hours, 33 minutes, 17 secondsChange open AI to Open AI executor.
5:33:235 hours, 33 minutes, 23 secondsLooks like it is capitalized. I don't like that. So, I'm going to go instead of components, openAI executor, and I
5:33:315 hours, 33 minutes, 31 secondswill just make sure it's lowerase like all of my other ones. Then I can replace these two instances. I can then also remove the to-do for Open AI.
5:33:445 hours, 33 minutes, 44 secondsSo, let's go ahead and try this again. I will click save right here.
5:33:505 hours, 33 minutes, 50 secondsI'm going to refresh just in case. I will click execute workflow. This works.
5:33:595 hours, 33 minutes, 59 secondsAnd this will actually depend on my API key, but it works perfect. Yours might fail if you don't have an API key, which is perfectly expected. So, don't worry.
5:34:075 hours, 34 minutes, 7 secondsI just wanted to test if uh the model works. So, if for whatever reason GPT4
5:34:155 hours, 34 minutes, 15 secondsis not working for you, uh you have a list of available ones. Well, apparently available ones because we just saw with
5:34:235 hours, 34 minutes, 23 secondsGoogle that was not the case. So just you know add a string and you will see a list of all available ones. So just select one and try until it works.
5:34:345 hours, 34 minutes, 34 secondsPerfect. So that was for open AI and one more left and we are done with this chapter. I know it's a lot of repeated
5:34:425 hours, 34 minutes, 42 secondswork but I want to make sure you see every single line of code that I write. It's kind of the gist with my tutorials.
5:34:495 hours, 34 minutes, 49 secondsUh, I don't really skip anything. I show you every single line of the code. So, let's go ahead and copy open AI, paste it inside of components in the
5:34:585 hours, 34 minutes, 58 secondsexecutions folder, and rename it to anthropic.
5:35:035 hours, 35 minutes, 3 secondsIf it asks you to update imports, you can select yes. It's the simple cache thing. It might open your next folder.
5:35:105 hours, 35 minutes, 10 secondsJust save that file, close it, and close this folder. Don't worry about it. Let's go inside of anthropic inside of node.
5:35:175 hours, 35 minutes, 17 secondsDSX let's start with renaming things instead of open AI everything will be anthropic
5:35:265 hours, 35 minutes, 26 secondsso anthropic node data anthropic node type anthropic node and use entropic node type here and then we have to fix
5:35:355 hours, 35 minutes, 35 secondsthis anthropic cannot find the name anthropic uh anthropic node yeah there we go Perfect.
5:35:475 hours, 35 minutes, 47 secondsSo now that we have this, let's go ahead and modify base execution node right here
5:35:555 hours, 35 minutes, 55 secondsto use logos anthropic SVJ anthropic like this.
5:36:075 hours, 36 minutes, 7 secondsUh oh, looks like I somehow overwritten my open AI.
5:36:145 hours, 36 minutes, 14 secondsSo, [laughter] don't do the same mistake I did. Yes, I did something very incorrect here. [laughter]
5:36:215 hours, 36 minutes, 21 secondsOkay. A lot of mistakes now. Luckily, I don't think I went too far. Uh, okay.
5:36:275 hours, 36 minutes, 27 secondsWhat I did accidentally, I somehow deleted my Open AI folder and I seem to have renamed it to Antropic. So, now I
5:36:365 hours, 36 minutes, 36 secondsjust reverted it back to Open AI. So, you probably don't have to do this, but I have to.
5:36:455 hours, 36 minutes, 45 secondsI just have to fix this. Okay, I'm so sorry. Again, cop copy open AI folder, paste it inside of components, rename it
5:36:545 hours, 36 minutes, 54 secondsto entropic. There we go. Okay, so sorry about that one. Uh, and now again, same
5:37:015 hours, 37 minutes, 1 secondthing I just previously did. So, I'm going to replace these instances of Open AI through anthropic.
5:37:095 hours, 37 minutes, 9 secondsAnd then I'm going to go down here and change this to anthropic. node.
5:37:145 hours, 37 minutes, 14 secondsThere we go. Okay, that's what I wanted to do. Uh, and then in here, change this to entropic.
5:37:225 hours, 37 minutes, 22 secondsI think I accidentally also changed inside of my OpenAI folder, instead of node, I changed this to entropic, this should be open AI. So, sorry about that.
5:37:325 hours, 37 minutes, 32 secondsInstead of copy and paste, I replaced it. So, yeah, always be careful yourself not to do that. uh instead of enthropic
5:37:405 hours, 37 minutes, 40 secondsuh after we add the node here and the logo for anthropic we have to add it to node components. So let's go ahead and
5:37:495 hours, 37 minutes, 49 secondscopy this add anthropic and simply add anthropic node. After that we have to go
5:37:575 hours, 37 minutes, 57 secondsto node selector inside of source components node selector. Go ahead and copy this anthropic.
5:38:075 hours, 38 minutes, 7 secondsAnthropic uses anthropic to generate text and use anthropic.
5:38:155 hours, 38 minutes, 15 secondsSVG.
5:38:175 hours, 38 minutes, 17 secondsGo ahead and click plus and you will find entropic node. Perfect. Now let's go ahead and let's modify the dialogue
5:38:245 hours, 38 minutes, 24 secondshere. So you can go ahead and focus on features executions components entropic
5:38:315 hours, 38 minutes, 31 secondsdialogue.tsx everything here will be the same replace instances of open AI with anthropic. So,
5:38:415 hours, 38 minutes, 41 secondsanthropic form values and anthropic dialogue.
5:38:455 hours, 38 minutes, 45 secondsChange this variable to my anthropic for example, anthropic configuration.
5:38:545 hours, 38 minutes, 54 secondsMy anthropic and I think everything else can stay the same. Perfect. Now, go back into node
5:39:015 hours, 39 minutes, 1 secondright here. Make sure you are importing anthropic dialogue and anthropic form
5:39:105 hours, 39 minutes, 10 secondsvalues. Make sure you use them here. And make sure you are using the anthropic dialogue. And now it should say
5:39:185 hours, 39 minutes, 18 secondsanthropic configuration tailored to entropic. Perfect. Now let's do the channel.
5:39:265 hours, 39 minutes, 26 secondsSo we can wrap it up with the executor.
5:39:295 hours, 39 minutes, 29 secondsSo instead of source ingest channels copy either open AI or anthropic one my
5:39:365 hours, 39 minutes, 36 secondsapologies Gemini one and rename it to anthropic.
5:39:415 hours, 39 minutes, 41 secondsInside of here change the instance of open AI or Gemini to anthropic.
5:39:495 hours, 39 minutes, 49 secondsName it properly and make sure to export the constant anthropic channel. Perfect. immediately
5:39:585 hours, 39 minutes, 58 secondsgo inside of functions.dts and add anthropic channel.
5:40:065 hours, 40 minutes, 6 secondsThere we go.
5:40:085 hours, 40 minutes, 8 secondsNow that we have that, let's go ahead inside of source features executions components anthropic. Let's go inside of
5:40:175 hours, 40 minutes, 17 secondsactions.ts change this to be anthropic token
5:40:245 hours, 40 minutes, 24 secondsimport from anthropic channel. So, anthropic channel, replace these two instances right here.
5:40:335 hours, 40 minutes, 33 secondsThen go inside of node.tsx, DSX change use node status to use anthropic
5:40:425 hours, 40 minutes, 42 secondschannel name and fetch anthropic realtime token and remove the import for fetch open AI
5:40:515 hours, 40 minutes, 51 secondsrealtime token and remove the unused channel name for open AI.
5:40:575 hours, 40 minutes, 57 secondsThen let's finally go inside of executor here.
5:41:015 hours, 41 minutes, 1 secondLet's change this from open AI data to be anthropic data. Change this from open AI executor to anthropic exeutor.
5:41:145 hours, 41 minutes, 14 secondsAnd finally, change the ingest channel to be anthropic
5:41:215 hours, 41 minutes, 21 secondsanthropic channel. Replace all instances of open AI channel with anthropic
5:41:285 hours, 41 minutes, 28 secondschannel. Now what we have to do is we have to go AISDK anthropic
5:41:365 hours, 41 minutes, 36 secondsuse create anthropic again if you don't have this please install it. So package.json you can see my version right here.
5:41:465 hours, 41 minutes, 46 secondsNow that we have create anthropic we can go ahead and create the anthropic value here. Create anthropic.
5:41:565 hours, 41 minutes, 56 secondsMake sure that you change the environment key to whatever it is in your anthropic API key right here. It
5:42:045 hours, 42 minutes, 4 secondscan be empty like mine. For example, I don't have that key.
5:42:095 hours, 42 minutes, 9 secondsNow, let's go ahead and use anthropic here. Change this to entropic generate text and change this again to I have no idea.
5:42:195 hours, 42 minutes, 19 secondsSonet 45. Is that the newest one? I guess. Save that.
5:42:275 hours, 42 minutes, 27 secondsThen go inside of node.tsxindanthropic and configure the hard-coded model right
5:42:355 hours, 42 minutes, 35 secondshere. Whoops, I didn't copy it properly. It would appear. So,
5:42:415 hours, 42 minutes, 41 secondsso I'm going to copy it now and I'm going to paste right here. There we go.
5:42:485 hours, 42 minutes, 48 secondsSo now I'm going to go ahead inside of executor registry
5:42:555 hours, 42 minutes, 55 secondsand very simply I'm going to change this to use the entropic executor.
5:43:005 hours, 43 minutesThere we go. That is how we add three different AI models. So I'm going to go
5:43:075 hours, 43 minutes, 7 secondsahead and remove this one. I will add this one. And this one will most definitely fail because I don't have an
5:43:145 hours, 43 minutes, 14 secondsAPI key. So my entropic, you are a math
5:43:205 hours, 43 minutes, 20 secondsmathematician. What is 2 + 2? Click save. Save up there. Let's go ahead and
5:43:275 hours, 43 minutes, 27 secondsjust refresh in case it needs a refresh because we added some new channels. And let's click execute workflow. What I'm
5:43:355 hours, 43 minutes, 35 secondshoping for is at least to see the real-time status. And then a failure, which is true. And the error should be because of a missing API key, which is exactly what it says right here.
5:43:475 hours, 43 minutes, 47 secondsAmazing, amazing job. So, let's go ahead and check if that's what we intended to do. We intended to add Gemini, OpenAI,
5:43:555 hours, 43 minutes, 55 secondsand Antropic. Uh, my apologies for the mess with the model thing. I just really
5:44:025 hours, 44 minutes, 2 secondsdidn't like how I do it. I think it's better to uh you know remove it entirely than to have that broken version of it.
5:44:105 hours, 44 minutes, 10 secondsAnd this works just fine. It will not be hard for you to you know improve on this later. Think of it as a personal
5:44:185 hours, 44 minutes, 18 secondschallenge. Uh you already saw the code for it. So you know how I would do it.
5:44:235 hours, 44 minutes, 23 secondsUh just try and make it better, more type safe. uh maybe try and make a fetch API request to your back end um using
5:44:315 hours, 44 minutes, 31 secondsTRPC of course and then maybe your backend can return you all the available models. I think that should work this
5:44:395 hours, 44 minutes, 39 secondsway. They are always going to be up to date which means you're going to need to have some kind of spinner for your uh
5:44:455 hours, 44 minutes, 45 secondsselect uh component. So yes, a bit more complex but shouldn't be too hard for
5:44:525 hours, 44 minutes, 52 secondsyou. You came this far. Amazing. Let's go ahead and merge this now. So, 24 AI nodes. I'm going to create a new branch.
5:45:015 hours, 45 minutes, 1 second24 AI nodes. Once I've created a new branch, I'm going to go ahead and commit 24 files right here.
5:45:125 hours, 45 minutes, 12 seconds24 AI nodes. Oh, so chapter 24, 24 files. Great. [laughter]
5:45:195 hours, 45 minutes, 19 secondsUh, let's go ahead and commit and let's publish the branch.
5:45:255 hours, 45 minutes, 25 secondsOnce we've published this branch, let's go ahead and open a pull request.
5:45:315 hours, 45 minutes, 31 secondsAnd since this was a big one, I do want to see what code rabbit will say, even though it will probably be a lot of repeated comments because we added three
5:45:415 hours, 45 minutes, 41 secondsidentical things. So if it finds a mistake in one of these, it will find mistake in all three. So I will just try
5:45:495 hours, 45 minutes, 49 secondsto see the most useful comments from code rabbit and I will show them from you.
5:45:565 hours, 45 minutes, 56 secondsAnd here we have the summary by code rabbit. New features. We added three new AI execution nodes. Enthropic Gemini and
5:46:055 hours, 46 minutes, 5 secondsopen AI for enhanced workflow automation. Each AI node supports customizable system and user prompts for
5:46:135 hours, 46 minutes, 13 secondstailored interactions. We integrated real-time status monitoring for AI task execution within workflows. Perfect. So
5:46:215 hours, 46 minutes, 21 secondslet's take a quick look at the sequence diagram. And the first thing I notice here is how it immediately understood that these three nodes are exactly the
5:46:305 hours, 46 minutes, 30 secondssame because it didn't create a sequence diagram for any specific uh AI model. It created for all three of them right
5:46:395 hours, 46 minutes, 39 secondshere. So it all starts with the AI node using react flow. Double clicking on that opens the dialogue in which we can
5:46:495 hours, 46 minutes, 49 secondsconfigure the well model. Right. Once we enter the form, we validate it using Zod
5:46:565 hours, 46 minutes, 56 secondsschema. We then submit those form values and we save the entire thing. Once we manually execute or with any other
5:47:055 hours, 47 minutes, 5 secondstrigger since we've added Google form and stripe, you can use any of those. We finally call the node executor. The
5:47:135 hours, 47 minutes, 13 secondsfirst thing we do for all of these are publish the loading status. We then compile handlebars templates in case
5:47:215 hours, 47 minutes, 21 secondsuser added any variables to the system prompt or the user prompt. We then initialize each AI client respectively
5:47:285 hours, 47 minutes, 28 secondsusing for now our API keys and then call the generate text and then we populate that in the context.
5:47:385 hours, 47 minutes, 38 secondsSo, what are the comments here? Well, they're actually not that bad. So, in here we have a typo and we have the same
5:47:465 hours, 47 minutes, 46 secondstypo in I mean I have I don't know if you have but I was typing container instead of contain
5:47:545 hours, 47 minutes, 54 secondsin anthropic exeutor I left open AI warnings instead of anthropic ones. So yes, good catch by code rabbit here.
5:48:045 hours, 48 minutes, 4 secondsAgain, [snorts] same typo for me here in some other dialogue in the Gemini one.
5:48:105 hours, 48 minutes, 10 secondsAnd then in here, it's telling us to make sure that we check if we have the credential value. This is a very good
5:48:175 hours, 48 minutes, 17 secondspoint and it is exactly what we are going to do later when we implement credentials. So this is just temporary.
5:48:265 hours, 48 minutes, 26 secondsWe are later going to actually fetch the credential and we're going to check if it doesn't exist and we are immediately
5:48:335 hours, 48 minutes, 33 secondsgoing to throw an error just like this one. So good catch by code rabbit but we are one step ahead. That's exactly what
5:48:415 hours, 48 minutes, 41 secondswe're going to be doing in here. It suggests adding defensive checks for array access. That's a good idea. I
5:48:495 hours, 48 minutes, 49 secondscould add these question marks. You can add them too. So this way you won't run into any uh errors with accessing deeply nested objects.
5:48:595 hours, 48 minutes, 59 secondsAnd I think that all the other comments repeated themselves as I said since we have three identical uh codes. So let's go ahead and merge this pull request.
5:49:095 hours, 49 minutes, 9 secondsGreat comments by code rabbit here. Now let's go ahead and go back inside of our main branch. As always make sure to synchronize the changes.
5:49:205 hours, 49 minutes, 20 secondsAnd once you've synchronized your changes, confirm that you have them in the graph right here. Here they are. 24
5:49:275 hours, 49 minutes, 27 secondsAI nodes. Amazing. So I believe that marks the end of this chapter. We pushed
5:49:345 hours, 49 minutes, 34 secondsto GitHub and we reviewed our pull request. Amazing. Amazing job and see you in the next chapter.
Chapter 9: 25 Credentials
5:49:425 hours, 49 minutes, 42 secondsIn this chapter, we're going to add credentials. credentials will be a great addition to our previous chapter in
5:49:495 hours, 49 minutes, 49 secondswhich we've implemented three different AI nodes. The only problem is right now those AI nodes are using our API keys.
5:49:595 hours, 49 minutes, 59 secondsBut what we want is to allow the users of our platform to bring their API keys.
5:50:065 hours, 50 minutes, 6 secondsSo in order to do that, we need to implement something called a credential.
5:50:115 hours, 50 minutes, 11 secondsWe're going to basically create a credential schema TRPC router client hooks and then create the normal uh
5:50:205 hours, 50 minutes, 20 secondsviews that we have already implemented for workflows and workflow list. But we're going to do the same for
5:50:275 hours, 50 minutes, 27 secondscredentials. So users will be able to pageionate through their credentials, search for them or maybe sort them by
5:50:345 hours, 50 minutes, 34 secondstype. So let's start by adding the credential schema and slowly going all the way to this which is adding the
5:50:445 hours, 50 minutes, 44 secondscredential dropdown to each AI node which will finally allow our users to select which credential or in other
5:50:525 hours, 50 minutes, 52 secondswords which API key they want to use for that AI node and then you will finally be able to remove your API keys from the
5:51:025 hours, 51 minutes, 2 secondsenvironment file. So let's start with the schema. I'm going to go inside of Prisma schema.prisma
5:51:115 hours, 51 minutes, 11 secondsand let's go ahead and just above workflow let's create model credential.
5:51:195 hours, 51 minutes, 19 secondsLet's go ahead and copy the ID because it's going to be the same. Name of each credential will be a required string.
5:51:285 hours, 51 minutes, 28 secondsValue will be a string as well. Let's copy the timestamps
5:51:355 hours, 51 minutes, 35 secondsand let's create a relation with the user. So user ID is going to be a string and then user will be a foreign key
5:51:445 hours, 51 minutes, 44 secondsrelation. So user a type of user relation fields user ID references ID on delete cascade.
5:51:585 hours, 51 minutes, 58 secondsAnd let me just zoom out so you can see how this looks in one line. And another
5:52:055 hours, 52 minutes, 5 secondsrelation it's going to have will be with the node that it will be assigned to. So
5:52:135 hours, 52 minutes, 13 secondsnow to fix these errors, we also have to add them to their respective schemas.
5:52:205 hours, 52 minutes, 20 secondsLet's start with the user one. So let's find user. It's right here. Great.
5:52:275 hours, 52 minutes, 27 secondsAnd now let's go ahead and just do credentials credential like this.
5:52:355 hours, 52 minutes, 35 secondsAnd then if you go ahead inside of the credential you can see that user is completely resolved.
5:52:435 hours, 52 minutes, 43 secondsNow we have to do the same for the node.
5:52:465 hours, 52 minutes, 46 secondsSo let's go ahead inside of model node and what we're going to do is the
5:52:535 hours, 52 minutes, 53 secondsfollowing. Let's add credential ID to be an optional string because not
5:53:025 hours, 53 minutes, 2 secondsevery node will need to have a credential, right? Only those which use API keys like AI nodes. So credential
5:53:125 hours, 53 minutes, 12 secondswill be a type of credential again optional relation fields credential ID
5:53:205 hours, 53 minutes, 20 secondsreferences ID and this time we're not going to add cascade because if we
5:53:275 hours, 53 minutes, 27 secondsremove a credential it shouldn't delete the node as well. The node is just going to fail. But that's fine. We don't want
5:53:365 hours, 53 minutes, 36 secondsto alter someone's workflow just because they deleted a credential that they were using somewhere.
5:53:435 hours, 53 minutes, 43 secondsSo let's go ahead uh uh or perhaps maybe this won't even allow to delete a credential which is being used. So maybe
5:53:515 hours, 53 minutes, 51 secondswe can explore on delete either no action or maybe set null. That
5:54:005 hours, 54 minutescould be one of the options. But for now just leave it like this. Great. So once we added credential ID and credential
5:54:085 hours, 54 minutes, 8 secondsboth optional to model node there should be no more errors here either with the user relation or with the node relation.
5:54:215 hours, 54 minutes, 21 secondsWhat we have to do now is we have to implement something called credential type. Now this isn't really required but
5:54:285 hours, 54 minutes, 28 secondsit will improve user experience. So let's create an enum credential type and let's give it open AI anthropic and
5:54:365 hours, 54 minutes, 36 secondsGemini and then let's go ahead and make another property inside of the credential model type credential type basically make it required.
5:54:485 hours, 54 minutes, 48 secondsSo user will have to choose all right for which one of these are you creating an API key for and then later if you
5:54:555 hours, 54 minutes, 55 secondshave more models you can extend it. This just makes it easier for the user to categorize their credentials. But you
5:55:025 hours, 55 minutes, 2 secondscan of course choose if you want to do this or not.
5:55:065 hours, 55 minutes, 6 secondsOnce we have that added, let's go ahead and push those changes. Npx Prisma migrate dev.
5:55:155 hours, 55 minutes, 15 secondsWe can name this migration credential schema.
5:55:205 hours, 55 minutes, 20 secondsAnd once you press enter, it should synchronize the database with your schema. As always, make sure you restart your next server and your ingest server.
5:55:305 hours, 55 minutes, 30 secondsAnd then inside of your local host 3000, if you have it running, just make sure to refresh it. So, I'm just going to do
5:55:375 hours, 55 minutes, 37 secondsthat. Instead of localhost 3000, just make sure it refreshes. Great. So, we've handled the schema.
5:55:465 hours, 55 minutes, 46 secondsNow, let's go ahead and let's add the router. So, I'm going to go ahead inside of source
5:55:535 hours, 55 minutes, 53 secondsfeatures and let's go ahead and create credentials.
5:55:595 hours, 55 minutes, 59 secondsInside of credentials, I'm going to create a server folder and let's go ahead and let's copy the workflows routers.ds.
5:56:105 hours, 56 minutes, 10 secondsAnd let's paste it here.
5:56:135 hours, 56 minutes, 13 secondsAnd now we're going to go ahead and rename that workflows routers to credentials.
5:56:205 hours, 56 minutes, 20 secondsSo let me just go ahead and select this credentials router. So make sure you're doing that
5:56:285 hours, 56 minutes, 28 secondsinside of your new credentials folder right here. You can immediately remove the execute one because we're not going to need it. Which means you can also remove these unused imports.
5:56:405 hours, 56 minutes, 40 secondsGreat. We will have the create one and you can choose for yourself. Do you want this to be a premium procedure or not?
5:56:505 hours, 56 minutes, 50 secondsI'm going to say yes. This should be a premium procedure. So only those who are subscribed can add uh credentials.
5:56:575 hours, 56 minutes, 57 secondsLet's go ahead and add an input here because this will not be automatically named like workflow. This will be
5:57:055 hours, 57 minutes, 5 secondssomething user has to fill in. And what user has to fill in is the following.
5:57:105 hours, 57 minutes, 10 secondsThey have to give this a name. So let's go ahead and make this required. Name is required
5:57:185 hours, 57 minutes, 18 secondstype which will be an enum credentials type. You can import this from generated
5:57:255 hours, 57 minutes, 25 secondsPrisma which we've just added. And finally let's do the value basically the API key.
5:57:345 hours, 57 minutes, 34 secondsAnd let's change this to be value is required. Then besides context here we're also going to have the input.
5:57:465 hours, 57 minutes, 46 secondsFrom here you can dstructure name value and type from the input.
5:57:545 hours, 57 minutes, 54 secondsAnd let's go ahead and create a new credential here. So we can keep this return as is. Actually instead of doing
5:58:035 hours, 58 minutes, 3 secondsprisma.workflow let's do prisma.credential.create.
5:58:075 hours, 58 minutes, 7 secondsLet's go ahead and use name. User is correct. Let's remove the nodes object.
5:58:155 hours, 58 minutes, 15 secondsAnd let's go ahead and pass in the type and the value. And I'm just going to add a little to-do here. Uh consider
5:58:245 hours, 58 minutes, 24 secondsencrypting in production. So what's the deal with encryption and API keys? Well, obviously
5:58:325 hours, 58 minutes, 32 secondsif you are storing other people's API keys, you should consider encrypting them. In fact, in my previous tutorial,
5:58:415 hours, 58 minutes, 41 secondswhich was B2B intercom clone called Echo, I used Amazon Secrets Manager to
5:58:485 hours, 58 minutes, 48 secondsdo this. But interestingly enough, when I told people that I did this, they were quite surprised because most of them
5:58:565 hours, 58 minutes, 56 secondsconsider API keys to be something you can easily rotate and delete if it gets
5:59:025 hours, 59 minutes, 2 secondsleaked. That is technically true. But always think of if you have, you know, thousands of users and thousands of
5:59:105 hours, 59 minutes, 10 secondsusers trust you with their API keys and if your database gets compromised, uh even though it's not exactly the end of
5:59:185 hours, 59 minutes, 18 secondsthe world for them because they can rotate API keys quite easily, some of them probably didn't create an API key
5:59:265 hours, 59 minutes, 26 secondsjust for your page. They have probably been using the same API key everywhere.
5:59:315 hours, 59 minutes, 31 secondsAnd now because of your database leak, they have to get rid of all of those other places where they have been using
5:59:395 hours, 59 minutes, 39 secondsthat API key. So yes, it is obviously not the best practice to store an API
5:59:465 hours, 59 minutes, 46 secondskey as a string in your database. Uh I would highly suggest looking into Amazon Secrets Manager to handle this. I have
5:59:545 hours, 59 minutes, 54 secondsthe exact tutorial doing this in my previous project echo. Uh I will leave a link somewhere here on the screen so you
6:00:026 hours, 2 secondscan take a look at it. But then again uh I have heard of people just storing API
6:00:106 hours, 10 secondskeys in the database plainly like this because yes they can be very easily rotated from the dashboard.
6:00:186 hours, 18 secondsSo for now let's go ahead and do this but please add a comment like this at least so you are aware that this is something you should consider doing.
6:00:286 hours, 28 secondsPerfect. So we can now successfully create the credential. Now let's go ahead and let's do the remove one
6:00:356 hours, 35 secondsbecause it should be quite simple as well. So we need the ID and instead of workflow we're doing credential. There we go.
6:00:466 hours, 46 secondsAnd uh let me just see delete. All right. So this will basically throw if not available. Yeah, I think this is uh perfectly fine as is.
6:00:596 hours, 59 secondsUh now let's go ahead and let's implement the update one. So again uh I like to leave these to be protected
6:01:066 hours, 1 minute, 6 secondsprocedures rather than premium ones simply because it's better user experience.
6:01:126 hours, 1 minute, 12 secondsThen again we don't need nodes. We don't need edges. But what we do need is name type and value. So you can just copy
6:01:206 hours, 1 minute, 20 secondsthose from above and add them here. Then you can destructure the name, the type and the value.
6:01:306 hours, 1 minute, 30 secondsInstead of workflow here, we can do credential find unique or throw.
6:01:386 hours, 1 minute, 38 secondsAnd let's go ahead and actually remove this entire thing. We don't need we don't need it to be this complicated at all.
6:01:496 hours, 1 minute, 49 secondsSo let's just do if there is no credential.
6:01:556 hours, 1 minute, 55 secondsUh actually yeah that should not be possible because we're using find unique or throw. So what we can do is we can
6:02:046 hours, 2 minutes, 4 secondsjust update it. Const updated credential or let's just do return
6:02:106 hours, 2 minutes, 10 secondsprisma.credential.update where
6:02:186 hours, 2 minutes, 18 secondsID is the ID. User ID is contact out user ID.
6:02:286 hours, 2 minutes, 28 secondsAnd let's pass in the data with the name, the type, and the value. And let's go ahead and add to-do consider
6:02:366 hours, 2 minutes, 36 secondsencrypting the same comment we added above. So consider encrypting in production.
6:02:446 hours, 2 minutes, 44 secondsAnd in fact, we don't even need this then because this will throw if it doesn't exist or if the user ID is
6:02:516 hours, 2 minutes, 51 secondsinvalid. There we go. So a very simple update procedure. We don't need the update name procedure for this one. So
6:03:016 hours, 3 minutes, 1 secondwe have handled remove, we have handled update. Let's handle get one. Again, protect procedure Z dot string for the
6:03:106 hours, 3 minutes, 10 secondsID context and input right here. And uh this time we don't need to do any of this transformation. The code should be
6:03:186 hours, 3 minutes, 18 secondsmuch much simpler. Now we can just do return directly
6:03:266 hours, 3 minutes, 26 secondsprisma.credential find unique or throw remove include and that's it. I'm pretty
6:03:356 hours, 3 minutes, 35 secondssure that's the only thing we have to do. Get one finished.
6:03:406 hours, 3 minutes, 40 secondsUh now we have to implement get many. So again protected procedure we will still
6:03:476 hours, 3 minutes, 47 secondshave the page page size number minimum maximum default search extract all of them here. And we still
6:03:566 hours, 3 minutes, 56 secondsneed a promise all for items and the total count. Let's go ahead and do prisma.credential.find
6:04:036 hours, 4 minutes, 3 secondsmany. I think everything here can stay exactly the same. Make sure you change this to credential too.
6:04:116 hours, 4 minutes, 11 secondsAnd let's see. So where user ID name contains mode. Perfect.
6:04:176 hours, 4 minutes, 17 secondsAnd we could do the following here.
6:04:226 hours, 4 minutes, 22 secondsWe could go inside of Prisma credential find many.
6:04:276 hours, 4 minutes, 27 secondsWe could manually select ID, name, type,
6:04:336 hours, 4 minutes, 33 secondscreated at, updated at, but purposely don't add value for security since uh we
6:04:446 hours, 4 minutes, 44 secondsare now storing it as plain text. So at least at this level, let's make sure we don't show it to everyone, right?
6:04:546 hours, 4 minutes, 54 secondsAnd we could in fact do the same thing inside of our get one here. So select
6:05:016 hours, 5 minutes, 1 secondlet's go ahead and just do the exact same thing.
6:05:066 hours, 5 minutes, 6 secondsID name type created at and updated at.
6:05:136 hours, 5 minutes, 13 secondsBut then again since we are using the user ID they are the ones who are allowed to see that. Uh so maybe we are
6:05:226 hours, 5 minutes, 22 secondsjust creating problems here. Let's remove the select. Sorry for changing my mind uh so often. But this is the way I develop apps, right? I change my mind
6:05:306 hours, 5 minutes, 30 secondsoften and I try to come to some solution that I like. So for now, yes, since this is not a public API, it is very strictly
6:05:386 hours, 5 minutes, 38 secondsfor this user, they kind of already know what their API keys are. So let's leave them here.
6:05:466 hours, 5 minutes, 46 secondsAll right. So the logic for total pages has next page has previous page is exactly the same. So no need to change this at all. Uh one more thing will be
6:05:566 hours, 5 minutes, 56 secondsadded here which will be called get by type.
6:06:016 hours, 6 minutes, 1 secondGet by type will be a protected procedure.
6:06:056 hours, 6 minutes, 5 secondsIt will have an input which will be an object and the object will very simply accept the type and new.
6:06:156 hours, 6 minutes, 15 secondsAnd then let's go ahead and do query asynchronous extract input and context.
6:06:256 hours, 6 minutes, 25 secondsLet me go ahead and fix this. There we go. And then inside of here, let's go ahead and destructure
6:06:336 hours, 6 minutes, 33 secondsthe type from the input. Let's go ahead and fetch all credentials
6:06:406 hours, 6 minutes, 40 secondsfrom await prisma credential find many where we have a matching type and user
6:06:486 hours, 6 minutes, 48 secondsID is context out user ID. So for this one we won't add any pageionation simply because this will be used inside of a dropdown.
6:06:576 hours, 6 minutes, 57 secondsSo let's just go ahead and return every single result and we can just directly do return here.
6:07:066 hours, 7 minutes, 6 secondsAnd then you don't need to mark this as asynchronous.
6:07:136 hours, 7 minutes, 13 secondsThere we go. So we just finished the entire router here. Let me just check if
6:07:206 hours, 7 minutes, 20 secondsI have any unnecessary asyncs here. I don't think I need async if I'm just directly returning. I could
6:07:286 hours, 7 minutes, 28 secondsbe wrong, but I'm pretty sure I don't need it.
6:07:326 hours, 7 minutes, 32 secondsIt won't change anything if you do have it or don't have it. If the case is true that you don't need it, let's remove
6:07:386 hours, 7 minutes, 38 secondsthese unused imports. Perfect. And now let's go ahead inside of TRPC
6:07:456 hours, 7 minutes, 45 secondsrouters_app and let's add credentials.
6:07:516 hours, 7 minutes, 51 secondsCredentials router and make sure that you import it. There we go. Now that we
6:07:586 hours, 7 minutes, 58 secondshave the credentials router, let me go ahead and mark that as completed.
6:08:056 hours, 8 minutes, 5 secondsNow let's go ahead and implement the hooks. Once again, we can copy this from features workflows hooks.
6:08:166 hours, 8 minutes, 16 secondsSo I'm just going to go ahead and copy this and inside of credentials, I'm going to paste it here. Let's start with use workflows.
6:08:246 hours, 8 minutes, 24 secondsI'm going to rename it to use credentials.
6:08:286 hours, 8 minutes, 28 secondsLet's go inside of use credentials. And now let's go ahead and just you know change things up. So hook to fetch all
6:08:356 hours, 8 minutes, 35 secondscredentials using suspense which will be called use suspense credentials
6:08:436 hours, 8 minutes, 43 secondsfor the params. Yes, let's leave them like this now for now and let's just use drpc.credentials.get many. There we go.
6:08:536 hours, 8 minutes, 53 secondsHook to create a new credential.
6:08:566 hours, 8 minutes, 56 secondsuse create credential and let's go ahead and do TRPC and let's
6:09:036 hours, 9 minutes, 3 secondscreate let's change both instances. So TRPC.credentials.create this will be credential created failed to create credential.
6:09:186 hours, 9 minutes, 18 secondsLet's go ahead and replace this hook to remove a credential.
6:09:246 hours, 9 minutes, 24 secondsUse remove credential and then again just replace these three instances with credentials.
6:09:326 hours, 9 minutes, 32 secondsChange this to be credential removed
6:09:396 hours, 9 minutes, 39 secondshook to fetch a single credential using suspense. So use suspense
6:09:476 hours, 9 minutes, 47 secondscredential tRPC.credentials credentials like that.
6:09:526 hours, 9 minutes, 52 secondsHook to update a workflow name can be removed entirely and we can immediately go to a hook to update workflow. Rename
6:10:006 hours, 10 minutesit to credential. This will be use update credential.
6:10:066 hours, 10 minutes, 6 secondsReplace all of these instances to be credentials. Change this to be credential
6:10:136 hours, 10 minutes, 13 secondssaved and this to be failed to save credential. We don't need the execute hook at all.
6:10:226 hours, 10 minutes, 22 secondsAnd that is it. Great. A lot of you ask me whenever I do this kind of very similar code, why don't don't I just
6:10:296 hours, 10 minutes, 29 secondscreate an abstraction? Well, you absolutely could. And we kind of did, you know, with entity components, right?
6:10:346 hours, 10 minutes, 34 secondsWe have entity item, we have entity list, right? This is an abstraction, right? But sometimes I just don't like
6:10:426 hours, 10 minutes, 42 secondsthem, especially for like hooks like this. Um, this is a tutorial, so obviously I'm making it kind of easier
6:10:496 hours, 10 minutes, 49 secondsfor myself uh by having both credentials and workflows have the exact same hooks.
6:10:556 hours, 10 minutes, 55 secondsSo, obviously for you, it seems like I could have just created an abstraction here. But chances are in real world in
6:11:046 hours, 11 minutes, 4 secondsproduction, your credential hooks and your workflow hooks will probably be a little bit different, right? So because
6:11:116 hours, 11 minutes, 11 secondsof that I recommend not always rushing to create an abstraction. I think more often than not it will lead to
6:11:196 hours, 11 minutes, 19 secondscomplicated code. Sometimes having explicit separations is better in my opinion and I would rather have very
6:11:276 hours, 11 minutes, 27 secondssimilar repeated code than magic abstractions that are super hard to maintain and understand. So that's why.
6:11:366 hours, 11 minutes, 36 secondsGreat. One more thing we have to fix this is the use workflow params. So let's now go ahead instead of use workflow params.
6:11:446 hours, 11 minutes, 44 secondsLet's change it to use credentials params. If it asks to update imports, you can select yes. And the only one it
6:11:536 hours, 11 minutes, 53 secondsshould update is this one instead of use credentials right here. So you can press save. It's still importing this. That's fine. We're
6:12:016 hours, 12 minutes, 1 secondgoing to change that now. So we also need the actual params here. So, let me go ahead and copy that workflows params.ts.
6:12:126 hours, 12 minutes, 12 secondsLet me copy that file. Add it inside of the credentials folder.
6:12:186 hours, 12 minutes, 18 secondsPage page size search. I think all of this is true. But maybe
6:12:256 hours, 12 minutes, 25 secondswe will also need a type. Um, I don't know. Let's let's leave it like this for now. Great.
6:12:336 hours, 12 minutes, 33 secondsSo instead of use credential params this should now exist params. There we go.
6:12:406 hours, 12 minutes, 40 secondsBut we have to rename them. So instead of credentials folder params.ds just change this to be
6:12:476 hours, 12 minutes, 47 secondscredentials params. And the answer why don't I abstract this is exactly the same.
6:12:546 hours, 12 minutes, 54 secondsRight? Again I'm making this easier for myself and for you because this is a tutorial. Right? But chances are you will have different query options for
6:13:036 hours, 13 minutes, 3 secondscredentials than you would for workflows. And that's why I avoid creating this magic abstractions, right?
6:13:096 hours, 13 minutes, 9 secondsIt's completely fine to have similar code. I really don't like obsessing with optimizing every single code repetition
6:13:166 hours, 13 minutes, 16 secondsthat you can find. I find it way easier to code in an environment like this than just having a billion magic abstractions. So, let's go instead of
6:13:246 hours, 13 minutes, 24 secondsuse credentials now and let's go ahead and replace this with uh oh, I didn't rename it. My bad. Use credentials params.
6:13:376 hours, 13 minutes, 37 secondsThere we go. And I think this is the only place that we actually use that.
6:13:416 hours, 13 minutes, 41 secondsYeah, perfect. So now what I like to do is I like to right click on credentials, find in folder, and let's search for workflow. Perfect. Workflows. Nothing.
6:13:526 hours, 13 minutes, 52 secondswhich means we have very successfully created all the hooks required for this.
6:13:576 hours, 13 minutes, 57 secondsUm but I do think that we need to add one more hook here
6:14:046 hours, 14 minutes, 4 secondsand that will be to fetch credentials by type and that should be quite easy.
6:14:096 hours, 14 minutes, 9 secondsLet's go all the way to the bottom here and let's add it. So instead of use credentials, let's add a hook to fetch credentials by
6:14:166 hours, 14 minutes, 16 secondstype. So use credentials by type. Only prop it's going to accept is the credential type enum from generated
6:14:246 hours, 14 minutes, 24 secondsPrisma. And then it will use uh use query. Let me just check. Uh
6:14:316 hours, 14 minutes, 31 secondsis that the single query? Let me just Why am I not having use query?
6:14:386 hours, 14 minutes, 38 secondsOh yes yes yes. So this will not be use suspense query. This will yes just be a normal use query. I was um surprised why
6:14:476 hours, 14 minutes, 47 secondsdon't I have use query already imported here but I forgot that I use use suspense query where possible but use
6:14:556 hours, 14 minutes, 55 secondsquery is needed for this specific type because it will be used in a dialogue it
6:15:026 hours, 15 minutes, 2 secondswill not be able to be prefetched I mean technically it could but it's just simpler this way
6:15:106 hours, 15 minutes, 10 secondsso that's it for hooks perfect now we can go to the page which is basically the server loader. So I'm going to go
6:15:206 hours, 15 minutes, 20 secondsinside of source app folder dashboard rest and we already have credentials.
6:15:256 hours, 15 minutes, 25 secondsPerfect. Let's go inside of page.tsx here. So we already have require out.
6:15:326 hours, 15 minutes, 32 secondsWhat the only thing we need to do now is we need to prefetch our credentials. We
6:15:396 hours, 15 minutes, 39 secondscan do that by uh creating the params loader. So we have all the you know search filters, pagionation filters etc.
6:15:486 hours, 15 minutes, 48 secondsUh and then prefetching those. So let's first define type props search params promise.
6:15:586 hours, 15 minutes, 58 secondsLet me add that here. Promise search params from nooks.
6:16:056 hours, 16 minutes, 5 secondsThen let's go ahead down here. Let's dstructure the search params.
6:16:116 hours, 16 minutes, 11 secondsGreat. So great beginning. But now we have to go back inside of features
6:16:216 hours, 16 minutes, 21 secondscredentials inside of server here. Go ahead and create params.ds.
6:16:296 hours, 16 minutes, 29 secondsLet's import create loader from nooks forward slashs server.
6:16:366 hours, 16 minutes, 36 secondsAnd let's import credentials params from dot dot /params and export
6:16:446 hours, 16 minutes, 44 secondscon credentials params loader to be create loader and then pass
6:16:526 hours, 16 minutes, 52 secondsin the params in here. So this is the exact same thing that we have in the workflows. If you go inside of server oh so it's called params-loader. Good idea.
6:17:036 hours, 17 minutes, 3 secondsWe should call it that. So, let me go ahead inside of credentials and just rename this in the server to be params-loader.
6:17:136 hours, 17 minutes, 13 secondsThat's a better name. And then we also need to copy prefetch.ds.
6:17:206 hours, 17 minutes, 20 secondsSo, let's copy that and let's paste it inside of credentials server. Prefetch.ds.
6:17:286 hours, 17 minutes, 28 secondsNow, again, we're going to have to modify this a little bit, but it's just two of these. So instead of this being
6:17:356 hours, 17 minutes, 35 secondsthe input, it's going to be credentials dot get money get many. So prefetch all credentials
6:17:436 hours, 17 minutes, 43 secondsand this will be prefetch a single credential. So prefetch credentials
6:17:506 hours, 17 minutes, 50 secondstrpc.credentials.get many prefetch credential as in one and
6:17:586 hours, 17 minutes, 58 secondsthe RPC.credentials.get get one. There we go. As simple as that.
6:18:046 hours, 18 minutes, 4 secondsAnd I think that we are now ready to go back to our page.tsx here. Perfect.
6:18:116 hours, 18 minutes, 11 secondsSo now that we have that, let's go ahead and do const params await create my
6:18:186 hours, 18 minutes, 18 secondsapologies. Credentials params loader search params.
6:18:246 hours, 18 minutes, 24 secondsThere we go. So credentials params loader from features credentials server params loader
6:18:326 hours, 18 minutes, 32 secondsand then let's go ahead and just do prefetch credentials make sure multiple of them right from
6:18:396 hours, 18 minutes, 39 secondsfeatures credentials server prefetch and pass in the params. So this one prefetch
6:18:476 hours, 18 minutes, 47 secondscredentials all of them right when you hover over this uh it should say prefetch all credentials.
6:18:566 hours, 18 minutes, 56 secondsThere we go.
6:18:596 hours, 18 minutes, 59 secondsSo now that we have this we can go ahead and add the hydration boundary here. So hydrate client.
6:19:096 hours, 19 minutes, 9 secondsLet me just see which one do we have.
6:19:116 hours, 19 minutes, 11 secondshydrate client from TRPC server error boundary
6:19:186 hours, 19 minutes, 18 secondsfrom React error boundary fallback
6:19:246 hours, 19 minutes, 24 secondsand let's just do error suspense
6:19:306 hours, 19 minutes, 30 secondswhich you can import from React with a fallback loading
6:19:396 hours, 19 minutes, 39 secondsand for Now, let's just go ahead and do to-do credentials list.
6:19:486 hours, 19 minutes, 48 secondsAll right. So, what I want to do is I just want to check if that's exactly what I do with the workflows. So,
6:19:566 hours, 19 minutes, 56 secondsworkflows page. DSX uses hydrate client, which is exactly what I use here. So, hydrate client,
6:20:046 hours, 20 minutes, 4 secondswhich is basically hydration boundary with the the hydrate thing. Perfect. Great.
6:20:126 hours, 20 minutes, 12 secondsOnce we have this uh we are now ready to create the client side. So we just finished this server loader. We now have to create the client hydration.
6:20:256 hours, 20 minutes, 25 secondsSo I'm going to go ahead and go back inside of my features folder credentials and I'm going to create components I
6:20:346 hours, 20 minutes, 34 secondsbelieve. Or maybe is it a UI folder first? I'm not 100% sure. I think it's
6:20:416 hours, 20 minutes, 41 secondsjust this. Yes. And let's go ahead and do credentials. DSX.
6:20:506 hours, 20 minutes, 50 secondsThere we go. And now I'm also going to open workflows components workflows.
6:20:576 hours, 20 minutes, 57 secondsDSX.
6:20:596 hours, 20 minutes, 59 secondsAnd uh well, I think that we can copy everything from here and just paste it inside. And then we're going to work our
6:21:066 hours, 21 minutes, 6 secondsway through refactoring this. So yes, we're not going to be using use create workflow or use remove workflow or use suspense workflows from this hook.
6:21:176 hours, 21 minutes, 17 secondsInstead, when we are working inside of the credentials feature, our hook folder has these two. So let's change the import first use credentials.
6:21:286 hours, 21 minutes, 28 secondsSame thing for this use credentials params.
6:21:336 hours, 21 minutes, 33 secondsLeave these to be errors for now. Let's just work through renaming the main things first. So this will be
6:21:426 hours, 21 minutes, 42 secondscredentials search credentials.
6:21:486 hours, 21 minutes, 48 secondsThis will be workflows uh not workflows list it will be credentials list.
6:21:566 hours, 21 minutes, 56 secondsUh okay let's leave this as is. This will be credentials header.
6:22:076 hours, 22 minutes, 7 secondsThe title here can be credentials.
6:22:116 hours, 22 minutes, 11 secondsCreate and manage your credentials. And this will be new credential.
6:22:216 hours, 22 minutes, 21 secondsThen for the pagination same thing. So credentials pagination.
6:22:296 hours, 22 minutes, 29 secondsFor the container, same thing credentials container. And now we can replace all these with credentials
6:22:386 hours, 22 minutes, 38 secondsequivalent. So credentials header search and pageionation for the loading error and empty all same thing. Credentials
6:22:476 hours, 22 minutes, 47 secondsloading error and empty. Loading credentials.
6:22:546 hours, 22 minutes, 54 secondsAll right. Empty view. You haven't created any credentials yet.
6:22:596 hours, 22 minutes, 59 secondsGet started by creating your first credential workflow item will be credential item.
6:23:106 hours, 23 minutes, 10 secondsWe can leave this as okay. So a lot of things changed. So let's start with the simple change here. Let's find all instances that use use workflows params.
6:23:226 hours, 23 minutes, 22 secondsSo one, two, looks like three of them, right? Yes. three use workflows params and let's change all of them to be use
6:23:326 hours, 23 minutes, 32 secondscredentials params so I have changed this import I have changed it inside of credentials search
6:23:416 hours, 23 minutes, 41 secondsand I have changed it inside of credentials pagionation so if I search for use workflows params I should find
6:23:496 hours, 23 minutes, 49 secondsno results here and you shouldn't either and now we're going to do the same for use create workflow so Uh this one actually won't be needed at all here.
6:24:006 hours, 24 minutesYou can remove use create workflow entirely. Let's just find where it's used it. Use create workflow. Yes. So
6:24:096 hours, 24 minutes, 9 secondscredentials header will not have this at all. Let's remove it. And handle create
6:24:176 hours, 24 minutes, 17 secondswill very simply just do router.push push to credentials
6:24:246 hours, 24 minutes, 24 secondsnew because we're going to need a form to create it and this is where the form will be rendered
6:24:336 hours, 24 minutes, 33 secondsand we uh the upgrade model will also not be needed here. So you can remove this, you can remove the fragment of
6:24:416 hours, 24 minutes, 41 secondswrapping it and you can remove is creating and now we won't have oh we can actually
6:24:506 hours, 24 minutes, 50 secondsI think we can do new button href yes credentials
6:24:566 hours, 24 minutes, 56 secondsforward slash new and then remove on new and then remove this and remove this.
6:25:056 hours, 25 minutes, 5 secondsmuch simpler now. That's why we've created this so we have an option to choose whether we want to do a function
6:25:116 hours, 25 minutes, 11 secondsor an HTTP redirect credentials patching. Okay. Um let's go back here. Uh do we still need use
6:25:216 hours, 25 minutes, 21 secondsworkflow use router? We do. Let's now find use remove workflow. Uh I think these are only two instances. Perfect.
6:25:296 hours, 25 minutes, 29 secondsSo instead of credential item, you should rename it from the input from the import and here to use remove.
6:25:396 hours, 25 minutes, 39 secondsI have no idea how I changed that so badly. So use remove credential.
6:25:466 hours, 25 minutes, 46 secondsThere we go. Use remove credential.
6:25:486 hours, 25 minutes, 48 secondsInstead of credential item, let's now call this remove credential too.
6:25:566 hours, 25 minutes, 56 secondsThe href should go to forward slashcredentials and uh image here. It can just be key
6:26:046 hours, 26 minutes, 4 secondsicon. I don't know. Let's just leave it to be this. And let's just use remove credential is pending. Leave this to be
6:26:126 hours, 26 minutes, 12 secondsworkflow. We're going to handle the details details later. Now we have use suspense workflows. And I think this is
6:26:216 hours, 26 minutes, 21 secondsalso used in not too many places. So just three places. And let's change it to be use suspense
6:26:306 hours, 26 minutes, 30 secondscredentials. And I click this to replace all. So let's see exactly where. The
6:26:376 hours, 26 minutes, 37 secondsfirst place is here in the import. The second place is in the credentials list.
6:26:446 hours, 26 minutes, 44 secondsThe third place is in the credentials pagionation. Make sure you have changed all three to use suspense credentials.
6:26:516 hours, 26 minutes, 51 secondsPerfect. Now let's fix one by one.
6:26:546 hours, 26 minutes, 54 secondsinside of credentials list inside of entity list here. First things first, this is now credentials.
6:27:026 hours, 27 minutes, 2 secondsSo let's change that. This this and this is all a single credential. We no longer
6:27:106 hours, 27 minutes, 10 secondshave workflow item nor workflow is empty. So let's just do credential item and credentials empty.
6:27:186 hours, 27 minutes, 18 secondsThere we go. So no more errors in the import. That's great. Let's scroll a bit down to see what's going on here. Inside
6:27:266 hours, 27 minutes, 26 secondsof credentials, empty. We still have create workflow. I see handle create
6:27:336 hours, 27 minutes, 33 secondshere. So on new, let me see. Empty view only accepts on new. Got it. So we're just going to go ahead and use the
6:27:406 hours, 27 minutes, 40 secondsrouter push here. So instead of handle create router push to credentials
6:27:496 hours, 27 minutes, 49 secondsand then just to new. We can then remove this. We can remove upgrade model. We
6:27:576 hours, 27 minutes, 57 secondscan remove the fragment and everything and make it just that much simpler. Perfect.
6:28:046 hours, 28 minutes, 4 secondsI think that's a lot of things resolved.
6:28:076 hours, 28 minutes, 7 secondsWe can now remove use upgrade model import from here.
6:28:126 hours, 28 minutes, 12 secondsSo now what I want to do is I want to change um the icon. Yes. So the icon uh
6:28:226 hours, 28 minutes, 22 secondslet me try and find a nice way to do this here. In fact, I think it's time to render this so you can actually see what
6:28:306 hours, 28 minutes, 30 secondswe're doing because we just changed a lot of code. Uh but it's all code we've seen before. So we know how this looks,
6:28:376 hours, 28 minutes, 37 secondsright? So let's just go ahead and go back inside of our dashboard rest credentials page.tsx
6:28:456 hours, 28 minutes, 45 secondsand let's render the credentials uh list
6:28:536 hours, 28 minutes, 53 secondsfrom features credentials components credentials.
6:28:576 hours, 28 minutes, 57 secondsAnd I think that now finally if you go ahead and refresh this and click on credentials, you should see a very
6:29:066 hours, 29 minutes, 6 secondssimilar look, but it should say no items. You haven't created any credentials yet. Get started by creating your first credential. And if I click
6:29:136 hours, 29 minutes, 13 secondsadd item, it should redirect me uh to credential ID new, which is technically correct, but obviously we will change
6:29:206 hours, 29 minutes, 20 secondsthat later. Uh but at least the redirect is working. Great. Uh so now also what
6:29:296 hours, 29 minutes, 29 secondswe have to do is we have to go inside of credential uh my apologies inside of page here and we have to add the credentials container
6:29:376 hours, 29 minutes, 37 secondslike this and let me just see
6:29:456 hours, 29 minutes, 45 secondsso credentials container you need to import that from the same list where you've imported credentials
6:29:536 hours, 29 minutes, 53 secondslist from features credentials components credentials So credentials container simply has the header search and the pageionation and
6:30:006 hours, 30 minutessome additional styling to make this centered. There we go. So it was that easy for us to create the same layout that we have in workflows and that's why
6:30:086 hours, 30 minutes, 8 secondsI didn't render it until now because it is exactly the same. It's nothing you haven't seen before. Uh but yes, I think
6:30:166 hours, 30 minutes, 16 secondsnow it might be time, you know, to start seeing what we actually changed code for. So you can start to notice if there
6:30:236 hours, 30 minutes, 23 secondsare any bugs so you have time to fix it because what we need to develop now is this the new page right. So we already
6:30:346 hours, 30 minutes, 34 secondshave uh the reason this is not showing 404 is because it is going to slashcredentials/new
6:30:416 hours, 30 minutes, 41 secondsand if you take a look here in the dashboard we have that that is this but that's not
6:30:486 hours, 30 minutes, 48 secondsexactly what we want. So we can very simply override I mean like allow every single
6:30:556 hours, 30 minutes, 55 secondscredential ID to be loaded here except new by creating a new folder and literally calling it new. And now if you
6:31:056 hours, 31 minutes, 5 secondsgo ahead and create a page dsx here and go ahead and just do div form to create
6:31:136 hours, 31 minutes, 13 secondsnew you will see that now that's what's rendered here because my current URL is the following and yours should be too.
6:31:246 hours, 31 minutes, 24 secondsSo this is my current URL forward/credentials/new.
6:31:286 hours, 31 minutes, 28 secondsBut if I change this to one, two, three and go here, then you will see the difference. Right? Now I'm using the other folder.
6:31:386 hours, 31 minutes, 38 secondsI hope you understand. Right? So if we hit anything that isn't keyword new, it's going to be using this dynamic loader to load the ID of the credential.
6:31:516 hours, 31 minutes, 51 secondsBut if I literally type in for forward slash new, it will redirect to this page right here. And this is our chance to
6:32:006 hours, 32 minutesbuild the form to allow the user to create a new credential.
6:32:066 hours, 32 minutes, 6 secondsSo let's go ahead and just go back inside of credentials page.tsx and let's go ahead and use our
6:32:146 hours, 32 minutes, 14 secondscredentials error component here so we don't forget that.
6:32:206 hours, 32 minutes, 20 secondsAnd let's use our credentials loading here so we don't forget that either. Uh so now if I go back inside of
6:32:286 hours, 32 minutes, 28 secondscredentials itself, it should have just a tiny bit nicer experience for the loading and for the error if it happens.
6:32:376 hours, 32 minutes, 37 secondsAnd now we can go ahead and entirely focus on the new page. So this will be
6:32:446 hours, 32 minutes, 44 secondsan asynchronous server component. And first thing we're going to do is we're going to require out. So it redirects
6:32:516 hours, 32 minutes, 51 secondsthe user if they are not logged in. Then let's go ahead and give it some styling here. So for this div, I'm going to give
6:32:596 hours, 32 minutes, 59 secondsit a class name of padding 4, medium of px10.
6:33:046 hours, 33 minutes, 4 secondsMy apologies. Uh on medium break point, give it a px of 10. And on medium, give it a py of six and full height. And then
6:33:136 hours, 33 minutes, 13 secondswe're just going to go ahead and kind of limit the maximum width that our form container will be available to be in. So that is this div right here.
6:33:256 hours, 33 minutes, 25 secondsI'm going to go through the classes now, don't worry. So, div class name MX auto
6:33:326 hours, 33 minutes, 32 secondsmax width screen MD full width flex flex column gap Y8 and height full.
6:33:446 hours, 33 minutes, 44 secondsNow, let's go ahead and render credential form.
6:33:516 hours, 33 minutes, 51 secondsSince this does not exist, naturally it's going to throw an error. Now let's go ahead inside of features credentials components.
6:34:036 hours, 34 minutes, 3 secondsLet's create a new file credential.tsx. So a single one, not multiple ones.
6:34:106 hours, 34 minutes, 10 secondsLet's mark this as use client.
6:34:146 hours, 34 minutes, 14 secondsAnd let's start by creating an interface credential form props.
6:34:216 hours, 34 minutes, 21 secondsInitial data that will be accepted will be an optional ID because this can either be used as a new credential form or as an update credential.
6:34:336 hours, 34 minutes, 33 secondsAnd besides the ID, we're going to have a regular name type, which is a type of credential type,
6:34:416 hours, 34 minutes, 41 secondscredential type from generated Prisma, and value, which will be another string.
6:34:516 hours, 34 minutes, 51 secondsGreat. Now, let's export const credential form.
6:34:576 hours, 34 minutes, 57 secondsNow, let's assign the credential form props here.
6:35:026 hours, 35 minutes, 2 secondsLet's go ahead and the structure the initial data inside.
6:35:086 hours, 35 minutes, 8 secondsGreat. Now let's go ahead and let's prepare some hooks. So we're going to need
6:35:146 hours, 35 minutes, 14 secondsuh four of them. Router from use router which we can import from next navigation.
6:35:226 hours, 35 minutes, 22 secondsUse create credential which we can import from dot do hooks use credentials. use update credential from the exact same place.
6:35:346 hours, 35 minutes, 34 secondsAnd then finally, the premium one, use upgrade model.
6:35:396 hours, 35 minutes, 39 secondsSo this is much easier for us because we've already created all of these components before.
6:35:456 hours, 35 minutes, 45 secondsLet's define if this will be editing or creating a new credential by very simply checking if we have initial data question mark ID.
6:35:556 hours, 35 minutes, 55 secondsThen let's go ahead and define the form.
6:35:586 hours, 35 minutes, 58 secondsThe form will be quite easy. Const form will use use form from react hook form.
6:36:066 hours, 36 minutes, 6 secondsIt will use form values which I forgot to implement. So let's leave it empty for now. It will use zod resolver from
6:36:136 hours, 36 minutes, 13 secondshook form resolvers zod. So these two are the ones we've added. And now in order to add form schema and form
6:36:216 hours, 36 minutes, 21 secondsvalues, we're going to have to add a zod and define the schema. The default values will either use the initial data prop or they're going to fall back to
6:36:296 hours, 36 minutes, 29 secondsempty name, empty value and a default type of open AI.
6:36:356 hours, 36 minutes, 35 secondsNow let's go ahead and let's create the form schema. So the form schema will have a name, type, and a value. We can
6:36:456 hours, 36 minutes, 45 secondsimport Z from zod. Name will be a string, value will be a string and type will be an annium of credential type.
6:36:556 hours, 36 minutes, 55 secondsAnd let's go ahead and do type form values here. Z.info type of form schema.
6:37:036 hours, 37 minutes, 3 secondsThere we go. We should now have all of those errors completely resolved. Perfect.
6:37:106 hours, 37 minutes, 10 secondsNow let's go ahead and let me create one factory map here to properly load the
6:37:166 hours, 37 minutes, 16 secondslogo of each of our providers. So const credential type options.
6:37:246 hours, 37 minutes, 24 secondsAnd now let's go ahead and create value credential type openai
6:37:316 hours, 37 minutes, 31 secondslabel open AI logo forward slash logos openai.
6:37:396 hours, 37 minutes, 39 secondsSVG.
6:37:416 hours, 37 minutes, 41 secondsLet's copy them twice. Let's change this one to be anthropic and this one to be Gemini.
6:37:496 hours, 37 minutes, 49 secondsSo let's change the label and logo accordingly. There we go.
6:37:586 hours, 37 minutes, 58 secondsNow that we have that factory here, we can go ahead and start building our forms. So, let me go ahead and just add
6:38:066 hours, 38 minutes, 6 secondssome other imports that we're going to need. Starting with all the necessary form components. Form, form control,
6:38:136 hours, 38 minutes, 13 secondsform field, item label, and form message. Then, we're going to need the import, my apologies, the input. Then
6:38:226 hours, 38 minutes, 22 secondswe're going to need select select content item trigger and value.
6:38:286 hours, 38 minutes, 28 secondsAnd let me see. I think we might be let's go ahead and also add instead of
6:38:366 hours, 38 minutes, 36 secondsuse credentials use suspense credential here because if this is an update we will be we will need to load it I think.
6:38:466 hours, 38 minutes, 46 secondsUh okay. Now, let's also go ahead and let's add everything we need from card, card content, description, header, and
6:38:536 hours, 38 minutes, 53 secondstitle. And let's go ahead and let's add button.
6:39:006 hours, 39 minutesAnd let's go ahead and let's add uh do we need error view like this? Um
6:39:076 hours, 39 minutes, 7 secondsyeah, let's not add this. We're good without that. And inside of next navigation here, let's also add use
6:39:166 hours, 39 minutes, 16 secondsparams. And let's also import image from next image. I think that's all the imports resolved now. Now we can go
6:39:246 hours, 39 minutes, 24 secondsahead and build in peace. So I'm going to go ahead and start with return here. Card
6:39:346 hours, 39 minutes, 34 secondsclass name shadow none.
6:39:396 hours, 39 minutes, 39 secondsNow, let's go ahead and add card header, card title, and we're going to check is this an edit. In that case, edit
6:39:486 hours, 39 minutes, 48 secondscredential otherwise create credential.
6:39:546 hours, 39 minutes, 54 secondsAnd we're just going to do the same thing for other things. Now, for example, description, either update your API key or add a new API key.
6:40:076 hours, 40 minutes, 7 secondsThen let's add card content here.
6:40:106 hours, 40 minutes, 10 secondsLet's render the form. Let's go ahead and spread the form constant.
6:40:166 hours, 40 minutes, 16 secondsLet's render a native form element on submit for now. Let's do form handle
6:40:226 hours, 40 minutes, 22 secondssubmit like this. Let's give it a class name space y 6. You can leave the error
6:40:306 hours, 40 minutes, 30 secondsas is for now. And let's go ahead and render this form field with control form
6:40:386 hours, 40 minutes, 38 secondsdot control name of name render of field form item form label.
6:40:516 hours, 40 minutes, 51 secondsLet me fix the typo here.
6:40:556 hours, 40 minutes, 55 secondsname form control input
6:41:016 hours, 41 minutes, 1 secondplaceholder my API key and spread the field property.
6:41:106 hours, 41 minutes, 10 secondsSo let me go ahead and try and zoom out a bit so you can see how it looks in one line.
6:41:166 hours, 41 minutes, 16 secondsThen add form message which is a self-closing tag which will display any errors if they appear.
6:41:256 hours, 41 minutes, 25 secondsIn order to fix the handle submit, we have to implement it. So I'm just going to do const on submit here. Asynchronous uh values type of form values.
6:41:366 hours, 41 minutes, 36 secondsLet's check if this is edit and if we have initial data question mark id await
6:41:446 hours, 41 minutes, 44 secondsupdate credential dot mutate asynchronous with an ID of initial data
6:41:516 hours, 41 minutes, 51 secondsdo ID and simply spread the new values else let's go ahead and do await create
6:42:026 hours, 42 minutes, 2 secondscredential dot mutate async pass in the values and let's go ahead and do on error here.
6:42:166 hours, 42 minutes, 16 secondsGrab the error handle error and pass it along. So what is handle error? We have it here in use upgrade model.
6:42:276 hours, 42 minutes, 27 secondsSo what we also have to do is mark this entire thing in a fragment like so.
6:42:356 hours, 42 minutes, 35 secondsand render a model inside.
6:42:396 hours, 42 minutes, 39 secondsNow we can quickly go back inside of page new and just import the credential form from features credentials
6:42:476 hours, 42 minutes, 47 secondscomponents credential and you can already see it start to form create
6:42:546 hours, 42 minutes, 54 secondscredential add a new API key perfect let's go inside of credential here and let's continue developing this so pass
6:43:026 hours, 43 minutes, 2 secondsin onsubmit here now besides that single form field.
6:43:086 hours, 43 minutes, 8 secondsLet's go ahead and add a new one. So, form field again. We can go ahead and copy these two.
6:43:176 hours, 43 minutes, 17 secondsThis will be now for the type. We can copy the render as well. But the content inside will be slightly different
6:43:266 hours, 43 minutes, 26 secondsbecause this will be a select. So, we start with form item form label
6:43:326 hours, 43 minutes, 32 secondstype and then we add the select component.
6:43:386 hours, 43 minutes, 38 secondsThe select component will have two fields on value change and default value. In here, let's add form control.
6:43:486 hours, 43 minutes, 48 secondsLet's add select trigger. Let's give it a class name of full width. Whoops.
6:43:586 hours, 43 minutes, 58 secondsInside of select trigger, let's render select value with a self-closing tag.
6:44:046 hours, 44 minutes, 4 secondsOutside of form control, let's add select content. And in here, let's do credential type options dom.
6:44:156 hours, 44 minutes, 15 secondsLet's get an individual option here. Render select item here.
6:44:226 hours, 44 minutes, 22 secondsAnd let's pass in the key to be option dot value and value to be the very same thing.
6:44:306 hours, 44 minutes, 30 secondsAnd now inside of here, uh, let's do a div with a class name
6:44:386 hours, 44 minutes, 38 secondsflex items center gap 2 and render an image. The image should have source
6:44:476 hours, 44 minutes, 47 secondsoption dot logo alt option dot label
6:44:546 hours, 44 minutes, 54 secondswidth 16 height 16 and render option dot label.
6:45:026 hours, 45 minutes, 2 secondsThere we go. And now here just add form message.
6:45:106 hours, 45 minutes, 10 secondsThere we go. And finally, one more thing that we need is a super simple form field. So after this one, let's just go ahead and add this.
6:45:226 hours, 45 minutes, 22 secondsSo the same as the first one, a super simple form field which controls the value prop and it uses the API key as
6:45:316 hours, 45 minutes, 31 secondsthe label and inside of form control. It very simply renders an input with a type of password, a placeholder with
6:45:406 hours, 45 minutes, 40 secondssomething to tell the user that this is supposed to be the API key and it spreads the field property here. There
6:45:486 hours, 45 minutes, 48 secondswe go. And renders the form message, of course.
6:45:526 hours, 45 minutes, 52 secondsNow just before we end the form we should also render the submit
6:45:596 hours, 45 minutes, 59 secondsbuttons. So let's create flex gap 4 button
6:46:086 hours, 46 minutes, 8 secondstype submit disabled will be either if create credential is pending
6:46:176 hours, 46 minutes, 17 secondsor if update credential is pending then let's go ahead and very simply choose
6:46:266 hours, 46 minutes, 26 secondswhat to render inside. If it's edit then update otherwise create and finally
6:46:346 hours, 46 minutes, 34 secondsanother button next to it with a type of button variant outline which on click
6:46:406 hours, 46 minutes, 40 secondswill simply redirect to credentials. I think we can even make this simpler
6:46:466 hours, 46 minutes, 46 secondsmaybe using next link adding an href to credentials prefetch to make it faster.
6:46:566 hours, 46 minutes, 56 secondsremove on click and add as child. I think that's a better practice to do.
6:47:046 hours, 47 minutes, 4 secondsPerfect. I think that's it. Uh so let me
6:47:096 hours, 47 minutes, 9 secondscheck. Did I need use params at all? Um we are going to need it later but not
6:47:186 hours, 47 minutes, 18 secondsnow, not just yet. So let's check if this works inside of credentials. Right now I have no items and if I click add item test credential type open AI test.
6:47:316 hours, 47 minutes, 31 secondsLet's click create test credential created. So if you want to you can redirect the user to that newly created credential.
6:47:446 hours, 47 minutes, 44 secondsSo you could go on success here data router.bush push credentials data ID.
6:47:556 hours, 47 minutes, 55 secondsYou could do that. You could go back to the list of all of your credentials, whatever you think is a better user experience.
6:48:046 hours, 48 minutes, 4 secondsUh, but if you now go back to credentials, you should see your new test credential right here. Let's test
6:48:126 hours, 48 minutes, 12 secondsif delete is working. There we go. That seems to be working. And now we're going to test if my redirect is working. There
6:48:216 hours, 48 minutes, 21 secondswe go. That is working too. Great. Now let's go ahead and let's fix which icon shows here.
6:48:306 hours, 48 minutes, 30 secondsSo in order to render the proper image, we have to go back to credentials.tsx right here. And we are very simply going to go and find the credentials list.
6:48:426 hours, 48 minutes, 42 secondsuh more specifically maybe credential item and just above this let's create a super
6:48:506 hours, 48 minutes, 50 secondssimple factory credential logos which will be a type of record which the key is going to be a
6:48:586 hours, 48 minutes, 58 secondscredential type which we can import from generated Prisma and I'm just going to go ahead and do uh
6:49:086 hours, 49 minutes, 8 secondsoh I'm still using this Okay, still some leftover workflow thingies here. Let's
6:49:166 hours, 49 minutes, 16 secondsfix this like the following. Leave that to be a type import and this will be a normal one. So then you will be able to
6:49:246 hours, 49 minutes, 24 secondsuse the credential type here for the factory. Just make sure this matches of course your public folder. And once you
6:49:316 hours, 49 minutes, 31 secondshave the credential logos here, let's go ahead and do the following.
6:49:376 hours, 49 minutes, 37 secondsConst logo will be credential logos data.ype
6:49:466 hours, 49 minutes, 46 secondswhich of course we have to modify here because it's no longer going to be a type of workflow or fall back to logos
6:49:536 hours, 49 minutes, 53 secondsopenai.svg and let's go ahead and render that. So
6:50:026 hours, 50 minutes, 2 secondsinside of the image, let's just go ahead and use the image itself.
6:50:086 hours, 50 minutes, 8 secondsThere we go. Image source logo alt data type with 20, height 20. Uh let's see what do we have to fix here.
6:50:196 hours, 50 minutes, 19 secondsUh element implicitly has any type.
6:50:216 hours, 50 minutes, 21 secondsOkay, something is wrong here. Let's start with giving it a proper type. So this should be a type of credential.
6:50:336 hours, 50 minutes, 33 secondsBut I think credential might already be taken. So let's import type credential.
6:50:426 hours, 50 minutes, 42 secondsOh, I already have it. Okay, credential.
6:50:466 hours, 50 minutes, 46 secondsBut I'm not sure if credential itself might be taken as a constant somewhere.
6:50:546 hours, 50 minutes, 54 secondsLooks like it is not. So make sure your credential item uses data with credential as the type. And now let's
6:51:036 hours, 51 minutes, 3 secondssee what the problem is here. Probably because I need to import image from next image. And we can now remove the
6:51:106 hours, 51 minutes, 10 secondsworkflow icon. And there we go. Now it will basically display exactly uh what
6:51:176 hours, 51 minutes, 17 secondstype of credential it is. So, if I create a new credential with open AI type and if I go back to credentials,
6:51:266 hours, 51 minutes, 26 secondsit should render that. Let's go ahead and search for something. There we go.
6:51:326 hours, 51 minutes, 32 secondsThat works too. Perfect. Let's go ahead and try Gemini. Now,
6:51:396 hours, 51 minutes, 39 secondslet's create back to credentials. There we go. Gemini. Perfect.
6:51:476 hours, 51 minutes, 47 secondsSo now we have to create this page right here which will be super simple. Don't worry because we already implemented every single thing that we need for
6:51:556 hours, 51 minutes, 55 secondsthis. We just have to go back to credential.tsx.
6:51:596 hours, 51 minutes, 59 secondsSo a single one where the form is and go all the way down here. Export
6:52:066 hours, 52 minutes, 6 secondsconst credential view const params use params
6:52:136 hours, 52 minutes, 13 secondsconst credential ID paramscredential ID as string.
6:52:256 hours, 52 minutes, 25 secondsUse suspense credential. Pass in the credential ID.
6:52:326 hours, 52 minutes, 32 secondsDestructure the data. Rename it to credential and return credential form.
6:52:436 hours, 52 minutes, 43 secondsBut this time give it some initial data.
6:52:506 hours, 52 minutes, 50 secondsThis way credential form will be rendered as an edit form. Be super careful not to misspell credential ID.
6:52:596 hours, 52 minutes, 59 secondsSo params.credential ID needs to be exactly as you have written it here. Credential ID. Capitalization matters.
6:53:086 hours, 53 minutes, 8 secondsTriple check that it works. Now that you have the credential view here, let's go
6:53:146 hours, 53 minutes, 14 secondsahead and go inside of our credential ID page.tsx.
6:53:236 hours, 53 minutes, 23 secondsAnd in here, we should obviously render the credential view like this.
6:53:336 hours, 53 minutes, 33 secondsSo, let's go ahead and import it.
6:53:386 hours, 53 minutes, 38 secondsCredential view. And now that I think of it, why don't I just accept the
6:53:466 hours, 53 minutes, 46 secondscredential ID prop and use it. I think that's much simpler.
6:53:556 hours, 53 minutes, 55 secondsAnd then I can just use the loader to pass in the credential ID. Yeah, that's much simpler.
6:54:056 hours, 54 minutes, 5 secondsWe can just do that. And then we don't need use params.
6:54:126 hours, 54 minutes, 12 secondsPerfect. Now let's go back inside of the page here. What we're going to have to do now is we have to prefetch it. So
6:54:226 hours, 54 minutes, 22 secondsprefetch credential. Pass in the credential ID. Make sure to import prefetch credential from features
6:54:306 hours, 54 minutes, 30 secondscredentials server prefetch. So prefetch a single credential. It only accepts the ID. Perfect. And then in here, let's go
6:54:386 hours, 54 minutes, 38 secondsahead and just do some styling. So the styling will actually be, I think, the very same like this. We can copy this entire thing. Paste it like this.
6:54:516 hours, 54 minutes, 51 secondsAdd two closing divs.
6:54:556 hours, 54 minutes, 55 secondsAnd then let's go ahead and let's add the hydration client.
6:55:046 hours, 55 minutes, 4 secondsYou can import this from the RPC server.
6:55:096 hours, 55 minutes, 9 secondsThen the error boundary from React error boundary
6:55:166 hours, 55 minutes, 16 secondsfor the fallback here. I'm just going to reuse my credentials error. So yes, I'm
6:55:246 hours, 55 minutes, 24 secondsgoing to reuse the one from the credentials, not the one from my apologies from
6:55:316 hours, 55 minutes, 31 secondscomponents credentials even though I'm mostly using the ones from credential simply because I have no
6:55:416 hours, 55 minutes, 41 secondsidea how differently I would create the one for a single credential. You can import suspense from react
6:55:516 hours, 55 minutes, 51 secondsand you can also pass in the fallback here to be credentials loading.
6:55:596 hours, 55 minutes, 59 secondsSo same import from the credentials component.
6:56:056 hours, 56 minutes, 5 secondsAll right, I think this should now work.
6:56:106 hours, 56 minutes, 10 secondsLet me go ahead and just try. So let me zoom out just a bit. Oh, something's not good here.
6:56:186 hours, 56 minutes, 18 secondsLet me see this issue. Okay, that's something else. But inside of my credentials, now if I go ahead and click
6:56:266 hours, 56 minutes, 26 secondshere, there we go. And if I change this to anthropic API like this and click update
6:56:366 hours, 56 minutes, 36 secondsand go back to credentials, there we go. updated less than a minute ago but created nine minutes ago.
6:56:456 hours, 56 minutes, 45 secondsAnthropic API. Perfect. It is officially working. We have the entire uh entity
6:56:526 hours, 56 minutes, 52 secondsstructure for credentials. What we can do now is we can go ahead and implement that. So that here instead of our AI
6:57:016 hours, 57 minutes, 1 secondnodes, we have a drop-down which will allow us to select any of the uh credentials that we have.
6:57:116 hours, 57 minutes, 11 secondsSo, let's go back to one of the dialogues. I think the easiest one to try out is the Gemini one. So, I'm just
6:57:196 hours, 57 minutes, 19 secondsgoing to go ahead and add the Gemini block. And I'm going to click save here.
6:57:236 hours, 57 minutes, 23 secondsI'm going to go ahead and keep it open just so I can see what I'm developing.
6:57:276 hours, 57 minutes, 27 secondsThen, I'm going to go ahead and close all of this code. I'm going to go inside of source features executions components Gemini dialogue. DSX.
6:57:396 hours, 57 minutes, 39 secondsIn here, I'm going to go inside of the form schema and I'm going to add the credential ID. So, after a variable
6:57:466 hours, 57 minutes, 46 secondsname, I'm going to add credential ID with a message credential is required.
6:57:546 hours, 57 minutes, 54 secondsThen I'm going to go ahead and make sure that I give have it instead of my default values here. So credential ID is
6:58:016 hours, 58 minutes, 1 secondgoing to be default values dot credential ID or an empty string.
6:58:106 hours, 58 minutes, 10 secondsI'm going to copy that and I'm going to do the same thing in the form reset here.
6:58:176 hours, 58 minutes, 17 secondsNow that we have that, we're going to have to create the drop-down for our credentials.
6:58:246 hours, 58 minutes, 24 secondsBut this will actually be a little bit easier because we can use our use credentials by type hook. So right here
6:58:336 hours, 58 minutes, 33 secondsI'm going to do const use credentials by type
6:58:406 hours, 58 minutes, 40 secondsand I'm going to select credential type from generated Prisma.jemini.
6:58:466 hours, 58 minutes, 46 secondsSo make sure you have imported credential type from generated Prisma and use credentials by type from our features credentials hooks use
6:58:546 hours, 58 minutes, 54 secondscredentials. From here we can destructure the data and we can alias it to credentials
6:59:026 hours, 59 minutes, 2 secondsand let's also get is loading here and let's alias that is loading credentials.
6:59:126 hours, 59 minutes, 12 secondsNow let's go ahead and go down here and what we're going to do is we're going to
6:59:196 hours, 59 minutes, 19 secondsdevelop a new form field. So uh if we have any existing select ones that would
6:59:276 hours, 59 minutes, 27 secondsbe great. So we save some time. So I think we have one inside of our credential. DSX.
6:59:376 hours, 59 minutes, 37 secondsSo inside of credentials folder credential.tsx DSX. We should have select somewhere. Perfect. So find the
6:59:476 hours, 59 minutes, 47 secondsname type, form label type. Copy the entire form field here. And now let's go ahead and add it after variable name.
6:59:596 hours, 59 minutes, 59 secondsSo just add the entire thing here. And now we are going to resolve the errors.
7:00:057 hours, 5 secondsSo the errors are mostly missing components.
7:00:117 hours, 11 secondsSo we can just add select select content item trigger and value.
7:00:197 hours, 19 secondsThere we go. Now we can go here and we can start to fix these.
7:00:257 hours, 25 secondsSo this should control the credential ID because that's the new one we've just
7:00:337 hours, 33 secondsadded. So this will be Gemini credential like that and it will be disabled if
7:00:447 hours, 44 secondsis loading credentials or if we have no credentials at all. So if
7:00:527 hours, 52 secondsthere is no credentials length and now let's go ahead and give this a
7:01:027 hours, 1 minute, 2 secondsplaceholder select a credential and now instead of the select content
7:01:117 hours, 1 minute, 11 secondswe're going to do credentials question mark.mmap and this will be
7:01:197 hours, 1 minute, 19 secondskey do ID.
7:01:237 hours, 1 minute, 23 secondsThis will be my apologies. Key will be option ID. Value will be option ID as well. So make sure you're using ID here.
7:01:337 hours, 1 minute, 33 secondsAnd source will actually be hardcoded to logos Gemini SVG.
7:01:407 hours, 1 minute, 40 secondsAlt will be Gemini.
7:01:447 hours, 1 minute, 44 secondsOption here will be credential or option name. Let me rename the option thingy to
7:01:517 hours, 1 minute, 51 secondscredential and make sure to import image from next image. There we go. So just like that,
7:01:597 hours, 1 minute, 59 secondsyou have added a new property to the dialogue.
7:02:047 hours, 2 minutes, 4 secondsI'm going to go ahead and open this. And there we go. I can now select a credential that I want to use with Gemini.
7:02:137 hours, 2 minutes, 13 secondsPerfect. But we're not done yet.
7:02:187 hours, 2 minutes, 18 secondsWhat we have to do is we have to visit the executor. So inside of features executions components gemini executor.ts.
7:02:287 hours, 2 minutes, 28 secondsLet's go ahead and first things first extend this with a credential ID.
7:02:367 hours, 2 minutes, 36 secondsAnd then we can go ahead and check if we have it or if we don't have it. And we can throw an error immediately.
7:02:447 hours, 2 minutes, 44 secondsSo just as we check if we don't have the variable name or the user prompt, we can also check if we don't have credential
7:02:527 hours, 2 minutes, 52 secondsID gem and I know credential is required immediately throw a non-retriable error and publish an error status.
7:03:017 hours, 3 minutes, 1 secondSo how do we fetch the credential? Well, we can now remove this to-do because we already do that. And now this is where
7:03:107 hours, 3 minutes, 10 secondsthe magic happens. const credential is going to be await step.r run get dash
7:03:177 hours, 3 minutes, 17 secondscredential then let's return Prisma which we have to import from lib database
7:03:277 hours, 3 minutes, 27 secondsdotcredential dotfind unique where pass in the id data dotcredential
7:03:367 hours, 3 minutes, 36 secondsid if there is no credential
7:03:437 hours, 3 minutes, 43 secondsthrow new non retriable for Gemini node credential not found.
7:03:527 hours, 3 minutes, 52 secondsNow we can remove this credential value and we can just use credential whoops dot value from here.
7:04:037 hours, 4 minutes, 3 secondsNow there is a question should we just fetch this you know without user ID.
7:04:087 hours, 4 minutes, 8 secondsWell the thing is this isn't exactly a public API. This is a background job within injust. So even if we fetch this
7:04:157 hours, 4 minutes, 15 secondscredential uh we are not returning its value anywhere. We are just fetching it.
7:04:227 hours, 4 minutes, 22 secondsRight? Imagine this is a web hook call.
7:04:257 hours, 4 minutes, 25 secondsWe also wouldn't exactly know if it was a user who executed this or something else. Right? So I think this should be
7:04:327 hours, 4 minutes, 32 secondscompletely fine to do and we don't need user uh ID here to fetch for the security row level level
7:04:417 hours, 4 minutes, 41 secondsand in here we check if we don't have it and we throw the error. Perfect. So let's try running it exactly like this.
7:04:497 hours, 4 minutes, 49 secondsI'm going to go ahead and call this my Gemini credential will be this one. Make sure you have at least one Gemini credential.
7:04:567 hours, 4 minutes, 56 secondsUh test. Hi there. How are you? Let's click save.
7:05:027 hours, 5 minutes, 2 secondsLet's click save here.
7:05:067 hours, 5 minutes, 6 secondsLet's go ahead and execute workflow. And what I expect is for the workflow to fail because of an invalid API key.
7:05:137 hours, 5 minutes, 13 secondsExactly. Please pass a valid API key.
7:05:187 hours, 5 minutes, 18 secondsSo now I'm going to go inside of my credentials here. Inside of this one, I will change this to be Gemini uh personal.
7:05:287 hours, 5 minutes, 28 secondsGemini personal like this and let's go ahead and go inside of
7:05:347 hours, 5 minutes, 34 secondsenvironment here and let me copy this one and let me paste here and click update
7:05:447 hours, 5 minutes, 44 secondsand then in workflows let me just check if you know the name was maybe updated uh it's still reflecting this I think I
7:05:527 hours, 5 minutes, 52 secondshave to refresh maybe yes because I don't like um it's now yeah after a refresh sheet will appear because we
7:05:597 hours, 5 minutes, 59 secondsdon't invalidate this one after updating. Maybe we could do that, but you don't have to update anything here.
7:06:067 hours, 6 minutes, 6 secondsYou can just execute again. You don't even have to save it. But it should work this time. Get credential. There we go.
7:06:147 hours, 6 minutes, 14 secondsSuccessfully completed.
7:06:167 hours, 6 minutes, 16 secondsWe successfully implemented bring your own keys. Users can now create their own credentials and pass them along. you can
7:06:267 hours, 6 minutes, 26 secondsfinally remove this from your code. Uh I would suggest you keep it till the end of the tutorial because I forget my
7:06:337 hours, 6 minutes, 33 secondscredentials so many times and I accidentally delete it while testing. So yeah, you can but I would suggest still
7:06:407 hours, 6 minutes, 40 secondskeeping it here. But finally your users can now add their own credentials.
7:06:487 hours, 6 minutes, 48 secondsSo just one thing I want to check inside of source features credentials. I'm just going to do one find in folder and search for workflow.
7:06:597 hours, 6 minutes, 59 secondsAll right. Inside of credentials dsx.
7:07:027 hours, 7 minutes, 2 secondsI'm still calling these workflows. So credentials pagionation. Let me show you what file it is.
7:07:097 hours, 7 minutes, 9 secondsCredentials folder components credentials. DSX.
7:07:137 hours, 7 minutes, 13 secondsI'm going to change all four instances to credentials. There we go.
7:07:197 hours, 7 minutes, 19 secondsAnd I think that now if I go ahead and rightclick find in folder workflow workflows nothing successfully migrated.
7:07:287 hours, 7 minutes, 28 secondsGreat. So what we need to do to finish this chapter is do exactly what we just did for Gemini. Right. Let me just check
7:07:387 hours, 7 minutes, 38 secondsif that's all we need. Instead of node.tsx tsx. I should also uh have credential
7:07:477 hours, 7 minutes, 47 secondsID here.
7:07:517 hours, 7 minutes, 51 secondsThere we go. So now I have the proper types everywhere.
7:07:577 hours, 7 minutes, 57 secondsNow let's go ahead and implement the same exact thing but for entropic. So I'm going to go inside of anthropic node.tsx.
7:08:077 hours, 8 minutes, 7 secondsI'm going to copy credential ID right here. here and I'm just going to paste it here. Perfect. I'm going to close
7:08:157 hours, 8 minutes, 15 secondsnode in both of them. I will open Gemini dialogue and I will open anthropic
7:08:227 hours, 8 minutes, 22 secondsdialogue. I will go inside of Gemini 1 and I'm going to copy the entire form field here with the select option to
7:08:317 hours, 8 minutes, 31 secondsload the credentials and I'm going to add that exactly in the
7:08:367 hours, 8 minutes, 36 secondssame place. So after variable name of course it will be riddled with errors
7:08:447 hours, 8 minutes, 44 secondsbecause we don't have many of the imports we need but we are going to resolve that now.
7:08:527 hours, 8 minutes, 52 secondsNow I'm just going to go ahead right here and I'm going to import image credential type and use credentials by
7:08:597 hours, 8 minutes, 59 secondstype. So, all of these imports and I'm going to add them to the anthropic block.
7:09:087 hours, 9 minutes, 8 secondsNow, let's go ahead and go back inside of the Gemini one and let's go ahead and actually load credentials by type. So, I'm going to do the same thing here now.
7:09:217 hours, 9 minutes, 21 secondsThere we go.
7:09:237 hours, 9 minutes, 23 secondsAnd a few things left to do is to modify the schema. So copy credential ID.
7:09:327 hours, 9 minutes, 32 secondsLet's go ahead and paste it in anthropic node. And already you can see no more errors left. But there are a couple of
7:09:407 hours, 9 minutes, 40 secondsmore things. The default values. So let's just go ahead and add that. Default values. Perfect.
7:09:497 hours, 9 minutes, 49 secondsAnd form reset. Perfect.
7:09:537 hours, 9 minutes, 53 secondsLet's check if we did this correctly inside of workflows.
7:09:597 hours, 9 minutes, 59 secondsright here. I'm going to delete this node and I'm going to add entropic node like this. Well, I can just open and
7:10:077 hours, 10 minutes, 7 secondssee. The problem is it's fetching Gemini ones. So, let's go inside of entropic node and let's just make sure that when
7:10:157 hours, 10 minutes, 15 secondswe fetch them, we're using credential type. ropic this time. So now it should only fetch entropic API which also means
7:10:237 hours, 10 minutes, 23 secondswe have to modify this logo to anthropic. SVJ and Anthropic as the alt.
7:10:317 hours, 10 minutes, 31 secondsThere we go. Now we can select our anthropic API. Perfect.
7:10:377 hours, 10 minutes, 37 secondsWe can now close both dialogues and let's instead open both executors.
7:10:437 hours, 10 minutes, 43 secondsSo let's go ahead and go inside of Gemini executor and let's copy the credential ID and let's add it to the
7:10:507 hours, 10 minutes, 50 secondsenthropic data after variable name. Then let's go ahead and throw an error if
7:10:587 hours, 10 minutes, 58 secondscredential ID does not exist. So after variable name inside of enthropic, go
7:11:057 hours, 11 minutes, 5 secondsahead and throw the error. Just make sure that you're throwing it for the enthropic channel. There we go. change this from Gemini node to anthropic node.
7:11:157 hours, 11 minutes, 15 secondsAnd looks like I accidentally left over open AI thingies here. So feel free to fix that as well if you want to. We can
7:11:247 hours, 11 minutes, 24 secondsnow remove this to-do. Then let's go ahead inside of Gemini executor and let's go ahead and
7:11:317 hours, 11 minutes, 31 secondscopy these two things. Basically an option to fetch the credential. So we can now remove this part. Paste it here.
7:11:397 hours, 11 minutes, 39 secondsWe have to import Prisma from lib database anthropic node credential not found. You
7:11:477 hours, 11 minutes, 47 secondscan remove the credential value and you can use credential dot value this time.
7:11:537 hours, 11 minutes, 53 secondsThere we go. And I think that's it. Just make sure you've imported Prisma. Make sure you're using the entropic channel. Great.
7:12:017 hours, 12 minutes, 1 secondSo this should now work. Uh, now I'm going to go ahead and do the exact same thing but for Open AI.
7:12:117 hours, 12 minutes, 11 secondsAnd looks like we forgot the title here.
7:12:147 hours, 12 minutes, 14 secondsSo it still says Gemini credential. So dialogue.tsx in the entropic folder. It should not
7:12:227 hours, 12 minutes, 22 secondssay Gemini credential. It should say anthropic credential. Great.
7:12:297 hours, 12 minutes, 29 secondsSo, I'm going to go ahead and do the same thing for OpenAI by going inside of Node.tsx
7:12:387 hours, 12 minutes, 38 secondsand I'm simply going to add credential ID string. That's it. Then I'm going to
7:12:467 hours, 12 minutes, 46 secondsopen the dialogue for OpenAI and I'm going to open the dialogue for Gemini.
7:12:517 hours, 12 minutes, 51 secondsThis time I'm going to start by adding all the necessary imports. So, image select credential type and use credentials by type. And I'm just going
7:12:597 hours, 12 minutes, 59 secondsto go ahead and add all of them inside of the open AI dialogue. DSX.
7:13:067 hours, 13 minutes, 6 secondsThen I'm going to go ahead and modify the form schema by adding the credential ID after the variable name.
7:13:157 hours, 13 minutes, 15 secondsThen I'm going to go ahead and fetch the credentials.
7:13:217 hours, 13 minutes, 21 secondsI'm going to now add this to the open AI dialogue. There we go.
7:13:277 hours, 13 minutes, 27 secondsNow I'm going to go ahead and make sure the default values load the credential ID and the reset form loads it as well.
7:13:387 hours, 13 minutes, 38 secondsThere we go. And now I'm going to go ahead and I'm going to copy the entire form field which renders the
7:13:467 hours, 13 minutes, 46 secondscredentials. So I'm going to copy that entirely. I'm going to find the form field after variable name and I'm going
7:13:557 hours, 13 minutes, 55 secondsto just paste everything here. I'm going to fix the indentation.
7:13:597 hours, 13 minutes, 59 secondsAnd since we already added all the imports above, there are not many errors. Let's just change this to open AI credential. Select a credential logos. Open AAI SVG. Open AI.
7:14:137 hours, 14 minutes, 13 secondsPerfect. So, let me go ahead and test this out. I'm going to add an open AI node.
7:14:237 hours, 14 minutes, 23 secondsThere we go. Uh, but it's still fetching Gemini ones. I forgot to change that.
7:14:297 hours, 14 minutes, 29 secondsCredential type open AI. Make sure you're doing this inside of Open AI dialogue inside of Open AI folder.
7:14:387 hours, 14 minutes, 38 secondsAnd you can see that now I have only one result right here. So naturally, if you didn't have any open AI credentials, you
7:14:477 hours, 14 minutes, 47 secondswould simply have an error. I mean, not an error, you just wouldn't be able to fetch any. So just make sure you have at least one of each so you can test properly.
7:14:577 hours, 14 minutes, 57 secondsAnd now what we have to do, the dialogue is finished. Let's open the executor for Open AI. And let's open the executor for
7:15:067 hours, 15 minutes, 6 secondsGemini to wrap this chapter up. So I'm going to close both dialogue components.
7:15:127 hours, 15 minutes, 12 secondsNow I'm going to start with the imports here. So import Prisma, let me add that here.
7:15:207 hours, 15 minutes, 20 secondsThen I'm going to go ahead and add the credential ID to my Open AI data.
7:15:287 hours, 15 minutes, 28 secondsThen I'm going to go ahead and throw an error if data credential ID is unavailable.
7:15:357 hours, 15 minutes, 35 secondsThere we go. I'm going to make sure that I'm using the open AI channel to emit that news to the front end. Then I'm
7:15:437 hours, 15 minutes, 43 secondsgoing to go ahead and fetch the credential and throw if it is not found.
7:15:497 hours, 15 minutes, 49 secondsSo I can now remove this to-do and paste that here. I can remove the to-do here because I'm throwing. Now let's go ahead
7:15:567 hours, 15 minutes, 56 secondsand change this to be open AI node credential not found. Finally, I can remove this and I can use credential dot value.
7:16:077 hours, 16 minutes, 7 secondsThere we go. I think that is it. That's all we have to do. So, we can [snorts] now go ahead and close everything here.
7:16:167 hours, 16 minutes, 16 secondsWe successfully implemented the entire thing we outlined here. We added client, we added entity components for
7:16:237 hours, 16 minutes, 23 secondspagionation, for search, for other things. And we even added credential dropdown and we even added it to the executor. So we have a proper bring your
7:16:327 hours, 16 minutes, 32 secondsown keys method. Now let's go ahead and push this to GitHub. So 25 credentials.
7:16:387 hours, 16 minutes, 38 secondsI'm going to go ahead and create a new branch. 25 credentials.
7:16:457 hours, 16 minutes, 45 secondsI'm going to go ahead and stage all of my changes. 25 credentials.
7:16:527 hours, 16 minutes, 52 secondsI am going to commit and I am going to publish this branch. And now let's go ahead
7:17:007 hours, 17 minutesand let's review our pull request. Since this was a large one, I'm going to go ahead and let Code Rabbit do it for us.
7:17:087 hours, 17 minutes, 8 secondsAnd here we have the summary by Code Rabbit. New features. We added credential management system for storing
7:17:157 hours, 17 minutes, 15 secondsAPI keys for an OpenAI and Tropic and Gemini. Users can create, view, edit,
7:17:227 hours, 17 minutes, 22 secondsand delete credentials through a new management interface. We added search and pagionation for credentials list. AI
7:17:317 hours, 17 minutes, 31 secondsnodes now support selecting stored credentials instead of using environment variables. So exactly what was the goal of this chapter to allow users to bring their own API keys.
7:17:427 hours, 17 minutes, 42 secondsNow in here I think the thing we should focus on the most is all of these uh
7:17:497 hours, 17 minutes, 49 secondscomments that code rabbit left. So 14 actionable comments. Of course you can pause the screen right here. I always
7:17:567 hours, 17 minutes, 56 secondsthink these are super useful if you are struggling to understand how our uh code is working. So using these sequence
7:18:047 hours, 18 minutes, 4 secondsdiagrams you can pause the screen and you will uh figure out exactly what happens when a credential is not found when a credential is found etc.
7:18:147 hours, 18 minutes, 14 secondsUh so let's go ahead and maybe we can read through this here. So executor integrations first verify that
7:18:237 hours, 18 minutes, 23 secondscredential fetching validation and error handling are consistent across openthropic and Gemini ensure credential
7:18:307 hours, 18 minutes, 30 secondsID is properly threaded from dialogue node and executor. TRPC router security confirm that all endpoints properly
7:18:387 hours, 18 minutes, 38 secondsenforce context out user ID to prevent users from accessing modifying credentials belonging to others.
7:18:467 hours, 18 minutes, 46 secondsdatabase schema integrity verify foreign key cascading behavior cascade on user deletion set null on credential. Yes,
7:18:537 hours, 18 minutes, 53 secondsthis is if you remember this is what we exactly what we discussed when we started developing. Uh that's why I
7:19:007 hours, 19 minuteswasn't sure but even code rabbit says that that's what would be the correct choice here set null on cascade otherwise you will not be able to delete
7:19:097 hours, 19 minutes, 9 secondsa credential which is assigned to a node or vice versa. So because of that set
7:19:167 hours, 19 minutes, 16 secondsnull would be the correct option. So yes we could definitely add this in the next chapter
7:19:237 hours, 19 minutes, 23 secondsand form validation and error handling here. So let's take a look at the comments here. So some things are not
7:19:307 hours, 19 minutes, 30 secondstrue simply because uh there are newer versions of zod than for what AIs were trained on. For example native enum is
7:19:397 hours, 19 minutes, 39 secondsas far as I know deprecated and you should use enum now. So this is correct and it works correct for us. So we don't
7:19:467 hours, 19 minutes, 46 secondshave to switch to native enum here at all. In here it's telling us that we have different types of uh different
7:19:557 hours, 19 minutes, 55 secondsinvalidation patterns. Somewhere we're using query filters, somewhere we're using query options. Uh I think this is because that's the demonstration I found
7:20:047 hours, 20 minutes, 4 secondson TRPC website. So that's why in invalidation I'm using query filter but in fetching I'm using query options. I'm not really sure that it matters. I think
7:20:127 hours, 20 minutes, 12 secondsmost will work. And yes, we forgot to throw any toast errors here on error. We could add that. Sure. Like this.
7:20:217 hours, 20 minutes, 21 secondsThen let's go ahead about this. I think this is the same thing. Z.nyum is fully supported and it works. And of course, it is addressing the security
7:20:297 hours, 20 minutes, 29 secondsvulnerability. Our values are stored in plain text. And in here it is suggesting
7:20:367 hours, 20 minutes, 36 secondsusing a library like this to uh encrypt it which is interesting. I have not looked into this library right here.
7:20:447 hours, 20 minutes, 44 secondsPerhaps you could look into it and see if that is something that would be a good idea for your project.
7:20:517 hours, 20 minutes, 51 secondsNow let's go ahead and I think the same thing is here native enium. So completely supported in our case. Same security vulnerability API key stored in plain text.
7:21:027 hours, 21 minutes, 2 secondsNow let's go ahead and okay again native uh in here I think uh again yes it
7:21:107 hours, 21 minutes, 10 secondssuggests using value instead of default value I think I'm using the example from a chaten documentation so it works so
7:21:177 hours, 21 minutes, 17 secondsI'm not going to change it uh and this is important I think I had a whole monologue here about how we don't need
7:21:247 hours, 21 minutes, 24 secondsto check if the tenant is allowed to access this credential but what I forgot
7:21:317 hours, 21 minutes, 31 secondsgot is ID injection basically using someone else's credential. I completely forgot about that. So yes, we should
7:21:417 hours, 21 minutes, 41 secondsdefinitely also add a way to validate if this user is allowed to fetch that credential. So I was only thinking about
7:21:497 hours, 21 minutes, 49 secondsone side being secure, but I forgot that the user can be malicious as well. So yes, very very good catch here. I did
7:21:577 hours, 21 minutes, 57 secondsnot think about ID injection. We should find a way to always verify what user is triggering the workflow and then confirm
7:22:067 hours, 22 minutes, 6 secondswhether user is allowed to fetch the credential or not. Then in anthropic executor if I'm missing a credential I
7:22:147 hours, 22 minutes, 14 secondsthrow the non-retriable error but I forgot to publish the status for the error it seems. And I think I also
7:22:217 hours, 22 minutes, 21 secondsforget to do the same in Gemini. So same problem in all three obviously user ID context and I throw this without doing
7:22:317 hours, 22 minutes, 31 secondspublish. So yes I should probably update all of that and then just repeated comments for this case. Same thing maybe
7:22:407 hours, 22 minutes, 40 secondssome oh incorrect providers. It looks I'm writing Gemini inside of Open AI. So
7:22:467 hours, 22 minutes, 46 secondsyes, small typos here and there. Uh missing status publishes. Yeah, we should definitely do this to give users
7:22:537 hours, 22 minutes, 53 secondsa better experience. Uh, and in here, yes, it's basically telling us that we should consider encrypting our API keys.
7:23:007 hours, 23 minutesSo, what I did in my previous project was I used AWS uh encryption. Actually,
7:23:087 hours, 23 minutes, 8 secondsuh you can also do it yourself using database level encryption. But uh I using AWS secrets manager is actually
7:23:167 hours, 23 minutes, 16 secondssurprisingly easy. The hardest part is configuring the IM profiles. So um yeah
7:23:237 hours, 23 minutes, 23 secondsconsider researching into AWS secrets manager or the open source package it recommended above. Great great comments.
7:23:327 hours, 23 minutes, 32 secondsI will mostly focus on fixing the ID injection in the next chapter and fixing the missing channel uh updates. So for
7:23:417 hours, 23 minutes, 41 secondsnow let's go ahead and go back into the main branch. Let's go ahead and click synchronize changes and let's click okay. Then let's go ahead and open our
7:23:507 hours, 23 minutes, 50 secondsgraph to make sure we have merged everything. Perfect. That seems to be correct. A lot of new things we've learned today. A lot of things we've
7:23:597 hours, 23 minutes, 59 secondslearned what we should do once we go into production as well, right? Um you
7:24:057 hours, 24 minutes, 5 secondscan see how the sentiment around storing plain text API keys is right. So it is
7:24:127 hours, 24 minutes, 12 secondsconsidered a security risk of course. uh then again you will meet some people who will say that they can be easily rolled.
7:24:207 hours, 24 minutes, 20 secondsI wouldn't consider uh having to encrypt them but I think users are trusting you you with uh with their data. You should
7:24:277 hours, 24 minutes, 27 secondsfind a way to encrypt them. Uh I will try my best at the end of the tutorial to give you some proper recommendations about how to do this. And again you can
7:24:367 hours, 24 minutes, 36 secondsliterally use my previous tutorial and it shows exactly how to do it. Uh it will depend on how much time we have for this one. Amazing, amazing job and see you in the next chapter.
Chapter 10: 26 Discord Slack Nodes
7:24:487 hours, 24 minutes, 48 secondsIn this chapter, we're going to implement Discord and Slack nodes. So far, we've learned how to implement
7:24:557 hours, 24 minutes, 55 secondstrigger nodes such as manual execution, Google form event, and Stripe event.
7:25:017 hours, 25 minutes, 1 secondWe've also learned how to create an execution transformation node like OpenAI, Anthropic, and Gemini. But one
7:25:107 hours, 25 minutes, 10 secondstype of node we haven't implemented yet is messaging node. So in this chapter I'm going to teach you how to implement
7:25:187 hours, 25 minutes, 18 secondstwo of them, Discord and Slack. And this will give you enough knowledge to add any other messaging nodes that you prefer like WhatsApp, Telegram or
7:25:267 hours, 25 minutes, 26 secondsanything similar because most of them work in exactly the same way. But before we do that, I do want to resolve some of
7:25:347 hours, 25 minutes, 34 secondsthe issues Code Rabbit mentioned in the previous pull request review.
7:25:407 hours, 25 minutes, 40 secondsThe most important one of those is credential ID injection. So what can
7:25:467 hours, 25 minutes, 46 secondscurrently happen? Let's say the attacker creates a workflow in our app and they go ahead and select their Gemini
7:25:557 hours, 25 minutes, 55 secondscredential. While this uh manual execution will at the moment really send
7:26:027 hours, 26 minutes, 2 secondsthe ID that it's written right here, this is just front- end validation. This can very easily be bypassed because
7:26:107 hours, 26 minutes, 10 secondsanyone who is handy with the console can somehow inject uh any ID that they want
7:26:177 hours, 26 minutes, 17 secondsto be sent to our network request and start a background job which would then use someone else's uh credential ID. So
7:26:277 hours, 26 minutes, 27 secondsthe only thing the attacker has to find out is someone's credential ID. For example, maybe they are making a video
7:26:357 hours, 26 minutes, 35 secondsand they open their credentials right here. They click here and then you can see I have this ID up here and there we
7:26:447 hours, 26 minutes, 44 secondsgo. The attacker doesn't even have to know the API key because all we actually need is the credential ID. So if they
7:26:517 hours, 26 minutes, 51 secondscan somehow inject that right here, obviously this now doesn't make sense because this is my credential ID. But
7:26:587 hours, 26 minutes, 58 secondsImagine I have another account and I just stole someone's credential ID. I could very easily spend their tokens. So
7:27:077 hours, 27 minutes, 7 secondslet's go ahead and think of a way to fix that. The problem is basically right here. So I just open the Gemini executor
7:27:147 hours, 27 minutes, 14 secondsand in this step where we fetch the credential. As you can see the only thing we do is we just pass along the credential ID. So this can be injected
7:27:237 hours, 27 minutes, 23 secondsuse attacker can add anyone's credential ID here and then we would simply spend their API key. So let's do a quick fix
7:27:337 hours, 27 minutes, 33 secondsof that one that I think is the simplest and the easiest we can do is by revisiting our functions inside of the
7:27:427 hours, 27 minutes, 42 secondsingest folder. So inest folder functions.ds.
7:27:467 hours, 27 minutes, 46 secondsLet's go ahead and let's do const user ID await step.r run find user ID asynchronous.
7:27:577 hours, 27 minutes, 57 secondsLet's go ahead and fetch workflow like this.
7:28:027 hours, 28 minutes, 2 secondsWe can just repeat that. And the only thing we actually want here. So let's just do select
7:28:107 hours, 28 minutes, 10 secondsuser ID true. That is the only thing we are interested in. And let's return
7:28:177 hours, 28 minutes, 17 secondsworkflow user ID. We are using find unique or throw. So this cannot be undefined. There we go. Now we have user
7:28:267 hours, 28 minutes, 26 secondsID which has to exist. And then what we're going to do is very simply uh anywhere just add user ID. You can add
7:28:347 hours, 28 minutes, 34 secondsit anywhere because this is an object, right? If we were just using a plain params then the order would matter. But in this case, the order does not matter.
7:28:447 hours, 28 minutes, 44 secondsYou can just add it wherever you want.
7:28:467 hours, 28 minutes, 46 secondsSo just pass in user ID here in the executor. And now let's go ahead and find out how this executor types can be updated. So I'm going to commandclick
7:28:567 hours, 28 minutes, 56 secondsinside of get executor. That will take me to features executions lib exeutor registry. And in here I find node
7:29:057 hours, 29 minutes, 5 secondsexecutor. And in here node executor params gives me what I need. So I'm just
7:29:117 hours, 29 minutes, 11 secondsgoing to extend it by adding user ID and making it a string. There we go. So now,
7:29:187 hours, 29 minutes, 18 secondsas you can see, I no longer have any errors here and I can safely pass along user ID to every single executor. So now
7:29:277 hours, 29 minutes, 27 secondslet's go back and let's revisit something here. So inside of source features executions,
7:29:367 hours, 29 minutes, 36 secondslet's go inside of components Gemini executor.ds. DS we can now go ahead and double check that this is correct by
7:29:447 hours, 29 minutes, 44 secondsalso passing the user ID from data uh and let me just check how do I now uh oh yes very simple in the Gemini exeutor
7:29:537 hours, 29 minutes, 53 secondsnot in data just user ID as simple as that so now if this user if the attacker
7:30:027 hours, 30 minutes, 2 secondssomehow manages to get a hold of uh someone's credential ID they will have additional problem they need to resolve.
7:30:107 hours, 30 minutes, 10 secondsThey also somehow need to spoof the user ID. So technically this isn't, you know,
7:30:177 hours, 30 minutes, 17 seconds100% corre uh protected still. You could still somehow inject the workflow ID,
7:30:247 hours, 30 minutes, 24 secondsbut at least it is no longer uh given to you on a plate to just enter any credential ID. At least we are making the job a little bit harder right now.
7:30:357 hours, 30 minutes, 35 secondsSo, what I would suggest after you do this is just go ahead and try something.
7:30:417 hours, 30 minutes, 41 secondsMake sure you save this. Maybe do a refresh. Of course, make sure you have your app running here.
7:30:487 hours, 30 minutes, 48 secondsI'm going to refresh. And I'm just going to try and run this just to make sure it's still working, that I didn't
7:30:567 hours, 30 minutes, 56 secondsaccidentally mess something up. So, this is working. And let's see. That is working. Beautiful. So what you would do
7:31:057 hours, 31 minutes, 5 secondsnow is you would also go inside of Open AI executor right here. And you can see that it's super simple now because every
7:31:137 hours, 31 minutes, 13 secondssingle one of these now has access to user ID. Some of them might not need it, but in this ones where we do need it, it
7:31:207 hours, 31 minutes, 20 secondsis very useful. User ID and just user ID. There we go. And yes, if you want to, you can also go ahead and publish errors like this whenever they happen.
7:31:317 hours, 31 minutes, 31 secondsAnd I think I forgot forgot to do that in Gemini here. If credential is not found, make sure you publish the error.
7:31:387 hours, 31 minutes, 38 secondsJust make sure you're using the proper channels. There we go.
7:31:447 hours, 31 minutes, 44 secondsAnd instead of open AI, let me check it.
7:31:477 hours, 31 minutes, 47 secondsDid I accidentally I left Gemini note here? So open AI node. And then the same
7:31:547 hours, 31 minutes, 54 secondsthing in anthropic in the executor right here.
7:32:007 hours, 32 minutesYou just add user ID and then in the credential you pass
7:32:077 hours, 32 minutes, 7 secondsalong user ID and let's just go ahead and copy this right here and make sure you are emitting error for this stage.
7:32:177 hours, 32 minutes, 17 secondsGreat. Uh I think that's exactly what I've outlined here. Let's check. So we fixed missing channel events. I fixed
7:32:257 hours, 32 minutes, 25 secondsone invalid node name in the logs for OpenAI. and we fixed the credential ID injection. Great. Now, let's go ahead
7:32:327 hours, 32 minutes, 32 secondsand let's focus on creating uh some new nodes. So, the first thing I want you to do is go to my nodebased assets folder.
7:32:427 hours, 32 minutes, 42 secondsAnd in here, you can find Discord and Slack. So, just go ahead and add that to
7:32:507 hours, 32 minutes, 50 secondsyour public folder. I'm going to go ahead and go here. Inside of our public folder, we should have logos. So, I'm
7:32:597 hours, 32 minutes, 59 secondsjust going to go ahead and copy Slack and Discord and paste it here. So, you should now have Slack and Discord.
7:33:087 hours, 33 minutes, 8 secondsGreat. I'm going to start with the Discord node. So, I would suggest that before you do that, you at least create
7:33:157 hours, 33 minutes, 15 secondsan account on Discord so you can test it out. It doesn't matter if you're not going to use it or not. It will kind of give you the idea of how all of this messaging platform works. Uh, it's free,
7:33:247 hours, 33 minutes, 24 secondsit's simple, it's fast. So, just make sure you have an account for Discord so you can test this out properly.
7:33:317 hours, 33 minutes, 31 secondsSo, I'm going to go ahead and copy one of the existing executions here. Uh, let me copy Gemini and paste it here. And let me rename this to Discord like this.
7:33:437 hours, 33 minutes, 43 secondsAnd I just remembered, of course, we also have to update our Prisma schema. So, let's find our node types here.
7:33:527 hours, 33 minutes, 52 secondsLet's add Discord and let's add Slack.
7:33:567 hours, 33 minutes, 56 secondsOnce we've added those, as always, npx Prisma migrate dev. And let's give it a name, Discord Slack nodes.
7:34:067 hours, 34 minutes, 6 secondsDiscord Slack node. And that should synchronize the database. Great. We can now close that. And as always, I
7:34:147 hours, 34 minutes, 14 secondsrecommend you restart your Next and your Ingest server.
7:34:207 hours, 34 minutes, 20 secondsAll right. Now that we have them ready, you can also refresh localhost 3000 every time you refresh your server. Let's go back inside of this one.
7:34:287 hours, 34 minutes, 28 secondsDiscord, we just copied it. So, I'm going to start with node.tsx.
7:34:347 hours, 34 minutes, 34 secondsMake sure you are working in the Discord folder. This will no longer be Gemini node. This will now be discord node. So,
7:34:447 hours, 34 minutes, 44 secondswe are just doing this whole rename thing that we keep doing. Discord node, not data, just Discord node. Great. Now,
7:34:557 hours, 34 minutes, 55 secondslet's go ahead and start by changing the base execution node to use Discord SVG and name Discord. There we go.
7:35:057 hours, 35 minutes, 5 secondsAnd I want to leave it like this for now simply so we can see it being added here. So now we have to visit our node
7:35:137 hours, 35 minutes, 13 secondscomponents located inside of source config and then inside of here let's add node
7:35:217 hours, 35 minutes, 21 secondstype discord discord node. You should be able to import it from features
7:35:277 hours, 35 minutes, 27 secondsexecutions components discord node. Then we have to go to our node selector located in source components node selector. Let's go ahead and copy this.
7:35:387 hours, 35 minutes, 38 secondsGive this a node type of Discord label of Discord.
7:35:447 hours, 35 minutes, 44 secondsAnd let's go ahead and do send a message to Discord. And make sure you're using Discord. SVG.
7:35:547 hours, 35 minutes, 54 secondsAnd now if you go ahead and click on the plus button, you should find Discord.
7:35:587 hours, 35 minutes, 58 secondsHere it is. Amazing. Obviously when you double click on it, it will still use the Gemini configuration. So let's go
7:36:067 hours, 36 minutes, 6 secondsahead and fix that. I'm going to close everything and I'm going to go back inside of node right here. So, let's start by changing the data right here.
7:36:167 hours, 36 minutes, 16 secondsInstead of all of these, we're going to have web hook URL. We're going to have content and username.
7:36:257 hours, 36 minutes, 25 secondsYou can probably go with even less of these, but I think these are sufficient enough to make it fun and customizable.
7:36:347 hours, 36 minutes, 34 secondsNow let's go ahead and this is all good.
7:36:377 hours, 36 minutes, 37 secondsUm for the description let's do the following. It will be node data.content.
7:36:467 hours, 36 minutes, 46 secondsIf we have the content we're going to say send node data.content
7:36:527 hours, 36 minutes, 52 secondsdots slice otherwise not configured. And yes, obviously this is now throwing some errors because uh well we're not using
7:37:017 hours, 37 minutes, 1 secondthe proper dialogue at all. So let's go inside of the Discord dialogue. DSX and sure let's start with the form
7:37:107 hours, 37 minutes, 10 secondsschema. So uh variable name will still stay the same. Credential is not required. None of these are actually
7:37:187 hours, 37 minutes, 18 secondsrequired. So let's start with a simple one and an optional one. Username. So username for the bot. The bot can be
7:37:257 hours, 37 minutes, 25 secondsnamed whatever you want. Then let's go ahead and let's add content. So content will be a string with a minimum and
7:37:337 hours, 37 minutes, 33 secondsmaximum length here. So I don't know where I found this online. Maybe it's true, maybe it's not. Uh maybe it's an
7:37:407 hours, 37 minutes, 40 secondsAPI limitation. Maybe it's a bot limitation. But yeah, you can add a limit like this. And now we need a web
7:37:487 hours, 37 minutes, 48 secondshook URL. So you can be as lenient as you want with this.
7:37:547 hours, 37 minutes, 54 secondsFor example, you can just make this a string and make it web hook URL is required. And this is not how you do
7:38:027 hours, 38 minutes, 2 secondsthat. My apologies. So why use a string here? Why not at least do URL? Uh well
7:38:087 hours, 38 minutes, 8 secondsremember we have an option to use templating language. So if you mark this
7:38:167 hours, 38 minutes, 16 secondsas a required URL, you will not be able to use uh any templates, right? Maybe
7:38:247 hours, 38 minutes, 24 secondsyou want to load the web hook URL from the previous node. Right? So that's why we're using string and not zod URL here.
7:38:357 hours, 38 minutes, 35 secondsGreat. So we now have that and let's go ahead and fix these. So this will be username. This will be content and this will be web hook URL.
7:38:477 hours, 38 minutes, 47 secondsLet's copy them. Let's add them here. There we go.
7:38:527 hours, 38 minutes, 52 secondsWe can leave the batch watch variable name.
7:38:567 hours, 38 minutes, 56 secondsLet's change this to be discord configuration.
7:39:007 hours, 39 minutesAnd let's go ahead and change the description to be configure the Discord web hook settings for this node.
7:39:077 hours, 39 minutes, 7 secondsNow let's go ahead and change each field. So variable name should be my Discord. That's good.
7:39:157 hours, 39 minutes, 15 secondsUm let's go ahead inside of the Oh, also we should probably change it here. Yes, my Discord.
7:39:237 hours, 39 minutes, 23 secondsNow, in here, it's no longer going to be credential ID. It will be web hook URL.
7:39:287 hours, 39 minutes, 28 secondsSo, web hook URL. And this should be much simpler.
7:39:357 hours, 39 minutes, 35 secondsSo, we can remove select entirely. We don't need it. Inside of form item, open form control like this. And just render
7:39:447 hours, 39 minutes, 44 secondsa normal input. So, very simple. and add [clears throat] a placeholder and spread field property. So if you want, you can
7:39:517 hours, 39 minutes, 51 secondsgive a placeholder just to give your user the idea of what they're supposed to add here. Then let's do form description. And in here, you would
7:40:007 hours, 40 minutesbasically explain to your user how to do this. So get this from Discord channel settings, integrations, web hooks,
7:40:077 hours, 40 minutes, 7 secondsright? Whatever you prefer, however you prefer to convey your user this information.
7:40:157 hours, 40 minutes, 15 secondsUh again, I have no idea how to make this. Uh I just copied it from somewhere.
7:40:217 hours, 40 minutes, 21 secondsNow let's go ahead and do the content one. And this one will be a text area.
7:40:277 hours, 40 minutes, 27 secondsSo let's go ahead and demonstrate to our users how they can for example use variables here. Summary and then maybe
7:40:337 hours, 40 minutes, 33 secondsAI response, right? Just to remind them that they can do that. My Gemini.ext, I don't know, something like that. And
7:40:427 hours, 40 minutes, 42 secondsin the form description again we're just you know explaining things. The message to send use variables for simple values or JSON variable to stringify objects.
7:40:537 hours, 40 minutes, 53 secondsUh and then let's go ahead and let's add let's copy the input one here because it's the most similar one form field.
7:41:007 hours, 41 minutesAnd let's replace the last one here.
7:41:057 hours, 41 minutes, 5 secondsAnd instead of web hook URL, this will be username bot username optional.
7:41:147 hours, 41 minutes, 14 secondsThere we go.
7:41:167 hours, 41 minutes, 16 secondsLet's go ahead and add a placeholder here. Workflow bot.
7:41:237 hours, 41 minutes, 23 secondsAnd then we can make the description be well descriptive. So this will be used to override the web hook's default
7:41:307 hours, 41 minutes, 30 secondsusername. Uh, and of course, let's rename this from Gemini dialogue to Discord dialogue. And now we can remove
7:41:407 hours, 41 minutes, 40 secondsthe use credentials by type hook. We no longer need that. Which means that we can remove image. We can remove select.
7:41:477 hours, 41 minutes, 47 secondsWe can remove credential type and use credentials by type. There we go. Much simpler. Now,
7:41:547 hours, 41 minutes, 54 secondsnow let's go back to the node and we can now import Discord dialogue from dot / dialogue. And we can remove the Gemini
7:42:027 hours, 42 minutes, 2 secondsdialogue. Looks like I still have this called Gemini. So I'm just going to go here, change this to be discord form values.
7:42:157 hours, 42 minutes, 15 secondsAnd let's go ahead and add them here. And let's use them here. There we go.
7:42:207 hours, 42 minutes, 20 secondsAnd this is how [clears throat] it should look like now. Variable name, then web hook URL. Uh oh, this is still called system prompt. Whoops.
7:42:317 hours, 42 minutes, 31 secondsThat should be called content. So inside of dialogue, let's just make sure to rename that.
7:42:397 hours, 42 minutes, 39 secondsIt's not optional. It is content. Uh let's be more descriptive. Message content. There we go. I think that makes
7:42:487 hours, 42 minutes, 48 secondsit clear what you're supposed to write here. Basically, the message that will be sent, right? Uh very, very good. Now
7:42:557 hours, 42 minutes, 55 secondsthat we have that, let's go ahead and create the channel so we can create the real time execution thingy here. So I'm
7:43:047 hours, 43 minutes, 4 secondsgoing to go inside of source inest channels. I will copy Gemini, paste it here, rename it to Discord.
7:43:137 hours, 43 minutes, 13 secondsI will rename this to Discord channel name, Discord execution. And this will
7:43:197 hours, 43 minutes, 19 secondsbe called Discord channel. Now that we have that, we can go back. My apologies.
7:43:257 hours, 43 minutes, 25 secondsWe can go inside of inest functions. DS and we can register the new Discord channel.
7:43:337 hours, 43 minutes, 33 secondsSo, just make sure you import that.
7:43:367 hours, 43 minutes, 36 secondsGreat. Now, let's go ahead inside of features. Let's go inside of executions
7:43:437 hours, 43 minutes, 43 secondscomponents. Discord actions. DS. Let's go ahead and rename these to Discord.
7:43:497 hours, 43 minutes, 49 secondsSo, Discord token and fetch Discord real-time token and all instances to be discord channel from channels Discord.
7:43:597 hours, 43 minutes, 59 secondsThere we go. Then we can go ahead and go back inside of node in the Discord folder.
7:44:067 hours, 44 minutes, 6 secondsAnd we can fix this to be discord channel name and fetch Discord realtime
7:44:137 hours, 44 minutes, 13 secondstoken and remove fetch Gemini realtime token from actions. And then we can remove the channels Gemini import. Perfect.
7:44:227 hours, 44 minutes, 22 secondsNow that we have that, we can finally go inside of the executor right here.
7:44:287 hours, 44 minutes, 28 secondsSo let's go ahead and let's start with renaming uh the data here.
7:44:357 hours, 44 minutes, 35 secondsInstead of Gemini data, this will be discord data. It will still have variable name, but alongside that, it
7:44:437 hours, 44 minutes, 43 secondswill have three new items. This is a web hook URL content and username. Perfect.
7:44:507 hours, 44 minutes, 50 secondsAnd let's rename this to Discord executor. I like this. This time I don't think we will need user ID. So we can remove it because it will be unused.
7:45:007 hours, 45 minutesLet's go ahead and start by uh changing the inest channel to use Discord one discord channel.
7:45:097 hours, 45 minutes, 9 secondsSo replacing all instances to use Discord
7:45:177 hours, 45 minutes, 17 secondschannel. Basically just replace every single instance to use Discord channel.
7:45:227 hours, 45 minutes, 22 secondsAnd maybe some of them are unneeded, unnecessary. We're going to fix them now. So that's what I did. I just basically replaced eight instances of
7:45:317 hours, 45 minutes, 31 secondswhat was previously Gemini channel to Discord channel. So we start with loading. We throw an error if variable name does not exist. And then we can go
7:45:407 hours, 45 minutes, 40 secondsahead and instead of throwing errors if credential ID doesn't exist or if user prompt doesn't exist with something simpler.
7:45:487 hours, 45 minutes, 48 secondsWe're going to check if web hook URL is missing. So we throw an error like this.
7:45:547 hours, 45 minutes, 54 secondsAnd we're going to check if content is missing. So message content is also required. Make sure to emit an error.
7:46:017 hours, 46 minutes, 1 secondAnd now let's go ahead and remove this because we're not going to need that.
7:46:077 hours, 46 minutes, 7 secondsAnd let's do const raw content handlebars handlebars.
7:46:167 hours, 46 minutes, 16 secondsData content and pass in the context const content. Let's go ahead uh and
7:46:257 hours, 46 minutes, 25 secondsyeah. So the problem is uh the way handlebars will compile this
7:46:327 hours, 46 minutes, 32 secondswill make it uh non-compatible with discord. So I found that you can install
7:46:387 hours, 46 minutes, 38 secondsa package called HTML entities and then you can decode it using that
7:46:457 hours, 46 minutes, 45 secondspackage and that should improve how messages arrive. So just import HTML entities.
7:46:537 hours, 46 minutes, 53 secondsLet's go back here. So now that we have content, let's do decode raw content.
7:47:047 hours, 47 minutes, 4 secondsAnd let's go ahead and set the username. So let's check did the user pass this?
7:47:107 hours, 47 minutes, 10 secondsIf it did, let's decode handlebars result handlebars compile data username context.
7:47:217 hours, 47 minutes, 21 secondsLet me fix this.
7:47:237 hours, 47 minutes, 23 secondsotherwise undefined and it will just use the default from discord. So basically we are allowing user to use variables to
7:47:327 hours, 47 minutes, 32 secondsset their system prompt. Uh oh, am I still calling this system prompt? I think I just haven't refreshed.
7:47:417 hours, 47 minutes, 41 secondsOh no, it's actually the Gemini one.
7:47:437 hours, 47 minutes, 43 secondsSorry. So let me add a Discord one. Here it is. Yes. So basically you can use variables here, here, and even here.
7:47:547 hours, 47 minutes, 54 secondsSo now let's go ahead and remove credential because we don't need it. We don't need any of these. In fact,
7:48:027 hours, 48 minutes, 2 secondslet's just empty the try entirely. Uh actually empty it until publish success
7:48:107 hours, 48 minutes, 10 secondslike this. And let's just do const result await step.run run discord web
7:48:177 hours, 48 minutes, 17 secondshook like this.
7:48:227 hours, 48 minutes, 22 secondsLet's go ahead and do await ky. Make sure to import ky from KY. So the same thing we used in our HTTP
7:48:307 hours, 48 minutes, 30 secondsrequest executor if you remember KY. So you should have it installed.
7:48:377 hours, 48 minutes, 37 secondsAnd now in the Discord executor, let's do await ky.post post data web hook URL.
7:48:477 hours, 48 minutes, 47 secondsLet's go ahead and pass JSON content content. slice 0200 because this is
7:48:567 hours, 48 minutes, 56 secondsDiscord's max message length and the username if we pass it.
7:49:047 hours, 49 minutes, 4 secondsGreat. And then we're just going to go ahead and return context. Whoops.
7:49:137 hours, 49 minutes, 13 secondsData variable name Discord message sent and set it to true.
7:49:217 hours, 49 minutes, 21 secondsOr if you want to, you can just say message content and then pass in content. slice02000 because that's exactly what we are going to send.
7:49:327 hours, 49 minutes, 32 secondsWhatever you think it's more useful to see.
7:49:357 hours, 49 minutes, 35 secondsAnd then we can go ahead and publish this as success.
7:49:417 hours, 49 minutes, 41 secondsAnd we can just return the result because we are setting this here.
7:49:507 hours, 49 minutes, 50 secondsYeah, let's uh uh yeah. Yeah, let's do it like that.
7:49:557 hours, 49 minutes, 55 secondsOkay. And now I think what we have to do here is just change this check and move it from here and just do it here.
7:50:077 hours, 50 minutes, 7 secondsbasically inside of step.r run because this is a new function scope. So, TypeScript will not work from the check we did above. Same thing for this web
7:50:167 hours, 50 minutes, 16 secondshook URL here. If you don't want to use that, since we check it, let's go ahead and move it right here.
7:50:277 hours, 50 minutes, 27 secondsThere we go.
7:50:327 hours, 50 minutes, 32 secondsPerfect. So, that should now actually be ready. And let's get rid of this Gemini node. Discord node variable name is missing.
7:50:437 hours, 50 minutes, 43 secondsDiscord node web hook URL is required.
7:50:457 hours, 50 minutes, 45 secondsDiscord node. Perfect. We can remove generate text and create Google generative AI. We can remove Prisma.
7:50:537 hours, 50 minutes, 53 secondsGreat. So this is now ready to make a call to discord spec hook URL and to send some message content using KY uh
7:51:017 hours, 51 minutes, 1 secondand to actually update the context with what happened.
7:51:107 hours, 51 minutes, 10 secondsNow let's not forget to pass this to the executor registry. So instead of
7:51:167 hours, 51 minutes, 16 secondsexecutions lib executor registry let's add node type. Discord and add Discord
7:51:237 hours, 51 minutes, 23 secondsexecutor here. And we can copy and paste this and just add it for Slack just so we get rid of the error here. But make sure you've imported the Discord exeutor and feel free to use it twice for now.
7:51:347 hours, 51 minutes, 34 secondsWe're going to change it later. Uh, great. So, I think this should work just fine. Uh, yes. So like one thing I maybe
7:51:447 hours, 51 minutes, 44 secondswe don't have to do is the return here like this.
7:51:557 hours, 51 minutes, 55 secondsI think we can do it here.
7:52:007 hours, 52 minutesI don't know. It it really does not matter if you want to do it. But if you want to do it here, you also have to do
7:52:077 hours, 52 minutes, 7 secondscon result. Basically you can leave exactly as it was. But I was thinking maybe it's simpler to move it outside of the scope. Just make sure that you understand what is the scope of this
7:52:167 hours, 52 minutes, 16 secondsfunction. Right? So you can see this is where the function starts. Then we check if we don't have this then we do the post call. We check if we don't have variable name and we throw the error.
7:52:277 hours, 52 minutes, 27 secondsAnd then we return this context data variable name. But this doesn't end the background job. We then publish the
7:52:357 hours, 52 minutes, 35 secondssuccess and we return the result variable which is essentially just this.
7:52:407 hours, 52 minutes, 40 secondsSo this is on line 87 where this ends. So just make sure that
7:52:487 hours, 52 minutes, 48 secondsyou don't accidentally write this outside of the scope because it might return early or you might do something incorrectly here. Great. So once we have
7:52:577 hours, 52 minutes, 57 secondsthis ready, we have added it to our executor. I think that's all we have to do. So, let's just call this my Discord.
7:53:057 hours, 53 minutes, 5 secondsUh, let's go ahead and do https codewithonia.com.
7:53:107 hours, 53 minutes, 10 secondsHello world nodebase bot. Let's click save. Let's go ahead and remove this. Let's go ahead and add this instead.
7:53:217 hours, 53 minutes, 21 secondsLet's click save and let's watch this node fail obviously because it should not be able to make a post request to
7:53:297 hours, 53 minutes, 29 secondsthat uh thing. So let's go ahead and wait for this. This is good. And then this obviously fails. And if we take a
7:53:387 hours, 53 minutes, 38 secondslook at localhost 8288, we can see that it failed. Fetch failed.
7:53:477 hours, 53 minutes, 47 secondsYes, because this is an invalid URL.
7:53:517 hours, 53 minutes, 51 secondsGreat. So how do we create the proper URL? So let's try and find the exact way to do it. So get this from Discord
7:53:597 hours, 53 minutes, 59 secondschannel settings, integrations, web hooks. So in here I have a brand new Discord account and I have a brand new server. So let me try and find this.
7:54:087 hours, 54 minutes, 8 secondsHonestly, I'm I'm I'm like learning this as I go just as you are. So let me find
7:54:157 hours, 54 minutes, 15 secondsthis is user settings, server settings.
7:54:227 hours, 54 minutes, 22 secondsRight click, maybe edit channel, integrations, web hooks. Here they are. Create web hook.
7:54:307 hours, 54 minutes, 30 secondsNew web hook. Oh, so okay. Just it already created one. So just choose this one.
7:54:387 hours, 54 minutes, 38 secondsYou can name it whatever you want. For example, Spideybot channel is general.
7:54:427 hours, 54 minutes, 42 secondsCopy web hook URL. And then we should just add that here. Let's click save.
7:54:507 hours, 54 minutes, 50 secondsLet's click save up there. Let me go ahead and open my general channel. So I have no messages here. Let me execute the workflow again.
7:55:027 hours, 55 minutes, 2 secondsAnd there we go. We successfully sent a message from our uh Nodebase project to
7:55:117 hours, 55 minutes, 11 secondshere. Amazing amazing job. And you can see that it's actually super simple. It just needs a web hook URL. We did we
7:55:187 hours, 55 minutes, 18 secondsdidn't even have to install any Discord SDK or anything. It was super simple.
7:55:237 hours, 55 minutes, 23 secondsThe hardest part was just repeating all the code that we already had and uh customizing it to be Discord related.
7:55:327 hours, 55 minutes, 32 secondsAnd the integration for Slack is exactly the same and I'm like 90% sure it's the same for WhatsApp, Telegram, Signal,
7:55:417 hours, 55 minutes, 41 secondswhatever you might want to use. Uh, and it also kind of gives you the idea of how you would do it for something more advanced like how to add it to Google
7:55:507 hours, 55 minutes, 50 secondsSheets. Well, very similarly, I I suggest, right, you would just ping some web hook that they offer or maybe if
7:55:577 hours, 55 minutes, 57 secondsit's a bit more complicated, you would install some SDK and then the user will have to add like their API keys or something like that. But nothing you
7:56:067 hours, 56 minutes, 6 secondshaven't done before, right? That's why I try to choose uh not like every single node in the world, but enough of them
7:56:137 hours, 56 minutes, 13 secondsfor it to be useful for you so that you can add your own nodes because honestly this video can go on forever. I can add
7:56:207 hours, 56 minutes, 20 secondsa billion nodes here. So let's go ahead and now do the same for Slack.
7:56:277 hours, 56 minutes, 27 secondsAnd of course we can also check in here in the completed tab how does the finalization look like? And there we go.
7:56:327 hours, 56 minutes, 32 secondsSo the variable is called my Discord and message content was this.
7:56:387 hours, 56 minutes, 38 secondsSo just to confirm that that is also working as expected. Great. So let's go ahead and do the exact same thing for
7:56:467 hours, 56 minutes, 46 secondsSlack. Shouldn't be too hard given that it's almost exactly the same code. So inside of features executions
7:56:547 hours, 56 minutes, 54 secondscomponents, let's go ahead and copy Discord. Paste it in components.
7:57:007 hours, 57 minutesRename this to Slack. And then I'm going to go ahead and start with node.tsx.
7:57:077 hours, 57 minutes, 7 secondsAnd I will change these instances to slack. And of course, I will change the
7:57:147 hours, 57 minutes, 14 secondsdisplay name here. Then in the base execution node, I will use slack image and slack title. And this will actually
7:57:237 hours, 57 minutes, 23 secondsbe exactly the same. So that's cool. And now let's go ahead and do node components inside of source config. So source config folder node components.
7:57:337 hours, 57 minutes, 33 secondsLet's go ahead and immediately add slack slack node. Make sure you import it. And
7:57:407 hours, 57 minutes, 40 secondsthen node selector. Node selector is inside of source components node selector. So I'm going to go ahead and
7:57:477 hours, 57 minutes, 47 secondscopy this. I'm doing this inside of my execution nodes.
7:57:537 hours, 57 minutes, 53 secondsChange this to slack. Send a message to Slack.
7:57:577 hours, 57 minutes, 57 secondsLabel Slack and Slack right here. And I think that should be enough. We can now click the plus button. If you scroll down, you will find Slack right here.
7:58:097 hours, 58 minutes, 9 secondsBut obviously, it uses a configuration for Discord. So, let's go ahead and resolve that.
7:58:177 hours, 58 minutes, 17 secondsLet's go inside of Discord and let's go inside of dialogue.dsx dsx and let's start by checking if anything needs to change in the form schema.
7:58:297 hours, 58 minutes, 29 secondsSo this will actually be a little bit simpler because we're not going to have username and we are not going to have
7:58:377 hours, 58 minutes, 37 secondsuh oh we're just not going to have username. Okay, so we have content and in here I have no idea what is the maximum limit. So you can remove it if
7:58:467 hours, 58 minutes, 46 secondsyou want it to be longer than 2,00 uh discord form values. Let's of course change uh these three instances to
7:58:547 hours, 58 minutes, 54 secondsSlack. So Slack form values Slack dialogue. And in here just remove username. We don't need it. And here as
7:59:027 hours, 59 minutes, 2 secondswell. And then you can also remove the input for the username here. We don't need username.
7:59:107 hours, 59 minutes, 10 secondsAnd I think that is it. We only need to obviously change how to do this. Um, so
7:59:207 hours, 59 minutes, 20 secondsthere are a couple of ways that you can implement web hooks within Slack. You can do it by creating a new app or you can also do it by creating uh web hooks.
7:59:327 hours, 59 minutes, 32 secondsMy apologies, not web hooks, workflows.
7:59:357 hours, 59 minutes, 35 secondsUh I have no idea what is the difference between two but I did find that if you want to use workflows it is almost as
7:59:437 hours, 59 minutes, 43 secondssimple as with uh Discord which was just you know right clicking on the channel edit channel integrations add new. So
7:59:537 hours, 59 minutes, 53 secondsI'm going to go ahead and change this to get this from Slack channel settings and let's go ahead and do workflows web
8:00:018 hours, 1 secondhooks. Maybe this would be workspace settings. Actually, I think that's kind of what it would be
8:00:098 hours, 9 secondshere. Uh, we can change the placeholder here just to tell the user like kind of what
8:00:168 hours, 16 secondswe would expect to have. And let's go ahead and change the title to be Slack configuration and configure the Slack
8:00:248 hours, 24 secondsweb hook settings for this node. Change this to be my Slack.
8:00:308 hours, 30 secondsand in here to my Slack. There we go.
8:00:358 hours, 35 secondsNow we can go back instead of node.tsx, we can change Discord dialogue to be
8:00:428 hours, 42 secondsSlack dialogue and we can change Discord form values to be Slack form values. Now
8:00:488 hours, 48 secondslet's modify Discord node data to not have username because we don't need it.
8:00:558 hours, 55 secondsThere we go. And now let's go ahead and close this. Let's double click here. Uh
8:01:018 hours, 1 minute, 1 secondlet's save this actually so I don't lose this Slack node. Then let me refresh.
8:01:088 hours, 1 minute, 8 secondsAnd then let me double click here.
8:01:118 hours, 1 minute, 11 secondsUh it still says ah did I just change the entire thing here?
8:01:228 hours, 1 minute, 22 secondsYes. Again I have modified Discord dialogue instead of Slack dialogue. make sure the same thing is not happening to
8:01:308 hours, 1 minute, 30 secondsyou here. Uh, so yes, looks like I've been doing the entire modification inside of a wrong dialogue. My apologies for that. I hope you understood what I
8:01:398 hours, 1 minute, 39 secondswas supposed to be doing. So, I'm just going to revert my changes. Uh, my apologies. This is already a long chapter, so I'm getting confused. So,
8:01:478 hours, 1 minute, 47 secondsinstead of Discord dialogue, what I'm going to do is I'm just going to control Z and just return things here.
8:01:568 hours, 1 minute, 56 secondsThere we go. like nothing ever changed and bring back username here.
8:02:038 hours, 2 minutes, 3 secondsAs simple as that.
8:02:058 hours, 2 minutes, 5 secondsAnd then I'm going to go back inside of my node, which is my obviously my Discord node.
8:02:118 hours, 2 minutes, 11 secondsAnd I'm just going to replace Slack dialogue back with Discord dialogue and Slack form values with Discord form
8:02:198 hours, 2 minutes, 19 secondsvalues. My apologies for that. I think this is twice that it happened. uh these components are so similar that I'm
8:02:268 hours, 2 minutes, 26 secondsgetting confused. Now I'm going to go back inside of source features executions components Slack and let's go
8:02:348 hours, 2 minutes, 34 secondsinside [clears throat] of dialogue of Slack. Let's remove the username here.
8:02:388 hours, 2 minutes, 38 secondsLet's remove the maximum here. Uh let's add a comma here. Let's rename Discord
8:02:448 hours, 2 minutes, 44 secondsform values. Actually all instances of Discord to be Slack. Make sure you are
8:02:528 hours, 2 minutes, 52 secondsdoing it in the Slack folder. Don't make the same mistake that I did. You can remove username from here. From here, you can change this to be my Slack.
8:03:038 hours, 3 minutes, 3 secondsChange this to be Slack configuration.
8:03:068 hours, 3 minutes, 6 secondsConfigure the Slack web hook. Change the placeholder to be my Slack.
8:03:138 hours, 3 minutes, 13 secondsYou can go ahead and you can remove form field for the username. There we go.
8:03:218 hours, 3 minutes, 21 secondsNow that we have that uh let's also change uh how you get this. So get this from Slack workspace
8:03:318 hours, 3 minutes, 31 secondssettings workflows web hooks.
8:03:368 hours, 3 minutes, 36 secondsThen let's go ahead inside of node of the slack folder let's go ahead and replace instance of discord dialogue
8:03:438 hours, 3 minutes, 43 secondswith slack dialogue and discord form values slack form values. There we go.
8:03:508 hours, 3 minutes, 50 secondsAll right. So, sorry about that. And now you can see it says Slack configuration
8:03:568 hours, 3 minutes, 56 secondsright here. And it doesn't have uh the username field. So, just to clarify, no,
8:04:048 hours, 4 minutes, 4 secondsyou don't have to modify anything in the Discord folder anymore. We finished with it. It's working. If you did, so sorry. Just bring back the username here.
8:04:138 hours, 4 minutes, 13 secondsRename this back to Discord. Uh, make sure you're using username here. Make sure you're using it here. This should
8:04:218 hours, 4 minutes, 21 secondsbe called my Discord. These two instances as well. This as well. Uh, you also need the form field for the
8:04:308 hours, 4 minutes, 30 secondsusername. Here it is entirely if you've accidentally deleted it. And the instructions here should be for Discord.
8:04:388 hours, 4 minutes, 38 secondsAgain, my apologies if you've changed the dialogue in the Discord folder because you were following me. It was supposed to be changing the ones in the Slack folder. Excellent.
8:04:498 hours, 4 minutes, 49 secondsNow, let's go ahead and let's do the channel for Slack. So, I'm going to go ahead inside of inest channels. I will
8:04:598 hours, 4 minutes, 59 secondscopy Discord and I will paste it here. I will rename it Slack. I will go inside of that Slack. I will change this to be
8:05:088 hours, 5 minutes, 8 secondsSlack channel name. Slack channel. Let's call this Slack execution. That's it.
8:05:188 hours, 5 minutes, 18 secondsThen let's go ahead and set up inest functions.ts Slack channel and make sure you've imported it.
8:05:288 hours, 5 minutes, 28 secondsNow that we have that, let's go ahead inside of source features executions components Slack actions.
8:05:388 hours, 5 minutes, 38 secondsReplace all instances of Discord with Slack. Replace three instances of Discord channel with Slack channel.
8:05:468 hours, 5 minutes, 46 secondsChange the import to Slack. There we go.
8:05:508 hours, 5 minutes, 50 secondsThen in the Slack folder, go inside of node.tsx. Change this to be Slack channel name.
8:05:588 hours, 5 minutes, 58 secondsFetch Slack realtime token and remove fetch Discord realtime token and remove Discord channel name import. There we go.
8:06:098 hours, 6 minutes, 9 secondsNow that we have that, let's go inside of executor for the Slack component.
8:06:178 hours, 6 minutes, 17 secondsSo, first things first, let's quickly modify the Discord data and remove the username. We're not going to need it.
8:06:248 hours, 6 minutes, 24 secondsThen, let's replace all seven instances of Discord channel with Slack channel.
8:06:318 hours, 6 minutes, 31 secondsSo, just replace all of them and fix this to use the Slack import. and then you should just be using Slack channel everywhere.
8:06:408 hours, 6 minutes, 40 secondsLet's rename this from Discord data to Slack data. Let's change this from Discord executor to Slack executor.
8:06:508 hours, 6 minutes, 50 secondsAnd now let's go ahead and change all instances of Discord node text with Slack node.
8:06:598 hours, 6 minutes, 59 secondsAnd I think that's all of it. Yes, make sure you're not logging Discord node anywhere.
8:07:088 hours, 7 minutes, 8 secondsNow, let's go ahead and let's remove username since we are not going to need it. This will be Slack web hook
8:07:178 hours, 7 minutes, 17 secondsand let's go ahead and do this. So, ky.post data web hook URL and in the JSON let's just do text and send that as content.
8:07:298 hours, 7 minutes, 29 secondsSo yes, this one will accept text, but um you will see um
8:07:378 hours, 7 minutes, 37 secondsso I'm not going to add a comment. The key depends on workflow config.
8:07:458 hours, 7 minutes, 45 secondsSo you should probably add this instructions somewhere in the dialogue for the user. You're going to see what I'm talking about. For now, make this text, but this can actually be anything.
8:07:568 hours, 7 minutes, 56 secondsIt will depend on how user sets up their uh web hook.
8:08:038 hours, 8 minutes, 3 secondsSo I think this is okay now. Now let's go inside of executions lib executor
8:08:108 hours, 8 minutes, 10 secondsregistry node type. Oh, we already have slack. Perfect. Slack executor. There we
8:08:168 hours, 8 minutes, 16 secondsgo. So now that we have that working, let's go ahead and remove this one.
8:08:238 hours, 8 minutes, 23 secondsLet's go ahead and connect this my Slack https. Let's do code with Antonio again.
8:08:318 hours, 8 minutes, 31 secondsHello world Slack. Click save. Save up there. And let's just see this fail
8:08:408 hours, 8 minutes, 40 secondsbecause that's what it's supposed to do, right? We have added an invalid web hook URL.
8:08:478 hours, 8 minutes, 47 secondsUh, looks like this is not working, but it could be because I'm missing a refresh. Let's just try again because this one just failed, which is correct.
8:08:598 hours, 8 minutes, 59 secondsSo, let's see. Yeah, it just needed a refresh. Perfect. And it failed for the exact same reason. It cannot post that.
8:09:068 hours, 9 minutes, 6 secondsSo, now let's go ahead and let's test Slack.
8:09:108 hours, 9 minutes, 10 secondsSo just the just as with Discord I've created a new account here, new channel uh new everything and I've created a brand new channel called general here.
8:09:218 hours, 9 minutes, 21 secondsSo [snorts] as I said there are multiple ways you can send a message to Slack using web hooks but one that I found actually the
8:09:288 hours, 9 minutes, 28 secondssimplest is by uh again you'll have to excuse me I am not that familiar with Slack here in more you can find tools
8:09:388 hours, 9 minutes, 38 secondscreate and find workflows and apps and instead of workflows you can click on new build workflow
8:09:478 hours, 9 minutes, 47 secondsand for an event here you should be able to select from a web hook starts from a
8:09:548 hours, 9 minutes, 54 secondsthird-party event. So, if you ever become a big shot with this app, you could probably collab with Slack and then have Nodebase here. Obviously,
8:10:028 hours, 10 minutes, 2 secondsthat's why all of these other companies have it so much easier to add integrations because they have diplomacy between these apps to make it easier.
8:10:108 hours, 10 minutes, 10 secondsBut in our case, we have to click from a web hook. And this is what I was talking about. You have to set up variables
8:10:178 hours, 10 minutes, 17 secondshere. So, for example, you can set this to be content. And then inside of your executor,
8:10:268 hours, 10 minutes, 26 secondsthis would be, let me just find it. This would be content, right? If you set the key to be text,
8:10:358 hours, 10 minutes, 35 secondsthis would be text, right? So, that's kind of the tricky part. So, uh let me
8:10:418 hours, 10 minutes, 41 secondsjust see in this word executor, what's it called? If it is uh it's
8:10:488 hours, 10 minutes, 48 secondscontent, let's go ahead and make it content here. Content and leave this key. So the key depends
8:10:568 hours, 10 minutes, 56 secondson workflow config. This is what I'm talking about. So make sure the key here is content like that. And data type should be text.
8:11:058 hours, 11 minutes, 5 secondsClick done. And there we go. You can see now example HTTP body. Exactly what we are doing. And let's go ahead and click continue.
8:11:168 hours, 11 minutes, 16 secondsUh, and let me go ahead and try and do add steps. Send a message to channel.
8:11:238 hours, 11 minutes, 23 secondsSearch all channels. Select your channel. And in here, you can insert a variable here. Oh, you can also insert all data or you can just do content.
8:11:338 hours, 11 minutes, 33 secondsOkay, I see. Yeah, you can see can play around with this. So, let's just add content. Save. There we go. Finish up
8:11:438 hours, 11 minutes, 43 secondsthe button up there. Nodebase workflow like this and let's click publish.
8:11:528 hours, 11 minutes, 52 secondsUh and now somewhere here we should find let's click add to channel.
8:12:008 hours, 12 minutesOkay. Nodebase workflow. Right click. Uh we have copy workflow link. Let me check. Is that what I think it is?
8:12:118 hours, 12 minutes, 11 secondsLet's see if I go here and if I add that here.
8:12:188 hours, 12 minutes, 18 secondsUh, I'm not too sure that's what it is.
8:12:218 hours, 12 minutes, 21 secondsAs I, as I said, I'm not like too familiar with this. I discovered this myself. [clears throat] So, let me try and find copy workflow. Share workflow.
8:12:328 hours, 12 minutes, 32 secondsH, maybe it is this. I'm not even sure myself anymore.
8:12:408 hours, 12 minutes, 40 secondsWorkflows. Here it is. Copy workflow link. Starts with a web hook.
8:12:488 hours, 12 minutes, 48 secondsOh, here it is. You have to go and find starts with a web hook. Click on the edit button and down here find web
8:12:568 hours, 12 minutes, 56 secondsrequest URL. Okay. And add it here.
8:13:018 hours, 13 minutes, 1 secondAnd click save. Click save up there. And let's see if this will now work. So, execute workflow.
8:13:108 hours, 13 minutes, 10 secondsHome general.
8:13:138 hours, 13 minutes, 13 secondsAnd let's see if it will work. There we go. Hello world from Slack. Both nodes successfully ran. Amazing, amazing job.
8:13:248 hours, 13 minutes, 24 secondsAnd in here, here we have my Slack message content. Hello world from Slack.
8:13:298 hours, 13 minutes, 29 secondsSo, I've just told you I've just shown you two different messaging platforms that you can use and integrate. And this
8:13:388 hours, 13 minutes, 38 secondsyou can now use this as a guide on how you would add a billion others. No, WhatsApp, Telegram, Signal, whatever you
8:13:448 hours, 13 minutes, 44 secondsprefer. 90% of them will work the exact same way, right? Just some kind of web hook.
8:13:528 hours, 13 minutes, 52 secondsAgain, uh this is kind of a tricky part with Slack one. So, I would suggest uh that you go inside of your dialogue
8:14:018 hours, 14 minutes, 1 secondfor Slack and maybe somehow add like multiple form descriptions, make sure the key is content.
8:14:148 hours, 14 minutes, 14 secondsSo, your users then know how they're supposed to uh yeah, how they are supposed to configure the workflow because it's not exactly perfect.
8:14:268 hours, 14 minutes, 26 secondsbecause if inside of uh this web hook they don't set up the content variable
8:14:348 hours, 14 minutes, 34 secondsit will not work. So make sure the make sure you
8:14:418 hours, 14 minutes, 41 secondshave content variable.
8:14:488 hours, 14 minutes, 48 secondsI think that would be kind of I don't I'm not sure. Um, another way you can do it is by exploring uh Slack apps.
8:14:598 hours, 14 minutes, 59 secondsUh, so that's this and then you would have to create your app and then you can
8:15:058 hours, 15 minutes, 5 secondssend uh a web hook event as well. I personally find this just a little bit
8:15:128 hours, 15 minutes, 12 secondseasier because apps have this weird interface that I find confusing to use.
8:15:188 hours, 15 minutes, 18 secondsThis isn't perfect either, but it's kind of fast to do. It wasn't too difficult.
8:15:258 hours, 15 minutes, 25 secondsUh, amazing. So, that's it. Uh, again, so sorry if I misled you with the uh
8:15:328 hours, 15 minutes, 32 secondsediting of the Discord folder and caused you some problems there. I meant to edit the Slack folder. They are so similar. I don't even know which one I'm modifying
8:15:408 hours, 15 minutes, 40 secondsanymore. So, let's go ahead and check what we were supposed to do here. We added Discord node dialogue executor
8:15:498 hours, 15 minutes, 49 secondschannel and we tested it and we did the exact same thing for the Slack node.
8:15:538 hours, 15 minutes, 53 secondsAmazing. Let's go ahead and push this to GitHub. So 26 Discord and Slack nodes.
8:15:598 hours, 15 minutes, 59 secondsI'm going to go ahead and create a new branch. 26 Discord Slack nodes.
8:16:078 hours, 16 minutes, 7 secondsThen I'm going to go ahead and commit all of my changes here. So stage all changes
8:16:158 hours, 16 minutes, 15 seconds26 discord slack nodes commit and let's go ahead and publish this branch. Once
8:16:238 hours, 16 minutes, 23 secondsthis branch has been published, let's go ahead and open a pull request and let's have a code rabbit review for
8:16:328 hours, 16 minutes, 32 secondsany security issues so you can see what you could improve or if we did something critically wrong so that we can fix it in the next chapter.
8:16:428 hours, 16 minutes, 42 secondsSo I've actually realized that 90% of this code was copied from the Gemini node and Gemini node is something that
8:16:508 hours, 16 minutes, 50 secondswe have reviewed in the previous chapter. So I'm not sure how much sense it makes to you know let code rabbit
8:16:588 hours, 16 minutes, 58 secondsreview the exact same code twice. We already know uh the potential caveats it's going to give us. uh for example
8:17:068 hours, 17 minutes, 6 secondsmost of the time we're not using uh entire try catch methods uh and things like that basically what we already saw
8:17:148 hours, 17 minutes, 14 secondsso what I suggest is we read the summary and we merge this and then we use code rabbit review for the next chapter which
8:17:228 hours, 17 minutes, 22 secondswill be a completely new feature instead of this one which is pretty much identical to the previous one just some
8:17:298 hours, 17 minutes, 29 secondsslight differences with naming and executor so we added discord web hook execution node to automate message
8:17:368 hours, 17 minutes, 36 secondssending to Discord channels. We added Slack web hook execution node to automate message sending to Slack channels. We added HTML entities
8:17:448 hours, 17 minutes, 44 secondsdependency. This is so it improves the formatting of the message when it arrives into Slack or Discord. And we updated the database schema to support
8:17:528 hours, 17 minutes, 52 secondsnew execution type nodes. Amazing. So now let's go ahead and let's just merge this pull request. And once it has been
8:18:008 hours, 18 minutesmerged, we can go ahead and go back inside of our main branch. We can click on synchronize changes.
8:18:108 hours, 18 minutes, 10 secondsAnd let's go ahead and double check right here with our graph 26 Discord Slack nodes that we have merged it.
8:18:208 hours, 18 minutes, 20 secondsAmazing. I believe that marks the end of this chapter. Uh not much things left to do. So, we are nearing the end of this
8:18:288 hours, 18 minutes, 28 secondstutorial finally. Thank you so much for being so far along with me here. Uh, not too many things left to do. Amazing job.
8:18:378 hours, 18 minutes, 37 secondsAnd see you in the next chapter.
Chapter 11: 27 Executions History
8:18:418 hours, 18 minutes, 41 secondsIn this chapter, we're going to implement executions history. So far, we've been able to run executions with
8:18:488 hours, 18 minutes, 48 secondseither success or failure states, but the only way we've been able to look at the result of those executions is using
8:18:578 hours, 18 minutes, 57 secondsthe ingest developer server. So, what we're going to do now is implement a page where user will be able to look at
8:19:048 hours, 19 minutes, 4 secondsall of their current running or previously run executions and track whether they failed or whether they
8:19:128 hours, 19 minutes, 12 secondssucceeded. Let's start by adding the schema for that.
8:19:178 hours, 19 minutes, 17 secondsSo let's go ahead and open schema Prisma and let's go ahead and go all the way down and let's create a model execution.
8:19:268 hours, 19 minutes, 26 secondsLet's give it an ID default CU ID. Now let's go ahead and
8:19:348 hours, 19 minutes, 34 secondsgive it some timestamps. So each execution will have a started at date time and it will be automatically
8:19:438 hours, 19 minutes, 43 secondspopulated. Then we're going to have completed at which will be optional because it doesn't have to complete it can fail.
8:19:538 hours, 19 minutes, 53 secondsWe are then going to have inest event ID which will be unique
8:20:018 hours, 20 minutes, 1 secondand this is not executable. So like that and we're going to have output which will be an optional JSON.
8:20:118 hours, 20 minutes, 11 secondsNow each workflow will have an execution. So let's make sure that we go inside of model workflow here and add executions
8:20:198 hours, 20 minutes, 19 secondsexecution like this. And in order to fix the error, we need to create a proper relation.
8:20:278 hours, 20 minutes, 27 secondsSo let's go ahead and do workflow ID and let's make this a string. And then let's
8:20:348 hours, 20 minutes, 34 secondsdo workflow workflow relation fields workflow ID references ID and on delete
8:20:448 hours, 20 minutes, 44 secondscascade. So if the workflow gets deleted the execution history will get deleted as well. Of course you can decide for yourself whether you want that or not.
8:20:568 hours, 20 minutes, 56 secondsthat will be the behavior in my app. Uh on delete has options like set default, set null. So in this case I'm using uh cascade.
8:21:088 hours, 21 minutes, 8 secondsPerfect. Now let's go ahead and create an enum so we can define exactly what
8:21:158 hours, 21 minutes, 15 secondskind of status execution can have. So enum execution status can be running success or failed. And now let's go
8:21:238 hours, 21 minutes, 23 secondsahead and very simply just add uh status execution status
8:21:338 hours, 21 minutes, 33 secondsdefault running.
8:21:378 hours, 21 minutes, 37 secondsSo besides status timestamps in justest event ID and output let's also make sure
8:21:448 hours, 21 minutes, 44 secondsthat we have an option to track error which can be an optional string. And in order to increase the character length,
8:21:528 hours, 21 minutes, 52 secondswe can add db.ext decorator. And let's do the same for error stack because these two can be quite lengthy. So
8:22:008 hours, 22 minutesthat's why we are adding this decorator right here. Great.
8:22:068 hours, 22 minutes, 6 secondsNow that we have this, let's go ahead and uh let me see. So we have an index here automatically added because of the
8:22:148 hours, 22 minutes, 14 secondsforeign key. And I think um this should be enough. So now let's go ahead and migrate that. So npx prisma migrate dev.
8:22:258 hours, 22 minutes, 25 secondsLet's give it a name something like uh executions schema.
8:22:328 hours, 22 minutes, 32 secondsSo after you've given it a name like this, go ahead and press enter. And that should synchronize your database. You can now close this and as always restart
8:22:418 hours, 22 minutes, 41 secondsNex.js and restarting inest. If you have it running, go ahead and refresh local host. So now that we have this, we are
8:22:508 hours, 22 minutes, 50 secondsready to create this feature. Let's go inside of the features folder and we can actually copy credentials. So copy
8:22:588 hours, 22 minutes, 58 secondscredentials and paste it inside of features. Go ahead and rename it to executions.
8:23:068 hours, 23 minutes, 6 secondsUh oh, it looks like executions is already taken. So this should then be
8:23:148 hours, 23 minutes, 14 secondslet's see uh well we can actually keep it inside of executions. That's right.
8:23:218 hours, 23 minutes, 21 secondsNo need to copy it. Let's actually use our executions folder. That makes perfect sense to do. So let's go ahead
8:23:288 hours, 23 minutes, 28 secondsand start by creating server and then let's go ahead and copy routers.ds from
8:23:358 hours, 23 minutes, 35 secondscredentials and paste it inside of executions server.
8:23:408 hours, 23 minutes, 40 secondsSo make sure you open the routers.ds in your executions folder. So close all
8:23:478 hours, 23 minutes, 47 secondsother ones. Go ahead and rename this to executions router.
8:23:548 hours, 23 minutes, 54 secondsAnd then let's go ahead inside of tRC routers_app and let's add executions executions router.
8:24:058 hours, 24 minutes, 5 secondsYou can import it from features, executions, server, routers and save the file. Great. So this will be quite
8:24:128 hours, 24 minutes, 12 secondssimpler now. Executions will not be able to be created via API nor will be able
8:24:198 hours, 24 minutes, 19 secondsto be removed. They cannot be updated either. So none of this makes sense.
8:24:248 hours, 24 minutes, 24 secondsThese are like trace logs, right? You can only see them. You can't do anything with them. And you can also remove get
8:24:328 hours, 24 minutes, 32 secondsby type. So only two of them get one and get many. Get one will be a protected
8:24:398 hours, 24 minutes, 39 secondsprocedure which will very simply use prisma.execution find unique or throw. The only
8:24:478 hours, 24 minutes, 47 secondsdifference here will be that it will not use user ID like this. It will simply access its child workflow. Well, not its
8:24:568 hours, 24 minutes, 56 secondschild, its relation to the workflow like that. So yes, you can now do this with Prisma. Uh previously you were not able
8:25:058 hours, 25 minutes, 5 secondsto do this and it was a bit more complicated if you wanted to achieve this. But this is great. This is super simple and you can now very easily uh do
8:25:158 hours, 25 minutes, 15 secondspermission check on a nested child like workflow which is really really cool.
8:25:228 hours, 25 minutes, 22 secondsSo now that we have that let's remove credential type. Let's remove premium procedure. We don't need any of that.
8:25:278 hours, 25 minutes, 27 secondsThat's it for the get one. Now let's go ahead and work on to get many. So get many is quite similar except we don't
8:25:368 hours, 25 minutes, 36 secondsneed to search it. So remove search from here and remove search from here. You can remove the name property entirely
8:25:458 hours, 25 minutes, 45 secondshere and you can remove it in the count as well. Now let's go ahead and change this to be prisma.execution.find
8:25:548 hours, 25 minutes, 54 secondsmany. So the wear will have to be modified to look within the workflow for the user ID as well. the same thing we
8:26:028 hours, 26 minutes, 2 secondsdid previously and order by here. Let's use started at instead of created at.
8:26:108 hours, 26 minutes, 10 secondsAnd let's go ahead and add include workflow select ID true name true. So we
8:26:188 hours, 26 minutes, 18 secondshave some more information to show on the user side.
8:26:238 hours, 26 minutes, 23 secondsAnd for this, let's also change this to execution and very simply look within the workflow to
8:26:338 hours, 26 minutes, 33 secondsmake sure we are fetching only that user's executions.
8:26:378 hours, 26 minutes, 37 secondsGreat. Everything else can stay exactly the same. That was easy, wasn't it? So now let's go ahead and copy everything
8:26:458 hours, 26 minutes, 45 secondselse that we have here uh in credentials server. So that will include params loader uh and a prefetch and let's paste
8:26:548 hours, 26 minutes, 54 secondsit here. So make sure you open prefetch and params loader
8:27:018 hours, 27 minutes, 1 secondfrom the new executions folder and let's also go inside of credentials
8:27:088 hours, 27 minutes, 8 secondsand let's copy params file and paste it inside of executions.
8:27:148 hours, 27 minutes, 14 secondsSo now let's go ahead and first start from the params file. So just make sure you are inside of executions folder
8:27:218 hours, 27 minutes, 21 secondsparams file. Let's go ahead and change this to be executions params. And we can go ahead and remove search
8:27:318 hours, 27 minutes, 31 secondsbecause search will no longer be available. But let's go ahead and add workflow ID.
8:27:398 hours, 27 minutes, 39 secondsUh actually we don't need that. We can just use page and page size.
8:27:478 hours, 27 minutes, 47 secondsThen let's go ahead inside of server in the executions folder and let's go ahead and do params loader here. So this will
8:27:558 hours, 27 minutes, 55 secondsnow be executions. Did I rename it executions params? I did. So executions params. And to fix this, let's just
8:28:048 hours, 28 minutes, 4 secondsretype it. And then this will be executions params loader using the executions params. There we go. Now
8:28:138 hours, 28 minutes, 13 secondslet's go inside of prefetch.ts TS and let's fix this as well. So this will be TRPC.executions.get
8:28:208 hours, 28 minutes, 20 secondsmany prefetch all executions prefetch executions TRPC executions
8:28:308 hours, 28 minutes, 30 secondssingle execution prefetch execution
8:28:378 hours, 28 minutes, 37 secondsDRPC executions get one. There we go.
8:28:438 hours, 28 minutes, 43 secondsSo we have all of the server parts ready including the params. So now let's go ahead and do hooks.
8:28:538 hours, 28 minutes, 53 secondsSo I'm going to go ahead and copy use credential params and use credentials.
8:28:588 hours, 28 minutes, 58 secondsI'm going to go instead of executions in the hooks here and I'm going to paste those two inside alongside use node
8:29:048 hours, 29 minutes, 4 secondsstatus. Uh let's start with use credentials params. And let's go ahead and rename it to use executions params.
8:29:138 hours, 29 minutes, 13 secondsIf it asks to update imports, you can select yes. And looks like the only place it's going to update it is this
8:29:208 hours, 29 minutes, 20 secondsone, use credentials from our executions folder. So this is the unsaved file and
8:29:288 hours, 29 minutes, 28 secondsthis is where it updated it. So we will get to that. For now, you can save that file. Let's focus on our just renamed
8:29:368 hours, 29 minutes, 36 secondsuse executions params. And let's go ahead and just use executions params.
8:29:428 hours, 29 minutes, 42 secondsAnd this will be use executions params. There we go. Now let's go ahead and rename this to use executions.ds.
8:29:528 hours, 29 minutes, 52 secondsLet's go inside of use executions and let's change this to be use executions params.
8:30:008 hours, 30 minutesNow this will also be a little bit simpler. So we will have this hook to fetch all executions using suspense. So
8:30:078 hours, 30 minutes, 7 secondsuse suspense executions use executions params the RPC executions
8:30:158 hours, 30 minutes, 15 secondsget many. We will not have a hook to create new one. So we can get rid of that. Same is true for removing one.
8:30:238 hours, 30 minutes, 23 secondsBut we will have a hook to fetch a single execution using suspense. So use suspense execution again. TRPC
8:30:318 hours, 30 minutes, 31 secondsexecutions get one. We will not have a hook to update any executions. So we can remove that. And we will also not have
8:30:408 hours, 30 minutes, 40 secondsanything uh to fetch by type. So we can remove that. So we only have two of
8:30:478 hours, 30 minutes, 47 secondsthese. Let's remove all the unused imports here.
8:30:528 hours, 30 minutes, 52 secondsUh but I do think uh we might need let's see we have use suspense executions and use suspense execution.
8:31:048 hours, 31 minutes, 4 secondsI'm thinking whether we are going to need any nonsuspense hooks here but I think this should be fine for now.
8:31:148 hours, 31 minutes, 14 secondsSo now let's go ahead and create the page loader. So, I'm going to go ahead inside of source app dashboard rest
8:31:218 hours, 31 minutes, 21 secondscredentials and I'm going to copy page.tsx.
8:31:268 hours, 31 minutes, 26 secondsI'm going to go inside of executions here. Uh, and well, it would might be easier to copy the content of page.tsx
8:31:348 hours, 31 minutes, 34 secondsand then open executions page and paste it in here. There we go. So, let's go ahead and change things up from
8:31:428 hours, 31 minutes, 42 secondscredentials to executions. Just make sure you are modifying executions page.dsx.
8:31:508 hours, 31 minutes, 50 secondsSo require out stays the same but params should be loaded using executions params loader. So make sure you change that
8:31:598 hours, 31 minutes, 59 secondsimport to use executions here and remove credentials params loader. And then for prefetching we're going to use prefetch
8:32:078 hours, 32 minutes, 7 secondsexecutions with said params. So you can then remove prefetch credentials and make sure you have prefetch executions from features executions server prefetch.
8:32:198 hours, 32 minutes, 19 secondsUh we can go ahead and replace the credentials container with just an empty fragment because we don't have an
8:32:268 hours, 32 minutes, 26 secondsalternative for this just yet. Uh and for the credentials error, we can just go ahead and do the same here. We will add both of these later.
8:32:408 hours, 32 minutes, 40 secondsAnd same is true for this to-do list for executions.
8:32:478 hours, 32 minutes, 47 secondsSo let's go ahead and remove all the unused things. There we go.
8:32:538 hours, 32 minutes, 53 secondsNow that we have that, let's go ahead and check it out. So I'm just going to make sure it's working. So when I click
8:33:028 hours, 33 minutes, 2 secondson executions right here, it should load to-do list for
8:33:098 hours, 33 minutes, 9 secondsexecutions. Great. Now let's go ahead and work on the client side. So I'm
8:33:168 hours, 33 minutes, 16 secondsgoing to go ahead and close the app folder and go inside of features executions and open the components
8:33:248 hours, 33 minutes, 24 secondsfolder. And then I'm going to go inside of credentials components and I will copy credentials. DSX and I will paste it in here in the components.
8:33:348 hours, 33 minutes, 34 secondsLet's go ahead and rename it to executions.tsx
8:33:418 hours, 33 minutes, 41 secondslike that. And then we're going to go ahead and slowly fix all of these errors and names. So double check you are
8:33:498 hours, 33 minutes, 49 secondsinside of features executions components executions. DSX. Let's start by changing
8:33:578 hours, 33 minutes, 57 secondsthis from hooks use credentials to hooks use executions.
8:34:028 hours, 34 minutes, 2 secondsAnd you can go ahead and remove use remove credential because we don't have it. And instead you can use use suspense
8:34:108 hours, 34 minutes, 10 secondsexecutions instead of this instead of you use credentials params executions params and import use executions params.
8:34:248 hours, 34 minutes, 24 secondsLet's go ahead and see what we need and what we don't need. For example, uh we don't need this search component at all.
8:34:338 hours, 34 minutes, 33 secondsSo, we can just remove it.
8:34:378 hours, 34 minutes, 37 secondsInstead of credentials list, it's going to be executions list. It's not going to be credentials. It's going to be
8:34:438 hours, 34 minutes, 43 secondsexecutions and it will be use suspense executions.
8:34:488 hours, 34 minutes, 48 secondsSo to the entity list, let's make sure we are passing executions. Let's make sure we are using
8:34:568 hours, 34 minutes, 56 secondsexecution everywhere.
8:35:018 hours, 35 minutes, 1 secondAnd uh for now, let's just leave this as is. We're going to replace these two
8:35:078 hours, 35 minutes, 7 secondslater. So when it uh comes to executions header, it's going to be quite simpler
8:35:138 hours, 35 minutes, 13 secondsthan this. Executions header. is not going to have any prop because it doesn't need the prop. Uh, and it's
8:35:228 hours, 35 minutes, 22 secondssimply going to have a title executions like that and a description view your workflow execution history and it will
8:35:328 hours, 35 minutes, 32 secondsnot have any of those two props. Uh, so looks like this is now throwing an error because it needs to have one of these.
8:35:418 hours, 35 minutes, 41 secondsSo yes, it's expecting something here.
8:35:468 hours, 35 minutes, 46 secondsSo, can I add maybe huh? Okay, I don't know. I will look into it. But for now, yes, just ignore
8:35:558 hours, 35 minutes, 55 secondsthis uh error right here. So, now let's go ahead and see what's up with pagionation here. So, let's rename it to
8:36:058 hours, 36 minutes, 5 secondsexecutions pagenation. This will be use suspense executions executions
8:36:138 hours, 36 minutes, 13 secondsuse executions params and then replace all of these three instances to use the executions constant. Perfect. Let's go
8:36:228 hours, 36 minutes, 22 secondsahead and rename this to executions container. Let's go ahead and use executions header
8:36:318 hours, 36 minutes, 31 secondsexecutions search which actually doesn't exist and we don't need it. and executions pageionation here.
8:36:408 hours, 36 minutes, 40 secondsThere we go. Perfect. So now we have this.
8:36:468 hours, 36 minutes, 46 secondsLet's go ahead and change these three to be executions.
8:36:538 hours, 36 minutes, 53 secondsLoading executions.
8:36:588 hours, 36 minutes, 58 secondsSo loading executions error loading executions in handle empty. We don't need handle create at all.
8:37:088 hours, 37 minutes, 8 secondsYou haven't created any executions.
8:37:128 hours, 37 minutes, 12 secondsGet started by running your first workflow.
8:37:188 hours, 37 minutes, 18 secondsYou haven't uh I'm not sure if created is like the correct term to use.
8:37:248 hours, 37 minutes, 24 secondsNot sure what else it should be. Yeah, for now let's use it like that. Instead of credential item, it will be execution
8:37:318 hours, 37 minutes, 31 secondsitem. data will be execution and you should be able to import this
8:37:398 hours, 37 minutes, 39 secondsfrom generated Prisma. So import type execution and instead of credential type
8:37:478 hours, 37 minutes, 47 secondslet's have execution status here because we're going to need that. You can remove entity search from the import. You can
8:37:548 hours, 37 minutes, 54 secondsremove use router. You can remove use entity search but keep execution status even though we don't use it yet. So
8:38:028 hours, 38 minutes, 2 secondslet's go back to the execution item here. First of all, remove this remove credential. We cannot remove anything from here.
8:38:128 hours, 38 minutes, 12 secondsAnd uh so what should be the icon here?
8:38:178 hours, 38 minutes, 17 secondsUh let's remove it for now. Let's just focus on rendering. So href should lead to executions. Title should be data uh status.
8:38:288 hours, 38 minutes, 28 secondsand subtitle. Uh, let's go ahead and just make it an empty string for now.
8:38:368 hours, 38 minutes, 36 secondsFor the image here, let's go ahead and just do this. Let's remove on remove and is removing. Okay.
8:38:458 hours, 38 minutes, 45 secondsNow, let's go ahead and create the subtitle and the image. So, in order to
8:38:518 hours, 38 minutes, 51 secondscreate the subtitle, we need to add duration. So, how long did it take to do this? So let's get the completed at and
8:39:008 hours, 39 minutesif it exists and if it does let's call math round new date data completed at
8:39:088 hours, 39 minutes, 8 secondsdot get time minus new date data started
8:39:148 hours, 39 minutes, 14 secondsat dot get time and then divide that by a th00and
8:39:218 hours, 39 minutes, 21 secondsotherwise just set it to no and then const subtitle let's make with a fragment data workflow.
8:39:328 hours, 39 minutes, 32 secondsUh okay. So this will be execution and workflow with id which is a string and the name which is a string.
8:39:438 hours, 39 minutes, 43 secondsSo why am I adding this?
8:39:488 hours, 39 minutes, 48 secondsI basically extended the type of execution to include two properties from its related workflow. How do I know I
8:39:568 hours, 39 minutes, 56 secondscan do that? Well, if you go inside of routers in the executions server and look at get many, you will see that
8:40:048 hours, 40 minutes, 4 secondsthat's exactly what we do. We include workflow with ID and name. So that's
8:40:118 hours, 40 minutes, 11 secondswhat I'm doing here. So that type safety knows that I can access data.workflow.name.
8:40:198 hours, 40 minutes, 19 secondsLet's go ahead and add a bullet point bullet point here. Started. Let's add a space.
8:40:258 hours, 40 minutes, 25 secondsformat distance do now which we have from date FNS data started at
8:40:338 hours, 40 minutes, 33 secondsadd suffix true if duration is not null
8:40:408 hours, 40 minutes, 40 secondsin that case let's go ahead and open a fragment here let's go ahead and render a bullet point
8:40:488 hours, 40 minutes, 48 secondsagain took duration seconds like that.
8:40:558 hours, 40 minutes, 55 secondsSo now we have the subtitle that we can use which will give the user some useful information about how long it took to complete this execution if it completed.
8:41:058 hours, 41 minutes, 5 secondsBut for the image, we're going to need to create a little map here similar to this one. So instead of this, it's going
8:41:138 hours, 41 minutes, 13 secondsto be a function. So constant get status icon. status will be a type of uh not
8:41:228 hours, 41 minutes, 22 secondsstring, it should be a type of execution status.
8:41:288 hours, 41 minutes, 28 secondsLet's go ahead and switch based on the status.
8:41:328 hours, 41 minutes, 32 secondsIn case we get execution status success, let's go ahead and return
8:41:398 hours, 41 minutes, 39 secondscheck circle to icon from lucid react with size five text green 600
8:41:498 hours, 41 minutes, 49 secondslike that. And then let's go ahead and just do the same for the other cases.
8:41:568 hours, 41 minutes, 56 secondsUh so in case it fails, let's go ahead and use X circle icon from Lucid React.
8:42:058 hours, 42 minutes, 5 secondsAnd in case it's still running, let's go ahead and use loader to icon. Just make
8:42:128 hours, 42 minutes, 12 secondssure besides the color and the size, you also give it animate spin.
8:42:188 hours, 42 minutes, 18 secondsAnd in case we cannot find the status for whatever reason, oops, let's go ahead and give it a default
8:42:278 hours, 42 minutes, 27 secondsof clock icon from Lucid React. So just make sure you have added all of these icons.
8:42:358 hours, 42 minutes, 35 secondsYou can now remove image from next image here.
8:42:408 hours, 42 minutes, 40 secondsSo that's it for the execution. Oh yeah, we actually have to render that here.
8:42:458 hours, 42 minutes, 45 secondsUm, so let's do get status icon data status.
8:42:528 hours, 42 minutes, 52 secondsThere we go. And now that will render one of these. Now we can scroll all the way up here.
8:43:018 hours, 43 minutes, 1 secondInstead of executions list, change this to be execution item executions empty.
8:43:108 hours, 43 minutes, 10 secondsThere we go. Great. So the only thing left to fix is the entity header because right now it's expecting either on new
8:43:198 hours, 43 minutes, 19 secondsor new button href but not the option to not have any of them.
8:43:268 hours, 43 minutes, 26 secondsAnd I think the fix is actually quite easy. So instead of entity header you just have to add a question mark here
8:43:358 hours, 43 minutes, 35 secondsand save it. And that's it. Now it works as expected. That was a bug actually.
8:43:428 hours, 43 minutes, 42 secondsGreat. So, we now have all of those components and we can now go back inside of the app folder dashboard rest
8:43:518 hours, 43 minutes, 51 secondsexecutions page.tsx and we can now add all of them. So, let's add executions container here to
8:44:008 hours, 44 minutesencapsulate the whole thing. So from that features executions components
8:44:078 hours, 44 minutes, 7 secondsexecutions then let's go ahead and add whoops executions
8:44:158 hours, 44 minutes, 15 secondserror then let's go ahead and add executions loading
8:44:248 hours, 44 minutes, 24 secondsand finally let's add executions list and once you do that you should no items
8:44:348 hours, 44 minutes, 34 secondsobviously because even though we have run some executions we never kept track of them. So in order to see this happen
8:44:438 hours, 44 minutes, 43 secondswe have to go ahead and revisit our functions.ds.
8:44:498 hours, 44 minutes, 49 secondsSo I'm going to go inside of source inest folder functions.ds.
8:44:568 hours, 44 minutes, 56 secondsSo how do we make sure that every time this execute workflow fails, we create a
8:45:048 hours, 45 minutes, 4 secondsnew execution? Well, we do it by first making sure that every single time this is run, we start by creating an execution.
8:45:158 hours, 45 minutes, 15 secondsSo because of that, we are also going to need to always have an ingest event id event ID. But there is one problem with
8:45:258 hours, 45 minutes, 25 secondsthis. Uh so event ID um I don't like that it can be
8:45:328 hours, 45 minutes, 32 secondsundefined. So I discussed this with ingest theme and they did tell me that
8:45:388 hours, 45 minutes, 38 secondsthis will always be created for um for every workflow. But if you want to here
8:45:478 hours, 45 minutes, 47 secondsis what I did which kind of gave me a piece of mind.
8:45:528 hours, 45 minutes, 52 secondsSo what I did is I went inside of ingest utils.ts. And since I'm using send workflow execution everywhere where I
8:46:018 hours, 46 minutes, 1 secondneed to execute this, I can very easily make sure that every single one of my uh
8:46:078 hours, 46 minutes, 7 secondsinest jobs has an ID by simply using CU ID2. I'm just not sure if we've used
8:46:148 hours, 46 minutes, 14 secondsthis before. I think we did. Create ID from parallel drive CU ID2.
8:46:218 hours, 46 minutes, 21 secondsAnd then very simply you can see it accepts ID property. We can just do
8:46:278 hours, 46 minutes, 27 secondsthis. And now for 100% uh we can say that every single one of our inest executions will have the ingest event ID using event ID.
8:46:428 hours, 46 minutes, 42 secondsSo let's go ahead and also check if there is no injest event ID.
8:46:478 hours, 46 minutes, 47 secondsLet's go ahead and say event ID or workflow ID is missing.
8:46:538 hours, 46 minutes, 53 secondsIf you want to be more specific, obviously you could separate those two errors. And then before we sort our
8:47:008 hours, 47 minutesnodes, let's just do a super simple create execution step. It's an asynchronous function and just return
8:47:098 hours, 47 minutes, 9 secondsPrisma execution create data with workflow ID and inest ID. That's it. We
8:47:168 hours, 47 minutes, 16 secondsdon't have to pass the status because we have a default status of running. So
8:47:248 hours, 47 minutes, 24 secondsagain, this is my kind of architectural choice. I'm not sure if you like this.
8:47:298 hours, 47 minutes, 29 secondsIf you want to, you can make it optional and not have a default, but since I am always going to create the execution
8:47:388 hours, 47 minutes, 38 secondswhen it's literally starting to run, I'm always going to pass running as the default. So in in my say in in my case it makes sense in yours maybe it won't.
8:47:488 hours, 47 minutes, 48 secondsSo yeah just kind of think about this and how you would like this to behave. I like it this way. So now every single
8:47:568 hours, 47 minutes, 56 secondsone of our execution will have this happen. So what do we do if it's successful? Well that's simple. We just
8:48:048 hours, 48 minutes, 4 secondshave to go ahead all the way after this for loop and await step.run Run update
8:48:128 hours, 48 minutes, 12 secondsexecution async return Prisma execution update where
8:48:218 hours, 48 minutes, 21 secondsingest event ID is matching data status execution status which you have to
8:48:308 hours, 48 minutes, 30 secondsimport from generated Prisma dot success
8:48:368 hours, 48 minutes, 36 secondscompleted at new date output will be the context.
8:48:428 hours, 48 minutes, 42 secondsBasically, everything that was created after we ran all the nodes,
8:48:498 hours, 48 minutes, 49 secondsafter all the variables have been added to the context, we're going to store that here.
8:48:568 hours, 48 minutes, 56 secondsAnd I think we can also make it a bit more specific by also adding workflow ID.
8:49:048 hours, 49 minutes, 4 secondsWe don't have to, I think, but we can do it. So this is for the success case. But what if it fails? How do we handle that?
8:49:128 hours, 49 minutes, 12 secondsWell, you can choose how granular you want to be with this. You could go into every single individual executor here
8:49:208 hours, 49 minutes, 20 secondsand then create failures from there. But there is a way that you can catch general failure of this function right
8:49:298 hours, 49 minutes, 29 secondshere. And you do it here. So on failure like this and it's an asynchronous function and you have access to event
8:49:388 hours, 49 minutes, 38 secondsand step let's go ahead and do return prisma execution update where
8:49:478 hours, 49 minutes, 47 secondsingest event id is event data uh and yes now you have to be a little bit specific
8:49:558 hours, 49 minutes, 55 secondsyou have to access event again and then ID And in here, let's go ahead and let's
8:50:048 hours, 50 minutes, 4 secondsadd the status and make it failed. And we have to add some useful error information. So, let's go ahead and
8:50:118 hours, 50 minutes, 11 secondspopulate the error using event data error message and error stack using event data error.stack.
8:50:208 hours, 50 minutes, 20 secondsThere we go.
8:50:238 hours, 50 minutes, 23 secondsSo, we now have that ready. Let's go ahead and close all of these.
8:50:288 hours, 50 minutes, 28 secondsLet's go inside of workflows here and let's try running some workflows. So they can either fail or they can be
8:50:368 hours, 50 minutes, 36 secondssuccessful, whatever you want. So I'm going to execute this one and I'm going to go inside of my executions right here
8:50:438 hours, 50 minutes, 43 secondsand I will refresh. And there we go. I have one which is running. And then it is a success. Amazing. So let's go ahead
8:50:528 hours, 50 minutes, 52 secondsand just fix this. I'm going to go inside of my executions.tsx. tsx and I'm going to go inside of my execution item.
8:51:048 hours, 51 minutes, 4 secondsSo, what I don't like is that the title is just a large
8:51:128 hours, 51 minutes, 12 secondsyelling status. Um, so there is a way to format that very easily. We can create a
8:51:198 hours, 51 minutes, 19 secondsfunction. Let's do it here. const format status. status is a type of
8:51:278 hours, 51 minutes, 27 secondsexecution status and let's return status character at first index plus
8:51:368 hours, 51 minutes, 36 secondsstatus slice everything after the first index to lowerase. So basically we're just going to capitalize it. Maybe you
8:51:448 hours, 51 minutes, 44 secondscan do that with CSS. I'm not sure. I'm just used to doing this. So let's just wrap this. And this should give us There
8:51:528 hours, 51 minutes, 52 secondswe go. That looks better. That gives us like a readable thing. Uh so now let me
8:51:598 hours, 51 minutes, 59 secondsgo ahead and fail this on purpose. So I'm going to open this and I will make sure I have a completely invalid URL
8:52:068 hours, 52 minutes, 6 secondshere. Save. I'm going to save up there and then I'm going to execute that. So
8:52:138 hours, 52 minutes, 13 secondsnow I should have one execution which is a success and then I'm going to have one execution which is a failure. There we
8:52:238 hours, 52 minutes, 23 secondsgo. Both of these are now working and I'm fairly certain that both of this
8:52:298 hours, 52 minutes, 29 secondsshould now also show that yes you can now see a new step create execution.
8:52:378 hours, 52 minutes, 37 secondsUh and let's see finally is there. Okay, it looks like you can't see u uh those
8:52:438 hours, 52 minutes, 43 secondssteps where it created the where it updated the execution to the failed status. That's what I was trying to say.
8:52:518 hours, 52 minutes, 51 secondsBut you can see this step which is update execution when it succeeds. So you should have the that extra step now.
8:52:588 hours, 52 minutes, 58 secondsGreat. So what's not working yet is the ability to look uh at the deeper view of the execution. So let's go ahead and do that and finish our executions.
8:53:118 hours, 53 minutes, 11 secondsSo let's create execution.tsx inside of features executions components
8:53:188 hours, 53 minutes, 18 secondsright here. So um we actually don't have to copy it from credentials. Let's just
8:53:248 hours, 53 minutes, 24 secondscreate a plain new one. Execution dsx. So a single one. Then let's go inside of uh executions right here. And
8:53:338 hours, 53 minutes, 33 secondslet's just copy uh format status and get status icon.
8:53:408 hours, 53 minutes, 40 secondsIn order to do that, we have to add all of these icons from Lucid React. We have
8:53:478 hours, 53 minutes, 47 secondsto add the status type. And I think that's it.
8:53:538 hours, 53 minutes, 53 secondsSo now what else are we going to need here? So uh let's finish the imports while we are here.
8:54:008 hours, 54 minutesWe're going to need date FNS format distance to now.
8:54:058 hours, 54 minutes, 5 secondsWe're going to need link to redirect to the actual workflow. We're going to need use params.
8:54:148 hours, 54 minutes, 14 secondsWe're going to need use state from React.
8:54:208 hours, 54 minutes, 20 secondsWe are going to need button from components UI button. We're going to need the entire card. So card content,
8:54:298 hours, 54 minutes, 29 secondsdescription, header, and title. Then we're going to need the entire collapsible, which I believe is the first time we're using this component.
8:54:378 hours, 54 minutes, 37 secondsSo it's from chassis and UI. And we are going to need use suspense execution from features executions hook use executions.
8:54:488 hours, 54 minutes, 48 secondsSo just alongside use suspense executions, we are using this one to fetch a single execution.
8:54:578 hours, 54 minutes, 57 secondsGreat. So now that we have all the uh imports we need, we are ready to export
8:55:038 hours, 55 minutes, 3 secondscon execution view and let me just check in credentials.
8:55:128 hours, 55 minutes, 12 secondsDid I maybe have a better name for this component? I didn't. It's just credential. Okay, then this will be just execution.
8:55:198 hours, 55 minutes, 19 secondsLet's go ahead and give this a param hook. Let's go ahead and extract
8:55:268 hours, 55 minutes, 26 secondsexecution ID here as string. And in fact, I remember this is the same mistake from before. We can just do execution ID here.
8:55:378 hours, 55 minutes, 37 secondsThat's simpler if you ask me.
8:55:418 hours, 55 minutes, 41 secondsAnd then you don't need params nor execution ID. We're just going to pass this from the server component as a prop. So you can go ahead and remove use params. Perfect.
8:55:518 hours, 55 minutes, 51 secondsThen let's go ahead and fetch this. So use suspense execution using the execution ID and alias data to execution.
8:56:008 hours, 56 minutesThen let's go ahead and create a simple state total show stack trace and set show stack trace. Then let's go ahead
8:56:088 hours, 56 minutes, 8 secondsand go inside of executions.ds and just copy the duration script.
8:56:158 hours, 56 minutes, 15 secondsSo in order to generate a duration instead of data just alias it to execution. So execution completed at and
8:56:238 hours, 56 minutes, 23 secondsthen do math round with execution completed at and start that or fall back to null.
8:56:318 hours, 56 minutes, 31 secondsNow let's go ahead and let's compose this. So we're using card. Let's give it class name shadow none.
8:56:428 hours, 56 minutes, 42 secondsThen let's go ahead and add card header.
8:56:458 hours, 56 minutes, 45 secondsLet's add a div here with a class name flex items center gap 3. Inside let's
8:56:548 hours, 56 minutes, 54 secondsrender get status icon execution dot status.
8:57:018 hours, 57 minutes, 1 secondThen let's go ahead uh inside of this and create a new div. And this div will
8:57:088 hours, 57 minutes, 8 secondshave a card title which will format status
8:57:158 hours, 57 minutes, 15 secondsexecution status and a card description execution for
8:57:238 hours, 57 minutes, 23 secondsexecution.Workflow name. But now we have a type problem here.
8:57:318 hours, 57 minutes, 31 secondsSo let's go ahead and see h how can we fix this? Well, this actually isn't just a type problem. This is an actual
8:57:388 hours, 57 minutes, 38 secondsproblem. Let's go inside of use suspense execution and let's go inside of TRPC executions get one. And besides this
8:57:488 hours, 57 minutes, 48 secondswhere let's go ahead and also add include here.
8:57:558 hours, 57 minutes, 55 secondsSo I'm going to add include workflow ID true not include my
8:58:028 hours, 58 minutes, 2 secondsapologies. Select uh name.
8:58:108 hours, 58 minutes, 10 secondsLet me just um check what I'm doing wrong here.
8:58:158 hours, 58 minutes, 15 secondsUh ek I see it needs to be inside of include
8:58:258 hours, 58 minutes, 25 secondsand then this is inside. There we go.
8:58:318 hours, 58 minutes, 31 secondsSo include workflow but only select ID and name. So the exact same thing I could have just looked down here. The
8:58:388 hours, 58 minutes, 38 secondsexact same thing we're doing in get many. I forgot to do in get one. So that should automatically fix any type errors
8:58:468 hours, 58 minutes, 46 secondshere. We can now access this in card description. Perfect. So that's it for card description.
8:58:548 hours, 58 minutes, 54 secondsNow let's go ahead outside of the card header. Let's open card content.
8:59:008 hours, 59 minutescard content will have a class name of space Y4.
8:59:058 hours, 59 minutes, 5 secondsAnd in here, let's go ahead and let's create a div with a class name grid grid columns to gap 4.
8:59:168 hours, 59 minutes, 16 secondsLet's open a div, a paragraph workflow.
8:59:218 hours, 59 minutes, 21 secondsLet's go ahead and write a class name text small font medium text muted foreground.
8:59:318 hours, 59 minutes, 31 secondsThen let's add a link.
8:59:358 hours, 59 minutes, 35 secondsInside of the link, we're going to refer to execution.workflow.name
8:59:418 hours, 59 minutes, 41 secondsand href will go to workflows execution.workflow
8:59:488 hours, 59 minutes, 48 secondsID. There we go. Make sure you're using back ticks and don't misspell workflows.
8:59:558 hours, 59 minutes, 55 secondsLet's go ahead and add a few more attributes to the link property so it will be prefetch so it's faster. And
9:00:049 hours, 4 secondsclass name text small hover underline and text primary. And when I say let's
9:00:139 hours, 13 secondsuse prefetch so it will be faster, what I mean is that it's going to prefetch it automatically. So even when users if
9:00:219 hours, 21 secondsusers don't click on it, so it is a compromise. It's not just a magical speed up thing. That's why it's optional
9:00:289 hours, 28 secondsto add. So for this exact scenario, it's okay because it's just this single link.
9:00:369 hours, 36 secondsBut you should be careful when adding prefetch to like a generated list of a billion results because that will
9:00:439 hours, 43 secondsdefinitely um populate your network request tab. So be careful about using prefetch.
9:00:519 hours, 51 secondsAll right. So now we have a link and I think at this point it might be easier if we render this so we can actually see what we are doing.
9:01:009 hours, 1 minuteSo, I'm going to go ahead inside of my app folder dashboard rest executions execution ID page.
9:01:099 hours, 1 minute, 9 secondsDSX and let's go ahead and do the following.
9:01:159 hours, 1 minute, 15 secondsIn here I'm going to do div class name padding for
9:01:229 hours, 1 minute, 22 secondson medium devices px10 py 6 hide full
9:01:309 hours, 1 minute, 30 secondsand let's actually just copy what we have inside of credentials for credential ID here since it is
9:01:389 hours, 1 minute, 38 secondsidentical. So just copy it here paste it. There we go.
9:01:469 hours, 1 minute, 46 secondsAnd now in here let's add hydrate client from the RPC
9:01:539 hours, 1 minute, 53 secondsserver. Let's go ahead and add error boundary from react error boundary suspense
9:02:019 hours, 2 minutes, 1 secondfrom react like this. And let's go ahead and add execution view.
9:02:099 hours, 2 minutes, 9 secondsAnd execution ID will be params dot execution.
9:02:149 hours, 2 minutes, 14 secondsOh, we have to await params. Oh, we have it right here. Whoops. So, execution ID.
9:02:219 hours, 2 minutes, 21 secondsGreat. Let's add fallback here.
9:02:259 hours, 2 minutes, 25 secondsUh, I think we can just reuse executions error and
9:02:339 hours, 2 minutes, 33 secondsfall back here. Executions loading. So I'm borrowing these created inside of
9:02:419 hours, 2 minutes, 41 secondsexecutions for the list, right? Because they're the same. I I I'm not creative enough to create different loading and error states for single execution view.
9:02:519 hours, 2 minutes, 51 secondsSo yes, execution view is imported from execution file and loading an error from executions file.
9:03:009 hours, 3 minutesGreat. Uh so some error is happening here because instead of execution view we forgot
9:03:099 hours, 3 minutes, 9 secondsto map this as use client. So yes your execution.tsx should have use client at the top. And
9:03:179 hours, 3 minutes, 17 secondsthere we go. You can now see how this looks. Uh but we are not prefetching this. So let's just make sure we are doing that. So inside of page execution
9:03:259 hours, 3 minutes, 25 secondsID here uh we can just prefetch. Yes.
9:03:319 hours, 3 minutes, 31 secondsprefetch execution execution ID. So make sure you imported prefetch execution from features execution server prefetch.
9:03:419 hours, 3 minutes, 41 secondsThere we go. So now it should leverage the server component and the client component at the same time. Now we can
9:03:489 hours, 3 minutes, 48 secondsfocus exclusively on execution view and actually see what we are developing. So in here we have the status icon, the
9:03:579 hours, 3 minutes, 57 secondsstatus, the name of the workflow, uh with the link to go to that workflow. If you click on it, it should redirect you
9:04:069 hours, 4 minutes, 6 secondsto that workflow. And now we're going to add stack trace down here uh right after we add the duration or when it started.
9:04:189 hours, 4 minutes, 18 secondsSo let's go ahead uh still inside of card content here after we end the link
9:04:259 hours, 4 minutes, 25 secondsand after we end this div open a new div add a paragraph here
9:04:329 hours, 4 minutes, 32 secondsstatus and another paragraph format status execution status.
9:04:419 hours, 4 minutes, 41 secondsThere we go. Let's go ahead and give this paragraph a class name. text small
9:04:489 hours, 4 minutes, 48 secondsfont medium text muted foreground and let's give this one a class name of text small.
9:04:589 hours, 4 minutes, 58 secondsNow let's go ahead and duplicate this.
9:05:029 hours, 5 minutes, 2 secondsThis one will be started and this will be format distance to now
9:05:119 hours, 5 minutes, 11 secondsand use execution dotstarted at and add suffix true.
9:05:219 hours, 5 minutes, 21 secondsSo if you take a look, you will see the status here, when it started, the workflow, right? Just a grid of information for this execution.
9:05:339 hours, 5 minutes, 33 secondsLet's duplicate this again, but this one will be conditional. So if execution completed at exists
9:05:429 hours, 5 minutes, 42 secondsonly then go ahead and render this otherwise render null.
9:05:509 hours, 5 minutes, 50 secondsSo this will be completed and this will be execution.comp completed at for example this one will
9:05:599 hours, 5 minutes, 59 secondsnot have that visible but if I go inside of my successful execution it should have it visible right here
9:06:079 hours, 6 minutes, 7 secondscompleted 17 minutes ago and you can also see how it says that it took 6 seconds to complete so that's a cool uh
9:06:149 hours, 6 minutes, 14 secondsthing to look at in my opinion now let's go ahead and copy this again
9:06:219 hours, 6 minutes, 21 secondsso this one will also be conditional and let's Just check if duration is not
9:06:289 hours, 6 minutes, 28 secondsequal to null then let's go ahead and let's just render the duration
9:06:379 hours, 6 minutes, 37 secondsand add s as in seconds and change this to duration.
9:06:439 hours, 6 minutes, 43 secondsSo this will still be visible simply because you can see uh simply because we selected the success one right. So it
9:06:519 hours, 6 minutes, 51 secondslasted for 6 seconds. But I think in the failed one uh you are not able to see that information.
9:06:599 hours, 6 minutes, 59 secondsAnd now let's go ahead and copy this.
9:07:059 hours, 7 minutes, 5 secondsAnd let's go ahead and do if execution.est event id event ID like this. And simply
9:07:159 hours, 7 minutes, 15 secondsrender execution.estvent ID. So this is for some debugging information if you need it. Here it is.
9:07:239 hours, 7 minutes, 23 secondsEvent ID. Uh but I think uh event ID will always exist. So we can
9:07:319 hours, 7 minutes, 31 secondsjust safely render it. Yeah, event ID is not optional. And now let's check if we have execution.
9:07:419 hours, 7 minutes, 41 secondsIn that case, let's open up a div here with a class name. Margin top of six,
9:07:489 hours, 7 minutes, 48 secondspadding of four, background red 50, dark. Actually, no need for this. Let's just do rounded medium space Y three.
9:08:009 hours, 8 minutesThen open a new div inside. Then open a paragraph, which will uh render the text
9:08:079 hours, 8 minutes, 7 secondserror. Let's give this paragraph a class name of text small font medium text red 900 margin bottom of two.
9:08:199 hours, 8 minutes, 19 secondsBelow that another paragraph with execution error rendered inside and then
9:08:259 hours, 8 minutes, 25 secondsa class name text small text red 800 and
9:08:319 hours, 8 minutes, 31 secondsfont mono like that. Great. But now we're going to go ahead and make it a little bit uh more fun. Let's also give this Okay, it already has rounded MD.
9:08:439 hours, 8 minutes, 43 secondsGreat. So outside of this div, but still inside of the whole error container, I'm
9:08:509 hours, 8 minutes, 50 secondsgoing to check if we have execution dot error stack.
9:08:569 hours, 8 minutes, 56 secondsIf I do, I'm going to render a collapsible and I'm going to use open show stack
9:09:059 hours, 9 minutes, 5 secondstrace on open change set show stack trace. I'm going to add collapsible
9:09:139 hours, 9 minutes, 13 secondstrigger here and I'm going to render a button inside.
9:09:189 hours, 9 minutes, 18 secondsAnd if show stack trace is active, I'm going to render
9:09:269 hours, 9 minutes, 26 secondshide stack trace otherwise show stack trace.
9:09:349 hours, 9 minutes, 34 secondsI'm going to give this button a variant of ghost.
9:09:389 hours, 9 minutes, 38 secondsSize of small class name text red 900 hover bg red 100.
9:09:509 hours, 9 minutes, 50 secondsGreat. Let's give this collapsible trigger as child property.
9:09:569 hours, 9 minutes, 56 secondsOutside of the collapsible trigger, add a collapsible content. And inside
9:10:029 hours, 10 minutes, 2 secondslet's add a pre-tag and let's render execution
9:10:099 hours, 10 minutes, 9 secondsdot error stack. Let's go ahead and give it a class name. Text extra small font
9:10:169 hours, 10 minutes, 16 secondsmono text red 800 overflow auto
9:10:239 hours, 10 minutes, 23 secondsmargin top of two padding of two bg red 100 and rounded.
9:10:319 hours, 10 minutes, 31 secondsThere we go. So let's go ahead and check this out. If I click this, it will show me the error. One thing I don't like is
9:10:399 hours, 10 minutes, 39 secondsthat this is not taking uh enough space in my opinion. So, let me see. Maybe I put it in an invalid container. So, just
9:10:489 hours, 10 minutes, 48 secondsa second here. Uh card we're doing status. So, this is the grid thing.
9:10:569 hours, 10 minutes, 56 secondsPerhaps this should be outside of this. Let me just check if
9:11:049 hours, 11 minutes, 4 secondsI'm correct. If I maybe end this div here and then go to the end and remove one div.
9:11:139 hours, 11 minutes, 13 secondsYes, I think that's what I wanted to do basically. Let me revert this.
9:11:209 hours, 11 minutes, 20 secondsGo ahead and find this div which starts the grid. Right now, this
9:11:289 hours, 11 minutes, 28 secondsdiv ends all the way here, right before the card content. So remove that div
9:11:369 hours, 11 minutes, 36 secondsand instead close it just before you start doing conditional execution error.
9:11:459 hours, 11 minutes, 45 secondsThere we go.
9:11:489 hours, 11 minutes, 48 secondsAnd this is just TypeScript server error.
9:11:539 hours, 11 minutes, 53 secondsThere we go. This looks better now. And you can see more details inside. But now let's go ahead and just do the same
9:12:009 hours, 12 minutesthing for output. So if we have execution output,
9:12:129 hours, 12 minutes, 12 secondslet's add a div with a class name margin top of six padding four background muted
9:12:229 hours, 12 minutes, 22 secondsrounded medium paragraph with the text output.
9:12:289 hours, 12 minutes, 28 secondsLet's go ahead and give this a class name text small font medium margin bottom of
9:12:369 hours, 12 minutes, 36 secondstwo a pre-tag JSON stringify execution
9:12:439 hours, 12 minutes, 43 secondsoutput and then null end two which are properties to make this uh JSON more
9:12:509 hours, 12 minutes, 50 secondsreadable text extra small font mono overflow auto there we
9:12:599 hours, 12 minutes, 59 secondsSo, we can only test this in a successful node. So, I'm going to go back here. Success.
9:13:079 hours, 13 minutes, 7 secondsAnd there we go. Output. My Slack message content. Hello world. Slack.
9:13:139 hours, 13 minutes, 13 secondsAmazing. You can now see the history of your executions.
9:13:189 hours, 13 minutes, 18 secondsI believe that is it. That's all we have to do here. one thing that I like to check but this time I'm not sure I will
9:13:269 hours, 13 minutes, 26 secondsbe able to check simply because there's so many things inside of this executions folder. Uh I think I made a like a mistake with adding these nodes in here.
9:13:389 hours, 13 minutes, 38 secondsI think I should have a separate uh feature called nodes and then just have all of them inside and also keep their
9:13:469 hours, 13 minutes, 46 secondschannels with them because this is kind of uh neither here or there. And what I'm referring to as executions is very
9:13:559 hours, 13 minutes, 55 secondsinconsistent, right? Because I also have triggers for some reason, but they are technically just nodes, right? So it
9:14:039 hours, 14 minutes, 3 secondsmight be like give yourself a challenge and I would improve this structure now at the end of this whole project by
9:14:109 hours, 14 minutes, 10 secondscreating a new feature called nodes and I would keep both triggers and what I
9:14:179 hours, 14 minutes, 17 secondscall executions in that place and then I would no longer refer to them as executions. Executions would just be
9:14:269 hours, 14 minutes, 26 secondswhat we just defined in the schema, right? The result, success or failure, right? And everything else would be
9:14:339 hours, 14 minutes, 33 secondsnodes. And then some nodes will be used as triggers. Yes. And other nodes will be used as executors. So yes, the words
9:14:429 hours, 14 minutes, 42 secondsare kind of confusing. The terminology is not that simple. But yeah, I think most of you feel like something is off
9:14:499 hours, 14 minutes, 49 secondshere by having these nodes in here. And also inside of the executions folder, I have this lib where there's the executor
9:14:579 hours, 14 minutes, 57 secondsregistry. Yeah, there could definitely be a better place for this. Uh it's not you, it's me. I made an invalid architectural decision here. You can
9:15:069 hours, 15 minutes, 6 secondsgive yourself a task to refactor that. I would highly suggest it to get even more familiar with the code, but do it at the end of the tutorial so you don't run
9:15:149 hours, 15 minutes, 14 secondsinto any bugs. Excellent. So, uh let's go ahead and check if we maybe forgot something from our task here.
9:15:259 hours, 15 minutes, 25 secondsWe added the schema, the router, the hooks, page loaders, client entity components, pagionation, loading error
9:15:329 hours, 15 minutes, 32 secondsempty, and we added execution records in inest if they fail, if they succeed, and when they start. So, let's push this to
9:15:399 hours, 15 minutes, 39 secondsGitHub. 27 executions history. And then we're going to see what Code Rabbit has to say. So, new branch, 27 executions history.
9:15:509 hours, 15 minutes, 50 secondsI'm going to go ahead and go inside of my source control. I'm going to stage all of my changes.
9:15:579 hours, 15 minutes, 57 seconds27 execution history commit. Let's go ahead and let's publish branch. Once the branch has been
9:16:069 hours, 16 minutes, 6 secondspublished, we can go ahead create a new pull request here and review it using code rabbit.
9:16:169 hours, 16 minutes, 16 secondsAnd here we have the summary by code rabbit. Release notes. New execution dashboard with workflow run history with
9:16:259 hours, 16 minutes, 25 secondspagionation. Track execution status with visual indicators running successful or failed. View detailed execution
9:16:349 hours, 16 minutes, 34 secondsinformation including timing, duration and output, access error messages and stack traces for debugging failed executions.
9:16:439 hours, 16 minutes, 43 secondsAnd let's go ahead and take a look at the diagram. Uh so what is up here is essentially just the prefetching and how
9:16:509 hours, 16 minutes, 50 secondsit works. We've already seen that a couple of times. So this is the interesting one. When we trigger a workflow using the send workflow
9:17:009 hours, 17 minutesexecution util, we go ahead and immediately create an execution with a default status of running. After we
9:17:089 hours, 17 minutes, 8 secondsprocess all the workflow nodes successfully, we update the execution with a status of success completed at
9:17:169 hours, 17 minutes, 16 secondsand we pass along the output which was transformed through all the nodes. But in case the workflow fails, we update
9:17:249 hours, 17 minutes, 24 secondsexecution to failed with error and error stack. Let's take a look at the comments here. saying here in schema prisma it is
9:17:339 hours, 17 minutes, 33 secondsrecommending adding a composite index of workflow ID and started at with descending sort that's a good idea to
9:17:419 hours, 17 minutes, 41 secondsadd actually uh simply because we are using uh started at order by instead of
9:17:489 hours, 17 minutes, 48 secondsget many query so yes it could definitely improve performance if this uh database record grows large
9:17:579 hours, 17 minutes, 57 secondsin here it is actually not correct we do not need to await prefetch executions.
9:18:039 hours, 18 minutes, 3 secondsThere is nothing that this will uh return. This is a void. So there is no
9:18:109 hours, 18 minutes, 10 secondsneed to await this. Uh prefetching is a relatively new concept to LLM. So a lot of them get this wrong. But no, you do
9:18:189 hours, 18 minutes, 18 secondsnot need to await prefetching in here. I think we already had this comment once uh the first time we
9:18:259 hours, 18 minutes, 25 secondsimplemented it. basically an improvement of our zod rules for page size and page.
9:18:339 hours, 18 minutes, 33 secondsOther than that, we are golden. Let's go ahead and merge this pull request. Very good suggestion to add the index to
9:18:399 hours, 18 minutes, 39 secondsspeed up those queries later on. We can now go back to our main branch. Go ahead and click synchronize changes. And once
9:18:499 hours, 18 minutes, 49 secondsthat is complete, as always, I like to double check by clicking on the graph.
9:18:549 hours, 18 minutes, 54 secondsThere we go. 27. Amazing. Let's go ahead and mark this as completed. Amazing.
9:19:019 hours, 19 minutes, 1 secondAmazing job and see you in the next chapter.
Chapter 12: 28 Encrypting Credentials
9:19:069 hours, 19 minutes, 6 secondsIn the next few chapters, we're going to go over what's left to do in our project before we can deploy. And the way we can
9:19:139 hours, 19 minutes, 13 secondsdo that is by easily searching for the word to-do. And everywhere where we have a to-do is probably something we should
9:19:219 hours, 19 minutes, 21 secondstake a look before deploying. And one that's quite obvious is the credential value which is currently stored as a
9:19:309 hours, 19 minutes, 30 secondsplain text both in the create procedure and in the update procedure right here.
9:19:379 hours, 19 minutes, 37 secondsI still stand by with what I said when we developed this. The best solution to encrypt this would be by using a
9:19:449 hours, 19 minutes, 44 secondsthird-party service such as AWS secrets manager.
9:19:509 hours, 19 minutes, 50 secondsBut there is a thing we can do which isn't a third-party service. It's way simpler than AWS Secrets Manager and it
9:20:009 hours, 20 minutesis marginally better than just storing the value as plain text in your database. That being said, it's also not
9:20:089 hours, 20 minutes, 8 secondsperfect. So that's what I want to do in this chapter. I want to not store plain text strings when it comes to users
9:20:169 hours, 20 minutes, 16 secondscredentials. And then we're going to go ahead and look for other to-dos that we have. And no, I did not forget about
9:20:239 hours, 20 minutes, 23 secondsGoogle and GitHub signin. That's also in our to-dos. So for this chapter, I want to focus on encrypting our credentials.
9:20:339 hours, 20 minutes, 33 secondsThe way we're going to do that is by using cryptor, an npm package. So let's do npm install cryptor.
9:20:439 hours, 20 minutes, 43 secondsLet's go ahead and open package JSON. And you can see the version 6.4.0. You don't have to use the same version.
9:20:529 hours, 20 minutes, 52 secondsI just want to make sure you are aware of my versions.
9:20:569 hours, 20 minutes, 56 secondsLet's go ahead inside of environment file. Let's create encryption section here.
9:21:039 hours, 21 minutes, 3 secondsAnd let's add encryption key.
9:21:079 hours, 21 minutes, 7 secondsNow in here you would use something to generate this key. You can use one password last pass or a million services
9:21:159 hours, 21 minutes, 15 secondson Google when you search for uh encryption key generator for development. You can just put my secure
9:21:229 hours, 21 minutes, 22 secondskey in production. Please do not use that. Please put something secure here because if someone else can guess this
9:21:309 hours, 21 minutes, 30 secondskey, they can easily decrypt all of the values in your database.
9:21:359 hours, 21 minutes, 35 secondsSo once you have encryption key ready, let's go ahead and do the following.
9:21:419 hours, 21 minutes, 41 secondsWe're going to go inside of source lib and in here we're going to create encryption.ds
9:21:529 hours, 21 minutes, 52 secondslike this. Inside of encryption.ds file, let's go ahead and add the following code. import cryptor from cryptor.
9:22:059 hours, 22 minutes, 5 secondsconst cryptor will be new cryptor process. environment and then go ahead
9:22:129 hours, 22 minutes, 12 secondsand use the encryption key that you've added here. I always recommend that you copy and paste from your environment
9:22:199 hours, 22 minutes, 19 secondsvariables so you don't accidentally misspell any words.
9:22:249 hours, 22 minutes, 24 secondsThen let's go ahead and export const encrypt by using a function which accepts a string and simply returns the
9:22:329 hours, 22 minutes, 32 secondsresult of cryptor.enrypt encrypt and pass in the string. And the exact same process is for decrypt.
9:22:429 hours, 22 minutes, 42 secondsLet me just go ahead and fix this.
9:22:459 hours, 22 minutes, 45 secondsDecrypt and decrypt. There we go.
9:22:509 hours, 22 minutes, 50 secondsNow that we have this ready, let's go ahead and find our credentials routers.
9:22:589 hours, 22 minutes, 58 secondsSo inside of our credentials router here, let's find create which is a premium procedure and let's go ahead and
9:23:059 hours, 23 minutes, 5 secondsremove this and let's use encrypt from lib encryption value. There we go.
9:23:149 hours, 23 minutes, 14 secondsSo just make sure you've added encrypt here. And same thing is true in update here.
9:23:219 hours, 23 minutes, 21 secondsSo you can remove this encrypt value. There we go. So that's it for
9:23:299 hours, 23 minutes, 29 secondsstoring into our database. What we have to do now is we have to revisit all the places where we use this value. So that
9:23:379 hours, 23 minutes, 37 secondsis inside of execution components. So let's open entropic executor. Let's go ahead and open Gemini executor and let's go ahead and open open AI executor.
9:23:519 hours, 23 minutes, 51 secondsSo right now all of these will fail because when we store a new credential uh it will let me show you actually how
9:23:599 hours, 23 minutes, 59 secondsit looks like. Yes. So here is the cryptor uh npm package. If you want to encrypt the word bacon, this is what
9:24:089 hours, 24 minutes, 8 secondswill be stored in our database. So this huge hash and then later when we decrypt it, it's going to be back to bacon. So
9:24:169 hours, 24 minutes, 16 secondsif we tried using our API keys right now, they would all fail because they are encrypted in our database. So we now
9:24:249 hours, 24 minutes, 24 secondshave to decrypt them. Let's go ahead and once we find the credentials. So uh it doesn't matter what executor you are in,
9:24:339 hours, 24 minutes, 33 secondsyou have to do all three of them. So let me start with Gemini one. Gemini folder executor.ts.
9:24:399 hours, 24 minutes, 39 secondsAnd here it is. Once we add credential value, let's simply go ahead and do decrypt like this
9:24:489 hours, 24 minutes, 48 secondsand import decrypt from lib encryption.
9:24:539 hours, 24 minutes, 53 secondsThat's it for Gemini. Then let's go inside of open AI folder executor and let's do the same thing here.
9:25:029 hours, 25 minutes, 2 secondsDecrypt from lib encryption. Make sure you've imported it.
9:25:099 hours, 25 minutes, 9 secondsand entropic is left. So again, decrypt like that. Perfect.
9:25:199 hours, 25 minutes, 19 secondsAnd I think that is all we need really.
9:25:239 hours, 25 minutes, 23 secondsSo if I search for to-do now, there we go. Um and yeah, I have this to-do instead of d. So this is completely off
9:25:309 hours, 25 minutes, 30 secondstopic, but if I search for to-do, I have this one which is inside of my HTTP
9:25:369 hours, 25 minutes, 36 secondsrequest dialogue.d tsx inside of source features, executions, components, HTTP request, dialogue. We
9:25:459 hours, 25 minutes, 45 secondsactually don't need to do this. Uh I used to think that this would be a good idea like to validate if users JSON is
9:25:539 hours, 25 minutes, 53 secondscorrect, but that would defeat the purpose of our templating availability.
9:25:589 hours, 25 minutes, 58 secondsIt's the same problem we had with endpoints uh being Z. URL and then it would break if you want to add a variable. So because of that, I'm going
9:26:069 hours, 26 minutes, 6 secondsto remove this. We're not going to solve that because we don't need it. So the only one that's actually left here besides GitHub and Google login is
9:26:149 hours, 26 minutes, 14 secondsretries which is still very useful for us in development at the moment. So let's leave it like this. All right. So what to do now when this is uh done?
9:26:249 hours, 26 minutes, 24 secondsWell, first things first uh your credentials will no longer work because these are now completely broken. So what
9:26:329 hours, 26 minutes, 32 secondsI suggest is you go ahead and delete these And let's go ahead and create a new
9:26:419 hours, 26 minutes, 41 secondscredential this time. And let's go ahead and do npx prisma studio.
9:26:479 hours, 26 minutes, 47 secondsSo this should fire up the studio. And let's go ahead and find the credential here. So no credentials. Great. And now
9:26:569 hours, 26 minutes, 56 secondsI'm going to do encrypted Gemini.
9:27:009 hours, 27 minutesGemini like this. And since I still have it in my environment here, I'm just going to copy it. This is why I told you
9:27:089 hours, 27 minutes, 8 secondsto leave it here because you will still need it in the tutorial. So, let me just add it here. Okay. And I will click create.
9:27:189 hours, 27 minutes, 18 secondsLooks like it was created successfully.
9:27:219 hours, 27 minutes, 21 secondsAnd now inside of Prisma Studio, I'm going to refresh here. And let's see if this is working or not. So what I'm
9:27:309 hours, 27 minutes, 30 secondsexpecting here is to see a completely different value. Let me just do a refresh one more time. It's fetching
9:27:379 hours, 27 minutes, 37 secondsrows in this table. Basically my Google generative AI API key starts with AI. I
9:27:449 hours, 27 minutes, 44 secondsthink that's an accident. Uh but you can see that my value is something completely different. So if someone were
9:27:529 hours, 27 minutes, 52 secondsto break into my database, they would not be able to see users API keys. they would just be able to see this. Again,
9:28:009 hours, 28 minutesthis is not the most perfect solution in the world. There's a lot of things missing like key rotation. And I would recommend solving this by adding a third
9:28:089 hours, 28 minutes, 8 secondsparty library like AWS Secrets Manager, but this is insanely better than just
9:28:159 hours, 28 minutes, 15 secondsstoring plain text inside of here, right? Uh just make sure you're using a good secret and that you never leak it
9:28:239 hours, 28 minutes, 23 secondsbecause this is type of encryption that can be obviously decrypted which makes it very uh well dangerous to access if
9:28:319 hours, 28 minutes, 31 secondssomeone gets ahead of your encryption key.
9:28:369 hours, 28 minutes, 36 secondsGreat. So you can see the value is completely different than what I've entered here. And now uh we have to test if that works. So I'm going to go inside
9:28:439 hours, 28 minutes, 43 secondsof my workloads. I'm going to create a completely new one. And I'm just going to add a manual executor here.
9:28:519 hours, 28 minutes, 51 secondsAnd I'm going to connect it with a Gemini like this. Let me open this my Gemini. Select a credential. Encrypted
9:29:009 hours, 29 minutesGemini. Test. Hello world. Let's click save. Let's click save up there. And let's click execute workflow.
9:29:119 hours, 29 minutes, 11 secondsAnd let's see if this will work. That succeeds. And let's see. This seems to succeed as well. Let's go inside of executions right here.
9:29:209 hours, 29 minutes, 20 secondsUh less than a minute ago. So that should be the one. There we go. Hello world. How can I help you today?
9:29:289 hours, 29 minutes, 28 secondsAmazing. So it is successfully working.
9:29:329 hours, 29 minutes, 32 secondsWe have encrypted our values. Amazing job. So uh since this was super simple change, uh we don't have to really
9:29:419 hours, 29 minutes, 41 secondsreview this code. Instead we can go ahead and focus on the next chapter where we are going to be adding GitHub and Google signin which is also going to
9:29:509 hours, 29 minutes, 50 secondsbe super simple. So just for you know keeping track of everything I'm going to create a new branch 28 encrypting credentials.
9:30:019 hours, 30 minutes, 1 secondThen I'm going to go ahead and add all of my changes here. Let me just expand this so I can expand this. I'm staging
9:30:099 hours, 30 minutes, 9 secondsall of my changes. 28 encrypting credentials.
9:30:149 hours, 30 minutes, 14 secondsI'm going to commit and I'm going to publish the branch.
9:30:189 hours, 30 minutes, 18 secondsAnd as I said, since this one is particularly simple, I'm just going to open a pull request. And I am
9:30:269 hours, 30 minutes, 26 secondsimmediately going to merge it. So, let's go ahead and confirm merge.
9:30:359 hours, 30 minutes, 35 secondsAfter I've done that, I'm going to go ahead and go back inside of my main branch. I'm going to click down here,
9:30:429 hours, 30 minutes, 42 secondssynchronize changes, and I'm going to click okay. I'm going to open my graph and just confirm that I have a new merge
9:30:499 hours, 30 minutes, 49 secondspool 28 encrypting credentials. Great. I believe that marks the end of this chapter and we just improved our app by
9:30:589 hours, 30 minutes, 58 secondsa lot, right? So, it went from being barely uh recommended by anyone security-wise to at least not storing uh
9:31:089 hours, 31 minutes, 8 secondsuh plain text values. But again, please explore AWS Secrets Manager or look at my previous project if you are
9:31:159 hours, 31 minutes, 15 secondsinterested in uh key rotation and how this would look with a very good security system in place. But this is
9:31:239 hours, 31 minutes, 23 secondsvery very good. And again, API keys are not exactly passwords. They can always be rotated. But you should provide your
9:31:309 hours, 31 minutes, 30 secondsusers who are trusting you with their API keys with maximum security that you can afford. Uh, excellent. And we pushed
9:31:379 hours, 31 minutes, 37 secondsto GitHub. Amazing, amazing job. And see you in the next chapter.
Chapter 13: 29 GitHub Google Auth
9:31:449 hours, 31 minutes, 44 secondsIn this chapter, we're going to add GitHub and Google out to our project.
9:31:509 hours, 31 minutes, 50 secondsSo, let's go ahead and make sure we are logged out. This way, we can visit the login screen. There we go. So we have
9:31:579 hours, 31 minutes, 57 secondsbuttons continue with GitHub and Google but right now they're not doing anything. So let's go ahead and open
9:32:059 hours, 32 minutes, 5 secondsbetter out documentation and under their authentication here you can find GitHub.
9:32:129 hours, 32 minutes, 12 secondsSo let's go ahead and first grab our GitHub credentials. So I recommend looking at the documentation because it's really good. It's up to date and it
9:32:219 hours, 32 minutes, 21 secondswill help you navigate through all of the links you have to visit. So go ahead and click GitHub developer portal.
9:32:309 hours, 32 minutes, 30 secondsSo in my case, I have a bunch of OOTH apps here because I create these tokens all the time. But for you, it might be
9:32:379 hours, 32 minutes, 37 secondscompletely empty depending on how often you use this. So to use GitHub signin, you need a client ID and a client
9:32:459 hours, 32 minutes, 45 secondssecret. So let's go ahead instead of OALF apps, click new OL app. And in here, let's go ahead and call this
9:32:529 hours, 32 minutes, 52 secondsNodebase development and set the homepage URL to be this
9:33:009 hours, 33 minuteslocalhost 3000 slab API/ callback GitHub. For production, you should set it to the URL of your
9:33:099 hours, 33 minutes, 9 secondsapplication. Exactly. That is why I'm calling this one nodebase development.
9:33:169 hours, 33 minutes, 16 secondsUh, and let's go ahead and see uh what we need to add. Uh oh my apologies.
9:33:249 hours, 33 minutes, 24 secondsThis is authorization call back URL and this is just localhost 3000 the homepage URL. And now click register application.
9:33:349 hours, 33 minutes, 34 secondsAnd in here you have the client ID. So you can immediately go ahead and add github_client
9:33:409 hours, 33 minutes, 40 secondsID in your environment here. So I'm going to add github_client
9:33:489 hours, 33 minutes, 48 secondsid and then I will prepare github secrets uh I'm I'm not sure what it is client secret. All right client secret.
9:34:019 hours, 34 minutes, 1 secondIn order to generate the client secret we need to click on a button generate a new client secret. And most of the time you will need to do two-actor authentication here.
9:34:119 hours, 34 minutes, 11 secondsAnd once you approve two factor authentication, you can copy this your client secret. Make sure to copy it
9:34:189 hours, 34 minutes, 18 secondsimmediately and add it here. There we go. So now we have GitHub client ID and we have GitHub client secret. Great. Now
9:34:279 hours, 34 minutes, 27 secondslet's go ahead and go inside of our source lib.ds.
9:34:349 hours, 34 minutes, 34 secondsIn here we have email, email, and password. And just below it, let's add social providers.
9:34:419 hours, 34 minutes, 41 secondsLet's add GitHub client ID. And we can go ahead and copy this.
9:34:509 hours, 34 minutes, 50 secondsAnd we can do the same thing for client secret.
9:34:549 hours, 34 minutes, 54 secondsAnd just copy GitHub client secret. I always recommend that you double triple check. Copy from here, paste it here.
9:35:059 hours, 35 minutes, 5 secondsCopy from here, paste it here. because people often miss typos and the errors are very cryptic and then you have no
9:35:139 hours, 35 minutes, 13 secondsidea what's wrong. 99% chance it's a typo. So just make sure you're doing it correctly. Uh great. And now we have to
9:35:229 hours, 35 minutes, 22 secondsadd the function here to sign in with a GitHub provider.
9:35:279 hours, 35 minutes, 27 secondsSo we have to do that in uh well let me see inside of source features out okay
9:35:379 hours, 35 minutes, 37 secondswe have login form and register form let's go inside of a login form first and besides on submit I'm going to do
9:35:469 hours, 35 minutes, 46 secondscon sign in GitHub
9:35:539 hours, 35 minutes, 53 secondslike this asynchronous const data await out client sign in
9:36:019 hours, 36 minutes, 1 secondsocial provider GitHub and I think we don't actually need the
9:36:109 hours, 36 minutes, 10 secondsdata and um I'm not sure if I can also do now on
9:36:179 hours, 36 minutes, 17 secondssuccess here I can great on success router push forward slash hash
9:36:269 hours, 36 minutes, 26 secondson error toast error. Something went wrong.
9:36:359 hours, 36 minutes, 35 secondsAll right, let's go ahead and just copy this and already prepare it for Google as well.
9:36:439 hours, 36 minutes, 43 secondsSign in Google provider Google. That's it. That's all we need. Then we're going to go ahead here in continue with GitHub and give it an on click sign in Google.
9:36:569 hours, 36 minutes, 56 secondsMy apologies. GitHub obviously. And let's do this one.
9:37:059 hours, 37 minutes, 5 secondsSign in Google.
9:37:109 hours, 37 minutes, 10 secondsSo make sure you are on the login screen because that's where we just added this.
9:37:169 hours, 37 minutes, 16 secondsSo, I'm going to click continue with GitHub right here. And there we go. I now have to authorize my GitHub profile.
9:37:259 hours, 37 minutes, 25 secondsAnd let's see once I authorize it if I will be uh logged in. And I am logged in. Amazing. And I think that if I try
9:37:349 hours, 37 minutes, 34 secondsto do new workflow, I have a prompt to upgrade to pro. Amazing. So now I'm going to go ahead and sign out. And if I
9:37:419 hours, 37 minutes, 41 secondstry login with Google, something went wrong because we haven't set that up.
9:37:469 hours, 37 minutes, 46 secondsBut just before we do it, let's make sure that we copy sign in with Google and sign in with GitHub here.
9:37:549 hours, 37 minutes, 54 secondsAnd I don't I'm not sure if you noticed.
9:37:559 hours, 37 minutes, 55 secondsYes, but we just use uh login page to create a new account. So yes, you don't need separate functions. You can just
9:38:049 hours, 38 minutes, 4 secondscopy exactly as they are. So you can have your usual sign in with GitHub and sign in with Google and you can just add
9:38:129 hours, 38 minutes, 12 secondsthem to the register form. It really does not matter. So if it has an account, it's going to log in. If it doesn't, it's going to uh create an
9:38:219 hours, 38 minutes, 21 secondsaccount. So that's kind of a cool feature. You don't have to create anything different for register.
9:38:289 hours, 38 minutes, 28 secondsGreat. So Google is notoriously more complicated uh than this, unfortunately.
9:38:349 hours, 38 minutes, 34 secondsBut let's go ahead and click on Google and let's start by visiting the Google Cloud Console. So inside of here, let me just zoom in.
9:38:449 hours, 38 minutes, 44 secondsI think the best way to start actually is by creating a new project. So click
9:38:519 hours, 38 minutes, 51 secondson your projects right here and click new project and call this nodebase and click create. Then wait a second for
9:38:599 hours, 38 minutes, 59 secondsthis to be created and then select that project. This way you won't add any new
9:39:069 hours, 39 minutes, 6 secondsservices or API keys to your previous projects and it will all be stored in here. And now let's follow what we have
9:39:139 hours, 39 minutes, 13 secondsto do. So we need to go to credentials and authorize the redirect URIs. Okay.
9:39:219 hours, 39 minutes, 21 secondsSo I can find credentials here. Maybe they've improved. Maybe it's easy to do now. And basically this is what happens.
9:39:289 hours, 39 minutes, 28 secondsYou click on credentials and you get ready to do them. And then you see that you also have to do the consent screen.
9:39:359 hours, 39 minutes, 35 secondsSo I guess let's first click on configure consent screen or just go instead of oath consent screen
9:39:429 hours, 39 minutes, 42 secondsand then that takes you here Google out platform not configured. Get started with configuring your applications identity and manage credentials. So then
9:39:519 hours, 39 minutes, 51 secondsyou click get started. This is what I was telling you about. They just it feels like they're in the middle of a refactor and they take you from one
9:39:589 hours, 39 minutes, 58 secondsplace to another. So I I have no idea how I even got here to be honest, but looks like I'm inside of Google out
9:40:059 hours, 40 minutes, 5 secondsplatform overview create branding. All right, let's call this nodebase. Let's go ahead and select an email. Next. For
9:40:129 hours, 40 minutes, 12 secondsthe audience, make sure you select external. So everyone will be able to use this, not just your test users.
9:40:199 hours, 40 minutes, 19 secondsClick on next.
9:40:239 hours, 40 minutes, 23 secondsAdd your email address here. Finish. and I agree to the Google API services. Click continue and click create.
9:40:339 hours, 40 minutes, 33 secondsUh, the reason I don't like Google Cloud is because it's very hard to create tutorials this way, right? I have no idea how I got to this place. I just
9:40:409 hours, 40 minutes, 40 secondsclicked on a bunch of different warnings and pop-ups, right?
9:40:459 hours, 40 minutes, 45 secondsUh, okay. So, I guess we now have branding. That's good. Do not add app logo. If you add app logo, you will need
9:40:539 hours, 40 minutes, 53 secondsto verify your app and that can take a long time. Do not add your app logo.
9:41:009 hours, 41 minutesJust do it exactly like this.
9:41:039 hours, 41 minutes, 3 secondsOkay. So now I'm just figing figuring this out along with you. I think that maybe I can even uh now go back here and
9:41:129 hours, 41 minutes, 12 secondsmaybe if I go inside of APIs and services, I can now go inside of credentials. There we go. I can now go inside of
9:41:199 hours, 41 minutes, 19 secondscredentials. Can I go inside of O consent screen? So OT consent screen takes me here.
9:41:269 hours, 41 minutes, 26 secondsLet me click create O client to see what that is. Okay, I think that might be credential. You see what I'm talking
9:41:339 hours, 41 minutes, 33 secondsabout? It's it's everywhere. I don't know what I'm doing at this point, but let's go ahead and create the O client ID because it sounds like something we
9:41:419 hours, 41 minutes, 41 secondsneed. So web application, let's call it Nodebase for authorized JavaScript origins.
9:41:509 hours, 41 minutes, 50 secondsLet's add localhost and for authorized redirect URLs. There we go. So, we are in the correct place. This is the
9:41:589 hours, 41 minutes, 58 secondscredential it seems. HTTP localhost 3000 API al call back Google.
9:42:059 hours, 42 minutes, 5 secondsSo, make sure you're using the pro proper protocols here. HTTP and click create.
9:42:129 hours, 42 minutes, 12 secondsThere we go. Okay. Uh now we have the client ID. So let's immediately add that to our environment.
9:42:239 hours, 42 minutes, 23 secondsGoogle client ID Google secret. My apologies. Google client secret.
9:42:329 hours, 42 minutes, 32 secondsAnd just below we can find the client secret. Here it is.
9:42:389 hours, 42 minutes, 38 secondsThere we go. And we can click okay. And we're still not done yet. There is one
9:42:459 hours, 42 minutes, 45 secondsthing we also have to do which I almost always forgot forgot to do but this will like create problems in production. Uh I
9:42:539 hours, 42 minutes, 53 secondshave no idea where to find it. Maybe in audience. Here it is. Audience. Go inside of audience and click publish app. Your app will be available to any
9:43:019 hours, 43 minutes, 1 seconduser with a Google account. And click confirm. I have no idea why they don't tell you to how to even do this right
9:43:109 hours, 43 minutes, 10 secondsthere. There is no flow to follow. There are no steps to follow. So, you just kind of have to figure it out. If you don't do it, people will not be able to
9:43:189 hours, 43 minutes, 18 secondsuse your app. I have no idea why they made it like that. I have no idea what's why this Google Out platform thing is now called like that. Everything feels
9:43:269 hours, 43 minutes, 26 secondslike it's h all over the place, but I think we got what we need. Okay. And now what we have to do is we have to go back
9:43:349 hours, 43 minutes, 34 secondsinside of AL. DS lib al.ds. And let's copy this.
9:43:439 hours, 43 minutes, 43 secondsAdd Google.
9:43:459 hours, 43 minutes, 45 secondsAnd make sure to replace these two with Google. And as always, please double check. Copy and paste. So, Google client
9:43:549 hours, 43 minutes, 54 secondsID, Google client secret. There we go.
9:43:599 hours, 43 minutes, 59 secondsLet's go ahead and try it now. So, uh maybe this actually won't work as I need it to work for uh one specific reason.
9:44:129 hours, 44 minutes, 12 secondsSo if I go ahead inside of I have no idea how do I access Prisma 5555. Yes.
9:44:179 hours, 44 minutes, 17 secondsSo it might be a good idea to like reset your entire database whenever you do this simply because um
9:44:269 hours, 44 minutes, 26 secondsI have three users it seems here. So I'm just going to go ahead and delete my uh users for now. Yeah. I think the problem
9:44:349 hours, 44 minutes, 34 secondsis um [snorts] if you have the same email. So I I've hidden my email here. Usually you
9:44:429 hours, 44 minutes, 42 secondswould see the email here. I've hidden it. So because it's it's my personal email. Um if you have the same email for your Google account and GitHub account,
9:44:509 hours, 44 minutes, 50 secondsI think it won't create a completely new account. It will just link to your existing account. So because of that,
9:44:589 hours, 44 minutes, 58 secondstry and either use a completely new Google account when testing Google or just delete all users in your database
9:45:069 hours, 45 minutes, 6 secondsand that should cascade everything. Uh, but I just remembered when I click continue with Google, I think I have an account that's completely unused here.
9:45:139 hours, 45 minutes, 13 secondsSo, let me try. There we go. Tutorial mailing John Doe. Continue and sign into
9:45:209 hours, 45 minutes, 20 secondsNodebase. Looks good so far. No errors being thrown. Let's see. There we go. It works. And if I go inside of my Prisma
9:45:279 hours, 45 minutes, 27 secondsStudio and just refresh, we should now see a new user called John Doe. There it is. And you can see that when I use o
9:45:359 hours, 45 minutes, 35 secondsout it gives me a name to the user but since in our normal register form we don't have name field we just use uh the
9:45:449 hours, 45 minutes, 44 secondsemail and you can see that we also have the icon for the user. Uh amazing amazing job. So that is now working. We
9:45:539 hours, 45 minutes, 53 secondscan now officially log in and register with Google and GitHub. So you can play around with this. Uh both should be working.
9:46:029 hours, 46 minutes, 2 secondsUh let me see what it did. Okay, that seems to work too. Great. Everything works perfect. Uh amazing. So let's see.
9:46:119 hours, 46 minutes, 11 secondsWe added GitHub out. We configured the token and the secret. And we did the same with Google out. And we added functions to the login screens. Uh another very simple pull request here.
9:46:229 hours, 46 minutes, 22 secondsUh the most complex part was figuring out Google ALF as usual. So let's create a new branch 29 GitHub Google ALF. I'm going to go ahead. Whoops.
9:46:359 hours, 46 minutes, 35 secondsAnd stage all of these changes, all three of them. Uh, okay. 29 GitHub
9:46:439 hours, 46 minutes, 43 secondsGoogle AL. Let's commit and let's publish the branch. Again, super simple.
9:46:509 hours, 46 minutes, 50 secondsNo need to uh review in depth really.
9:46:569 hours, 46 minutes, 56 secondsSo, I'm just going to open a pull request, create a pull request, and then I am immediately going to merge it.
9:47:059 hours, 47 minutes, 5 secondsThere we go. And once it is merged, I'm going to go back inside of my main right here, and I'm going to click synchronize changes. And I'm going to click on okay.
9:47:169 hours, 47 minutes, 16 secondsAnd I'm going to open my graph just to confirm that I can see 29 GitHub Google.
9:47:249 hours, 47 minutes, 24 secondsGreat. So that marks the end of this chapter and the only thing we have left is to deploy the app. Amazing amazing job and see you in the next chapter.
Chapter 14: 30 Deployment
9:47:369 hours, 47 minutes, 36 secondsIn this chapter, we're going to finally deploy our project to Versel. Let's start by preparing our code for
9:47:449 hours, 47 minutes, 44 secondsproduction. This will be quite easy as we only need to change a few things.
9:47:509 hours, 47 minutes, 50 secondsWhat I want to do first is do the following.
9:47:549 hours, 47 minutes, 54 secondsLet's go ahead and make sure nothing is running.
9:47:589 hours, 47 minutes, 58 secondsThen let's go ahead inside of functions.ts.
9:48:039 hours, 48 minutes, 3 secondsThis file is located inside of the ingest folder. Source injust functions.
9:48:109 hours, 48 minutes, 10 secondsSo this is the last to-do that we have remove in production. What we can do instead is just process.vironment node environment is equal to production.
9:48:209 hours, 48 minutes, 20 secondsLet's use three. Otherwise, let's use zero. As simple as that.
9:48:279 hours, 48 minutes, 27 secondsNow, let's go ahead and do one more thing.
9:48:319 hours, 48 minutes, 31 secondsLet's go inside of our terminal and let's run npm run build. This is the same command that will be running once
9:48:389 hours, 48 minutes, 38 secondswe add our project to Verscell, but it is way easier to debug if a build fails in your local environment than on
9:48:469 hours, 48 minutes, 46 secondsVersel. That's why I recommend that you don't add anything to Versell until you can get a successful build locally.
9:48:569 hours, 48 minutes, 56 secondsWhy should a build fail and how can it fail?
9:49:019 hours, 49 minutes, 1 secondMost likely because of this step right here, linting and checking validity of types. So basically what this just uh
9:49:099 hours, 49 minutes, 9 secondsdid is is validated my entire code for any type errors. If you have any type errors in your code, this will fail and
9:49:189 hours, 49 minutes, 18 secondsit's perfectly normal. It happened to me a million times. You just have to take a look at the exact error it is telling you and then you have to go ahead and
9:49:279 hours, 49 minutes, 27 secondsfix that. Now, there is a way to skip that part if type errors are not important to you
9:49:359 hours, 49 minutes, 35 secondsby going inside of next.config config and inside of here
9:49:439 hours, 49 minutes, 43 secondsTypeScript ignore build errors and set it to true and save that file. And once you do
9:49:509 hours, 49 minutes, 50 secondsthat, you should see the same result as me. Basically, I would recommend you don't do that. Just go ahead and fix your type errors. You've come this far,
9:49:589 hours, 49 minutes, 58 secondsyou can certainly fix a few bugs here and there. And once you have this successfully running, you are ready to
9:50:059 hours, 50 minutes, 5 secondsdeploy. So one last thing I have to do here is push this changes. So I'm going to do that this time without any pull request. I'm just going to push it
9:50:149 hours, 50 minutes, 14 secondsdirectly to my main branch. So I'm going to stage this file 30 deployment commit and synchronize changes.
9:50:259 hours, 50 minutes, 25 secondsAnd once that is pushed to GitHub, we're going to go ahead and head to versel.com. Go ahead and create an account here.
9:50:349 hours, 50 minutes, 34 secondsClick add new project and it should automatically connect to your GitHub. So here it is
9:50:429 hours, 50 minutes, 42 secondsNodebase. I'm going to click import right here. Uh okay, this is my uh specific situation. So I am deploying
9:50:509 hours, 50 minutes, 50 secondsfrom a private GitHub organization. You are probably not doing that. So very easy fix for me. I just have to switch uh my account here. Just a second.
9:51:019 hours, 51 minutes, 1 secondAll right. I am now in a new account.
9:51:049 hours, 51 minutes, 4 secondsAgain, for you this will not be a problem at all. The problem is I have as you can see an organization. So it's not the private repository is not a problem.
9:51:139 hours, 51 minutes, 13 secondsThe problem is I'm using an a a p a private organization. So that's a premium feature on Versell. But for you
9:51:219 hours, 51 minutes, 21 secondsit will be as simple as this. You will see this page. Everything should be working for you. Uh so make sure next.js
9:51:289 hours, 51 minutes, 28 secondsis select. You don't have to modify anything here except environment variables. And thankfully, there's a super easy way to add all of them at once. Just go ahead and copy everything.
9:51:389 hours, 51 minutes, 38 secondsGo ahead and click paste. That's it.
9:51:429 hours, 51 minutes, 42 secondsSo, obviously, we're going to have to change some of these things. But for now, let's just go ahead and deploy. And the one thing we don't need actually is
9:51:509 hours, 51 minutes, 50 secondsAngro URL. You can get rid of that. As as I said, encryption key should be something different. You should call this my production key. Well, not that.
9:52:009 hours, 52 minutesYou should make it your production key.
9:52:029 hours, 52 minutes, 2 secondsUh there's a million services online that you can use to help you with that.
9:52:069 hours, 52 minutes, 6 secondsUh so in here, it looks like I have some warnings, but that should not break the app. So I'm just going to pause the screen and we're going to see the result of the build.
9:52:159 hours, 52 minutes, 15 secondsAnd here we go. After a successful deployment, you're going to see congratulations. You just deployed a new project. Uh and then to your
9:52:239 hours, 52 minutes, 23 secondsorganization name or to your profile name. So what you should do now is click continue to dashboard right here. And this is important. This is your domain.
9:52:339 hours, 52 minutes, 33 secondsSo don't confuse it with these domains.
9:52:379 hours, 52 minutes, 37 secondsThese are something else. These are specific preview domains for that deployment. But your main uh domain is
9:52:459 hours, 52 minutes, 45 secondsthis one, this shorter one. So you can go ahead and visit it. Feel free to do that. It should work just fine. Uh but it does need a few changes. What you
9:52:549 hours, 52 minutes, 54 secondsshould do is you should copy the URL and then you should go inside of settings.
9:53:009 hours, 53 minutesSo inside of your project, right, click on, let me just refresh here. Whoops.
9:53:069 hours, 53 minutes, 6 secondsClick on nodebase. Go inside of settings. Environment variables right here. And then we have to change some things. So database URL is correct.
9:53:159 hours, 53 minutes, 15 secondsBetter out URL should be changed. So let's go ahead and edit better AL URL to use this and just remove the trailing
9:53:249 hours, 53 minutes, 24 secondsslash and click save. And then you have to do the same thing for all other places. So let's see. I think we have a
9:53:329 hours, 53 minutes, 32 secondspolar success URL is a local host and next public app URL is also local host.
9:53:389 hours, 53 minutes, 38 secondsSo we should change both of them to use our new uh app here. So let's click save here and same thing for next public app
9:53:469 hours, 53 minutes, 46 secondsURL. So, edit that and save it here. There we go. But we're not done just yet. We also have to
9:53:549 hours, 53 minutes, 54 secondsupdate uh our uh keys, client ID, client secret for GitHub, and for Google. And
9:54:039 hours, 54 minutes, 3 secondsobviously, we should also do a new database URL because everything that we just had was for development. So what
9:54:129 hours, 54 minutes, 12 secondsI'm going to do is just show you how to change GitHub and Google client ids so that they work with uh your production.
9:54:229 hours, 54 minutes, 22 secondsSo head back to GitHub developer settings new oalf app nodebase.
9:54:289 hours, 54 minutes, 28 secondsYou can just do nodebase or nodebase prod whatever you prefer. This is now your homepage URL. And for your authorization callback URL I already
9:54:379 hours, 54 minutes, 37 secondsforgot what it is. Let me just go ahead and go to better out authentication GitHub. Here it is. So forward/ API al call back GitHub.
9:54:519 hours, 54 minutes, 51 secondsThere we go. This is authorization callback URL for production. Go ahead and click register application. Copy the
9:54:599 hours, 54 minutes, 59 secondsclient ID. Then go inside of here and find GitHub client ID. Go ahead and change it.
9:55:089 hours, 55 minutes, 8 secondsDid uh let me just check. Did I copy it?
9:55:119 hours, 55 minutes, 11 secondsOkay. GitHub client ID and click save.
9:55:169 hours, 55 minutes, 16 secondsThen you're going to have to generate a new client secret. Copy that
9:55:239 hours, 55 minutes, 23 secondsand find GitHub client secret here and change it and click save. Great. Uh
9:55:319 hours, 55 minutes, 31 secondsso that is GitHub taken care of. Now we have to do the same for Google Cloud Console. Uh maybe it would be a better
9:55:409 hours, 55 minutes, 40 secondsidea to like create a new project. Maybe not. Uh I'm not even sure. But yeah, I think personally I would create a new
9:55:489 hours, 55 minutes, 48 secondsproject. So I'm just going to go and call this Nodebase prod.
9:55:529 hours, 55 minutes, 52 secondsAnd I will click create right here. Once it's been uh created, I'm going to go ahead and select it. And then we're just going to go through the entire process
9:56:019 hours, 56 minutes, 1 secondagain. So let's this time start with oath consent screen that will redirect us to Google out platform. Let's click get started right here nodebase.
9:56:129 hours, 56 minutes, 12 secondsThis next external next let's add email.
9:56:219 hours, 56 minutes, 21 secondsNext I agree continue. Create.
9:56:289 hours, 56 minutes, 28 secondsAnd once it's created, let's go ahead and go inside of clients, I think. Yes, create client.
9:56:399 hours, 56 minutes, 39 secondsLet's go ahead and select web application. Name will be Nodebase.
9:56:469 hours, 56 minutes, 46 secondsWell, it can just be Nodebase. And now for authorized JavaScript origins, well, this will be your real URL now. And for
9:56:559 hours, 56 minutes, 55 secondsauthorized redirects URL, you can visit better out. So this will be forward/ API out callback Google here. There we go.
9:57:069 hours, 57 minutes, 6 secondsLet's go ahead and click create right here. And now you have a new client ID. So go ahead and find Google client ID.
9:57:169 hours, 57 minutes, 16 secondsEdit it. Paste it here. Save it. And you should have the new client secret. So find Google client secret edit.
9:57:279 hours, 57 minutes, 27 secondsUh is it exactly the same or maybe some slight changes I didn't even notice.
9:57:329 hours, 57 minutes, 32 secondsOkay, just make sure you add it here and click save. And you should also edit your encryption key obviously to something secure my secure production
9:57:409 hours, 57 minutes, 40 secondskey. Please don't write this. Just search for uh encryption key generator and paste it here.
9:57:489 hours, 57 minutes, 48 secondsAnd great once you have all of that changed. So we changed better out URL, polar success URL. We can show okay
9:57:569 hours, 57 minutes, 56 secondsdatabase URL should also be changed but fine it can be the same for now. Better out polar success next public app URL,
9:58:049 hours, 58 minutes, 4 secondsGitHub client ID, GitHub client secret, Google client ID, everything was changed for production and you can use either
9:58:129 hours, 58 minutes, 12 secondsthe redeploy button from here and you can go inside of deployments here. Click here, redeploy, and just I can't dismiss the button.
9:58:249 hours, 58 minutes, 24 secondsOkay, just redeploy. Okay, there we go. So, I'm going to pause the
9:58:319 hours, 58 minutes, 31 secondsscreen and after redeployment, you should be able to use GitHub and Google and it should be uh in a much better state for production than what it was.
9:58:429 hours, 58 minutes, 42 secondsAnd here we have the redeployment successfully working. So we can now again visit this application. Uh nothing
9:58:529 hours, 58 minutes, 52 secondsmuch should change now but we should have uh working GitHub and Google. Now you will again see the authorized screen
9:58:599 hours, 58 minutes, 59 secondsnow because we just changed the client tokens right. Uh both Google and GitHub should work here.
9:59:069 hours, 59 minutes, 6 secondsAnd if you want to change your database, I don't know why I didn't show you this because it's super simple to do uh using
9:59:139 hours, 59 minutes, 13 secondsNeon, you have branches. So you can just go ahead inside of your project or you can just create a new project if you
9:59:209 hours, 59 minutes, 20 secondswant to like nodebased production. But they have branches here and you can just go ahead and click create a new branch and maybe call this I don't know
9:59:279 hours, 59 minutes, 27 secondsproduction even though they already have production. We've just been using it here. But you can see they they even prepare development for me. I didn't
9:59:359 hours, 59 minutes, 35 secondseven see that. Uh and the cool thing is you can even expire the branch. You can u choose what data to include. A lot of
9:59:449 hours, 59 minutes, 44 secondsvery cool things. So I think what might be the best solution is to actually use the development branch which we already
9:59:519 hours, 59 minutes, 51 secondshave here and just use the Prisma connection string here,
9:59:589 hours, 59 minutes, 58 secondsthis one, and add it to your project here. And then you will use the development branch when you develop locally and you will have the you
10:00:0710 hours, 7 secondsalready have the correct database URL for production since that is the default one here. Amazing. So that's it. That is the entire project developed. Amazing.
10:00:1810 hours, 18 secondsAmazing job. Thank you so much for going through the entire project with me. I think it's almost 24 hours long.
10:00:2610 hours, 26 secondsAmazing. Amazing job. Thank you so much. Uh and see you in the next one.

Sync to video time
