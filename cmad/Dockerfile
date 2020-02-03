FROM ubuntu:xenial
RUN apt update
RUN apt install -y python-pip
RUN apt install -y curl
RUN apt install -y wget
RUN pip install --trusted-host engci-maven.cisco.com -i http://engci-maven.cisco.com/artifactory/api/pypi/maglev-pypi/simple/ maglev-devtoolkit maglev-appctl ndp-cli
RUN apt install -y vim
RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt update
RUN apt install -y openjdk-8-jdk
RUN apt install -y iputils-ping socat
RUN apt install -y unzip zip
RUN curl -s "https://get.sdkman.io" | bash
RUN echo 'source "/root/.sdkman/bin/sdkman-init.sh"' >> /root/.bashrc
RUN bash -c 'source "/root/.sdkman/bin/sdkman-init.sh" && sdk install gradle 4.10.3'
RUN bash -c 'source "/root/.sdkman/bin/sdkman-init.sh" && sdk install gradle 3.5.1'
RUN mkdir /opt/maglev
ENV MANAGED_MONGO_STORE=maglev
ENV BYPASS_SECURITY=TRUE
ENV PM_RESOURCE_PATH=/opt/maglev/sw/apps/collector-manager/
ENV TEST_MODE=true
ENV POD_NAMESPACE=devenv
ENV _JAVA_OPTIONS=-Dtest.mode=true
ENV JVM_OPTS=-Dtest.mode=true
COPY entrypoint.sh /
COPY start_pipeline_infra.sh /
COPY install_pipeline_infra.sh /
ENTRYPOINT ["/entrypoint.sh"]
