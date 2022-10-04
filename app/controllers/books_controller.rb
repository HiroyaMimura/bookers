class BooksController < ApplicationController
    def index
        @book = Book.new
        @book = Book.all
    end
    
    def show
    end
    
    def edit
    end
    
    def create
        book = Book.new(list_params)
        book.save
        redirect_to '/show'
    end
    
    def destroy
    end 

  private

    def list_params
    params.require(:book).permit(:title, :body)
    end
end
