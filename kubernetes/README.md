Steps to follow.
1) Add JDK and WSO2 SP 4.3.0 distribution.
  - Go to docker-sp/dockerfiles/base/files directory.
  - Download [JDK 1.8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) 
      and extract it to above directory.
  - Download [WSO2 Stream Processor 4.3.0 distribution](https://github.com/wso2/product-sp/releases) 
      and extract it to above directory.
      
2) Build the based docker image.
   - Execute command 
   ``` 
    docker build -t  wso2sp-base:4.3.0 .
   ```
3) Go to docker-sp/dockerfiles/vick directory and execute run build.sh. This will perpare the docker images for vick 
for worker and dashboard, and deploy in the vick-system namespace.
   