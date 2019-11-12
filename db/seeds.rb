User.destroy_all
Drawing.destroy_all
Transaction.destroy_all
User.reset_pk_sequence
Drawing.reset_pk_sequence
Transaction.reset_pk_sequence

ben = User.create(first_name: 'Benny', last_name: 'Louie', username: 'benben')
ben.password = 'benben'

karina = User.create(first_name: 'Karina', last_name: 'Macancela', username: 'macK')
karina.password = 'macK'

drawing1 = Drawing.create(name: 'Emotional Intelligence?', img: '/imgs/emotional-intelligence.jpg', price: 100, description: 'Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever.' )
drawing2 = Drawing.create(name: 'Gary Acid', img: '/imgs/gary-acid.jpg', price: 100, description: 'Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever.')
drawing3 = Drawing.create(name: 'Get Ghosted!', img: '/imgs/get-ghosted.jpg', price: 100, description: 'Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever.')
drawing4 = Drawing.create(name: 'Thread-o-Thread', img: '/imgs/thread-o-tread.jpg', price: 100, description: 'Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever. Some description blah blah blah. I gotta add something clever.')

Transaction.create(user: ben, drawing: drawing1)
Transaction.create(user: karina, drawing: drawing2)
Transaction.create(user: ben, drawing: drawing3)
