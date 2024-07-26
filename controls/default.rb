control 'CHECK github.com' do
  impact 0.7
  title 'Test control'
  describe ssl_certificate(host: 'github.com', port: 443) do
    it { should exist }
    its('expiration_days') { should be >= 30 }
  end
end
