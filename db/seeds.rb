# Seed data for Users

User.delete_all

1.upto(50).each do |num|
  User.create! do |user|
    user.useremployeeid = "V#{num}"
    user.username = "User #{num}"
    user.email = "user#{num}@abc.com"
    user.uid = "user_#{num}"
  end
end
