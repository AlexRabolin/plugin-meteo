# name: Google Calendar Onebox
# version: 0.1
# authors: Daniel Fernández

# freedom patch Google Calendar Onebox
class Onebox::Engine::CalendarOnebox
  include Onebox::Engine

  matches_regexp(/^https?:\/\/(?:www\.)?(?:m\.)?(?:google\.com\/calendar)\/.+$/)

  def to_html
    "<iframe src='#{@url}' style='border: 0' width='800' height='600' frameborder='0' scrolling='no'></iframe>"
  end
end
