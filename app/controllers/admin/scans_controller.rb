class Admin::ScansController < ApplicationController
  before_action :set_admin_scan, only: [:show, :edit, :update, :destroy]

  # GET /admin/scans
  def index
    @admin_scans = Admin::Scan.all
  end

  # GET /admin/scans/1
  def show
  end

  # GET /admin/scans/new
  def new
    @admin_scan = Admin::Scan.new
  end

  # GET /admin/scans/1/edit
  def edit
  end

  # POST /admin/scans
  def create
    @admin_scan = Admin::Scan.new(admin_scan_params)

    if @admin_scan.save
      redirect_to @admin_scan, notice: 'Scan was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/scans/1
  def update
    if @admin_scan.update(admin_scan_params)
      redirect_to @admin_scan, notice: 'Scan was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/scans/1
  def destroy
    @admin_scan.destroy
    redirect_to admin_scans_url, notice: 'Scan was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_scan
      @admin_scan = Admin::Scan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_scan_params
      params.require(:admin_scan).permit(:image)
    end
end
