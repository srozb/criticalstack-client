FROM centos:7
MAINTAINER Slawomir Rozbicki <docker@rozbicki.eu>

ENV http_proxy http://10.150.6.190:9090
ENV https_proxy http://10.150.6.190:9090

ENV api_key 1de50c48-7c67-4e15-63d0-06f4937341b9

RUN yum update -y \
&& curl https://packagecloud.io/install/repositories/criticalstack/critical-stack-intel/script.rpm.sh | bash \
&& yum install -y critical-stack-intel

RUN critical-stack-intel config --set proxy.url="$http_proxy" \
&& critical-stack-intel api $api_key



#CMD ["/usr/bin/python", "/opt/bro/bin/broctl"]

