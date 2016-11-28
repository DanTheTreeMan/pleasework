json.extract! tree, :id, :name, :description, :height, :width, :price, :image_url, :created_at, :updated_at
json.url tree_url(tree, format: :json)