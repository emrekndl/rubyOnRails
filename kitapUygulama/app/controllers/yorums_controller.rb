class YorumsController < ApplicationController
  def create
    @kitap = Kitap.find(params[:kitap_id])
    @yorum = @kitap.yorums.create(params[:yorum].permit(:isim, :mesaj))

    redirect_to kitaps_path(@kitap)
  end
end
