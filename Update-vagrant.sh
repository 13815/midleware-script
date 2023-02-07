#!/bin/bash

    #Author : Ibrah
    #Date : 07-Feb-2023

## ---------- script to Update Vagrant file  -----------------

# Firstly, uninstall vagrant plugin
vagrant plugin uninstall vagrant-vbguest

#Reinstall the plugins

vagrant plugin install vagrant-vbguest