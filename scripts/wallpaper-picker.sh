#!/usr/bin/env bash

path="/home/whuty/misc/wallpapers/"
input_path="/home/whuty/misc/previous_wallpaper.txt"

pick_wallpaper() {
	file_count=$(ls -1 $path | wc -l)

	chosen_one=$[ $RANDOM % $file_count + 1 ]
	files=$(ls $path)
	
	count=1
	for file in $files; do
		if [ $count == $chosen_one ]; then
			chosen_wallpaper="$file"
		fi
		let count++
	done
}

pick_wallpaper

current_wp="$(cat $input_path)"

while [[ $chosen_wallpaper == $current_wp ]]; do
	pick_wallpaper
done

$(feh --bg-scale $path$chosen_wallpaper)

echo "$chosen_wallpaper" > $input_path
