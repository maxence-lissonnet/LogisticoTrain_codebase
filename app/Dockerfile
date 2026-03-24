FROM node:25-alpine

WORKDIR /workspace

COPY . .
RUN npm install
RUN npm run build

# RUN apt-get update \
#     && apt-get install -y --no-install-recommends python3 make g++ \
#     && rm -rf /var/lib/apt/lists/*