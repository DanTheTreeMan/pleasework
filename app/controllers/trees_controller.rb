# Rubocop want a comment it get a comment
class TreesController < ApplicationController
  before_action :set_tree, only: [:show]

  # GET /trees
  # GET /trees.json
  def index
    @trees = Tree.all
    @order_item = current_order.order_items.new
    if params[:search]
      @trees = Tree.search(params[:search]).order("created_at DESC")
    else
      @trees = Tree.all.order('created_at DESC')
    end
  end

  # GET /trees/1
  # GET /trees/1.json
  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tree
    @tree = Tree.find(params[:id])
  end
end
