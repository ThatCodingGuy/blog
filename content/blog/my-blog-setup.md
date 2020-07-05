---
title: "My Blog Setup"
date: 2020-07-02T20:31:00-05:00
slug: ""
description: "How I setup my blog from scratch on a new PC."
keywords: ["hugo", "wsl", "linux on windows", "vscode"]
draft: false
tags: []
math: false
toc: false
---

I got a new laptop a few weeks ago, the Surfacebook 3. Since I want to develop and play video games on it, I thought I'd give the [Windows subsystem for linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10) a try. I installed ubuntu using the guide, and [set up VSCode](https://code.visualstudio.com/docs/remote/wsl) to connect to my installation. Now that I had a working development environment, it was time to figure out how to build this blog.

Since I'm not planning on having much if any dynamic content, I felt that a modern js framework like react or svelte would be too much overhead for me. They also make the pageload slower due to the download size, so that left me looking at what options there were for something simpler. Enter [Hugo](https://gohugo.io/). I installed it on my wsl system using apt-get and it ran smoothly without any tweaking. I picked a theme and was off to the races.

Once I had Hugo running locally and followed the steps to configure my theme, all that was left to do was to figure out the hosting strategy. Since the site is entirely static at this point, putting up on S3 and using cloudfront as a CDN will let the site load quickly for pennies per month. I installed the awscli in my shell and wrote a small script to manage the deployment, as I just want to run a command to deploy the site.