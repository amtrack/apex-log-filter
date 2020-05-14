#!/usr/bin/env bash

perl -0777 -ne 'while(m/(.*USER_DEBUG(\|[^\|]*){2}\|)((.|\n)+?)((\n[\d]{2}:[\d]{2}:[\d]{2}\.[\d]{2}|\Z))/g){print "$3\n";}'
