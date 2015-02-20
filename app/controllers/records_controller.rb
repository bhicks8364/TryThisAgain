class RecordsController < ApplicationController
 before_action :find_record, only: [:show]
 before_action :authenticate_user!, except: [:index, :show]

  def index
    @records = Record.all.order("created_at DESC")
  end

  def show
  end

  def new
    @record = current_user.records.build
  end

  def create
    @record = current_user.records.build(record_params)
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
