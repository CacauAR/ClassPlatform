json.extract! student, :id, :registry, :name, :sex, :email, :password, :image, :created_at, :updated_at
json.url student_url(student, format: :json)
