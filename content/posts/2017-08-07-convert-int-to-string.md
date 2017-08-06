---
title: Converting an Int to a String
author: Edd Turtle
type: post
date: 2017-08-06T14:00:00+00:00
url: /get-the-http-response-status-code/
categories:
  - Uncategorized
tags:
  - net
  - http
  - response
  - status
  - code
  - error handling
---

When making http requests with go it is almost always necessary to check the status code of the response back. Generally if the status code is between 200 and 300 you should receive a successful response. But anything but, we need to handle.

```go
package main

import (
    "fmt"
    "log"
    "strconv"
)

func main() {

    fmt.Println("x" + strconv.Itoa(resp.StatusCode))

    if resp.StatusCode > 200 || resp.StatusCode <= 299 {
        fmt.Println("HTTP Status OK!")
    }
}

```

StatusCode will be an integer, so we convert it with `strconv` to a string before print to screen.