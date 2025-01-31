MODELHUB =${DESTDIR}/usr/share/deepin-modelhub/models/

build:
	echo "build none"

install:
	mkdir -p ${MODELHUB}
	cp -r BAAI-bge-large-zh-v1.5 ${MODELHUB}
clean:
	#rm -rf ${MODELHUB}
