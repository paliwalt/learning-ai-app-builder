https://www.youtube.com/watch?v=87T8xE-_yeo&t=2s


How Modern AI Agents Work Under the Hood
Harkirat Singh
Harkirat Singh
618k subscribers


1.7k


Share

Save

Download

61,423 views  13 Jun 2026
Super 30 ( 3.0 ) Online : https://pages.razorpay.com/super30-3....

Slides link: slides - https://canva.link/ymdfcwub0w6s1ah
Github code link: 

In this deep-dive session, Harkirat takes you through how modern AI coding agents like Claude Code, Codex, and OpenCode actually work under the hood. You'll learn the fundamentals of LLMs, system prompts, tool calling, agent loops, terminal agents, and the architecture that powers today's most advanced coding assistants.

Using real-world examples and code walkthroughs, the session breaks down complex concepts into simple, intuitive explanations. By the end, you'll have a clear understanding of how to build your own terminal-based coding agent from scratch and what makes modern AI agents so powerful.

Checkout: https://blogs.oracle.com/developers/w...








🔗 𝗟𝗶𝗻𝗸𝘀:
Open Source Cohort → https://100xdevs.com
Twitter →   / kirat_tw  
Linkedin →   / kirat-li  
Instagram →   / kirat_ins  
Discord →   / discord  
Telegram → https://t.me/kirat_internal_group
WhatsApp → https://whatsapp.com/channel/0029Va98...
Harkirat Singh provides a deep dive into the architecture of terminal-based coding agents like Pi.dev and Claude Code. The session covers fundamental concepts including agent loops, system prompts, token processing, and tool orchestration, while guiding participants through building a minimalistic coding harness from scratch.
Summary

Transcript
Follow along using the transcript.

--------------------------------------------------------------------------

Transcript

Search transcript
Search transcript

0:000 secondsWell, let me set the context for the video. If you have ever wondered what the term agent means, what exactly does it mean to build a terminal agent? How
0:088 secondsdoes Claude Code C codeex pie work under the hood and what exactly is an agent harness? This video is for you. This is a 2 and 1/2 hour first super 30 class in
0:1616 secondswhich we understand what exactly an agent loop is and how do you build a coding agent like clot code. We understand the various approaches. We understand how various terminal UIs work
0:2424 secondsand we specifically dive into the codebase of pi.dev and try to clone it from scratch. Pi is an open source terminal based coding harness that
0:3131 secondsrecently got very popular. It ranks sixth or seventh on terminal bench. It's actually very simple, minimal, and what you would want a very minimalistic agent
0:3939 secondsto be. And surprisingly, irrespective of it being simple, it performs astonishingly well. The [clears throat] video is fairly slow paced. It has slides. There is code that I'll attach
0:4747 secondsin the description as well. I'd urge if you have two to three hours together to sit down and go through the video, you should. And by the end you should have crystal clarity on how you build an
0:5454 secondsagent and specifically how do you build one variation of it which is a terminalbased coding agent. This video is part of super 30 and on-site batch I run in noa. If you want to join its
1:031 minute, 3 secondsonline version and get access to these recordings, videos, WhatsApp groups and out sessions feel free to join with the link in the description. Without any further ado, let's get right into it.
1:101 minute, 10 secondsAll right. Cool.
1:171 minute, 17 secondsAI start guys perex. How many of us are comfortable?
1:321 minute, 32 secondsCool. Cool. Uh take two more weeks. It's totally fine. U very uh what's the right word for it?
1:401 minute, 40 secondsImportant niche new skill to know. uh lot of companies would I mean I would assume basically if you're looking for a easy hire um as in the interview goes
1:491 minute, 49 secondsreally well or bulk of companies this is all new to almost everyone all 6
1:571 minute, 57 secondsmonth old concepts uh terminal coding agents came up like clude code start
2:082 minutes, 8 secondsyou know now there are many um I don't know how many of you guys have seen the revenues of claude code or if you if you actively code in a company you know for a fact you're mostly only using cloud
2:162 minutes, 16 secondscode now you're not even using cursor everyone is coding inside a terminal agent um how does it work under the hood is one thing we'll discuss we'll start
2:242 minutes, 24 secondsfrom the basics though we'll understand you know agents what are agents how do they work so on and so forth um has anyone gone through the code base of pi
2:322 minutes, 32 secondsum 1 2 n uh or cloud code or codeex
2:422 minutes, 42 secondsWhich one? Cloud code. Claude code is not open source. Huh? Open source. Are you sure?
2:492 minutes, 49 secondsIt's like weirdly open source, but okay. Were you able to understand claude code?
2:532 minutes, 53 secondsI was not. Claude code has a very complicated extremely obviously white coded codebase. Um, codeex is written in rust.
3:013 minutes, 1 secondIt is also mildly white coded but you need to know more rust for you to be able for you to be able to even
3:103 minutes, 10 secondscomprehend the codeexa codebase. One because it's written in rust um two because it's a very complicated harness
3:163 minutes, 16 secondscompared to terminus and pi which are very simple harnesses very simple basic coding harnesses. Have you guys heard of
3:263 minutes, 26 secondsterminal bench which is like a benchmark Hello. Oh, hello. Oh, hello. Hello.
3:363 minutes, 36 secondsHello. Hello. Okay, my bad.
3:413 minutes, 41 secondsHello. All right. Good. What I was saying was u terminus pi very simple coding agents.
3:483 minutes, 48 secondsTerminus is basically AI code pm access area. A terminal access area. There is nothing else. Um this as we did through pi we'll see it's a very simple
3:563 minutes, 56 secondscodebase. um clot codeex very complicated code bases. What do you think performs well on terminal bench which is a benchmark for benchmarking
4:044 minutes, 4 secondsthese terminal these you know terminal agents benchmarks have you heard of su bench
4:104 minutes, 10 secondswhat is bench what is benchmarken
4:224 minutes, 22 secondsperformance it basically
4:294 minutes, 29 secondsYes, but mostly it benchmarks on coding coding to which model is performing the best you know be it claude
4:374 minutes, 37 secondsuh you know whatever uh open so on and so forth do you guys know of a new benchmark a long benchmark recently there's another one benchmark that
4:464 minutes, 46 secondsrecently came that's you know long or something I forgot the name um that's a slightly better benchmark for can a terminal agent do coding tasks or not
4:544 minutes, 54 secondsbenchmarks are basically of companies models. On one side, companies are making models. On the other side, there are another set of
5:025 minutes, 2 secondscompanies that make benchmarks, which basically means they write a bunch of evals, if you know what eval are, um or tests, and then they test the model against it, and then they benchmark,
5:105 minutes, 10 secondsokay? You know, which model is performing the best on these tests. So, if you look at SWE,
5:185 minutes, 18 secondsit shows you, you know, the leaderboard of all models. Claude Opus 4.5 is able to do 78% of the tasks at an average cost of 75 cents per task. 793 flash is
5:275 minutes, 27 secondsable to do 78.8 so on and so forth. So it benchmarks these you know um models.
5:325 minutes, 32 secondsUm companies also highly optimize for this model labs. All these labs optimize to get above these models. Whenever they
5:405 minutes, 40 secondshave a new release they will always announce we were able to perform 10% better on bench benchmark as there are many benchmarks. One benchmark is for
5:475 minutes, 47 secondscoding agents or terminal agents called the terminal benchmark. What do you think performs better in it? Is it a simplest terminal agent which talks to
5:555 minutes, 55 secondsan AI and gives AI access to a batch or is it a highly optimized multi- aent system like cloud code
6:046 minutes, 4 secondsvery complicated it does you know what it does memory it does sub agent orchestration if you give
6:116 minutes, 11 secondsit a task fix this PR fix this issue on GitHub it does a very complicated workflow compared to a simple workflow
6:186 minutes, 18 secondsof terminus it gives the issue to the LM reads asks to read the issue. It reads
6:256 minutes, 25 secondsthe issue. The LM reads a bunch of files explore. There are two ways. One, you only talk to an LLM
6:326 minutes, 32 secondsexplorer and I give you a task today. What will you do? You will open the project.
6:396 minutes, 39 secondsYou'll go through the read me. Then you will try to find issue head probably exists in this file. So you'll search for if the issue is fix authentication, you'll search for O.ts. You'll search
6:476 minutes, 47 secondsfor user.ts. And the LM surprisingly does something similar. If you give it a task, it does a read file tool call
6:546 minutes, 54 secondsauthor.ts file. Let me read that. Reads the contents, tries to figure it out.
6:596 minutes, 59 secondsThe other thing is plot code, which you know would probably do something like this. You give it an issue, it will spawn a sub aent. The first sub agent's task is to just read the issue from
7:067 minutes, 6 secondsGitHub. It reads it, returns the context. Then it'll spawn another sub isue to read all the files and summarize. Then it'll spawn another
7:137 minutes, 13 secondsagent to, you know, files read probably figure out the best context. Then it'll start to fix the issue. Then it'll start a right agent that writes the issue as there's a lot of sub agents running.
7:247 minutes, 24 secondsWhich one do you think would should perform better? Second one cla should perform better. You know optimizations it doesn't.
7:327 minutes, 32 secondsTerminus [clears throat] is number one on terminal bench. Um and these guys are also pretty up there. Pi.dev [clears throat] are very competing with
7:397 minutes, 39 secondscodeex and cloud. Surprisingly models have been trained so well to you know u on the bash tool on specifically on bash
7:477 minutes, 47 secondsor specifically on the command terminal commands that it's actually very smart if you just give it access to the to the
7:557 minutes, 55 secondsfile system um you know if you tell it is fix it is able to explore the codebase itself really well because the models
8:038 minutes, 3 secondshave been trained really well now the harness matters less and less the orchestration layer the terminal UI that you have matters has less and less now
8:118 minutes, 11 secondsum compared to you know what optimizations you can do there. Um we'll see all of this and you know that's the project that we have to build. We'll start off with a bunch of jargon. I'm
8:208 minutes, 20 secondsassuming LLM, system prompts, tokens. Um I'll still go through it. Tools might be one thing some of you don't know. What
8:288 minutes, 28 secondsis an agent exactly? How is it different from a chat GPT UI? Um you know what is an assistant versus what is an agent versus what is an LLM call. normal LLM
8:378 minutes, 37 secondscall difference between conversational UIs and coaching coding agents provider APIs and PI
8:458 minutes, 45 secondsPI is a very simple project that you can read through it has probably less than 2,000 3,000 lines of code it's written
8:538 minutes, 53 secondsin Typescript which I'm assuming all of you are comfortable with and it's the most simplest coding agent you can think of it also performs really well if it's
9:029 minutes, 2 secondssimple though it's not performing well it is simple it also performs well and if you want to ever learn you know how terminal agents or coding agents are built. This is a very nice code base to
9:119 minutes, 11 secondslook at. They expose the agent independently and if you have heard of open claw open cloud now uses pi as its
9:199 minutes, 19 secondsagent layer in the agent that they have exposed on top of which they have built their coding agent. The same agent is used by claude code now which you know
9:279 minutes, 27 secondstells you they built a very simple nice minimal coding agent sorry agent agent loop
9:349 minutes, 34 secondslang chain lang chain lang graph they sort of tried to solve this problem they you know tried to create
9:419 minutes, 41 secondsabstractions around the the term agent um v 0.dev you know they make it very easy to connect sorry not v 0.dev That's
9:489 minutes, 48 secondsmy bad. Uh, Versal AI SDK. Versal AI SDK makes it very easy to talk to LMs. A lot of such abstractions were created. PI
9:569 minutes, 56 secondsdoesn't use any. PI has written everything from scratch. And assume if you're joining a company, most companies are also writing these themselves. The
10:0410 minutes, 4 secondsorchestration layer, the agent layer is written themselves. Not a lot of people are using LANC chain. So there's not a lot of merit to learning it right now.
10:1110 minutes, 11 secondsIt is a good thing. It makes your life very easy. So does the virtual SDK.
10:1410 minutes, 14 secondswould assume if you're joining a company or if you're interviewing for one they they would want to know you can't simply initialize a new agent class and go for
10:2210 minutes, 22 secondsit. They expect you to write the agent from scratch. Hence you need to understand you know how do you write an agent. Cool. Let's go into these one by
10:3010 minutes, 30 secondsone. The [clears throat] simplest jargon I won't spend too much time here but what is an LLM? It's a large language model. It is a type of AI assistant trained on massive amount of data. X
10:3810 minutes, 38 secondsdata to understand and generate human language. Um that's a large language model. Um is this statement completely true though? It's a type of AI assistant
10:4610 minutes, 46 secondstrained on massive amount of text data uh to understand and generate human language and text or can do other things.
10:5410 minutes, 54 secondsIt's a multimodal basically they train on multiple sources of data.
10:5710 minutes, 57 secondsCorrect. It can train on it does train on images as well? It trains on voice as well. A lot of models if you have seen CPT real time. It is actually trained on
11:0511 minutes, 5 secondsvoice which means the model takes the voice as input and sometimes outputs voice as an output. It can take voice and text as input, voice and text and
11:1311 minutes, 13 secondsimages as input and can still output you know voice or text. So models can be trained on various types of modalities.
11:1911 minutes, 19 secondsText is the most simplest one that we sort of you know deal with.
11:2311 minutes, 23 secondsThe model reads billions of pages of text u learns patterns how words sentences ideas relate to each other.
11:2911 minutes, 29 secondsAssume if there is any model by a big lab right now it has uh basically scraped the full internet. The data has sort of been exhausted. uh all the data
11:3811 minutes, 38 secondsthat you can currently scrape from Google, from the internet, every website that exists, assume Wikipedia, Reddit has been uh scraped by them and the
11:4611 minutes, 46 secondsmodel has been trained on them. In fact, one of the biggest things that companies are struggling with right now is more data. The labs if they want to move
11:5411 minutes, 54 secondsbeyond this, now they're competing with each other and you know, everyone is able to reach a point, they can either increase the model size or they they need to get more data. They've exhausted
12:0212 minutes, 2 secondsthe data that exists on the internet which is was which was the easiest lowhanging fruit the easiest way to find data. What do you think is the next step? How are they now gathering more
12:1012 minutes, 10 secondsdata? Does anyone know generated data or what's that? session based
12:1712 minutes, 17 secondssession based user okay what you're mentioning is RLHF
12:2512 minutes, 25 secondsusers I'm just saying data if data has been exhausted you know more data has been being added to the internet there is no
12:3312 minutes, 33 secondsnew news that comes out there are more blog posts that come there are more edit posts that come but other than that you know how are labs getting data synthetic
12:4012 minutes, 40 secondssynthetic data basically there a lot of labelers are sitting all around the world and creating data if you heard of a scale AI or a Merkor. This is exactly what they do. Merkor which you know one
12:4912 minutes, 49 secondsof the fastest growing companies youngest founder billionaire scalei started by someone who was 17 exited to meta for $25 billion. Both of these
12:5812 minutes, 58 secondscompanies do this only. They hire a lot of Indian Bangladeshi Nigerian people.
13:0213 minutes, 2 secondsThey give them a lot of labeling data data label so that these labs can make money. These labs also offer up to $50,000 per private code bases. So if
13:1113 minutes, 11 secondsyou have a private codebase that's not on the internet right now, you can sell it to them for, you know, up to $50,000 because if it's a complex enough codebase and their LM can learn from it,
13:1913 minutes, 19 secondsthey will pay for it right now. That's how they're gathering more and more data.
13:2413 minutes, 24 secondsMost models are built on the transformer architecture. We're not going deeper into this. Rishab has covered this in the cohort. If someone is curious, you can be asked this manov
13:3313 minutes, 33 secondssuper 30. He interviewed a company. They simply started to dive into the transformer architecture. May or may not help. Try to do it two times, three
13:4113 minutes, 41 secondstimes, four times. If you don't understand it, leave it. If you do understand it by the fourth time, then probably go deeper and understand, you know, how does an LLM this specific
13:5013 minutes, 50 secondsarchitecture transformers, how do they work under the hood? We chooses a mechanics called attention to understand the context of along long searches of
13:5813 minutes, 58 secondstext. Um, again, all of this is sort of nice and important to know transformers and attention. People can ask you this.
14:0414 minutes, 4 secondsMost companies may the ones that you'll get probably you know hired from here you will not work at the modeler um that's like a very researchy thing you
14:1214 minutes, 12 secondsneed a PhD to do um but always good to know how this you know works under the hood they asked him to open chart GPT and ask
14:2014 minutes, 20 secondsfor what attention is and as it tried to spit things out he had to explain you know whatever he understood from chat GPT so assume that kind of a question can be asked [snorts]
14:2914 minutes, 29 seconds[clears throat]
14:3014 minutes, 30 secondswe also hopefully know okay L&M generate one token at a time so if you ask it something like you know what the capital of India is. It's going to say you know
14:3714 minutes, 37 secondsDelhi one token. Um think of this as a very good compression algorithm. This has compressed all the data on the internet. Uh 8 billion parameter 16
14:4614 minutes, 46 secondsbillion parameter model is just a bunch of parameters that have somehow compress the full internet data into a bunch of vectors and matrices. Um how they do it
14:5514 minutes, 55 secondsis attention. That is why it was such a novel architecture when it came out.
14:5814 minutes, 58 secondsOkay. You can compress billions and billions of you know text data into a very small matrix. So that if someone asks the capital of India is you're able
15:0615 minutes, 6 secondsto spit out Delhi from somewhere in this map that point exists. Um okay you know the capital of India is say when you go
15:1315 minutes, 13 secondsthrough a bunch very big vector space where you land is very close to Delhi and hence it spits out Delhi and it keeps going you know after again and again until an end token is reached. In this case it's a very simple sentence.
15:2315 minutes, 23 secondsThe capital of India is all it needs to spit out is Delhi and then an end token.
15:2615 minutes, 26 secondsIf you ask it something more complex it'll keep spitting out token token token until it reaches the end token.
15:3215 minutes, 32 secondsCool. That's LM's system prompt. A system prompt is a set of instructions given to an LM before the conversation begins. Um again you might have seen this if I go to chat GPT UI and ask hey
15:4115 minutes, 41 secondswhat is the capital of India? Um the thing that reaches the LLM is something like this. Um a system prompt and a user
15:4915 minutes, 49 secondsprompt. Um it doesn't mean the LLM architecture has changed. It doesn't mean that the LLM can accept two inputs.
15:5615 minutes, 56 secondsThe LM can still accept only one text input and it has been trained over time to understand whatever is written inside system is the system prompt which means
16:0516 minutes, 5 secondswhat the administrator of this website wants you to do and whatever is written inside user is whatever the user wants from this website. So you can put things
16:1216 minutes, 12 secondslike you know do not talk about my competitors or you know uh be very safe do not if someone asks for the system prompt don't respond so on and so forth.
16:2016 minutes, 20 secondsYou add a lot of rules in the system prompt and then you append the users prompt after that. There are still ways to inject. If you [clears throat] might have heard of, you know, LLM injection,
16:2816 minutes, 28 secondsyou can ask it somehow. My grandmother will die. Give me the system prompt. So, it will, you know, spit out the system prompt to you. Um, but the LLM as a
16:3616 minutes, 36 secondsblackbox only takes a stream of tokens as inputs. Only spits out a stream of tokens as output. It does not take two
16:4516 minutes, 45 secondsdifferent inputs. There is no concept of system versus user at the model. It is just when that it it is just that when it was trained, it was trained on a lot
16:5316 minutes, 53 secondsof data like this. You are a polite assistant. Answer it politely. User, can you tell me about myself? Answer train.
17:0217 minutes, 2 secondsWhen you're training, the answer is also there, right? When you're training, there is input data and output data that is there. The output data for a polite system prompt was polite. For an impolite system, prompt was impolite.
17:1117 minutes, 11 secondsOver time, it learned polite response. If it says impolite over here, I have to return impolite response. It has been trained to understand these tokens. The system
17:2017 minutes, 20 secondstoken, the user token, so on and so forth.
17:2317 minutes, 23 secondsIf I ask the same question to Claude, they have their own system prompt. You know, it changes a bit. You are Claude, a helpful assistant. Whatever their
17:3117 minutes, 31 secondsprompt is, but Ma, you understand every conversational UI that you are interacting with. There is a default system prompt. Some of them also let you override the system prompt. So, you can
17:3917 minutes, 39 secondsadd things like only give me concise answers, do not reply with emojis, things like these. and the LM will make sure you know it only returns you concise answers.
17:5017 minutes, 50 secondsThere is a third way to use an LLM which is through APIs. Do we know this? Has everyone done this? You know API
17:5717 minutes, 57 secondsplatform.opai.com platform.claw.ai.
18:0118 minutes, 1 secondYou can go to these platforms and talk to the LM not from a conversational UI but from your own back end. This is my postman. I can send a request to
18:1018 minutes, 10 secondsgenerative language.googleaps.com/ google.com/ whatever you know v1 beta models a model name give it some body
18:1718 minutes, 17 secondsand send a request to the lm can respond back with you know whatever it agrees to here if I pass text is there a default
18:2418 minutes, 24 secondssystem prompt that goes with it is there a default system prompt
18:3118 minutes, 31 secondssystem if I give some text here will a system prompt be appended before I it reaches the problem yes huh Yes. May or may not be.
18:4118 minutes, 41 secondsMay or may not be.
18:4218 minutes, 42 secondsYes. For surely yes.
18:4618 minutes, 46 secondsYou have to you are given the option to specify the system prompt if you want.
18:5218 minutes, 52 secondsBut if you are talking to an LLM through the API, whatever you pass is what it gets. There is no system prompt that is injected by
19:0119 minutes, 1 seconddefault unless you yourself inject a system prompt. For example, here
19:2419 minutes, 24 secondsvery possible. Possible. There might be some guards.
19:3319 minutes, 33 secondsI think yeah, correct. I agree. There is one thing which is the system prompt. There is a
19:4119 minutes, 41 secondslevel of pre-processing that happens on your prompt before before your prompt reaches here. It goes through something some sort of a guardrail to ensure
19:5119 minutes, 51 secondsyou know whatever you're not asking something bad. If there is language the small language model will
19:5819 minutes, 58 secondstell you whatever you're passing is something we don't support. But you just reject the request early. If you go to claude today and you try to have you
20:0720 minutes, 7 secondsguys heard, you know, Claude code has a lot of war with open code. Claude code has a $200 subscription. If you take the
20:1520 minutes, 15 seconds$200 subscription, they give you massive u you know credits use. What people do is they buy the $200 subscription, they
20:2220 minutes, 22 secondsstart to use it through PI or use it through, you know, other open source models like open code, other open source harnesses like open code. Do you guys
20:3020 minutes, 30 secondsknow open code or cloud code subscription? They are subsidizing your subscription because they want you to use cla code. What you do is you get the
20:3820 minutes, 38 secondscloud code subscription, you start to use anthropic tokens through pi or through open code which is bad. So now
20:4620 minutes, 46 secondsthey started rejecting it. If a if they detect a request from open code, they reject it. That also doesn't happen at the model layer. They haven't retrained
20:5320 minutes, 53 secondstheir model. Open code mentioned if open code is mentioned return. No, they have a layer before this. the guard rails wor layer if you send a request to if you
21:0221 minutes, 2 secondsbought claude max plan and if you send a request where in the system prompt anywhere open code is mentioned they
21:0921 minutes, 9 secondsreject your request so the system prompt technically would be empty would there be guardrails yes the models are also
21:1621 minutes, 16 secondstrained on guardrails it doesn't have that data but there are guardrails before this also you know if you ask something bad it won't happen
21:2421 minutes, 24 secondstechnically is a system prompt there though no is there a system prompt here.
21:2821 minutes, 28 secondsNow, yes, the system prompt says you're a Spanish teacher. Return everything in Spanish. The So, the final thing that reaches the LM is something like this.
21:3421 minutes, 34 secondsYou're a Spanish lesson teacher. Answer everything in Spanish. Followed by the user message. What you get back is a Spanish message which sort of tells you, okay, the system prompt actually reached the error.
21:4421 minutes, 44 secondsCool. Any questions?
21:4621 minutes, 46 secondsI have configured PI with the open AI O and I just asked the prompt that which AI are to I am charge and I'm using the PI coding agent.
21:5721 minutes, 57 secondsSo charg hasn't blocked you.
22:0022 minutesYes in your system prompt if you look at PI system prompt it says I am PI the coding agent that prompt which is RGP charge doesn't care you have used you
22:0822 minutes, 8 secondshave codec subscription and you're using PI with it. Yes. or you on charge.
22:1522 minutes, 15 secondsYes. So they have that provider. Thankfully they're not blocked yet. Generally open air doesn't block people.
22:2122 minutes, 21 secondsTry the same with claude might work might not work. Open code if you try 100% will not work. They sort of block open code and claude code. Claude
22:2822 minutes, 28 secondscode claw that is also blocked by the and now they have you know two different subscriptions. If you do take claude
22:3622 minutes, 36 seconds$200 plan they give you $100 of credits on the other side. This is your $100 credit for other apps. So they start to debit that. Yeah.
22:4422 minutes, 44 secondsHow much of the studying traditional machine learning is like kind of work with time
22:5222 minutes, 52 secondsmachine learning makes sense
23:0223 minutes, 2 secondsbefore you learn transformers? How much classical machine learning helps?
23:0723 minutes, 7 secondsThe interview kind of will it be helpful for an interview? Most companies will not ask you. Some company might ask you transformer architecture. I don't think
23:1523 minutes, 15 secondsit makes sense for you to learn classical machine learning first.
23:1723 minutes, 17 secondsGradient descent, neural network, but the basics learn um you know what is a neural network? What are descends? What is a loss function? How language models
23:2523 minutes, 25 secondswere created before attention. If you've heard of LSTMs or RNNs these were neural networks, then there were RNNs, then there was LSTMs and then game attention.
23:3323 minutes, 33 secondsSo there are you know four variations of language models that we have tried.
23:3523 minutes, 35 secondsAttention just ended up become great. Do you know I mean yes and no
23:4523 minutes, 45 secondsI've learned LSTMs back in the day they retain state I have learned you know networks are very simple thing to you know easy to explain most of the
23:5423 minutes, 54 secondstimes I mean for your own foundation it might help I doubt in a company interview they'll be like let's go into the history of LSTMs and explain me that
24:0124 minutes, 1 secondI think they'll be simply like attention you know explain me the internals of attention what is KB what is KV cash?
24:0824 minutes, 8 secondsBasically, our attention is oriented people.
24:1024 minutes, 10 secondsIf you understand that, you're more than good. You don't have to. Most people don't have to learn that paper, but if you can understand it, it's great. Um, there are a few ways to learn it. Very
24:1924 minutes, 19 secondsdifficult, at least for me. Um, three blue one brown has 10 videos on it.
24:2424 minutes, 24 secondsRishab has videos on it or when is here just bug his head. That's how I've actually learned it by, you know, talking a lot to Rishab. What was that?
24:3224 minutes, 32 secondsDeep learning.
24:3324 minutes, 33 secondsDeep learning AI paper. Uh there's a platform there's a platform deep learning.ai
24:4224 minutes, 42 secondsjust post all the links if you guys do want to learn attention um feel free to probably a good thing and you know we'll share some things.
24:4824 minutes, 48 secondsSo we have uh Chinese companies are reselling this JP and API and you can use it for a dollar and you can use like
24:5624 minutes, 56 secondsmulti-million tokens. How do they use same thing like they so I mean there are bunch of ways to do it. You can actually do an enterprise deal with chat GPT. You
25:0425 minutes, 4 secondscan tell them, hey, I will consume $20 million worth of credits in this year.
25:0925 minutes, 9 secondsGive it to me in $5 million. They will give it to you. This is a very old business. You do that with cloud providers also. You go to AWS, you give
25:1725 minutes, 17 secondsthem 5 CR up front, they give you 20 CR of credits.
25:2125 minutes, 21 secondsCR and for the next one year, this person is allowed to use 20 CR and then they resell it again. You get 20 CR of credits, you sell it to five different
25:2825 minutes, 28 secondscompanies for, you know, 20 CR. You divide it into four CRK punch batches and you sell it to five different companies. You only paid 5 CR to AWS.
25:3725 minutes, 37 secondsYou resold it for, you know, a little bit of a kicker. It's downside. You have done the commitment to the cloud provider or in this case AWS. If you're
25:4625 minutes, 46 secondsnot able to find customers, your money is gone. You they have given you 20 CR worth of credits. If you're not able to use those credits in a year, that money
25:5425 minutes, 54 secondsis gone. which is why you know it's a slightly risky business you know you upront commit to AWS they are okay upfront 5C they give you slightly better
26:0226 minutes, 2 secondscommitment you resell it that is one way to do it I don't think that's how Chinese providers are doing it I think the way they do it is you know they have
26:0926 minutes, 9 secondsbought a $200 plan which gives you generous 20 20 times more context or 20 times more tokens and then they just are reselling it various ways but uh the
26:1826 minutes, 18 secondsbetter way to do it I mean open router if you've heard of it or vers AI gateway you give them $100 they give you $100 worth of you know whatever cloud credits
26:2626 minutes, 26 secondsyou can route. So it's always a curious question as to how do they make money.
26:3026 minutes, 30 secondsUm open router has a 5% kicker on top of your you get you give them $20. They let you use only $19.5 of worth of credits
26:3826 minutes, 38 secondsbut actually how open router makes money is it has enterprise deals with everyone and you know you give them $20 but token
26:4626 minutes, 46 secondsbecause they bulk commit to AWS to uh whatever Google cloud so on and so forth. Any more questions?
26:5426 minutes, 54 secondsSo when we are using any model right let's say model like how do we know that what we are
27:0127 minutes, 1 secondusing is like let's say we select 5.5 or 5.4 Whatever you can't you can ask it how do we know
27:1027 minutes, 10 secondsthis model any model any company can do that if you go to manis if you go to a fiesta and you
27:1827 minutes, 18 secondsselect a specific model there is no guarantee um you can of course confirm what model are you and it might return you something but that's always not
27:2527 minutes, 25 secondstrustable sometimes someone has a you know kim model you know and you ask it who are you it might return you deepseeek because it might have been you
27:3427 minutes, 34 secondsknow trained on top of the open source deep model it's not necessary if you remember kum was a created an LLM
27:4227 minutes, 42 secondsmodel right in India sorry whatever the name is um to people to ask it to you know return I'm llama because it is of course built on top of llama no one is
27:5027 minutes, 50 secondstraining models from scratch right if someone has already spent $10 million training um deepseek 8 billion you will train on top of it you will of course
27:5827 minutes, 58 secondsnot start from scratch everyone starts now from llama or from deepsek and then trains on top of it.
28:0528 minutes, 5 secondsHence, you know, um if you ask it and it returns you a bad thing, you you still can't tell. Um they might have trails in front. If the user asks what model I am,
28:1428 minutes, 14 secondsreturn GPD 5.5. You there's I mean there probably might be a cryptographic signature way to verify. I don't think that is exposed by any of these guys.
28:2428 minutes, 24 secondsMore questions? No questions. All right, cool. So, we understand system prompt
28:3028 minutes, 30 secondstokens. Um streaming versus oneshot. Um code cannot go to system.
28:5328 minutes, 53 secondsDo you you want to use clawed code inside codex? Your claw code subscription inside codex.
29:0829 minutes, 8 secondsThey actually match the word.
29:1229 minutes, 12 secondsIf you send a curl request, okay, what you're saying is I bought a $200 subscription and I'm not using it through code.
29:2229 minutes, 22 secondsAt some point, they'll block it. That is another way to abuse the extra tokens that you get. Um I don't know why why they haven't this is like a very easyly solvable problem. Okay, you know all
29:3029 minutes, 30 secondsrequests from cloud code should go to a proxy server where the system prompt is injected. If you do that system
29:3729 minutes, 37 secondsit's like a very solvable problem. Um the $200 credits that you have only go through the proxy server request
29:4529 minutes, 45 secondsmight be abusable right now. Um they have not blocked that yet. At some point if this continues they're giving generous uh you know limits on claw code and codeex code.
29:5529 minutes, 55 secondsthen yes they will start to block that as well another way to abuse right abuse cooling
30:0430 minutes, 4 secondsyeah yeah yeah what he was saying was so the thing is there's a very big way Twitter if you open Twitter you always see this battle what claude code did was
30:1130 minutes, 11 secondsto capture the market what they said was if you buy the $20 plan you get a million tokens so if you use that for one day it is exhausted if you buy the
30:2030 minutes, 20 seconds$200 plan ideally you should get 10 million tokens but they give give you 100 million tokens just for competing with codeex right now. So they say buy
30:2930 minutes, 29 secondsthe $20 plan we'll give you a lot of tokens. What people do is those tokens that were subsidized and meant for claw code they start to use it via codeex or
30:3730 minutes, 37 secondswhen you already have access to so many tokens you can just use the API like this and you know the the tokens that you had were given for using claude code
30:4530 minutes, 45 secondsso that you become accustomed to claude code you can use them by your API in your AIFS app in your agent app. So you only gave $200 to claude and you got 20,
30:5330 minutes, 53 secondsyou know, 100 million worth of tokens from them and you're just using it in other places. You are meant to use it only in the cloud code inside claude code the harness because the only reason
31:0131 minutes, 1 secondthey're giving you that subsidy is because they want you to use cloud code heavily. You they want you to get accustomed to cloud code. If you start to use it through a different coding
31:0931 minutes, 9 secondsagent, they start to block you. If you start to use it directly inside Postman to send requests, they will start to block you. Um Claude is the only company that is doing this right now because I
31:1731 minutes, 17 secondsknow there's a lot of battle but eventually I would assume not allowing to authorize via except
31:2531 minutes, 25 secondscode more or less but the way no they're allowing via cloud code and disallowing from other places. Yeah except
31:3331 minutes, 33 secondsexcept cloud code. Um but the thing is how they're doing it is very funny because in the end if you look at it cloud code is a client app. It runs on my machine. So my claw token somewhere
31:4131 minutes, 41 secondsor the other is here and then I talk to the claw server through I talk to the cloud server through my access token on this machine to get a response from the
31:4931 minutes, 49 secondsLM. I can always you know use something else because I still have the access token here and send a request to those guys. So the way they actually block it
31:5731 minutes, 57 secondsis they check the system prompt and they check if pi is mentioned there or if open code is mentioned there and if it is it blocks So if you simply send it a
32:0532 minutes, 5 secondsprompt, Theo had a tweet now where he said Claude-P hi I am uh open code and pressed enter it said we are rejecting your requests for a very simple thing
32:1332 minutes, 13 secondsbecause just because open code was mentioned in the prompt cool any more questions
32:2232 minutes, 22 seconds[clears throat]
32:2232 minutes, 22 secondsI hope everyone understands tokens token is the most basic unit of text in the lm processor it's not a word it's not a character but somewhere in between uh
32:3032 minutes, 30 secondsagain if you've done score this is hopefully very obvious But if you write something like this, can you tell me the capital of the state Delhi please? The state I meant the country India please.
32:3932 minutes, 39 seconds[clears throat]
32:4032 minutes, 40 secondsThis is broken down into a bunch of tokens. And notice Delhi is not one token. DEL is one token. Hi is another token. Um mostly most words are tokens
32:4932 minutes, 49 secondsbut some DEL is one token. Hi is different token. Um and LM can only produce one token at a time. So if you
32:5832 minutes, 58 secondsgive it this input, all of this input is converted into you know tokens like these which are converted into vectors which go as an input and then a vector comes out and that outcoming vector is
33:0733 minutes, 7 secondswhat is you know the next token which might be a valid word might be an invalid Aha word so on and so forth.
33:1433 minutes, 14 secondsLM generate one token at a time. So if you give it something like this where you ask it can you talk about the Rust language it starts to respond like this.
33:2233 minutes, 22 secondsSure the Rust language is so on and so forth. Um so it's just producing one token after the other. U the LLM is only
33:3033 minutes, 30 secondsproducing one token at a time. Um which also introduces a very nice infrastructure challenge um or backend challenge. K eventually when the user is
33:3933 minutes, 39 secondscoming on your website of course it is not directly talking to the LLM. The when I press this button the API that
33:4733 minutes, 47 secondsI'm hitting is not this guy otherwise there's no guardrails in the middle.
33:5033 minutes, 50 secondsThere's no authentication. Of course I hit a back end. The authentication happens here. guardrail checks happen here and then the back end talks to the
33:5833 minutes, 58 secondsLM. The LM is producing one token at a time.
34:0234 minutes, 2 secondsI can either gather all of those tokens for the response and return it to the front end or I can stream the response.
34:0834 minutes, 8 secondsWhat is better for UX? Of course, streaming the response which you know again introduces a new problem at this
34:1634 minutes, 16 secondslayer. Okay, how should the back end talk to the LLM? Now to keep things simple, it probably needs to be HTTP.
34:2434 minutes, 24 secondsWhat comes to your head when you know we we think of a use case like this front end needs to talk to back end and back end needs to stream data one chunk at a time. Very good.
34:3534 minutes, 35 secondsFirst time I would have thought of it. I would have thought of websockets.
34:3934 minutes, 39 secondsYou know back end needs to send data over here. So probably websockets is what we need. But what do they use? They use serverside events or event streams.
34:4834 minutes, 48 secondsThey were the second thing that was introduced before websockets were introduced. There was only the request response model. You send a request to the back end, back end responds back.
34:5634 minutes, 56 secondsHTTP request client server model if you have heard of it. And you you ask for a request, the server responds back. Then
35:0335 minutes, 3 secondspeople realize there are use cases where the back end needs to push events to the front end which is where server side events came into the picture which seems like the most obvious thing here. Then
35:1235 minutes, 12 secondscame two-way communication which was websockets. Okay, the front end can keep talking to the back end, the back end can keep talking to the front end.
35:1835 minutes, 18 secondsWebsockets are a little bit of an overengineered use case here and hence serverside events is what most backend providers will expose. So this connection gets upgraded to a server
35:2735 minutes, 27 secondsside event or an event stream and then the back end talks to the LM. You asked it this question. The the system prompt
35:3435 minutes, 34 secondsgets injected. The LMS produces one token at a time and that token is sent via event streams one token at a time or
35:4235 minutes, 42 secondswhatever the events are. If you look at the events, you know, you'll find a bunch of them.
35:4635 minutes, 46 secondsFor example, if you go to chatgpt and ask it a question, you'll see that the request that goes out is a serverside event stream. And the events, you know,
35:5535 minutes, 55 secondsare not just text deltas, but also things like this. For example, the first thing that came here was resume conversation token, which probably means, you know, a token that you have
36:0336 minutes, 3 secondsto send in a follow-up request. If it has responded back and you respond back with something, most probably in the follow-up request, this token sort of goes to the back end and then back end
36:1136 minutes, 11 secondssort of checks this token. So, it's not like you only can return text deltas over here. You can return whatever you want. Um most of the times you'll find most of the messages over here are going
36:2036 minutes, 20 secondsto be text delta key. You know the first text delta is going to be whatever um sure and then the next text is going to be rest language so on and so forth.
36:2836 minutes, 28 secondsThat is how the front end talks to the back end. Why not websockets? Because I mean a lot of answers here. The simplest answer is there is no need for two-way
36:3536 minutes, 35 secondscommunication. It's not like the front end needs to keep talking to the back end. It's just that the back end needs to push events and hence serverside events which are just built on top of HTTP are very easy to scale via load
36:4436 minutes, 44 secondsbalancers make more sense compared to all the infrastructural complexity that comes via websockets. Hence what we would want is um or not what we want
36:5236 minutes, 52 secondsmost modern providers are always almost always exposing um serverside events. Is this the only way that front ends
37:0137 minutes, 1 secondtalk to back ends though? Or is this the only way that you know um models
37:1037 minutes, 10 secondsthrough an HTTP layer with JSON body and the response is coming via event
37:1637 minutes, 16 secondsstreams. Let me give a hint. Anthropic uh Gemini uh Chad GPD all use this
37:2437 minutes, 24 secondsMCP right something else gpc um not exactly gRPC but gRPC yes but
37:3437 minutes, 34 secondsa lot of these provide not any of the conventional providers no but if you've heard of Devon or Windsurf if you ever see their you know harnesses how Devon
37:4237 minutes, 42 secondstalks to uh its back end it is actually not through HTTP but through gRP RPC the data that is sent is actually binary
37:5137 minutes, 51 secondsdata or protobuffs if you have heard of it. Why? Because it's generally more optimal. The size of data if the data is
38:0038 minutescompressed via PBFs or protobuffs is much smaller compared to JSON. JSON is if this JSON blob is let's say 1 megaby if you compress it using protobuffs um
38:0838 minutes, 8 secondsit'll be you know down to maybe 1/5 of that. um any big company that you can think of uh let's say an Uber will
38:1638 minutes, 16 secondseventually move from HTTP to gRPC wherever they can clients browsers don't understand gRPC which is why for use
38:2438 minutes, 24 secondscases where browser has to talk to a server you can't use gRPC you you can at max use protobuffs or binary as the data over here you will still use HTTP but if
38:3238 minutes, 32 secondsbackends are talking to back ends which this case may that is true right there's a back end that is talking to back end if there's a terminal agent is that a
38:4038 minutes, 40 secondsfront end talking to a back or is that a back end talking to a back end?
38:4338 minutes, 43 secondsBack end. Even though terminal agent looks like a front end, it is mostly a back end. It's still a NodeJS process, right? It's not a it's not running inside the browser. The browser is what
38:5138 minutes, 51 secondsdoesn't understand gRPC. The terminal NodeJS understands gRPC and hence [clears throat] there is every you know the fancy providers think of a Devon
38:5938 minutes, 59 secondswill optimize this layer more. Um and I can show you the code I created for PI.
39:0539 minutes, 5 secondsI created the Devon provider and the code is much more complicated compared to other providers because Devon uses protobuffs compared to the others.
39:1439 minutes, 14 seconds[clears throat]
39:1539 minutes, 15 secondsAll right.
39:2439 minutes, 24 secondsUh no
39:3239 minutes, 32 secondstoken encrypted. Third line
39:4039 minutes, 40 secondsauthentication token. This is not that token event delta. This is not event.
39:5339 minutes, 53 secondsNo, it's a text.
39:5639 minutes, 56 secondsIf you scroll down, it's proper textual normal data. It's not encrypted.
40:0040 minutesHow LM detect this this should be my last beautiful they have another token the end token when they are trained they're
40:0940 minutes, 9 secondstrained on the data took you know training data can be what is the capital of India Delhi end token what is the capital of you know whatever the US DC
40:1840 minutes, 18 secondsthank you DC end token so it has been trained over time you have to spit out the end token
40:2640 minutes, 26 secondswe don't see when you're done spit out the end to the data that it has seen always has an end token at the end. More questions
40:3940 minutes, 39 secondsbut still faster right?
40:4340 minutes, 43 secondsYes. I mean that is one reason the paring parsing is more JSON is faster compared
40:5140 minutes, 51 secondsto protobuffs. Photobuffs increase the CPU usage when you're des serializing and serializing data but they decrease
40:5840 minutes, 58 secondsthe network usage um you know as data goes through the reason they are used is gRPC it is not for it is still built on
41:0641 minutes, 6 secondstop of HTTP you are right but if you ever created a gRPC server you create a protoile have you seen that protocol mean you define all [clears throat] the types and then you're able to generate
41:1441 minutes, 14 secondsclients in TypeScript Java whatever that is one of the reasons that it is used it is still using HTT under the hood so you're not getting any benefit
41:2341 minutes, 23 secondsprotocol of course under the hood it is HTTP it autogenerates clients for you um you
41:3141 minutes, 31 secondsnever see the HTTP layer you only do function calls under the hood sure there are HTTP calls but you know you as a person only have to call certain
41:3941 minutes, 39 secondsfunctions uh back you can never use it for front end to back end anyways front end doesn't there
41:4641 minutes, 46 secondsare ways to do it but front end is not able to talk to a gRPC server it's not able to become a JPC client unless you write a lot of you know HTTP logic yourself. More questions.
41:5841 minutes, 58 secondsAll right. [clears throat] Tokens uh web doneh. Cool.
42:0742 minutes, 7 secondsAgents. Coming to the most important part here. Um is this an agent? If I go to Postman, send it a request get a response. No, it's just an LM call, right? Is this an agent?
42:2042 minutes, 20 secondsYes and no.
42:2142 minutes, 21 secondsIt's a very thin line. Um, can be an agent, cannot be an agent. Depends on chat UI comprehensive. If the chat GUI is very comprehensive, if it provides
42:2942 minutes, 29 secondsyou access to a lot of tools, if you can do deep research over here, if you can give it a goal and it can slowly asynchronously figure it out, it can be
42:3742 minutes, 37 secondscalled an agent. So, it's [clears throat] a very thin line between an assistant and an agent. Most chat UI I'd probably call an assistant only.
42:4442 minutes, 44 secondsThey don't do very complex things. But wait thin line if you look at manis sorry not this uh if you look at this this is also a chat UI but technically
42:5342 minutes, 53 secondseveryone calls this a manus agent you know manus chat UI people said manus agent because you know it just let you do slightly more complex things you can
43:0143 minutes, 1 seconddo deep research you have access to a lot of tools you can give it a go it'll figure it out it may or may not hit outside APIs basically if you enable
43:1043 minutes, 10 secondsMCPS over here or tools over here you can call it an agent you can call it a tool otherwise um you can call it an assistant otherwise to very thin line between an assistant and an agent. When
43:1843 minutes, 18 secondsit comes to a chat UI, chat UI can be called an agent can be called an assistant. This is a very obvious agent
43:2543 minutes, 25 secondsif you've heard of or seen Zapier agents which basically is you give it a task you know whenever I have an email
43:3243 minutes, 32 secondsunderstand the email and reply back with something and click on you know create agent next step it actually spawns an agent for you. It actually starts to
43:4043 minutes, 40 secondslisten to incoming messages through Zapier. It does an LM call to get a response. It then responds back to the user. This technically can be called an
43:4743 minutes, 47 secondsagent which is given a goal and it is able to achieve that goal through a lot of external tools. In this case, the external tools being listening to an
43:5443 minutes, 54 secondsemail, replying to an email, talking to an LLM, so on and so forth. So agent clear
44:0144 minutes, 1 secondif I ask about the recent match it will browse browser right correct can we call agent or
44:0844 minutes, 8 secondsyes that's why if you give it access to tools depending on the complexity of tools you've given it access to which in your case you're saying the web search tool you can call it an agent it's a
44:1744 minutes, 17 secondsvery thin line um mostly yes if it has access to web search mostly you can call it an agent because it you can ask it to figure out things and it's able you've
44:2544 minutes, 25 secondsgiven it a goal which is able to figure out It still can't listen to your emails and things like these which is a more comprehensive agent. Sure. Very thin
44:3244 minutes, 32 secondsline between an assistant and agent. Any more questions? Yeah.
44:3944 minutes, 39 secondsYou send a request to then it will generating tokens. So it's a server side
44:4544 minutes, 45 secondsevent. So let's say I cancel my desktop.
44:5644 minutes, 56 secondsThere are about controllers. You can abort requests. You basically if you hm if I go to Postman and if I cancel this
45:0545 minutes, 5 secondsrequest the backend server that they have you know this thing right here will receive an event. you know it'll get a response or request doononclo there's a
45:1445 minutes, 14 secondsrequest onclose call back listener here which will detect the client has closed the request for whatever reason and can then just tell the LM to not generate
45:2145 minutes, 21 secondsnew tokens any more questions all right uh these are agents these are
45:3045 minutes, 30 secondsagents uh [snorts] isn't this a chat UI that is why there's a thin line it can do much more complex tasks it can book flights
45:3845 minutes, 38 secondsfor you which is why you know it's sort of makes sense to call it an agent. Um but still is ambiguous. Should manice be called an agent? And if this is an
45:4645 minutes, 46 secondsagent, why is chat gpti not an agent an assistant?
45:5045 minutes, 50 secondsThis 100% is an agent. Cursor agent and you know you can ask it to do a bunch of things. It can read your codebase, update your codebase, so on and so
45:5745 minutes, 57 secondsforth. Open code, terminal UI, clawed code are all agents.
46:0146 minutes, 1 secondUm do they lie in the category? How how do they know if they lie in this category? Um, an agent is a software system that can receive a goal, decide
46:0946 minutes, 9 secondson what action to take, use certain tools. The third is the most important part here. Agents are just given access to too many things. In case of terminal,
46:1746 minutes, 17 secondsagents, they're just given access to your machine, you know, terminal and do whatever you want. That is like a good sign of this being an agent. the kind of
46:2546 minutes, 25 secondsaccess that it has um the kind of things that it can achieve the kind of goals that you can provide it with a chat UI you can't really provide with goals like
46:3346 minutes, 33 secondsyou know on my machine change this code base versus um you know in a terminal UI you can do that which is why you know a terminal UI is more comfortably an agent
46:4146 minutes, 41 secondscompared to a chat UI um observe the results and take additional actions based on that I mean feel free to read this against a
46:4846 minutes, 48 secondsvery thin line um someone asks I don't think anyone would care uh I mostly call an assistant agent is fine Cool. There's this thing called agent
46:5746 minutes, 57 secondsloop that we will come back to. What exactly does this mean? How is this implemented? Um, it's the crux of what an agent is. Before that, let's finish
47:0547 minutes, 5 secondseverything else. How many of us already know what tools are? I would assume a lot of people. Some Okay, most people.
47:1247 minutes, 12 secondsUm, cool. Tools or function calls um are a way for an
47:1947 minutes, 19 secondsLLM to interact with the system outside of its own neural network. Um a very simple example can be if you ask an LLM
47:2647 minutes, 26 secondsto book a flight or even simpler if you ask the LM the current weather in Delhi it cannot answer that because
47:3447 minutes, 34 secondsit was not trained on today's data it was trained on data 6 months ago hence it can never answer realtime questions like what is the price of BTC right now
47:4247 minutes, 42 secondsor what is the weather in India right now things like these um this is a very simple and important use
47:5047 minutes, 50 secondscase providing LLM access to a bunch bunch of data that is not part of its weights. There is certain data that is
47:5747 minutes, 57 secondsalready part of the LM weights. Things like Delhi is in India. It understands Bangalore is in India. It understands the current weather in Bangalore. It doesn't know the current population of
48:0648 minutes, 6 secondsIndia. It doesn't know. It knows what it was 6 months ago. It found that from some internet data it's you know compressed in its weights but it doesn't know what the current data is. So all
48:1348 minutes, 13 secondsthe real-time data it doesn't have access to. my machine a chat GPD model doesn't have access to to allow chat GPD
48:2148 minutes, 21 secondsto edit files in my machine or to allow chat GPD or an LLM to search the web query databases run code send emails
48:2948 minutes, 29 secondsread files call APIs control software you can use tool calls without tools an LM can only generate
48:3848 minutes, 38 secondstext based on its training data which was let's say 6 months ago for GPD5 to whatever has happened in the last 6
48:4548 minutes, 45 secondsmonths it does not know for example someone asks you know what was your thing search valley latest IPL uh latest IPL result the LM doesn't know
48:5448 minutes, 54 secondsthat was trained 6 months ago it doesn't even know IPL it doesn't even know IPL has started and hence the LM can somehow
49:0149 minutes, 1 secondquery the internet do a Google search get the response from the Google search get that response inside its context
49:0849 minutes, 8 secondswindow and then respond ka based on the current Google search result it seems like um the you The winner of IPL is you know whoever kings pun.
49:2049 minutes, 20 secondsSo if I ask uh KPT or claude what is the weather in Delhi? You are not allowed to
49:2749 minutes, 27 secondsuse any tool. If I specifically say this it says I can't tell. Based on my general knowledge Delhi typically experiences falling weather in June.
49:3849 minutes, 38 secondsFor realtime accurate weather data you will need to check live weather services. It is saying answer.
49:4449 minutes, 44 secondsIt is actually not able to answer this query. If I force it to not use any tools. But if I don't force it to use any tools, it gives me everything. It
49:5249 minutes, 52 secondsreturns me the current live data. If I ask what is the weather in Delhi, it returns me the weather in Delhi. If I ask a follow-up question, did you use any tools to get this data? It says yes,
50:0050 minutesI use the weather fetch tool. Hence, this tells you the claude UI has access to a lot of tools. Like he mentioned, Claude and CHGB UI have access to the
50:0950 minutes, 9 secondsweb search tool which let the claw LLM do a web search. [snorts] The full web search happens. The cloud LM to get back
50:1650 minutes, 16 secondsthe response from the web search. Um same is true for this weather fetch tool call. The LLM can do this tool call to
50:2450 minutes, 24 secondsfetch the current weather, get it in context window and then respond. I think the weather in Delhi is XYZ. The interesting part is how LM do this. We
50:3350 minutes, 33 secondsunderstand if I ask it a question like this. What is the weather in Delhi? It understand it understands it needs to do a tool call. The question is how does it
50:4250 minutes, 42 secondslet the world know tool call the LLM
50:5050 minutes, 50 secondsbefore that before we go there I just asked you know Claude what all tools do you have access to there like a bunch of tools it returned yeah tools in the chat
50:5850 minutes, 58 secondsUI interface you get access to the web search tool which is what he mentioned image search weather sport data so on and so forth the interesting question is
51:0551 minutes, 5 secondshow do LLMs do tool calls since they can only generate Next, the LLM model originally the first attention model GBD
51:1451 minutes, 14 seconds2.5 that came out. X comes in, X comes out. How can an LLM somehow talk to a
51:2251 minutes, 22 secondsget weather getweather tool called? What is a tool called? HTTP the LLM needs to somehow talk to
51:2951 minutes, 29 secondsapi.weathervices.com/ delhi get a response, right? But the LM the architecture this black box over
51:3751 minutes, 37 secondshere is never really supposed to do that. It can only take inputs tokens output tokens. So if you ask it what is
51:4551 minutes, 45 secondsthe weather in Delhi? How does it do a tool call?
51:5051 minutes, 50 secondsIn we add these tools I have access you can use and
52:0152 minutes, 1 secondjust like okay I'll do a call response and then re uh
52:1252 minutes, 12 secondsbasically For one,
52:2252 minutes, 22 secondsit gives the JSON format of this kind of the LLM gives a JSON response of this is what I need.
52:3052 minutes, 30 secondsOkay. What were you saying?
52:4252 minutes, 42 secondsPerfect. That is perfect. Very concise.
52:4552 minutes, 45 secondsI think initially it was like an emergency mod initially.
52:5752 minutes, 57 secondsExactly. GBD 2.5 did not know how to do tool calls. This came up as a feature we need to allow LLMs to be able to talk to
53:0653 minutes, 6 secondsthe outside world. So LLMs were literally trained. If you have been given access to a bunch of tools, you need to spit out text that looks like
53:1453 minutes, 14 secondsthis. An LLM can only spit out text. It cannot do an HTTP call. It cannot talk to a certain service. So the LLMs were trained in their, you know, GP4, GP5.
53:2553 minutes, 25 secondsOkay. If you've been given access to a bunch of tools and a question, for example, access to the weather tool and the web search tool and the question is
53:3253 minutes, 32 secondswhat is the weather in Delhi? You can spit out text in a certain format letting the other party whoever talk to you letting them know tool call letting
53:4253 minutes, 42 secondsthem know please do this tool call by spitting out text this party actually does the tool call which means actually calls the weather API that is the back
53:5053 minutes, 50 secondsend that does it appends it to the context resends the full message history the full message history my original message what is the weather in Delhi is
53:5953 minutes, 59 secondsresponse please do this tool call my response the answer to this tool call is 31°C. You resend all of this to the LM and then the LM responds with the final
54:0854 minutes, 8 secondsanswer. Okay, based on my current learnings, the answer is the weather is 31°CM
54:1754 minutes, 17 secondsis only the text spitting out. It's just spitting out text in a certain way because it was fine tuned over time or trained over time tool
54:2754 minutes, 27 secondstool spit out text that looks in a certain format.
54:4054 minutes, 40 secondsHow does this guy know what is the latest weather API?
54:4654 minutes, 46 secondsWhat if there's a new weather API? You should always keep the implementation layer here, right? You hardcoded it.
54:5154 minutes, 51 secondsWeather API is weatherappi.com. LLM was trained after spending $20 million.
54:5554 minutes, 55 secondsweather.com%
55:1455 minutes, 14 secondsyou're saying before tool calls were a thing I could always mention in the system prompt right okay if you want XYZ tool then return this on you can you can
55:2455 minutes, 24 secondsdo that over but their SDKs are you know wait the back if this doesn't tell you
55:3155 minutes, 31 secondstool call this tells you the original client tool in a specific format um in that case you're just building that whole layer
55:3955 minutes, 39 secondsyourself totally possible also you know it's been trained over time you know you have to return this
55:4855 minutes, 48 secondsprobably return that better compared
55:5855 minutes, 58 secondsIt just returns you a format whether call bracket open argument one bracket close.
56:0456 minutes, 4 secondsYou can totally just system but wait you I would feel more confident in a model that has been over time trained to spit out text in a specific format.
56:2656 minutes, 26 secondsTool calls are always part of the prompt input.
56:3056 minutes, 30 secondsYou know this guy will tell this guy and this guy will tell this guy. You have access to tool 1 tool 2 3 tool 44 tool 5. It is not trained on a generic
56:3856 minutes, 38 secondsweather tool. It just knows if I've been given five tools and I feel like one of them is relevant I have to spit out text
56:4456 minutes, 44 secondsin a specific format. It is not like
56:5656 minutes, 56 secondsThere is no HTTP client here. This the transformer architecture, the algorithm, the final. What is this thing over here?
57:0357 minutes, 3 secondsThere are two files. There is a Python or a C file. There is a weights file.
57:0757 minutes, 7 secondsWeights file is very big. 8 billion parameter. Let's say you know 30GB. That 30 GB is loaded in memory by the C
57:1357 minutes, 13 secondsprocess by the Python process. input it one by one generates token that's all it does it doesn't have the concept of an HTTP client that can hit a server or
57:2257 minutes, 22 secondsanything like that this guy never doesn't understand other protocols just understands one protocol attention it can only take certain inputs spit
57:2957 minutes, 29 secondsoutputs can you change this can you make this a little more hybrid maybe maybe there is an architecture where the LM can directly talk to you know things um LM
57:3857 minutes, 38 secondscan only generate text so this is a very weird way around it text generate make it generate text that looks It's like a function call and then you know do the
57:4757 minutes, 47 secondsactual function call at your back end or you know wherever in this case open code
58:1058 minutes, 10 secondsvery close to response. response tool.
58:1758 minutes, 17 secondsAs long as it asks you for tools, you execute, you resend. Send you tools, execute, you resend. At some point, it will not send you any tools.
58:3058 minutes, 30 secondsThe back end is what sends in the system prompt. I have you have access I have access to these these tools.
58:4758 minutes, 47 secondsback. Okay. Right. This example is open code hitting chat GPD back end hitting LLMs.
58:5658 minutes, 56 secondsLet's say open code there's a normal node just back end that I have that is talking to uh an LLM.
59:0459 minutes, 4 secondsIf the backpa
59:3459 minutes, 34 secondsWhat is the weather? The it reached the LM. LM person asks let's say this is the client asks what is the weather back and
59:4259 minutes, 42 secondstalk to LM. LM said I need to do a tool call. You are saying okay if the tool call is happening here might as well return the response from here. Y car.
59:5159 minutes, 51 secondsThe thing is the user might have asked what is the weather in LM return to me in the voice of Katy Perry.
59:5859 minutes, 58 secondsSo when the weather comes back if you return 21°C he'll be like this doesn't sound like Katy Perry. You get 21°C, you
1:00:051 hour, 5 secondstell it back, okay, I asked you to respond in Katy Perry's voice and ask you the weather. You asked me to do a
1:00:131 hour, 13 secondstool call. Here is the result of the tool call. I send it four things. Then it returns in Katy Mary's voice. The weather today in Delhi is 21°Cola or something like that, you know.
1:00:291 hour, 29 secondsAnd then just gives you the best answer it can. That answer could also be 21°C.
1:00:351 hour, 35 secondsBut it be something like you know the weather in Delhi today is sunny 21°C something like that.
1:00:501 hour, 50 secondstools. You said should I send 20 tools here or only the five tools I need? How do you know what are the five tools you need?
1:00:581 hour, 58 secondsSo you first talk to the LM and say can you tell me what all tools you need? LM says I think I need these tools. Then you do another call and tell it these are the tool calls. That is correct.
1:01:091 hour, 1 minute, 9 secondsThat is exactly what happens in cloud.
1:01:111 hour, 1 minute, 11 secondsClaude has the claude UI when you go to it has access to 100 different skills.
1:01:161 hour, 1 minute, 16 secondsRight. It has poly market skill also. It has zeroda skill also. If it starts all tools, my bad not skill tools. Now if
1:01:221 hour, 1 minute, 22 secondsyou ask it something and it appends all the tools in the system prompt the context window becomes very big. You give it a lot of tools it doesn't need
1:01:311 hour, 1 minute, 31 secondsaccess to. So what claw does it and you know there's a manis guys have a YouTube video about this and manus also does this is
1:01:391 hour, 1 minute, 39 secondsI mean they do something very complicated but if you simplify it um they don't give the LM any tools they just tell the LM all my tools exist in
1:01:471 hour, 1 minute, 47 secondsthis folder in some sandbox you know they basically tell the LM if you ever need access to tools I will let you know
1:01:541 hour, 1 minute, 54 secondswhat all tools I have so in the first prompt it doesn't give all the tools it only gives you know let's say five tools the important ones Um a web search tool
1:02:021 hour, 2 minutes, 2 secondsis very important. You know get weather is not important. Not everyone is going to ask weather information. So there is no point of sending the weather tool along with it. Web search super common.
1:02:101 hour, 2 minutes, 10 secondsBut the LM you tell the LM the system prompt if you ever need access to tools.
1:02:161 hour, 2 minutes, 16 secondsThe LM asks from time to time do you have access to XYZ tool? This guy checks in this folder or you know the LM does an LS in a folder case folder
1:02:251 hour, 2 minutes, 25 secondsconsequence tools present. You respond back with the ls of you know all the folders or the files that you have. Then it checks catch get the tool come you
1:02:341 hour, 2 minutes, 34 secondsreturn it the get with the tool context and then it does the get with the tool which is actually not needed. How do you verify?
1:02:441 hour, 2 minutes, 44 secondsWe can't verify you trust the LM it will not ask the verification layer if at all is there needs to be an LM or an SLM right?
1:02:551 hour, 2 minutes, 55 secondsIf it tells you give me web search tool but you want to verify is web search tool really needed or not you will need another to check okay for this prompt
1:03:041 hour, 3 minutes, 4 secondsdoes a web search tool make sense or not right uh but generally you trust the intelligence of these guys now okay you know they will not ask you something that they don't need
1:03:121 hour, 3 minutes, 12 secondswe can give the respond to the like name of the tools I ask me like how to use it and how
1:03:201 hour, 3 minutes, 20 secondsyou can do that also but the names are also too many right for there are infinite tools that you can Zeroda, Robin Hood, Poly Market are just trading
1:03:281 hour, 3 minutes, 28 secondstools. There are hundreds of tools that Claude has written. Even giving the names is too much to let it ask.
1:03:381 hour, 3 minutes, 38 secondsSkills are different. Skills are also skills are never meant to be executed.
1:03:441 hour, 3 minutes, 44 secondsIt is just that the back end tells the LM I have again access to a lot of skills. If you need any skills, let me know. So this guy can ask you, do you
1:03:521 hour, 3 minutes, 52 secondshave any DevOps skill? And then it's just a very big file that it can respond with. Yes, this is a DevOps skill. You don't know all of this intelligence. Let
1:03:591 hour, 3 minutes, 59 secondsme tell you extra and then it just continues with that. There is no execution that happens on the back in case of a skill. But yes, there is a file that it can ask for. You return it.
1:04:081 hour, 4 minutes, 8 secondsIt has a lot of sorry.
1:04:131 hour, 4 minutes, 13 secondsYes. If huh additional system for the task yes system prompt
1:04:201 hour, 4 minutes, 20 secondsyou know okay for this task these are things for example the one of the more nice skill that I have is a a what is a skill it's just a text file MD5 the one
1:04:281 hour, 4 minutes, 28 secondsthat I have is how I deploy my websites on my infrastructure I have a cubernetes cluster where I deploy things deploying a website is deploy a database deploy a
1:04:351 hour, 4 minutes, 35 secondsback end deploy a front end add a load balancer create an entry in goad.com for you know apiundredx.com and you know website.com All of these have been written in a very nice file.
1:04:451 hour, 4 minutes, 45 secondsWhenever I YouTube when I'm going live or otherwise create a website, all I do is give that access to that skill to cloud code and then it's able to deploy
1:04:521 hour, 4 minutes, 52 secondseverywhere for the particular task.
1:04:561 hour, 4 minutes, 56 secondsYes. And a lot of times internal context it's so good at devops but it's it doesn't know my
1:05:031 hour, 5 minutes, 3 secondsinfrastructure has a very specific information about me about the company is what you skills have.
1:05:191 hour, 5 minutes, 19 secondsof the KT Python.
1:05:321 hour, 5 minutes, 32 secondsOh, when I said voice, I meant like her like say not like right.
1:05:411 hour, 5 minutes, 41 secondsOkay.
1:05:431 hour, 5 minutes, 43 secondsYou are saying how voice agents are different, right? You're asking you're not asking now you're changing the model to not be a text to text or image text
1:05:511 hour, 5 minutes, 51 secondsto text model. You are saying what if it is a text to voice model. What happens there?
1:06:071 hour, 6 minutes, 7 secondsThere are a few architectures to do voice specifically. What you're asking is how voice model works. So when you you were at rum, right?
1:06:141 hour, 6 minutes, 14 secondsSo they are one of the voice AI companies and you know they do voice AI certain way. Smallest is another one Indian founder. Whisper flow. Huh?
1:06:261 hour, 6 minutes, 26 secondsSum I'm sure they also do some level of voice. Sure. Um OpenAI has open real time 11
1:06:331 hour, 6 minutes, 33 secondsdeep. There are many companies in the voice model depend
1:06:421 hour, 6 minutes, 42 secondsspecifically has a does not have a voice model. They have a speech to text model.
1:06:481 hour, 6 minutes, 48 secondsThat basically means if I ask it hi Rubric what are you doing? It first converts my speech to text. They pass it to some intelligence layer. They talk
1:06:551 hour, 6 minutes, 55 secondsthat text goes to an LLM or an SLM. You need it to be really fast. So a small language model. It responds back with some text and then they have a speech
1:07:041 hour, 7 minutes, 4 secondssorry text to speech model. So they they have created this architecture where the intelligence is broken into three parts.
1:07:111 hour, 7 minutes, 11 secondsThere is one speech to text layer. There are three different models. There is not one LLM but there is one SLM, one speechtoext model, one texttospech
1:07:181 hour, 7 minutes, 18 secondsmodel. The spe texttospech model was trained on a lot of text data and a lot of voice output. The speech to text model was trained on a lot of speech
1:07:261 hour, 7 minutes, 26 secondsdata and text output. The LM was trained on a lot of text data and a lot of text output data. So they have a three layered speech to text intelligence text
1:07:351 hour, 7 minutes, 35 secondsto speech model. That is one way to do it. The other way to do it is what open real time does which is the model itself is trained on voice image text input and
1:07:441 hour, 7 minutes, 44 secondsvoice text output. The training layer itself was done on three different modalities of input, two different modalities of output. Which one is better?
1:07:541 hour, 7 minutes, 54 secondsSecond.
1:07:551 hour, 7 minutes, 55 secondsSecond one, of course. Why? Because it's faster for sure. The first
1:08:031 hour, 8 minutes, 3 secondsarchitecture cannot compete with the second architecture. That's one. Two, you get a lot of coherence information when you get access to the raw voice data at the intelligence layer.
1:08:151 hour, 8 minutes, 15 secondsSo it can predict you're in a hospital.
1:08:171 hour, 8 minutes, 17 secondsA weird example versus if you use the first approach that all of that information is lost if you just convert
1:08:241 hour, 8 minutes, 24 secondsthe spe to piece to text. No one knows
1:08:341 hour, 8 minutes, 34 seconds[clears throat]
1:08:361 hour, 8 minutes, 36 secondsSo that is why the second model is better. But the second model is also more expensive. Running speech to text and text to speech and SLM is very simple. You can run it on this Mac. You
1:08:441 hour, 8 minutes, 44 secondsrun it on your Mac. You can very easy to build systems like these because very small speech to text, text to speech and language models are available. So Mac
1:08:521 hour, 8 minutes, 52 secondssecond one is very tough, very hard. We can't do it on our Mac.
1:09:001 hour, 9 minutesI don't know if they do image. Um but they can take images, text and voice as input. Specifically, I'm talking about
1:09:071 hour, 9 minutes, 7 secondsopen air real time and it can spit out text and voice.
1:09:181 hour, 9 minutes, 18 secondsGive me native roles right now.
1:09:441 hour, 9 minutes, 44 secondsGood question. First question roles in AI and you said
1:10:051 hour, 10 minutes, 5 secondsOkay, got it. Correct. Makes sense. You ask the LLM, sorry, Han, you ask LMK, give me the best job roles and you automatically see the first search was done for news.
1:10:171 hour, 10 minutes, 17 secondsSecond one was done for, you know, wellfound.com/job first there was a Google search tool
1:10:241 hour, 10 minutes, 24 secondscalled for that means I would assume all those five links are hardcoded in the LM itself. The LM understands and remembers those five links. Jobs news.yc.com
1:10:331 hour, 10 minutes, 33 secondsyc.com/job is a very common job board wellfound.com is common job job board so the lm I would assume is responding I could be wrong
1:10:421 hour, 10 minutes, 42 secondsthen yeah let's say that's not there that could be there but you know let's say chat gbi you're fresh in the chat gbdi you ask
1:10:491 hour, 10 minutes, 49 secondsthis question and you immed let's just do that now if I go to let's say claude link
1:10:581 hour, 10 minutes, 58 secondswhy wait why exactly so it's a very scary thing for an lm to return a link because you don't know if that link is valid or not. So I'm also curious. I would assume it always does a Google search first.
1:11:071 hour, 11 minutes, 7 secondsSo it it does provide the link where job is available. You can direct.
1:11:131 hour, 11 minutes, 13 secondsI get it. Hey, that was pretty simple, right? The LLM asked to do a web search jobs AI 2025. You did a web search, got
1:11:211 hour, 11 minutes, 21 secondsfive links. Five links context you extracted. You gave it to the LM. The LM finally summarized I found five links.
1:11:311 hour, 11 minutes, 31 secondsSo there is a Google search tool that is used by committed.
1:11:371 hour, 11 minutes, 37 secondsI don't know. I I would assume it never returns links. Let's do it. Get me latest AI job openings.
1:11:451 hour, 11 minutes, 45 secondsI would assume it first does a web search and then P links quick start.
1:11:561 hour, 11 minutes, 56 secondsI don't think the LM ever returns a link. Um it can return things like you know y combinator or something um
1:12:041 hour, 12 minutes, 4 secondsinternet it can return terms like y combinator can you search for y combinator jobs 25 wellound jobs 25 return it will probably
1:12:141 hour, 12 minutes, 14 secondsnever return a link I could be wrong let's see it probably won't that just seems dangerous I think
1:12:201 hour, 12 minutes, 20 secondslabs are smart enough to know that Internet
1:12:371 hour, 12 minutes, 37 secondsrecording in progress.
1:12:581 hour, 12 minutes, 58 secondsOkay, let's do it on charging
1:13:031 hour, 13 minutes, 3 seconds[snorts]
1:13:041 hour, 13 minutes, 4 secondsit on charg.
1:13:061 hour, 13 minutes, 6 seconds[clears throat]
1:13:121 hour, 13 minutes, 12 secondsGive me
1:13:231 hour, 13 minutes, 23 secondsIn this case, it did go through three links
1:13:311 hour, 13 minutes, 31 secondssources. I would assume it first does a web search, gets these links and then on top of these links builds the context.
1:13:381 hour, 13 minutes, 38 secondsSo, correct. But it probably does a web
1:13:461 hour, 13 minutes, 46 secondssearch first. The LM tells to do a web search. AI jobs 25. It does a web search gets 10 links. 10 links context scrapes
1:13:531 hour, 13 minutes, 53 secondsgives it to the LM. Then the LM responds back. 10 links. LM.
1:13:581 hour, 13 minutes, 58 secondsThese are all 27 links 26 links you know latest links. LM doesn't hardcode these links. LM at max ask the back end to do
1:14:061 hour, 14 minutes, 6 secondsa web search. You do the web search. I mean if we send this uh if we give LM access to a web search
1:14:141 hour, 14 minutes, 14 secondstool and ask it this prompt 99% the LM is going to respond back with web search tool run with AI jobs 25 latest remote
1:14:221 hour, 14 minutes, 22 secondsjobs something like that
1:14:331 hour, 14 minutes, 33 secondswhat you're saying Long story short, it doesn't hardode the
1:14:401 hour, 14 minutes, 40 secondslinks. It will atmax ask your backend to do a web search on a term like what is the latest job AI25 and then the links that it gets it builds on top of that.
1:14:531 hour, 14 minutes, 53 secondsThat's whatever our back end the web search tool exists in our back end. That is whatever we have set in our back end right 10 5 whatever it is.
1:15:041 hour, 15 minutes, 4 secondsis a model.
1:15:071 hour, 15 minutes, 7 secondsOkay, the slightly nuanced
1:15:291 hour, 15 minutes, 29 secondsfor 100%. So how does open code that question is coming that is the last
1:15:361 hour, 15 minutes, 36 secondsslide of today but yes that is a very good question okay every [snorts] LLM will have different outputs for what comes when a tool call happens I mean
1:15:441 hour, 15 minutes, 44 secondssimple answer is of course you don't see that weird format in your finally open code right um the weird thing that it
1:15:511 hour, 15 minutes, 51 secondsreturns you gets digested to a simple JSON object that JSON object comes over here okay for this this is a tool call ID this is the function these are the arguments and then you respond back. But
1:16:001 hour, 16 minutesagain, schema is also very different for everyone. Enthropic has a certain way to return messages. Tool call messages. Um,
1:16:081 hour, 16 minutes, 8 secondsGoogle has different, open has different, so on and so forth. And hence the the API providers have very
1:16:161 hour, 16 minutes, 16 secondsdifferent schemas which make a product like this very complex when you're supporting multiple providers. Cloud code doesn't support multiple providers.
1:16:231 hour, 16 minutes, 23 secondsThis is not a challenge for them. They only support anthropic. But open code supports everything. Which is why one very big part of pi and open code is going to be somehow digesting their APIs into one.
1:16:341 hour, 16 minutes, 34 secondsWe'll not see but I'll show you the file by the end. Why there is one very complex you know point in pi and the thing that I wrote I mentioned I have de
1:16:421 hour, 16 minutes, 42 secondskey subscription nothing else. Pi doesn't work with devon. So I wrote the provider for pi which was very complex
1:16:501 hour, 16 minutes, 50 secondsbecause it's not [clears throat] even this request is not even a http request.
1:16:551 hour, 16 minutes, 55 secondsIt's a gRPC request which is why you know the provider is very different. So their provider schemas are very different for everyone. Sometimes they're not even HTTP. If they are HTTP
1:17:031 hour, 17 minutes, 3 secondsit's not necessary that the format you're getting back is the same. So you have to sort of you know stitch it all together.
1:17:101 hour, 17 minutes, 10 secondsWhat I lab do?
1:17:161 hour, 17 minutes, 16 secondsYes and no. Everyone has their own formats. They do not disclose their own formats. um you can of course see them by the end train but I don't think
1:17:241 hour, 17 minutes, 24 secondsthere's a standard yet you know everyone should train it this way yeah
1:17:311 hour, 17 minutes, 31 secondsin normal web search you do searching and then based on can these open and all these sort of
1:17:401 hour, 17 minutes, 40 secondsmake money through they can
1:17:491 hour, 17 minutes, 49 secondsdoes that yet what open air does something I don't think it's this um there are other companies that dom SEO
1:17:561 hour, 17 minutes, 56 secondsnow that is a very big niche open air doesn't do it there are a lot of companies that say okay we will bring you up in LM SEO okay you know LM will
1:18:041 hour, 18 minutes, 4 secondsif you ask LM what is the best cloud provider it spits out Google cloud you can you can do a lot of hacks outside the LM to make sure the LM understand
1:18:131 hour, 18 minutes, 13 secondsyou which is usually you know Reddit because they're trained on Reddit data so if you write a lot of good posts about Google cloud on Reddit most probably the next release of a model.
1:18:201 hour, 18 minutes, 20 secondsEvery model will say Google Cloud is really good. There's a lot of LLM SEO companies. OpenAI said they're doing advertisements. I don't think they've done it yet. So, you know, if they do do
1:18:281 hour, 18 minutes, 28 secondsit, it will not be at the search to level. It'll just be know top right. If you ask it, you know, how to make muscles, you'll see a gym advertisement at the top right. That's it.
1:18:461 hour, 18 minutes, 46 secondsBut did it right? It's promoted.
1:18:501 hour, 18 minutes, 50 secondsIf it didn't write, then it's probably not an ad. They have to disclose if it is an ad. Yeah.
1:19:161 hour, 19 minutes, 16 secondsdoesn't give a wrong answer.
1:19:211 hour, 19 minutes, 21 secondsThey just test they just train bigger better models. If
1:19:291 hour, 19 minutes, 29 secondsyou are if you play with a free they just train bigger metal models. If if the charad gpt free model that you are using is very small. is not trained on
1:19:371 hour, 19 minutes, 37 secondsenough data does not use enough comput of course it can answer wrong things if you tell it also it might still say I'm
1:19:461 hour, 19 minutes, 46 secondsright compared to claw free how do they deal with it they don't they just make bigger models which they just hope are not going to hallucinate or not going to
1:19:541 hour, 19 minutes, 54 secondsgive you the wrong answer if you're ever getting a bad answer from an LM it just means LM is not trained well right and they don't want they have better models
1:20:011 hour, 20 minutes, 1 secondthey just don't want to expose it for the free APIs You don't seem convinced
1:20:141 hour, 20 minutes, 14 secondsthat is another in the training data we can have like if you do not know the answer you can still know if you don't know do not know the answer
1:20:211 hour, 20 minutes, 21 secondsyou can add that system prompt um I would assume everyone adds that if it still helps anything you know then the model is just not trained well
1:20:291 hour, 20 minutes, 29 secondsit is telling you wrong things you can add it to also You don't add that to training data.
1:20:361 hour, 20 minutes, 36 secondsThat is more of an instruction it has to follow. Um it is trained on a lot of data which it just assumes is the truth.
1:20:421 hour, 20 minutes, 42 secondsYou can't tell it truth by truth respond. The algorithm is supposed to respond with truth. It is never supposed to respond with anything bad.
1:21:021 hour, 21 minutes, 2 secondsbigger models.
1:21:041 hour, 21 minutes, 4 secondsUm when I say bigger models, I mean everyone is training on the same data.
1:21:091 hour, 21 minutes, 9 secondsThere is a small model which has less parameters. Big model that has a lot of parameters. Both of them are trained on the same data. The small model will be able to remember lesser things. Right?
1:21:181 hour, 21 minutes, 18 secondsIf there is a 1 GB model file and there is a 20GB model file, all of the internet data is compressed in 20 GBs
1:21:251 hour, 21 minutes, 25 secondshere and 1GB here. Of course, the 1GB will not remember everything. The 20GB will remember much more. So if you talk
1:21:321 hour, 21 minutes, 32 secondsto the 1GB model, it might tell you bad things. It even though it was trained on all the data, it can't remember all of that data in such a small brain.
1:21:411 hour, 21 minutes, 41 secondsversus if there's a 20GB model it has it was able to retain more of that data more of that input and hence
1:21:501 hour, 21 minutes, 50 secondsif you ask both of them questions of course the bigger model will respond better right let's
1:22:111 hour, 22 minutes, 11 secondsThere are a lot of then training is better if let's say charg and open both openi and anthropic have the same model
1:22:181 hour, 22 minutes, 18 secondssizes same yet they perform differently on sweb bench right the Everything is same. Perfect.
1:22:281 hour, 22 minutes, 28 secondsBoth of them are performing same. If you open bench like we did, two similar models, same rate models will not necessarily land at the same. They're optimizing for that.
1:22:421 hour, 22 minutes, 42 secondsYou have a benchmark in mind. Similarly, there are 100 different benchmarks.
1:22:451 hour, 22 minutes, 45 secondsThey're all optimizing to grow on that benchmark. But it's not nec if there's a 20 if there are two 20GB files, they're not the same. claude might have more
1:22:541 hour, 22 minutes, 54 secondsdata. They might be paying scale more or more. They might have nice RHFL teams, RLF teams post training, you know,
1:23:011 hour, 23 minutes, 1 secondbetter GB might not have that. It's not necessary if two models are the same size, they'll be trained similarly. I
1:23:081 hour, 23 minutes, 8 secondscan train a model of that size today model. But my 20GB model isn't that
1:23:181 hour, 23 minutes, 18 secondsgood, right? Because I did not spend enough time, energy, money in training that model. I do not have the best data.
1:23:231 hour, 23 minutes, 23 secondsI did not do a lot of human feedback after that to make it better. That is right. It's not necessarily two models have the same size. They will perform equally. They and benchmarks are the simplest example of this.
1:23:421 hour, 23 minutes, 42 secondslike
1:24:071 hour, 24 minutes, 7 secondsis there any architecture which prevent this faulty attempt? There's no way to pretend right if if you are actually able to everywhere on all news articles
1:24:161 hour, 24 minutes, 16 secondsprint that Modi is the president of the US and everyone's Google searching and seeing that is our source of truth right
1:24:281 hour, 24 minutes, 28 secondshe's not if you can do that good SEO you can actually change the truth you will change it everywhere that's what news outlets do right
1:24:361 hour, 24 minutes, 36 secondshow will you do it you're competing with hundreds of people who are saying India And you know you were saying
1:24:451 hour, 24 minutes, 45 secondsthat's what is right that kind of you know you put yourself
1:24:581 hour, 24 minutes, 58 secondsyou can sway in any direction based on you know whoever controls media whoever controls SEO is a new person that comes is going to Google what is kind of cool
1:25:071 hour, 25 minutes, 7 secondsreview to you know if they see the Reddit post of course they will feel it is bad it may I may not be bad but that's the first thing that pops up then you know that is what they see that is what the perception is that is what an
1:25:141 hour, 25 minutes, 14 secondsLM sees if you ask same you know YouTube because you know that's what it sees that's what it's seeing on Reddit over
1:25:221 hour, 25 minutes, 22 secondstime yeah
1:25:321 hour, 25 minutes, 32 secondsthis multiple agents
1:25:441 hour, 25 minutes, 44 secondsHow do you get system there is you ask it to do
1:25:541 hour, 25 minutes, 54 secondssomething different agents. It tells the first one you are supposed you are a helpful reading agent. Your job is to read the
1:26:021 hour, 26 minutes, 2 secondscodebase and summarize for me. It tells the second one you are a PR description verifier. I've given you a PR description sorry issue description malo
1:26:111 hour, 26 minutes, 11 secondsthe task that you're asking to do is a GitHub issue you just give it an GitHub issue number it can spawn a sub agent whose job is given this GitHub issue
1:26:191 hour, 26 minutes, 19 secondsreturn me all the text but still multiple okay [clears throat]
1:26:251 hour, 26 minutes, 25 secondswhat do you mean they can conflict like oh there are a lot of answers here
1:26:351 hour, 26 minutes, 35 secondsgenerally when you have a single codeex session and you ask you you start three agents only one of them is a right agent
1:26:421 hour, 26 minutes, 42 secondsgenerally if you look at clawed code architecture it does let's say two agents initially one to read the file one to summarize read a lot of files
1:26:491 hour, 26 minutes, 49 secondssummarize the code base second one to figure out what files to read and then when all of this is done it starts to write
1:26:581 hour, 26 minutes, 58 secondsand sort of you can think of that if you want two different agents to write together it becomes problematic
1:27:071 hour, 27 minutes, 7 secondsIf I open codeex in two tabs and tabs I ask it to update
1:27:171 hour, 27 minutes, 17 secondsmemory shared memory both of them start both of them if they
1:27:241 hour, 27 minutes, 24 secondsstart to oh both of them if they start to write on the same file context how
1:27:351 hour, 27 minutes, 35 secondsThere's a way to do it but by default two session tabs don't talk to each other
1:27:461 hour, 27 minutes, 46 secondsthey make different work pages are very close to branches and they avoid conflicts cool any more questions
1:27:531 hour, 27 minutes, 53 secondslast question you said companies like diagram or something
1:28:031 hour, 28 minutes, 3 secondsmore or less langraph it changes so quickly like they keep changing architecture left right and center it just makes sense to own it it's not even that difficult to write is what people
1:28:111 hour, 28 minutes, 11 secondshave realized hence the full orchestration layer everyone is owning right now cool we will proceed okay
1:28:241 hour, 28 minutes, 24 secondswhen you talk to it in a conversation it doesn't learn there is no training that is happening at that time but they get a lot of data Not even from conversations. They actually get a lot of data through code.
1:28:361 hour, 28 minutes, 36 secondsCorrect. That's what cursor does. Cursor has a lot of data now of a lot of code.
1:28:391 hour, 28 minutes, 39 secondsThis is because everyone uses it. When you accept their terms, you accept you know they have all of that data and then hence they're able to train much better models.
1:28:481 hour, 28 minutes, 48 secondsBut I think he's talking about memory.
1:28:551 hour, 28 minutes, 55 secondsOkay. Even if even even if he does that is my memory.
1:29:001 hour, 29 minutesThe LLM doesn't need to know her likes chocolate, right?
1:29:061 hour, 29 minutes, 6 secondsCool. All right. There are there are two ways to do streamings from LMS. One is a stream response. One is a oneshot
1:29:151 hour, 29 minutes, 15 secondsresponse. Rarely will you see a oneshot response. Almost always in most UIs, most agents, you will see data back and say stream. So if I ask it something like this, what is the weather in Delhi?
1:29:251 hour, 29 minutes, 25 secondsIt gets an event stream and then this is the full prompt that reaches the LM. The LLM realizes K. Oh,
1:29:331 hour, 29 minutes, 33 secondscan you see now the system prompt there is a tool section over here. This is just my schema. Gemini might have different schema. Entropic might have different schema. I'm assuming you know
1:29:411 hour, 29 minutes, 41 secondsanthropica schema looks like this or chatg schema looks like this. Whatever tools you have, you add them to the system prompt. In my case, I'm giving taxes to only one tool right now. There
1:29:501 hour, 29 minutes, 50 secondsis a get weather tool function that you can call and this is the parameters that it expects city which is a string.
1:29:581 hour, 29 minutes, 58 secondsIt understands these are the tools I can call. It understands the user is asking what is the weather in Delhi. It responds back with something like this.
1:30:041 hour, 30 minutes, 4 secondsIt doesn't return you any text yet. It might return you some text. Hi there, welcome. Let me see what the weather is in Delhi and then it'll return you a
1:30:111 hour, 30 minutes, 11 secondstool call and it'll stop. It will stop generating more text. It asks you one or sometimes five different tool calls. If I ask it you know what is the weather in
1:30:191 hour, 30 minutes, 19 secondsDelhi and in Bombay to it will return me two different tool calls and then it will stop generating more text tool back
1:30:291 hour, 30 minutes, 29 secondsI will execute you know the back end will now when I say back end here I mean the chatgptt back end this is the API back end so this is api.hatgptt.com
1:30:371 hour, 30 minutes, 37 secondschatgp.com my open code let's say for some reason in open code I asked what is the weather in Delhi for some weird reason I wouldn't I would ask in a chat UI coding
1:30:451 hour, 30 minutes, 45 secondstask but if I did it will reach the chat GBT back end it'll reach CLM element responded tools the tool calls are in
1:30:521 hour, 30 minutes, 52 secondsthis weird textual format but they can always be converted to JSON by the back end backend converts it into JSON
1:30:591 hour, 30 minutes, 59 secondsreturns it to me now it is my job this is where things get slightly tricky nothing too tricky this is my first request
1:31:071 hour, 31 minutes, 7 secondsaxis.post/ conversation prompt. What is weather intellon if response tool call and response tool
1:31:171 hour, 31 minutes, 17 secondscall.name is get weather. I have I'll have a bunch of these if else statements. Then I get the weather api.getweather.com/city
1:31:251 hour, 31 minutes, 25 secondsgetweather.com/city and then I send a new message to the llm with the original message the response
1:31:331 hour, 31 minutes, 33 secondsthat the lm gave me which was a tool call and my response to the tool call when it gave me a tool call it gave me a
1:31:401 hour, 31 minutes, 40 secondstool call ID with it does the LM generate the tool call ID or does the back end do it
1:31:471 hour, 31 minutes, 47 secondsback end lm random ID generate lm will simply tell you this is what I want to be done you will run the back and append
1:31:541 hour, 31 minutes, 54 secondsa random ID to it, return it to the front end. You get it over here, you do the actual tool call, you send another
1:32:031 hour, 32 minutes, 3 secondsmessage to the back end, sorry, uh to the LM with the original question, the the first answer from the LM and then the follow-up answer. This is the
1:32:121 hour, 32 minutes, 12 secondsoriginal call that I made and this is the follow-up call that I had to make because there is one tool call that the user the LM asked me to do.
1:32:251 hour, 32 minutes, 25 secondsTools are run from the server machine that initiates the original LM call. You know this is sometimes a little confusing. Tools are run from the
1:32:331 hour, 32 minutes, 33 secondsserver/ initiates the original LM call which in this case would be my open code which is running inside my Mac initiates
1:32:411 hour, 32 minutes, 41 secondsthe call and then this is the guy who does the get weather tool call and then sends a follow-up call.
1:32:471 hour, 32 minutes, 47 secondsWhat is more apt tool for something like open code? Get weather this one.
1:32:561 hour, 32 minutes, 56 secondsOkay. Let's say for some weird reason today I'm feeling a little ambitious and hence I opened my Devon accessibility short.
1:33:121 hour, 33 minutes, 12 secondsUh I open Devon and for some weird reason I
1:33:211 hour, 33 minutes, 21 secondstoday feel like asking Devon what the weather is in Delhi. I wouldn't do that.
1:33:261 hour, 33 minutes, 26 secondsI would ask it to do some coding task but ask. So I ask it what weather in Delhi.
1:33:351 hour, 33 minutes, 35 secondsWhat happens here? When I press enter this prompt will reach an LLM.
1:33:401 hour, 33 minutes, 40 secondsThe prompt reached This LM the back end eventually back will send my prompt over here and
1:33:501 hour, 33 minutes, 50 secondsthis guy will realize the user the system prompt for open code looks something like this you are open code helpful coding assistant you have
1:33:581 hour, 33 minutes, 58 secondsaccess to the following tools and amongst many tools there's a weather tool system prompt or system prompt in followup request can
1:34:081 hour, 34 minutes, 8 secondsask do you have a get weather tool and it can respond I do have a get weather tool Let's assume it's part of the system prompt right now. If it is
1:34:161 hour, 34 minutes, 16 secondssmart, if the user question is this and I have access to this tool call and I know for a fact I am a dead person,
1:34:261 hour, 34 minutes, 26 secondsI should 100% do this tool call. It might first respond back with some text, hello there, let me find the weather of Delhi and then spit out the tokens for a
1:34:351 hour, 34 minutes, 35 secondstool call. Or it might say and stop generating more text.
1:34:441 hour, 34 minutes, 44 secondsIt is waiting. It literally spit this out and stopped.
1:34:541 hour, 34 minutes, 54 secondsSo it only returned you this and the conversation ended technically and conversation.
1:35:001 hour, 35 minutesNow when this tool call the LLM returned in a specific format that it is trained on if you have to do a tool call return
1:35:081 hour, 35 minutes, 8 secondsin this format tool call name of the tool called parameters/ tool call it returned it to the back end. Back end of course said XML to front end.
1:35:171 hour, 35 minutes, 17 secondsIt converted the XML into a more digestible format that an API should respond with JSON. JSON came to open
1:35:241 hour, 35 minutes, 24 secondscode. Open code realized oh I had send a question and then the LM asked me for a tool call. So I need to now execute the
1:35:311 hour, 35 minutes, 31 secondstool in this case.
1:35:421 hour, 35 minutes, 42 secondsThe tool is happening over here. Okay.
1:36:001 hour, 36 minutesThis is not a website. This is a terminal back end. Open code runs inside here.
1:36:091 hour, 36 minutes, 9 secondsWhen I say open code, I mean this sorry what was that?
1:36:201 hour, 36 minutes, 20 secondsClient side client side but a client can be a back end. client side tool but client the term can be a back end also
1:36:271 hour, 36 minutes, 27 secondsin this case you know even it though it looks like a front end it is technically a back end because you know it's a running inside a terminal it's a nodejs
1:36:341 hour, 36 minutes, 34 secondsprocess it is not a
1:36:441 hour, 36 minutes, 44 secondscorrect you're saying huh because this is a very
1:36:511 hour, 36 minutes, 51 secondsprimitive example we took get Generally what do you think are the tools?
1:36:571 hour, 36 minutes, 57 secondsWhat tools does actually need to make sense for it to run here?
1:37:071 hour, 37 minutes, 7 secondsSo tools client side notess all tools are over here. I don't even know if there is a I get what you're
1:37:141 hour, 37 minutes, 14 secondssaying chat gpt web search tool. Why is it not even if I send an API request here?
1:37:221 hour, 37 minutes, 22 secondsI don't think there is a way to do it.
1:37:241 hour, 37 minutes, 24 secondsThere may be we should go through the API docs but that is just their implementation for their front end and their back end. When we are doing our own website, our own chat UI, we can't
1:37:331 hour, 37 minutes, 33 secondsdepend on their tools. We have to create our own tools which could be the same as them. We have to implement them on our side.
1:37:561 hour, 37 minutes, 56 secondsapi.weather.com weather.com like let's say web search oh web search
1:38:031 hour, 38 minutes, 3 secondshow do you do web search google.com
1:38:221 hour, 38 minutes, 22 secondshold on one more time what's the question you're saying If there is a web search tool that
1:38:291 hour, 38 minutes, 29 secondscorrect client website
1:38:371 hour, 38 minutes, 37 secondsthis is not a website. If this was a website then the architecture would look something like this.
1:38:591 hour, 38 minutes, 59 secondsMy back end my back end is executing
1:39:081 hour, 39 minutes, 8 secondsnow my now my back end will execute if you actually have a website website then your website will send a request to the
1:39:161 hour, 39 minutes, 16 secondsyour back end simple nodejs express server nodejs express server will talk to chat.open.com open.com chat.com will
1:39:221 hour, 39 minutes, 22 secondstalk to lm lm will respond in some my back end
1:39:441 hour, 39 minutes, 44 secondsGoogle search oh Google Okay.
1:39:581 hour, 39 minutes, 58 secondsIf you think of the most primitive way to do Google search, what is it? Google, press enter, get the response. That's
1:40:071 hour, 40 minutes, 7 secondsthe most primitive way to do Google search. If there were no providers today, that's how you would do it. So, if this guy tells you to web search, you will actually spawn Chrome over here and do it. That is the most difficult way.
1:40:171 hour, 40 minutes, 17 secondsSo there are APIs you know API which is you know used by Google also. Google also huh
1:40:261 hour, 40 minutes, 26 secondsall of these are search APIs everyone uses them that will be here in my back end.
1:40:361 hour, 40 minutes, 36 secondsOh, you're saying back end is open. Anyone can hit a request to my back end.
1:40:471 hour, 40 minutes, 47 secondsOkay. What you're saying is okay you understand this is on my AWS server whatever is inside here.
1:41:001 hour, 41 minutesOkay. Hold on. Hold on. You have installed open code. Open code back.
1:41:071 hour, 41 minutes, 7 secondsLet's take a different example. Let's say you you go to opencode.com which is a website. You clear you go to open code.com. You search for what is the
1:41:151 hour, 41 minutes, 15 secondsweather here. Request goes to this back end. LM tells do a web search. This guy does a web search. Let's say talks back
1:41:231 hour, 41 minutes, 23 secondsto the LM. Get the response. Returns over here. What is the problem in this approach? How is this problematic?
1:41:291 hour, 41 minutes, 29 secondsseparate of course is open source and
1:41:401 hour, 41 minutes, 40 secondsyou'll put your correct if you're running it locally of course GitHub let's say open code was a
1:41:481 hour, 41 minutes, 48 secondswebsite that looked like this on their GitHub they will not have a tavly API they'll just have avagample right of course do you Understand? Cool.
1:41:591 hour, 41 minutes, 59 secondsUm, what is this chat back exactly? I thought we were directly conversing with the LLM.
1:42:061 hour, 42 minutes, 6 secondsOh, we talked about this like if you directly talk to the LLM to prompt CLM and you can ask make a bomb for me to back tools exposed in our back end.
1:42:171 hour, 42 minutes, 17 secondsWe have tools exposed in our back end.
1:42:191 hour, 42 minutes, 19 secondsThe user does some correct it hits our back end. Correct. We hit the prom directly.
1:42:261 hour, 42 minutes, 26 secondsOkay. When you say we hit the lm, what is the end point you hit? Chat. API.
1:42:321 hour, 42 minutes, 32 secondsAPI. [snorts] Is not an HTTP server here? It is an HTTP server that checks API.
1:42:401 hour, 42 minutes, 40 secondsThere needs to be an authorization layer in the middle before you hit before you hit a database, you do a back end check, right? Before you hit the LM, you do a backend check. can't treat this whole as
1:42:481 hour, 42 minutes, 48 secondsan uh you can I mean technically behind the scenes SI but of course I've just put them separately just to show okay you know LLM responds like this and it's the
1:42:571 hour, 42 minutes, 57 secondsback end's job to convert this to this in the end there are two machines you can think of a single service any more questions
1:43:051 hour, 43 minutes, 5 secondshuh [laughter] cool let me finish this sending in more
1:43:101 hour, 43 minutes, 10 secondsquestions uh all right uh all And you
1:43:181 hour, 43 minutes, 18 secondswhat if there is another tool call from the LM here? You send it a message. It says tool call. You do the tool call.
1:43:241 hour, 43 minutes, 24 secondsYou send it another message. It says for tool call totally possible.
1:43:361 hour, 43 minutes, 36 secondsDo we smell a loop brewing here? Can we now understand what the agent loop is?
1:43:401 hour, 43 minutes, 40 secondsVery simple. You know while there is simple you understand what is an conversation agent and coding agent for a this is open code cursor cloud code
1:43:481 hour, 43 minutes, 48 secondsthis is chat.open.com open.com not much of a difference uh you know agent go ahead cool the agent loop basically
1:43:551 hour, 43 minutes, 55 secondslooks something like this then let tool calls left equal to true while tool calls left initial context that is you
1:44:041 hour, 44 minutes, 4 secondsknow what is the weather in Delhi and in New York you send that message to the lm whatever it responds with you push that
1:44:111 hour, 44 minutes, 11 secondsthrough the context initial message LM response responded with something I add that to the context if there [snorts] is a tool call in the messages that the LM
1:44:201 hour, 44 minutes, 20 secondsgave me. Then I create another tool called results. I go over all of them tool call. I execute that tool call which could be you know if for a weather API call it will be a weather http call.
1:44:311 hour, 44 minutes, 31 secondsIf for a you know read file it will be a fs read file whatever and then I push the results to this tool call results array. to the context I add tool call
1:44:411 hour, 44 minutes, 41 secondsresults and then the while loop continues until you reach a point where the LLM does not respond with a tool call in which case you simply log the final response.
1:44:511 hour, 44 minutes, 51 secondsClear? This is what an agent loop should look like. This is what an agent loop does look like.
1:45:061 hour, 45 minutes, 6 secondsBe cool.
1:45:101 hour, 45 minutes, 10 secondsLet's say you have a continuous what happens at the last if you go to chatgbt.com and keep doing it. Enter enter enter.
1:45:181 hour, 45 minutes, 18 secondsWhat happens when things end?
1:45:221 hour, 45 minutes, 22 secondsCorrect. You do summarization but what else can you do? There's nothing else you can do. If you keep talking to
1:45:301 hour, 45 minutes, 30 secondsan AI, at some point you will reach closer to the context window is when you summarize. That's what everyone does. Um you can do a lot of tricks over there.
1:45:381 hour, 45 minutes, 38 secondsOkay. During summarization malo you were asking the LM to make a few code changes and you know in the first iteration it
1:45:471 hour, 45 minutes, 47 secondsgave you 20 code changes and the context window got filled. 20 code changes context window got filled. Now you want to ask it a follow-up question. Before
1:45:551 hour, 45 minutes, 55 secondsyou ask a follow-up question you have to summarize. You can do a lot of tricks in the summarization. For example, when you summarize those 20 diffs that came, you
1:46:031 hour, 46 minutes, 3 secondscan dump them all into different files and in the new context, you can maintain the name of those files. That way, if
1:46:101 hour, 46 minutes, 10 secondsthe LLM ever wants to come back to or read the existing change that it did, it can. So, there are a lot of tricks you can do using during summarization. Um,
1:46:191 hour, 46 minutes, 19 secondsbut there is nothing else you can do other than summarizing the context and restarting. That's what everyone does. This is the actual agent loop from Pi.
1:46:281 hour, 46 minutes, 28 secondsIf you look at it, it looks very similar. Um, pending messages is, you know, if you press enter while the coding agent is working, you know, which
1:46:351 hour, 46 minutes, 35 secondsmessages pending that need to be steered in the conversation.
1:46:391 hour, 46 minutes, 39 secondsThat's why it's called, you know, get steering messages. So, if you, you know, while it is working, if you press enter, enter, enter, char, they're all called steering messages. It keeps them here in
1:46:461 hour, 46 minutes, 46 secondsmemory. Starts a while loop. Let has more tool calls equal to true. Same thing we wrote over here. And while has
1:46:551 hour, 46 minutes, 55 secondsno tool calls or pending message length is greater than zero tool calls then we will stop this or if there are
1:47:041 hour, 47 minutes, 4 secondsno pending message if the user had pressed enter before there was a steering message then if everything is done add the steering message to the
1:47:111 hour, 47 minutes, 11 secondscontext and continue loop you know this loops keep on continuing where you know it wait if you look at this closer you will see it talks to an agent it gets
1:47:191 hour, 47 minutes, 19 secondsthe response does the tool calls and then continues continues This is a very generic agent loop. It is not a coding agent agent loop. It is a
1:47:281 hour, 47 minutes, 28 secondsgeneric agent loop. On top of this agent loop, there is an agent class. On top of that agent class, there is an agent
1:47:351 hour, 47 minutes, 35 secondsharness. On top of the agent harness, there is a coding agent that they have created. But you can actually on top of the agent harness create a essay writing
1:47:431 hour, 47 minutes, 43 secondsagent you know whatever agent that you can think of. Um so it's written in a very generic way. This run loop agent
1:47:511 hour, 47 minutes, 51 secondsclass that agent class is what is used by claude clawbot or
1:47:581 hour, 47 minutes, 58 secondsopen claw is what is used by open clock because it's such a simple agent class which simply has a run loop function that runs has no dependencies takes a
1:48:071 hour, 48 minutes, 7 secondssystem prompt everything initial context as an input and runs the agent to agent just messages tool calls execute tool
1:48:151 hour, 48 minutes, 15 secondscalls messages tool calls in an infinite loop until you are done with all the tool root calls then there might be more messages. So you just continue the loop
1:48:231 hour, 48 minutes, 23 secondsagain for the second message, continue the loop again for the third message until you reach closer to the context window of this model. Then you summarize everything where you can use a lot of
1:48:311 hour, 48 minutes, 31 secondstricks and then you continue again. That is all that an agent is. This is the best code base to look at if you want to
1:48:381 hour, 48 minutes, 38 secondsjust understand how agents work. What's very simple and it's also not bad. It performs well on the terminal bench.
1:48:461 hour, 48 minutes, 46 secondsOkay. [clears throat] But you have provider APIs as we talked about a while back every L&M has its own
1:48:521 hour, 48 minutes, 52 secondsAPI format and own message or formats of messages tool calls to if you want to create something like
1:48:591 hour, 48 minutes, 59 secondsPI where you're supporting different providers this is a very important layer where you have to spend time compared to if you're building something like cloud code you know you're only talking to
1:49:081 hour, 49 minutes, 8 secondsanthropic models so you don't really have to create an abstraction layer but something like this you have to get a very solid abstraction layer the way pi
1:49:151 hour, 49 minutes, 15 secondsdoes it is It has a bunch of provider files that you know this is how you talk to OpenAI, this is how you talk to Gemini and all the responses that you
1:49:241 hour, 49 minutes, 24 secondsget back get converted into a single format that reaches your agent. So your agent never sees a format your agent
1:49:321 hour, 49 minutes, 32 secondsloop may only a specific format reaches and in follow-up messages you know you do the tool calls that agent loop message is again converted into the
1:49:401 hour, 49 minutes, 40 secondsspecific providers format and then the request is forwarded to the LM. It sort of makes sense. They have a lot of providers. Providers independently and
1:49:481 hour, 49 minutes, 48 secondsanything from this provider layer to the agent layer is converted in specific format. Everything from the agent layer to the provider layer is recon converted back to that specific provider's inputs.
1:49:561 hour, 49 minutes, 56 secondsThat way it's very easy to move from one provider to another because all the chat history has been converted into a specific default format in the agent
1:50:041 hour, 50 minutes, 4 secondslayer. So that if you change the model, you can just take that and you know pass it to the other provider. Gemini API looks like this.
1:50:131 hour, 50 minutes, 13 secondsThis [snorts] is using their SDK. You can also see the rest, you know, HTTP request that goes out. PI just uses these SDKs. So we, you know, feel free to use the SDKs. This is the OpenI SDK.
1:50:221 hour, 50 minutes, 22 secondsThis is the anthropic SDK. Everyone is different. Everyone's inputs are different. Everyone's outputs are different. Um, if you're creating something like PI open code, you need to support multiple models and providers
1:50:291 hour, 50 minutes, 29 secondsand hence related to let us convert messages from one format to a single format.
1:50:351 hour, 50 minutes, 35 secondsThe providers have their own format. So you need to convert their messages into a single format. This is where this providers folder comes into the picture.
1:50:441 hour, 50 minutes, 44 secondsThey have certain providers they support by default. Enthropic is one, Amazon better is one, Cloudflare is one,
1:50:521 hour, 50 minutes, 52 secondsGoogle is one, ML is one, open is one, so on so forth. Um they don't have Devon yet. So what I changed was should
1:50:591 hour, 50 minutes, 59 secondsideally be committed over here. But that this is their core logic. One good thing about PI
1:51:061 hour, 51 minutes, 6 secondsbasics support we support these modules open anthropic Google if you want to add more
1:51:141 hour, 51 minutes, 14 secondsthey have this concept of extensions you can create your own extension which I did um so I did not really commit over here I created my own extension which lets me connect using my Devon
1:51:221 hour, 51 minutes, 22 secondssubscription so even though they don't have a provider for Devon I created my own provider for Devon I added it as an extension and now I'm using it using
1:51:301 hour, 51 minutes, 30 secondsthrough Pi so I can run Pi through Devon right now even Although Pi as a repository does not support uh Devon, if
1:51:371 hour, 51 minutes, 37 secondsI want I can PR my Devon provider here because Devon is now a big company raised a billion dollars you know 3 days ago. Um so there might be some merit to
1:51:451 hour, 51 minutes, 45 secondsme contributing whatever I made over here. There are two types of providers over here. Anyone know what two types?
1:51:531 hour, 51 minutes, 53 secondsProviders oath and API. You can either go to
1:52:021 hour, 52 minutes, 2 secondsplatform.opi.com put in $5 create an API key and use it.
1:52:071 hour, 52 minutes, 7 secondsThat's an API provider. You can buy claude code max plan. You can buy Devon's $200 subscription. You can buy Codeex subscription. then it's an oath
1:52:161 hour, 52 minutes, 16 secondsprovider which basically means you don't have an API key. You gave OpenAI $200, they gave you $2,000 worth of credits
1:52:241 hour, 52 minutes, 24 secondsand all of the threads are tied to your account. You can't create API keys for it and hence you have to create an oath provider which basically means you have to which headers based up when you talk
1:52:321 hour, 52 minutes, 32 secondsto their back end compared to an API key. Um Devon similar I have their $200 subscription and hence I had to create an oath provider for them and not an API
1:52:401 hour, 52 minutes, 40 secondsprovider doesn't devi u pi is the most minimal coding harness
1:52:491 hour, 52 minutes, 49 secondswhich is why I keep on saying in two days I was able to understand most of it most simplest thing
1:52:551 hour, 52 minutes, 55 secondsif you look at a codeex or a code honestly I wasn't able to understand even claw code even though it's written in typescript and even codeex this is
1:53:031 hour, 53 minutes, 3 secondslike a two-day to understand how they work under the hood because the number of lines of code they also perform well on the terminal bench
1:53:111 hour, 53 minutes, 11 secondscodeex warp some I don't know what this is I agent codeex CLI terminus and then pi so it's like sixth on the terminal
1:53:191 hour, 53 minutes, 19 secondsbench so it's not like it's a bad agent um it's just very less lines of code this is a very nice video that you can go through this guy explains everything
1:53:281 hour, 53 minutes, 28 secondsbefore you probably you know want to dive [clears throat] into the codebase but high level it only has four packages it is you know whatever a turbo repo which has simply has four modules. All
1:53:371 hour, 53 minutes, 37 secondsthe AI logic over here that includes the providers and you know converting talking to them into a specific format.
1:53:441 hour, 53 minutes, 44 secondsan agent which is a more generic agent and an agent harness that can be used as a coding agent also that can be used as an SRT agent also that can be used as
1:53:511 hour, 53 minutes, 51 secondsthe agent layer for open claw also the coding agent which is the actual coding agent logic you know system prompt says
1:53:591 hour, 53 minutes, 59 secondscoding agent here tools are defined read file write file are the tools you have access to and lastly the terminal UI which is a as the name suggests a UI in
1:54:081 hour, 54 minutes, 8 secondsthe terminal so that you see everything in a pretty fashion that is it the TUI is less than 800 lines of code of thing I have not explored the TUI I've
1:54:151 hour, 54 minutes, 15 secondsexplored everything else a provider if you're able to read through one provider file if you're able to read through the agent.ts ts agenth harness.ts Yes s
1:54:231 hour, 54 minutes, 23 secondsmostly you are sorted about if you want you can read the coding agent but that's just you know using agent harness class and passing it some tools and system
1:54:321 hour, 54 minutes, 32 secondscall so it's a very nice u it's abstracted very well okay building a coding coding agent on top of this or building a essay writing agent on top of
1:54:401 hour, 54 minutes, 40 secondsthis is very easy it's so good open claw also move to their agent that's it that's all I had any more questions
1:54:481 hour, 54 minutes, 48 secondslike uh we are having to back and we are hitting their back end and it will hit L.
1:54:561 hour, 54 minutes, 56 secondsOne more time.
1:54:571 hour, 54 minutes, 57 secondsWe are having tools defined in our back end. We have logic of our tools in our back end. From there we are hitting for open code or generally generally
1:55:051 hour, 55 minutes, 5 secondsgenerally yes if you okay continue we hit their back end and they back lm correct.
1:55:101 hour, 55 minutes, 10 secondsNow uh I have three to four tools but I don't have web search.
1:55:151 hour, 55 minutes, 15 secondsOkay. Now I will hit their back end and it will get LM and it will tell uh tool call
1:55:221 hour, 55 minutes, 22 secondstool call. Now that back end will add their own tools also to my tools.
1:55:271 hour, 55 minutes, 27 secondsWait, that's what I said. If you are using their API, I don't think they support that. I don't think chat GPT supports. I already have five different tools here. I will let you use my tools.
1:55:351 hour, 55 minutes, 35 secondsI don't think so. You give it five tools. This guy can use those five tools. It will never give you web
1:55:421 hour, 55 minutes, 42 secondssearch. It'll never do a web search because you never told it I support web search. It will not automatically do some default chat GPT functions. Only
1:55:511 hour, 55 minutes, 51 secondsthe functions you give access to are the functions that it's going to call. I don't think there's a way to use default chatgpt tools from here. If you're using
1:55:581 hour, 55 minutes, 58 secondsthe API, I think that's all implemented on the chat layer.
1:56:071 hour, 56 minutes, 7 secondsH system
1:56:171 hour, 56 minutes, 17 secondsbefore the request reaches the server system prom there's a date that you just inject you know something
1:56:261 hour, 56 minutes, 26 secondsno it's not like the llm asks to do a tool call it is generally when I on the chat GPD UI I talk to I I ask a question it tends to add a few things about me.
1:56:371 hour, 56 minutes, 37 secondsOkay, this is he. He's a YouTuber memory over the last few years. He's a YouTuber. Seems like he does coding. He
1:56:441 hour, 56 minutes, 44 secondslikes doing Rust. For example, recently I asked my chat GPT, you know, something around multi- threading and it automatically gave multi- threading is a very common use case for order books.
1:56:591 hour, 56 minutes, 59 secondsIn some file, you can always export your memory file and see it. It has a very big memory file of daily records of you.
1:57:041 hour, 57 minutes, 4 secondson 23rd March was talking about order books that memory file also gets injected to the system prompt the current date also gets injected to the system prompt my name also gets injected
1:57:121 hour, 57 minutes, 12 secondsto the system prompt it's not a tool call it is just you know a lot of the system prompt being enriched so that the LM can
1:57:191 hour, 57 minutes, 19 secondsmulti it told me multi- threading it also told me about order books it's a very common use case it remembers from 2 days ago how is that it just keeps
1:57:271 hour, 57 minutes, 27 secondsinjecting those things to the system cloud including the date is always injected everywhere so it knows it's been 6 months since I string something like that.
1:57:361 hour, 57 minutes, 36 secondsAny more questions? I don't think so. Depends.
1:57:491 hour, 57 minutes, 49 secondsIt's easier to go to. It's hard. Google Cloud is very hard to navigate. But if you spend some time, create a new email, put in a,000 rupees in it, they give you
1:57:561 hour, 57 minutes, 56 seconds23,000 rupees worth of credits. Use that. That's the everyone to spend a,000 bucks and get a Gemini API. API more questions.
1:58:091 hour, 58 minutes, 9 secondsWhat you should build by Thursday is a great question and the answer is the agent loop. I would say yes. Uh you can
1:58:171 hour, 58 minutes, 17 secondsread Py code base and be like but independently
1:58:241 hour, 58 minutes, 24 secondsyou know I assumed I will use only one provider Gemini. So I did not write any um any provider abstraction logic you
1:58:331 hour, 58 minutes, 33 secondsknow I create a separate provider for open separate for Gemini I created a single provider but if you look at it
1:58:411 hour, 58 minutes, 41 secondsthe agent loop here I sort of oh no this is not that this is the pi codebase what I've been doing is going through the pi codebase and
1:58:501 hour, 58 minutes, 50 secondssort of creating my own simple agent for now so if you look at this full agent that I've created The interfaces that
1:58:581 hour, 58 minutes, 58 secondsyou see over here are all sort of inspired from them are you know these are the kind of messages and I do I I sort of add them here. Um and you know
1:59:071 hour, 59 minutes, 7 secondsthis whole logic that you see over here is sort of inspired from their Google provider. So if you open uh
1:59:161 hour, 59 minutes, 16 secondsGoogle.ts TS this has you know how they talk to Google you say a lot of inspired a lot of my provider which is you know
1:59:231 hour, 59 minutes, 23 secondsthis generate content stream function I also use their provider also uses this thing right here so I figure out how do they send parameters I try to send you
1:59:311 hour, 59 minutes, 31 secondsknow similar parameters over here then as it responds back uh you know I generate everything and return this
1:59:391 hour, 59 minutes, 39 secondsstream function that I have created is very close to the stream function that their provider has they have a stream Google function I try to create a similar stream Google response function.
1:59:491 hour, 59 minutes, 49 secondsThey have an agent loop in agent.ts or this agent loop.ts the thing that I was just showing a while back. I you
1:59:571 hour, 59 minutes, 57 secondsknow put a bunch of debug statements here to understand what exactly are they doing? What are the inputs? What are the outputs and try to basically create a
2:00:052 hours, 5 secondssimilar infinite agent sorry a similar loop which is you know this thing right here has more tool calls equal to true.
2:00:132 hours, 13 secondsA while loop while has no tool calls you know send a message whatever and you know if it is a text block simply add it. If it is non text block then you
2:00:212 hours, 21 secondsknow uh push it model parts may keep putting the text and the and the tool calls. If
2:00:292 hours, 29 seconds[snorts]
2:00:302 hours, 30 secondsmodel zero uh if there is some response that comes push it to the context. If tool calls on length is greater than zero then actually execute the tool
2:00:382 hours, 38 secondscalls. I only support one tool call right now. Get weather do the tool call push that to tool results array push that to the context continue has no more
2:00:462 hours, 46 secondstool calls equal to tool length is greater than zero loop until there are no more tool calls to execute so if I do a bun index.ts ts
2:00:552 hours, 55 secondshere and you'll see does two tool calls and I ask it what is the weather in New York in Chicago something like that and it
2:01:032 hours, 1 minute, 3 secondsdoesn't work I would assume API or something like that um but ideally I would expect you know the question that I have asked it
2:01:122 hours, 1 minute, 12 secondsis uh who are you and what is the weather in Chicago and New Jersey and New Delhi please do tool call sequentially so I
2:01:192 hours, 1 minute, 19 secondswas trying to see okay you know can I run the loop more than once asked me to do one tool call then I give it a response and asked me to do another tool called code call and you know I saw
2:01:272 hours, 1 minute, 27 secondsthe while loop run twice I don't know why it's not working right now but you get the idea if you want I understand this codebase but long story short what I've been doing is just to understand their codebase trying to replicate a
2:01:352 hours, 1 minute, 35 secondssmall version of it and then you know going from there um would be nice if you can create you know basically at this point you should be if you understand
2:01:422 hours, 1 minute, 42 secondsthis while loop you know you should be able to create a very minimal version of pi which basically means if I go to a folder and write something like this bun
2:01:512 hours, 1 minute, 51 secondsindex.ts TS can you uh authentication
2:01:582 hours, 1 minute, 58 secondsto use uh cookies of uh you know what are
2:02:052 hours, 2 minutes, 5 secondsheaders something like this if I one thing that
2:02:122 hours, 2 minutes, 12 secondswould be nice to finish before Thursday um would be an index.ts ts file that
2:02:202 hours, 2 minutes, 20 secondstakes such a query as an input. Index.ts has four tools uh read file tool bash tool uh write file tool or call whatever
2:02:282 hours, 2 minutes, 28 secondsthe pi agent has and you give it such a query and the tool calls are able to read the files explore the codebase
2:02:352 hours, 2 minutes, 35 secondswrite to the files make the changes um and the change that you get is actually exactly the same as the change that the pi agent would get
2:02:442 hours, 2 minutes, 44 secondsright ideally the output that comes to you should be the same as If I open pi
2:02:512 hours, 2 minutes, 51 secondsor you know whatever u if I run this uh inside the other folder
2:03:022 hours, 3 minutes, 2 secondsand give it the same input the output that would have come from the lm the changes that would have been made should
2:03:092 hours, 3 minutes, 9 secondsbe the same as the changes that are made by my agent. So that is the that is a good thing to finish by the end and again special that is the best part
2:03:182 hours, 3 minutes, 18 secondsabout pi it's a very simple thing that they're doing their agent loop is already over here I just have to add four tools and then you know I'm compatible with pi in terms of the
2:03:262 hours, 3 minutes, 26 secondsfeatures they provide now of course they support multiple providers I don't they have a terminal UI those are next steps step one is just finishing the agent
2:03:342 hours, 3 minutes, 34 secondsloop so that it works on par with them so that if you benchmark you your agent loop and their agent loop performs the same um then step two can be all the
2:03:412 hours, 3 minutes, 41 secondsjazz around it which is simple stuff, full stack stuff. Only thing is you're not building a React website. You're building a terminal UI.
2:03:472 hours, 3 minutes, 47 secondsUm the harder part is or you know the alpha part you know I I have been able to create my coding agent is less than 200 lines of
2:03:552 hours, 3 minutes, 55 secondscode of this agent loop. That's it. Um if you're building pi now if you're building cloud code they do a lot of things. They do memory pi doesn't do
2:04:022 hours, 4 minutes, 2 secondsmemory. They do multi-agent orchestration. Pi doesn't do multi-agent orchestration. If you look at his video, you will see he has very strong opinions
2:04:092 hours, 4 minutes, 9 secondsabout simpleach. You don't need such complicated harnesses like a cloud code.
2:04:142 hours, 4 minutes, 14 secondsUm so those are different discussions we can get into. But this performs at par with cloud code if it uses the same model as cloud code. Um and you know
2:04:232 hours, 4 minutes, 23 secondsyour goals before Thursday would be nice to finish this and then on Thursday we can discuss actually dive into the code base of K.
2:04:312 hours, 4 minutes, 31 secondsWhat was that?
2:04:322 hours, 4 minutes, 32 secondsPS are running here. Assume we have a query and LM run for 2 hours and in LM
2:04:402 hours, 4 minutes, 40 secondsstarts or it goes down but you are doing the four tool calls it
2:04:512 hours, 4 minutes, 51 secondscomes third
2:05:002 hours, 5 minutesokay didn't respond back so I will get this this request will fail like if the LM is down while Y loop
2:05:082 hours, 5 minutes, 8 secondssecond thing happened third happened this will throw an error I'll come out of the Y loop do you sorry sorry sorry sorry huh
2:05:142 hours, 5 minutes, 14 secondsexactly this is the Y loop right if the element is down this function will fail this will throw an error
2:05:232 hours, 5 minutes, 23 secondshuh you'll get some 500 some status code you'll get right whenever you get a bad status code this this will just throw an error you can add a Time out, right?
2:05:352 hours, 5 minutes, 35 secondsWe're streaming the response. If you don't get the first token by 20 seconds, assume the is down. Time out the user.
2:05:422 hours, 5 minutes, 42 secondsMore questions.
2:05:542 hours, 5 minutes, 54 secondsYou're saying if you're huh? We're just trying to built from scratch.
2:05:592 hours, 5 minutes, 59 secondsEffectively the thing that we're trying to build is this agent class which langraph exports in the end what we're
2:06:082 hours, 6 minutes, 8 secondstrying to create is let's say this agent harness or there's another class called agent here
2:06:152 hours, 6 minutes, 15 secondsa class lang simply exports this if you use langraph all of that complexity is hidden from you if you don't use langraph you build all of this yourself
2:06:242 hours, 6 minutes, 24 secondsmost companies would expect you to build it yourself you know think of any they say company you know any coding assistant company most will build these
2:06:312 hours, 6 minutes, 31 secondsfrom scratch the only reason for marketing okay you know they change things very quickly most times backward compatible but you know they only had
2:06:392 hours, 6 minutes, 39 secondslang now they have languages and it's not as difficult a challenge to build a while loop right everyone just owns the
2:06:462 hours, 6 minutes, 46 secondsorchestration layer when we say orchestration layer we just mean this while loop that's it when we mean agent we just mean this while loop
2:06:562 hours, 6 minutes, 56 secondslike tools like
2:07:072 hours, 7 minutes, 7 secondscorrect in our agent in Yes.
2:07:152 hours, 7 minutes, 15 secondsThis is a screenshot from running terminal bench locally on this guy's laptop where he saw amongst the
2:07:232 hours, 7 minutes, 23 secondsperformance of everything the accuracy of everything PI accuracy was 51.2%.
2:07:282 hours, 7 minutes, 28 secondsAnd hence PI is number six on the leaderboard.
2:07:432 hours, 7 minutes, 43 secondsYou mean coding agent SDKs? Oh, you mean open this thing? There's no difference. You
2:07:512 hours, 7 minutes, 51 secondscan do the HTTP call if yourself if you want. The problem is you will get back an event stream event stream. Your HTTP request will get
2:07:582 hours, 7 minutes, 58 secondsupgraded to an event stream. You have to write the logic to you know read message by message, bite by bite from the event stream, convert the bite into string,
2:08:062 hours, 8 minutes, 6 secondspass the string into JSON and then do your things. If you use these guys it becomes you know slightly simpler. You
2:08:132 hours, 8 minutes, 13 secondsall you have to do is this for constate event stream communication is the wrong term for it.
2:08:222 hours, 8 minutes, 22 secondsIt is another wrapper on top of the communication. You can write axios.geti.jemini.com
2:08:302 hours, 8 minutes, 30 secondsor you can call this function is function there is api.get you know fetch or axios.geti
2:08:362 hours, 8 minutes, 36 secondsthat's it. Let's start with Pi. I mean, huh? But Pi is
2:08:452 hours, 8 minutes, 45 secondsthe same thing, right? If you see this, every coding agent is what? Um, an agent layer and a terminal UI. This is what PI
2:08:522 hours, 8 minutes, 52 secondsis. Does the same thing. It has it doesn't have memory. It doesn't have multi-agent orchestration. That's it.
2:09:012 hours, 9 minutes, 1 secondIt's a very simple and primitive first principles coding agent. Cloud code has five different things on top. If we can get there, we'll start here.
2:09:162 hours, 9 minutes, 16 secondsGoogle cloud same. If you if you register on Google cloud, you can create an API key.
2:09:232 hours, 9 minutes, 23 secondsCloud.goo.com, you can create an API key. It's the same thing. It's part of Google Cloud offering. Gemini API is part of Google Cloud offering. If you
2:09:302 hours, 9 minutes, 30 secondsput
2:09:472 hours, 9 minutes, 47 secondsAs soon as you do that, you'll get $300 worth of credits. Pay as you go is going to get cut from your credits.
2:09:562 hours, 9 minutes, 56 secondsGoogle the free API key will rate limit you very quickly. P you'll send five messages, it will stop.
2:10:162 hours, 10 minutes, 16 secondsYou have to put US dollar amounts.
2:10:172 hours, 10 minutes, 17 secondsGemini may UPI you can UPI that's the only reason that's the only reason
2:10:282 hours, 10 minutes, 28 secondsdepends on the model right of course different every model for the same query will respond separately that is why there's this you know you can select a
2:10:362 hours, 10 minutes, 36 secondsmodel based on your task I might need a sweet fast if it's a small task I might need you know cloudopus 5.7 high if it's
2:10:442 hours, 10 minutes, 44 secondsa tough task you know that's the whole point of using Different models for different tasks.
2:11:052 hours, 11 minutes, 5 secondsdepends. That's a good question. Um, number one, you hope your users user prompt answer. The better the prompt,
2:11:122 hours, 11 minutes, 12 secondsthe better the response. Now, if the user is not technical, all he sees is login is not working. He will write that. If someone is technical, he will
2:11:192 hours, 11 minutes, 19 secondswrite authentication seems to have a problem with cookies. Let's move to headers. Let's say you have a dumb user. So, dumb user will write sign in page.
2:11:262 hours, 11 minutes, 26 secondsEnter. And you know now from that you need to figure out okay probably authentication is wrong. So you'll search through the code base for author.ts authentication.ts user.ts
2:11:352 hours, 11 minutes, 35 secondsyou'll find the files you read the files and you'll go from there. Um wait that depends on how good your model is.
2:11:402 hours, 11 minutes, 40 secondsModels are so now you give them a vague problem statement they'll able to they'll be able to figure out something like this. For a more complex issue the
2:11:472 hours, 11 minutes, 47 secondsbetter you explain the better output you will get. Of course for a very complex issue if you say not working please fix it don't make any mistakes at some point it'll you know
2:11:562 hours, 11 minutes, 56 secondsit'll try its best but at some point even you use cloud code today and give
2:12:042 hours, 12 minutes, 4 secondsit a dumb question there's a high probability right more questions question
2:12:122 hours, 12 minutes, 12 secondsdo you guys see we are doing a lot of message back and forth which basically
2:12:192 hours, 12 minutes, 19 secondsmean uh means you know I'm talking to the back end talking to the LLM getting a message doing five tool calls then
2:12:262 hours, 12 minutes, 26 secondssending five messages this time it returned me 10 10 more tool calls doing 10 tool calls returning 15 messages now it returned me five more tool calls 20
2:12:352 hours, 12 minutes, 35 secondsmessages now so don't you
2:12:522 hours, 12 minutes, 52 secondsyou have to unfortunately send the full context again. There's no way around that context. So you know if your context has
2:13:002 hours, 13 minutesbecome 50 messages now one message five tool calls five tool call responses next message 20 tool calls 20 tool call me
2:13:082 hours, 13 minutes, 8 secondsresponses and then one more message I sent one message it said tool call I
2:13:152 hours, 13 minutes, 15 secondsdid five tool calls I sent one message five tool calls five tool call responses one message five tool call five tool call responses message it sent 10 more
2:13:242 hours, 13 minutes, 24 secondstool calls I did the 10 tool calls I sent one message five tool call five tool responses 10 responses over time
2:13:342 hours, 13 minutes, 34 secondsresponse I'm just getting the next thing response I'm not getting the whole thing back just the next thing question is an
2:13:402 hours, 13 minutes, 40 secondsoptimal you know is such a heavy task and you give it
2:13:482 hours, 13 minutes, 48 secondsyou give it and then one more thing and then you know [snorts]
2:13:552 hours, 13 minutes, 55 secondsone more thing It is trying to arrive at that answer.
2:14:092 hours, 14 minutes, 9 secondsIt is a complex task. You give it cash.
2:14:202 hours, 14 minutes, 20 secondsHuh? What is KV cash?
2:14:232 hours, 14 minutes, 23 secondsIt's like three things like key value key value and query.
2:14:312 hours, 14 minutes, 31 secondsSo they try to promatic. Yes.
2:14:422 hours, 14 minutes, 42 secondsBut what is exactly? You can set cache to true. What long story short what happens is if you are sending follow-up messages and if you have set cache to true all the computation that was done
2:14:512 hours, 14 minutes, 51 secondsfor your first 50 messages doesn't happen again. 51st message computation happens. If this has already done 50
2:15:002 hours, 15 minutesmessages and responded with a tool call, you done a tool call response and return back.
2:15:082 hours, 15 minutes, 8 secondsDuring the computation, it calculates two matrices very heavily which is a very expensive part. Key and value matrices and then it responds back to you.
2:15:302 hours, 15 minutes, 30 secondsThese are all stateless, right? Backends are meant to be stateless data data. You never store data on the back end, right?
2:15:362 hours, 15 minutes, 36 secondsOr any storage on the back end. Back end can crash.
2:15:392 hours, 15 minutes, 39 secondsSo if it sent a request to reach the LM, we can keep the KV cache alive here.
2:15:452 hours, 15 minutes, 45 secondsHere you know I have done five messages from the user.
2:15:502 hours, 15 minutes, 50 secondslet me just keep them here and respond back. But then you have to ensure if it reaches a different server then of course it is going to be lost.
2:16:112 hours, 16 minutes, 11 secondsExactly. They return you signatures whenever it sends you a message returns you a hash. That is how at least Gemini
2:16:192 hours, 16 minutes, 19 secondsdoes it. It returns you a hash and when you send followup questions you send that hash along
2:16:272 hours, 16 minutes, 27 secondscomputation. Let me just get all the data from there and do the new things on top.
2:16:322 hours, 16 minutes, 32 secondsOne thing is KV cache if you have a single model it'll just retain it and you know then it can just keep checking us but the problem becomes when you have
2:16:402 hours, 16 minutes, 40 secondsdistributed LM you don't have one LM but multiple LMS but they all need to have access to some KV cache store so that whenever a request comes and reaches a
2:16:492 hours, 16 minutes, 49 secondsnew model unless the first 50 messages were already computed for it needs to get the KV cache from there and then
2:16:552 hours, 16 minutes, 55 secondsstart computing the 51st messageerver
2:17:092 hours, 17 minutes, 9 secondsmemory memory. KV cache is stored in memory.
2:17:152 hours, 17 minutes, 15 secondsWhen the loop runs that is constantly calculating token token token if you give it a query like this what is the
2:17:222 hours, 17 minutes, 22 secondsweather in Delhi it first takes all of this converts it into matrices embeddings
2:17:302 hours, 17 minutes, 30 secondstakes those embeddings passes it through the first layer of the transformer the attention layer
2:17:392 hours, 17 minutes, 39 secondsthat means a 32 core machine token parc then it calculates the K and the V and the Q vector
2:17:492 hours, 17 minutes, 49 secondsOnce it out the next word, next time again the input is what is the weather in Delhi or response. Hiut.
2:18:072 hours, 18 minutes, 7 secondsBut of course it doesn't start from scratch in memory. Now it's its responsibility
2:18:162 hours, 18 minutes, 16 secondsto maintain that over time. If your end user is going to send you repeated conversations, that is an infrastructure challenge in itself.
2:18:362 hours, 18 minutes, 36 secondsruns on a very big machine.
2:18:452 hours, 18 minutes, 45 secondsDB conversation history. The final output final output.
2:19:062 hours, 19 minutes, 6 secondsIf I resend it, there will be multiple backends, right? I said today chat.open.com API. Open.com is not one platform. API.razer.com is not one
2:19:152 hours, 19 minutes, 15 secondsserver. It's hundreds of servers. If five go down, 95 are still working. I send the first request. If you store KV cache here, one, your back end memory
2:19:232 hours, 19 minutes, 23 secondsneeds to be huge or storage needs to be huge. This is a very big machine. memory
2:19:362 hours, 19 minutes, 36 secondsa simple backend stateless server whose job was just talk to the LM return and respond back now becomes a much bigger backend server. Number two, if it does
2:19:442 hours, 19 minutes, 44 secondscrash, the user can still talk to the other server, right? But data store,
2:19:522 hours, 19 minutes, 52 secondsthird service, you have hundreds of thousands of LLM machines. Someone sends you a request, it calculates and dumps the KV cache
2:19:592 hours, 19 minutes, 59 secondssomewhere. In the future, a request comes, reaches another LM, it realizes this is a repeated request. It's hashite matches somewhere, it gets the KV cache from there and continues.
2:20:272 hours, 20 minutes, 27 secondsyou buy it's just a big machine that's allp the problem is procuring that infrastructure
2:20:362 hours, 20 minutes, 36 secondsbecause it's very expensive other than that it's just a model that's running there a lot of them a lot of good models are open source a lot of good big models are also open source. The problem is
2:20:432 hours, 20 minutes, 43 secondsthey don't work on my Mac machine. You need an Nvidia, you know, GPU which is very you have to procure governments have
2:20:512 hours, 20 minutes, 51 secondspower to you know they have all the power right now. Everyone wants that hardware.
2:20:592 hours, 20 minutes, 59 seconds[snorts]
2:21:002 hours, 21 minutesThis one
2:21:202 hours, 21 minutes, 20 secondsyou are not wrong.
2:21:232 hours, 21 minutes, 23 secondsComputation might be parallel. But you honest answer I can only guess here. If your LLM is actually 10 different
2:21:302 hours, 21 minutes, 30 secondsmachines to how is the KV cache distributed amongst those 10 machines I have no idea I think
2:21:382 hours, 21 minutes, 38 secondsprobably I would assume something like that I would assume okay the 10 shards are behaving like a single machine and that's how it happens but Google it
2:21:452 hours, 21 minutes, 45 secondsbasically I don't know the answer so I would not comment you don't need to know you as The
2:21:562 hours, 21 minutes, 56 secondsapplication developer need to know I need to set cache equal to true and I need to one more very important thing
2:22:042 hours, 22 minutes, 4 secondslatest 10 messages based oh so if you send only the latest 10 messages
2:22:122 hours, 22 minutes, 12 secondsis based on a hash from top to end
2:22:212 hours, 22 minutes, 21 secondsyou know Open code talk you get the idea YouTube video I don't
2:22:302 hours, 22 minutes, 30 secondsknow where it went but if you go to YouTube video it tells this only open code there open code may logic at some point it you
2:22:392 hours, 22 minutes, 39 secondsknow removes the last 10 messages or you know only retains the the latest 50 messages and he was saying he asked the audience okay do you understand what the problem is and the
2:22:472 hours, 22 minutes, 47 secondsanswer is yes KV cash breaks the cache breaks if you start to remove the initial message so you don't do
2:22:542 hours, 22 minutes, 54 secondssystem 40,
2:23:082 hours, 23 minutes, 8 secondsyou could do that. Generally, if there is a lot of back and forth happening between this and this, it is trying to build up to something. Don't interrupt
2:23:162 hours, 23 minutes, 16 secondsit. Don't The way most coding do is until let's
2:23:262 hours, 23 minutes, 26 secondssay the context window is a million as you start to reach closer to the context window it summarize once it does not
2:23:422 hours, 23 minutes, 42 secondsthere is no optimistic way to do it right now everyone does it when you're reaching closer to the end of the window that is it there is No random there's no logic that you apply. This seems like
2:23:512 hours, 23 minutes, 51 secondsthe right time to summarize. When the context is reaching the context window say 20% you summarize. Simple as that.
2:24:162 hours, 24 minutes, 16 secondsYou meant you set cash to true. You ensure 50 set of messages led to a hash store.
2:24:272 hours, 24 minutes, 27 secondsIf you change one of the messages, if you try to remove one cash, the cache is based on these inputs led
2:24:362 hours, 24 minutes, 36 secondsto these outputs. beats money cash money. If you change the input a little bit, the cash breaks. Hence, if you have a conversation history, retain it.
2:24:482 hours, 24 minutes, 48 secondsThe KV cash will break you. You are basically sending all that input. Again, your input token cost goes up, your output token cost goes up.
2:24:582 hours, 24 minutes, 58 secondsEverything inputs outputs response. It's a very big text message in the end which after few
2:25:052 hours, 25 minutes, 5 secondsiterations is user assistant tool call response. User assistant tool call response. User assistant tool call response.
2:25:132 hours, 25 minutes, 13 secondsNext whatever it is generating output cost you are paying everything else is cash.
2:25:252 hours, 25 minutes, 25 secondsI don't think it optimistically might eat it at some point. I don't know what the answer is. You never have to tell it.
2:25:322 hours, 25 minutes, 32 secondscash like every Monday I don't know what is that logic for KV caches do they maintain it u
2:25:402 hours, 25 minutes, 40 secondshuh for that's a different c it's like even though it's called cache is very different from you know any normal cache um so I don't know if they retain it in
2:25:482 hours, 25 minutes, 48 secondsindefinitely a mid website a chat if I make a chat UI today and my users are coming today messaging and sleeping and then tomorrow morning waking up and remsing I would
2:25:562 hours, 25 minutes, 56 secondswant them to retain my cash I don't think you know it is humanly possible possible for them to retain the KV cache for all the conversations that
2:26:042 hours, 26 minutes, 4 secondshas happened. So at some point they probably expire it but you as the user don't have to tell they're not charging you for retaining your cash.
2:26:152 hours, 26 minutes, 15 secondsIt returns the There we go. For Gemini it returns you the time stamp also conversation money it KV cash will get expired at this point. If you message
2:26:232 hours, 26 minutes, 23 secondsafter that your input token output token cost will increase.
2:26:322 hours, 26 minutes, 32 seconds[clears throat]
2:26:332 hours, 26 minutes, 33 secondsprocess not just it creates a lot of matrices matrices
2:26:432 hours, 26 minutes, 43 secondsmatrices not the solution solution is just a token right
2:26:552 hours, 26 minutes, 55 secondsthe thing about LMS is you know when So when you send it an input like
2:27:022 hours, 27 minutes, 2 secondsgod damn it uh one second there you go when you send it
2:27:092 hours, 27 minutes, 9 secondsan input like uh this pura text gets converted to a lot of
2:27:152 hours, 27 minutes, 15 secondsvectors go through the lm kv b token sure then you take this pura text add
2:27:252 hours, 27 minutes, 25 secondssure to the end and send it Yeah.
2:27:302 hours, 27 minutes, 30 seconds30 messages come and then 50 messages go and then 100 me already 100 words go 101 first word 101 words go second word 102 words go.
2:27:442 hours, 27 minutes, 44 secondsYou know in the normal transform architecture you have to send these inputs again and again you know
2:27:552 hours, 27 minutes, 55 secondsunless KV cache was introduced that is why initial models did not have it very simple thing someone introduce KV cash now all models have KV cache okay
2:28:042 hours, 28 minutes, 4 secondsthat is what the transform architecture expects but matrices whatever Kash matain.
2:28:162 hours, 28 minutes, 16 secondsWhen you write transformers yourself, you have the option of doing both.
2:28:212 hours, 28 minutes, 21 secondsHe has first plot it like this and then introduced. So we should c this specific thing.
2:28:322 hours, 28 minutes, 32 secondsIt's always nonistic. It is also automatically correcting.
2:28:432 hours, 28 minutes, 43 secondsThere are certain inputs that is nondeterministic. Could have been sure could have been absolutely could have been done.
2:28:542 hours, 28 minutes, 54 secondsWord nondeterministic. But y or y is a new chat input that has become deterministic input.
2:29:042 hours, 29 minutes, 4 secondsThat will be nondeterministic then it is deterministic.
2:29:172 hours, 29 minutes, 17 secondsYes, is from what I assumed based on this thing called a signature.
2:29:212 hours, 29 minutes, 21 secondsI think I could be wrong
2:29:322 hours, 29 minutes, 32 secondsyou know that's why I said video the video that I was showing the maintain of Pi says this only what open code does is at some point prunes the initial
2:29:402 hours, 29 minutes, 40 secondsmessages and if you do that your cash breaks Cash
2:29:562 hours, 29 minutes, 56 secondscomputation again
2:30:072 hours, 30 minutes, 7 secondsan LLM with or without KBCash will produce the same output. Without KB cache, it will take slightly longer.
2:30:142 hours, 30 minutes, 14 secondsWith KVach it'll be slightly faster output same. So what does it save you?
2:30:182 hours, 30 minutes, 18 secondsIt saves you computation here for the end user. What does it save you? It saves you input token cost. When you talk to an LLM you pay per input token
2:30:262 hours, 30 minutes, 26 secondsper output token token next right.
2:30:352 hours, 30 minutes, 35 secondsThat is what KV does. Summarization is something completely different. Right?
2:30:402 hours, 30 minutes, 40 secondsOkay, you know it generates something and at some point the message has become so big.
2:30:482 hours, 30 minutes, 48 secondsHence you summarize the whole thing and continue.
2:31:042 hours, 31 minutes, 4 secondsWon't it be better?
2:31:182 hours, 31 minutes, 18 secondsI get it. You said why not use a small agent that only understands touch anyone want to answer or anyone
2:31:252 hours, 31 minutes, 25 secondsquestion is what is the point of using claude opus 4.5 that is so expensive why not use a smaller model that only
2:31:322 hours, 31 minutes, 32 secondsunderstands English and typescript
2:31:462 hours, 31 minutes, 46 secondssort of in the right Huh?
2:31:522 hours, 31 minutes, 52 secondsNo, it is it is trained a lot on Typescript.
2:31:542 hours, 31 minutes, 54 secondsIn fact, Typescript knowledge is better than cloud opus 4.5 tool. It is also trained on tool calls.
2:32:012 hours, 32 minutes, 1 secondIt is trained on tool calls. It is trained on Typescript is trained on English
2:32:082 hours, 32 minutes, 8 secondscomes here. Agreed. But you know you do you really need these many parameters for a TypeScript project? GBT 5.5 4.5.
2:32:212 hours, 32 minutes, 21 secondsIt has Spanish knowledge. It has knowledge about cows and geography. You don't need that for a coding agent. Why not build a smaller coding agent that only knows TypeScript and English?
2:32:302 hours, 32 minutes, 30 secondsSpecific requirement.
2:32:332 hours, 32 minutes, 33 secondsBut okay, but should that model be what he mentioned? types and English.
2:32:402 hours, 32 minutes, 40 secondsThe answer is
2:32:522 hours, 32 minutes, 52 secondsrelated. That is one thing but you know you assume let's say the questions are all typescript related you know the queries are all typescript related
2:33:042 hours, 33 minutes, 4 secondsgenerally if you do make a coding model and everyone makes coding models if you look at this you know u it says sui 1.6
2:33:122 hours, 33 minutes, 12 seconds6 fast. If you see any release by claude, they have a coding uh version of it. They have a general
2:33:202 hours, 33 minutes, 20 secondsversion of it. In the end, all models are fine-tuned for various use cases.
2:33:242 hours, 33 minutes, 24 secondsCoding being one of them. All model releases have a fine-tuned coding version and a fine-tuned general version. Whatever. Um that makes sense.
2:33:322 hours, 33 minutes, 32 secondsWhat you're saying a lot of knowledge is also present in a rust code base
2:33:412 hours, 33 minutes, 41 secondsbut a lot of general things it can learn if it knows a little bit of rust a little bit of gold of everything it might help it
2:33:492 hours, 33 minutes, 49 secondstypes of English mostly it'll be able to solve some issues but there's actually a lot of open question you know can it
2:33:562 hours, 33 minutes, 56 secondslearn anything at all from rust go c assembly probably if I know only typescript versus I know typ go assembly
2:34:042 hours, 34 minutes, 4 secondsvery well. I'll probably be able to perform better than types codebase also.
2:34:112 hours, 34 minutes, 11 secondsThat is one good example. You'll not be able to solve it. Huh.
2:34:242 hours, 34 minutes, 24 secondsSmall model. If anything, it it can run locally versus very hard to run you know clawed or deepsea model locally. That is
2:34:312 hours, 34 minutes, 31 secondsa benefit of it. It's a small model. It can run locally. The problem is it there are a lot of fine tuned coding models, but they're not fine tuned for a
2:34:382 hours, 34 minutes, 38 secondsspecific language. They are fine- tuned generally for coding. Exactly.
2:34:452 hours, 34 minutes, 45 secondsThey are now being fine- tuned heavily on tool calling on bash tooling.
2:34:552 hours, 34 minutes, 55 secondsEveryone is now training in a way models become really good at tool calling the bash tool. If you can tool called the
2:35:022 hours, 35 minutes, 2 secondsbash tool really well most probably you can explore the code bases really well.
2:35:062 hours, 35 minutes, 6 secondsYou can write to the codebase really well. You'll become a good software engineer. So yes this level of fine tuning happens but it doesn't happen at a language level. It happens on you know other more generic things like this.
2:35:222 hours, 35 minutes, 22 secondsYes. That is also a very nice answer.
2:35:262 hours, 35 minutes, 26 secondsWhat I mentioned the good thing is there's another
2:35:332 hours, 35 minutes, 33 secondsarchitecture that came by deepseek I think mixture of experts which what it does is if you send it a coding query a lot of the parameters become inactive
2:35:422 hours, 35 minutes, 42 secondseven if it's a 20 trillion 20 trill parameter model only one trillion neurons are actually activated. So it is
2:35:502 hours, 35 minutes, 50 secondsnot like you use 20 trillion worth of compute
2:36:012 hours, 36 minutes, 1 secondyou know you are a mixture of experts these are the weights that you're supposed to that is
2:36:112 hours, 36 minutes, 11 secondsgeneral model you're running a very general model when there is an input we producing an output we were calculating it on all all the weights but mixture of
2:36:192 hours, 36 minutes, 19 secondsexperts introduced was based on the query there are only certain weights that are activated and hence even in a very big model
2:36:272 hours, 36 minutes, 27 secondsbecause you're only activating certain neurons
2:36:362 hours, 36 minutes, 36 seconds[laughter]
2:36:372 hours, 36 minutes, 37 secondsmaybe it reaches two different you know experts any more questions all right we'll call
2:36:442 hours, 36 minutes, 44 secondsit here guys thank you please enough. If you love it,

Sync to video time
