# class RevenueController < ApplicationController
# 	before_action :set_revenue, only: [:show, :edit, :update, :destroy]

#   # GET /expenditures
#   # GET /expenditures.json
#   def index
#     @revenue = Revenue.all
#   end

#   # GET /expenditures/1
#   # GET /expenditures/1.json
#   def show
#   end

#   # GET /expenditures/new
#   def new
#     @revenue = Revenue.new
#   end

#   # GET /expenditures/1/edit
#   def edit
#   end

#   # POST /expenditures
#   # POST /expenditures.json
#   def create
#     @revenue = Revenue.new(revenue_params)

#     respond_to do |format|
#       if @revenue.save
#         format.html { redirect_to @revenue, notice: 'Revenue was successfully created.' }
#         format.json { render :show, status: :created, location: @revenue }
#       else
#         format.html { render :new }
#         format.json { render json: @revenue.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /expenditures/1
#   # PATCH/PUT /expenditures/1.json
#   def update
#     respond_to do |format|
#       if @revenue.update(revenue_params)
#         format.html { redirect_to @revenue, notice: 'Revenue was successfully updated.' }
#         format.json { render :show, status: :ok, location: @revenue }
#       else
#         format.html { render :edit }
#         format.json { render json: @revenue.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /expenditures/1
#   # DELETE /expenditures/1.json
#   def destroy
#     @revenue.destroy
#     respond_to do |format|
#       format.html { redirect_to revenues_url, notice: 'Revenue was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_revenue
#       @revenue = Revenue.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def revenue_params
#       params.require(:revenue).permit(:tithes, :offerings, :donations, :misc_income, :total_revenue)
#     end
# end
