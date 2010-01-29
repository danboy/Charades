class CategoriesController < ApplicationController
  # GET /Category
  # GET /Category.xml
  def index
    @categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @Category }
    end
  end

  # GET /Category/1
  # GET /Category/1.xml
  def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @Category }
    end
  end

  # GET /Category/new
  # GET /Category/new.xml
  def new
    @category = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @Category }
    end
  end

  # GET /Category/1/edit
  def edit
    @category = Category.find(params[:id])
  end

  # POST /Category
  # POST /Category.xml
  def create
    @Category = Category.new(params[:category])

    respond_to do |format|
      if @Category.save
        flash[:notice] = 'Category was successfully created.'
        format.html { redirect_to(@Category) }
        format.xml  { render :xml => @Category, :status => :created, :location => @Category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @Category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /Category/1
  # PUT /Category/1.xml
  def update
    @Category = Category.find(params[:id])

    respond_to do |format|
      if @Category.update_attributes(params[:category])
        flash[:notice] = 'Category was successfully updated.'
        format.html { redirect_to(@Category) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @Category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /Category/1
  # DELETE /Category/1.xml
  def destroy
    @Category = Category.find(params[:id])
    @Category.destroy

    respond_to do |format|
      format.html { redirect_to(:contoller => :categories) }
      format.xml  { head :ok }
    end
  end
end
