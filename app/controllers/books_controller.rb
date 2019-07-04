class BooksController < ApplicationController
  def index
    books = Book.all
    render json: books, except: [:created_at, :updated_at]
end

def show
    book = Book.find_by(id: params[:id])
    render json: book, except: [:created_at, :updated_at]
end

def create
  book = Book.create(book_params)
  render json: book
end

def update
  book = Book.find_by(id: params[:id])
  book.update(book_params)
  render json: book
end

def destroy
  book = Book.find_by(id: params[:id])
  book.destroy
  render json: {message: "Book Successfully Deleted"}
end

def book_params
  params.require(:book).permit(:title, :author, :isbn, :price, :image_small, :publisher, :description, :snippet, :genre, :published_date, :page_count)
end
end
