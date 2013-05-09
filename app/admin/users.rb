ActiveAdmin.register User do
  menu parent:"Users"

  index do
    column :email
    column :created_at
    default_actions
    column do 
      link_to "Login", "#"
    end
  end

  form do |f|
    f.inputs do 
      f.input :email
      f.input :password
      f.input :password_confirmation
    end

    f.buttons

  end
end
