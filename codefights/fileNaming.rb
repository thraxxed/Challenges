# You are given an array of desired filenames in the order of their 
# creation. Since two files cannot have equal names, the one which comes
# later will have an addition to its name in a form of (k), where k is
# the smallest positive integer such that the obtained name is not used
# yet.
#
# Return an array of names that will be given to the files.

def fileNaming(names)
    seen = {}
    result = []
    names.each do |name|
       if !seen[name]
          result << name
          seen[name] = 1
       else
          newname = name + "(#{seen[name]})"
          until !seen[newname]
             newname[-2] = (newname[-2].to_i + 1).to_s
          end
          result << newname
          seen[name] += 1
          if seen[newname]
             seen[newname] += 1
          else
             seen[newname] = 1
          end
       end
    end
   result
end
