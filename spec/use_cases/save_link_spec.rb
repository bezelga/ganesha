require 'spec_helper'

describe Ganesha::UseCases::SaveLink do
  describe '#save' do
    subject(:save) { described_class.new({ url: url, title: title }).save }
    let(:url) { 'https://github.com/bezelga/ganesha' }
    let(:title) { 'Ganesha' }

    let(:links_repo) { Repository.for(:links) }

    it 'saves the link' do
      expect { save }.to change { links_repo.count }.by(1)
    end
  end
end
