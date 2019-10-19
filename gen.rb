require 'fileutils'

num = 30

%w(./public ./public/js ./public/css).map {|p| FileUtils.mkdir_p(p) unless FileTest.exist?(p)}

def js(i)
    <<~EOS
    document.querySelector('.button#{i}').onclick = function() {
        alert('button#{i}');
    }
    EOS
end

def css(i)
    <<~EOS
    .button#{i} {
        color: black;
        background-color: white;
        width: 120px;
        height: 30px;
    }
    EOS
end

buttons = []
css = []
js = []
1.upto num do |i|
    File.open("./public/js/button#{i}.js", "w") do |f|
        f.puts js(i)
    end

    File.open("./public/css/button#{i}.css", "w") do |f|
        f.puts css(i)
    end

    css << "<link rel=\"stylesheet\" type=\"text/css\" href=\"css/button#{i}.css\">"
    js << "<script type=\"text/javascript\" src=\"js/button#{i}.js\"></script>"
    buttons << "<button class=\"button#{i}\">ボタン#{i}</button>"
end

def create_html(css, body, js)
    <<~EOS
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    #{css.join("\n")}
    <title>鹿児島.mk #3</title>
    </head>
    <body>
    #{body}
    </body>
    #{js.join("\n")}
    </html>
    EOS
end

File.open("./public/index.html", "w") do |f|
    body = "<div class=\"content\">\n"
    body += "<p>\n"
    body += buttons.each_slice(5).map{|e| e.join("\n")}.join("\n</p>\n<p>\n") + "\n"
    body += "</p>\n"
    body += "</div>"

    f.puts create_html(css, body, js)
end

File.open("./public/css/style.css", "w") do |f|
    f.puts <<~EOS
    .content {
        width: 800px;
        margin-left: auto;
        margin-right: auto;
    }
    p {
        text-align: center;
        margin-top: 40px;
    }
    button {
        margin-left: 20px;
    }
    EOS
end
