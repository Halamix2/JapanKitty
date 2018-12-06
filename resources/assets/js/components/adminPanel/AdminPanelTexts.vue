<template>
  <main class="texts-section">
    <main-menu class="navbar-toggleable-md"></main-menu>
      <div class="container">
        <div class="row">
            <div class="texts-container col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-sm-10 offset-sm-1">
                <div class="texts"> 
                    <h1>Teksty na stronie</h1>
                    <div class="message">{{this.message}}</div>
                    <form class="form" method="post" action="#" v-if="!submitted">
                        <label class="field-description">Opis oferty</label>
                <div class="field" :class="{'has-error': errors.hasOwnProperty('offerDescription') }">
                    
                    <input v-model="texts.offerDescription" data-vv-rules="alpha|min:3" class="form-control" type="text" name="offerDescription" placeholder="Opis oferty"/>
                    <i class="fa fa-plus" aria-hidden="true"></i>
                    <p class="text-danger" v-if="errors.hasOwnProperty('offerDescription')">{{ errors.offerDescription[0] }}</p>
                </div>
                <label class="field-description">Opcja 1</label>
                 <div class="field" :class="{'has-error': errors.hasOwnProperty('offerOption1') }">
                    <input v-model="texts.offerOption1" class="form-control" type="text" name="offerOption1" placeholder="Opcja numer 1" data-vv-rules="alpha|min:3"/>
                    <i class="fa fa-plus" aria-hidden="true"></i>
                    <p class="text-danger" v-if="errors.hasOwnProperty('offerOption1')">{{ errors.offerOption1[0] }}</p>
                </div>
                <label class="field-description">Opcja 2</label>
                <div class="field" :class="{'has-error': errors.hasOwnProperty('offerOption2') }">
                    <input v-model="texts.offerOption2" class="form-control" type="text" name="offerOption2" placeholder="Opcja numer 2" data-vv-rules="alpha|min:3"/>
                    <i class="fa fa-plus" aria-hidden="true"></i>
                    <p class="text-danger" v-if="errors.hasOwnProperty('offerOption2')">{{ errors.offerOption2[0] }}</p>
                </div>
                <label class="field-description">Opcja 3</label>
                <div class="field" :class="{'has-error': errors.hasOwnProperty('offerOption3') }">
                    <input v-model="texts.offerOption3" class="form-control" type="text" name="offerOption3" placeholder="Opcja numer 3" data-vv-rules="alpha|min:3"/>
                    <i class="fa fa-plus" aria-hidden="true"></i>
                    <p class="text-danger" v-if="errors.hasOwnProperty('offerOption3')">{{ errors.offerOption3[0] }}</p>
                </div>
                <label class="field-description">Opis kontaktu</label>
                <div class="field" :class="{'has-error': errors.hasOwnProperty('contactDescription') }">
                    <input v-model="texts.contactDescription" class="form-control" type="text" name="contactDescription" placeholder="Kontakt opis" data-vv-rules="alpha|min:3"/>
                    <i class="fa fa-plus" aria-hidden="true"></i>
                    <p class="text-danger" v-if="errors.hasOwnProperty('contactDescription')">{{ errors.contactDescription[0] }}</p>
                </div>
                 <label class="field-description">O kursie</label>
                <div class="field" :class="{'has-error': errors.hasOwnProperty('aboutCourse') }">
                    <textarea v-model="texts.aboutCourse" class="form-control" type="text" name="aboutCourse" placeholder="Opis kursu" data-vv-rules="alpha|min:3"></textarea>
                    <p class="text-danger" v-if="errors.hasOwnProperty('aboutCourse')">{{ errors.aboutCourse[0] }}</p>
                </div>
                
                <p class="submit"><input @click="add" type="button" name="sent" value="Dodaj"/></p>
                </form>
        </div>
        </div>
        </div>
    </div>
  </main>
</template>

<script>
import Menu from "../coursePage/CoursePageHeader.vue";

export default {
  components: {
    "main-menu": Menu
  },
  data() {
    return {
      texts: {},
      newData: {},
      submitted: false,
      errors: {},
      somethingChanged: false,
      message: ""
    };
  },
  methods: {
    add() {
      this.somethingChanged = false;
      this.newData["id"] = 1;
      this.newData["offerDescription"] = this.texts.offerDescription;
      this.newData["offerOption1"] = this.texts.offerOption1;
      this.newData["offerOption2"] = this.texts.offerOption2;
      this.newData["offerOption3"] = this.texts.offerOption3;
      this.newData["contactDescription"] = this.texts.contactDescription;
      this.newData["aboutCourse"] = this.texts.aboutCourse;

      if (this.texts.offerDescription !== this.originalData.offerDescription) {
        this.somethingChanged = true;
      }
      if (this.texts.offerOption1 !== this.originalData.offerOption1) {
        this.somethingChanged = true;
      }
      if (this.texts.offerOption2 !== this.originalData.offerOption2) {
        this.somethingChanged = true;
      }
      if (this.texts.offerOption3 !== this.originalData.offerOption3) {
        this.somethingChanged = true;
      }
      if (
        this.texts.contactDescription !== this.originalData.contactDescription) {
        this.somethingChanged = true;
      }
      if (this.texts.aboutCourse !== this.originalData.aboutCourse) {
        this.somethingChanged = true;
      }

      if (this.somethingChanged) {
        console.log("Obiekt do wysłania", this.newData);
        this.$http.post("edit-text", this.newData).then(response => {
          console.log("post", response);
          this.message = "Zmieniono poprawnie dane";
          this.originalData = Object.assign({}, this.texts);
        });
      } else {
        this.message =
          "Zmiany nie zostały zapisane, ponieważ dane nie zmieniły się";
      }
    },
    submitForm() {
      this.submitted = true;
    }
  },
  beforeCreate() {
    console.log(this);
    this.$http.get("texts").then(response => {
      console.log(response);
      this.texts = response.body.success[1];
      this.originalData = Object.assign({}, this.texts);
      console.log(this.texts);
    });
  }
};
</script>