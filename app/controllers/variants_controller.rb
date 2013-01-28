class VariantsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @variant = @product.variants.create(params[:variant])
    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:product_id])
    @variant = @product.variants.find(params[:id])
    @variant.destroy
    redirect_to product_path(@product)
  end

end
