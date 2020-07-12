#!/bin/bash
# Downloads the IPOD dataset
# Link to data repo: https://github.com/junhua/ipod

git_root_dir="$(git rev-parse --show-toplevel)"
target_dir="$git_root_dir/data"
echo "Will download data to '$target_dir'."

if [ ! -d "$target_dir" ]; then
    mkdir -p "$target_dir"
fi
cd "$target_dir" || exit 1

wget https://github.com/junhua/IPOD/blob/master/data/JT_NER.csv.zip?raw=true -O JT_NER.csv.zip
unzip JT_NER.csv.zip && rm JT_NER.csv.zip
chmod a-w *.csv

wget https://raw.githubusercontent.com/junhua/IPOD/master/data/gazetteer.csv -O gazetteer.csv

echo "Finished."
pwd

