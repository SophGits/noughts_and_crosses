User.destroy_all
Game.destroy_all


user1 = User.create!(username: 'Jon', email: 'jon@jon.com', password: 'jon', password_confirmation: 'jon', remote_avatar_url: 'http://www.abrg.group.shef.ac.uk/people/jon/jon.jpg', bio: 'Hi, I am Dr. Jon. Nice to meet you. How\'s your basal ganglia today?', role: 'admin', score:'33')

user2 = User.create!(username: 'BobTheDog', email: 'bob@bob.com', password: 'bob', password_confirmation: 'bob', remote_avatar_url: 'http://nodogaboutit.files.wordpress.com/2012/10/j04310181.jpg?w=300&h=300', bio: 'I am Bob The Dog - nice to meet you.', role: 'admin', score: '21')

user3 = User.create!(username: 'Sally', email: 'jon@jon.com', password: 'sally', password_confirmation: 'sally', remote_avatar_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiqxEsI0vln88zk_kg81Z2O9qA-RmsF_ZdCIeujGQM5z508Omu', bio: 'I like hamsters and jam.', role: 'admin', score: '13')

user3 = User.create!(username: 'Mr.Snake', email: 'snake@snake.com', password: 'snake', password_confirmation: 'snake', remote_avatar_url: 'http://static.giantbomb.com/uploads/original/13/131479/2271832-snake.jpg', bio: 'Sssssss. Sss, sssss ss sss....ss? Ss!', role: '', score: '10')

user3 = User.create!(username: 'Rodney', email: 'rodders@cosmic.com', password: 'rodney', password_confirmation: 'rodney', remote_avatar_url: 'http://images.mirror.co.uk/upl/m4/oct2009/2/3/rodney-trotter-pic-bbc-406121028.jpg', bio: 'Do me a favor, Rodney; you couldn\'t flog a black cat to a witch!', role: '', score: '10')

game1 = Game.create!(board: 'xoxoxoxox', winner: 'Sally')
game2 = Game.create!(board: 'xoooxoxox', winner: '')
game3 = Game.create!(board: 'xoxoxoxoo', winner: '')

user1.games = [game1, game2]
user1.save


game3.users << user1
game3.users << user2
game3.users << user3
game3.save


