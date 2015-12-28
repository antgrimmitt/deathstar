gulp = require 'gulp'

gulp.task 'copy', ->
  src = ['./src/assets/fonts/**', './src/assets/images/**','./src/assets/audio/**']
  gulp.src(src, { base: './src'})
    .pipe(gulp.dest('./build/'))
