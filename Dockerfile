FROM node:16-alpine

WORKDIR /app
COPY . .
RUN npm ci
RUN npm run build

ENV NODE_ENV production

EXPOSE 3000

CMD [ "npx", "serve", "build" ]



# ENV PATH /app/node_modules/.bin:$PATH 
# COPY package.json ./
# COPY package-lock.json ./
# RUN npm install --silent
# RUN npm install react-scripts@5.0.1 -g --silent
# COPY . ./
# CMD [ "npm", "start" ]