https://www.youtube.com/watch?v=dllIBXa0nlE&t=2s



Build and Deploy a Multi Vendor E Commerce With Nextjs, React & Stripe Connect (Part 2/2)
Code With Antonio
Code With Antonio
419k subscribers

Join


1k


Share

Ask

Download

51,036 views  23 Apr 2025
⭐️ Source Code & More: https://cwantonio.com/ecommerce
🎥 Part 1:    • Build and Deploy a Multi-Vendor E-Commerce...  
🎨 Assets (Free): https://dub.sh/jEmEkfC
💬 Discord & Help: https://www.codewithantonio.com/discord

Payload: https://dub.sh/uRMkzO3

In this 20 hour tutorial split into two parts, you’ll build your own multi-vendor e-commerce app where creators have their own storefronts, sell digital products, and get paid through Stripe Connect.

You’ll cover features like subdomains, product reviews, personal libraries, file delivery, and automatic platform fees. There’s also an admin dashboard with role-based access control.

Built with Next.js 15, Payload and Stripe Connect. A solid, practical project with everything you need to learn how modern platforms like this are made.

Key Features:
🏬 Multi-tenant architecture
🌐 Vendor subdomains
🎨 Custom merchant storefronts
💳 Stripe Connect integration
💰 Automatic platform fees
⭐ Product ratings & reviews
📚 User purchase library
🧑‍💼 Role-based access control
🛠️ Admin dashboard
🧾 Merchant dashboard
🧱 Payload CMS backend
🗂️ Category & product filtering
🔍 Search functionality
🖼️ Image upload support
⚙️ Built with Next.js 15
🎨 TailwindCSS V4 styling
💅 ShadcnUI components

Timestamps
00:00 Intro
00:36 Node Version & ESM  
03:48 17 Product Page  
40:33 18 Cart And Checkout  
01:15:49 19 Checkout Page  
01:53:37 20 Stripe Integration  
02:54:22 21 Library  
03:35:16 22 Reviews  
04:24:12 23 Aggregating Reviews  
04:45:26 24 Access Control  
05:18:09 25 Stripe Connect  
06:02:58 26 General Improvements  
06:45:06 27 Subdomain Rewrites  
07:12:03 28 Deployment  
07:36:18 29 Storage Adapter  
07:49:00 30 Wildcard Subdomain  
07:58:14 31 Cookie Bugs  
08:08:58 32 Search Filter  
08:30:10 33 Private Media
Ask

--------------------------------------------------------------------

In this video


Chapters

Transcript
Search transcript
Search transcript

Chapter 1: Intro
0:000 secondsHey there, my name is Antonio and this is part two of the multi-tenant e-commerce tutorial. In part one, we
0:088 secondsbuilt the store layout, integrated payload, setup categories, added authentication, and implemented the
0:1515 secondsmulti-tenency architecture. In this half, we'll complete the platform with the full purchase flow, including cart,
0:2323 secondscheckout, Stripe Connect, integration, product reviews, vendor subdomains, and finally deployment. If you haven't seen
0:3232 secondspart one yet, you can find the link in the video description below.
Chapter 2: Node Version & ESM
0:3737 secondsBefore I move on to the next part of this tutorial, I want to acknowledge and resolve some of the mistakes that I did
0:4545 secondsin the previous part, which only came to my attention after reading the comments.
0:5151 secondsAs you might know, when I initially developed this tutorial, I was using node version
0:5757 seconds21.7.3 and I told you that you can upgrade to the latest long-term support version.
1:061 minute, 6 secondsIn my case, that would be 22.14.0. So, some of you might have been
1:121 minute, 12 secondsusing this version. Let's double check 22.14.0. But what happens if you try
1:191 minute, 19 secondsrunning generate types for example, one of the scripts we have added. As you can see, we get the error module not found
1:281 minute, 28 secondsissue. But not only for this script. you are most likely getting the same error if you try cleaning your database. So,
1:361 minute, 36 secondsit is definitely a hiccup in this tutorial, which I think it's important to resolve. That being said, if you are
1:441 minute, 44 secondsalready watching part two, you have most likely figured this out yourselves, but still, I want to show you how you can
1:511 minute, 51 secondsfix it. One quick and easy fix is to simply use the latest version. uh I mean
1:591 minute, 59 secondsan older version that I am using 21.7.3 once you switch to that version so the exact one that I'm using you can
2:082 minutes, 8 secondsfeel free to try bun run generate types for example then you will see no more errors but that isn't exactly the best
2:162 minutes, 16 secondsfix what if you really really uh want to use the uh latest long-term support version like 22.14.0 zero. One thing
2:252 minutes, 25 secondsthat you can do is you can add type module to your package.json file. And once you do that,
2:332 minutes, 33 secondsgo ahead and try it again. So 22.14.0 bun run generate types. And there we go. No more errors here either.
2:432 minutes, 43 secondsAnd one more thing that I have noticed is that when I developed the plugins, user has access to all tenants function.
2:532 minutes, 53 secondsI told you that roles is not typed even though in our users collection here we have clearly defined the roles.
3:043 minutes, 4 secondsYou can fix this quite easily by simply adding a config which you can import
3:113 minutes, 11 secondsfrom dot /pload types. You can see it right here. /payload
3:183 minutes, 18 secondstypes. And now once you have config and save the file, you can see that
3:243 minutes, 24 secondsuser.rolls is correctly typed. So just those two things I wanted to show you how to resolve. But as I've said, if you
3:343 minutes, 34 secondshave come this far in the tutorial, you have probably found your way around these issues. Uh so you can just continue doing whatever you're doing.
3:433 minutes, 43 secondsAnd let's go ahead and start chapter 17. In this chapter, we're going to go
Chapter 3: 17 Product Page
3:513 minutes, 51 secondsahead and develop the product page. This is what it's going to look like. We're
3:583 minutes, 58 secondsgoing to start by building the get one product procedure so that we can actually get the data we will be working
4:074 minutes, 7 secondswith. As always, ensure that you're on your master branch and ensure that you are up to date. I'm going to quickly do
4:144 minutes, 14 secondsthat using get status. You can go ahead and do bun rundev after that. Then let's go ahead inside of
4:244 minutes, 24 secondssource modules products. server procedures and above get many I'm going
4:324 minutes, 32 secondsto add a base procedure called get one. I'm going to define the input here
4:394 minutes, 39 secondsand I'm going to define the query. Let's do the input first. Inside of this Z object here, we are only going to be looking at the ID.
4:534 minutes, 53 secondsThat's it.
4:554 minutes, 55 secondsAnd then in the query here, let's go ahead and destructure the context and the
5:025 minutes, 2 secondsinput. And let's go ahead and define con product here to be await context database find by
5:115 minutes, 11 secondsID collection products and simply pass the ID as input do ID like this. And for now you can just return the product.
5:245 minutes, 24 secondsWe're going to fix the types later.
5:275 minutes, 27 secondsRemember, we have the depth thing and the images. So, that's it for the base procedure. Now, I want to go ahead and
5:365 minutes, 36 secondscreate um the actual product ID route.
5:425 minutes, 42 secondsSo we are going to go ahead inside of app folder app
5:505 minutes, 50 secondstenants home and we're going to create products and
5:565 minutes, 56 secondsthen product id. So go ahead and create a
6:046 minutes, 4 secondspage.tsx inside and we're going to create an interface props here and inside we will
6:116 minutes, 11 secondsbe able to dstructure two things from the promise the product ID but also the slug of the
6:196 minutes, 19 secondstenant. Now let's export actually we are doing a default. So let's define the props here and in here we can
6:286 minutes, 28 secondsdestructure the params. We can already turn this into an asynchronous method.
6:356 minutes, 35 secondsLet's destructure the product ID and the slug from params like this. And let's do
6:466 minutes, 46 secondsvoid. Uh actually let me just revisit uh the layout here in the tenants.
6:526 minutes, 52 secondsThat's where I did my most recent prefetch. So, I'm just going to do that here. It's a new syntax for me. So, I
6:596 minutes, 59 secondsstill don't remember it. Right. And my original source code is of no help because it doesn't use the new syntax.
7:077 minutes, 7 secondsRight. Great. So, we have this. And now, let's add the hydration
7:167 minutes, 16 secondsboundary. And let's add the state
7:247 minutes, 24 secondsdehydrate query client. So now we are refetching and
7:327 minutes, 32 secondswhat we have to do now is we have to create the actual page view here. So
7:397 minutes, 39 secondslet's do product view and let's pass in the product ID. product ID and tenant
7:487 minutes, 48 secondsslug to be slug. Now let's go ahead and let's create the product view page. So we're
7:577 minutes, 57 secondsgoing to do that inside of source modules products UI views and I'm going
8:048 minutes, 4 secondsto add product view.
8:088 minutes, 8 secondsDSX. Now inside of here we are going to create the props which accept the
8:148 minutes, 14 secondsproduct ID and the tenant slug. And now let's go ahead and create the content of
8:238 minutes, 23 secondsthis. So export con product view. We can go ahead and the structure
8:318 minutes, 31 secondsthe props from here. So product ID and tenant slug. And then we're going to go ahead
8:388 minutes, 38 secondsand start building the UI. Class name px4 onlarge
8:468 minutes, 46 secondspx12 py 10. Now let's go ahead and add another
8:538 minutes, 53 secondsdiv here. And in here let's add a border rounded small background white and
9:009 minutesoverflow hidden. And then in here another div with a class name
9:089 minutes, 8 secondsrelative aspect 3.9 and border bottom and in here an
9:179 minutes, 17 secondsimage from next image which is going to have a source of /placeholder.png which is the same thing
9:279 minutes, 27 secondswe do in our product card. We use the placeholder png. So just use the same thing here for now. Alt will be cover
9:369 minutes, 36 secondsfill and class name object dash cover. I think this is enough for us just to
9:459 minutes, 45 secondsstart seeing some results here. So let's go inside of the page and let's import
9:529 minutes, 52 secondsthe product view from modules products UI views. Now, in order to see this page,
10:0110 minutes, 1 secondwe also have to go back to our product card component and fix the href link.
10:0810 minutes, 8 secondsWe're going to be using the generate tenant URL with the tenant slug. And then we're going to go to /rouct/
10:1610 minutes, 16 secondsID. So, if you've done bun rundev, you should be able to visit localhost 3000.
10:2610 minutes, 26 secondsAnd once you click on a product, you should now get redirected to this page.
10:3110 minutes, 31 secondsSo this is my URL. So you can see this is where I'm being redirected to localhost 3000 tenants, the name of the
10:3910 minutes, 39 secondstenant / the product ID, which is exactly what I've just put in the uh
10:4610 minutes, 46 secondsproduct card component. So your URL should look like that. And you should be seeing this right
10:5310 minutes, 53 secondshere. So that's my structure, right? Let me just confirm with you. Inside of my app folder, app route group, I have
11:0111 minutes, 1 secondtenants, the tenants, slug, home, products, product ID. There we go. And now we can see what we are developing.
11:1111 minutes, 11 secondsSo let's go ahead now and actually fetch the data here. We already prefetch. So
11:1811 minutes, 18 secondsall we have to do here is get use the RPC and then we have to get the data
11:2711 minutes, 27 secondsusing use query actually use suspense query because we prefetched this. So,
11:3611 minutes, 36 secondsTRPC.proucts get one query options and pass in product ID, product
11:4411 minutes, 44 secondsID. And now we should most certainly have data at this point. So, what we can
11:5111 minutes, 51 secondsalready do here is we can use data image
11:5711 minutes, 57 secondsquestion mark URL or placeholder.png
12:0212 minutes, 2 secondsPNG and we can also do data image alt or
12:0912 minutes, 9 secondsdata name. Actually we should use data name here for the alt. Now we have the
12:1812 minutes, 18 secondstype error for the image. So we have to go inside of get one here and just modify the product here. So I'm going to
12:2612 minutes, 26 secondsreturn the product and then we're going to have an image which will be product image as a type of media or
12:3612 minutes, 36 secondsnull. We already have media imported from the types. So this works because the depth by default is two meaning that the image is
12:4612 minutes, 46 secondspopulated. If you change it to zero it's not going to work. But if you change it to two or one it will work. or
12:5312 minutes, 53 secondsif you don't add it, the the two is the default. There we go. So now uh what I
13:0213 minutes, 2 secondswant to do I mean you don't have any Oh yes, my apologies. Add use client
13:1213 minutes, 12 secondshere. So I still see the placeholder because I didn't add any image here. But you can go to the admin dashboard and
13:1813 minutes, 18 secondstry. And also by the way, yes, images are uploaded here because we didn't add any storage for payload. So it's just
13:2713 minutes, 27 secondskeeping them here in the media folder. I forgot to tell to tell you about that.
13:3213 minutes, 32 secondsSorry. Now let's go back inside of the product UI views product view and let's
13:3913 minutes, 39 secondscontinue developing here. So after the div encapsulating the image, let's go ahead and add a
13:4713 minutes, 47 secondsgrid. grid grid columns 1 but on a large grid columns
13:5513 minutes, 55 secondssix. And then inside of here, let's add a div with a class name of call span 4.
14:0214 minutes, 2 secondsAnd inside, let's add another div which will simply be used for padding. And it's going to render a heading data.name.
14:1414 minutes, 14 secondsAnd this heading will have a class name of text for Excel and formed medium. There we go. John's
14:2214 minutes, 22 secondsproduct. Perfect. Now, outside of this div, let's add a new div with a class
14:2814 minutes, 28 secondsname of border Y, which means up and down. And let's add flex here.
14:3814 minutes, 38 secondsThen inside of here, we're going to open a new div with a class name ex 6 py 4
14:4814 minutes, 48 secondsflex items center justify center and the border
14:5614 minutes, 56 secondsright. And inside of here, we're going to add one more div
15:0515 minutes, 5 secondsrelative px2 py1 border background pink
15:1215 minutes, 12 seconds400 width fit and a paragraph
15:1915 minutes, 19 secondsdata.pric and the paragraph can have a class name of text space and font medium.
15:2815 minutes, 28 secondsThere we go. If you want to, you can go to the product card and you can extract
15:3615 minutes, 36 secondsthis into a util where we added the generate tenant URL. Let's export function format
15:4615 minutes, 46 secondscurrency value number or string.
15:5315 minutes, 53 secondsLet's return new intl number format and pass in the value. And I think this should work just fine. You can now use the format
16:0216 minutes, 2 secondscurrency here from lib
16:1116 minutes, 11 secondsutils. I think this will come in handy. And you can do the same thing in the product card.
16:2416 minutes, 24 secondsNow, make sure you've imported it. There we go. Looks great. And let's just confirm that it didn't break the card.
16:3416 minutes, 34 secondsIt didn't. Still looks great. Now, let's continue developing the product view here. So, we stop here
16:4216 minutes, 42 secondscreating the box. And I don't think we need relative.
16:4616 minutes, 46 secondsActually, it will look exactly the same without it. Now, let's go one, two divs outside
16:5716 minutes, 57 secondshere. And in here, we're going to create a div which will render the author or
17:0217 minutes, 2 secondsthe shop, right? The tenant. So, px6 py4 flex items center justify center on
17:1317 minutes, 13 secondslarge border on the right side and in here let's add a
17:1917 minutes, 19 secondslink and the href will simply be generate uh
17:2717 minutes, 27 secondsgenerate tenant URL from lib utils and pass in the author username
17:3517 minutes, 35 secondsLet's see the author username. Uh we actually don't have to do it like that. We can use the tenant slung since we have it.
17:4517 minutes, 45 secondsSo yes, we can do that right here. Uh and let's also yeah let's extract two things so it's easier.
17:5317 minutes, 53 secondsConst the tenant image URL will be data.
17:5817 minutes, 58 secondsActually we don't need to extract. It's fine. Let's just go back here and let's continue developing. So
18:0618 minutes, 6 secondsnow inside of this image, I'm also inside of this link, my apologies, I'm also going to add a class name flex
18:1218 minutes, 12 secondsitems center and gap 2. And then I'm going to check if
18:2118 minutes, 21 secondsour let's do data tenant has an image question mark.
18:3018 minutes, 30 secondsURL only then are we going to render that image. So let's give it a source of
18:3718 minutes, 37 secondsdata tenant image URL an alt of data tenant name and let's go ahead and give
18:4618 minutes, 46 secondsit a width of 20 height of 20 and class
18:5118 minutes, 51 secondsname of rounded full border rink zero and size of 20 pixels. Now let's go
19:0019 minutesahead and let's resolve these TypeScript errors here. So I'm going to go instead of get one. Confirm that you have depth
19:0819 minutes, 8 secondstwo here. Add a tenant which will be product.tenant as
19:1519 minutes, 15 secondstenant and image media or
19:2419 minutes, 24 secondsnull. In order for this to work, you need to have depth two because loading the tenant is depth one. loading the
19:3319 minutes, 33 secondsimage of the tenant is depth two. So this will load
19:4019 minutes, 40 secondsthe product image product.tenant and
19:4819 minutes, 48 secondsproduct.tenant image, right? That's depth two. You can now see my image here. But if I change it to depth one, I
19:5719 minutes, 57 secondsshouldn't be able to see my image. So you can keep it at depth too in this case. Now let's go back to the product
20:0720 minutes, 7 secondsview and you can see no more errors in here. And inside of this link let's add a paragraph data tenant and let's
20:1620 minutes, 16 secondsshowcase the name. Let's add a class name here text base underline and font medium. There we go.
20:2720 minutes, 27 secondsI can now click here and I will be redirected to the user's shop. Now, besides the name, we're going
20:3620 minutes, 36 secondsto add the rating. Keep in mind that we haven't implemented any rating yet, but
20:4220 minutes, 42 secondswe will have but we will do later. So outside of this link and outside of this div, add a new div with a class name
20:5120 minutes, 51 secondshidden, meaning not visible on mobile, but on large it's going to be flex.
20:5720 minutes, 57 secondsLet's add px6 py4 items center and justify
21:0521 minutes, 5 secondscenter. Now in here, add a div with a class name flex items center and gap one.
21:1521 minutes, 15 secondsAnd then let's go ahead and create a star rating component. So star
21:2321 minutes, 23 secondsrating simply because we might we will definitely reuse it. So let's go inside of source
21:3121 minutes, 31 secondscomponents not inside of UI. Instead of UI I want to reserve for the chat end components but
21:3721 minutes, 37 secondsstar-rating. DSX will be our own component. So we can keep it here.
21:4421 minutes, 44 secondsLet's go ahead and import two things and add two constants.
21:5121 minutes, 51 secondsSo star icon the CN util maximum rating and minimum rating. Then let's go ahead and create
21:5821 minutes, 58 secondsan interface star rating props with rating as the number optional class name optional icon class name and optional
22:0722 minutes, 7 secondstext. Then let's export const the star rating component. the structuring the props from
22:1622 minutes, 16 secondsabove. Now let's go ahead and define safe rating using math max and math min
22:2622 minutes, 26 secondscombining the minimum rating and maximum rating constants. And now we are ready to build the component. Let's create a
22:3522 minutes, 35 secondsdiv with class name CN flex items center gap x1 and whatever optional class name
22:4422 minutes, 44 secondsmight come here later. And now we're going to create an array from length
22:5022 minutes, 50 secondsmaximum rating in this case five. Let's map over the items skipping the first one and just using the
22:5922 minutes, 59 secondsindex. If you want to you can also do this. Actually you can't. My bad. Now in here, render the star
23:0723 minutes, 7 secondsicon. Give it a key of index and a class name CN size 4 by
23:1623 minutes, 16 secondsdefault. And then conditionally, if index is less than safe rating, go ahead
23:2223 minutes, 22 secondsand give it fill black, otherwise an empty string and icon class name here.
23:3023 minutes, 30 secondsAnd make sure to add a comma after this.
23:3323 minutes, 33 secondsAnd then outside of this, add a text and a paragraph text like this. That's it.
23:4223 minutes, 42 secondsThat's our star rating component. Now we can go back inside of the product view
23:4923 minutes, 49 secondscomponent. And we can now import the star rating component from components. Star rating.
24:0024 minutesLet's go ahead and add some props to it.
24:0224 minutes, 2 secondsNow, since we don't have any values here, what I'm going to do is I'm going to give it a rating of three and icon class name will
24:1224 minutes, 12 secondsbe size four. There we go. If you change it to five, it will highlight five. There we go. Perfect.
24:2524 minutes, 25 secondsAnd maybe later we you can even use it here if you want to. For now, let's
24:3224 minutes, 32 secondsleave it like this. So this star rating is specifically for desktop devices. What I
24:4124 minutes, 41 secondswant to do now is I want to go to the end of this div border Y flex. You can see I'm going to follow the line here to find where the div ends. Right here.
24:5324 minutes, 53 secondsAnd I'm going to go ahead now and create a new block which will be mobile only. So
25:0225 minutes, 2 secondsblock on mobile. But when it hits the large break point, I'm going to hide it.
25:0725 minutes, 7 secondsI'm going to give it px6 py4 items center justify center and border bottom.
25:1825 minutes, 18 secondsAnd then I'm going to add a div here with a class name flex item center and gap
25:2525 minutes, 25 secondsone. I'm going to copy the star rating from above here like this. And then beside I'm
25:3525 minutes, 35 secondsgoing to add for example five ratings and give this a class name text
25:4225 minutes, 42 secondsbase and font medium. Obviously, we're going to go ahead and change these later with real
25:5025 minutes, 50 secondsdata. And now, let's go ahead to the end of this block element
25:5825 minutes, 58 secondshere and add a new div with a class name padding six and simply check if we have
26:0826 minutes, 8 secondsdescription. Go ahead and render the paragraph with data description.
26:1526 minutes, 15 secondsThis will later be rich text element.
26:1826 minutes, 18 secondsBut for now, I'm just going to keep it as a paragraph. And if we don't have description, we're going to render no
26:2626 minutes, 26 secondsdescription provided. And we're going to have special styling for that. Font
26:3326 minutes, 33 secondsmedium text muted foreground and itallic. So let's just confirm that this
26:4226 minutes, 42 secondsis working. I have my description. So my description is loaded here. And you can see on mobile you should have a different view. There we go. You can see
26:5126 minutes, 51 secondsthe ratings are below that element. But on desktop they are all in one column
26:5926 minutes, 59 secondshere. And now we are going to finally develop this column right here. So go ahead and find where column span 4 ends.
27:1227 minutes, 12 secondsLooks like it ends right here with three divs uh left. And now go ahead and
27:2127 minutes, 21 secondscreate a new div here with a class name column span two.
27:2727 minutes, 27 secondsGo ahead and create a div with a class name inside border top on large border
27:3327 minutes, 33 secondstop zero on large border L and hide
27:4027 minutes, 40 secondsfull inside. Let's go ahead and create a div with flex flex column gap four
27:4927 minutes, 49 secondspadding six and border bottom. And then one more
27:5427 minutes, 54 secondsdiv flex flex row items center and gap two. Inside of here we are going to
28:0328 minutes, 3 secondsrender a button from chaten UI. And this button will be used to add
28:1028 minutes, 10 secondsitem to cart. So let's go ahead and say add to cart. This will also later be dynamic.
28:1828 minutes, 18 secondsIf it's in cart, it will say remove from cart. or if it's purchased it will say view in library. Let's give it a variant
28:2828 minutes, 28 secondsof elevated. Let's give it a class name of flex one and background pink
28:3628 minutes, 36 seconds400. There we go. And now let's go ahead and besides that button add one more
28:4528 minutes, 45 secondsbutton. This button will have a class name size 12.
28:5228 minutes, 52 secondsvariant of elevated on
28:5728 minutes, 57 secondsclick and disabled explicitly false. And for now, let's render the link icon. You
29:0629 minutes, 6 secondscan import link icon from Lucid React. Now, you should have a button next to it, which we are going to use to
29:1529 minutes, 15 secondscopy the current URL. Outside of this div encapsulating those buttons, go ahead and add a
29:2229 minutes, 22 secondsparagraph with a class name text center and font medium. Inside of here, check if data
29:3129 minutes, 31 secondsrefund policy is equal to no refunds. If it is, render the text no refunds.
29:4229 minutes, 42 secondsOtherwise, open back render data refund policy along with the text
29:4929 minutes, 49 secondsmoney back guarantee. This will render 30-day money back guarantee or whatever
29:5729 minutes, 57 secondsyou have set for the product. And now let's go ahead and do the final component
30:0330 minutes, 3 secondshere. So outside of this div, add a new div with the class name padding six.
30:1230 minutes, 12 secondsoutside. Uh my apologies. Inside add flex items center and justify
30:2230 minutes, 22 secondsbetween. Add an H3 elements ratings with a class name text extra large and font medium. There we go.
30:3530 minutes, 35 secondsAnd now I'm going to go ahead below this and create a div with the class name
30:4230 minutes, 42 secondsflex item center gap x1 and font medium. We're going to use the star
30:4930 minutes, 49 secondsicon which you can also import from lucid react and give it a class name of size four and fill
30:5730 minutes, 57 secondsblack. Below that, I'm going to in parenthesis render the number
31:0431 minutes, 4 secondsfive. And then I'm going to go ahead and render
31:1031 minutes, 10 secondsagain five ratings. I'm going to add a class name here, text base. At the top of this
31:2031 minutes, 20 secondsentire file, I'm going to add to do add real ratings.
31:2731 minutes, 27 secondsAnd I'm also going to do the same in my product card. I want to do this just in case so I don't forget it
31:3631 minutes, 36 secondslater. Great. So, we now have the ratings here. And you should be able to see them like this.
31:4431 minutes, 44 secondsAnd now what we're going to do is we are going to create a grid of progress bars
31:5231 minutes, 52 secondsindicating which percentage of uh customers gave what rating. So let's go
32:0032 minutesahead and give this a class name of grid grid
32:0732 minutes, 7 secondscolumns inside of square brackets auto_1 out gap 3 and margin top of
32:1732 minutes, 17 secondsthree. And now inside of here let's go ahead and do the following. Let's go ahead and open curly brackets. Open
32:2632 minutes, 26 secondssquare brackets 5 4 3 2 1 dot
32:3232 minutes, 32 secondsmap. Get the stars inside. Add a
32:3932 minutes, 39 secondsfragment. You can import fragment from React. The reason we are using the fragment as an element instead of just
32:4832 minutes, 48 secondsusing this is because I want to pass in the key prop. So stars
32:5432 minutes, 54 secondsuh my apologies this will be yeah stars and then we will do a div with a
33:0133 minutes, 1 secondclass name font medium and render
33:0933 minutes, 9 secondsstars or we can do this actually do this right star is equal to one in that case the text next
33:1833 minutes, 18 secondsto this number will be star otherwise stars Let's refresh and see. There we go. So,
33:2833 minutes, 28 secondsfive star, one star, four star, two star, three stars. Let me just confirm that my grid
33:3633 minutes, 36 secondscolumns is correct. It is, but we are missing something here. So, after this
33:4233 minutes, 42 secondsdiv add a progress element from components UI progress. We have modified
33:5033 minutes, 50 secondsthis component early on in the tutorial so it matches the neo brutalism style which we will use. Let's go ahead and
33:5733 minutes, 57 secondsgive it a few props value which I'm going to put uh to be you can put it to zero you can put it to five whatever you
34:0634 minutes, 6 secondswant because you don't have real data yet but give it a class name of height 1
34:1234 minutes, 12 secondsLH and below the progress go ahead and create a div and in here you can put zero and
34:2234 minutes, 22 secondsthen percent and give the class name of font medium And there we go. Now you can see how
34:3034 minutes, 30 secondsthis distribution grid is going to look like. If you want to, you can go ahead and give it some values just so you can
34:3834 minutes, 38 secondssee how it's going to look like in the future. So we don't yet have any review data, but this is how it's going to look
34:4634 minutes, 46 secondslike later. And that's it for the UI part of the product view component.
34:5534 minutes, 55 secondsSo if you take a look at this picture, we have pretty much written everything
35:0335 minutes, 3 secondshere. And in the next chapter, we're going to introduce ratings. So we can finally see some real values here. And
35:1135 minutes, 11 secondsthen we will have enough material to start implementing these buttons right here. Right? None of these actually do
35:1835 minutes, 18 secondsanything right now. And also one quick tip, if you want to, you know, you can
35:2535 minutes, 25 secondsgo inside of products, collections, collections, products, and nothing is stopping you
35:3335 minutes, 33 secondsfrom adding another type of image, right? If you want to, you can add a cover like this and then use that here
35:4235 minutes, 42 secondsinstead. Let me show you how that would look like. For example, you could go, let me see, inside of product
35:5135 minutes, 51 secondsview, find this and just use data.co URL. And you would also have to
35:5835 minutes, 58 secondsgo inside of get one here and modify this to be cover product.co as media or
36:0736 minutes, 7 secondsnull. So if you want to, you can have two separate images, one for the cover and
36:1536 minutes, 15 secondsone for the card, right? Um, and let me just see what is going on here. I think this is uh just MongoDB.
36:2936 minutes, 29 secondsYes, no problem at all. So if you want to, you can use two images, right? I prefer using one.
36:3736 minutes, 37 secondsSo I'm going to remove these changes now, but I just wanted to give you an idea of how that is going to look
36:4436 minutes, 44 secondslike. Great. So let's see if we did everything we planned. We added the get one procedure. We created the product view
36:5336 minutes, 53 secondscomponent and we put it in this spot right here and we have modified the product card link href. Now let's push
37:0137 minutes, 1 secondthis to GitHub. So 17 product page. I'm going to go ahead and do get
37:0837 minutes, 8 secondscheckout-b 17 product page. Get add commit 17 product
37:1737 minutes, 17 secondspage and get push u origin 17 product
37:2437 minutes, 24 secondspage. After you confirm that you are on a new branch here and you can see your detachment, let's go ahead and merge
37:3337 minutes, 33 secondsthat by visiting our GitHub and opening a pull request. Let's see what our reviewer has
37:4137 minutes, 41 secondsto say. And here we have our summary. We have launched a responsive product view
37:5037 minutes, 50 secondsdisplaying detailed product information including images, descriptions, pricing, tenant details, ratings and refund
37:5937 minutes, 59 secondspolicy messaging. Of course, we can see the walkthrough of each change file by file
38:0738 minutes, 7 secondsand the sequence diagram which is describing our product view and how prefetching works. So you can see that
38:1638 minutes, 16 secondswhen user visits the page component we resolve the params promise so we can continue going forward after that we
38:2338 minutes, 23 secondsinitialize the query client once we have the query client we can finally prefetch the data and then we can pass that
38:3138 minutes, 31 secondscached data to hydration boundary and then hydration boundary which renders the product view component can query
38:4038 minutes, 40 secondsproduct using the suspense amazing diagram here and let's see if it has any
38:4738 minutes, 47 secondscomments here. So, refactor suggestions new get one procedure to fetch a single product. Uh you can see it looks good
38:5538 minutes, 55 secondsbut it's lacking some errors. So, that's definitely something we should improve.
39:0039 minutesYes. Uh this is cool. So, I removed this line because I didn't need it. But you can see how it recognized it because I
39:0739 minutes, 7 secondsforgot to remove cover image from my collection.
39:1039 minutes, 10 secondsActually, in here, of course, it noticed the hard-coded values. That's something we're going to fix later. In here, it
39:1839 minutes, 18 secondsalso noticed unused uh on click. And yeah, this is exa exactly what we are going to do. We're going to copy the
39:2639 minutes, 26 secondslocation href. But I'm satisfied with what we have. So, I'm going to merge this branch 17 product page. And as
39:3639 minutes, 36 secondsalways, I'm just going to uh confirm that my branches look correct. So, let's see. 0 1 0 3 4 5 6 7 8 9 10.
39:4639 minutes, 46 secondsThere we go. 17 product page. I could have sworn that in my previous videos, it was the opposite direction. Perhaps
39:5339 minutes, 53 secondsafter a certain number, the branches change direction. I was already scared something happened. Great. So, I have 17
40:0040 minutesproduct page here. I have merged it. And now I'm going to check out to my main or
40:0740 minutes, 7 secondsmaster branch and get pull origin master or main. After that get status to
40:1540 minutes, 15 secondsconfirm everything is up to date. And you can also confirm with your graph here and your IDE that you are on the
40:2140 minutes, 21 secondsmain branch. And that concludes the product page chapter we pushed to GitHub. Amazing job and see you in the next chapter.
Chapter 4: 18 Cart And Checkout
40:3440 minutes, 34 secondsIn this chapter, we're going to go ahead and implement cart and checkout. But we are only going to focus on the UI part.
40:4340 minutes, 43 secondsWe are not going to connect stripe in this chapter. I want to keep that as a separate chapter because there are a lot
40:5140 minutes, 51 secondsof things going on in that part. So for this chapter what we are going to do is we are first going to implement the add
40:5940 minutes, 59 secondsto cart functionality using to stand or tand uh global store and we are also
41:0741 minutes, 7 secondsgoing to implement the actual checkout page which will in the future lead to a stripe checkout page
41:1441 minutes, 14 secondsitself. Let's start with adding tushan to stand however we want to call this uh
41:2141 minutes, 21 secondsand add it to our project. As always ensure that you are on your master branch. Ensure that you have all the
41:3141 minutes, 31 secondschanges merged and let's go ahead and do bun add to stand. And you can see that my version is
41:4041 minutes, 40 seconds5.0.3. So if you want to you can use the exact version like this. After you have added that, I think it's going to be
41:4841 minutes, 48 secondsenough for now and you can just run the project. And now what I'm going to do is I'm going to go inside of source modules
41:5541 minutes, 55 secondsand I'm going to create the checkout module. And inside of here I'm going to create a store
42:0242 minutes, 2 secondsfolder and then use cart store.ts. And inside of here, I'm going
42:1042 minutes, 10 secondsto import create from two stand. And I'm going to add create JSON storage and
42:1742 minutes, 17 secondspersist. This is also from the two stand package but the middleware
42:2442 minutes, 24 secondsextension. Let's create an interface tenant cart product ids string and I
42:3342 minutes, 33 secondsmean an array of strings. So what we are going to make this use cart store do is
42:4042 minutes, 40 secondshold each tenant card. Right? So we are not going to have just one card. For each tenant we're going to have their
42:4842 minutes, 48 secondsown cart. So now let's create an interface cart state.
42:5442 minutes, 54 secondsAnd first thing we're going to have inside of the cart state is the tenant carts which will be an object and then a key and then the actual tenant cart.
43:0543 minutes, 5 secondsWe're then going to have the option to add a product using tenant string and the product ID we want to add. Also an
43:1343 minutes, 13 secondsoption to remove a product. we will have the clear cart and also we're going to
43:2043 minutes, 20 secondshave clear all carts and we can also do get cart by
43:2743 minutes, 27 secondstenant. So just ensure that you have added the proper types here be mindful of the arrays. After we've done that, let's
43:3643 minutes, 36 secondsexport const use create. My apologies, use cart store. And now we use create and we give
43:4543 minutes, 45 secondsit a type of cart state inside. Go ahead and execute this open parenthesis. And
43:5243 minutes, 52 secondsin here add persist. And now in here go ahead and add another set of parentheses which is
44:0244 minutes, 2 secondsactually a method with the props set and get. And in here go ahead and return an
44:0944 minutes, 9 secondsimmediate object by wrapping it inside of parenthesis like this. Persists accepts two arguments. So
44:1744 minutes, 17 secondshere in the second argument we're going to have to give it some properties about how we want to save this cart. So I'm
44:2544 minutes, 25 secondsgoing to give a name for this onroad cart and storage will be create JSON
44:3544 minutes, 35 secondsstorage local storage. In case you're wondering where does the constant local
44:4444 minutes, 44 secondsstorage come from? It comes from window.local storage. That's why there's no error. You can see that it's a global
44:5244 minutes, 52 secondsreference, right? In case you were confused, how come we never defined or imported local storage, you don't have
45:0045 minutesto type window.local storage, you can just use local storage. So that's where we are going to store the cart data. And
45:0945 minutes, 9 secondsnow let's go ahead and implement cart data. Starting with the tenant cards which for starters can just be an empty
45:1745 minutes, 17 secondsarray uh empty object and then let's do add product here which will accept the tenant slug
45:2645 minutes, 26 secondsand the product ID and in here what we can do is we can
45:3245 minutes, 32 secondsdo set. So be mindful that I didn't add curly brackets here. I'm immediately returning set. I just added a new line
45:4245 minutes, 42 secondsso it's easier to look at. Go ahead and open set and then open another set of
45:4845 minutes, 48 secondsparentheses which will not have set but state like this. And this will be a method which will going to which is
45:5545 minutes, 55 secondsgoing to return an immediate object again. And then tenant cards in here
46:0246 minutes, 2 secondswill preserve the old state of tenant cards. And then for the current tenant
46:1046 minutes, 10 secondsslug that we are trying to edit, it's going to modify the product ids. So this is adding a new product. So this is an
46:1846 minutes, 18 secondsarray of ids, which means that we first have to preserve all the existing ones.
46:2346 minutes, 23 secondsSo let's do state.tenant carts access the index using tenant
46:3046 minutes, 30 secondsslug. And this is where our ES config no unchecked index access comes in handy.
46:3846 minutes, 38 secondsWell, everything is an error now, so it's not really handy. Uh but if you have this turned
46:4446 minutes, 44 secondsoff, this would be uh the TypeScript would assume that this always exists.
46:5246 minutes, 52 secondsBut that doesn't have to be the case, right? So in our case, we have to add a question mark. product IDs or an empty
47:0047 minutesarray and then at the end add the new product ID from here. And just to get rid of these errors, I'm now going to
47:0947 minutes, 9 secondscopy this and add it here. And I'm going to call this remove product. And I'm not going to modify it
47:1947 minutes, 19 secondsin any way. Instead, I'm going to copy it once again. And I will call this one clear
47:2847 minutes, 28 secondscart. Let me just see did I do this correctly. Uh clear cart does not accept
47:3747 minutes, 37 secondsthe product ID I believe. Just the tenant slug.
47:4447 minutes, 44 secondsAnd I'm going to paste it one more time. Actually two more times. one for
47:5147 minutes, 51 secondsclear all carts which doesn't accept any props at all. And the set here can actually be
48:0248 minutes, 2 secondsfixed to be very easy. Just tenant cards empty array empty object. And last one is get cart
48:1148 minutes, 11 secondsby tenant. We also accept the tenant slug here. and then do
48:1948 minutes, 19 secondsget tenant cards access tenant by tenant slug question mark product ids or an
48:2848 minutes, 28 secondsempty array. The reason I did this is so that we get rid of all those errors.
48:3448 minutes, 34 secondsRight? So now you should have tenant carts. You should have add product. You should have remove product, clear cart, clear all carts and get cart by tenant.
48:4748 minutes, 47 secondsWe know that our add product is finished. Now let's do our remove product. So it's going to be quite
48:5548 minutes, 55 secondssimilar. we have to preserve the state of the existing tenant cards and then we just enter the slug that we are
49:0249 minutes, 2 secondsmodifying and then inside of here we're going to do a little bit different logic for the product ids we're going to do
49:1149 minutes, 11 secondsstate tenant carts tenant slug question mark product ids do filter inside of the
49:1949 minutes, 19 secondsfilter we are going to get the ID of that product and check if that ID does not match the product ID that we pass in
49:2849 minutes, 28 secondsthe function here and then outside of that filter we are going to add or an empty array. So
49:3649 minutes, 36 secondswe are basically filtering out the product ID from specific tenant
49:4249 minutes, 42 secondsslug. Now let's go ahead and do our clear cart here which is going to be much simpler. So what's important here is that we preserve all other tenants.
49:5349 minutes, 53 secondsBut when we enter our tenant here, we are simply going to change product ids to be an empty
50:0250 minutes, 2 secondsarray. Now for the clear all cards, it's self-explanatory. We just return clear all all cards to its initial state here.
50:1250 minutes, 12 secondsThere we go. That is the functionality which we are going to do uh for carts.
50:1850 minutes, 18 secondsObviously, there's room for improvement, right? Uh how many products can we
50:2550 minutes, 25 secondsactually have in our carts now? How do we invalidate this? How many tenants can we actually serve? Right? And maybe a
50:3450 minutes, 34 secondsburning question some of you might have, why uh different carts for different
50:4050 minutes, 40 secondstenants? Why not just one big cart for everyone? That was my plan initially. I
50:4750 minutes, 47 secondswanted to do just one cart which is going to hold products from any tenant
50:5550 minutes, 55 secondsregardless of the slug. Unfortunately, when it came to implementing Stripe Connect, where we are going to add it so
51:0351 minutes, 3 secondsthat our platform takes a 10% fee from each sale, it didn't work if the author of
51:1351 minutes, 13 secondsthe product that we are selling is not the same for all products. The only way
51:2051 minutes, 20 secondsit worked was if I changed my implementation. And that new implementation required me to add real
51:2951 minutes, 29 secondsbusiness details. And no matter how much I try to find an alternative, try to find maybe I'm somehow exiting the test
51:3751 minutes, 37 secondsmode or something. Looks like they didn't implement a way to do that without real uh bank information,
51:4651 minutes, 46 secondswithout real company information, which is something that I'm sure a lot of you will get blocked by in this tutorial.
51:5451 minutes, 54 secondsI'm not sure if you uh have real company information at hand here. So, that's why I decided, okay, I'm going to use the
52:0152 minutes, 1 secondsimpler method. And I'm sure whoever completes this tutorial uh will definitely be uh handy enough to change
52:0952 minutes, 9 secondsthis later on and experiment with one global store for all tenants in the future. But for now, this is the path
52:1752 minutes, 17 secondsI'm going to choose because I know it works. It's definitely not bad. It's a practice that you will see in many multi- uh tenant
52:2652 minutes, 26 secondsmarketplaces. Uh and we will get our achieved result. Great. So ensure that you have your use cart store and now
52:3652 minutes, 36 secondswhat I want to do is I want to create the hooks folder
52:4152 minutes, 41 secondshere called use cart. So in here I'm just going to make it easier to use this
52:4952 minutes, 49 secondsstore. So you can immediately import use cart store and then export const use cart tenant slug
52:5852 minutes, 58 secondsstring and then my apologies for the typo here.
53:0453 minutes, 4 secondsconst we're just going to dstructure a bunch of items from use cart store here.
53:1153 minutes, 11 secondsGet cart by tenant add product. Remove product. clear cart and clear all carts.
53:2053 minutes, 20 secondsAnd now let's go ahead and get all product ids by that tenant. After that,
53:2753 minutes, 27 secondslet's create a method to toggle product meaning addit and remove it with one uh
53:3453 minutes, 34 secondssame function. So product ID which checks if in the list of this product ids for that tenant we have that product
53:4153 minutes, 41 secondsthen remove it otherwise add it. It's important that you preserve the tenant slug across these places. Let's add another handy method
53:5053 minutes, 50 secondsis product in cart which will simply tell us if the product IDs for this tenant include a specific product
53:5853 minutes, 58 secondsID. And lastly, let's do clear tenant cart which will simply clear cart for a tenant slug.
54:0854 minutes, 8 secondsAnd now what we have to do is we have to return product ids add product which
54:1454 minutes, 14 secondswill do product id string add product tenant slug product id. So we are uh
54:2254 minutes, 22 secondsbasically using this method but we are automatically assigning the tenant slug.
54:2954 minutes, 29 secondsSo it's just easier to use. We do the same thing for remove product. Basically preserve the tenant slug here.
54:3854 minutes, 38 secondsClear cart will be clear tenant cart and then we just pass along clear
54:4554 minutes, 45 secondsall carts total product is product in cart and total
54:5254 minutes, 52 secondsitems which will be product ids.length. There we go. So now we have
55:0255 minutes, 2 secondsa much easier way of using the cart store.
55:0755 minutes, 7 secondsNow I want to go ahead back inside of the product view not list view product
55:1455 minutes, 14 secondsview basically this page right you can also do bon rundev to ensure that it's loading here and what
55:2255 minutes, 22 secondsI'm going to do is I'm going to enable the add to cart button to do that the way I'm going to do that is by creating
55:3055 minutes, 30 secondsa component here which I'm going to call uh cart button esx like this. Let's go ahead and create
55:4055 minutes, 40 secondsan interface props which will accept the tenant slug which is a string and export conart
55:4855 minutes, 48 secondsbutton. Inside of here, let's grab the props. Let's assign them here and let's extract the tenant slug. And then what
55:5755 minutes, 57 secondswe are going to be able to do is get our cart functionality using use cart not use cart store just by using use cart
56:0556 minutes, 5 secondsand passing the tenant slug. This will enable us to easily add, remove or toggle items based on that slug
56:1356 minutes, 13 secondshere. And what we're going to do inside is just copy. Let me find my button. Here it is. Button add to cart.
56:2456 minutes, 24 secondsSo I'm just going to copy it here and add it in here from components
56:3256 minutes, 32 secondsuh UI button. And then we can do things like if cart is product in cart. We should also
56:4256 minutes, 42 secondspass in the product ID here. Let me just add it. Product ID. So
56:4956 minutes, 49 secondsis product in cart. Product ID. In that case we can do remove from cart
56:5856 minutes, 58 secondsotherwise add to cart like that. So let's go ahead and try it. And
57:0657 minutes, 6 secondswe also have to do on click here cart add product product
57:1457 minutes, 14 secondsID. So we don't have to pass the slug because inside of the use cart add product automatically appends
57:2357 minutes, 23 secondsthe slug here. So now let's replace this with the cart button. And let's pass in the product ID
57:3257 minutes, 32 secondsto be data do ID and tenant slug to be I'm not sure if I receive it as tenant
57:3857 minutes, 38 secondsslug. I do. So I can pass tenant slug here.
57:4557 minutes, 45 secondsSo I actually have both I have both product ID and tenant slug. So I don't have to use data ID. I can just pass the
57:5257 minutes, 52 secondsproduct ID. I already have it as a prop, right? Why not leverage it twice? So now your button should look
58:0058 minutesexactly the same. But let's go and open our application here. Specifically, let's open the local storage for localhost 3000. I'm going to clear
58:0958 minutes, 9 secondseverything I have inside. Keep in mind that you might have some things here.
58:1358 minutes, 13 secondslocal host 3000 might have uh some values from your other developments.
58:1858 minutes, 18 secondsLet's click add to cart. And as you can see, it has immediately changed to remove from cart. And I have fun road cart state here. Let's go ahead and take
58:2758 minutes, 27 secondsa peek at the state. Inside of the state, I have tenant carts. And then for Antonio, I have a list of product ids.
58:3758 minutes, 37 secondsSo now it came to my mind that instead of add product this should be toggle product. So just use toggle product. And
58:4658 minutes, 46 secondsnow click remove from cart. And you can see that now my tenant cards for Antonio has been removed. And now I can add it
58:5658 minutes, 56 secondsto cart again. And now what I want to do is import
59:0359 minutes, 3 secondsCN from lib utils and just modify this a little
59:1059 minutes, 10 secondsbit. So if cart is product in cart product id in that case I want to add
59:1859 minutes, 18 secondsbackground white here just so we have a difference. There we go. Great. So why did I add this
59:2659 minutes, 26 secondsseparate component? Well, besides the fact that you know u it works easier this way to maintain it. This can be uh
59:3659 minutes, 36 secondsthis can be a part of hydration errors as you can see in here. Uh I think it this is exactly what happened. Hydration
59:4359 minutes, 43 secondsfail. Let me zoom in. Hydration failed because the server rendered HTML didn't match the client. Basically on the server we don't have access to local
59:5259 minutes, 52 secondsstorage and I don't think there's an elegant way to add it there. I think if you want it there, you have to add it to
1:00:001 hourserver storage like a database, right? U I will explore if there are some smarter options, but I'm okay with using sustan
1:00:081 hour, 8 secondshere. I'm okay with this only being client side. So basically client side knows that it's in cart. So it's going to render the text remove from cart and it's going to render background white.
1:00:201 hour, 20 secondsServer does not know that. So, server renders remove from cart, my apologies, add to cart, and it renders background
1:00:271 hour, 27 secondspink, and that's a hydration error. The server and the client don't match. But there's an easy fix for that. Instead of
1:00:361 hour, 36 secondsimporting cart button like this, we're going to go ahead and import dynamic from next dynamic. And then we're going
1:00:431 hour, 43 secondsto change the way we import the cart button. Let's go ahead and do con cart button. You can comment out this import
1:00:521 hour, 52 secondsfor now is dynamic and go ahead and import and you
1:00:591 hour, 59 secondscan use uh normal import method. I think you can just do d- components cart
1:01:051 hour, 1 minute, 5 secondsbutton like this but uh cart button itself is a named export. So we have to
1:01:131 hour, 1 minute, 13 secondstell it which one. So let's do dot then you get the actual
1:01:201 hour, 1 minute, 20 secondsmodule. Uh don't call it module call it mod. Module is a reserved keyword. So mod.cart button. There we go. And then
1:01:311 hour, 1 minute, 31 secondsSSR false. So now it's not going to go through server side rendering. And now we don't have to worry uh about the
1:01:391 hour, 1 minute, 39 secondsmismatch between the server and the client in this part. So now you will be able to see that when I do this, it's
1:01:471 hour, 1 minute, 47 secondsgoing to disappear for some time. So there's no chance of the hydration error happening. Now if you go ahead and
1:01:551 hour, 1 minute, 55 secondscomment uh this out, let's comment this out and let's enable this back and make sure it's in
1:02:041 hour, 2 minutes, 4 secondscart, right? And if you refresh, you will pretty much always see the hydration error, right? But if you change it to dynamic and turn off SSR, you will no longer have that issue.
1:02:161 hour, 2 minutes, 16 secondsYou will also no longer have uh this at all. So what you can do is you can add a fallback here if you want
1:02:251 hour, 2 minutes, 25 secondsto. You can do loading prop here. For example, a paragraph of
1:02:331 hour, 2 minutes, 33 secondsloading. And I think that now you should see the text loading while uh while it
1:02:401 hour, 2 minutes, 40 secondsloads, right? But we can do better. We can add the button
1:02:481 hour, 2 minutes, 48 secondscomponent like this. And let's keep it as add to cart. So we're going to assume
1:02:541 hour, 2 minutes, 54 secondsit's not added into cart. And we can add the variant. Well, actually it doesn't need a variant. All it needs is flex one. So let's give it a class name of flex one.
1:03:051 hour, 3 minutes, 5 secondsAnd let's give it a background pink of 400. And let's just make it disabled. So we are basically doing a skeleton. I
1:03:141 hour, 3 minutes, 14 secondswouldn't recommend exporting a skeleton here because I'm not sure what happens if you add this import. You're
1:03:231 hour, 3 minutes, 23 secondsgoing to have to add an import from cart button. So I'm not sure what exactly happens in that case. Perhaps you will trigger the hydration error. So I think
1:03:321 hour, 3 minutes, 32 secondsthat now there we go. It looks much better, right? It's almost like it's loading the state and you can't click it and it's not even elevated at that
1:03:401 hour, 3 minutes, 40 secondspoint. Great. I like this solution a lot. We can now add and remove from cart and we are also not getting any
1:03:471 hour, 3 minutes, 47 secondshydration errors. And you can do the same fix for this page here. I think
1:03:541 hour, 3 minutes, 54 secondsthat when you are logged in, we render you have to be logged in. I think
1:04:011 hour, 4 minutes, 1 secondwe rerender the library button, but I think many times I've gotten a hydration
1:04:091 hour, 4 minutes, 9 secondserror there. Right. Right now I'm not getting the hydration error. But if I get it again, I'm just going to do the same thing for the library button.
1:04:171 hour, 4 minutes, 17 secondsRight? I just want to remind you of that. And I think this looks completely okay. Now that we've have this add and remove to cart functionality, I want to
1:04:261 hour, 4 minutes, 26 secondsdisplay the cart here in this corner of each tenant store. So we're going to do a similar
1:04:341 hour, 4 minutes, 34 secondsthing here. I'm going to go inside of checkout. Let me just go here. So check
1:04:421 hour, 4 minutes, 42 secondsout and inside of here I'm going to create the UI and I'm going to create components. And in here we're going to
1:04:501 hour, 4 minutes, 50 secondshave the checkout button.tsx. So the previous button we have created in the products here because it's only used in the product
1:04:581 hour, 4 minutes, 58 secondscart in the product view right as an add to cart. But this one is more of a you know global let's go to the checkout
1:05:061 hour, 5 minutes, 6 secondsscreen button. So that's why I'm going to call it checkout button. Let's go ahead and create an interface checkout button props.
1:05:131 hour, 5 minutes, 13 secondsOptional class name and optional hide if empty. Actually, I'm going to hide if
1:05:201 hour, 5 minutes, 20 secondsempty by default or h I don't know. Let's keep it like this for now. Now, we can go ahead
1:05:291 hour, 5 minutes, 29 secondsand export the checkout button using class name, hide if empty, and check out
1:05:361 hour, 5 minutes, 36 secondsslug. My apologies, tenant slug. Now, let's go ahead and let's grab our use cart. It's in the same module. So, we
1:05:461 hour, 5 minutes, 46 secondscan use an import like this. Now that we have the use cart, let's extract the total items for a
1:05:551 hour, 5 minutes, 55 secondsspecific tenant. And now we're going to do a check here. If hide if empty is on and
1:06:021 hour, 6 minutes, 2 secondstotal items is zero, you can return null. Now, let's go ahead and grab a component and some utils. So, import
1:06:111 hour, 6 minutes, 11 secondsbutton from components UI button CN and our generate tenant URL. Uh, make sure you use the capital URL here. Generate tenant URL here.
1:06:241 hour, 6 minutes, 24 secondsGreat.
1:06:261 hour, 6 minutes, 26 secondsSo we are now going to go ahead and do a return here with a button variant elevated as child class
1:06:371 hour, 6 minutes, 37 secondsname CN background white but pass the class name if
1:06:431 hour, 6 minutes, 43 secondsneeded and then a link from next link that's why we need it as
1:06:491 hour, 6 minutes, 49 secondschild and add an href here generate tenant URL tenant
1:06:571 hour, 6 minutes, 57 secondsslug slashch checkout and then let's add a shopping
1:07:041 hour, 7 minutes, 4 secondscart icon from lucid react and then beside let's check if we have total
1:07:121 hour, 7 minutes, 12 secondsitems if total items is larger than zero in that case render the total items otherwise
1:07:211 hour, 7 minutes, 21 secondsjust an empty string so we won't take up any face at all. Make sure you import the
1:07:281 hour, 7 minutes, 28 secondsicon. Now that we have our checkout button, we can go back inside of the
1:07:361 hour, 7 minutes, 36 secondstenant module UI navbar. And after the link which
1:07:441 hour, 7 minutes, 44 secondsredirects to the user shop, we can render the checkout button and pass in the tenant slug which
1:07:531 hour, 7 minutes, 53 secondsis the slug. We have it from the props here. So I think we're going to have the same problem now. You can see that I
1:08:001 hour, 8 minuteshave one item in here and when I refresh at first I don't which causes a hydration error. So, we're going to go
1:08:091 hour, 8 minutes, 9 secondsahead and do what we just did in the product view. I'm going to import dynamic from next dynamic. Let me add
1:08:171 hour, 8 minutes, 17 secondsthat here. And then I'm going to modify the way I import my checkout button. So, let
1:08:251 hour, 8 minutes, 25 secondsme copy how I do it for the cart button here. And I will add it here. Call it a checkout button.
1:08:341 hour, 8 minutes, 34 secondsI'm going to go ahead and comment this out. But I will just copy this and we are targeting the checkout
1:08:431 hour, 8 minutes, 43 secondsbutton from that module. And then we have to create a loading state here as well. So let me import a button
1:08:511 hour, 8 minutes, 51 secondshere. What's important here? Uh let's go inside of the checkout button from our
1:08:581 hour, 8 minutes, 58 secondsmodules. So background white is important. That's it. And we're going to add a shopping cart icon
1:09:061 hour, 9 minutes, 6 secondsinside. So let's add the shopping cart icon and background white. And I don't
1:09:141 hour, 9 minutes, 14 secondsthink it uses any flex one here. Just make it disabled. So now your checkout button should be disabled at
1:09:221 hour, 9 minutes, 22 secondsfirst. Looks like it cannot load the shopping uh cart icon. I'm not sure.
1:09:291 hour, 9 minutes, 29 secondsMaybe it can't do that in the loading states. I'm not exactly
1:09:371 hour, 9 minutes, 37 secondssure. Maybe it's something else. Maybe the shopping cart icon has an invalid
1:09:471 hour, 9 minutes, 47 secondscolor. Yes, looks like it works that way. What if I remove text
1:09:541 hour, 9 minutes, 54 secondsblack? Then it doesn't work. Looks like when you are adding loading you need to specify text black which is something we
1:10:021 hour, 10 minutes, 2 secondsdon't need to do otherwise as you can see right here. Let's remove from cart. And there we go. Now we have an empty uh checkout
1:10:101 hour, 10 minutes, 10 secondsbutton up there. So we can now decide do we want to hide that when it's empty or
1:10:171 hour, 10 minutes, 17 secondsnot. Uh and as you can see now you should not be getting any hydration errors at all. So if you want to, you
1:10:261 hour, 10 minutes, 26 secondscan go inside of your navbar here. You can now remove this import for the checkout button. If you want to, you can add hide
1:10:341 hour, 10 minutes, 34 secondsif empty. And then when you don't have it, it's just not going to appear. So whatever you prefer. Maybe
1:10:421 hour, 10 minutes, 42 secondsyou like it this way. Maybe I like it this way as well. And now let's go ahead and let's just add a skeleton here.
1:10:521 hour, 10 minutes, 52 secondsSo, I'm going to go ahead and copy this button, and I'm just going to add it
1:10:591 hour, 10 minutes, 59 secondshere. That's going to be the skeleton for when the navbar is loading because the navbar has to load the information,
1:11:091 hour, 11 minutes, 9 secondsright? So, when I click on Antonio here, you can see how I now I now have a skeleton with that button. Looks like it's also showing me.
1:11:201 hour, 11 minutes, 20 secondsOh, okay. So, I have this. Let's do this. So, I removed Antonio's product.
1:11:251 hour, 11 minutes, 25 secondsAnd now I'm going to go inside of John's shop. So, you can see in John's shop, I have one here, right? But if I go to Antonio, I
1:11:341 hour, 11 minutes, 34 secondsdon't have it because my cart for Antonio's shop is completely empty. So initially I wanted to have the card here
1:11:431 hour, 11 minutes, 43 secondsbut as I explained when we built the use card functionality turns out we can't do it with proper stripe connect and uh fee
1:11:521 hour, 11 minutes, 52 secondssharing method. So I chose the next best thing. Great. So what we have to do next
1:12:001 hour, 12 minutesis we have to implement the checkout screen which I'm actually going to do in the next chapter uh because this one is
1:12:071 hour, 12 minutes, 7 secondsalready half an hour and I want you to you know see what you've done and play around with it a little bit but we've also done a lot. So we have implemented
1:12:161 hour, 12 minutes, 16 secondsthe cart functionality with sustan global store. We modified the UI in product view and we separated the cart button component. We also added dynamic
1:12:261 hour, 12 minutes, 26 secondsload without SSR to avoid hydration errors. The only thing we didn't do is implement the checkout page, which
1:12:341 hour, 12 minutes, 34 secondsbasically means that we didn't use this picture in the end. But it's okay. We're going to do it next time. So now let's
1:12:401 hour, 12 minutes, 40 secondsgo ahead and push our changes to GitHub 18 cart and checkout. So, I'm
1:12:481 hour, 12 minutes, 48 secondsgoing to go ahead and do get checkout-b 18 part
1:12:561 hour, 12 minutes, 56 secondscheckout. Get addit commit 18 part and
1:13:031 hour, 13 minutes, 3 secondscheckout and get push u origin 18 part and
1:13:111 hour, 13 minutes, 11 secondscheckout. After you confirm that you are on the new branch that you have detached, let's go ahead and let's merge
1:13:201 hour, 13 minutes, 20 secondsthis pull request. So I'm going to go ahead and open a new pull request with base master or main and comparing to my
1:13:271 hour, 13 minutes, 27 secondsnew branch here. And let's see what our next steps are. And here we have the summary. We
1:13:371 hour, 13 minutes, 37 secondsintroduced interactive cart button on product pages allowing users to add or remove items. We enhance the checkout
1:13:451 hour, 13 minutes, 45 secondsexperience with newly integrated button in the navigation that displays realtime cart item counts. You can see that this pull
1:13:541 hour, 13 minutes, 54 secondsrequest introduces several enhancements here using a custom hook use cart on top
1:14:011 hour, 14 minutes, 1 secondof the store which we use to manage tenants specific carts. As always, you can see uh file by file change and in
1:14:101 hour, 14 minutes, 10 secondshere a sequence diagram if you're interested explaining how our cart button system works. You can see that when the user clicks toggle product
1:14:181 hour, 14 minutes, 18 secondsbutton, we call the toggle product from the use cart hook which contacts the cart store and it checks whether the
1:14:261 hour, 14 minutes, 26 secondsproduct is in cart or not and depending on that it calls the respective methods and then we return the updated cart
1:14:341 hour, 14 minutes, 34 secondsstate and update the UI. We also do the same thing for the checkout button. We also have the
1:14:421 hour, 14 minutes, 42 secondsrenders nothing hide if empty prop and I'm proud to say no comments besides
1:14:491 hour, 14 minutes, 49 secondssome nitpick comments here such as an extra comma at the end. So we did a pretty good job on this pull request.
1:14:581 hour, 14 minutes, 58 secondsLet's go ahead and merge it. After we merge it, I'm not going to delete it. I'm just going to ensure that
1:15:071 hour, 15 minutes, 7 secondsI have it right here. There we go. And then once it's merged, I'm going back to my main or master branch. And I'm just
1:15:161 hour, 15 minutes, 16 secondsgoing to go ahead and pull origin and ensure that everything is up to date.
1:15:221 hour, 15 minutes, 22 secondsGet status. There we go. And I can see that I detached here. And then I merged those same changes back to my master
1:15:311 hour, 15 minutes, 31 secondsbranch. Excellent. That's it for this chapter. And then in the next one, we're going to focus on the checkout page UI.
1:15:391 hour, 15 minutes, 39 secondsSo, let's mark this as completed push to GitHub. Amazing, amazing job. And see you in the next
Chapter 5: 19 Checkout Page
1:15:491 hour, 15 minutes, 49 secondschapter. In this chapter, we're going to go ahead and implement the checkout page, continuing from our previous
1:15:571 hour, 15 minutes, 57 secondschapter where we implemented the cart functionality.
1:16:011 hour, 16 minutes, 1 secondIn order to do that, we're going to have to implement the checkout page, checkout layout, and the checkout
1:16:091 hour, 16 minutes, 9 secondsprocedures. As always, ensure that you are up to date on your master branch, which you can do by running git status.
1:16:161 hour, 16 minutes, 16 secondsAfter that, go ahead and do fun rundev. Then, let's go ahead and let's
1:16:231 hour, 16 minutes, 23 secondsgo and load our app and let's visit a random store.
1:16:281 hour, 16 minutes, 28 secondsSo, I have John's product here. So, I'm going to go ahead and visit John's store here. And make sure you add something to
1:16:361 hour, 16 minutes, 36 secondsyour cart right now. Clicking on this button redirects me to tenants John checkout, but it's not found. We can
1:16:451 hour, 16 minutes, 45 secondsquickly create that inside of app tenants tenants slug and go ahead and
1:16:521 hour, 16 minutes, 52 secondscreate a new checkout route group here and then a checkout folder and inside a
1:16:591 hour, 16 minutes, 59 secondspage tsx div checkout page. So it's rendered
1:17:061 hour, 17 minutes, 6 secondshere localhost 3000 tenants slug checkout. There we go. No more error.
1:17:121 hour, 17 minutes, 12 secondsInstead, it's a checkout page. Now, now let's go inside of the checkout route group and create the
1:17:221 hour, 17 minutes, 22 secondslayout.tsx. And let's go ahead and prepare some components. Go inside of source modules
1:17:301 hour, 17 minutes, 30 secondstenants UI and copy the navbar. Now go inside of checkout and let's go inside
1:17:371 hour, 17 minutes, 37 secondsof the UI folder inside of components.
1:17:421 hour, 17 minutes, 42 secondsAnd let's go ahead and create our own navbar here. And my apologies, let's just copy
1:17:511 hour, 17 minutes, 51 secondsthe entire thing and paste it here from tenants. So now the navbar in the checkout module and in the tenants module is identical. Make sure that you
1:18:001 hour, 18 minutesare modifying the one in the new checkout UI components navbar. Here we can remove the skeleton because there's not going to be any loading here.
1:18:101 hour, 18 minutes, 10 secondsWe can remove the dynamic checkout button as there's not going to be any dynamic loading as well. We could remove
1:18:171 hour, 18 minutes, 17 secondsthe RPC and loading entirely. But leave the button. We are going to need it.
1:18:221 hour, 18 minutes, 22 secondsLeave the slug prop here and modify this a little bit. So we're not going to have this, but we will have a paragraph here
1:18:301 hour, 18 minutes, 30 secondswhich will simply write the text checkout. And in here we're going to add a button
1:18:371 hour, 18 minutes, 37 secondscontinue shopping. This button will have a variant of elevated as child
1:18:461 hour, 18 minutes, 46 secondsprop and inside a link. The link will have an href of
1:18:541 hour, 18 minutes, 54 secondsgenerate tenant URL and pass in the slug.
1:18:591 hour, 18 minutes, 59 secondsMake sure you have the link imported from here and you can remove the image.
1:19:021 hour, 19 minutes, 2 secondsAnd I don't think we need use client explicitly for any reason here.
1:19:101 hour, 19 minutes, 10 secondsGreat. Now let's go ahead and let's go inside of our newly created checkout
1:19:171 hour, 19 minutes, 17 secondsroute group in the tenants here and in the layout. Let's go ahead and do the layout.
1:19:241 hour, 19 minutes, 24 secondsAnd what we're going to do here is we're going to copy the layout from our home in the tenant slug here.
1:19:341 hour, 19 minutes, 34 secondsSo it's easier. Let's just copy the entire thing and paste it here. But we are going to simplify it. So we are keeping the params and the children. But
1:19:431 hour, 19 minutes, 43 secondsthere's no need for any pre-fetching which means there's no need for the suspension for the suspense for the hydration boundary for none of that.
1:19:521 hour, 19 minutes, 52 secondsNow let's remove the unnecessary files. The footer will stay the same as for the tenants, but the navbar should
1:20:001 hour, 20 minutesbe imported from the checkout. So it should still accept the slug prop because we are using it to
1:20:071 hour, 20 minutes, 7 secondsgenerate the URL. Now, when you visit the checkout page, you should see continue shopping, which redirects you
1:20:141 hour, 20 minutes, 14 secondsback to uh that tenants store and you should no longer be getting any
1:20:221 hour, 20 minutes, 22 seconds404s. Great. Now, let's go ahead uh and let's implement the check out page. Let me just see on mobile. Yeah, I want to
1:20:311 hour, 20 minutes, 31 secondsleave the continue shopping here. I I don't see I don't see it as a problem.
1:20:371 hour, 20 minutes, 37 secondsI think it can stay here. Now, let's implement the actual checkout page. In order to do that, we have to go inside
1:20:441 hour, 20 minutes, 44 secondsof checkout page.tsx. And what we're going to do is we're just going to return the checkout
1:20:511 hour, 20 minutes, 51 secondspage view. My apologies. It's going to be called checkout view. And we're also
1:20:591 hour, 20 minutes, 59 secondsgoing to have some interface here just to load the slug from the params. So turn the page into an asynchronous
1:21:071 hour, 21 minutes, 7 secondscomponent which has access to the params and just await the params here and then
1:21:131 hour, 21 minutes, 13 secondspass in tenant slug slug. Now let's implement the checkout view component.
1:21:211 hour, 21 minutes, 21 secondsWe're going to implement that inside of source modules checkout in the UI. Go ahead and create a new folder called
1:21:291 hour, 21 minutes, 29 secondsviews and inside checkout- view.tsx. Let's go ahead and export the
1:21:391 hour, 21 minutes, 39 secondsconstant checkout view. And let's also pass in the checkout view props. We can now extract the tenant slug from the checkout view props here.
1:21:521 hour, 21 minutes, 52 secondsLet's go ahead and return a div including the tenant slug so we can see the data drilling working. We can now import this from modules checkout UI
1:22:001 hour, 22 minutesviews checkout view and you should just see a text John which is basically the slug that we are on. Now let's go back
1:22:081 hour, 22 minutes, 8 secondsinside of the checkout view. Let's mark this as a use client. What we have to do now is we have to implement a procedure
1:22:171 hour, 22 minutes, 17 secondswhich is going to load the items from our local storage. So, what I'm going to do is I'm going to copy my products
1:22:271 hour, 22 minutes, 27 secondsserver and I'm going to paste it in the checkout. So, now our checkout has procedures. Ours is going to be much simpler. You can remove this import.
1:22:391 hour, 22 minutes, 39 secondsRename this to checkout router. You can remove get one entirely.
1:22:451 hour, 22 minutes, 45 secondsAnd we're going to call this get products because this will be accessed with checkout.get
1:22:521 hour, 22 minutes, 52 secondsproducts. So in here we have to be explicit. We are fetching products because it's not exactly clear. So now what we're going to do
1:23:021 hour, 23 minutes, 2 secondshere is just accept uh an array of string here. Let's go ahead and modify this so it's much simpler query.
1:23:131 hour, 23 minutes, 13 secondsSo just this like that we don't need where sort page limit we will need where so let's add
1:23:231 hour, 23 minutes, 23 secondswhere id in input do ids. So it needs to
1:23:301 hour, 23 minutes, 30 secondsmatch. There we go. Now what I want to do here is maybe not immediately but later on we want to do some validation
1:23:391 hour, 23 minutes, 39 secondsyou know in case the user's data uh is invalid in case their local storage is compromised in some way and we can
1:23:481 hour, 23 minutes, 48 secondsactually do that quite easily by doing if data total documents does not match
1:23:551 hour, 23 minutes, 55 secondsinput ID's length meaning we couldn't load all items. Let's throw new PRPC
1:24:031 hour, 24 minutes, 3 secondserror from the server with code not found and a message products not
1:24:111 hour, 24 minutes, 11 secondsfound. And then we're going to capture this inside of use effect. And we're going to clear the user's local storage
1:24:181 hour, 24 minutes, 18 secondsfrom there. So they don't have those invalid elements anymore. But we can do that later. Now that we have the checkout router, let's go inside of TRPC
1:24:271 hour, 24 minutes, 27 secondsrouters and underscore app. and let's add checkout checkout
1:24:341 hour, 24 minutes, 34 secondsrouter. Make sure you add the import. Now that we have the checkout router, we can go back inside of our
1:24:431 hour, 24 minutes, 43 secondscheckout view which we've started developing. Mark this as use client. Go ahead and add use
1:24:501 hour, 24 minutes, 50 secondstRPC. Go ahead and add use query. So no use suspense query here, no hydration
1:24:581 hour, 24 minutes, 58 secondshere and no prefetching here because this is from the local storage inside.
1:25:021 hour, 25 minutes, 2 secondsRight? So when I go to checkout and when I go to get products and when I add the query options in here, I have to pass
1:25:121 hour, 25 minutes, 12 secondsids. Right? And we're going to get these ids by using use cart and passing in the
1:25:201 hour, 25 minutes, 20 secondstenant slug here. And then in here I will be able to extract product ids and I can then add
1:25:291 hour, 25 minutes, 29 secondsthem here. And instead of tenant slug let's do JSON stringify data
1:25:361 hour, 25 minutes, 36 secondsnull 2. And there we go. You can see that my product name here is uh John's
1:25:441 hour, 25 minutes, 44 secondsproduct which is exactly what's in my cart. There we go. But let's imagine a
1:25:511 hour, 25 minutes, 51 secondsscenario. What if uh our data gets deleted? Let's say this product gets deleted, but we have it in
1:26:001 hour, 26 minutesour cart. We shouldn't allow the user to purchase that. So, instead, what we're going to do is we're going to add a Let me see. Maybe I can do an on error here.
1:26:121 hour, 26 minutes, 12 secondsI don't think I can do an on error in here. Let me check. On error, I cannot do it.
1:26:231 hour, 26 minutes, 23 secondsInstead, what I'm going to do is I'm going to capture the use effect here and I'm going to be looking for the
1:26:321 hour, 26 minutes, 32 secondserror here. So, I'm going to put it here. And if error.code is not found,
1:26:411 hour, 26 minutes, 41 secondsuh let's state it like this. If there is no error, return. Let me just see how does the error look like.
1:26:531 hour, 26 minutes, 53 secondserror. So if there is no if error.data I can do this I think if
1:27:001 hour, 27 minuteserror.data.code is not found in this case I want to do clear all carts and we can add that here as well.
1:27:101 hour, 27 minutes, 10 secondsBasically I'm trying to uh help the user to remove invalid data if they have it
1:27:171 hour, 27 minutes, 17 secondsand it should be great that the user has some feedback here. So let's import use toast or toast from
1:27:251 hour, 27 minutes, 25 secondssonner. So if we do that, we're going to do toast dot warning
1:27:311 hour, 27 minutes, 31 secondsuh cart cleared. Maybe first invalid products
1:27:391 hour, 27 minutes, 39 secondsfound card cleared. Basically, so the user is aware that something just happened, right? So,
1:27:461 hour, 27 minutes, 46 secondsby default, nothing should really happen because all of our products are here.
1:27:511 hour, 27 minutes, 51 secondsBut let me go ahead and do the following. I'm going to go to localhost 3000 admin, and I'm going to delete this product that I have in my
1:27:591 hour, 27 minutes, 59 secondscart. So, in order to do that, I have to log out and log in as admin. Then, I'm going to go inside of
1:28:071 hour, 28 minutes, 7 secondsthe products. And there we go. John's product. I'm going to delete it now. So, what happens now? Our local
1:28:141 hour, 28 minutes, 14 secondsstorage is independent of the user. So I still have it. So I'm manually going to go to slashtenants/j. So this is John's shop.
1:28:251 hour, 28 minutes, 25 secondsAnd you can see that I have something in my cart here because it's in my local storage. So now what should happen here?
1:28:321 hour, 28 minutes, 32 secondsIt's now getting errors. But it's retrying three times. And there we go.
1:28:371 hour, 28 minutes, 37 secondsInvalid products found. Cart has been cleared. And you can see that I have no items here. That is exactly the behavior
1:28:451 hour, 28 minutes, 45 secondswe wanted. So now when you click continue shopping here, you can see you no longer have anything in your cart.
1:28:511 hour, 28 minutes, 51 secondsAnd you can also see that inside of your application here, you can see my tenant carts are completely empty. So I did a
1:29:001 hour, 29 minutesbrute force here because this shouldn't really happen that often, but if it does, we're just going to clear all
1:29:071 hour, 29 minutes, 7 secondscards, right? If there's a single thing we cannot find from the array that the user has provided us with
1:29:161 hour, 29 minutes, 16 secondsuh in comparison to what we are searching for in the database. Obviously some ids are invalid or maybe they were
1:29:241 hour, 29 minutes, 24 secondsdeleted right. So we are passing that message along to the front end and this captures it and says okay I have to
1:29:321 hour, 29 minutes, 32 secondsclear all carts. You can decide if you want this behavior or not. So feel free to comment it out if you do not like this solution. Great. Now that we have
1:29:411 hour, 29 minutes, 41 secondsestablished this, I'm going to go ahead and add some products and I'm going to go back to my checkout
1:29:481 hour, 29 minutes, 48 secondsview. All right. So I have created two items in Antonio here. So I'm going to go ahead and I'm going to add both of them to the cart.
1:29:591 hour, 29 minutes, 59 secondsSo now I have two items in here and I load two items in here. And since the data total documents match the amount of
1:30:071 hour, 30 minutes, 7 secondsids I have submitted, you can see that it works just fine with no problems. I'm going to keep an eye on this solution because you know it is quite brute
1:30:161 hour, 30 minutes, 16 secondsforcy. So I don't ever want this to run if it doesn't need to run. So if it's causing you any problems, you can of
1:30:241 hour, 30 minutes, 24 secondscourse comment it out and remove it and solve the error in some other way. Now let's go ahead and let's display this in
1:30:321 hour, 30 minutes, 32 secondsa nicer way. So I'm going to start by giving this div some padding. Large
1:30:381 hour, 30 minutes, 38 secondspadding 16 padding top four px4 LG
1:30:471 hour, 30 minutes, 47 secondspx12. Now it should be aligned with the checkout and the footer. Now let's go ahead and start
1:30:551 hour, 30 minutes, 55 secondsdisplaying some checkout items here. So I'm going to create a div with a class name of grid grid columns 1 on large
1:31:041 hour, 31 minutes, 4 secondsgrid columns 7 gap 4 and on LG gap 16.
1:31:101 hour, 31 minutes, 10 secondsSo in here we're going to have two columns. The first column will be the place where we are going to render our
1:31:191 hour, 31 minutes, 19 secondsitems and then the second column with a span of three will be the checkout sidebar.
1:31:301 hour, 31 minutes, 30 secondsOops. So, this is the checkout sidebar and in here we're going to render our items. Let's create a div with a class
1:31:391 hour, 31 minutes, 39 secondsname border rounded medium overflow hidden and background color of white.
1:31:471 hour, 31 minutes, 47 secondsAnd in here, let's do data question mark docs dom product
1:31:551 hour, 31 minutes, 55 secondsindex and create the checkout item. We don't have this yet, so we're going to be working on it
1:32:021 hour, 32 minutes, 2 secondssoon. Let's pass some props. Product id is last will be if index is equal to
1:32:111 hour, 32 minutes, 11 secondsdata docs length minus one. So the index is match because indexes start at zero.
1:32:181 hour, 32 minutes, 18 secondsImage URL will be product image question mark URL name will be
1:32:271 hour, 32 minutes, 27 secondsproduct.name product URL here is going to be um
1:32:351 hour, 32 minutes, 35 secondsgenerate tenant URL product.tenant.slug slug slash
1:32:431 hour, 32 minutes, 43 secondsproducts. So I have to add backix here encapsulate this like that and then
1:32:511 hour, 32 minutes, 51 secondsslash products product ID. Below that we're going to have the
1:32:591 hour, 32 minutes, 59 secondstenant URL which is going to be simpler and no need for backics in this case. So we can remove this.
1:33:091 hour, 33 minutes, 9 secondsThen we're going to have the tenant name which will be product.tenant.name and we're going to
1:33:181 hour, 33 minutes, 18 secondshave the price product.pric and we're going to have on remove which is going to call a method
1:33:251 hour, 33 minutes, 25 secondswhich we can destructure from here remove product. So let's call remove
1:33:341 hour, 33 minutes, 34 secondsproduct do ID. There we go. Now we have to create the checkout item
1:33:431 hour, 33 minutes, 43 secondscomponent. So we're going to go ahead inside of checkout UI components and create checkout-ite item.tsx.
1:33:551 hour, 33 minutes, 55 secondsThen let's create an interface checkout item props which has is last which is an optional boolean an optional image URL
1:34:031 hour, 34 minutes, 3 secondsname product URL tenant URL tenant name ID price and on remove methods we can
1:34:111 hour, 34 minutes, 11 secondsnow go ahead and export const check checkout item with all of those prompts destructured now let's go ahead and
1:34:191 hour, 34 minutes, 19 secondsstart using them before we do that I just want to add all imports which we are going to need link image and CN
1:34:291 hour, 34 minutes, 29 secondsutil. Now, inside of here, let's start by having a div with a class name
1:34:371 hour, 34 minutes, 37 secondsCN grid grid columns. And inside of here add 8.5
1:34:441 hour, 34 minutes, 44 secondsrem_1 fr out gap of 4
1:34:511 hour, 34 minutes, 51 secondsPR of four and border bottom and then if is last border bottom will be zero so we
1:35:001 hour, 35 minutesdon't have duplicate borders. Then in here add a div with a class name
1:35:071 hour, 35 minutes, 7 secondsoverflow hidden border right. Then add a div with a relative
1:35:151 hour, 35 minutes, 15 secondsaspect square and hide full. Inside of here go ahead and add an
1:35:221 hour, 35 minutes, 22 secondsimage. The image will have a source of image URL or /placeholderpng or whatever you are
1:35:311 hour, 35 minutes, 31 secondsusing. For the alt, you can add the name of the product. Add a fill property here
1:35:371 hour, 35 minutes, 37 secondsand add a class name of object cover. You can now go back to the views
1:35:441 hour, 35 minutes, 44 secondscheckout view and you can import the checkout item from dot dot / components
1:35:511 hour, 35 minutes, 51 secondscheckout item. And now you should start seeing this items. Just wait for them to load.
1:36:001 hour, 36 minutesYou can see I have two items loaded here. Let's continue developing inside of the checkout item.
1:36:061 hour, 36 minutes, 6 secondsSo outside of this, we're going to create a new div with a class name
1:36:131 hour, 36 minutes, 13 secondspy4 flex flex call and justify between inside an empty a div without
1:36:211 hour, 36 minutes, 21 secondsany class names just a link with an href leading to product URL
1:36:281 hour, 36 minutes, 28 secondsand an h4 element rendering the name of the product and the class name with font bold and underline. line. So now you
1:36:371 hour, 36 minutes, 37 secondsshould see the products here and now copy and paste this this time using the tenant
1:36:451 hour, 36 minutes, 45 secondsURL and the tenant name and this can be a
1:36:521 hour, 36 minutes, 52 secondsparagraph and this will be font medium like
1:36:591 hour, 36 minutes, 59 secondsthis. Now go outside of these uh two divs here and create another div with a
1:37:061 hour, 37 minutes, 6 secondsclass name py4 flex flex column justify between and
1:37:141 hour, 37 minutes, 14 secondsinside add a paragraph with a class name font medium inside of here format currency which we
1:37:231 hour, 37 minutes, 23 secondshave from our lib utils and pass in the Nice. And then add a native button
1:37:321 hour, 37 minutes, 32 secondselement with a class name underline and font medium and give it an on click of on
1:37:391 hour, 37 minutes, 39 secondsremove and a type of button and inside write remove. There we go. You can see that
1:37:491 hour, 37 minutes, 49 secondsnow we load all of our items here. And if I click remove on one of them. Of course, if you want to, you can add cursor pointer
1:37:581 hour, 37 minutes, 58 secondshere. So, if you click remove, you can see that it causes a reload of the data here. So, we can
1:38:061 hour, 38 minutes, 6 secondsdecide if we want that or not. But yeah, I think it's okay if it reloads because product IDs have
1:38:151 hour, 38 minutes, 15 secondschanged. So, it re-triggers this. And in in case you know in the meantime
1:38:221 hour, 38 minutes, 22 secondssomething happened uh with um if if in the meantime
1:38:301 hour, 38 minutes, 30 secondsuh the product was deleted we might capture that in this error. There's also one other place where we could do this and that is in the actual checkout.
1:38:391 hour, 38 minutes, 39 secondsRight? So if we try to check out and we notice some errors then maybe we could clear the carts. But yeah, I kind of
1:38:461 hour, 38 minutes, 46 secondslike this for now. Uh let me see if there is a place uh where I should be using the ID. I
1:38:551 hour, 38 minutes, 55 secondsactually don't think I need the ID anywhere. So I'm going to remove it from here and from here. Which means in the checkout view, we can remove it from
1:39:031 hour, 39 minutes, 3 secondshere. Great. Now let's go ahead and let's implement the checkout sidebar component.
1:39:111 hour, 39 minutes, 11 secondsSo the checkout sidebar uh will be rendered in here. Let's do checkout
1:39:241 hour, 39 minutes, 24 secondssidebar and then let's go ahead and give it some props. total will be data
1:39:311 hour, 39 minutes, 31 secondsdocuments reduce uh you know now that I think of it maybe we should get this from the server
1:39:381 hour, 39 minutes, 38 secondsitself right so maybe we can do that here alongside all the
1:39:451 hour, 39 minutes, 45 secondsdata maybe also add total price and let's do data documents
1:39:541 hour, 39 minutes, 54 secondsreduce get the accumulator and the product and simply combine the accumulator with the product. And set the accumulator to be zero by default.
1:40:051 hour, 40 minutes, 5 secondsAnd now we have total price from the API. So maybe we should just do data dot
1:40:121 hour, 40 minutes, 12 secondstotal price. There we go. We don't have to do it on the front end. Now for the checkout here, actually let's call this
1:40:211 hour, 40 minutes, 21 secondsonch checkout. We are going to leave it as an empty arrow function for now. is cancelled will be uh for now false. Is
1:40:301 hour, 40 minutes, 30 secondspending will be false as well. I'm never sure if canled is supposed to be with two L's or one, but
1:40:381 hour, 40 minutes, 38 secondsI think Stripe uses a single L. So, I will use a single L as well. Now, let's go ahead and create the checkout sidebar
1:40:471 hour, 40 minutes, 47 secondscomponent. So, inside of here, checkout- sidebar.tsx, tsx let's create the props with total
1:40:541 hour, 40 minutes, 54 secondscheckout actually on checkout optional is cancelled and is pending then we can create a component
1:41:021 hour, 41 minutes, 2 secondswith that like this and let's go ahead and return a div with a class
1:41:111 hour, 41 minutes, 11 secondsname of border rounded md overflow
1:41:171 hour, 41 minutes, 17 secondshidden background white flex flex column And in here a div with a class name flex
1:41:271 hour, 41 minutes, 27 secondsitem center justify between adding four and border bottom an H4 element here rendering the
1:41:351 hour, 41 minutes, 35 secondstext total and a class name font medium and text large here below that
1:41:441 hour, 41 minutes, 44 secondsinstead of a heading we're going to have a paragraph with the same classes and it's simply going to format currency
1:41:521 hour, 41 minutes, 52 secondshere total. So import format currency from here. And now outside of this div, we're
1:42:011 hour, 42 minutes, 1 secondgoing to create another div with a class name padding for flex item center and justify
1:42:091 hour, 42 minutes, 9 secondscenter. And in here add a button from components UI button. So just make sure you have that import. And let's give it some props.
1:42:191 hour, 42 minutes, 19 secondsVariant elevated. Disabled is pending. On click on checkout. Let me fix the typo inside
1:42:281 hour, 42 minutes, 28 secondsof the on click here. Size large and class name text
1:42:351 hour, 42 minutes, 35 secondsbase full width text white. Background primary hover background
1:42:431 hour, 42 minutes, 43 secondspink 400. and hover text primary and inside the text checkout
1:42:511 hour, 42 minutes, 51 secondslike this. Now let's go to the checkout view here and import the checkout sidebar
1:43:001 hour, 43 minutesfrom components checkout sidebar and refresh this page. And as you can see uh at the moment at moment it was not a
1:43:081 hour, 43 minutes, 8 secondsnumber but then eventually it turns into a number. So now if we want to we can add some proper loading states here so
1:43:151 hour, 43 minutes, 15 secondsthat this actually uh looks a little bit better. So what I'm going to do here is I'm going to add two states. The first one will be if there is no data at all.
1:43:261 hour, 43 minutes, 26 secondsSo if there's no data or if data documents.length is equal to zero in that case let's go ahead and let's
1:43:341 hour, 43 minutes, 34 secondsreturn the same thing we return in the product list view.
1:43:421 hour, 43 minutes, 42 secondsLet me just find it. Product list view product list. So in here we have this
1:43:491 hour, 43 minutes, 49 secondslogic here to return this with an inbox icon of no products found. We can do that here. And let me just remove the let me make this better. There we go.
1:44:001 hour, 44 minutesAnd just get the inbox icon. If you want to you can also create this in a separate component like empty state or something. And maybe we should do this.
1:44:091 hour, 44 minutes, 9 secondsData question mark docs.length equals zero or data total docs is equal to zero. Even
1:44:191 hour, 44 minutes, 19 secondsquicker. So you can see that it's not going to show by default. It will only show uh if it's loaded and if there is
1:44:281 hour, 44 minutes, 28 secondsno data. And now let's go ahead and let's create the loading state here. So the
1:44:351 hour, 44 minutes, 35 secondsloading state should will probably happen before this. So if uh this I have
1:44:421 hour, 44 minutes, 42 secondsto extract is loading from here. So is loading if is
1:44:491 hour, 44 minutes, 49 secondsloading. In that case let's go ahead and let's do a similar thing like this. Maybe I can copy this and instead of this I will
1:44:571 hour, 44 minutes, 57 secondsjust add a loader icon from Lucid React and give it a class name text muted foreground and animate spin. So I've
1:45:061 hour, 45 minutes, 6 secondsimported loader icon from Lucid React. I have no idea how this is going to look like. Let me do a hard refresh
1:45:131 hour, 45 minutes, 13 secondshere. H looks okay, but I think um some things here are missing. Yes, I know
1:45:211 hour, 45 minutes, 21 secondswhat's missing. uh this wrapper. So I'm going to copy this wrapper and add it
1:45:301 hour, 45 minutes, 30 secondshere. And I will do the same thing here. And now I think it should look better. So let's do a hard refresh.
1:45:401 hour, 45 minutes, 40 secondsThere we go. This is the loading state.
1:45:411 hour, 45 minutes, 41 secondsAnd then it loads. If I click remove, it says no products found. Great. So we now
1:45:481 hour, 45 minutes, 48 secondshave a very nice checkout screen which may I say is also an intelligent checkout because it will notice uh if we
1:45:571 hour, 45 minutes, 57 secondshave any invalid if we didn't manage to find some products which you know shouldn't happen just like that you know
1:46:061 hour, 46 minutes, 6 secondswe are very specifically throwing that error if that happens. uh if it's causing you any problems, if it's you see your card being cleared all the time and you don't know why, maybe it's this.
1:46:161 hour, 46 minutes, 16 secondsMaybe our implementation isn't exactly correct. Uh and there's one more thing that we have to do here, which is the is
1:46:241 hour, 46 minutes, 24 secondscancelled state in the checkout sidebar here. Um we're going to implement I mean we can implement it now, but
1:46:321 hour, 46 minutes, 32 secondsum it's basically what will appear if you cancel your checkout. So you can do is cancelled
1:46:391 hour, 46 minutes, 39 secondshere like this and then add a div with a class name padding for flex justify
1:46:481 hour, 46 minutes, 48 secondscenter items center and border top and in here we can do
1:46:561 hour, 46 minutes, 56 secondsum we can add an error message. So class name background red 100 border border
1:47:051 hour, 47 minutes, 5 secondsred 400 font medium px of four py of three rounded relative
1:47:131 hour, 47 minutes, 13 secondsuh actually no need for relative flex item center and then inside of here just a div with a class
1:47:221 hour, 47 minutes, 22 secondsname flex and item center render the circle x icon from lucid to the React and give it a class
1:47:311 hour, 47 minutes, 31 secondsname of size 6MR of 2, fill red 500 and
1:47:371 hour, 47 minutes, 37 secondstext red 100. And below it, we're going to render our message which is going to
1:47:461 hour, 47 minutes, 46 secondsbe checkout failed. Please try again.
1:47:521 hour, 47 minutes, 52 secondsAnd let's give um let's give this div a width of pool. So now if you go to the
1:48:001 hour, 48 minutescheckout view and you change the sidebar, if you change the sidebar is
1:48:081 hour, 48 minutes, 8 secondscancelled to true. You should see checkout failed.
1:48:131 hour, 48 minutes, 13 secondsPlease try again. Now let's just see what this is about. In here we have a type error for
1:48:221 hour, 48 minutes, 22 secondsthe checkout sidebar because uh this is a expecting a type of number but this could potentially be undefined. So let's
1:48:301 hour, 48 minutes, 30 secondsjust do total price or zero here maybe or we can do it even
1:48:381 hour, 48 minutes, 38 secondsbetter inside of our get products here where we did a calculation. Yeah, let's do this. So
1:48:471 hour, 48 minutes, 47 secondscons total price We can do the exact same method here.
1:48:531 hour, 48 minutes, 53 secondsLet's do data docs dot reduce accumulator and product here. And instead of immediate return, let's go
1:49:011 hour, 49 minutes, 1 secondahead and do con price and ensure that it's a number. So product dot price and then return
1:49:091 hour, 49 minutes, 9 secondsaccumulator plus and in parenthesis if it is not a number, it's we're just going to assume
1:49:161 hour, 49 minutes, 16 secondsit's zero. and then price. And it looks like this cannot work the way I imagined it to work.
1:49:261 hour, 49 minutes, 26 secondsMaybe I need to add zero here. There we go. So, make sure you add the initial accumulator to be zero. And now the
1:49:331 hour, 49 minutes, 33 secondstotal price should I think always be a number.
1:49:391 hour, 49 minutes, 39 secondsLet me see if that actually Yeah, but I'm not sure if that really changes here because data can potentially be undefined. So, we didn't even have to do that change. Just do this.
1:49:521 hour, 49 minutes, 52 secondsOkay. And because you don't even see that because it's loading, right? So, it's now it's loading. It's loading. And there we go. Uh we have total price
1:50:011 hour, 50 minutes, 1 secondhere. And we have also uh and we also have uh the elements
1:50:081 hour, 50 minutes, 8 secondsreload here. Amazing. We can remove these elements. I'm not sure uh yeah this reloading every time we remove it.
1:50:151 hour, 50 minutes, 15 secondsMaybe I will explore improving that in some other way. Uh but for now I feel pretty confident in this. Uh great. So
1:50:241 hour, 50 minutes, 24 secondswe have that resolved. Uh and in the next chapter we're going to connect Stripe. So, we've implemented the
1:50:321 hour, 50 minutes, 32 secondscheckout page, we've implemented the checkout layout, and we have implemented the checkout procedures here. That's it.
1:50:401 hour, 50 minutes, 40 secondsUh, so 19 checkout page. Let's go ahead and do a get checkout new branch 19
1:50:471 hour, 50 minutes, 47 secondscheckout page. Get add commit 19 checkout
1:50:561 hour, 50 minutes, 56 secondspage. and get push U origin 19 checkout page. Once you've confirmed you are on
1:51:031 hour, 51 minutes, 3 secondsthe new branch and here and you can see the detachment you can go to e-commerce your
1:51:111 hour, 51 minutes, 11 secondsGitHub create a new pull request here and let's review our
1:51:191 hour, 51 minutes, 19 secondschanges. So the summary, we introduced a comprehensive checkout experience with a dedicated page and layout featuring a
1:51:281 hour, 51 minutes, 28 secondsresponsive navigation bar. Excellent. So here is the walkthrough. We introduced a new checkout feature with tenants
1:51:361 hour, 51 minutes, 36 secondsspecific context. We added several new React components to handle asynchronous slug resolution and render a structured
1:51:441 hour, 51 minutes, 44 secondslayout and navigation elements. a TRPC router with get products procedure is added to the fetch and process product
1:51:511 hour, 51 minutes, 51 secondsdata as always file by file change here the sequence diagram describing how our
1:51:581 hour, 51 minutes, 58 secondscheckout view works and how it loads the data and some useful comments in here uh
1:52:061 hour, 52 minutes, 6 secondsthis is what we talked about previously AI models don't yet uh know tailwind version 4 so this is actually correct
1:52:131 hour, 52 minutes, 13 secondsour version is correct This one is unneeded here for the checkout. Uh we know that this is just demo. So we can
1:52:211 hour, 52 minutes, 21 secondsleave it like this. And in here it made a good suggestion. It recommends clearing only the cart of the user
1:52:291 hour, 52 minutes, 29 secondsinstead of clearing all carts. So perhaps we could do that. The reason I opted for all carts is simply
1:52:371 hour, 52 minutes, 37 secondsto have a way to invalidate that entire local storage key. Right? So that's why
1:52:451 hour, 52 minutes, 45 secondsI went a bit aggressive here. But if you want to, you can uh see what the AI says and they recommend clearing the
1:52:521 hour, 52 minutes, 52 secondsindividual cart, which definitely makes sense. I'm going to think about it and see in the next chapter what I will do.
1:53:011 hour, 53 minutes, 1 secondFor now, I'm going to merge this pull request. I am satisfied with all the changes. I'm not going to delete the
1:53:081 hour, 53 minutes, 8 secondsbranch. Instead, I will just confirm that I have it here. And then as always get checkout back to my main or master
1:53:171 hour, 53 minutes, 17 secondsbranch. And I'm doing get pull origin on my main or master branch. G status to
1:53:251 hour, 53 minutes, 25 secondsconfirm and the graph to confirm the merge as well. That's it. We have merged our changes. Amazing job and see you in the next chapter.
Chapter 6: 20 Stripe Integration
1:53:381 hour, 53 minutes, 38 secondsIn this chapter, we're going to go ahead and implement Stripe integration. Before we go ahead and
1:53:451 hour, 53 minutes, 45 secondsproceed with the steps outlined in the document, I want you to confirm that you are on the master or main branch and
1:53:541 hour, 53 minutes, 54 secondsthat you have merged all the changes from the previous chapter. You can also do that by running git status.
1:54:021 hour, 54 minutes, 2 secondsNow, let's go ahead and let's create the Stripe project. So, right here, I've created a new Stripe account. So, what
1:54:101 hour, 54 minutes, 10 secondsI'm going to do for now is just skip this step if you are being prompted here. And we actually might have to run
1:54:181 hour, 54 minutes, 18 secondsover this wizard later, but for now, I'm going to skip this completely. I just want to obtain the API developer key.
1:54:281 hour, 54 minutes, 28 secondsAnd this is a completely new account. So basically uh we are seeing the same thing now, right? But in case you aren't
1:54:361 hour, 54 minutes, 36 secondsuh go ahead and create a new account. Uh so in here it's telling me to verify my business. So I'm just going
1:54:451 hour, 54 minutes, 45 secondsto click got it here and I will just close this for now. Right, I don't want it. And I want you to notice a couple of
1:54:521 hour, 54 minutes, 52 secondsthings going on here. So as I understood, stripe has changed from
1:54:591 hour, 54 minutes, 59 secondstheir test mode to sandbox, right? So sandbox is different from test mode uh
1:55:061 hour, 55 minutes, 6 secondsin a way that I feel it's more isolated, right? So for example, the way test mode works is that you have your account
1:55:131 hour, 55 minutes, 13 secondswhich is your real business account and then on that account you turn on the test mode whereas sandbox is like a
1:55:221 hour, 55 minutes, 22 secondscompletely separated instance from your actual account, right? Uh and you can see that in here I can't even exit the
1:55:301 hour, 55 minutes, 30 secondssandbox because I need to verify my business before I go live. So I think that you're going to have the same uh
1:55:371 hour, 55 minutes, 37 secondsstructure here, right? It it will depend on whether you used Stripe before because I know that on my other Stripe accounts I have a little bit of a
1:55:451 hour, 55 minutes, 45 secondsdifferent interface, but I'm pretty confident. Click in in here and try and create a new account. And then you
1:55:531 hour, 55 minutes, 53 secondsshould basically see the sandbox by default. So basically what we need here is we need to copy the secret key. You
1:56:001 hour, 56 minutescan see how it already knows from the recommendations here. But just in case you can't find your secret key here, I always like to go ahead and try to find
1:56:101 hour, 56 minutes, 10 secondsit through the dashboard here. So we can access the developers from the settings, but we also have the developers right here in the corner. So I think that's
1:56:191 hour, 56 minutes, 19 secondshow we can also access that. There we go. Developers API keys. And you can see how in here I can also find those secret keys. In our case, we are interested in the secret key. So go ahead and copy it.
1:56:311 hour, 56 minutes, 31 secondsMake sure that you are in that sandbox or test mode, you know, whatever pops up for you. And then we're going to go
1:56:391 hour, 56 minutes, 39 secondsahead and add stripe values here. So that will be stripe secret
1:56:451 hour, 56 minutes, 45 secondskey. Make sure that you don't add next public in front of that. Next public basically means that the environment
1:56:541 hour, 56 minutes, 54 secondsvariable will be accessible on the client. We don't want that when it comes to the stripe key. And once we have
1:57:011 hour, 57 minutes, 1 secondthat, let's go ahead and do bun at Stripe. And I'm going to show you what is the latest version. So you don't have to type in at latest if you want to be on the same level as I am. There we go.
1:57:121 hour, 57 minutes, 12 secondsUh not same level, same version. Right?
1:57:141 hour, 57 minutes, 14 secondsSo if you want to, you can add Stripe at 18.0.0. And once you have your Stripe
1:57:221 hour, 57 minutes, 22 secondsversion, let's go ahead and let's install uh my apologies. Let's create the Stripe util. So inside of lib here
1:57:301 hour, 57 minutes, 30 secondscreate stripe.ds import stripe from stripe and export const stripe to be new
1:57:401 hour, 57 minutes, 40 secondsstripe. And now let's add our environment key. I always like to copy it and add an exclamation point at the end so you get rid of the type errors.
1:57:511 hour, 57 minutes, 51 secondsNow we have to specify the API version which is always easy to do because you can just select whatever pops up here.
1:58:001 hour, 58 minutesSo this is the version that I will be using. If yours is different, I don't think it's going to matter that much
1:58:071 hour, 58 minutes, 7 secondsexcept if you're watching, you know, after some breaking API change. But I think that these API versions are uh
1:58:151 hour, 58 minutes, 15 secondsfixed to the package version. So if you want to if you have some other version you can try installing this one and see
1:58:221 hour, 58 minutes, 22 secondsif you get this and let's add TypeScript set to true. So now we have uh the
1:58:311 hour, 58 minutes, 31 secondsstripe library here and the next thing I want to do is I want to go inside of my
1:58:391 hour, 58 minutes, 39 secondscheckout procedures right here.
1:58:461 hour, 58 minutes, 46 secondsSo, so far we only have get products here. And now let's add a purchase procedure. And this will actually be a
1:58:551 hour, 58 minutes, 55 secondsprotected procedure. Basically, something that I only want logged in users to do. But the problem is we only have base procedure as of now, right?
1:59:071 hour, 59 minutes, 7 secondsSo let's go inside of at ERRPC in it here and let's go ahead and create the
1:59:141 hour, 59 minutes, 14 secondsproper protected procedure. So the way we're going to do that is by doing export const protected
1:59:221 hour, 59 minutes, 22 secondsprocedure base procedure. So we are basically going to extend on top of this one because we want to have the payload
1:59:301 hour, 59 minutes, 30 secondsinside base procedure use asynchronous destructure the context and
1:59:381 hour, 59 minutes, 38 secondsnext. And now inside of here we are first going to get the headers using await get
1:59:461 hour, 59 minutes, 46 secondsheaders. We can get headers from headers next headers as get
1:59:531 hour, 59 minutes, 53 secondsheaders. So in here I'm awaiting the headers and then we can get the current session using await context database out
2:00:012 hours, 1 secondand simply pass in the headers. I think we actually do that very same thing in the out procedures.
2:00:092 hours, 9 secondsRight? When I attempt to get the session, we do exactly that. But now we are creating a reusable way of doing it.
2:00:172 hours, 17 secondsAnd now I'm going to do the following.
2:00:192 hours, 19 secondsIf there is no session user, I'm going to throw new TRPC
2:00:252 hours, 25 secondserror. You can import the TRPC error from at TRPC
2:00:332 hours, 33 secondsserver. In here, add a code unauthorized and a message not
2:00:422 hours, 42 secondsauthenticated. Or you can add something like must be logged in if you want to be more friendly to the users. And now what
2:00:492 hours, 49 secondsyou want to return is a next. And inside of the context you want to preserve the context and then add a
2:00:592 hours, 59 secondssession. Preserve the session and then add session user. You might be wondering why am I
2:01:062 hours, 1 minute, 6 secondsdoing this weird spread thing. Uh I'm doing it because of uh type interference
2:01:132 hours, 1 minute, 13 secondsin inference. I'm not sure what's the correct terminology. My apologies. But you can see how uh when I hover over
2:01:202 hours, 1 minute, 20 secondssession now it will tell me that user is a user which exists which makes sense because we added an if clause if it
2:01:282 hours, 1 minute, 28 secondsdoesn't break the method. But if I were to just do session
2:01:352 hours, 1 minute, 35 secondssession now, uh it actually wouldn't take in consideration that we added an
2:01:422 hours, 1 minute, 42 secondsal check for the user. It would just assume that session do user is something that could potentially be undefined. So
2:01:502 hours, 1 minute, 50 secondsbasically uh I could demonstrate this later in a better way, but for now trust me, you want it to work like this. just
2:01:592 hours, 1 minute, 59 secondsspread the user individually and then this will be a much safer to use field.
2:02:052 hours, 2 minutes, 5 secondsSafer in a sense that it will have proper types, right? The the actual security is the same. Now we have this protected procedure and we can use it
2:02:142 hours, 2 minutes, 14 secondsevery time we need uh to do something that only uh an authorized user should do. So instead of base procedure, we now
2:02:222 hours, 2 minutes, 22 secondsuse protected procedure from tRPC in it. And inside of the input here, we're
2:02:322 hours, 2 minutes, 32 secondsgoing to go ahead and pass in a Z object product ids
2:02:382 hours, 2 minutes, 38 secondsarray of of strings. And we are going to ensure that at least one is passed and tenant slug
2:02:482 hours, 2 minutes, 48 secondshere will be minimum of one as well. So basically want to ensure that both of these are
2:02:562 hours, 2 minutes, 56 secondspassed. Then let's go ahead and add mutation here context and
2:03:052 hours, 3 minutes, 5 secondsinput. And let's go ahead and get the products using await context do database
2:03:122 hours, 3 minutes, 12 secondsand then find collection products like this. You can set the
2:03:202 hours, 3 minutes, 20 secondsdepth to two so we load as much info as possible. And then where we're going to go ahead and do
2:03:292 hours, 3 minutes, 29 secondsand open square brackets. And then we're going to do two combinations here. The
2:03:362 hours, 3 minutes, 36 secondsfirst one will be if id is in input ids uh product ids correct. The second
2:03:452 hours, 3 minutes, 45 secondsone will be if tenant do slug equals input tenant slug. So we are
2:03:522 hours, 3 minutes, 52 secondsbasically protecting on the OM level that whatever products we are just about to initiate a checkout with is truly a
2:04:022 hours, 4 minutes, 2 secondsan existing product and b inside of that tenant slug. So even if the user somehow
2:04:102 hours, 4 minutes, 10 secondsmanipulates the local storage so they add some ids that they want we are going to ensure that that cannot happen because nothing will be loaded right.
2:04:202 hours, 4 minutes, 20 secondsUh, and now if you want to, you know, you can go ahead and take a look at, my apologies. Let me just go in here. You
2:04:292 hours, 4 minutes, 29 secondscan do if products total docs does not match, uh, input product ids.length. And in here, you can throw
2:04:372 hours, 4 minutes, 37 secondsnew TRPC error code not found with a message
2:04:442 hours, 4 minutes, 44 secondsproducts not found if you want to. Right? So this will basically mean that uh something
2:04:522 hours, 4 minutes, 52 secondswas incorrect with those products. Uh and now what I want to do is I basically
2:04:592 hours, 4 minutes, 59 secondsuh want to I want to find the tenant that uh we
2:05:062 hours, 5 minutes, 6 secondsare loading the products from. So let's do con tenants data and let's call that await
2:05:152 hours, 5 minutes, 15 secondscontext database find collection tenants limit one pagination false where
2:05:252 hours, 5 minutes, 25 secondsslug equals input tenant slug. Now let's do tenant to be tenants
2:05:332 hours, 5 minutes, 33 secondsdata docs first in the array. If there is no such tenant, we're going to throw
2:05:392 hours, 5 minutes, 39 secondsnew PRPC error code bad request message tenant not
2:05:482 hours, 5 minutes, 48 secondsfound. Actually, it can be not found as well because it it is as required that we find the tenant as it is that we find
2:05:572 hours, 5 minutes, 57 secondsthe product. And I'm going to add a little to-do here. Uh actually I think um yeah
2:06:062 hours, 6 minutes, 6 secondsI'm going to add a to-do throw error if stripe details not submitted. So I'm not going to do that
2:06:142 hours, 6 minutes, 14 secondsyet because I want us to just see stripe working right. But what we can do now is
2:06:212 hours, 6 minutes, 21 secondswe can create line items which are a type of stripe which we can now import from stripe. And you can go ahead and
2:06:292 hours, 6 minutes, 29 secondsimport type specifically. So it's a type of stripe.checkout dot session create
2:06:382 hours, 6 minutes, 38 secondsparams dot line item. And it's going to be an array of those. So what I'm going to do is I'm going to go new line
2:06:472 hours, 6 minutes, 47 secondsproducts dot docs domath and then get the product.
2:06:552 hours, 6 minutes, 55 secondsQuantity of each product will be just one because these are digital products, right? Price data will be unit amount
2:07:042 hours, 7 minutes, 4 secondsproduct.p price. But keep in mind that stripe does those those prices in cents.
2:07:112 hours, 7 minutes, 11 secondsSo we have to multiply our price by 100.
2:07:142 hours, 7 minutes, 14 secondsStripe handles prices in cents. Uh the reason they do that is because it helps
2:07:212 hours, 7 minutes, 21 secondswith calculation and using millunits or cents like this is a correct way to
2:07:282 hours, 7 minutes, 28 secondshandle money amount in your database, right? Because if you do uh something like 0.1 plus 0.2 in JavaScript, not
2:07:372 hours, 7 minutes, 37 secondsjust in JavaScript, right? But in um in basically all programming languages because of the ILE E standard you would
2:07:462 hours, 7 minutes, 46 secondsget something like this basically an in in uh not exactly precise amount. So
2:07:542 hours, 7 minutes, 54 secondswhat they do instead is they multiply this by 100 and they multiply this by 100 and then you're working with
2:08:022 hours, 8 minutes, 2 secondsmillunits which in turn give you a more precise result. So that's why you always have to uh multiply here by 100
2:08:112 hours, 8 minutes, 11 secondsotherwise you're going to get the wrong price at checkout right so that's how you have have to handle that after unit
2:08:182 hours, 8 minutes, 18 secondsamount set the currency to US dollars and then the product data set the name to product name and
2:08:282 hours, 8 minutes, 28 secondsthe metadata here will be the following so stripe account ID actually we don't need uh stripe account ID here yet. So
2:08:372 hours, 8 minutes, 37 secondsthe metadata doesn't have any predefined types. You can pass in whatever you want. So let me just check my tenants collection quickly. Uh we added Stripe
2:08:462 hours, 8 minutes, 46 secondsaccount ID. So yes, we can actually use it. We have both Stripe details submitted and Stripe account ID already.
2:08:532 hours, 8 minutes, 53 secondsSo let's do it. Stripe account ID is tenant.stripe account ID. ID is product ID. Name is product.name.
2:09:042 hours, 9 minutes, 4 secondsprice is product price.
2:09:082 hours, 9 minutes, 8 secondsCurrency will be US dollars. Actually, I don't think we need the currency here at all. I think this should be enough. Just
2:09:172 hours, 9 minutes, 17 secondskeep in mind that this isn't strictly typed. So, what I want you to do is I want you to create a type called product
2:09:252 hours, 9 minutes, 25 secondsmetadata. So, inside of the checkout module, go ahead and create
2:09:312 hours, 9 minutes, 31 secondstypes.ts. Let me just properly name this types. And in here I want you to export
2:09:392 hours, 9 minutes, 39 secondstype product metadata. And you can remove currency. Actually we don't need currency. So just product metadata. And
2:09:462 hours, 9 minutes, 46 secondsthen you can do as product metadata here. This way you will ensure that you don't add any mistakes because the
2:09:532 hours, 9 minutes, 53 secondsmetadata object is not typed. You can add whatever you want here. This is just so you can access it later on through a web hook.
2:10:022 hours, 10 minutes, 2 secondsGreat. So, now that we have that, let's go ahead uh and just create the
2:10:092 hours, 10 minutes, 9 secondscheckout. I think uh that's pretty much all we need. So, we have the line items.
2:10:142 hours, 10 minutes, 14 secondsNow, let me just see where does the line item code end. So, now what we're going to do is
2:10:232 hours, 10 minutes, 23 secondsconst checkout uh await stripe. We can import stripe
2:10:292 hours, 10 minutes, 29 secondsfrom our lib util. There we go. Let me just go down here. So, stripe.checkout.create.
2:10:432 hours, 10 minutes, 43 secondsCustomer will be context.user.e. And I think now is the perfect time to show you uh that
2:10:532 hours, 10 minutes, 53 secondspotential error if it happens. Maybe it won't. Maybe I did something wrong the first time. Basically, you can see how now we have no errors here at all. Uh,
2:11:022 hours, 11 minutes, 2 secondsbasically the this exists, right? It's a string. But if I go inside of the protected procedure here and instead of
2:11:102 hours, 11 minutes, 10 secondsdoing this, uh, I just spread the session here. My apologies, I just do session like this.
2:11:192 hours, 11 minutes, 19 secondsThen you will notice that in here it says that context session user is possibly null which makes no sense
2:11:272 hours, 11 minutes, 27 secondsbecause we protect against that here. So that's why I told you to do it like this because this way the types get inferred
2:11:352 hours, 11 minutes, 35 secondsproperly. There we go. Now let's go ahead and do success URL. Let's do cancel URL.
2:11:452 hours, 11 minutes, 45 secondsBasically the success and cancel URL uh are both going to be uh the following.
2:11:542 hours, 11 minutes, 54 secondsSo I'm going to do process.environment next public app
2:12:022 hours, 12 minutes, 2 secondsURL. You can always double check in your environment that you have next public app URL. So just copy it here.
2:12:112 hours, 12 minutes, 11 secondsuh and you can copy the same thing for the success URL and it will depend where you want to redirect your user. So in my case what I'm going to do now is I'm
2:12:202 hours, 12 minutes, 20 secondsgoing to append the generate tenant URL basically uh
2:12:292 hours, 12 minutes, 29 secondsactually h okay for now the the way I'm going to do it is by manually writing my tenant
2:12:372 hours, 12 minutes, 37 secondsURL here. So tenants input tenant slug checkout and I'm going to append success equals true.
2:12:482 hours, 12 minutes, 48 secondsSo basically I will copy the same thing for the lower one besides except the cancel will be set to
2:12:572 hours, 12 minutes, 57 secondstrue. The reason I'm not going to use that YouTube will make a bit more sense later when we actually implement those subdomains.
2:13:052 hours, 13 minutes, 5 secondsSo now we have to add mode and set it to payment. Line items will just be my line
2:13:132 hours, 13 minutes, 13 secondsitems constant which we have defined right here which basically goes over all the products which we have in our
2:13:212 hours, 13 minutes, 21 secondscart. Uh now I want you to enable invoice creation. So just enable true.
2:13:272 hours, 13 minutes, 27 secondsThis will allow us to later look at the invoice in if we need it.
2:13:322 hours, 13 minutes, 32 secondsmetadata. This will be important so we know uh what user actually did the purchase. So in here add context session
2:13:412 hours, 13 minutes, 41 secondsuser do ID and perhaps we could add a type here export type checkout
2:13:492 hours, 13 minutes, 49 secondsmetadata. And we're just going to set user ID to be a type of string so that you never forget to do this.
2:13:572 hours, 13 minutes, 57 secondsRight? check out metadata from types. And besides the metadata,
2:14:052 hours, 14 minutes, 5 secondsuh actually that's going to be it for now because I'm not yet going to implement the whole uh taking 10% off
2:14:122 hours, 14 minutes, 12 secondsthe fee, right? We first need to enable proper Stripe Connect for that. In this chapter, I'm just trying to do a normal
2:14:192 hours, 14 minutes, 19 secondsuh purchase, a normal checkout. So let's do if there is no checkout URL, we're going to throw new
2:14:272 hours, 14 minutes, 27 secondsTRPC error with a code internal server error and the message fail to create checkout
2:14:372 hours, 14 minutes, 37 secondssession. Otherwise, let's return an object of URL and checkout URL.
2:14:462 hours, 14 minutes, 46 secondsNow, let's go ahead and go back inside of the checkout view right
2:14:532 hours, 14 minutes, 53 secondshere. And we're now going to add besides the use query, we are also going to add a
2:15:012 hours, 15 minutes, 1 secondpurchase using mutation from tan stack react query. So, just make sure you have added the this.
2:15:122 hours, 15 minutes, 12 secondsLet me just move it here and add TRPC dot checkout dot purchase. And let's do
2:15:212 hours, 15 minutes, 21 secondsmutation options inside. And in here we go ahead and we pass everything
2:15:302 hours, 15 minutes, 30 secondswe need. In this case um that would be product ids. Let me see mutation options.
2:15:422 hours, 15 minutes, 42 secondsOh, actually we don't need to pass anything in the mutation options because that's not how uh that's the options are
2:15:502 hours, 15 minutes, 50 secondsnot the same like here. I was expecting the need to pass the ID here, but we don't have to do it like that. I'm going to show you why in a second.
2:15:592 hours, 15 minutes, 59 secondsSo basically now I want you to go in here in the checkout sidebar and on
2:16:072 hours, 16 minutes, 7 secondscheckout do purchase dot mutate and then in here you pass in the
2:16:162 hours, 16 minutes, 16 secondstenant slug and the product ids. There we go.
2:16:232 hours, 16 minutes, 23 secondsAnd in here you have the on success and on
2:16:322 hours, 16 minutes, 32 secondserror. So you can handle all of these events here. Great. So let me just rename this
2:16:392 hours, 16 minutes, 39 secondsto on purchase in this case and go inside of the checkout sidebar and replace that
2:16:452 hours, 16 minutes, 45 secondshere and here as well. And we won't actually be needing to go inside of the checkout sidebar because we're going to
2:16:522 hours, 16 minutes, 52 secondsbe able to do everything from here. So this will be if purchase is pending in that case. This will be is
2:17:002 hours, 17 minutespending. And let's make this disabled instead. I think that makes just more sense. Even though I just said we're not
2:17:092 hours, 17 minutes, 9 secondsgoing to have to go in here anymore. I just think it makes more sense this way.
2:17:142 hours, 17 minutes, 14 secondsThe only thing we are missing is the cancelled state.
2:17:202 hours, 17 minutes, 20 secondsSo um what I want to do is I want to go inside of checkout hooks and I want to create use checkout states
2:17:302 hours, 17 minutes, 30 secondsds and I'm going to make use of our good old nux with pars as boolean and use
2:17:372 hours, 17 minutes, 37 secondsquery states and we're going to export use checkout states which will return the use query states and return success
2:17:462 hours, 17 minutes, 46 secondsor cancel and both of and our booleans with defaults set to false and options
2:17:532 hours, 17 minutes, 53 secondsclear on default. So now let's go ahead and introduce those new uh states
2:18:022 hours, 18 minutes, 2 secondshere. So what I'm going to do is right here introduce states and set states use
2:18:102 hours, 18 minutes, 10 secondscheckout states and you can use the relative import like this. And now we're going to go inside
2:18:182 hours, 18 minutes, 18 secondsof the use effect here. And I will just have a separate use effect for this. So use
2:18:252 hours, 18 minutes, 25 secondseffect. We are specifically going to focus on states do.Success and yeah states.success here.
2:18:342 hours, 18 minutes, 34 secondsSo what I'm going to do is just if states dos
2:18:412 hours, 18 minutes, 41 secondssuccess in that case what I will do is clear my cart not clear all carts just
2:18:482 hours, 18 minutes, 48 secondsclear this current cart and now when I think of it remember that code rabbit suggestion if we notice any invalid
2:18:562 hours, 18 minutes, 56 secondsproducts in this card I think it makes sense yeah to just clear this card not all cards I I think it it just
2:19:042 hours, 19 minutes, 4 secondsmakes more sense, right? So in the upper use effect, you can now also add clear card
2:19:122 hours, 19 minutes, 12 secondshere. I will add to-do invalidate library which we don't yet
2:19:192 hours, 19 minutes, 19 secondshave and we will also get const router to be use router here from next navigation. So after the
2:19:282 hours, 19 minutes, 28 secondsuser successfully purchases something, we're going to redirect that user to slash
2:19:372 hours, 19 minutes, 37 secondsproducts or maybe we are going to call that library. I'm going to see. But for now, let's go ahead and just add the router
2:19:452 hours, 19 minutes, 45 secondshere. Great. So that's if uh we receive back states success. But if we receive
2:19:542 hours, 19 minutes, 54 secondsstates.canc, cancel. We don't have to do anything inside of the use effect. We just have to detect it here.
2:20:012 hours, 20 minutes, 1 secondStates.canc like this. And now what I want to do is I want to go back inside of my purchase
2:20:092 hours, 20 minutes, 9 secondsmutation here and also add on mutate. In the onmutate, I'm going to
2:20:172 hours, 20 minutes, 17 secondscall set states and I'm just going to reset them. So success is set to false and cancel is set to false. Right. So I
2:20:242 hours, 20 minutes, 24 secondswant to completely reset those states. Uh when success happens here, we actually have to open up. So this isn't
2:20:342 hours, 20 minutes, 34 secondswhen when I say on success here, I don't mean user successfully purchased. I just mean the checkout link was successfully
2:20:422 hours, 20 minutes, 42 secondscreated. Which means that we first have to obtain the link and then we have to do window location.href data URL.
2:20:522 hours, 20 minutes, 52 secondsIn the error here, I'm going to check if error.data question
2:21:002 hours, 21 minutesmark.code is unauthorized. In that case, I want to do router.push. And for now, I'm just going
2:21:082 hours, 21 minutes, 8 secondsto redirect the user to slash signin. And I'm going to add a
2:21:152 hours, 21 minutes, 15 secondslittle to-do here. Modify when subdomains enabled.
2:21:222 hours, 21 minutes, 22 secondsbecause we're going to have to handle that later. And let's add toast from Soner. I already have it. Great. So,
2:21:282 hours, 21 minutes, 28 secondslet's add toast error error message here just so the user knows something's going on. Even though if the error is that the
2:21:372 hours, 21 minutes, 37 secondsuser is unauthorized, they are going to be redirected, right? Uh great. So, uh I think that we are now ready to try this.
2:21:472 hours, 21 minutes, 47 secondsSo, what should happen now?
2:21:502 hours, 21 minutes, 50 secondsgo ahead inside of a checkout and make sure that you have some products added uh inside of your
2:21:582 hours, 21 minutes, 58 secondscart. I'm just going to do another refresh here. There we go. So, I have something here. And when I click checkout, uh you can see that it says
2:22:052 hours, 22 minutes, 5 secondsnot authenticated and it redirects me here. So, I'm going to log in.
2:22:142 hours, 22 minutes, 14 secondsI'm going to go back inside of my Antonio here in the shop. And when I try now, if everything's done correctly, I should
2:22:232 hours, 22 minutes, 23 secondsget redirected. And I do get redirected to the checkout screen. And you can see the price is correct, even though we multiply it by 100. That's because it
2:22:322 hours, 22 minutes, 32 secondsaccepts cents. And let's go ahead and check. You can see how if I leave, the state turns
2:22:402 hours, 22 minutes, 40 secondsinto cancel. Go look in your URL. So if you check out, click check out again.
2:22:452 hours, 22 minutes, 45 secondsNow it clears. So if you click back, that counts as cancel equals true in the URL. And then this gets triggered. So I
2:22:532 hours, 22 minutes, 53 secondswant you to go back to Antonio's shop here. And just add another product.
2:23:002 hours, 23 minutesThere we go. Add to cart. So now I have two products here, 29 and 59. And let's click checkout. And let's see. There we
2:23:082 hours, 23 minutes, 8 secondsgo. 88. Perfect. The only problem now is nothing will really happen if we
2:23:152 hours, 23 minutes, 15 secondsactually purchase this. So we can of course try because we want to test this out. We have the use
2:23:242 hours, 23 minutes, 24 secondseffect here which clears the cart if it receives the success state. So basically let's go ahead and do that. You can use
2:23:312 hours, 23 minutes, 31 secondstest card information. So that's 4242 4242 and nothing else matters. It just needs to be in the future, right?
2:23:402 hours, 23 minutes, 40 secondsand go ahead and click pay. And after this, you are uh redirected to success
2:23:482 hours, 23 minutes, 48 secondstrue. And looks like I got something here. Maximum update depth exceeded.
2:23:542 hours, 23 minutes, 54 secondsThis can happen when a component calls set state inside use effect. But use effect either doesn't have a dependency array or the dependencies change on
2:24:022 hours, 24 minutes, 2 secondsevery render. So that's what happened when I called my uh clear cart here. So that is
2:24:112 hours, 24 minutes, 11 secondsinteresting. I will explore uh why that happened.
2:24:182 hours, 24 minutes, 18 secondsUh yes and it happens every time. Okay.
2:24:222 hours, 24 minutes, 22 secondsSo I'm going to pause a bit and see why it's happening. One idea that I have is that
2:24:292 hours, 24 minutes, 29 secondsif I enter state success, the first thing I should do is change set states
2:24:352 hours, 24 minutes, 35 secondshere. success false and cancel false as well. So, it doesn't immediately go into
2:24:422 hours, 24 minutes, 42 secondsa loop. And let me just add set states here. Uh I'm not sure if that will maybe improve it. But you can see that now my
2:24:502 hours, 24 minutes, 50 secondsproducts are definitely cleared here. Okay. So I think that uh yeah it
2:24:572 hours, 24 minutes, 57 secondscould be that maybe adding a clear cart which is a function which is not memorized causes it to go into an
2:25:052 hours, 25 minutes, 5 secondsinfinite loop and because I didn't prevent it went into the maximum update depth which does make me wonder if this
2:25:152 hours, 25 minutes, 15 secondsfunction is doing something dangerous as well. I will research about the clear cart and how I can add it to use state
2:25:232 hours, 25 minutes, 23 secondsuse effect. So now that we know that we can purchase, we can check out and we have
2:25:302 hours, 25 minutes, 30 secondssuccessfully cleared our cart uh once we purchase which you know by the way we can try again. So let me just add
2:25:372 hours, 25 minutes, 37 secondssomething to the cart. It's now in my cart. I'm going to go ahead and do the checkout now. Let me see if the error
2:25:452 hours, 25 minutes, 45 secondswill appear again. Sometimes this actually happens in development because of the redirect. But let's see. Looks
2:25:522 hours, 25 minutes, 52 secondslike now it's okay. I believe that it was because states.uess must have constantly uh re-triggered this for some
2:26:002 hours, 26 minutesreason. But when we immediately return it back to false, it doesn't go in here again and thus it doesn't cause problems. So for now, this seems to be
2:26:092 hours, 26 minutes, 9 secondsworking just fine. The problem is nothing really happens, right? We don't know who purchased and we don't know what exactly to give to the user who
2:26:182 hours, 26 minutes, 18 secondspurchased it. So in order to do that we are going to have to create a new collection called orders. Let's go
2:26:252 hours, 26 minutes, 25 secondsinside of collection and let's create orders.
2:26:302 hours, 26 minutes, 30 secondsTS. So the orders collection uh we can go ahead and import the collection config from
2:26:372 hours, 26 minutes, 37 secondspayload and we can go ahead and add con orders collection
2:26:442 hours, 26 minutes, 44 secondsconfig. Now in here let's add a slug orders admin use as title we can set to
2:26:542 hours, 26 minutes, 54 secondsname and in here let's add some fields. The first field will be the name of the order which is we which will be a
2:27:042 hours, 27 minutes, 4 secondstype of text and required true. Now obviously it is not important for an order to have a name but it will be
2:27:122 hours, 27 minutes, 12 secondseasier to work with it later on if we actually have some useful information to show. Right? So now let's add user which
2:27:212 hours, 27 minutes, 21 secondsis a type of relationship and its relation to user it's required and has many will be
2:27:302 hours, 27 minutes, 30 secondsset to false. So one order per user and now we are going to do the same thing
2:27:382 hours, 27 minutes, 38 secondsbut for the product. So this will be product relationship relation to products and the same rules
2:27:482 hours, 27 minutes, 48 secondshere. And then let's also add name stripe checkout session ID and let's
2:27:582 hours, 27 minutes, 58 secondspass in the type to be text required to be true. There we go.
2:28:082 hours, 28 minutes, 8 secondsNow that we have that, let's go inside of the payload.config and let's add the orders
2:28:162 hours, 28 minutes, 16 secondsfrom the collection orders. Great. Now, what we have to do
2:28:222 hours, 28 minutes, 22 secondsis we have to add a web hook. So, how does a web hook work? In order to obtain the web hook in the first place, we have
2:28:302 hours, 28 minutes, 30 secondsto go inside of developers here and select web hooks. Uh, looks like they definitely changed this since the last
2:28:382 hours, 28 minutes, 38 secondstime I was here. So, let me just Yeah, looks when I clicked close, I got access to this. So, feel free to close that
2:28:462 hours, 28 minutes, 46 secondspopup. And in here, it offers you to add a destination, but we're not going to do that yet. We're going to test with the
2:28:532 hours, 28 minutes, 53 secondslocal listener. So, yes, the first thing you need to do is download Stripe CLI.
2:28:592 hours, 28 minutes, 59 secondsUh, they have support for all operating systems. You can do it using brew uh yum
2:29:072 hours, 29 minutes, 7 secondsapt they even give you some common mistakes here or you can use you know normal installation files right uh so
2:29:162 hours, 29 minutes, 16 secondsmake sure that you have installed stripe to your CLI and then let's follow the instructions here I'm going to zoom in
2:29:242 hours, 29 minutes, 24 secondsso that you can see let's start with stripe login so I'm going to open a separate terminal here and the first thing I'm going to do is stripe login
2:29:332 hours, 29 minutes, 33 secondswhich will give me the pairing code and it will give me the link. So, I'm going to open
2:29:402 hours, 29 minutes, 40 secondsthis. Let me see if it opened here or not. Command click. There we go. And the
2:29:482 hours, 29 minutes, 48 secondsonly thing you ought to do here is just confirm that you have a matching pairing code just to ensure that it's you who is
2:29:572 hours, 29 minutes, 57 secondstrying to connect and select your business sandbox. So I will just click allow
2:30:032 hours, 30 minutes, 3 secondsaccess. And now you can see that I am officially logged in. So we have to do that. That's the first step. Uh and
2:30:112 hours, 30 minutes, 11 secondsusually this shows you like a little tick like hey you've done that successfully. But now I can't see it. Uh
2:30:192 hours, 30 minutes, 19 secondsthe second thing we have to do is we have to add stripe listen forward to and then our
2:30:262 hours, 30 minutes, 26 secondsURL. So let's go ahead and add this but we have to modify it a bit. So first of
2:30:312 hours, 30 minutes, 31 secondsall we are using port 3000 and then the second thing is that we are going to go
2:30:402 hours, 30 minutes, 40 secondswhoops we are going to go to slashi and then slashstripe and then slash web hooks
2:30:492 hours, 30 minutes, 49 secondslike this. So localhost 3000 API stripe web
2:30:552 hours, 30 minutes, 55 secondshooks and press enter. And now this will be a local listener and you're going to get this important signing secret which
2:31:032 hours, 31 minutes, 3 secondsyou have to copy. Once you have copied it, you have to go inside of here and
2:31:102 hours, 31 minutes, 10 secondsadd stripe web hook secret and add it here. Now that we have this set up, we
2:31:192 hours, 31 minutes, 19 secondsare ready to actually create our web hook. So why do we even need a web hook?
2:31:262 hours, 31 minutes, 26 secondsWell, take a look at this method here, checkout procedures. So, once we actually create
2:31:322 hours, 31 minutes, 32 secondsthe checkout URL and then inside of the checkout view, what we do here is we
2:31:402 hours, 31 minutes, 40 secondsjust open up the checkout, right? We don't really have a way of knowing when
2:31:472 hours, 31 minutes, 47 secondsthe user purchased something. Sure, we could rely on state.success, success.
2:31:522 hours, 31 minutes, 52 secondsBut you already saw how flaky that is, right? I mean, I I got a maximum update depth error. Imagine your purchases
2:32:002 hours, 32 minutesdepending on the client. The connection can be slow. Something can override the URL. It's absolutely not recommended or
2:32:092 hours, 32 minutes, 9 secondsreliable to do that. But what we can do is instead is wait and listen on our server until Stripe tells us, "Hey, the
2:32:192 hours, 32 minutes, 19 secondsuser successfully purchased." So that's what web hooks are for. Now let's go ahead inside of source app folder
2:32:272 hours, 32 minutes, 27 secondsuh app route group and in here we have an API folder and in here I will just create a new folder called stripe and
2:32:372 hours, 32 minutes, 37 secondsinside I will create another folder called web hooks. So this now matches exactly our structure that we listen to
2:32:442 hours, 32 minutes, 44 secondsapi stripe web hooks. Inside of web hooks, create a
2:32:512 hours, 32 minutes, 51 secondsroute.ts. Let's start by importing the stripe type. Then let's import get payload from payload. Then the config
2:32:592 hours, 32 minutes, 59 secondsfrom payload config. Next response from next server stripe from lib stripe. And
2:33:072 hours, 33 minutes, 7 secondsthat's going to be it for now. Let's do export asynchronous function post. And let's accept the request here.
2:33:172 hours, 33 minutes, 17 secondsNow what we have to do is we have to validate this web hook because anyone can contact this endpoint. We have to make sure that it's actually stripe who
2:33:252 hours, 33 minutes, 25 secondsis doing that and we can do that with the stripe web hook secret key that only we know we and stripe that is. So let
2:33:342 hours, 33 minutes, 34 secondsevent stripe.event and then we're going to open a try and catch block
2:33:412 hours, 33 minutes, 41 secondshere. Inside of the try block, we are going to assign the event to be stripe.
2:33:472 hours, 33 minutes, 47 secondsweb hooks construct event. And inside of here, we're going to await open
2:33:542 hours, 33 minutes, 54 secondsparenthesis await again request.blo executed.ext and execute that. That's
2:34:012 hours, 34 minutes, 1 secondthe first argument. The second argument is request.headers.get stripe-
2:34:082 hours, 34 minutes, 8 secondssignature. Be careful. You have to write this correctly.
2:34:122 hours, 34 minutes, 12 secondsas string. And the last one is process.environment. And I recommend that you don't type it. Instead, copy it
2:34:212 hours, 34 minutes, 21 secondsso you know it's the correct one. And add the exclamation point at the end or simply as string. So this will either succeed or
2:34:302 hours, 34 minutes, 30 secondsit's going to throw an error if any of these are incorrect. So basically the request that is trying to access this
2:34:372 hours, 34 minutes, 37 secondsendpoint will need to include the stripe signature in the headers. And if the stripe signature can be decrypted with
2:34:462 hours, 34 minutes, 46 secondsour stripe web hook secret and well whatever is being done in the construct event we are going to know that it is
2:34:532 hours, 34 minutes, 53 secondsstripe who is trying to tell us something. But in case an error happens we're going to go ahead and just
2:35:022 hours, 35 minutes, 2 secondsdo a return next response.json JSON with a message web hook
2:35:112 hours, 35 minutes, 11 secondserror like this. And let's add a status of 400. And you can make a pretty error
2:35:212 hours, 35 minutes, 21 secondsmessage like this. So error message error error message or unknown error
2:35:272 hours, 35 minutes, 27 secondslike that. Uh and in here you can do if
2:35:372 hours, 35 minutes, 37 secondserror exclamation point is instance of
2:35:432 hours, 35 minutes, 43 secondserror. In that case do a console log of the error. So basically we're just
2:35:502 hours, 35 minutes, 50 secondsgiving us as much info as possible about what's going on.
2:35:552 hours, 35 minutes, 55 secondsUh, and now let's go ahead and change this to back and just render the error message
2:36:032 hours, 36 minutes, 3 secondshere. Like that. And inside of this console log here, you can also make it a bit
2:36:112 hours, 36 minutes, 11 secondsprettier. Uh, I would recommend adding an emoji like this so you see it in your terminal. It's going to be useful, trust me. And add the error message.
2:36:262 hours, 36 minutes, 26 secondsdo it like this. Console log and in here log the entire error. Basically, if it's compatible, we can log the entire error.
2:36:322 hours, 36 minutes, 32 secondsBut we are definitely always going to log the message. So now this will just help you see it more clearly clearly if
2:36:392 hours, 36 minutes, 39 secondssomething uh wrong happens. Uh now if you manage to pass the try catch block
2:36:462 hours, 36 minutes, 46 secondswhat you can do is you can add a success here just so you can see that in your terminal as well with the event do
2:36:542 hours, 36 minutes, 54 secondsid and now let's do const permitted events which is a type of uh array of
2:37:022 hours, 37 minutes, 2 secondsstrings. So for now all I'm going to look for is checkout.comp
2:37:102 hours, 37 minutes, 10 secondscompleted. Always double check that you have written this correctly. So checkout
2:37:172 hours, 37 minutes, 17 secondssession completed otherwise it will not be able to recognize it. Great. This is also a good time to
2:37:242 hours, 37 minutes, 24 secondsadd our payload. So await get payload and in here just pass the config.
2:37:322 hours, 37 minutes, 32 secondsSo the config is using a shorthand operator because we named it config here. There we go. Now let's do if
2:37:412 hours, 37 minutes, 41 secondspermitted events includes event type. Let's go ahead and set let data
2:37:502 hours, 37 minutes, 50 secondsand then in here open a try and catch block here. And inside of try open a switch case event.
2:38:012 hours, 38 minutes, 1 secondAnd if case is checkout session completed. So you can see how it offers
2:38:102 hours, 38 minutes, 10 secondsme type uh proper uh type here. So you can now double check that you have written it correctly here. So if that is
2:38:192 hours, 38 minutes, 19 secondscompleted uh so if this is the event what we are going to do is we are going to change the data to be event dot
2:38:282 hours, 38 minutes, 28 secondsdata.object object as stripe.checkout session. And now we're going to check if
2:38:372 hours, 38 minutes, 37 secondsthere is no data metadata question mark user ID. So
2:38:432 hours, 38 minutes, 43 secondsbasically inside of our procedures if we forgot to add the user ID in the metadata there's no way we can know who
2:38:512 hours, 38 minutes, 51 secondspurchased this. In that case we have to throw new error here. user ID is
2:39:002 hours, 39 minutesrequired. Now let's go ahead and attempt to fetch that user using payload. So await payload find by ID and in here
2:39:102 hours, 39 minutes, 10 secondsusers and you no longer have to use the question mark here. And now the same thing if the user in the payload isn't
2:39:172 hours, 39 minutes, 17 secondsfind isn't found we have to break this method. Uh and now what we can do here
2:39:252 hours, 39 minutes, 25 secondsis we can expand the session. So const expanded session here will be await
2:39:322 hours, 39 minutes, 32 secondsstripe.checkout sessions dot retrieve by data id and in here
2:39:402 hours, 39 minutes, 40 secondsexpand line items do data.pric.prouct.
2:39:472 hours, 39 minutes, 47 secondsWe are basically uh trying to see the information of the product
2:39:542 hours, 39 minutes, 54 secondsuh that someone just purchased or multiple products because in here you can see that we have the name of the
2:40:012 hours, 40 minutes, 1 secondproduct we have the stripe account ID we have uh inside and again name of the
2:40:082 hours, 40 minutes, 8 secondsproduct perhaps we don't need that as well but we also have the price the ID which is the what we are looking for we are looking for the ID of the product
2:40:172 hours, 40 minutes, 17 secondsfrom our database that the user just purchased and this is how we are going to find it. So now we have to check if
2:40:242 hours, 40 minutes, 24 secondsthe expanded session is missing something. So if there is no
2:40:322 hours, 40 minutes, 32 secondsexpanded session line items question markda or if there is no expanded session line items data.length length.
2:40:452 hours, 40 minutes, 45 secondsSo if any of that is not true or in this case if it is zero, we're going to throw
2:40:522 hours, 40 minutes, 52 secondsnew error here. No line items found. It basically means we couldn't load what you've
2:41:002 hours, 41 minutespurchased. But if it can, let's do const line items here. Expanded
2:41:082 hours, 41 minutes, 8 secondssession.line items do data. And now I want to give this a proper
2:41:152 hours, 41 minutes, 15 secondstype. So let's go inside of our modules
2:41:212 hours, 41 minutes, 21 secondscheckout types and let's do export type expanded line item to be stripe.line
2:41:302 hours, 41 minutes, 30 secondsitem. You can import the type stripe from stripe. So stripe.line item. But we are going to expand it. So we know that
2:41:392 hours, 41 minutes, 39 secondswe expect the price inside which is stripe.p price and inside we have product which
2:41:472 hours, 41 minutes, 47 secondsis stripe.p product. All of that is something we already know and something that we already have a type for. But what we don't have the type for is the
2:41:562 hours, 41 minutes, 56 secondsmetadata which is a type of product metadata. There we go. Or you can use semicolons.
2:42:082 hours, 42 minutes, 8 secondsSo now that we have the expanded line item, just make sure the order here is correct. You can go back here and you can mark this as expanded line item.
2:42:192 hours, 42 minutes, 19 secondsMake sure you import it from the modules here. And it's going to be an array of those like this. There we go. So now
2:42:272 hours, 42 minutes, 27 secondsline items has the correct type and it's going to be easier for us to work with them. So what we can now do is do a loop
2:42:342 hours, 42 minutes, 34 secondsfor const item of line items. We can do await payload create collection orders. And
2:42:442 hours, 42 minutes, 44 secondsnow we can create an order for each product. But the only but since obviously it would be useful for us to
2:42:522 hours, 42 minutes, 52 secondsknow if some products were bought together, we can still do that using the stripe checkout session ID. That's why we added this field. In case your types
2:43:012 hours, 43 minutes, 1 secondare not working or you can't uh select orders as always, you can do manual run of generate types for them to be added.
2:43:112 hours, 43 minutes, 11 secondsSo also ensure that you have actually added your orders, right? You need to have this. You need to have the correct slug and ensure that you have added them
2:43:202 hours, 43 minutes, 20 secondsin the config here. Orders, let's go back inside of the route here. So this will be data do id user will be user do
2:43:302 hours, 43 minutes, 30 secondsid product will be item dot price dot product and then do
2:43:382 hours, 43 minutes, 38 secondsid and in here name will be item.pric price.productname like
2:43:472 hours, 43 minutes, 47 secondsthis. And I think I've made a mistake here. So I think that this product ID is
2:43:552 hours, 43 minutes, 55 secondsthe stripe product ID, not what we want to associate our order with. We want to use the metadata
2:44:042 hours, 44 minutes, 4 secondsID. That is the product ID. We know that because let me go to our procedures
2:44:122 hours, 44 minutes, 12 secondshere. So we know that because in here is where we create it in the metadata, right? We don't add it here. The same
2:44:202 hours, 44 minutes, 20 secondsthing with the name. So the name can exist both in the product data and the metadata. It's completely the same if you use it right here or if you use
2:44:292 hours, 44 minutes, 29 secondsmetadata.name, right? So this should definitely exist at this point. Right? That's why uh I
2:44:382 hours, 44 minutes, 38 secondsdon't know if maybe you can throw an error here if it doesn't exist, right?
2:44:432 hours, 44 minutes, 43 secondsBut uh it should exist otherwise you shouldn't be able to even create this. So that's how we associate an order with a newly created uh product.
2:44:552 hours, 44 minutes, 55 secondsGreat. Uh and now let's go ahead and simply break the method here. And what we have to do is add a default here.
2:45:082 hours, 45 minutes, 8 secondsThrow new error unhandled
2:45:162 hours, 45 minutes, 16 secondsevent. And in the catch here, let's get the error. Let's console log the error and
2:45:242 hours, 45 minutes, 24 secondslet's return next response.json here.
2:45:312 hours, 45 minutes, 31 secondsmessage web hook handler failed and a
2:45:402 hours, 45 minutes, 40 secondsstatus of 500. And now a very important thing that
2:45:472 hours, 45 minutes, 47 secondsuh I personally often forget, you always have to return something for the web hook. The web hook needs to know if the
2:45:572 hours, 45 minutes, 57 secondsevent was successful or not. So make sure that at the end you always return 200.
2:46:052 hours, 46 minutes, 5 secondsOkay. And only throw errors when there are actually errors. Always keep in mind that if the
2:46:122 hours, 46 minutes, 12 secondsweb hook receives too many errors, it will shut down that web hook. That's how Stripe web hooks work. So you have to be
2:46:202 hours, 46 minutes, 20 secondsuh you know careful and always give it proper information. So I think that now once you purchase an item, you should
2:46:282 hours, 46 minutes, 28 secondshave a product associated with an order or an order associated with a product
2:46:352 hours, 46 minutes, 35 secondsand with the user that did the purchase. So let's go ahead and try it out. In here I have my web hook running.
2:46:452 hours, 46 minutes, 45 secondsSo you need to have this every time you want to test it out. You need to have this running. Obviously in production you're not going to need it. This is
2:46:522 hours, 46 minutes, 52 secondsjust for uh it's just for um for local development. So what I'm going to do uh right now I have no orders whatsoever.
2:47:052 hours, 47 minutes, 5 secondsAnd I think that you can see that if I go inside of the dashboard since we didn't restrict the access to the super
2:47:122 hours, 47 minutes, 12 secondsadmin everyone can see orders at the moment. Obviously, we're going to change that uh later, but uh right now, let's just wait for the to order.
2:47:242 hours, 47 minutes, 24 secondsEveryone can access anyone's orders, and there are no orders here to be found.
2:47:282 hours, 47 minutes, 28 secondsSo, let's go ahead now and let's go back to the store and let me buy this
2:47:362 hours, 47 minutes, 36 secondsproduct. So, I will click add to cart here. I'm going to check out and I'm going to go ahead and purchase. and
2:47:442 hours, 47 minutes, 44 secondslet's see if that will work or not. So, I'm going to purchase and we can now go
2:47:532 hours, 47 minutes, 53 secondsinside of the terminal and you can start seeing the events going here and you can see how we have all 200 successful
2:47:592 hours, 47 minutes, 59 secondsevents and inside of this one I can see the success messages. So, this gives me confidence that the order was actually
2:48:082 hours, 48 minutes, 8 secondscreated. I think the event was handled properly and we can easily look uh to confirm that by going back to our
2:48:172 hours, 48 minutes, 17 secondsdashboard. Let's just wait for my loading state to appear. Let's go inside of orders. And there we go. You can see
2:48:252 hours, 48 minutes, 25 secondsthat I have uh let me just see can I untitled ID. I just want to confirm that
2:48:332 hours, 48 minutes, 33 secondsthis is associated with the correct order. And I think it is because it it noticed that this is another Antonio's product. I think what's missing here is
2:48:422 hours, 48 minutes, 42 secondsin my products collection admin use as title name. I think we need
2:48:522 hours, 48 minutes, 52 secondsto add this and then refresh this. Uh yes, looks like this is still
2:48:592 hours, 48 minutes, 59 secondsshowing like this. Obviously, you wouldn't be able to modify this at all, any of these, right? Um, looks like it
2:49:072 hours, 49 minutes, 7 secondsis able. Uh, so let me just double check here. Metadata, we do the product
2:49:162 hours, 49 minutes, 16 secondsID, right? Which is definitely what we need. In the in this metadata, we do
2:49:232 hours, 49 minutes, 23 secondscontext session user ID. So I think that all of these are
2:49:302 hours, 49 minutes, 30 secondscompletely correct. I don't think there's anything wrong here. And in the route, let's see, we do the exact same
2:49:372 hours, 49 minutes, 37 secondsway of assigning these. So, let me just see. Can I maybe copy this somehow? Let's just remember 6 7 and 22.
2:49:482 hours, 49 minutes, 48 secondsSo, if I go inside of products here, uh I think there is another way I can do it. So I can
2:49:562 hours, 49 minutes, 56 secondsgo here and look at the it is 67 and the last two numbers are 22. So I can see
2:50:042 hours, 50 minutes, 4 secondsthat in my uh URL up there. So it's definitely the correct URL. It just
2:50:112 hours, 50 minutes, 11 secondsseems to it it looks like it's not properly related. I'm not sure if that's
2:50:172 hours, 50 minutes, 17 secondsthe case. Untitled ID because it's definitely uh titled here. So that's something I'm going to
2:50:262 hours, 50 minutes, 26 secondsexplore. But nevertheless, I think we can end the chapter here because we did in essence what we wanted to do. Uh
2:50:342 hours, 50 minutes, 34 secondsright, we have created the stripe project. We added the SDK. We implemented the checkout procedure. We created the orders collection and we
2:50:432 hours, 50 minutes, 43 secondsimplemented the web hook route which creates the order associated with the user and the product. That's what we
2:50:492 hours, 50 minutes, 49 secondswanted. So, I'm going to explore this uh in the meantime for the next chapter and tell you my conclusions about uh why
2:50:572 hours, 50 minutes, 57 secondsthis looks like it's not associated. But I'm pretty confident that it is. I just think something's wrong with my setup here. Now, let's go ahead and push this
2:51:062 hours, 51 minutes, 6 secondsto GitHub. So, 20 Stripe integration. I'm going to go ahead and do get checkout-b 20 stripe integration.
2:51:172 hours, 51 minutes, 17 secondsGit add commit 20 stripe integration and now git push u origin 20
2:51:272 hours, 51 minutes, 27 secondsstripe integration. If you want to you can shut down the web hook but I will remind you in the next chapter that you need to
2:51:352 hours, 51 minutes, 35 secondshave it on if you want to test out your app. So now confirm that you are on your new branch here and in here confirm that
2:51:432 hours, 51 minutes, 43 secondsyou are detached and let's go inside of e-commerce GitHub here create a pull
2:51:502 hours, 51 minutes, 50 secondsrequest and let's review our changes and there we go. So the
2:51:582 hours, 51 minutes, 58 secondswalkthrough this update integrates Stripe payment processing and enriches the checkout experience. A new Stripe
2:52:062 hours, 52 minutes, 6 secondsdependency is added along with a web hook handler to manage stripe events. A dedicated orders collection is
2:52:132 hours, 52 minutes, 13 secondsintroduced along with appropriate types and configuration updates in payload. In the checkout module, a new hook purchase
2:52:212 hours, 52 minutes, 21 secondsmutation and UI modifications streamline the purchase flow. Additionally, a protected procedure is established in
2:52:282 hours, 52 minutes, 28 secondsthe TRPC initialization for authenticated API requests. And in here, we have some sequence diagrams
2:52:372 hours, 52 minutes, 37 secondsdescribing in here our purchase mutation which returns the checkout URL. And in here, if you are interested, you can
2:52:462 hours, 52 minutes, 46 secondspause the screen so you will see how the web hook actually works. So from Stripe, we receive a postevent payload. We
2:52:542 hours, 52 minutes, 54 secondsvalidate event using the secret and after that we go ahead and uh handle the case if the event is valid and the type
2:53:022 hours, 53 minutes, 2 secondsis recognized and then depending on what the event is in our case only one event we retrieve the session and create orders and order creation confirmation
2:53:112 hours, 53 minutes, 11 secondsand then we return to 100 or K. But in case an error occurs we throw back errors. It has some recommendations for
2:53:182 hours, 53 minutes, 18 secondsus here. This one I like is basically recommending to wrap variable decor declarations. Basically opening them up
2:53:272 hours, 53 minutes, 27 secondsas if they were if clauses using curly brackets. Uh I like that. Yes, we could do that. I'm going to do that separately in the next chapter. This is the to-do.
2:53:362 hours, 53 minutes, 36 secondsThat's fine. And in here we know we have the stripe secret. This is okay. Let's go ahead and merge this pull request.
2:53:452 hours, 53 minutes, 45 secondsAnd after you have merged the pull request, as always, we're going to go ahead and synchronize our main branch.
2:53:532 hours, 53 minutes, 53 secondsAs always, I'm just going to confirm that I have my branch here. There we go.
2:53:582 hours, 53 minutes, 58 secondsAnd then let's do get checkout main or master. Get pull origin main or master.
2:54:052 hours, 54 minutes, 5 secondsAnd after that, get status. There we go. And ensure that your graph has merged it as
2:54:142 hours, 54 minutes, 14 secondswell. That's it. That is our chapter and see you in the next one. Amazing, amazing
Chapter 7: 21 Library
2:54:222 hours, 54 minutes, 22 secondsjob. In this chapter, we're going to go ahead and implement our orders or purchases library. So, in order to do
2:54:322 hours, 54 minutes, 32 secondsthat, we're going to have to create the library page UI and some library procedures. But before we dive into
2:54:402 hours, 54 minutes, 40 secondsthat, I want to explain the question from the last chapter about our product order relation. And I also want to
2:54:482 hours, 54 minutes, 48 secondsaddress uh one maximum update depth error that we got within a use effect because of our use cart hook. As always,
2:54:572 hours, 54 minutes, 57 secondsensure that you are on your master branch and ensure that you have all the changes merged. So now let's get to the
2:55:052 hours, 55 minutes, 5 secondsquestion uh from the last part. So what happened is I made a purchase and that
2:55:122 hours, 55 minutes, 12 secondscreated an order. But when I went to my dashboard, uh it wasn't exactly clear
2:55:192 hours, 55 minutes, 19 secondswhether it was connected or not. So if you go into the orders right
2:55:272 hours, 55 minutes, 27 secondsnow, you can see that now I have resolved it. So if you're asking how, very simple. It's because I forgot that
2:55:352 hours, 55 minutes, 35 secondsinside of the payload config, we have connected products to a tenant. Which
2:55:432 hours, 55 minutes, 43 secondsmeans that if I go with johndemo.com and look into my orders
2:55:492 hours, 55 minutes, 49 secondsbecause I bought this under John, I bought Antonio's product. I don't have
2:55:562 hours, 55 minutes, 56 secondsaccess to look at their product inside of this payload CMS dashboard. But that's completely fine. I don't need it
2:56:042 hours, 56 minutes, 4 secondshere. The only reason I even showed you this is just for you to realize that we now have this entity. This orders inside
2:56:132 hours, 56 minutes, 13 secondsof this admin dashboard will be hidden for all users except for super admins.
2:56:202 hours, 56 minutes, 20 secondsSo if you are seeing untitled here in your order, just log out and then log in
2:56:282 hours, 56 minutes, 28 secondsas the admin. And once you log in as the admin here, you will see that the problem is no longer
2:56:362 hours, 56 minutes, 36 secondsexistent. So now what I'm going to do is just going to go back into my nonadmin account here. So make sure you are
2:56:452 hours, 56 minutes, 45 secondslogged in. And now I want to address the problem from the last time. So what happened is I added something from my
2:56:542 hours, 56 minutes, 54 secondscart here, right? And once I purchased, I got this weird maximum update depth
2:57:012 hours, 57 minutes, 1 seconderror. And I think I know why it happened. So inside of the checkout view, we have the use effect, which uses
2:57:102 hours, 57 minutes, 10 secondsthe clear cart here. So this is what I've noticed happens. Go ahead and comment this out and comment this out.
2:57:202 hours, 57 minutes, 20 secondsAnd then whatever your current URL of the checkout is. So for example,
2:57:262 hours, 57 minutes, 26 secondsthis just pretend to add success equals true to it. And then copy this so you
2:57:332 hours, 57 minutes, 33 secondscan test this out. So I'm going to open this now. And I will also add a console
2:57:402 hours, 57 minutes, 40 secondslog triggered here. So we know that this was triggered. There we go. So this was triggered three times. But let's see
2:57:482 hours, 57 minutes, 48 secondswith success true. You can see that it has been triggered 53 times and we can
2:57:552 hours, 57 minutes, 55 secondsnow consistently reproduce this error which is a good thing. Whenever you can consistently reproduce something, it
2:58:032 hours, 58 minutes, 3 secondsmeans it's easily fixable. The reason this is happening is because of clear cart. Clear cart is the culprit here.
2:58:142 hours, 58 minutes, 14 secondsMore specifically, the use cart method is the culprit. So instead of getting
2:58:202 hours, 58 minutes, 20 secondsthe items like this, what I'm going to do is I'm going to properly use uh the
2:58:272 hours, 58 minutes, 27 secondsselector here. So instead of this, I will do
2:58:342 hours, 58 minutes, 34 secondsthis. basically all of the methods from here but using the proper use cart store
2:58:412 hours, 58 minutes, 41 secondsand then state get cart by or whatever I need right so you can now remove this method what this will do is it will
2:58:502 hours, 58 minutes, 50 secondsproperly extract that from the store and it will not rerender as much so if I change success to true now I mean if I
2:58:592 hours, 58 minutes, 59 secondsjust refresh here just make sure that your URL is with success true Right? You can see that now there is no problem at
2:59:092 hours, 59 minutes, 9 secondsall. This seems to be working exactly as it should. Right? But you always have to be careful when you add things uh to
2:59:172 hours, 59 minutes, 17 secondswhen you add functions to your use effect. So the reason clear is now no longer problematic is because it was
2:59:252 hours, 59 minutes, 25 secondsproperly extracted through the tushan selector. Right? So these are selectors.
2:59:312 hours, 59 minutes, 31 secondsSo on a basic level, they ensure that no unnecessary rerenders happen when you
2:59:382 hours, 59 minutes, 38 secondsuse the selector, but we still have some functions here that we call uh which should be memorized. The reason they
2:59:462 hours, 59 minutes, 46 secondsshould be memorized is if you ever plan on using them inside of a use effect, they would cause the same issue. So what I recommend doing is the following. find
2:59:562 hours, 59 minutes, 56 secondstoggle product and turn it into a use callback like this and add a dependency array. So,
3:00:043 hours, 4 secondsimport use callback from React. And inside of the dependency array, add add product and remove
3:00:133 hours, 13 secondsproduct. And as for the product ids, I don't like this solution. Get cart by tenant. Let's go instead of use cart
3:00:223 hours, 22 secondsstore and let's remove get cart by tenant entirely. And let's remove that method from here. I don't like
3:00:303 hours, 30 secondsit. So, let me just uh remove the get as well. We don't need it at all. Instead,
3:00:373 hours, 37 secondsthe way I'm going to do that is by using use cart store here. State state tenant
3:00:463 hours, 46 secondscarts tenant slug question mark product ids like this. That's how I'm going to
3:00:553 hours, 55 secondsdo it. Or we can also add this. So it's always an array. And now I'm going to add product ids
3:01:043 hours, 1 minute, 4 secondshere. And we also need the tenant slug. So now this method will only cause
3:01:103 hours, 1 minute, 10 secondsrerender if any of these changes. The remove product and add product are straight from uh selectors. So we don't
3:01:193 hours, 1 minute, 19 secondshave to worry about them. The tenant slug is a string. So that's completely fine. That's a simple uh type, right? Uh but product ids is actually a type of
3:01:273 hours, 1 minute, 27 secondsarray. So this is problematic because a type of array uh will never be the same, right? So an
3:01:353 hours, 1 minute, 35 secondsarray of one two will never be the same as another array of one two, right?
3:01:423 hours, 1 minute, 42 secondsBecause they're not a simple type. They they're not a simple type. They cannot be compared like that. But there is a
3:01:493 hours, 1 minute, 49 secondssolution for this as well. You can use uh use shallow from
3:01:553 hours, 1 minute, 55 secondstushand. So go ahead and import use shallow from sushand react use shallow
3:02:043 hours, 2 minutes, 4 secondsand add it to here. So just wrap in one more parenthesis here. So now it's going
3:02:123 hours, 2 minutes, 12 secondsto do a much better job of checking whether these arrays have actually changed. And I think that this that what
3:02:213 hours, 2 minutes, 21 secondsI got is just TypeScript server uh stopping working. Yeah, you can see that now once I refreshed it's
3:02:283 hours, 2 minutes, 28 secondscompletely okay. So I added use call back to the toggle product. I improved the rerender about the product ids and we improved the selectors of every
3:02:363 hours, 2 minutes, 36 secondssingle one of these. And now let's do the same thing here. So let's just add use callback here.
3:02:463 hours, 2 minutes, 46 secondsAnd let's go ahead and add product ids. And let's add use call back here.
3:02:533 hours, 2 minutes, 53 secondsWhat you can do now is you can have much more confidence uh in adding these functions and all of
3:03:023 hours, 3 minutes, 2 secondsthese things from here uh inside of use effects, right? And we
3:03:113 hours, 3 minutes, 11 secondsshould also do the same thing for these ones, right? So add product here let's
3:03:173 hours, 3 minutes, 17 secondsjust do con add product handle add product and in
3:03:243 hours, 3 minutes, 24 secondshere we're just going to do use callback. So we are basically just memorizing
3:03:313 hours, 3 minutes, 31 secondsthese and do add product tenant slug and from here we need the product ID which
3:03:393 hours, 3 minutes, 39 secondsis a string product ID add product and tenant
3:03:483 hours, 3 minutes, 48 secondsslug. So now I'm going to copy this and this will be handle remove
3:03:553 hours, 3 minutes, 55 secondsproduct calling the remove product. There we go. So now all of these methods are properly memorized
3:04:043 hours, 4 minutes, 4 secondshere. So now I can add handle add product and I can add handle remove product here. Now I think that none of
3:04:133 hours, 4 minutes, 13 secondsthese should be problematic anymore. We should of course go throughout our app and check. So I I highly recommend that
3:04:213 hours, 4 minutes, 21 secondsyou do this change because it should improve your app in in uh in sense of rerendering and well proper usage of the
3:04:313 hours, 4 minutes, 31 secondshook, right? So the selectors are definitely something we have to change.
3:04:353 hours, 4 minutes, 35 secondsIt definitely makes sense to use shallow here. And you know depending on whether you want to use these methods inside of
3:04:433 hours, 4 minutes, 43 secondsuse effect at any point it will be crucial for you to have proper use call back here. You might have noticed that
3:04:503 hours, 4 minutes, 50 secondsfor add product remove product clear cart and clear all cards we don't need use call back. That's because it's
3:04:573 hours, 4 minutes, 57 secondsautomatically memorized from sushand right that's why we just have to use the selector in a proper way. So, what I
3:05:053 hours, 5 minutes, 5 secondswant to do now is just go through the app and see if everything works as expected. So, I'm going to go ahead and
3:05:123 hours, 5 minutes, 12 secondsadd to cart. And looks like this has immediately updated to number one. If I click remove to cart, it's removed.
3:05:203 hours, 5 minutes, 20 secondsLet's go ahead and click and see inside of the cart. I can load them. Let's try removing from here. I can remove it from
3:05:263 hours, 5 minutes, 26 secondshere. So, I am not noticing any anomalies, right? I can add it. I can remove. Let me do a refresh. It still
3:05:353 hours, 5 minutes, 35 secondsworks. I can go back here and add another one. I have two of them. Looks like we properly implemented this. Uh so
3:05:443 hours, 5 minutes, 44 secondsnow the question is uh does this still work? And I'm pretty sure it does, right? So you don't even have to go
3:05:523 hours, 5 minutes, 52 secondsthrough the you don't have to go through the whole checkout process. You can just pretend to add at success true and that should clear the cart.
3:06:033 hours, 6 minutes, 3 secondsBut this time uh it shouldn't cause any maximum update depth errors. There we go. No errors at all.
3:06:123 hours, 6 minutes, 12 secondsAnd the cart is most certainly cleaned.
3:06:153 hours, 6 minutes, 15 secondsSo I think we can say that we have officially uh resolved this error now.
3:06:233 hours, 6 minutes, 23 secondsGreat. Um so now that we have this resolved, this was also improved, right?
3:06:293 hours, 6 minutes, 29 secondsBecause previously this could have potentially caused a maximum update depth exceeded but now clear cart is
3:06:373 hours, 6 minutes, 37 secondscompletely okay um to be used. Uh but also make sure that you always extract
3:06:443 hours, 6 minutes, 44 secondsthem like this, right? Don't do for example cart because I think that this
3:06:513 hours, 6 minutes, 51 secondsmight um I'm not too confident to tell you yes this will cause problems but I
3:06:583 hours, 6 minutes, 58 secondsthink it might if you do things like this I think that memorization kind of works in a different way when it comes
3:07:063 hours, 7 minutes, 6 secondsto that. My apologies for not having the proper information to tell you right now, but something is telling me that that's not how you should be using it. I
3:07:143 hours, 7 minutes, 14 secondswill try to uh research a bit to tell you uh with some more confidence. But what I am confident about is that this
3:07:223 hours, 7 minutes, 22 secondswill definitely help us. We can now use these methods in use effects safely. Uh and we have definitely reduced the
3:07:303 hours, 7 minutes, 30 secondsamount of rerenders now because use shallow is now actively comparing our
3:07:363 hours, 7 minutes, 36 secondsarrays and seeing okay did the array actually change or did it not change. Uh
3:07:443 hours, 7 minutes, 44 secondsgreat I'm very confident uh if yours is behaving incorrectly for whatever reason you know you can just revert these
3:07:513 hours, 7 minutes, 51 secondschanges because it's not like our app wasn't working before. it just could have been improved and now we improved
3:07:583 hours, 7 minutes, 58 secondsit. So what I want to do now is I want to create the library and one thing that
3:08:053 hours, 8 minutes, 5 secondsI didn't write here but I should have uh is that we also
3:08:123 hours, 8 minutes, 12 secondsneed to change state on product view.tsx
3:08:183 hours, 8 minutes, 18 secondsDSX right so if I for example go inside of uh Antonio's product and if I already
3:08:263 hours, 8 minutes, 26 secondspurchased this product it should tell me that that I have purchased it right but
3:08:323 hours, 8 minutes, 32 secondsin order to do that um we have to modify our procedure so here's what I want you
3:08:403 hours, 8 minutes, 40 secondsto do I want you to confirm which orders you have right so you can go inside of the dashboard here
3:08:493 hours, 8 minutes, 49 secondsorders and you can see that the user who has this order is John right so right
3:08:573 hours, 8 minutes, 57 secondsnow I am logged in as John this means that I have purchased something with this
3:09:043 hours, 9 minutes, 4 secondsaccount so just ensure that you are in a in an account that has done a purchase something that has an order and now
3:09:123 hours, 9 minutes, 12 secondswe're going to go inside of procedures uh inside of product procedures
3:09:193 hours, 9 minutes, 19 secondsspecifically inside of get one. Now, this is by default a base procedure because we want to allow
3:09:273 hours, 9 minutes, 27 secondseveryone to load a specific product. But what we're going to do is we're going to add headers from next headers. Let's
3:09:353 hours, 9 minutes, 35 secondsremap them to get headers. And inside of here, inside of the get one, let's do con headers await
3:09:453 hours, 9 minutes, 45 secondsheaders. and then const session await context database out and just pass in the headers. So we are going to check in
3:09:553 hours, 9 minutes, 55 secondsthis public procedure if this user is maybe logged in and then after we load
3:10:023 hours, 10 minutes, 2 secondsthe product before we return anything I'm going to set is purchased to false and if
3:10:093 hours, 10 minutes, 9 secondssession do user exists meaning hey a user who is trying to visit this is logged in I'm going to fetch an order so
3:10:183 hours, 10 minutes, 18 secondsconst order await context database find collection
3:10:253 hours, 10 minutes, 25 secondsorders. So this is orders data actually pagenation false limit one and
3:10:333 hours, 10 minutes, 33 secondsin here we're going to call where and then two queries inside. The first
3:10:403 hours, 10 minutes, 40 secondsone will be if product equals input
3:10:473 hours, 10 minutes, 47 secondsid and the second one will be if user equals session user ID. So that's the
3:10:543 hours, 10 minutes, 54 secondsunique combination we are looking for a user that purchased a specific product and then we're going to set is purchased
3:11:023 hours, 11 minutes, 2 secondsvery simply to be true if order dot orders data total documents is larger than zero. meaning if it found an item
3:11:113 hours, 11 minutes, 11 secondsor you can do orders data dod docs zero and then just turn it into a boolean like this if it exists right and then
3:11:213 hours, 11 minutes, 21 secondswhat you can just do is simply add that to uh this return so is purchased like
3:11:293 hours, 11 minutes, 29 secondsthis and now you will have information if the user who just loaded a single
3:11:353 hours, 11 minutes, 35 secondsproduct has purchased it or Not. So let's go ahead and try and do that. So we are now going to go back
3:11:443 hours, 11 minutes, 44 secondsinstead of checkout view. So in here we use not checkout view uh product view.
3:11:523 hours, 11 minutes, 52 secondsSo not product list view, product view.
3:11:563 hours, 11 minutes, 56 secondsIn here we use the get one. And that means now we have the is purchased boolean. So, let's go
3:12:033 hours, 12 minutes, 3 secondsahead and modify the product view to use the is purchased boolean now. So, I'm
3:12:113 hours, 12 minutes, 11 secondsgoing to go and find the purchase button. Let me just find the button. I must have skipped
3:12:193 hours, 12 minutes, 19 secondsit. Uh oh. So, it is right here. The cart button. Okay. This is how we're going to do it. If is
3:12:273 hours, 12 minutes, 27 secondspurchased, data is purchased. We are going to display one thing otherwise display the cart
3:12:363 hours, 12 minutes, 36 secondsbutton. So if it has been purchased, we're going to display view in
3:12:433 hours, 12 minutes, 43 secondslibrary like this and give this a variant of elevated as child prop class
3:12:523 hours, 12 minutes, 52 secondsname flex one font medium background pink 400 and inside give it a link.
3:13:023 hours, 13 minutes, 2 secondsThe link will very simply be prefetch and href which will go to slash
3:13:113 hours, 13 minutes, 11 secondslibrary and then data ID. So now you can see that it says view
3:13:203 hours, 13 minutes, 20 secondsin library after it loads because it detects uh that I have purchased this.
3:13:273 hours, 13 minutes, 27 secondsSo let me just see uh looks like this is causing hydration errors as well. So data is purchased otherwise
3:13:373 hours, 13 minutes, 37 secondscart button. So maybe maybe we can do this like this.
3:13:443 hours, 13 minutes, 44 secondsLet's reuse our cart button and pass in is purchased is purchase like this.
3:13:543 hours, 13 minutes, 54 secondsuh data is purchased and then inside of the cart button go inside of cart
3:14:033 hours, 14 minutes, 3 secondsbutton add optional boolean here and let's use it here. And now we're going to do that
3:14:133 hours, 14 minutes, 13 secondslogic inside of the cart button instead. So copy this and what I'm going to do is very simple. if is
3:14:223 hours, 14 minutes, 22 secondspurchased that's what we're going to return and you have to import link from
3:14:303 hours, 14 minutes, 30 secondsnext link. So this way well we don't have to handle the hydration errors in a complex way. We
3:14:393 hours, 14 minutes, 39 secondsalready have it resolved because we import cart button dynamically. Uh and in here data ID is
3:14:473 hours, 14 minutes, 47 secondsproduct ID. Exactly what we need. There we go. And perhaps I want this to be uh
3:14:553 hours, 14 minutes, 55 secondswhite view in library. I feel like uh this is uh this makes it less similar than the other one. So it's clear that
3:15:033 hours, 15 minutes, 3 secondsyou have purchased this, right? So you can see that now if I go into a product that I haven't purchased, I can remove
3:15:103 hours, 15 minutes, 10 secondsit or add it to the cart. But if I go to a product that I have purchased, I can only view it in my library which now
3:15:193 hours, 15 minutes, 19 secondsright now will redirect me uh to something that doesn't exist. Right? It redirected me and it thinks that it's a category. So we are now going to
3:15:283 hours, 15 minutes, 28 secondsimplement that category uh sorry that library uh inside of source here uh modules. There is one more thing I just
3:15:363 hours, 15 minutes, 36 secondswant to do. when we check out inside of server procedures
3:15:473 hours, 15 minutes, 47 secondsum it should be good to also confirm that we don't have any related orders right it's we should ensure that the
3:15:563 hours, 15 minutes, 56 secondsperson cannot purchase something twice but uh I'm going to do that uh later right now I want to focus on the
3:16:043 hours, 16 minutes, 4 secondslibrary view so let's go inside of source app. And in here, we're going to create a
3:16:123 hours, 16 minutes, 12 secondslibrary route group. And inside library
3:16:193 hours, 16 minutes, 19 secondsroute with page.tsx div
3:16:273 hours, 16 minutes, 27 secondslibrary. So now if you go ahead and visit the library, you should just see a text
3:16:353 hours, 16 minutes, 35 secondswhich says library. Now let's go ahead and do the
3:16:413 hours, 16 minutes, 41 secondsfollowing. Let's return library view here. Now let's develop the library
3:16:493 hours, 16 minutes, 49 secondsview. So we're going to add it inside of modules. Let's create a new folder library and inside of here
3:16:593 hours, 16 minutes, 59 secondsUI views library-
3:17:053 hours, 17 minutes, 5 secondsview.tsx is going to be uh fairly simple. So let's go ahead and add a div
3:17:163 hours, 17 minutes, 16 secondsoops with a minimum height of screen and background of white. And as opposed to
3:17:233 hours, 17 minutes, 23 secondshow we usually do it where we create uh layouts, we are not going to do that because it's not going to be a reusable layout in any way. Uh this layout that
3:17:323 hours, 17 minutes, 32 secondswe're building now is exclusively for this page and nowhere else. And when we actually visit the
3:17:423 hours, 17 minutes, 42 secondsproduct from the library, it's going to have a completely different layout. So that's why we're not going to reuse it.
3:17:473 hours, 17 minutes, 47 secondsSo now let's add a navbar here. So navbar with a class name of padding four
3:17:533 hours, 17 minutes, 53 secondsa background full width border bottom and this navbar will simply have a link
3:18:013 hours, 18 minutes, 1 secondwith an arrow left icon and continue shopping text. So let's now import the library
3:18:093 hours, 18 minutes, 9 secondsview so you can see what you're doing. Uh of course let's return this
3:18:203 hours, 18 minutes, 20 secondsAnd now you should see the text continue shopping like this. So when I go back, there we go. So you have to manually go
3:18:273 hours, 18 minutes, 27 secondsto / library to see it again. Uh and now what we're going to do is we're going to create a header component below the
3:18:363 hours, 18 minutes, 36 secondsnavbar. So let's add a header here with a class name background. And let's just copy this color
3:18:443 hours, 18 minutes, 44 secondshere like this. py8 and border bottom.
3:18:503 hours, 18 minutes, 50 secondsInside we're going to create a div which will have a strict break point. So
3:18:563 hours, 18 minutes, 56 secondsmaximum width and let's use d- breakpoint xl mx auto px4 lgpx12 flex flex column and gap y of 4.
3:19:103 hours, 19 minutes, 10 secondsInside of this div, an H1 element rendering the text library with a class
3:19:163 hours, 19 minutes, 16 secondsname text of 40 pixels and font medium. There we go. Now, below that,
3:19:243 hours, 19 minutes, 24 secondswe're going to add a paragraph, your purchases and reviews, and give the paragraph a class name of font medium. There we go.
3:19:363 hours, 19 minutes, 36 secondsoutside of the header here, we are going to create a section. And let's give this a class
3:19:443 hours, 19 minutes, 44 secondsname with the same break point as above, MX auto, and the same padding except the
3:19:513 hours, 19 minutes, 51 secondspy. And now inside we are going to create the actual uh product list. But
3:19:593 hours, 19 minutes, 59 secondsbefore we create the product list, uh I want to create uh the actual procedure
3:20:063 hours, 20 minutes, 6 secondswhich will allow us to load items in our library view. So let's go inside of our
3:20:163 hours, 20 minutes, 16 secondsmodules and inside of the modules you can copy the products server and paste it in the library.
3:20:263 hours, 20 minutes, 26 secondsLet's go ahead and remove this import.
3:20:283 hours, 20 minutes, 28 secondsAnd let's rename the router to library router. Uh we can remove get one for
3:20:373 hours, 20 minutes, 37 secondsnow. Instead, let's just focus on the get many, which by default is going to be a protected procedure because only
3:20:453 hours, 20 minutes, 45 secondslogged in users should be able to see things they have purchased, right? So we no longer need headers here and we can
3:20:543 hours, 20 minutes, 54 secondsjust use the cursor and the limit for pagination nothing else which means that we can remove the complex
3:21:033 hours, 21 minutes, 3 secondsuh the complex quering here and immediately focus on this but the collection will be orders and we are
3:21:113 hours, 21 minutes, 11 secondsactually for the first time I think going to use the depth zero. We want to just get
3:21:203 hours, 21 minutes, 20 secondsids without populating. Let's remove the
3:21:263 hours, 21 minutes, 26 secondswear and sort. Uh there will be a wear but we are manually going to write it.
3:21:333 hours, 21 minutes, 33 secondsSo what we are looking for is all orders where the user is the currently logged
3:21:403 hours, 21 minutes, 40 secondsin user. So we are fetching all orders that that user created and now we can extract the
3:21:483 hours, 21 minutes, 48 secondsproduct ids here from orders dot my apologies. So this is called data
3:21:563 hours, 21 minutes, 56 secondsdata docs map get the order and simply return order.p product. In this case,
3:22:043 hours, 22 minutes, 4 secondsproduct will be a string and not the product because we explicitly set the depth to zero. Let's call this orders data.
3:22:143 hours, 22 minutes, 14 secondsNow that we have the product ids here, we can get the products data here by going await context database find
3:22:233 hours, 22 minutes, 23 secondscollection products pageination set to
3:22:293 hours, 22 minutes, 29 secondsfalse where id in product
3:22:353 hours, 22 minutes, 35 secondsids. Now that we have the products data, we can spread the products data here and
3:22:423 hours, 22 minutes, 42 secondsproducts data here. There we go. So, that's going to be our uh method to load
3:22:493 hours, 22 minutes, 49 secondsall orders and immediately load uh all um yeah, now I'm
3:22:573 hours, 22 minutes, 57 secondsthinking, you know, maybe we could just um increase the depth and just use the product data from
3:23:063 hours, 23 minutes, 6 secondseach order is what I'm thinking at the moment.
3:23:123 hours, 23 minutes, 12 secondsBut uh I'm going to leave it like this for now. Right. So it it's this pagionation part that worries me. But then I realized uh we cannot possibly have that many products inside of order.
3:23:243 hours, 23 minutes, 24 secondsSo it's actually fine. It's okay. So now that we have this, what we have to do is we have to go inside of TRPC routers app and we have to add the library router.
3:23:363 hours, 23 minutes, 36 secondsMy apologies. Library. Library router. and of course import it. Now
3:23:433 hours, 23 minutes, 43 secondsthat we have that, let's go back inside of our page for the library. So in here we render the library view. So what I
3:23:523 hours, 23 minutes, 52 secondswant to do now is mark this as an asynchronous method. And in here I want to get the query client. So uh get query
3:24:013 hours, 24 minutes, 1 secondclient from the RPC server. And then in here uh I just want to do void query
3:24:093 hours, 24 minutes, 9 secondsclient prefetch infinite query tRPC from tRPC server. And in here let's
3:24:183 hours, 24 minutes, 18 secondsdo library get many infinite query
3:24:243 hours, 24 minutes, 24 secondsoptions like this. And in here I'm going to pass the limit to be default limit. Whoops.
3:24:343 hours, 24 minutes, 34 secondsdefault limit from constants. And I think that's everything we need. Uh, and then we're going to have
3:24:423 hours, 24 minutes, 42 secondsto wrap the actual library view inside of hydration boundary from tanstack react
3:24:513 hours, 24 minutes, 51 secondsquery. And we're going to have to pass the state to be dehydrate from tanstack react query query client.
3:25:003 hours, 25 minutesAnd I think this is the first time that I wrote this entire method without uh cheating by looking at an existing one.
3:25:093 hours, 25 minutes, 9 secondsGreat. So I think I finally got the hang of the new syntax of the RPC. Of course, I'm going to double check by searching for prefetch infinite
3:25:173 hours, 25 minutes, 17 secondsquery. Let's look at the one in the homepage. So yeah, infinite query options. Get query client dehydrate. I
3:25:253 hours, 25 minutes, 25 secondsthink that's it. Perfect. So now we are prefetching that for the library view.
3:25:303 hours, 25 minutes, 30 secondsUh and now what we have to do is we have to implement the product list component.
3:25:353 hours, 25 minutes, 35 secondsSo what I'm going to do is I'm going to copy the product list from products here. Go inside of UI components and
3:25:423 hours, 25 minutes, 42 secondsjust copy the product list component and paste it inside of library UI not inside of views.
3:25:513 hours, 25 minutes, 51 secondsuh create a new folder components and inside just go ahead and paste product
3:25:593 hours, 25 minutes, 59 secondslist. Uh so inside of here it's searching for product filters. We are not going to be using that. So we can
3:26:073 hours, 26 minutes, 7 secondsremove this immediately. So we can remove this as well. We will have product card. So we
3:26:153 hours, 26 minutes, 15 secondscan leave it. And the props will actually uh also be simpler. In fact, uh we're
3:26:253 hours, 26 minutes, 25 secondsnot going to have any props at all. Yeah, no props. Instead, we're just going to be calling tRPC.
3:26:353 hours, 26 minutes, 35 secondslibrary. And the only thing we care about is the limit to be the default limit and the proper get next
3:26:423 hours, 26 minutes, 42 secondspage. So this no products message can stay exactly the same as it previously
3:26:493 hours, 26 minutes, 49 secondswas. But things will be just a little bit different here. For example, we are not going to need the narrow view at
3:26:593 hours, 26 minutes, 59 secondsall. We can just fall back to a static class name. So no need to complicate it like this.
3:27:103 hours, 27 minutes, 10 secondsAnd in here we can leave the same uh load more. So no more props in the
3:27:163 hours, 27 minutes, 16 secondsproduct list uh skeleton either now. So we can remove this from the skeleton as
3:27:233 hours, 27 minutes, 23 secondswell. And let's remove this and bring this up. There we go. As simple as that.
3:27:283 hours, 27 minutes, 28 secondsSo now the only problem we have is the missing product card. This is something that we don't have yet. So what we can
3:27:373 hours, 27 minutes, 37 secondsdo is the same thing. Just go inside of products UI and let's copy um the product card component. So click
3:27:473 hours, 27 minutes, 47 secondscopy and go inside of library UI components and paste it here. Product
3:27:543 hours, 27 minutes, 54 secondscard. There we go. So we can leave the to-do here because we will have to do that here as well. And the card will more or less look exactly the same.
3:28:043 hours, 28 minutes, 4 secondsSo the first thing that's going to be different is there will be no router or user click here. So you can remove that
3:28:133 hours, 28 minutes, 13 secondswhich also means that you can remove the imports here. Uh the URL will also just lead to slash library and then the ID of
3:28:223 hours, 28 minutes, 22 secondsthe product which means that we can remove this as well.
3:28:273 hours, 28 minutes, 27 secondsUh we are not going to have um on click here. So let me remove this
3:28:363 hours, 28 minutes, 36 secondson click. Uh I'm trying to see what will be different. And we are also not going to display the currency here. No need
3:28:433 hours, 28 minutes, 43 secondsfor that. We already purchased it. And that's going to be all the changes. Uh so if you want to, yeah, you
3:28:513 hours, 28 minutes, 51 secondscan create a reusable component for this. But um I don't know. I feel okay.
3:28:563 hours, 28 minutes, 56 secondsum just uh you know ju just having two components. It's okay. It's not like it's reused 10 times or something. Uh
3:29:043 hours, 29 minutes, 4 secondsnow let's go inside of the product list here and we can now actually import the product card. The only thing that we're
3:29:113 hours, 29 minutes, 11 secondsgoing to change is remove the price here. There we go. So now if you go ahead inside of your library, uh of
3:29:203 hours, 29 minutes, 20 secondscourse we have to render this. So let's go inside of the library view. And inside of here, let's add a product list component. So make sure you import the
3:29:293 hours, 29 minutes, 29 secondsone from the library, right? This one from your new library.
3:29:353 hours, 29 minutes, 35 secondsDon't accidentally import the one from the products. And we have to add suspense around this from
3:29:453 hours, 29 minutes, 45 secondsReact. And let's give it a fall back product list
3:29:513 hours, 29 minutes, 51 secondsskeleton like this. So from the same component and I think that now there we go. You should see a library which allows you to see your products here.
3:30:043 hours, 30 minutes, 4 secondsAmazing. So now I want to uh give you access to the library button. Uh and you
3:30:113 hours, 30 minutes, 11 secondscan already see it right here. So, I'm not sure what exactly we coded, but if I go inside of my search input
3:30:203 hours, 30 minutes, 20 secondscomponent, yeah, I put an href to/ library if we are logged in. So, I guess that's fine. I guess we can do that. You
3:30:283 hours, 30 minutes, 28 secondscan add prefetch. So, it's faster. There we go. So, if you are
3:30:363 hours, 30 minutes, 36 secondslogged in, you can access your library here. And in here you will basically say see all the things that you have
3:30:423 hours, 30 minutes, 42 secondspurchased. So I want to end uh the chapter here. Uh in the next chapter
3:30:493 hours, 30 minutes, 49 secondswe're going to implement the actual view of the individual item. Uh and in that item we will be able to leave a review
3:30:583 hours, 30 minutes, 58 secondsand then we can finally connect uh the ratings right and we can see the real ratings here and we will be able to see
3:31:053 hours, 31 minutes, 5 secondsthe real ratings here. In the meantime, I will explore ways to protect us from purchasing a product we already own. And
3:31:143 hours, 31 minutes, 14 secondsuh yeah, I think that's going to be uh close to finishing. Uh after that, we are going to implement of course the
3:31:233 hours, 31 minutes, 23 secondsstripe connect and the ability to verify details and uh share the fee with our platform. But that part honestly isn't
3:31:313 hours, 31 minutes, 31 secondsuh too difficult. We already have the majority of it uh set up. And then we have the deployment with uh infinite
3:31:383 hours, 31 minutes, 38 secondssubdomains which is also going to be super easy right it's just going to be rewriting in question you're doing an
3:31:443 hours, 31 minutes, 44 secondsamazing amazing job so 21 library let me see we have done this we changed the
3:31:523 hours, 31 minutes, 52 secondsstate on the product view we created library page UI and some library procedures let's go to 21 library now
3:31:593 hours, 31 minutes, 59 secondscreate a branch here so get checkout B2
3:32:053 hours, 32 minutes, 5 secondslibrary. Just want to confirm. There we go. Get add get commit 21
3:32:163 hours, 32 minutes, 16 secondslibrary and get push U origin
3:32:243 hours, 32 minutes, 24 seconds21 library. Once you've confirmed that you have pushed this branch and you are on the new branch here and you can see
3:32:323 hours, 32 minutes, 32 secondsthe detachment, let's go ahead and review our changes by creating a pull
3:32:403 hours, 32 minutes, 40 secondsrequest. So in a second we're going to see what changes we've made. So the summary uh we launched a
3:32:483 hours, 32 minutes, 48 secondsnew library page that showcases user purchases and reviews. We introduced engaging product displays with
3:32:553 hours, 32 minutes, 55 secondsinteractive cards, lists and animated loading states. So these are basically our skeletons, product cards and product
3:33:023 hours, 33 minutes, 2 secondslist components which we have duplicated from the tenants module. We have enhanced the product view with purchase indicators and refined cart
3:33:103 hours, 33 minutes, 10 secondsinteractions. These are basically the refactors we did and it's also mentioned here the cart management mostly with
3:33:173 hours, 33 minutes, 17 secondsperformance improvements. Exactly. Uh perfect. And we also optimized navigation through prefetching and
3:33:243 hours, 33 minutes, 24 secondsintegrated the new library functionality into the main routing structure. As always, we can see uh a more in-depth
3:33:333 hours, 33 minutes, 33 secondswalk through here with file by file change. And here is an interesting sequence diagram for those of you who
3:33:403 hours, 33 minutes, 40 secondsare interested in them. So this sequence diagram represents our logic to detect
3:33:463 hours, 33 minutes, 46 secondson a public uh get one procedure for fetching a product and in case uh we
3:33:553 hours, 33 minutes, 55 secondsreturn user session. So if user session exists in that case we also query for the orders and if we return any matching
3:34:033 hours, 34 minutes, 3 secondsorders we set the purchased boolean to true otherwise it remains false and then
3:34:103 hours, 34 minutes, 10 secondswe use the new is purchased prop to show the view in library button. So a very nice representation of that
3:34:183 hours, 34 minutes, 18 secondsfunctionality of ours. Uh so nitpick comments here. Um, we don't have to take care of this because we know that tenant
3:34:263 hours, 34 minutes, 26 secondswill exist thanks to the depth property. Uh, in here it's considering adding error handling. We don't have to
3:34:333 hours, 34 minutes, 33 secondsdo that here. Since this is a suspense, we can just add an error boundary the same way we add a suspense boundary. Uh, and in here I'm not going to change
3:34:423 hours, 34 minutes, 42 secondsanything and I will not do this refactor. So I am satisfied with this.
3:34:473 hours, 34 minutes, 47 secondsLet's go ahead and merge the branch 21 library. There we go. Now I'm going to
3:34:553 hours, 34 minutes, 55 secondsgo back to my previous branch main or master depending on what you use and get pull origin again your branch name. Get
3:35:043 hours, 35 minutes, 4 secondsstatus to confirm everything is okay and in the branch graph confirm that as well. That's it. Amazing job and see you in the next chapter.
Chapter 8: 22 Reviews
3:35:163 hours, 35 minutes, 16 secondsIn this chapter, we're going to go ahead and develop the reviews UI and procedures. We're going to start by
3:35:253 hours, 35 minutes, 25 secondsfixing the invalid checkout inside of our success redirect when the user purchases something. As always, ensure
3:35:333 hours, 35 minutes, 33 secondsthat you are on your master branch and that you are up to date. After that, you can go ahead and run bun rundev.
3:35:423 hours, 35 minutes, 42 secondsLet's go inside of checkout view and in here in use effect when we
3:35:483 hours, 35 minutes, 48 secondsdo router.push if state is success we shouldn't go to products we should go to
3:35:563 hours, 35 minutes, 56 secondslibrary and let's also invalidate our library get many. So if a new product is
3:36:043 hours, 36 minutes, 4 secondspurchased we have to refetch that. So we can do that by adding const query
3:36:113 hours, 36 minutes, 11 secondsclient. Use query client from tanstack react query. And
3:36:183 hours, 36 minutes, 18 secondsonce you have the query client oops inside of here you can do query
3:36:253 hours, 36 minutes, 25 secondsclient invalidate queries and pass in tRPC dot
3:36:323 hours, 36 minutes, 32 secondslibrary get many. And let's add infinite query filter
3:36:393 hours, 36 minutes, 39 secondshere. And now inside of our dependency array here we have to add query
3:36:483 hours, 36 minutes, 48 secondsclient we have to add the RPC library get many method like
3:36:563 hours, 36 minutes, 56 secondsthis. And now every time uh a success has been detected in the checkout it
3:37:033 hours, 37 minutes, 3 secondswill automatically refetch the library.get many and then it's going to push. So if you want to you can also put
3:37:123 hours, 37 minutes, 12 secondsan await here but uh since this is not an asynchronous method I don't think it will work that
3:37:183 hours, 37 minutes, 18 secondsway. So you can just do it like this. So that marks uh this as complete. Now let's create the get one library
3:37:273 hours, 37 minutes, 27 secondsprocedure. So instead of library server procedures, we already have get many. So what I'm going to do is I'm going to
3:37:343 hours, 37 minutes, 34 secondscopy get many and I'm going to rename it to get one. It will be a protected procedure
3:37:423 hours, 37 minutes, 42 secondswhich just accepts the product ID. And then inside of here we are going
3:37:503 hours, 37 minutes, 50 secondsto check limit to one pagionation to false remove the depth remove page and
3:37:593 hours, 37 minutes, 59 secondslimit and inside of where we're going to add and the first one will check if the
3:38:093 hours, 38 minutes, 9 secondsproduct equals input product ID. The second one will check if user
3:38:163 hours, 38 minutes, 16 secondsequals context session user ID. So we are confirming that the user trying to
3:38:223 hours, 38 minutes, 22 secondsload this library get one is the person who has the order meaning the person that purchased this ID and then what we
3:38:323 hours, 38 minutes, 32 secondsare going to do is the following. We can get the order by simply going to orders data first in the array like this. If
3:38:423 hours, 38 minutes, 42 secondsthere is no order, we can throw new TRPC error with the code not found. And you
3:38:503 hours, 38 minutes, 50 secondscan import the T trpc error from at TRPC/s server. If you want to, you can add a
3:38:583 hours, 38 minutes, 58 secondsmore descriptive message order not found. And then you can go ahead and
3:39:053 hours, 39 minutes, 5 secondsfind the individual product using context database find by ID collection
3:39:123 hours, 39 minutes, 12 secondsproducts where ID is input product
3:39:203 hours, 39 minutes, 20 secondsID. When it comes to find by ID, there is no where it's just ID. My apologies.
3:39:273 hours, 39 minutes, 27 secondsAnd you can just return the product.
3:39:303 hours, 39 minutes, 30 secondsSo a simpler method than get many but still it should handle everything that we need here. And if you want to you can also handle if there is no product here
3:39:393 hours, 39 minutes, 39 secondsto throw new ERPC error code not found and a message product not found. There we go.
3:39:523 hours, 39 minutes, 52 secondsNow that we have this procedure, we can go ahead and develop the library product ID
3:40:003 hours, 40 minutesUI. So let's go inside of our app folder app library. Inside of the library,
3:40:083 hours, 40 minutes, 8 secondscreate product ID and inside you can copy and paste the page.
3:40:173 hours, 40 minutes, 17 secondsNow we're just going to modify it a little bit by giving this one an interface with params which is a which
3:40:243 hours, 40 minutes, 24 secondsare a promise which hold the product ID which is a string. So always make sure that you don't misspell right it's case
3:40:333 hours, 40 minutes, 33 secondssensitive otherwise your params are always going to be undefined. From here we can destructure
3:40:403 hours, 40 minutes, 40 secondsthe params and then we can await them and destruct product ID from await
3:40:483 hours, 40 minutes, 48 secondsparams. We are not going to prefetch infinite query. We are just going to prefetch a normal library get one using
3:40:563 hours, 40 minutes, 56 secondsnormal query options. There will be no limit. Instead there will be a product ID like this. So no need for this one.
3:41:083 hours, 41 minutes, 8 secondsAnd now instead of library view, we're going to use product view. But make sure you don't import one because we first
3:41:153 hours, 41 minutes, 15 secondshave to develop it. Let's do that inside of modules library UI views. We can copy the
3:41:243 hours, 41 minutes, 24 secondslibrary view and paste it and rename it to product view.
3:41:303 hours, 41 minutes, 30 secondsRename the constant to product view here and create an interface props product ID string. Make sure you
3:41:403 hours, 41 minutes, 40 secondsdon't misspell it. Then go ahead and assign the props
3:41:473 hours, 41 minutes, 47 secondshere. And the structure the product ID. Instead of continue shopping here, we're going to say back to library here.
3:41:583 hours, 41 minutes, 58 secondsAnd for the header, we're going to do something different. So, it's okay. We now have the product view, which means
3:42:063 hours, 42 minutes, 6 secondswe can go back inside of this page where we do library get one prefetch and import product view from modules
3:42:143 hours, 42 minutes, 14 secondslibrary and pass in the product ID here. There we go. Now, let's continue developing inside of the product view.
3:42:273 hours, 42 minutes, 27 secondsSo inside of here what we are going to do is we are going to dstructure the data and call use suspense query from tanstack react
3:42:363 hours, 42 minutes, 36 secondsquery and we are also going to prepare tRPC from use tRPC from TRPC client and
3:42:443 hours, 42 minutes, 44 secondspass in TRPC dot library get one query options and inside pass the product ID
3:42:543 hours, 42 minutes, 54 secondsand since this is suspense you are guaranteed to have this data. So instead of library here, you can add data.name
3:43:023 hours, 43 minutes, 2 secondshere. You can remove the lower one and you can remove the gap and flex
3:43:093 hours, 43 minutes, 9 secondsclasses. And in here you can remove this as well. So you don't need product list or suspense here at the moment.
3:43:193 hours, 43 minutes, 19 secondsSo you should be able to now go inside of a library and you should be able to
3:43:263 hours, 43 minutes, 26 secondsOh yes, we forgot to mark the product view as client component. So let's wait for that. And
3:43:353 hours, 43 minutes, 35 secondsthere we go. Uh this is still not working correctly. Yes. So if you go to the library now, you should be able to click on a product and it should load
3:43:433 hours, 43 minutes, 43 secondsthe product. But if you click on uh the back to library, it should go back to
3:43:513 hours, 43 minutes, 51 secondslibrary. If your library is not redirecting to this page, uh it most likely means that inside of the library
3:43:583 hours, 43 minutes, 58 secondsview inside of the product list product card, you didn't have a proper redirect
3:44:063 hours, 44 minutes, 6 secondshere. And you can also add a prefetch here actually. So it's going to be even faster in production. So now we're going
3:44:143 hours, 44 minutes, 14 secondsto focus on this page right here which is the product view inside of the modules library UI views inside of the
3:44:233 hours, 44 minutes, 23 secondssection. Inside of the section we are going to create a grid holding two columns. So let's create some space for
3:44:303 hours, 44 minutes, 30 secondsthat grid grid columns one on mobile but on desktop it will be grid columns 7 gap
3:44:383 hours, 44 minutes, 38 seconds4 and on large gap 16. Now inside we're going to have two
3:44:453 hours, 44 minutes, 45 secondscolumns like this. The first one is going to be LG column span
3:44:533 hours, 44 minutes, 53 seconds2 and the bottom one will be LG column span 5. Inside of the first one, go ahead and
3:45:023 hours, 45 minutes, 2 secondsadd a div with a class name of adding four background white rounded
3:45:093 hours, 45 minutes, 9 secondsmedium border gap for and let's leave it like this for now. And inside add to-do
3:45:193 hours, 45 minutes, 19 secondsreview sidebar. Inside of LG call span 5, we are going to go ahead and simply render
3:45:283 hours, 45 minutes, 28 secondsa paragraph. no special content and give the paragraph a
3:45:353 hours, 45 minutes, 35 secondsclass name of font medium italic and text muted foreground. So this is how it's going to
3:45:423 hours, 45 minutes, 42 secondslook like now and later we're going to have some special content in form of a rich text element which will also include file uploads. So the author of
3:45:513 hours, 45 minutes, 51 secondsthis product will be able to share whatever they want with us. a file, a PDF, a link, uh a license key, whatever.
3:45:593 hours, 45 minutes, 59 secondsRight? Uh now, let's go ahead and focus on reviewing the on the review sidebar here. So, in order to do the review
3:46:083 hours, 46 minutes, 8 secondssidebar, uh we first have to collect the reviews collection. So, let's go inside of source inside of collections and let's
3:46:163 hours, 46 minutes, 16 secondscreate reviews.ts. And we can copy categories for example just so we speed things up. So
3:46:253 hours, 46 minutes, 25 secondslet's rename this to reviews slug to reviews as well. And now we're going to go ahead and modify this a little bit.
3:46:343 hours, 46 minutes, 34 secondsIt's not going to have a name but it will have a description. And the type will be text area. It's also going to be required.
3:46:443 hours, 46 minutes, 44 secondsAnd then it's going to have a rating.
3:46:473 hours, 46 minutes, 47 secondsRating will be a type of number which will be required and it will have a minimum of
3:46:543 hours, 46 minutes, 54 secondsone and a maximum of five. After that uh we're going to
3:47:003 hours, 47 minuteshave a relation with the product which is a relation to
3:47:073 hours, 47 minutes, 7 secondsproduct has many set to false and required will be true.
3:47:133 hours, 47 minutes, 13 secondsAnd the using the same logic, we are going to have a related user that created uh the
3:47:213 hours, 47 minutes, 21 secondsreview. There we go. That's everything there is about the reviews. And we can use the description as name in this
3:47:303 hours, 47 minutes, 30 secondscase. Now let's go inside of payload config and let's ensure that we add the reviews here. There we go.
3:47:403 hours, 47 minutes, 40 secondsNow that we have the reviews collection, let's go ahead and let's create the reviews procedures. So I'm going to go
3:47:473 hours, 47 minutes, 47 secondsinside of source modules and I will create a new folder reviews and inside of here server and then inside
3:47:543 hours, 47 minutes, 54 secondsprocedures oops procedures.ts.
3:48:033 hours, 48 minutes, 3 secondsTo speed things up, we can look at text for example and we can add them inside of reviews
3:48:113 hours, 48 minutes, 11 secondsprocedures like this. Let's go ahead and rename this to reviews router. Let's go inside of
3:48:203 hours, 48 minutes, 20 secondstRPC app inside of the routers folder here. And then in here, we should be able to import the reviews
3:48:283 hours, 48 minutes, 28 secondsrouter like this. And we should be able to add reviews to the reviews router. There
3:48:373 hours, 48 minutes, 37 secondswe go. And now inside of the reviews router, let's add everything we need. So we're going to need get one, which is
3:48:453 hours, 48 minutes, 45 secondsgoing to be a protected procedure. Inside of the object, we are
3:48:513 hours, 48 minutes, 51 secondsonly going to aim at the product ID for which we want the procedure.
3:48:593 hours, 48 minutes, 59 secondsAnd inside of here we are going to get the product using await context find by
3:49:053 hours, 49 minutes, 5 secondsid. The collection will be products. And we are just going to pass the ID to the input product
3:49:143 hours, 49 minutes, 14 secondsID. If there is no product found, we are going to throw new tRPC error
3:49:213 hours, 49 minutes, 21 secondshere with the code not found and a message product not found.
3:49:283 hours, 49 minutes, 28 secondsMake sure to import the TRPC error from TRPC server. This is a module. So I'm going
3:49:363 hours, 49 minutes, 36 secondsto move it up there. Once we know that we have uh the product, we're going to get the reviews data here using await
3:49:443 hours, 49 minutes, 44 secondscontext database find collection reviews where and let's also ensure that we have a limit of
3:49:533 hours, 49 minutes, 53 secondsone and and add two options. As always, if you have TypeScript errors when loading reviews, you're going to have to
3:50:023 hours, 50 minutes, 2 secondsrun generate types. Now inside of here let's do product equals input product ID or we
3:50:113 hours, 50 minutes, 11 secondscan do product ID like this and the user
3:50:173 hours, 50 minutes, 17 secondsequals context session user ID. There we go. That is how we fetch
3:50:243 hours, 50 minutes, 24 secondsthe reviews. Now let's get a single review from here. Reviews data docs first in the
3:50:323 hours, 50 minutes, 32 secondsarray. If there is no review, we're just going to return null because we don't want to throw
3:50:393 hours, 50 minutes, 39 secondserrors if there's no review. That's okay. But if the product was not found, uh, well, that's an error. But if
3:50:463 hours, 50 minutes, 46 secondsthere's no review, that's fine. There, no, there's no need to have a review. Now, let's go ahead and let's
3:50:543 hours, 50 minutes, 54 secondscreate create, which is a protected procedure. And let's go ahead and give it the following input. We need a Z
3:51:023 hours, 51 minutes, 2 secondsobject with the product ID for which we are creating a review. A rating which is a number where the minimum is one and
3:51:093 hours, 51 minutes, 9 secondsthe message is rating is required and the maximum is five. And a description where the minimum is one and description is required. If you want to, you can
3:51:183 hours, 51 minutes, 18 secondsalso change this to three. Great. Now that we have that, uh let's go ahead and let's add the mutation after the input.
3:51:283 hours, 51 minutes, 28 secondsAnd inside of this mutation here, what we're going to have to do is first find the product using context database find
3:51:373 hours, 51 minutes, 37 secondsby ID. So the simpler one, as always, if uh if the product wasn't found, we're going to throw a new TRPC error with not
3:51:463 hours, 51 minutes, 46 secondsfound and product not found. Here, what we have to check for now is is there an existing review. So const uh we're going
3:51:543 hours, 51 minutes, 54 secondsto do reviews existing reviews data to be await context database.find Find
3:52:023 hours, 52 minutes, 2 secondscollection reviews where and and in here
3:52:123 hours, 52 minutes, 12 secondsproduct is going to be equals input product ID and user equals context
3:52:203 hours, 52 minutes, 20 secondssession user ID like this. And then what we're going to do is
3:52:273 hours, 52 minutes, 27 secondsif existing reviews data total documents are more than zero that means that we've already created a review for this
3:52:353 hours, 52 minutes, 35 secondsproduct. So what we're going to do instead is throw a TRPC error. You have already reviewed this
3:52:443 hours, 52 minutes, 44 secondsproduct. Otherwise let's create a new review using await context database create collection
3:52:523 hours, 52 minutes, 52 secondsreviews and data. The user will be the currently logged in
3:52:583 hours, 52 minutes, 58 secondsuser. Product will be product ID. Rating will be input
3:53:073 hours, 53 minutes, 7 secondsrating. And description will be input description. As simple as that. And let's return the newly created
3:53:163 hours, 53 minutes, 16 secondsreview. Now we can go ahead and copy our create procedure here.
3:53:243 hours, 53 minutes, 24 secondsand then we can change it to update. So it's going
3:53:313 hours, 53 minutes, 31 secondsto be quite similar with an exception of instead of product ID having a review ID. So the beginning will be a little
3:53:403 hours, 53 minutes, 40 secondsbit different. Instead of looking for an existing product, we will look for an existing review using context eleate find by ID. Change the depth to zero.
3:53:513 hours, 53 minutes, 51 secondscollection will be reviews and ID will be input review ID. So now we're going to check if there
3:53:583 hours, 53 minutes, 58 secondsis no existing review. We're just going to throw the error meaning that you know you can't uh update a review that
3:54:063 hours, 54 minutes, 6 secondsdoesn't exist. And now another thing that we need to check here is the following. So we set the depth to zero
3:54:143 hours, 54 minutes, 14 secondswhich means uh existing review dot user will be the user
3:54:223 hours, 54 minutes, 22 secondsID. In our case that's exactly what we need. So just do if existing review do
3:54:283 hours, 54 minutes, 28 secondsuser does not match context session user ID you're not allowed to update this review. And the rest is pretty simple.
3:54:373 hours, 54 minutes, 37 secondsSo let me remove this remove the everything until we do create and instead of create it will be update. So
3:54:463 hours, 54 minutes, 46 secondswe need ID to be input review ID and the only thing that we are going to allow to be updated is the rating and the
3:54:533 hours, 54 minutes, 53 secondsdescription. And let's call this updated review. There we go. We now
3:55:013 hours, 55 minutes, 1 secondhave our procedures to update. We have the procedure to create and the procedure to get the
3:55:103 hours, 55 minutes, 10 secondsreviews. Great. So, we can now head back to our product view inside of the library module. And in here, we have
3:55:193 hours, 55 minutes, 19 secondsadded a to-do review sidebar. Let's go ahead and create it review sidebar. Now, let's go ahead and add the product ID here. Product ID.
3:55:323 hours, 55 minutes, 32 secondsNow I'm going to go inside of components and create the review sidebar. DSX. The reason I'm creating it
3:55:413 hours, 55 minutes, 41 secondshere is because it's going to be tightly coupled with library rather than the reviews itself. So instead of the review
3:55:493 hours, 55 minutes, 49 secondssidebar, let's create the props which accept the product ID. And now let's go ahead and export const review review sidebar.
3:56:013 hours, 56 minutes, 1 secondAnd inside of here, we can just dstructure our props like this. And inside just
3:56:083 hours, 56 minutes, 8 secondsreturn sidebar text like this. And now you can actually import the review sidebar and you should no
3:56:173 hours, 56 minutes, 17 secondslonger have errors here. So nothing much to change except it should now say review sidebar. Now inside of this
3:56:253 hours, 56 minutes, 25 secondsreview sidebar, what we are going to do is we're going to uh fetch the review
3:56:323 hours, 56 minutes, 32 secondshere. So let's go ahead and get the RPC from usepc. Let's go ahead and get uh the
3:56:403 hours, 56 minutes, 40 secondsactual data here from use query. My apologies. Use query. Yes, I thought uh never mind. So
3:56:503 hours, 56 minutes, 50 secondsinstead of use query tRPC dot library get one query options
3:56:573 hours, 56 minutes, 57 secondsand inside product ID. There we go. And it's not going to be use query. Use
3:57:043 hours, 57 minutes, 4 secondssuspense query. I knew something was off. There we go. So use suspense query like this. Whoops. Use suspense query. There we go.
3:57:163 hours, 57 minutes, 16 secondsAnd what we can do here is just for now JSON stringify data null and number two.
3:57:253 hours, 57 minutes, 25 secondsSo right now uh inside of here this is interesting because I get a review
3:57:323 hours, 57 minutes, 32 secondshere but I shouldn't. Uh that's because I'm using TRPC library get one. What I should be doing is reviews get one. So
3:57:403 hours, 57 minutes, 40 secondswe are fetching for one review here. So after you refresh you should see null here because uh we don't have any uh now
3:57:493 hours, 57 minutes, 49 secondsinside of here we are getting an error here not authenticated that's because we are attempting to use use suspense query
3:57:583 hours, 57 minutes, 58 secondswithout prefetching it. So what we have to do is go back inside of our app folder library product ID
3:58:083 hours, 58 minutes, 8 secondspage and besides prefetching the library get one let's also prefetch reviews get one
3:58:183 hours, 58 minutes, 18 secondsbased on the product ID and now as you see no more errors so that's one gotcha you know as we would say that you have
3:58:263 hours, 58 minutes, 26 secondsto remember every single time you use use suspense query, you need to have a
3:58:333 hours, 58 minutes, 33 secondsmatching prefetch. And if you use use suspense infinite query, you need to have a matching prefetch infinite query.
3:58:423 hours, 58 minutes, 42 secondsThese things are very important. And the React Query and Tanstack team is actually working on uh a couple of
3:58:513 hours, 58 minutes, 51 secondsstrict wrappers which will alert you in the future if you are forgetting to do that. Right now you just get this cryptic errors which say unauthorized.
3:59:013 hours, 59 minutes, 1 secondIt's very cryptic. Like would you have guessed that it's because of a missing prefetch? I don't really think so.
3:59:073 hours, 59 minutes, 7 secondsRight. Uh but for now just keep in mind every single time you do use suspense query or use suspense infinite query you
3:59:163 hours, 59 minutes, 16 secondsneed to have a matching prefetch. And if you're just using use query then you don't. In that case it's
3:59:243 hours, 59 minutes, 24 secondscompletely fine. Great. Right. So in here it says null. And now what we have to do here is return a
3:59:323 hours, 59 minutes, 32 secondsreview form component. Inside of here we're going to have product ID and we're going to have the initial
3:59:403 hours, 59 minutes, 40 secondsdata which will be the data. And now let's go ahead and create the review component inside of components review form. ESX.
3:59:533 hours, 59 minutes, 53 secondsLet's start by creating an interface.
3:59:553 hours, 59 minutes, 55 secondsReview get one output. Uh I'm sorry, we don't have this yet. So let's quickly create the review
4:00:044 hours, 4 secondsget one output um by going inside of our
4:00:124 hours, 12 secondsreviews types.ds. And what I'm going to do now, uh let me just save my review form in this state.
4:00:224 hours, 22 secondsWhat I want to do is I just want to visit my category modules because I already have the types here. So I will
4:00:294 hours, 29 secondsjust copy them and paste them in my reviews. And in here I am looking for uh export type
4:00:384 hours, 38 secondsreviews get one output. So this will be reviews get one. That's what I'm looking
4:00:464 hours, 46 secondsfor. And now I'm going to go back inside of library UI components review form and I will be able to import this from modules reviews type. There we go.
4:00:574 hours, 57 secondsBecause the place where we render our review form is inside of the review sidebar. And this is the exact type that
4:01:054 hours, 1 minute, 5 secondswe are using. And by the way, we can now import. Actually, we can't yet. My apologies. Um, so let's go ahead and export const review review form.
4:01:194 hours, 1 minute, 19 secondsAnd let's return a div review form. And now you should be able to
4:01:264 hours, 1 minute, 26 secondsimport the review form from dot / review form. Not much to change, just the text
4:01:344 hours, 1 minute, 34 secondsto review form. But now let's go ahead and import everything we are going to need to make this form come to
4:01:424 hours, 1 minute, 42 secondslife. Whoops. Okay, let's go inside of the review form here and let's import everything we are going to need to build
4:01:494 hours, 1 minute, 49 secondsthe form. Zod use state use form and zod resolver and then from our
4:01:594 hours, 1 minute, 59 secondsuh alias imports TRPC from TRPC client button uh from components UI button and
4:02:084 hours, 2 minutes, 8 secondsthis is not true. Uh this will be use brpc text area uh and the star picker is
4:02:174 hours, 2 minutes, 17 secondsa component which we're going to have to develop. So I will comment it out for now. Uh and that will be it. So let's go
4:02:284 hours, 2 minutes, 28 secondsahead and start building until we get to the star picker at which point we're going to have to develop it. So our form
4:02:354 hours, 2 minutes, 35 secondsschema uh will look like this rating a number which is required
4:02:424 hours, 2 minutes, 42 secondsand a description. So similarly to how it looks like uh in the DRPC
4:02:514 hours, 2 minutes, 51 secondsprocedure for our reviews. So besides the product ID these two should be identical in the form
4:02:594 hours, 2 minutes, 59 secondsschema. If you want to you can reuse them. Great. So once we have the form schema uh what we can do here is the
4:03:084 hours, 3 minutes, 8 secondsfollowing. We can set the form to be use form and use z infer type of form
4:03:174 hours, 3 minutes, 17 secondsschema. Use the z resolver on the form schema and set the default values to first check if we have the initial data.
4:03:244 hours, 3 minutes, 24 secondsIf we have initial data rating is going to use the rating otherwise fall back to zero as default. and the description
4:03:324 hours, 3 minutes, 32 secondswill be the same thing description or uh uh fall back to an empty string. And one
4:03:404 hours, 3 minutes, 40 secondsthing you can do here is detect if this will be an edit or a creation of a new review based on the initial data. So I'm
4:03:494 hours, 3 minutes, 49 secondsgoing to add a state which uses a boolean of the initial data to mark is
4:03:564 hours, 3 minutes, 56 secondspreview to true if we receive initial data. So is preview basically means okay
4:04:014 hours, 4 minutes, 1 secondwe are uh previewing uh an existing review. Great. So now that we have this
4:04:104 hours, 4 minutes, 10 secondsuh let's also prepare a const on submit method here like this and inside of here let's
4:04:194 hours, 4 minutes, 19 secondsadd data zinfer type of form schema and do a console log of the data for now.
4:04:294 hours, 4 minutes, 29 secondsAnd now inside of here, let's use the form. Let's spread the form like
4:04:374 hours, 4 minutes, 37 secondsthis. Inside a normal HTML form element with a class name of flex flex column
4:04:464 hours, 4 minutes, 46 secondsand gap Y4 and an onsubmit method of form handle submit and pass in the
4:04:524 hours, 4 minutes, 52 secondsonsubmit which we have developed here. Great. Now, inside of here, I'm going to add a class name font medium,
4:05:024 hours, 5 minutes, 2 secondswhich depending on if this is a preview, will say your rating or liked it, give it a rating.
4:05:144 hours, 5 minutes, 14 secondsSo, we are either telling the user to edit their rating or to create a rating for the very first time.
4:05:224 hours, 5 minutes, 22 secondsSo now what are I going to do below this? Uh and let me just see uh I think I completely forgot to
4:05:314 hours, 5 minutes, 31 secondsimport my form elements. So yes, we need all form elements control field item and
4:05:384 hours, 5 minutes, 38 secondsmessage from components UI form. So just let's get that ready. So what we're going to do now is
4:05:474 hours, 5 minutes, 47 secondsbelow this create a form field and the form field will have a control of form
4:05:544 hours, 5 minutes, 54 secondscontrol. Let me just fix the typo. The name will be description which is basically the field
4:06:014 hours, 6 minutes, 1 secondthat this form is controlling. And inside of the render we're going to go ahead and structure the
4:06:094 hours, 6 minutes, 9 secondsfield. And inside we're going to return the form item form
4:06:164 hours, 6 minutes, 16 secondscontrol and text area. The text area will actually be a self-closing tag like this. Give it a
4:06:254 hours, 6 minutes, 25 secondsplaceholder of want to leave a written review and disabled will be is preview and then just spread the field.
4:06:404 hours, 6 minutes, 40 secondsAnd below form control add form message which is a self-closing tag like
4:06:484 hours, 6 minutes, 48 secondsthis. And then just below the form field
4:06:544 hours, 6 minutes, 54 secondshere go ahead and check if not is preview. In that case render a button.
4:07:024 hours, 7 minutes, 2 secondsThe button will have a variant of elevated, disabled of explicitly false
4:07:084 hours, 7 minutes, 8 secondsfor now, type of submit, size of large, class
4:07:154 hours, 7 minutes, 15 secondsname, background black, text white, hover background pink 400, hover text
4:07:244 hours, 7 minutes, 24 secondsprimary, and width fit. And it's going to check if we have initial data in that case it will be
4:07:334 hours, 7 minutes, 33 secondsupdate review otherwise post re review. Great. Outside of the form
4:07:414 hours, 7 minutes, 41 secondselement do the opposite of is not preview. In here it will be if is preview. So if we are in the preview
4:07:494 hours, 7 minutes, 49 secondsmode we're going to have a button again which will say edit. So what this will
4:07:564 hours, 7 minutes, 56 secondsdo on click is modify the set is preview to false so that the user can now go
4:08:034 hours, 8 minutes, 3 secondsahead and edit can edit their preview. Give it a size of large a type
4:08:124 hours, 8 minutes, 12 secondsof button. This is quite important and a variant of elevated and a class
4:08:194 hours, 8 minutes, 19 secondsname with fit like this.
4:08:264 hours, 8 minutes, 26 secondsSo now this is how it should look like. So since we don't have an existing review,
4:08:344 hours, 8 minutes, 34 secondsthis is how the first time review uh field looks like. One thing that's
4:08:404 hours, 8 minutes, 40 secondsmissing is the star picker component. So let's go ahead and let's create uh the star picker component
4:08:494 hours, 8 minutes, 49 secondsquickly. So I'm going to go inside of source components. We have star rating, but now we're going to do star picker.
4:08:584 hours, 8 minutes, 58 secondsDSX. Let's mark it as use client import use state, star icon from lucid react, and CN util from lib
4:09:074 hours, 9 minutes, 7 secondsutils. Let's create an interface star picker props with an optional value which is a type of number, optional on
4:09:154 hours, 9 minutes, 15 secondschange which accepts the number as its value, optional disabled, and optional class name. So a highly reusable star
4:09:234 hours, 9 minutes, 23 secondspicker component. And now let's go ahead and actually export the constant star
4:09:314 hours, 9 minutes, 31 secondspicker. Now let's make use of all of these uh props here. Starting with the hover
4:09:404 hours, 9 minutes, 40 secondsvalue. Implement hover value and set hover value using use state which we have imported and set it the default
4:09:464 hours, 9 minutes, 46 secondsvalue to zero. And in here, let's go ahead and return a div. Give the div a dynamic class name
4:09:554 hours, 9 minutes, 55 secondsusing CN. By default, flex and items center. If disabled, give it an opacity
4:10:034 hours, 10 minutes, 3 seconds50 and cursor not allowed. And give it a class name as well. And then we're going to spread an array of 1 2 3 4 five elements inside.
4:10:174 hours, 10 minutes, 17 secondsdo a map and call the prop inside a star and then use a native HTML button here.
4:10:254 hours, 10 minutes, 25 secondsGo ahead and give it a key of star, a type of button, disabled of disabled,
4:10:344 hours, 10 minutes, 34 secondsand again a dynamic class name using CN on padding 0.5 hover scale 110 increase
4:10:444 hours, 10 minutes, 44 secondstransition and if it is not disabled it is going to have a cursor pointer. So if not
4:10:524 hours, 10 minutes, 52 secondsdisabled on click here we are going to call on change with a question mark because it's optional and pass in the current star that the user has clicked
4:11:014 hours, 11 minutes, 1 secondon. On mouse enter we are going to set hover value to the current star user is
4:11:084 hours, 11 minutes, 8 secondshovering. But on mouse leave we are going to reset it back to zero. And
4:11:154 hours, 11 minutes, 15 secondsfinally inside render the star icon. Inside of here add a dynamic class
4:11:234 hours, 11 minutes, 23 secondsname with size five as default. And then if we have hover value
4:11:294 hours, 11 minutes, 29 secondsor if we have value and it is larger or equal than the current star
4:11:364 hours, 11 minutes, 36 secondslevel give the class fill black and stroke black. Otherwise, just stroke
4:11:454 hours, 11 minutes, 45 secondsblack. And that's it. That's our component for the star picker. What we can do now is we can go back inside of
4:11:534 hours, 11 minutes, 53 secondsthe review form. And what I'm going to do now is import the star picker from components star picker because that's
4:12:024 hours, 12 minutes, 2 secondswhere we created it, right? Inside of components star picker. And now what I'm going to do is I'm going to copy this
4:12:094 hours, 12 minutes, 9 secondsentire form field and above it I'm going to paste it. So you should now have two
4:12:164 hours, 12 minutes, 16 secondstext areas. But we're going to change the first one with name rating. And what
4:12:234 hours, 12 minutes, 23 secondswe're going to do is we're going to use our star picker component like this. Go ahead and pass
4:12:314 hours, 12 minutes, 31 secondsin the value of field value on change to field.change. on change and disabled is
4:12:394 hours, 12 minutes, 39 secondspreview. So now you should be able to give a rating with a cool effect. But we can't just do that yet.
4:12:514 hours, 12 minutes, 51 secondsSo if I go ahead and select or uh oh looks like it doesn't really uh work. I might have forgotten something.
4:13:014 hours, 13 minutes, 1 secondUh let's see. star picker. We do have onchange, right? We do have on click
4:13:114 hours, 13 minutes, 11 secondshere, but fill value does not seem to
4:13:184 hours, 13 minutes, 18 secondsstay. So what I'm just going to do is go inside of star picker here and I first want to confirm, you know, that onchange
4:13:274 hours, 13 minutes, 27 secondsis being called. So I'm going to do const handle change here.
4:13:344 hours, 13 minutes, 34 secondsI'm going to get the value which is a type of number here and I will console log the value and after that I will call
4:13:424 hours, 13 minutes, 42 secondson change with the question mark and pass the
4:13:494 hours, 13 minutes, 49 secondsvalue. So modify on change to call handle change and no need for a question mark this time.
4:14:004 hours, 14 minutesUh this is okay. Okay. So let's see. I will do one refresh here and I will
4:14:074 hours, 14 minutes, 7 secondsclick on number four. And I can see value four here. And looks like now it works properly. I just needed to refresh
4:14:154 hours, 14 minutes, 15 secondsmy page. So it stays on the number I click. So I'm going to remove this. And now if I for example select three stars
4:14:234 hours, 14 minutes, 23 secondsand leave test and click post review, you can see that I have a rating of three and description of text which means that this is ready to be
4:14:314 hours, 14 minutes, 31 secondssubmitted. And lucky for us, we have already implemented all uh the mutations we need. So let's prepare using con drpc
4:14:404 hours, 14 minutes, 40 secondsuse drpc and let's create the mutation called create
4:14:484 hours, 14 minutes, 48 secondsreview which will be use mutation from tanstack react query. So let me just move it here. There we go.
4:14:584 hours, 14 minutes, 58 secondsThe use mutation will accept brpc reviews create mutation options
4:15:064 hours, 15 minutes, 6 secondsinside. And at the moment on success will be nothing. We are just going to create it. And on error will also be nothing. We're just going to create it.
4:15:184 hours, 15 minutes, 18 secondsAnd you can do the same thing for update review which will use update. Great.
4:15:274 hours, 15 minutes, 27 secondsSo now let's go ahead and modify the onsubmit method to check if we have initial
4:15:344 hours, 15 minutes, 34 secondsdata. We are going to call update review mutate and pass in the review id
4:15:414 hours, 15 minutes, 41 secondsto be initial data ID rating to be data
4:15:484 hours, 15 minutes, 48 secondsrating and description to be data description.
4:15:544 hours, 15 minutes, 54 secondsElse we are going to call create review for the first time with product
4:16:014 hours, 16 minutes, 1 secondID rating data.rating and description data
4:16:084 hours, 16 minutes, 8 secondsdescription. Perhaps we should call this values and then just do values values.
4:16:164 hours, 16 minutes, 16 secondsThere we go. So now we have a proper unsubmit here. But we're still uh not done. What I want to do is also add
4:16:244 hours, 16 minutes, 24 secondsquery client. Use query client. You can also import this from tanstack react
4:16:314 hours, 16 minutes, 31 secondsquery. And now what I want to do every time uh that we create something here on success I will
4:16:404 hours, 16 minutes, 40 secondsdo query client invalidate query and inside I will do tRPC.reviews.get
4:16:494 hours, 16 minutes, 49 secondsget one query options and pass in product ID like
4:16:584 hours, 16 minutes, 58 secondsthis and also do set is preview set to true. So it kind of locks it right and
4:17:064 hours, 17 minutes, 6 secondson error we can extract the error here and do toast from soner error error dossage.
4:17:164 hours, 17 minutes, 16 secondsSo toast from Soner and you can copy the exact same
4:17:244 hours, 17 minutes, 24 secondsthings for the update review. So the same one will be invalidated and set is
4:17:314 hours, 17 minutes, 31 secondspreview set back to true. So now I'm going to go ahead and try this. So I will select four stars and I will say uh
4:17:394 hours, 17 minutes, 39 secondsawesome product and I will click post review. And there we go. your rating is
4:17:464 hours, 17 minutes, 46 secondsright here. One thing that uh seems to not work correctly. Um at least I
4:17:554 hours, 17 minutes, 55 secondsthink is this button edit. It's too um it's too flush with my
4:18:054 hours, 18 minutes, 5 secondsuh description here. So I'm just looking for a smart way to move it. I think what I can just do is give it an empty of
4:18:124 hours, 18 minutes, 12 secondsfour this way. And then if you go back to the library and go back here, it should look like this, right?
4:18:214 hours, 18 minutes, 21 secondsOh, this is cool. It still does the effect. So you can go inside of star picker here
4:18:284 hours, 18 minutes, 28 secondsand on disabled hover scale 100. So it doesn't do any effect. Let me
4:18:374 hours, 18 minutes, 37 secondsrefresh. Looks like it still does the effect.
4:18:444 hours, 18 minutes, 44 secondsscale none.
4:18:524 hours, 18 minutes, 52 secondsOkay. Not sure what it is. We can leave it uh we can leave it with the effects for now. Uh but uh okay. Yeah, I think
4:19:014 hours, 19 minutes, 1 secondthis now works, right? So I can edit and I can change it to three and say okay product and click update review. And there we go. No errors. It works. Great.
4:19:124 hours, 19 minutes, 12 secondsOne thing that's missing um is for this to be uh disabled if we
4:19:194 hours, 19 minutes, 19 secondsare calling create review. Pending or if we are calling update review is
4:19:274 hours, 19 minutes, 27 secondspending. There we go. So now it should look even better. You can see how it disables it. Right?
4:19:364 hours, 19 minutes, 36 secondsGreat. You can see that now inside of here. And since we are not protecting the CMS yet, you should also be able to
4:19:444 hours, 19 minutes, 44 secondsgo to your dashboard here. And you should be able to see that review. So let's just wait for the dashboard to
4:19:514 hours, 19 minutes, 51 secondsload and go inside of reviews. And there we go. Description. Okay. Product with a rating of five. And the user is John. We
4:20:014 hours, 20 minutes, 1 seconddon't have access to the product because we haven't created that product. Later only super admins will be able to see this screen. the tenants will only be
4:20:094 hours, 20 minutes, 9 secondsable uh to see the products. Great. So, this seems to be all working. What we're going to focus
4:20:184 hours, 20 minutes, 18 secondson in the next chapter is some of the last UI elements that we're going to do, which is basically the calculation of
4:20:264 hours, 20 minutes, 26 secondsthe rating for the display in these cards here and the distribution right here. So, it's not going to be too
4:20:334 hours, 20 minutes, 33 secondsdifficult because we have u all the information we need already. And then we're going to slowly wrap up the
4:20:404 hours, 20 minutes, 40 secondsproject by implementing the uh fee sharing functionality using Stripe Connect and implementing the middleware
4:20:474 hours, 20 minutes, 47 secondsrewriting system for subdomains. But the project is already coming together quite nicely, right? We
4:20:554 hours, 20 minutes, 55 secondscan view it in library from here. Now you can see how good that looks as well.
4:20:594 hours, 20 minutes, 59 secondsI'm very satisfied with it. And of course, we need to add the special content. Right? Right now we don't have the logic for that. Don't worry, we're
4:21:074 hours, 21 minutes, 7 secondsgoing to do that as well. So, uh, we have created review procedures and created review form UI. So, that's 22
4:21:174 hours, 21 minutes, 17 secondsreviews. I'm going to go get checkout-b 22
4:21:224 hours, 21 minutes, 22 secondsreviews, git add, g commit, 22
4:21:284 hours, 21 minutes, 28 secondsreviews, and get push u origin 22 reviews. There we go. Once you've
4:21:354 hours, 21 minutes, 35 secondsconfirmed you are on the new branch and you can see the detachment here, you can go inside of your e-commerce here and go
4:21:434 hours, 21 minutes, 43 secondsahead and create a pull request. And once you've created your portal request, we're going to go ahead
4:21:504 hours, 21 minutes, 50 secondsand review our changes. And here we have the walkthrough of our changes. So this set
4:21:584 hours, 21 minutes, 58 secondsof changes introduces several new UI components and back-end procedures that enhance the product and review
4:22:064 hours, 22 minutes, 6 secondsfunctionalities. A new asynchronous product page prefetches product data and displays it using hydrated component.
4:22:134 hours, 22 minutes, 13 secondsNew review components and a reviews collection are established for submitting and managing user reviews.
4:22:204 hours, 22 minutes, 20 secondsAdditional server methods are added for robust error handling when fetching products and reviews. minor improvements
4:22:274 hours, 22 minutes, 27 secondsin the checkout view and the product card help with query invalidation and pre-fetching. And finally, payload
4:22:344 hours, 22 minutes, 34 secondsconfiguration changes and TRPC routers have been updated to integrate the reviews functionality. That is exactly
4:22:434 hours, 22 minutes, 43 secondswhat we worked on. As always, if you are interested in these sequence diagrams, which I always find fascinating, you can
4:22:494 hours, 22 minutes, 49 secondspause the screen to take a look here. So in here it's describing the uh fetching of the product and the review data and
4:22:584 hours, 22 minutes, 58 secondsin here it is describing how our submit form works depending on create or update. So quite interesting to uh
4:23:064 hours, 23 minutes, 6 secondsverify after a pull request. So I'm satisfied with the changes in here. It added um an action to add a brief
4:23:164 hours, 23 minutes, 16 secondscomment. So it's pretty cool that sometimes it doesn't really need a change. It just thinks you should
4:23:234 hours, 23 minutes, 23 secondsclarify things in your code. But uh I am content with how I've built it at the time. So I'm going to leave it like this. Same for these other changes. So
4:23:324 hours, 23 minutes, 32 secondsI'm going to go ahead and merge my pull request. I'm not going to delete it.
4:23:384 hours, 23 minutes, 38 secondsInstead, as always, I'm going to confirm that everything here is in order. And then I'm going to go back to my
4:23:464 hours, 23 minutes, 46 secondsbranch. I'm going to pull origin into my branch. and do get status to confirm.
4:23:544 hours, 23 minutes, 54 secondsAnd I can see my graph changes here as well. There we go. That's it. We have implemented reviews. What we have to do
4:24:024 hours, 24 minutes, 2 secondsnext is we have to aggregate those reviews into product cards and product views. Amazing job and see you in the next chapter.
Chapter 9: 23 Aggregating Reviews
4:24:134 hours, 24 minutes, 13 secondsIn this chapter, I want to use the reviews from previous chapter and properly populate them in the
4:24:214 hours, 24 minutes, 21 secondscomponents. In order to do that, we have to aggregate our reviews inside of our procedures, specifically products
4:24:294 hours, 24 minutes, 29 secondsprocedures and library procedures. As always, ensure that you are on your master branch and that you
4:24:374 hours, 24 minutes, 37 secondshave merged all the changes from the previous chapter. Once you've done that, go ahead and run the app. So, what we're
4:24:444 hours, 24 minutes, 44 secondsgoing to do now is we're going to go inside of our products
4:24:524 hours, 24 minutes, 52 secondsprocedures right here. And let's first focus on the get many base procedure. So
4:24:594 hours, 24 minutes, 59 secondsafter all of these filters right here when we actually get to the data so here
4:25:064 hours, 25 minutes, 6 secondsinstead of returning that data I'm going to create constant data with
4:25:144 hours, 25 minutes, 14 secondssummarized reviews and turn that into await promise.all with promise.all we can
4:25:234 hours, 25 minutes, 23 secondssafely use async inside of map. So what I can now do is data dodo.m map and then
4:25:334 hours, 25 minutes, 33 secondsdo an async here otherwise you would not be able to use async uh I mean you can but not in the way you think you're
4:25:414 hours, 25 minutes, 41 secondsusing it right so what this will do is it will return promises and then we can run them through promise all because you
4:25:484 hours, 25 minutes, 48 secondsmight have heard that it's unsafe to use async inside of map uh and that's true but not if you are doing it inside of
4:25:564 hours, 25 minutes, 56 secondspromise all So inside of here for each document we're going to get a reviews.
4:26:034 hours, 26 minutes, 3 secondsSo let's call this reviews data like this.
4:26:084 hours, 26 minutes, 8 secondsAwait context database find collection reviews pageination will be set to
4:26:164 hours, 26 minutes, 16 secondsfalse. So we load all of them. where will be product equals document
4:26:254 hours, 26 minutes, 25 secondsid and that's it. Once we have the reviews data, we're going to return this existing document and some
4:26:354 hours, 26 minutes, 35 secondsupdates here. So for example, review count will be reviews reviews data total documents.
4:26:434 hours, 26 minutes, 43 secondsReview rating will be if reviews documents
4:26:504 hours, 26 minutes, 50 secondslength is zero zero. Otherwise we are going to do
4:26:564 hours, 26 minutes, 56 secondsreviews docs reduce get the accumulator and the
4:27:034 hours, 27 minutes, 3 secondsreview multiply the accumulator with review.rating rating and set zero for the
4:27:124 hours, 27 minutes, 12 secondsaccumulator and divide that by reviews total documents like this. There we go. I can
4:27:214 hours, 27 minutes, 21 secondszoom out if you want to see it in one line. And once you've done that, what you can do here is spread the data, but
4:27:314 hours, 27 minutes, 31 secondsfor the documents, use data with summarized reviews.
4:27:364 hours, 27 minutes, 36 secondsSo just go ahead and do data with summarized reviews and remove dot docs.
4:27:434 hours, 27 minutes, 43 secondsSo directly map and all the types should match normally as everything else does.
4:27:504 hours, 27 minutes, 50 secondsSo now let's go ahead uh inside of product list inside of products module.
4:27:584 hours, 27 minutes, 58 secondsSo I'm going to go inside of source here modules products UI components product
4:28:074 hours, 28 minutes, 7 secondslist. Uh and now you can see that usually we hardcoded the review rating
4:28:144 hours, 28 minutes, 14 secondsand the review card here. So we are now going to modify it. We're going to do
4:28:214 hours, 28 minutes, 21 secondsproduct dot review rating and in here
4:28:264 hours, 28 minutes, 26 secondsproduct dot review count. So now we shouldn't have any fake data I believe.
4:28:364 hours, 28 minutes, 36 secondsSo if I go inside of my local host here and refresh. So basically you have to be on your main page with the category
4:28:434 hours, 28 minutes, 43 secondshere. Uh I had an error and then the error disappeared. So I just want to refresh to ensure there is no more
4:28:504 hours, 28 minutes, 50 secondserrors. And there we go. You can see that in here since I have no reviews. Let me open the product card.
4:28:574 hours, 28 minutes, 57 secondsSo you can see since I have no reviews here, it's not even showing. But in here I have one
4:29:054 hours, 29 minutes, 5 secondsreview with star five. So guess what I can do now? I can now go inside of this,
4:29:124 hours, 29 minutes, 12 secondsclick view in library here, and once it loads the library, I can edit and give it a three and click update review. I
4:29:214 hours, 29 minutes, 21 secondswill then go back back to continue shopping. And there we go. You can see now it changed to three. So if you go
4:29:294 hours, 29 minutes, 29 secondsahead and implement uh uh you can here's what you can do because nothing is stopping you. I think right now uh you can log out and log in as another user.
4:29:404 hours, 29 minutes, 40 secondsSo antoniodemo.com demo and I think that you can just create a new review if you want
4:29:474 hours, 29 minutes, 47 secondsto test rating four or maybe five and a product another Antonio's product and
4:29:564 hours, 29 minutes, 56 secondsselect yourself and click save. And now if you yeah just make sure it's another user otherwise I think it will be invalid data. And now you can see that it took the average of those two. Great.
4:30:094 hours, 30 minutes, 9 secondsSo that now works. So that's one part solved. What we have to do now is we have to display them correctly in here
4:30:174 hours, 30 minutes, 17 secondsbecause this is completely wrong at the moment. So in order to do that, we have to go back inside of our
4:30:254 hours, 30 minutes, 25 secondsprocedures for the products here, but we have to specifically focus on get
4:30:344 hours, 30 minutes, 34 secondsone. So we're going to do that right after this is purchased. So just before we return get one, let's go ahead and
4:30:434 hours, 30 minutes, 43 secondsget our reviews. we can get the reviews we need using the uh actual ID of the
4:30:514 hours, 30 minutes, 51 secondsproduct we are trying to fetch. So const review reviews is await context database find collection reviews pageionation
4:30:594 hours, 30 minutes, 59 secondsfalse where product equals input id. So those are all the reviews for this
4:31:054 hours, 31 minutes, 5 secondsproduct. What we have to do now is we have to get the current review
4:31:124 hours, 31 minutes, 12 secondsrating. So again if reviews docs length is larger than zero then we do reviews
4:31:214 hours, 31 minutes, 21 secondsdocs reduce get the accumulator and the review here go ahead and add accumulator to
4:31:294 hours, 31 minutes, 29 secondsreview.rating rating. Set the accumulator to zero and divide by reviews total
4:31:364 hours, 31 minutes, 36 secondsdocuments. Otherwise, set the review rating to zero. And then what we have to do is we have to create the rating distribution for this part right here.
4:31:464 hours, 31 minutes, 46 secondsSo for that we need a starting point.
4:31:484 hours, 31 minutes, 48 secondsRating distribution is going to be an object which accepts the number and a number. Make sure you select through
4:31:554 hours, 31 minutes, 55 secondsfrom 1 through five like this. And then what we're going to do is we are going to let me just indent this. We're going
4:32:054 hours, 32 minutes, 5 secondsto do if reviews dot total documents is
4:32:104 hours, 32 minutes, 10 secondsabove zero reviews docs for each
4:32:164 hours, 32 minutes, 16 secondsreview. Go ahead and do const rating review.rating. And then if
4:32:254 hours, 32 minutes, 25 secondsrating is greater than or equal than one and less than or equal than five. So
4:32:324 hours, 32 minutes, 32 secondsit's if it is within range rating
4:32:384 hours, 32 minutes, 38 secondsdistribution rating is equal to rating distribution rating or a fallback zero
4:32:484 hours, 32 minutes, 48 secondsif we haven't calculated for that distribution yet and just increase it by one.
4:32:534 hours, 32 minutes, 53 secondsSo now we're going to go over all of our reviews and we are basically increasing the rating distribution whenever we
4:33:004 hours, 33 minutesnotice a specific rating if it is inside of our range. Now after that uh my apologies
4:33:094 hours, 33 minutes, 9 secondsstill inside of the if clause here we are going to convert counts to percentages. So object
4:33:174 hours, 33 minutes, 17 secondsdokeys rating distribution for each key which represents a distribution a
4:33:244 hours, 33 minutes, 24 secondscertain score let's do const rating number const count rating distribution
4:33:344 hours, 33 minutes, 34 secondsrating or zero if we haven't added any distribution for that and then rating distribution for that rating will be
4:33:434 hours, 33 minutes, 43 secondsmath round And inside go ahead and divide count by review
4:33:524 hours, 33 minutes, 52 secondsuh reviews total documents and multiply it by
4:34:004 hours, 34 minutes100. There we go. And now what you can do is add some more fields to the return. So besides is purchased add a
4:34:104 hours, 34 minutes, 10 secondsreview rating here. add review count which is reviews total docs and rating
4:34:214 hours, 34 minutes, 21 secondsdistribution. So basically all of this constants and variables that we have added and now we have to go inside of
4:34:304 hours, 34 minutes, 30 secondsproduct view but specifically inside of modules products right so nowhere else product
4:34:384 hours, 34 minutes, 38 secondsview and if I remember correctly in here we have prepared all of those ratings and things but uh we haven't implemented
4:34:464 hours, 34 minutes, 46 secondsany real data yet so let's go ahead and do that Now, uh, starting with the first
4:34:564 hours, 34 minutes, 56 secondsstar rating here. Let me just find it. There we go.
4:35:024 hours, 35 minutes, 2 secondsSo, the first star rating here, we'll uh use data review rating like
4:35:124 hours, 35 minutes, 12 secondsthis. And in here, same thing data review rating. And here it will be data
4:35:214 hours, 35 minutes, 21 secondsreview count ratings. So now in here let me just see which
4:35:294 hours, 35 minutes, 29 secondsone is this. Is this the correct one? Oh I
4:35:364 hours, 35 minutes, 36 secondssee. Okay. So this is what I'm going to do. I'm going to copy this paragraph here and just add it here. It appears
4:35:454 hours, 35 minutes, 45 secondsthat I have forgotten to do that when I develop this. So now you should see uh two
4:35:524 hours, 35 minutes, 52 secondsratings here. Let me just see if this is correct. So gap one size four. I feel like I need a little bit
4:36:014 hours, 36 minutes, 1 secondmore space between these two. So we can do gap one. And let's do gap one here as well. Like
4:36:084 hours, 36 minutes, 8 secondsthis. There we go. So you can now see two ratings here. So that part is solved.
4:36:144 hours, 36 minutes, 14 secondsWhat we have to do now is we have to create the proper uh rating distribution down here. So that will be a little bit
4:36:224 hours, 36 minutes, 22 secondstricky. So in here we have ratings. Uh in here we do data review rating. In
4:36:304 hours, 36 minutes, 30 secondshere we do data review count. And now in here we have created this loop here and
4:36:384 hours, 36 minutes, 38 secondswe have stars. So let's see. Can we do value data rating distribution and just pass in
4:36:464 hours, 36 minutes, 46 secondsstars and do the exact same thing here? And we can this is exactly the
4:36:564 hours, 36 minutes, 56 secondsratings that we gave it one for five and one for three which makes them 50/50. So our rating distribution is working as
4:37:054 hours, 37 minutes, 5 secondswell. Great. And let's enable this copy button. Uh, I don't know why it's not enabled yet. So, we can do it quite easily
4:37:134 hours, 37 minutes, 13 secondshere. Let me just find There we go. Link icon. So, all this buttons got to do is
4:37:214 hours, 37 minutes, 21 secondsnavigator clipboard write text and window
4:37:284 hours, 37 minutes, 28 secondslocation.href. That's it. And toast success uh URL copied to clipboard.
4:37:374 hours, 37 minutes, 37 secondsYou can import toast from Sauner. There we go. Let me just move it
4:37:454 hours, 37 minutes, 45 secondshere. And now when you click this, let me refresh
4:37:524 hours, 37 minutes, 52 secondsmaybe. There we go. URL copied to the clipboard. So let me see. There we go.
4:37:584 hours, 37 minutes, 58 secondsWe can now easily share it with others.
4:38:024 hours, 38 minutes, 2 secondsGreat. If you want to, you can create a state and disable it for a second if you think it will look
4:38:084 hours, 38 minutes, 8 secondsbetter. Uh, now let's go ahead and do one more place. So, let me just see. We added it
4:38:174 hours, 38 minutes, 17 secondsto product procedures, we fixed product list, and we fixed product view. Now, we have to do it inside of library
4:38:254 hours, 38 minutes, 25 secondsprocedures. So let's go inside of library procedures right here. Instead
4:38:334 hours, 38 minutes, 33 secondsof library procedures, it's actually going to be uh pretty similar and we only need it for uh get many. So in here
4:38:434 hours, 38 minutes, 43 secondswe have the products data. So I'm going to open my procedures in the products just so I can see if we can just copy
4:38:504 hours, 38 minutes, 50 secondsand paste this. I think we can. So after we get the products data which is this, we need data with
4:38:574 hours, 38 minutes, 57 secondssummarized reviews. So I can just copy this entire thing here and then just add
4:39:054 hours, 39 minutes, 5 secondsit here and instead of data it will use products data dot
4:39:124 hours, 39 minutes, 12 secondsdocs and I think nothing else refers to data. So this should be fine. And then in here we just replace this with this
4:39:214 hours, 39 minutes, 21 secondsdata with summarized reviews. And now all we have to do is go inside of source
4:39:294 hours, 39 minutes, 29 secondsmodules library UI components product list here and just
4:39:374 hours, 39 minutes, 37 secondsdo product review rating here and product review count here. And
4:39:474 hours, 39 minutes, 47 secondsnow I think that even in the library the counts should be completely correct. Let me just do a refresh here because it was
4:39:554 hours, 39 minutes, 55 secondsin the middle of hot reload. Oh yeah, I have nothing here actually uh because I am in another account here.
4:40:044 hours, 40 minutes, 4 secondsSo let me just go ahead and log out into an account where I have some purchases. So I'm just going to go back
4:40:124 hours, 40 minutes, 12 secondshere and go inside of my library. And there we go. we have the correct uh text here as well and we can always change
4:40:204 hours, 40 minutes, 20 secondsthat rating. Uh and I just want to show you a little bit of an improvement we can do here. I have briefly mentioned it. So let me go inside of product view
4:40:304 hours, 40 minutes, 30 secondsinside of modules products UI here. So what we can do here for a small improvement is is copied and set is copied.
4:40:414 hours, 40 minutes, 41 secondsuse state and set it to false like this and then go ahead and find the link
4:40:514 hours, 40 minutes, 51 secondsright here and disabled if is copied. So what you can do is set is
4:40:574 hours, 40 minutes, 57 secondscopied this to true and then set time out and set is
4:41:064 hours, 41 minutes, 6 secondscopied back to false after let's say 1 second. So maybe this way it's like a
4:41:144 hours, 41 minutes, 14 secondslittle bit improved, right? Because you can't spam it. Amazing job. And you can
4:41:204 hours, 41 minutes, 20 secondsalso do uh if is copied you can
4:41:254 hours, 41 minutes, 25 secondsdo double tick icon or double check check icon check check icon that's
4:41:334 hours, 41 minutes, 33 secondsit. You can import this from lucid react and then when you click it will have the copied right or you can just
4:41:424 hours, 41 minutes, 42 secondsuse check icon from lucid react. I think that looks cool. I'm just going to remove the redundant one. Let's
4:41:514 hours, 41 minutes, 51 secondssee our to-dos. Add real ratings. We can now remove that. We have real ratings.
4:41:554 hours, 41 minutes, 55 secondsSo, I will search for to-do product card. Add real ratings. I think we now have real ratings in the product card here. Review rating. Review count.
4:42:074 hours, 42 minutes, 7 secondsDefinitely uh product card here also. Basically, we didn't even change anything in the product cards. We mostly did in the product list components.
4:42:184 hours, 42 minutes, 18 secondsYes. So, I just removed those to-dos because we now added the reviews.
4:42:234 hours, 42 minutes, 23 secondsPerfect. So, finally a shorter chapter. Uh, we finished all of these,
4:42:294 hours, 42 minutes, 29 secondsthis, and this as well. So, 23 aggregating reviews. Let's add get checkout B. I already forgot 23. Okay.
4:42:424 hours, 42 minutes, 42 secondsAggregating reviews.
4:42:454 hours, 42 minutes, 45 secondsG add git commit 23 aggregating
4:42:514 hours, 42 minutes, 51 secondsreviews and g push origin 23 aggregating our reviews. There we go. So I am
4:43:004 hours, 43 minutesdetached on a new branch as you can see now and I'm going to go inside of my e-commerce here and I will open a pull
4:43:094 hours, 43 minutes, 9 secondsrequest and let's go together and review our changes.
4:43:164 hours, 43 minutes, 16 secondsAnd here we have the summary. So, some new features. Product listings now display dynamic review information,
4:43:244 hours, 43 minutes, 24 secondsincluding up-to-date average ratings, total review counts, and the rating distribution. The product view has been enhanced with the clipboard URL copy
4:43:324 hours, 43 minutes, 32 secondsfeature that provides visual confirmation when a URL is successfully copied. We can see a more in-depth walk
4:43:404 hours, 43 minutes, 40 secondsthrough here. As always, we have the sequence diagram for how everything works. I always find these very
4:43:484 hours, 43 minutes, 48 secondsinteresting. You can pause to take a look. And in here, it gave us a quite
4:43:554 hours, 43 minutes, 55 secondsgood refactor suggest uh refactor suggestion here. So, I will consider it.
4:44:014 hours, 44 minutes, 1 secondIt's basically telling us to avoid N plus1 queries uh which are well slow queries, right? because for every
4:44:094 hours, 44 minutes, 9 secondsproduct that we have uh we do a loop and then we fetch reviews. So it would be
4:44:164 hours, 44 minutes, 16 secondsbetter if we created u an array of ids that we need to fetch and then fetch them both in bulk, right? So fetch all
4:44:234 hours, 44 minutes, 23 secondsreviews for all products in a single query and then group reviews by product ID. So this is definitely something that
4:44:324 hours, 44 minutes, 32 secondsuh we can consider. Uh you might want to do this yourself. So yeah, here's a task for you. If you want to improve this
4:44:394 hours, 44 minutes, 39 secondscode, uh go ahead and solve this n +1 query problem. Make it faster. And it
4:44:474 hours, 44 minutes, 47 secondsgave the same suggestion for another place where we copied this. But as of now, I'm satisfied with this. So I'm
4:44:544 hours, 44 minutes, 54 secondsgoing to merge it. Let's go ahead here and let's confirm that we have it. And now let's go ahead inside of our main or
4:45:044 hours, 45 minutes, 4 secondsmaster branch and get pull origin in your branch main or master get status to ensure everything is up to date and a graph to visually confirm that as well.
4:45:164 hours, 45 minutes, 16 secondsThere we go. So we now have fully functioning uh reviews finally. Amazing job and see you in the next chapter.
Chapter 10: 24 Access Control
4:45:274 hours, 45 minutes, 27 secondsIn this chapter, we're going to go ahead and add access control to our CMS and also to purchased content. So, only
4:45:364 hours, 45 minutes, 36 secondspeople who actually have an order will be able to see and load some special content. So, we actually already added
4:45:454 hours, 45 minutes, 45 secondsone type of access control, but I'm not sure if you have noticed. As always, confirm that you are on your master
4:45:534 hours, 45 minutes, 53 secondsbranch and confirm that you have merged everything you need.
4:45:584 hours, 45 minutes, 58 secondsYou can do that by running get status and then bun rundev. So what I want you to do is I
4:46:064 hours, 46 minutes, 6 secondswant you to go to your login screen and go ahead and log in with the user who is most certainly not an admin. So just a
4:46:154 hours, 46 minutes, 15 secondsrandom user. And right now if you go to this randoms user random users dashboard you're going to see that we have too
4:46:244 hours, 46 minutes, 24 secondsmuch information here. This random user can access and create new users from the dashboard, new media, new categories,
4:46:334 hours, 46 minutes, 33 secondsnew products, new tags, new tenants, new orders and new reviews. Right? So we have no protection whatsoever. What can
4:46:404 hours, 46 minutes, 40 secondsbe done with this CMS here and we have already implemented one type of access control here which is which user has
4:46:494 hours, 46 minutes, 49 secondsaccess to all tenants. So we have made it so that only the super admin has access to other tenants. So at least
4:46:574 hours, 46 minutes, 57 secondsthat's a good thing, right? So this is what we're going to do now. We're going to go inside of lib and we will create
4:47:064 hours, 47 minutes, 6 secondsaccess.ts util and then we are going to import user from payload types. So we
4:47:164 hours, 47 minutes, 16 secondscan import the type user here and you might also want to import client user from payload and then export const is
4:47:254 hours, 47 minutes, 25 secondssuper admin here and simply accept the user to be a type of user client user or null.
4:47:354 hours, 47 minutes, 35 secondsAnd inside of here, return a boolean to check if user question mark roles includes
4:47:444 hours, 47 minutes, 44 secondssuper
4:47:464 hours, 47 minutes, 46 seconds[Music]
4:47:474 hours, 47 minutes, 47 secondsdashadmin. Basically the same thing that we check for here. And you can always confirm in your users collection that
4:47:544 hours, 47 minutes, 54 secondsyou actually have the super admin option. So just go ahead and create this. Now you can go inside of your
4:48:004 hours, 48 minutespayload config and you can use the is super admin and pass in the user and just make sure to import is super admin
4:48:094 hours, 48 minutes, 9 secondsfrom your new lib access field. So we're now going to go ahead and add these access controls to some other
4:48:174 hours, 48 minutes, 17 secondscollections. You can see that in here I have outlined all the collections we have to go through. Let's start with
4:48:264 hours, 48 minutes, 26 secondsusers. Inside of users here, we already kind of experimented with field access
4:48:334 hours, 48 minutes, 33 secondssimply by setting everything to true. We are now going to modify this. I'm going to preserve read values to be true. But
4:48:424 hours, 48 minutes, 42 secondscreate will only be available for super admins. So we can extract request from
4:48:494 hours, 48 minutes, 49 secondshere and then call our is super admin from lib access and simply pass in
4:48:564 hours, 48 minutes, 56 secondsrequest user inside. So now only super admins will be able to create and update
4:49:034 hours, 49 minutes, 3 secondsthe array field access and we can do the same thing for the tenant field access.
4:49:104 hours, 49 minutes, 10 secondsSo right now only super admins can modify the tenency. So if you go and click here, you should no longer be able
4:49:194 hours, 49 minutes, 19 secondsuh to change your tenants here. You can see that uh this button is now disabled for me. So if I go ahead and comment
4:49:274 hours, 49 minutes, 27 secondsthese out, actually maybe I need to revert them. I don't know if this is enough to enable it. But yes, you can see how now I can change the tenant or I
4:49:354 hours, 49 minutes, 35 secondscan click here or I can just create a new tenant. So nothing that we should actually be able to do because we are
4:49:434 hours, 49 minutes, 43 secondsgoing to restrict our shop I mean our platform to only allow one tenant per user. You can of course explore this later and maybe allow 50 tenants per
4:49:524 hours, 49 minutes, 52 secondsuser if you want to. So that's why we added that. And now we also have to introduce some access controls here in the actual users collection.
4:50:024 hours, 50 minutes, 2 secondsSo, I don't see the point in non-admin users to even see the users collection
4:50:104 hours, 50 minutes, 10 secondshere and they most certainly shouldn't be able to create new users from the CMS. So, because of that, we're going to go ahead and only allow the read here.
4:50:214 hours, 50 minutes, 21 secondsSo, they will still be able to read access information, user information, specifically their own user information from the CMS. But if they are attempting
4:50:304 hours, 50 minutes, 30 secondsto create new users, we are going to restrict this by confirming that the user trying to do that is a super admin.
4:50:394 hours, 50 minutes, 39 secondsSo now when you refresh, you can see that you no longer have a way to create new users unless you are a super
4:50:464 hours, 50 minutes, 46 secondsadmin. But when it comes to delete, uh we actually want to do the same thing, right? So is super admin request
4:50:564 hours, 50 minutes, 56 secondsuser. The reason I'm setting delete for the super admin is so that we have a way to carefully delete the user, their
4:51:054 hours, 51 minutes, 5 secondsproducts and also you know associated reviews and orders. We have to be careful with that, right? So that's why for now I'm only going to allow super
4:51:134 hours, 51 minutes, 13 secondsadmins to delete users. But when it comes to updating the user, we are okay with allowing the user
4:51:214 hours, 51 minutes, 21 secondsto do that themselves. So I'm going to extract request and the ID. And in here I'm first going to check if is super
4:51:294 hours, 51 minutes, 29 secondsadmin request do user. In that case we can just return true. Basically it's okay. You have all the access you need.
4:51:374 hours, 51 minutes, 37 secondsBut if you are not a super admin I will still do one more check uh which will basically be
4:51:444 hours, 51 minutes, 44 secondsreturn if request user question mark ID is identical to the ID that you are trying to edit. This basically means you
4:51:534 hours, 51 minutes, 53 secondsare trying to update yourself. So if someone goes to their profile and wants to change their username or their email, we are going to allow that. Right? So if
4:52:014 hours, 52 minutes, 1 secondyou don't do this, uh basically imagine that we just
4:52:084 hours, 52 minutes, 8 secondsadded return is super admin requested user and refresh. Now you can see that
4:52:174 hours, 52 minutes, 17 secondsyou can no longer update your information here. But that's not something we want. We want to allow the user to update that if they are updating
4:52:274 hours, 52 minutes, 27 secondsuh themselves. But now I see this button called force unlock. So I'm not exactly sure if I want that. So I will explore
4:52:364 hours, 52 minutes, 36 secondsif there's a way to uh change this. But you know uh this is how you would allow the user to modify themselves.
4:52:464 hours, 52 minutes, 46 secondsThe force unlock is most likely to forcefully verify the user.
4:52:524 hours, 52 minutes, 52 secondsRight? So what we're going to do now is we're going to go ahead and do one more thing which is remove the users entirely
4:53:014 hours, 53 minutes, 1 secondfrom here and here. So only the admin should see them there. Normal users should not be able to see that, right?
4:53:094 hours, 53 minutes, 9 secondsThey have no reason to access that. So in here we do the reverse logic. if no is super
4:53:184 hours, 53 minutes, 18 secondsadmin. So now when you refresh the users should be completely gone. And one more important thing to do
4:53:264 hours, 53 minutes, 26 secondshere is the role field modify the access here
4:53:324 hours, 53 minutes, 32 secondsupdate and go ahead and extract the request and pass in uh is super admin request do user.
4:53:434 hours, 53 minutes, 43 secondsSo now if you go back to your profile here, you will see that you can no longer change your role. There we go. So
4:53:514 hours, 53 minutes, 51 secondsthere probably is a way to also block the force unlock button the same way we just uh blocked the role whilst allowing
4:53:594 hours, 53 minutes, 59 secondsthe user to modify everything else about themselves. Great. So we now completed the users collection uh access control.
4:54:104 hours, 54 minutes, 10 secondsNow, let's go into categories. So, categories in here, I don't think there is anything normal
4:54:184 hours, 54 minutes, 18 secondsusers should be able to do besides read them. So, I'm going to create an access here. And can I just copy what I have
4:54:284 hours, 54 minutes, 28 secondshere? Read, create, update. Let's just add it here. And let's just import super admin from lib access.
4:54:384 hours, 54 minutes, 38 secondsAnd this will also be true uh for read create update and
4:54:484 hours, 54 minutes, 48 secondsdelete like this. There we go. And can I also add delete here? I'm not sure in the tenant field. No, it doesn't have delete. Okay.
4:55:004 hours, 55 minutesSo for the categories only allow read to be true. Everything else should be for super admin and more so in fact. So now
4:55:094 hours, 55 minutes, 9 secondsif you go to categories you should no no longer be able to add new categories.
4:55:134 hours, 55 minutes, 13 secondsYou can see the button here is disabled but the same as the user field. There is absolutely no reason someone who is not
4:55:214 hours, 55 minutes, 21 secondsan admin should see that in their dashboard. Only the super admin will be creating new categories. No need for a
4:55:284 hours, 55 minutes, 28 secondsnormal user to do that. Great. So now we uh protected the categories. So we can mark this as complete. Now let's go
4:55:374 hours, 55 minutes, 37 secondsinside of our products collections here. So in here, let's go ahead and do
4:55:464 hours, 55 minutes, 46 secondsthe following. When we create the access field, I'm going to allow
4:55:534 hours, 55 minutes, 53 secondsread to be true. I'm going to then add a create
4:56:014 hours, 56 minutes, 1 secondmethod to do the following. We will extract the request from here and then as always I'm first going
4:56:094 hours, 56 minutes, 9 secondsto check if is super admin request user in that case immediately return true. But now what I
4:56:184 hours, 56 minutes, 18 secondswant to do is I want to extract the tenant from here. So request user
4:56:244 hours, 56 minutes, 24 secondstenants and now you might be wondering how can we know if this will be
4:56:314 hours, 56 minutes, 31 secondspopulated or not. By default in here the depth is set to two. So we actually have
4:56:374 hours, 56 minutes, 37 secondsaccess to the tenants object. So you can add tenant like this and then just
4:56:454 hours, 56 minutes, 45 secondsreturn boolean tenant. And in here you want to do stripe details
4:56:544 hours, 56 minutes, 54 secondssubmitted. So what does this mean? First of all we have to fix this error by adding as tenant here from our payload
4:57:034 hours, 57 minutes, 3 secondstypes. Basically what we have done now is we have restricted tenants from creating
4:57:114 hours, 57 minutes, 11 secondsproducts unless they have submitted their stripe details. So you can see that the tenant that I have here,
4:57:194 hours, 57 minutes, 19 secondsAntonio, doesn't have Stripe details submitted, which means that they should not be able to create new products. So
4:57:284 hours, 57 minutes, 28 secondsthis is the part that's going to come in handy uh for our Stripe Connect feature, right? So when user goes to edit their
4:57:374 hours, 57 minutes, 37 secondstenant here, they're going to have to uh submit their Stripe details and only then are they're going to be allowed to
4:57:444 hours, 57 minutes, 44 secondscreate new products. Obviously now we can easily bypass that. So if you need your user to create uh if you need your
4:57:524 hours, 57 minutes, 52 secondsuser to create the product, you can uh just comment this out, right? Uh so you might be
4:57:594 hours, 57 minutes, 59 secondswondering what about other access rules here. You actually don't need the explicit read here at all. You don't have to worry about other access rules
4:58:074 hours, 58 minutes, 7 secondsbecause we handled that in the payload config here. We have connected the products with the tenants. So all the
4:58:144 hours, 58 minutes, 14 secondsrules are already handled here and we don't have to actually modify anything else. But something that I will do is go inside of the products
4:58:244 hours, 58 minutes, 24 secondshere and at the end I want to add a name content and a type will be text area.
4:58:324 hours, 58 minutes, 32 secondsFor now I'm going to add to-do change to rich text. The reason I don't want to immediately add it to rich text is
4:58:404 hours, 58 minutes, 40 secondsbecause we have to install a package. So I just want to bother that uh bother bother you with that now. And you can add a description here so the user knows what this is.
4:58:524 hours, 58 minutes, 52 secondsProtected content only visible to customers after purchase. Add product
4:58:594 hours, 58 minutes, 59 secondsdocumentation, downloadable files, getting started guides and bonus materials.
4:59:084 hours, 59 minutes, 8 secondssupports markdown formatting. So the user now knows that when they uh create new product they
4:59:174 hours, 59 minutes, 17 secondswill be able to add this content which will later only be visible to customers after
4:59:244 hours, 59 minutes, 24 secondspurchase. Great. Uh obviously we are later going to change this to rich text and we will also change
4:59:324 hours, 59 minutes, 32 secondsthe description to rich text. Right? The description can also be uh formatted in
4:59:404 hours, 59 minutes, 40 secondsa better way. And that is actually it for the products access control. Now let's go into tags. So tags will be
4:59:494 hours, 59 minutes, 49 secondsidentical to categories. There is no reason uh anyone who is not a super
4:59:554 hours, 59 minutes, 55 secondsadmin should be able to see them here like this and just import is super
5:00:045 hours, 4 secondsadmin. So now, by default, when you refresh your dashboard, you should uh no
5:00:115 hours, 11 secondslonger be able to create new tags. And now we're just going to also hide them
5:00:175 hours, 17 secondshere. There we go. So when you refresh, this should no longer exist for someone who is not an admin, right? And that's
5:00:275 hours, 27 secondsit for tags. And now we're just going to revisit our tenants field, you know, just to confirm that uh
5:00:345 hours, 34 secondswe don't have to add anything special here. But uh I think we do have to do some some things here. So let's add an
5:00:425 hours, 42 secondsaxis here. And for create I'm going to go ahead and
5:00:505 hours, 50 secondscheck if is super admin here. a request user. And for delete, I will do the same
5:00:595 hours, 59 secondsthing. And for the update, I actually want to allow the user to do that, but
5:01:065 hours, 1 minute, 6 secondsI'm not exactly sure uh if I have to do it this way. I think that by default, each user should be
5:01:135 hours, 1 minute, 13 secondsable to modify their own tenant. Let me check.
5:01:185 hours, 1 minute, 18 secondsYes, by default they are completely allowed to modify their tenant from here. So I think that's fine, right? I
5:01:255 hours, 1 minute, 25 secondsjust don't want to uh I don't want them to be able to create new tenants from here and I don't want them to be able to
5:01:335 hours, 1 minute, 33 secondsdelete tenants. You can see only edit should be available for them. And uh we shouldn't allow users to
5:01:425 hours, 1 minute, 42 secondsedit these two. So let's go ahead in here. So we actually don't need read only here. Instead we can do proper
5:01:515 hours, 1 minute, 51 secondsaccess here. So instead of admin, let's use access for this and edit or update here. We'll extract
5:02:015 hours, 2 minutes, 1 secondthe request and only allow it to super admins. Normal users will populate this
5:02:085 hours, 2 minutes, 8 secondsby submitting their stripe details. But uh super admin can come in and you know
5:02:175 hours, 2 minutes, 17 secondsthe super admin can then modify it manually if they need to. And in here we can add the description
5:02:235 hours, 2 minutes, 23 secondshere stripe account ID associated with your shop simply so the user knows what this
5:02:325 hours, 2 minutes, 32 secondsactually is. So you can now go here go to your tenant and there we go. You can no longer modify these fields at all and you see a description of what they are.
5:02:425 hours, 2 minutes, 42 secondsSo, Stripe account ID associated with your shop and in here you cannot create products until you submit your Stripe details. We are later going to add a
5:02:505 hours, 2 minutes, 50 secondsbutton to submit the Stripe details. Great. So, I think that now we have good control here and no one
5:02:595 hours, 2 minutes, 59 secondsshould be able to do anything uh they shouldn't be able to do, right?
5:03:045 hours, 3 minutes, 4 secondsSo, I think that marks it for the tenants. And now, let's go ahead uh and
5:03:125 hours, 3 minutes, 12 secondsreview our orders. So, when it comes to orders, uh I think you kind of have a choice here
5:03:195 hours, 3 minutes, 19 secondsbecause maybe you want to allow uh the owner of the shop to look at all the
5:03:265 hours, 3 minutes, 26 secondsorders that they have, right? So, but I think that maybe
5:03:335 hours, 3 minutes, 33 secondsthen you would have to the best way to do that would be to add the orders to the multi-tenant plug-in. But then you
5:03:405 hours, 3 minutes, 40 secondswould also have to be careful and every time you create an order, you would need to pass the associated tenant ID in there. So, decide for yourself if that's
5:03:485 hours, 3 minutes, 48 secondssomething you want or not. So, what I'm going to do here is I'm going to add the access control and uh I'm just going to
5:03:575 hours, 3 minutes, 57 secondsblock everything inside. So there's no reason that someone who is not an admin should manipulate orders in any way through the CMS. At least that's what I
5:04:065 hours, 4 minutes, 6 secondswill decide for my platform even for read. There is no need for them to read anyone's orders. There we go. So
5:04:145 hours, 4 minutes, 14 secondsnon-admin users now uh so far can only see products, tenants, their own tenants uh and they seem to be able to see anyone's reviews.
5:04:255 hours, 4 minutes, 25 secondsSo let's go ahead and modify this as well. But I just want to go through orders to ensure that all of these
5:04:335 hours, 4 minutes, 33 secondshere look like this. Uh if you want to, you can add a description here. Uh checkout
5:04:425 hours, 4 minutes, 42 secondssession associated with this order or with the order. Stripe checkout
5:04:515 hours, 4 minutes, 51 secondssession associated with the order. So they know what this is, right? So they can easily find it in the Stripe dashboard if they needed to. So I think uh that marks the orders as complete.
5:05:025 hours, 5 minutes, 2 secondsAnd now let's go to the reviews. And the reviews uh can have the exact same rules
5:05:105 hours, 5 minutes, 10 secondsas the orders. Uh why? Well, because we have a different UI for reviews. We have the library, right? So there's no need
5:05:195 hours, 5 minutes, 19 secondsfor reviews to be visible through the CMS.
5:05:245 hours, 5 minutes, 24 secondsSo, let's just add this here and completely hide it from anyone who is not an
5:05:295 hours, 5 minutes, 29 secondsadmin. There we go. And uh now the only thing that's left here is
5:05:385 hours, 5 minutes, 38 secondsmedia. So, here's what I'm going to do in regards to media. I'm completely okay with anyone reading this, right? Uh and
5:05:475 hours, 5 minutes, 47 secondsalso creating media, but I don't want media to be here in the collection. I think it's just confusing people this
5:05:545 hours, 5 minutes, 54 secondsway. So what I'm just going to do is add admin hidden extract the user and if
5:06:015 hours, 6 minutes, 1 secondit's not super admin it's not going to be visible in the sidebar. So media will
5:06:085 hours, 6 minutes, 8 secondsbe you know something that anyone will be able to modify but uh I just don't want to accept delete. Let's do that.
5:06:215 hours, 6 minutes, 21 secondsrequest dot uh is super admin request user like
5:06:285 hours, 6 minutes, 28 secondsthis. There we go. So now as you can see the only thing available to someone
5:06:355 hours, 6 minutes, 35 secondswho is not an admin are their own products because only this tenants products will load and the tenants
5:06:445 hours, 6 minutes, 44 secondsfield. So you can decide if you want to show the tenants or not. Uh, I think it's cool to show it because this is technically your shop, your store,
5:06:535 hours, 6 minutes, 53 secondsright? So, you want the user to be able to go there so that they can change this to super cool store, right? And save
5:07:005 hours, 7 minutesthis because later on when they go to localhost 3000, that is going to be the name of their store, right? So, if I
5:07:095 hours, 7 minutes, 9 secondsclick here, it should now read that new name here. Let's just wait a second for this to compile. There we go. Super cool
5:07:165 hours, 7 minutes, 16 secondsstore. So I kind of feel it's okay to allow the tenants field here so they can quickly go here. Uh now I don't know how
5:07:255 hours, 7 minutes, 25 secondsyou feel about allowing users to change subdomains. Uh so if you want to you could prevent that from happening here.
5:07:335 hours, 7 minutes, 33 secondsLet me just um go inside of my tenants. If you want to you can just
5:07:395 hours, 7 minutes, 39 secondscopy one of these. Go to slug and add access control here.
5:07:465 hours, 7 minutes, 46 secondsand perhaps only allow the admin to update the slug. Right now, no one besides the
5:07:545 hours, 7 minutes, 54 secondsadmin can update the subdomain. The reason you might want this is, you know, changing subdomains can often lead to
5:08:015 hours, 8 minutes, 1 secondspam or things like that. And you probably need some kind of verification process in place. Uh not to mention the conflicts and all that. So perhaps it
5:08:105 hours, 8 minutes, 10 secondswould be better to just uh tell the user which we already do on the registration page. We tell the user whatever you
5:08:175 hours, 8 minutes, 17 secondsenter as your username will be your store's subdomain. Right? So if you want to you can disable that field and only
5:08:255 hours, 8 minutes, 25 secondsallow the user to change the store name and the image of their store. Uh great.
5:08:325 hours, 8 minutes, 32 secondsSo I think that's it for the uh access control. And now let's talk about this uh restrict purchased content. So inside
5:08:415 hours, 8 minutes, 41 secondsof our products here we have allowed we have created the
5:08:475 hours, 8 minutes, 47 secondsnew content field here and uh we don't have to add any access here because
5:08:555 hours, 8 minutes, 55 secondsproducts by themselves are associated with the tenant which means that uh only the the author of the product will be
5:09:025 hours, 9 minutes, 2 secondsable to see this field. But there is a problem. Uh every time we do slug
5:09:115 hours, 9 minutes, 11 secondsproducts or do I do them like
5:09:175 hours, 9 minutes, 17 secondsthis collection products? I think this is just the
5:09:255 hours, 9 minutes, 25 secondsprocedures, right? So we have to take a look at all the procedures where we actually uh fetch our products. So I think we should primarily focus on the
5:09:335 hours, 9 minutes, 33 secondsprocedures in the actual proced uh in the actual products module. Let's go here first. In here we should have the
5:09:415 hours, 9 minutes, 41 secondsget one procedure and we should also have the get many procedure. So what you should do is you should go into get
5:09:495 hours, 9 minutes, 49 secondsmany. Go where your data is and in here you can add select content and just set it to false.
5:09:575 hours, 9 minutes, 57 secondsSo this way it will not leak through the API.
5:10:015 hours, 10 minutes, 1 secondAnd you can do the same thing inside of your uh get one here. So let me just find the product. There we
5:10:105 hours, 10 minutes, 10 secondsgo. And just select content set to false. So now the products router will never leak the premium content. Let's go
5:10:205 hours, 10 minutes, 20 secondsahead and see where else we fetch the products. So we just fix the products modules. Let's look at the
5:10:285 hours, 10 minutes, 28 secondsso in the reviews. In the reviews, I think it's completely fine for us to load the content here because the only person who
5:10:365 hours, 10 minutes, 36 secondswill be able to access this uh is the person that has actually purchased that that has actually created that review.
5:10:445 hours, 10 minutes, 44 secondsSo, I think in this case it's completely fine.
5:10:485 hours, 10 minutes, 48 secondsUh but uh yeah I think nowhere else is it dangerous because reviews is something for authenticated users and
5:10:565 hours, 10 minutes, 56 secondsusers that have purchased products. Uh library is for that as well. The only thing is the checkout
5:11:045 hours, 11 minutes, 4 secondshere. Let me just see. So this checkout is for the purchase. So we are looking for the products here. Yeah. Perhaps
5:11:135 hours, 11 minutes, 13 secondshere you could add select content false just so it doesn't leak somehow. But I don't think it this is this can leak in
5:11:205 hours, 11 minutes, 20 secondsany way. We don't return this back, right? So I don't think you need to do that here. The only thing we return back
5:11:275 hours, 11 minutes, 27 secondshere is the checkout URL. I don't think uh there's any way this can leak. Right.
5:11:355 hours, 11 minutes, 35 secondsSo I think we're actually completely good to go here. uh we have protected you know the main uh procedure which
5:11:425 hours, 11 minutes, 42 secondsusers look at which is you know on the actual homepage. So let me see if we can
5:11:505 hours, 11 minutes, 50 secondscheck that out or not in the network tab. Now basically when someone loads this I'm trying to you know see
5:12:005 hours, 12 minutesif if I can load um but the only thing I can since we are using pre-fetching it's already loaded but I think we can
5:12:085 hours, 12 minutes, 8 secondstrigger a refetch somehow by changing the window tab and then sometimes that
5:12:165 hours, 12 minutes, 16 secondscauses a refetch. Well, looks like not now. But yeah, I think uh we have protected this.
5:12:245 hours, 12 minutes, 24 secondsLet's see. Result data. Uh is it this?
5:12:285 hours, 12 minutes, 28 secondsThere we go. And in here, you can see how we don't have the content anywhere because we are protecting it, right? And
5:12:355 hours, 12 minutes, 35 secondsthen what we can do is we can go inside of our product view specifically in the
5:12:425 hours, 12 minutes, 42 secondslibrary modules. And then you have something new here. So you should now have access to the content. So instead
5:12:495 hours, 12 minutes, 49 secondsof no special content here, you can now go ahead and check if we have data.content and then in here you can add a
5:12:575 hours, 12 minutes, 57 secondsparagraph rendering data content or render that there is no special
5:13:055 hours, 13 minutes, 5 secondscontent added if this was a donation or something like that. Later on, we're going to render the content through a proper rich text element which will
5:13:145 hours, 13 minutes, 14 secondssupport uh uploaded files and anything like that. So, it's going to look even uh better. Uh great. So, I think that we
5:13:225 hours, 13 minutes, 22 secondsuh achieved what was the goal of this chapter, which was to implement uh access control and restrict CMS access.
5:13:305 hours, 13 minutes, 30 secondsAnd if you want to check, you can now log out from here and enter your admin. And your admin should now have
5:13:385 hours, 13 minutes, 38 secondsall the superpowers. They can change to any tenant. They can create everything they want. They can look at all orders
5:13:465 hours, 13 minutes, 46 secondsand they can also, you know, help any user they need. Right? So you can see that in here I can change the slug of my
5:13:535 hours, 13 minutes, 53 secondsstore. Well, it's not my store because I'm the admin, right? So someone else's store. Uh the only thing that we still
5:14:005 hours, 14 minutesdon't allow is the Stripe account ID, but I think we should allow uh people to change this as well. I mean admins
5:14:085 hours, 14 minutes, 8 secondsexclusively admins. So let's go quickly into tenants here. So we are saying that if is super
5:14:175 hours, 14 minutes, 17 secondsadmin you should up you should be able to update it. So I'm not sure why uh it's not allowing me to update at this
5:14:265 hours, 14 minutes, 26 secondspoint. Oh, because we've set it to read only. So, remove read only. Let me search. Do we have any other readonies?
5:14:325 hours, 14 minutes, 32 secondsWe don't. Okay, there we go. So, now the super admin can decide if Stripe details are submitted or not. It I don't recommend checking this manually, right?
5:14:425 hours, 14 minutes, 42 secondsBut if you just want to help your user or something, that's how you can do it.
5:14:465 hours, 14 minutes, 46 secondsThere we go. So, now our super admin has actual superpowers, whereas all other users, let's just confirm by adding
5:14:535 hours, 14 minutes, 53 secondsanother user here. There we go. You can see this other user can't even create new products, right? The reason they
5:15:015 hours, 15 minutes, 1 secondcannot create new products is because they still haven't submitted their Stripe details. So that's what we're going to do in the next chapter. We are
5:15:085 hours, 15 minutes, 8 secondsgoing to go ahead uh and actually enable submitting the Stripe details here so that then users uh are enabled to create
5:15:175 hours, 15 minutes, 17 secondsnew products and then we can do some proper fee sharing throughout our platform. Uh amazing. So let's go ahead
5:15:255 hours, 15 minutes, 25 secondsand do 24 access control branch get checkout branch 24
5:15:325 hours, 15 minutes, 32 secondsaccess control get add get commit 24 access
5:15:385 hours, 15 minutes, 38 secondscontrol and get push u origin 24 access control. Once you have pushed and
5:15:455 hours, 15 minutes, 45 secondsswitched your branch confirmed with the graph, you can go to
5:15:535 hours, 15 minutes, 53 secondsGitHub and open up a new pull request here. And now let's go ahead and review our changes one more time before we
5:16:025 hours, 16 minutes, 2 secondsmerge. And here we have the summary. We have some new features. Enhanced security with RO based access control
5:16:115 hours, 16 minutes, 11 secondslimiting sensitive operations. create, read, update, delete to privileged users, in our case, super admins.
5:16:185 hours, 16 minutes, 18 secondsMention of the additional content and improved contextual information in admin interfaces. As always, we can see a more
5:16:265 hours, 16 minutes, 26 secondsin-depth walk through right here and two sequence diagrams. one representing how our access control uh or role based
5:16:355 hours, 16 minutes, 35 secondsaccess control works and the one on the bottom is our uh dynamic product content
5:16:435 hours, 16 minutes, 43 secondswhich should only be rendered to people who have purchased uh a product. In here we have some comments left. Uh this one
5:16:515 hours, 16 minutes, 51 secondsis suggesting to include the content inside of here simply because it recognized that we conditionally check
5:16:595 hours, 16 minutes, 59 secondsif uh user has purchased this. But we don't have to do it here because the reason we check if someone has purchased
5:17:075 hours, 17 minutes, 7 secondsinside of our products procedures is because let me just find what we changed. Uh the reason we do
5:17:145 hours, 17 minutes, 14 secondsthat is simply so we can showcase uh view in library button. So that's the only reason we are doing that inside of
5:17:235 hours, 17 minutes, 23 secondshere. So there's no need to change this to true and then conditional it like that. It's completely fine because the way we render the product content is in
5:17:315 hours, 17 minutes, 31 secondsthe library page. In here it is suggesting that we open up the read access to other users. But uh we don't want that. I only want the admin to see
5:17:405 hours, 17 minutes, 40 secondsthat. So I'm going to go ahead and confirm this merge 24 access control. As always I will confirm that it's here.
5:17:475 hours, 17 minutes, 47 secondsThere we go. And now let's go ahead and go back and get
5:17:545 hours, 17 minutes, 54 secondspull origin and then your main or master branch get status. And there we go.
5:18:015 hours, 18 minutes, 1 secondEverything is merged and up to date.
5:18:035 hours, 18 minutes, 3 secondsThat's it for this chapter. Amazing job and see you in the next one.
Chapter 11: 25 Stripe Connect
5:18:095 hours, 18 minutes, 9 secondsIn this chapter, we're going to go ahead and implement Stripe Connect so that we can finally start taking a percentage
5:18:175 hours, 18 minutes, 17 secondsout of each sale that is made on our platform. In order to do that, we're going to have to set up Stripe Connect
5:18:255 hours, 18 minutes, 25 secondsfrom our dashboard. Before you start doing that, as always, double check that you are on the master branch and double
5:18:335 hours, 18 minutes, 33 secondscheck that you have merged all of your changes. Now, let's go ahead and let's go to our Stripe dashboard here. As you
5:18:415 hours, 18 minutes, 41 secondscan see, I've been exploring a little bit, but I haven't done anything that we uh where from where we left off the last
5:18:485 hours, 18 minutes, 48 secondstime, right? I just explored my customers, right? So in here, if you go inside of more and you go inside of
5:18:565 hours, 18 minutes, 56 secondsconnect, you will be able to see the get started button to power our platform with connect, which is something that we
5:19:055 hours, 19 minutes, 5 secondsneed. So I'm going to do this uh along with you. Uh we might run into some problems simply because I'm not that
5:19:145 hours, 19 minutes, 14 secondsentirely experienced with connect, which is kind of a good thing for you. So you can see me struggle and you know find
5:19:225 hours, 19 minutes, 22 secondsthings out in real time as you are as well. So let's click on get started here
5:19:305 hours, 19 minutes, 30 secondsand let's see what we have to do. I'm pretty sure that we're going to have to set up our guide but let's just see here. So tell us about your business,
5:19:385 hours, 19 minutes, 38 secondstest your connect integration and finish setup. Let's go ahead and click continue here. And in here it's offering us two
5:19:465 hours, 19 minutes, 46 secondsoptions. How will funds flow on your platforms? So sellers can collect payments directly or you can sell to
5:19:535 hours, 19 minutes, 53 secondsbuyers on behalf uh on their behalf and send payouts. So you can decide of course
5:20:025 hours, 20 minutes, 2 secondswhich one is right for you. And I think that if you click show more uh they will give you some examples like Shopify,
5:20:085 hours, 20 minutes, 8 secondsSquare uh Squarespace, VUCommerce whereas Lyft, Kickstarter and Substack would be something like this
5:20:165 hours, 20 minutes, 16 secondswhere buyers purchase from you. So in our case, we want sellers to collect payments directly. So this is the one I'm going to select and I'm going to
5:20:255 hours, 20 minutes, 25 secondsclick save. Now to be honest, I'm not sure exactly how much does it matter uh you know which one you select and can
5:20:325 hours, 20 minutes, 32 secondsyou change it later on because our code will stay the same. So right now um I'm
5:20:405 hours, 20 minutes, 40 secondsnot exactly sure if this represents my connected account or if it represents the connected accounts that will be
5:20:475 hours, 20 minutes, 47 secondsadded on my platform. Right? So let me just see if I click create what happens
5:20:535 hours, 20 minutes, 53 secondshere. So, it's allowing me to create an account here. So, let's try and do this
5:21:015 hours, 21 minutes, 1 secondtogether. So, go ahead and create an account just to see what happens here.
5:21:045 hours, 21 minutes, 4 secondsSo, I'm not going to change anything in here. And let's click continue. It's asking if we want to
5:21:135 hours, 21 minutes, 13 secondsenable OOTH. So, they require Oout. So, we have to enable it otherwise we can't continue here. Uh, and it looks like we
5:21:225 hours, 21 minutes, 22 secondsnow have uh Yes. So you definitely have to create your connected account right and now we are not going to be sharing this link.
5:21:305 hours, 21 minutes, 30 secondsuh instead we are going to create this link using code right so we are going to allow the user to onboard using this
5:21:385 hours, 21 minutes, 38 secondslink yes but we are going to create it programmatically right so that's why I clicked uh create here because I thought
5:21:475 hours, 21 minutes, 47 secondsthat we it we are required to do that but looks like when I refresh nothing is saved here so I don't know okay so I
5:21:545 hours, 21 minutes, 54 secondsthink that I have enabled connect now so I can click overview here and I can see that I have no connected at accounts.
5:22:015 hours, 22 minutes, 1 secondUh, I have no accounts to review. Everything seems to be okay, I suppose.
5:22:065 hours, 22 minutes, 6 secondsSo, I'm going to leave it at here. And then what I'm going to do is just mark this as completed. And I'm just going to
5:22:155 hours, 22 minutes, 15 secondsgo ahead and create the verify procedure which will allow our tenants to verify.
5:22:225 hours, 22 minutes, 22 secondsSo, in order to do that, we're going to go and we first actually have to do this. So we have to modify the register
5:22:285 hours, 22 minutes, 28 secondsprocedure to assign the account ID to each tenant. So let me just see inside of my tenants collection I have stripe
5:22:365 hours, 22 minutes, 36 secondsaccount ID right here. So that's perfect which means that we can safely go inside of out procedures inside of my register base
5:22:445 hours, 22 minutes, 44 secondsprocedure. And in here we can see that currently for the stripe account ID I just add a test. So instead let's create
5:22:525 hours, 22 minutes, 52 secondsan account using await stripe which we can import from libstripe here and let's
5:22:595 hours, 22 minutes, 59 secondsdo stripe.ac accounts.create create and I think we don't have to pass anything inside because the account will
5:23:075 hours, 23 minutes, 7 secondsbe set up either way and in here we can then pass account and then ID and if you want to you can
5:23:155 hours, 23 minutes, 15 secondsactually uh let me just see so we first create the tenant and then we create the user great so we can do this in case there is
5:23:245 hours, 23 minutes, 24 secondsno account right if it wasn't made for any reason we can stop the creation here
5:23:315 hours, 23 minutes, 31 secondsand add a code of bad request and a message failed to create Stripe
5:23:415 hours, 23 minutes, 41 secondsaccount. Great. So what you should do now is you should also modify your seed script. So inside of here when you
5:23:495 hours, 23 minutes, 49 secondscreate the admin tenant, well it's not really important for the admin, right?
5:23:545 hours, 23 minutes, 54 secondsUh so in that case maybe you don't need to modify anything. If you want to you can add stripe here. My apologies. You can add
5:24:025 hours, 24 minutes, 2 secondsthe admin account here await stripe which you can import from libstripe and
5:24:105 hours, 24 minutes, 10 secondsI think this should still work just fine. So wait stripe accounts
5:24:175 hours, 24 minutes, 17 secondscreate and then in here you should be able to add admin account do ID. So it's important that
5:24:265 hours, 24 minutes, 26 secondsyou just pass the ID here. So now since all of our existing tenants are actually invalid because none of them have the
5:24:345 hours, 24 minutes, 34 secondsStripe account ID, it would be smart that we go ahead and run the seed script. In order to do that, we first
5:24:425 hours, 24 minutes, 42 secondshave to uh do database fresh here. So let's do bun run database fresh. And after uh we confirm that we
5:24:525 hours, 24 minutes, 52 secondswant to uh remove our database and reset it uh we have to wait a couple of seconds because as you might know in
5:25:015 hours, 25 minutes, 1 secondchapter 15 I actually got uh an error because I tried to seed things uh
5:25:085 hours, 25 minutes, 8 secondsimmediately after running fresh which obviously wasn't enough time for MongoDB to uh ensure that there won't be any conflict. So this is taking some time.
5:25:195 hours, 25 minutes, 19 secondsSo I'm just going to pause. And there we go. Yes. And there we go. The database is dropped. The error is okay because we
5:25:275 hours, 25 minutes, 27 secondsdon't have any migration files. Wait a few seconds and then do bun run database seed. So this should now properly
5:25:365 hours, 25 minutes, 36 secondsuh create a tenant admin. And that admin tenant should actually have uh the
5:25:445 hours, 25 minutes, 44 secondsstripe ID now. But it's not a problem if it doesn't have because this is, you know, an admin account. But what I want
5:25:515 hours, 25 minutes, 51 secondsto test out now is if my AL procedures register method is properly creating
5:25:595 hours, 25 minutes, 59 secondsaccounts here. So let's go ahead and click on start selling here. And I'm going to create an Antonio store
5:26:075 hours, 26 minutes, 7 secondshere. And let's see, are there any errors with my registration? Looks like there are no errors here, which means
5:26:145 hours, 26 minutes, 14 secondsthat I can now go inside of my dashboard and then I can go inside of my tenants Antonio. And in here, there we
5:26:225 hours, 26 minutes, 22 secondsgo. You can see that I have Stripe account ID right here. Perfect. So, we have the account ID, which means that now we can mark this as completed and
5:26:315 hours, 26 minutes, 31 secondsthen create the verify procedure. So, we're going to create the verify procedure inside of our checkout procedures.
5:26:415 hours, 26 minutes, 41 secondsI want to call it verify. So protected procedure zobject. Uh I'm not sure if it
5:26:505 hours, 26 minutes, 50 secondseven matters. I'm trying to think. Uh no, I don't think it matters. I think we can immediately go for the mutation
5:26:575 hours, 26 minutes, 57 secondshere. We just have to dstructure the context.
5:27:025 hours, 27 minutes, 2 secondsAnd in here, the first thing we're going to do is fetch the user using await
5:27:075 hours, 27 minutes, 7 secondscontext database find by ID collection
5:27:135 hours, 27 minutes, 13 secondsusers ID context session user ID and go ahead and add
5:27:225 hours, 27 minutes, 22 secondsdepth to zero like this.
5:27:285 hours, 27 minutes, 28 secondsUm, yeah. So, I'm thinking actually what we can do.
5:27:365 hours, 27 minutes, 36 secondsHm. If we don't do this, I'm just interested, you know, console log user.
5:27:425 hours, 27 minutes, 42 secondsI want to see what I receive here because if I'm able to access uh the if I'm able to access the tenant
5:27:515 hours, 27 minutes, 51 secondsstripe account ID immediately from the user something like user user.tenants and then I have to choose
5:27:595 hours, 27 minutes, 59 secondsthe first in the array and and then I have to go to the tenant. Yeah, it's a little bit complicated. So this is what I'm going to do instead. If I can't find
5:28:075 hours, 28 minutes, 7 secondsthe user, I will throw a new TRPC error here with a code of not found and a
5:28:145 hours, 28 minutes, 14 secondsmessage of user not found. And then I'm going to go ahead
5:28:215 hours, 28 minutes, 21 secondsand extract the tenant ID and I can do that by specifying depth zero. What I
5:28:295 hours, 28 minutes, 29 secondsknow this will happen is that user tenants is going to be a string tenant
5:28:395 hours, 28 minutes, 39 secondsID because we set the depth to zero which means that we will not populate this. So we can grab the tenant ID by
5:28:475 hours, 28 minutes, 47 secondsusing user tenants first in the array tenant and
5:28:555 hours, 28 minutes, 55 secondsthen this will be a string. This is an id because of that
5:29:045 hours, 29 minutes, 4 secondszero simply so we know why that is happening. So this tenant and now that we have the tenant
5:29:125 hours, 29 minutes, 12 secondsID, we can go ahead and get the tenant using await context database find by ID here. Collection
5:29:215 hours, 29 minutes, 21 secondstenants ID tenant ID. If there is no tenant, we can throw new TRBC error
5:29:305 hours, 29 minutes, 30 secondshere. Code not found and a message tenant not found. And then finally what we can do
5:29:385 hours, 29 minutes, 38 secondsis we can create the verification process. So con account link is await
5:29:465 hours, 29 minutes, 46 secondsstripe dot account links create pass in the account to be
5:29:535 hours, 29 minutes, 53 secondstenant stripe account id add the refresh URL which is going to be our process.
5:30:015 hours, 30 minutes, 1 secondenvironment and then the next public app URL. Add an exclamation point at the end and add a forward
5:30:095 hours, 30 minutes, 9 secondsslash. Then add return URL like this and type is going to be account on boarding.
5:30:185 hours, 30 minutes, 18 secondsSo that's going to create that URL for the user. So we can check if account link has no URL. So make sure to put an
5:30:255 hours, 30 minutes, 25 secondsexclamation point here. We're going to throw new TRPC error.
5:30:335 hours, 30 minutes, 33 secondscode bad request and a message fail to create
5:30:405 hours, 30 minutes, 40 secondsverification link otherwise just a URL and account
5:30:485 hours, 30 minutes, 48 secondslink URL. Uh and in here you can I'm not sure if we should
5:30:555 hours, 30 minutes, 55 secondsreturn the user to the root page or maybe it's better to return them to the admin because this is the place where they are going to uh activate this
5:31:045 hours, 31 minutes, 4 secondsprocedure from. So now that we have this uh what we have to do is we have to create
5:31:125 hours, 31 minutes, 12 secondsuh a button in the CMS which is going to show right
5:31:205 hours, 31 minutes, 20 secondshere. So basically we can we can find many ways to put a button. If you read in the payload CMS, they offer to
5:31:285 hours, 31 minutes, 28 secondscustomize a lot of things, but uh it would be nice to put it somewhere visible, maybe in the sidebar or somewhere like
5:31:375 hours, 31 minutes, 37 secondshere. So, what I'm going to do is I'm going to go inside of the products collections here and in the admin, I'm
5:31:445 hours, 31 minutes, 44 secondsgoing to add a description here. You must submit your Stripe. Uh actually let's do you must
5:31:545 hours, 31 minutes, 54 secondsverify your account before creating products so that they know they need to
5:32:005 hours, 32 minutesdo something and that's why they don't have the create new button
5:32:085 hours, 32 minutes, 8 secondshere. Now I'm going to go ahead and I will go inside of source components and
5:32:165 hours, 32 minutes, 16 secondsin here I'm going to create stripe-verify.ts.
5:32:215 hours, 32 minutes, 21 secondstsx and I'm going to import button whoops from dot / ui button actually my
5:32:295 hours, 32 minutes, 29 secondsapologies button from at payload cms- ui and link from payload cms UI will
5:32:395 hours, 32 minutes, 39 secondsexport const stripe verify here and I will return a
5:32:475 hours, 32 minutes, 47 secondslink with an href have stripe verify and a button
5:32:545 hours, 32 minutes, 54 secondshere verify account like
5:33:015 hours, 33 minutes, 1 secondthis. And now that I have created this component using payload UI, I'm going to
5:33:085 hours, 33 minutes, 8 secondsgo inside of payload.config.ts. And what we can do
5:33:145 hours, 33 minutes, 14 secondshere inside of admin is we can open up components. And there's a ton of options you can do here. I'm just going to open
5:33:225 hours, 33 minutes, 22 secondsthe documentation for you. There we go. So you can see that you honestly have a ton of options to
5:33:295 hours, 33 minutes, 29 secondsadd components. You have before dashboard, after dashboard, before login, after login, before nav links,
5:33:365 hours, 33 minutes, 36 secondsafter nav links in the header. There's just a ton of options uh you can do here, right? You can replace a lot of
5:33:445 hours, 33 minutes, 44 secondsthings. So, what I'm going to do is add before nav links and I'm going to add at
5:33:525 hours, 33 minutes, 52 seconds/components stripe-details, my apologies, stripe-verify. And then in order to
5:33:595 hours, 33 minutes, 59 secondstarget a export, a named export, you put a hashtag and then the name like this.
5:34:065 hours, 34 minutes, 6 secondsSo, let's see if I'm going to get any errors. This is a error. So that should be unrelated. But
5:34:125 hours, 34 minutes, 12 secondsnow when I click here, there we go. You can see that I have a verify account button here. And when I click on it, it
5:34:205 hours, 34 minutes, 20 secondsshould redirect me uh to a /stripe-verify, which in end will just, you know, uh throw an error here because
5:34:285 hours, 34 minutes, 28 secondsthis uh category doesn't really exist. Great. But we now have a verify account button.
5:34:375 hours, 34 minutes, 37 secondsSo, I'm not sure about the placement of this button, you know, because it's hidden if you don't have the sidebar opened. But for now, let's just keep it
5:34:455 hours, 34 minutes, 45 secondshere. And now, let's implement this page, stripe verify. So, I'm going to go inside of source app payload, my apologies, admin
5:34:555 hours, 34 minutes, 55 secondstenants, and inside of here, I'm going to create stripe-verify. Make sure it's exactly the same as your redirect here.
5:35:065 hours, 35 minutes, 6 secondsAnd inside of that route stripe verify go ahead and create a page. DSX. So now
5:35:135 hours, 35 minutes, 13 secondswhen you uh add something here page div
5:35:205 hours, 35 minutes, 20 secondsverification and you click here it should redirect you to that verification page. What we're going to do here is add
5:35:295 hours, 35 minutes, 29 secondsuse client to the top and we are very simply just going to add the
5:35:365 hours, 35 minutes, 36 secondsTRPC mutation here. So const verify is going to be use mutation from tanstack
5:35:435 hours, 35 minutes, 43 secondsreact query trpc checkout verify and add the mutation options here. And then we're going to open up a use effect here.
5:35:565 hours, 35 minutes, 56 secondswhich is very simply uh going to you can extract mutate like this and map it to
5:36:035 hours, 36 minutes, 3 secondsverify and then just call verify here and add verify to the dependency array. There we go.
5:36:145 hours, 36 minutes, 14 secondsAnd let's also now add on success here to accept the data. And then do window
5:36:225 hours, 36 minutes, 22 secondslocation data URL. And on error here is just going to
5:36:285 hours, 36 minutes, 28 secondsredirect the user back to the root page regardless of where they come from because an unauthorized user can attempt
5:36:375 hours, 36 minutes, 37 secondsto go to /stripeverify, right? So, we're just going to throw an error because verify is a protected procedure. And then we're just going to redirect the
5:36:455 hours, 36 minutes, 45 secondsuser back to where they come from. And to make things a little bit prettier here, you can add just a simple loading
5:36:525 hours, 36 minutes, 52 secondsicon here and a flex minimum height screen. You know, just center it. You can add text muted foreground instead.
5:37:025 hours, 37 minutes, 2 secondsJust a simple loader here.
5:37:065 hours, 37 minutes, 6 secondsAnd now, if we've done this correctly, there we go. It already works here. So, let me close it first. Uh, let's go to
5:37:145 hours, 37 minutes, 14 secondslocalhost 3000. So, I'm logged in uh as Antonio. And now I'm going to go to my dashboard. I attempt to create a
5:37:225 hours, 37 minutes, 22 secondsproduct. And I see, oh, I need to verify my account before creating products. Uh, and now I click on verify account. And
5:37:305 hours, 37 minutes, 30 secondsit's loading. It's loading. It's loading. And I get redirected as you can see to uh connecting my business with uh
5:37:405 hours, 37 minutes, 40 secondsit's called new business sandbox because that's what I called myself here right so if you change this to fun road or
5:37:485 hours, 37 minutes, 48 secondsyour name uh it will tell you here you know Antonio uses uh stripe for secure
5:37:545 hours, 37 minutes, 54 secondspayments that's why you see this text here and if you click return it should redirect you back to admin here. But the
5:38:035 hours, 38 minutes, 3 secondsreason I don't want to go through this process yet is because we are missing a web hook, right? We need a way to update uh this
5:38:125 hours, 38 minutes, 12 secondsinformation. Stripe details submitted, right? So, let's go ahead and go inside of our web hooks
5:38:205 hours, 38 minutes, 20 secondshere and we are going to add one more item inside of our permitted events and that's going to be account.updated like this.
5:38:325 hours, 38 minutes, 32 secondsAnd then let's go ahead and add that. So go to the end of this break here and add case
5:38:425 hours, 38 minutes, 42 secondsaccount.updated like this. And I think you should have TypeScript here account.updated like this. Inside get
5:38:525 hours, 38 minutes, 52 secondsthe data event data object as stripe.AC
5:38:575 hours, 38 minutes, 57 secondsaccount await payload update collection
5:39:035 hours, 39 minutes, 3 secondstenants where stripe account ID equals data ID as simple as
5:39:135 hours, 39 minutes, 13 secondsthat and um something is wrong here and what's wrong is that I need to pass my
5:39:195 hours, 39 minutes, 19 secondsdata stripe details submitted is simply going to be whatever the web hook is
5:39:255 hours, 39 minutes, 25 secondsholding right. So data stripe my apologies details submitted like this.
5:39:325 hours, 39 minutes, 32 secondsSo even if for whatever reason our uh user let's just add break
5:39:395 hours, 39 minutes, 39 secondshere. Even if our user somehow uh again updates their account and they lose their verification uh this will fire
5:39:485 hours, 39 minutes, 48 secondsagain and this might be false. Right? So we know to not no longer allow that user to create new
5:39:555 hours, 39 minutes, 55 secondsproducts. Great. So we now have this and this should now be working, right? So let's just confirm. You can see that I
5:40:045 hours, 40 minutes, 4 secondsdon't have my Stripe detail submitted right now. So I'm going to go and verify my account
5:40:105 hours, 40 minutes, 10 secondshere with my unique uh user here. So I think I can use a random email address.
5:40:175 hours, 40 minutes, 17 secondsI don't think it matters. Um, let me try a fake password here.
5:40:245 hours, 40 minutes, 24 secondsDoes it matter or do I actually need to log in here? Okay. So, I'm going to go ahead and use my actual email address
5:40:345 hours, 40 minutes, 34 secondshere. And there you go. Once you are successfully logged in, you need to uh use your real Stripe account. So, I have
5:40:435 hours, 40 minutes, 43 secondsmultiple Stripe accounts, multiple email addresses. So, I just use another one, you know, just in case. I think you can use the same one that you are actually,
5:40:515 hours, 40 minutes, 51 secondsyou know, logged in in which you're uh you can see that it actually logged me out from here. So that's important to know. So I'm just going to go ahead and
5:40:595 hours, 40 minutes, 59 secondsI don't know pick some mock data here, right? This doesn't matter, I think, because this should allow us to just use
5:41:065 hours, 41 minutes, 6 secondssome mock information hopefully. Uh so I'm going to fill this out and hopefully
5:41:125 hours, 41 minutes, 12 secondsyou know just uh uh it will allow me to just add gibberish here. After that go ahead and click
5:41:215 hours, 41 minutes, 21 secondscontinue. And now it's asking us to uh add a VAT ID. And thankfully it says
5:41:295 hours, 41 minutes, 29 secondsoptional. So I don't think we have to add it here. So I'm just going to select software here. Uh I will add
5:41:385 hours, 41 minutes, 38 secondscodewithanonio.com. Uh in my first example, they actually gave me a lot of trouble with this website. So you can just put codewithintonio.com. They seem
5:41:465 hours, 41 minutes, 46 secondsto accept that. And in here it will be uh I sell high quality courses on
5:41:545 hours, 41 minutes, 54 secondsbuilding web applications. I don't know something like that. And let's click continue here. And at one point we will have to
5:42:035 hours, 42 minutes, 3 secondsadd our bank information. And thankfully we can just click use test account. And you can see that will invent a random
5:42:115 hours, 42 minutes, 11 secondsIBAN here. There we go. I think uh see I am now registering my store
5:42:185 hours, 42 minutes, 18 secondscodewithonia.com right here. Uh I'm not sure I need this. Okay. So, I'm just going to fill this
5:42:255 hours, 42 minutes, 25 secondsout and then just go ahead and submit. And in here, uh, if you want to,
5:42:335 hours, 42 minutes, 33 secondsyou can, uh, select a specific commitment to show the customers that you care about, you know, the climate change. Um, you can select continue with 1%. Doesn't really matter for this case.
5:42:455 hours, 42 minutes, 45 secondsUh, and in here, if you want to, you can opt into stripe tax. I think at this point, this doesn't really matter for our integration. You can do whatever you
5:42:535 hours, 42 minutes, 53 secondswant here. Uh, and in here you should you should see all of your information.
5:42:585 hours, 42 minutes, 58 secondsUh, I might blur this out just uh because I had to enter some real information here. Uh, and at the bottom you should see agree and submit button.
5:43:085 hours, 43 minutes, 8 secondsSo just go ahead and press that. And hopefully that should uh trigger the web hook now. So let me go ahead and see.
5:43:195 hours, 43 minutes, 19 secondsOh, we didn't start the web hook.
5:43:235 hours, 43 minutes, 23 secondsSo, we might have to do it all over again because I forgot to tell you uh that we have to we have to um activate the web hook.
5:43:335 hours, 43 minutes, 33 secondsSo, just a second. So, let's just do uh stripe listen forward to and we're just going
5:43:435 hours, 43 minutes, 43 secondsto have to enter a proper URL here. So, 3000 uh API Stripe web
5:43:505 hours, 43 minutes, 50 secondshooks. You can double check that that is correct. So app folder API stripe web hooks. There we go. If you want to, you
5:43:595 hours, 43 minutes, 59 secondscan also confirm that this is still the same. So stripe web hook secret. Mine is identical. So it doesn't
5:44:065 hours, 44 minutes, 6 secondschange that often. Uh and now we have to do this again. The only problem is
5:44:135 hours, 44 minutes, 13 secondsum you might actually receive the event randomly now because I assume that uh it
5:44:215 hours, 44 minutes, 21 secondshas failed. There we go. So you can see that some events are actually firing here because I think that my previous event actually counted as uh a failed
5:44:305 hours, 44 minutes, 30 secondsevent. So maybe the event will actually be retrieded. But I think that if you now click on verify account here, you
5:44:385 hours, 44 minutes, 38 secondsmight not be able to submit your details again because it will just associate it
5:44:455 hours, 44 minutes, 45 secondswith a already finished account here. I think that it's just going to load. You can see it loads all the
5:44:535 hours, 44 minutes, 53 secondsinformation that I already had. So let me try clicking confirm here. And maybe the fact that I just submitted
5:44:595 hours, 44 minutes, 59 secondsagain will trigger another endpoint. Or maybe it doesn't. I think that that does
5:45:075 hours, 45 minutes, 7 secondsnot trigger it here. I'm just going to double check. We added account updated
5:45:145 hours, 45 minutes, 14 secondshere. And we added account updated here as well. Double check that you didn't misspell anything. So there's no reason
5:45:215 hours, 45 minutes, 21 secondsthat it should not have been uh accepted. But I just think that uh we have to go ahead and create a new account. So that's going to be easiest
5:45:295 hours, 45 minutes, 29 secondsto do. Let's just go ahead and log out and simply create a new account here.
5:45:375 hours, 45 minutes, 37 secondsJohn demo.com demo. So I could have edited this part out, but I think it's important to show you, you know, what to
5:45:445 hours, 45 minutes, 44 secondsdo if you do a mistake like I did and not open up the web hook. And you can see that it actually fired some connect
5:45:515 hours, 45 minutes, 51 secondsaccount here. So maybe it's actually authorized now. I don't know. Let's try again. So what I'm going to do is I've just created a new account and I'm going
5:46:005 hours, 46 minutesto verify my account again. And I'm pretty confident that you can use the exact same email address as before. So
5:46:095 hours, 46 minutes, 9 secondsthat's what I'm going to do. I'm going to use the exact same information. And cool thing is um it might actually allow you uh to select
5:46:185 hours, 46 minutes, 18 secondsyour information from before. You can also create a completely new business, but it looks like you can also reuse your information. So, I'm going to try
5:46:275 hours, 46 minutes, 27 secondsreusing it because I think it will just speed this entire thing up, especially because it has already, you know, the website and the type of business and
5:46:355 hours, 46 minutes, 35 secondseverything here. There we go. So, now I can just choose a different climate commitment. Let's skip it this time and let's skip the tax this time. Uh, and
5:46:435 hours, 46 minutes, 43 secondslet's see if that changes anything. So, there we go. We have a summary again. I 100% have my web hook running and I'm
5:46:505 hours, 46 minutes, 50 secondsgoing to click agree and submit. And hopefully now this should uh be
5:46:575 hours, 46 minutes, 57 secondsregistered here in my web hook. I can see a lot of things firing here. I got redirected back and you can
5:47:065 hours, 47 minutes, 6 secondssee I can now add my products which means that my John has officially submitted stripe details. Amazing. Which
5:47:145 hours, 47 minutes, 14 secondsmeans that we are ready to create products. And now I can call this John's product. And I can put a price here, whatever I want. I can put a category.
5:47:245 hours, 47 minutes, 24 secondsUh, and let me just go ahead and yeah, we can also do this super secret
5:47:305 hours, 47 minutes, 30 secondscontent. And let's click save. And this should now allow users to see that right here. Perfect. And now what we have to
5:47:385 hours, 47 minutes, 38 secondsdo is we have to modify our code so that we added the verify button as well. So now we have to modify the purchase
5:47:455 hours, 47 minutes, 45 secondsprocedure to take a fee percentage, right? Because now we are connected to that business, right? I mean their business is connected to our platform.
5:47:555 hours, 47 minutes, 55 secondsSo what we're going to do is we're going to go back inside of the checkout procedures and let's specifically go to
5:48:035 hours, 48 minutes, 3 secondspurchase. This is where we are going to have to modify it. So in here we have the tenants data. So it means we have the tenant which means we have the
5:48:125 hours, 48 minutes, 12 secondsstripe account ID. So the first thing we're actually going to do here is besides checking if
5:48:195 hours, 48 minutes, 19 secondsthere is no tenant we are also going to double check if tenant is missing stripe details submitted. So we can remove this
5:48:285 hours, 48 minutes, 28 secondsto-do here and this can be a bad request here and we can just say tenant not
5:48:355 hours, 48 minutes, 35 secondsallowed to sell products. So that's going to be the error that happens right there. They need to resubmit their data.
5:48:425 hours, 48 minutes, 42 secondsAnd now after the line items, we're going to go ahead and do a total amount to be products docs
5:48:515 hours, 48 minutes, 51 secondsreduce accumulator and the item and return accumulator plus item.pric multiply it by 100 and set the
5:48:595 hours, 48 minutes, 59 secondsaccumulator to zero. And now we are going to take the platform fee percent
5:49:095 hours, 49 minutes, 9 secondsand set it to 10. So we are looking for 10%. If you want to you can put that in a constant here in your source
5:49:175 hours, 49 minutes, 17 secondsconstants. Export con platform fee percentage and you can set it to 10 and then you can easily modify it whenever
5:49:265 hours, 49 minutes, 26 secondsyou need to. So instead of this constant you can immediately create platform fee amount math
5:49:345 hours, 49 minutes, 34 secondsround total amount multiplied by the platform fee
5:49:415 hours, 49 minutes, 41 secondspercentage divided by 100 like this. And now we have the amount that we are going to take
5:49:485 hours, 49 minutes, 48 secondsregardless of what was the price. So we are just going to pick 10% from that. So
5:49:565 hours, 49 minutes, 56 secondsthen let's go ahead and do the following. After metadata, we are going to add payment
5:50:055 hours, 50 minutes, 5 secondsintent data. Application fee amount will be platform fee amount like this. And then
5:50:135 hours, 50 minutes, 13 secondsin here go ahead and add another set of options like this. Stripe account will
5:50:205 hours, 50 minutes, 20 secondsbe tenant stripe account ID. There we go. So now if we've done this correctly,
5:50:275 hours, 50 minutes, 27 secondswe should just get no errors and we should simply start seeing uh a different type of purchase now. So let's
5:50:335 hours, 50 minutes, 33 secondssee what I'm going to do is I'm going to log into my another account that I have which is Antonio, right? It doesn't
5:50:425 hours, 50 minutes, 42 secondsmatter if you are verified on that account or not because you don't have to be verified to purchase. So I'm going to
5:50:505 hours, 50 minutes, 50 secondsgo to John's product and I will add John's product to cart. Make sure you have your web hook running here. Let's go ahead and check out. Let's see if
5:50:585 hours, 50 minutes, 58 secondsthere are any errors. Seems to be no errors at all. And here's a cool thing.
5:51:025 hours, 51 minutes, 2 secondsYou can see that now in here it says code with Antonio because that's the connected business that we are purchasing from. We are no longer
5:51:105 hours, 51 minutes, 10 secondspurchasing from our business, from our Stripe, right? So, let me go ahead and just add some test information here. So,
5:51:195 hours, 51 minutes, 19 secondsthe full price is $49. And if we've done everything correctly, uh I think a 10% fee should
5:51:265 hours, 51 minutes, 26 secondsgo to us and the rest should go to code with Antonio store. So I think everything worked well here. Let me go
5:51:345 hours, 51 minutes, 34 secondscontinue shopping here. Actually, I should go to the root page. Let's go to the library here. Let me refresh the
5:51:445 hours, 51 minutes, 44 secondslibrary. Interesting. Looks like uh this wasn't created. So I'm not sure if that's a bug.
5:51:515 hours, 51 minutes, 51 secondsor something else. And I can still add it to cart. So, I'm not sure if an error happened. Looks like there was an error
5:52:005 hours, 52 minuteshere. I'm just not sure for what event uh exactly that
5:52:085 hours, 52 minutes, 8 secondshappened. H, that's interesting. So, I'm going to go ahead and debug a little bit so I can purchase it again. It
5:52:175 hours, 52 minutes, 17 secondsseems it doesn't seem to be causing any problems. So, I need to understand why uh this is
5:52:255 hours, 52 minutes, 25 secondshappening. I'm not sure if if is it because of that error or is it something else here? I'm definitely getting the
5:52:345 hours, 52 minutes, 34 secondsinvoice paid and invoice succeeded. So, let me just double check, you know, to confirm. Maybe it was late.
5:52:445 hours, 52 minutes, 44 secondsLooks like it wasn't late. So, I'm just going to pause a bit and explore what's going
5:52:505 hours, 52 minutes, 50 secondson. Okay. So, I'm on track with the error. I found out um that when our web
5:52:585 hours, 52 minutes, 58 secondshook fires. So, you can see I added inside of my checkout session completed.
5:53:045 hours, 53 minutes, 4 secondsI added a console log here and I found it here. But looks like something happens. Stripe invalid request error.
5:53:125 hours, 53 minutes, 12 secondsIt is unable to find the checkout session here. This could be because of our new uh stripe connect thing, but I
5:53:225 hours, 53 minutes, 22 secondsdidn't actually have this problems in my initial build. So, it will be interesting for me to explore why this is happening. It basically cannot find
5:53:325 hours, 53 minutes, 32 secondsuh this. So, this will be a little bit interesting uh to debug now. So, I'm going to pause and tell you any new
5:53:405 hours, 53 minutes, 40 secondsinformation I found out. So, I've made some progress and I've noticed that I can actually access
5:53:495 hours, 53 minutes, 49 secondsthe account using event.ac account. So, not data.ac account. I was first trying
5:53:565 hours, 53 minutes, 56 secondsthis, but we can actually use the event stripe event.
5:54:025 hours, 54 minutes, 2 secondsAnd when you hover over this, it tell you the connected account that originates the event. So what I think we
5:54:095 hours, 54 minutes, 9 secondsshould do is inside of expanded session, you can see I was trying some things here. Let's try using event.ac account
5:54:185 hours, 54 minutes, 18 secondshere. Looks like there are no errors. So I think this actually might be compatible. I'm going to leave a console log here just in case. So I can purchase
5:54:275 hours, 54 minutes, 27 secondsas many times as I want because none of this is creating any orders. And let's try one more time to see maybe that is
5:54:355 hours, 54 minutes, 35 secondsthe missing piece. So I'm going to add this and I'm going to click pay. And now
5:54:425 hours, 54 minutes, 42 secondslet's let's follow and see if something will break. And there we go. The account was successful this time. And no errors.
5:54:505 hours, 54 minutes, 50 secondsDoes that mean that if I go inside of my library? There we go. I can see the product that I've purchased. Amazing.
5:54:585 hours, 54 minutes, 58 secondsAnd we officially took the 10% fee. And you can see that I can now access the super secret content in here. So that
5:55:065 hours, 55 minutes, 6 secondswas the issue. We needed to add the account from the event in order to expand the session. So we can only
5:55:145 hours, 55 minutes, 14 secondsretrieve this checkout session if we associate it with the correct Stripe account which is stored in event.ac
5:55:225 hours, 55 minutes, 22 secondsaccount right here. So it's the same thing as this right here. Now that I
5:55:295 hours, 55 minutes, 29 secondsthink of it, you know, since um but you know, we are always going to know the Stripe account. I think I I'm
5:55:365 hours, 55 minutes, 36 secondsthinking should I save the Stripe account in the order collection, but I
5:55:435 hours, 55 minutes, 43 secondsdon't think um h maybe we could do that as well. Go inside of your collections and go inside
5:55:535 hours, 55 minutes, 53 secondsof orders here and alongside Stripe checkout session ID. You can also add
5:56:005 hours, 56 minutesthe Stripe account ID but you don't have to make it required. So Stripe account
5:56:085 hours, 56 minutes, 8 secondsassociated with the order like this Stripe account ID. So then you are going to know you know if
5:56:165 hours, 56 minutes, 16 secondsyour order has a stripe account ID in order to retrieve the session you are going to need to append this but if you
5:56:255 hours, 56 minutes, 25 secondsare doing a normal e-commerce you know without stripe connect then you won't need to hold this inside so then what
5:56:315 hours, 56 minutes, 31 secondsyou can do is also pass in the stripe account ID here event and you can see that this is a
5:56:405 hours, 56 minutes, 40 secondstype of string Uh, and for me it's telling me that Stripe account doesn't exist in the
5:56:475 hours, 56 minutes, 47 secondsorders, but after some time you can see it loads. If yours hasn't, you can run the uh package JSON script to restart
5:56:565 hours, 56 minutes, 56 secondsthe types. So if you want to, you can add this here. Great. So I think that this is now working. Now I'm just going to visit uh the Stripe dashboard to confirm.
5:57:085 hours, 57 minutes, 8 secondsSo now when I went to log into Stripe, you can see that I'm in a completely new account. That is because I used uh my
5:57:155 hours, 57 minutes, 15 secondsolder Stripe account and in here I am logged in with my new business that I've created code with Antonio. And if I go inside of transactions, you can see that
5:57:245 hours, 57 minutes, 24 secondsI have all of these with $49 inside. And if you take a deeper look and go inside, you will see that there is an actual
5:57:325 hours, 57 minutes, 32 secondsapplication fee which I believe is our platform. Uh let me just pause so this
5:57:395 hours, 57 minutes, 39 secondsloads. Here we go. Uh so this is definitely that the Antonio demo here and you can see the fees here. We have
5:57:475 hours, 57 minutes, 47 secondsthe application fees and we have the stripe processing fees. And I think that we are the application fees here. Uh
5:57:575 hours, 57 minutes, 57 secondsamazing. So now I want to also you know doublech check this uh on my actual uh
5:58:055 hours, 58 minutes, 5 secondsstripe sandbox right so in here I think that this is us I think that this is the percentage that we take now let's go ahead and let's confirm that with the
5:58:145 hours, 58 minutes, 14 secondsother account so here I am back into my sandbox here and initially I thought
5:58:215 hours, 58 minutes, 21 secondsthat this isn't working because here everything is zero but then I went into transaction s and I went into collected
5:58:295 hours, 58 minutes, 29 secondsfees and this is exactly what I saw. It is us taking the fee out of each
5:58:365 hours, 58 minutes, 36 secondstransaction that we just tested on. So $49 you can see here uh from that account right we are taking our fee.
5:58:465 hours, 58 minutes, 46 secondsAmazing. And inside of your connect here you can see more information about your grossing account. So you can see I have two of them because the first one was
5:58:545 hours, 58 minutes, 54 secondsthe one I created without uh the web hook active. So I have two accounts named exactly the same. But inside I can
5:59:035 hours, 59 minutes, 3 secondssee some information about how much uh they've made. And inside of here we can probably see the collected fees we take
5:59:115 hours, 59 minutes, 11 secondsfrom them. Right? So uh very very interesting definitely. And we can also see that you need to provide some
5:59:195 hours, 59 minutes, 19 secondsdocuments. Right? So that's how these things work here. Uh, amazing, amazing job. So that's how you implement Stripe
5:59:275 hours, 59 minutes, 27 secondsConnect. So we now officially take a fee. Amazing amazing job. Now let's go
5:59:345 hours, 59 minutes, 34 secondsahead and commit this change. Uh, of course I'm going to, you know, go throughout the code once more in between my chapters to see, you know, did I miss
5:59:425 hours, 59 minutes, 42 secondssomething? Are there any edge cases? Can we improve something? But I am quite satisfied with this. So I of course
5:59:515 hours, 59 minutes, 51 secondsforgot the number 25. Get checkout branch 25 stripe connect. Get add get commit with a
6:00:016 hours, 1 secondmessage 25 stripe connect and get push u origin 25 stripe
6:00:106 hours, 10 secondsconnect. There we go. We are now on a new branch. As you can see, we have detached here. So, let's go ahead and
6:00:186 hours, 18 secondsreview our changes here. And maybe our reviewer will have something interesting
6:00:256 hours, 25 secondsto suggest to us. And here we have a summary. We introduced a user-facing Stripe
6:00:336 hours, 33 secondsverification page with a loading indicator and a redirect upon success.
6:00:396 hours, 39 secondsWe added an admin action that prompts users to verify their account before creating products. And we enhanced the checkout experience with integrated
6:00:486 hours, 48 secondsStripe account creation and dynamic fee calculations ensuring orders now capture the associated Stripe account details.
6:00:566 hours, 56 secondsAs always, in here we have a more detailed walkthrough and two sequence diagrams. The first one is describing
6:01:036 hours, 1 minute, 3 secondshow we redirect the user to account verification page. And the bottom one
6:01:106 hours, 1 minute, 10 secondshere, uh, let me see. So, when the user initiates a verification request, oh, I think it's a continuation of this one
6:01:186 hours, 1 minute, 18 secondsright here. Great. And we do have some comments left here. So, since this is in a seed script, this is perfectly fine.
6:01:276 hours, 1 minute, 27 secondsUh, in here, it's recommending better error handling. Uh I'm fine with just redirecting the user in this case. And in here it added something interesting.
6:01:366 hours, 1 minute, 36 secondsIt recommended enhancing the Stripe account with required parameters. And it especially uh told me that this is for a
6:01:446 hours, 1 minute, 44 secondsproduction ready integration. So it's interesting that I can pass the type express here and add these capabilities.
6:01:536 hours, 1 minute, 53 secondsSo for example, I need to request card payments and transfers. So I will explore this. Uh, I
6:02:006 hours, 2 minutesknow about Stripe Express. I'm just not sure about the difference between using that for Stripe Connect in comparison to
6:02:086 hours, 2 minutes, 8 secondsstandard or custom. So, I will try to explore to tell you if it's worth it changing it or not. And you can try it on your own, you
6:02:176 hours, 2 minutes, 17 secondsknow. Uh, great. And besides that, I'm super satisfied with what we've done here. So, I'm going to merge this pull request.
6:02:276 hours, 2 minutes, 27 secondsAs always, I'm going to confirm that I have Stripe Connect here. And then I'm just going to go to my last branch and I
6:02:366 hours, 2 minutes, 36 secondswill pull origin into that branch. And I will run get status to confirm everything is fine. And there we go.
6:02:466 hours, 2 minutes, 46 secondsEverything is merged. Amazing. Amazing job. You just implemented Stripe Connect and you are officially taking a 10% fee
6:02:546 hours, 2 minutes, 54 secondsout of every purchase. Great. Great job. So, as we are nearing our final
Chapter 12: 26 General Improvements
6:03:016 hours, 3 minutes, 1 secondchapters here and deployment, I want to dedicate this chapter to some general improvements and some things that we
6:03:096 hours, 3 minutes, 9 secondshave forgot to implement so far. As always, ensure that you're on your master branch and ensure that you're up
6:03:176 hours, 3 minutes, 17 secondsto date. After that, you can go ahead and do bun rundev.
6:03:226 hours, 3 minutes, 22 secondsWhat I would recommend is that you go inside of your admin account and go inside of your products and simply
6:03:306 hours, 3 minutes, 30 secondsdelete all products. After that, you can go ahead and log out and feel free to
6:03:376 hours, 3 minutes, 37 secondslog in as an account with uh whom you have verified your account so that you can create new products. The first thing
6:03:466 hours, 3 minutes, 46 secondsI want to do is give tenants ability to soft delete or archive the products.
6:03:526 hours, 3 minutes, 52 secondsRight now, if a tenant created a new product, so I'm going to call this John's public product with a price of
6:04:016 hours, 4 minutes, 1 second$99 and business and money category. And I click save here. You can see that I have the option to delete this.
6:04:116 hours, 4 minutes, 11 secondsthat will cause problems if someone has an order for that product, right? If they go into their library, they will
6:04:196 hours, 4 minutes, 19 secondshave an error if they try to load that order. So, because of that, I would rather we implement soft delete rather
6:04:276 hours, 4 minutes, 27 secondsthan hard delete. We will still allow hard delete, but only for super admins.
6:04:346 hours, 4 minutes, 34 secondsIn order to do that, let's go inside of our products collections. And first let's disable the
6:04:426 hours, 4 minutes, 42 secondsdelete. So make sure that only if the user is a super admin do we allow delete. So if you refresh now you should no longer have the delete option.
6:04:546 hours, 4 minutes, 54 secondsInstead what we are going to do is we are going to add a new field with a name
6:05:016 hours, 5 minutes, 1 secondof is archived label of archive. This is important. a default
6:05:086 hours, 5 minutes, 8 secondsvalue of false. And then let's go ahead and also add a type of
6:05:166 hours, 5 minutes, 16 secondscheckbox. And then you can add an admin and a description here. Check if you
6:05:236 hours, 5 minutes, 23 secondswant to delete or hide this product like this. Or
6:05:316 hours, 5 minutes, 31 secondsmaybe if checked this product will be archived. So just something to give the
6:05:386 hours, 5 minutes, 38 secondsuser an idea of what will happen. So right now as you can see if I click archive and save nothing much will
6:05:456 hours, 5 minutes, 45 secondschange on my homepage. The product is still here. So what we have to do is we have to go inside of procedures for the
6:05:546 hours, 5 minutes, 54 secondsproducts. Specifically we have to go inside of get many procedures. So in here in the global
6:06:026 hours, 6 minutes, 2 secondswhere what we're going to do is we're going to target is archived here and
6:06:086 hours, 6 minutes, 8 secondswe're going to make it not equals
6:06:146 hours, 6 minutes, 14 secondstrue. Why not equals true? Why not use equals false?
6:06:226 hours, 6 minutes, 22 secondsThat's because when I initially developed this, I forgot to put the default value to false, which means the
6:06:306 hours, 6 minutes, 30 secondsdefault value was null or undefined. And when the default value is
6:06:376 hours, 6 minutes, 37 secondsnull or undefined, equals false will not be true and that product will not be
6:06:456 hours, 6 minutes, 45 secondsloaded. So it's technically considered archived. So two things that we have to learn from this always ensure that you
6:06:536 hours, 6 minutes, 53 secondshave the proper default value in this case false and second use not equals
6:07:016 hours, 7 minutes, 1 secondtrue rather than equals false right so if an archive is set to true it will be
6:07:086 hours, 7 minutes, 8 secondsomitted with this explicitly now so if I do a refresh here let's go ahead and refresh one more
6:07:176 hours, 7 minutes, 17 secondstime and looks like I still cannot load it.
6:07:226 hours, 7 minutes, 22 secondsUh, and yes, that is because uh, we have changed it to be archived. But if you
6:07:286 hours, 7 minutes, 28 secondsuncheck this now, there we go. It's right here. So, not equals true works
6:07:356 hours, 7 minutes, 35 secondsexactly as it should. What I want you to test is go and create a completely new product. So, test product or let's call this John's public product.
6:07:476 hours, 7 minutes, 47 secondsand simply add the price and don't touch the archived. So just click save. And
6:07:546 hours, 7 minutes, 54 secondswhat's important is that by default you now have two products here, right? So if you use
6:08:026 hours, 8 minutes, 2 secondsequals to false and if you forget to add the default value, this is what will happen.
6:08:116 hours, 8 minutes, 11 secondsYou will create a new product testing default false missing. For example, you will do this
6:08:206 hours, 8 minutes, 20 secondsand then do you see it doesn't exist. Why?
6:08:276 hours, 8 minutes, 27 secondsWell, that's because in here it is explicitly looking for is archived to be
6:08:346 hours, 8 minutes, 34 secondsfalse, which is not the case if you forget to add this. So that's why it's safer to use not equals true. So it's looking for a reverse explicit logic.
6:08:466 hours, 8 minutes, 46 secondsYou can see that now all three are loaded properly even though we forgot to add this but still use double uh
6:08:546 hours, 8 minutes, 54 secondsinsurance here. Use default value set to false and use not equals set to true.
6:09:016 hours, 9 minutes, 1 secondThere we go. So now you can safely archive this one and you can see how it's going to
6:09:096 hours, 9 minutes, 9 secondsdisappear. Great. So what I want to do now is I want to go inside of John's public product and let's make this
6:09:166 hours, 9 minutes, 16 secondsJohn's private product simply so we can test things out, right? So refresh.
6:09:236 hours, 9 minutes, 23 secondsThere we go. Go inside of John's private product here. Let's go inside. And right now, as
6:09:316 hours, 9 minutes, 31 secondsyou can see, I can load this page. But if I archive John's private product, I shouldn't be able to visit
6:09:396 hours, 9 minutes, 39 secondsthis page. So, we also have to modify the get one method. This is the get one method. And
6:09:486 hours, 9 minutes, 48 secondswhat we're going to do is simply throw an error. So, if product is archived again, we are explicitly
6:09:566 hours, 9 minutes, 56 secondslooking for this to be true. In that case, what you can do is throw new TRPC
6:10:036 hours, 10 minutes, 3 secondserror here with a code of not found and a message of product not
6:10:126 hours, 10 minutes, 12 secondsfound. And let's just import TRPC error from TRPC server. And now if you refresh here, you
6:10:226 hours, 10 minutes, 22 secondswill get this weird looking state, right? um because we don't have proper error handling now. But there we go.
6:10:296 hours, 10 minutes, 29 secondsEventually the error will be thrown. So at least the user will no longer be able to access this. But uh let's go ahead
6:10:366 hours, 10 minutes, 36 secondsand let's just improve this a little bit. Uh first thing I want to add is the loading state. So let's go inside of app
6:10:456 hours, 10 minutes, 45 secondsapp tenants home product product ID. So as you can see in here we are using use
6:10:546 hours, 10 minutes, 54 secondssuspense query but we forgot to suspense actually
6:10:596 hours, 10 minutes, 59 secondsright. So let's add the suspense from react and now we have to add a fallback
6:11:086 hours, 11 minutes, 8 secondshere loading like this. And now already this should look
6:11:166 hours, 11 minutes, 16 secondsjust a little bit better. Right? You can of course modify this even further and create a better loading state. For
6:11:236 hours, 11 minutes, 23 secondsexample, in here you can export const product view skeleton. And what you can do is just
6:11:316 hours, 11 minutes, 31 secondscopy the beginning here the image like this. You don't need anything more than
6:11:396 hours, 11 minutes, 39 secondsthat. So just return that and add the missing closing divs.
6:11:466 hours, 11 minutes, 46 secondsAnd in here, just use the placeholder.
6:11:496 hours, 11 minutes, 49 secondsAnd for the name, you can also add placeholder. And then you can use the product view skeleton instead of
6:11:576 hours, 11 minutes, 57 secondsthis. And it's already going to look a little bit better. There we go. So, it's basically loading the placeholder picture. So, now
6:12:076 hours, 12 minutes, 7 secondsthis is actually loading until it throws an error. So, we still haven't fixed that part. And we do that by creating an error.
6:12:156 hours, 12 minutes, 15 secondstsx like this. Go ahead and create a uh error page. Don't call it error because
6:12:246 hours, 12 minutes, 24 secondserror is a reserved keyword. And it's important that you mark this as use client. And then inside of here, what I
6:12:336 hours, 12 minutes, 33 secondswant to do is I want to just visit any product list component, preferably the one in the products module, and find the
6:12:406 hours, 12 minutes, 40 secondsempty state and copy it and paste it here. And instead of inbox icon, use the
6:12:476 hours, 12 minutes, 47 secondstriangle alert icon. And instead of no products found, you can do something went wrong. And then we just have to add
6:12:576 hours, 12 minutes, 57 secondssome padding here. So I'm just going to copy this padding and add it here. There we go. And now we have a nice error
6:13:066 hours, 13 minutes, 6 secondspage. So you can refresh here and you will see that when something goes wrong, you have to wait a couple of times
6:13:136 hours, 13 minutes, 13 secondsbecause React query is retrying, retrying, retrying. There we go.
6:13:186 hours, 13 minutes, 18 secondsSomething went wrong. I think this is good enough for now. Uh great. So that is one thing that we had to handle. So
6:13:256 hours, 13 minutes, 25 secondsgo ahead and now uncheck the archive and click save here and refresh this page.
6:13:316 hours, 13 minutes, 31 secondsAnd this time add it to cart. And now go to the cart here. And let's go ahead and do the following.
6:13:396 hours, 13 minutes, 39 secondsFirst, confirm that you can activate the checkout normally. You don't have to go through the checkout. Just confirm that you can activate it. And now go ahead
6:13:486 hours, 13 minutes, 48 secondsand archive this and click save. So, what we should do now is throw an error if you try to check out. So, let's go
6:13:566 hours, 13 minutes, 56 secondsinside of the checkout procedures here. And inside of here, find the purchase protected procedure. And here
6:14:056 hours, 14 minutes, 5 secondswhere you search for products, go ahead and add another query here. And that's going to be is
6:14:136 hours, 14 minutes, 13 secondsarchive not equals true. So again, we're using the exact same thing as our uh get
6:14:226 hours, 14 minutes, 22 secondsmany procedure here. Let me just scroll to it. So not equals true. We are using the reverse logic. And now if you try
6:14:326 hours, 14 minutes, 32 secondsand click checkout, there we go. You it you will see a message products not found. Whatever you're trying to find is
6:14:396 hours, 14 minutes, 39 secondsarchived. But we can improve this even further by not even allowing this product to be loaded here because this
6:14:476 hours, 14 minutes, 47 secondsshouldn't be loaded, right? You can see that even if user clicks here, it will redirect them to this error page after it loads. Let's just wait a second.
6:14:566 hours, 14 minutes, 56 secondsThere we go. So that's what I want to do here. And in order to fix that, we are also inside of the checkout procedures.
6:15:046 hours, 15 minutes, 4 secondsScroll down to get products. And inside of here, you can go ahead and add
6:15:126 hours, 15 minutes, 12 secondsand go ahead and move this one into the first query. And then in here, do the same thing. Is
6:15:206 hours, 15 minutes, 20 secondsarchived not equals true. So it's important to use this reverse logic. And it's even more important to have the
6:15:286 hours, 15 minutes, 28 secondsdefault value otherwise a lot of things could go wrong. So now when I do a refresh you will see that it's trying to
6:15:366 hours, 15 minutes, 36 secondsload. It's trying to load again and then it will fail and it will clear my cart because that product was invalid.
6:15:456 hours, 15 minutes, 45 secondsAmazing. And after you do this, here's what I suggest you do. I suggest you again go ahead and create a complete new
6:15:536 hours, 15 minutes, 53 secondsuh test untouched product simply so you can try out and convince yourself that
6:16:006 hours, 16 minuteseverything is still working right. So I'm going to go back to localhost. There we go. So test untouched product is
6:16:096 hours, 16 minutes, 9 secondsloading. I can load it. I can add it to cart and I can click check out and it
6:16:166 hours, 16 minutes, 16 secondsactually works. You don't have to go any further. This is enough. Amazing. So that's what we wanted. We wanted to do that sanity check so we know that
6:16:256 hours, 16 minutes, 25 secondseverything we just changed is working correctly. So let's go again together.
6:16:306 hours, 16 minutes, 30 secondsWe added the delete for super admins and we introduced is archived with a default value of false. And then we modified two
6:16:396 hours, 16 minutes, 39 secondsprocedures I mean two files but many procedures inside. In the checkout procedure, we modified purchase
6:16:466 hours, 16 minutes, 46 secondsprocedure and when we load the products that we try to purchase, we have added is archived is not set to true. And then
6:16:576 hours, 16 minutes, 57 secondsdown here where we actually load the products from the cart, we do the same thing but we also added an end wrap
6:17:046 hours, 17 minutes, 4 secondshere. So not equals to true. And then we use the exact same logic uh inside of get one but in here more explicitly
6:17:136 hours, 17 minutes, 13 secondsbecause it's only loading one. So we can look at the field. And in here not equals true. Uh and we also added a
6:17:206 hours, 17 minutes, 20 secondsproduct skeleton and we've added an error page and we've added a suspense.
6:17:276 hours, 17 minutes, 27 secondsGreat. So that is uh I believe a good improvement because now user can purchase a product. user can have that
6:17:356 hours, 17 minutes, 35 secondsproduct in their library and they will still be able to load it regardless if the product was deleted. If you want to,
6:17:436 hours, 17 minutes, 43 secondsyou can test out that entire flow as well, but just make sure that you have your uh stripe
6:17:526 hours, 17 minutes, 52 secondsuh let me just find the correct command. So this is the command but we have to change this
6:18:006 hours, 18 minutesto 3000 / ai stripe web hooks. So this is
6:18:106 hours, 18 minutes, 10 secondshow our listener looks like. So I'm going to expand it again so you can see stripe listen forward to local host 3000
6:18:196 hours, 18 minutes, 19 secondsAPI Stripe web hooks. So go ahead and try doing this.
6:18:246 hours, 18 minutes, 24 secondsSo you can buy a product now safely. Our platform will take a fee
6:18:326 hours, 18 minutes, 32 secondsthanks to what we've implemented in the last chapter here. So let me just ensure that this works. So I'm processing.
6:18:386 hours, 18 minutes, 38 secondsThere we go. This works just fine. My cart should be cleared now as you can see. And I will now go back and go
6:18:466 hours, 18 minutes, 46 secondsinside of my library. And there we go. I can now access the content of this untouched product here. And now if you
6:18:546 hours, 18 minutes, 54 secondsgo in here and archive this product, what's going to happen is that on here you cannot see it anymore. But in my
6:19:036 hours, 19 minutes, 3 secondslibrary, I can see it because I have purchased it before it was deleted. So that was the whole point of this. It was to allow users to preserve their orders.
6:19:146 hours, 19 minutes, 14 secondsSo we have soft delete and we have this.
6:19:176 hours, 19 minutes, 17 secondsNow I want to show you how you can allow tenants to hide their products from the marketplace. We can do that quite simple
6:19:246 hours, 19 minutes, 24 secondsagain by visiting the products collection here and similarly to is archive. If you want to you can set is
6:19:336 hours, 19 minutes, 33 secondsprivate and this will be private. Default value is also very
6:19:396 hours, 19 minutes, 39 secondsimportant. Set it to false. And in here if checked this product will not be
6:19:466 hours, 19 minutes, 46 secondsshown on the public storefront. So basically, it's like saying I only want this product on my store, not on the
6:19:546 hours, 19 minutes, 54 secondspublic storefront. So right now, let's go ahead and try and do that here. So I have John's private product. Here's what
6:20:036 hours, 20 minutes, 3 secondsI'm going to do. I'm going to archive all others. So this one is archived. Great. And this one is archived as well.
6:20:106 hours, 20 minutes, 10 secondsSo in here, let me go continue shopping.
6:20:146 hours, 20 minutes, 14 secondsI have John's public product. And I will go inside of here and unarchive this one and click
6:20:216 hours, 20 minutes, 21 secondssave. There we go. So John's private product and John's public product. So both of them exist. None of them are
6:20:296 hours, 20 minutes, 29 secondsdeleted. Both of them are visible on individual John shop and on the public storefront. But let's say John wants to private their product, not archive them.
6:20:406 hours, 20 minutes, 40 secondsThey want to private them. So it's only available on their storefront. Right now nothing changes. So what we have to do
6:20:486 hours, 20 minutes, 48 secondsis just modify one procedure and that is inside of the products here. We have to modify the get many. We are not going to
6:20:566 hours, 20 minutes, 56 secondsdo anything here. Instead we are going to check if we don't have the tenant. So
6:21:046 hours, 21 minutes, 4 secondselse here in that case go ahead and set is private to be not equals set to true
6:21:146 hours, 21 minutes, 14 secondslike this. Basically if we are specifying a tenant that means that we are loading
6:21:226 hours, 21 minutes, 22 secondselements on a tenant page right but if there is no tenant that means that we
6:21:306 hours, 21 minutes, 30 secondsare loading elements on a public storefront. So in that case if we are loading products let's write a comment
6:21:386 hours, 21 minutes, 38 secondsfor this so you understand if we are loading products for public storefront no tenant
6:21:466 hours, 21 minutes, 46 secondsslug make sure to not load products set to is private
6:21:556 hours, 21 minutes, 55 secondstrue using reverse not equals
6:22:016 hours, 22 minutes, 1 secondlogic. These products are exclusively private to the
6:22:096 hours, 22 minutes, 9 secondstenant store. There we go. So, I hope this will make you understand it a little bit better. If we are loading products for
6:22:176 hours, 22 minutes, 17 secondspublic storefront, meanings we don't have the tenant slug, we have to confirm that whatever we are loading doesn't have the is private field set to true.
6:22:286 hours, 22 minutes, 28 secondsagain using not equals and again confirm that you have the default value. So the only thing that should change here is
6:22:356 hours, 22 minutes, 35 secondsthat you cannot see John's uh private product here on the storefront regardless if I click on the correct
6:22:426 hours, 22 minutes, 42 secondscategory. But if you click on John's shop, you can see it here. Nothing else should matter. This product isn't
6:22:496 hours, 22 minutes, 49 secondsarchived. This isn't any role-based access control, right? So this is still a public product. it's just not available on the uh public storefront.
6:23:006 hours, 23 minutesSo that is the biggest difference.
6:23:036 hours, 23 minutes, 3 secondsGreat. So we have allowed this now. Now I want to add rich text element content and
6:23:106 hours, 23 minutes, 10 secondsdescription. So this is what I want you to do. I want you to log out and I want you to log in as admin.
6:23:196 hours, 23 minutes, 19 secondsThe reason I want you to do that is so that you can delete all orders, but do a hard delete here. And go ahead and
6:23:276 hours, 23 minutes, 27 secondsdelete all products. So, and you can also delete all reviews if you have them. Basically, a clean slate, right?
6:23:356 hours, 23 minutes, 35 secondsAnd then go ahead and log out and go back into John here. And this is what we're going to do now. Do not create any
6:23:436 hours, 23 minutes, 43 secondsnew products just yet. What we're going to do is we're going to add a rich text element. So the way we do that in
6:23:526 hours, 23 minutes, 52 secondspayload is by using this package right here. And if you are on the same version as me, you should already have this
6:23:596 hours, 23 minutes, 59 secondsinstalled. So here I have it. Payload CMS rich text- lexical. If you don't have it, you can
6:24:076 hours, 24 minutes, 7 secondsgo ahead and install it, but just make sure that you use the proper version.
6:24:136 hours, 24 minutes, 13 secondsYou can do that uh like this. Let me just expand this. So bun. Whoops. Why here? Let me expand this again. So bun add basically exactly like this, right?
6:24:276 hours, 24 minutes, 27 secondsAnd then after you install it, if you do it, you don't have to do it if you already have it here. But if you have to do it, then make sure you do a removal
6:24:366 hours, 24 minutes, 36 secondsof next and node modules and then bun install. If you already have it installed, you don't have to do
6:24:436 hours, 24 minutes, 43 secondsanything. Now, what you have to do next is go inside of the payload config and ensure that you use the lexical editor
6:24:526 hours, 24 minutes, 52 secondsfor your editor here. And now let's go ahead inside of our products collections
6:24:596 hours, 24 minutes, 59 secondsand go ahead and change the content to use rich text type and change
6:25:066 hours, 25 minutes, 6 secondsthe description to use rich text type as well. Now you might encounter some
6:25:146 hours, 25 minutes, 14 secondserrors during this period especially if the types haven't generated yet or if the import map was not yet generated.
6:25:226 hours, 25 minutes, 22 secondsYou can see how it's taking a lot of time and I even have some errors here.
6:25:256 hours, 25 minutes, 25 secondsDon't worry about that. That just means that it's still generating here. You can see how it's actively create generating new import maps. So, let me try and refresh again.
6:25:366 hours, 25 minutes, 36 secondsNo errors. Let's click create new product. And there we go. I I now have access to add rich text elements here.
6:25:456 hours, 25 minutes, 45 secondsSo, I will try bold. I will try itallic.
6:25:536 hours, 25 minutes, 53 secondsI will try underline like this. And you of course have many more elements but not all of these can be rendered on the
6:26:026 hours, 26 minutes, 2 secondsfront end by default. So one thing that can be uh is uploads but they are not enabled right now. So you can leave it
6:26:106 hours, 26 minutes, 10 secondslike this. I suggest you only try bold, itallic and underline because these are available by default. So, let's try rich
6:26:186 hours, 26 minutes, 18 secondstext test and just put the price here and let's add a category. No need to do anything else.
6:26:276 hours, 26 minutes, 27 secondsLet's just save this and let's go anywhere. And now you will get an error here. That's because we have to
6:26:366 hours, 26 minutes, 36 secondsmodify the product view inside of product views. In here you should get an error and you should change this to rich
6:26:456 hours, 26 minutes, 45 secondstext field. Actually just rich text. I don't think you need to use rich text
6:26:526 hours, 26 minutes, 52 secondsfield. So let's import rich text. Uh let me just wait a second. I
6:27:026 hours, 27 minutes, 2 secondshave to confirm. So I think that you can just use rich text from at at payload
6:27:126 hours, 27 minutes, 12 secondsCMS rich text lexical dash react. So let's go ahead and try this
6:27:206 hours, 27 minutes, 20 secondsnow pass in the data to be data.escription here. And if you refresh now there we go
6:27:276 hours, 27 minutes, 27 secondsbold, itallic and underline. So these work perfectly. But if you were to try some headings or some more complex blocks, uh you will see that they are
6:27:366 hours, 27 minutes, 36 secondsnot exactly rendered the same. That's because you can extend this rich text with converters. And converters are
6:27:446 hours, 27 minutes, 44 secondssomething that you can see ex they have a lot of converters here, right? And they also have these default converters.
6:27:566 hours, 27 minutes, 56 secondsConverters this will not change anything for example. uh but you can play play you know and try and creating your own.
6:28:046 hours, 28 minutes, 4 secondsI will share with you later a good guide on extending this rich text with many more elements right and we are actually
6:28:126 hours, 28 minutes, 12 secondsgoing to do one extension here. So you can just remove this for now. So for example let's go inside of
6:28:226 hours, 28 minutes, 22 secondsthe products collection here and let's go inside of the content which is rich text here. Um you can add the editor
6:28:316 hours, 28 minutes, 31 secondslexical editor from payload CMS rich text lexical and you can in here extend
6:28:416 hours, 28 minutes, 41 secondsthis with features like this. Extract the default
6:28:536 hours, 28 minutes, 53 secondsfeatures and open return an array like this. And in here spread the default features.
6:29:026 hours, 29 minutes, 2 secondsAnd then add an upload feature from payload CMS rich text lexical. And in here add
6:29:126 hours, 29 minutes, 12 secondscollections media fields. Whoops. This is an array. And then an object name and type text.
6:29:246 hours, 29 minutes, 24 secondsSo now you should be able to go inside of here. Let me just refresh. And I'm not sure if it will immediately work
6:29:336 hours, 29 minutes, 33 secondsbecause I think it needs to generate the You can see I have some errors here. So just wait for it to generate again. I
6:29:416 hours, 29 minutes, 41 secondswill pause and see if if yours is not generating no matter how much you wait, you might have to go to your package
6:29:486 hours, 29 minutes, 48 secondsJSON here and run this script. So I think that now if I refresh one more time perhaps we can try something. So
6:29:576 hours, 29 minutes, 57 secondsfor example here is my upload which only uh orders can see. And then in here
6:30:066 hours, 30 minutes, 6 secondslet's add an upload. And in here it says no upload connection enabled. But I'm pretty sure that um h I was certain that this will work.
6:30:196 hours, 30 minutes, 19 secondsPerhaps uh I can't add it here. I have to add it to the config globally. I have to enable it here. So let's do it like
6:30:286 hours, 30 minutes, 28 secondsthat. Let's copy this and paste this config inside and import upload feature from
6:30:376 hours, 30 minutes, 37 secondspayload CMS. Where is it? It's here. Upload feature. So that I basically just copied
6:30:456 hours, 30 minutes, 45 secondsexactly what I did here. And for now, I will remove the lexical editor here and remove these two. Give it a chance to
6:30:566 hours, 30 minutes, 56 secondsrerender. And let's try again. So, I'm going to go back here. I'm going to leave this refresh. Let's go inside of here. And let's go inside of content.
6:31:066 hours, 31 minutes, 6 secondsAnd let's try upload again. And still no upload collections enabled. Okay. I'm just going to pause a bit to debug why this is happening.
6:31:166 hours, 31 minutes, 16 secondsOkay, I figured out what it was. So, I tried changing the text here.
6:31:226 hours, 31 minutes, 22 secondsPreviously, we had name. So, I've changed it to al because I thought maybe the text is the problem. Uh, and here's
6:31:306 hours, 31 minutes, 30 secondswhat I learned. So, if you try and add upload like this, it's telling you no
6:31:376 hours, 31 minutes, 37 secondscollections enabled. And I think it's because of our media collection. we hide it from
6:31:456 hours, 31 minutes, 45 secondsnon-admins. So if I allow it here like this. There we go. You can see that now
6:31:546 hours, 31 minutes, 54 secondsI am allowed to do that. So I'm just going to add an image for example or a file. So I just imported a random
6:32:036 hours, 32 minutes, 3 secondsPDF. And there we go. I added that PDF here. I entered my previous rich text
6:32:096 hours, 32 minutes, 9 secondshere. And let's click save. and let's go ahead and go through the purchase. So, the only thing I'm concerned with now is
6:32:176 hours, 32 minutes, 17 secondsthat we need to have media enabled here in the uh sidebar, right?
6:32:236 hours, 32 minutes, 23 secondsSo, h yeah, maybe I will just end up disabling it all together. But there is definitely a way, you know, to have it
6:32:316 hours, 32 minutes, 31 secondsuh fixed to the tenant perhaps. So, maybe we could go to the config here and we could add media here as well. So
6:32:416 hours, 32 minutes, 41 secondsmedia also belongs to the tenant. Um that's one idea. The problem is uh I
6:32:486 hours, 32 minutes, 48 secondsdon't know what will happen if I just change media here. I don't know the implications of that. But I I'm just trying to show you all that you can do
6:32:546 hours, 32 minutes, 54 secondshere. So let's have our stripe web hook running and let's try purchasing the rich text test here. So I'm going to go
6:33:036 hours, 33 minutes, 3 secondshere. Right now you can see I don't see that secret content.
6:33:086 hours, 33 minutes, 8 secondsAnd now when I go through here and purchase the content, it should start appearing in my library and in
6:33:176 hours, 33 minutes, 17 secondsthere I should be having this super secret content right but anyway you know in the content you
6:33:246 hours, 33 minutes, 24 secondscan add any links whatever you want to share with the the users who have purchased right so let's go inside of
6:33:316 hours, 33 minutes, 31 secondsfun road library in here and I think we will now get an error here because we also need to modify the product view
6:33:396 hours, 33 minutes, 39 secondshere in the library. So let's go inside of here. If we have data content, we use
6:33:466 hours, 33 minutes, 46 secondsrich text and past pass in the data data content. Make sure you have this import
6:33:536 hours, 33 minutes, 53 secondshere and then refresh here. And there we go. You can click on this and it will open and download a
6:34:026 hours, 34 minutes, 2 secondsfile. Great. So we enabled that now. But uh again I'm now pretty sure that if I
6:34:096 hours, 34 minutes, 9 secondslog out and if I go inside of Antonio demo.com so some other user and go inside of media you can see that I can
6:34:176 hours, 34 minutes, 17 secondssee the invoice. So my idea was to uh let's do this. Let's go inside of
6:34:236 hours, 34 minutes, 23 secondsjohndemo.com and demo here. So my idea was to just delete this. Can I I can't
6:34:316 hours, 34 minutes, 31 secondsdelete them. Let me try an admin. I'm just going to delete all
6:34:396 hours, 34 minutes, 39 secondsmedia and I'm going to delete all products and I'm going to delete all orders. So basically I have no
6:34:466 hours, 34 minutes, 46 secondsconflicts, no missing data. So let me try going to antoniodemo.com. Actually I have to go inside of John because it's the only one
6:34:556 hours, 34 minutes, 55 secondswho has verified their business. And I will try going to the payload config and simply adding media here.
6:35:026 hours, 35 minutes, 2 secondsBasically, I want to ensure that uh media can only belong to a tenant, right? So, I don't want it to be shared.
6:35:116 hours, 35 minutes, 11 secondsNow, I'm going to give this time to refresh because I think it also need to needs to generate new import maps and whatnot. And let's do a refresh here.
6:35:206 hours, 35 minutes, 20 secondsAnd I'm going to create a new product now. Test sharing media. And this is my description.
6:35:296 hours, 35 minutes, 29 secondsAnd I think we can try Oops. We can try an upload here. So again, just a random invoice
6:35:386 hours, 35 minutes, 38 secondshere with a test here like this. Let's add a price. And let's click save. Oops.
6:35:486 hours, 35 minutes, 48 secondsTest.
6:35:506 hours, 35 minutes, 50 secondsAnd yeah, I'm not sure this is working as it
6:35:576 hours, 35 minutes, 57 secondsshould. So what I'm just going to do is I'm going to remove the media from the multi-tenant plug-in and I will also
6:36:056 hours, 36 minutes, 5 secondsremove it from the config here in the lexical uh editor and I will just keep the lexical editor as it was. But I just
6:36:146 hours, 36 minutes, 14 secondswanted to give you an idea of how you can extend this editor. Right? The problem we have now is that our media uh gets shared and that's not something I
6:36:236 hours, 36 minutes, 23 secondswant. So I will bring this back from the media collection. And now media should no longer be available to anyone who is not an
6:36:316 hours, 36 minutes, 31 secondsadmin. Okay. So, let me go back to my admin account here. And I recommend that you do it as
6:36:396 hours, 36 minutes, 39 secondswell. Just clear everything so it's easier to work with so you don't have any stale data here. There we
6:36:476 hours, 36 minutes, 47 secondsgo. So, let's go ahead and see if we have anything left here. So, we definitely added rich text
6:36:556 hours, 36 minutes, 55 secondselements. That's great. We can now uh provide our users with a better experience. And now let's add missing suspense rappers. Right. So I've noticed
6:37:046 hours, 37 minutes, 4 secondswe have a couple of them. We've actually added one of them. Let me pull this down. We have actually added one of them
6:37:126 hours, 37 minutes, 12 secondswhich is inside of the product view here or not? Uh no it's here in the page right
6:37:206 hours, 37 minutes, 20 secondswe had a missing suspense. What does it mean that we have a missing suspense in it means we have a product which uses use suspense query but it's not wrapped
6:37:286 hours, 37 minutes, 28 secondsin suspense. So let's search for use suspense query and let's check. So this one is called search filters. And if I
6:37:366 hours, 37 minutes, 36 secondsscroll down I can see that I have a skeleton for that which most likely means that search filters is properly wrapped in a suspense. Let's click on
6:37:446 hours, 37 minutes, 44 secondsthe review sidebar. Review sidebar seems to not have that. So I will go inside of the review form here.
6:37:526 hours, 37 minutes, 52 secondsAnd I'm going to copy this form. And I'm going to copy all the way here to the button and where the form ends. And I
6:38:006 hours, 38 minuteswill export con review form skeleton here. Let's return and paste all of
6:38:086 hours, 38 minutes, 8 secondsthis. Change the form to a div. Remove the onsubmit. You can prify this. Now this will not be dynamic. We are going
6:38:176 hours, 38 minutes, 17 secondsto assume that the loading state will look like this.
6:38:216 hours, 38 minutes, 21 secondsSo you can also change the bottom bottom one to a div. Remove the conditional here. The button will definitely be
6:38:286 hours, 38 minutes, 28 secondsrendered and it will be disabled. And in here we're going to say post
6:38:356 hours, 38 minutes, 35 secondsreview. The type will be button. In here you can go ahead and remove everything besides the text area.
6:38:436 hours, 38 minutes, 43 secondsSo just the field itself. And simply set it to be disabled. And you can do the same thing
6:38:506 hours, 38 minutes, 50 secondsfor the star picker. So we just need this. We don't need anything else.
6:38:556 hours, 38 minutes, 55 secondsRemove this. Remove this. And simply set it to be disabled. You can even format it like
6:39:026 hours, 39 minutes, 2 secondsthis. There we go. Now we have the review form skeleton. So we can go inside of the review sidebar inside of the page here. Whoops. Let's see where
6:39:116 hours, 39 minutes, 11 secondsdo we use review sidebar in the product view. Specifically library UI views product view. Let's wrap it inside a
6:39:196 hours, 39 minutes, 19 secondssuspense here. Add a fallback review form skeleton and a
6:39:276 hours, 39 minutes, 27 secondsself-closing tag. Make sure you have imported suspense from React and review form
6:39:346 hours, 39 minutes, 34 secondsskeleton. So even though we are wrapping the review sidebar, it's okay to use the review form skeleton because we know that's the only thing that's returned.
6:39:446 hours, 39 minutes, 44 secondsSo, let's use use suspense query again to see if there's something we can improve here. We just
6:39:526 hours, 39 minutes, 52 secondsdid the review sidebar. Uh, and now let's click here.
6:39:576 hours, 39 minutes, 57 secondsSo, this is the product view. Uh, the product view here is missing uh a skeleton. So, this is the modules
6:40:056 hours, 40 minutes, 5 secondslibrary product view. So, I will just copy uh all the way to I will just copy the div here. That's
6:40:146 hours, 40 minutes, 14 secondsit. So, export const product view skeleton and just close the
6:40:226 hours, 40 minutes, 22 secondsdiv. As simple as that. That's our loading state. And you can remove the link here. And actually, you can transform it into a div so it's not
6:40:316 hours, 40 minutes, 31 secondsclickable while in the skeleton phase. Now, what you have to do is you have to find where you render the
6:40:396 hours, 40 minutes, 39 secondsproduct view. And I know that we uh you can do it easily by by doing this or you can just look at
6:40:486 hours, 40 minutes, 48 secondswhere I add it. So product view you can find it in app app
6:40:556 hours, 40 minutes, 55 secondslibrary product ID that's the one with the missing missing suspense from react. Go back product view skeleton. Be careful.
6:41:076 hours, 41 minutes, 7 secondsimport the one from the library. It's a self-closing tag. And make sure you're wrapping this
6:41:156 hours, 41 minutes, 15 secondscorrectly like this. Let's continue our use suspense query search
6:41:236 hours, 41 minutes, 23 secondshere. This is the second one. But I think that this product view has a skeleton already. Let me scroll all the way
6:41:316 hours, 41 minutes, 31 secondsdown. So yes, this is the one that we just added. And this is the
6:41:386 hours, 41 minutes, 38 secondsknobbar. Let's see if the navbar has a skeleton. It does. Perfect. And I think that we can also search for hydration
6:41:466 hours, 41 minutes, 46 secondsboundary. And this way we can see if any suspense is missing. Not everything needs to have a direct suspense. For
6:41:546 hours, 41 minutes, 54 secondsexample, product list view has a suspense here, right? So it matters where you use the use suspense hook. But
6:42:016 hours, 42 minutes, 1 secondstill, this is a good way to check. So I will definitely always check but you can see that I use it inside uh these product list views are
6:42:106 hours, 42 minutes, 10 secondsrepeating themselves. So all of them are safe. Library view. Let's see that we use suspense here. So that's fine. In here we use suspense clearly here.
6:42:226 hours, 42 minutes, 22 secondsHydration boundary suspense. That is fine. In here we have the product list view and we use suspense around product
6:42:296 hours, 42 minutes, 29 secondslist. That is fine. And in here we use suspense. Excellent. So now we are handling all of those suspense cases. So we can mark this as completed as well.
6:42:406 hours, 42 minutes, 40 secondsLet's go ahead and commit these general improvements now. So I'm going to get checkout B 26
6:42:496 hours, 42 minutes, 49 secondsgeneral improvements. Git add commit 26 general
6:42:586 hours, 42 minutes, 58 secondsimprovements and git push u origin 26 general improvements like this.
6:43:076 hours, 43 minutes, 7 secondsNow we can go ahead into your GitHub and go ahead and open the new pull
6:43:146 hours, 43 minutes, 14 secondsrequest. Create a new pull request and let's see our changes. And here we have the summary.
6:43:246 hours, 43 minutes, 24 secondsWe introduced a loading placeholder for product details and review forms.
6:43:286 hours, 43 minutes, 28 secondsBasically our new suspense rappers. We added an error display page that provides clear userfriendly error messages. So we added this on the
6:43:376 hours, 43 minutes, 37 secondsproduct ID page uh which is you know the one page that I think is most likely for something to go wrong especially if you
6:43:446 hours, 43 minutes, 44 secondsknow you cannot find that uh product page. And we enhanced product descriptions which with rich text
6:43:526 hours, 43 minutes, 52 secondsformatting for a better viewing experience. And we also improved product filtering to hide archived and private products from the public storefront. We
6:44:016 hours, 44 minutes, 1 secondalso did some refactoring as uh you seen in the last part of this tutorial as always in-depth review here and we have
6:44:096 hours, 44 minutes, 9 secondstwo sequence diagrams here. Uh so in here we can see some fallbacks for our product review skeleton and in here we
6:44:186 hours, 44 minutes, 18 secondshave the logic for our archived and private videos and how our TRPC server behaves there and no comments besides
6:44:286 hours, 44 minutes, 28 secondssome nitpick comments. So, we did a very good job here. Let's go ahead and merge these
6:44:356 hours, 44 minutes, 35 secondschanges. And let's confirm that we have that 26. There we go. And now I'm just going to go back to my branch get pool
6:44:446 hours, 44 minutes, 44 secondsorigin master like this or main depending on what you use and get status to confirm that you're up to date. And
6:44:526 hours, 44 minutes, 52 secondsthere we go. Amazing amazing job. and see you in the next chapter which is one of the last chapters we are going to do.
6:45:016 hours, 45 minutes, 1 secondNot the last but one of the last chapters. In this chapter, we're going
Chapter 13: 27 Subdomain Rewrites
6:45:086 hours, 45 minutes, 8 secondsto go ahead and implement subdomain rewrites. Keep in mind that testing this
6:45:146 hours, 45 minutes, 14 secondsis quite hard in development and it will differ depending on what operating system you use and your knowledge about the hosts file in your operating system.
6:45:266 hours, 45 minutes, 26 secondsSo I am on Mac OS and uh I was able to test this locally out of the box without modifying anything at all. I cannot
6:45:356 hours, 45 minutes, 35 secondsguarantee that you will have the same experience. But lucky for us, we never have to use subdomains locally. It's
6:45:446 hours, 45 minutes, 44 secondsonly important that we enable that in production. What we're going to focus on in this chapter is implementing that
6:45:526 hours, 45 minutes, 52 secondslogic. Right? Whether you manage to test it locally or not doesn't really matter because it's production that will be the
6:46:006 hours, 46 minutessame both for me and for you. But locally, you might not be able to test this if you have a different operating
6:46:076 hours, 46 minutes, 7 secondssystem than I do. Let's start by confirming that we are on the master branch and that we
6:46:146 hours, 46 minutes, 14 secondshave uh merged all of the changes. And after that, you can do bun rundev. In this terminal, I have my stripe web
6:46:226 hours, 46 minutes, 22 secondshook. So, first thing I'm going to do is go back inside of the environment here,
6:46:286 hours, 46 minutes, 28 secondsand I'm going to add next public root domain. And that's going to be
6:46:386 hours, 46 minutes, 38 secondslocalhost 3000 basically without the protocol like this. And then I'm going
6:46:456 hours, 46 minutes, 45 secondsto go inside of my utils here. And what we're going to do here for the generate tenant URL will be the
6:46:546 hours, 46 minutes, 54 secondsfollowing. Let protocol by default will be HTTPS. But if process environment node
6:47:036 hours, 47 minutes, 3 secondsenvironment is development protocol will be
6:47:106 hours, 47 minutes, 10 secondsHTTP. Why HTTP? Because I run locally on HTTP. So that's why I will Oops. this is
6:47:186 hours, 47 minutes, 18 secondsan equal not comparison. Uh and then what we're going to do is do another
6:47:256 hours, 47 minutes, 25 secondscheck here. Uh so yeah, I'm just uh trying to find the best way that we can do
6:47:336 hours, 47 minutes, 33 secondsthis. We we might uh even be able to do it in an easier way now that I think of it. Yes, we can actually just do this.
6:47:426 hours, 47 minutes, 42 secondsSo if we are in development we can just use this right here. But if we are in
6:47:496 hours, 47 minutes, 49 secondsproduction what we are going to do is we will change this to start with let's
6:47:576 hours, 47 minutes, 57 secondskeep the protocol inside of here. There we go. So protocol that's the first part.
6:48:056 hours, 48 minutes, 5 secondsThen this and then in here we can get our domain which will be
6:48:136 hours, 48 minutes, 13 secondsprocess.environment and then you can just copy this from here like this and put an exclamation point at the end. So
6:48:226 hours, 48 minutes, 22 secondsprotocol and then in here we're going to have our domain like this and you can remove this part for
6:48:306 hours, 48 minutes, 30 secondsnow and you're just going to modify so that we first render the tenant slug and
6:48:376 hours, 48 minutes, 37 secondsthen domain like this. So basically in development we don't really care. In
6:48:456 hours, 48 minutes, 45 secondsdevelopment, we are fine with using the full tenants URL. But in production, we're going to use the protocol tenants
6:48:546 hours, 48 minutes, 54 secondsslugdomain. So this will technically be https and then
6:49:026 hours, 49 minutes, 2 secondsantonio.funroad.com because funroad.com will be written in here as next public root
6:49:106 hours, 49 minutes, 10 secondsdomain. So save it like this for now. So this is the way I want to implement it.
6:49:166 hours, 49 minutes, 16 secondsBut in order for us to test this locally, uh I will simply have to modify this a little bit so we can see it in uh
6:49:256 hours, 49 minutes, 25 secondsin local host as well. So for now this won't work in local host. So if you want
6:49:316 hours, 49 minutes, 31 secondsto um you can go to localhost here and just to confirm whether this is still working or not.
6:49:406 hours, 49 minutes, 40 secondsSo let me see do I have any product available here inside of this
6:49:476 hours, 49 minutes, 47 secondscollection. So I I'm logged in as John who has verified the Stripe account. So
6:49:536 hours, 49 minutes, 53 secondslet me click a test John product with a price of 45. And let's click save. We should be able to load it now.
6:50:036 hours, 50 minutes, 3 secondsAnd when I click here, let's see what happens if it's still working or not.
6:50:086 hours, 50 minutes, 8 secondsLooks like it's still working and you can see my URL is completely normal. And when I click on John, it should still
6:50:166 hours, 50 minutes, 16 secondswork. There we go. So I can now load John. Great. Now that we have this, what we have to do is implement the
6:50:246 hours, 50 minutes, 24 secondsmiddleware. So let's go inside of source. And we don't have any middleware file. So let's create a middleware.
6:50:336 hours, 50 minutes, 33 secondsTS. And now we have to import next request and we have to import next
6:50:416 hours, 50 minutes, 41 secondsserver next response from next server. Let's first export a
6:50:486 hours, 50 minutes, 48 secondsconfig. Inside of that config, a matcher. So this is what the matcher
6:50:556 hours, 50 minutes, 55 secondswill do. I will copy a comment that I have. So it will match all paths except
6:51:026 hours, 51 minutes, 2 secondsAPI. next static and all root files inside of public and the way that reax that
6:51:116 hours, 51 minutes, 11 secondsmatcher looks like is this. So it doesn't make sense for me to you know type it along. Uh so I'm you can pause
6:51:196 hours, 51 minutes, 19 secondsthe screen. Uh actually I'm going to add it to uh if you have access to the source code you can just copy it but I'm
6:51:276 hours, 51 minutes, 27 secondsgoing to add it to the gist uh public folder with all the assets.
6:51:336 hours, 51 minutes, 33 secondsHere you go. So, middleware matcher like this. Uh perhaps I will change this to be some other type of public GitHub uh
6:51:426 hours, 51 minutes, 42 secondswhere you can find each files individually. But for now, it's going to be something like this. Basically, if you don't want to type it, you can
6:51:506 hours, 51 minutes, 50 secondsdefinitely find it somewhere with the description link. Uh great. So we have this and now let's go ahead and export
6:52:006 hours, 52 minutesdefault asynchronous function middleware accept
6:52:066 hours, 52 minutes, 6 secondsthe request which is a type of next request. Now inside of here first let's
6:52:146 hours, 52 minutes, 14 secondsextract the URL which comes from request next URL.
6:52:196 hours, 52 minutes, 19 secondsThen let's go ahead and get the host name which is request headers get host or fall back to an
6:52:296 hours, 52 minutes, 29 secondsempty string. So what this is going to be is extracting the host name. So extract the
6:52:366 hours, 52 minutes, 36 secondshost name which for example is
6:52:446 hours, 52 minutes, 44 secondsantonio.funroad.com right or john.funroad.com.
6:52:486 hours, 52 minutes, 48 secondsfunroad.com. So that's the host name. Or it can also be localhost 3000, right?
6:52:556 hours, 52 minutes, 55 secondsSomething like that. Now let's get the root domain which is process.environment. And let me just
6:53:036 hours, 53 minutes, 3 secondscopy the key here. And you can fall back to an empty string here if it doesn't exist.
6:53:116 hours, 53 minutes, 11 secondsAnd now we're going to check if host name ends
6:53:176 hours, 53 minutes, 17 secondswith open backics dot and then root domain. In that case let's get the
6:53:266 hours, 53 minutes, 26 secondstenant slug because now we know the format. So host name
6:53:326 hours, 53 minutes, 32 secondsdotreplace open backnix dot root domain and empty string. So basically
6:53:416 hours, 53 minutes, 41 secondssince we know that the host name ends inroot doommain.com so that means
6:53:486 hours, 53 minutes, 48 secondssomething dot and then funroad.com because funroad.com is root domain. So what we
6:53:566 hours, 53 minutes, 56 secondsdo here is we replace that part with an empty string which leaves us with just a
6:54:046 hours, 54 minutes, 4 secondstenant and then what we do is we return next response rewrite new URL open back
6:54:146 hours, 54 minutes, 14 secondsslash tenants tenant slug and then join URL.pathname path
6:54:226 hours, 54 minutes, 22 secondsname and after this add request URL. So basically we are rewriting this
6:54:316 hours, 54 minutes, 31 secondsformat into our normal tenants tenants slug and then the rest of the
6:54:386 hours, 54 minutes, 38 secondspath otherwise let's return next response
6:54:456 hours, 54 minutes, 45 secondsnext like this. So the middleware should be working its magic now. So this is what I'm going to try. This is my
6:54:536 hours, 54 minutes, 53 secondscurrent URL. I will try going to john.loghost 3000. And let's see. There we go. You
6:55:036 hours, 55 minutes, 3 secondscan see that I have been redirected to John. Now I have no idea if you will be able to do the same thing because as I
6:55:126 hours, 55 minutes, 12 secondssaid testing this locally is different for everyone, right? depending on what operating system you have, depending on
6:55:206 hours, 55 minutes, 20 secondswhat you have in your hosts file, depending on what browser you use, depending on the ports, right? On a bunch of things. Uh so you can try maybe
6:55:306 hours, 55 minutes, 30 secondsit will work first time, maybe I'm being dramatic, right? But now we have to uh if it doesn't work for you, I would
6:55:386 hours, 55 minutes, 38 secondssuggest that you simply watch what's happening on my screen.
6:55:426 hours, 55 minutes, 42 secondsuh in here you can of course double check that you have written everything correctly in the middleware right but um
6:55:516 hours, 55 minutes, 51 secondsthere is a chance that it's not going to work for you so I would still suggest that you follow what I do because we still have to do some crucial changes
6:55:596 hours, 55 minutes, 59 secondshere and one of these changes is the let's go ahead and go inside of um
6:56:076 hours, 56 minutes, 7 secondsutils it's this one right here so I'm just going to go back here and I will comment this part out and
6:56:166 hours, 56 minutes, 16 secondsinstead we're now going to change the protocol to be let like this and then in here if process
6:56:256 hours, 56 minutes, 25 secondsenvironment node environment is equal to development protocol is
6:56:326 hours, 56 minutes, 32 secondsHTTP like this again same mistake for me uh there we go so we can leave it like
6:56:406 hours, 56 minutes, 40 secondsthis now and if you go yeah this now doesn't work properly anymore so you have to go manually back to localhost
6:56:496 hours, 56 minutes, 49 seconds3000 so I have modified this now uh the generate tenant URL will now redirect me
6:56:576 hours, 56 minutes, 57 secondsby itself so this is my current URL let me show you it's this but if I click here this is now my
6:57:076 hours, 57 minutes, 7 secondsURL johnlohost 3000 and then products blah blah blah right so that's how it
6:57:146 hours, 57 minutes, 14 secondsredirected me and you can see that all of other items are also doing the same thing johnlo localhost 3000 in here
6:57:236 hours, 57 minutes, 23 secondsagain John localhost 3000 John localhost 3000 so this
6:57:296 hours, 57 minutes, 29 secondsutil is most certainly working now amazing so the reason I want you to use
6:57:366 hours, 57 minutes, 36 secondsthis version is because I don't know if your will be working locally. So if yours isn't working locally, I suggest
6:57:446 hours, 57 minutes, 44 secondsthat you use our previous version which simply doesn't do this part at all. And then you can change this to constant. You can basically then remove this part.
6:57:536 hours, 57 minutes, 53 secondsSo only in production it's going to work on subdomains, right? But locally the this function will simply use the full
6:58:036 hours, 58 minutes, 3 secondsURL, right? But for now I'm going to keep it like this and instead I will console log this part out because for me
6:58:106 hours, 58 minutes, 10 secondsthese things are working. So now we have to change some things. For example when I click on fun road you can see that I
6:58:176 hours, 58 minutes, 17 secondscan't go back. So we have to go inside of the footer for the tenant and the link will now be changed specifically to
6:58:256 hours, 58 minutes, 25 secondsprocess.vironment environment next public app URL and put an exclamation point at the
6:58:346 hours, 58 minutes, 34 secondsend here. Let's refresh this part and click here. And there we go. Now you can see that it's
6:58:426 hours, 58 minutes, 42 secondsworking. So what I want to do now is the following. I want to go throughout my app and see all the places that I use
6:58:496 hours, 58 minutes, 49 secondsnext public app URL. One thing that I know already is that I use it in the source modules checkout server. So I
6:58:586 hours, 58 minutes, 58 secondswant to check every single place that I use this. So the account links links ones are completely okay /dmin that's
6:59:056 hours, 59 minutes, 5 secondsperfectly fine. But I think I use them also in the purchase protected procedure in the checkout. So you can
6:59:146 hours, 59 minutes, 14 secondssee that in here I'm using this old tenant redirect which means that in production when someone purchases something they will be redirected to
6:59:226 hours, 59 minutes, 22 secondsthis URL instead of the subdomain. So what I suggest is that we generate the
6:59:306 hours, 59 minutes, 30 secondslet's do let domain here and like this and I'm going to do if process
6:59:386 hours, 59 minutes, 38 secondsenvironment is node environment development in that case uh the domain
6:59:456 hours, 59 minutes, 45 secondswill be exactly like this. So, let's mark this inside of
6:59:536 hours, 59 minutes, 53 secondsthese template literal. Oh my god, I'm trying to remove them.
7:00:007 hoursOkay, there we go.
7:00:047 hours, 4 secondsElse do the main is going to be the following. Input tenant slug and then it will be dot process.vironment.
7:00:197 hours, 19 secondsnext public root domain and then /checkout but we actually don't need that part because we are going to
7:00:287 hours, 28 secondsappend on that part. So now here you can just replace this with the domain variable. There we go.
7:00:387 hours, 38 secondsSo now if we are in development we will go to slashtenants but otherwise oh actually
7:00:477 hours, 47 secondsuh oh I know what we can use. Why didn't I think of this? We can just use generate tenant URL and pass in the
7:00:577 hours, 57 secondsinput tenant slug. I completely forgot that we have this. There we go. This can work in
7:01:057 hours, 1 minute, 5 secondsclient too. Obviously, we're going to test this, but uh I think that this might be the last place where we need to
7:01:147 hours, 1 minute, 14 secondsdo this. I think everything else uh doesn't need any changing at all. So, what I'm going to do is I'm just going
7:01:227 hours, 1 minute, 22 secondsto enable this like this. I will remove this part completely and I will put this into a constant and I will add a little comment
7:01:307 hours, 1 minute, 30 secondshere so you know what's going on. In development mode, use normal
7:01:387 hours, 1 minute, 38 secondsrouting. In production, use subdomain routing. In production, normal routing
7:01:477 hours, 1 minute, 47 secondswill be available as well. So, I'm just doing this to show you that it's not that difficult to implement the rewrite system. And then later we're going to
7:01:567 hours, 1 minute, 56 secondshave to add a wildcard domain in our versel deployment which is going to
7:02:027 hours, 2 minutes, 2 secondsautomatically uh create these it's going to handle these infinite subdomains.
7:02:087 hours, 2 minutes, 8 secondsRight? So right now nothing should change. Everything should work exactly as it's worked
7:02:167 hours, 2 minutes, 16 secondsbefore. But one thing that just crossed my mind is actually this utilus file. Yeah. Let's let's modify this to use the process.
7:02:317 hours, 2 minutes, 31 secondsenvironment next public app URL. Why do we need this? Well, we need
7:02:397 hours, 2 minutes, 39 secondsit specifically in things like our checkout procedures here because I remembered the domain here uh would not
7:02:487 hours, 2 minutes, 48 secondshave the the full domain. So when you read, so when you pass in the URL here, it needs to have the full protocol. So
7:02:577 hours, 2 minutes, 57 secondsjust make sure that you add next public app URL here. So if you try your apps now, I
7:03:067 hours, 3 minutes, 6 secondsdon't think anything should be different. Uh this issue is from the library button, I think. Nothing too
7:03:127 hours, 3 minutes, 12 secondsserious. There we go. So everything works just fine. I can
7:03:197 hours, 3 minutes, 19 secondsquery normally. Everything is working exactly as it should. I see um no issues
7:03:277 hours, 3 minutes, 27 secondswhatsoever. Great. Uh and now I'm going to go ahead and merge these changes. So
7:03:347 hours, 3 minutes, 34 secondsI am satisfied with this. Uh I will think about this you know because this is what what this is now doing is it's
7:03:437 hours, 3 minutes, 43 secondsmaking every single time that we use this generate URL like every time it's in a link uh it's a little bit it's a
7:03:517 hours, 3 minutes, 51 secondslittle bit unoptimized now. So if you want to you can you can search like this this may be more
7:03:597 hours, 3 minutes, 59 secondsprecise but I think we also have cases like this right? So all of these URLs
7:04:067 hours, 4 minutes, 6 secondsare now being generated as full protocol URLs, which I'm not sure if it's too
7:04:137 hours, 4 minutes, 13 secondsoptimized. It will definitely work. I'm just not sure if it's like the best practice to do it this way. So perhaps
7:04:207 hours, 4 minutes, 20 secondsyou could add include or maybe full URL something like
7:04:297 hours, 4 minutes, 29 secondsthis. Yeah, I'm not 100% sure. I'm going to leave it like this and then we are going to go with this in deployment and
7:04:377 hours, 4 minutes, 37 secondsI'm going to monitor the performance and come to a conclusion like that. So we concluded that testing subdomains is
7:04:447 hours, 4 minutes, 44 secondshard in development. We have added the middleware logic to uh rewrite the tenants to subdomain and we've modified the generate tenant URL method. One
7:04:537 hours, 4 minutes, 53 secondsthing we haven't done is proper cookie settings but we did review the stripe urls. Let's go ahead and review our
7:05:017 hours, 5 minutes, 1 secondcookie settings. So, let me try and find where our utils are. Is that inside of out here? Utils generate out cookie.
7:05:127 hours, 5 minutes, 12 secondsHere it is. So, we're going to have to modify our cookie. Now, uh the name is
7:05:197 hours, 5 minutes, 19 secondsfine, the value is fine, http only is fine, and path is fine. But same site has to be set to none. domain has to be set to process.
7:05:327 hours, 5 minutes, 32 secondsenvironment next public root domain and secure needs to be set to
7:05:397 hours, 5 minutes, 39 secondstrue if we are in production like this.
7:05:477 hours, 5 minutes, 47 secondsSo name is fine value is value http only set to true path to a forward slash same
7:05:547 hours, 5 minutes, 54 secondssite none domain next public root domain which is just a domain without the protocol and
7:06:037 hours, 6 minutes, 3 secondssecure only if we are in production. Great. In case you are not
7:06:107 hours, 6 minutes, 10 secondsusing generate out cookie meaning that you are not using uh tRPC procedures because I showed you both ways of how
7:06:187 hours, 6 minutes, 18 secondsyou can log in. In that case you're going to have to modify this inside of your users collection. You can do that
7:06:267 hours, 6 minutes, 26 secondshere. I think uh not sure if admin cookies not sure where it is
7:06:347 hours, 6 minutes, 34 secondsconfig or maybe in the payload config.ts TS somewhere here you have access
7:06:437 hours, 6 minutes, 43 secondsto I'm not sure where it is now but um I would recommend using basically these ones because uh otherwise you won't
7:06:517 hours, 6 minutes, 51 secondschange uh you won't have the same cookie settings as I do. Okay, I found the settings. So it's
7:06:597 hours, 6 minutes, 59 secondsinside of AL. So for example, you would go here and you would extend out cookies
7:07:057 hours, 7 minutes, 5 secondsand then in here same site set to none and secure set to blah blah blah and domain set to blah blah blah. So that's
7:07:147 hours, 7 minutes, 14 secondshow you would do it in case you're using uh that kind of cookie. We are not. So I don't have to do it because I handle
7:07:217 hours, 7 minutes, 21 secondscookies on my own using the generate out cookie method here. So these things are
7:07:287 hours, 7 minutes, 28 secondsfine. Great. So let's go ahead and merge this and I'm going to test it in production. I will research a bit about
7:07:377 hours, 7 minutes, 37 secondsgenerate tenant URL. Basically I'm it bothers me that I feel like we are
7:07:437 hours, 7 minutes, 43 secondsreducing the speed of our app by assigning this every single time. I feel
7:07:527 hours, 7 minutes, 52 secondslike there is only one place where we actually need to do that which is in stripe right basically in the checkout
7:08:017 hours, 8 minutes, 1 secondprocedures right here. I feel like perhaps in here we could just extend it like
7:08:107 hours, 8 minutes, 10 secondsthis right and add include um let me think of a cool name.
7:08:197 hours, 8 minutes, 19 secondsWell, it actually doesn't matter. The reason it doesn't matter because in production we are going to use the full
7:08:277 hours, 8 minutes, 27 secondsuh link anyway. So it doesn't matter if we make it more optimized in development. So this is completely fine.
7:08:367 hours, 8 minutes, 36 secondsOkay, that's it for our middleware implementation. We now also added a proper cookie settings. So 27 subdomain
7:08:447 hours, 8 minutes, 44 secondsrewrites. Unfortunately, we will only be able to test it once we deploy, right? I mean, I tested locally a little bit just
7:08:517 hours, 8 minutes, 51 secondsto confirm it's not failing. Uh, but the true magic of it will be shown in
7:08:577 hours, 8 minutes, 57 secondsproduction. So, get checkout-b 27 subdomain
7:09:047 hours, 9 minutes, 4 secondsrewrites. Git add git commit 27 subdomain
7:09:117 hours, 9 minutes, 11 secondsrewrites and git push u origin 27 subdomain
7:09:187 hours, 9 minutes, 18 secondsrewrites. Let's go ahead and open a pull request to review our changes
7:09:257 hours, 9 minutes, 25 secondshere. and let's see what our reviewer has to say. Perhaps we have some critical bugs that it will notice. So here we have the summary.
7:09:357 hours, 9 minutes, 35 secondsThis poll request updates URL generation and routing for a multi-tenant application. The generate tenant URL
7:09:437 hours, 9 minutes, 43 secondsfunction now produces environment specific URLs. A development URL using an environment variable path and a production URL using a subdomain format.
7:09:527 hours, 9 minutes, 52 secondsA new middleware is added to rewrite request URLs based on the tenants's host name. Enhancements are also made to cookie settings in the authentication
7:10:017 hours, 10 minutes, 1 secondmodule and a further link is updated to use dynamic URL from the environment variables. And in here we can see two
7:10:097 hours, 10 minutes, 9 secondssequence diagrams which describe how our get uh generate tenant URL method works and also how our middleware now works.
7:10:207 hours, 10 minutes, 20 secondsIn here we have some suggestions mostly to add a fallback to our environment variables. Uh in here they have a good
7:10:297 hours, 10 minutes, 29 secondstip. Uh if same site is set to none in cookie which is something that's true for us the secure attribute has to be
7:10:397 hours, 10 minutes, 39 secondsset to true. In our case we only set it to true if process environment is production. Uh I don't think this is too
7:10:487 hours, 10 minutes, 48 secondsbig of an issue because we know that our cookies will behave differently on local host. So I will test just to confirm
7:10:557 hours, 10 minutes, 55 secondsthat uh we can still you know test out on local host but um what matters to us
7:11:037 hours, 11 minutes, 3 secondsis that it works in production. And in here it makes an interesting suggestion
7:11:107 hours, 11 minutes, 10 secondsto validate the tenant simply so we can you know avoid any errors. But I think that um we don't
7:11:197 hours, 11 minutes, 19 secondshave to do it right now. I think it's okay the way it is at the moment. In here it also recommends uh
7:11:267 hours, 11 minutes, 26 secondsvalidating the tenant and also adding some fallback to the environment variables.
7:11:337 hours, 11 minutes, 33 secondsNevertheless, I'm satisfied with these changes. So, I'm going to go ahead and merge this. So, as always, I will just confirm
7:11:417 hours, 11 minutes, 41 secondsthat I have the new branch here. There we go. And we can now go back to the master or main get pool origin. And
7:11:517 hours, 11 minutes, 51 secondsthere we go. We now have a new item in our graph here. Amazing. And we can check this off as completed. Amazing.
7:12:017 hours, 12 minutes, 1 secondAmazing job. In this chapter, we're going to go ahead and prepare our application for
Chapter 14: 28 Deployment
7:12:097 hours, 12 minutes, 9 secondsdeployment. I might split this chapter into two parts. uh depending on how long
7:12:167 hours, 12 minutes, 16 secondsit will take us just to deploy this to Verscell and also because after we deploy to Versell, the next step is to
7:12:257 hours, 12 minutes, 25 secondsadd a wildcard subdomain which will allow Versel to create infinite subdomains based on our tenants. But
7:12:347 hours, 12 minutes, 34 secondskeep in mind that in order for that to work, you're going to have to own an actual domain or you're going to have to
7:12:427 hours, 12 minutes, 42 secondspurchase a new one. I will of course guide you through the entire process regardless of if you are going to do
7:12:497 hours, 12 minutes, 49 secondsthat with me or not. So at least you will see how it's done. But if you don't want to do that in the end, I will also
7:12:567 hours, 12 minutes, 56 secondsshow you how you can easily revert the subdomain changes. I mean, it's as easy as removing the middleware and modifying
7:13:047 hours, 13 minutes, 4 secondsthe generate tenant URL method to what it was before. But anyway, let's go ahead and go through with this as we
7:13:127 hours, 13 minutes, 12 secondsimagined in the first place. As always, ensure that you are on your main branch and that you have merged everything you
7:13:197 hours, 13 minutes, 19 secondsneed to merge. You can shut down everything and let's start with bun run build. So what this is going to do is
7:13:287 hours, 13 minutes, 28 secondsit's going to run some linting and some type checking and throw us any errors if anything here is blocking from building
7:13:377 hours, 13 minutes, 37 secondsa production build. So this way we will save some time. Usually we would just deploy to versel and then we would see
7:13:447 hours, 13 minutes, 44 secondsthe errors. So in this case uh there we go. We have some errors. Error occurred rerendering the page sign in. So let's
7:13:547 hours, 13 minutes, 54 secondsgo inside of sign in here and what we have to do is we have to export const
7:14:037 hours, 14 minutes, 3 secondsdynamic force dynamic and we actually have to do this um in every page
7:14:117 hours, 14 minutes, 11 secondstsx which we call something in. So I also know that we're going to have to do it here. So we can immediately add it.
7:14:207 hours, 14 minutes, 20 secondsSo that's it for the al module.
7:14:247 hours, 14 minutes, 24 secondsLet's go ahead and run this again. I'm going to pause the video until we have some
7:14:307 hours, 14 minutes, 30 secondsresults. So, the next error I have is the library. So, let's go inside of library page right here. And I'm going
7:14:407 hours, 14 minutes, 40 secondsto add this here. And I immediately know that I'm going to have to do it here then as well. So, let's just add that.
7:14:487 hours, 14 minutes, 48 secondsThere we go. And I think that resolves the library.
7:14:547 hours, 14 minutes, 54 secondsentirely. So, let's do bun run build again. And I'm going to show you any errors that pop
7:15:007 hours, 15 minutesup. And looks like I have no other errors. You can see that all of my routes have managed to load. So, I just
7:15:097 hours, 15 minutes, 9 secondswant to double check that. As you can see, I've had to modify four page files.
7:15:157 hours, 15 minutes, 15 secondsSo, sign in, sign up, library, and library product ID here. So, I'm just
7:15:237 hours, 15 minutes, 23 secondscurious why the other ones were not problematic. For example, inside of my app here, home, I have category. So, in
7:15:337 hours, 15 minutes, 33 secondshere, I'm pretty sure that this also should have this. So, I will just preemptively add it here. and also for
7:15:417 hours, 15 minutes, 41 secondsthe subcategory. Basically, everywhere where I use uh any kind of prefetching, I'm going to add it here. So, I think
7:15:517 hours, 15 minutes, 51 secondsthat is it for the home. And now, let's go inside of tenants. So, let's first go inside of
7:15:577 hours, 15 minutes, 57 secondsthe home here page. Same thing. I'm going to check change this to be this.
7:16:047 hours, 16 minutes, 4 secondsUh I think that the reason this maybe this doesn't uh cause any problems is because it recognizes this as a dynamic
7:16:127 hours, 16 minutes, 12 secondspage because of the params. I think that's why. But still let's go and do it here in the page as well. I'm pretty sure it's because of the params. Yeah.
7:16:237 hours, 16 minutes, 23 secondsSo this actually doesn't change anything the fact that we are adding it. And let's go inside of checkout here. And in
7:16:307 hours, 16 minutes, 30 secondshere we definitely don't need it because we don't prefetch anything. So that this is fine. So in the end I have eight
7:16:387 hours, 16 minutes, 38 secondsmodified files. All of them just have that export con dynamic added. So you
7:16:457 hours, 16 minutes, 45 secondscan basically you know try and do bon run build until you have a working result. I'm just going to try one more time since I've added some changes
7:16:547 hours, 16 minutes, 54 secondsnow. Great. And now what I'm going to do is I'm going to commit these changes. So
7:17:007 hours, 17 minuteslet's go ahead and do git checkout B28 deployment. Whoops.
7:17:077 hours, 17 minutes, 7 secondsDeployment. Let's do g add get commit 28
7:17:137 hours, 17 minutes, 13 secondsdeployment and get push u origin 28 deployment. And now that we have pushed
7:17:217 hours, 17 minutes, 21 secondsthat branch, we can go to our GitHub. And in here, let's create a pull
7:17:287 hours, 17 minutes, 28 secondsrequest. Since we know every single change that we are going to have, we don't have to wait for our reviewer
7:17:357 hours, 17 minutes, 35 secondshere. I will just merge this pull request. There we
7:17:417 hours, 17 minutes, 41 secondsgo. So now let's go ahead back to master and let's pull origin so we are up to
7:17:497 hours, 17 minutes, 49 secondsdate. There we go. And now what we're going to do is we're going to go to versel.com.
7:17:567 hours, 17 minutes, 56 secondsinversel.com. Go ahead and click add new project. And in here, I'm going to select my multi-tenant e-commerce
7:18:057 hours, 18 minutes, 5 secondsproject. Inside of here, I'm going to open the environment variables, and I'm going to copy all of my variables
7:18:137 hours, 18 minutes, 13 secondsinside. So, the database URI and payload secret, they can stay the same. Stripe
7:18:207 hours, 18 minutes, 20 secondssecret key, Stripe web hook secret, next public root domain, and app URL will all have to be changed. But we are only
7:18:287 hours, 18 minutes, 28 secondsgoing to do that after we deploy. So let's go ahead and hit deploy right
7:18:367 hours, 18 minutes, 36 secondshere. Let's wait a second. And oh, so in here it's trying to build. So I'm just going to pause and tell you the
7:18:457 hours, 18 minutes, 45 secondsresults. And here we go. You can see that I have now deployed my project. So I'm going to click continue to dashboard
7:18:537 hours, 18 minutes, 53 secondshere. And you can see that now I have my uh versel.app application here. And I just
7:19:007 hours, 19 minuteswant to briefly try it. So what I'm going to try for example is logging in.
7:19:077 hours, 19 minutes, 7 secondsLet's try that. So john@demo.com and demo here. And there we go. So this let's see if it works or
7:19:177 hours, 19 minutes, 17 secondsnot. So I'm going to check my network because we modified those cookies, right? So I don't see the sign that I'm
7:19:257 hours, 19 minutes, 25 secondslogged in. This is why I want to check this. I want to see if we have uh perhaps m done something wrong here. Uh
7:19:337 hours, 19 minutes, 33 secondsthere does not seem to be any cookie here whatsoever. And I think that's
7:19:407 hours, 19 minutes, 40 secondsbecause it's saving the cookie. If you go inside of out generate out cookie, we are saving the cookie
7:19:497 hours, 19 minutes, 49 secondsunder the next public root domain. I think it's because of that. So what I'm going to do is the
7:19:567 hours, 19 minutes, 56 secondsfollowing. In order for you to fix this, at least this is what I'm going to do now. So we are exploring in real time.
7:20:037 hours, 20 minutes, 3 secondsI'm going to go ahead and get my URL.
7:20:097 hours, 20 minutes, 9 secondsAnd I'm going to go ahead inside of my settings and then environment
7:20:167 hours, 20 minutes, 16 secondsvariables. And in here I will find the next public app URL. And I will replace it with my new
7:20:257 hours, 20 minutes, 25 secondsapp URL here. And I will click save. And I'm also going to change my next public
7:20:327 hours, 20 minutes, 32 secondsroot domain. So this is not really correct, right? So this is what I will
7:20:397 hours, 20 minutes, 39 secondsdo for now. But this cannot be like this right. This has to be a actual you know
7:20:467 hours, 20 minutes, 46 secondsshop.com domain. It cannot be a subdomain on Versel like this. But just for now I want to leave it like this.
7:20:547 hours, 20 minutes, 54 secondsAnd since we have this we can now also go to Stripe
7:21:017 hours, 21 minutes, 1 secondand inside of here we can modify our web hook. Now, so
7:21:087 hours, 21 minutes, 8 secondslet's click on developers web hooks and let's click add destination events from your account
7:21:167 hours, 21 minutes, 16 secondshere and we want to look for account updated and we want to look for
7:21:247 hours, 21 minutes, 24 secondscheckout session completed. Those are the two events we look for. So let's click continue. This will be a web hook
7:21:357 hours, 21 minutes, 35 secondsendpoint and our URL will be https then the domain that you are on
7:21:427 hours, 21 minutes, 42 secondsand then slash api stripe web hooks like this and click create
7:21:507 hours, 21 minutes, 50 secondsdestination and after that you will have your new signing secret and let me just yeah make sure
7:21:597 hours, 21 minutes, 59 secondsit's not trimmed out this This is This is very poorly made. I have to click copy here because otherwise it's
7:22:067 hours, 22 minutes, 6 secondstrimmed. So yeah, make sure you click copy. I hope that copied it. And then we can go here and change the Stripe web
7:22:157 hours, 22 minutes, 15 secondshook secret. So I'm going to paste it. There we go. So this is my new Stripe web hook secret. So I'm going
7:22:247 hours, 22 minutes, 24 secondsto save this as well. So now I have new web hook secret, new public root domain, and new next public app URL. These three
7:22:337 hours, 22 minutes, 33 secondsthings can stay the same now. And once you've changed your environment variables, go to deployments, select the last one, and click
7:22:427 hours, 22 minutes, 42 secondsredeploy. And I'm just going to confirm. And I'm now going to look at the build and unpause the video when
7:22:517 hours, 22 minutes, 51 secondsit's done. And here we go. I have successfully deployed again. Now I'm going to go click here or I can just
7:23:007 hours, 23 minutesopen the app from here and I will just carefully you know look at my network tab here my application. I want to know
7:23:097 hours, 23 minutes, 9 secondswhat's going on in production with my cookies. So again I'm going to go inside of login and do
7:23:157 hours, 23 minutes, 15 secondsjohndemo.com and demo. Let's click login and let's see what happens. And now I
7:23:237 hours, 23 minutes, 23 secondscan see the cookie. So the issue was that the domain as you can see was set on the next public root
7:23:327 hours, 23 minutes, 32 secondsdomain which in turn uh before I updated my environment variables was not correct. So you can see that now inside
7:23:427 hours, 23 minutes, 42 secondsof here I have the domain set to this. I have the path I have the HTTP only. I
7:23:497 hours, 23 minutes, 49 secondshave the secure same site set to none. So basically everything that we wanted to
7:23:577 hours, 23 minutes, 57 secondsset is set correctly here. So I'm going to go inside of my dashboard here just to test if uh that is working correctly.
7:24:057 hours, 24 minutes, 5 secondsAnd I'm going to create uh a new product here. So let me just try that. Test
7:24:137 hours, 24 minutes, 13 secondsproduct $45. Let's select business and money as the category here. And I will just click
7:24:237 hours, 24 minutes, 23 secondssave. There we go. I will now go back into uh I almost said local host but now
7:24:327 hours, 24 minutes, 32 secondsit's no longer called that. What I want to do now uh there we go. So we now have this first problem. The problem is that
7:24:417 hours, 24 minutes, 41 secondsour URL this one from utils from other utils this one has noticed that we are
7:24:497 hours, 24 minutes, 49 secondsno longer in development. So it's using subdomain routing. The problem is we haven't set up subdomain routing yet.
7:24:587 hours, 24 minutes, 58 secondsBecause of that issue uh we cannot really test this out properly, right? Except by manually modifying the URL.
7:25:087 hours, 25 minutes, 8 secondsSo I'm going to show you one way that we can disable subdomain routing uh with a
7:25:157 hours, 25 minutes, 15 secondsenvironment key. So what I'm going to do is I'm
7:25:207 hours, 25 minutes, 20 secondsgoing to add next public enable
7:25:277 hours, 25 minutes, 27 secondssubdomain subdomain subdomain routing and this will be set to false like this.
7:25:397 hours, 25 minutes, 39 secondsAnd now what I'm going to do is go inside of this util right here and I'm
7:25:467 hours, 25 minutes, 46 secondsgoing to check for two things. So const is development will be if process environment node environment is equal to
7:25:547 hours, 25 minutes, 54 secondsdevelopment and then const is subdomain subdomain routing enabled will
7:26:027 hours, 26 minutes, 2 secondsbe process.environment environment. Next public enable subdomain routing like this. And we can well we
7:26:117 hours, 26 minutes, 11 secondscan always count on this being some value. You can turn it into a boolean if you want to like this. There we go.
7:26:237 hours, 26 minutes, 23 secondsAnd then we're going to check we will use normal routing either if we are in development or if not is subdomain
7:26:337 hours, 26 minutes, 33 secondsrouting enabled and I'm not sure if subdomain is one word. It is one word.
7:26:397 hours, 26 minutes, 39 secondsSo Pascal case is correct here. So in development or subdomain routing
7:26:467 hours, 26 minutes, 46 secondsdisabled mode use normal routing like this. So unless we explicitly pass a
7:26:537 hours, 26 minutes, 53 secondsvariable which will set this to true, we are not going to uh use this type of
7:27:017 hours, 27 minutes, 1 secondrouting right here. So depending on this you can also now you know
7:27:097 hours, 27 minutes, 9 secondsmodify the out cookie here to technically not uh it could technically
7:27:157 hours, 27 minutes, 15 secondshave the same site now and uh the domain is not needed in this way. But I think it will still work regardless of uh
7:27:247 hours, 27 minutes, 24 secondsthis. So I think this is a good change, right? And let's do I'm not even going
7:27:317 hours, 27 minutes, 31 secondsto test it. Maybe this will uh prove a a bad idea, but let me just confirm. I'm
7:27:387 hours, 27 minutes, 38 secondsjust going to add 28 deployment fix. So I'm not even going to create a branch here. I'm just going to
7:27:477 hours, 27 minutes, 47 secondspush this change. And the reason I'm going to push the change directly is that everything that gets pushed on the
7:27:547 hours, 27 minutes, 54 secondsmaster branch is immediately a new build. So I'm just going to open this build and I'm going to wait and then I'm
7:28:027 hours, 28 minutes, 2 secondsgoing to try the app again. So while this successfully deployed, I actually noticed one mistake
7:28:107 hours, 28 minutes, 10 secondshere in is subdomain routing enabled. Uh the reason the way this has to work is by literally comparing it to the string
7:28:197 hours, 28 minutes, 19 secondstrue like this. Uh because in here it really doesn't matter what else you put.
7:28:277 hours, 28 minutes, 27 secondsIt will only be activated if it is set to true. But uh environment variables can only be strings. So that's the only
7:28:357 hours, 28 minutes, 35 secondsway we can truly know that the user wants to enable subdomain routing by writing true like this.
7:28:437 hours, 28 minutes, 43 secondsSo I would highly recommend doing this change because it's the correct thing to do. Uh so let me just confirm that this
7:28:507 hours, 28 minutes, 50 secondslogic is fine. I think everything here makes sense. So I will just do another commit
7:28:577 hours, 28 minutes, 57 secondshere. 28 deployment fix 2 and direct get push without a new branch. So we save
7:29:057 hours, 29 minutes, 5 secondssome time here. Uh and this will cause another uh build here. So again, I'm
7:29:127 hours, 29 minutes, 12 secondsgoing to show you the results after it builds. And here we go. Another successful deployment. And this time,
7:29:217 hours, 29 minutes, 21 secondshopefully we will be able to click on this without subdomain routing. Let's click. And hopefully no error. And it's
7:29:307 hours, 29 minutes, 30 secondsloading. And it loaded. Amazing. Amazing job. And I can click add to cart here.
7:29:377 hours, 29 minutes, 37 secondsAnd it should also completely allow us to purchase this. So let's go to the
7:29:437 hours, 29 minutes, 43 secondscheckout. And this time we don't need to have our web hook running because we changed the web hook secret. And this
7:29:517 hours, 29 minutes, 51 secondstime it should all be running on our deployed app. So let me go ahead and click pay. And this definitely won't
7:30:007 hours, 30 minutesfail this part. But the question is uh will our web hook do a proper job here? So, this definitely seem to be working.
7:30:087 hours, 30 minutes, 8 secondsAnd let's go uh back to fun road
7:30:187 hours, 30 minutes, 18 secondshere. So, something here seems off with this button. It should be redirecting me
7:30:267 hours, 30 minutes, 26 secondsto the root page, but it does not seem to be doing that. But uh clicking on
7:30:347 hours, 30 minutes, 34 secondsJohn seems to be doing that. Or maybe it was just loading. Uh I'm not sure which one it was. But okay, now I can go. And
7:30:427 hours, 30 minutes, 42 secondsnow let's go inside of library here. Uh looks like no products found, which would mean that something here went wrong, which is completely okay. We're
7:30:507 hours, 30 minutes, 50 secondsgoing to explore what happened. So we have the events here and we have logs
7:30:577 hours, 30 minutes, 57 secondshere. So let's see uh what happened exactly.
7:31:037 hours, 31 minutes, 3 secondsSo I think I debugged why we are not creating new orders. I think it's because our web hook never even gets
7:31:117 hours, 31 minutes, 11 secondsreached and I think it has something to do with how I set up the new destination web hook here. So let's try this again.
7:31:197 hours, 31 minutes, 19 secondsClick on developers and go to web hooks.
7:31:227 hours, 31 minutes, 22 secondsAnd this is basically the URL that we want. It's this one. But this one you can see it doesn't even fail. So it
7:31:287 hours, 31 minutes, 28 secondsnever even fires. So what I'm thinking is that I have to add a different kind of destination here. So let me close
7:31:377 hours, 31 minutes, 37 secondsthis developers web hooks add destination and this time select connected accounts and then let's do the
7:31:457 hours, 31 minutes, 45 secondssame thing. So we are looking for account updated and we are looking for checkout session completed. Let's click
7:31:537 hours, 31 minutes, 53 secondscontinue. web hook endpoint. The URL is our versel app-I mean slappi stripe web
7:32:027 hours, 32 minutes, 2 secondshooks and click create destination. So events from connected accounts. I think this is what we had to do. Reveal the signing secret. Copy the signing secret.
7:32:137 hours, 32 minutes, 13 secondsGo inside of your settings environment variables and modify the stripe web hook
7:32:207 hours, 32 minutes, 20 secondssecret. And yes, you're going to have to redeploy again. I'm so sorry, but let's go and try this again. Uh, I'm going to
7:32:287 hours, 32 minutes, 28 secondsgo ahead and just redeploy my latest change and then we're going to try the checkout again. So, I just redeployed and I'm going to try the checkout again.
7:32:407 hours, 32 minutes, 40 secondsHopefully, this time creating an order.
7:32:447 hours, 32 minutes, 44 secondsSo, I'm going to click pay here and I can monitor my logs here. So
7:32:527 hours, 32 minutes, 52 secondsin here we might see after a checkout purchase um our web hooks should be hit but let's
7:33:007 hours, 33 minutessee. So it redirected back and let's see if we have any events here
7:33:087 hours, 33 minutes, 8 secondshappening. We do have some things but uh I still don't think I'm seeing the event I want.
7:33:197 hours, 33 minutes, 19 secondsLooks like it did succeed, but after some time. So, I'm going to go ahead and
7:33:267 hours, 33 minutes, 26 secondstry this again now. So, let me go uh I'm not going to try the again. I'm just going to go here. Perhaps it's just something with connection. I don't know.
7:33:367 hours, 33 minutes, 36 secondsBut let's see if our library There we go. Finally. Uh I can now view the product and I can uh leave a rating.
7:33:467 hours, 33 minutes, 46 secondsGreat. Perhaps it's just the MongoDB connection. Uh, an unlucky moment here, right? And maybe the web hook just
7:33:557 hours, 33 minutes, 55 secondsneeded some longer time to connect. But there we go. I can see the button view in library. Amazing. So, our deployment
7:34:047 hours, 34 minutes, 4 secondsofficially now works. Uh, if you want, you can test out some other things here, but I'm pretty uh satisfied with this.
7:34:137 hours, 34 minutes, 13 secondsUh, one thing that perhaps we can try is if the media here is working. So, I'm going to go and add an image here to my
7:34:237 hours, 34 minutes, 23 secondstenant. Here we go. And let's write test here. Uh, and the reason this went wrong
7:34:317 hours, 34 minutes, 31 secondsis something that I thought might happen. I think it's because we haven't added proper way to store our images. we
7:34:397 hours, 34 minutes, 39 secondsare only using uh this media folder here right so that's why I wanted to try this first don't worry I will show you what
7:34:487 hours, 34 minutes, 48 secondsyou can do and I think we can actually also do it very quickly but I'm going to leave that for the next chapter as I
7:34:557 hours, 34 minutes, 55 secondssaid I just want to uh deploy it to cell right now so in this case you can see I cannot save this and that's because we
7:35:037 hours, 35 minutes, 3 secondshaven't added proper storage here but if you look at payload load CMS and search in the docs for the storage adapters.
7:35:147 hours, 35 minutes, 14 secondsHere you can see that there are a lot of options from Verscell, S3, Asure, Google
7:35:217 hours, 35 minutes, 21 secondsCloud Storage and even upload thing and I think that maybe adding Verscell blob storage might be the easiest thing. So
7:35:307 hours, 35 minutes, 30 secondsperhaps we can't try it here, but I would rather we do it in the next chapter where I also do the subdomain configuration. For now, we at least got
7:35:397 hours, 35 minutes, 39 secondsthe main parts of the app working, right? Everything is deployed. Our web hooks are working. We had a little hiccup with connection and we learned
7:35:487 hours, 35 minutes, 48 secondsthat we need to set the web hook to listen to connected accounts. And we've also added a very important environment
7:35:557 hours, 35 minutes, 55 secondsvariable which we're going to have to turn to true in production when we want to use subdomain routing. Amazing
7:36:027 hours, 36 minutes, 2 secondsamazing job. So that's it for the 28th deployment chapter. And in the next one, we're going to go ahead and fix these
7:36:107 hours, 36 minutes, 10 secondslast few issues that we have and configure a wildcard domain for uh subdomain routing.
Chapter 15: 29 Storage Adapter
7:36:197 hours, 36 minutes, 19 secondsSo I want to have a separate chapter for adding the storage adapter just in case it gets complicated. So we're going to go ahead
7:36:287 hours, 36 minutes, 28 secondsand add the Verscel blob as our storage adapter since we are already deploying on Versel. So let's go ahead and first
7:36:377 hours, 36 minutes, 37 secondsinstall the package here. I'm going to go ahead and do bon at
7:36:447 hours, 36 minutes, 44 seconds3.33.0. So, we need to use the same version that we have the rest of our payload
7:36:517 hours, 36 minutes, 51 secondsin. Let's go ahead and add this right here. Let's just wait a few seconds.
7:36:597 hours, 36 minutes, 59 secondsThere we go. And once we have added that, we have to import versel blob
7:37:067 hours, 37 minutes, 6 secondsstorage from our payload.config.ts. So, I'm going to import it here. There we go. Versel blob
7:37:147 hours, 37 minutes, 14 secondsstorage. And now we add it to the plugins. So let's go down here and let's
7:37:207 hours, 37 minutes, 20 secondsreplace this comment with versel blob storage. And inside of here let's add
7:37:277 hours, 37 minutes, 27 secondsenabled to true like this. And now we have to specify which collections should
7:37:357 hours, 37 minutes, 35 secondsuse versel blob storage. So I'm going to set media to true like this. And then
7:37:427 hours, 37 minutes, 42 secondswhat we have to add let me just see where. So after this we have to add a token and the token is
7:37:517 hours, 37 minutes, 51 secondsprocess.environment blob read write token. So this seems to be working you
7:37:597 hours, 37 minutes, 59 secondsknow without any issues so far. And now we just have to obtain the blob write token. So I don't think that um anything here needs further modification.
7:38:097 hours, 38 minutes, 9 secondsUh we do see some instructions here. So configure the collections object to specify which collections should use the versel blob adapter. The slug must match one of your existing collection slugs.
7:38:207 hours, 38 minutes, 20 secondsThat is done. We have the media slug blob readr token set in the versel environment variables. This is usually
7:38:277 hours, 38 minutes, 27 secondsset by versel automatically after adding blob storage to your project. Okay, that seems hopeful. We'll see. When enabled,
7:38:347 hours, 38 minutes, 34 secondsthis package will automatically set disable local storage to true for each collection. When deploying to Versell, server uploads are limited with 4.5
7:38:437 hours, 38 minutes, 43 secondsmegabytes. Set client uploads to true to do uploads directly on the client. Okay, so that is useful information for you to have right here. So if you want to, you
7:38:527 hours, 38 minutes, 52 secondscan change this to client uploads to true if you want large files, it seems.
7:38:567 hours, 38 minutes, 56 secondsI'm going to leave it like this now. And this is what I'm going to do. I'm going to get checkout
7:39:057 hours, 39 minutes, 5 secondsB29 storage adapter. Get add commit 29 storage
7:39:137 hours, 39 minutes, 13 secondsadapter and get push new origin 29 storage adapter. So I'm doing it this way so we have proper git
7:39:227 hours, 39 minutes, 22 secondshistory. So I'm going to go inside of my GitHub here. I will create a pull request and I can immediately merge it since we know exactly the changes we have made.
7:39:317 hours, 39 minutes, 31 secondsRight, we haven't done anything drastic and this will now uh immediately cause once we merge it. This will now cause a
7:39:397 hours, 39 minutes, 39 secondsnew deployment on Versel but not it will not work just yet because we don't have the blob read
7:39:467 hours, 39 minutes, 46 secondswrite token but what we can do is we can go to our project. You can see that now I have a new deployment here. So let me just cancel this deployment.
7:39:567 hours, 39 minutes, 56 secondsYou can cancel the preview deployment and you can let the production deployment run if you want to. Uh, and now let's go inside of storage here and
7:40:057 hours, 40 minutes, 5 secondslet's create blob storage. I'm going to leave the name as it is and I'm going to set it for development, preview, and
7:40:147 hours, 40 minutes, 14 secondsproduction. Let's see the advanced options. Um, so yeah, it asks you if you want to name your environment variable somehow. So blob read write token is
7:40:227 hours, 40 minutes, 22 secondsexactly what we need. So I'm just going to write connect here and hopefully that
7:40:297 hours, 40 minutes, 29 secondswill be it. So I think we now have to cancel. Uh I don't want to cancel the deployment. I'm going to let this
7:40:377 hours, 40 minutes, 37 secondsdeployment go actually uh because it's my main master deployment. So if you have canceled yours, you can just push
7:40:457 hours, 40 minutes, 45 secondssomething to master. So get checkout get pull origin master like this.
7:40:547 hours, 40 minutes, 54 secondsAnd then you can just do some small change and then push to master and that will trigger a new build. And now just
7:41:007 hours, 41 minutesfor you to know you should now have uh if you want to you can add versell
7:41:077 hours, 41 minutes, 7 secondsblob and add this to your environment variable. So this isn't committed so it won't change anything but there we go.
7:41:157 hours, 41 minutes, 15 secondsNow it's here. Uh so I'm just going to let this deploy and then I'm going to redeploy. So wait for this to deploy
7:41:237 hours, 41 minutes, 23 secondscompletely and then go ahead and click redeploy. I'm going to skip that whole process for you. There we go. So I'm just going to click redeploy now and
7:41:317 hours, 41 minutes, 31 secondsclick redeploy. So after my deployment which was successful, I attempted to access
7:41:387 hours, 41 minutes, 38 secondsthe dashboard but this happened. It's just a blank screen. So what I did was I went to debug locally.
7:41:497 hours, 41 minutes, 49 secondsIn order to do that, I first went into my settings and I grabbed my new environment variable for the blob read
7:41:567 hours, 41 minutes, 56 secondswrite key and then I just populated it here so I can test this locally. I then ran the app locally and I've noticed the
7:42:057 hours, 42 minutes, 5 secondserror. So now locally I can't access admin either. You can see I see the
7:42:137 hours, 42 minutes, 13 secondserrors here. So this is what I'm going to do first. I'm going to do bun run. My apologies,
7:42:207 hours, 42 minutes, 20 secondsrmrf.next node modules because uh my doubt is that when we installed the storage versel blob, the
7:42:297 hours, 42 minutes, 29 secondslock file got messed up the same file the same way the plug-in multi-tenant caused it to mess up. So I will do a bun
7:42:367 hours, 42 minutes, 36 secondsinstall again here. And I just want to see if now exactly which changes here
7:42:447 hours, 42 minutes, 44 secondshappen now if any. So first I'm just going to try uh
7:42:527 hours, 42 minutes, 52 secondsbun run generate types. I'm also going to run this
7:43:007 hours, 43 minutesmanually. And after this I'm going to do bun rundev. So I'm still not seeing any
7:43:097 hours, 43 minutes, 9 secondsfiles changed here. Uh in here I'm just reading some documentation. So I will just continue uh trying this until well
7:43:177 hours, 43 minutes, 17 secondswe resolve it. That's the only thing we can do. So I was thinking that maybe a lock file will change or something. I
7:43:257 hours, 43 minutes, 25 secondsjust want to see what exactly is going on. So I'm going to go again into the dashboard and see do we have the same errors.
7:43:347 hours, 43 minutes, 34 secondsSo I'm still getting the same error here basically that there is a file that they cannot find here the component that they
7:43:427 hours, 43 minutes, 42 secondscannot find and it's it is definitely related to this package that we have installed. I found a GitHub issue
7:43:527 hours, 43 minutes, 52 secondsdescribing this exact bug and you can see that people have problems with versel blob here but also S3 client
7:44:007 hours, 44 minuteshandlers here. So I think that maybe we all somehow got into the same issue. I'm
7:44:077 hours, 44 minutes, 7 secondsgoing to try and do alongside this also bun. So this will be another thing I'm
7:44:157 hours, 44 minutes, 15 secondsgoing to try. Perhaps the whole lock file is incorrect and we need to rebuild that as well. So I'm going to run bun
7:44:237 hours, 44 minutes, 23 secondsinstall. And now I think we are actually going to get a new bun lock file uh which will be uh something we can push
7:44:327 hours, 44 minutes, 32 secondsto uh to GitHub and something we can deploy Verscell on which might cause a difference in production. So this is my next attempt at resolving this.
7:44:457 hours, 44 minutes, 45 secondsAll right, I finally managed to get it working locally and I'm going to show you everything that I did and all the
7:44:547 hours, 44 minutes, 54 secondserrors that I got. So you can see I have some changes. So the first thing that I
7:45:017 hours, 45 minutes, 1 seconddid right here was I remove after I removed my LO file, I started getting
7:45:087 hours, 45 minutes, 8 secondsthese errors. I'm going to show you these ones, incorrect peer dependencies, because payload has a new version at the
7:45:167 hours, 45 minutes, 16 secondstime I'm making this video. So, I was on a version 33 if you remember. And then I
7:45:237 hours, 45 minutes, 23 secondswas like, okay, I'm just going to start it and let's see. And you can see that it told me to upgrade to 3.34.0. So, that's exactly what I did.
7:45:317 hours, 45 minutes, 31 secondsLet me show you. I have replaced all of my versions of payload CMS to 3.34. It's very easy to do because they
7:45:407 hours, 45 minutes, 40 secondsare all here. And I also removed the carrots. So you should now see and change all of these to whatever is the
7:45:487 hours, 45 minutes, 48 secondslatest version of payload. In this case, it's 3.34. The error itself will tell
7:45:547 hours, 45 minutes, 54 secondsyou what version it is. And after I did that, you can see that I removed my node modules and my bun lock again. I ran bun
7:46:037 hours, 46 minutes, 3 secondsinstall. And then I tried running the app again, but still I ran into the versel blob client upload handler
7:46:127 hours, 46 minutes, 12 secondsissue. And then I actually ran just ran this command which they told me to
7:46:197 hours, 46 minutes, 19 secondsdo. So I went ahead and did bun run payload generate import map. And would you guessed it, perhaps I could have
7:46:287 hours, 46 minutes, 28 secondsdone that the first time around and didn't even have to update anything. But after I did that, you can see that now the import map has this file that it
7:46:377 hours, 46 minutes, 37 secondskept talking about. So hopefully this is the fix for production as well. So I'm just going to go ahead and do git add
7:46:467 hours, 46 minutes, 46 secondshere. I'm going to do git commit. And uh I think that we already
7:46:537 hours, 46 minutes, 53 secondsuh I mean this everything that I've changed here is kind of autogenerated so it's not that important. So I can push
7:47:007 hours, 47 minutesit directly to prod. So I'm just going to go ahead and call this uh storage
7:47:087 hours, 47 minutes, 8 secondsadapters fix like this and get push. So adding git push will now cause the
7:47:187 hours, 47 minutes, 18 secondsproduction to have a new deployment right here. And hopefully this time we will see it working in production as
7:47:277 hours, 47 minutes, 27 secondswell. And here we have it finally in production. The dashboard is now working
7:47:347 hours, 47 minutes, 34 secondsand I was able to go to my profile, go to the tenant and guess what? I was able
7:47:417 hours, 47 minutes, 41 secondsto do an upload. So the uploads are now officially working which means that on
7:47:487 hours, 47 minutes, 48 secondsthe application here when we click on John, there we go. You can see that it's working. It is loading my picture right
7:47:557 hours, 47 minutes, 55 secondshere and it's also loading it uh in here in the product view. Amazing. Amazing
7:48:027 hours, 48 minutes, 2 secondsjob. You can also confirm that uh by going inside of your versel here storage
7:48:117 hours, 48 minutes, 11 secondsand I think that now you should see something. There we go. There's an image here. Excellent. So, looks like the
7:48:187 hours, 48 minutes, 18 secondsproblem was in the import map. This was the crucial thing. So, you can see in here the crucial thing was the change of
7:48:267 hours, 48 minutes, 26 secondsthe import map. Looks like the bun lock was not as important. We just needed to run that command that the terminal was
7:48:347 hours, 48 minutes, 34 secondsactually telling us to do the entire time. Uh just running this command. So if you're having this issue, just run this command and everything will be solved for you. Amazing. That works now.
7:48:467 hours, 48 minutes, 46 secondsSo we can officially cross this off now. There we go. We added a storage adapter.
7:48:517 hours, 48 minutes, 51 secondsWe pushed to GitHub and we deployed to our cell. So in the next chapter, we're going to go ahead and do wildcard subdomain.
Chapter 16: 30 Wildcard Subdomain
7:49:017 hours, 49 minutes, 1 secondSo now in this last chapter, we're going to go ahead and enable subdomain routing by purchasing a domain and enabling a
7:49:107 hours, 49 minutes, 10 secondswildcard subdomain using Versel. So the first thing we have to do is purchase a domain or you can of course transfer an
7:49:187 hours, 49 minutes, 18 secondsexisting one. So in your project in the settings you have domains. So you can click add and you can select any
7:49:267 hours, 49 minutes, 26 secondsexisting domain that you have. It's important that it's not a versel.app free domain. For the sake of
7:49:347 hours, 49 minutes, 34 secondsdemonstration, I'm going to purchase a new domain here. For example,
7:49:417 hours, 49 minutes, 41 secondsfunroad.dev for $14. So, I ended up uh getting a new
7:49:497 hours, 49 minutes, 49 secondsdomain. Uh the one wasn't available, so I just used a name that definitely won't be taken. There we go. the domain was
7:49:567 hours, 49 minutes, 56 secondspurchased. So, let's go ahead and click here. Uh oh, look like it actually uh I actually succeeded with the fun road.
7:50:047 hours, 50 minutes, 4 secondsGreat. Perfect. So, I can use both of them now. So, I have these domains now and they will probably take some time to
7:50:127 hours, 50 minutes, 12 secondspropagate, but I will still show you the process of how you would use them. So, for example, go to your project, go
7:50:197 hours, 50 minutes, 19 secondsinside of settings, and go inside the domains here. Go ahead and click add a domain. I'm going to select
7:50:267 hours, 50 minutes, 26 secondsfunroad.dev like this. And I will not apply any redirect. I will just add the domain. And in here it will ask you to
7:50:367 hours, 50 minutes, 36 secondsadd this and redirect funroad.dev. But you should not do
7:50:437 hours, 50 minutes, 43 secondsthis. Instead, just choose add funroad.dev. Let's wait a second to see
7:50:517 hours, 50 minutes, 51 secondsif this will be successful. If not, I have another domain here to try. And now after you have added this,
7:50:597 hours, 50 minutes, 59 secondsgo ahead and add it again. You can click add domain. Just add
7:51:077 hours, 51 minutes, 7 secondsfunroad.dev if it will allow me. Uh let's see. Because we need to have two of them. And then we're going to edit one and we're going to give it an a uh an asterisk at the front.
7:51:217 hours, 51 minutes, 21 secondsSo, let's select the domain and click add domain. And now let's see if it's going
7:51:287 hours, 51 minutes, 28 secondsto appear here again. Uh perhaps we have to do it this
7:51:347 hours, 51 minutes, 34 secondsway. I will go ahead and add an asterisk here and then save
7:51:467 hours, 51 minutes, 46 secondsthis. And then after I did this, I just repeated the process, right? So, first you have to rename it and then add the
7:51:547 hours, 51 minutes, 54 secondsdomain again and and just make sure to not add the WW redirect. So, you should have this one and you should have this
7:52:037 hours, 52 minutes, 3 secondsone. Now, of course, it will take some time for this to propagate, but you can already try it. So, I'm going to go to
7:52:107 hours, 52 minutes, 10 secondsfunroad.dev. Uh, and right now, nothing much should really change here. So we are still using the normal tenant
7:52:177 hours, 52 minutes, 17 secondsrouting here, right? The dashboard still works the same. Everything should work exactly the same. But in order to test out the subdomain routing for the first
7:52:267 hours, 52 minutes, 26 secondstime now, uh what we have to do is the following. We now have our new domain
7:52:337 hours, 52 minutes, 33 secondsfunroad.dev. So copy this URL. And now we have to go inside of settings environment variables and we have to
7:52:417 hours, 52 minutes, 41 secondsmodify the next public root domain. So this one just change it to
7:52:487 hours, 52 minutes, 48 secondsthis. So this is the root domain. Click save. Then modify the next public app
7:52:577 hours, 52 minutes, 57 secondsURL. So this will use https like this without the forward
7:53:077 hours, 53 minutes, 7 secondsslash. And then we also have to add a new environment variable here which is
7:53:157 hours, 53 minutes, 15 secondsbasically enabling subdomain routing. So set this to true. This is
7:53:247 hours, 53 minutes, 24 secondsokay. And we're going to add it to all environments. So just click save like this. We are not going to
7:53:327 hours, 53 minutes, 32 secondsredeploy yet. And the reason we are not going to redeploy is because we need to update the stripe web hook secret.
7:53:387 hours, 53 minutes, 38 secondsRemember we just modified our next public app URL. So ensure that you're using the correct protocol here. Ensure
7:53:467 hours, 53 minutes, 46 secondsthat this is how it should look like. We now have to go back to uh Stripe dashboard. And inside of Stripe
7:53:557 hours, 53 minutes, 55 secondsdashboard, we have to modify our web hooks. So let's go inside of developers web hooks. And this is the
7:54:037 hours, 54 minutes, 3 secondsone that works. So the one listening from events to connected accounts and I have to edit the destination here. And I
7:54:117 hours, 54 minutes, 11 secondsjust have to modify this part to go to funroad.dev/appi uh stripe web hooks.
7:54:197 hours, 54 minutes, 19 secondsThere we go. Save destination. Uh, and I'm just going to copy the new signing secret. I'm not sure if it's the new one
7:54:277 hours, 54 minutes, 27 secondsor not. Maybe it's exactly the same, but uh I will update it either way. It looks like it's exactly the same. Just make sure you're editing the web hook secret.
7:54:377 hours, 54 minutes, 37 secondsYeah, it is exactly the same one, but still I just want to save. I'm going to double check here. So 6V and XY.
7:54:477 hours, 54 minutes, 47 secondsLet's confirm that 6V and XY. Yeah, it's the same one.
7:54:557 hours, 54 minutes, 55 secondsPerfect. So, make sure that you have added next public enable subdomain routing set to true, next public app URL
7:55:027 hours, 55 minutes, 2 secondsto this, and the next public root domain to this. And after that, go inside of your deployments and simply redeploy the
7:55:107 hours, 55 minutes, 10 secondslast one. And there we go. So I have a deployment here. So what I'm going to do
7:55:197 hours, 55 minutes, 19 secondsis I'm just going to enable development mode here. So you can see my URL here.
7:55:247 hours, 55 minutes, 24 secondsAnd if I click on this, it will redirect me to a new URL. I also have to enable it here.
7:55:367 hours, 55 minutes, 36 secondsjohn.funroad.dev/roucts. If I click here, it will redirect me to john.funroad.dev. So, our app is
7:55:447 hours, 55 minutes, 44 secondsofficially working. Amazing, amazing job. And here's an important thing that you have to test in here. Keep an eye on
7:55:537 hours, 55 minutes, 53 secondsyour cookies. I have no cookies here because this is a new domain. So, I will log in as
7:56:007 hours, 56 minutesJohn. And the cookie is now set for funroad. And an important thing to confirm is that when you click here and
7:56:097 hours, 56 minutes, 9 secondsget redirected to new website, does the cookie stay here? In my case, it does.
7:56:177 hours, 56 minutes, 17 secondsSo this is very important because otherwise you would not be able to use the checkout button at all in production. Amazing. So we can confirm
7:56:267 hours, 56 minutes, 26 secondsthis works. So what we can do now is we can just create another product just for funds.
7:56:327 hours, 56 minutes, 32 secondsSo test multi-tenant subdomain and this is the price. Let's
7:56:387 hours, 56 minutes, 38 secondssave this and let's go back to funroad.dev. So when I click here I am
7:56:467 hours, 56 minutes, 46 secondsnow redirected to a completely new subdomain. I will click add to cart here. And when I click checkout I get no errors because I am logged in. Right?
7:56:577 hours, 56 minutes, 57 secondsExactly uh what we wanted. And of course, we can test this out to confirm if it's working or not. But of course,
7:57:057 hours, 57 minutes, 5 secondsthe last time uh it took some time to connect to the web hook. So perhaps if it doesn't work immediately, it will just take some time for this to connect.
7:57:147 hours, 57 minutes, 14 secondsI will check either way. And there we go. I was lucky this time. Looks like it's very fast now. Uh everything is
7:57:217 hours, 57 minutes, 21 secondsworking super smoothly. The subdomains are working. Every single thing is working. Thank you so much for following
7:57:297 hours, 57 minutes, 29 secondsthis tutorial through the end. Uh I really gave it my best to give you the true multi-tenant marketplace
7:57:377 hours, 57 minutes, 37 secondsexperience. We added as many things as we could. I think the application looks very unique and beautiful. It's
7:57:447 hours, 57 minutes, 44 secondsresponsive. We have a bunch of things we've learned. We've used amazing technologies here. Uh and it works
7:57:527 hours, 57 minutes, 52 secondsright. And we have the stripe connect and the sharing everything. Amazing, amazing job. We purchased a domain,
7:57:597 hours, 57 minutes, 59 secondsconnected the domain, added a wildcard subdomain and enabled subdomain routing and redeployed to Verscell. Thank you so
7:58:087 hours, 58 minutes, 8 secondsmuch again. Amazing job and see you in the next tutorial. After our recent changes to
Chapter 17: 31 Cookie Bugs
7:58:177 hours, 58 minutes, 17 secondsdeployment cookie settings, we actually introduced a couple of bugs. So I want to dedicate this chapter to fixing those
7:58:277 hours, 58 minutes, 27 secondsbugs so that we have a working application on localhost and in production. So they are actually very
7:58:347 hours, 58 minutes, 34 secondsvery simple fixes. Uh but they improve the app a lot. So currently if you try
7:58:417 hours, 58 minutes, 41 secondsto log in on localhost your app actually doesn't work. That's because of the secure true which actually breaks the
7:58:507 hours, 58 minutes, 50 secondsdevelopment. Another problem I noticed is that we cannot log out in production.
7:58:577 hours, 58 minutes, 57 secondsSo, we're going to fix both of these things and I will also tell you how I uh debugged these issues. So, the first one
7:59:057 hours, 59 minutes, 5 secondsis pretty self-explanatory. Let's go ahead. Uh I am on my master branch. I'm not in any uh new branches here. And I will just do bun rundev.
7:59:177 hours, 59 minutes, 17 secondsIn here, you might have noticed some new uh products here. It's because uh I was actually recording uh the demo video for
7:59:277 hours, 59 minutes, 27 secondsthis tutorial. But anyway, I am on my local host now and I'm going to open my
7:59:347 hours, 59 minutes, 34 secondsapplication tab so I can monitor the cookies here. And I will delete all cookies for my local host. And now I'm going to go ahead and attempt to log in.
7:59:477 hours, 59 minutes, 47 secondsAnd you will notice that absolutely nothing happened. So currently on development we cannot log in. The reason
7:59:557 hours, 59 minutes, 55 secondswe cannot log in is because of our utils inside of modules al right here.
8:00:038 hours, 3 secondsMore precisely uh it's because of the combination of same site domain and secure. So we need to make sure that
8:00:118 hours, 11 secondsthese settings are only applied if we are in production or more specifically if we are not in development. So inside
8:00:218 hours, 21 secondsof here what I'm going to do is I'm simply going to spread process.vironment no environment is not
8:00:278 hours, 27 secondsequal to development and then just go ahead and add these options here like
8:00:358 hours, 35 secondsthis. And in this case we can improve this by simply setting it to true. So
8:00:428 hours, 42 secondsthis way these three settings will not be applied unless we are in production or in this specific case uh when we are
8:00:518 hours, 51 secondsnot in development. So if you actually save this it should now start working.
8:00:578 hours, 57 secondsBut this is very important to understand. This enables the cookie out
8:01:038 hours, 1 minute, 3 secondson local host but it will not work with
8:01:098 hours, 1 minute, 9 secondssubdomains turned on. So basically just make sure that if you're testing this in
8:01:168 hours, 1 minute, 16 secondslocal host you cannot turn on the subdomains. So this will work perfectly with subdomains in production but in
8:01:258 hours, 1 minute, 25 secondsdevelopment uh I I there it's definitely possible of course to make it work but I haven't found an easy and fast clean way
8:01:348 hours, 1 minute, 34 secondsto do it. So I think it's just easier you know to work with without uh that basically work with this set to false in
8:01:428 hours, 1 minute, 42 secondsdevelopment and in production just change it to true and then this will be applied in production as well. So when
8:01:498 hours, 1 minute, 49 secondsyou've done these changes, try logging in again on your local host here. So let me try with Antonio
8:01:578 hours, 1 minute, 57 secondsdemo.com. And there we go. You can see the payload cookie is set and I can now access the Antonio's dashboard. So that is the first fix that we had to do here.
8:02:118 hours, 2 minutes, 11 secondsSo now I'm going to close local host because we don't need it anymore. And that is the fix that we wanted. It was
8:02:178 hours, 2 minutes, 17 secondsbasically the combination of secure true uh same site and the main. The other issue I had is the complete opposite.
8:02:278 hours, 2 minutes, 27 secondsThe logout doesn't work in production.
8:02:308 hours, 2 minutes, 30 secondsSo if you go to funroad.dev, so go to the actual deployed website uh not localhost,
8:02:388 hours, 2 minutes, 38 secondsright? So this is my URL funroad.dev, right? the domain we have purchased and I have subdomains turned
8:02:478 hours, 2 minutes, 47 secondson here. So if I go and log in here, the login actually works. But if I go inside
8:02:568 hours, 2 minutes, 56 secondsof the dashboard and if I try to log out from here, you will notice that it says
8:03:028 hours, 3 minutes, 2 secondslogging out and then nothing. I can try it again. Logging out, nothing. No matter
8:03:118 hours, 3 minutes, 11 secondswhat I do, the cookies are always here inside of my application. Funroad.dev,
8:03:188 hours, 3 minutes, 18 secondsthe cookie stays here. It will never get deleted unless I manually delete it. So
8:03:258 hours, 3 minutes, 25 secondsimmediately I got to thinking, why is this happening? And I knew it had to do something with this, right? It's
8:03:348 hours, 3 minutes, 34 secondssomething with the same site, this domain here, and secure. It's got to be it. And then I remembered uh payload has
8:03:458 hours, 3 minutes, 45 secondsits own AL operation. You remember that we demonstrated using login via the REST
8:03:528 hours, 3 minutes, 52 secondsAPI, right? Well, they have the same thing for logout. And this dashboard right here
8:04:028 hours, 4 minutes, 2 secondsactually uses slashadmin/logout which most certainly
8:04:088 hours, 4 minutes, 8 secondsuses this API route. So then I was again confused because I assumed that when you
8:04:178 hours, 4 minutes, 17 secondslog out on payload what they do is they delete the cookie but they don't actually delete the cookie. You see,
8:04:258 hours, 4 minutes, 25 secondsthankfully Payload is open source. So I just went into their cookies package and I found out that something they do is
8:04:338 hours, 4 minutes, 33 secondsthey generate the expired payload cookie. So basically what happens is the
8:04:398 hours, 4 minutes, 39 secondscookie they expire is not the same as the cookie we create and that's why the
8:04:478 hours, 4 minutes, 47 secondslogout is not working. And the fix for this is actually very easy. We just have to use the exact same settings that we
8:04:568 hours, 4 minutes, 56 secondsuse in our custom cookie util inside of the collection which controls the rest
8:05:048 hours, 5 minutes, 4 secondsAPI authentication from payload which is the users here. So, I'm going to open
8:05:108 hours, 5 minutes, 10 secondsthis up, add cookies, and I will do the same thing like this. But we just have
8:05:188 hours, 5 minutes, 18 secondsto change the same site here to use none with capital letter N. Exactly like
8:05:258 hours, 5 minutes, 25 secondsthis. And if you're wondering about these fields here, you don't have to worry about that. You can see that it only allows these three options to be changed.
8:05:368 hours, 5 minutes, 36 secondsSo, this will now fix both the uh local and the production instances. And I'm
8:05:448 hours, 5 minutes, 44 secondsgoing to try it out now before I mark it as completed. So, what I'm going to do is I'm going to shut down the app and
8:05:528 hours, 5 minutes, 52 secondsI'm just going to do fix resolve invalid cookie
8:05:598 hours, 5 minutes, 59 secondssettings. And let's do get push. When you get push on master directly, just
8:06:068 hours, 6 minutes, 6 secondsconfirm that it's been pushed. Uh you can now go to your versel deployments here. And there we
8:06:158 hours, 6 minutes, 15 secondsgo. You can see that I have a new deployment. So I'm going to pause the video and we are going to test out logout feature once
8:06:248 hours, 6 minutes, 24 secondsmore. And there we go. A successful deployment. So I'm going to go to my funroad.dev dev domain and what I'm
8:06:338 hours, 6 minutes, 33 secondsgoing to do is I will purposely clear my cookies here. So for funroad domain I'm going to clear everything and refresh
8:06:428 hours, 6 minutes, 42 secondsand we are now going to monitor what happens. So, Antonio demo.com and demo. Keep in mind this is deployment, right?
8:06:518 hours, 6 minutes, 51 secondsLet's first check if this works. I can already see dashboard. So, I know that this works. There we go. I have my cookie. And now since we have modified
8:07:018 hours, 7 minutes, 1 secondour users collection to have the exact same cookie settings as our utils
8:07:098 hours, 7 minutes, 9 secondshere, the function that payload uses to generate the expired payload cookie will
8:07:168 hours, 7 minutes, 16 secondsnow correctly modify the cookie. So they don't delete the cookie. instead they find the cookie that you have and they
8:07:258 hours, 7 minutes, 25 secondssimply expire the cookie. So you can go inside of your uh payload here and try
8:07:338 hours, 7 minutes, 33 secondsand log out now. And there we go. You can see that now the cookie no longer exists here because it's been properly
8:07:428 hours, 7 minutes, 42 secondsexpired. So maybe they do delete it in some other mechanism. But the problem was the mismatch between the settings in
8:07:498 hours, 7 minutes, 49 secondshere and in here which is now completely resolved. Amazing amazing job. So what I
8:07:568 hours, 7 minutes, 56 secondslike to do is just one more time confirm that the local host is working simply because we didn't test it after we added this out here. But since we don't even
8:08:058 hours, 8 minutes, 5 secondsuse that directly, I don't think there's going to be any problems. But I'm just going to go on local host and I'm going to try to log in. And I'm going to try
8:08:148 hours, 8 minutes, 14 secondsto log out. So I am already logged in here. I'm going to remove the cookies on
8:08:208 hours, 8 minutes, 20 secondslocal host here. Refresh. I'm going to log in as Antonio. Actually, let's try
8:08:278 hours, 8 minutes, 27 secondssomeone else just to, you know, test multiple users. Login obviously works. I can now uh compile the dashboard. And let's try logging out on the local host.
8:08:398 hours, 8 minutes, 39 secondsThat works as well. Great. So we definitely fixed those issues. Now we
8:08:458 hours, 8 minutes, 45 secondshave fixed our local host and we fixed our production. We pushed to GitHub which means we automatically deployed
8:08:538 hours, 8 minutes, 53 secondsthis to Versel. Amazing amazing job. In this chapter I want to build a
Chapter 18: 32 Search Filter
8:09:018 hours, 9 minutes, 1 secondfeature that we have seemingly forgot to implement and that's the search filter.
8:09:078 hours, 9 minutes, 7 secondsSo if you go to localhost you will notice that you know our search filter does nothing at all. And while I have no
8:09:168 hours, 9 minutes, 16 secondsdoubt that if you have watched the tutorial this far you can definitely build this yourself perhaps you might
8:09:238 hours, 9 minutes, 23 secondshave already done it but still I'm going to show you how I would do it. So let's start with use product filters hook and
8:09:328 hours, 9 minutes, 32 secondssearch params file. So I am on my master branch. I'm up to date and I have bun
8:09:388 hours, 9 minutes, 38 secondsrundev running. So the first thing we're going to do is we're going to go inside of source. Let's go inside of modules
8:09:468 hours, 9 minutes, 46 secondsand let me find where we keep it. I think it's inside of products. We have use products uh filters and we have search params. So open up both of these.
8:09:588 hours, 9 minutes, 58 secondsLet me try and separate them like this.
8:10:018 hours, 10 minutes, 1 secondAnd we're going to add search. And search will simply be a
8:10:088 hours, 10 minutes, 8 secondsstring. So we can do parse as string here. We already have this
8:10:158 hours, 10 minutes, 15 secondsimported. And let's go ahead and pass in dot with
8:10:228 hours, 10 minutes, 22 secondsoptions clear on default set to true. and with
8:10:318 hours, 10 minutes, 31 secondsdefault empty string and I think we don't need to execute the parse as
8:10:408 hours, 10 minutes, 40 secondsstring. Great. Now let's copy this and let's paste it here. So you should have it both in your
8:10:478 hours, 10 minutes, 47 secondssearch params and in your use product filters. Great. Now that we have this,
8:10:558 hours, 10 minutes, 55 secondswe can mark that as completed. Now let's go to our products get many procedure.
8:11:028 hours, 11 minutes, 2 secondsSo products server procedures get many.
8:11:068 hours, 11 minutes, 6 secondsAnd in here let's add the search to be a string nullable and
8:11:158 hours, 11 minutes, 15 secondsoptional like this. You can move it down here with the rest of the filters. So now we have to choose how to
8:11:238 hours, 11 minutes, 23 secondsquery. And from payload documentation you can see that for quering search they
8:11:318 hours, 11 minutes, 31 secondshave two options you might want to use like and contains. Like is case
8:11:388 hours, 11 minutes, 38 secondsinsensitive and all words must be present in any order. Basically that's the rule. So case insensitive and any
8:11:468 hours, 11 minutes, 46 secondsorder. So it's much more intuitive for users. Whereas contains uh is case
8:11:538 hours, 11 minutes, 53 secondsinsensitive as well. But uh I believe that this works on uh the specific order
8:12:018 hours, 12 minutes, 1 secondof words that you write. So I think that like is a better solution to use and will give a better experience. So let's
8:12:108 hours, 12 minutes, 10 secondsgo ahead and use get many here. So, we are going to focus on querying the name
8:12:188 hours, 12 minutes, 18 secondsfield for the products. It doesn't make sense to query the description because the description is a rich text
8:12:268 hours, 12 minutes, 26 secondselement. There we go. So, I'm going to go after the sort. Let's actually go all the way down here, right after the
8:12:338 hours, 12 minutes, 33 secondsinput. We can even do after category. Let's let's add it here just before we query. So if input search
8:12:438 hours, 12 minutes, 43 secondslet's go ahead and add where name and let's add like input dot
8:12:518 hours, 12 minutes, 51 secondssearch like that. So now we should be able uh to query our elements by search.
8:12:598 hours, 12 minutes, 59 secondsSo let's see if we've done this correctly. So without doing any new modifications now you should be able to
8:13:088 hours, 13 minutes, 8 secondsdo the following. You should be able to add search and then for example let me search for I don't know the word
8:13:178 hours, 13 minutes, 17 secondsdaily. If I try this there we go. You can see that only daily appears. So our
8:13:248 hours, 13 minutes, 24 secondsfilter already works right. There's nothing more that we have to do here. Uh except of course connect it to the
8:13:328 hours, 13 minutes, 32 secondsactual search input component. So let's see the flow. Let's see how this works.
8:13:388 hours, 13 minutes, 38 secondsInside of our home UI, we have search filters and it has no props, which means
8:13:468 hours, 13 minutes, 46 secondsthat we can go directly inside of search input here. And we can go ahead and grab
8:13:548 hours, 13 minutes, 54 secondsour filters and set filters here. Use product filters. Make sure to import this from modules.
8:14:068 hours, 14 minutes, 6 secondsAnd we are specifically going to focus on modifying the search filter. So let me find the input here. And I will just
8:14:158 hours, 14 minutes, 15 secondscollapse the items like this. So I'm going to pass in the value and I'm going to make the value filters
8:14:258 hours, 14 minutes, 25 secondsdo search and on change I'm going to grab the event and I will do event. I
8:14:328 hours, 14 minutes, 32 secondswill do set filters specifically the search event target value like
8:14:398 hours, 14 minutes, 39 secondsthis. So let me go ahead and refresh this and you can see that now it autoop populates to daily. But if I go ahead
8:14:478 hours, 14 minutes, 47 secondsand change this to 10 for example you will see that it autoop populates to 10. So just like that we
8:14:568 hours, 14 minutes, 56 secondshave implemented for example let's search for ebook. There we go. You can see that it
8:15:038 hours, 15 minutes, 3 secondsloads ebook. So it was that easy to implement the search filter. Obviously
8:15:118 hours, 15 minutes, 11 secondsnow we have a question of adding debounce right. So if you go ahead and look in the network
8:15:198 hours, 15 minutes, 19 secondstab, it causes a lot of requests to type absolutely anything in here. So there's
8:15:278 hours, 15 minutes, 27 secondsa couple of options here. We can implement a simple debounce hook and add it specifically here in the search
8:15:358 hours, 15 minutes, 35 secondsinput. But one thing that I perhaps want to do instead of that is go inside of my
8:15:448 hours, 15 minutes, 44 secondsproducts hooks use product filters. And I think that in here we might have some
8:15:528 hours, 15 minutes, 52 secondsoptions like shallow and throttle milliseconds for example like this. And
8:15:598 hours, 15 minutes, 59 secondsI think that this might actually it's not debounce but it's throttle. So I think that it works in a similar way.
8:16:078 hours, 16 minutes, 7 secondsFor example, let's try 10K. H doesn't look too good. I'm going
8:16:148 hours, 16 minutes, 14 secondsto be honest. So perhaps uh this is not how it should be used. So let's quickly visit the KN documentation to
8:16:238 hours, 16 minutes, 23 secondssee. So instead of the docs, I actually found an open issue on Nooks where they discuss about the bouncing URL updates.
8:16:348 hours, 16 minutes, 34 secondsUh, and you can actually see that they are making a lot of progress here. So depending on when you're watching this,
8:16:408 hours, 16 minutes, 40 secondsmaybe it will be merged because they it looks like they are very close to merging this, but it is not as simple as
8:16:478 hours, 16 minutes, 47 secondsit seems. So as of right now, no, Nooks does not have built-in option to
8:16:548 hours, 16 minutes, 54 secondsdebounce. Uh, I'm not sure why my throttle here is not doing anything at all. Perhaps I don't understand throttle myself. So I'm just going to remove
8:17:038 hours, 17 minutes, 3 secondsthat. And what I'm going to do is I'm just going to show you how you can implement a very quick debounce yourself. Of course, if you want to, you
8:17:108 hours, 17 minutes, 10 secondsknow, you can use any package, use debounce or something like that. So I'm going to add a field here const search
8:17:208 hours, 17 minutes, 20 secondsvalue set search value from use state with a default value of filters do
8:17:278 hours, 17 minutes, 27 secondssearch or an empty string. Uh actually I don't think there's a need for the fallback here because search should be
8:17:368 hours, 17 minutes, 36 secondsan empty string by default because we added uh with default empty string here.
8:17:428 hours, 17 minutes, 42 secondsSo now what we're going to do inside of use effect is const time timeout id to be set
8:17:508 hours, 17 minutes, 50 secondstimeout and I'm just going to debounce for half a second and then I will set
8:17:578 hours, 17 minutes, 57 secondsfilters search value and I will return here basically
8:18:058 hours, 18 minutes, 5 secondsunmount and I will clear timeout timeout ID and inside of here We
8:18:128 hours, 18 minutes, 12 secondscan pass the search value and set filters. And now all that we have to do
8:18:198 hours, 18 minutes, 19 secondsis modify the value here to be search value. And in here we simply have to
8:18:268 hours, 18 minutes, 26 secondschange this to set search value event target value. So I'm not sure if this is like
8:18:338 hours, 18 minutes, 33 secondsthe best way to do it, but I think this is like a super simple debounce that you can test out. So let's try it by looking
8:18:408 hours, 18 minutes, 40 secondsat the network tab. Let's refresh this super simple debounce. There we go. So, you can see
8:18:468 hours, 18 minutes, 46 secondsthat only uh after I finish typing for half a second, it now fires an event.
8:18:538 hours, 18 minutes, 53 secondsSo, yeah, if you want to, here's a super super simple way to clear uh the search
8:19:008 hours, 19 minutesvalue. And that's exactly how we implemented our search filter. And you can see that when we remove everything, the URL is completely clear. Excellent.
8:19:128 hours, 19 minutes, 12 secondsSo let's go ahead and mark this as completed and this as completed. And we can now push to GitHub. Since we have
8:19:198 hours, 19 minutes, 19 secondsthis deployed, what I'm going to do is I'm just going to directly push like this. So 32 search
8:19:278 hours, 19 minutes, 27 secondsfilter and let's just do get push directly. And once you do get push on
8:19:348 hours, 19 minutes, 34 secondsthe master without branching this will automatically trigger a new deployment and by doing that you have also deployed
8:19:438 hours, 19 minutes, 43 secondsto versel. Amazing amazing job. So after deploying my search filter
8:19:518 hours, 19 minutes, 51 secondschanges my deployment actually failed and perhaps yours will fail as well and the message is a little bit cryptic. It
8:20:008 hours, 20 minutesis telling us that use search params should be wrapped in a suspense boundary at page pricing. So why does it say
8:20:108 hours, 20 minutes, 10 secondsthat? I made sure to run bun run build locally just to confirm that I'm getting the same error locally and I am which is
8:20:178 hours, 20 minutes, 17 secondsa good thing. This will make it much easier to develop on. So I searched for use search parms and it's nowhere to be
8:20:268 hours, 20 minutes, 26 secondsfound in our project but it's obviously related to use product filters. So this
8:20:338 hours, 20 minutes, 33 secondsis what I suggest we do now. I suggest we find where we use the search input here and we've wrapped that inside of
8:20:418 hours, 20 minutes, 41 secondssuspense from React. And let's go ahead and give this
8:20:488 hours, 20 minutes, 48 secondsa fall back of search. Uh hm I'm not sure if I can put search input inside
8:20:558 hours, 20 minutes, 55 secondsnow. H. So maybe I'm going to do export const.
8:21:038 hours, 21 minutes, 3 secondsActually I don't think we have to do anything. I don't think you even have to add a fallback. So what I'm going to do is I'm just going to do bon run build
8:21:108 hours, 21 minutes, 10 secondsand see if this maybe fixes it because now use product filters which is the
8:21:168 hours, 21 minutes, 16 secondsequivalent of use search params is wrapped in a suspense. And the reason
8:21:238 hours, 21 minutes, 23 secondsthat this is telling us that it's in the pricing page I think that's just a coincidence. It is because we are using
8:21:328 hours, 21 minutes, 32 secondsthis in a layout file. Right? So we are using it inside of app here.
8:21:388 hours, 21 minutes, 38 secondshome layout. This is where we are using it.
8:21:428 hours, 21 minutes, 42 secondsAnd while it has suspense, I it looks like it needs to have a lower suspense here. Uh let's see. So now it's simply
8:21:528 hours, 21 minutes, 52 secondstelling me that it should be wrapped in a suspense boundary some other page. So I'm not sure if our suspense wrapping
8:22:008 hours, 22 minutesactually made any difference. So, I'm just going to pause the video and look at how I have to implement
8:22:098 hours, 22 minutes, 9 secondsthis. I think the reason it's still happening is because of the search filters skeleton. So, that kind of makes
8:22:178 hours, 22 minutes, 17 secondssense. We just wrapped the search input into suspense. But that initially didn't make sense to me because in our layout,
8:22:258 hours, 22 minutes, 25 secondswe've wrapped the entire search filters into suspense. So, what's going on here?
8:22:318 hours, 22 minutes, 31 secondsWell, what's going on is that we use search input in our search filters
8:22:378 hours, 22 minutes, 37 secondsskeleton which we then use here outside of suspense. So that's the issue. So this is how we are going to fix this.
8:22:488 hours, 22 minutes, 48 secondsYou can remove the suspense wrap around the search input and you can remove this from here. Since search filters uh
8:22:568 hours, 22 minutes, 56 secondssearch filters is safely wrapped in suspense. What you can do here is simply transfer loading of the filters from
8:23:048 hours, 23 minutes, 4 secondssearch input component inside of the search filters component. So use product filters add the import here. And we're
8:23:148 hours, 23 minutes, 14 secondssimply going to add the default value to the search input component. So let's do it like that.
8:23:208 hours, 23 minutes, 20 secondsDefault value is going to be filters search and
8:23:288 hours, 23 minutes, 28 secondson change is going to accept the value and call set filters and set the search to be the new
8:23:368 hours, 23 minutes, 36 secondsvalue as simple as that. So we only have the default value here and the rest will be controlled inside. So obviously this
8:23:458 hours, 23 minutes, 45 secondscan be you know made in a kind of a nicer way but I think for now the goal is to preserve the functionality and to
8:23:528 hours, 23 minutes, 52 secondsfix the deployment issue. So let's see we have added use product filters here we have added on change and let's
8:24:028 hours, 24 minutes, 2 secondsgo inside of search input and let's add the default value here or you know if you want to you can just call it
8:24:108 hours, 24 minutes, 10 secondsvalue like this but this is kind of incorrect because
8:24:178 hours, 24 minutes, 17 secondstechnically yeah I would rather we call this default value because we want to stay true to what it is. So it is an
8:24:258 hours, 24 minutes, 25 secondsoptional string. Let's see if this still works.
8:24:318 hours, 24 minutes, 31 secondsIt does. And in here on change is a string uh sorry value string
8:24:408 hours, 24 minutes, 40 secondsvoid. As simple as that. And now here we have the default value and we have unchange. We can now remove use product
8:24:488 hours, 24 minutes, 48 secondsfilters from here. There we go. And inside of here, we're going to pass the default
8:24:558 hours, 24 minutes, 55 secondsvalue. And then inside of here, instead of set filters, we just call the onchange, which is the new search value
8:25:048 hours, 25 minutes, 4 secondshere. And let's just see. So, this is string or undefined uh for this. Okay. So, let's do it like this. There we go.
8:25:188 hours, 25 minutes, 18 secondsAnd uh the only change here is because we marked this as use client. So you can remove this as use client and then the
8:25:268 hours, 25 minutes, 26 secondswarning will go away. The reason you can remove this is because we use it inside of a client component. Uh and now in here we need to
8:25:348 hours, 25 minutes, 34 secondsadd onchange. So I think that now we are officially preserving this and yeah make the unchange
8:25:438 hours, 25 minutes, 43 secondsoptional. So then you have to call the unchange optionally. And there we go. No more errors. And before I try running the
8:25:518 hours, 25 minutes, 51 secondsapp, I'm going to try running building the app first just to see whether I
8:25:588 hours, 25 minutes, 58 secondsunderstood this correctly. So basically you can search throughout your app for use product filters and you will see
8:26:068 hours, 26 minutes, 6 secondsthat uh in all of these places where you use it you actually have to wrap those things inside of
8:26:148 hours, 26 minutes, 14 secondssuspenses. So the reason it doesn't appear in other places is simply because I assume we have uh either we are either
8:26:238 hours, 26 minutes, 23 secondsusing it in a dynamic page uh or we are not using it in a layout. I think the problem is mostly with these static
8:26:308 hours, 26 minutes, 30 secondspages and using of the use search params. I think that if you use use search params inside of something that
8:26:398 hours, 26 minutes, 39 secondsis recognized as a dynamic page, it won't cause that error. There we go. We fixed it, right? So, I was correct.
8:26:478 hours, 26 minutes, 47 secondsOkay. But if you want to, you can go throughout your project, right? If this is still causing you problems, you can of course go throughout your project and
8:26:568 hours, 26 minutes, 56 secondslook for all the places where you use use product filters. Though I think that majority of them are in one way or
8:27:048 hours, 27 minutes, 4 secondsanother uh wrapped in some kind of suspense here or if not wrapped in a suspense. Well, in that case, they are
8:27:138 hours, 27 minutes, 13 secondsat least in a dynamic component. So that's why it's not a problem, right? If it's causing you problems, you know,
8:27:198 hours, 27 minutes, 19 secondsfeel free to just wrap these inside of suspenses like this because apparently you should do
8:27:298 hours, 27 minutes, 29 secondsthat. So, I'm not going to do that simply because my builds are passing and there's no reason for me to do so. So
8:27:368 hours, 27 minutes, 36 secondswhat we did is we moved the importing of use product filters from inside of the search input to adding it to the search
8:27:458 hours, 27 minutes, 45 secondsfilters component which is wrapped inside of suspense and then we can safely use the search input component in the skeleton. So the skeleton was
8:27:548 hours, 27 minutes, 54 secondsactually the problematic build here. So now I'm just going to do bun rundev just
8:28:018 hours, 28 minutes, 1 secondto confirm that we can still uh use our application here. So let me just try it
8:28:098 hours, 28 minutes, 9 secondsout and let's try 30 days. There we go. Everything still works fine. So now I'm going to go ahead
8:28:188 hours, 28 minutes, 18 secondsand commit this and push to GitHub which will cause another deployment. Hopefully this time
8:28:288 hours, 28 minutes, 28 secondspassing. So get add get commit 32 search filters fix and get
8:28:378 hours, 28 minutes, 37 secondspush. And once you do get push here, you should see a new deployment appear any
8:28:458 hours, 28 minutes, 45 secondssecond. Let's see. There we go. So I'm going to pause and we're going to see if this one is successful. But since our local git build works, uh there's no
8:28:548 hours, 28 minutes, 54 secondsreason for the remote one to fail. But yeah, interesting bug. Uh it was fun to
8:29:018 hours, 29 minutes, 1 seconddebug this. So it was because of the usage in the skeleton which is then used uh outside of
8:29:098 hours, 29 minutes, 9 secondssuspense. Quite hard to track. And here we go. a successful
8:29:168 hours, 29 minutes, 16 secondsdeployment, meaning that it was officially the fix. So, obviously, we're going to try it here. 10 minute. Let's
8:29:248 hours, 29 minutes, 24 secondssee. And there we go. Our search is officially working. Amazing. Amazing
8:29:318 hours, 29 minutes, 31 secondsjob. So, yes, now we officially resolve the search filters. Uh, and we fixed that interesting bug with suspense. Uh,
8:29:408 hours, 29 minutes, 40 secondsso one more, you know, thing. So if you're using use product filters, search it like this. If you're getting similar
8:29:478 hours, 29 minutes, 47 secondserrors, you can always search them like this. And then you will see the component that should potentially be wrapped inside of suspense. You can see
8:29:578 hours, 29 minutes, 57 secondsthat not all of them need that. But these ones which are in the layout seem to have caused some problems. So be careful and at least you now know how to
8:30:058 hours, 30 minutes, 5 secondsfix it. It needs to be wrapped in a suspense.
Chapter 19: 33 Private Media
8:30:118 hours, 30 minutes, 11 secondsOne more thing that I want to talk about before we end the tutorial is private media collection. And I want to give you
8:30:198 hours, 30 minutes, 19 secondsa warning and a word of caution here because I didn't have enough time to test this out. So just be careful uh and
8:30:298 hours, 30 minutes, 29 secondstest out the app. Make sure you can still see all the images that you should be able to see. It's going to be a very
8:30:378 hours, 30 minutes, 37 secondssimple change. And this is why. So let me go ahead and do bun rundev and go to
8:30:468 hours, 30 minutes, 46 secondslocalhost 3000. After that go ahead and create a completely new account. So for the first
8:30:558 hours, 30 minutes, 55 secondstime just create a brand new account.
8:31:008 hours, 31 minutesSo, for example, I'm going to use, I don't know, hello demo.com and demo. And once I
8:31:108 hours, 31 minutes, 10 secondscreate this account, I'm going to go ahead into the dashboard. And uh no need
8:31:168 hours, 31 minutes, 16 secondsto verify this entire thing yet. All we are going to do is enter the user's
8:31:248 hours, 31 minutes, 24 secondstenant and we are going to attempt to add an image for our tenant
8:31:328 hours, 31 minutes, 32 secondsstore. So go inside of the tenants, select your new tenant, and here's the thing. If you click choose from
8:31:398 hours, 31 minutes, 39 secondsexisting, you can find all media from all other users. And this is kind of the thing I find problematic, right? So you
8:31:498 hours, 31 minutes, 49 secondsshouldn't be able to see any of these things. So what we are going to do again word of caution I have not tested this
8:31:588 hours, 31 minutes, 58 secondsyet. What we are going to do is the following. Let's do bun run database
8:32:038 hours, 32 minutes, 3 secondsfresh. So we have a completely blank database. Confirm that you want to drop
8:32:118 hours, 32 minutes, 11 secondsit. And this error is okay. It's simply telling us we don't have any migration files. After that, wait a few seconds
8:32:208 hours, 32 minutes, 20 secondsand go ahead and seed your database. Once you have seeded your database, go ahead and run bun rundev.
8:32:318 hours, 32 minutes, 31 secondsAnd after that, go to payload.config.ts and go inside of the
8:32:378 hours, 32 minutes, 37 secondsmulti-tenant plug-in and add media alongside our products here. So just as
8:32:448 hours, 32 minutes, 44 secondsour products are private in CMS right so in CMS uh the only people who can access the products are the tenants of that
8:32:528 hours, 32 minutes, 52 secondsproducts when it comes to our local API of course anyone can see them but in the CMS it's important that only the tenant
8:33:018 hours, 33 minutes, 1 secondcan see them and after you do this change you should also get another change in your uh payload types if you
8:33:118 hours, 33 minutes, 11 secondsare not seeing that change you might have to run uh generate types separately. So let's do bun run
8:33:208 hours, 33 minutes, 20 secondsgenerate types. So this should generate new types for me. And you're going to see that in a
8:33:288 hours, 33 minutes, 28 secondssecond. And once it's completed, you will now see a new file here, payload types, which basically add the tenant
8:33:378 hours, 33 minutes, 37 secondsfield to the media interface. and also down here for some media select querying
8:33:458 hours, 33 minutes, 45 secondsoptions. So all I'm going to do now is just, you know, go to my localhost 3000 here and I'm going to repeat the
8:33:548 hours, 33 minutes, 54 secondsprocess. I'm going to create a new user completely. So I only have my categories here. So I'm just going to go ahead and
8:34:018 hours, 34 minutes, 1 secondcreate a new user. Antonio demo.com. Let me just reverse these things.
8:34:098 hours, 34 minutes, 9 secondsLet's create an account. And after you create an account, uh let's go ahead and try adding an image for our store by
8:34:198 hours, 34 minutes, 19 secondsgoing inside of the tenant. So tenants right here and demo. And let's click
8:34:268 hours, 34 minutes, 26 secondscreate new and let's click select a file. So I'm just going to select an image.
8:34:348 hours, 34 minutes, 34 secondsI will add some alt text and click save. And it looks like it is working right.
8:34:428 hours, 34 minutes, 42 secondsSo perfect. I now have this media. I will click save. This works great. Only I can see my media now. And now I'm
8:34:508 hours, 34 minutes, 50 secondsgoing to log out and I will create a completely new account. So
8:34:578 hours, 34 minutes, 57 secondsJohndemo.com demo. And now I'm going to see if I can see that in here. So choose
8:35:058 hours, 35 minutes, 5 secondsfrom existing. There we go. We have successfully privatized media. So now
8:35:128 hours, 35 minutes, 12 secondsone more thing to make sure is that I can go for example to
8:35:198 hours, 35 minutes, 19 secondsslashtenants/ Antonio. So I just want to see that I can load Antonio's store. Uh,
8:35:268 hours, 35 minutes, 26 secondsand I'm just not sure did I create my username comp uh correctly. So, tenant not found. Um, what did I call myself if
8:35:368 hours, 35 minutes, 36 secondsnot uh Antonio? I'm not sure. Uh, or maybe I don't allow the store unless I'm
8:35:448 hours, 35 minutes, 44 secondsverified. So, basically, it's important for you to just, you know, test your app more specifically.
8:35:518 hours, 35 minutes, 51 secondsuh because I don't know if this will cause any issues. So, let me just add a note here. Please test your app. I think
8:36:018 hours, 36 minutes, 1 secondthat this should work just fine. But go ahead and test out your app. Ensure that you can still add new images to your products and that they're visible. The
8:36:108 hours, 36 minutes, 10 secondsonly thing that should be different is that now uh it should only be visible in the CMS to the author who uploaded that
8:36:178 hours, 36 minutes, 17 secondsimage. Uh and one more thing that we can do in this chapter which is just a funny thing I forgot inside of the product
8:36:268 hours, 36 minutes, 26 secondsview right here in the products module in here we have a button called cart button. Let me just find it here.
8:36:408 hours, 36 minutes, 40 secondsBasically this is where we import it.
8:36:428 hours, 36 minutes, 42 secondsCart button. So go inside of UI components cart button. And this is actually problematic because what it
8:36:518 hours, 36 minutes, 51 secondsdoes is it will try to redirect you in production. It will try to redirect you to
8:36:598 hours, 36 minutes, 59 secondsantonio.funroad.dev/ library. That doesn't exist. It should lead to funroad. Library. So go ahead and add
8:37:078 hours, 37 minutes, 7 secondsprocess environment node. uh my apologies just next public app URL like
8:37:158 hours, 37 minutes, 15 secondsthis and remove prefetch. So if it's purchased this is the URL we should redirect the user to.
8:37:238 hours, 37 minutes, 23 secondsSo that's another bug uh that we had. Uh hopefully you will watch to the end so you can see me fix this. Uh great. So
8:37:328 hours, 37 minutes, 32 secondswhat I'm going to do now is just get add this get commit changes and I will do
8:37:418 hours, 37 minutes, 41 secondsget push and I will just confirm that we didn't introduce any new deployment
8:37:488 hours, 37 minutes, 48 secondserrors. Uh so I think this is there we go. So this one 7 seconds ago. I'm just going to pause and when I
8:37:578 hours, 37 minutes, 57 secondsconfirm that we didn't break the deployment, uh that's it. That will be the very last
8:38:058 hours, 38 minutes, 5 secondschapter. Here we go. Looks like we didn't break the production, which is great news. And that officially means
8:38:138 hours, 38 minutes, 13 secondsthis is our last chapter. So, we have made media private. We pushed to GitHub and we deployed to Versell. I would
8:38:218 hours, 38 minutes, 21 secondshighly suggest that you test your app after this. Not because I think something will break, but I didn't have
8:38:298 hours, 38 minutes, 29 secondstime to develop with this feature turned on initially, right? So during my first
8:38:358 hours, 38 minutes, 35 secondsbuild, I didn't do this. I forgot to do it. So I can tell you with confidence that this will all work out of the box.
8:38:448 hours, 38 minutes, 44 secondsUsing what I know so far, it definitely should work without any problems. But please be careful. just test your app
8:38:528 hours, 38 minutes, 52 secondsbefore you know going to production and actually selling things here. Uh amazing amazing job. Thank you so much for
8:38:598 hours, 38 minutes, 59 secondswatching and see you in the next tutorial.

Sync to video time
