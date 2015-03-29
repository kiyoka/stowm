#!/bin/bash

wget http://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.1.tar.gz -O ruby-2.2.1.tar.gz
tar zxf ruby-2.2.1.tar.gz
tar zxf ~/stowm/ruby-2.2.1/ruby-2.2.1-patch.tar.gz
tar zcf ruby-2.2.1.tar.gz ruby-2.2.1
