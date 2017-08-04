---
title: Remove all Non-Alphanumeric Characters from a String (with help from regexp)
author: Edd Turtle
type: post
date: 2017-04-14T08:01:05+00:00
url: /how-to-remove-all-non-alphanumerical-characters-from-a-string/
rop_post_url_twitter:
  - 'https://golangcode.com/how-to-remove-all-non-alphanumerical-characters-from-a-string/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - alphanum
  - clean
  - compile
  - parsing
  - regex
  - regexp
  - remove
  - replace
  - strings
  - symbols

---
It&#8217;s often useful be be able to remove characters from a string which aren&#8217;t relevant, for example when being passed strings which might have $ or £ symbols in, or when parsing content a user has typed in. To do this we use the `regexp` package where we compile a regex to clear out anything with isn&#8217;t a letter of the alphabet or a number.

```go
package main

import (
    "fmt"
    "log"
    "regexp"
)

func main() {

    example := "#GoLangCode!$!"

    // Make a Regex to say we only want
    reg, err := regexp.Compile("[^a-zA-Z0-9]+")
    if err != nil {
        log.Fatal(err)
    }
    processedString := reg.ReplaceAllString(example, "")

    fmt.Printf("A string of %s becomes %s \n", example, processedString)

    // Will output: 'A string of #GoLangCode!$! becomes GoLangCode'
}
```