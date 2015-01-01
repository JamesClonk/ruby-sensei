# hashes
puts "\n***********************************\nhashes"
xs = {}
puts xs.class

xs = {'Name' => 'Ruby', :Type => 'Programming Language'}
puts xs, xs['Name'], xs[:Type]
puts xs.key('Ruby')

xs['Version'] = '2.1.5'
puts xs, xs.keys.to_s, xs.values.to_s, xs.length
puts xs.to_a.to_s
puts xs.clear

