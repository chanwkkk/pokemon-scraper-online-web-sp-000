class Pokemon
<<<<<<< HEAD
  attr_accessor :name,:id,:type,:db,:hp

  def initialize(id:, name:, type:, db:)
=======
  attr_accessor :name,:id,:type,:db

  def initialize(id:,name:,type:,db:)
>>>>>>> 6daeb78a119455291ab5511e4aced58e81b10b28
     @id=id
     @name=name
     @type=type
     @db=db
  end

<<<<<<< HEAD
  def self.save(name,type,db)

   row=db.execute("INSERT INTO pokemon (name,type)  VALUES (?,?)", name,type)
 end

 def self.find(id,db)
   row=db.execute("SELECT * FROM pokemon WHERE id=?",id)[0]
   pokemon=Pokemon.new(id:row[0],name:row[1],type:row[2],db:db)
   if row[3]
   pokemon.hp=row[3]
 end
   pokemon
 end

 def alter_hp(hp,db)
   db.execute("UPDATE pokemon SET hp=? WHERE id=?",hp,self.id)
end

=======

  def self.save(name,type,db)

    row=db.execute("INSERT INTO pokemon (name,type)  VALUES (?,?)", name,type)
#binding.pry
    #id =db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
>>>>>>> 6daeb78a119455291ab5511e4aced58e81b10b28


end
