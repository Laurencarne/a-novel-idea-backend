class ApplicationController < ActionController::API

    def current_user
        id = decode_token['id']
        User.find_by(id: id)
      end
      #-----get token----------------------------------------------------------------------------------------

      # the user is sending the tokens via the headers and we can access the token via: request.headers['Authorisation'] 

      def token
        request.headers['Authorisation']
      end 

      #-----create secret---------------------------------------------------------------------------------------
      #for our secret key 

      def secret
        "shh"
      end 

      #-----encode token-----------------------------------------------------------------------------------------
      # this will receive some data and it will encode it using our secret

      def issue_token(data)
        JWT.encode(data,secret)
      end 


      #-----decode token-----------------------------------------------------------------------------------------
      # this will return an array.first will give us the message wanted- this could fail if token is not valid or the secret is wrong
      # to stop it from crashing our computer if it fails we can use the begin and rescue methods-- this method will rescue errors

      def decode_token
        begin
          JWT.decode(token, secret).first
        rescue
          {}
        end
      end

end
