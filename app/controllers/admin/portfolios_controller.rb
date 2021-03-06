module Admin
  class PortfoliosController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Portfolio.
    #     page(params[:page]).
    #     per(10)
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Portfolio.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information

    def create
      super
      resource = resource_class.new(resource_params)
      ::SavePortfolioInWordpress.new(resource).call
    end

    def update
      super
      ::SavePortfolioInWordpress.new(requested_resource).call
    end
  end
end
