class ApplicationController < ActionController::API
	# metadata for pagination
	def meta(obj)
		@meta = {
			:current_page => obj.current_page,
			:per_page => obj.per_page,
			:total_pages => obj.total_pages,
			:current_entries => obj.to_a.min.id..index.to_a.max.id,
			:total_entries => obj.total_entries,
			:entries => obj
		}
	end
end
