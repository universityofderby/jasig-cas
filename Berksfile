source 'https://api.berkshelf.com'

def derby_cookbook(name, version = '>= 0.0.0', options = {})
  cookbook(name, version, {
    git: "git@git.derby.ac.uk:cookbooks/#{name}.git"
  }.merge(options))
end

#derby_cookbook 'role_ai'
#derby_cookbook 'role_bs'
#derby_cookbook 'role_srs'

metadata
