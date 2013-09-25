while read filename; do
    source "$(dirname "${BASH_SOURCE}")/${filename}"
done < <(find src -name '*.bash')
