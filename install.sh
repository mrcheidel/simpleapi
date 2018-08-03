docker build -t simpleapi-server .
docker run -d --name simpleapi_instance -h simpleapi_instance -p 3000:3000 -t simpleapi-server 


// docker stop simpleapi_instance
// docker rm simpleapi_instance
// docker rmi simpleapi-server 
// docker exec -ti simpleapi_instance /bin/sh

// docker tag simpleapi-server mrcheidel/simpleapi-server
// docker push mrcheidel/simpleapi-server