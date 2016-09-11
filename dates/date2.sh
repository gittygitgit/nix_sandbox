#!/bin/sh

if [[ $(date +%u) -gt 5 ]] ; then
  echo weekend
fi
