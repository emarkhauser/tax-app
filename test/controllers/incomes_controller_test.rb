require 'test_helper'

class IncomesControllerTest < ActionController::TestCase
  setup do
    @income = incomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create income" do
    assert_difference('Income.count') do
      post :create, income: { cashSales: @income.cashSales, client_id: @income.client_id, date: @income.date, hst: @income.hst, income_type: @income.income_type, paymentOnAccount: @income.paymentOnAccount, salesReturns: @income.salesReturns, totalSales: @income.totalSales }
    end

    assert_redirected_to income_path(assigns(:income))
  end

  test "should show income" do
    get :show, id: @income
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @income
    assert_response :success
  end

  test "should update income" do
    patch :update, id: @income, income: { cashSales: @income.cashSales, client_id: @income.client_id, date: @income.date, hst: @income.hst, income_type: @income.income_type, paymentOnAccount: @income.paymentOnAccount, salesReturns: @income.salesReturns, totalSales: @income.totalSales }
    assert_redirected_to income_path(assigns(:income))
  end

  test "should destroy income" do
    assert_difference('Income.count', -1) do
      delete :destroy, id: @income
    end

    assert_redirected_to incomes_path
  end
end
