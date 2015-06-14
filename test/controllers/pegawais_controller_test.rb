require 'test_helper'

class PegawaisControllerTest < ActionController::TestCase
  setup do
    @pegawai = pegawais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pegawais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pegawai" do
    assert_difference('Pegawai.count') do
      post :create, pegawai: { alamat: @pegawai.alamat, nama: @pegawai.nama }
    end

    assert_redirected_to pegawai_path(assigns(:pegawai))
  end

  test "should show pegawai" do
    get :show, id: @pegawai
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pegawai
    assert_response :success
  end

  test "should update pegawai" do
    patch :update, id: @pegawai, pegawai: { alamat: @pegawai.alamat, nama: @pegawai.nama }
    assert_redirected_to pegawai_path(assigns(:pegawai))
  end

  test "should destroy pegawai" do
    assert_difference('Pegawai.count', -1) do
      delete :destroy, id: @pegawai
    end

    assert_redirected_to pegawais_path
  end
end
