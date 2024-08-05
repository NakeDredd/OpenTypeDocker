FROM alpine:3.20.2

WORKDIR /src/

COPY package.json .

RUN apk add --update npm

RUN npm install --legacy-peer-deps 

COPY . .

EXPOSE 5173

CMD [ "npm", "run" ,"dev" ]
