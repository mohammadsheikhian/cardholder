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
            <card-list v-if="myCards" v-bind:cards="myCards" />
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

/* console.log('1')

var res = 0

const userAction = async () => {
  const response = await fetch('https://jsonplaceholder.typicode.com/users')
  const myJson = await response.json() // extract JSON from the http response
  console.log(myJson)
  res = myJson
  // do something with myJson
}
userAction()
// console.log(userAction())
console.log('2')
console.log(res)
*/
/* var m = []
m = await fetch('https://jsonplaceholder.typicode.com/users')
  .then(response => response.json())
  .then(json =>   json)
console.log("dsfdsf")

console.log(m)
*/

export default {
  data: () => ({
    myCards: null,
    otherCards: []
  }),
  mounted () {
    fetch('https://jsonplaceholder.typicode.com/users').then(response => response.json()).then(json => { this.myCards = json })
    // fetch('https://jsonplaceholder.typicode.com/users').then(response => response.json()).then(json => { this.otherCards = json })
  },
  components: {
    CardList
  }
}

</script>

<style>
</style>
