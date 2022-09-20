require "../../spec_helper"

describe "Semantic: instance var" do

  it "says undefined instance variable on assign" do
    assert_error %(
      class Foo
        def x
          a = 1
          @x = a
        end
      end

      Foo.new.x
      ),
      "undeclared instance variable '@x' of Foo assigned to Int32"
  end
end
