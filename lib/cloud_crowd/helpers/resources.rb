module CloudCrowd
  module Helpers
    module Resources
      
      # Convenience method for responding with JSON. Sets the content-type, 
      # serializes, and allows empty responses.
      def json(obj)
        content_type :json
        return status(204) && '' if obj.nil?
        obj.to_json
      end
      
      # Lazy-fetch the job specified by <tt>job_id</tt>.
      def current_job
        @job ||= Job.find_by_id(params[:job_id]) or raise Sinatra::NotFound
      end
      
      # Lazy-fetch the WorkUnit specified by <tt>work_unit_id</tt>.
      def current_work_unit
        @work_unit ||= WorkUnit.find_by_id(params[:work_unit_id]) or raise Sinatra::NotFound
      end
      
      # Try to fetch a work unit from the queue. If none are pending, respond
      # with no content.
      def dequeue_work_unit(offset=0)
        handle_conflicts do
          worker, actions = params[:worker_name], params[:worker_actions].split(',')
          WorkUnit.dequeue(worker, actions, offset)
        end
      end
      
      # We're using ActiveRecords optimistic locking, so stale work units
      # may sometimes arise. handle_conflicts responds with a the HTTP status
      # code of your choosing if the update failed to be applied.
      def handle_conflicts(code=204)
        begin
          yield
        rescue ActiveRecord::StaleObjectError => e
          return status(code) && ''
        end
      end
      
    end
  end
end