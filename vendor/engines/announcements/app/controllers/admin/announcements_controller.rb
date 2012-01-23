module Admin
  class AnnouncementsController < Admin::BaseController

    crudify :announcement,
            :title_attribute => 'judul', :xhr_paging => true

  end
end
