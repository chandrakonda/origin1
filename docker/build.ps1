$nuGetPath = "nuget.exe"
$msBuildPath = "MSBuild.exe"

& $nuGetPath restore ..\ProductLaunch\ProductLaunch.sln

# publish website:
& $msBuildPath ..\ProductLaunch\ProductLaunch.Web\ProductLaunch.Web.csproj /p:OutputPath=..\..\docker\web\ProductLaunchWeb  
cp -r .\web\ProductLaunchWeb\_PublishedWebsites\ProductLaunch.Web .\web
rm -r -force .\web\ProductLaunchWeb

# build images:
docker build -t sixeyed/msdn-web-app:v1 .\web