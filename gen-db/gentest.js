function r(){return Math.random().toString(16).substring(3,4)};
function rdoc(){ var a = ""; for (var i = 1; i <= 1024; i++) { a = a + r();} return a;};
for (var i = 1; i <= 10; i++) { db.dungeon.insert( { r() : rdoc() } )}