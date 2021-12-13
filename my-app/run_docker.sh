echo "docker_run Param"
echo $1
echo $0
docker build --tag=capston .
docker image ls
# docker run -p 3000:80 capston
docker tag capston heratdhruv/capston
docker push heratdhruv/capston:$1