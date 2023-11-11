FROM node:latest

# Install production dependencies.
WORKDIR /workspace

COPY bin .

RUN npm install

RUN npm audit fix

ENTRYPOINT ["npx"]

# Run the web service on container startup.
CMD ["ts-node", "app.ts"]
