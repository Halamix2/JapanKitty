<template>
  <section class="offer" id="offer">
    <div class="offer-bg"></div>
    <div class="container">
      <div class="row">
      <div class="col-lg-6 content-offer">
        <div class="section-title">
          <h2>oferta</h2>
          <div class="offer-description">{{texts.offerDescription}}</div>
        </div>
        <div class="offer-list">
          <ul class="list">
            <li>{{texts.offerOption1}}</li>
            <li>{{texts.offerOption2}}</li>
            <li>{{texts.offerOption3}}</li>
          </ul>
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
  }
}
</script>