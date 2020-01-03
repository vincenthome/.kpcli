# Run keepass cli  (kpcli) under Docker Ubuntu with Network off to secure/prevent any outbound traffic.

## Repos

`[GitHub: https://github.com/vincenthome/kpcli](https://github.com/vincenthome/kpcli)`

`[Docker Hub: https://hub.docker.com/r/vincenthome/kpcli](https://hub.docker.com/r/vincenthome/kpcli)`


## Requirement: a file kp.kdbx in current folder. (kpcli has trouble using keyfile)

## Todo: 
* pass .kdbx filename as param
* try other kpcli command options
* fix ping which take 10 secs to return

## To run

1. Download docker-compose.yml
2. Run docker-compose:

```
docker-compose run -v ~:/ --rm kpcli 
```

## kpcli Tutorial

[kpcli](http://kpcli.sourceforge.net/)

[Best command-line Password Manager for Linux/ubuntu](https://www.techinfected.net/2016/05/kpcli-best-command-line-password-manager-ubuntu-linux-mint-debian.html)

## Troubleshoot using docker

```
docker run -it -v ~:/ vincenthome/kpcli
```

