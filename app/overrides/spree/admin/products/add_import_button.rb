Deface::Override.new(virtual_path: 'spree/admin/products/index',
  name: 'add_import_button',
  insert_before: "erb[loud]:contains('admin_new_product')",
  text: "
    <%= render 'import_form'%>
  ")