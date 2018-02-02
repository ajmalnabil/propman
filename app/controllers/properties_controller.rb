class PropertiesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
    @property = current_user.properties.build(property_params)
    if @property.save
      flash[:success] = "Property created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @property.destroy
    flash[:success] = "Property deleted"
    redirect_to request.referrer || root_url
  end

  private

    def property_params
      params.require(:property).permit(:content)
    end

    def correct_user
      @property = current_user.properties.find_by(id: params[:id])
      redirect_to root_url if @property.nil?
    end
end
