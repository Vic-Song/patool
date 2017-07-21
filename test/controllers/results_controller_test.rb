require 'test_helper'

class ResultsControllerTest < ActionController::TestCase
  setup do
    @result = results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create result" do
    assert_difference('Result.count') do
      post :create, result: { eight: @result.eight, eighteen: @result.eighteen, eleven: @result.eleven, fifteen: @result.fifteen, fifty: @result.fifty, five: @result.five, four: @result.four, fourteen: @result.fourteen, fourty: @result.fourty, fourtyeight: @result.fourtyeight, fourtyfive: @result.fourtyfive, fourtyfour: @result.fourtyfour, fourtynine: @result.fourtynine, fourtyone: @result.fourtyone, fourtyseven: @result.fourtyseven, fourtysix: @result.fourtysix, fourtythree: @result.fourtythree, fourtytwo: @result.fourtytwo, night: @result.night, nighteen: @result.nighteen, one: @result.one, paper_id: @result.paper_id, seven: @result.seven, seventeen: @result.seventeen, six: @result.six, sixteen: @result.sixteen, ten: @result.ten, thirteen: @result.thirteen, thirty: @result.thirty, thirtyeight: @result.thirtyeight, thirtyfive: @result.thirtyfive, thirtyfour: @result.thirtyfour, thirtynine: @result.thirtynine, thirtyone: @result.thirtyone, thirtyseven: @result.thirtyseven, thirtysix: @result.thirtysix, thirtythree: @result.thirtythree, thirtytwo: @result.thirtytwo, three: @result.three, twelve: @result.twelve, twenty: @result.twenty, twentyeight: @result.twentyeight, twentyfive: @result.twentyfive, twentyfour: @result.twentyfour, twentynine: @result.twentynine, twentyone: @result.twentyone, twentyseven: @result.twentyseven, twentysix: @result.twentysix, twentythree: @result.twentythree, twentytwo: @result.twentytwo, two: @result.two }
    end

    assert_redirected_to result_path(assigns(:result))
  end

  test "should show result" do
    get :show, id: @result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @result
    assert_response :success
  end

  test "should update result" do
    patch :update, id: @result, result: { eight: @result.eight, eighteen: @result.eighteen, eleven: @result.eleven, fifteen: @result.fifteen, fifty: @result.fifty, five: @result.five, four: @result.four, fourteen: @result.fourteen, fourty: @result.fourty, fourtyeight: @result.fourtyeight, fourtyfive: @result.fourtyfive, fourtyfour: @result.fourtyfour, fourtynine: @result.fourtynine, fourtyone: @result.fourtyone, fourtyseven: @result.fourtyseven, fourtysix: @result.fourtysix, fourtythree: @result.fourtythree, fourtytwo: @result.fourtytwo, night: @result.night, nighteen: @result.nighteen, one: @result.one, paper_id: @result.paper_id, seven: @result.seven, seventeen: @result.seventeen, six: @result.six, sixteen: @result.sixteen, ten: @result.ten, thirteen: @result.thirteen, thirty: @result.thirty, thirtyeight: @result.thirtyeight, thirtyfive: @result.thirtyfive, thirtyfour: @result.thirtyfour, thirtynine: @result.thirtynine, thirtyone: @result.thirtyone, thirtyseven: @result.thirtyseven, thirtysix: @result.thirtysix, thirtythree: @result.thirtythree, thirtytwo: @result.thirtytwo, three: @result.three, twelve: @result.twelve, twenty: @result.twenty, twentyeight: @result.twentyeight, twentyfive: @result.twentyfive, twentyfour: @result.twentyfour, twentynine: @result.twentynine, twentyone: @result.twentyone, twentyseven: @result.twentyseven, twentysix: @result.twentysix, twentythree: @result.twentythree, twentytwo: @result.twentytwo, two: @result.two }
    assert_redirected_to result_path(assigns(:result))
  end

  test "should destroy result" do
    assert_difference('Result.count', -1) do
      delete :destroy, id: @result
    end

    assert_redirected_to results_path
  end
end
