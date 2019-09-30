control "http_test" do
    describe http('http://a8eb11f12e37b11e9b652029b1029002-1186938777.us-east-1.elb.amazonaws.com', method: 'GET', open_timeout: 60, read_timeout: 60) do
        its('status') { should eq 200 }
        its('body') { should match (/helloworld/) }
    end
end