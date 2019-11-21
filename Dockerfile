FROM node:10.14.1-alpine

LABEL "com.github.actions.name"="Run ESLint"
LABEL "com.github.actions.description"="Run ESLint on JavaScript files."
LABEL "com.github.actions.icon"="circle"
LABEL "com.github.actions.color"="purple"
COPY package.json /package.json
COPY .eslintrc /.eslintrc
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm i
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
