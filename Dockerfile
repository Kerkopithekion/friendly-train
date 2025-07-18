FROM node:18-alpine
COPY . . 
RUN sudo apt update && sudo apt install -y nodejs npm
RUN npm install 
EXPOSE 5000
ENTRYPOINT ["node", "index.js"]
