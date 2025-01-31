MODELHUB =${DESTDIR}/usr/share/deepin-modelhub/models/

build:
	echo "build none"

install:
	mkdir -p ${MODELHUB}
	cd BAAI-bge-large-zh-v1.5/gguf ; aria2c -x 16 -s 16 https://github.com/GXDE-OS/baai-bge-large-zh-v1.5/releases/download/resources/ggml-model-f16.gguf
	cp -r BAAI-bge-large-zh-v1.5 ${MODELHUB}
clean:
	rm -rfv BAAI-bge-large-zh-v1.5/gguf/ggml-model-f16.gguf
	#rm -rf ${MODELHUB}
