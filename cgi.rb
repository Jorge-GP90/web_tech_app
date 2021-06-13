require 'webrick'
server = WEBrick::HTTPServer.new({
  :DocumentRoot => '.',
  :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
  :Port => '3000',
})
['INT', 'TERM'].each {|signal|
  Signal.trap(signal){ server.shutdown }
}
server.mount('/web_tech_app', WEBrick::HTTPServlet::ERBHandler, 'cgi.html.erb')
server.mount('/cgi_indicate.cgi', WEBrick::HTTPServlet::CGIHandler, 'cgi_indicate.rb')
server.mount('/goya_cgi.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya_cgi.rb')
server.start