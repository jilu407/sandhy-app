FROM node AS sandhy
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod
RUN ls dist/angular-app-sandhya

FROM nginx
COPY --from=sandhy /app/dist/angular-app-sandhya/ /usr/share/nginx/html/
