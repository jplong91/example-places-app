/* global Vue, VueRouter, axios */

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      places: []
    };
  },
  mounted: function() {
    axios.get("/v1/places").then(
      function(response) {
        this.places = response.data;
      }.bind(this)
    );
  },
  methods: {},
  computed: {}
};

var router = new VueRouter({
  routes: [{ path: "/", component: HomePage }]
});

var app = new Vue({
  el: "#app",
  router: router
});
