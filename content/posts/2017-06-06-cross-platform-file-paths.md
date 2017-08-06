---
title: Cross Platform File Paths
author: Edd Turtle
type: post
date: 2017-06-06T10:46:59+00:00
url: /cross-platform-file-paths/
categories:
  - Uncategorized
tags:
  - cross platform
  - file
  - filepath
  - fromslash
  - linux
  - nix
  - os
  - path
  - separtor
  - windows

---
Unlike with URLs which have a standardised format (they use forward-slashes to separate folders), file path separators will differ between operating systems. This is mainly a historic issue, as it's almost inconceivable to change them at this stage. This means Windows uses back-slashes and *nix systems use forward slashes.

This is a pain however when writing cross platform software because if you know a file exists in a folder, and want to get it's contents, you will have to use it's folder name, a slash separator and the file name. We can tackle this problem in a number of ways. Here are two quick ones:

```go
package main

import (
    "fmt"
    "os"
    "path/filepath"
)

func main() {

    // Make a cross-platform file
    // unix='dir/example' windows='dir\example'

    // Option 1
    examplePath := "dir" + string(os.PathSeparator) + "example"
    fmt.Println("PathSeparator: " + examplePath)

    // Option 2
    examplePath = filepath.FromSlash("dir/example")
    fmt.Println("FromSlash: " + examplePath)

}
```