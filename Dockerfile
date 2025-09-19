FROM node:lts-alpine AS builder 

WORKDIR /app

COPY package.json .

RUN npm install 

COPY . .

RUN npm run build 

FROM nginx

<<<<<<< HEAD

EXPOSE 80

COPY --from=builder /app/build /usr/share/nginx/html



# just checking the new Feature branch over GITHUB
=======
COPY --from=builder /app/build /usr/share/nginx/html
>>>>>>> ed873b79482ca038270332369372f702ae564708
