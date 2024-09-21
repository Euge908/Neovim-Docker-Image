## About This Repository
This is a very simple way on how to setup astrovim preinstalled on a docker debian image. I didn't use a dockerfile to experiment with using the `docker container commit` command (although it is possible to use a Dockerfile instead). 

## Steps in Building the Image
1. Run `docker run --name <container_name> -v $(pwd)/install.sh:/tmp/install.sh -it debian:<debian_version> bash`
2. Inside the container execute `/tmp/install.sh`. Wait for neovim to finish initializing.
3. (Optional): Customize your astrovim lua config (linters, lsps, etc). In my case, I just added neovim support for language packs.
4. Convert your container into an image by running `docker container commit <container_name>  <image_name>:<image_tag>`
```
