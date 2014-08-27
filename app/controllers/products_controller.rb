class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @productcategory = Productcategory.find(params[:productcategory_id])
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @productcategory = Productcategory.find(params[:productcategory_id])
  end

  # GET /products/new
  def new
    @product = Product.new
    @productcategory = Productcategory.find(params[:productcategory_id])
  end

  # GET /products/1/edit
  def edit
    @productcategory = Productcategory.find(params[:productcategory_id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @productcategory = Productcategory.find(params[:productcategory_id])
    respond_to do |format|
      if @product.save
        format.html { redirect_to productcategory_product_path(@productcategory,@product), notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    @productcategory = Productcategory.find(params[:productcategory_id])
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to productcategory_product_path(@productcategory,@product), notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @productcategory = Productcategory.find(params[:productcategory_id])
    @product.destroy
    respond_to do |format|
      format.html { redirect_to productcategory_path(@productcategory), notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :productcategory_id)
    end
end
