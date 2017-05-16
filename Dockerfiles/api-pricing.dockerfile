FROM docker-registry-default.oci.dc.nova/preco-api/v1:v1.2
ENV ASPNETCORE_URLS http://*:5000
WORKDIR /tmp/
RUN curl -SL https://raw.githubusercontent.com/enamba/dotnet-core/pricingApiNova/Dockerfiles/api-pricing.sh --output script.sh \
    && chmod 700 script.sh \
    && ./script.sh \
    && rm script.sh
WORKDIR /opt/priceAPI-V2O/
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 5000:5000
ENTRYPOINT ["/bin/sh", "/etc/init.d/kestrel-apipreco.sh"]
COPY . /opt/priceAPI-V2O
