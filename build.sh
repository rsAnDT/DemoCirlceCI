input="$1"
input=${input%-*}
input=${input##*-}
echo $input
string=$1
for reqsubstr in 'alpha' 'beta' 'production';do
  if [ -z "${string##*$reqsubstr*}" ] ;then
      echo "String '$string' contain substring: '$reqsubstr'."
#      // kiểm tra có chứa chữ all hay không thì build all, còn không thì lấy ra tên folder
    else
      echo "String '$string' don't contain substring: '$reqsubstr'."
    fi
  done
