module UsersHelper

  # Returns an avatar for the given user.
  def avatar_for(user, options = { size: 80 })
    
    size         = options[:size]
    avatar_id  = Digest::MD5::hexdigest(user.email.downcase)
    avatar_url = "#{avatar_id}?s=#{size}"
    image_tag(avatar_url, alt: user.name, class: "avatar")
  end
end
