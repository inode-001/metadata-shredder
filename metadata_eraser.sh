file=$1
if [[  -f $file  ]] ; then
      echo "Would you want to backup the picture before wiping its metadata"
      select option in YES NO QUIT ; do
          case $option in
                YES )
                   exiftool -all= "$1"
                   ;;
                  NO )
                     exiftool -all= -overwrite_original "$1"
           esac
           
           exit
      
      done
fi          
