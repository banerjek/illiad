#!/bin/bash

user="fakeaccount"

getstring="https://ohsu.illiad.oclc.org/ILLiadWebPlatform/Users/ExternalUserId/"

jsondoc=$(curl -s -X GET -L -H "Accept: application/json" -H "ApiKey: $(cat apikey.txt)" "${getstring}${user}")  

echo $jsondoc |jq '.'
