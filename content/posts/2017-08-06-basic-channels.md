---
title: Passing Data between Go Routines with Channels
author: Edd Turtle
type: post
date: 2017-08-06T13:00:00+00:00
url: /basic-channels/
categories:
  - Uncategorized
tags:
  - goroutine
  - channel
  - chan
  - concurrency
  - parallelism
  - data
  - make
---

Go, as a language, makes it very easy to work in parallel on data through it use of go routines (more info on go routines here). One of the tricky parts about using go routines however is a) to know when they are finished and b) to pass data back from the go routine. Channels make both of these things possible.

In this post we're only going to look at a basic use case of channels. In the code below we ask the `work()` function to run on a separate go routine and when it's finished pass back the string 'done' - which will then be printed to screen.

```go
package main

import (
  "fmt"
)

func main() {

  messages := make(chan string)

  go work(messages)

  msg := <-messages
  fmt.Println(msg)
}

func work(messages chan<- string) {
  messages <- "done"
}
```

You'll notice that channels are defined with the `chan` keyword and can be made with `make()`.

In this example, the work function also explictly states which way the channel it expects will send data. So `chan<-` will accept data passed into it, and `<-chan` will expect a channel to pass data out of.