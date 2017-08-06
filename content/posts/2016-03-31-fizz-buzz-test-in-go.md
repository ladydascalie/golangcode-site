---
title: Fizz-Buzz Test in Go
author: Edd Turtle
type: post
date: 2016-03-31T17:48:21+00:00
url: /fizz-buzz-test-in-go/
categories:
  - Uncategorized
tags:
  - fizz
  - buzz
  - test
  - divide
  - modulus
  - interview
  - loop

---
The [fizzbuzz](http://wiki.c2.com/?FizzBuzzTest) test is a simple program, often used in interviews to identify people who stuggle to code. 

The programe should prints the numbers from 1 to 100, except if the number is divisible by 3 then print 'fizz', if the number is divisible by 5 print 'buzz' or if the number if divisible by both then print 'fizzbuzz'.

```go
package main

import "fmt"

func main() {
    for i := 1; i <= 100; i++ {

        if i%3 == 0 {
            // Multiple of 3
            fmt.Printf("fizz")
        }
        if i%5 == 0 {
            // Multiple of 5
            fmt.Printf("buzz")
        }

        if i%3 != 0 && i%5 != 0 {
            // Neither, so print the number itself
            fmt.Printf("%d", i)
        }

        // A trailing new line (so both fizz + buzz can be printed on the same line)
        fmt.Printf("\n")

    }
}
```