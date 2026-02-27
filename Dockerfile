FROM nodered/node-red:4.1.6
RUN npm i @iotopen/node-red-contrib-lynx && \
    npm i @node-red-contrib-themes/theme-collection && \
    npm i @iotopen/node-lynx && \
    npm i bcrypt
ADD settings.js /settings.js
ADD healthcheck.js /healthcheck.js

ENTRYPOINT ["npm", "--no-update-notifier", "--no-fund", "start", "--cache", "/data/.npm", "--", "--settings", "/settings.js", "--userDir", "/data"]
