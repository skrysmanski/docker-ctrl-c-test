Allows you to test whether a foreground Docker container can be killed with Ctrl+C on your system.

It does this by continuously pinging localhost from inside the container.

You may use this image if Ctrl+C is not working with a container and you're in doubt whether
Ctrl+C works in general.

Build with:

  docker build -t krys/ctrl-c-test .

Run with:

  docker run --rm -ti krys/ctrl-c-test

The container will not exit until you press Ctrl+C (or use
docker stop, of course).
