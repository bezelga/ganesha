require 'spec_helper'
require 'timecop'

describe Ganesha::UseCases::CurrentLinks do

  describe '#links' do
    subject(:links) { described_class.new.links }
    let(:links_repo) { Repository.for(:links) }

    let(:today) { Date.new(2013, 2, 14) }

    before do
      Timecop.freeze(today)
    end

    after do
      Timecop.return
    end

    let!(:link1) { Ganesha.save_link({ url: 'www.something.com', title: 'Something', created_at: Date.new(2013, 2, 1) }) }
    let!(:link2) { Ganesha.save_link({ url: 'www.something.com', title: 'Something', created_at: Date.new(2013, 2, 13) }) }

    xit 'returns the current week links' do
      should == [link2]
    end
  end
end
