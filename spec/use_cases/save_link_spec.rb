require 'spec_helper'

describe Ganesha::UseCases::SaveLink do

  describe '#save' do
    subject(:save) { described_class.new({ url: url, title: title }).save }

    let(:url)        { 'https://github.com/bezelga/ganesha' }
    let(:title)      { 'Ganesha' }
    let(:links_repo) { Repository.for(:links) }

    context 'when all params are valid' do
      it 'saves the link' do
        expect { save }.to change { links_repo.count }.by(1)
      end

      # TODO: test using timecop or doleroean
      its(:created_at) { should_not be_nil }
    end

    context 'when the url is blank' do
      let(:url) { '' }

      it 'does not save the link' do
        expect { save }.to_not change { links_repo.count }
      end

      it { should be_false }
    end

    context 'when the title is blank' do
      let(:title) { '' }

      it 'does not save the link' do
        expect { save }.to_not change { links_repo.count }
      end

      it { should be_false }
    end

    context 'when url is nil' do
      let(:url) { nil }

      it 'does not save the link' do
        expect { save }.to_not change { links_repo.count }
      end

      it { should be_false }
    end
  end
end
