# WCC on Docker

This project suggests a Dockerfile for the wcc project: [endrazine/wcc](https://github.com/endrazine/wcc). The repo contains its own docs.

WCC has been added to the Debian security packages with [pkg-security-team/wcc](https://salsa.debian.org/pkg-security-team/wcc).

## How to use this Dockerfile?

```bash
sudo docker build https://github.com/loris-intergalactique/wcc-docker.git#main
```

## How to use the image?
### WLD

```bash
sudo docker run -it -v $(pwd):/home/wizard wcc-docker wld -libify file
```

### WCC

```bash
sudo docker run -it -v $(pwd):/home/wizard wcc-docker wcc [options] file
```

### WSH

```bash
sudo docker run -it -v $(pwd):/home/wizard wcc-docker wsh [script] [options] [binary1] [binary2] ... [-x] [script_arg1] [script_arg2] ...
```
