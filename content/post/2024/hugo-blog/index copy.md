---
title: Hugo建站应当有个记录
description: 感谢所有，也免得我忘了
slug: hugo-blog
date: 2024-04-19T01:11:42+01:00
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
## 2024/5/19
### 建站

在我刚开始尝试建立博客的一个月，可以说是ʚ✞大失败✞ɞ

先是忘记安装golang博客永远无法渲染成功，再是好不容易使用stack-quick-start建站成功，才发现使用这个模板建成的博客结构和网上教程的完全不同，很多东西无法参考。

工作之余断断续续折腾了一个月。意外间发现了小球飞鱼老师分享的stack模板，靠着之前踩坑的经验教训，一次配置成功了！感谢！

- 参考鸣谢：[Hugo | Hugo-stack-theme 主题魔改版 | 小球飞鱼](https://mantyke.icu/posts/2022/stack-theme-mod/)

在hugo-stack博客的配置和装修过程中，kyo老师的教程详细全面，实在是小白前进路上的引路人

- 参考鸣谢：[第三夏尔 | Third Shire](https://thirdshire.com/)

## 2024/6/15
### 删除 RELATED CONTENTS 文章图片的颜色遮盖

- 参考鸣谢
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
- 参考鸣谢
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
- 参考鸣谢：[Hugo Stack主题博客添加Waline评论系统](https://limuran.top/p/hugo-stack%E4%B8%BB%E9%A2%98%E5%8D%9A%E5%AE%A2%E6%B7%BB%E5%8A%A0waline%E8%AF%84%E8%AE%BA%E7%B3%BB%E7%BB%9F/)

## 2024/6/18

### 调整代码块样式
- 参考鸣谢：[Hugo | 看中 Stack 主题的归档功能，搬家并做修改 | 小球飞鱼](https://mantyke.icu/posts/2021/f9f0ec87/#%E8%B0%83%E6%95%B4%E4%BB%A3%E7%A0%81%E5%9D%97%E6%A0%B7%E5%BC%8F)
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

- 参考鸣谢：
  - [Hugo Stack主题博客添加Waline评论系统](https://limuran.top/p/hugo-stack%E4%B8%BB%E9%A2%98%E5%8D%9A%E5%AE%A2%E6%B7%BB%E5%8A%A0waline%E8%AF%84%E8%AE%BA%E7%B3%BB%E7%BB%9F/)
  - [Waline无法留言解决：配置二级域名](https://www.catelyn.one/p/waline%E6%97%A0%E6%B3%95%E7%95%99%E8%A8%80%E8%A7%A3%E5%86%B3%E9%85%8D%E7%BD%AE%E4%BA%8C%E7%BA%A7%E5%9F%9F%E5%90%8D/)
  - [解决Vercel被墙导致Twikoo无法评论的问题：在Vercel添加子域名](https://thirdshire.com/vercel-custom-subdomain/)
- 域名网站：https://www.namesilo.com/

## 2024/6/23 

### 更改文章和目录网址
分享博文的链接太不简洁

我的hugo设置的是英文版，但是目录是中文，不知道是不是因为这个原因总是出错，总之一起修改成英文的

操作：

1）在`/config.yaml`中增加categories行
```yaml
permalinks:
    post: /:year/:slug/
    page: /:slug/
    categories: /categories/:slug/
```
2）`/content/categories/`中更改目录的文件夹名为英语

3） `_index.md`文件表头添加slug以及想显示的文件夹名title
```yaml
title: 技术力
slug: geek
description: 
image: cover.jpg
```
4）修改每篇博文表头目录为英文
这时发现虽然索引跳转正确，但是右侧widget的categories显示的是英文的目录，问了下Chatgpt
> 在Hugo的首页上，如果分类（categories）显示的是slug而不是title，可以通过自定义模板来解决这个问题。你需要修改Hugo的模板文件，以确保在显示分类时使用分类的title而不是slug。


操作：将`/layouts/partials/widget/categories.html`的修改为
<details>
      <summary>代码</summary>
   
```html
{{- $query := first 1 (where .Site.Pages "Layout" "==" "archives") -}}
{{- if $query -}}
    {{- $archivesPage := index $query 0 -}}
    <section class="widget categories">
        <div class="widget-icon">
            {{ partial "helper/icon" "infinity" }}  
        </div> 
        <h2 class="widget-title section-title">Categories</h2>
    <div class="widget-categories--list">
<div class="widget">
    <h3 class="widget-title"> {{ T "widget_categories" }}</h3>
    <div class="widget-body">
        <div class="category-list">
            {{- range $name, $taxonomy := $.Site.Taxonomies.categories }}
            {{- with $.Site.GetPage (printf "/categories/%s" $name) }}
            <div class="category-list-item">
                <a href="{{ .Permalink }}" class="category-list-link">
                    {{ .Title }} <!-- 使用分类页面的标题 -->
                    <span class="category-list-count">{{ $taxonomy.Count }}</span>
                </a>
            </div>
            {{- end }}
            {{- end }}
        </div>
    </div>
</div>
    </div>
    </section>
{{- else -}}
    {{- warnf "Archives page not found. Create a page with layout: archives." -}}
{{- end -}}
```

</details>

### 内容折叠
- 参考鸣谢：[Hugo Stack主题装修笔记](https://thirdshire.com/hugo-stack-renovation/#%E5%AE%9E%E7%8E%B0%E5%86%85%E5%AE%B9%E6%8A%98%E5%8F%A0)
- 网址：[stackoverflow](https://stackoverflow.com/questions/71691219/add-collapsible-section-in-hugo)
- 代码
```markdown
<details>
      <summary>Click to expand!</summary>
      
     Hidden explanation
</details>
```
### 友链
- 参考鸣谢：[Hugo Stack主题装修笔记Part 2](https://thirdshire.com/hugo-stack-renovation-part-two/)
- 跟着流程下来调整备注格式
- 在`assets/scss/partials/article.scss`里找到`.article-list--compact`并增加`.article-link`样式。
```scss
/* Compact style article list */
.article-list--compact {
    // .article-list--compact友链备注字体
    .article-time {
        font-size: 1.4rem;
        margin-bottom: 10px; /* 调整底部间距 */
    }
    .article-link {
        color:#228b68;
        font-size: 1.3rem;
        font-style: italic;
    }
```