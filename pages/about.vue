<template>
  <div class="bg-[#24292e] p-16 pt-20 h-max max-[650px]:p-8 max-[650px]:pt-20">
    <div class="w-full flex flex-col mb-10">
      <h1 class="text-white text-[50px] font-semibold">About</h1>
      <p class="text-white mb-3">Alhazen's profile</p>
      <p class="font-semibold text-white mb-3">Get my CV or connect with me now!</p>
      <div class="flex flex-row gap-3 max-[650px]:flex-col">
        <a href="http://github.com/alhazen4" target="_blank" class="w-max">
          <Button variant="outline" class="bg-[#24292e] transform transition-color text-white">
            <Download />Download Resume
          </Button>
        </a>
        <a href="mailto:aziziardi7@gmail.com" target="_blank" class="w-max">
          <Button variant="outline" class="bg-[#24292e] transform transition-color text-white">
            <Mail />Feel free to mail me!
          </Button>
        </a>
        <a href="https://www.linkedin.com/in/lazuardimuhammadazizi/" target="_blank" class="w-max">
          <Button variant="outline" class="bg-[#24292e] transform transition-color text-white">
            <Linkedin />Let's connect at LinkedIn!
          </Button>
        </a>
        <a href="http://instagram.com/ardiazizi7" target="_blank" class="w-max">
          <Button variant="outline" class="bg-[#24292e] transform transition-color text-white">
            <Instagram />Follow my Instagram!
          </Button>
        </a>
        <a href="http://github.com/alhazen4" target="_blank" class="w-max">
          <Button variant="outline" class="bg-[#24292e] transform transition-color text-white">
            <Github />Sneaky-peeky into my GitHub repo!
          </Button>
        </a>
      </div>
    </div>
    <div class="grid grid-cols-2 gap-3 text-white max-[650px]:grid-cols-1">
      <div class="flex flex-col gap-3 w-full">
        <div class="flex flex-row gap-5 p-10 border-[#2b3137] shadow-md border-3 rounded-md">
          <img
              src="https://images.unsplash.com/photo-1747171232839-a5fea879ca59?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
              alt=""
              class="w-[30%] object-cover rounded-md"
          >
          <div class="flex flex-col gap-3 justify-center items-start">
            <h1 class="font-bold text-4xl">Ardi Azizi <span class="text-sm font-normal text-gray-400">@alhazen4</span> </h1>
            <p class="text-justify text-sm text-gray-400">Learner and enthusiast of the world of technology. Thirst for knowledge, teachable, adaptable, always curious,
              hard worker and responsible person. Believe that everything can be developed. Searching for a job in the
              technology field to grow myself and also my work place.</p>
          </div>
        </div>
        <div class="flex flex-col gap-3 shadow-md border-3 rounded-md border-[#2b3137] p-10 ">
          <h1 class="font-bold text-2xl">Skills & Tools</h1>
          <div class="flex flex-col justify-between">
            <template v-for="skill in skillList">
              <p>{{ skill.title }}</p>
              <div class="text-start mb-3">
                <template v-for="item in skill.items">
                  <Badge class="m-1">{{ item }}</Badge>
                </template>
              </div>
            </template>
          </div>
        </div>
      </div>
      <div class="shadow-md border-3 rounded-md border-[#2b3137] p-10 w-full h-full">
        <Tabs default-value="edu">
          <TabsList class="grid w-full grid-cols-2 bg-[#2b3137]">
            <TabsTrigger value="edu" class="hover:cursor-pointer text-white data-[state=active]:text-black data-[state=active]:cursor-default">
              Education
            </TabsTrigger>
            <TabsTrigger value="exp" class="hover:cursor-pointer hover:bg-[#2b3133] text-white data-[state=active]:text-black data-[state=active]:cursor-default">
              Experiences
            </TabsTrigger>
          </TabsList>
            <TabsContent value="edu">
            <h1 class="font-bold text-2xl">Education</h1>
            <div class="flex flex-col">
              <template v-for="(step, i) in educations">
                <div class="flex flex-row justify-start">
                  <div class="relative mt-0.5">
                    <div class="rounded-full bg-white w-5 h-5"></div>
                    <div v-if="i !== educations.length - 1" class="bg-white top-5 left-[9px] h-full w-0.5 absolute"></div>
                  </div>
                  <div class="ml-3 mb-8">
                    <p class="font-bold mb-1">{{ step.title }}</p>
                    <p class="text-sm text-gray-400">{{ step.description }}</p>
                    <p class="text-sm font-semibold text-gray-400 mt-3">Key Achievements:</p>
                    <ul class="text-xs text-gray-400 list-disc ml-4">
                      <template v-for="key in step.keys">
                        <li>{{ key }}</li>
                      </template>
                    </ul>
                  </div>
                </div>
              </template>
            </div>
            </TabsContent>
            <TabsContent value="exp">
              <h1 class="font-bold text-2xl">Experiences</h1>
              <div class="overflow-auto">
                <div class="flex flex-col">
                  <template v-for="(step, i) in experiences">
                    <div class="flex flex-row justify-start">
                      <div class="relative mt-0.5">
                        <div class="rounded-full bg-white w-5 h-5"></div>
                        <div v-if="i !== experiences.length - 1" class="bg-white top-5 left-[9px] h-full w-0.5 absolute"></div>
                      </div>
                      <div class="ml-3 mb-8">
                        <p class="font-bold">{{ step.company }}</p>
                        <p class="text-sm font-semibold mb-1">{{ step.title }} <br> {{ step.duration }}</p>
                        <p class="text-sm font-semibold text-gray-400 mt-3">Key Achievements:</p>
                        <ul class="text-xs text-gray-400 list-disc ml-4">
                          <template v-for="key in step.keys">
                            <li>{{ key }}</li>
                          </template>
                        </ul>
                      </div>
                    </div>
                  </template>
                </div>
              </div>
            </TabsContent>
        </Tabs>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
  useHead({
    title: 'About | Alhazen4 Portfolio',
  })
    import { Download } from 'lucide-vue-next'
    import { Instagram, Linkedin, Github, Mail } from 'lucide-vue-next';
    import { Badge } from '~/components/ui/badge';
    import { Button } from "~/components/ui/button";

    import {
      Tabs,
      TabsContent,
      TabsList,
      TabsTrigger,
    } from '@/components/ui/tabs'

    const educations = [
      {
        step: 1,
        title: 'President University - Bachelor of Computing',
        description: 'I finished my study at President University, Cikarang, Indonesia, for 3.5 years. Majoring at Informatics, our class used English as the subject and instructor language.',
        keys: [
            'GPA 3.83 from 4.00',
            'Favorite Winner at Hackathon In BCA (HAI BCA) - 2021',
            'Runner Up "Programming Rush" competition at campus "Computing Academic Festival" event - 2022',
            'Winner "Web Programming" competition at Technoday by UNNES - 2022',
            'Winner "Business Model" competition at campus "" event - 2021',
        ]
      },
    ]

    const experiences = [
      {
        company: 'PT. Hara Anargya Indonesia',
        title: 'Frontend and Mobile Developer Contract',
        duration: '1 year 1 month (03/2024 - 04/2025)',
        description: 'Acted as both Frontend and Mobile developer, my responsibilities was to maintenance the client\'s HRIS web application and developing the company\'s website profile. At the same time, I did rewriting and maintaining their online test mobile application.',
        keys: [
            "Added 10+ features to the client's HRIS web application",
            "Successfully updating the company's profile website both design and the contents",
            "10% increasing the company's products sales by upgrading the company's profile website",
            "Solved up to 90% all bugs and errors in the online test mobile application",
        ]
      },
      {
        company: 'PT. Telkom Indonesia',
        title: 'Fullstack Internship',
        duration: '3 month (07/2022 - 10/2022)',
        description: '',
        keys: [
          'Develop a web application to track and record the data of the package from the courier that arrived in the office using MEVN Stack (MongoDB, ExpressJS, VueJS, NodeJS).',
          'Efficient and digitalized the secretary letter number management by developing the web application for generating and saving the letter number using MEVN Stack.',
          'GitHub Action implementation in the server for automated application deployment tasks.'
        ]
      },
      {
        company: 'PT. Bank Central Asia',
        title: 'Frontend Internship',
        duration: '3.5 month (10/2022 - 01/2023)',
        description: '',
        keys: [
          '10+ custom UI components development for MyBCA Business Web Application using Angular 14 and Typescript in collaboration with other internal developers using GitLab.',
          'Turn the UI/UX design into seamless, customizable and responsive front end library components.',
          'Write documentation using Notion on library usage such as declaring components and props usages.'
        ]
      },
      {
        company: 'PT. Talenta Sinergi Group',
        title: 'Laravel Developer Internship',
        duration: '6 month (03/2023 - 08/2023)',
        description: '',
        keys: [
          'Talent outsourcing website development using PHP Laravel Framework and MySQL.',
          '5+ feature development for the outsourcing website.',
          'Received and solved 10+ bug reports from talent acquisition team.',
          'Git implementation to merge the project from several branches and resolve the merge conflict.'
        ]
      },
    ]

    const skillList = [
      {
        title: 'Languages',
        items: [
            'Indonesian - Native',
            'English - B2 Level',
            'Arabic - Beginner',
            'Chinese - Starter'
        ]
      },
      {
        title: 'Programming Languages',
        items: [
          "Javascript",
          "Typescript",
          "Dart",
          "Java",
          "C#",
          "PHP",
        ]
      },
      {
        title: 'Tools & Frameworks',
        items: [
          "Vue.js",
          "Nuxt",
          "React.js",
          "React Native",
          "Angular.js",
          "Flutter",
          "Tailwind CSS",
          "Shadcn",
          "Flutter Bloc",
          "Laravel",
          "Android Studio"
        ]
      }
    ]
</script>