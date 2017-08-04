---
title: Using HTML Templates from a Folder (Complied)
author: Edd Turtle
type: post
date: 2015-08-01T11:08:00+00:00
url: /using-html-templates-from-a-folder-complied/
rop_post_url_twitter:
  - 'https://golangcode.com/using-html-templates-from-a-folder-complied/?utm_source=ReviveOldPost&utm_medium=social&utm_campaign=ReviveOldPost'
categories:
  - Uncategorized
tags:
  - executetemplate
  - glob
  - log
  - stdout
  - struct
  - templates

---
This will take all your templates (found within the templates folder) and add them to your executable application at compile time - so it's fast as it doesn't have to read from file. You can call these templates with ExecuteTemplate and passing the file name as the second parameter.

If you're using this with a web server, you can replace the os.Stdout with the net/http writer.

```go
package main

import (
    "html/template"
    "log"
    "os"
)

type Page struct {
    Title string
}

var templates = template.Must(template.ParseGlob("templates/*"))

func main() {

    p := Page{Title: "Heading"}
    err := templates.ExecuteTemplate(os.Stdout, "template.html", p)
    if err != nil {
        log.Fatal("Cannot Get View ", err)
    }

}
```

```html
<!DOCTYPE html>
<html>
<head>
    <title>Template</title>
</head>
<body>
    <h1>Template {{.}}</h1>
</body>
</html>
```