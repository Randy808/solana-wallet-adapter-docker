FROM node:lts-alpine
RUN npm install -g @vue/cli
RUN vue create app -m yarn -d -p __default_vue_3__
WORKDIR /app
RUN npm install --save @solana/wallet-adapter-vue @solana/wallet-adapter-vue-ui @solana/wallet-adapter-wallets
COPY ./App.vue ./src
CMD [ "npm", "run", "serve" ]