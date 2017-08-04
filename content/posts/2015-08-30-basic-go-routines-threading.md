---
title: Basic Go Routines (like Threading)
author: Edd Turtle
type: post
date: 2015-08-30T09:34:15+00:00
url: /basic-go-routines-threading/
rop_post_url_twitter:
  - 'https://golangcode.com/basic-go-routines-threading/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - async
  - fmt
  - go
  - goroutine
  - parallel
  - routine
  - sleep
  - thread
  - threading
  - time

---
This script basically just prints out the numbers 1 to 10, but it does so by spinning off each print statement into it&#8217;s own thread, using a go routine. You&#8217;ll notice the script also has a start and an end print statement, but because go routines are used, the end statement will be printed before and items (1-10) are printed.

The ending sleep allows the go routines to execute as they were being cut short by the main function finished, thus ending the programs life.

```go
package main

import (
    "fmt"
    "time"
)

func main() {
    fmt.Println("Start Script")

    for i := 0; i &lt; 10; i++ {
        go printItem(i)
    }

    fmt.Println("End Script")

    // Wait, giving time for the go routines
    // to finish.
    time.Sleep(1000)
}

func printItem(i int) {
    fmt.Printf("Print Item: %v\n", (i + 1))
}
```

Output:

```
Start Script
End Script
Print Item: 1
Print Item: 2
Print Item: 3
Print Item: 4
Print Item: 5
Print Item: 6
Print Item: 7
Print Item: 8
Print Item: 9
Print Item: 10
```