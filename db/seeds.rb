User.delete_all
Game.delete_all


user1 = User.create!(username: 'Jon', email: 'jon@jon.com', password: 'jon', password_confirmation: 'jon', avatar: 'http://www.abrg.group.shef.ac.uk/people/jon/jon.jpg', bio: 'Hi, I am Dr. Jon. Nice to meet you. How is your basal ganglia today?', role: 'admin', score:'33')

user2 = User.create!(username: 'BobTheDog', email: 'bob@bob.com', password: 'bob', password_confirmation: 'bob', avatar: 'http://nodogaboutit.files.wordpress.com/2012/10/j04310181.jpg?w=300&h=300', bio: 'I am User 2 - nice to meet you.', role: 'admin', score: '21')

user3 = User.create!(username: 'Sally', email: 'jon@jon.com', password: 'sally', password_confirmation: 'sally', avatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiqxEsI0vln88zk_kg81Z2O9qA-RmsF_ZdCIeujGQM5z508Omu', bio: 'I like dogs and jam.', role: 'admin', score: '13')

game1 = Game.create!(board: 'xoxoxoxox', winner: 'Sally')
game2 = Game.create!(board: 'xoooxoxox', winner: '')
game3 = Game.create!(board: 'xoxoxoxoo', winner: '')

user1.games = [game1, game2]
user1.save


game3.users << user1
game3.users << user2
game3.users << user3
game3.save


