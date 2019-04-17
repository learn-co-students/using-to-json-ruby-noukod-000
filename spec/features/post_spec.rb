require 'rails_helper'

describe 'post_path' do
  before do
    @author = Author.create(name: 'Cormac McCarthy')
    @post = Post.create(title: 'My Post', description: 'My post desc', author: @author)
  end

  it 'responds correctly' do
    visit post_path(@post)
    expect(page.status_code).to eq(200), 'post_path is not responding correctly'
  end
end
