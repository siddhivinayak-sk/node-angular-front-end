FROM node:latest as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm install -g @angular/cli
RUN ng build
EXPOSE 80
#ENTRYPOINT ["ng", "serve", "--port", "80", "--host", "0.0.0.0"]
