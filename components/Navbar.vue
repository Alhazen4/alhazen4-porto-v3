<template>
    <div class="fixed top-0 right-0 left-0 z-1 flex flex-row justify-between items-center bg-[#2b3137]/20 py-4 px-4 rounded-bl-md rounded-br-md text-white backdrop-blur-sm shadow-md">
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
</template>

<script setup lang="ts">
  //import {
  //  Select, SelectContent, SelectGroup, SelectItem, SelectTrigger, SelectValue
  // } from '@/components/ui/select'

  import { Github, Linkedin } from 'lucide-vue-next';
  import { Input } from '@/components/ui/input'

</script>