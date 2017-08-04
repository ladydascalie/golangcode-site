---
title: Unzip Files in Go
author: Edd Turtle
type: post
date: 2017-06-08T11:24:10+00:00
url: /unzip-files-in-go/
categories:
  - Uncategorized
tags:
  - archive
  - decompress
  - destination
  - file
  - filex
  - open
  - os
  - source
  - uncompress
  - unzip
  - zip

---
The code below is used to unzip, or decompress, a zip archive file into it&#8217;s constituent files. Because there are likely to be multiple files, it will create the files within a folder (specified with the 2nd parameter).

Also, try [this code if you are wanting to create zip files][1].

This was based on code from <a href="https://stackoverflow.com/questions/20357223/easy-way-to-unzip-file-with-golang" target="_blank">here</a>.

```go
package main

import (
    "archive/zip"
    "fmt"
    "io"
    "log"
    "os"
    "path/filepath"
    "strings"
)

func main() {

    files, err := Unzip("done.zip", "output")

    if err != nil {
        log.Fatal(err)
    }

    fmt.Println("Unzipped: " + strings.Join(files, ", "))

}

// Unzip will un-compress a zip archive,
// moving all files and folders to an output directory
func Unzip(src, dest string) ([]string, error) {

    var filenames []string

    r, err := zip.OpenReader(src)
    if err != nil {
        return filenames, err
    }
    defer r.Close()

    for _, f := range r.File {

        rc, err := f.Open()
        if err != nil {
            return filenames, err
        }
        defer rc.Close()

        // Store filename/path for returning and using later on
        fpath := filepath.Join(dest, f.Name)
        filenames = append(filenames, fpath)

        if f.FileInfo().IsDir() {

            // Make Folder
            os.MkdirAll(fpath, os.ModePerm)

        } else {

            // Make File
            var fdir string
            if lastIndex := strings.LastIndex(fpath, string(os.PathSeparator)); lastIndex > -1 {
                fdir = fpath[:lastIndex]
            }

            err = os.MkdirAll(fdir, os.ModePerm)
            if err != nil {
                log.Fatal(err)
                return filenames, err
            }
            f, err := os.OpenFile(
                fpath, os.O_WRONLY|os.O_CREATE|os.O_TRUNC, f.Mode())
            if err != nil {
                return filenames, err
            }
            defer f.Close()

            _, err = io.Copy(f, rc)
            if err != nil {
                return filenames, err
            }

        }
    }
    return filenames, nil
}
```

 [1]: https://golangcode.com/create-zip-files-in-go/