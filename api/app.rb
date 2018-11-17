require 'grape'
require 'grape-swagger'

# INFO: Checkout <https://github.com/switzersc/grape-api-tutorial>
# INFO: Checkout <https://github.com/ruby-grape/grape-on-rack/tree/master/app>
# INFO: Checkout <https://github.com/ruby-grape/grape#writing-tests-with-rack>

module MyApp
  class Hello < Grape::API
    resource :hello do
      # This block only affects Swagger documentation.
      desc 'Says Hello.' 

      get do
        { text: 'Hello' }
      end
    end
  end

  class API < Grape::API
    version 'v0'
    format :json
    prefix :api

    mount MyApp::Hello

    add_swagger_documentation
  end
end
