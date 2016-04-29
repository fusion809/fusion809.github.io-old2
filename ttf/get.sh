L=('fontawesome-webfont.svg'
'FontAwesome.otf'
'fontawesome-webfont.eot'
'fontawesome-webfont.ttf'
'fontawesome-webfont.woff'
'fontawesome-webfont.woff2')
for i in "${L[@]}"
do
	curl -OL https://github.com/FortAwesome/Font-Awesome/raw/master/fonts/"$i"
done
