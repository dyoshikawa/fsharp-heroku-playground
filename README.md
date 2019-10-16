## Environment

- OSX Mojave
- .NET Core 2.2.x

## Linux
https://docs.microsoft.com/en-us/dotnet/core/deploying/deploy-with-cli

```bash
dotnet publish -c Release -r linux-musl-x64 --self-contained true
```

```bash
dotnet publish -r linux-x64 -c Release /p:PublishSingleFile=true
```

## Mac

```bash
dotnet publish -c Release -r osx-x64 --self-contained true
```

```bash
./fsharp-heroku-playground/bin/Release/netcoreapp2.2/osx-x64/fsharp-heroku-playground 
```

## RID

https://docs.microsoft.com/ja-jp/dotnet/core/rid-catalog

## PublishSingleFile

https://dev.to/pluralsight/creating-trimmed-self-contained-executables-in-net-core-4m08

https://hub.docker.com/_/microsoft-dotnet-core

```bash
docker run -p 8080:8080 test
```