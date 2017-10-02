# HAML-SCSS-Boilerplate
This is a simple front-end template (HAML + SCSS)

## How-to use
- Customize template
- Generate HTML/CSS
- F5 & Enjoy!

### HAML (./src/index.haml)
#### Change values with basic data
<code> 
    -@autor="My_name" 
    -@lang= "en"
    -@title= "Hello World!"
    -@description= "My awesome website!"
    -@keywords="keyword1, keyword2, keywordn"
</code>

#### Change values with last libraries versions
Tip: Check to cdnjs for the last libraries versions 
<code>
    -@BootstrapV= "4.0.0-alpha.6"
    -@TetherV="1.4.0"
    -@NormalizeV="5.0.0"
    -@FlexboxGridV="6.3.1"
    -@jQueryV="3.1.1"
</code>

#### Replace values with names for nav items or sections 
<code>
    -menu =["section-1", "section-2", "section-3", "section-n"]
</code>

#### Change with your content
<code>
    -#Replace with your own sections, this is example code:
        -menu.each do |item|
            %section.text-center.full{id:"#{item}"}
                .box
                    %h1.display-4= item
</code>

#### Open your Terminal and generate your HTML 
<code>
    $ haml ./src/index.haml index.html
</code>

### SCSS (./src/styles.scss)
#### Replace values with your colors
Tip: Check to MaterialPalette.com to obtain your combinations 
<code>
    $dark-primary-color:#303f9f;
    $primary-color:#3f51b5;
    $light-primary-color:#c5cae9;
    $text-color:#FFFFFF;
    $accent-color:#ff5252;
    $primary-text-color:#212121;
    $secondary-text-color:#757575;
    $divider-color:#BDBDBD;
    $body-color:#FAFAFA;
</code>

#### Open your Terminal and generate your CSS
<code>
    $ sass ./src/styles.scss ./css/styles.css
</code>

#### Enjoy!

## Alternative to generate HTML/CSS
Use [Prepros](https://prepros.io/)

## Alternative 2:
<code>
    $ bundle exec guard
</code>


## TO-DO
- [x] base HAML
- [x] base SCSS
- [x] Generate HTML/CSS
- [x] Add analytics
- [x] Bootstrap4
- [x] simple variables
- [x] colors with SCSS
- [x] add sections +navbar-items with an array
- [ ] demo (config & deploy)

## Inspiration
[Create your own personal boilerplate](http://zerosixthree.se/create-your-own-personal-boilerplate/)

[Building Your Own Boilerplate](https://themeteorchef.com/blog/building-your-own-boilerplate)

[cdnjs API](https://cdnjs.com/api)

[html5-boilerplate](https://github.com/h5bp/html5-boilerplate/tree/master/src)

[Google Analytics](https://developers.google.com/analytics/devguides/collection/analyticsjs/)

[HAML Reference](http://haml.info/docs/yardoc/file.REFERENCE.html#javascript-filter)

[Intro to Sassy CSS](https://futurestud.io/tutorials/may-i-introduce-you-to-sassy-css)