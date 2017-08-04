---
title: Updating Go on Ubuntu/Linux
author: Edd Turtle
type: post
date: 2017-05-27T08:26:11+00:00
url: /updating-go-on-ubuntu/
categories:
  - Uncategorized
tags:
  - download
  - go
  - install
  - linux
  - os
  - ubuntu
  - updating
  - upgrade
  - wget

---
When a new version of Go is released I always want to just jump onto the latest release. Likewise, I&#8217;d like the update to be as easy and quick as possible, but often find it harder than expected (I&#8217;m used to `apt upgrade`). Many articles exist online to install Go, less on so on upgrading it. So here&#8217;s an upgrading article. This has Ubuntu in mind as an OS but should work on most Linux distros.

It is just like installing but first we have to remove the go version we currently have. If you try overwriting (and not removing) this you might find errors get thrown up. But unlike installing we don&#8217;t need to worry about path variables &#8211; as they already exist or aren&#8217;t needed.

The commands below were used to update between go 1.8.1 -> 1.8.3 so you&#8217;ll have to change the version numbers if what you want is different.

    go version
    # go version go1.8.1 linux/amd64

    sudo rm -r /usr/local/go/

    wget https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz
    # ... Saving to: ‘go1.8.3.linux-amd64.tar.gz’

    sudo tar -C /usr/local -xzf go1.8.3.linux-amd64.tar.gz

    go version
    # go version go1.8.3 linux/amd64

There we have it, that should be all there is to it.