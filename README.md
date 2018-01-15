# Simple SQUID Proxy
Just a small image based on alpine that runs SQUID.
Although there are many squid images out there, all of them rely on some personally built base images that I don't know. This one is only based on ```alpine:latest``` which ensures the best transparency for all people that use this image.

# Config
Squid is installed as default which means that all configuration files are placed at ```/etc/squid```. Just mount (or extend your docker image) to the appropriate location.

# Debugging / Starting
There is the ENV Variable ```SQUID_ARGS```. This is passed to the squid start automatically. This way it's easy to start squid in debug mode for example:

    docker run -it --rm \
        -v /my/squid.conf:/etc/squid/squid.conf:ro \
        -e SQUID_ARGS=-d1 \
        peez/squid

