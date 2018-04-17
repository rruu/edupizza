goods = [
    {good_title: 'Peperoni', good_description: 'In the decade that I lived and played music in New York City, I came to learn all the best spots for late-night Manhattan slices as my band’s drummer and I lugged our gear back uptown from our downtown gigs.', good_cat: 'pizza', good_price: '4.99', good_sale: 'false'},
    {good_title: 'Hawaiian', good_description: 'Hawaiian pizza (also known as Pizza Hawaii) is a pizza topped with tomato sauce, cheese, pineapple, and back bacon or ham. Some versions may include peppers, mushrooms, or bacon', good_cat: 'pizza', good_price: '5.23', good_sale: 'false'},
    {good_title: 'Margherita', good_description: 'Pizza Margherita is a typical Neapolitan pizza, made with San Marzano tomatoes, mozzarella fior di latte,[1] fresh basil, salt and extra-virgin olive oil.', good_cat: 'pizza', good_price: '5.55', good_sale: 'true'},
    {good_title: 'Pepsi', good_description: 'Pepsi is a carbonated soft drink produced and manufactured by PepsiCo. Originally created and developed in 1893 by Caleb Bradham and introduced as Brads Drink, it was renamed as Pepsi-Cola on August 28, 1898, and then as Pepsi in 1961.', good_cat: 'drinks', good_price: '2.99', good_sale: 'false'},
    {good_title: 'Fanta', good_description: 'Fanta is a brand of fruit-flavored carbonated drinks created by The Coca-Cola Company and marketed globally. There are more than 100 flavors worldwide. The Fanta drink originated as a cola substitute in Germany under a World War II trade embargo for Coca-Cola ingredients in 1940.', good_cat: 'drinks', good_price: '2.88', good_sale: 'false'},
    {good_title: 'Sprite', good_description: 'Sprite is a colourless, caffeine-free, lemon and lime-flavored soft drink created by The Coca-Cola Company. It was first developed in West Germany in 1959 as Fanta Klare Zitrone (“Clear Lemon Fanta”) ', good_cat: 'drinks', good_price: '2.88', good_sale: 'false'}

  ]
  
  goods.each do |t|
    Goods.create(t)
  end

  goods_cat = [
    {categorie_title: 'pizza', categorie_description: 'pretty pizza'},
    {categorie_title: 'salads', categorie_description: 'pretty salads'},
    {categorie_title: 'desserts', categorie_description: 'pretty desserts'},
    {categorie_title: 'drinks', categorie_description: 'mmm.. yam-yam'}
  ]

  goods_cat.each do |t|
    Categories.create(t)
  end