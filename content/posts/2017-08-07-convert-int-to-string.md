---
title: Converting an Int to a String
author: Edd Turtle
type: post
date: 2017-08-07T17:00:00+00:00
url: /converting-and-int-to-string/
categories:
  - Uncategorized
tags:
  - strconv
  - converting
  - int
  - string
  - fmt
---

This is a short example on how to convert an integer number into a string. This is a common use case when printing to screen or working with the number as if it was a string. To do this we use the `strconv` package and the `Itoa` function.

```go
package main

import (
    "fmt"
    "strconv"
)

func main() {
    // Will print Number: 1234
    anInt := 1234
    fmt.Println("Number: " + strconv.Itoa(anInt))
}
```