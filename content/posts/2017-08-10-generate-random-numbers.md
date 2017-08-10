---
title: Generating a Random Number
author: Edd Turtle
type: post
date: 2017-08-10T21:00:00+00:00
url: /generate-random-numbers
categories:
  - Uncategorized
tags:
  - random
  - seed
  - package
  - generation
  - int
  - between
---

Random numbers in computing can be useful for many reasons (we won't go into them too much here though). With Go, they're simple enough to generate providing you first set as unique as possible seed first.

In our example, we want to generate a random number somewhere between two other numbers - we use `Intn` to help with this.

```go
package main

import (
    "fmt"
    "math/rand"
    "time"
)

func random(min int, max int) int {
    rand.Seed(time.Now().UnixNano())
    return rand.Intn(max-min) + min
}

func main() {
    randomNum := random(1000, 2000)
    fmt.Printf("Random Num: %d\n", randomNum)
}
```