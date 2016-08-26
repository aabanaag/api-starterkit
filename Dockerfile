FROM node:6.2.2
EXPOSE 3000
EXPOSE 4000
EXPOSE 5000
COPY . /api
WORKDIR /api

RUN cd /api; npm install
CMD ["npm", "run", "start:dev"]
