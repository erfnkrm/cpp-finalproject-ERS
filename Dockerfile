# ---------- Build stage ----------
FROM gcc:13 AS build_stage

WORKDIR /app

RUN apt-get update && apt-get install -y cmake

COPY . .

RUN cmake -S . -B build && cmake --build build

# ---------- Runtime stage ----------
FROM ubuntu:22.04

WORKDIR /app

COPY --from=build_stage /app/build /app/build

CMD ["./build/main"]
# ---------- Build stage ----------
FROM gcc:13 AS build_stage

WORKDIR /app

RUN apt-get update && apt-get install -y cmake

COPY . .

RUN cmake -S src -B build && cmake --build build

# ---------- Runtime stage ----------
FROM ubuntu:22.04

WORKDIR /app

COPY --from=build_stage /app/build /app/build

CMD ["./build/main"]
