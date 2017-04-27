#! /bin/bash

mkdir -p /opt/dotnet-core/
git clone -b v1 https://github.com/enamba/dotnet-core.git /opt/dotnet-core/
cd /opt/dotnet-core/
git checkout v1
dotnet restore
dotnet run