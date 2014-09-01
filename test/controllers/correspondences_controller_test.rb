require 'test_helper'

class CorrespondencesControllerTest < ActionController::TestCase
  setup do
    @correspondence = correspondences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:correspondences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create correspondence" do
    assert_difference('Correspondence.count') do
      post :create, correspondence: { correspondent_id: @correspondence.correspondent_id, details: @correspondence.details, file_id: @correspondence.file_id, folio_date: @correspondence.folio_date, folio_id: @correspondence.folio_id, linkfrom: @correspondence.linkfrom, linkto: @correspondence.linkto, meeting_id: @correspondence.meeting_id, note_count: @correspondence.note_count, officer_id: @correspondence.officer_id, reference: @correspondence.reference, review_date: @correspondence.review_date, summary: @correspondence.summary, type_id: @correspondence.type_id }
    end

    assert_redirected_to correspondence_path(assigns(:correspondence))
  end

  test "should show correspondence" do
    get :show, id: @correspondence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @correspondence
    assert_response :success
  end

  test "should update correspondence" do
    patch :update, id: @correspondence, correspondence: { correspondent_id: @correspondence.correspondent_id, details: @correspondence.details, file_id: @correspondence.file_id, folio_date: @correspondence.folio_date, folio_id: @correspondence.folio_id, linkfrom: @correspondence.linkfrom, linkto: @correspondence.linkto, meeting_id: @correspondence.meeting_id, note_count: @correspondence.note_count, officer_id: @correspondence.officer_id, reference: @correspondence.reference, review_date: @correspondence.review_date, summary: @correspondence.summary, type_id: @correspondence.type_id }
    assert_redirected_to correspondence_path(assigns(:correspondence))
  end

  test "should destroy correspondence" do
    assert_difference('Correspondence.count', -1) do
      delete :destroy, id: @correspondence
    end

    assert_redirected_to correspondences_path
  end
end
