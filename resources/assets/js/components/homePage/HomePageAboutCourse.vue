<template>
  <section class="about-course" id="about-course">
    <div class="container">
      <div class="row ">
        <div class="content-container">
          <h2>o kursie</h2>
          <div class="content">
            <p>
              {{texts.aboutCourse}}
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  props: ['texts'],
  data () {
    return {

    }
  },
   mounted() {
    console.log("text mounted");
    console.log('this', this.texts);
  }
}
</script>