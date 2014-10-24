class WorkOrdersController < ApplicationController

  def new
    @company = Company.find(params[:company_id])
    @work_order = @company.work_orders.build
  end

end
