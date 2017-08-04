---
title: Get the Current Username, Name and Home Dir (Cross Platform)
author: Edd Turtle
type: post
date: 2017-04-26T20:08:59+00:00
url: /get-the-current-username-name-and-home-dir-cross-platform/
rop_post_url_twitter:
  - 'https://golangcode.com/get-the-current-username-name-and-home-dir-cross-platform/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - cross platform
  - current
  - dir
  - directory
  - home
  - name
  - os
  - user
  - username

---
In this example we get the current user, the user who is executing the program, and their details. These details include information like user id (Uid), username (the short version of their name), name (the user&#8217;s full name) and the user&#8217;s home directory location. To do this we use the [os/user][1] package. This package also handles the differences between OS like *nix vs. windows very well, keeping your code simple across all platforms.

```go
package main

import (
    "fmt"
    "log"
    "os/user"
)

func main() {

    user, err := user.Current()
    if err != nil {
        log.Fatal(err)
    }

    fmt.Println("Hello " + user.Name)
    fmt.Println("====")
    fmt.Println("Id: " + user.Uid)
    fmt.Println("Username: " + user.Username)
    fmt.Println("Home Dir: " + user.HomeDir)

}
```

 [1]: https://golang.org/pkg/os/user/