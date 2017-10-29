ActiveAdmin.register Page do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :url, :title, :content
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do |post|
  selectable_column
  column 'URL', :url
  column 'Заголовок', :title
  column 'Контент', :content
  column 'Создано', :created_at
  actions
end

form do |f|
  f.inputs do
    f.input :url
    f.input :title
    f.input :content, :as => :ckeditor
  end
  f.actions
end

end
