+++
authors = ["sanchpet"]
title = "Several ways to decorate your GitHub profile"
date = "2025-08-16"
description = "A short guide with examples on how to make your GitHub profile stand out."
tags = [
    "git",
]
categories = [
    "Misc",
]
+++
- [Markdown and HTML Functions](#markdown-and-html-functions)
- [Badges](#badges)
  - [Profile View Counter Badge](#profile-view-counter-badge)
  - [Dynamic Badges with shields.io](#dynamic-badges-with-shieldsio)
- [Add Animation](#add-animation)
- [Statistics](#statistics)
- [Auto-Update README](#auto-update-readme)
- [The Snake Eating the Contribution Graph](#the-snake-eating-the-contribution-graph)
- [And more, and more, and more...](#and-more-and-more-and-more)

If you’re determined to read this short note, I already understand you a little. It doesn’t matter why you wanted to do this — just go ahead and try it. Spending a few hours tinkering with a Markdown file is a lot of fun. I don’t regret the time spent.

As a reference for this article, I use my own [profile](https://github.com/sanchpet/sanchpet/blob/main/README.md). It’s quite nice, even though it’s clearly not the peak of what can be achieved with GitHub’s automation features and community modules.

I’ll keep it brief and won’t rewrite entire documentation where links are provided. You can use my `README.md` as an example to configure the features listed below.

## Markdown and HTML Functions

First things first: use [Markdown](https://www.markdownguide.org/cheat-sheet/). The most valuable feature is headings. They appear in every neat profile and allow you to structure the document:

```markdown
## GitHub statistics
<...>
### Things I know best and love
<...>
```

The second important thing: markdown engines know how to handle [HTML](https://htmlcheatsheet.com). The general advice is not to mix these two, but for styling the profile, I make an exception. The most useful HTML feature here is the ability to control content alignment. Markdown alone can’t handle this properly. For example, you can place a heading in the center like this:

```html
<h1 align="center">Aleksandr Petrov - @sanchpet</h1>
```

When embedding images, I almost always use the `width` attribute to adjust the size:

```html
<img align="center" alt="Open Source Love" src="https://badges.frapsoft.com/os/v1/open-source.svg?v=103" width="12%"></a>
```

## Badges

GitHub loves badges. There is not a single sophisticated README without them. For searching badges, there’s a great resource: [shields.io](https://shields.io/badges). It has an interactive badge editor that helps you quickly understand the badge creation logic, so you can then make your own.

You can insert badges into your document in different ways. For example, using Markdown:

```markdown
![Kubernetes](https://img.shields.io/badge/k8s-1a1b27?&logo=kubernetes&logoColor=white)
```

if you need HTML features (like centering the badge or resizing it), use:

```html
<a align="center" href="https://www.linkedin.com/in/sanchpet/">
        <img align="center" alt="LinkedIn" src="https://img.shields.io/badge/LinkedIn-1a1b27?&logo=inspire&logoColor=white" width="10%"/></a>
```

Once you master the URL rules for badges, you’ll probably ask: where to find logos? `Shields.io` uses logos from [Simple Icons](https://simpleicons.org).

### Profile View Counter Badge

Just place this badge in your profile:

```markdown
![](https://komarev.com/ghpvc/?username=your-github-username)
```

Replace it with your GitHub username, and that’s it. The counter starts at zero. Instructions are in the [repository](https://github.com/antonkomarev/github-profile-views-counter).

### Dynamic Badges with shields.io

There are lots of cool shields.io badges with built-in functions that display information dynamically. For example, here’s a [badge](https://shields.io/badges/git-hub-users-stars) showing your stars count:

```html
<img align="center" alt="GitHub stars" src="https://img.shields.io/github/stars/sanchpet?style=plastic&color=1a1b27" width="7%">
```

The full list is available on the site’s left-side menu. Browse it — you’ll likely discover something fun for yourself or your projects!

## Add Animation

I added a funny animation of a little guy working and drinking coffee using HTML. Basically, all you need is a GIF with a transparent background:

```html
<img align="right" src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2ViNXNseGdka2ZhMTJxbDI3ZXd3a2xoaDZhbjgxOGdpejZpbnU1NCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/Q2T7BXRiDFPJcPoA7Z/giphy.gif" width="33%" alt="work"> 
```

Finding transparent-background GIFs isn’t easy, but there are plenty on [Giphy.com](https://giphy.com/search/devops-stickers) under the "Stickers" section. I also used the `align="right"` trick so that the character sits on the right, while text flows on the left — that’s where I put information about myself.

## Statistics

Check out [github-readme-stats](https://github.com/anuraghazra/github-readme-stats). I use two modules: `GitHub Stats Card` and `Top Languages Card`. By default, you can use the creator’s hosted version, but then it will only pull data from public repositories. There’s a [tutorial](https://github.com/anuraghazra/github-readme-stats?tab=readme-ov-file#deploy-on-your-own) on how to deploy your own instance — this allows faster updates and lets you read private repo data. Set it up once, and you’re good to go.

## Auto-Update README

I automatically publish info about my latest projects, pull requests, and so on in my README.  
This is done with [readme-scribe](https://github.com/muesli/readme-scribe) and GitHub workflows. The repository explains how to set up the workflow and create a template for the file. It takes about 10 minutes.

## The Snake Eating the Contribution Graph

You can add a fun GIF that updates daily by following [this guide](https://github.com/Platane/snk).  
The repo explains how to configure colors and provide versions for both GitHub’s light and dark themes.

## And more, and more, and more...

The material is already quite long. When you first decide to make a beautiful README, at some point you need to stop, because there’s really no limit to perfection. As you can see, most of the fun customizations come from community-made projects. The more you explore GitHub, the more cool things you’ll discover.

I hope this helped you make your GitHub profile look great.
