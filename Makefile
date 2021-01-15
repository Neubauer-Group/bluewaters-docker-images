default: image

image:
	docker build . \
		--pull \
		-f pyhf/Dockerfile \
		-t neubauergroup/bluewater-pyhf:debug-local
