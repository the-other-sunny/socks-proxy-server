# socks-proxy-server

## Usage

Clone the repo

```sh
git clone https://github.com/the-other-sunny/socks-proxy-server.git
cd socks-proxy-server
```

Set `IFNAME` to the desired interface and start the container

```sh
IFNAME=enp0s20f0u2 docker compose up
```

Server is now available on port `1080`

```sh
curl --socks5 localhost:1080 ipinfo.io
```

## Cleanup

To free resources created by `docker`

```sh
docker compose down
```
