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

drawing1 = Drawing.create(name: 'New Drawing 1', img: 'SomethingWhatNot.img', price: 45)
drawing2 = Drawing.create(name: 'New Drawing 2', img: 'SomeOtherThingWhatNot.img', price: 50)
drawing3 = Drawing.create(name: 'New Drawing 3', img: 'NotValidImage.img', price: 30)

Transaction.create(user: ben, drawing: drawing1)
Transaction.create(user: karina, drawing: drawing2)
Transaction.create(user: ben, drawing: drawing3)