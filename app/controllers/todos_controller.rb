class TodosController < ApplicationController 
before_action :set_params, only: [:show, :edit, :update, :destroy]
    def index
        @todos = Todo.all

    end

    def new
        @todo = Todo.new
    end

    def create
        @todo = Todo.new(todo_params)
        if @todo.save
            redirect_to root_path
        end
    end 

    def show
    end

    def edit
    end

    def update
        @todo.update(todo_params)
        if @todo.save
        redirect_to root_path
        end
    end 

    def destroy
        @todo.destroy
        redirect_to root_path
    end

    def complete
    end 

    private

    def todo_params
        params.require(:todo).permit(:complete, :description)
    end

    def set_params
        @todo = Todo.find(params[:id])
    end

end
