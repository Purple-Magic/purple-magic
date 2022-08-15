text = File.read ARGV[0]

images = [
  :red_magic_logo,
]
images.each do |image|
  image_base64 = File.read("#{image}.base64")
  text.gsub! "##{image.to_s.upcase}", image_base64[0..-2]
end

File.open(ARGV[0], 'w') do |f|
  f.write text
end
