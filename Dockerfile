FROM alpine:3.9
WORKDIR /usr/local/share/gate_to_json

ARG	GATE_EXPORT_JSON_VERSION=1.0
COPY	docker-build.sh /usr/local/bin/docker-build.sh
COPY	src src	
COPY	pom.xml .

RUN chmod u=rwx,g=rwx,o=r /usr/local/share/gate_to_json -R

RUN	docker-build.sh ${GATE_EXPORT_JSON_VERSION}

