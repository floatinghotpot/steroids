class Connect

  constructor:(opts={}) ->
    @port = opts.port
    @showQRCode = opts.qrcode
    @watch = opts.watch
    @livereload = opts.livereload
    @watchExclude = opts.watchExclude

  run: (opts={}) =>
    Project = require "./Project"
    Serve = require "./Serve"
    Server = require "./Server"
    PortChecker = require "./PortChecker"
    BuildServer = require "./servers/BuildServer"
    util = require "util"
    Help = require "./Help"

    Simulator = require "./Simulator"
    simulatorForKillingIt = new Simulator
    simulatorForKillingIt.killall()

    project = new Project

    project.push
      onSuccess: =>

        server = Server.start
          port: @port
          callback: ()=>
            global.steroidsCli.server = server

            buildServer = new BuildServer
                                server: server
                                path: "/"
                                port: @port

            server.mount(buildServer)

            Prompt = require("./Prompt")
            prompt = new Prompt
              context: @
              buildServer: buildServer

            unless @showQRCode is false
              QRCode = require "./QRCode"
              QRCode.showLocal
                port: @port

              util.log "Waiting for the client to connect, scan the QR code visible in your browser ..."

            setInterval () ->
              activeClients = 0;
              needsRefresh = false

              for ip, client of buildServer.clients
                delta = Date.now() - client.lastSeen

                if (delta > 4000)
                  needsRefresh = true
                  delete buildServer.clients[ip]
                  console.log ""
                  util.log "Client disconnected: #{client.ipAddress} - #{client.userAgent}"
                else if client.new
                  needsRefresh = true
                  activeClients++
                  client.new = false

                  console.log ""
                  util.log "New client: #{client.ipAddress} - #{client.userAgent}"
                else
                  activeClients++

              if needsRefresh
                util.log "Number of clients connected: #{activeClients}"
                prompt.refresh()

            , 1000

            if @watch
              Watcher = require("./fs/watcher")
              appWatcher = new Watcher
                path: "app"
                ignored: @watchExclude

              wwwWatcher = new Watcher
                path: "www"
                ignored: @watchExclude

              configWatcher = new Watcher
                path: "config"
                ignored: @watchExclude

              project = new Project

              liveReloadUpdate = ->
                project.make
                  onSuccess: =>
                    buildServer.triggerLiveReload()
                    prompt.refresh()

              appWatcher.on ["add", "change", "unlink"], (path)->
                liveReloadUpdate()

              wwwWatcher.on ["add", "change", "unlink"], (path)->
                liveReloadUpdate()

              configWatcher.on ["add", "change", "unlink"], (path)->
                project.make
                  onSuccess: =>
                    project.package
                      onSuccess: =>
                        prompt.refresh()


            Help.connect()
            prompt.connectLoop()




module.exports = Connect
