class Link < ApplicationRecord
  def self.top_ten
    select('links.url, count(links.id) AS url_count').group(:url).order('url_count DESC').where(:created_at > ).limit(10)
  end
end
