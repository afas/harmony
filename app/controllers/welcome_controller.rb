class WelcomeController < ApplicationController

  def set_lang
    #raise NotFound unless [:en, :ru].include?(params[:lang_cut])
    redirect_to "/?locale=#{params[:lang_cut]}"
  end

  def index
    @page = :welcome
    @banner = Static.find_by_short_url("book-release")
    @posts = Post.where(:lang => I18n.locale).order("ID DESC")
  end

end
