require 'fun_emoji/version'
require 'json'
require 'nokogiri'

module FunEmoji
  class Index

    attr_reader :emoji_list

    def initialize(emoji_list = nil)
      emoji_list ||= begin
        emoji_json = File.read(emoji_list_file)
        JSON.parse(emoji_json)
      end

      @emoji_list = emoji_list

      emoji_list.each do |key, value|
        self.class.send(:define_method, "#{key}") do
          emoji_with_span_tag = Nokogiri::HTML::DocumentFragment.parse("<span class=emoji-#{key}> #{value} </span>")
          emoji_with_span_tag.to_html
        end
      end
    end

    private

    def emoji_list_file
      File.dirname(__FILE__) + '/../config/emoji_list.json'
    end
  end
end
