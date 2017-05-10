#! /bin/bash

mkdir -p /opt/dotnet-core/
git clone -b v0 https://github.com/enamba/dotnet-core.git /opt/dotnet-core/
cd /opt/dotnet-core/
git checkout v0
dotnet restore
dotnet run