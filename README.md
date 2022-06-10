# Dark color scheme for Activeadmin

[![Gem Version](https://badge.fury.io/rb/activeadmin_dark_color_scheme.svg)](https://badge.fury.io/rb/activeadmin_dark_color_scheme)

## Installation

Add this line to your application's Gemfile:

```ruby
gem "activeadmin_dark_color_scheme"
```

Import our Sass file “activeadmin-dark-color-scheme” in your CSS entrypoint that compiles ActiveAdmin CSS files:

```sass
// app/assets/stylesheets/active_admin.sass

// Your regular ActiveAdmin files
@import "active_admin/mixins"
@import "active_admin/base"

// Dark scheme
@import "activeadmin-dark-color-scheme"
```

## Customization

All [Sass variables we use](https://github.com/sergeypedan/activeadmin-dark-color-scheme/blob/master/app/assets/stylesheets/activeadmin-dark-color-scheme/variables/_all.sass) have `!default`:

```sass
$link-color-1: hsl(210, 70%, 73%) !default
```

which means you can override them just by declaring your own Sass variable somewhere before.

You could technically do it right in your entrypoint:

```sass
// app/assets/stylesheets/active_admin.sass

// Your regular ActiveAdmin files
@import "active_admin/mixins"
@import "active_admin/base"

// Dark scheme
$link-color-1: crimson
@import "activeadmin-dark-color-scheme"
```

Or you could put your variables in a separate file and `@import` it.

## How it works

You import additional CSS, all of which is scoped under `@media (prefers-color-scheme: dark)` media declaration that matches your system (or browser) color scheme setting.

Here is an example from [_table-index.sass](https://github.com/sergeypedan/activeadmin-dark-color-scheme/blob/master/app/assets/stylesheets/activeadmin-dark-color-scheme/modules/_table-index.sass):

```sass
@media (prefers-color-scheme: dark)

  table.index_table
    th
      background-color: $panel-bg-color-solid
      background-image: $panel-head-gradient
      border-top-color:    $th-border-color-top
      border-right-color:  $th-border-color-right !important
      border-bottom-color: $th-border-color-bottom
      border-left-color:   $th-border-color-left
      box-shadow: none
      color: hsl(0, 0%, 95%)
      text-shadow: none
```

## How to disable

Switch to light color scheme in you system preferences or your browser developer tools.
