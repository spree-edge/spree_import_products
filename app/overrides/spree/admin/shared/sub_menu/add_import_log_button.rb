Deface::Override.new(
  virtual_path: 'spree/admin/shared/sub_menu/_product',
  name: 'add import log button',
  insert_bottom: "[data-hook='admin_product_sub_tabs']",
  text: "
   <%= tab :import_logs, match_path: '/import_logs' %>
")