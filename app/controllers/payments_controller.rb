class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]
  after_action :purchase_create, only: [:create]
  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
  end

  # GET /payments/new
  def new
    @payment = Payment.new
  end

  # GET /payments/1/edit
  def edit
  end

  # POST /payments
  # POST /payments.json
  def create
    @payment = Payment.new(payment_params)
    $payment = @payment
    respond_to do |format|
      if @payment.save
        format.html { redirect_to root_path, notice: 'Pago realizado con exito.' }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @payment, notice: 'Payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url, notice: 'Payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit(:numcard, :name_owner, :expiry_date, :code, :dues_number)
    end

    def purchase_create
      @purchase = Purchase.new
      @vehicle = Vehicle.new

      unless $vehicle.nil?
        @vehicle = $vehicle
         @purchase.vehicle_id = @vehicle.id
         @purchase.total_amount = @vehicle.monto
         $vehicle = nil
      end

      unless $payment.nil?
         @purchase.payment = $payment
         $payment = nil
      end
      @existe_compra = Purchase.where(vehicle_id: @vehicle.id).order(created_at: :desc)

      if @existe_compra[0].nil?
        @purchase.valid_since = Time.current
        @purchase.valid_until = 1.year.from_now
      else
        @purchase.valid_since = @existe_compra[0].valid_until.advance(:days => 1)
        @purchase.valid_until = @existe_compra[0].valid_until.advance(:years => 1)
      end

      if @purchase.save
        Thread.new do
          NotifyMailer.send_email(@purchase,current_user).deliver_now
        end
      end

    end
end
