require_relative "../graph/cli"

desc "Generate a graph of your state machine"
task :aasm_graph do
  if defined?(Rails)
    Rake::Task["environment"].invoke
  else
    paths = ENV["INCLUDE"].to_s
    paths.split(':').each do |path|
      $:.unshift(path)
    end

    requires = ENV["REQUIRE"].to_s
    requires.split(",").each do |file|
      require file
    end
  end

  options = {}

  options[:class_names] = ENV["CLASS"].split(",")

  AASM::Graph::CLI.new(options).run
end
