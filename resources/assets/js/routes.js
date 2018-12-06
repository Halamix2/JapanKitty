import HomePage from './components/homePage/HomePage.vue';
import CoursePage from './components/coursePage/CoursePage.vue';
import GameCategories from './components/coursePage/GameCategories.vue';
import Flashcards from './components/coursePage/Flashcards.vue';
import Game from './components/coursePage/Game.vue';

export default [
    { path: '/', component: HomePage},
    { path: '/home', component: HomePage},
    { path: '/course', component: CoursePage},
    
    { path: '/game/:gameId/category', component: GameCategories},
    { path: '/game/:gameId/category/:categoryId', component: Game},
    { path: '/flashcards', component: Flashcards},
]
