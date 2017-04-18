class testing {

  File {
    owner  => root,
    group  => root,
    mode   => 0444
  }

  file {
    '/tmp/test_template':
      content => template('testing/test_template.erb');
  }

  file {
    '/tmp/apt_example.txt':
      content => template('testing/apt_example.erb')
  }
}
