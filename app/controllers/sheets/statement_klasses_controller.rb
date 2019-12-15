class Sheets::StatementKlassesController < ApplicationController
  before_action :set_sheets_statement_klass, only: [:show, :edit, :update, :destroy]

  # GET /sheets/statement_klasses
  # GET /sheets/statement_klasses.json
  def index
    @sheets_statement_klasses = Sheets::StatementKlass.all
  end

  # GET /sheets/statement_klasses/1
  # GET /sheets/statement_klasses/1.json
  def show
  end

  # GET /sheets/statement_klasses/new
  def new
    @sheets_statement_klass = Sheets::StatementKlass.new
  end

  # GET /sheets/statement_klasses/1/edit
  def edit
  end

  # POST /sheets/statement_klasses
  # POST /sheets/statement_klasses.json
  def create
    @sheets_statement_klass = Sheets::StatementKlass.new(sheets_statement_klass_params)

    respond_to do |format|
      if @sheets_statement_klass.save
        format.html { redirect_to @sheets_statement_klass, notice: 'Statement klass was successfully created.' }
        format.json { render :show, status: :created, location: @sheets_statement_klass }
      else
        format.html { render :new }
        format.json { render json: @sheets_statement_klass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sheets/statement_klasses/1
  # PATCH/PUT /sheets/statement_klasses/1.json
  def update
    respond_to do |format|
      if @sheets_statement_klass.update(sheets_statement_klass_params)
        format.html { redirect_to @sheets_statement_klass, notice: 'Statement klass was successfully updated.' }
        format.json { render :show, status: :ok, location: @sheets_statement_klass }
      else
        format.html { render :edit }
        format.json { render json: @sheets_statement_klass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheets/statement_klasses/1
  # DELETE /sheets/statement_klasses/1.json
  def destroy
    @sheets_statement_klass.destroy
    respond_to do |format|
      format.html { redirect_to sheets_statement_klasses_url, notice: 'Statement klass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sheets_statement_klass
      @sheets_statement_klass = Sheets::StatementKlass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sheets_statement_klass_params
      params.require(:sheets_statement_klass).permit(:lang_key)
    end
end
