json.extract! user, :id, :name, :email
json.sgid user.attachable_sgid
json.content render(partial: "users/user", locals: {user: user}, formats: [:html])