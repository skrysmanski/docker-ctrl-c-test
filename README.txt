Test container to test whether a foreground container can be killed with Ctrl+C.

Build with:

  docker build -t ctrl-c-test .

Run with:

  docker run --rm -ti ctrl-c-test

The container will not exit until you press Ctrl+C (or use
docker stop, of course).
