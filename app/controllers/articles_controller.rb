# frozen_string_literal: true

# Articles controller for CRUD operations
class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end
end
