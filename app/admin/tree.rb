ActiveAdmin.register Tree do
  permit_params :name, :description, :height, :width, :price, :image_url, :category_id, :image

  form(html: { multipart: true }) do |f|
    f.inputs 'Tree' do
      f.input :name
      f.input :category_id
      f.input :description
      f.input :price
      f.input :width
      f.input :height
      f.input :image_url
      # f.input :quantity
      f.input :image, as: :file
    end
    f.actions

  end

end
