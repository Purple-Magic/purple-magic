# Rocket.Chat integrations and configuration

## Home Page builder

We use Haml to build home page for Rocket.Chat.

### Change home page

1. Open [home_page.haml](https://github.com/Purple-Magic/purple-magic/blob/main/home_page.haml)
2. Make updates
3. Run `make build_home_page`
4. You can see upgraded Home Page in home_page.html and it's content automatically added to your clipboard
5. Open `Layout` settings in Rocket.Chat and fill `Content` with HTML in your clipboard (just press CTRL + V)
