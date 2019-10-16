.PHONY: build deploy format 
build:
	dotnet publish -c Release -r linux-musl-x64 --self-contained true
deploy: build
	heroku container:push web
	heroku container:release web
format:
	~/.dotnet/tools/fantomas ./fsharp-heroku-playground/Program.fs