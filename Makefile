docker/build:
	docker build -t magnolia .

docker/run: docker-build
	docker run --publish=8080:8080 magnolia

gcloud/deploy:
	gcloud app --project=magnolia-172808 --verbosity=info deploy

gcloud/browse:
	gcloud app --project=magnolia-172808 browse

sbt/package:
	sbt package
