module AASM
  module Graph
    class CLI

      def initialize(options)
        @class_names = options[:class_names]
      end

      def run
        @class_names.each do |name|
          # This needs to handle namespace class names
          klass = Object.const_get(name)
          edges = ""
          if initial = klass.aasm.initial_state
            edges << "initial [shape=point];\n"
            edges << "initial -> #{initial};\n"
          end
          klass.aasm.events.each do |event|
            event.transitions.each do |transition|
              edges << "#{transition.from} -> #{transition.to} [ label = \"#{event.name}\" ];\n"
            end
          end
          puts dot_notation(edges)
          `echo  "#{dot_notation(edges)}" | dot -Tjpg -o #{name.downcase}.jpg` unless edges.empty?
        end
      end

      def dot_notation(edges)
        string = <<-DOT
digraph cronjob {
  rankdir=LR; /* This should be configurable */
  node [shape = circle];
  #{edges}
}
        DOT
      end
    end
  end
end