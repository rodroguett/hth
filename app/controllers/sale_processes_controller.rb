class SaleProcessesController < ApplicationController
  before_action :set_sale_process, only: [:show, :edit, :update, :destroy]

  # GET /sale_processes
  # GET /sale_processes.json
  def index
    @sale_processes = SaleProcess.all
  end

  # GET /sale_processes/1
  # GET /sale_processes/1.json
  def show
  end

  # GET /sale_processes/new
  def new
    @sale_process = SaleProcess.new
  end

  # GET /sale_processes/1/edit
  def edit
  end

  # POST /sale_processes
  # POST /sale_processes.json
  def create
    @sale_process = SaleProcess.new(sale_process_params)

    respond_to do |format|
      if @sale_process.save
        format.html { redirect_to @sale_process, notice: 'Sale process was successfully created.' }
        format.json { render :show, status: :created, location: @sale_process }
      else
        format.html { render :new }
        format.json { render json: @sale_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sale_processes/1
  # PATCH/PUT /sale_processes/1.json
  def update
    respond_to do |format|
      if @sale_process.update(sale_process_params)
        format.html { redirect_to @sale_process, notice: 'Sale process was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale_process }
      else
        format.html { render :edit }
        format.json { render json: @sale_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_processes/1
  # DELETE /sale_processes/1.json
  def destroy
    @sale_process.destroy
    respond_to do |format|
      format.html { redirect_to sale_processes_url, notice: 'Sale process was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_process
      @sale_process = SaleProcess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_process_params
      params.require(:sale_process).permit(:name, :description)
    end
end