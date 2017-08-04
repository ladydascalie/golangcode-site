---
title: How to Run Go Tests with Coverage Percentage
author: Edd Turtle
type: post
date: 2017-06-01T08:48:37+00:00
url: /how-to-run-go-tests-with-coverage-percentage/
categories:
  - Uncategorized
tags:
  - coverage
  - percentage
  - profile
  - test
  - testing
  - usage

---
Go has a brilliant built in testing package, which although it is quite raw, it is very powerful. It also has the ability to show the test coverage as a percentage of the code base. Which is very useful to get perspective of a project and to know perhaps which areas need improvement.

You can see the test coverage by using the `-coverprofile` parameter on the test command.

	go test -coverprofile cp.out

	# PASS
	# coverage: 60.2% of statements
	# ok      yourpackage  1.372s

This is great, but even better is being able to visualise the test coverage. You can see which code is run during testing and which code is not by loading the cover profile in a browser. To do this, use this command:

	go tool cover -html=cp.out

Which will produce something like this (although I&#8217;ve cropped it down):

<img src="https://golangcode.com/wp-content/uploads/2017/06/Screenshot-from-2017-05-31-21-38-51.png" alt="" width="737" height="86" class="alignnone size-full wp-image-166" srcset="https://golangcode.com/wp-content/uploads/2017/06/Screenshot-from-2017-05-31-21-38-51.png 737w, https://golangcode.com/wp-content/uploads/2017/06/Screenshot-from-2017-05-31-21-38-51-300x35.png 300w" sizes="(max-width: 737px) 100vw, 737px" />