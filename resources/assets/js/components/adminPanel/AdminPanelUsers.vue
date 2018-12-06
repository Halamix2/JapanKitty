<template>
<div>
  <main-menu class="navbar-toggleable-md"></main-menu>
        <div class="container-fluid"> 
<div class="table-container">
      <table class="table table-striped">
        <thead>
          <tr>
            <th>Id</th>
            <th>Imię</th>
            <th>Nazwisko</th>
            <th>Email</th>
            <th>Płeć</th>
            <th>Data urodzenia</th>
            <th>Rola</th>
            <th>Stworzono</th>
            <th>Zaktualizowano</th>
          </tr>
        </thead>
        <tbody>
        <tr v-for="user in users">
            <td>
             {{user.id}}
            </td>
            <td>
              {{user.name}}
            </td>
            <td>
              {{user.surname}}
            </td>
            <td>
              {{user.email}}
            </td>
            <td>
             {{user.sex}}
            </td>
            <td>
              {{user.birthday}}
            </td>
            <td>
              {{user.role}}
            </td>
            <td>
              {{user.created_at}}
            </td>
            <td>
              {{user.updated_at}}
            </td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
  </div>
</template>

<script>
import Menu from '../coursePage/CoursePageHeader.vue';

export default {
  components: {
    "main-menu": Menu
  },
  data () {
    return{
      users: []
    }
  },
    mounted() {
    this.$http.get("users").then(response => {
      this.users = response.body.success;
      console.log("pobrano dane", this.users);
    });
  }
}
</script>