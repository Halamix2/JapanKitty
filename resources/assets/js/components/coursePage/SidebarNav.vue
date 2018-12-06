<template>
  <div class="align-self-start">
    <div class="vertical-menu">
      <div class="row">
        <div class="col-md-4"><div class="cube"><router-link to="/game/1/category" exact><i class="fa fa-pagelines" aria-hidden="true"></i>Fiszki</router-link></div></div>
        <!--<div class="col-md-4"><div class="cube"><router-link to="/game/2/category" exact><i class="fa fa-briefcase" aria-hidden="true"></i>Rozsypanka</router-link></div></div>
        <div class="col-md-4"><div class="cube"><router-link to="/game/3/category" exact><i class="fa fa-building" aria-hidden="true"></i>Uzupełnianka</router-link></div></div>-->
        <div class="col-md-4"><div class="cube"><router-link to="/game/4/category" exact><i class="fa fa-question" aria-hidden="true"></i>Quizy</router-link></div></div>
        <div class="col-md-4"><div class="cube"><router-link to="/game/6/category" exact><i class="fa fa-address-book" aria-hidden="true"></i>Słownik</router-link></div></div>
      </div>
    </div>
  </div>
</template>

<script>


export default {

  data () {
    return{

    }
  },
}
</script>
