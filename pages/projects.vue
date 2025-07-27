<template>
  <div class="bg-[#24292e] flex flex-col gap-5 justify-center items-center p-16 pt-20 max-[650px]:p-8 max-[650px]:pt-20">
    <div class="w-full flex flex-col mb-10">
      <h1 class="text-white text-[50px] font-semibold">Projects</h1>
      <p class="text-white mb-3">Alhazen4's projects showcase.</p>
      <p class="font-semibold text-white mb-3">Want to get free source code? Feel free to visit my GitHub Repository!</p>
      <a href="http://github.com/alhazen4" target="_blank" class="w-max">
        <Button variant="outline" class="bg-[#24292e] transform transition-color text-white">
          <Github />Go To Alhazen4's Github Repository
        </Button>
      </a>
    </div>
    <div class="grid grid-cols-3 gap-8 max-[650px]:grid-cols-1">
      <template v-for="datum in data">
        <Card class="hover:shadow-lg hover:scale-101 transform transition-all">
         <img :src="`/assets/${datum.imagesFolderName}/1.webp`" alt="" class="  h-44 object-fit">
         <div class="flex flex-col gap-3 flex-grow justify-between">
           <CardHeader>
             <CardTitle class="text-white text-xl font-bold">{{ datum.title }}</CardTitle>
             <div class="flex flex-row gap-3">
               <template v-if="datum.stacks.length >= 0">
                 <template v-for="(item, index) in datum.stacks.slice(0,3)">
                  <Badge>{{ item }}</Badge>
                 </template>
               </template>
             </div>
           </CardHeader>
           <CardContent>
             <CardDescription class="text-white line-clamp-3">{{ datum.desc }}</CardDescription>
           </CardContent>
           <CardFooter class="flex justify-between">
<!--            <Button variant="outline" class="bg-[#24292e] text-white">Details</Button>-->
             <Dialog>
               <DialogTrigger as-child>
                 <Button @click="onSelectData(datum.id)" variant="outline"  class="bg-[#24292e] text-white hover:cursor-pointer">
                   Details
                 </Button>
               </DialogTrigger>

               <DialogContent class="max-h-[95vh] w-[70%] bg-[#24292e] text-white
                max-[650px]:h-max max-[650px]:w-full">
                 <DialogHeader class="pt-2">
                   <DialogTitle class="text-3xl">{{ selectedData.title }}</DialogTitle>
                   <p class="text-sm">{{ selectedData.purpose }} - {{ selectedData.duration }}</p>
                 </DialogHeader>
                 <p class="text-md text-gray-400">{{ selectedData.desc }}</p>
                 <div class="flex flex-row items-center gap-3 max-[650px]:flex-col max-[650px]:items-start">
                   <p class="font-semibold">Stacks:</p>
                   <div>
                     <template v-if="datum.stacks.length >= 0">
                       <template v-for="(item, index) in datum.stacks">
                         <Badge class="m-0.5">{{ item }}</Badge>
                       </template>
                     </template>
                   </div>
                 </div>
                 <div>
                   <p class="text-xs text-gray-400">{{ datum.info }}</p>
                 </div>
                 <div class="flex justify-center items-center ">
                    <Carousel class="w-[50%] max-[650px]:w-[70%]" :opts="{ align: 'start', loop: true }">
                     <CarouselContent class="">
                       <template v-for="(image, i) in datum.imagesTotal">
                         <CarouselItem>
                           <img :src="`/assets/${datum.imagesFolderName}/${i+1}.webp`" :key="i+1" class="rounded-md">
                         </CarouselItem>
                       </template>
                     </CarouselContent>
                     <CarouselPrevious  class="bg-[#24292e] text-white hover:cursor-pointer" />
                     <CarouselNext class="bg-[#24292e] text-white hover:cursor-pointer" />
                   </Carousel>
                  </div>
               </DialogContent>
             </Dialog>
            <Button v-if="datum.link !== ''" variant="outline" class="bg-[#24292e] text-white">
              <a :href="datum.link" target="_blank">Preview</a>
            </Button>
           </CardFooter>
         </div>
       </Card>
      </template>
    </div>
  </div>
</template>

<script setup>
  useHead({
    title: 'Projects | Alhazen4 Portfolio',
  })

  import { ref } from 'vue';
  import { Cpu } from 'lucide-vue-next';
  import { Card, CardContent } from '~/components/ui/card/index.js'
  import { Button } from '~/components/ui/button/index.js'
  import { CardDescription, CardFooter, CardHeader, CardTitle } from '~/components/ui/card/index.js'
  import {
    Dialog,
    DialogContent,
    DialogHeader,
    DialogTitle,
    DialogTrigger,
  } from '~/components/ui/dialog'
  import {
    Carousel,
    CarouselContent,
    CarouselItem,
    CarouselNext,
    CarouselPrevious,
  } from '@/components/ui/carousel'
  import { Github } from 'lucide-vue-next';
  import { Badge } from '@/components/ui/badge';
  const selectedData = ref({});

  const onSelectData = (id) => {
    selectedData.value = data.find((datum) => datum.id === id);
  }

  const data = [
    {
      "id": 1,
      "title": "Serat v2 - Sistem Nomor Surat",
      "purpose": "PT. Telkom Indonesia Regional 4 - Fullstack Developer Freelancer",
      "duration": "3 months",
      "desc": "A web application for generating the letter number for secretary division at PT. Telkom Indonesia Regional 4. This updated version gets improved UI and enhanced back-end business logic to ensures the code clean and maintainable while the all of functions always work as expected.",
      "link": "",
      "info": "The application was stored at local private server",
      "stacks": [
          "JavaScript",
          "Vue.js",
          "Express.js",
          "Tailwind CSS",
          "PostgreSQL",
          "Vuestic UI"
      ],
      "imagesTotal": 3,
      "imagesFolderName": "seratv2"
    },
    {
      "id": 2,
      "image": "https://images.unsplash.com/photo-1747171232839-a5fea879ca59?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Company Profile Website",
      "purpose": "PT. Hara Anargya Indonesia - Frontend Developer Contract",
      "duration": "1 year 1 month",
      "desc": "Company's landing page website design improvement. In collaboration with the UI/UX team, we totally update the major design of the website's user interfaces and add another crucial feature for marketing such as SEO and CMS.",
      "link": "https://psikotes.anargya.id" ,
      "stacks": [
        "Vue.js",
        "Nuxt",
        "Tailwind CSS",
      ],
      "imagesTotal": 3,
      "imagesFolderName": "landing"
    },
    {
      "id": 3,
      "image": "https://images.unsplash.com/photo-1747171232839-a5fea879ca59?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Hara Anargya Mobile",
      "purpose": "PT. Hara Anargya Indonesia - Mobile Developer Contract",
      "duration": "1 year 1 month",
      "desc": "Mobile application built for online psychotest. We rewrite and republish this application to improve the code readability and maintainability with the fact that the previous one was 'spaghetti code' and hard to maintenance, even for simple bug debugging.",
      "link": "https://play.google.com/store/apps/details?id=com.group.hara_anargya&hl=en",
      "info": "I couldn't include the application user interfaces since I don't have any access to it again (needs a login account)",
      "stacks": [
        "Dart",
        "Flutter",
        "Flutter Bloc",
      ],
      "imagesTotal": 1,
      "imagesFolderName": "anargya"
    },
    {
      "id": 4,
      "image": "https://images.unsplash.com/photo-1747171232839-a5fea879ca59?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Teman Bakat",
      "purpose": "PT. Hara Anargya Indonesia - Mobile Developer Contract",
      "duration": "1 year 1 month",
      "desc": "Mobile application built for self-online psychotest and register for the company's external events. Rewrite and republish this application also for improving the framework version, code readability and maintainability.",
      "link": "https://play.google.com/store/apps/details?id=com.temanbakat&hl=en",
      "info": "I couldn't include the application user interfaces since I don't have any access to it again (needs a login account)",
      "stacks": [
        "JavaScript",
        "React Native",
      ],
      "imagesTotal": 1,
      "imagesFolderName": "tb"
    },
    {
      "id": 5,
      "image": "https://images.unsplash.com/photo-1747171232839-a5fea879ca59?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Room Reservation Web App",
      "purpose": "PT. Telkom Indonesia Regional 4 - Fullstack Developer Freelancer",
      "duration": "1 month",
      "desc": "An application for reserving the meeting room at the office. Included the queue system for reserving a room for an event after another event finished and also a detailed information card view for every room.",
      "link": "",
      "info": "The application was stored at local private server",
      "stacks": [
        "Typescript",
        "Angular 14",
        "Express.js",
        "Linux Shell",
        "Vuestic UI"
      ],
      "imagesTotal": 3,
      "imagesFolderName": "reservation"
    },
    {
      "id": 6,
      "image": "https://images.unsplash.com/photo-1747171232839-a5fea879ca59?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Angular Frontend UI Library",
      "purpose": "PT. Bank Central Asia - Frontend Developer Internship",
      "duration": "3 months",
      "desc": "Built a frontend user interface library for the MyBCA Business web application. To ensure the security and client data always be secured, we decided to make our frontend library that only can be used for developers inside the internal company.",
      "link": "https://lib-comps.vercel.app/",
      "info": "The NPM link below is not the official company library, since it is classified. So I have made the mock-up to be preview.",
      "stacks": [
        "Typescript",
        "Angular",
      ],
      "imagesTotal": 3,
      "imagesFolderName": "library"
    },
    {
      "id": 7,
      "image": "https://images.unsplash.com/photo-1747171232839-a5fea879ca59?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Outsourcing Web App",
      "purpose": "PT. Talenta Sinergi Group - Laravel Developer Internship",
      "duration": "6 months",
      "desc": "A website for connecting the job seeker and the company. I was acted as bug debugger when receive a bug report from the user, which was the talent acquisition team, and also help to add a new features inside the application.",
      "link": "https://upscale.id/",
      "info": "The second and third image is the mock-up of the application since I don't have any access again for the official dashboard.",
      "stacks": [
        "PHP",
        "Laravel",
        "MySQL",
        "Bootstrap",
      ],
      "imagesTotal": 3,
      "imagesFolderName": "outsource"
    },
    {
      "id": 8,
      "image": "https://images.unsplash.com/photo-1747171232839-a5fea879ca59?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Serat v1 - Sistem Nomor Surat",
      "purpose": "PT. Telkom Indonesia Regional 4 - Fullstack Developer Freelancer",
      "duration": "1 month",
      "desc": "A web application for generate and save all of the letter number for secretary division. My first freelance project built after I finished my internship at PT. Telkom Indonesia Regional 4.",
      "link": "",
      "stacks": [
        "JavaScript",
        "Vue.js",
        "Vue Bootstrap",
        "Express.js",
        "MySQL",
      ],
      "imagesTotal": 1,
      "imagesFolderName": "seratv1"
    },
    {
      "id": 9,
      "image": "https://images.unsplash.com/photo-1747171232839-a5fea879ca59?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Alhazen4's Portfolio v2",
      "purpose": "Self Project",
      "duration": "2 months",
      "desc": "My projects showcase website. After fighting laziness and build strong discipline and target, finally, I finished my second web portfolio.",
      "link": "https://alhazen4.vercel.app",
      "stacks": [
        "Typescript",
        "Angular 14",
        "Ng Bootstrap",
      ],
      "imagesTotal": 3,
      "imagesFolderName": "portov2"
    },
  ]

</script>