Allows you to test whether a foreground Docker container can be killed with Ctrl+C. 

Youmay use this image if Ctrl+C is not working with a container and you're in doubt whether
Ctrl+C works in general.

Build with:

  docker build -t ctrl-c-test .

Run with:

  docker run --rm -ti ctrl-c-test

The container will not exit until you press Ctrl+C (or use
docker stop, of course).
