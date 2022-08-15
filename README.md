# Rocket.Chat integrations and configuration

## Home Page builder

We use Haml to build home page for Rocket.Chat.

### Change home page

1. Open [home_page.haml](https://github.com/Purple-Magic/purple-magic/blob/main/home_page.haml)
2. Make updates
3. Run `make build_home_page`
4. You can see upgraded Home Page in home_page.html and it's content automatically added to your clipboard
5. Open `Layout` settings in Rocket.Chat and fill `Content` with HTML in your clipboard (just press CTRL + V)

## Podcast how-to builder

We use Haml to build [IT Way Podcast how-to](https://it-way.pro/page/podcast-how-to)

### Change page

1. Open [podcast_how_to.haml](https://github.com/Purple-Magic/purple-magic/blob/main/podcast_how_to.haml)
2. Make updates
3. Run `make podcast_how_to_build'
4. You can see upgraded page in podcast_how_to.html and it's content automatically added to your clipboard
5. Open [edit page](https://it-way.pro/admin/records/5/edit?model=Tramway%3A%3APage%3A%3APage)
6. Past data from clipboard to Content field
