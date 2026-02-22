FROM node:20-slim

WORKDIR /app

COPY package*.json ./
RUN npm install --omit=dev

COPY . .

EXPOSE 8080

ENTRYPOINT ["node", "src/index.js"]
git add Dockerfile
git commit -m "Replace Dockerfile with custom entrypoint version"
git push




git status

