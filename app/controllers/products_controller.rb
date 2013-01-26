class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new active: true
  end

  def create
    @product = Product.new params[:product]

    if @product.valid?
      @product.save
      return redirect_to products_path, notice: "Your product #{@product.name} has been created!"
    end
   render :new
  end
end
