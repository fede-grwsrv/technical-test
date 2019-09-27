control "bucket_check" do
  describe command('aws s3api list-buckets --query \'Buckets[].Name\' --output text') do
    its('stdout') { should match (/technical-test-fedeagu/) } 
  end
end

control "file_check" do
  describe command('aws s3api list-objects --bucket technical-test-fedeagu --query Contents[].Key --output text') do
    its('stdout') { should match (/test1.txt/) } 
    its('stdout') { should match (/test2.txt/) } 
  end
end
