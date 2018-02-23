<template>
  <main class="login-section">
    <app-header></app-header>
      <div class="container">
          <div class="row">
            <div class="login-container col-lg-4 offset-lg-4 col-md-6 offset-md-3 col-sm-8 offset-sm-2">
      <div class="login">
        <h1>Login</h1>
        <form class="form" method="post" action="#" v-if="!submitted">
          <div class="field" >
            <input v-model="login.email" data-rules="required|email" class="form-control" type="email" placeholder="Email"/>
            <i class="fa fa-user" aria-hidden="true"></i>
          </div>
          <div class="field">
            <input v-model="login.password" data-rules="required|password" class="form-control" type="password" placeholder="Password"/>
            <i class="fa fa-lock" aria-hidden="true"></i>
            <p class="text-danger" v-if="isError===true">Podano zły login lub hasło</p>
          </div>
          <p class="submit"><input @click="signin" type="button" name="sent" value="Zaloguj"/></p>
        </form>
        <div v-if="submitted" class="after-login">
            <h3 class="after-login-header">Zalogowano!</h3>
            <span>Aby przejść do kursu kliknij przycik poniżej.</span>
            <span>Życzymy owocnej nauki, </span>
            <span class="last-span">zespół JapanKitty</span>
            <router-link to="/course" exact><input type="button" value="Przejdź do kursu" class="after-login-button"/></router-link>
      </div>
      </div>
      </div>
    </div>
  </div>
  </main>
</template>

<script>
import HomePageHeader from "./HomePageHeader.vue";
import Vue from "vue";
import authService from "../../services/authService";

export default {
  components: {
    "app-header": HomePageHeader
  },
  data() {
    return {
      login: {
        email: "",
        password: ""
      },
      submitted: false,
      isError: false
    };
  },
  beforeCreate() {
    if(authService.getToken() !== null) this.$router.push("/course");
  },
  methods: {
    submitForm() {
      this.submitted = true;
    },
    signin() {
      const success = () => {
        this.isError = false;
        this.$router.push("/course");
        location.reload();
      };
      const error = () => {
        this.isError = true;
      };
      authService.login(this.login, success, error);
    }
  }
};
</script>