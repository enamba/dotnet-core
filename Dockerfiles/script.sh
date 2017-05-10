#! /bin/bash

mkdir -p /opt/dotnet-core/
git clone -b master https://github.com/enamba/priceAPI-V2O.git  /opt/dotnet-core/
cd /opt/dotnet-core/
git checkout pricingApiNova
#dotnet restore
#dotnet run
