class RecordsController < ApplicationController
 before_action :find_record, only: [:show]

  def index
  end

  def show
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to @record
    else
      render 'new'
    end
  end


  private

  def find_record
    @record = Record.find(params[:id])
  end

  def record_params
    params.require(:record).permit(:title, :content)

  end
end
