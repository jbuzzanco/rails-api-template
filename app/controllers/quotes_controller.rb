class QuotesController < OpenReadController
  before_action :set_quote, only: [:update, :destroy]

  # GET /quotes
  # GET /quotes.json
  def index
    @quotes = Quote.all

    render json: @quotes
  end

  # GET /quotes/1
  # GET /quotes/1.json
  def show
    render json: Quote.find(params[:id])
  end

  # POST /quotes
  # POST /quotes.json
  def create
    # creates a quote with 'current_user (the validated user)'s "id" as the
    # quotes "user_id" field.
    @quote = current_user.quotes.build(quote_params)

    if @quote.save
      render json: @quote, status: :created
    else
      render json: @quote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quotes/1
  # PATCH/PUT /quotes/1.json
  def update
    if @quote.update(quote_params)
      head :no_content
    else
      render json: @quote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote.destroy

    head :no_content
  end

  def set_quote
    @quote = current_user.quotes.find(params[:id])
  end

  def quote_params
    params.require(:quote).permit(:quoteText,:authors)
  end

  private :set_quote, :quote_params
end
