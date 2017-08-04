---
title: Sleeping in Go – How to Pause Execution
author: Edd Turtle
type: post
date: 2017-05-03T19:45:38+00:00
url: /sleeping-with-go/
rop_post_url_twitter:
  - 'https://golangcode.com/sleeping-with-go/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - seconds
  - sleep
  - sleeping
  - time
  - unix
  - wait

---
Sleeping, or waiting in Go, is part of the [time package][1]. It&#8217;s a very simple process, all you need to do is specify the duration to sleep for, which in this cases is a number followed by it&#8217;s unit.

```go
package main

import (
    "fmt"
    "time"
)

func main() {

    fmt.Printf("Current Unix Time: %v\n", time.Now().Unix())

    fmt.Println("Sleeping...")

    time.Sleep(2 * time.Second)

    fmt.Printf("Current Unix Time: %v\n", time.Now().Unix())

}
```

 [1]: https://golang.org/pkg/time/