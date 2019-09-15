<template>
  <v-container fluid>
    <v-row>
      <v-col cols="12">
        <v-row
          align="center"
          justify="center"
          class="grey lighten-5"
          style="height: 300px;"
        >
          <v-card
            key="n"
            class="ma-3 pa-6"
            outlined
            tile
            width="800"
          >
            <v-form
              ref="form"
              v-model="valid"
              lazy-validation
            >
              <v-text-field
                v-model="username"
                :counter="10"
                label="Username"
                required
              ></v-text-field>

              <v-text-field
                v-model="title"
                label="Password"
                required
              ></v-text-field>

              <v-btn
                color="success"
                class="mr-4"
                @click="login"
              >
                Login
              </v-btn>

            </v-form>
          </v-card>
        </v-row>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import http from '../http.js'

export default {
  name: 'Login',
  methods: {
    login () {
      http.fetchApi('http://localhost:8081/apiv1/tokens', 'CREATE', JSON.stringify)
    }
  }
}
</script>
