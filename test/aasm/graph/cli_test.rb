require_relative "../../test_helper"

class CLITest < Minitest::Test

  def test_graph_file_is_created
    require 'job'
    Dir.mktmpdir do |dir|
      file = File.join(dir, 'job.jpg')
      AASM::Graph::CLI.new(
        class_names: ['Job'],
        output_path: dir
      ).run
      assert File.exists?(file), "File at #{file} doesn't exist"
    end
  end
end
