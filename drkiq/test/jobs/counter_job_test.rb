require "test_helper"

class CounterJobTest < ActiveJob::TestCase
  test "returns 42" do
     assert_equal 42, CounterJob.perform_now
  # test "the truth" do
  #   assert true
  end
end

