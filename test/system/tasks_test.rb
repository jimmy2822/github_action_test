# frozen_string_literal: true

require 'application_system_test_case'

class TasksTest < ApplicationSystemTestCase
  setup do
    @task = tasks(:one)
  end

  test 'visiting the index' do
    visit tasks_url
    assert_selector 'h1', text: 'Tasks'
  end

  test 'should create task' do
    visit tasks_url
    click_on 'New task'

    fill_in 'Task build time', with: @task.task_build_time
    fill_in 'Task content', with: @task.task_content
    fill_in 'Task end time', with: @task.task_end_time
    fill_in 'Task', with: @task.task_id
    fill_in 'Task priority', with: @task.task_priority
    fill_in 'Task start time', with: @task.task_start_time
    fill_in 'Task state', with: @task.task_state
    fill_in 'Task tag', with: @task.task_tag
    fill_in 'Task title', with: @task.task_title
    fill_in 'Task user', with: @task.task_user
    click_on 'Create Task'

    assert_text 'Task was successfully created'
    click_on 'Back'
  end

  test 'should update Task' do
    visit task_url(@task)
    click_on 'Edit this task', match: :first

    fill_in 'Task build time', with: @task.task_build_time
    fill_in 'Task content', with: @task.task_content
    fill_in 'Task end time', with: @task.task_end_time
    fill_in 'Task', with: @task.task_id
    fill_in 'Task priority', with: @task.task_priority
    fill_in 'Task start time', with: @task.task_start_time
    fill_in 'Task state', with: @task.task_state
    fill_in 'Task tag', with: @task.task_tag
    fill_in 'Task title', with: @task.task_title
    fill_in 'Task user', with: @task.task_user
    click_on 'Update Task'

    assert_text 'Task was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Task' do
    visit task_url(@task)
    click_on 'Destroy this task', match: :first

    assert_text 'Task was successfully destroyed'
  end
end
