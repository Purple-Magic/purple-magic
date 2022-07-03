install:
	docker pull kalashnikovisme/haml-docker 
	docker pull ruby:3.1

home_page_build:
	FILE=home_page ./add_bootstrap_stylesheets.sh
	docker run --rm \
		--volume "${PWD}/home_page_build.haml:/home_page_build.haml" \
		--volume "${PWD}/home_page/insert_images.rb:/insert_images.rb" \
		--volume "${PWD}/home_page/images/thread_icon.base64:/thread_icon.base64" \
		--volume "${PWD}/home_page/images/get_it_on_google_play.base64:/get_it_on_google_play.base64" \
		--volume "${PWD}/home_page/images/avatar.base64:/avatar.base64" \
		--volume "${PWD}/home_page/images/sg_logo_min.base64:/sg_logo_min.base64" \
		--volume "${PWD}/home_page/images/purple_magic_logo.base64:/purple_magic_logo.base64" \
		--volume "${PWD}/home_page/images/red_magic_logo.base64:/red_magic_logo.base64" \
		--volume "${PWD}/home_page/images/background.png:/background.png" \
		ruby ruby insert_images.rb home_page_build.haml
	docker run --rm --volume "${PWD}:/app" kalashnikovisme/haml-docker /app/home_page_build.haml > home_page.html
	xclip -sel clip < home_page.html
	rm home_page_build.haml

podcast_how_to_build:
	FILE=podcast_how_to ./add_bootstrap_stylesheets.sh
	docker run --rm \
		--volume "${PWD}/insert_images.rb:/insert_images.rb" \
		--volume "${PWD}/podcast_how_to_build.haml:/podcast_how_to_build.haml" \
		--volume "${PWD}/home_page/images/red_magic_logo.base64:/red_magic_logo.base64" \
		ruby ruby insert_images.rb podcast_how_to_build.haml
	docker run --rm --volume "${PWD}:/app" kalashnikovisme/haml-docker /app/podcast_how_to_build.haml > podcast_how_to.html
	xclip -sel clip < podcast_how_to.html
	rm podcast_how_to_build.haml
