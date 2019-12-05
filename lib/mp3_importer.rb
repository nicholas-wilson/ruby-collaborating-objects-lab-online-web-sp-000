class MP3Importer
  attr_accessor :path, :files
  def initialize(file_path)
    @path = file_path
  end

  def files
    @files = Dir["#{@path}**/*.mp3"]
    @files.each do |file|
      puts (File.basename(file))
      @files << File.basename(file)
    end
  end

  def import
    self.files

  end
end
