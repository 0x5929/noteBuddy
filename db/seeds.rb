#
# if dev mode, seed the following
#
if Rails.env.development?

  # sample user
  User.first_or_create(
    email: 'sample@email.com',
    password: 'password',
    password_confirmation: 'password'
  )

  # sample project
  Project.first_or_create(
    user_id: User.first.id,
    title: 'sample project'
  )

  # sample note
  Note.first_or_create(
    project_id: Project.first.id,
    content: 'sample note content',
    completed: false
  )
end 
