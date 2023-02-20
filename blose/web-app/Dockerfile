FROM node:alpine
RUN apk --no-cache add git
RUN git clone https://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@github.com/ano308/gigatec_docker.git
WORKDIR gigatec_docker
RUN npm install
RUN npm i mysql2
EXPOSE 8080
CMD [ "npm", "start" ]