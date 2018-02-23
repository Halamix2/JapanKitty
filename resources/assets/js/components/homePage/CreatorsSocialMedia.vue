<template>
  <div class="social-media-creators">
    <a v-if="facebook" :href="facebook" alt="facebook"><i class="fa fa-facebook-square" aria-hidden="true"></i></a>
    <a v-if="google-plus" :href="google-plus" alt="google-plus"><i class="fa fa-google-plus-square" aria-hidden="true"></i></a>
    <a v-if="instagram" :href="instagram" alt="instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a>
    <a v-if="github" :href="github" alt="github"><i class="fa fa-github-square" aria-hidden="true"></i></a>
    <a v-if="linkedin" :href="linkedin" alt="linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
  </div>
</template>

<script>
export default {
  props: [
      'facebook',
      'google-plus',
      'instagram',
      'github',
      'linkedin'
  ],
  data () {
    return {

    }
  }
}
</script>
