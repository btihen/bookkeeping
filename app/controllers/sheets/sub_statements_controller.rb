class Sheets::SubStatementsController < ApplicationController
  before_action :set_sheets_sub_statement, only: [:show, :edit, :update, :destroy]

  # GET /sheets/sub_statements
  # GET /sheets/sub_statements.json
  def index
    @sheets_sub_statements = Sheets::SubStatement.all
  end

  # GET /sheets/sub_statements/1
  # GET /sheets/sub_statements/1.json
  def show
  end

  # GET /sheets/sub_statements/new
  def new
    @sheets_sub_statement = Sheets::SubStatement.new
  end

  # GET /sheets/sub_statements/1/edit
  def edit
  end

  # POST /sheets/sub_statements
  # POST /sheets/sub_statements.json
  def create
    @sheets_sub_statement = Sheets::SubStatement.new(sheets_sub_statement_params)

    respond_to do |format|
      if @sheets_sub_statement.save
        format.html { redirect_to @sheets_sub_statement, notice: 'Sub statement was successfully created.' }
        format.json { render :show, status: :created, location: @sheets_sub_statement }
      else
        format.html { render :new }
        format.json { render json: @sheets_sub_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sheets/sub_statements/1
  # PATCH/PUT /sheets/sub_statements/1.json
  def update
    respond_to do |format|
      if @sheets_sub_statement.update(sheets_sub_statement_params)
        format.html { redirect_to @sheets_sub_statement, notice: 'Sub statement was successfully updated.' }
        format.json { render :show, status: :ok, location: @sheets_sub_statement }
      else
        format.html { render :edit }
        format.json { render json: @sheets_sub_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheets/sub_statements/1
  # DELETE /sheets/sub_statements/1.json
  def destroy
    @sheets_sub_statement.destroy
    respond_to do |format|
      format.html { redirect_to sheets_sub_statements_url, notice: 'Sub statement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sheets_sub_statement
      @sheets_sub_statement = Sheets::SubStatement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sheets_sub_statement_params
      params.require(:sheets_sub_statement).permit(:lang_key, :sheet_statement_id)
    end
end
