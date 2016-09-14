echo 
for f in "$(dirname $(readlink -f "$0"))"/*; do
if [ -f "$f" ]; then
  echo $(basename $f) | sort -d
fi
done