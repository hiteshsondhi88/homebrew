require "resource"

module Language
  module Go
    # Given a set of resources, stages them to a gopath for
    # building go software.
    # The resource names should be the import name of the package,
    # e.g. `resource "github.com/foo/bar"`
    def self.stage_deps resources, target
      godeps = resources.grep(Resource::Go)
      godeps.each {|resource| resource.stage target}
    end
  end
end
