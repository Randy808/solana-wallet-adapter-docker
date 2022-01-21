<template>
  <div>
    <WalletProvider :wallets="wallets" :auto-connect="true">
      <WalletModalProvider>
        <WalletMultiButton />
      </WalletModalProvider>
    </WalletProvider>
    <img alt="Vue logo" src="./assets/logo.png" />
    <HelloWorld msg="Welcome to Your Vue.js App" />
  </div>
</template>

<script>
import HelloWorld from "./components/HelloWorld.vue";
import { PhantomWalletAdapter } from "@solana/wallet-adapter-wallets";
import {
  WalletModalProvider,
  WalletMultiButton,
} from "@solana/wallet-adapter-vue-ui";

import { WalletProvider } from "@solana/wallet-adapter-vue";

export default {
  name: "App",
  data: () => {
    return {
      wallets: [new PhantomWalletAdapter()],
    };
  },
  components: {
    HelloWorld,
    WalletProvider,
    WalletModalProvider,
    WalletMultiButton,
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
