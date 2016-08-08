class ApplicationController < ActionController::API

	def meta(index)
		@meta = {
	    :current_page => index.current_page,
	    :per_page => index.per_page,
			:total_pages => index.total_pages,
			:current_entries => index.to_a.min.id..index.to_a.max.id,
	    :total_entries => index.total_entries,
	    :entries => index
		}
	end
end
