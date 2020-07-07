---
title: "My Blog Setup"
date: 2020-07-02T20:31:00-05:00
slug: ""
description: "How I setup my blog from scratch on a new PC."
keywords: ["hugo", "aws", "cloudfront", "s3"]
draft: false
tags: ["hugo", "aws", "cloudfront", "s3"]
math: false
toc: false
---

I'm starting a blog! This post documents my thought process getting to where I currently am, and explains the tech from a high level.

From a high level, I wanted the blog to be completely my own. This meant throwing out fully managed solutions like Medium. It's probably more efficient to use one of those platforms if you're looking for high growth, but this blog is more for myself than for growing an audience. Other stuff I was looking for was something easy to write in, easy to maintain/scale, and pleasant to read.

I've heard about static site generation in the past, and this seemed to be a perfect use case for it. I chose Hugo since they had the best tagline and placed high in the search results. That's how the best technical decisions get made, right? I followed their tutorial and chose a theme. A few tweaks later and I had the blog running locally.

Now all that was left was hosting it somewhere. I decided on AWS for the hosting, with the site itself being served from CloudFront backed by an S3 bucket. This makes the site go zoom regardless of where you're looking at it from. It's also easy on the wallet. Getting https working with my custom domain proved to be pretty fiddly, but I eventually managed to tweak everything just right. With that, the site redirects to the https version of the site on the www subdomain.

Overall, I'm very happy with how the site turned out. It's painless to write with it, and the only real painful part of setting it up was configuring the domain to work correctly. It's also easy to load, and works without javascript. I've hosted it on my [github](https://github.com/ThatCodingGuy/blog), feel free to contribute a guest post if you want.