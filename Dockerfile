# 1. 使用 OpenJDK 作为基础镜像
FROM openjdk:8

# 2. 设置容器中的工作目录
WORKDIR /app

# 3. 将本地的 JAR 文件复制到容器中
COPY target/demo-0.0.1-SNAPSHOT.jar /app/myapp.jar

# 4. 运行应用，默认暴露的端口是 8080
EXPOSE 8085

# 5. 启动 Spring Boot 应用
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]
