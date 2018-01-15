#!/bin/bash
docker build --build-arg http_proxy --build-arg https_proxy -t peez/squid .