# REFERENT
class ReferentsController < ApplicationController
  before_action :set_referent, only: %i[ show edit update destroy ]

  # GET /referents or /referents.json
  def index
    @referents = Referent.all
  end

  # GET /referents/1 or /referents/1.json
  def show
  end

  # GET /referents/new
  def new
    @referent = Referent.new
  end

  # GET /referents/1/edit
  def edit
  end

  # POST /referents or /referents.json
  def create
    @referent = Referent.new(referent_params)

    respond_to do |format|
      if @referent.save
        format.html { redirect_to referent_url(@referent), notice: "Referent was successfully created." }
        format.json { render :show, status: :created, location: @referent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @referent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /referents/1 or /referents/1.json
  def update
    respond_to do |format|
      if @referent.update(referent_params)
        format.html { redirect_to referent_url(@referent), notice: "Referent was successfully updated." }
        format.json { render :show, status: :ok, location: @referent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @referent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referents/1 or /referents/1.json
  def destroy
    @referent.destroy!

    respond_to do |format|
      format.html { redirect_to referents_url, notice: "Referent was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referent
      @referent = Referent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def referent_params
      params.require(:referent).permit(:name, :email)
    end
end
