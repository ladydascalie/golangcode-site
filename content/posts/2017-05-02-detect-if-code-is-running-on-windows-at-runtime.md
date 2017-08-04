---
title: Detect if Code is Running On Windows (at Runtime)
author: Edd Turtle
type: post
date: 2017-05-02T18:21:48+00:00
url: /detect-if-code-is-running-on-windows-at-runtime/
rop_post_url_twitter:
  - 'https://golangcode.com/detect-if-code-is-running-on-windows-at-runtime/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - compile
  - compiler
  - detection
  - goos
  - os
  - runtime
  - windows

---
On of the advantages of using Go is it&#8217;s cross-platform support, the ability to write the code once and have it work across many operating systems. However, there are times when you&#8217;ll need to change the route through your code based which OS is running it. If you&#8217;re needing to do this on a large scale there are better, more manageable ways, but for tiny changes this works fine.

This snippet uses the GOOS flag within the runtime package, which is also used at compile time.

```go
package main

import (
    "fmt"
    "runtime"
)

func main() {

    if runtime.GOOS == "windows" {
        fmt.Println("You are running on Windows")
    } else {
        fmt.Println("You are running on an OS other than Windows")
    }

}
```