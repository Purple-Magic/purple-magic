IFS=''
touch home_page_build.haml
while read line; do echo $line >> home_page_build.haml; done < home_page.haml
wget https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css
echo ":css" >> home_page_build.haml
while read line; do echo "  $line" >> home_page_build.haml; done < bootstrap.min.css
rm bootstrap.min.css
