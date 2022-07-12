# frozen_string_literal: true

require 'test_helper'

class TaskControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get task_index_url
    assert_response :success
  end
end
