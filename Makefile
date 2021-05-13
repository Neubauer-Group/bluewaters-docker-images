default: image-pyhf

image-pyhf:
	docker build . \
		--pull \
		--file pyhf/Dockerfile \
		--build-arg PYHF_RELEASE=0.6.1 \
		--tag neubauergroup/bluewaters-pyhf:debug-local
