class String
  def add_nofollow
    self.scan(/(\<a href=["'].*?["']\>.*?\<\/a\>)/).flatten.each do |link|
      link.match(/(\<a href=["'](.*?)["']\>(.*?)\<\/a\>)/)
      html.gsub!(link, "<a href='#{$2}' rel='nofollow'>#{$3}</a>" )
    end
  end
end