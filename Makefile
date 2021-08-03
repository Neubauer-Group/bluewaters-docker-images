default: image-pyhf

image-pyhf:
	docker build . \
		--pull \
		--file pyhf/Dockerfile \
		--build-arg BASE_IMAGE=neubauergroup/centos-python3:3.8.10 \
		--build-arg PYHF_RELEASE=0.6.1 \
		--tag neubauergroup/bluewaters-pyhf:debug-local

image-momemta:
	docker build . \
		--pull \
		--file momemta/Dockerfile \
		--build-arg BASE_IMAGE=neubauergroup/momemta-python-centos:1.0.1 \
		--tag neubauergroup/bluewaters-momemta:debug-local
