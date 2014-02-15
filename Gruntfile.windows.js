module.exports = function(grunt) {
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

        jshint:{
            options:{
                curly:true,
                eqeqeq:true,
                immed:true,
                latedef:true,
                newcap:true,
                noarg:true,
                sub:true,
                undef:true,
                eqnull:true,
                browser:true,
                globals:{
                    jQuery:true,
                    $:true,
                    console:true

                },
                '-W117':false

            },
            files: {
                src: ['web/**/.js','src/**/*.js']
            }

        },

        exec: {
            tests: {
                command: 'php codecept.phar run --steps'
             },
            phpdoc:{
                command:'php phpDocumentor.phar'

            },
            coverage:{
                command:'php codecept.phar run unit --coverage --xml --html'
            },
            reports:{
                command:'php codecept.phar run --steps --xml --html'
            },
            checkstyle:{
                command:'phpcs --standard=phpcs.xml ./src'
            },
            /* If you use window, generate jsdoc via this command
             * @deprecated
             */
            jsdoc:{
                command:'\.\\node_modules\\.bin\\jsdoc  admin/templates/default/data/js/checkall.js admin/templates/default/data/js/backend.js -d build/docs/jsdoc'
            }

        },
        watch:{
            scripts:{
                files:['src/**/*.js','src/**/*.php','src/**/*.twig','tests/**/*Cept.php','tests/unit/**/*Test.php'],
                tasks:['exec:tests']

            }
        },
        jsdoc : {
            dist : {
                jsdoc:'\.\\node_modules\\.bin\\jsdoc',
                src: ['src/**/*.js'],
                options: {
                    destination: 'build/docs/jsdoc'
                }

            }

        }


    });

    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-exec');
    grunt.loadNpmTasks('grunt-jsdoc');
    //check standard of code and some errors
    grunt.registerTask('checkstyle',['jshint','exec:checkstyle']);
    //real-time testing
    grunt.registerTask('test',['watch']);
    //generate api php and api js
    grunt.registerTask('doc',['jsdoc:dist','exec:phpdoc']);
    //generate all reports
    grunt.registerTask('reports',['exec:phpdoc','jsdoc:dist','exec:coverage','exec:reports']);
};