class RunsController < ApplicationController
  def index
      @runs = Run.all
  end

  def show
      @run = Run.find(params[:id])
  end

  def new
    @run = Run.new
  end

  def create
    @run = Run.new(run_params)

    if @run.save
      flash[:success] = 'ランニング記録が正常に投稿されました'
      redirect_to @run
    else
      flash.now[:danger] = 'ランニング記録ssが投稿されませんでした'
      render :new
    end
  end

  def edit
    @run = Run.find(params[:id])
  end

  def update
    @run = Run.find(params[:id])

    if @run.update(run_params)
      flash[:success] = 'ランニング記録は正常に更新されました'
      redirect_to @run
    else
      flash.now[:danger] = 'ランニング記録は更新されませんでした'
      render :edit
    end
  end

  def destroy
    @run = Run.find(params[:id])
    @run.destroy

    flash[:success] = 'ランニング記録は正常に削除されました'
    redirect_to runs_url
  end
    
end

  private

  # Strong Parameter
  def run_params
    params.require(:run).permit(:date, :name, :distance)
  end
  
  