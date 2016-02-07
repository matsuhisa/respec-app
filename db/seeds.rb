[
{ name: "イズムの功過", price: 1000 }, { name: "一夜", price: 1200 }, { name: "永日小品", price: 1500 }, { name: "薤露行", price: 800 }, { name: "学者と名誉", price: 500 }, { name: "硝子戸の中", price: 700 }, { name: "虚子君へ", price: 1000 }, { name: "草枕", price: 1200 }, { name: "虞美人草", price: 1500 }, { name: "ケーベル先生", price: 800 }, { name: "こころ", price: 500 }, { name: "三四郎", price: 700 },
].each_with_index do |book, index|
  Book.create(name: book[:name], price: book[:price])
end

[
  { name: "株式会社foo", prefecture_id: 13 }, { name: "株式会社bar", prefecture_id: 13 }, { name: "foobarプロダクション", prefecture_id: 13 }, { name: "現代foo株式会社", prefecture_id: 13 }, { name: "近代foo文芸社", prefecture_id: 13 }, { name: "編集barbarfoo", prefecture_id: 12 }
].each_with_index do |publishing_company, index|
  PublishingCompany.create(name: publishing_company[:name], prefecture_id:  publishing_company[:prefecture_id])
end
