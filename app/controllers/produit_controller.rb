class ProduitController < ApplicationController
  def index
    @enveloppes = Enveloppe.all

    @faireparts = Produit.all.select { |m| m.typeproduit == "fairepart" }
    @reponses = Produit.all.select { |m| m.typeproduit == "reponse" }
    @invitations = Produit.all.select { |m| m.typeproduit == "invitation" }
    @menus = Produit.all.select { |m| m.typeproduit == "menu" }
  end

  def show
  end
end
