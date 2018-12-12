import HomePage from './components/homePage/HomePage.vue';
import Login from './components/homePage/LogIn.vue';
import Register from './components/homePage/Register.vue';
import CoursePage from './components/coursePage/CoursePage.vue';
import GameCategories from './components/coursePage/GameCategories.vue';
import Settings from './components/coursePage/Settings.vue';
import Flashcards from './components/coursePage/Flashcards.vue';
import Game from './components/coursePage/Game.vue';
import AdminPanel from './components/adminPanel/AdminPanelMain.vue';
import UsersOption from './components/adminPanel/AdminPanelUsers.vue';
import TextsOption from './components/adminPanel/AdminPanelTexts.vue';
import FacebookOption from './components/adminPanel/AdminPanelFacebook.vue';
import PaymentOption from './components/adminPanel/AdminPanelPayment.vue';


export default [
    { path: '/', component: HomePage},
    { path: '/home', component: HomePage},
    { path: '/course', component: CoursePage},
    
    { path: '/game/:gameId/category', component: GameCategories},
    { path: '/game/:gameId/category/:categoryId', component: Game},
    { path: '/flashcards', component: Flashcards},

    { path: '/login', component: Login},
    { path: '/register', component: Register},

    { path: '/settings', component: Settings},
    { path: '/admin-panel', component: AdminPanel},
    { path: '/texts-option', component: TextsOption},
    { path: '/users-option', component: UsersOption},
    { path: '/facebook-option', component: FacebookOption},
    { path: '/payment-option', component: PaymentOption},
]
