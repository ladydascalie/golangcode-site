---
title: Add Line Numbers to Log Output
author: Edd Turtle
type: post
date: 2017-02-05T09:07:44+00:00
url: /add-line-numbers-to-log-output/
rop_post_url_twitter:
  - 'https://golangcode.com/add-line-numbers-to-log-output/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - debug
  - example
  - flags
  - line
  - log
  - logging
  - numbers
  - output

---
Many programming languages allow you to print the line number of when and where something has happened. This is very useful for debugging a problem when it has occurred. By default in Go this is off, but you can turn it on by setting flags within the log.

```go
package main

import "log"

func main() {

    // Enable line numbers in logging
    log.SetFlags(log.LstdFlags | log.Lshortfile)

    // Should say: "[date] [time] loglines.go:11: Example"
    log.Println("Example")

}
```