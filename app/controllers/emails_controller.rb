class EmailsController < ApplicationController
  
  def index
    @emails = Email.all
  end

  def create
    require 'faker'

    @email = Email.create(
      object: Faker::Games::LeagueOfLegends.masteries,
      body: Faker::Games::LeagueOfLegends.quote
    )
  end

end