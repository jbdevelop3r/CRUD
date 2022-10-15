class MusicsController < ApplicationController
    def index
        @musics = Music.all 
    end
    def show
        @music = Music.find(params[:id])
      end
    def new
        @music = Music.new
    end
    def create
        @music = Music.new(music_params)

        if @music.save
      redirect_to root_path
        else
      render :new, status: :unprocessable_entity
        end
    end
    def edit
        @music = Music.find(params[:id])
    end
    def update
        @music = Music.find(params[:id])

        if @music.update(music_params)
            redirect_to @music
          else
            render :edit, status: :unprocessable_entity
          end
    end

    def destroy
        @music = Music.find(params[:id])
        @music.destroy
    
        redirect_to root_path, status: :see_other
      end

    private 
    def music_params
        params.require(:music).permit(:composer, :song)

    end
end
