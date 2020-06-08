for file in *.MP4 ; do 
  echo $file
  ffmpeg -i "$file" -b:v 4000k -r 60 -s 1440x1080 ${file%.mp4}_r.mp4
done

# for file in *_r.mp4
# do
#   mv "$file" "${file/_r.mp4/.mp4}"
# done
