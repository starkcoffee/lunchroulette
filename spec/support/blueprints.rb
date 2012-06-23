require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

Player.blueprint do
  name  { "Name #{sn}" }
  email { "#{sn}@example.com" }
end
