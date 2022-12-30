class AccountsController < ApplicationController
    def index
    accounts = Account.all
    render json: accounts, status: :created
    end
    def show
    account = Account.find(params[:id])
    render json: account, status: :created
    end

    def update
    account = Account.find(params[:id])
    account.update(account_params)
    render json: account, status: :ok
    end

    private

    def account_params
    params.permit(:balance,:user_id)
    end
end
