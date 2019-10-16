open System
open Suave
open Suave.Sockets

[<EntryPoint>]
let main argv =
    let ip : Net.IPAddress = Net.IPAddress.Parse("0.0.0.0")
    let port : Port = uint16 8080

    let socketBinding : Sockets.SocketBinding =
        { ip = ip
          port = port }

    let httpBinding : Http.HttpBinding =
        { scheme = Protocol.HTTP
          socketBinding = socketBinding }

    let conf = { defaultConfig with bindings = [ httpBinding ] }
    startWebServer conf (Successful.OK "Hello World")
    0
