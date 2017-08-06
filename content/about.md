---
title: About
author: Edd Turtle
type: page
date: 2017-07-30T19:23:08+00:00
url: /about
---

```go
package main

import "fmt"

func main() {
    about := `GolangCode is a site with an aim to provide quick answers to those 
            everyday code problems, ones which you know deep down but just require 
            a quick google anyway. A how-to guide of sorts, with less teaching more
            showing of code - great for people in full flow, coding away.`

    fmt.Printf("%s", about)
}
```