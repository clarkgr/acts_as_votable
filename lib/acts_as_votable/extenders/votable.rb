module ActsAsVotable
  module Extenders

    module Votable

      def votable?
        false
      end

      def acts_as_votable(votable_options = {})
        require 'acts_as_votable/votable'
        include ActsAsVotable::Votable

        class_eval do
          def self.votable_options
            votable_options.with_indifferent_access
          end
          
          def self.votable?
            true
          end
        end

      end

    end

  end
end
