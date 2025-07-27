<template>
  <div class="bg-[#24292e] h-full flex flex-col justify-center items-center gap-3 text-white max-[650px]:p-10">
    <Construction class="w-20 h-20"/>
    <p>I am sorry, I am still building this page.</p>
    <p class="max-[650px]:text-center">Probably, are you interested to see my projects or know me deeper?</p>
    <div class="flex flex-row gap-3">
      <NuxtLink to="projects">
        <Button variant="outline" class="bg-[#24292e] transform transition-color"><ArrowLeft /> See my projects</Button>
      </NuxtLink>
      <NuxtLink to="about">
        <Button variant="outline" class="bg-[#24292e] transform transition-color">See my profile <ArrowRight /></Button>
      </NuxtLink>
    </div>
  </div>
</template>

<script setup lang="ts">
  useHead({
    title: 'Blog | Alhazen4 Portfolio',
  })

  import {Button} from "~/components/ui/button";
  import { Construction, ArrowLeft, ArrowRight } from 'lucide-vue-next';
</script>