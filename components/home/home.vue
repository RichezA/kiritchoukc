<template>
  <div>
    <app-bar :scrollable="true" :show-menu="false"></app-bar>
    <v-row
      justify="center"
      align="center"
      style="width:100vw; margin-top:100px;"
    >
      <projects-card style="margin-right:20px"></projects-card>
      <contact-card></contact-card>
      <about-card style="margin-left:20px;"></about-card>
    </v-row>
  </div>
</template>

<script>
import appBar from '@/components/app-bar.vue'
import aboutCard from '@/components/home/cards/about-card.vue'
import projectsCard from '@/components/home/cards/projects-card.vue'
import contactCard from '@/components/home/cards/contact-card.vue'

export default {
  components: {
    appBar,
    projectsCard,
    aboutCard,
    contactCard
  }
}
</script>

<style lang="scss" scoped>
hr {
  width: 50%;
}
</style>
