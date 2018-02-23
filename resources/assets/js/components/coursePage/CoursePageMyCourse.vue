<template>
  <section class="my-course container-fluid">
    <div class="row">
      <sidebar-left></sidebar-left>
          <!-- <div class="col-md-9">
            <slider></slider>
      <middle></middle>
      
    </div> -->
    </div>

  </section>
</template>

<script>
import CoursePageSidebarLeft from './CoursePageSidebarLeft.vue';
// import CoursePageMiddle from './CoursePageMiddle.vue';
// import CoursePageSlider from './CoursePageSlider.vue';


export default { 
    components:{
        'sidebar-left' : CoursePageSidebarLeft,
        // 'middle' : CoursePageMiddle,
        // 'slider' : CoursePageSlider,
    },
  data () {
    return {

    }
  }
}
</script>