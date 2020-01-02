# run keepass cli  (kpcli) under ubuntu

## To run

### require a file kp.kdbx in folder C:/mydb or ~/mydb

```
docker run -it -v C:/mydb:/data kp
docker run -it -v ~/mydb:/data kp
```

```
docker-compose run -v ~/mydb:/data --rm kpcli 
```

## kpcli Tutorial

[kpcli](http://kpcli.sourceforge.net/)

[Best command-line Password Manager for Linux/ubuntu](https://www.techinfected.net/2016/05/kpcli-best-command-line-password-manager-ubuntu-linux-mint-debian.html)

