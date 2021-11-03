# Run keepass cli  (kpcli) under Docker Ubuntu with Network off to secure/prevent any outbound traffic.

## Repos

[GitHub: https://github.com/vincenthome/kpcli](https://github.com/vincenthome/kpcli)

[Docker Hub: https://hub.docker.com/r/vincenthome/kpcli](https://hub.docker.com/r/vincenthome/kpcli)


## Requirement 
* a file kp.kdbx in current folder. (kpcli has trouble using keyfile)

## To run

1. Download docker-compose.yml
2. Run docker-compose, mount folder, optional provide custom .kdbx filename:
  - Mac/Linux 
    - this will look for a default kp.kdbx file
      ```
      docker-compose run -v ${PWD}:/data --rm kpcli_srv 
      ```
    - this will look for a file my_kp.kdbx
      ```
      docker-compose run -v ${PWD}:/data --rm kpcli_srv my_kp.kdbx
      ```
  - Windows batch script
    - this will look for a default kp.kdbx file
      ```
      docker-compose run -v %cd%:/data --rm kpcli_srv 
      ```
    - this will look for a file my_kp.kdbx
      ```
      docker-compose run -v %cd%:/data --rm kpcli_srv my_kp.kdbx 
      ```
   
## kpcli Tutorial

* Common Commands:
  * `find` xyz
  * `show` 0/1/2
* [kpcli](http://kpcli.sourceforge.net/)
* [https://www.digitalocean.com/community/tutorials/how-to-use-kpcli-to-manage-keepass2-password-files-on-an-ubuntu-14-04-server](https://www.digitalocean.com/community/tutorials/how-to-use-kpcli-to-manage-keepass2-password-files-on-an-ubuntu-14-04-server)
* [Best command-line Password Manager for Linux/ubuntu](https://www.techinfected.net/2016/05/kpcli-best-command-line-password-manager-ubuntu-linux-mint-debian.html)

## Troubleshoot using docker alone

```
docker build -t kpcli .
docker run -it --name kpcli -v ${PWD}:/data --rm kpcli
```

## Todo: 
* try other kpcli command options

