local: mimesniff.bs
	bikeshed spec mimesniff.bs mimesniff.html --md-Text-Macro="SNAPSHOT-LINK LOCAL COPY"

remote: mimesniff.bs
	curl https://api.csswg.org/bikeshed/ -f -F file=@mimesniff.bs > mimesniff.html -F md-Text-Macro="SNAPSHOT-LINK LOCAL COPY"

deploy: mimesniff.bs
	curl --remote-name --fail https://resources.whatwg.org/build/deploy.sh && bash ./deploy.sh
