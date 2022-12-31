#!/bin/sh

# check to see if dotnet installed properly
echo "Checking to confirm dotnet is working..."
echo 

dotnet --list-runtimes
if [ $? -eq 0 ]; then
    echo
    echo "dotnet seems to be working fine."
    echo "Proceeding to install git credential manager"
    dotnet tool install -g git-credential-manager
    git-credential-manager configure

    # Configuring GCM to use git's built-in  credential cache which
    # allows a user to stay logged in for a small amount of time. 
    # In this case 900 seconds.
    export GCM_CREDENTIAL_STORE=cache

else
    echo "dotnet has NOT installed properly." 
    echo "Please try again using instruction at: https://learn.microsoft.com/en-us/dotnet/core/install/linux-scripted-manual#scripted-install"
fi
