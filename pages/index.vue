<template>
  <div class="bg-[#24292e] h-full flex flex-col justify-center items-center gap-3 text-white">
    <div class="flex flex-col gap-3 justify-center items-center">
      <p>Hello, I am 👋</p>
      <h1 class="font-bold text-4xl">Ardi Azizi</h1>
      <Badge>Front End and Mobile Developer</Badge>
      <p class="text-center">I use "Alhazen4" as my developer nickname.
        <Dialog>
          <DialogTrigger as-child>
            <span class="text-white">Here is why? 🔍</span>
          </DialogTrigger>

          <DialogContent class="max-h-[95vh] w-[70%] bg-[#24292e] text-white">
            <DialogHeader class="pt-2">
              <DialogTitle>Alhazen a.k.a Ibn Haytham</DialogTitle>
              <p class="text-sm mb-2">Inspiration behind a Scientist</p>
              <p class="text-sm text-gray-400">I do inspired by Ibn al-Haytham, known as Alhazen in the western, as scientist who mastered many of knowledge including
                science, medical, astronomy, philosophy and religion. 🤯 <br><br>

                This scientist, who born in Basrah, is the first person to writes and discovers many facts and data about light.
                His theory was used to create what we know now as a tools for seeing small things called microscope and even bigger things, telescope. His discover also helps
                the world of medic, especially for eye treatment. 🔬 🔭 👀<br><br>

                For me, the knowledge about light to invention of optic lens leads the scientists to make a tool for seeing space and astronomical things called telescope and the invention of this tools
                has another meaning that we finally can see beyond the sky, open the door for other unknown knowledge, make a way for undiscovered place and moreover: we have time machine
                since seeing astronomical things like stars and other planets means that we see the past. 🚀🌟✨🌌 <br><br>

                Using his name, I hope it will inspires me and other people to always discover and learn anything beyond my space, time and age.👨‍🎓👨‍💻
                <br><br>
                <span class="text-xs text-gray-500">
                  If you ever wonder why there is number "4" in the nickname, this because whenever you make an username in the internet, they always suggest you to use any number,
                  so I just use "4" since this number can be read as "A" in latin alphabet and I give a hidden meaning: "4 khalifa".👳‍♀️
                </span>
              </p>
            </DialogHeader>
            <p class="font-semibold">My other inspirational figures</p>
            <div class="flex items-start justify-start gap-3">
              <template v-for="datum in data">
                <TooltipProvider>
                  <Tooltip>
                    <TooltipTrigger as-child>
                      <Avatar>
                        <AvatarImage :src="datum.img" alt="@unovue" />
                        <AvatarFallback class="bg-black">CN</AvatarFallback>
                      </Avatar>
                    </TooltipTrigger>
                    <TooltipContent class="flex flex-col items-center">
                      <p class="font-semibold">{{ datum.name }}</p>
                      <p class="text-xs text-gray-400">{{ datum.desc }}</p>
                    </TooltipContent>
                  </Tooltip>
                </TooltipProvider>
              </template>
            </div>
          </DialogContent>
        </Dialog>
      </p>
      <div class="flex items-center justify-center gap-2">
        <div class="relative">
          <div class="absolute w-3 h-3 bg-green-300 rounded-full"></div>
          <div class="w-3 h-3 bg-green-400 rounded-full animate-ping"></div>
        </div>
        <p>Currently learning:</p>
        <Badge>Java</Badge>
        <Badge>Android Development</Badge>
      </div>
    </div>
    <div class="flex gap-5 mt-5">
      <Button variant="outline" class="bg-[#24292e] transform transition-color">Download my resume</Button>
      <NuxtLink to="projects">
        <Button variant="outline" class="bg-[#24292e] transform transition-color">See my projects</Button>
      </NuxtLink>
    </div>
  </div>
</template>

<script setup lang="ts">
    import { Button } from '~/components/ui/button';
    import { Badge } from '~/components/ui/badge';
    import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger } from "~/components/ui/dialog";
    import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar';
    import {
      Tooltip,
      TooltipContent,
      TooltipProvider,
      TooltipTrigger
    } from '@/components/ui/tooltip';

    const data = [
      {
        "name": "B. J. Habibie",
        "desc": "Indonesian Scientist",
        "img": "https://fahum.umsu.ac.id/info/wp-content/uploads/2023/11/biografi-bj-habibie-presiden-ketiga-indonesia.jpg"
      },
      {
        "name": "Steve Jobs",
        "desc": "Apple Founder",
        "img": "https://goinswriter.com/wp-content/uploads/2011/10/steve-jobs.jpg"
      },
      {
        "name": "Elon Musk",
        "desc": "Really? Don't you know who is he?",
        "img": "https://s.wsj.net/public/resources/images/ON-DC894_ELON07_OR_20190717120922.jpg"
      }
    ]
</script>