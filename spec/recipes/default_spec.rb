require 'spec_helper'

describe 'pg_partman::default' do

  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'runs resource bash to install pg_partman' do
    expect(chef_run).to run_bash('install')
  end
end
