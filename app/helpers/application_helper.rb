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
end
