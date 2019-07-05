# USERS
User.create(first_name: "Andy", last_name: "Rogers", username: "andy99")
User.create(first_name: "Lisa", last_name: "Thompson", username: "lisa99")

#ORDERS
Order.create(total: 50.50, user_id: 1)
Order.create(total: 40.99, user_id: 1)
Order.create(total: 15.95, user_id: 1)
Order.create(total: 120.99, user_id: 2)
Order.create(total: 20.00, user_id: 2)
Order.create(total: 54, user_id: 2)

#WISHLISTS
Wishlist.create(user_id: 1, name: "Christmas")
Wishlist.create(user_id: 1, name: "One Day...")
Wishlist.create(user_id: 2, name: "Birthdays")
Wishlist.create(user_id: 2, name: "Night time reads.")

#BOOKS
Book.create(title: "We Hunt the Flame", subtitle: "Testing", author: "Hafsah Faizal", isbn: 9781481431873, price: 15.99, image: "http://books.google.com/books/content?id=VylWvwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api", publisher: "Margaret K. McElderry Books", publishedDate: "2019-11-19", description: "From #1 New York Times and USA TODAY bestselling author Cassandra Clare comes the first novel in a brand-new trilogy that stars the Shadowhunters of Edwardian London. Chain of Gold is a Shadowhunters novel. Welcome to Edwardian London, a time of electric lights and long shadows, the celebration of artistic beauty and the wild pursuit of pleasure, with demons waiting in the dark. For years there has been peace in the Shadowhunter world. James and Lucie Herondale, children of the famous Will and Tessa, have grown up in an idyll with their loving friends and family, listening to stories of good defeating evil and love conquering all. But everything changes when the Blackthorn and Carstairs families come to London…and so does a remorseless and inescapable plague. James Herondale longs for a great love, and thinks he has found it in the beautiful, mysterious Grace Blackthorn. Cordelia Carstairs is desperate to become a hero, save her family from ruin, and keep her secret love for James hidden. When disaster strikes the Shadowhunters, James, Cordelia and their friends are plunged into a wild adventure which will reveal dark and incredible powers, and the true cruel price of being a hero…and falling in love.", snippet: "From #1 New York Times and USA TODAY bestselling author Cassandra Clare comes the first novel in a brand-new trilogy where evil hides in plain sight and the only thing more dangerous than fighting demons is falling in love.", genre: "Young Adult Fiction", pageCount: 544, printType: "Book", language: "en")
Book.create(title: "Chain of Gold", subtitle: "Testing", author: "Cassandra Clare", isbn: 9781529034103, price: 4.99, image: "http://books.google.com/books/content?id=ULSXDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api", publisher: "Pan Macmillan", publishedDate: "2019-05-19", description: "People lived because she killed. People died because he lived. Nobody knows that Zafira is the Hunter. Forced to disguise herself as a man, she braves the cursed forest to feed her people. If she is exposed as a girl, all of her achievements will be rejected. Nasir is the infamous Prince of Death, assassinating those foolish enough to defy his autocratic father, the sultan. If he refuses he will be punished in the most brutal of ways. Both are legends in the kingdom of Arawiya – but neither wants to be. And when Zafira embarks on a quest to restore magic to her suffering world, Nasir is sent by the sultan on a similar mission: retrieve magic and kill the hunter. But an ancient evil stirs as their journey unfolds, and the prize they seek may pose a threat greater than either can imagine . . . Set in a richly detailed world inspired by ancient Arabia, Hafsah Faizal's We Hunt the Flame – first in the Sands of Arawiya duology – is a gripping debut of discovery, conquering fear, and taking identity into your own hands.", snippet: ". . Set in a richly detailed world inspired by ancient Arabia, Hafsah Faizal&#39;s We Hunt the Flame – first in the Sands of Arawiya duology – is a gripping debut of discovery, conquering fear, and taking identity into your own hands.", genre: "Young Adult Fiction", pageCount: 252, printType: "Book", language: "en")

#BOOK_ORDERS
BookOrder.create(order_id: 1, book_id: 1)
BookOrder.create(order_id: 2, book_id: 1)
BookOrder.create(order_id: 3, book_id: 1)
BookOrder.create(order_id: 4, book_id: 2)
BookOrder.create(order_id: 5, book_id: 2)
BookOrder.create(order_id: 6, book_id: 2)

#WISH_BOOKS
WishBook.create(book_id: 1, wishlist_id: 1)
WishBook.create(book_id: 1, wishlist_id: 2)
WishBook.create(book_id: 1, wishlist_id: 3)
WishBook.create(book_id: 1, wishlist_id: 4)
WishBook.create(book_id: 2, wishlist_id: 1)
WishBook.create(book_id: 2, wishlist_id: 2)
WishBook.create(book_id: 2, wishlist_id: 3)
WishBook.create(book_id: 2, wishlist_id: 4)
