FROM alpine:3.20.2

WORKDIR /src/

COPY . .

RUN apk add --update npm

RUN npm install --legacy-peer-deps 

EXPOSE 5173

CMD [ "npm", "run" ,"dev" ]
