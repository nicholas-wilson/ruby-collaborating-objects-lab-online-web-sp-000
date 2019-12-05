class MP3Importer
  attr_accessor :path, :files
  def initialize(file_path)
    @path = file_path
  end

  def files
    @files = Dir["#{@path}**/*.mp3"]
    files_to_be = []
    @files.each do |file|
      files_to_be << File.basename(file, ".mp3")
    end
    @files = files_to_be
  end

  def import
    self.files

  end
end
