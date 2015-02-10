File.readlines(ARGV[0]).each do |line|
  next unless line.include?("HREF")
  line = line.chomp
  re = /HREF="(.*)" ADD_DATE.*>(.*)</
  matches = re.match(line)
  puts "Title: #{matches[2]}"
  puts "Link: #{matches[1]}"
  puts "------"
end
