---
title: Multi-line Strings
author: Edd Turtle
type: post
date: 2016-03-22T18:19:38+00:00
url: /multi-line-strings/
rop_post_url_twitter:
  - 'https://golangcode.com/multi-line-strings/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - backtick
  - bytes
  - mutiline
  - printf
  - quotes
  - raw
  - string

---
This is an especially useful technique when working with large strings like SQL, HTML or XML within Go. Instead of using either the double quote (&#8220;) or single quote symbols (&#8216;), instead use back-ticks to define the start and end of the string. You can then wrap it across lines. If you indent the string though, remember that the white space will count.

```go
package main

import "fmt"

func main() {

	message := `This is a 
Multi-line Text String
Because it uses the raw-string back ticks 
instead of quotes.
`

	fmt.Printf("%s", message)
}
```