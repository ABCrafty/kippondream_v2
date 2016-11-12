module ApplicationHelper

  #Retourne un titre
  def titre
    base_titre = 'Kippon Dream'
    if @titre.nil?
      base_titre
    else
      "#{base_titre} | #{@titre}"
    end
  end
end
