date=$(date +%Y%m%d)
for file in *.log.1 ; do
    basename=${file%.*}    # Remove extension
    extension=${file##*.}  # Remove basename
    mv "$file" "$basename"_"$date.$extension"
done