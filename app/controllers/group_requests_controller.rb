class GroupRequestsController < ApplicationController
  before_action :set_group_request, only: [:show, :edit, :update, :destroy]

  # GET /group_requests
  # GET /group_requests.json
  def index
    @group_requests = GroupRequest.all
  end

  # GET /group_requests/1
  # GET /group_requests/1.json
  def show
  end

  # GET /group_requests/new
  def new
    @group_request = GroupRequest.new
  end

  # GET /group_requests/1/edit
  def edit
  end

  # POST /group_requests
  # POST /group_requests.json
  def create
    @group_request = GroupRequest.new(group_request_params)

    respond_to do |format|
      if @group_request.save
        format.html { redirect_to @group_request, notice: 'Group request was successfully created.' }
        format.json { render action: 'show', status: :created, location: @group_request }
      else
        format.html { render action: 'new' }
        format.json { render json: @group_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_requests/1
  # PATCH/PUT /group_requests/1.json
  def update
    respond_to do |format|
      if @group_request.update(group_request_params)
        format.html { redirect_to @group_request, notice: 'Group request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @group_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_requests/1
  # DELETE /group_requests/1.json
  def destroy
    @group_request.destroy
    respond_to do |format|
      format.html { redirect_to group_requests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_request
      @group_request = GroupRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_request_params
      params.require(:group_request).permit(:user_id, :group_id, :pre_auth, :approved, :created_by, :updated_by)
    end
end
