---
title: Passing Arguments into your Application
author: Edd Turtle
type: post
date: 2015-08-02T19:29:45+00:00
url: /pass-arguments-into-you-application/
rop_post_url_twitter:
  - 'https://golangcode.com/pass-arguments-into-you-application/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - application
  - args
  - arguments
  - bool
  - cmd
  - command
  - flag
  - flags
  - parse
  - populate
  - runtime

---
Passing arguments in your application can be especially useful when you&#8217;re creating tools which can do different things, or the same thing in a different way. In go, you can do with by declaring your arguments as flags. In our example we&#8217;re using an argument to determine whether we should run task A or task B. Once you&#8217;ve declared your flags, you have to parse them at runtime to populate the variables and then you can use it like any other variable.

```go
package main

import (
    "flag"
    "fmt"
)

// Param 1: Argument name, called like ./args --taska
// Param 2: Sets the default state, false would mean task B runs by default
// Param 3: Is the description of that command, shown if you call ./args --help
var toRunTaskA = flag.Bool("taska", false, "Whether to run task A or taskB")

func main() {

    flag.Parse()

    if *toRunTaskA {
        runTaskA()
    } else {
        runTaskB()
    }
}

func runTaskA() {
    fmt.Println("Runing Task A...")
}

func runTaskB() {
    fmt.Println("Running Task B...")
}
```