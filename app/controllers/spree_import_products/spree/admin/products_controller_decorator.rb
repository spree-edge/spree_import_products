require 'fileutils'

module SpreeImportProducts
  module Spree
    module Admin
      module ProductsControllerDecorator

        def import
          file_path = params[:product][:file].path
          import_log = ::Spree::ImportLog.create!(started_by_email: spree_current_user.email, state: 'created', store_id: current_store.id )
          ProductsImport::Import.new(file_path, spree_current_user, import_log, current_store).perform_import
          message = "Product import successful."
          flash[:success] = message
          redirect_to admin_products_path
        end

      end
    end
  end
end

Spree::Admin::ProductsController.prepend SpreeImportProducts::Spree::Admin::ProductsControllerDecorator
