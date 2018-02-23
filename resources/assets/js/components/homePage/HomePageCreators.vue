<template>
  <section class="creators container" id="creators">
      <div class="section-title">
        <h2>Twórcy</h2>
        <div class="title-description">Poznaj naszą załogę</div>
      </div>
      <div class="person-container">
        <single-person></single-person>
      </div>
  </section>
</template>

<script>
import creatorsSinglePerson from './CreatorsSinglePerson.vue';



export default {
  components:{
        'single-person': creatorsSinglePerson,
    },
  data () {
    return {

    }
  }
}
</script>