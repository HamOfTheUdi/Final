class InfoCommandesController < ApplicationController
  before_action :set_info_commande, only: %i[ show edit update destroy ]

  # GET /info_commandes or /info_commandes.json
  def index
    @info_commandes = InfoCommande.all
  end

  # GET /info_commandes/1 or /info_commandes/1.json
  def show
  end

  # GET /info_commandes/new
  def new
    @info_commande = InfoCommande.new
  end

  # GET /info_commandes/1/edit
  def edit
  end

  # POST /info_commandes or /info_commandes.json
  def create
    @info_commande = InfoCommande.new(info_commande_params)

    respond_to do |format|
      if @info_commande.save
        format.html { redirect_to @info_commande, notice: "Info commande was successfully created." }
        format.json { render :show, status: :created, location: @info_commande }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @info_commande.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /info_commandes/1 or /info_commandes/1.json
  def update
    respond_to do |format|
      if @info_commande.update(info_commande_params)
        format.html { redirect_to @info_commande, notice: "Info commande was successfully updated." }
        format.json { render :show, status: :ok, location: @info_commande }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @info_commande.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_commandes/1 or /info_commandes/1.json
  def destroy
    @info_commande.destroy!

    respond_to do |format|
      format.html { redirect_to info_commandes_path, status: :see_other, notice: "Info commande was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info_commande
      @info_commande = InfoCommande.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def info_commande_params
      params.expect(info_commande: [ :commande_id, :details, :statut, :raison_retard ])
    end
end
