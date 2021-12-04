class GetHtml
  def get(file_name = 'index.html')
    inputContent = gets.chomp
    inputContent = file_name if inputContent == ''
    
    f = File.new("#{Dir.pwd}/#{file_name}", "w+")
    f.puts "<!DOCTYPE html>"
    f.puts "  <head>"
    f.puts "    <meta charset='utf-8'>"
    f.puts "    <title>My Tamago</title>"
    f.puts "  </head>"
    f.puts "  <body>"
    f.puts "    <script>"
    f.puts "      setInterval(()=>{ window.location.reload() }, 2000)"
    f.puts "    </script>"
    f.puts "    #{inputContent}"
    f.puts "  </body>"
    f.puts "</html>"
    f.close

  end
end

GetHtml.new.get
