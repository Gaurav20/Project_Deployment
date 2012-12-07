class Flickr < ActiveRecord::Base
  # attr_accessible :title, :body

include HTTParty

  base_uri 'api.flickr.com'

  def self.getPhotos(uid)
    return get('/services/rest/', :query => {
      :method => 'flickr.people.getPublicPhotos',
      :api_key => '791c0dd48819eee5f9df862e3a609a2e',
      :user_id => uid})
  end
end

