class Chart::AccountGroupsController < ApplicationController
  before_action :set_chart_account_group, only: [:show, :edit, :update, :destroy]

  # GET /chart/account_groups
  # GET /chart/account_groups.json
  def index
    @chart_account_groups = Chart::AccountGroup.all
  end

  # GET /chart/account_groups/1
  # GET /chart/account_groups/1.json
  def show
  end

  # GET /chart/account_groups/new
  def new
    @chart_account_group = Chart::AccountGroup.new
  end

  # GET /chart/account_groups/1/edit
  def edit
  end

  # POST /chart/account_groups
  # POST /chart/account_groups.json
  def create
    @chart_account_group = Chart::AccountGroup.new(chart_account_group_params)

    respond_to do |format|
      if @chart_account_group.save
        format.html { redirect_to @chart_account_group, notice: 'Account group was successfully created.' }
        format.json { render :show, status: :created, location: @chart_account_group }
      else
        format.html { render :new }
        format.json { render json: @chart_account_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chart/account_groups/1
  # PATCH/PUT /chart/account_groups/1.json
  def update
    respond_to do |format|
      if @chart_account_group.update(chart_account_group_params)
        format.html { redirect_to @chart_account_group, notice: 'Account group was successfully updated.' }
        format.json { render :show, status: :ok, location: @chart_account_group }
      else
        format.html { render :edit }
        format.json { render json: @chart_account_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chart/account_groups/1
  # DELETE /chart/account_groups/1.json
  def destroy
    @chart_account_group.destroy
    respond_to do |format|
      format.html { redirect_to chart_account_groups_url, notice: 'Account group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chart_account_group
      @chart_account_group = Chart::AccountGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chart_account_group_params
      params.require(:chart_account_group).permit(:lang_key, :account_klass_id)
    end
end
