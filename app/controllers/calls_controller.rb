class CallsController < ApplicationController
  def create
    Call.create(call_params)
  end

  private
    def call_params
      params.require(:call).permit(:name, :phone)
    end
end
