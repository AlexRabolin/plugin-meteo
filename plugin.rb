# name: Google Calendar Onebox
# version: 0.1
# authors: Daniel Fernández

# freedom patch Google Calendar Onebox
module Onebox
  module Engine
      include Engine

      matches_regexp(/^(https?:)?\/\/www\.meteoblue\.com\/.+/i);
      matches_regexp(/^(https?:)?\/\/www\.windfinder\.com\/.+/i);
      matches_regexp(/^(https?:)?\/\/www\.windguru\.cz\/.+/i);
      matches_regexp(/^(https?:)?\/\/www\.google\.com\/maps\/.+/i);
      always_https

      def to_html
        url = @url.split('&').first
        src = ::Onebox::Helpers.normalize_url_for_output(url)
        "<iframe src='#{src}&rm=minimal' style='border: 0' width='800' height='600' frameborder='0' scrolling='no'></iframe>"
      end
