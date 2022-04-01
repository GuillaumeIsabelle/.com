(for f in $(du -a img/acrylics-painting/ | awk '/jpg/ {print $2}'); do echo '![]('$f')' ; done) > acrylics.md
