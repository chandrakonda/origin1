docker run --detach `
 --publish 1433:1433 `
 --env sa_password=MSDNm4g4z!n3 `
 --env ACCEPT_EULA=Y `
 --name sql-server `
 microsoft/mssql-server-windows-express

 docker run --detach `
 --publish 80:80 `
 --name web `
 sixeyed/msdn-web-app2:v1
