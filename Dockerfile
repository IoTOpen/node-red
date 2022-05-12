FROM nodered/node-red:2.2.2
RUN npm i @iotopen/node-red-contrib-lynx
ADD settings.js /data/settings.js
