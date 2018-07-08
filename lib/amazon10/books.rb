class Amazon10::Book
  attr_accessor :name, :author, :weekstop, :bookrating, :url

  def self.week
    doc = Nokogiri::HTML(open("https://www.amazon.com/charts/2018-07-01/mostsold/fiction/"))
    books1doc = doc.css("div #rank1-mobile")
    book_1 = self.new
    book_1.name = books1doc.css("div.kc-rank-card-title").text
    book_1.author = books1doc.css("div.kc-rank-card-author").text
    book_1.weekstop = books1doc.css("div.kc-wol").text
    book_1.bookrating = books1doc.css("div.numeric-star-data").text
    book_1.url = "amazon.com" + books1doc.css("a.see-in-store").attribute("href")

    books2doc = doc.css("div #rank2-mobile")
    book_2 = self.new
    book_2.name = books2doc.css("div.kc-rank-card-title").text
    book_2.author = book2doc.css("div.kc-rank-card-author").text
    book_2.weekstop = books2doc.css("div.kc-wol").text
    book_2.bookrating = books2doc.css("div.numeric-star-data").text
    book_2.url = "amazon.com" + books2doc.css("a.see-in-store").attribute("href")

    books3doc = doc.css("div #rank3-mobile")
    book_3 = self.new
    book_3.name = books3doc.css("div.kc-rank-card-title").text
    book_3.author = books3doc.css("div.kc-rank-card-author").text
    book_3.weekstop = books3doc.css("div.kc-wol").text
    book_3.bookrating = books3doc.css("div.numeric-star-data").text
    book_3.url = "amazon.com" + books3doc.css("a.see-in-store").attribute("href")

    books4doc = doc.css("div.rank4")
    book_4 = self.new
    book_4.name = books4doc.css("div.kc-rank-card-title").text
    book_4.author = books4doc.css("div.kc-rank-card-author").text
    book_4.weekstop = books4doc.css("div.kc-wol").text
    book_4.bookrating = books4doc.css("div.numeric-star-data").text
    book_4.url = "amazon.com" + books4doc.css("a.see-in-store").attribute("href")

    book_5 = self.new
    book_5.name = ''
    book_5.author = ''
    book_5.weekstop = ''
    book_5.bookrating = ''
    book_5.url = ''

    book_6 = self.new
    book_6.name = ''
    book_6.author = ''
    book_6.weekstop = ''
    book_6.bookrating = ''
    book_6.url = ''

    book_7 = self.new
    book_7.name = ''
    book_7.author = ''
    book_7.weekstop = ''
    book_7.bookrating = ''
    book_7.url = ''

    book_8 = self.new
    book_8.name = ''
    book_8.author = ''
    book_8.weekstop = ''
    book_8.bookrating = ''
    book_8.url = ''

    book_9 = self.new
    book_9.name = ''
    book_9.author = ''
    book_9.weekstop = ''
    book_9.bookrating = ''
    book_9.url = ''

    book_10 = self.new
    book_10.name = ''
    book_10.author = ''
    book_10.weekstop = ''
    book_10.bookrating = ''
    book_10.url = ''

    [book_1,book_2,book_3,book_4,book_5,book_6,book_7,book_8,book_9,book_10]
  end

end
