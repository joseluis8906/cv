.PHONY: docker-build
docker-build:
	@docker build -t joseluis8906/cv:latest .

.PHONY: docker-run
docker-run:
	@docker run -i -t -p 4200:4000 joseluis8906/cv:latest
