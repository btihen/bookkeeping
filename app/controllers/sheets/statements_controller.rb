class Sheets::StatementsController < ApplicationController
  before_action :set_sheets_statement, only: [:show, :edit, :update, :destroy]

  # GET /sheets/statements
  # GET /sheets/statements.json
  def index
    @sheets_statements = Sheets::Statement.all
  end

  # GET /sheets/statements/1
  # GET /sheets/statements/1.json
  def show
  end

  # GET /sheets/statements/new
  def new
    @sheets_statement = Sheets::Statement.new
  end

  # GET /sheets/statements/1/edit
  def edit
  end

  # POST /sheets/statements
  # POST /sheets/statements.json
  def create
    @sheets_statement = Sheets::Statement.new(sheets_statement_params)

    respond_to do |format|
      if @sheets_statement.save
        format.html { redirect_to @sheets_statement, notice: 'Statement was successfully created.' }
        format.json { render :show, status: :created, location: @sheets_statement }
      else
        format.html { render :new }
        format.json { render json: @sheets_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sheets/statements/1
  # PATCH/PUT /sheets/statements/1.json
  def update
    respond_to do |format|
      if @sheets_statement.update(sheets_statement_params)
        format.html { redirect_to @sheets_statement, notice: 'Statement was successfully updated.' }
        format.json { render :show, status: :ok, location: @sheets_statement }
      else
        format.html { render :edit }
        format.json { render json: @sheets_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheets/statements/1
  # DELETE /sheets/statements/1.json
  def destroy
    @sheets_statement.destroy
    respond_to do |format|
      format.html { redirect_to sheets_statements_url, notice: 'Statement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sheets_statement
      @sheets_statement = Sheets::Statement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sheets_statement_params
      params.require(:sheets_statement).permit(:lang_key, :increase_klass_id, :decrease_klass_id)
    end
end
