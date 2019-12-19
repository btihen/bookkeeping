class Chart::AccountsController < ApplicationController
  before_action :set_chart_account, only: [:show, :edit, :update, :destroy]

  # GET /chart/accounts
  # GET /chart/accounts.json
  def index
    @chart_accounts = Chart::Account.all
  end

  # GET /chart/accounts/1
  # GET /chart/accounts/1.json
  def show
  end

  # GET /chart/accounts/new
  def new
    @chart_account = Chart::Account.new
  end

  # GET /chart/accounts/1/edit
  def edit
  end

  # POST /chart/accounts
  # POST /chart/accounts.json
  def create
    @chart_account = Chart::Account.new(chart_account_params)

    respond_to do |format|
      if @chart_account.save
        format.html { redirect_to @chart_account, notice: 'Account was successfully created.' }
        format.json { render :show, status: :created, location: @chart_account }
      else
        format.html { render :new }
        format.json { render json: @chart_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chart/accounts/1
  # PATCH/PUT /chart/accounts/1.json
  def update
    respond_to do |format|
      if @chart_account.update(chart_account_params)
        format.html { redirect_to @chart_account, notice: 'Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @chart_account }
      else
        format.html { render :edit }
        format.json { render json: @chart_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chart/accounts/1
  # DELETE /chart/accounts/1.json
  def destroy
    @chart_account.destroy
    respond_to do |format|
      format.html { redirect_to chart_accounts_url, notice: 'Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chart_account
      @chart_account = Chart::Account.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chart_account_params
      params.require(:chart_account).permit(:lang_key, :account_sub_group_id, :sub_statement_id)
    end
end
