require_relative "../HostsUpdater"
module VagrantPlugins
  module HostsUpdater
    module Action
      class UpdateHosts
        include HostsUpdater


        def initialize(app, env)
          @app = app
          @machine = env[:machine]
          @ui = env[:ui]
        end

        def call(env)
          @ui.info "Checking for host entries"
          @app.call(env)
          addHostEntries()
        end

      end
    end
  end
end