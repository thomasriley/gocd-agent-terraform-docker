FROM gocd/gocd-agent-alpine-3.5:v17.10.0

WORKDIR /tmp

RUN   apk update \ 
 &&   apk add ca-certificates wget \  
 &&   update-ca-certificates 

RUN wget https://releases.hashicorp.com/terraform/0.11.1/terraform_0.11.1_linux_amd64.zip
RUN unzip /tmp/terraform_0.11.1_linux_amd64.zip
RUN cp /tmp/terraform /usr/bin/.
RUN chmod 775 /usr/bin/terraform

ENTRYPOINT ["/docker-entrypoint.sh"]
