module UsersHelper

  # Returns an avatar for the given user.
  def avatar_for(user, options = { size: 80 })
    BASE_URL   = 'https://secure.gravatar.com/avatar'
    # Alternative: https://cdn.libravatar.org/avatar
    
    size       = options[:size]
    avatar_id  = Digest::MD5::hexdigest(user.email.downcase)
    avatar_url = "#{BASE_URL}/#{avatar_id}?s=#{size}"
    image_tag(avatar_url, alt: user.name, class: "avatar")
  end
end
