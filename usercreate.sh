#!/bin/bash

putstring="https://ohsu.illiad.oclc.org/ILLiadWebPlatform/Users"

jsondoc=$(curl -v -X POST -L -H "Content-Type: application/json" -H "Accept: application/json" -H "ApiKey: $(cat apikey.txt)" --data "@user.txt" "${putstring}")  
echo $jsondoc |jq '.'
