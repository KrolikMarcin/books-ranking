#Users
max = User.create(email: 'max@wp.pl', password: '123456')
anna = User.create(email: 'anna@wp.pl', password: '123456')
maciek = User.create(email: 'maciek@wp.pl', password: '123456')
#Books
book1 = Book.create(title: 'Lord of the ring', author: 'Tolkien')
book2 = Book.create(title: 'To Kill a Mockingbird', author: 'Harper Lee')
book3 = Book.create(title: 'Pride and Prejudice', author: 'Jane Austen')
book4 = Book.create(title: 'Jane Eyre', author: 'Charlotte Brontë')
book5 = Book.create(title: '1984', author: 'George Orwell')
book6 = Book.create(title: 'The Great Gatsby', author: 'F. Scott Fitzgerald')
book7 = Book.create(title: 'Animal Farm', author: 'George Orwell')
book8 = Book.create(title: 'Little Women', author: 'Louisa May Alcott')
book9 = Book.create(title: 'The Hobbit', author: 'Tolkien')
book10 = Book.create(title: 'Hamlet', author: 'William Shakespeare')
book11 = Book.create(title: 'Wuthering Heights', author: 'Emily Brontë')
book12 = Book.create(title: 'Crime and Punishment', author: 'Fyodor Dostoyevsky')
#rates
Rate.create(user: max, book: book1, number: 7)
Rate.create(user: max, book: book2, number: 6)
Rate.create(user: max, book: book3, number: 7)
Rate.create(user: max, book: book4, number: 7)
Rate.create(user: max, book: book5, number: 9)
Rate.create(user: max, book: book6, number: 3)
Rate.create(user: max, book: book7, number: 7)
Rate.create(user: max, book: book8, number: 3)
Rate.create(user: max, book: book9, number: 3)
Rate.create(user: max, book: book10, number: 3)
Rate.create(user: max, book: book11, number: 4)
Rate.create(user: max, book: book12, number: 5)
Rate.create(user: anna, book: book1, number: 5)
Rate.create(user: anna, book: book3, number: 5)
Rate.create(user: anna, book: book7, number: 1)
Rate.create(user: anna, book: book2, number: 9)
Rate.create(user: anna, book: book8, number: 5)
Rate.create(user: anna, book: book11, number: 5)
Rate.create(user: maciek, book: book11, number: 8)
Rate.create(user: maciek, book: book3, number: 5)
Rate.create(user: maciek, book: book12, number: 4)
Rate.create(user: maciek, book: book1, number: 5)
Rate.create(user: maciek, book: book8, number: 2)
Rate.create(user: maciek, book: book9, number: 6)







