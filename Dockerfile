# choose base image
FROM node:22-alpine
# create working directory
WORKDIR /app
# copy package.json
COPY package*.json ./
# install dependences
RUN npm install
# copy remaining code
COPY . .
# expose to port
EXPOSE 5000

CMD ["npm", "start"]
