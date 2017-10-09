Install-Module -Scope CurrentUser posh-docker

Import-Module posh-docker


Clear-Host

#get the docker information
docker version

Clear-Host

docker.exe images 

docker.exe pull microsoft/mssql-server-linux:2017-GA

docker run --name SqlServer2017 -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=demo123$!' -p 1433:1433 -d microsoft/mssql-server-linux:2017-GA 

docker container ps 

docker inspect SqlServer2017

docker container inspect SqlServer2017 --format '{{ .NetworkSettings.Networks.bridge.IPAddress }}' 

docker container restart SqlServer2017

docker container stop SqlServer2017

docker container ps -all

docker container rm SqlServer2017

docker run --name SqlServer2017 -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=demo123$!' -p 1433:1433 -d microsoft/mssql-server-linux:2017-GA 

docker exec -it SqlServer2017 /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P demo123$!
#select @@version
#GO

docker exec -it SqlServer2017 /bin/bash 

docker container stop SqlServer2017


