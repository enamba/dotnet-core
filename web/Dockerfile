FROM enamba/dotnet_core:latest
ENV ASPNETCORE_URLS http://*:5000
WORKDIR /tmp/
RUN curl -SL https://raw.githubusercontent.com/enamba/dotnet-core/v1/Dockerfiles/script.sh --output script.sh \
    && chmod 700 script.sh \
    && ./script.sh \
    && rm script.sh
WORKDIR /opt/dotnet-core/web/
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 5000:5000
ENTRYPOINT ["dotnet", "api.dll"]
COPY . /opt/dotnet-core/web/