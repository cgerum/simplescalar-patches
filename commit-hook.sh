#!/bin/sh

#All patches are automatically formatted with git format patch and 
#added to this Repository


git format-patch  -o ../simplescalar-patches/  `git log  --pretty=format:%H | tail -n 1`
