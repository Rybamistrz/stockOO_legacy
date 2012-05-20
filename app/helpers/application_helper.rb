module ApplicationHelper
  def main_menu
    [
      { :url => root_path, :label => t("menu_labels.home") },
      { :url => users_path, :label => t("menu_labels.users") },
      { :url => categories_path, :label => t("menu_labels.categories") },
      { :url => manufacturers_path, :label => t("menu_labels.manufacturers") },
      { :url => products_path, :label => t("menu_labels.products") }
    ]
  end

  def sidebar_options(view_name)
    case view_name
    when :users_index 
      [{ :url => new_user_path, :icon => "icon-plus", :label => t("sidebar_options.new_user") }]
    end
  end
end
