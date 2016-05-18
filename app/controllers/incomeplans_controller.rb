class IncomeplansController < ApplicationController
  before_action :set_incomeplan, only: [:show, :edit, :update, :destroy]

  # GET /incomeplans
  # GET /incomeplans.json
  def index
    @incomeplans = Incomeplan.all
  end

  # GET /incomeplans/1
  # GET /incomeplans/1.json
  def show
  end

  # GET /incomeplans/new
  def new
    @incomeplan = Incomeplan.new
  end

  # GET /incomeplans/1/edit
  def edit
  end

  # POST /incomeplans
  # POST /incomeplans.json
  def create
    @incomeplan = Incomeplan.new(incomeplan_params)

    respond_to do |format|
      if @incomeplan.save
        format.html { redirect_to @incomeplan, notice: 'Incomeplan was successfully created.' }
        format.json { render :show, status: :created, location: @incomeplan }
      else
        format.html { render :new }
        format.json { render json: @incomeplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incomeplans/1
  # PATCH/PUT /incomeplans/1.json
  def update
    respond_to do |format|
      if @incomeplan.update(incomeplan_params)
        format.html { redirect_to @incomeplan, notice: 'Incomeplan was successfully updated.' }
        format.json { render :show, status: :ok, location: @incomeplan }
      else
        format.html { render :edit }
        format.json { render json: @incomeplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incomeplans/1
  # DELETE /incomeplans/1.json
  def destroy
    @incomeplan.destroy
    respond_to do |format|
      format.html { redirect_to incomeplans_url, notice: 'Incomeplan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incomeplan
      @incomeplan = Incomeplan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incomeplan_params
      params.require(:incomeplan).permit(:contract_id, :ititle, :iprice, :idate)
    end
end
