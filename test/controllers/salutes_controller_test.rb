require "test_helper"

class SalutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @salute = salutes(:one)
  end

  test "should get index" do
    get salutes_url, as: :json
    assert_response :success
  end

  test "should create salute" do
    assert_difference("Salute.count") do
      post salutes_url, params: { salute: { message: @salute.message } }, as: :json
    end

    assert_response :created
  end

  test "should show salute" do
    get salute_url(@salute), as: :json
    assert_response :success
  end

  test "should update salute" do
    patch salute_url(@salute), params: { salute: { message: @salute.message } }, as: :json
    assert_response :success
  end

  test "should destroy salute" do
    assert_difference("Salute.count", -1) do
      delete salute_url(@salute), as: :json
    end

    assert_response :no_content
  end
end
