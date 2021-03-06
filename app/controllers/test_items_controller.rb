class TestItemsController < ApplicationController
  before_action :set_test_item, only: [:show, :edit, :update, :destroy]

  # GET /test_items
  # GET /test_items.json
  def index
    @test_items = TestItem.all
  end

  # GET /test_items/1
  # GET /test_items/1.json
  def show
  end

  # GET /test_items/new
  def new
    @test_item = TestItem.new
  end

  # GET /test_items/1/edit
  def edit
     @test_item = TestItem.find(params[:id])
  end

  # POST /test_items
  # POST /test_items.json
  def create
    @test_item = TestItem.new(test_item_params)

    respond_to do |format|
      if @test_item.save
        format.html { redirect_to @test_item, notice: 'Test item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @test_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @test_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_items/1
  # PATCH/PUT /test_items/1.json
  def update
    respond_to do |format|
      if @test_item.update(test_item_params)
        format.html { redirect_to @test_item, notice: 'Test item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @test_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_items/1
  # DELETE /test_items/1.json
  def destroy
    @test_item.destroy
    respond_to do |format|
      format.html { redirect_to test_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_item
      @test_item = TestItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_item_params
      params.require(:test_item).permit(:track_id, :description, :tester, :version, :status, :priority, :risk, :plan_comp_date, :actl_start_time, :actl_comp_time, :test_type, :comment, :specification, :bug_id)
    end
end
