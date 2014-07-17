require 'rails_helper'

RSpec.describe Document, :type => :model do
  it "generates random IDs when creating" do
  	document = Document.create!(name: 'New Doc')

  	expect([document[:edit_id], document[:view_id], document[:template_id]]).to all satisfy { |value| value.length == 30 }
  end
end