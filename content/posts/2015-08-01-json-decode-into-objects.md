---
title: JSON Decode into Objects
author: Edd Turtle
type: post
date: 2015-08-01T13:07:52+00:00
url: /json-decode-into-objects/
rop_post_url_twitter:
  - 'https://golangcode.com/json-decode-into-objects/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - api
  - decode
  - json
  - log
  - marshal
  - objects
  - pages
  - string
  - struct
  - unmarshal

---
This is a way of taking a JSON string and forming an object array with it. These objects can then be used and manipulated as you please. This uses the [json encode][1] as well just to demonstrate it works. The primary function used to process the json is the json.Unmarshal method.

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

var rawJson = []byte(`[{"Title":"First Page","Filename":"page1.txt","Content":"This is the 1st Page."},{"Title":"Second Page","Filename":"page2.txt","Content":"The 2nd Page is this."}]`)

func main() {
    // Decoding the JSON
    var pages Pages
    err := json.Unmarshal(rawJson, &pages)
    if err != nil {
        log.Fatal("Problem decoding JSON ", err)
    }

    // Re-encode for demonstration purposes
    rejson, err := json.Marshal(pages)
    if err != nil {
        log.Fatal("Cannot encode to JSON ", err)
    }
    fmt.Fprintf(os.Stdout, "%s", rejson)
}
```

 [1]: http://golangcode.com/json-encode-an-array-of-objects/