

# Rebuild the index/thumnail and ref acrylics.md page and publish it

## Acrylics
export cdir=$(pwd)
buildmn() {
	local bdir="$1"
(wdir=img/$bdir;cdir=$(pwd);cd $wdir && \
	. $cdir/_mn_resizer.sh && \
	cd $cdir && \
	. $cdir/_mk_ref_sheet.sh && echo "Rebuilted" && \
	git add $wdir/mn/*jpg $wdir/mncc/*jpg $wdir/*jpg &> /dev/null ;git commit $bdir.md $wdir/mn/*jpg $wdir/mncc/*jpg $wdir/*jpg -m rebuilt:$bdir ;git push)
}

# export bdir=acrylics-painting
buildmn acrylics-painting
buildmn ai-painting-collab