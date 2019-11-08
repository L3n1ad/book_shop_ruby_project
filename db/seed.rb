require('pp')
require('pry-byebug')
require_relative('../models/author.rb')
require_relative('../models/book.rb')
require_relative('../models/publication.rb')

Publication.delete_all()
Author.delete_all()
Book.delete_all()

author1 = Author.new('first_name' => 'John','last_name' => 'author1','date_of_birt' => 1991,'description' => 'author1 description')
author2 = Author.new('first_name' => 'John','last_name' => 'author2','date_of_birt' => 2000,'description' => 'author2 description')
author3 = Author.new('first_name' => 'John','last_name' => 'author3','date_of_birt' => 2010,'description' => 'author3 description')

author1.save
author2.save
author3.save

book1 = Book.new('title' => 'book1','genre' => 'Comedy','description' => 'I am book1','year' => 2000)
book2 = Book.new('title' => 'book2','genre' => 'Drama','description' => 'I am book2','year' => 1990)
book3 = Book.new('title' => 'book3','genre' => 'Action','description' => 'I am book3','year' => 1800)

book1.save
book2.save
book3.save

publication1 = Publication.new('book_id' => book1.id,'author_id' => author1.id)
publication2 = Publication.new('book_id' => book1.id,'author_id' => author2.id)
publication3 = Publication.new('book_id' => book2.id,'author_id' => author1.id)
publication4 = Publication.new('book_id' => book3.id,'author_id' => author3.id)

publication1.save
publication2.save
publication3.save
publication4.save


binding pry
nil
