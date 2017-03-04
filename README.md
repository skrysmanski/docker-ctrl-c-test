# Docker Ctrl-C Test Image

Allows you to test whether a *foreground* Docker container can be **killed with Ctrl+C** on your system.

It does this by continuously pinging localhost from inside the container.

You may use this image if Ctrl+C is not working with a container and you're in doubt whether Ctrl+C works in general.

Build with:

	docker build -t krys/ctrl-c-test .

Run with:

	docker run --rm -ti krys/ctrl-c-test

The container will *not* exit until you press Ctrl+C (or use
docker stop, of course).

If everything works fine, you can expect an output like this:

	PING 127.0.0.1 (127.0.0.1) 56(84) bytes of data.
	64 bytes from 127.0.0.1: icmp_seq=1 ttl=64 time=0.041 ms
	64 bytes from 127.0.0.1: icmp_seq=2 ttl=64 time=0.059 ms
	^C
	--- 127.0.0.1 ping statistics ---
	2 packets transmitted, 2 received, 0% packet loss, time 1002ms
	rtt min/avg/max/mdev = 0.041/0.050/0.059/0.009 ms
