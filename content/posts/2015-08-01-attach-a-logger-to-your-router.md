---
title: Attach a Logger to your Router
author: Edd Turtle
type: post
date: 2015-08-01T15:18:12+00:00
url: /attach-a-logger-to-your-router/
rop_post_url_twitter:
  - 'https://golangcode.com/attach-a-logger-to-your-router/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - func
  - handler
  - http
  - log
  - logger
  - logging
  - net
  - net/http
  - serve
  - terminal
  - time

---
If you're working with the net/http package, you can easily create a router to pass different http calls to different functions. 
A logger allows you to keep track of these calls. In this example, we just log the call to the terminal (or stdout). 
To use this logger wrap any handlers you have with Logger.

```go
package main

import (
	"log"
	"net/http"
	"time"
)

func Logger(inner http.Handler, name string) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		start := time.Now()

		inner.ServeHTTP(w, r)

		log.Printf(
			"%s\t\t%s\t\t%s\t\t%s",
			r.Method,
			r.RequestURI,
			name,
			time.Since(start),
		)
	})
}
```