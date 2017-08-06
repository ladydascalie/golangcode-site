#!/usr/bin/env bash

hugo

s3deploy -source=public/ -region=eu-west-1 -bucket=golangcode.com