---
title: Using Constants
author: Edd Turtle
type: post
date: 2015-08-02T11:22:13+00:00
url: /using-constants/
rop_post_url_twitter:
  - 'https://golangcode.com/using-constants/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - block
  - compile
  - const
  - constants
  - declaration
  - fmt
  - message
  - println
  - var
  - variables

---
Using constants can often be more efficient than using variables where possible because any references to the constant will be replaced at compile time, where as a variable would have memory allocated to it and can be changed. Using constants if very similar however to using variables and can be declared as a block outside of a function (usually at the top of a file).

```go
package main

import (
    "fmt"
)

const (
    MESSAGE = "Hello Readers"
    URL     = "http://golangcode.com"
)

func main() {
    fmt.Println(MESSAGE + " of " + URL)
}
```