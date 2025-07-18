FROM node:18-alpine
COPY . . 
RUN npm install 
EXPOSE 5000
ENTRYPOINT ["node", "index.js"]
