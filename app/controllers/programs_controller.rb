class ProgramsController < ApplicationController
  def index
    @echauffement = Exercice.where(category:"Echauffement").all.sample
    @bras = Exercice.where(category:"Bras").all.sample
    @jambes = Exercice.where(category:"Jambes").all.sample
    category = ["Pecs", "Dos"].sample
    @other = Exercice.where(category: category).all.sample

  end
end
