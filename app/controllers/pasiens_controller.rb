class PasiensController < ApplicationController
    def index
        pasiens = Pasien.all 
        render json: pasiens
      end
    
      def show
        pasien = Pasien.find(params[:id])
        render json: pasien
      end
    
      def create
        pasien_params = params.require(:pasien).permit(:jadwal, :namadokter)
        @pasien = Pasien.new(pasien_params)
        @pasien.save
      end
    
end
