FROM docker-registry-default.oci.dc.nova/preco-api/v1:v1.2
WORKDIR /tmp/
RUN echo "run command"
RUN adduser v2o-application --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password -q
RUN chown -R v2o-application /opt/priceAPI-V2O
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 127.0.0.1:5000:5000
USER v2o-application
WORKDIR /opt/priceAPI-V2O/
ENTRYPOINT ["/usr/bin/dotnet", "/opt/priceAPI-V2O/Ecommerce.Preco.Hosts.Api.dll"]
