class MethodPaymentsController < ApplicationController
  before_action :set_method_payment, only: [:show, :edit, :update, :destroy]

  # GET /method_payments
  # GET /method_payments.json
  def index
    @method_payments = MethodPayment.all
  end

  # GET /method_payments/1
  # GET /method_payments/1.json
  def show
  end

  # GET /method_payments/new
  def new
    @method_payment = MethodPayment.new
  end

  # GET /method_payments/1/edit
  def edit
  end

  # POST /method_payments
  # POST /method_payments.json
  def create
    @method_payment = MethodPayment.new(method_payment_params)

    respond_to do |format|
      if @method_payment.save
        format.html { redirect_to @method_payment, notice: 'Method payment was successfully created.' }
        format.json { render :show, status: :created, location: @method_payment }
      else
        format.html { render :new }
        format.json { render json: @method_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /method_payments/1
  # PATCH/PUT /method_payments/1.json
  def update
    respond_to do |format|
      if @method_payment.update(method_payment_params)
        format.html { redirect_to @method_payment, notice: 'Method payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @method_payment }
      else
        format.html { render :edit }
        format.json { render json: @method_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /method_payments/1
  # DELETE /method_payments/1.json
  def destroy
    @method_payment.destroy
    respond_to do |format|
      format.html { redirect_to method_payments_url, notice: 'Method payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_method_payment
      @method_payment = MethodPayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def method_payment_params
      params.require(:method_payment).permit(:method)
    end
end
