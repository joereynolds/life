# Copy the file(s) over
rm -rf zim-mirror
cp -R docs zim-mirror

# Convert them to mediawiki syntax
fd . zim-mirror/ -e md --exec sh -c "pandoc -s -t mediawiki {} -o {.}.txt"

# Remove the old leftover md files
fd . zim-mirror/ -e md | xargs rm

