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

    books5doc = doc.css("div.rank5")
    book_5 = self.new
    book_5.name = books5doc.css("div.kc-rank-card-title").text
    book_5.author = books5doc.css("div.kc-rank-card-author").text
    book_5.weekstop = books5doc.css("div.kc-wol").text
    book_5.bookrating = books5doc.css("div.numeric-star-data").text
    book_5.url = "amazon.com" + books5doc.css("a.see-in-store").attribute("href")

    books6doc = doc.css("div.rank6")
    book_6 = self.new
    book_6.name = books6doc.css("div.kc-rank-card-title").text
    book_6.author = books6doc.css("div.kc-rank-card-author").text
    book_6.weekstop = books6doc.css("div.kc-wol").text
    book_6.bookrating = books6doc.css("div.numeric-star-data").text
    book_6.url = "amazon.com" + books6doc.css("a.see-in-store").attribute("href")

    books7doc = doc.css("div.rank7")
    book_7 = self.new
    book_7.name = books7doc.css("div.kc-rank-card-title").text
    book_7.author = books7doc.css("div.kc-rank-card-author").text
    book_7.weekstop = books7doc.css("div.kc-wol").text
    book_7.bookrating = books7doc.css("div.numeric-star-data").text
    book_7.url = "amazon.com" + books7doc.css("a.see-in-store").attribute("href")

    books8doc = doc.css("div.rank8")
    book_8 = self.new
    book_8.name = books8doc.css("div.kc-rank-card-title").text
    book_8.author = books8doc.css("div.kc-rank-card-author").text
    book_8.weekstop = books8doc.css("div.kc-wol").text
    book_8.bookrating = books8doc.css("div.numeric-star-data").text
    book_8.url = "amazon.com" + books8doc.css("a.see-in-store").attribute("href")

    books9doc = doc.css("div.rank9")
    book_9 = self.new
    book_9.name = books9doc.css("div.kc-rank-card-title").text
    book_9.author = books9doc.css("div.kc-rank-card-author").text
    book_9.weekstop = books9doc.css("div.kc-wol").text
    book_9.bookrating = books9doc.css("div.numeric-star-data").text
    book_9.url = "amazon.com" + books9doc.css("a.see-in-store").attribute("href")

    books10doc = doc.css("div.rank10")
    book_10 = self.new
    book_10.name = books10doc.css("div.kc-rank-card-title").text
    book_10.author = books10doc.css("div.kc-rank-card-author").text
    book_10.weekstop = books10doc.css("div.kc-wol").text
    book_10.bookrating = books10doc.css("div.numeric-star-data").text
    book_10.url = "amazon.com" + books10doc.css("a.see-in-store").attribute("href"

    [book_1,book_2,book_3,book_4,book_5,book_6,book_7,book_8,book_9,book_10]
  end

end
