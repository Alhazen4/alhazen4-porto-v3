<template>
  <div class="max-[650px]:hidden fixed top-0 right-0 left-0 z-1 flex flex-row justify-between items-center bg-[#2b3137]/20 py-4 px-4 rounded-bl-md rounded-br-md text-white backdrop-blur-sm shadow-md">
        <NuxtLink to="/">
          <h1 class="font-bold hover:cursor-pointer">Alhazen4</h1>
        </NuxtLink>
        <ul class="flex flex-row gap-12">
            <NuxtLink to="/projects" class="font-md hover:cursor-pointer hover:text-gray-300 transform transition-colors">
              Projects
            </NuxtLink>
            <NuxtLink to="/blog" class="font-md hover:cursor-pointer hover:text-gray-300 transform transition-colors">
              Blog
            </NuxtLink>
            <NuxtLink to="/about"  class="font-md hover:cursor-pointer hover:text-gray-300 transform transition-colors">
              About
            </NuxtLink>
        </ul>
        <div class="flex flex-row gap-5">
            <!-- <Select defaultValue="id">
                <SelectTrigger>
                  <SelectValue/>
                </SelectTrigger>
                <SelectContent>
                  <SelectGroup>
                    <SelectItem value="id">Id</SelectItem>
                    <SelectItem value="en">En</SelectItem>
                    <SelectItem value="de">De</SelectItem>
                    <SelectItem value="ch">Ch</SelectItem>
                  </SelectGroup>
                </SelectContent>
            </Select> -->
<!--            <Input placeholder="Ask bot" class="placeholder:text-white"/>-->
          <a href="https://www.linkedin.com/in/lazuardimuhammadazizi/" target="_blank">
            <Linkedin class="hover:cursor-pointer" />
          </a>
          <a href="https://www.github.com/alhazen4/" target="_blank">
            <Github class="hover:cursor-pointer" />
          </a>
        </div>
    </div>

  <div class="min-[650px]:hidden fixed top-0 right-0 left-0">
    <div class="absolute top-0 right-0 left-0 z-2 flex flex-row justify-between items-center bg-[#2b3137]/20 py-4 px-4 rounded-bl-md rounded-br-md text-white backdrop-blur-sm shadow-md">
      <NuxtLink to="/">
        <h1 class="font-bold hover:cursor-pointer">Alhazen4</h1>
      </NuxtLink>
      <div @click="isOpened = !isOpened">
        <Menu v-if="!isOpened"  />
        <X v-else />
      </div>
    </div>

    <div :class="`absolute top-0 right-0 left-0 z-1 flex flex-col justify-between items-center
    bg-[#2b3137]/20  shadow-md duration-500 ease-out transition-all
    ${ isOpened ? 'translate-y-[35%]' : 'translate-y-[-100%]'}
    `">
        <ul class="flex flex-col justify-center items-center max-[650px]:font-semibold w-full">
          <NuxtLink to="/projects" class="font-md hover:cursor-pointer hover:text-gray-300 transform transition-colors w-full border-t">
            <div class="p-4 rounded-bl-md rounded-br-md text-white backdrop-blur-sm text-center">
              Projects
            </div>
          </NuxtLink>
          <NuxtLink to="/blog" class="font-md hover:cursor-pointer hover:text-gray-300 transform transition-colors w-full border-t">
            <div class="p-4 rounded-bl-md rounded-br-md text-white backdrop-blur-sm text-center">
              Blog
            </div>
          </NuxtLink>
          <NuxtLink to="/about"  class="font-md hover:cursor-pointer hover:text-gray-300 transform transition-colors w-full border-t">
            <div class="p-4 rounded-bl-md rounded-br-md text-white backdrop-blur-sm text-center">
              About
            </div>
          </NuxtLink>
        </ul>
      </div>
  </div>

</template>

<script setup lang="ts">

  import { ref } from 'vue';

  const isOpened = ref(false);

  //import {
  //  Select, SelectContent, SelectGroup, SelectItem, SelectTrigger, SelectValue
  // } from '@/components/ui/select'

  import { Github, Linkedin, Menu, X } from 'lucide-vue-next';

</script>