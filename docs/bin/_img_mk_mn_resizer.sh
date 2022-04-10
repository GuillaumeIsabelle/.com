# Normal
tres=600
tqual=100
tdir=mn;mkdir -p $tdir
for f in *jpg; do 
	convert "$f" -resize $tres'x' -quality $tqual "$tdir/$f"
done

# Center cropped
tdir=mncc;mkdir -p $tdir
for f in *jpg; do 
	convert "$f" -resize $tres'x'$tres\! -quality $tqual "$tdir/$f"
done
