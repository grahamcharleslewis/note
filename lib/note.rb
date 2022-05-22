# frozen_string_literal: true

require_relative "note/version"
require "thor"

module Note
  class Error < StandardError; end

  class Note < Thor
    desc "add NOTE", "create a new note"
    def add
      "Add"
    end

    desc "update NOTE", "update a note"
    def update
      puts "Update"
    end

    desc "read NOTE", "read a note"
    def read
      puts "Read"
    end

    desc "delete NOTE", "delete a note"
    def delete
      puts "Delete"
    end
  end

  Note.start(ARGV)
end
