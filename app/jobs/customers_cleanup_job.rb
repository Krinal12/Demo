class CustomersCleanupJob < ApplicationJob
  queue_as :default

  def perform(*customers)
    # Do something later
    CustomersCleanupJob.perform_later customer
  end
end
