class OperatingSchedulesController < ApplicationController
  before_action :set_operating_schedule, only: [:show, :edit, :update, :destroy]

  # GET /operating_schedules
  # GET /operating_schedules.json
  def index
    @operating_schedules = OperatingSchedule.all
  end

  # GET /operating_schedules/1
  # GET /operating_schedules/1.json
  def show
  end

  # GET /operating_schedules/new
  def new
    @operating_schedule = OperatingSchedule.new
  end

  # GET /operating_schedules/1/edit
  def edit
  end

  # POST /operating_schedules
  # POST /operating_schedules.json
  def create
    @operating_schedule = OperatingSchedule.new(operating_schedule_params)

    respond_to do |format|
      if @operating_schedule.save
        format.html { redirect_to @operating_schedule, notice: 'Operating schedule was successfully created.' }
        format.json { render :show, status: :created, location: @operating_schedule }
      else
        format.html { render :new }
        format.json { render json: @operating_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operating_schedules/1
  # PATCH/PUT /operating_schedules/1.json
  def update
    respond_to do |format|
      if @operating_schedule.update(operating_schedule_params)
        format.html { redirect_to @operating_schedule, notice: 'Operating schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @operating_schedule }
      else
        format.html { render :edit }
        format.json { render json: @operating_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operating_schedules/1
  # DELETE /operating_schedules/1.json
  def destroy
    @operating_schedule.destroy
    respond_to do |format|
      format.html { redirect_to operating_schedules_url, notice: 'Operating schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operating_schedule
      @operating_schedule = OperatingSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operating_schedule_params
      params.require(:operating_schedule).permit(:monthID, :col_days, :staffID)
    end
end
