class ProprietairesController < ApplicationController
  before_action :set_proprietaire, only: %i[ show edit update destroy ]

  # GET /proprietaires or /proprietaires.json
  def index
    @proprietaires = Proprietaire.all
  end

  # GET /proprietaires/1 or /proprietaires/1.json
  def show
  end

  # GET /proprietaires/new
  def new
    @proprietaire = Proprietaire.new
  end

  # GET /proprietaires/1/edit
  def edit
  end

  # POST /proprietaires or /proprietaires.json
  def create
    @proprietaire = Proprietaire.new(proprietaire_params)

    respond_to do |format|
      if @proprietaire.save
        format.html { redirect_to @proprietaire, notice: "Proprietaire was successfully created." }
        format.json { render :show, status: :created, location: @proprietaire }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proprietaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proprietaires/1 or /proprietaires/1.json
  def update
    respond_to do |format|
      if @proprietaire.update(proprietaire_params)
        format.html { redirect_to @proprietaire, notice: "Proprietaire was successfully updated." }
        format.json { render :show, status: :ok, location: @proprietaire }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proprietaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proprietaires/1 or /proprietaires/1.json
  def destroy
    @proprietaire.destroy!

    respond_to do |format|
      format.html { redirect_to proprietaires_path, status: :see_other, notice: "Proprietaire was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proprietaire
      @proprietaire = Proprietaire.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def proprietaire_params
      params.expect(proprietaire: [ :nom, :email, :telephone, :voiture_id ])
    end
end
