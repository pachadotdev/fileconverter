# fileconverter

## What's this?

`fileconverter` is a simple app that uses [rio](https://github.com/leeper/rio) 
R package but makes it simpler thanks to 
[Shiny](https://github.com/rstudio/shiny).

It does the same as [rioweb](https://raw.githubusercontent.com/lbraglia/rioweb) 
but supports larger files.

## What does this do?

Streamlined data import and export by making assumptions that the user is 
probably willing to make. Determines the data structure from the file 
extension, reasonable defaults are used for data import and export 
(e.g., `stringsAsFactors = FALSE`), some compressed files can be read directly 
without explicit decompression, and fast import packages are used where 
appropriate.

## Where is it?

The app lives [here](https://shiny.pacha.dev/fileconverter) and the development
repository is [here](http://github.com/pachadotdev/fileconverter).

## Disclaimer

`fileconverter` is made available in the hope that it will be useful, but 
without any warranty and assuming you'll use it by following goodwill. 
