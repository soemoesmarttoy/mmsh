class CashaccountsController < ApplicationController
  before_action :set_cashaccount, only: %i[ show edit update destroy ]

  # GET /cashaccounts or /cashaccounts.json
  def index
    @cashaccounts = Cashaccount.all
  end

  # GET /cashaccounts/new
  def new
    @cashaccount = Cashaccount.new
  end

  # GET /cashaccounts/1/edit
  def edit
  end

  # POST /cashaccounts or /cashaccounts.json
  def create
    @cashaccount = Cashaccount.new(cashaccount_params)

    respond_to do |format|
      if @cashaccount.save
        format.html { redirect_to cashaccounts_url, notice: "Cashaccount was successfully created." }
        format.json { render :show, status: :created, location: @cashaccount }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cashaccount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cashaccounts/1 or /cashaccounts/1.json
  def update
    respond_to do |format|
      if @cashaccount.update(cashaccount_params)
        format.html { redirect_to cashaccounts_url, notice: "Cashaccount was successfully updated." }
        format.json { render :show, status: :ok, location: @cashaccount }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cashaccount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashaccounts/1 or /cashaccounts/1.json
  def destroy
    @cashaccount.destroy

    respond_to do |format|
      format.html { redirect_to cashaccounts_url, notice: "Cashaccount was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashaccount
      @cashaccount = Cashaccount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cashaccount_params
      params.require(:cashaccount).permit(:name, :amount)
    end
end
