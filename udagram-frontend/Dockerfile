# ### Build
# FROM beevelop/ionic:update-ionic-6.16 AS ionic
# ## Create app directory
# WORKDIR /usr/src/app
# ## Install app dependencies
# ## A wildcard is used to ensure both package.json AND package-lock.json are copied
# COPY package*.json ./
# ENV NODE_OPTIONS=--openssl-legacy-provider
# RUN npm ci -f
# ## Bundle app source
# COPY . .
# RUN ionic build
# ### Run 
# FROM nginx:alpine
# #COPY www /usr/share/nginx/html
# COPY --from=ionic  /usr/src/app/www /usr/share/nginx/html


### Build
FROM beevelop/ionic:update-ionic-6.16 AS ionic
## Create app directory
WORKDIR /usr/src/app
## Install app dependencies
## A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./
RUN npm ci
## Bundle app source
COPY . .
RUN ionic build
### Run
FROM nginx:alpine
#COPY www /usr/share/nginx/html
COPY --from=ionic  /usr/src/app/www /usr/share/nginx/html