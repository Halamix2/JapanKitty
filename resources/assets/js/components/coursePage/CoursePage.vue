<template>
  <main id="my-course">
    <course-header></course-header>

    <course></course>
  </main>
</template>

<script>
import CoursePageHeader from "./CoursePageHeader.vue";
import CoursePageMyCourse from "./CoursePageMyCourse.vue";
import authService from "../../services/authService";

export default {
  components: {
    "course-header": CoursePageHeader,
    course: CoursePageMyCourse
  },
  data() {
    return {};
  },
};
</script>
