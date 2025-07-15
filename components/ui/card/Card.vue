<script setup lang="ts">
import type { HTMLAttributes } from 'vue'
import { cn } from '@/lib/utils'

const props = defineProps<{
  class?: HTMLAttributes['class']
}>()
</script>

<template>
  <div
    data-slot="card"
    :class="
      cn(
        'bg-[#2b3137] flex flex-col gap-6 rounded-xl border border-[#2b3137] py-6 shadow-sm justify-between',
        props.class,
      )
    "
  >
    <slot />
  </div>
</template>
