require 'chefspec'

describe 'nginx::default' do
 let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

 it 'installs nginx' do
       expect(chef_run) .  to install_package('nginx')
 end

 it 'creates a file' do
       expect(chef_run).to render_file('/etc/yum.repos.d/nginx.repo')
 end
 it 'creates a file' do
       expect(chef_run).to render_file('/usr/share/nginx/html/index.html')
 end
end


