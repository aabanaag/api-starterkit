FROM node:6.2.2
EXPOSE 3000
COPY . /api
WORKDIR /api

RUN cd /api; npm install
CMD ["npm", "run", "start:dev"]
