class LocalesController < ApplicationController
  def es
    I18n.locale = :es
    redirect_to root_path
  end

  def en
    I18n.locale = :en
    redirect_to root_path
  end

end