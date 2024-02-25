#!/bin/bash

# This is a single line comment

: '
This is a multi line comment
See if this is true '

cat << DELIM
Add a text
multiple lines of text
- This is a Here Docs, is as a type of documentation
- You can see this comment in a terminal
- This is perfect for --help manual
DELIM
