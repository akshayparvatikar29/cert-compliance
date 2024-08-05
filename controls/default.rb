control 'cert-check' do
  impact 1.0
  title 'Check Certificate'
  desc 'Check for the version'
  describe x509_certificate(filepath: '/home/ec2-user/git-repo/compliance/profiles/cert/controls/certificate.crt') do
    its('validity_in_days') { should be > 30 }
  end
end