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

drawing1 = Drawing.create(name: 'New Drawing 1', img: 'https://cdn.vox-cdn.com/thumbor/lsulNAkPJ7OrhdTM05dNnVjOkU0=/0x0:1024x512/1200x800/filters:focal(431x175:593x337)/cdn.vox-cdn.com/uploads/chorus_image/image/65520008/trainerbattles.0.jpg', price: 45)
drawing2 = Drawing.create(name: 'New Drawing 2', img: 'https://specials-images.forbesimg.com/imageserve/5d861c5322254b0008e107fd/960x0.jpg?fit=scale', price: 50)
drawing3 = Drawing.create(name: 'New Drawing 3', img: 'https://cdn.vox-cdn.com/thumbor/IKt535q8LMnJDddmLL74TBtzv88=/0x266:1024x949/1280x854/cdn.vox-cdn.com/uploads/chorus_image/image/48942277/N3DS_PokemonSuperMysteryDungeon_MainIllustration_png_jpgcopy.0.0.jpg', price: 30)

Transaction.create(user: ben, drawing: drawing1)
Transaction.create(user: karina, drawing: drawing2)
Transaction.create(user: ben, drawing: drawing3)