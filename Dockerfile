FROM node:lts-buster as builder

WORKDIR /app
COPY . /app

RUN npm install -g @angular/cli@7.3.9
RUN npm install
RUN npm run build:ssr


FROM node:lts-alpine
WORKDIR /app
COPY --from=builder /app/package.json /app/package.json
COPY --from=builder /app/dist /app/dist
EXPOSE 4200
CMD ["npm", "run", "serve:ssr"]
