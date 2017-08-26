module TopicsHelper
  def users_picture(topic,className = "")
    @picture = topic.picture.url
    @name = topic.name
    @class = className
    return image_tag(@picture, alt: @name,class:@class)
  end
end
