default: image-pyhf

image-pyhf:
	docker build . \
		--pull \
		--file pyhf/Dockerfile \
		--build-arg PYHF_RELEASE=0.5.4 \
		--tag neubauergroup/bluewaters-pyhf:debug-local
