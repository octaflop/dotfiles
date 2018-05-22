for i in *.MP4;
  do name=`echo $i | cut -d'.' -f1`;
  echo $name;
  ffmpeg -i $i -qscale 0 -vcodec mpeg4 $name.mov;
done
