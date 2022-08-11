Docker images for the [Pike programming language](https://pike.lysator.liu.se/)

Images are available on [Docker hub](https://hub.docker.com/r/pikelang/pike/tags)

# Quick start

Launch a Pike interactive interpreter :

```shell
$ docker run -it --rm --user pike pikelang/pike:stable-latest pike
Pike v8.0 release 1116 running Hilfe v3.5 (Incremental Pike Frontend)
>
```

**Note**: A *pike* system user is provided in these images, so that the Pike interpreter can be run without ludicrous privileges. However, since this images are meant to serve as a basis for more complex pieces of software, neither USER nor WORKDIR are enforced upon runs. Use of proper values are left to the discretion of the user.

# Stable : Pike 8.0.x

Container images for *stable / 8.0* are built using Debian packages, on top of [Debian official images](https://hub.docker.com/_/debian)

About *stable-latest* :

```shell
$ docker run -it --rm --user pike pikelang/pike:stable-latest pike --info
Software......Pike
Version.......Pike v8.0 release 1116
WWW...........http://pike.lysator.liu.se/

pike binary...pike
master.pike...: /usr/lib/pike8.0/master.pike
Module path...: /usr/local/lib/pike8.0/modules
                /usr/lib/pike8.0/modules
Include path..: /usr/local/lib/pike8.0/include
                /usr/lib/pike8.0/include
Program path..: 

Features......auto_bignum
              dynamic_modules
              threads
              out-of-band_data
              double_precision_float
              Crypto.AES.GCM
              Crypto.ECC.Curve
              Gdbm
              Gettext
              Gmp
              Gz
              HTTPAccept
              Image.FreeType
              Image.GIF
              Image.JPEG
              Image.PNG
              Image.TIFF
              Image.XFace
              MIME
              Mysql
              Nettle
              Postgres
              Regexp.PCRE
              Regexp.PCRE.Widestring
              Standards.JSON
              System.Inotify
              WhiteFish
              Yp
```
```shell
$ docker run -it --rm --user pike pikelang/pike:stable-latest cat /etc/debian_version
11.1
```

# Old Stable : Pike 7.8.x

Container images for *oldstable / 7.8* are built using Debian packages, on top of [Debian official images](https://hub.docker.com/_/debian)

About *oldstable-latest* :

```shell
$ docker run -it --rm --user pike pikelang/pike:oldstable-latest pike --info
Software......Pike
Version.......Pike v7.8 release 866
WWW...........http://pike.ida.liu.se/

pike binary...pike
master.pike...: /usr/lib/pike7.8/master.pike
Module path...: /usr/local/lib/pike7.8/modules
                /usr/lib/pike7.8/modules
Include path..: /usr/local/lib/pike7.8/include
                /usr/lib/pike7.8/include
Program path..: 

Features......auto_bignum
              dynamic_modules
              threads
              out-of-band_data
              double_precision_float
              Gdbm
              Gettext
              Gmp
              Gz
              HTTPAccept
              Image.FreeType
              Image.GIF
              Image.JPEG
              Image.PNG
              Image.TIFF
              Image.XFace
              MIME
              Mysql
              Nettle
              PGsql
              Postgres
              Regexp.PCRE
              Regexp.PCRE.Widestring
              Standards.JSON
              WhiteFish
              Yp
```

```shell
$ docker run -it --rm --user pike pikelang/pike:oldstable-latest cat /etc/debian_version
9.13
```

# Testing : Pike 8.1.x

Work in progress
