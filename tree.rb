
def tree(depth=0, path=nil)
  this_dir = `ls -F #{path}`
  this_dir.split.each do |f|
    if f.end_with? "/"
      puts "#{"| "*depth}\e[95m#{f}\e[0m"
      new_path = "#{path}#{f}"
      tree(depth+1, new_path)
    else
      puts "#{"| "*depth}#{f}"
    end
  end
end
tree
