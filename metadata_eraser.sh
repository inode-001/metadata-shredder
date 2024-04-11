if [[  $# == 0 ]] ; then
       echo -e "\e[31mPlease Input File.\e[0m\n Usage :\n\t\e[32mbash $0 yourfile\e[0m"
       exit
fi

if [[  -f $1 ]] ; then
      echo "Would you want to backup the picture before wiping its metadata: "
      select option in YES NO QUIT ; do
          case $option in
                YES )
                   exiftool -all= "$1"
                   ;;
                  NO )
                     exiftool -all= -overwrite_original "$1";;
                  QUIT )
                  echo -e "\e[33mQuitting......\e[0m";;
           esac
           
           exit
      
      done        
else
   echo -e "\e[31mFILE NOT FOUND\e[0m"
fi


