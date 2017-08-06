---
title: Print a Variable's Type (e.g. Int, String, Float)
author: Edd Turtle
type: post
draft: true
date: 2017-08-07T18:00:00+00:00
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
    "reflect"
)

func main() {
    // Will print 'int'
    anInt := 1234
    fmt.Println(reflect.TypeOf(anInt).String())

    // Will print 'string'
    aString := "Hello World"
    fmt.Println(reflect.TypeOf(aString).String())

    // Will print 'float64'
    aFloat := 3.14
    fmt.Println(reflect.TypeOf(aFloat).String())
}
```