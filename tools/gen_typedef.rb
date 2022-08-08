require 'filewatcher'
require 'pathname'

Filewatcher.new('lib/**/*.rb', interval: 0.1).watch do |filename|
  sig_file = `typeprof #{filename}`
  sig_filename = filename.sub("/lib/", "/sig/") + "s"
  File.open(sig_filename, "w") { |f| f.write(sig_file) }
  puts "#{sig_filename} was created"
end
