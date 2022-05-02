class EntriesController < ApplicationController
    def index
        @entries = Entry.order("timestamp DESC").limit(10)
    end

    def add
        entry = Entry.create name: params.require(:name)
        entry.update timestamp: Time.now
        redirect_to action: :index
    end
end
