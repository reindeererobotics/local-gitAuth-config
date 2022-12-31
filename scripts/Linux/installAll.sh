#!/bin/sh

# Install dotnet
sudo chmod +x ./dotnet-install.sh
./dotnet-install.sh --version latest --runtime aspnetcore

# Install GCM
. installGCM.sh



