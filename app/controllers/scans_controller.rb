class ScansController < ApplicationController
  before_action :set_scan, only: [:show, :edit, :update, :destroy]

  # GET /scans
  def index
    @scans = Scan.all
  end

  # GET /scans/1
  def show
  end

  # GET /scans/new
  def new
    @scan = Scan.new
  end

  # GET /scans/1/edit
  def edit
  end

  # POST /scans
  def create
    @scan = Scan.new(scan_params)

    if @scan.save
      redirect_to @scan, notice: 'Scan was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /scans/1
  def update
    if @scan.update(scan_params)
      redirect_to @scan, notice: 'Scan was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /scans/1
  def destroy
    @scan.destroy
    redirect_to scans_url, notice: 'Scan was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scan
      @scan = Scan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scan_params
      params.require(:scan).permit(:image)
    end
end
