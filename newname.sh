cd source/_posts/

result=0
for file in *
do

if [ -d $file ]
    then
    continue
else
    subfix=${file:1:5}
    num=$((subfix))
    if [ $num -gt $result ]
        then
        result=$num
    fi
fi
done

result=`expr $result + 1`
hexo new "$result"
