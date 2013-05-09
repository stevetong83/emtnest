ActiveAdmin.register Product do

  filter :title, as: :string
  filter :id, as: :string

  index do 
    column :id
    column :title
    column :price
    column :description
    default_actions 
  end

  form do |f|
    f.inputs do 
      f.input :title
      f.input :price
      f.input :description, as: :text, input_html: { rows: 5 } 
      f.input :tags

      f.has_many :photos do |photo|
        photo.input :photo, as: :file
        photo.input :description, as: :text, input_html: { rows: 3 } 
      end

      f.has_many :patterns do |pattern|
        pattern.input :pattern, as: :file
        pattern.input :version
        pattern.input :description, as: :text, input_html: { rows: 3 } 
      end

      f.input :category_ids, as: :select, collection: Category.all

    end
    f.buttons

  end
  
end
