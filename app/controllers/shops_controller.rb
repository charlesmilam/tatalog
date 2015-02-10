class ShopsController < ApplicationController
  before_action :set_shop,
                  only: [
                    :show,
                    :edit,
                    :update,
                    :destroy
                  ]
                  
  def index
    @shops = Shop.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
