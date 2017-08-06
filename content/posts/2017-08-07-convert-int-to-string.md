---
title: Converting an Int to a String
author: Edd Turtle
type: post
draft: true
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

This is a short example on how to convert an integer number into a string. This is a common use case when printing to screen or working with the number as if it was a string. 

```go
package main

import (
    "fmt"
    "strconv"
)

func main() {
    anInt := 1234
    fmt.Println("Number: " + strconv.Itoa(anInt))
    // Will print Number: 1234
}
```