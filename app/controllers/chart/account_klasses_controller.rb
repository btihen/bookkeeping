class Chart::AccountKlassesController < ApplicationController
  before_action :set_chart_account_klass, only: [:show, :edit, :update, :destroy]

  # GET /chart/account_klasses
  # GET /chart/account_klasses.json
  def index
    @chart_account_klasses = Chart::AccountKlass.all
  end

  # GET /chart/account_klasses/1
  # GET /chart/account_klasses/1.json
  def show
  end

  # GET /chart/account_klasses/new
  def new
    @chart_account_klass = Chart::AccountKlass.new
  end

  # GET /chart/account_klasses/1/edit
  def edit
  end

  # POST /chart/account_klasses
  # POST /chart/account_klasses.json
  def create
    @chart_account_klass = Chart::AccountKlass.new(chart_account_klass_params)

    respond_to do |format|
      if @chart_account_klass.save
        format.html { redirect_to @chart_account_klass, notice: 'Account klass was successfully created.' }
        format.json { render :show, status: :created, location: @chart_account_klass }
      else
        format.html { render :new }
        format.json { render json: @chart_account_klass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chart/account_klasses/1
  # PATCH/PUT /chart/account_klasses/1.json
  def update
    respond_to do |format|
      if @chart_account_klass.update(chart_account_klass_params)
        format.html { redirect_to @chart_account_klass, notice: 'Account klass was successfully updated.' }
        format.json { render :show, status: :ok, location: @chart_account_klass }
      else
        format.html { render :edit }
        format.json { render json: @chart_account_klass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chart/account_klasses/1
  # DELETE /chart/account_klasses/1.json
  def destroy
    @chart_account_klass.destroy
    respond_to do |format|
      format.html { redirect_to chart_account_klasses_url, notice: 'Account klass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chart_account_klass
      @chart_account_klass = Chart::AccountKlass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chart_account_klass_params
      params.require(:chart_account_klass).permit(:lang_key)
    end
end
