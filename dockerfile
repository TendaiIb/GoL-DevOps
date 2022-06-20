FROM gcc:11 AS build
WORKDIR /APP
COPY . .
RUN g++ GoL.c -o app.exe

FROM ubuntu:22.04
COPY --from=build /APP/app.exe /app.exe
CMD ./app.exe