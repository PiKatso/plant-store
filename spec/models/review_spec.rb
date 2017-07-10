require 'rails_helper'

describe Review do
  it { should validate_presence_of :content }
  it { should validate_presence_of :location }

  it { should belong_to :product }

end
