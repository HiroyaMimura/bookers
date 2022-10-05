class BooksController < ApplicationController
    def index
        @new = Book.new
        @book = Book.all
    end

    def show
        @book = Book.find(params[:id])
    end

    def edit
        @book = Book.find(params[:id])
    end

    def create
        @new = Book.new(list_params)
     if @new.save
        flash[:notice] = "Book was successfully created."
        redirect_to book_path(@new.id)
     else
        @book = Book.all
        render:index
     end
    end

    def update
        @book = Book.find(params[:id])
    if  @book.update(list_params)
        flash[:notice] = "Book was successfully updated."
        redirect_to book_path(@book.id)
    else
        render:edit
    end
    end

    def destroy
        book = Book.find(params[:id])
        book.destroy
        flash[:notice] = "Book was successfully destroyed."
        redirect_to '/books'
    end

  private

    def list_params
    params.require(:book).permit(:title, :body)
    end
end
