## Some notes about CSS
---
### Plain CSS [(Zen CSS Guidelines)](https://github.com/clinic-it/zen/blob/master/guidelines/css.md)
Follow our usual conventions.
* 2 Spaces
* Avoid element selectors
* Space after selectors and opening curly brace
```css
.container {}
```
* Space after property colon and value
```css
  .container {
    color: blue;
  }
```
* No zeroes to the left of decimal value
```css
  .container {
    opacity: .8;
  }
```
* Spaces between commas
```css
  .container {
    background-color: rgba(18, 19, 20, .8);
  }
```
* Use `-` for separating selectors
```css
#container-id {}
.container-class {}
```
---
### SASS / SCSS
Nesting is good
```scss
.parent-class {
  .child-class {
    background-color: blue;
  }
}
```
---
### BEM (Block, Element, Modifier) [(Zen Tech Session on BEM)](https://github.com/clinic-it/zen/blob/master/tech_sessions/bem.md)
Naming convention based on element relationship
```css
.block {}
.block__element {}
.block--modifier {}
```
* ```.block {}``` is the parent element
* ```.block_element {}``` is a direct descendant of the parent block
  * This must also be significant to the parent block as a whole
* ```.block--modifier {}``` is a different form / state of the block

Examples:
```css
#header {}
#header__text {}

#header--mobile {}
#header--mobile__hamburger {}
```
When to BEM?
* Usually best to practice BEM for code readability

When NOT to BEM?
* Don't BEM reusable classes
  * Example: We have a company logo that must always be the same size, anywhere on the app
  ```css
    .logo {
      height: 50px;
      width: 50px;
    }

    #header {}
    #header__logo {
      height: 50px;
      width: 50px;
    }

    #main {}
    #main__logo {
      height: 50px;
      width: 50px;
    }
  ```
---
### Mixing SCSS with BEM
For SASS 3.3
```scss
  #header {
    &--mobile {
      &__hamburger {}
    }

    &__text{}
  }
```
---
### Flexbox
Simplifies container and children positioning
* Avoids using `float`
* Avoids using absolute positioned items

```scss
.parent-container {
  display: flex;
  flex-direction: row; /* children should flex horizontally */
  justify-content: center; /* horizontal align */
  align-items: : center; /* vertical align */

  width: 200px;
  height: 200px;
  background-color: black;

  .child-container {
    display: block;
    background-color: pink;

    height: 50px;
    width: 50px;
  }
}
```

Why Flexbox?
* Useful for image / div positioning instead of manual margins, floats, paddings
* Useful for creating complicated layouts (and simple ones too)

Why NOT Flexbox?
* Some browsers don't play well with it (looking at you, IE)
* Some browsers DO play well with it, but...
  * There are some bugs when using Flexbox
  * You need to use prefixes in order for Flexbox to work on older browsers
---
### `autoprefixer-rails` [(github)](https://github.com/ai/autoprefixer-rails)
Luckily for us, we have this gem
1. Include in `Gemfile`
```ruby
  gem 'autoprefixer-rails'
```
2. Run
```bash
  rake tmp:clear
```
---
### `browser` [(github)](https://github.com/fnando/browser)
When doing some cross browser stuff, this gem will do the trick
1. Include in `Gemfile`
```ruby
gem 'browser'
```

Sample usage:
```ruby
browser.chrome?
browser.ie?

browser.device.iphone?
browser.device.ps4?

browser.platform.android?
browser.platform.ios?
```
---
### CSS Media Queries
You can also use CSS media queries for fine tuning your app
* Applying a background color to `.container` when screen width is greater than or equal to `480px`
```css
  @media screen and (min-width: 480px) {
    .container {
      background-color: blue;
    }
  }
```
---
### [CanIUse (caniuse.com)](caniuse.com)
Useful site to check browser compatibility of CSS properties
