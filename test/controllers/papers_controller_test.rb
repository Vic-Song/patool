require 'test_helper'

class PapersControllerTest < ActionController::TestCase
  setup do
    @paper = papers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:papers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paper" do
    assert_difference('Paper.count') do
      post :create, paper: { authorName1: @paper.authorName1, authorName2: @paper.authorName2, authorName3: @paper.authorName3, authorName4: @paper.authorName4, authorName5: @paper.authorName5, comAddr: @paper.comAddr, comAuthor: @paper.comAuthor, journal: @paper.journal, survey_id: @paper.survey_id, title: @paper.title, year: @paper.year }
    end

    assert_redirected_to paper_path(assigns(:paper))
  end

  test "should show paper" do
    get :show, id: @paper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paper
    assert_response :success
  end

  test "should update paper" do
    patch :update, id: @paper, paper: { authorName1: @paper.authorName1, authorName2: @paper.authorName2, authorName3: @paper.authorName3, authorName4: @paper.authorName4, authorName5: @paper.authorName5, comAddr: @paper.comAddr, comAuthor: @paper.comAuthor, journal: @paper.journal, survey_id: @paper.survey_id, title: @paper.title, year: @paper.year }
    assert_redirected_to paper_path(assigns(:paper))
  end

  test "should destroy paper" do
    assert_difference('Paper.count', -1) do
      delete :destroy, id: @paper
    end

    assert_redirected_to papers_path
  end
end
