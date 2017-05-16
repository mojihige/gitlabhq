require 'rails_helper'

describe Gitlab::DependencyLinker, lib: true do
  describe '.link' do
    it 'links using GemfileLinker' do
      blob_name = 'Gemfile'

      expect(described_class::GemfileLinker).to receive(:link)

      described_class.link(blob_name, nil, nil)
    end

    it 'links using GemspecLinker' do
      blob_name = 'gitlab_git.gemspec'

      expect(described_class::GemspecLinker).to receive(:link)

      described_class.link(blob_name, nil, nil)
    end
  end
end
