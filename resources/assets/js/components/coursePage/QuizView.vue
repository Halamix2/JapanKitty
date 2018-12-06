<template>
    <div class="quiz-section" v-if="shuffledWords.length > 0">
      <div class="quiz-background">
        <div class="container cards">
          <div class="quiz-container">
            <div v-if="!type">
              <div class="row">
              <div class="col-md-4"><div class="cube"><a @click="selectType(1)">Kanji - Kana</a></div></div>
              <div class="col-md-4"><div class="cube"><a @click="selectType(2)">Kanji - Polski</a></div></div>
              <div class="col-md-4"><div class="cube"><a @click="selectType(3)">Kana - Polski</a></div></div>
              <div class="col-md-4"><div class="cube"><a @click="selectType(4)">Polski - Kanji</a></div></div>
              <div class="col-md-4"><div class="cube"><a @click="selectType(5)">Polski - Kana</a></div></div>
              </div>
            </div>
            <div v-if="type">
            <div class="row">
              <div class="col-md-6 game-holder">
                <div class="quiz">
                  <span v-if="this.type === 1 || this.type === 2">{{ shuffledWords[this.index].kanji }}</span>
                  <span v-if="this.type === 3">{{ shuffledWords[this.index].kana }}</span>
                  <span v-if="this.type === 4 || this.type === 5">{{ shuffledWords[this.index].polish }}</span>
                </div>
                <div class="button-container">
                  <button v-bind:class="{success: showSuccess && wordIndex === index, 
                  wrong: isWrong && clickedIndex === wordIndex}" 
                  :disabled="clickedAnswer" v-for="wordIndex in wordIndexes" @click="checkResult(wordIndex)">
                  <span v-if="type === 1 || type === 5">{{ shuffledWords[wordIndex].kana }}</span>
                  <span v-if="type === 2 || type === 3">{{ shuffledWords[wordIndex].polish }}</span>
                  <span v-if="type === 4">{{ shuffledWords[wordIndex].kanji }}</span>
                  </button>
                </div>
                <button @click="nextQuestion" class="next" :disabled="this.clickedNext">następne</button>
                <div>Pytanie: <span>{{this.index +1}}/{{this.words.length +1}}</span></div>
              </div>
            <div class="result col-md-3">Twój wynik: <span>{{this.points}}</span></div>
            </div>
          </div>
        </div>
        </div>
      </div>
    </div>
</template>

<script>
export default {
  props: ["words", "type"],
  data() {
    return {
      index: 0,
      wordIndexes: [],
      shuffledWords: [],
      test: 0,
      showSuccess: false,
      isWrong: false,
      clickedIndex: -1,
      clickedNext: true,
      clickedAnswer: false,
      points: 0,
      type: 0
    };
  },
  methods: {
        selectType(type) {
      this.type = type;
    },
    shuffle(a) {
      for (let i = a.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [a[i], a[j]] = [a[j], a[i]];
      }
      return a;
    },
    checkResult(index) {
      console.log(index);
      this.clickedIndex = index;
      this.showSuccess = true;

      if (index === this.index) {
        this.isWrong = false;
        this.points += 1;
      } else {
        this.isWrong = true;
        this.points -= 1;
      }
      console.log("punkty", this.points);
      this.clickedAnswer = true;
      this.clickedNext = false;
    },
    nextQuestion() {
      this.index += 1;
      this.clickedNext = true;
      this.clickedAnswer = false;
      this.isWrong = false;
      this.showSuccess = false;
      this.randomWords();
    },
    randomWords() {
      this.wordIndexes.length = 0;
      let generatedIndex = -1;
      this.shuffledWords = this.words.slice();
      console.log("shuffled", this.shuffledWords);
      this.shuffle(this.shuffledWords);

      console.log("pomieszane", this.words);

      this.wordIndexes.push(this.index);
      console.log("pierwszy", this.wordIndexes);

      while (this.wordIndexes.length < 4) {
        generatedIndex = Math.floor(Math.random() * this.words.length);
        if (this.wordIndexes.indexOf(generatedIndex) > -1) continue;
        console.log(generatedIndex);
        this.wordIndexes.push(generatedIndex);
      }
      console.log("random", this.wordIndexes);
      console.log("długość", this.words.length);
      this.shuffle(this.wordIndexes);
    }
  },
  mounted() {
    this.randomWords();
    console.log("Wybrany typ gry:", this.type);
  },
  updated() {}
};
</script>