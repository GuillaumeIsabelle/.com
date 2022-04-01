# Normal
mkdir -p mn;for f in *jpg; do convert $f -resize
 500x -quality 100 mn/$f; done

# Center cropped
tdir=mncc;mkdir -p $tdir;for f in *jpg; do conve
rt $f -resize 500x500\! -quality 100 $tdir/$f; done
