# Class Platform

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

##### Ruby version 2.5.0p0
- To install this version: 
    ```sh
    $ rvm install 2.5.0
    ```
- If you don't have rvm and use Linux System:
- https://rvm.io/rvm/install
- https://github.com/rvm/ubuntu_rvm
    ```sh
    $ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    $ sudo apt-get update
    $ sudo apt-get install rvm
    ```

##### Rails version 5.2.1
- To install this version:
    ```sh
    $ gem install rails 5.2.1
    ```

* System dependencies

* Configuration
    ```sh
    $ git clone https://github.com/CacauAR/classPlatform.git
    $ cd classPlatform
    $ bundle install
    $ rails s -b $IP -p $PORT
    ```

* Database creation
    ```sh
    $ rake db:create db:migrate db:seed
    ```

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
