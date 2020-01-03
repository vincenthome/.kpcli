# run keepass cli  (kpcli) under Docker Ubuntu with Network off to secure/prevent any outbound traffic.

### Requirement: a file kp.kdbx in current folder. (kpcli has trouble using keyfile)
#### todo: pass .kdbx filename as param

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
