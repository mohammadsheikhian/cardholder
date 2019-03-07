<template>
  <v-container fill-height>
    <v-layout
      align-center
      justify-center
    >
      <v-flex xs12>
        <v-tabs fixed-tabs>
          <v-tab>My cards</v-tab>
          <v-tab>Other cards</v-tab>
          <v-tab-item>
            <card-list v-bind:cards="myCards" />
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
export default {
  data: () => ({
    myCards: [],
    otherCards: []
  }),
  components: {
    CardList
  }
}
</script>

<style>
</style>
