text = File.read ARGV[0]

images = [
  :thread_icon,
  :get_it_on_google_play,
  :avatar,
  :sg_logo_min,
]
images.each do |image|
  image_base64 = File.read("#{image}.base64")
  text.gsub! "##{image.to_s.upcase}", image_base64[0..-2]
end

File.open(ARGV[0], 'w') do |f|
  f.write text
end
