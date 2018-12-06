<template>
  <main id="game">
    <course-header></course-header> 
      <flashcards v-bind:words="this.words" v-if="this.gameId===1"></flashcards>
      <scattered v-bind:words="this.words" v-if="this.gameId===2"></scattered>
      <filling v-bind:words="this.words" v-if="this.gameId===3"></filling>
      <quiz v-bind:words="this.words" v-if="this.gameId===4 && this.words.length > 0"></quiz>
      <hangman v-bind:words="this.words" v-if="this.gameId===5"></hangman>
      <dictionay v-bind:words="this.words" v-if="this.gameId===6"></dictionay>
  </main>
</template>

<script>
import CoursePageHeader from "./CoursePageHeader.vue";
import Flashcards from "./Flashcards.vue";
import Quiz from "./QuizView.vue";
import Dictionary from "./DictionaryView.vue";
import Filling from "./FillingView.vue";
import Scattered from "./ScatteredView.vue";
import Hangman from "./HangmanView.vue";

export default {
  components: {
    "course-header": CoursePageHeader,
    flashcards: Flashcards,
    quiz: Quiz,
    dictionay: Dictionary,
    filling: Filling,
    scattered: Scattered,
    hangman: Hangman
  },
  data() {
    return {
      gameId: parseInt(this.$route.params.gameId),
      categoryId: this.$route.params.categoryId,
      words: [],
    };
  },
  methods: {

  },
  mounted() {
    this.$http.get("vocabulary/" + this.categoryId).then(response => {
      this.words = response.body;
      console.log("pobrano dane");
    });
  }
};
</script>