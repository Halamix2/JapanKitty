<template>
    <main class="settingsSection">  
        <course-header></course-header>
        <div class="container">
          <div class="row">
            <div class="settings-container col-lg-4 offset-lg-4 col-md-6 offset-md-3 col-sm-8 offset-sm-2">
                <div class="settings"> 
                    <h1>Ustawienia</h1>
                    <div class="message">{{this.message}}</div>
                    <form class="form" method="post" action="#" v-if="!submitted">
                <div class="field" :class="{'has-error': errors.hasOwnProperty('name') }">
                    <input v-model="personDetails.name" data-vv-rules="alpha|min:3" class="form-control" type="text" name="name" placeholder="Imię"/>
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <p class="text-danger" v-if="errors.hasOwnProperty('name')">{{ errors.name[0] }}</p>
                </div>
                 <div class="field" :class="{'has-error': errors.hasOwnProperty('surname') }">
                    <input v-model="personDetails.surname" class="form-control" type="text" name="surname" placeholder="Nazwisko" data-vv-rules="alpha|min:3"/>
                    <i class="fa fa-address-card" aria-hidden="true"></i>
                    <p class="text-danger" v-if="errors.hasOwnProperty('surname')">{{ errors.surname[0] }}</p>
                </div>
                <div class="field" :class="{'has-error': errors.hasOwnProperty('email') }">
                    <input v-model="personDetails.email" data-vv-rules="email" class="form-control" type="email" name="email" placeholder="E-mail"/>
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                    <p class="text-danger" v-if="errors.hasOwnProperty('email')">{{ errors.email[0] }}</p>
                </div> 
                <div class="field" :class="{'has-error': errors.hasOwnProperty('password') }">
                    <input v-model="personDetails.password" ddata-vv-rules="password" class="form-control" type="password" name="password" placeholder="Stare hasło"/>
                    <i class="fa fa-lock" aria-hidden="true"></i>
                    <p class="text-danger" v-if="errors.hasOwnProperty('password')">{{ errors.password[0] }}</p>
                </div>
                <div class="field" :class="{'has-error': errors.hasOwnProperty('changedPassword') }">
                    <input v-model="changedPassword" ddata-vv-rules="password" class="form-control" type="password" name="password" placeholder="Nowe hasło"/>
                    <i class="fa fa-lock" aria-hidden="true"></i>
                    <p class="text-danger" v-if="errors.hasOwnProperty('password')">{{ errors.password[0] }}</p>
                </div>
                <div class="field" v-if="changedPassword !== ''">
                    <input v-model="confirmPassword" data-vv-rules="confirmPassword" class="form-control" type="password" name="confirmPassword" placeholder="Powtórz hasło" required/>
                    <i class="fa fa-lock" aria-hidden="true"></i>
                    <p class="text-danger" v-if="changedPassword !== confirmPassword">Hasła nie są zgodne</p>
                </div>
                <div class="radios">
                    <div class="field radioButton" :class="{'has-error': errors.hasOwnProperty('sex') }">
                    <input id="box1" class="form-control" type="radio" name="sex" value="Woman" v-model="personDetails.sex"/>
                    <label class="women" for="box1">Kobieta</label>
                    <input id="box2" class="form-control" type="radio" name="sex" value="Man" v-model="personDetails.sex"/>
                    <label for="box2">Mężczyzna</label>
                    </div>
                    <p class="text-danger" v-if="errors.hasOwnProperty('sex')">{{ errors.sex[0] }}</p>
                </div> 
              <div class="field" :class="{'has-error': errors.hasOwnProperty('birthday') }">
                    <input v-model="personDetails.birthday" class="form-control" type="date" name="birthday" placeholder="Data urodzenia" data-vv-rules="'required'"/>
                    <i class="fa fa-calendar" aria-hidden="true"></i>
                </div>
                <p class="submit"><input @click="change" type="button" name="sent" value="Zmień"/></p>
                </form>
                <!-- <div v-if="submitted" class="after-register">
                    <h3 class="after-register-header">Dziękujemy za poprawne zarejestrowanie się!</h3>
                    <span>Aby przejść do kursu kliknij przycik poniżej.</span>
                    <span>Życzymy owocnej nauki, </span>
                    <span class="last-span">zespół JapanKitty</span>
                    <router-link to="/course" exact><input type="button" value="Przejdź do kursu" class="after-register-button"/></router-link>
                </div> -->
            </div>
            </div>
            </div>
            </div>
    </main>
</template>

<script>
import CoursePageHeader from "./CoursePageHeader.vue";

export default {
  components: {
    "course-header": CoursePageHeader
  },
  data() {
    return {
      personDetails: {},
      newData: {},
      submitted: false,
      confirmPassword: "",
      changedPassword: '',
      errors: {},
      somethingChanged: false,
      message: ""
    };
  },
  methods: {
    change() {
      this.somethingChanged = false;
      if (this.personDetails.name !== this.originalData.name) {
        this.newData["new_name"] = this.personDetails.name;
        this.somethingChanged = true;
      }
      if (this.personDetails.surname !== this.originalData.surname) {
        this.newData["new_surname"] = this.personDetails.surname;
        this.somethingChanged = true;
      }
    if (this.personDetails.email !== this.originalData.email) {
        this.newData["new_email"] = this.personDetails.email;
        this.somethingChanged = true;
      }
    if (this.confirmPassword !== this.changedPassword) {
        this.newData["new_password"] = this.changedPassword;
        this.somethingChanged = true;
      }
    if (this.personDetails.sex !== this.originalData.sex) {
        this.newData["new_sex"] = this.personDetails.sex;
        this.somethingChanged = true;
      }
    if (this.personDetails.birthday !== this.originalData.birthday) {
        this.newData["new_birthday"] = this.personDetails.birthday;
        this.somethingChanged = true;
      }

      if (this.somethingChanged) {
        console.log("Obiekt do wysłania", this.newData);

        this.$http.post("edit-account", this.newData).then(response => {
          console.log(response);
          this.message = "Zmieniono poprawnie dane";
          this.originalData = Object.assign({}, this.personDetails);
          this.changedPassword = this.confirmPassword
        });
      } else {
        this.message =
          "Zmiany nie zostały zapisane, ponieważ dane nie zmieniły się";
      }
    }
  },
  beforeCreate() {
    console.log(this);
    this.$http
      .get("get-details", null, {
        headers: {
          Accept: "application/json"
        }
      })
      .then(response => {
        console.log(response);
        this.personDetails = response.body.success;
        this.originalData = Object.assign({}, this.personDetails);
        console.log(this.personDetails);
      });
  }
};
</script>