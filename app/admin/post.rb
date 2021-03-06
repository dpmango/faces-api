ActiveAdmin.register Post do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :position, :description, :video, :content_after, :category, :photo, :hover_pos, :published, :author_email, :author_social, :seo_title, :seo_description, :seo_keywords
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
      if firmware.photo.url.present?
        link_to image_tag(firmware.photo.url,width:100), edit_admin_post_path(firmware.id)
      end
    end
    # id_column
    column 'Имя', :name
    column 'Категория', :category
    column 'Создано', :created_at
    column 'Опубликовано', :published
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :position
      f.input :description, :as => :ckeditor
      f.input :video
      f.input :content_after, :as => :ckeditor
      f.input :category
      f.input :photo, :as => :file, :hint => f.object.photo.url.present? \
        ? image_tag(f.object.photo.url,width:100)
        : content_tag(:span, "фото не загружено")
      f.input :hover_pos

      f.input :published
      f.input :author_email
      f.input :author_social
      f.input :seo_title
      f.input :seo_description
      f.input :seo_keywords

    end
    f.actions
  end

end
