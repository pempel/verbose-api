# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

unless Card.where(term: "eyelid").exists?
  Card.create(term: "eyelid", translation: "веко")
end

unless Card.where(term: "sleepy").exists?
  Card.create(term: "sleepy", translation: "сонный")
end

unless Card.where(term: "eyelid").exists?
  Card.create(term: "eyelid", translation: "веко")
end

unless Card.where(term: "eyelid").exists?
  Card.create(term: "eyelid", translation: "веко")
end

unless Card.where(term: "eyelid").exists?
  Card.create(term: "eyelid", translation: "веко")
end
