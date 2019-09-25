<template>
  <v-container fill-height>
    <v-layout
      align-center
      justify-center
    >
      <v-flex
        xs10
        justify-center
      >
        <v-tabs fixed-tabs>
          <v-tab>My cards</v-tab>
          <v-tab>Other cards</v-tab>
          <v-tab-item>
            <card-list
              v-if="myCards"
              v-bind:cards="myCards"
            />
          </v-tab-item>
          <v-tab-item>
            <card-list v-bind:cards="otherCards" />
          </v-tab-item>
        </v-tabs>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
import CardList from './CardList'
import http from './../http.js'
export default {
  data: () => ({
    myCards: [],
    otherCards: [],
    tokenRequestHeaderKey: 'Authorization',
    tokenLocalStorageKey: 'token',
    resp: null,
    token: null
  }),
  async mounted () {
    this.myCards = await http.fetchApi('http://localhost:8081/apiv1/cards?type_=my', 'LIST')
    this.otherCards = await http.fetchApi('http://localhost:8081/apiv1/cards?type_=other', 'LIST')
  },
  components: {
    CardList
  }
}

</script>

<style>
</style>
