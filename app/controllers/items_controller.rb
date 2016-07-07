#
class ItemsController < ProtectedController
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  # GET /items.json

  def indexGetItems
    # all_items = Item.all
    #
    # for () params[:id].to_i

  end

  def index
    if current_user.id.to_s == item_params[:user_id].to_s
      @items = Item.all

      render json: @items
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
    if current_user.id.to_s == item_params[:user_id].to_s
      render json: @item
    end
  end

  # POST /items
  # POST /items.json
  def create
    if current_user.id.to_s == item_params[:user_id].to_s
      p 'the equality is true'
      @item = Item.new(item_params)

      if @item.save
        render json: @item, status: :created, location: @item
      else
        render json: @item.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    if current_user.id.to_s == item_params[:user_id].to_s
      @item = Item.find(params[:id])

      if @item.update(item_params)
        head :no_content
      else
        render json: @item.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    if current_user.id.to_s == item_params[:user_id].to_s
      @item.destroy

      head :no_content
    end
  end

  private

    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:title, :description, :status, :user_id, :dreamdate)
    end
end
