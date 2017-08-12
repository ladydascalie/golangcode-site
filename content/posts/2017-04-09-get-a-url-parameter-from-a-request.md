---
title: Get a URL parameter from a Request
author: Edd Turtle
type: post
date: 2017-04-09T10:55:07+00:00
url: /get-a-url-parameter-from-a-request/
categories:
  - Uncategorized
tags:
  - get
  - http
  - key
  - parameter
  - query
  - request
  - router
  - single
  - slide
  - string
  - url

---
Often it's important to read off the parameters sent through from the request. If it's a GET request these will lie within the url itself and can be read using the request's URL property. It's important to note that when getting the parameters in this way it will always return an array (or slice?).

Our example below will act a little like an echo server, we listen for any requests and log the result of `key` if it's present.

```go
package main

import (
    "log"
    "net/http"
)

func main() {
    http.HandleFunc("/", handler)
    http.ListenAndServe(":8080", nil)
}

func handler(w http.ResponseWriter, r *http.Request) {

    keys, ok := r.URL.Query()["key"]
    
    if !ok || len(keys) < 1 {
        log.Println("Url Param 'key' is missing")
        return
    }

    // Query()["key"] will return an array of items, 
    // we only want the single item.
    key := keys[0]

    log.Println("Url Param 'key' is: " + string(key))
}
```