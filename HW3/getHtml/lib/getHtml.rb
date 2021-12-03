class GetHtml

  def get(file_name = 'index.html')
    inputContent = gets.chomp
    inputContent = file_name if inputContent == ''
    new_html = <<HTML
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>no title</title>
  </head>
  <body>
    <p>#{inputContent}</p>
 </body>
</html>
HTML

    File.open('index.html', 'w') do |f|
      f.write(string "#{new_html}")
    end
  end
end

GetHtml.new.get
