#! /bin/bash

# to run application in background
su - application -c "bash -c 'cd /opt/priceAPI-V2O/; /usr/bin/dotnet Ecommerce.Preco.Hosts.Api.dll'" &


