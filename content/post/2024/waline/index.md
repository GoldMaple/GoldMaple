---
title: Waline评论配置，以及显示Failed to fetch的解决办法
description: 小白超详细版，从购买域名开始

date: 2024-06-20T01:11:42+01:00
image: 
math: 
license: 
hidden: false
comments: true
draft: true
categories: geek
tags:
  - Hugo
---

## 配置Waline
>参考鸣谢：[Hugo Stack主题博客添加Waline评论系统](https://limuran.top/p/hugo-stack%E4%B8%BB%E9%A2%98%E5%8D%9A%E5%AE%A2%E6%B7%BB%E5%8A%A0waline%E8%AF%84%E8%AE%BA%E7%B3%BB%E7%BB%9F/)

前人之述备矣，一步一步按着这位老师的教程来就没问题

## Failed to fetch
然而按照教程一步步走下来，却发现留言显示Failed to fetch，这是因为waline在vercel的域名被墙了，可以通过配置二级域名解决
> 参考鸣谢：
> - [Waline无法留言解决：配置二级域名](https://www.catelyn.one/p/waline%E6%97%A0%E6%B3%95%E7%95%99%E8%A8%80%E8%A7%A3%E5%86%B3%E9%85%8D%E7%BD%AE%E4%BA%8C%E7%BA%A7%E5%9F%9F%E5%90%8D/#namesilo%E7%94%B3%E8%AF%B7%E4%BA%8C%E7%BA%A7%E5%9F%9F%E5%90%8D)
> - [解决Vercel被墙导致Twikoo无法评论的问题：在Vercel添加子域名](https://thirdshire.com/vercel-custom-subdomain/)

### 购买域名
- 域名网站：namesilo
  - 购买域名可以参考[2024年NameSilo域名注册购买教程](https://xmmblog.com/namesilo-domain-registration/)

### 配置主域名