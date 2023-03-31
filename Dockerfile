FROM node:14-stretch-slim as build
WORKDIR /app
# COPY BEN NGOAI VAO CONTAINER 
COPY . /app
RUN npm install && npm run build

# Chayj ban da build
FROM nginx
COPY --from=build /app/build /usr/share/nginx/html
