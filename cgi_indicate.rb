require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi['input']
  #Return response in HTML
  "<html>
    <body>
      <p>The received character string is as follows</p><br><br>
      <p>String：#{get}</p>
    </body>
  </html>"
}
