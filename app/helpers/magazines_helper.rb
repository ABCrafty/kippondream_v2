module MagazinesHelper
  def first_page
    self.pages.find_by(page_number: 1)
  end
end
