module Jekyll

  class CategoryPage < Page
    def initialize(site, base, layout, path)
      @site = site
      @base = base
      @name = path
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), layout)
    end
  end

  class CategoryPageGenerator < Generator
    safe true

    def generate(site)
      site.pages << CategoryPage.new(site, site.source, "document.html", "Testfile1.html")
      site.pages << CategoryPage.new(site, site.source, "document.html", "Testfile2.html")
      site.pages << CategoryPage.new(site, site.source, "document.html", "Testfile3.html")
      site.pages << CategoryPage.new(site, site.source, "document.html", "Testfile4.html")
      site.pages.reverse!
    end
  end

end

