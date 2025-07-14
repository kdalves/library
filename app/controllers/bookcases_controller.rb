class BookcasesController < ApplicationController
  before_action :set_bookcase, only: %i[ show edit update destroy ]

  # GET /bookcases or /bookcases.json
  def index
    @bookcases = Bookcase.all
  end

  # GET /bookcases/1 or /bookcases/1.json
  def show
  end

  # GET /bookcases/new
  def new
    @bookcase = Bookcase.new
  end

  # GET /bookcases/1/edit
  def edit
  end

  # POST /bookcases or /bookcases.json
  def create
    @bookcase = Bookcase.new(bookcase_params)

    respond_to do |format|
      if @bookcase.save
        format.html { redirect_to @bookcase, notice: "Bookcase was successfully created." }
        format.json { render :show, status: :created, location: @bookcase }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bookcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookcases/1 or /bookcases/1.json
  def update
    respond_to do |format|
      if @bookcase.update(bookcase_params)
        format.html { redirect_to @bookcase, notice: "Bookcase was successfully updated." }
        format.json { render :show, status: :ok, location: @bookcase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bookcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookcases/1 or /bookcases/1.json
  def destroy
    @bookcase.destroy!

    respond_to do |format|
      format.html { redirect_to bookcases_path, status: :see_other, notice: "Bookcase was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookcase
      @bookcase = Bookcase.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def bookcase_params
      params.expect(bookcase: [ :name, :status, :virtual ])
    end
end
