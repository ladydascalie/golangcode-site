---
title: Get Unix Time
author: Edd Turtle
type: post
date: 2015-08-02T11:03:43+00:00
url: /get-unix-time/
rop_post_url_twitter:
  - 'https://golangcode.com/get-unix-time/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - format
  - formatint
  - now
  - print
  - strconv
  - time
  - unix

---
This is a simple way go getting the current system time in the unix format and in this example we&#8217;re just printing the result to screen. If you want to use the returned int as a string, you can pass it into the `strconv.FormatInt()` method.

```go
package main

import (
    "fmt"
    "time"
)

func main() {
    time := time.Now().Unix()
    fmt.Printf("Current Unix Time: %v\n", time)
}
```go