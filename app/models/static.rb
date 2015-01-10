class Static < ActiveRecord::Base
  attr_accessible :body_en, :body_ru, :short_en, :short_ru, :title_en, :title_ru, :short_url

  def title
    send "title_#{I18n.locale}"
  end

  def short
    send "short_#{I18n.locale}"
  end

  def body
    send "body_#{I18n.locale}"
  end

end
