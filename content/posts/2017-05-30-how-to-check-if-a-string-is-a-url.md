---
title: How to check if a string is a URL
author: Edd Turtle
type: post
date: 2017-05-30T08:33:51+00:00
url: /how-to-check-if-a-string-is-a-url/
categories:
  - Uncategorized
tags:
  - check
  - function
  - http
  - location
  - parse
  - string
  - uri
  - url
  - valid

---
Here&#8217;s a little snippet to determine if a string is a well structured and considered valid url. This can be useful for pre-empting if a http call will work &#8211; or preventing failures from even occurring. In this snippet we&#8217;re using a function to tidy this logic and make it reusable.

```go
package main

import (
	"fmt"
	"net/url"
)

func main() {
	// = true
	fmt.Println(isValidUrl("http://www.golangcode.com"))

	// = false
	fmt.Println(isValidUrl("golangcode.com"))

	// = false
	fmt.Println(isValidUrl(""))
}

// isValidUrl tests a string to determine if it is a url or not.
func isValidUrl(toTest string) bool {
	_, err := url.ParseRequestURI(toTest)
	if err != nil {
		return false
	} else {
		return true
	}
}
```