require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8" ) {
  get = cgi['input']
  "<html>
    <body>
      <p>The received character string is as follows </p>
      <p>string：#{get}</p>
    </body>
  </html>"
}