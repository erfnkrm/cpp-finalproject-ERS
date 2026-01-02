
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    libpqxx-dev \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

# Build step
RUN mkdir -p build && cd build && cmake .. && make

# 3. RUN the new executable name
CMD ["./build/ERS_Project"]

