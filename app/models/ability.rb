# # frozen_string_literal: true

# class Ability
#   include CanCan::Ability

#   def initialize(user)

#     user ||= User.new # guest user (not logged in)

#     # Define abilities for the different user roles
#     if user.role == 'admin'
#       can :destroy, [Post, Comment]
#     else
#       can :destroy, Post, user_id: user.id
#       can :destroy, Comment, user_id: user.id
#     end
    
#   end
# end
