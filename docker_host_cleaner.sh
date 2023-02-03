#!/bin/bash

    #Author : Ibrah
    #Date : 03-Feb-2023

## ---------- script to Clean Docker Host Server  -----------------

#Clean/delete all images in the server
docker rmi -f $(docker images -q)

#Clean all the containes in the server
docker rm -f $(docker ps -aq)
