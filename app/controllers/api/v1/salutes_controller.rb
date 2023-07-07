module Api
  module V1
    # class SalutesController < ApiController
    class SalutesController < ApiController
      def index
        @salute = Salute.all.order('random()').first
        render json: { salute: @salute.message }
      end
    end
  end
end
