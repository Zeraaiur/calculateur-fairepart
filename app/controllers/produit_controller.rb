class ProduitController < ApplicationController
  def index
    @enveloppes = Enveloppe.all

    @faireparts = Produit.all.select { |m| m.typeproduit == "fairepart" }
    @reponses = Produit.all.select { |m| m.typeproduit == "reponse" }
    @invitations = Produit.all.select { |m| m.typeproduit == "invitation" }
    @menus = Produit.all.select { |m| m.typeproduit == "menu" }

    @mynombrefp = params[:mynombrefp] || 25


    respond_to do |format|
      format.html
      format.js
    end

  end

  def show
  end
end
