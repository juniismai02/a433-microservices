# Base image Node.js versi 14
FROM node:14

# Set working directory
WORKDIR /app

# Copy semua file ke working directory
COPY . .

# Set environment variables
ENV NODE_ENV=production DB_HOST=item-db

# Install dependencies dan build
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080
EXPOSE 8080

# Command untuk menjalankan aplikasi
CMD ["npm", "start"]