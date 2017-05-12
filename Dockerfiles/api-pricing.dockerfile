FROM enamba/pricingapiv2o:v1
ENV ASPNETCORE_URLS http://*:5000
WORKDIR /tmp/
RUN curl -SL https://raw.githubusercontent.com/enamba/dotnet-core/pricingApiNova/Dockerfiles/api-princing.sh --output script.sh \
    && chmod 700 script.sh \
    && ./script.sh \
    && rm script.sh
WORKDIR /opt/dotnet-core/
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 5000:5000
ENTRYPOINT ["dotnet", "Ecommerce.Preco.Hosts.Api.dll"]
COPY . /opt/dotnet-core
