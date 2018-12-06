
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */
/*
import Vue from 'vue'
*/
import App from './App.vue'
import VueResource from 'vue-resource'
import VueRouter from 'vue-router'
import Routes from './routes'
import BootstrapVue from 'bootstrap-vue'
import VueAgile from 'vue-agile'
import vueSmoothScroll from 'vue-smooth-scroll'
import VeeValidate from 'vee-validate'
//import VueSession from 'vue-session'

import authService from './services/authService';
require('./bootstrap');

window.Vue = require('vue');

Vue.use(VueResource);
Vue.use(VueRouter);
Vue.use(BootstrapVue);
Vue.use(VueAgile);
Vue.use(vueSmoothScroll);
Vue.use(VeeValidate);
//Vue.use(VueSession);

Vue.http.options.root = 'http://homestead.jk/api/v1/';
Vue.http.options.emulateJSON = true;
const router = new VueRouter({
  routes: Routes,
  mode: 'history'
});
/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

Vue.component('logo', require('./components/shared/Logo.vue'));
Vue.component('hooter', require('./components/shared/Footer.vue'));
Vue.component('homepageaboutcourse', require('./components/homePage/HomePageAboutCourse.vue'));
Vue.component('homepageheader', require('./components/homePage/HomePageHeader.vue'));
Vue.component('homepagebanner', require('./components/homePage/HomePageBanner.vue'));
Vue.component('homepagemenu', require('./components/homePage/HomePageMenu.vue'));
Vue.component('login', require('./components/homePage/LogIn.vue'));
Vue.component('homepage', require('./components/homePage/HomePage.vue'));
Vue.component('Register', require('./components/homePage/Register.vue'));
Vue.component('HomePageContact', require('./components/homePage/HomePageContact.vue'));
Vue.component('CreatorsSocialMedia', require('./components/homePage/CreatorsSocialMedia.vue'));
Vue.component('HomePageOffer', require('./components/homePage/HomePageOffer.vue'));
Vue.component('CreatorsSinglePerson', require('./components/homePage/CreatorsSinglePerson.vue'));
Vue.component('HomePageCreators', require('./components/homePage/HomePageCreators.vue'));
Vue.component('ContactForm', require('./components/homePage/ContactForm.vue'));
Vue.component('QuizView', require('./components/coursePage/QuizView.vue'));
Vue.component('HangmanView', require('./components/coursePage/HangmanView.vue'));
Vue.component('Flashcards', require('./components/coursePage/Flashcards.vue'));
Vue.component('CoursePage', require('./components/coursePage/CoursePage.vue'));
Vue.component('CoursePageMyCourse', require('./components/coursePage/CoursePageMyCourse.vue'));
Vue.component('DictionaryView', require('./components/coursePage/DictionaryView.vue'));
Vue.component('SidebarNav', require('./components/coursePage/SidebarNav.vue'));
Vue.component('CoursePageHeader', require('./components/coursePage/CoursePageHeader.vue'));
Vue.component('CoursePageMiddle', require('./components/coursePage/CoursePageMiddle.vue'));
Vue.component('Settings', require('./components/coursePage/Settings.vue'));
Vue.component('ScatteredView', require('./components/coursePage/ScatteredView.vue'));
Vue.component('GameCategories', require('./components/coursePage/GameCategories.vue'));
Vue.component('CoursePageMenu', require('./components/coursePage/CoursePageMenu.vue'));
Vue.component('Game', require('./components/coursePage/Game.vue'));
Vue.component('FillingView', require('./components/coursePage/FillingView.vue'));
Vue.component('CoursePageSidebarLeft', require('./components/coursePage/CoursePageSidebarLeft.vue'));
Vue.component('CoursePageSlider', require('./components/coursePage/CoursePageSlider.vue'));

const app = new Vue({
    el: '#app',
    render: h => h(App),
    router: router
});
