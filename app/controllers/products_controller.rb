class ProductsController < ApplicationController
  def index
    @prods = Product.all
  end

    def new
      @prod = Product.new
    end

    def create
      @prod = current_user.products.build(prod_params)
      if @prod.save
        redirect_to root_path
      else
        flash[:error] = "Post has error"
        render 'new'
      end
    end


    def destroy
      @prod.destroy
      redirect_to root_path
    end

  private

    def prod_params
      params.require(:product).permit(:user_id, :title, :description, :price)
    end
end
