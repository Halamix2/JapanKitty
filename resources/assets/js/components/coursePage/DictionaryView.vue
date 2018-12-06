<template>
  <div class="section-dictionary">
    <div class="container"> 
      <table class="table table-striped">
        <thead>
          <tr>
            <th>#</th>
            <th>Polski</th>
            <th>Kanji</th>
            <th>Kana</th>
          </tr>
        </thead>
        <tbody>
        <tr v-for="word in words">
            <td>
              <div class="column">{{word.id}}</div>
            </td>
            <td>
              <div class="column">{{word.polish}}</div>
            </td>
            <td>
              <div class="column">{{word.kanji}}</div>
            </td>
            <td>
              <div class="column">{{word.kana}}</div>
            </td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>


export default {
  props: ["words"],
  data () {
    return{

    }
  },
  mounted() {
    console.log("słowa",this.words)
  }
}
</script>