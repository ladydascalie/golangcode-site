---
title: JSON Encode an Array of Objects
author: Edd Turtle
type: post
date: 2015-08-01T12:25:53+00:00
url: /json-encode-an-array-of-objects/
categories:
  - Uncategorized
tags:
  - array
  - encode
  - go
  - golang
  - json
  - objects
  - pages
  - print
  - stdout

---
This is how to convert any object within go, into the JSON data structure. In our example we're using an array of Page objects, each with their own properties and encoding them. We're then just printing this string to Stdout, but if we were using the `net/http` to create an api, we would want to write to the http writer instead.

```go
package main

import (
    "encoding/json"
    "fmt"
    "log"
    "os"
)

type Page struct {
    Title    string
    Filename string
    Content  string
}

type Pages []Page

var pages = Pages{
    Page{
        "First Page",
        "page1.txt",
        "This is the 1st Page.",
    },
    Page{
        "Second Page",
        "page2.txt",
        "The 2nd Page is this.",
    },
}

func main() {
    pagesJson, err := json.Marshal(pages)
    if err != nil {
        log.Fatal("Cannot encode to JSON ", err)
    }
    fmt.Fprintf(os.Stdout, "%s", pagesJson)
}
```