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
                command: 'codeception run --steps'
             },
            phpdoc:{
                command:'phpdoc  -t build/phpdoc/api  -d ./src'

            },
            coverage:{
                command:'codeception run unit --coverage --xml --html'
            },
            checkstyle:{
                command:'phpcs --standard=phpcs.xml ./src'
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
                jsdoc:'./node_modules/.bin/jsdoc',
                src: ['src/**/*.js'],
                options: {
                    destination: 'build/jsdoc'
                }

            }

        }


    });

    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-exec');
    grunt.loadNpmTasks('grunt-jsdoc');

    grunt.registerTask('checkstyle',['jshint','exec:checkstyle']);
    grunt.registerTask('test',['watch']);
    grunt.registerTask('doc',['jsdoc:dist','exec:phpdoc','exec:coverage']);
};