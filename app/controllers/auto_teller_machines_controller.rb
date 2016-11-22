class AutoTellerMachinesController < ApplicationController
  before_action :set_auto_teller_machine, only: [:show, :edit, :update, :destroy]

  # GET /auto_teller_machines
  # GET /auto_teller_machines.json
  def index
    @auto_teller_machines = AutoTellerMachine.all
  end

  # GET /auto_teller_machines/1
  # GET /auto_teller_machines/1.json
  def show
  end

  # GET /auto_teller_machines/new
  def new
    @auto_teller_machine = AutoTellerMachine.new
  end

  # GET /auto_teller_machines/1/edit
  def edit
  end

  # POST /auto_teller_machines
  # POST /auto_teller_machines.json
  def create
    @auto_teller_machine = AutoTellerMachine.new(auto_teller_machine_params)

    respond_to do |format|
      if @auto_teller_machine.save
        format.html { redirect_to @auto_teller_machine, notice: 'Auto teller machine was successfully created.' }
        format.json { render :show, status: :created, location: @auto_teller_machine }
      else
        format.html { render :new }
        format.json { render json: @auto_teller_machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auto_teller_machines/1
  # PATCH/PUT /auto_teller_machines/1.json
  def update
    respond_to do |format|
      if @auto_teller_machine.update(auto_teller_machine_params)
        format.html { redirect_to @auto_teller_machine, notice: 'Auto teller machine was successfully updated.' }
        format.json { render :show, status: :ok, location: @auto_teller_machine }
      else
        format.html { render :edit }
        format.json { render json: @auto_teller_machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auto_teller_machines/1
  # DELETE /auto_teller_machines/1.json
  def destroy
    @auto_teller_machine.destroy
    respond_to do |format|
      format.html { redirect_to auto_teller_machines_url, notice: 'Auto teller machine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto_teller_machine
      @auto_teller_machine = AutoTellerMachine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auto_teller_machine_params
      params.fetch(:auto_teller_machine, {})
    end
end
