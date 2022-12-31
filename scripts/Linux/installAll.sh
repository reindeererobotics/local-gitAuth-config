#!/bin/sh

# Install dotnet
sudo chmod +x ./dotnet-install.sh
./dotnet-install.sh # --version latest

echo 'export DOTNET_ROOT=$HOME/.dotnet' >> ~/.bashrc
echo 'export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools' >> ~/.bashrc
source ~/.bashrc

# Install GCM
. installGCM.sh



