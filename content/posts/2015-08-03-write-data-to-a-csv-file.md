---
title: Write data to a CSV file
author: Edd Turtle
type: post
date: 2015-08-03T20:05:16+00:00
url: /write-data-to-a-csv-file/
rop_post_url_twitter:
  - 'https://golangcode.com/write-data-to-a-csv-file/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - array
  - close
  - csv
  - encode
  - fatal
  - file
  - flush
  - log
  - newwriter
  - os
  - string
  - write
  - writer

---
CSV is a highly accepted data language, commonly used by Excel and spreadsheets, and as such is very useful if your script is producing data.

In the example, we&#8217;re forming a data variable, just to illustrate the example, by creating a multi-dimensional array of strings. We are then having to [create a file][1] (result.csv) for the csv writer to work with. Finally, we are iterating through the data writing each line to the file.

```go
package main

import (
    "os"
    "log"
    "encoding/csv"
)

var data = [][]string{{"Line1", "Hello Readers of:"}, {"Line2", "golangcode.com"}}

func main() {
    file, err := os.Create("result.csv")
    checkError("Cannot create file", err)
    defer file.Close()

    writer := csv.NewWriter(file)
    defer writer.Flush()

    for _, value := range data {
        err := writer.Write(value)
        checkError("Cannot write to file", err)
    }
}

func checkError(message string, err error) {
    if err != nil {
        log.Fatal(message, err)
    }
}
```

The result:

```Line1,Hello Readers of:
Line2,golangcode.com
```

 [1]: http://golangcode.com/writing-to-file/