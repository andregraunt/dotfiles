
# result =  `yt-dlp --format "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]" "https://www.youtube.com/watch?v=0yZcDeVsj_Y&ab_channel=AdamEschborn"`
# puts result
# tldr yt-dlp -> about yt-dlp , brew install yt-dlp ffmpeg
# yt-dlp -x --audio-format mp3 [video URL]
# to mkv. ffmpeg -i webmfile -vcodec copy -acodec copy output.mkv
# yt-dlp --format "bestvideo[height<=2160][ext=mp4]+bestaudio[ext=mp3]/best[height<=2160][ext=mp4]/best[height<=2160]" --merge-output-format mp3 <URL_видео>
# ffmpeg -i input.webm -i input.webm -c:v copy -c:a copy output.mp4
# yt-dlp -f 'bestvideo[height<=1440][ext=webm]+bestaudio[ext=webm]/best[height<=1440][ext=webm]' [URL видео]

# ffmpeg -i magic4k.mp4 -c copy -codec:v libx264 -codec:a aac magic4kforiphone.mp4
# yt-dlp -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4 https://www.youtube.com/watch?v=VIDEO_ID -o file.mp4

# yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' -o '%(title)s.%(ext)s' https://www.youtube.com/watch?v=VIDEO_ID -->> Same Name Video
# yt-dlp -f 'bv*[ext=mp4]+ba*[ext=m4a]/mp4' -o 'file.mp4' <YouTube_URL> && ffmpeg -i file.mp4 -c:v libx264 -c:a aac -movflags +faststart output.mp4
loop do
    
    puts "\e[H\e[2J"
    puts
    puts '1. ~ 720p'
    puts '2. ~ 1080p '
    puts '3. ~ 1440p '
    puts '4. ~ mp3'
    puts '5. ~ 2160p'
    puts '6. ~ 360p'
    puts '7. ~ 480p'
    puts '8. ~ 8k '

    number = gets.chomp
puts 'Print copy link, or press < q > and Enter to exit: '
link = gets.chomp
if link == "q" 
    puts "bay, bay"
    gets
    break
end
if number == "q" 
    puts "bay, bay"
    gets
    break
end
if number == '1'
    puts '.720p'
    result = `yt-dlp --format "bestvideo[height<=720][ext=mp4]+bestaudio[ext=mp3]/best[height<=720][ext=mp4]/best[height<=720] -o '%(title)s.%(ext)s'" "#{link}"`
end
if number == '2'
    puts '..1080p'
    result = `yt-dlp --format "bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best[height<=1080][ext=mp4]/best[height<=1080] -o '%(title)s.%(ext)s'" "#{link}"`
    # result = `ffmpeg -i #{result} -c copy -codec:v libx264 -codec:a aac #{result}`
end
if number == '3'
    puts'...1440p'
    result = `yt-dlp --format "bestvideo[height<=1440][ext=mp4]+bestaudio[ext=m4a]/best[height<=1440][ext=mp4]/best[height<=1440] -o '%(title)s.%(ext)s'" "#{link}"`
    
   
end
if number == '4'
    puts ' ....mp3'
    result = `yt-dlp -x --audio-format mp3 -o '%(title)s.%(ext)s' "#{link}"`
end
if number == '5'
    puts '.....2k'
    result = `yt-dlp --format "bestvideo[height<=2160][ext=mp4]+bestaudio[ext=m4a]/best[height<=2160][ext=mp4]/best[height<=2160]  -o '%(title)s.%(ext)s'" "#{link}"`
end
if number == '6'
    puts '......360p'
    result = `yt-dlp --format "bestvideo[height<=360][ext=mp4]+bestaudio[ext=mp3]/best[height<=360][ext=mp4]/best[height<=360]  -o '%(title)s.%(ext)s'" "#{link}"`
end
if number == '7'
    puts '.......480p'
    result = `yt-dlp --format "bestvideo[height<=480][ext=mp4]+bestaudio[ext=mp3]/best[height<=480][ext=mp4]/best[height<=480]  -o '%(title)s.%(ext)s'" "#{link}"`
end
if number == '8'
    puts '.......~8k'
    # result = `yt-dlp --format "bestvideo[height<=480][ext=mp4]+bestaudio[ext=mp3]/best[height<=480][ext=mp4]/best[height<=480]" "#{link}"`
    # result = `yt-dlp --format 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' -o '%(title)s.%(ext)s' "#{link}"`
    # result = `yt-dlp --format 'bv*[ext=mp4]+ba*[ext=m4a]/mp4' -o '%(title)s.%(ext)s' "#{link}"`
    result= `yt-dlp --format 'bv*[ext=mp4]+ba*[ext=m4a]/mp4' -o '%(title)s.%(ext)s' "#{link}"`
   

end


#result = ` yt-dlp --format "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]" "#{link}"`
# result = `yt-dlp --format "bestvideo[height<=1080][ext=mp4]+bestaudio[ext=mp3]/best[height<=1080][ext=mp4]/best[height<=1080]" "#{link}"`
puts result

puts 'Video downloaded'
gets

end