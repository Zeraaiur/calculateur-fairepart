class ProduitController < ApplicationController
  def index
    @enveloppes5x7 = Enveloppe.all.select { |m| m.format == "5x7" }


    @faireparts = Produit.all.select { |m| m.typeproduit == "fairepart" }
    @reponses = Produit.all.select { |m| m.typeproduit == "reponse" }
    @invitations = Produit.all.select { |m| m.typeproduit == "invitation" }
    @menus = Produit.all.select { |m| m.typeproduit == "menu" }

    @myEnvFP = params[:clicked_enveloppe_fp] || false

    if @myEnvFP == "true"
      @myEnvFP = true
    else
      @myEnvFP = false
    end

    @mynombrefp = params[:mynombrefp] || 25
    @mynombreRep = params[:mynombreRep] || 25
    @mynombreInv = params[:mynombreInv] || 0

    if @mynombreInv
      price_eval(@mynombreInv)
    end

    if @mynombrefp
      price_eval(@mynombrefp)
    end

    if @mynombreRep
      price_eval(@mynombreRep)
    end

    @prices= Price.all
    @myprice = 0

    respond_to do |format|
      format.html
      format.js
    end


  end

  def show
  end

  private

  def price_eval(e)
    index = (e.to_i / 25)
    @myprice_unit = index * 25
    if @myprice_unit == 0
      @myprice_unit = 25
    end
    if @myprice_unit > 200
      @myprice_unit = 200
    end
  end

end
