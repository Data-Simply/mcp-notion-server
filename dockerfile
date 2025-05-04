FROM node:23-alpine

WORKDIR /app

COPY . .
RUN npm install

# Build TypeScript code
RUN npm run build
RUN chmod +x build/index.js

# Expose the default port
EXPOSE 3030

# Default environment variable (will be overridden at runtime)
ENV NOTION_MARKDOWN_CONVERSION="true"

# Run the MCP server
CMD ["node", "build/index.js"]