FROM enamba/dotnet_core:latest
ENV ASPNETCORE_URLS http://*:5000
WORKDIR /tmp/
RUN curl -SL https://raw.githubusercontent.com/Microsoft/MIEngine/getclrdbg-release/scripts/GetClrDbg.sh --output GetClrDbg.sh \
    && chmod 700 GetClrDbg.sh \
    && ./GetClrDbg.sh $CLRDBG_VERSION \
    && rm GetClrDbg.sh
WORKDIR /opt/dotnet-core/
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 5000
ENTRYPOINT ["dotnet", "api.dll"]
COPY . /opt/dotnet-core