#!/bin/zsh

mkdocs build && cp ./CNAME ./docs/CNAME && git commit -m "$1" && git push || git commit -m "quick commit" && git push
