class PhotosController < ApplicationController
	def index
		@photos = Photo.all
	end

	def show
		@photo = Photo.find(params[:id])
	end

	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new(safe_photo_params)
		if @photo.save
			flash[:notice] = "Photo created!"
		else
			flash[:notice] = "Please try again"
			redirect_to new_photo_path
		end
	end

 	def destroy
        Photo.find(params[:id]).destroy
        redirect_to photos_path
	end

	def edit
		@photo =  Photo.find(params[:id])
	end

	def update
		@photo =  Photo.find(params[:id])
		if @photo.update(safe_photo_params)
			flash[:notice] = "Phoot updated"
			redirect_to photo_path
		else
			flash[:notice] = "Photo not updated"
			render edit_photo_path
		end
	end

	private

	def safe_photo_params
		params.require(:photo).permit(:url, :caption)
    end
end