module SpreeImportProducts
  module Generators
    class InstallGenerator < Rails::Generators::Base
      class_option :migrate, type: :boolean, default: true
      source_root File.expand_path("../templates", __FILE__)#For coping the MIME type file in host application

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_import_products'
      end

      def run_migrations
        run_migrations = options[:migrate] || ['', 'y', 'Y'].include?(ask('Would you like to run the migrations now? [Y/n]'))
        if run_migrations
          run 'bundle exec rails db:migrate'
        else
          puts 'Skipping rails db:migrate, don\'t forget to run it!'
        end
      end

      def copy_initializer
        template 'mime_types.rb', 'config/initializers/mime_types.rb'
      end

      def copy_initializer
        template 'sample.xlsx', 'public/sample/sample.xlsx'
      end
    end
  end
end
