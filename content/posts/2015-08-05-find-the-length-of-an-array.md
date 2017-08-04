---
title: Find the Length of an Array/Slice
author: Edd Turtle
type: post
date: 2015-08-05T17:26:55+00:00
url: /find-the-length-of-an-array/
rop_post_url_twitter:
  - 'https://golangcode.com/find-the-length-of-an-array/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - array
  - find
  - fmt
  - len
  - length

---
With Go, you can find the length of an array (or more accurately a slice) by using the internal len() function. Our example shows us creating a slice and then printing out it&#8217;s length.

```go
package main

import "fmt"

func main() {
    array := []int{1, 2, 3, 4, 5}
    fmt.Printf("%d\n", len(array))
}
```