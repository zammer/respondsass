RespondSass
=============

What is it?
-----------

Respondsass is a collection of .scss files to help speed up web development. It has been designed to be configurable but lightweight. It's built 320 mobile first and up, using ems in the media queries. Respondsass has 3 objectives.

Concise, optimised CSS output

The issue I saw with most frameworks was the amount of CSS in the files to created huge grid options where you may only use one or two classes. In Respondsass because you create the classes you determine how much CSS is in the outputed file and only class being used in the grid will be there.

Ems for media queries

I think this is now the defacto way to create media queries but I still see lots of frameworks using pixel values for media queries. if you want to learn more about the reason why I chose to go with em based media queries read this post by Lyza Gardner

Rems for fonts and spacing

Using rems with pixel fallbacks is a future friendly way to implement sizing for fonts and spacing. I've also created a configurable baseline grid to create a nice verticle rhythm.

Getting started
---------------

The easiest way to get started is to install as a Ruby gem. First make sure you have Sass and Compass installed, go to the command line (don't freak out at the command line like I used to do) and type:

sass -version

and

compass -v

If you get something like:

Sass 3.2.5 (Media Mark)

and

Compass 0.12.2 (Alnilam) 
Copyright (c) 2008-2013 Chris Eppstein 
Released under the MIT License. 
Compass is charityware., Please make a tax deductable donation for a worthy cause: http://umdf.org/compass"

then you are all set. If not you'll need to install one or both of them. When you do have them installed getting Respondsass is as simple as this:

sudo gem install respondsass

This will install the ruby gem, now all we need is to create a project and require the respondsass framework, again this is easy. Navigate to the folder you want your project folder to be created in for example:

cd Desktop

Then simply put this (where my_project is the name of your project folder)

compass create my_project -r respondsass --using respondsass

Now your all set either just set compass of watching the folder:

compass watch my_project

Creating the grid
-----------------

Creating columns is easy and is by default based of a 16 column grid. First set your html. If I wanted to set up a one row grid with 4 columns, each the same with we could do this.

<div class="container">
 <div class="row">
  <nav class="span-4"></nav>
  <section class="span-4"></section>
  <section class="span-4"></section>
  <aside class="span-4"></aside>
 </div>
</div>

Simply import the create grid partial

@import "respondsass/create-grid";

Then include create grid - this will create the default 16 column grid with a 1.25% gutter.

@include create-grid();

To create something bespoke you just pass in some parameters. If you would like a 3 column layout simple. Simply pass in how many coulmns and what the class name will be.

@include create-grid(thirds, 3);

This creates 3 column layout with class names third-1 (spans one third of containing element), thirds-2 (spans 2 thirds of containing element) and thirds-3 that is full width

We could use this by doing thing like this

<div class="container">
 <div class="row">
  <nav class="thirds-1"></nav>
  <section class="thirds-2"></section>
 </div>
</div>

Easy Nav - Navigation
---------------------

Just some simple styling to help you get navigation up and running. I found I was doing the same things over and over again with navigation. So I have put them in a mixin.

To create a horizontal navigation with 4 links, again first create the html

<ul id="nav">
 <li><a href="#">Home</a></li>
 <li><a href="#">Blog</a></li>
 <li><a href="#">About Us</a></li>
 <li><a href="#">Contact</a></li>
</ul>
Then in your ul declaration in your sass just include:

@include horizontal-nav(4);
This will create a nice equally sized horizontal navigation that you can add extra styles such a font-sizes and colours.

For a vertical nav do the same html but include:

@include vertical-nav();

There's no parameter for this one just the declaration.

Rem sizing
----------

This can be included in any elements css declaration and creates a future friendly rem value with pixel fallback for and declaration passed to it. As with all things you need to import the sass file.

@import "respondsass/rem-sizing";

Then to set the bottom margin of an element to 1 rem just include the following.

@include rem-sizing(margin-bottom, 1);

Simple. This can be used for any declaration. Font-size, padding, margin etc.

Buttons
-------

Buttons take 4 parameters. Border-radius, background-colour, font-colour and gradient. To use again import the sass file

@import "respondsass/buttons";

Then simply include the code. The first parameter is for border-radius and takes a pixel value, the second and third are background and font colour respectively. Both take a colour value. The final is gradient and this take either true (if you want a gradient) or false if you don't. If you choose gradient it will use the background colour passed in to create the gradient and the border. This is the order

@include button ($radius, $bg-color, $font-color, $gradient);
And this is the usage

@include button ($radius:0, $bg-color: $primaryCol, $font-color: #fff, $gradient:false);

Typography Baseline
-------------------

Simple baseline based on the baseline rhythm calculator

I tend to create a typography partial in sass in there I would set my standard stuff such as as assigning a font family to a variable and setting basic colours and sizes.

$font-face: Open Sans, HelveticaNeue, Calibri, sans-serif;

html {
-webkit-font-smoothing: antialiased;
font-size: 100%;
color: #000000;
}

Again then just make sure you have imported the baseline file

@import "respondsass/baseline";

Then just include the baseline mixin and pass in some parameters in the order below:

@include baseline($font-face, $base-line-font, $base-line-height);

So actual code would look something like this.

@include baseline($font: $font-face, $base-line-font: 14, $base-line-height: 1.5);

Get involved
------------

This is very much an early version of the framework but if you like it please say so.

Also, if you have spot any errors or would like to contribute please get in touch matt@my-html-codes.com