class GetHtml
  def get(content, bypass_html, file_name = 'index.html')
    markup = content.gsub!(/[<>]/, '') if bypass_html == false
    markup = content unless bypass_html == false
    markup = gets.chomp
    
    f = File.new("#{Dir.pwd}/#{file_name}", "w+")
    f.puts "<!DOCTYPE html>"
    f.puts "  <head>"
    f.puts "    <meta charset='utf-8'>"
    f.puts "    <title>Generated in getHtml</title>"
    f.puts "  </head>"
    f.puts "  <body>"
    f.puts "    <script>"
    f.puts "      setInterval(()=>{ window.location.reload() }, 2000)"
    f.puts "    </script>"
    f.puts "    #{markup}"
    f.puts "  </body>"
    f.puts "</html>"
    f.close

  end
end

GetHtml.new.get("markup", true)
