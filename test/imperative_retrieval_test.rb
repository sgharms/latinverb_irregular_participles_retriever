class ImperativeRetrievalTest < Minitest::Test
  TO_BE = "sum esse fuī futūrus"

  def test_lookup
    r = Linguistics::Latin::Verb::LatinVerb::IrregularParticiplesRetriever.new(TO_BE).retrieve
    assert_equal "ens, entis", r.present_active_participle
  end
end
