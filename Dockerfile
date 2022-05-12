FROM nodered/node-red:2.2.2
RUN npm i @iotopen/node-red-contrib-lynx && \
    npm i @node-red-contrib-themes/dark
ADD settings.js /data/settings.js
