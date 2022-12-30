class TransactionsController < ApplicationController

    def create
     transaction = Transaction.create(transaction_params)
     render json: transaction, status: :created
    end
    def index
    transactions = Transaction.all
    render json: transactions, status: :created
    end
    def show
     transaction =  Transaction.find(params[:id])
     render json: transaction, status: :ok
    end
    def destroy
    transaction = Transaction.find(params[:id])
    transaction.destroy
    render json: transaction
    end

    private
    def transaction_params
     params.permit(:type,:amount,:date,:user_id)
    end
end
