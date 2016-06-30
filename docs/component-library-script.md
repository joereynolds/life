## Intro

The program is built on top of ASP.NET MVC and Angular JS. The aim of it is to create a fully
searchable site for all components and also to automate the task of adding components to the 
component library.

As it stands (25th September 2015), components need to manually be added by you, the developer
into a giant error-prone spreadsheet. This program hopes to fix that.

## Workings of the application

There are X pages to the application

#### Home

This is the main page, you're greeted with a searchbar, and a (list view as default) view
of all the components in a table-like view. To the right of the searchbar on the same line,
is one button which changes depending on the view you're in. It gives you the choice to switch
between 'list view', and 'grid view'.

##### List View

List view is the default view, it's a table (maybe flex) layout. It looks like so


IMG THUMBNAIL        COMPONENT NAME          SITES USED ON              VIEW MORE

##### Grid View

Grid view is identical in what it contains but it displays it in a different manner.
The biggest difference being you get a better view of the component itself.

It looks like the following :

COMPONENT NAME - A <h1>

IMG THUMBNAIL - An <img> in a vertically rectangular shape

SITES USED ON - A list of sites in small text

VIEW MORE - Button leading to the page with more details on the individual component


