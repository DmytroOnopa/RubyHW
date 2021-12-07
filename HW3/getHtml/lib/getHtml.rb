class GetHtml
  def get(content, bypass_html = true, file_name = 'index.html')
    markup = gets.chomp
    markup = content.gsub!(/[<>]/, '') if bypass_html
#    markup = content if bypass_html
    
    f = File.new("#{Dir.pwd}/#{file_name}", "w+")
    f.puts "<!DOCTYPE HTML>"
    f.puts '<html lang="en">'
    f.puts "  <head>"
    f.puts '    <meta charset="UTF-8">'
    f.puts "    <title>Generated in getHtml</title>"
    f.puts "  </head>"
    f.puts "  <body>"
    f.puts "    <p>#{markup}</p>"
    f.puts "  </body>"
    f.puts "</html>"
    f.close

  end
end

GetHtml.new.get("markup", true)
