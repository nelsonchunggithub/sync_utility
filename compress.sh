echo "0.   Compress sample cmd"
echo "3.   Compress .tar.gz"
echo "31.  Decompress .tar.gz"
echo "4.   Decompress .bz"
echo "7.   Compress .tar.bz2"
echo "71.  Decompress .tar.bz2"
echo "11.  Compress .tar.Z"
echo "111. Decompress .tar.Z"
echo "12.  Compress .tgz"
echo "121. Decompress .tgz"
read option

case "$option" in
    "3")
    echo "Compress .tar.gz"
    echo "Please input filename:"
    read filename
    echo "Please input directory:"
    read dirname
    tar zcvf $filename\.tar.gz $dirname
    ;;
    "31")
    echo "Decompress .tar.gz"
    echo "Please input filename:"
    read filename
    tar zxvf $filename\.tar.gz
    ;;
    "4")
    echo "Decompress .bz"
    echo "Please input filename:"
    read filename
    bunzip2 -d $filename.bz
    "7")
    echo "Compress .tar.bz2"
    echo "Please input filename:"
    read filename
    echo "Please input directory:"
    read dirname
    tar jcvf $filename\.tar.bz2 $dirname
    ;;
    "71")
    echo "Decompress .tar.gz"
    echo "Please input filename:"
    read filename
    tar jxvf $filename\.tar.bz2
    ;;
    "8")
    echo "Compress .xz"
    echo "Please input filename:"
    read filename
    echo "Please input directory:"
    read dirname
    xz -z $filename\.xz $dirname
    ;;
    "81")
    echo "Decompress .xz"
    echo "Please input filename:"
    read filename
    xz -d $filename\.xz
    ;;
    "11")
    read -p "Please input filename : " filename
    read -p "Please input dirname : " dirname
    echo `tar zcvf $filename.tar.Z $dirname`
    ;;
    "111")
    read -p "Please input filename : " filename
    echo `tar zxvf $filename.tar.Z`
    ;;
    "12")
    read -p "Please input filename : " filename
    echo `tar zcvf $filename.tgz $filename`
    ;;
    "121")
    read -p "Please input filename : " filename
    echo `tar zxvf $filename.tgz`
    ;;
    *)
    echo "Not supported"
    ;;
esac