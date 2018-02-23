import Vue from 'vue';

export default {
    login(credentials, success, error) {
        Vue.http.post("login", credentials)
            .then((response) => {
                if (response.status === 200 && 'token' in response.body.success) {
                    localStorage.setItem('token', response.body.success.token);
                    localStorage.setItem('role', response.body.success.role);
                    Vue.http.headers.common['Authorization'] = response.body.success.token;
                    success(response.data)
                }
            })
            .catch(response => {
                error(response);
            })
    },
    register(credentials, success, error) {
        Vue.http.post("register", credentials)
            .then((response) => {
                if (response.status === 200 && 'token' in response.body.success) {
                    localStorage.setItem('token', response.body.success.token);
                    localStorage.setItem('role', response.body.success.role);
                    Vue.http.headers.common['Authorization'] = response.body.success.token;
                    success(response.data)
                }
            })
            .catch(response => {
                error(response);
            })
    },
    logout(success, error) {
        Vue.http.post("logout")
            .then((response) => {
                localStorage.removeItem('token')
                localStorage.removeItem('role')
                success(response.data)
            })
            .catch(response => {
                localStorage.removeItem('token')
                localStorage.removeItem('role')
                error(response);
            })
    },
    getToken() {
        return localStorage.getItem('token');
    },
    isSignedIn() {
        return localStorage.getItem('token') !== null;
    },
    isAdmin() {
        return localStorage.getItem('role') === 'admin';
    }

}