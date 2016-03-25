module ManagersHelper
  def gravatar_for(manager)
    gravatar_id = Digest::MD5::hexdigest(manager.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.jpg"
    image_tag(gravatar_url, alt: manager.name, class: "gravater")
  end
  
  
end
