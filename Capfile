require 'erb'
require 'config'

task :gen do
  content = File.open('matrix.html.erb').read
  File.open 'index.html', 'w' do |f|
    f << ERB.new(content).result(config)
  end
end

task :localserver do
  `python -m SimpleHTTPServer 8080`
end
