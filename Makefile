default: image

image:
	docker build . \
		--pull \
		--file pyhf/Dockerfile \
		--build-arg PYHF_RELEASE=0.5.4 \
		--tag neubauergroup/bluewater-pyhf:debug-local
