class BacklogItemsController < ApplicationController
  before_action :set_backlog_item, only: [:show, :edit, :update, :destroy]

  # GET /backlog_items
  # GET /backlog_items.json
  def index
    @backlog_items = BacklogItem.rank(:row_order).all
  end

  # GET /backlog_items/1
  # GET /backlog_items/1.json
  def show
  end

  # GET /backlog_items/new
  def new
    @backlog_item = BacklogItem.new
  end

  # GET /backlog_items/1/edit
  def edit
  end

  # POST /backlog_items
  # POST /backlog_items.json
  def create
    @backlog_item = BacklogItem.new(backlog_item_params)

    respond_to do |format|
      if @backlog_item.save
        format.html { redirect_to @backlog_item, notice: 'Backlog item was successfully created.' }
        format.json { render :show, status: :created, location: @backlog_item }
      else
        format.html { render :new }
        format.json { render json: @backlog_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backlog_items/1
  # PATCH/PUT /backlog_items/1.json
  def update
    respond_to do |format|
      if @backlog_item.update(backlog_item_params)
        format.html { redirect_to @backlog_item, notice: 'Backlog item was successfully updated.' }
        format.json { render :show, status: :ok, location: @backlog_item }
      else
        format.html { render :edit }
        format.json { render json: @backlog_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def up
    set_backlog_item
    @backlog_item.update_attribute :row_order_position, :up
    redirect_to backlog_items_path
  end

  def down
    set_backlog_item
    @backlog_item.update_attribute :row_order_position, :down
    redirect_to backlog_items_path
  end

  # DELETE /backlog_items/1
  # DELETE /backlog_items/1.json
  def destroy
    @backlog_item.destroy
    respond_to do |format|
      format.html { redirect_to backlog_items_url, notice: 'Backlog item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backlog_item
      @backlog_item = BacklogItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def backlog_item_params
      params.require(:backlog_item).permit(:title, :sprint_id)
    end
end
