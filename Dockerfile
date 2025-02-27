FROM node:18.12.1-alpine AS build
# Create Nuxt app directory
WORKDIR /app

# Get all NodeJS project depencencies needed for production
COPY ./package*.json ./
RUN npm install

# Copy project source files
COPY ./ /app

# Build the Nuxt application
RUN npm run build

# Build the release image
FROM gcr.io/distroless/nodejs:18 AS release
LABEL org.opencontainers.image.authors="cgoesc2@wgu.edu"
LABEL maintainer="Christian Goeschel Ndjomouo <cgoesc2@wgu.edu>"
LABEL description="Portfolio NUXTJs App"

# Set environmental variables
ENV HOST='0.0.0.0'
ENV PORTS='3000'

# Copy built static source files to container
COPY --from=build /app/.output /app/.output

# Expose and start the app
EXPOSE 3000
WORKDIR /app
# This image has node.js as entrypoint so we can pass the index.mjs as argument directly
CMD ["/app/.output/server/index.mjs"]



