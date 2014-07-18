require "latinverb_irregular_participles_retriever/version"
require "latinverb_irregular_participles_retriever/supine_inferrer"
require "latinverb_irregular_verb_definition_consumer"

module Linguistics
  module Latin
    module Verb
      class LatinVerb
        class IrregularParticiplesRetriever < IrregularVerbDefinitionConsumer
          def retrieve
            participles_data = structure['participles']['data']
            supine_data = SupineInferrer.new(participles_data["perfect_passive_participle"]).supine
            OpenStruct.new(participles_data.merge({:supine => supine_data}))
          end
        end
      end
    end
  end
end
