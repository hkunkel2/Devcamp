class PortfoliosController < ApplicationController

    def index
        @portfolio_item = Portfolio.all
    end
    
    def new
        @portfolio_item = Portfolio.new
    end
    
    def create
        @portfolio_item = Portfolio.new(portfolio_params)
        respond_to do |format|
            if @portfolio_item.save
                format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
                format.json { render :show, status: :created, location: @portfolio_item }
            else
                format.html { render :new }
                format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
            end
        end
    end
    
    def edit
        @portfolio_item = Portfolio.find(params[:id])
      end
    
    def update
        @portfolio_item = Portfolio.find(params[:id])
    
        respond_to do |format|
            if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
                format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
            else
                format.html { render :edit }
            end
        end
    end

    def show
        @portfolio_item = Portfolio.find(params[:id])
    end

    def destroy
        # Perform the lookup
        @portfolio_item = Portfolio.find(params[:id])
    
        # Destroy/delete the record
        @portfolio_item.destroy
    
        # Redirect
        respond_to do |format|
          format.html { redirect_to portfolios_url, notice: 'Record was removed.' }
        end
      end
    
    private
    def portfolio_params
        params.require(:portfolio).permit(:title, :subtitle, :body)
    end

end
