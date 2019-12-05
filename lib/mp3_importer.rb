class MP3Importer
  attr_accessor :path, :files
  def initialize(file_path)
    @path = file_path
  end

  def files
    files_with_path = Dir["#{@path}**/*.mp3"]
    files_with_path.each do |file|
      puts file
      @files << File.basename(file)
    end
  end

  def import
    self.files

  end
end
