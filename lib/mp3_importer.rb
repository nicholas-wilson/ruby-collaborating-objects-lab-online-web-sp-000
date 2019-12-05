class MP3Importer
  attr_accessor :path, :files
  def initialize(file_path)
    @path = file_path
  end

  def files
    @files = Dir["#{@path}**/*.mp3"]
  end

  def import

  end
end
