gulp    = require 'gulp'
sass    = require 'gulp-sass'
reload  = require('browser-sync').reload
gutil   = require 'gulp-util'
plumber = require 'gulp-plumber'
notify  = require 'gulp-notify'


neat    = require('node-neat').includePaths


gulp.task 'styles', ->
  gulp.src('./src/stylesheets/main.sass')
    .pipe(plumber({errorHandler: notify.onError((error) -> error.message)}))
    .pipe(sass(
      includePaths: [ './src/vendor' ].concat(neat)
      sourceComments: 'normal'
    ))
    .pipe(gulp.dest('./build/stylesheets/'))
    .pipe(reload(stream: true))

gulp.task 'fonts', ->
  gulp.src('./src/fonts/**')
    .pipe(gulp.dest('./build/fonts/'))
    .pipe(reload(stream: true))


