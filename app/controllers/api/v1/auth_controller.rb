class Api::V1::AuthController < ApplicationController
  skip_before_action :require_login, only: [:login, :auto_login]

    def login
        @player = Player.find_by(name: params[:name])
        
        if @player && @player.authenticate(params[:password])
          payload = {player_id: @player.id}
          token = encode_token(payload)
          render json: { player: @player, jwt: token}, status: :accepted
        else
          render json: { message: 'Invalid playername or password' }, status: :unauthorized
        end
    end

    def auto_login
      if session_player
        render json: session_player
      else
        render json: {errors: 'No player logged in.'}
      end
    end

    def user_is_authed
      render json: {message: 'You are authorized'}
    end
    
      
end
