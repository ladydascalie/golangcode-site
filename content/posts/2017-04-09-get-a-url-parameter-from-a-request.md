---
title: Get a URL parameter from a Request
author: Edd Turtle
type: post
date: 2017-04-09T10:55:07+00:00
url: /get-a-url-parameter-from-a-request/
rop_post_url_twitter:
  - 'https://golangcode.com/get-a-url-parameter-from-a-request/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
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
Often it&#8217;s important to read off the parameters sent through from the request. If it&#8217;s a GET request these will lie within the url itself and can be read using the request URL property. It&#8217;s important to note that when getting the parameters in this way it will always return an array (or slice?).

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
    
    if !ok || len(keys) &lt; 1 {
        log.Println("Url Param 'key' is missing")
        return
    }

    // Query()["key"] will return an array of items, 
    // we only want the single item.
    key := keys[0]

    log.Println("Url Param 'key' is: " + string(key))
}
```