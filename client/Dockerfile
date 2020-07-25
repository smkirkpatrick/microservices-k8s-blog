FROM node:alpine

ENV CI=true
# ^ Needed because of https://github.com/facebook/create-react-app/issues/8688

WORKDIR /app

COPY package.json ./
RUN npm install

COPY ./ ./

CMD ["npm", "start"]
