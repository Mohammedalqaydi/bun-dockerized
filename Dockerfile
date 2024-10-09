
FROM oven/bun:latest


WORKDIR /app

COPY package.json bun.lockb ./

RUN bun install

COPY . .

RUN bun run tsc


EXPOSE 3000

CMD ["bun", "start"]