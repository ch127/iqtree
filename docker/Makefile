TAG = hurwitzlab/iqtree:1.6.12

img:
	docker build --tag=$(TAG) .

run:
	docker run --rm $(TAG)

shell:
	docker run --rm -it $(TAG) bash

push: 
	docker push $(TAG)
