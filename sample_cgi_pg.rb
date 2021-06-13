require 'pg'
connection = PG::connect(dbname: 'goya_cgi')
connection.internal_encoding = "UTF-8"
begin
  result = connection.exec("select weight, give_for from crops;")
  result.each do |record|
      puts "The size of bitter gourd：#{record["weight"]}　Who sold：#{record["give_for"]}"
  end
ensure
  connection.finish
end
