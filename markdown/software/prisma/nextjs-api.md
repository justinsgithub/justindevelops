# Next.js Prisma API

How to create Next.js API routes using Prisma ORM


!!! warning
    this demo is using npm, but of course you can use any package manager you like


## 1. scaffold Next.js application

run this command in your terminal

<div class="termy">

```sh
$ npx create-next-app@latest

What is your project named? <span style="color: cyan;">prisma-nextjs</span>
Would you like to use ESLint? No / <span style="color: cyan;">Yes</span>
Would you like to use Tailwind CSS? No / <span style="color: cyan;">Yes</span>
Would you like to use `src/` directory? No / <span style="color: cyan;">Yes</span>
Would you like to use App Router? (recommended) <span style="color: cyan;">No</span> / Yes
Would you like to customize the default import alias? No / <span style="color: cyan;">Yes</span>
What import alias would you like configured? › <span style="color: cyan;">@/*</span>
```
</div>

!!! info
    to use pnpm: `pnpm create next-app@latest`

## 2. set up Prisma

install prisma and initialize schema file

<div class="termy">

```sh
$ npm install --save-dev typescript ts-node @types/node prisma

$ npx prisma init --datasource-provider sqlite 
```
</div>

edit tsconfig.json for ts-node

```json title="tsconfig.json""
{
  "compilerOptions": {
    "target": "es5",
    "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true,
    "skipLibCheck": true,
    "strict": true,
    "forceConsistentCasingInFileNames": true,
    "noEmit": true,
    "esModuleInterop": true,
    "module": "esnext",
    "moduleResolution": "bundler",
    "resolveJsonModule": true,
    "isolatedModules": true,
    "jsx": "preserve",
    "incremental": true,
    "paths": {
      "@/*": ["./src/*"]
    }
  },
  "ts-node": {
    "esm": true,
    "compilerOptions": {
      "module": "nodenext"
    }
  },
  "include": ["next-env.d.ts", "**/*.ts", "**/*.tsx"],
  "exclude": ["node_modules"]
}
```

edit schema file

```scheme title="prisma/schema.prisma"

generator client {
  provider = "prisma-client-js"
}

datasource db {
  provider = "sqlite"
  url      = env("DATABASE_URL")
}

model Author {
  id    Int    @id @default(autoincrement())
  name  String
  books Book[]
}

model Book {
  id       Int    @id @default(autoincrement())
  title    String
  author   Author @relation(fields: [authorId], references: [id])
  authorId Int
}

```

perform migration

<div class="termy">

```sh
$ npx prisma migrate dev --name init
```
</div>

3. create initial data

create script to create data

```typescript title="prisma/scripts/init.ts"
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  const author = await prisma.author.create({
    data: {
      name: "Dean Koontz",
    },
  });
  console.log(author);

  const authors = await prisma.author.findMany();
  console.log(authors);
}

main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error(e);
    await prisma.$disconnect();
    process.exit(1);
  });
```

run script

<div class="termy">

```sh
$ npx ts-node prisma/scripts/init.ts
```
</div>
