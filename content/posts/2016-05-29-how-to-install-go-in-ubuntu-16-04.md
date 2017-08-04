---
title: How to Install Go in Ubuntu 16.04
author: Edd Turtle
type: post
date: 2016-05-29T17:37:45+00:00
url: /how-to-install-go-in-ubuntu-16-04/
rop_post_url_twitter:
  - 'https://golangcode.com/how-to-install-go-in-ubuntu-16-04/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - 16.04
  - bash
  - command
  - go
  - golang
  - install
  - local
  - path
  - profile
  - ubuntu
  - vim
  - wget

---
Download the latest version of Go. Ubuntu does come with a version of go in it&#8217;s apt listings but it won&#8217;t be as up-to-date as downloading it directly. Once downloaded we extract it into a folder we can work with.

    wget https://storage.googleapis.com/golang/go1.8.1.linux-amd64.tar.gz

    tar xvf go1.8.1.linux-amd64.tar.gz

Once downloaded and extracted, move to the folder to `/usr/local` so we have it globally.

    sudo chown -R root:root ./go
    sudo mv go /usr/local
    

We then need to add some bash variables so Go knows where our directory is located. GOPATH should point to the folder where you&#8217;ll be working in.

    vim ~/.profile

    export GOPATH=$HOME/work
    export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

    source ~/.profile