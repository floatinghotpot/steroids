TestHelper = require "./test_helper"

describe 'version', ->

  beforeEach =>
    @packageJSON = require "../package.json"

  describe 'command line', =>

    it 'prints version with --version', =>
      versionRun = new TestHelper.CommandRunner
        cmd: TestHelper.steroidsBinPath
        args: ["--version"]

      versionRun.run()

      runs ()=>
        versionString = "AppGyver Steroids² #{@packageJSON.version}\n"
        expect( versionRun.stdout ).toMatch(versionString)

    it 'prints version with version', =>

      versionRun = new TestHelper.CommandRunner
        cmd: TestHelper.steroidsBinPath
        args: ["version"]

      versionRun.run()

      runs ()=>
        versionString = "AppGyver Steroids² #{@packageJSON.version}\n"
        expect( versionRun.stdout ).toMatch(versionString)
