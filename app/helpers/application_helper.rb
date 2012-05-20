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
      [{ :url => new_user_path, :icon => "icon-plus", :label => t("views.users_index.add_user") }]
    when :categories_index
      [{ :url => new_category_path, :icon => "icon-plus", :label => t("views.categories_index.add_category") }]
    when :manufacturers_index
      [{ :url => new_manufacturer_path, :icon => "icon-plus", :label => t("views.manufacturers_index.add_manufacturer") }]
    when :products_index
      [{ :url => new_product_path, :icon => "icon-plus", :label => t("views.products_index.add_product") }]
    end 
  end
end
