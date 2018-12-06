<template>
  <b-navbar-nav>
        <li><router-link to="/course" exact>STRONA KURSU</router-link></li>
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
