<template>
  <v-card>
    <v-container
      fluid
      grid-list-lg
    >
      <v-layout
        row
        wrap
      >
        <v-flex
          xs6 offset-xs4
          v-for="card in cards"
          v-bind:key="card.id"
        >
          <v-card
            color="blue-grey darken-2"
            class="white--text"
            max-width="300"
          >
            <v-card-title primary-title>
              <div>
                <div class="headline">{{ card.name }}</div>
                <span>Listen to your favorite {{card.email}} artists and albums whenever and wherever, online and offline.</span>
              </div>
            </v-card-title>
            <v-card-actions>
              <v-btn
                flat
                dark
              >Listen now</v-btn>
            </v-card-actions>
          </v-card>
        </v-flex>
      </v-layout>
    </v-container>
  </v-card>
</template>

<script>
export default {
  data: () => ({
  }),
  props: {
    cards: Array
  }
}
</script>
