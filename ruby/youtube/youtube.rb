require 'open-uri'
system('clear')

class Youtube

  def initialize(search_string)
    contents = open("https://www.youtube.com/results?search_query=#{search_string}").read
    lines_with_links = []
    contents.each_line do |line|
      lines_with_links << line if line.include?("watch?v=")
    end
    list_of_urls = []
    lines_with_links.each do |str|
      str = str.slice(str.index("watch?v=")..-1)
      list_of_urls << 'https://www.youtube.com/' + str.split(" ").first[0..-2]
    end
    puts list_of_urls.uniq[0..2]
  end

end


puts "welcome to youtube link generator"
puts "enter a search term"
topic = gets.chomp
system('clear')
puts "these three videos should be relevant:"
youtube = Youtube.new(topic)