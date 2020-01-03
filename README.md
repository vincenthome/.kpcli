# run keepass cli  (kpcli) under ubuntu with Network off to secure/prevent any outbound traffic.

## To run use docker-compose

### Requirement: a file kp.kdbx in current folder 
#### todo: pass .kdbx filename as param

```
docker-compose run -v ~:/data --rm kpcli 
```

## kpcli Tutorial

[kpcli](http://kpcli.sourceforge.net/)

[Best command-line Password Manager for Linux/ubuntu](https://www.techinfected.net/2016/05/kpcli-best-command-line-password-manager-ubuntu-linux-mint-debian.html)

## Troubleshoot using docker

```
docker run -it -v ~:/data vincenthome/kpcli
```
