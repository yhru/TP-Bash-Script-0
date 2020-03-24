#!/bin/bash

echo '<html>
        <head>
            <title> Ma Galerie </title>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        </head>
        <body><p>'>> galerie.html

for image in `ls *.jpg`
do
    convert $image -thumbnail '200x200' miniatures/$image
    echo '<a href="'$image'"><img src="miniatures/'$image'"/> </a> '>>galerie.html
done

echo '</p>
    </body>
</html>'>> galerie.html