# GitLab 

Reference 

[gitlab](https://gitlab.com/free-releases/gitlab-ce)


# Using rails_console

##  Creating user password 
1. Find your Gitlab container name
`sudo docker ps`

2. Access the container
`sudo docker exec -it <container_name_or_id> bash`

3. Enter to Gitlab Rails console
`gitlab-rails console`

Reference
[docs.gitlab.com - rails_console](https://docs.gitlab.com/administration/operations/rails_console/)


 changing user password
```
user = User.find_by(username: 'root')
user.password = "<new-password>"
user.save
```

Create new User
```
user = User.create!(
  name: 'Admin User',
  username: 'adminuser',
  email: 'admin@example.com',
  password: 'StrongPassword123!',
  password_confirmation: 'StrongPassword123!',
  admin: true,
  confirmed_at: Time.now,
  approved: true
)
```
> This one not working.

Promote an Existing User to Admin
```
user = User.find_by(email: 'your@email.com')
user.admin = true
user.confirm
user.approved = true
user.save!
```
