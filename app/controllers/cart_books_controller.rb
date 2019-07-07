class CartBookBooksController < ApplicationController
  def index
    cartBook = CartBook.all
    render json: cartBook, except: [:created_at, :updated_at]
  end

  def show
      cartBooks = CartBook.find_by(id: params[:id])
      render json: cartBooks, except: [:created_at, :updated_at]
  end

  def create
    cartBook = CartBook.create(cartBook_params)
    render json: cartBook
  end

  def update
    cartBook = CartBook.find_by(id: params[:id])
    cartBook.update(cartBook_params)
    render json: cartBook
  end

  def destroy
    cartBook = CartBook.find_by(id: params[:id])
    cartBook.destroy
    render json: {message: "CartBook Successfully Deleted"}
  end

  def cartBook_params
    params.require(:cartBook).permit(:cart_id, :book_id)
  end
end
