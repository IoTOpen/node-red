FROM nodered/node-red:2.2.2
RUN npm i @iotopen/node-red-contrib-lynx && \
    npm i @node-red-contrib-themes/theme-collection
ADD settings.js /settings.js

ENTRYPOINT ["npm", "--no-update-notifier", "--no-fund", "start", "--cache", "/data/.npm", "--", "--settings", "/settings.js", "--userDir", "/data"]
