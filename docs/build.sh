

# Rebuild the index/thumnail and ref acrylics.md page and publish it
(wdir=img/acrylics-painting;cdir=$(pwd);cd $wdir && \
	. _mn_resizer.sh && \
	cd $cdir && \
	. _acrylics_generator.sh && echo "Rebuilted" && \
	git add $wdir/mn/*jpg $wdir/mncc/*jpg $wdir/*jpg &> /dev/null ;git commit acrylics.md $wdir/mn/*jpg $wdir/mncc/*jpg $wdir/*jpg -m rebuilt ;git push)

