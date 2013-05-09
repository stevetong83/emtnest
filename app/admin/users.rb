ActiveAdmin.register User do
  menu parent:"Users"

  index do
    column :email
    column :created_at
  end

  form do |f|
    f.inputs do 
      f.input :email
      f.input :password
    end

    f.buttons

  end
end
