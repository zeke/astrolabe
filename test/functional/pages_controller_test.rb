require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  test "should create page" do
    Page.any_instance.expects(:save).returns(true)
    post :create, :page => { }
    assert_response :redirect
  end

  test "should handle failure to create page" do
    Page.any_instance.expects(:save).returns(false)
    post :create, :page => { }
    assert_template "new"
  end

  test "should destroy page" do
    Page.any_instance.expects(:destroy).returns(true)
    delete :destroy, :id => pages(:one).to_param
    assert_not_nil flash[:notice]    
    assert_response :redirect
  end

  test "should handle failure to destroy page" do
    Page.any_instance.expects(:destroy).returns(false)    
    delete :destroy, :id => pages(:one).to_param
    assert_not_nil flash[:error]
    assert_response :redirect
  end

  test "should get edit for page" do
    get :edit, :id => pages(:one).to_param
    assert_response :success
  end

  test "should get index for pages" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pages)
  end

  test "should get new for page" do
    get :new
    assert_response :success
  end

  test "should get show for page" do
    get :show, :id => pages(:one).to_param
    assert_response :success
  end

  test "should update page" do
    Page.any_instance.expects(:save).returns(true)
    put :update, :id => pages(:one).to_param, :page => { }
    assert_response :redirect
  end

  test "should handle failure to update page" do
    Page.any_instance.expects(:save).returns(false)
    put :update, :id => pages(:one).to_param, :page => { }
    assert_template "edit"
  end

end