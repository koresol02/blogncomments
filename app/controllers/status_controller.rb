class StatusController < ApplicationController
  def getstatus
      render(json: { 'status' => 'ok' })
  end
end
