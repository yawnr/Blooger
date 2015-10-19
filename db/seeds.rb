#destroy all
User.destroy_all
Contact.destroy_all
ContactShare.destroy_all
Comment.destroy_all

#new users
users = []
5.times do |i|
  users << User.create!(username: "User#{i}")
end

#new contacts
contacts = []
users.each do |user|
  3.times do |i|
    contacts << Contact.create!(name: "Contact#{i}", email: "contact#{i}@example.com", user_id: user.id)
  end
end

#new contact shares
contact_shares = []

contact_shares << ContactShare.create!(user_id: users.first.id, contact_id: contacts[4].id )
contact_shares << ContactShare.create!(user_id: users.first.id, contact_id: contacts[7].id )
contact_shares << ContactShare.create!(user_id: users.last.id, contact_id: contacts[0].id )
contact_shares << ContactShare.create!(user_id: users.last.id, contact_id: contacts[4].id )
contact_shares << ContactShare.create!(user_id: users[2].id, contact_id: contacts[1].id )

#comments
comments = []

3.times do |i|
  users[i].comments.create!(comment_body: "Haha you are #{i}", author_id: users[-1 - i].id)

end
#
# 3.times do |i|
#   comments << Comment.create!(comment_body: "Haha you're just a contact #{i}", commentable_id: contacts[i].id, commentable_type: "contacts")
# end
#
# 3.times do |i|
#   comments << Comment.create!(comment_body: "Why are you sharing this #{i*i}", commentable_id: contact_shares[-1 - i].id, commentable_type: "contact_shares")
# end
