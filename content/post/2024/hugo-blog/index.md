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

## 2024/6/15
### 删除 RELATED CONTENTS 文章图片的颜色遮盖

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

### 短代码

- 路径：`layouts/shortcodes`
- 参考 
  - [Hugo | 在 Stack 主题上可行的短代码们 (sleepymoon.cyou)](https://www.sleepymoon.cyou/2023/hugo-shortcodes/#%E6%91%98%E5%BD%95%E5%BC%95%E7%94%A8)

### 隐藏右侧年份归档目录
- 路径：`/config.yaml/`
- 将想隐藏的部分添加注释
  
```
    widgets:
        enabled:
            - search
            - toc
            - categories
            # - archives
            - tag-cloud
```

### 在主页卡片显示标签
- 路径：`layouts\partials\article\components\details.html`
- 挑选喜欢的位置插入tags
- 想美化格式直接问chatgpt
  
  ```
    {{ if .Params.tags }}
    <div>
        <div class="article-tags">
            {{ range (.GetTerms "tags") }}
                <a href="{{ .RelPermalink }}" style="border-radius: 50px;padding: 2px 8px; display: inline-block;margin-right: 5px; margin-bottom: 5px; border: 1px solid;">
                    #{{ .LinkTitle }}
                </a>
            {{ end }}
        </div>
    </div>
   {{ end }}
  ```

## 2024/6/17

### 配置Waline评论
- 参考：[Hugo Stack主题博客添加Waline评论系统](https://limuran.top/p/hugo-stack%E4%B8%BB%E9%A2%98%E5%8D%9A%E5%AE%A2%E6%B7%BB%E5%8A%A0waline%E8%AF%84%E8%AE%BA%E7%B3%BB%E7%BB%9F/)
