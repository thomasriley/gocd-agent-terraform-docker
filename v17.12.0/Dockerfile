FROM gocd/gocd-agent-alpine-3.5:v17.12.0

WORKDIR /tmp

RUN   apk update \ 
 &&   apk add ca-certificates wget \  
 &&   update-ca-certificates 

RUN wget https://releases.hashicorp.com/terraform/0.11.2/terraform_0.11.2_linux_amd64.zip
RUN unzip /tmp/terraform_0.11.2_linux_amd64.zip
RUN mv /tmp/terraform /usr/bin/.
RUN chmod 775 /usr/bin/terraform
RUN rm /tmp/terraform_0.11.2_linux_amd64.zip

ENTRYPOINT ["/docker-entrypoint.sh"]
