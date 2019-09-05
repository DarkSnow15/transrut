class ConductoresController < ApplicationController
  def index
  end

  def edit
  end

  def new
    @conductor = Conductor.new
  end
end
