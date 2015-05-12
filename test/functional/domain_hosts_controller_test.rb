require 'test_helper'

class DomainHostsControllerTest < ActionController::TestCase
  setup do
    @domain_host = domain_hosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:domain_hosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create domain_host" do
    assert_difference('DomainHost.count') do
      post :create, domain_host: { created_by: @domain_host.created_by, domain_name: @domain_host.domain_name, host_name: @domain_host.host_name, partner_info_id: @domain_host.partner_info_id, status: @domain_host.status, updated_by: @domain_host.updated_by }
    end

    assert_redirected_to domain_host_path(assigns(:domain_host))
  end

  test "should show domain_host" do
    get :show, id: @domain_host
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @domain_host
    assert_response :success
  end

  test "should update domain_host" do
    put :update, id: @domain_host, domain_host: { created_by: @domain_host.created_by, domain_name: @domain_host.domain_name, host_name: @domain_host.host_name, partner_info_id: @domain_host.partner_info_id, status: @domain_host.status, updated_by: @domain_host.updated_by }
    assert_redirected_to domain_host_path(assigns(:domain_host))
  end

  test "should destroy domain_host" do
    assert_difference('DomainHost.count', -1) do
      delete :destroy, id: @domain_host
    end

    assert_redirected_to domain_hosts_path
  end
end
