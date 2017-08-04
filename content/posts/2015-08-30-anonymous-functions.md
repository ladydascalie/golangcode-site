---
title: Anonymous Functions
author: Edd Turtle
type: post
date: 2015-08-30T10:05:07+00:00
url: /anonymous-functions/
rop_post_url_twitter:
  - 'https://golangcode.com/anonymous-functions/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - anonymous
  - closure
  - func
  - function
  - lambda
  - message

---
Here&#8217;s a basic example of how an anonymous function, or lambda function, can be used with go. We&#8217;re just printing a statement to screen, but it can be used for various things &#8211; one of which could be just to segment code which will only need to get run once and doesn&#8217;t need to be referenced.

```go
package main

import (
    "fmt"
)

func main() {

    message := "Hello golangcode.com readers!"

    func(m string) {
        fmt.Println(m)
    }(message)
}
```