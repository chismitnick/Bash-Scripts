#!/bin/bash
#Csamiselo August 2020
#csamiselo@github.com
  #Script to geberate SHA1 key for android projects that use GCP backend
 keytool  -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android
