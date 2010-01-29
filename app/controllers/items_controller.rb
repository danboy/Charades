class ItemsController < ApplicationController
  # GET /Item
  # GET /Item.xml
  def index
    @items = Item.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @Item }
    end
  end

  # GET /Item/1
  # GET /Item/1.xml
  def show
    @items = Item.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @Item }
    end
  end

  # GET /Item/new
  # GET /Item/new.xml
  def new
    @item = Item.new
    @categories = Category.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @Item }
    end
  end

  # GET /Item/1/edit
  def edit
    @items = Item.find(params[:id])
  end

  # POST /Item
  # POST /Item.xml
  def create
    @Item = Item.new(params[:item])

    respond_to do |format|
      if @Item.save
        flash[:notice] = 'Item was successfully created.'
        format.html { redirect_to(@Item) }
        format.xml  { render :xml => @Item, :status => :created, :location => @Item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @Item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /Item/1
  # PUT /Item/1.xml
  def update
    @Item = Item.find(params[:id])

    respond_to do |format|
      if @Item.update_attributes(params[:Item])
        flash[:notice] = 'Item was successfully updated.'
        format.html { redirect_to(@Item) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @Item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /Item/1
  # DELETE /Item/1.xml
  def destroy
    @Item = Item.find(params[:id])
    @Item.destroy

    respond_to do |format|
      format.html { redirect_to(:controller => :items) }
      format.xml  { head :ok }
    end
  end
end
