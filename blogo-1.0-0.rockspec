package = 'BloGo'
version = '1.0-0'

source = {
  url = 'git://github.com/Perkovec/BloGo.git',
  tag = 'v1.0'
}

description = {
  summary = 'Best tool for generating static blogs',
  homepage = 'https://github.com/Perkovec/BloGo',
  license =   'MIT'
}

dependencies = {
  'lua >= 5.1'
}

build = {
  type = 'builtin',
  modules = {
    ['blogo'] = 'src/blogo.lua'
  },
  install = {
    --[[ 
    lua = {
      ['luapress.config'] = 'luapress/config.lua'
    }, 
    ]]--
    bin = {
      'bin/blogo'
    }
  },
  copy_directories = {
    -- 'plugins'
  }
}