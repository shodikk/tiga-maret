module Admin
  class ArticlesController < Admin::BaseController

    crudify :article,
            :title_attribute => 'judul', :xhr_paging => true

  end
end
