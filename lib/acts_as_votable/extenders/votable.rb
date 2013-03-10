module ActsAsVotable
  module Extenders

    module Votable

      def votable?
        false
      end

      def acts_as_votable(opts = {})
        require 'acts_as_votable/votable'
        include ActsAsVotable::Votable

        class_eval do
          def votable_options
            opts.with_indifferent_access
          end
          
          def self.votable?
            true
          end
        end

      end

    end

  end
end
