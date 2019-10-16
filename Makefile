build:
	dotnet publish -c Release -r linux-musl-x64 --self-contained true
	docker build -t suave-app .
format:
	~/.dotnet/tools/fantomas ./fsharp-heroku-playground/Program.fs