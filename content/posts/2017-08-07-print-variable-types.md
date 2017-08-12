---
title: Print a Variable's Type (e.g. Int, String, Float)
author: Edd Turtle
type: post
date: 2017-08-07T21:00:00+00:00
url: /print-variable-type
categories:
  - Uncategorized
tags:
  - type
  - reflect
  - variable
  - package
---

Ever wanted to know the exact type name of the variable you're using? Using the `reflect` package we can do exactly this. The example below shows this for `int`, `string` and `float64` types. The `TypeOf` function will return a `Type` but we convert this to a string with `.String()`.

```go
package main

import (
    "fmt"
)

func main() {
    // Will print 'int'
    anInt := 1234
    fmt.Printf("%T\n", anInt)

    // Will print 'string'
    aString := "Hello World"
    fmt.Printf("%T\n", aString)

    // Will print 'float64'
    aFloat := 3.14
    fmt.Printf("%T\n", aFloat)
}
```