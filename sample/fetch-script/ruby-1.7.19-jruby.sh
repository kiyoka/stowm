#!/bin/bash

rm -rf ./jruby-1.7.19 ./ruby-1.7.19-jruby

wget https://s3.amazonaws.com/jruby.org/downloads/1.7.19/jruby-bin-1.7.19.tar.gz -O jruby-1.7.19.tar.gz
tar zxf jruby-1.7.19.tar.gz
mv jruby-1.7.19 ruby-1.7.19-jruby
echo "#!/bin/bash" > ruby-1.7.19-jruby/configure
chmod +x ruby-1.7.19-jruby/configure
tar zcf ruby-1.7.19-jruby.tar.gz ruby-1.7.19-jruby

rm -rf ./jruby-1.7.19 ./ruby-1.7.19-jruby jruby-1.7.19.tar.gz
