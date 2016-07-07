#
class ItemsController < ProtectedController
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  # GET /items.json

  def index
    @items = current_user.items
    render json: @items
  end

  # GET /items/1
  # GET /items/1.json
  def show
    if @item.user == current_user
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # POST /items
  # POST /items.json
  def create
    # p 'current users items are'
    # p current_user.items
    # p 'current user id'
    # p current_user.id

    @item = Item.new(item_params)

    current_user.items << @item

    if @item.save
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    if @item.user == current_user
      if @item.update(item_params)
        head :no_content
      else
        render json: @item.errors, status: :unprocessable_entity
      end
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    if @item.user == current_user
      @item.destroy
      head :no_content
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :description, :status, :dreamdate)
  end
end
