---
title: Fizz-Buzz Test in Go
author: Edd Turtle
type: post
date: 2016-03-31T17:48:21+00:00
url: /fizz-buzz-test-in-go/
rop_post_url_twitter:
  - 'https://golangcode.com/fizz-buzz-test-in-go/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - buzz
  - divide
  - fizz
  - modulus
  - test

---
A simple program, often used in interviews to show people who can&#8217;t code. Prints the numbers from 1 to 100, except if the number is divisible by 3 print fizz or if the number is divisible by 5 print buzz.

```go
package main

import "fmt"

func main() {
    for i := 1; i &lt;= 100; i++ {

        if i % 3 == 0 {
            fmt.Println("fizz")
        } else if i % 5 == 0 {
            fmt.Println("buzz")
        } else {
            fmt.Printf("%d\n", i)
        }

    }
}
```