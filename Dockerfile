FROM node:22-alpine

WORKDIR /app

COPY .output ./.output

ENV NODE_ENV=production
ENV NITRO_HOST=0.0.0.0
ENV NITRO_PORT=8000

EXPOSE 8000

CMD ["node", ".output/server/index.mjs"]