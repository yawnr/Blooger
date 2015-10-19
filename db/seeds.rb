#destroy all
User.destroy_all
Contact.destroy_all
ContactShare.destroy_all

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
