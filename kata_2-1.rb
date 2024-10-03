def get_hashtags(post)
  post.split(" ").map do |word|
    next unless word.start_with? "#"
    next if word.size == 1

    word.sub!(/^#+/, '')
    next if word[0].match? /\W/
    next if word.include? "#"

    word
  end.compact
end
