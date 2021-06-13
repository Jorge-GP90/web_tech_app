require 'cgi'
cgi = CGI.new
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi['goya_cgi']
  "<html>
    <body>
      <div>
        <center>
          <h2>The size of bitter gourd and the information of the person who sold it are as follows:</h2><br>
        </center>
        String：#{get}
      </div>
    </body>
  </html>"
}