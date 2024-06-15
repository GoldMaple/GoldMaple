---
title: Hugo建站应当有个记录
description: 感谢所有，也免得我忘了

date: 2024-05-30T01:11:42+01:00
image: 
math: 
license: 
hidden: false
comments: true
draft: false
categories: 
tags:
  - Hugo
---

## 删除 RELATED CONTENTS 文章图片的颜色遮盖

- 2024/6/15
- 参考 
  - [hugo stack 主题美化 (yelleis.top)](https://yelleis.top/p/61fdb627/) 
  - [如何取消Archive页面中对Categories图片的颜色修正 · Issue #364 · CaiJimmy/hugo-theme-stack · GitHub](https://github.com/CaiJimmy/hugo-theme-stack/issues/364)
- 操作：将`/assets/ts/main.ts`里第九行给注释掉
  
```
import StackGallery from "ts/gallery";
// import { getColor } from 'ts/color';   ←
import menu from 'ts/menu';
import createElement from 'ts/createElement';
import StackColorScheme from 'ts/colorScheme';
import { setupScrollspy } from 'ts/scrollspy';
import { setupSmoothAnchors } from "ts/smoothAnchors";
```

## 短代码：摘录引用

- 2024/6/15
- 参考 
  - [Hugo | 在 Stack 主题上可行的短代码们 (sleepymoon.cyou)](https://www.sleepymoon.cyou/2023/hugo-shortcodes/#%E6%91%98%E5%BD%95%E5%BC%95%E7%94%A8)

## 隐藏右侧年份归档目录
- 2024/6/15
- `/config.yaml/`将想隐藏的部分添加注释
  
```
    widgets:
        enabled:
            - search
            - toc
            - categories
            # - archives
            - tag-cloud
```