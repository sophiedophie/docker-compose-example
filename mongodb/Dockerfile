FROM mongo

WORKDIR /usr/src/db

COPY ./init.json .

CMD mongoimport --host=127.0.0.1 \
  --db shenlong --collection dummyCollection --drop --file /usr/src/db/init.json