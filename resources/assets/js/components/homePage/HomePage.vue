<template>
  <main class="homepage">
    <app-header></app-header>
    <banner></banner>
    <about-course v-bind:texts="this.texts"></about-course>
    <offer v-bind:texts="this.texts"></offer>
    <creator></creator>
    <contact v-bind:texts="this.texts"></contact>
  </main>
</template>

<script>
import HomePageAboutCourse from './HomePageAboutCourse.vue';
import HomePageBanner from './HomePageBanner.vue';
import HomePageContact from './HomePageContact.vue';
import HomePageCreator from './HomePageCreators.vue';
import HomePageHeader from './HomePageHeader.vue';
import HomePageOffer from './HomePageOffer.vue';


export default {
    components:{
        'about-course': HomePageAboutCourse,
        'banner' : HomePageBanner,
        'contact' : HomePageContact,
        'creator' : HomePageCreator,
        'app-header' : HomePageHeader,
        'offer' : HomePageOffer,
    },
  data () {
    return {
      texts: []
    }
  },
    mounted() {
    this.$http.get("texts").then(response => {
      this.texts = response.body.success[1];
      console.log("pobrano dane", this.texts);
    });
  }
}
</script>