#!/bin/bash

lsof | grep LISTEN | awk '{print $2}' | tr '\n' ' ' | xargs kill -9
