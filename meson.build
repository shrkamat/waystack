project('ms', 'c', 'cpp',
  version : '0.1',
  default_options : ['warning_level=3'])

subproject('zlib')
subproject('libxml2')
subproject('expat')
subproject('libffi')
subproject('wayland')
subproject('wayland-protocols')

exe = executable('ms', 'ms.c',
  install : true)

test('basic', exe)
