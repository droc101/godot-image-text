# Godot Multicolored Fonts (Version 1.1)
A script that allows rendering of fonts with image files as the characters. 

## Fonts
Font #1 (font folder): A very bad font...
Font #2 (pixel-sans-serif folder) A 16x16 sans-serif font

Current Features:
 - All letters, space, and numbers (/ is used a newline)
 - Horizontal and vertical charachter spacing
 - Text offset
 - Font Size
 - Image extension (E.G. ".png" or ".bmp")

## Installation
Copy the .gd script and font folder into the res:// directory
If you want, you can also copy over demo.tscn

## Notes
PNG is the reccomended file format, as it allows for transparency.
## Creating Custom Fonts
The image files are named with the following syntax: **[letter].[extension]**
Examples: a.png, b.bmp, 5.jpg
Some symbols cannot be printed due to filename restrictions. Examples of theese are / : | \ & < > ? ! + and a few more.

You DO NOT need to provide the space image.

The recommended size for the font is 16x16.

Do not make it too big, as the minimum font size is the image size. Also, make sure the images are all the same size.
