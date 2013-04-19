module Mutant
  class CLI
    class Classifier

      # Namespace classifier
      class Namespace < self

        REGEXP = %r(\A(#{SCOPE_PATTERN})\*\z).freeze

      private

        # Return matcher
        #
        # @return [Matcher]
        #
        # @api private
        #
        def matcher
          Matcher::Namespace.new(namespace)
        end

        # Return namespace
        #
        # @return [Class, Module]
        #
        # @api private
        #
        def namespace
          Classifier.constant_lookup(match[1].to_s)
        end
      end
    end
  end
end
