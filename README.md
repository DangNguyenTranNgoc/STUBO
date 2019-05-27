Flatdoc
=======

Flatdoc is a small JavaScript file that fetches Markdown files and renders them
as full pages. Essentially, it's the easiest
way to make open source documentation from *Readme* files.

 * No server-side components
 * No build process needed
 * Deployable via GitHub Pages
 * Can fetch GitHub Readme files
 * Gorgeous default theme (and it's responsive)
 * Just create an HTML file and deploy!

*Current version: [v0.9.0][dist]*

[![Build Status](https://travis-ci.org/rstacruz/flatdoc.svg?branch=gh-pages)](https://travis-ci.org/rstacruz/flatdoc)

Getting started
---------------

Create a file based on the template, which has a bare DOM, link to the
scripts, and a link to a theme. It will look something like this (not exact).
For GitHub projects, simply place this file in your [GitHub pages] branch and
you're all good to go.

*In short: just download this file and upload it somewhere.*

The main JS and CSS files are also available in [npm] and [bower].

[Default theme template >][template]

[Blank template >][blank]

[bower]: http://bower.io/search/?q=flatdoc
[npm]: https://www.npmjs.org/package/flatdoc

### Via GitHub

To fetch a Github Repository's readme file, use the `Flatdoc.github` fetcher.
This will fetch the Readme file of the repository's default branch.

``` javascript
Flatdoc.run({
  fetcher: Flatdoc.github('USER/REPO')
});
```

You may also fetch another file other than the Readme file, just specify it as
the 2nd parameter.

``` javascript
Flatdoc.run({
  fetcher: Flatdoc.github('USER/REPO', 'Changelog.md')
});
```

After you've done this, you probably want to deploy it via [GitHub Pages].

[GitHub Pages guide >][GitHub Pages]

### Via a file

You may also fetch a file. In this example, this fetches the file `Readme.md` in
the same folder as the HTML file.

``` javascript
Flatdoc.run({
  fetcher: Flatdoc.file('Readme.md')
});
```

You may actually supply any URL here. It will be fetched via AJAX. This is
useful for local testing.

``` javascript
Flatdoc.run({
  fetcher: Flatdoc.file('http://yoursite.com/Readme.md')
});
```

How it works
------------

Flatdoc is a hosted `.js` file (along with a theme and its assets) that you can
add into any page hosted anywhere.

#### All client-side

There are no build scripts or 3rd-party services involved. Everything is done in
the browser. Worried about performance? Oh, It's pretty fast.

Flatdoc utilizes the [GitHub API] to fetch your project's Readme files. You may
also configure it to fetch any arbitrary URL via AJAX.

#### Lightning-fast parsing

Next, it uses [marked], an extremely fast Markdown parser that has support for
GitHub flavored Markdown.

Flatdoc then simply renders *menu* and *content* DOM elements to your HTML
document. Flatdoc also comes with a default theme to style your page for you, or
you may opt to create your own styles.

Markdown extras
---------------

Flatdoc offers a few harmless, unobtrusive extras that come in handy in building
documentation sites.

#### Code highlighting

You can use Markdown code fences to make syntax-highlighted text. Simply
surround your text with three backticks. This works in GitHub as well.
See [GitHub Syntax Highlighting][fences] for more info.

``` html
<strong>Hola, mundo</strong>
```

#### Blockquotes

Blockquotes show up as side figures. This is useful for providing side
information or non-code examples.

> Blockquotes are blocks that begin with `>`.

#### Smart quotes

Single quotes, double quotes, and double-hyphens are automatically replaced to
their typographically-accurate equivalent. This, of course, does not apply to
`<code>` and `<pre>` blocks to leave code alone.

> "From a certain point onward there is no longer any turning back. That is the
> point that must be reached."  
> --Franz Kafka

#### Buttons

If your link text has a `>` at the end (for instance: `Continue >`), they show
up as buttons.

> [View in GitHub >][project]

Customizing
===========

Basic
-----

### Theme options

For the default theme (*theme-white*), You can set theme options by adding
classes to the `<body>` element. The available options are:

#### big-h3
Makes 3rd-level headings bigger.

``` html
<body class='big-h3'>
```

#### no-literate
Disables "literate" mode, where code appears on the right and content text
appear on the left.

``` html
<body class='no-literate'>
```

#### large-brief
Makes the opening paragraph large.

``` html
<body class='large-brief'>
```

### Adding more markup

You have full control over the HTML file, just add markup wherever you see fit.
As long as you leave `role='flatdoc-content'` and `role='flatdoc-menu'` empty as
they are, you'll be fine.

Here are some ideas to get you started.

 * Add a CSS file to make your own CSS adjustments.
 * Add a 'Tweet' button on top.
 * Add Google Analytics.
 * Use CSS to style the IDs in menus (`#acknowledgements + p`).

### JavaScript hooks

Flatdoc emits the events `flatdoc:loading` and `flatdoc:ready` to help you make
custom behavior when the document loads.

``` js
$(document).on('flatdoc:ready', function() {
  // I don't like this section to appear
  $("#acknowledgements").remove();
});
```

Full customization
------------------

You don't have to be restricted to the given theme. Flatdoc is just really one
`.js` file that expects 2 HTML elements (for *menu* and *content*). Start with
the blank template and customize as you see fit.

[Get blank template >][template]

KHÁCH HÀNG
====
Tạo thành viên mới
------------------
Cập nhật thông tin thành viên
-----------------------------
Lấy thông tin thành viên
------------------------
Xác thực thành viên
-------------------
Cập nhật tài khoản thanh toán
----------------------------
Lấy thông tin tài khoản thanh toán
----------------------------------

SÁCH
====
Lấy thông tin một cuốn sách
---------------------------
Lấy danh sách sách
------------------
Lấy link tải sách
-----------------
Lấy dung lượng sách
-------------------

DANH MỤC
====
Lấy thông tin danh mục
----------------------
Lấy danh sách danh mục
----------------------

TÁC GIẢ
====
Lấy thông tin tác giả
---------------------
Lấy danh sách tác giả
---------------------

NHÀ XUẤT BẢN
====
Lấy thông tin nhà xuất bản
--------------------------
Lấy danh sách nhà xuất bản
--------------------------

GIỎ HÀNG
====
Tạo giỏ hàng
------------
Cập nhật giỏ hàng
----------------
Lấy thông tin giỏ hàng
----------------------
Hủy giỏ hàng
------------

ĐƠN HÀNG
====
Tạo đơn hàng
------------
Cập nhật đơn hàng
----------------
Lấy thông tin đơn hàng
----------------------

DANH SÁCH YÊU THÍCH
====
Tạo danh sách yêu thích
-----------------------
Cập nhật danhs sách yêu thích
-----------------------------
Lấy danh sách yêu thích
-----------------------
Hủy danh sách yêu thích
-----------------------

ĐÁNH GIÁ SÁCH
====
Tạo đánh giá
------------
Cập nhật đánh giá
-----------------
Lấy đánh giá
------------

SÁCH ĐÃ MUA
====
Thêm sách đã mua
----------------
Cập nhật sách đã mua
--------------------
Lấy thông tin sách đã mua
-------------------------
Lấy danh sách sách đã mua
-------------------------
