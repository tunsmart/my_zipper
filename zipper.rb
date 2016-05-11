# Usage:
#   directoryToZip = "/tmp/input"
#   outputFile = "/tmp/out.zip"
#   zf = ZipFileGenerator.new(directoryToZip, outputFile)
#   zf.write()


require_relative 'zipper_control'

def help
  puts "You must pass two arguments to the zipper program through this command line:"
  puts "the file path of the directory you want to zip and the path you want your zip file to be created into respectively. \n"
  puts "==================================================================================="
  puts "Example:- $ruby zipper.rb /home/your-file/input /home/your-file/output.zip "
end

if ARGV.empty?
  help
else
directoryToZip = ARGV[0]
outputFile = ARGV[1]
zf = ZipFileGenerator.new(directoryToZip, outputFile)
zf.write
end
