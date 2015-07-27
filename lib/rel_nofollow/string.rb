class String
  def add_nofollow
    self.gsub(/<a [^>]+>/) do |link|
      unless aref.include?('rel="nofollow"')
        link = link[0..-2] + ' rel="nofollow">'
      end
      link
    end
  end
end