class Admin::ProductsController < AdminController


  # CRUD
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(produce_params)
    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(produce_params)
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path
  end


  private

  def produce_params
    params.require(:product).permit(:title, :description, :price, :quantity, :image)
  end


end
