---
title: Hugo建站应当有个记录
description: 感谢所有，也免得我忘了

date: 2024-04-19T01:11:42+01:00
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
## 2024/5/19
### 建站

在我刚开始尝试建立博客的一个月，可以说是ʚ✞大失败✞ɞ

先是忘记安装golang博客永远无法渲染成功，再是好不容易使用stack-quick-start建站成功，才发现使用这个模板建成的博客结构和网上教程的完全不同，很多东西无法参考。

工作之余断断续续折腾了一个月。意外间发现了小球飞鱼老师分享的stack模板，靠着之前踩坑的经验教训，一次配置成功了！感谢！

[Hugo | Hugo-stack-theme 主题魔改版 | 小球飞鱼](https://mantyke.icu/posts/2022/stack-theme-mod/)

## 2024/6/15
### 删除 RELATED CONTENTS 文章图片的颜色遮盖

- 参考 
  - [hugo stack 主题美化 (yelleis.top)](https://yelleis.top/p/61fdb627/) 
  - [如何取消Archive页面中对Categories图片的颜色修正 · Issue #364 · CaiJimmy/hugo-theme-stack · GitHub](https://github.com/CaiJimmy/hugo-theme-stack/issues/364)
- 操作：将`/assets/ts/main.ts`里第九行给注释掉
  
```ts
import StackGallery from "ts/gallery";
// import { getColor } from 'ts/color';
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
  
```yaml
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
  
  ```html
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

## 2024/6/18

### 调整代码块样式
- 参考：[Hugo | 看中 Stack 主题的归档功能，搬家并做修改 | 小球飞鱼](https://mantyke.icu/posts/2021/f9f0ec87/#%E8%B0%83%E6%95%B4%E4%BB%A3%E7%A0%81%E5%9D%97%E6%A0%B7%E5%BC%8F)
- 路径：`\config.yaml`

```
markup:
	highlight:
		codeFences: true //代码围栏功能，一般设为true
		guessSyntax: true //猜测语法，设置为true后自动匹配可能的语法
		hl_Lines: "" //从第几行开始高亮，一般不设置
		lineNoStart: 1 //行号从编号几开始显示
		lineNos: ture //是否显示行号
		lineNumbersInTable: true //是否使用表来格式化行号和代码，一般设为true，设置true后页面的代码框就不再接连整个文章页面了，但是copy模块会只会复制行号，不知道为什么
		noClasses: true //使用class标签，设为false后代码框背景消失
		style: native //样式风格
		tabWidth: 4 //代码缩进字符数
```

### Waline留言显示Failed to fetch，购买并配置域名

- 参考：[Waline无法留言解决：配置二级域名](https://www.catelyn.one/p/waline%E6%97%A0%E6%B3%95%E7%95%99%E8%A8%80%E8%A7%A3%E5%86%B3%E9%85%8D%E7%BD%AE%E4%BA%8C%E7%BA%A7%E5%9F%9F%E5%90%8D/)
- 域名网站：https://www.namesilo.com/
- 