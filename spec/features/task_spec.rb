# frozen_string_literal: true

require 'rails_helper'

FactoryBot.define do
  factory :task do
    user_id { Faker::Number.decimal_part(digits: 2) }
    title { Faker::Job.title }
    content { Faker::String.random }
    tag { Faker::String.random(length: 4) }
    start_time { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default) }
    end_time { Faker::Time.between(from: DateTime.now, to: DateTime.now + 1, format: :default) }
    priority { '高' }
    state { '處理中' }
  end
end

describe 'tasks', type: :feature do
  before do
    create(:task)
  end

  it 'when create task' do
    visit new_task_path

    within(id: 'task_form') do
      fill_in 'task[title]', with: 'newtask'
      fill_in 'task[content]', with: 'iamanewtask'
      fill_in 'task[tag]', with: 'test'
    end

    click_button '新增'
    task = Task.last
    expect(task.title).to eq('newtask')
  end

  context 'when edit' do
    it 'updates title' do
      visit root_path
      click_link '編輯'

      within(id: 'task_form') do
        fill_in 'task[title]', with: 'changetitle'
        fill_in 'task[content]', with: 'new content'
        fill_in 'task[tag]', with: 'newtag'
      end

      click_button '修改'

      task = Task.last
      expect(task.title).to eq('changetitle')
    end
  end

  it 'when delete task' do
    visit root_path

    click_link '刪除'

    task = Task.find_by title: 'apple'
    expect(task).to be_nil
  end
end
