class ProductsController < ApplicationController
  def index
    @products=Product.all

  end

  def show
    @product=Product.find(params[:id])
  end

  def new
    @product=Product.new
    @category = Category.all

  end

  def create
    @product=Product.new(product_params)
    @product.save
    redirect_to products_path

  end

  def edit
    @product=Product.find(params[:id])
    @category =@product.category
  end

  def update
    @product=Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] =  "Product updated successfully."
      redirect_to  products_path
    else
      render :edit
    end
  end

  def destroy
    @product=Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end






  private
  def product_params
    params.require(:product).permit(:category_id,:name,:description,:price)
  end





end
