
Display Format
------------

        <name>            <enabled>   <installed>
    Gauche
      1. Gauche-0.8.14               -          O
      2. Gauche-0.9                  O          O
    bash
      3. bash-4.0                    -          O
      4. bash-4.1                    O          O
    mosh
      5. mosh-0.2.0                  -          -
    ruby
      6. ruby-1.8.7-p174             -          O
      7. ruby-1.9.1-p376             -          O
      8. ruby-1.9.2-preview1         O          O
   
    > ss 7
      => stow -D 8(ruby-1.9.2-preview1) && stow -R 7(ruby-1.9.1-p376)
   
Specfile (yaml format)
---------------------------------

    # example of ruby-2.1.3

    fetch:
     - wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.3.tar.gz -O ruby-2.1.3.tar.gz
    
    configure:
     - ./configure/shellscript
    
    make:
     - make
    
    install:
     - make install
    
    arc:
     - ruby-2.1.3.tar.gz
    
    url: 
     - http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.3.tar.gz
    
    projname:
     - ruby-2.1.3

Shell Script
---------------------------
"fetch" and "configure" and "make" and "install" target can specify forign shell script file.

# [./configure/shellscript]

     if [ ! -e ./configure ] ; then
       echo 'Error: stowm supports ./configure script included tar ball only, sorry...'
       exit 1
     fi

     ./configure --prefix=/usr/local/stow/ruby-2.1.3
     echo " " ============================================================
     echo " " [[ ${command} ]]
     echo " " ============================================================
     ${command}
