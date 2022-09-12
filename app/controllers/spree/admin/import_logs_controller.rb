module Spree
  module Admin
    class ImportLogsController < ResourceController
      def index
        @import_logs = ImportLog.where(store_id: current_store.id).order(created_at: :desc).page(params[:page]).
        per(params[:per_page] || Spree::Backend::Config[:admin_products_per_page])
      end

      def import_sample
        respond_to do |format|
          format.xlsx { send_data File.read("#{Rails.root}/public/sample/sample.xlsx"), type: 'application/xlsx; header=present', disposition: "attachment", filename: "sample.xlsx"  }
        end
      end
    end
  end
end
