require 'middleman-core/load_paths'
::Middleman.setup_load_paths

require 'middleman-core'
require 'middleman-core/rack'

require 'fileutils'
FileUtils.mkdir('log') unless File.exist?('log')
::Middleman::Logger.singleton("log/#{ENV['RACK_ENV']}.log")

app = ::Middleman::Application.new

run ::Middleman::Rack.new(app).to_app







# require 'rack'
# require 'rack/contrib/try_static'

# # Serve files from the build directory
# # https://github.com/rack/rack-contrib/blob/master/lib/rack/contrib/try_static.rb
# use Rack::TryStatic,
#   root: 'build',
#   urls: %w[/],
#   try: ['.html', 'index.html', '/index.html']

# run lambda { |env| }