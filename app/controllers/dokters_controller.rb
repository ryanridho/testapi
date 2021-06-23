class DoktersController < ApplicationController
        def index
          dokters = Dokter.all
          render json: dokters
        end
      
        def show
        dokters = Dokter.find(params[:id])
          render json: dokters
        end
      
        def create
          dokter_params = params.require(:dokter).permit( :jadwal, :pasien)
          dokter = Dokter.new(dokter_params)
          dokter.save
        end
      
        def destroy
          dokter = Dokter.find(params[:id])
          dokter.destroy
        end
      end