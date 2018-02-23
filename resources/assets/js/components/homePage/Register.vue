<template>
  <main class="register-section">
    <app-header></app-header>
              <div class="container">
          <div class="row">
            <div class="register-container col-lg-4 offset-lg-4 col-md-6 offset-md-3 col-sm-8 offset-sm-2">
        <div class="register">
        <h1>Rejestracja</h1>
        <form class="form" method="post" action="#" v-if="!submitted">
          <div class="field" :class="{'has-error': errors.hasOwnProperty('name') }">
            <input v-model="newUser.name" data-vv-rules="required|alpha|min:3" class="form-control" type="text" name="name" placeholder="Imię"/>
            <i class="fa fa-user" aria-hidden="true"></i>
            <p class="text-danger" v-if="errors.hasOwnProperty('name')">{{ errors.name[0] }}</p>
          </div>
          <div class="field" :class="{'has-error': errors.hasOwnProperty('surname') }">
            <input v-model="newUser.surname" class="form-control" type="text" name="surname" placeholder="Nazwisko" data-vv-rules="required|alpha|min:3"/>
            <i class="fa fa-address-card" aria-hidden="true"></i>
            <p class="text-danger" v-if="errors.hasOwnProperty('surname')">{{ errors.surname[0] }}</p>
          </div>
          <div class="field" :class="{'has-error': errors.hasOwnProperty('email') }">
            <input v-model="newUser.email" data-vv-rules="required|email" class="form-control" type="email" name="email" placeholder="E-mail"/>
            <i class="fa fa-envelope" aria-hidden="true"></i>
            <p class="text-danger" v-if="errors.hasOwnProperty('email')">{{ errors.email[0] }}</p>
          </div>
          <div class="field" :class="{'has-error': errors.hasOwnProperty('password') }">
            <input v-model="newUser.password" ddata-vv-rules="required|password" class="form-control" type="password" name="password" placeholder="Hasło"/>
            <i class="fa fa-lock" aria-hidden="true"></i>
            <p class="text-danger" v-if="errors.hasOwnProperty('password')">{{ errors.password[0] }}</p>
          </div>
          <div class="field">
            <input v-model="confirmPassword" data-vv-rules="required|confirmPassword" class="form-control" type="password" name="confirmPassword" placeholder="Powtórz hasło" required/>
            <i class="fa fa-lock" aria-hidden="true"></i>
            <p class="text-danger" v-if="newUser.password !== confirmPassword">Hasła nie są zgodne</p>
          </div>
          <div class="radios">
            <div class="field radioButton" :class="{'has-error': errors.hasOwnProperty('sex') }">
              <input id="box1" class="form-control" type="radio" name="sex" data-vv-rules="'required'" value="Woman" v-model="newUser.sex"/>
              <label class="women" for="box1">Kobieta</label>
              <input id="box2" class="form-control" type="radio" name="sex" data-vv-rules="'required'" value="Man" v-model="newUser.sex"/>
              <label for="box2">Mężczyzna</label>
            </div>
            <p class="text-danger" v-if="errors.hasOwnProperty('sex')">{{ errors.sex[0] }}</p>
          </div>
          <div class="field" :class="{'has-error': errors.hasOwnProperty('birthday') }">
            <input v-model="newUser.birthday" class="form-control" type="date" name="birthday" placeholder="Data urodzenia" data-vv-rules="'required'"/>
            <i class="fa fa-calendar" aria-hidden="true"></i>
          </div>
          <p class="submit"><input @click="register" type="button" name="sent" value="Register"/></p>
        </form>
        <div v-if="submitted" class="after-register">
            <h3 class="after-register-header">Dziękujemy za poprawne zarejestrowanie się!</h3>
            <span>Aby przejść do kursu kliknij przycik poniżej.</span>
            <span>Życzymy owocnej nauki, </span>
            <span class="last-span">zespół JapanKitty</span>
            <router-link to="/course" exact><input type="button" value="Przejdź do kursu" class="after-register-button"/></router-link>
        </div>
      </div>
    </div>
  </div>
  </div>
  </main>
</template>

<script>
import HomePageHeader from "./HomePageHeader.vue";
import authService from "../../services/authService";

export default {
  components: {
    "app-header": HomePageHeader
  },

  data() {
    return {
      newUser: {
        name: "",
        surname: '',
        email: "",
        password: "",
        sex: '',
        birthday: ''
      },
      submitted: false,
      confirmPassword: "",
      errors: {}
    };
  },
  methods: {
    register() {
      const success = () => {
        this.submitted = true;
      };
      const error = (response) => {
        console.log(response);
        this.errors = response.body.error;
        console.log(this.errors);
      };
      authService.register(this.newUser, success, error);
    },
    submitForm() {
      this.submitted = true;
    }
  }
};
</script>