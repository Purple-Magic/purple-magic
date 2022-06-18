IFS=''
BUILD_FILE=${FILE}_build.haml
echo $BUILD_FILE
touch $BUILD_FILE
while read line; do echo $line >> $BUILD_FILE; done < ${FILE}.haml
wget https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css
echo ":css" >> $BUILD_FILE
while read line; do echo "  $line" >> $BUILD_FILE; done < bootstrap.min.css
rm bootstrap.min.css
