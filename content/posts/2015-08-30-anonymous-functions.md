---
title: Anonymous Functions (aka Closures)
author: Edd Turtle
type: post
date: 2015-08-30T10:05:07+00:00
url: /anonymous-functions/
categories:
  - Uncategorized
tags:
  - anonymous
  - closure
  - func
  - function
  - lambda
  - message

---
Here is a basic example of how an anonymous function, or lambda function, can be used with go. We're just printing a statement to screen, but it can be used for various things - one of which could be just to segment code which will only need to get run once and doesn't need to be referenced. 

It also has the use case of encapulating the variables used within itself, so only from within are you able to access a variable from within. Once the function has finished the variables can then be garbage collected. To pass data into the function we pass it into the execution parenthesis at the end.

```go
package main

import "fmt"

func main() {

    message := "Hello golangcode.com readers!"

    func(m string) {
        fmt.Println(m)
    }(message)
}
```