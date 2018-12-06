<template>
  <div class="header header-homepage container-fluid">
      <div class="row">
        <b-navbar toggleable="lg" type="light" variant="info">
          <b-navbar-brand href="#"><logo></logo></b-navbar-brand>
          <b-navbar-toggle target="nav_collapse"></b-navbar-toggle>
          <b-collapse is-nav id="nav_collapse">

          <b-navbar-nav class="ml-auto">

          <main-menu></main-menu>
          </b-navbar-nav>
        </b-collapse>
      </b-navbar>
    </div>
  </div>
</template>

<script>
import Logo from "../shared/Logo.vue";
import HomePageMenu from "./HomePageMenu.vue";

export default {
  components: {
    logo: Logo,
    "main-menu": HomePageMenu
  },
  data() {
    return {};
  }
};
</script>