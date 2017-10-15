ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      # span class: "blank_slate" do
      #   span I18n.t("active_admin.dashboard_welcome.welcome")
      #   small I18n.t("active_admin.dashboard_welcome.call_to_action")
      # end
    end

    columns do
      column do
        panel "Последние Посты" do
          ul do
            Post.last(10).map do |post|
              li link_to(post.name, admin_post_path(post))
            end
          end
        end
      end

      column do
        panel "Привет!" do
          para "Добро пожаловать.. здесь что то появится позже"
        end
      end
    end
  end # content
end
