class RatesController < ApplicationController
  before_action :authenticate_user!
  def create
    rate = Rate.new(rate_params)
    rate.assign_attributes(user: current_user, book: Book.find(params[:book_id]))
    redirect_to(request.env['HTTP_REFERER'], notice: 'Rating created successfully') if rate.save
  end

  def destroy
    rate = Rate.find(params[:id])
    rate.destroy
    redirect_to(request.env['HTTP_REFERER'], notice: 'The rate has been removed')
  end

  private

  def rate_params
    params.require(:rate).permit(:number)
  end
end
