# jekyll-theme-estrada

A clean, minimal Jekyll theme. Used as the base for [estrada1.github.io](https://estrada1.github.io).

## Dev environment

The environment is managed with [Nix flakes](https://nixos.wiki/wiki/Flakes), [direnv](https://direnv.net/), and [just](https://github.com/casey/just).

```sh
# Enter the dev shell (automatic if direnv is configured)
direnv allow

# Install gem dependencies
bundle install

# Serve locally on port 5002
just serve
```

The `.envrc` runs `use flake`, which loads Ruby 3.3 and build dependencies from `flake.nix`. `BUNDLE_PATH` and `BUNDLE_WITHOUT` are set automatically by the shell hook.

## Using this theme

### As a remote theme

Add to your site's `_config.yml`:

```yaml
remote_theme: estrada1/estrada1.github.io
plugins:
  - jekyll-remote-theme
  - jekyll-seo-tag
```

And to your `Gemfile`:

```ruby
gem "jekyll-remote-theme"
```

### Configuration

```yaml
title: Your Name
description: A short description of the site
google_analytics: UA-XXXXXXXX-X  # optional

nav:
  - title: About
    url: /
  - title: Writing
    url: /writing.html
```

`nav` drives the top navigation bar. Each entry needs a `title` and a `url`.

### Overriding the layout

Copy `_layouts/default.html` into your own repo and edit it. Jekyll will prefer your local version over the theme's.

### Overriding styles

Copy `assets/css/style.scss` into your own repo. All styles live there — no upstream base layer to fight.

### Google Analytics

Paste your tracking snippet into `_includes/head-custom-google-analytics.html` to replace the default implementation.

## Structure

```
_layouts/
  default.html   # main layout — nav, header, footer
  post.html      # blog post layout

_includes/
  head-custom.html                    # injected into <head>
  head-custom-google-analytics.html   # GA snippet

_sass/
  fonts.scss          # Noto Sans @font-face definitions
  rouge-github.scss   # syntax highlighting

assets/
  css/style.scss   # all theme styles (single source of truth)
  js/scale.fix.js  # mobile viewport fix
  fonts/           # Noto Sans font files
```
