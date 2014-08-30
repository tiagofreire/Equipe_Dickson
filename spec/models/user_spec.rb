require 'spec_helper'

describe User do

  it "vota em categoria" do
    user = User.new
    ranking = Ranking.new
    ranking.obs = "Teste"
    ranking.ok = true
    expect( user.votar_em_categoria(ranking, 1, 1) ).to eq(true)
  end
end