FROM gradle:7 AS base
CMD ["bash"]

FROM base AS build
COPY . /workspace
WORKDIR /workspace
RUN ./gradlew build

FROM openjdk:17 AS production
COPY --from=build /workspace/build/libs/aoi-0.0.1-SNAPSHOT.jar ./api.jar
CMD ["java", "-jar", "api.jar" ]
