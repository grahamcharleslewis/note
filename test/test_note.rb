# frozen_string_literal: true

require "test_helper"

class TestNote < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Note::VERSION
  end

  def test_it_adds_a_note
    assert_equal "Add", Note::Note.new.add
  end
end
