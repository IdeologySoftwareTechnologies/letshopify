class ProductcategoriesController < ApplicationController
  before_action :set_productcategory, only: [:show, :edit, :update, :destroy]

  # GET /productcategories
  # GET /productcategories.json
  def index
    @productcategories = Productcategory.all

  end

  # GET /productcategories/1
  # GET /productcategories/1.json

  def addchild
  
  end

  def show
    respond_to do |format|
      format.html # show_rec_horses.html.erb
      format.js   # show_rec_horses.js.erb
    end
  end

  # GET /productcategories/new
  def new
    @productcategory = Productcategory.new
    @parent_category=params[:parent_id]

   puts "===========5555555======",params[:parent_id]
   puts "===========5555555======",@parent_category
  end

  # GET /productcategories/1/edit
  def edit
  end


  

  # POST /productcategories
  # POST /productcategories.json
  def create
    #@parent_category=Productcategory.find(params[:parent_id])
     #puts "======================create=======",params[:parent_id]
    s=params[:parent_id]
    #puts "======================out=======",s
    #puts "",s.class
    if s=="0"
        #puts "======================#{s}=======",params[:parent_id]
        @productcategory = Productcategory.new(productcategory_params)
        if Productcategory.create(:name => @productcategory.name)
          redirect_to @productcategory
        end
    else

      @productcategory = Productcategory.new(productcategory_params)
      #root= Productcategory.create(:name => @productcategory.name)
      p=Productcategory.find_by id:params[:parent_id]
    
      #puts "======================#{s}=======",params[:parent_id]
      #cat=p.add_child @productcategory

      #root1=Productcategory.find(params[:parent_id])

      respond_to do |format|
        if p.add_child @productcategory
            format.html { redirect_to @productcategory, notice: 'Productcategory was successfully created.' }
            format.json { render :show, status: :created, location: @productcategory }
        else
            format.html { render :new }
            format.json { render json: @productcategory.errors, status: :unprocessable_entity }
        end
   
      end
    end
  end
 

  # PATCH/PUT /productcategories/1
  # PATCH/PUT /productcategories/1.json
  def update
    respond_to do |format|
      if @productcategory.update(productcategory_params)
        format.html { redirect_to @productcategory, notice: 'Productcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @productcategory }
      else
        format.html { render :edit }
        format.json { render json: @productcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productcategories/1
  # DELETE /productcategories/1.json
  def destroy
    @productcategory.destroy
    respond_to do |format|
      format.html { redirect_to productcategories_url, notice: 'Productcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productcategory
      @productcategory = Productcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def productcategory_params
      params.require(:productcategory).permit(:name)
    end
end
