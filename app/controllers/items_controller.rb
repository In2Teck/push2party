class ItemsController < ApplicationController
  # GET /items
  # GET /items.json
  def index
    @items = Item.order("ID ASC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item }
    end
  end

  # GET /items/new
  # GET /items/new.json
  def new
    @item = Item.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @item }
    end
  end

  # GET /items/1/edit
  def edit
    @item = Item.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(params[:item])

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render json: @item, status: :created, location: @item }
      else
        format.html { render action: "new" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /items/1
  # PUT /items/1.json
  def update
    @item = Item.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:item])
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to items_url }
      format.json { head :no_content }
    end
  end

  def by_parent_id
    @items = Item.where("parent_id = ?", params[:parent_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end
  
  def by_parent_id_with_children
    result = []
    @items = Item.where("parent_id = ?", params[:parent_id])
    @items.each do |item|
      item[:children] = Item.where("parent_id = ? and price is not null and visible = ?", item.id, true).order('PRIORITY DESC')
      if item[:children].size != 0
        result << item
      end
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: result }
    end
  end

end
