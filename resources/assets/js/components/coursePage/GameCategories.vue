<template>
    <main class="category">
        <course-header></course-header> 
        <div class="container">
            <div class="category-list">
                <div class="row">
                    <div class="container-cube col-md-4" v-for="category in this.categories">
                        <div class="cube">
                            <router-link v-bind:to="'/game/' + gameId + '/category/' + category.id" exact>{{category.name}}</router-link>
                            </div>
                    </div>
                 
                </div>
            </div>
        </div>
    </main>
</template>

<script>
import CoursePageHeader from './CoursePageHeader.vue';


export default {
    components:{
        'course-header' : CoursePageHeader,
    },
  data () {
    return {
        categories: [],
        link: "",
        gameId: this.$route.params.gameId,
    }
  },
    methods: {
       generateArray(){

       },
      test() {

        }
      },
      beforeCreate(){
          console.log(this);
        this.$http.get("courses").then( (response) =>{
            console.log(response)
            this.categories = response.body
            console.log(this.categories)

        })
      }
   }
</script>