install:
	docker pull kalashnikovisme/haml-docker 
	docker pull ruby:3.1

build_home_page:
	./fill_home_page.sh
	docker run --rm \
		--volume "${PWD}/insert_images.rb:/insert_images.rb" \
		--volume "${PWD}/home_page_build.haml:/home_page_build.haml" \
		--volume "${PWD}/home_page/images/thread_icon.base64:/thread_icon.base64" \
		--volume "${PWD}/home_page/images/get_it_on_google_play.base64:/get_it_on_google_play.base64" \
		--volume "${PWD}/home_page/images/avatar.base64:/avatar.base64" \
		--volume "${PWD}/home_page/images/sg_logo_min.base64:/sg_logo_min.base64" \
		ruby ruby insert_images.rb home_page_build.haml
	docker run --rm --volume "${PWD}:/app" kalashnikovisme/haml-docker /app/home_page_build.haml > home_page.html
	xclip -sel clip < home_page.html
	rm home_page_build.haml
