<template>
<div>
    <router-view></router-view>
    <app-footer></app-footer>
    </div>
</template>

<script>
import HomePage from './components/homePage/HomePage.vue';
import CoursePage from './components/coursePage/CoursePage.vue';
import Footer from './components/shared/Footer.vue';

export default {
  components: {
    'home-page' : HomePage,
    'course-page': CoursePage,
    'app-footer' : Footer
  },
  data () {
    return {

    }
  }
}
</script>

<!--<style lang="scss">
   @import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
   @import '../scss/main.scss';

</style>-->
