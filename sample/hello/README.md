# Usage

Interactively run a local Pike script into a container :

```sh
docker run -it --rm --volume="$(pwd):/pike" --workdir="/pike" pikelang/pike:stable-latest ./hello.pike
```

On the container host :
* run a container interatively
* bind the local volume containing the script to /pike on the container
On the container :
* set the workdir as /pike
* run the script hello.pike
