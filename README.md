# Activeadmin::DarkColorScheme

## Installation

Add this line to your application's Gemfile:

```ruby
gem "activeadmin_dark_color_scheme"
```

Add our Sass file to your CSS entrypoint that compiles ActiveAdmin CSS files:

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
