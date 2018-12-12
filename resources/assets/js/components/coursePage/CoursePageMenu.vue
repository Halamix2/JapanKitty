<template>
  <b-navbar-nav>
        <li v-if="isAdmin()"><router-link to="/admin-panel" exact>Zarządzaj</router-link></li>
        <li><router-link to="/course" exact>STRONA KURSU</router-link></li>
        <li><router-link to="/settings" exact>USTAWIENIA</router-link></li>
        <li><a href="#" @click="signout"><span class="link-icon"><i class="fa fa-unlock" aria-hidden="true"></i></span>WYLOGUJ</a></li>
  </b-navbar-nav>
</template>

<script>
import authService from "../../services/authService";

export default {
  data() {
    return {};
  },
  methods: {
    signout() {
      const success = () => {
        this.$router.push("/home");
      };
      const error = () => {
        this.$router.push("/home");
      };
      authService.logout(success, error);
    },
    isAdmin() {
      return authService.isAdmin();
    }
  }
};
</script>
