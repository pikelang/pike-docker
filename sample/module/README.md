# Usage

Load a local Pike module into a containerized Pike interpreter :

```sh
docker run -it --rm -v $(pwd):/pike pikelang/pike:stable-latest pike -M /pike -e 'Hello.greet("dude");'
```

On the container host :
* run a container interactively
* bind the local vaolume containing the module to /pike on the container

On the container :
* launch Pike interpreter with module path set to /pike
* execute a command invoking pmod code

