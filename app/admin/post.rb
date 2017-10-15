ActiveAdmin.register Post do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :description, :category, :photo, :filter
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
    column 'Фото' do |firmware|
      link_to image_tag(firmware.photo.url,width:100), edit_admin_post_path(firmware.id)
    end
    # id_column
    column 'Имя', :name
    column 'Категория', :category
    column 'Фильтр', :filter
    column 'Создано', :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description, :as => :ckeditor
      f.input :category
      f.input :photo, :as => :file, :hint => image_tag(f.object.photo.url,width:100)
      f.input :filter
    end
    f.actions
  end

end
