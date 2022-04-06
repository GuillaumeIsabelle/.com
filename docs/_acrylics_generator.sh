header='|  file  |  img  |'
sep='| --- | --- |'
(echo "$header";echo "$sep";for f in $(du -a img/acrylics-painting/ | awk '/jpg/ {print $2}'); do ff=${f%.*};fff=$(echo $ff | sed -e 's/img\/acrylics-painting\///');echo '|['$fff']('$f')|!['$fff']('$f')|' ; done) > acrylics.md
