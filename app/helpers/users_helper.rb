module UsersHelper
  def users_avatar(user)
    @avatar = user.avatar
    if @avatar.blank?
      @avatar = "no_image.png"
    end
      return image_tag(@avatar, alt: user.name,class:"users_avater")
  end
end
