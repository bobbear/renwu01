class BusinessTripInfosController < ApplicationController
  
  # 在没有登陆的时候，不允许访问
  before_action :authenticate_user!
  before_action :set_business_trip_info, only: [:show, :edit, :update, :destroy]

  # GET /business_trip_infos
  # GET /business_trip_infos.json
  # 只可以看到自己的出差信息，不可以看到别人的出差信息
  def index
    @business_trip_infos = current_user.business_trip_infos
  end

  # GET /business_trip_infos/1
  # GET /business_trip_infos/1.json
  def show
  end

  # GET /business_trip_infos/new
  def new
    @business_trip_info = BusinessTripInfo.new
  end

  # GET /business_trip_infos/1/edit
  def edit
  end

  # POST /business_trip_infos
  # POST /business_trip_infos.json
  def create
    @business_trip_info = BusinessTripInfo.new(business_trip_info_params)
    @business_trip_info.user = current_user

    respond_to do |format|
      if @business_trip_info.save
        format.html { redirect_to @business_trip_info, notice: 'Business trip info was successfully created.' }
        format.json { render :show, status: :created, location: @business_trip_info }
      else
        format.html { render :new }
        format.json { render json: @business_trip_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_trip_infos/1
  # PATCH/PUT /business_trip_infos/1.json
  def update
    respond_to do |format|
      if @business_trip_info.update(business_trip_info_params)
        format.html { redirect_to @business_trip_info, notice: 'Business trip info was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_trip_info }
      else
        format.html { render :edit }
        format.json { render json: @business_trip_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_trip_infos/1
  # DELETE /business_trip_infos/1.json
  def destroy
    @business_trip_info.destroy
    respond_to do |format|
      format.html { redirect_to business_trip_infos_url, notice: 'Business trip info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_trip_info
      @business_trip_info = BusinessTripInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_trip_info_params
      params.require(:business_trip_info).permit(:user_id, :start_date, :end_date, :destination, :total_expense, :title)
    end
end
