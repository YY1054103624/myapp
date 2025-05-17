# Build stage
FROM node:18-alpine AS builder

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm i

# Copy source code
COPY . .

# # Copy built application from builder stage
# COPY --from=builder /app/dist ./dist

# # Set environment variables
# ENV NODE_ENV=production
# ENV PORT=3000

# # Expose the port
# EXPOSE 3000

# Start the application
CMD ["node", "app.js"]