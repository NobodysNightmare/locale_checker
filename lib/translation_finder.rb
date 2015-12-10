require 'yaml'

class TranslationFinder
  attr_reader :languages_by_key

  def initialize(base_path)
    @languages_by_key = {}
    Dir["#{base_path}/**/*.yml"].each do |file|
      print "."
      file_hash = YAML.load(File.read(file))
      file_hash.keys.each do |language|
        language_hash = file_hash[language]
        build_translation_keys(language_hash).each do |key|
          @languages_by_key[key] ||= []
          @languages_by_key[key] << language
        end
      end
    end
  end

  private

  def build_translation_keys(hash)
    result = hash.keys.map do |key|
      value = hash[key]
      if value.is_a? Hash
        build_translation_keys(value).map { |subkey| "#{key}.#{subkey}" }
      else
        key
      end
    end

    result.flatten
  end
end
