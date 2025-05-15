.PHONY: check
check:
	shellcheck ./duskfall

# compile the web version
.PHONY: web
web:
	cat duskfall > web/index.txt

# deploy the website
.PHONY: deploy
deploy:
	rsync -avh --delete ./web/{index.html,index.txt,style.css} web:/var/www/nightfall.ysap.sh/
