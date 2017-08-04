---
title: Get and Set Environment Variables
author: Edd Turtle
type: post
date: 2017-07-10T10:59:26+00:00
url: /get-and-set-environment-variables/
categories:
  - Uncategorized
tags:
  - env
  - environment
  - get
  - os
  - set
  - var
  - variable
  - variables

---
Environment variables are a useful way to work with sensitive information (think passwords) which your code needs to work with, but don&#8217;t need to be checked into your code base. With Go, you can both get and set these details using the <a href="https://golang.org/pkg/os/#example_Getenv" target="_blank">os</a> library.

```go
package main

import (
    "fmt"
    "os"
)

func main() {
    // Outputs your 'visual' env var (in my case 'vim' (set in ~/.bashrc))
    fmt.Println(os.Getenv("VISUAL"))

    // Create your own environment variable
    os.Setenv("Site", "GoLangCode")
    fmt.Println(os.Getenv("Site"))

    // Equals empty string if doesn't exist
    fmt.Println(os.Getenv("missing"))
}
```