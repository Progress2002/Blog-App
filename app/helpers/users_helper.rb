module UsersHelper
  def render_user(user)
    content_tag(:li, class: 'user-container') do
      concat(content_tag(:div, class: 'user-profile-pic') do
        link_to(user_path(user)) do
          image_tag(user.photo, alt: 'profile-picture')
        end
      end)
      concat(content_tag(:div, class: 'user-info') do
        concat(content_tag(:h3) do
          link_to(user.name, user_path(user))
        end)
        concat(content_tag(:p, class: 'posts-counter') do
          "Number of posts: #{user.posts_counter || 0}"
        end)
      end)
    end
  end
end
