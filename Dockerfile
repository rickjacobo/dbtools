FROM mcr.microsoft.com/powershell:ubuntu-20.04
RUN apt-get update && \
apt-get upgrade -y && \
apt-get install mysql-client vim -y
RUN pwsh -c "Install-Module sqlserver -Force"
RUN pwsh -c "Import-Module sqlserver"
RUN mkdir /data
WORKDIR /data
CMD pwsh
