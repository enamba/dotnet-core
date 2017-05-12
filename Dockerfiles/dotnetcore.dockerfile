FROM enamba/dotnet_core
ENV ASPNETCORE_URLS http://*:5000
WORKDIR /tmp/
WORKDIR /opt/dotnet-core/
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 5000:5000
ENTRYPOINT ["dotnet", "Ecommerce.Preco.Hosts.Api.dll"]
COPY . /opt/dotnet-core
